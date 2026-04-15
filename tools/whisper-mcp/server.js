import { McpServer } from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import { z } from "zod";
import { execFile } from "child_process";
import { access } from "fs/promises";
import path from "path";
import os from "os";

// Platform-aware defaults
const IS_WINDOWS = os.platform() === "win32";
const WHISPER_CMD = process.env.WHISPER_CMD || (IS_WINDOWS
  ? "C:\\Users\\jason\\AppData\\Local\\Python\\pythoncore-3.14-64\\Scripts\\whisper.exe"
  : "whisper");
const FFMPEG_DIR = process.env.FFMPEG_DIR || (IS_WINDOWS
  ? "C:\\Users\\jason\\AppData\\Local\\Microsoft\\WinGet\\Packages\\Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe\\ffmpeg-8.0.1-full_build\\bin"
  : "");

const server = new McpServer({
  name: "whisper-stt",
  version: "1.0.0",
});

server.tool(
  "transcribe_audio",
  "Transcribe an audio or video file to text using OpenAI Whisper (local). Supports mp3, mp4, m4a, wav, webm, ogg, etc.",
  {
    file_path: z.string().describe("Absolute path to the audio/video file to transcribe"),
    language: z.string().optional().describe("Language code (e.g. 'en'). Auto-detected if omitted."),
    model: z.enum(["tiny", "base", "small", "medium", "large"]).default("base").describe("Whisper model size. 'base' is fast and decent. 'small' or 'medium' for better accuracy."),
  },
  async ({ file_path, language, model }) => {
    // Verify file exists
    try {
      await access(file_path);
    } catch {
      return { content: [{ type: "text", text: `Error: File not found: ${file_path}` }] };
    }

    const args = [
      file_path,
      "--model", model,
      "--output_format", "txt",
      "--output_dir", path.dirname(file_path),
    ];

    if (language) {
      args.push("--language", language);
    }

    // Add ffmpeg to PATH if configured
    const pathSep = IS_WINDOWS ? ";" : ":";
    const env = {
      ...process.env,
      PATH: FFMPEG_DIR ? `${FFMPEG_DIR}${pathSep}${process.env.PATH}` : process.env.PATH,
    };

    // On macOS/Linux, use python3 -m whisper as fallback
    const cmd = WHISPER_CMD;
    const useModule = !IS_WINDOWS && cmd === "whisper";

    const actualCmd = useModule ? "python3" : cmd;
    const actualArgs = useModule ? ["-m", "whisper", ...args] : args;

    return new Promise((resolve) => {
      execFile(actualCmd, actualArgs, { env, timeout: 120000 }, async (error, stdout, stderr) => {
        if (error) {
          resolve({
            content: [{ type: "text", text: `Transcription error: ${error.message}\n\nstderr: ${stderr}` }],
          });
          return;
        }

        // Whisper writes a .txt file next to the input
        const baseName = path.basename(file_path, path.extname(file_path));
        const txtPath = path.join(path.dirname(file_path), `${baseName}.txt`);

        try {
          const { readFile } = await import("fs/promises");
          const transcript = await readFile(txtPath, "utf-8");
          resolve({
            content: [{ type: "text", text: transcript.trim() }],
          });
        } catch {
          // If txt file wasn't created, return stdout which may contain the transcription
          resolve({
            content: [{ type: "text", text: stdout || "Transcription completed but no output file found." }],
          });
        }
      });
    });
  }
);

const transport = new StdioServerTransport();
await server.connect(transport);
