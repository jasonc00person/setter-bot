# Tyler Panzner — AI Implementation Call

| | |
|---|---|
| **Date** | 2026-04-02 |
| **Duration** | 1h 17m |
| **Recorded by** | Jason Cooperson |
| **Participants** | Tyler Panzner, Jason Cooperson |
| **Fathom link** | https://fathom.video/share/8xEs7LyXAeJx2_9yZrWjvkNMQ3Bjm4pf |

---

## Transcript

**Tyler Panzner** _[00:00:00]_
> What's going on?

**Jason Cooperson** _[00:00:02]_
> What's on?

**Jason Cooperson** _[00:00:02]_
> One second.

**Jason Cooperson** _[00:00:03]_
> I got to connect you to my headphones.

**Jason Cooperson** _[00:00:05]_
> Give me one sec here.

**Jason Cooperson** _[00:00:08]_
> Let's go.

**Jason Cooperson** _[00:00:17]_
> Okay.

**Jason Cooperson** _[00:00:17]_
> I think we're good now.

**Tyler Panzner** _[00:00:19]_
> Cool.

**Jason Cooperson** _[00:00:20]_
> Sweet.

**Jason Cooperson** _[00:00:22]_
> Cool.

**Jason Cooperson** _[00:00:22]_
> Well, I got the MVP done for the report generation.

**Tyler Panzner** _[00:00:27]_
> Yeah.

**Jason Cooperson** _[00:00:27]_
> Super excited to see it.

**Tyler Panzner** _[00:00:29]_
> Yeah.

**Jason Cooperson** _[00:00:29]_
> Let's just, like, get into that.

**Tyler Panzner** _[00:00:31]_
> So, and I'm gonna basically walk you through, like, setting it up here now.

**Jason Cooperson** _[00:00:36]_
> So, basically, I have it in this repo right here.

**Jason Cooperson** _[00:00:40]_
> So, I'm just gonna give you the link to the repo.

**Jason Cooperson** _[00:00:44]_
> And then you can share your screen, and you can, like, open up Claude desktop app, and then I'll walk you through setting this up.

**Tyler Panzner** _[00:00:55]_
> Cool.

**Tyler Panzner** _[00:00:55]_
> A question I had, too, you know, like...

**Tyler Panzner** _[00:01:02]_
> Before just processing, right, for privacy stuff, right, like, to be honest with you, like, right, basically, like, this will be run through Claude, right, and like, is there a way for us to, I'm not super concerned with it right now, because to be honest with you, even though I'm doing it now on OneNote, like, it's not totally secure, and I don't list the exact, exact genetic variants, right, it's kind of like that gray area, right, it hasn't been an issue, right, but my point is just thinking, forward thinking, right, like, would there be a way to, guess, like, de-identify and then re-identify after it's done through Claude?

**Jason Cooperson** _[00:01:47]_
> Yeah, yeah, you, you basically, like, when entering it, basically how it works is, like, okay, you get done with the consult call, you paste the notes into Claude in this project.

**Jason Cooperson** _[00:01:59]_
> And it's going to do the rest for you, generate the PDF and even like automate, like automatically send the Slack message.

**Jason Cooperson** _[00:02:06]_
> So I think if you wanted to kind of keep it, you know, secure or whatever, I think that you could just remove the name from the consult notes and then just paste that in.

**Jason Cooperson** _[00:02:17]_
> And then as long, like where else would the name show up?

**Tyler Panzner** _[00:02:23]_
> Yeah, if you're pasting the notes, their name, it's a separate thing up top.

**Jason Cooperson** _[00:02:29]_
> Like, so you could just, has the name and the title.

**Tyler Panzner** _[00:02:31]_
> The name is not even there technically.

**Tyler Panzner** _[00:02:32]_
> Right.

**Tyler Panzner** _[00:02:33]_
> So like you could, and again, so this is going to be an editable document, right?

**Tyler Panzner** _[00:02:39]_
> Like the PDF.

**Tyler Panzner** _[00:02:42]_
> So I guess the editable document that's made, that's, this is spits out a PDF, right?

**Tyler Panzner** _[00:02:49]_
> So it's not going to be editable so much after the fact.

**Tyler Panzner** _[00:02:52]_
> It's just going to be whatever's there.

**Jason Cooperson** _[00:02:54]_
> You'll be able to edit it.

**Jason Cooperson** _[00:02:55]_
> Like if you need to make changes and stuff, you can be like, Claude, let me make the changes.

**Jason Cooperson** _[00:02:59]_
> Yeah, you know, and all that.

**Tyler Panzner** _[00:03:00]_
> Oh, true, true, true, true, true, true, true.

**Tyler Panzner** _[00:03:01]_
> Okay.

**Tyler Panzner** _[00:03:01]_
> Got it.

**Tyler Panzner** _[00:03:02]_
> Got it.

**Tyler Panzner** _[00:03:02]_
> Okay.

**Tyler Panzner** _[00:03:02]_
> Yeah.

**Tyler Panzner** _[00:03:02]_
> Okay.

**Tyler Panzner** _[00:03:03]_
> Okay.

**Tyler Panzner** _[00:03:04]_
> Um, all right.

**Tyler Panzner** _[00:03:05]_
> So I'm still on the free Claude plan.

**Tyler Panzner** _[00:03:08]_
> Um, does that matter?

**Jason Cooperson** _[00:03:11]_
> Yeah, we might need to upgrade, but we'll see.

**Tyler Panzner** _[00:03:13]_
> We'll see.

**Jason Cooperson** _[00:03:15]_
> Um, yeah, just go ahead and show your screen, open up Claude desktop app, and then I'll walk you through cloning the repo, getting it set up.

**Jason Cooperson** _[00:03:22]_
> wrong, wrong screen.

**Jason Cooperson** _[00:03:31]_
> Okay, sweet.

**Jason Cooperson** _[00:03:31]_
> So go and co-work.

**Jason Cooperson** _[00:03:36]_
> Okay.

**Jason Cooperson** _[00:03:37]_
> Uh, yeah, try for free.

**Tyler Panzner** _[00:03:39]_
> Yeah, I think I probably should just move my chat stuff over and just, might as well just start.

**Tyler Panzner** _[00:03:46]_
> I was messing around with this a little bit, asking some questions.

**Tyler Panzner** _[00:03:48]_
> It was able to kind of do a little bit better than ChatGPT, like exactly which figure of which study has the thing I want and stuff, which is pretty good.

**Jason Cooperson** _[00:03:56]_
> You can skip this.

**Jason Cooperson** _[00:03:59]_
> Okay, cool.

**Jason Cooperson** _[00:04:00]_
> Let's click work in a project.

**Jason Cooperson** _[00:04:02]_
> wait.

**Tyler Panzner** _[00:04:02]_
> I should update, right?

**Tyler Panzner** _[00:04:03]_
> Yeah, you can do that.

**Jason Cooperson** _[00:04:06]_
> Yeah, cloud's better.

**Jason Cooperson** _[00:04:07]_
> I, dude, I mean, I sent you that prompt and everything, right?

**Tyler Panzner** _[00:04:09]_
> With the, you got that?

**Tyler Panzner** _[00:04:10]_
> Yeah.

**Tyler Panzner** _[00:04:11]_
> Okay, cool.

**Jason Cooperson** _[00:04:12]_
> Yeah.

**Jason Cooperson** _[00:04:12]_
> It's pretty easy.

**Tyler Panzner** _[00:04:13]_
> They make it really...

**Tyler Panzner** _[00:04:14]_
> waiting because it's like, I made this, the course I'm doing on GBT, but I could just move it over anyways.

**Tyler Panzner** _[00:04:20]_
> It's just gonna be better anyways, right?

**Tyler Panzner** _[00:04:22]_
> So there's no point in me really...

**Tyler Panzner** _[00:04:23]_
> Wait, I did notice the cloud seemed pretty slow.

**Tyler Panzner** _[00:04:26]_
> Is that because it's the free version?

**Jason Cooperson** _[00:04:30]_
> It's possible.

**Jason Cooperson** _[00:04:31]_
> I mean...

**Jason Cooperson** _[00:04:32]_
> Yeah, it could be possible.

**Jason Cooperson** _[00:04:37]_
> I, yeah, I wouldn't know.

**Jason Cooperson** _[00:04:42]_
> Okay, cool.

**Jason Cooperson** _[00:04:43]_
> So we'll click work in project.

**Jason Cooperson** _[00:04:48]_
> Yeah.

**Jason Cooperson** _[00:04:49]_
> And then we're just gonna choose a folder.

**Jason Cooperson** _[00:04:50]_
> So I would go like in my document, like in my documents.

**Jason Cooperson** _[00:04:54]_
> Yeah, I have like, this is usually where I put like folders for my projects that I'm...

**Tyler Panzner** _[00:04:59]_
> Yes, I'd put this here probably, and then I guess I could just make a folder, what, just Claude?

**Jason Cooperson** _[00:05:06]_
> Yeah, just name it like Report Generation.

**Tyler Panzner** _[00:05:10]_
> Yeah, I'll just do Claude Co-Work, and then in that I'll just do a folder probably, right?

**Tyler Panzner** _[00:05:17]_
> It could be subfolders, right?

**Tyler Panzner** _[00:05:19]_
> Yeah, of course, of course.

**Jason Cooperson** _[00:05:20]_
> Yeah.

**Jason Cooperson** _[00:05:23]_
> Sweet.

**Jason Cooperson** _[00:05:24]_
> And then click Open, Always Allow.

**Jason Cooperson** _[00:05:28]_
> Okay, sweet.

**Jason Cooperson** _[00:05:28]_
> And now, if you go in the Zoom chat, you can copy this GitHub link, and then just paste it in, and then you can just say, clone the repo into this folder.

**Tyler Panzner** _[00:05:48]_
> I'm just looking here.

**Tyler Panzner** _[00:05:49]_
> So how do I highlight all of that?

**Tyler Panzner** _[00:05:51]_
> Download zip file?

**Jason Cooperson** _[00:05:54]_
> Oh, no, like, just copy the link.

**Jason Cooperson** _[00:05:59]_
> Oh, GitHub.

**Tyler Panzner** _[00:06:00]_
> Blink, the URL.

**Jason Cooperson** _[00:06:01]_
> Yeah, yeah, because it couldn't get it just from the URL.

**Tyler Panzner** _[00:06:04]_
> Should I go back to this or don't even go to the folder?

**Tyler Panzner** _[00:06:07]_
> All right, just paste it here?

**Jason Cooperson** _[00:06:08]_
> Yeah, just paste it and say clone the repo.

**Jason Cooperson** _[00:06:13]_
> Clone this repo.

**Jason Cooperson** _[00:06:14]_
> Yeah, you can dismiss.

**Jason Cooperson** _[00:06:23]_
> So that might take a while.

**Jason Cooperson** _[00:06:25]_
> You're on sign at 4.6, which is obviously not like a – it's like fine, you know, for what we need.

**Jason Cooperson** _[00:06:30]_
> But maybe it's because of the – I mean, try to get the pro plan now.

**Tyler Panzner** _[00:06:36]_
> I would just get the pro plan, yeah.

**Jason Cooperson** _[00:06:38]_
> Yeah, but make sure – I mean, maybe eventually get the max, right?

**Tyler Panzner** _[00:06:41]_
> You don't need it, yeah.

**Jason Cooperson** _[00:06:43]_
> It's like I would only upgrade – make sure you want to decide if you want to do it yearly or monthly.

**Tyler Panzner** _[00:06:48]_
> Might as well, right?

**Tyler Panzner** _[00:06:49]_
> This is the spot to be, right?

**Jason Cooperson** _[00:06:51]_
> Well, if I upgrade then, will I get this credited, do you know?

**Tyler Panzner** _[00:06:55]_
> I'm not sure.

**Jason Cooperson** _[00:06:56]_
> I think when I did it, I was on the monthly because I was like

**Jason Cooperson** _[00:07:00]_
> Like, you know, I don't know.

**Jason Cooperson** _[00:07:03]_
> This is allow?

**Tyler Panzner** _[00:07:04]_
> Yeah, yeah.

**Tyler Panzner** _[00:07:08]_
> So I might just do that.

**Tyler Panzner** _[00:07:09]_
> I'll just do the monthly for now then, I guess, right?

**Tyler Panzner** _[00:07:12]_
> Like, it's whatever.

**Tyler Panzner** _[00:07:13]_
> Yeah, yeah.

**Jason Cooperson** _[00:07:13]_
> Hopefully in what?

**Tyler Panzner** _[00:07:14]_
> I mean, hopefully over the next three months, I might be at that next tier anyways, and what?

**Jason Cooperson** _[00:07:19]_
> It's 10 bucks difference, right?

**Jason Cooperson** _[00:07:22]_
> Unfortunately, outbound network access is restricted in this environment.

**Jason Cooperson** _[00:07:27]_
> So, Git clone.

**Jason Cooperson** _[00:07:29]_
> Okay.

**Jason Cooperson** _[00:07:30]_
> I guess we can download it ourselves.

**Jason Cooperson** _[00:07:31]_
> Just go to the link.

**Tyler Panzner** _[00:07:33]_
> So why did this show up, though?

**Jason Cooperson** _[00:07:36]_
> Probably because your co-work just doesn't.

**Jason Cooperson** _[00:07:41]_
> It's basically saying, like, okay, I'm trying to do it, but outbound, it's, like, restricted access to GitHub.

**Tyler Panzner** _[00:07:48]_
> But why is mine doing that?

**Tyler Panzner** _[00:07:50]_
> You can ask it.

**Jason Cooperson** _[00:07:51]_
> You can say why.

**Jason Cooperson** _[00:07:53]_
> Like, why shouldn't you just be able to clone it?

**Jason Cooperson** _[00:08:03]_
> It has a security measure, web tools I have work differently.

**Jason Cooperson** _[00:08:08]_
> They go through raw shell commands like git clone, blocked at the network level, downloading zip.

**Jason Cooperson** _[00:08:14]_
> Yeah, I mean, it works for me in Cloud Code for sure because I just give it like, I basically just bypass all the permissions and security stuff that it has so that it can do the things I need it to do.

**Jason Cooperson** _[00:08:28]_
> Um, but only certain allow listed and domains.

**Jason Cooperson** _[00:08:33]_
> I mean, you can ask it like in this case, what I would do is ask it like, okay, like, well, how can we just like give you access so that you can do this yourself?

**Jason Cooperson** _[00:08:39]_
> It'll say.

**Jason Cooperson** _[00:09:03]_
> Github MCP.

**Jason Cooperson** _[00:09:06]_
> Here, realistic, option one, GitHub MCP.

**Jason Cooperson** _[00:09:10]_
> Okay.

**Jason Cooperson** _[00:09:11]_
> So you can go to like the settings in the bottom left, and then, yeah, settings, and then connectors.

**Jason Cooperson** _[00:09:25]_
> And then, yeah, you can like click the GitHub integration.

**Jason Cooperson** _[00:09:28]_
> Basically, that's, I mean, yeah, you can just, you can do it.

**Jason Cooperson** _[00:09:33]_
> MCPs.

**Tyler Panzner** _[00:09:34]_
> Have you heard of MCPs before?

**Tyler Panzner** _[00:09:36]_
> I've heard of the word, yeah.

**Tyler Panzner** _[00:09:38]_
> Why does this not work when it clicks?

**Jason Cooperson** _[00:09:41]_
> I don't know.

**Jason Cooperson** _[00:09:42]_
> Maybe check, try and click, go to customize, connect, install.

**Jason Cooperson** _[00:10:01]_
> MCP is basically like an API.

**Jason Cooperson** _[00:10:05]_
> It gives it access to connect to the software and basically like do any action that you would like in the software.

**Jason Cooperson** _[00:10:13]_
> So you give it like GitHub MCP.

**Jason Cooperson** _[00:10:15]_
> It's like, okay, I can see all the different repositories.

**Jason Cooperson** _[00:10:19]_
> I can like clone the repositories.

**Jason Cooperson** _[00:10:20]_
> I can upload one.

**Jason Cooperson** _[00:10:22]_
> I can like merge a branch.

**Tyler Panzner** _[00:10:24]_
> I might be worried about like, I don't know, like, I don't know, like give it too much access or something, right?

**Tyler Panzner** _[00:10:29]_
> Like I'm sure there's certain guardrails on this, right?

**Tyler Panzner** _[00:10:31]_
> Like I know we're going to work together to get, I guess probably once I learn the bits about it, I'll know what to do or not to do.

**Jason Cooperson** _[00:10:36]_
> So I'm not going to be doing too much outside Yeah, I mean, the only thing that you want to look out for is like what they basically say, like call prompt injection, where it's like a virus basically, where it's like, it's not actually a virus.

**Jason Cooperson** _[00:10:48]_
> It's more like people, you know, might send you an email or something, right?

**Jason Cooperson** _[00:10:54]_
> And if the AI like reads the email, there's like secret character, like instructions hidden in there.

**Jason Cooperson** _[00:10:58]_
> That's like, hey, like delete every

**Jason Cooperson** _[00:11:00]_
> You know, but like, so in that case, I mean, you know, you don't want it reading emails from like random people.

**Jason Cooperson** _[00:11:10]_
> You don't want it reading anything from the web.

**Jason Cooperson** _[00:11:14]_
> That's like not, you know, official or anything like that.

**Jason Cooperson** _[00:11:19]_
> Um, but because like, for example, I have a VA that helps organize my inbox, like if it's a need to know, but that could eventually be done by Claude.

**Tyler Panzner** _[00:11:30]_
> But you're saying that maybe not wouldn't be smart to do right now.

**Jason Cooperson** _[00:11:33]_
> Um, I would do it.

**Tyler Panzner** _[00:11:36]_
> Because how do you make sure someone doesn't email you something and just reads it?

**Jason Cooperson** _[00:11:40]_
> Um, I think that like Opus is good enough at defending against prompt, like it's smart enough that I would probably feel comfortable letting it just like read all my emails.

**Jason Cooperson** _[00:11:53]_
> But that's also like, it depends on your, like, like, you know, actually, well, well, actually.

**Tyler Panzner** _[00:12:00]_
> Actually, that wouldn't because I use PowBox because it's HIPAA encrypted, right?

**Tyler Panzner** _[00:12:04]_
> So that would kind of defeat the purpose of that anyways.

**Tyler Panzner** _[00:12:06]_
> So in my context right now, that probably doesn't make much sense because then you're just forfeiting all that privacy anyways.

**Jason Cooperson** _[00:12:13]_
> Yeah.

**Jason Cooperson** _[00:12:14]_
> Again, I'm not this medical doctor that's doing high.

**Tyler Panzner** _[00:12:17]_
> There's supplements and stuff, right?

**Tyler Panzner** _[00:12:18]_
> But just still want to try and do what I can, you know?

**Tyler Panzner** _[00:12:22]_
> Of course, of course.

**Tyler Panzner** _[00:12:24]_
> All right.

**Tyler Panzner** _[00:12:25]_
> Well, why this is going, can I upgrade this now?

**Tyler Panzner** _[00:12:27]_
> Is that going to throw it off?

**Jason Cooperson** _[00:12:30]_
> No, no.

**Jason Cooperson** _[00:12:31]_
> This is a separate.

**Jason Cooperson** _[00:12:32]_
> Right now, you're installing the Git.

**Jason Cooperson** _[00:12:34]_
> The basic Git.

**Jason Cooperson** _[00:12:34]_
> Let me ask.

**Tyler Panzner** _[00:12:36]_
> All right.

**Tyler Panzner** _[00:12:36]_
> Let me see if...

**Tyler Panzner** _[00:12:38]_
> I'll ask chat GPT.

**Tyler Panzner** _[00:12:40]_
> Well, no.

**Tyler Panzner** _[00:12:40]_
> Maybe I could do...

**Tyler Panzner** _[00:12:45]_
> Is it new...

**Tyler Panzner** _[00:12:46]_
> No.

**Tyler Panzner** _[00:12:48]_
> Chat.

**Tyler Panzner** _[00:12:53]_
> New chat.

**Tyler Panzner** _[00:12:54]_
> If I do the...

**Tyler Panzner** _[00:12:56]_
> Oh, I could just do this.

**Tyler Panzner** _[00:12:58]_
> If I do...

**Tyler Panzner** _[00:13:00]_
> Do the yearly plan of regular pro for the discount, but decide a few months in and I want to upgrade, does the remaining yearly amount then get credited towards my upgraded plan?

**Tyler Panzner** _[00:13:15]_
> Were you able to hear that as I was talking?

**Jason Cooperson** _[00:13:18]_
> Mm-hmm.

**Jason Cooperson** _[00:13:18]_
> Okay, just curious.

**Jason Cooperson** _[00:13:24]_
> It's like failing to fetch these sites.

**Jason Cooperson** _[00:13:27]_
> Oh, no, there.

**Jason Cooperson** _[00:13:28]_
> We got it.

**Jason Cooperson** _[00:13:30]_
> Does buy when moving receive a credit to your account or remaining balance?

**Jason Cooperson** _[00:13:36]_
> So yeah, you won't lose the money.

**Tyler Panzner** _[00:13:37]_
> Okay, so yeah, I might as well just do the yearly anyways then.

**Jason Cooperson** _[00:13:44]_
> The great thing about automations like this, the one that I just built for you, is it'll work with any model, whether it's Claude or like ChatGPT.

**Tyler Panzner** _[00:13:57]_
> Well, that's my point because it's a markdown file thing, right?

**Tyler Panzner** _[00:14:00]_
> Like, that's what you want to be doing, right?

**Tyler Panzner** _[00:14:02]_
> Like, most of the things you want to be building is that that's future proof.

**Tyler Panzner** _[00:14:04]_
> Yeah.

**Jason Cooperson** _[00:14:05]_
> Yeah.

**Tyler Panzner** _[00:14:09]_
> All right.

**Tyler Panzner** _[00:14:09]_
> Where even is my, where even is my, let me go grab my card while that's downloading.

**Tyler Panzner** _[00:15:05]_
> All right, email.

**Tyler Panzner** _[00:16:12]_
> All right, we're on Pro.

**Jason Cooperson** _[00:16:15]_
> Sweet.

**Tyler Panzner** _[00:16:17]_
> Now, yeah, I guess now this is when I should be mindful about.

**Tyler Panzner** _[00:16:24]_
> Yeah, okay.

**Tyler Panzner** _[00:16:26]_
> Yeah, you got Opus now.

**Tyler Panzner** _[00:16:28]_
> So what do you think?

**Tyler Panzner** _[00:16:30]_
> I guess I'm just trying to think.

**Tyler Panzner** _[00:16:31]_
> How mindful do I need to be of this?

**Jason Cooperson** _[00:16:34]_
> Of usage?

**Tyler Panzner** _[00:16:35]_
> Yeah.

**Jason Cooperson** _[00:16:39]_
> And when does it reset?

**Jason Cooperson** _[00:16:42]_
> Not super mindful.

**Jason Cooperson** _[00:16:43]_
> mean, the Pro, the $20 a month plan, definitely for hour-long tasks, you're probably going to run out.

**Jason Cooperson** _[00:16:50]_
> But for what we're doing right now, it probably should be fine.

**Tyler Panzner** _[00:16:55]_
> By hour-long tasks, you mean like the same chat window?

**Tyler Panzner** _[00:16:59]_
> Yeah.

**Jason Cooperson** _[00:17:00]_
> Like, if you have a task running for, like, whole hour, like, continuously.

**Tyler Panzner** _[00:17:03]_
> you mean literally thinking, churning, not actually going back and forth over the course of an hour.

**Tyler Panzner** _[00:17:08]_
> Like, for example, when I'm building my PowerPoint and I'm like, hey, these are my ideas around the science.

**Tyler Panzner** _[00:17:12]_
> I want you to help me word this in a way that's emotionally driving for this PowerPoint thing.

**Tyler Panzner** _[00:17:17]_
> And then I'm mulling over ideas back and forth.

**Jason Cooperson** _[00:17:20]_
> Like, that's not what you're talking about.

**Tyler Panzner** _[00:17:23]_
> You're talking about one gigantic.

**Jason Cooperson** _[00:17:24]_
> Either way, it's still, either way, it's still like an hour long of usage.

**Tyler Panzner** _[00:17:28]_
> Got it.

**Tyler Panzner** _[00:17:29]_
> Okay.

**Tyler Panzner** _[00:17:29]_
> But you, like, if you're, yeah, if you're it a lot, then you probably will need to upgrade eventually.

**Tyler Panzner** _[00:17:36]_
> And when you, how often does it reset?

**Tyler Panzner** _[00:17:39]_
> Daily?

**Jason Cooperson** _[00:17:39]_
> You can look in the bottom left if you click your name.

**Jason Cooperson** _[00:17:44]_
> And then you click, there should be, maybe it's settings.

**Jason Cooperson** _[00:17:48]_
> Yeah, settings.

**Jason Cooperson** _[00:17:49]_
> And then usage.

**Jason Cooperson** _[00:17:50]_
> Yeah, it shows you right here.

**Jason Cooperson** _[00:17:52]_
> Oh, weekly.

**Tyler Panzner** _[00:17:53]_
> Okay.

**Jason Cooperson** _[00:17:54]_
> So this, it should show you when it resets or something.

**Tyler Panzner** _[00:17:59]_
> Got it.

**Tyler Panzner** _[00:17:59]_
> sorry.

**Tyler Panzner** _[00:17:59]_
> You Thank

**Tyler Panzner** _[00:18:00]_
> So it's a weekly limit.

**Tyler Panzner** _[00:18:02]_
> Okay.

**Tyler Panzner** _[00:18:02]_
> So I could kind of be watching that.

**Tyler Panzner** _[00:18:04]_
> Okay.

**Jason Cooperson** _[00:18:04]_
> I just have to mess around a bit.

**Jason Cooperson** _[00:18:05]_
> Okay.

**Jason Cooperson** _[00:18:06]_
> Cool.

**Tyler Panzner** _[00:18:07]_
> Let's go back to, I think the Git commands were installed now.

**Jason Cooperson** _[00:18:11]_
> let's go back to the chat there.

**Jason Cooperson** _[00:18:15]_
> You could say something like, okay, like, I just downloaded the Git commands.

**Jason Cooperson** _[00:18:18]_
> Okay, downloaded the Git.

**Jason Cooperson** _[00:18:22]_
> Yeah.

**Jason Cooperson** _[00:18:36]_
> Can you scroll back up for a second?

**Jason Cooperson** _[00:18:43]_
> I think we need to maybe connect the, like, still try to connect GitHub, though.

**Jason Cooperson** _[00:18:50]_
> Go back to your, go to customize on the left-hand side under ideas.

**Jason Cooperson** _[00:18:55]_
> Yeah.

**Jason Cooperson** _[00:18:56]_
> And then connectors.

**Jason Cooperson** _[00:18:58]_
> Let's try and connect GitHub.

**Jason Cooperson** _[00:19:01]_
> Yeah, click that.

**Jason Cooperson** _[00:19:04]_
> Is it not bringing up anything?

**Tyler Panzner** _[00:19:06]_
> It opened up Claude in the window.

**Tyler Panzner** _[00:19:09]_
> Log in with email.

**Jason Cooperson** _[00:19:12]_
> Okay, sweet.

**Jason Cooperson** _[00:19:12]_
> Like in the desktop app, in the desktop window.

**Tyler Panzner** _[00:19:15]_
> Like a brave window.

**Jason Cooperson** _[00:19:17]_
> Yeah, you can log in.

**Jason Cooperson** _[00:19:19]_
> Do you have a GitHub account?

**Tyler Panzner** _[00:19:21]_
> I don't.

**Tyler Panzner** _[00:19:22]_
> Okay, why don't we do this easy way?

**Jason Cooperson** _[00:19:24]_
> For now, like we can worry about this later.

**Jason Cooperson** _[00:19:25]_
> For now, let's just go to the GitHub website and then download it.

**Jason Cooperson** _[00:19:30]_
> Yeah, yeah.

**Tyler Panzner** _[00:19:34]_
> And this will go into that folder, correct?

**Jason Cooperson** _[00:19:36]_
> Yeah, just everything in there will just move into the folder that you're working in.

**Tyler Panzner** _[00:19:51]_
> Okay, that's done.

**Tyler Panzner** _[00:19:57]_
> Okay, I got the zip.

**Tyler Panzner** _[00:19:58]_
> Check the folder now.

**Jason Cooperson** _[00:20:07]_
> Let me unzip it.

**Jason Cooperson** _[00:20:10]_
> That's crazy.

**Jason Cooperson** _[00:20:11]_
> didn't even know it could extract files like that.

**Jason Cooperson** _[00:20:14]_
> Okay, here's what's in the repo, blah, blah, blah.

**Jason Cooperson** _[00:20:16]_
> Would you like me to do the read-through?

**Jason Cooperson** _[00:20:17]_
> Yeah, yeah.

**Jason Cooperson** _[00:20:17]_
> Go ahead.

**Jason Cooperson** _[00:20:18]_
> Say yeah.

**Tyler Panzner** _[00:20:35]_
> Nice.

**Tyler Panzner** _[00:20:36]_
> You did a good job.

**Jason Cooperson** _[00:20:38]_
> I guess that's what it thinks.

**Jason Cooperson** _[00:20:41]_
> You paste your edited consult notes plus the Fathom transcript in the system automatically generates a branded PDF for the client and sends a Slack message to your VA.

**Jason Cooperson** _[00:20:50]_
> Yeah, so you basically just, after you get done with the call, you paste your notes, paste the Fathom transcript.

**Jason Cooperson** _[00:20:54]_
> I don't even think you really need the Fathom transcript.

**Jason Cooperson** _[00:20:57]_
> I think just the notes will do fine.

**Tyler Panzner** _[00:21:00]_
> Yeah, I mean, I guess my point is like, I send them, you saw that URL link of like, how to use Fathom and ask it questions properly.

**Tyler Panzner** _[00:21:08]_
> So like, I don't know, I guess we could tinker around to see.

**Tyler Panzner** _[00:21:12]_
> I'm just trying to think if there's a way of the baseline notes, and maybe the key takeaways from the, I don't know, just accentuate it a bit, right?

**Tyler Panzner** _[00:21:22]_
> I don't know.

**Tyler Panzner** _[00:21:22]_
> But we can mess around with that.

**Jason Cooperson** _[00:21:24]_
> Let's take a look at the folder and make sure everything is like, set up.

**Jason Cooperson** _[00:21:29]_
> Can you open the actual, like where the zip was?

**Jason Cooperson** _[00:21:32]_
> Yeah, yeah.

**Jason Cooperson** _[00:21:34]_
> I want to see if it set up the folder, right?

**Jason Cooperson** _[00:21:49]_
> Okay.

**Jason Cooperson** _[00:21:51]_
> I would just copy everything in here and move it to like the main folder.

**Tyler Panzner** _[00:21:57]_
> Oh, I see what you're saying.

**Tyler Panzner** _[00:21:58]_
> Pull it out.

**Jason Cooperson** _[00:21:59]_
> Yeah.

**Tyler Panzner** _[00:22:26]_
> Why is it not, should that open up into the report?

**Tyler Panzner** _[00:22:30]_
> I guess I'll put it there for now.

**Tyler Panzner** _[00:22:34]_
> Yeah, so these should be going just in there.

**Jason Cooperson** _[00:22:39]_
> So yeah, yeah, sweet.

**Jason Cooperson** _[00:22:41]_
> And then you can clean up the, yeah, you can get rid of that.

**Tyler Panzner** _[00:22:44]_
> Like Yeah.

**Jason Cooperson** _[00:22:45]_
> And then this as well.

**Jason Cooperson** _[00:22:46]_
> Yeah.

**Jason Cooperson** _[00:22:48]_
> Okay, sweet.

**Jason Cooperson** _[00:22:50]_
> Cool.

**Jason Cooperson** _[00:22:51]_
> Back to Claude.

**Jason Cooperson** _[00:22:52]_
> Okay, cool.

**Jason Cooperson** _[00:22:53]_
> So why don't we test this out now?

**Jason Cooperson** _[00:22:55]_
> So like just as a first test, let's try, do you have like...

**Jason Cooperson** _[00:23:00]_
> Sample consult notes?

**Tyler Panzner** _[00:23:01]_
> Yeah, I just did a consult notes now from someone.

**Jason Cooperson** _[00:23:04]_
> Okay, sweet.

**Jason Cooperson** _[00:23:05]_
> Let's just try that.

**Jason Cooperson** _[00:23:06]_
> Let's just paste it in there, see how it does.

**Jason Cooperson** _[00:23:11]_
> And it's actually, so it's not going to be able to see the colors.

**Jason Cooperson** _[00:23:16]_
> Like when you highlight blue and you highlight green, I think blue is on Fullscript, right?

**Jason Cooperson** _[00:23:21]_
> Or not on Fullscript?

**Jason Cooperson** _[00:23:23]_
> Yeah, blue is, Okay, so blue, and then green is like, okay, we have to add it, right?

**Jason Cooperson** _[00:23:26]_
> Yeah.

**Jason Cooperson** _[00:23:27]_
> Okay, and then red, do you just delete them entirely from it?

**Tyler Panzner** _[00:23:31]_
> No, red is just there that like options down the road.

**Tyler Panzner** _[00:23:34]_
> Yellow means something we might add in down the road.

**Jason Cooperson** _[00:23:36]_
> Okay.

**Jason Cooperson** _[00:23:37]_
> I mean, there's a couple, I think you might have to tweak your workflow to not necessarily like highlight it, but more just in the text, like in a text way to identify them.

**Jason Cooperson** _[00:23:48]_
> You know what I mean?

**Jason Cooperson** _[00:23:48]_
> Like after it, you could just write parentheses, you know what I'm saying?

**Jason Cooperson** _[00:23:52]_
> Because it can't see the colors.

**Jason Cooperson** _[00:23:54]_
> But what it can do, it doesn't even need the colors because it really just, it already has your list.

**Jason Cooperson** _[00:24:01]_
> of links like that's on full script.

**Jason Cooperson** _[00:24:03]_
> it'll just kind of like cross reference against that list to figure out if it's like, how's going to know?

**Tyler Panzner** _[00:24:08]_
> Like, okay.

**Tyler Panzner** _[00:24:11]_
> Like, for example, like, these aren't all things we're adding.

**Tyler Panzner** _[00:24:14]_
> They're just in the multivitamin, right?

**Jason Cooperson** _[00:24:17]_
> So let's run this and see how it goes.

**Jason Cooperson** _[00:24:20]_
> run it.

**Jason Cooperson** _[00:24:20]_
> Yeah.

**Jason Cooperson** _[00:24:20]_
> Test it out.

**Jason Cooperson** _[00:24:21]_
> Yeah.

**Jason Cooperson** _[00:24:23]_
> Ideally, probably when we're going to run it on Opus.

**Jason Cooperson** _[00:24:25]_
> It's on it.

**Jason Cooperson** _[00:24:26]_
> We'll do though.

**Jason Cooperson** _[00:24:27]_
> It's fine.

**Tyler Panzner** _[00:24:33]_
> And now would Opus increase the speed, the efficacy or both?

**Jason Cooperson** _[00:24:37]_
> Both.

**Jason Cooperson** _[00:24:38]_
> I don't know about speed.

**Tyler Panzner** _[00:24:40]_
> Oh, I need to paste the Fathom.

**Jason Cooperson** _[00:24:42]_
> You don't need to.

**Jason Cooperson** _[00:24:43]_
> Just try it without the Fathom transcript.

**Jason Cooperson** _[00:24:46]_
> So the bottom fields.

**Tyler Panzner** _[00:24:48]_
> Oh, yeah.

**Tyler Panzner** _[00:24:49]_
> I think that'd be important, too.

**Tyler Panzner** _[00:24:51]_
> So here's the bottom notes.

**Jason Cooperson** _[00:25:00]_
> Here are the bottom notes.

**Tyler Panzner** _[00:25:03]_
> We're going to skip the Fathom transcript for now.

**Jason Cooperson** _[00:25:05]_
> Yeah, perfect.

**Jason Cooperson** _[00:25:09]_
> Perfect.

**Jason Cooperson** _[00:25:11]_
> I think the Fathom transcript would...

**Jason Cooperson** _[00:25:14]_
> Oh, no way.

**Jason Cooperson** _[00:25:15]_
> You hit your limit already.

**Jason Cooperson** _[00:25:17]_
> Go to usage.

**Tyler Panzner** _[00:25:20]_
> Wow.

**Jason Cooperson** _[00:25:22]_
> That's crazy.

**Jason Cooperson** _[00:25:23]_
> That can't be right.

**Jason Cooperson** _[00:25:25]_
> No.

**Jason Cooperson** _[00:25:27]_
> You're not even like 1% of the way there.

**Jason Cooperson** _[00:25:33]_
> That's bizarre.

**Jason Cooperson** _[00:25:35]_
> Yeah, odd.

**Jason Cooperson** _[00:25:36]_
> Try again?

**Tyler Panzner** _[00:25:38]_
> Yeah.

**Jason Cooperson** _[00:25:41]_
> Or maybe just switch the model to Opus.

**Jason Cooperson** _[00:25:46]_
> Try that.

**Tyler Panzner** _[00:25:54]_
> How is that saying I hit my limit?

**Tyler Panzner** _[00:25:55]_
> I go to my usage and I'm still at 0%.

**Jason Cooperson** _[00:25:58]_
> Well, it's not going to be able to answer.

**Tyler Panzner** _[00:26:03]_
> Wow, okay.

**Jason Cooperson** _[00:26:10]_
> Well, that's not good.

**Tyler Panzner** _[00:26:11]_
> That's crazy.

**Jason Cooperson** _[00:26:13]_
> Why is...

**Jason Cooperson** _[00:26:16]_
> Oh, it probably hasn't updated your...

**Jason Cooperson** _[00:26:32]_
> Have you restarted the app?

**Tyler Panzner** _[00:26:35]_
> Because I'm on the pro plan right here.

**Jason Cooperson** _[00:26:38]_
> Yeah, it probably hasn't registered yet.

**Tyler Panzner** _[00:26:40]_
> So do I try closing and reopening?

**Jason Cooperson** _[00:26:42]_
> Yeah, just try restarting the app.

**Jason Cooperson** _[00:26:45]_
> Because it definitely...

**Jason Cooperson** _[00:26:47]_
> That would be crazy.

**Tyler Panzner** _[00:26:49]_
> This is just a scam then.

**Jason Cooperson** _[00:26:51]_
> That was definitely the free limit.

**Jason Cooperson** _[00:26:53]_
> Like, that was for sure the free limit.

**Jason Cooperson** _[00:26:55]_
> Because we looked at your usage.

**Jason Cooperson** _[00:26:56]_
> It was like 0%.

**Jason Cooperson** _[00:26:59]_
> So I just...

**Jason Cooperson** _[00:27:00]_
> Hasn't picked up that you've upgraded yet.

**Tyler Panzner** _[00:27:13]_
> Should this be like showing up?

**Tyler Panzner** _[00:27:16]_
> That's weird.

**Tyler Panzner** _[00:27:21]_
> I guess try again.

**Jason Cooperson** _[00:27:23]_
> Yeah.

**Tyler Panzner** _[00:27:29]_
> Well, I'll see if this even gets answered, right?

**Jason Cooperson** _[00:27:32]_
> Yeah.

**Tyler Panzner** _[00:27:34]_
> Yeah, same thing.

**Tyler Panzner** _[00:27:37]_
> All right.

**Tyler Panzner** _[00:27:38]_
> Well, do you want to run it on yours?

**Tyler Panzner** _[00:27:45]_
> I could just see like what that looks like then since we're kind of hard locked.

**Tyler Panzner** _[00:27:50]_
> Yeah.

**Jason Cooperson** _[00:27:50]_
> It'll, I hope it'll update soon, but let me show you what it looks like on my end.

**Tyler Panzner** _[00:27:55]_
> Here, want me to give, want me to paste through these notes in the chat?

**Jason Cooperson** _[00:27:58]_
> Yeah.

**Tyler Panzner** _[00:28:12]_
> Oh, it's way too big.

**Tyler Panzner** _[00:28:14]_
> Let me email it over to you.

**Tyler Panzner** _[00:28:28]_
> All right, just shut that over.

**Jason Cooperson** _[00:28:40]_
> It's just in there.

**Jason Cooperson** _[00:28:41]_
> Tyler Report Automation.

**Tyler Panzner** _[00:28:51]_
> I mean, what percentage of my weekly limit do you think that would even use up?

**Tyler Panzner** _[00:28:55]_
> Like 1% maybe?

**Tyler Panzner** _[00:28:57]_
> Yeah, like 1%.

**Jason Cooperson** _[00:28:58]_
> that?

**Tyler Panzner** _[00:28:58]_
> Yeah.

**Jason Cooperson** _[00:29:00]_
> It definitely just hasn't updated yet.

**Tyler Panzner** _[00:29:03]_
> probably just need to give it It doesn't even show I did more than 1%.

**Tyler Panzner** _[00:29:15]_
> And now another question I had was, what if the Transcribe Now button, what if it took a screenshot of everything, so it picked up the colors instead of the text?

**Jason Cooperson** _[00:29:32]_
> You could do that.

**Jason Cooperson** _[00:29:33]_
> I was going to say you could definitely, maybe if you exported it as a PDF, it could pick up the colors, because then it might be able to see that then.

**Jason Cooperson** _[00:29:46]_
> Either way, just needs some way of identifying the colors.

**Jason Cooperson** _[00:29:53]_
> Like you could either write it as a text or whatever.

**Jason Cooperson** _[00:29:56]_
> But okay, here's the console notes.

**Jason Cooperson** _[00:29:58]_
> We're going to go with the Fathom notes for now.

**Jason Cooperson** _[00:30:00]_
> Oh, let me.

**Jason Cooperson** _[00:30:05]_
> You might.

**Tyler Panzner** _[00:30:35]_
> I'll be curious to see what your usage percentage was before and after, but.

**Jason Cooperson** _[00:30:41]_
> Hmm.

**Jason Cooperson** _[00:31:57]_
> The other, oh, there we go.

**Jason Cooperson** _[00:32:07]_
> Okay, what should I say for this?

**Tyler Panzner** _[00:32:18]_
> I guess I'm just thinking like, yeah, I'm just trying to think how like, because there's always going to be, I just wanted just to make it into the PD, like, I don't know, I feel like it's trying to reason through all the contra things, but yeah, I mean, it's asking good questions, it's clearly analyzing it, you know, I'm just trying to figure out how we can have all those questions necessarily.

**Tyler Panzner** _[00:33:01]_
> Like I already kind of baked in.

**Tyler Panzner** _[00:33:03]_
> Yeah.

**Jason Cooperson** _[00:33:06]_
> Let me make my best calls on the ambiguous items.

**Jason Cooperson** _[00:33:09]_
> Now I'm organizing the supplements, building out the report.

**Jason Cooperson** _[00:33:11]_
> Now I'm cross-referencing, which are outside of Fullscript, noting the discount codes, blah, blah, blah.

**Jason Cooperson** _[00:33:16]_
> Now I'm mapping out the protocol timing.

**Jason Cooperson** _[00:33:26]_
> So now I'm building the PDF.

**Tyler Panzner** _[00:33:36]_
> Yeah, I'm just trying to think now.

**Tyler Panzner** _[00:33:37]_
> That means the calls are going to have to be, I'm just trying to think like, shouldn't be, I don't know.

**Tyler Panzner** _[00:33:48]_
> Because now like the call and the notes are both going to be within the LLM, right?

**Tyler Panzner** _[00:33:52]_
> So that's why I'm just like, I don't know.

**Tyler Panzner** _[00:33:56]_
> It's not really a risk to take, but it kind of is because.

**Tyler Panzner** _[00:34:00]_
> Like, I don't know.

**Tyler Panzner** _[00:34:06]_
> But on the call, I should be basically saying, we're going to add this in.

**Tyler Panzner** _[00:34:09]_
> This is how you want to use it.

**Jason Cooperson** _[00:34:11]_
> And that's just going to be like, I should be verbally saying that.

**Jason Cooperson** _[00:34:14]_
> Yeah, the call would probably give it a lot of like, like answer all the questions that it really needs.

**Jason Cooperson** _[00:34:20]_
> You know what I mean?

**Jason Cooperson** _[00:34:21]_
> Especially if you keep in mind that on the call, you just have to verbally say things.

**Tyler Panzner** _[00:34:26]_
> This is why it's like, or I could just build like my own report with the system I use.

**Tyler Panzner** _[00:34:46]_
> It's not going to be as perfectly customizable around my brain.

**Tyler Panzner** _[00:34:50]_
> But like, maybe it is time I start to make things that are a little more quote, like everyone else.

**Tyler Panzner** _[00:34:55]_
> it's more scale.

**Tyler Panzner** _[00:34:55]_
> There's a reason why people don't do this.

**Tyler Panzner** _[00:34:56]_
> If that makes sense, right?

**Tyler Panzner** _[00:34:57]_
> You can't run a huge scalable genetic.

**Tyler Panzner** _[00:35:00]_
> This company being this, you know, like, so that's what I'm trying to weigh out the two options, right?

**Tyler Panzner** _[00:35:05]_
> Like continuing to try and automate how my brain's working versus just changing how I'm doing the business.

**Tyler Panzner** _[00:35:12]_
> If that makes sense.

**Jason Cooperson** _[00:35:14]_
> Yeah.

**Tyler Panzner** _[00:35:20]_
> I know it's not an answer you could answer, a question you could answer, right?

**Tyler Panzner** _[00:35:23]_
> More like a me thing.

**Jason Cooperson** _[00:35:26]_
> Yeah.

**Jason Cooperson** _[00:35:31]_
> Let's see how this report comes out.

**Jason Cooperson** _[00:36:27]_
> Yeah, the other option is that, like, we could do it as, like, a full-blown, like, where it's, like, okay, a website, and then you just, like, drop it into the website, and then blah, blah, blah.

**Jason Cooperson** _[00:36:42]_
> But I just wanted to, like, keep it simple for this one, and kind of just have, like, cloud project that kind of, like, was able to.

**Tyler Panzner** _[00:36:48]_
> Yeah, start simple work from there.

**Tyler Panzner** _[00:36:49]_
> Yeah, it's.

**Jason Cooperson** _[00:36:50]_
> Workflow, yeah.

**Jason Cooperson** _[00:36:51]_
> Yeah, like, the genetics, yeah, it's.

**Jason Cooperson** _[00:36:55]_
> And if you want to do other stuff, too, like, the content systems or some other.

**Jason Cooperson** _[00:37:00]_
> I mean, there's no, you know, we don't need to worry about, like, any privacy stuff there with, like, if we're working on the content system.

**Tyler Panzner** _[00:37:05]_
> saying, too, because it's, like, yeah, I mean, it takes me around five to seven minutes for each one of these to do on my end.

**Tyler Panzner** _[00:37:11]_
> It takes my VA some time, but then five to seven minutes for me.

**Tyler Panzner** _[00:37:16]_
> So, like, yeah, like, this isn't, like, it's saving time.

**Tyler Panzner** _[00:37:22]_
> It's helping an annoying task, right?

**Tyler Panzner** _[00:37:24]_
> But, like, versus being able to get out three times as much content in general, right?

**Jason Cooperson** _[00:37:29]_
> Like, yeah, that might be, like, a higher leverage thing to.

**Tyler Panzner** _[00:37:34]_
> But, yeah, let's see how this comes out.

**Tyler Panzner** _[00:37:35]_
> And, yeah, yeah, it's tricky because, like, I would love to be able to kind of see at which stage what each person's report is.

**Tyler Panzner** _[00:37:46]_
> So they email me, you know, hey, you know, I'm feeling kind of off.

**Tyler Panzner** _[00:37:51]_
> I can see what their current protocol is without having to go back into the Slack channel that we initially sent them, right?

**Tyler Panzner** _[00:37:58]_
> Some sort of central hub.

**Tyler Panzner** _[00:38:01]_
> Maybe that could be part of the content dashboard that maybe, I don't know.

**Tyler Panzner** _[00:38:07]_
> Let's see how this comes out, though.

**Jason Cooperson** _[00:38:16]_
> Okay, boom.

**Jason Cooperson** _[00:38:18]_
> So it's got your thing, like important emails to check.

**Jason Cooperson** _[00:38:22]_
> And then it's got, these are links that they can click.

**Jason Cooperson** _[00:38:26]_
> Maybe if we open it up.

**Tyler Panzner** _[00:38:30]_
> So if click on that, that will actually go to the right.

**Tyler Panzner** _[00:38:32]_
> Oh, nice, nice.

**Tyler Panzner** _[00:38:33]_
> Okay, cool.

**Jason Cooperson** _[00:38:35]_
> Wait, let's go back.

**Jason Cooperson** _[00:38:40]_
> Non-full script supplement links.

**Jason Cooperson** _[00:38:42]_
> Your full supplement protocol breakdown.

**Jason Cooperson** _[00:38:44]_
> Yeah, basically, now you have a video.

**Tyler Panzner** _[00:38:46]_
> Sorry, I'm trying to see you.

**Tyler Panzner** _[00:38:47]_
> Oh, sorry.

**Tyler Panzner** _[00:38:49]_
> Yeah, because like, yeah, with breakfast.

**Tyler Panzner** _[00:38:59]_
> Yeah, I see.

**Tyler Panzner** _[00:39:00]_
> Yeah, the vitamin D3, it's with the notes there already, great, yeah, yeah, and I'm trying to think if we'd maybe want, I mean, this looks pretty cool, like, this is definitely a lot more organized, right, like, I think it'd be cool that maybe if, yeah, like, I'm just trying to think, like, this is great, and then would there maybe be a good thing where it could maybe just be, I don't know, just how many of which pale without the notes attached, maybe.

**Tyler Panzner** _[00:39:31]_
> So, like, just you could see how much of which pills, you know what I mean, like, before, right when you wake up, breakfast, lunch, dinner, before bed, so maybe, like, this is cool, right, but it still is kind of, like, a lot of information and wordy, rather than just the bare bones, here's your supplement scheduler, and then this can go into more detail below, but yeah, let's see, these are all the exact.

**Tyler Panzner** _[00:40:00]_
> I mean, it's definitely looks a lot better for sure.

**Tyler Panzner** _[00:40:14]_
> Now, I wonder, let's see, let me get, because I'm trying to think, if we're getting the transcript from Fathom, when it pulls it from Fathom, is it also pulling the person's, because the name, the call name, Jane Doe, initial client console call, that information's there.

**Tyler Panzner** _[00:40:47]_
> But when it's pulling the transcript, if I'm not saying their first name, last name, their last name, like, hey, Jennifer, her name was Jennifer, right?

**Tyler Panzner** _[00:40:56]_
> If it's pulling that.

**Tyler Panzner** _[00:41:00]_
> We can't tell who that is, right?

**Tyler Panzner** _[00:41:02]_
> If it's just pulling the audibly spoken words.

**Jason Cooperson** _[00:41:05]_
> Typically, their name shows up in the transcript, like whoever they join.

**Jason Cooperson** _[00:41:09]_
> Like you see how my name on Zoom says Jason Cooperson.

**Tyler Panzner** _[00:41:12]_
> So let me see.

**Tyler Panzner** _[00:41:13]_
> So here's the transcript.

**Tyler Panzner** _[00:41:16]_
> All right.

**Tyler Panzner** _[00:41:16]_
> Let me do the transcript, the copy transcript.

**Tyler Panzner** _[00:41:39]_
> And let's see how this looks like.

**Tyler Panzner** _[00:41:41]_
> Kind of annoying.

**Tyler Panzner** _[00:41:49]_
> It's all the separate timestamps.

**Tyler Panzner** _[00:41:51]_
> I'll show you.

**Tyler Panzner** _[00:42:03]_
> So, like, if I were to send this over to you, it just looks kind of, let's see.

**Tyler Panzner** _[00:42:24]_
> Yeah, so there's that, but, like, I guess this is fine.

**Tyler Panzner** _[00:42:31]_
> I guess it doesn't really matter at the end of the day, but, okay.

**Jason Cooperson** _[00:42:38]_
> Yeah, it has the title there, right, Jennifer, Sarah?

**Tyler Panzner** _[00:42:40]_
> Yeah, it would be pulling this.

**Jason Cooperson** _[00:42:42]_
> Yeah.

**Tyler Panzner** _[00:42:49]_
> So all of this, here, let me, like, is there a way to have it just be the text itself or no?

**Tyler Panzner** _[00:42:56]_
> Like, that's the only way to really, I guess, now.

**Jason Cooperson** _[00:43:00]_
> The only way to do it really is just be like, is just click the copy transcript button.

**Tyler Panzner** _[00:43:07]_
> Now, if I were to send this over to you, let's plug this in, just do from the Jennifer's iPhone down.

**Tyler Panzner** _[00:43:20]_
> I'm just curious how much that would change it.

**Jason Cooperson** _[00:43:25]_
> It would probably add in like a couple extra details, but again, it would be like the same PDF and it would take like another like, you know, five minutes to generate.

**Jason Cooperson** _[00:43:35]_
> I mean, but obviously, you know, it would have all the details from the car.

**Jason Cooperson** _[00:43:39]_
> Do you want to see though?

**Jason Cooperson** _[00:43:39]_
> You want to plug it in?

**Tyler Panzner** _[00:43:41]_
> Yeah.

**Tyler Panzner** _[00:43:42]_
> I'm just trying to figure out where to go from here to kind of figure out.

**Tyler Panzner** _[00:43:45]_
> Yeah.

**Tyler Panzner** _[00:43:45]_
> Like, yeah.

**Tyler Panzner** _[00:43:47]_
> How exactly to fine tune it.

**Tyler Panzner** _[00:43:50]_
> Right.

**Tyler Panzner** _[00:43:50]_
> But I guess I would need to get my usage limits back.

**Tyler Panzner** _[00:43:54]_
> And then what I would basically be telling it over time.

**Tyler Panzner** _[00:44:00]_
> Like verbally vibe coding and then it'd be adjusting, you know, the markdown files accordingly.

**Jason Cooperson** _[00:44:06]_
> Pretty much.

**Jason Cooperson** _[00:44:06]_
> Yeah.

**Jason Cooperson** _[00:44:07]_
> Like if it ever made a mistake in the PDF, you could be like, OK, like I'd rather have it this way from now on.

**Jason Cooperson** _[00:44:13]_
> Like update your update, cloud MD file to make sure we do it this way from now on.

**Tyler Panzner** _[00:44:18]_
> Yeah.

**Jason Cooperson** _[00:44:19]_
> And then next time it would it would do it the right way.

**Tyler Panzner** _[00:44:23]_
> I guess I'm just trying to think how exactly to like tinker with like, OK, because does this have the full note?

**Tyler Panzner** _[00:44:35]_
> All right.

**Tyler Panzner** _[00:44:35]_
> So the non full script links.

**Jason Cooperson** _[00:44:43]_
> Here's what's inside the here's like what's inside.

**Jason Cooperson** _[00:44:48]_
> You have the cloud MD file, which is like this is like the main instructions for it.

**Jason Cooperson** _[00:44:54]_
> Like what this is.

**Jason Cooperson** _[00:44:55]_
> This is Dr.

**Jason Cooperson** _[00:44:55]_
> Tyler.

**Jason Cooperson** _[00:44:56]_
> Is it Panzner?

**Tyler Panzner** _[00:44:58]_
> Yep.

**Jason Cooperson** _[00:44:59]_
> Dr.

**Jason Cooperson** _[00:44:59]_
> Tyler Panzner.

**Jason Cooperson** _[00:45:00]_
> Panzner's post-consultation report generation after a consultation call pastes edited consult notes and the Fathom call, and we're going to generate a branded PDF report and send a Slack message to the VA with the full script.

**Jason Cooperson** _[00:45:11]_
> And this Slack message will happen automatically as long as you plug in your channel ID, like the channel you want it to send to, and create a bot for it.

**Jason Cooperson** _[00:45:22]_
> So you finish a console call, you open up this project, you paste in the notes, and then it's going to generate the thing and send a Slack message.

**Jason Cooperson** _[00:45:29]_
> So then this is like kind of instructions for what it to do, like, okay, first let's extract client info, then let's like extract the blah, blah, blah, extract the doshas instructions from the transcript, build the report, generate the PDF, send the Slack message, and then boom.

**Jason Cooperson** _[00:45:45]_
> Some important rules, first time setup, template URLs, obviously these would be like, you need to plug these in as well.

**Jason Cooperson** _[00:45:53]_
> You need to plug in like the link to the watch this video tutorial link to the self decode mini training link to

**Tyler Panzner** _[00:46:00]_
> But the Fathom video, that's unique for each person.

**Tyler Panzner** _[00:46:03]_
> Actually, no, no, never mind.

**Tyler Panzner** _[00:46:04]_
> It's how to use Fathom.

**Tyler Panzner** _[00:46:04]_
> Never mind.

**Tyler Panzner** _[00:46:05]_
> Yeah, those are baseline.

**Tyler Panzner** _[00:46:07]_
> Yeah.

**Jason Cooperson** _[00:46:08]_
> Yeah, those could be like once you plug those in and save those links in the files, like you won't need to.

**Jason Cooperson** _[00:46:13]_
> It'll just be there every time.

**Jason Cooperson** _[00:46:16]_
> And then it has some like instructions for, you know, setting up the Slack automation, but you don't really need to do that.

**Tyler Panzner** _[00:46:23]_
> Yeah, guess I'm just trying to think how to even, yeah, like this is like, I know how to iterate on it.

**Tyler Panzner** _[00:46:31]_
> I guess I just need to figure out how I want that to look.

**Tyler Panzner** _[00:46:34]_
> And now if we were to give it the different branding colors, too, that could all be changed as well.

**Jason Cooperson** _[00:46:43]_
> Yeah, you can be like, if you want to change the PDF in any way, you could just kind of, you know, vibe, vibe code and be like, If I were to say, yeah, put my, here's the vector of my branded logo, put that up for Dr.

**Jason Cooperson** _[00:46:58]_
> Tyler Panzer instead.

**Jason Cooperson** _[00:47:00]_
> Yeah.

**Jason Cooperson** _[00:47:00]_
> Yeah, you could do that.

**Jason Cooperson** _[00:47:01]_
> Got it.

**Tyler Panzner** _[00:47:06]_
> Yeah.

**Tyler Panzner** _[00:47:06]_
> Now have a full picture.

**Jason Cooperson** _[00:47:08]_
> Yeah.

**Tyler Panzner** _[00:47:08]_
> Scroll down a little bit for the PDF.

**Tyler Panzner** _[00:47:12]_
> Yeah.

**Tyler Panzner** _[00:47:12]_
> So, all right.

**Tyler Panzner** _[00:47:12]_
> So, full supplement protocol.

**Tyler Panzner** _[00:47:15]_
> That's good.

**Tyler Panzner** _[00:47:17]_
> With breakfast.

**Tyler Panzner** _[00:47:18]_
> Yeah.

**Tyler Panzner** _[00:47:19]_
> So, I think as long as I'm talking about this, we're going to be doing – yeah.

**Tyler Panzner** _[00:47:25]_
> Okay.

**Tyler Panzner** _[00:47:27]_
> We're going to be doing this with this.

**Tyler Panzner** _[00:47:30]_
> And if I were to say, watch out.

**Tyler Panzner** _[00:47:32]_
> If you do too much, you might feel like this.

**Tyler Panzner** _[00:47:34]_
> That'll be in those notes right there, which is, you know, very useful and helpful for them.

**Tyler Panzner** _[00:47:39]_
> Yeah.

**Tyler Panzner** _[00:47:41]_
> Okay.

**Tyler Panzner** _[00:47:42]_
> Okay.

**Jason Cooperson** _[00:47:46]_
> You could even try just doing the – just giving it the transcript of the call.

**Jason Cooperson** _[00:47:52]_
> That might be all it needs because it already has a template for the consult notes.

**Tyler Panzner** _[00:48:01]_
> Well, then, because I also would want to, people do want to see those exact notes we went over as well.

**Jason Cooperson** _[00:48:06]_
> Gotcha.

**Jason Cooperson** _[00:48:07]_
> You know?

**Jason Cooperson** _[00:48:11]_
> And that would be down here.

**Tyler Panzner** _[00:48:15]_
> Yeah.

**Tyler Panzner** _[00:48:15]_
> All right.

**Tyler Panzner** _[00:48:15]_
> So these are the notes.

**Tyler Panzner** _[00:48:19]_
> Oh, perfect.

**Tyler Panzner** _[00:48:20]_
> Yeah.

**Tyler Panzner** _[00:48:20]_
> 2X heterozygous, slow.

**Tyler Panzner** _[00:48:24]_
> All right.

**Tyler Panzner** _[00:48:25]_
> Yeah.

**Tyler Panzner** _[00:48:25]_
> Great.

**Tyler Panzner** _[00:48:25]_
> Okay.

**Tyler Panzner** _[00:48:26]_
> Cool.

**Tyler Panzner** _[00:48:27]_
> This is just with the consult notes, not even the transcript.

**Jason Cooperson** _[00:48:32]_
> So if you plug in the transcript as well, it'll probably be super, super accurate.

**Tyler Panzner** _[00:48:37]_
> Two homozygous.

**Tyler Panzner** _[00:48:38]_
> Yeah.

**Tyler Panzner** _[00:48:38]_
> Perfect.

**Tyler Panzner** _[00:48:42]_
> Yeah.

**Tyler Panzner** _[00:48:43]_
> All right.

**Tyler Panzner** _[00:48:43]_
> Yeah.

**Tyler Panzner** _[00:48:44]_
> So...

**Tyler Panzner** _[00:49:05]_
> Yeah, I'm trying to think how would I, again, I'm just like having the call there with their call info, like that is technically PHI, and that's a big issue.

**Jason Cooperson** _[00:49:23]_
> Like could be a huge  problem, but unless it turned into a huge problem, it won't be.

**Tyler Panzner** _[00:49:27]_
> You know, that's what I'm just trying to think how, because that makes this whole thing dead in the water, right?

**Tyler Panzner** _[00:49:33]_
> Because like that's the whole point of the con, you know what I mean?

**Tyler Panzner** _[00:49:35]_
> Like, is Fathom even, is Fathom, I think it's HIPAA compliant.

**Tyler Panzner** _[00:49:43]_
> That's a good question.

**Tyler Panzner** _[00:49:44]_
> think it also does the, oh, yeah, yep, okay.

**Tyler Panzner** _[00:49:53]_
> Yeah, I'm just trying to think, like.

**Tyler Panzner** _[00:50:00]_
> What if we, because it all comes down to, well, no, even if we were to change the name of the call being booked, it could be Jennifer Serra's iPhone joined, right?

**Tyler Panzner** _[00:50:13]_
> And then either way, that's there.

**Tyler Panzner** _[00:50:15]_
> Yeah, it'll like intelligently extract it.

**Jason Cooperson** _[00:50:22]_
> Okay, here's the new key changes from the first draft.

**Jason Cooperson** _[00:50:39]_
> Specifically set up, no standalone.

**Jason Cooperson** _[00:50:43]_
> Let's see.

**Jason Cooperson** _[00:50:45]_
> This is, I believe, the updated one.

**Jason Cooperson** _[00:50:47]_
> With your call notes or with the transcript.

**Jason Cooperson** _[00:51:03]_
> Pretty, pretty much the same, right?

**Tyler Panzner** _[00:51:07]_
> Again, I also wasn't explicitly saying exactly how to use everything, right?

**Tyler Panzner** _[00:51:12]_
> I think I have to change how I do my call a little bit.

**Jason Cooperson** _[00:51:20]_
> Yeah, I'm thinking you might even just be able to go just the call transcript.

**Jason Cooperson** _[00:51:25]_
> Well, no, they need the notes.

**Jason Cooperson** _[00:51:26]_
> You'll need both.

**Tyler Panzner** _[00:51:27]_
> Because they want the notes too, yeah.

**Jason Cooperson** _[00:51:31]_
> But this is pretty, you know, pretty accurate, I'd say, right?

**Tyler Panzner** _[00:51:37]_
> Yeah, and again, I think that's very accurate.

**Tyler Panzner** _[00:51:40]_
> The main point is the dosages of which things that they're taking, like, if I don't have to go in there and manually do that, right?

**Tyler Panzner** _[00:51:48]_
> Like, that's the main time save.

**Tyler Panzner** _[00:51:51]_
> Because, yeah, of course it's going to copy the individual notes that we put perfectly, right?

**Tyler Panzner** _[00:51:58]_
> Yeah, I guess it's more of this stuff here.

**Tyler Panzner** _[00:52:00]_
> Um, yeah, so hold on.

**Tyler Panzner** _[00:52:04]_
> Let's see.

**Tyler Panzner** _[00:52:04]_
> So body bio, six variants.

**Tyler Panzner** _[00:52:09]_
> Yeah, this along with the Tudka is our foundation for getting bio flowing to point a little before you push any direct.

**Tyler Panzner** _[00:52:14]_
> Yeah.

**Tyler Panzner** _[00:52:14]_
> Okay, great.

**Tyler Panzner** _[00:52:15]_
> So yeah, it's pulling from the notes there.

**Tyler Panzner** _[00:52:17]_
> Great.

**Tyler Panzner** _[00:52:17]_
> And then ads directed on label.

**Tyler Panzner** _[00:52:20]_
> Yeah.

**Tyler Panzner** _[00:52:21]_
> Okay.

**Tyler Panzner** _[00:52:22]_
> So now look for lithium orotate.

**Tyler Panzner** _[00:52:25]_
> I gave specific.

**Tyler Panzner** _[00:52:27]_
> Oh, yeah.

**Tyler Panzner** _[00:52:27]_
> Start with one capsule can experiment up to four pills over time.

**Tyler Panzner** _[00:52:31]_
> This time, one milligram, try different combos, maybe one with lunch, one to two.

**Tyler Panzner** _[00:52:35]_
> Two at dinner or two at dinner.

**Tyler Panzner** _[00:52:37]_
> Okay.

**Tyler Panzner** _[00:52:37]_
> Yeah, this is, yeah, this is, this is really good.

**Tyler Panzner** _[00:52:39]_
> Yep.

**Tyler Panzner** _[00:52:42]_
> Yeah.

**Jason Cooperson** _[00:52:44]_
> And then if you want to, I mean, I could say, give me the Slack message and then you can kind of just copy paste.

**Jason Cooperson** _[00:52:52]_
> Or if you want to eventually hook up Slack.

**Jason Cooperson** _[00:52:57]_
> Okay.

**Jason Cooperson** _[00:52:58]_
> So hold on.

**Jason Cooperson** _[00:52:59]_
> Boom.

**Jason Cooperson** _[00:52:59]_
> You can just copy.

**Jason Cooperson** _[00:53:00]_
> This and then like go to Slack.

**Tyler Panzner** _[00:53:02]_
> Yeah, we definitely want to get that set up.

**Tyler Panzner** _[00:53:04]_
> Yeah, I'm just trying to think.

**Jason Cooperson** _[00:53:07]_
> Yeah, I guess how would I be notating and it would look like this a bit too long.

**Tyler Panzner** _[00:53:18]_
> Well, I'm trying to think now, you know, when we're doing I was trying.

**Tyler Panzner** _[00:53:26]_
> All right.

**Tyler Panzner** _[00:53:26]_
> So if we already have the list of supplements that aren't on full script and all the other ones are, even when I say we're taking this, we're taking this.

**Tyler Panzner** _[00:53:38]_
> We're taking that.

**Tyler Panzner** _[00:53:39]_
> That's how we're doing it.

**Tyler Panzner** _[00:53:41]_
> If it's within the base list, right, of full script or not full script, it's automatically going to be categorized like that.

**Jason Cooperson** _[00:53:49]_
> Yeah, because it has the it has the list here.

**Jason Cooperson** _[00:53:56]_
> So it already knows like what's in.

**Jason Cooperson** _[00:53:59]_
> Yeah, non full.

**Tyler Panzner** _[00:54:01]_
> Yeah, I'm just trying to think how, okay, yeah, what was I just trying to think, so yeah, they get those notes, oh yeah, so I guess, yes, the de-identifying, right, like I'm just trying to think, you can't even run, because now what I'm wondering too though, it's like, no, Fathom is great, like, what if it was just the Zoom transcript, where it's just a plain trans, like, is there a way to basically make it so it's just the plain transcript without having that name there, maybe

**Tyler Panzner** _[00:55:00]_
> If I use someone other than Fathom, but again, the S Fathom is such a great tool.

**Tyler Panzner** _[00:55:03]_
> I still want them to get that video, right?

**Jason Cooperson** _[00:55:05]_
> Either way, it's a great tool for them to have.

**Tyler Panzner** _[00:55:07]_
> I think this just really bridges the gap of they may not need to even use that as much because it's more intuitive just on that report.

**Jason Cooperson** _[00:55:14]_
> Yeah.

**Jason Cooperson** _[00:55:16]_
> I think even the Zoom one would probably still have their email and name.

**Jason Cooperson** _[00:55:29]_
> Are you worried about the privacy stuff?

**Tyler Panzner** _[00:55:31]_
> I mean, the thing is, it's like even on OneNote, like even stored on my computer, like it's, you know.

**Tyler Panzner** _[00:55:39]_
> still in the cloud.

**Jason Cooperson** _[00:55:39]_
> Is that exactly?

**Tyler Panzner** _[00:55:42]_
> Like, so it hasn't been an issue thus far, you know, like I'm just.

**Jason Cooperson** _[00:55:48]_
> I mean, we can look, we can research too.

**Jason Cooperson** _[00:55:50]_
> Like that is one thing I did forget to do is like look into the HIPAA compliance stuff.

**Jason Cooperson** _[00:55:59]_
> Hold on.

**Tyler Panzner** _[00:56:02]_
> Because clearly this isn't – this is an intermediary fix while I work on other things.

**Tyler Panzner** _[00:56:07]_
> You know what I mean?

**Tyler Panzner** _[00:56:07]_
> Like I'm still trying to figure out am I going to be building this supplement tracker app and is that going to be my real shot on goal, my real business, right?

**Tyler Panzner** _[00:56:16]_
> And then this – you know what I mean?

**Tyler Panzner** _[00:56:17]_
> So that's why it's like I don't know if I'm going be going all in on this genetic stuff, scaling it.

**Tyler Panzner** _[00:56:23]_
> I would just do it the quote right way, right?

**Tyler Panzner** _[00:56:25]_
> I'm trying to kind of do like an intermediary, right, where like I could get more bandwidth, right?

**Tyler Panzner** _[00:56:30]_
> But I'm still not totally sure.

**Tyler Panzner** _[00:56:31]_
> That's why I'm not just building my own reports over there, you know?

**Tyler Panzner** _[00:56:38]_
> Yeah, I wonder – yeah, let me see.

**Tyler Panzner** _[00:56:40]_
> Is my Claude – let's see.

**Tyler Panzner** _[00:56:51]_
> Can you answer something for me?

**Jason Cooperson** _[00:56:53]_
> Yeah, what's up?

**Tyler Panzner** _[00:56:54]_
> No, that's in Claude.

**Tyler Panzner** _[00:56:56]_
> Oh.

**Jason Cooperson** _[00:56:56]_
> Oh, so it asks.

**Tyler Panzner** _[00:56:57]_
> All right, wait.

**Tyler Panzner** _[00:56:58]_
> So that means I have my

**Tyler Panzner** _[00:57:00]_
> It's tough back, I think, if it answered me, right, in chat or no?

**Jason Cooperson** _[00:57:04]_
> Yeah, probably.

**Tyler Panzner** _[00:57:06]_
> All right, so if, okay, so, well, maybe I go back to co-work and then ask, let's see, should I try, yeah, I'm going to try running this.

**Jason Cooperson** _[00:57:30]_
> Technically, I think the answer is no, you should not run HIPAA protected client data through Claude, because it's, the BAA does not cover it, that's what it's saying, so, I mean, is all this stuff like HIPAA protected stuff?

**Tyler Panzner** _[00:57:56]_
> Technically, yeah, even supplements you're recommending.

**Tyler Panzner** _[00:58:02]_
> So again, like to be honest with you, it hasn't been a problem with me like thus far, right?

**Tyler Panzner** _[00:58:07]_
> Because I don't work with a huge, huge number of people, right?

**Jason Cooperson** _[00:58:13]_
> Well, maybe like if this is already like HIPAA protected stuff and it's like, okay, like it's really only saving you like what, five, ten minutes, you get a nicer report.

**Jason Cooperson** _[00:58:25]_
> Maybe this is something that we like kind of put a pin in it and work on some other thing that probably gets you.

**Tyler Panzner** _[00:58:31]_
> Here's the thing, it's like right now, even it being on, let's see, is I could even ask, you know, is the cloud storage for OneNote HIPAA protected?

**Tyler Panzner** _[00:59:14]_
> Yeah, so normally it's not.

**Tyler Panzner** _[00:59:23]_
> So I'm just curious to see what plan am I on?

**Jason Cooperson** _[00:59:34]_
> I think you need a sign.

**Jason Cooperson** _[00:59:36]_
> Apparently you need like a signed BAA with Microsoft.

**Jason Cooperson** _[00:59:39]_
> Microsoft offers a BAA for its Office 365 suite.

**Tyler Panzner** _[00:59:42]_
> How does it cost money to get a signed BAA?

**Tyler Panzner** _[00:59:45]_
> What are the regulations for that?

**Tyler Panzner** _[00:59:52]_
> Because I was thinking it's like, yeah.

**Tyler Panzner** _[01:00:14]_
> Okay.

**Tyler Panzner** _[01:00:14]_
> Well, I can look into this, but yeah.

**Tyler Panzner** _[01:00:16]_
> I mean, in the meantime, yeah.

**Tyler Panzner** _[01:00:18]_
> I mean, yeah.

**Tyler Panzner** _[01:00:21]_
> Cause it's like right now, technically I'm not covered anyways, but again, it's like, at least it's not being run through, you know, the LL.

**Tyler Panzner** _[01:00:31]_
> I don't know if that's better or worse.

**Tyler Panzner** _[01:00:32]_
> Right.

**Tyler Panzner** _[01:00:33]_
> You know, like at least it's Microsoft, like they're like thing, right.

**Tyler Panzner** _[01:00:38]_
> Not like in the LLM.

**Tyler Panzner** _[01:00:40]_
> So, um, well, yeah.

**Jason Cooperson** _[01:00:44]_
> Why don't we just like, keep this here.

**Tyler Panzner** _[01:00:47]_
> Yeah.

**Tyler Panzner** _[01:00:47]_
> And if you want to use it or maybe tinker with it, you can.

**Jason Cooperson** _[01:00:49]_
> I mean, I just wanted to kind of show you like, okay, this is a project.

**Tyler Panzner** _[01:00:52]_
> Yeah.

**Tyler Panzner** _[01:00:53]_
> No, mean, it's definitely.

**Tyler Panzner** _[01:00:54]_
> Yeah.

**Tyler Panzner** _[01:00:54]_
> Yeah.

**Tyler Panzner** _[01:00:54]_
> Yeah.

**Jason Cooperson** _[01:00:55]_
> This is the file.

**Jason Cooperson** _[01:00:56]_
> Like here's how it works with the files on your computer.

**Jason Cooperson** _[01:00:58]_
> It can generate a report.

**Jason Cooperson** _[01:00:59]_
> You plug in.

**Jason Cooperson** _[01:01:00]_
> You know, just an example of like, okay, we have a task, let's just build a project for it real quick and like kind of build a workflow around it.

**Jason Cooperson** _[01:01:08]_
> And then, you know, if you want to tinker with it over time, you can.

**Jason Cooperson** _[01:01:11]_
> You can be like, okay, you know, like instead of doing it this way, I'd like to do it this way.

**Jason Cooperson** _[01:01:16]_
> And then it'll edit its own self and kind of evolve over time as you guide it.

**Jason Cooperson** _[01:01:21]_
> Just anytime you want to make a change, just be like, I'd rather do it this way from now on.

**Jason Cooperson** _[01:01:25]_
> Go ahead and update your ClaudeMD.

**Jason Cooperson** _[01:01:26]_
> Let's do it this way.

**Jason Cooperson** _[01:01:29]_
> And you have those files now.

**Jason Cooperson** _[01:01:30]_
> So that's cool.

**Jason Cooperson** _[01:01:31]_
> If you want to use that, you can.

**Jason Cooperson** _[01:01:33]_
> If you don't ask me any questions about it, you can.

**Jason Cooperson** _[01:01:35]_
> But let's maybe move on to try and find a higher leverage or better, you know.

**Tyler Panzner** _[01:01:43]_
> Yeah, I think, yeah, I definitely think me being able to sit down and kind of have me being able to verbally brain dump, you know, ideas.

**Tyler Panzner** _[01:01:58]_
> Because, um,

**Tyler Panzner** _[01:02:00]_
> If I find a study, being able to paste that in Claude and being able to just kind of verbally build it up into something and I guess have different content ideas that could then be repurposed easily.

**Tyler Panzner** _[01:02:19]_
> Um, and like right now in Notion, I have something, I think definitely building the, the, the, the, the Notion pipeline, right?

**Tyler Panzner** _[01:02:29]_
> Like edited this, that, what stage it's that, like that could just be built in Claude, right?

**Jason Cooperson** _[01:02:33]_
> To get rid of Notion entirely.

**Jason Cooperson** _[01:02:35]_
> Yeah.

**Jason Cooperson** _[01:02:36]_
> Um, yeah.

**Tyler Panzner** _[01:02:40]_
> That's all I really use that for, just brain dumping different projects and stuff, but that could all be within the Claude anyways, right?

**Jason Cooperson** _[01:02:47]_
> Mm-hmm.

**Tyler Panzner** _[01:02:48]_
> Yeah, if I could just have that all consolidated, yeah, I see people doing, you know, the Canva, how you can have it, you know, plug into Canva.

**Tyler Panzner** _[01:03:00]_
> Canva and have your settings right and be able to just have something made, you know, quickly like that.

**Jason Cooperson** _[01:03:09]_
> What's your current process for like content creation?

**Tyler Panzner** _[01:03:14]_
> Yeah, I'll show you my notion now.

**Tyler Panzner** _[01:03:22]_
> Like I have all these different ideas here, but then we have, you know, with the team, I need to review, right?

**Jason Cooperson** _[01:03:28]_
> Ready to post.

**Jason Cooperson** _[01:03:29]_
> Oh, I can't see it.

**Jason Cooperson** _[01:03:31]_
> Oh, whoops.

**Tyler Panzner** _[01:03:32]_
> Wrong one.

**Tyler Panzner** _[01:03:33]_
> Sorry.

**Tyler Panzner** _[01:03:40]_
> So I have so many ideas, but like that's endless ideas.

**Tyler Panzner** _[01:03:44]_
> But like, is it really content worth posting?

**Tyler Panzner** _[01:03:47]_
> But anyways, some of the team's ideas, rough ideas, but like, I don't know.

**Tyler Panzner** _[01:03:53]_
> I just have so many ideas, but is it really going to be for good content?

**Jason Cooperson** _[01:03:56]_
> Right.

**Tyler Panzner** _[01:03:56]_
> But like what I need to review.

**Tyler Panzner** _[01:04:01]_
> And then if I make edits, so we go here, I'll make comment.

**Tyler Panzner** _[01:04:08]_
> Can you post short snippets?

**Tyler Panzner** _[01:04:09]_
> Done.

**Tyler Panzner** _[01:04:09]_
> I watch it again.

**Tyler Panzner** _[01:04:11]_
> I'll move it to here.

**Tyler Panzner** _[01:04:12]_
> They know that it's ready to post.

**Tyler Panzner** _[01:04:13]_
> When they post it, some posts that are on hold for one reason or another.

**Tyler Panzner** _[01:04:20]_
> Um, but yeah, like, like there's like, this was a study, right?

**Tyler Panzner** _[01:04:30]_
> So I, I tag certain things that are based on a specific study.

**Tyler Panzner** _[01:04:34]_
> So like, all right, this is, these are things that are studies.

**Tyler Panzner** _[01:04:40]_
> So it's like, you know, like Agma team with OCD, right?

**Tyler Panzner** _[01:04:47]_
> Like, this would be cool if I could just say notes verbally or have it basically make a carousel around this because these individual study posts, I may not may want to necessarily record a video about it.

**Tyler Panzner** _[01:05:00]_
> I don't make carousels because they take so long to make, right?

**Tyler Panzner** _[01:05:02]_
> So if I could easily just be, you know, finding new literature based on keywords and or find key literature, you know, for example, around certain supplements that are very applicable and high virality, you know, so they can kind of pre-screen things and make a report for me on new studies that came out or something.

**Tyler Panzner** _[01:05:28]_
> I'm just totally brainstorming here, but like, yeah, like, you know, what's that?

**Tyler Panzner** _[01:05:34]_
> This is a, what was this from?

**Jason Cooperson** _[01:05:38]_
> I would say that this notion system that you have right in here is probably good.

**Jason Cooperson** _[01:05:44]_
> Like I would probably keep this as is because it seems like it's pretty organized.

**Tyler Panzner** _[01:05:51]_
> It kind of is, but then it's like I have so many like, I don't know, like bottom of funnel examples.

**Tyler Panzner** _[01:05:59]_
> It's like.

**Tyler Panzner** _[01:06:00]_
> I don't know.

**Tyler Panzner** _[01:06:01]_
> My brain is so convoluted.

**Tyler Panzner** _[01:06:03]_
> I just want help thinking of some bottle of funnel content ideas, but they're all in here.

**Tyler Panzner** _[01:06:09]_
> I have all this stuff to go through, but it's going to take me so long to even, I don't know.

**Jason Cooperson** _[01:06:15]_
> I kind of get what I'm saying.

**Jason Cooperson** _[01:06:16]_
> Yeah, maybe we could have a project that has a little bit of your content knowledge, kind of how you talk, how you like to think, what your content's about, and then maybe we can give it access to this Notion database so that it can kind of go in here and make edits for you.

**Jason Cooperson** _[01:06:33]_
> If you wanted to clean up all these ideas, you could say something like, yo, can we please clean up all the ideas?

**Jason Cooperson** _[01:06:39]_
> And it'll be like, okay, Tyler, I went through and ranked all the ideas based on what we should be doing.

**Jason Cooperson** _[01:06:44]_
> Here's stuff that we can delete.

**Jason Cooperson** _[01:06:46]_
> Here's stuff that we can keep.

**Jason Cooperson** _[01:06:47]_
> Sort of like that.

**Jason Cooperson** _[01:06:49]_
> And then maybe also have something in there about like, okay, you're like, all right, I like this idea.

**Jason Cooperson** _[01:06:55]_
> Can we turn this into a carousel?

**Jason Cooperson** _[01:06:57]_
> And then having a workflow for that where it just like automatically.

**Tyler Panzner** _[01:07:00]_
> Yeah.

**Tyler Panzner** _[01:07:00]_
> Turns it into a carousel.

**Jason Cooperson** _[01:07:04]_
> So do you want to work on, for this next automation that we build, why don't we work on the content stuff?

**Jason Cooperson** _[01:07:11]_
> I took some notes here.

**Jason Cooperson** _[01:07:12]_
> So like, okay, basically you want to be able to like brain dump ideas, maybe have a workflow that like automatically goes out and finds a bunch of studies to generate you like a report, give you some ideas for that, different content ideas that can be repurposed.

**Jason Cooperson** _[01:07:27]_
> Just the carousel generator and maybe access.

**Tyler Panzner** _[01:07:34]_
> And I think also, then I think also getting set up for, I don't know, potato, whatever it is to actually be able to plan and post.

**Tyler Panzner** _[01:07:43]_
> So the thing is those auto posters don't let us do trial reels.

**Tyler Panzner** _[01:07:46]_
> So my team does like to do trial reels for some of the more refined content, but I also plan on doing more just low production, grab my phone and just yap.

**Tyler Panzner** _[01:07:57]_
> Right.

**Tyler Panzner** _[01:07:57]_
> And like, yeah, if there'd be a way.

**Tyler Panzner** _[01:08:00]_
> A for me to, well, that'd probably be for my desk, like, if I'm on my phone and I have that, like, could I just set, like, how could I get that from my phone, like, ready to be posted?

**Tyler Panzner** _[01:08:13]_
> Like, do I need to then airdrop it to the desktop and then ask Claude to do that?

**Tyler Panzner** _[01:08:19]_
> Because if I could basically auto-post the carousels and some of my yapping content, could it also do stories?

**Jason Cooperson** _[01:08:26]_
> I am not sure about that.

**Jason Cooperson** _[01:08:28]_
> Maybe.

**Tyler Panzner** _[01:08:29]_
> But if I could basically, like, if I want to, like, I want to go in my supplement cabinet and just record a bunch of quick clips, like, story things.

**Tyler Panzner** _[01:08:37]_
> Hey, I'm looking at my cabinet.

**Tyler Panzner** _[01:08:38]_
> Here's this supplement.

**Tyler Panzner** _[01:08:39]_
> This is what it does.

**Jason Cooperson** _[01:08:40]_
> Just three little thing, right?

**Tyler Panzner** _[01:08:42]_
> If I could just sit there for an hour and record, like, 15 of those and then just say, hey, every Tuesday at this time, I want you to post one of these, right?

**Tyler Panzner** _[01:08:51]_
> Just to kind of keep that.

**Tyler Panzner** _[01:08:52]_
> I do it once.

**Tyler Panzner** _[01:08:53]_
> I batch it and I'm done with it.

**Jason Cooperson** _[01:08:57]_
> You could do that.

**Tyler Panzner** _[01:08:58]_
> For sure.

**Jason Cooperson** _[01:09:00]_
> If you connected up, like, I'd have to look into it, I'd have to build it, come back to you with another MVP.

**Jason Cooperson** _[01:09:05]_
> Yeah, yeah.

**Jason Cooperson** _[01:09:09]_
> Do you want to work on this next, though?

**Jason Cooperson** _[01:09:10]_
> You want to work on, like, automating the content system?

**Tyler Panzner** _[01:09:14]_
> Yeah.

**Tyler Panzner** _[01:09:15]_
> Or is there another?

**Tyler Panzner** _[01:09:17]_
> Yeah, I'm trying to think what other stuff for the content.

**Tyler Panzner** _[01:09:19]_
> Yeah.

**Jason Cooperson** _[01:09:24]_
> Because this one is for sure, like, we can continue to build on this one.

**Jason Cooperson** _[01:09:29]_
> Because there's no, like, HIPAA compliance stuff we need to worry about.

**Tyler Panzner** _[01:09:31]_
> Like, we could build a really cool system where it's, like, has a lot of features, capability.

**Tyler Panzner** _[01:09:36]_
> Yeah, again, think being able to go from talk to text and be, like, you know, here's a link to a study that I found.

**Tyler Panzner** _[01:09:42]_
> Like, on my phone, right?

**Tyler Panzner** _[01:09:44]_
> Here's a link to a study that I found.

**Tyler Panzner** _[01:09:46]_
> I want to, and I could braind up my ideas about it.

**Tyler Panzner** _[01:09:49]_
> Like, save this to, you know, the content bank.

**Tyler Panzner** _[01:09:53]_
> I want it to basically save the actual URL in there as well, right?

**Jason Cooperson** _[01:09:57]_
> And flesh that out.

**Jason Cooperson** _[01:09:59]_
> Mm-hmm.

**Jason Cooperson** _[01:10:02]_
> Yeah.

**Tyler Panzner** _[01:10:05]_
> Yeah.

**Tyler Panzner** _[01:10:06]_
> Problem is I just got to sit down and actually like record some of these things too.

**Tyler Panzner** _[01:10:09]_
> I have no time.

**Tyler Panzner** _[01:10:13]_
> I know.

**Jason Cooperson** _[01:10:13]_
> Sometimes you get so busy with fulfillment that like.

**Tyler Panzner** _[01:10:16]_
> Well, that's what I'm trying to figure out for me because it's like I'm making what I double my content for what to push towards this non-scalable thing, right?

**Tyler Panzner** _[01:10:23]_
> Like what is the more scalable thing?

**Tyler Panzner** _[01:10:25]_
> And I have a habit of, you know, tweaking and tinkering, but is it actually going to move the lever forward if that makes sense, right?

**Tyler Panzner** _[01:10:33]_
> 100%.

**Jason Cooperson** _[01:10:35]_
> But it's like, yeah, I could just start making more of this content of just studies and stuff, but is that really going to get me more clients, right?

**Jason Cooperson** _[01:10:41]_
> Like, I don't know.

**Tyler Panzner** _[01:10:45]_
> But either way, I think getting this more streamlined can only help.

**Tyler Panzner** _[01:10:51]_
> I'm trying to think if there's any other ideas.

**Tyler Panzner** _[01:10:58]_
> Let's see.

**Tyler Panzner** _[01:10:59]_
> Where was the.

**Jason Cooperson** _[01:11:17]_
> Were you saying something about like a fulfillment tracker, like tracking all the clients?

**Tyler Panzner** _[01:11:26]_
> So, I mean, I have a pipeline and go high level that kind of tells me what stage they're at in that.

**Tyler Panzner** _[01:11:33]_
> I mean, if we could, I mean, I guess we could build that to visualize it in this system.

**Tyler Panzner** _[01:11:39]_
> But like, is that really needed?

**Tyler Panzner** _[01:11:41]_
> Right.

**Tyler Panzner** _[01:11:41]_
> That's my problem.

**Tyler Panzner** _[01:11:42]_
> trying to figure out exactly what it is I need.

**Tyler Panzner** _[01:11:43]_
> Right.

**Tyler Panzner** _[01:11:43]_
> But I guess you just got to build and kind of mess around with it and see from there.

**Jason Cooperson** _[01:11:47]_
> Yeah, I would say like, best way to do it is just like, keep it simple.

**Jason Cooperson** _[01:11:54]_
> Because, you know, if you build out a workflow, that's like extremely rich, like N8N workflows are like.

**Jason Cooperson** _[01:12:00]_
> Extremely rigid, and super step-by-step.

**Jason Cooperson** _[01:12:05]_
> You spend all that time, build out that workflow.

**Jason Cooperson** _[01:12:07]_
> It's like, okay, it's probably going to be replaced in a week anyways.

**Jason Cooperson** _[01:12:12]_
> So when you're building stuff, I would say just try and focus on like, all right, how can we make this like a super simple thing that is dynamic, like easily, not rigid, very like loose, easily updatable.

**Tyler Panzner** _[01:12:25]_
> Yeah.

**Jason Cooperson** _[01:12:26]_
> Because, you know, things are going to change.

**Jason Cooperson** _[01:12:28]_
> Stuff is going to change.

**Jason Cooperson** _[01:12:29]_
> Model is going to change, you know.

**Jason Cooperson** _[01:12:31]_
> So how can we build this like super, you know, quickly, easily, simply in the simplest way possible that like saves me, saves me time.

**Tyler Panzner** _[01:12:39]_
> Yeah, yeah, yeah.

**Tyler Panzner** _[01:12:40]_
> So yeah, I think me not having to talk to ChatGPT and then having to copy paste that text, open up Notion, and then paste that stuff in there.

**Tyler Panzner** _[01:12:49]_
> Right.

**Tyler Panzner** _[01:12:50]_
> So I can just do that in Claude and have it, I guess.

**Tyler Panzner** _[01:12:53]_
> So you're saying why not just build this in the Claude thing and not have to have a whole separate window open.

**Jason Cooperson** _[01:12:58]_
> then.

**Jason Cooperson** _[01:13:00]_
> Uh, no, I would keep the notion thing you have here and just connect a cloud project up to it so that it can like basically.

**Jason Cooperson** _[01:13:07]_
> But what about other things?

**Tyler Panzner** _[01:13:09]_
> Like, I guess also being able to see like new, I guess the new content ideas could be here.

**Tyler Panzner** _[01:13:18]_
> Right.

**Tyler Panzner** _[01:13:18]_
> Um, yeah, I guess there's more features that I see people have in that dashboard of like how posts are doing and getting feedback on that and seeing what other people are doing and doing all that stuff.

**Tyler Panzner** _[01:13:30]_
> But again, do I really know if I really need that, you know?

**Tyler Panzner** _[01:13:33]_
> yeah.

**Jason Cooperson** _[01:13:34]_
> Dashboards are usually like, they look cool, but they don't really like move the needle forward.

**Jason Cooperson** _[01:13:41]_
> Like in any, you know what I'm saying?

**Jason Cooperson** _[01:13:42]_
> Like it's one of those things.

**Jason Cooperson** _[01:13:43]_
> So I'll tell you what, let's work on this content stuff.

**Tyler Panzner** _[01:13:47]_
> Okay.

**Jason Cooperson** _[01:13:47]_
> Let's build a really cool content system that can pull in new ideas.

**Jason Cooperson** _[01:13:51]_
> can auto, like get new literature.

**Jason Cooperson** _[01:13:52]_
> Scanning ideas and being able to talk to it.

**Tyler Panzner** _[01:13:55]_
> And like, let's say if I were talking to Claude and say, Hey, remember that content?

**Tyler Panzner** _[01:14:02]_
> And if I were to say, hey, pull up the notes, the content notes that we have around this thing.

**Tyler Panzner** _[01:14:13]_
> Let me see them.

**Tyler Panzner** _[01:14:14]_
> I could pull it so I could see it in the clawed window.

**Tyler Panzner** _[01:14:17]_
> And I could say, actually, I want to tweak it a little bit this way.

**Tyler Panzner** _[01:14:20]_
> It could go back and re-save that.

**Jason Cooperson** _[01:14:22]_
> Yep.

**Tyler Panzner** _[01:14:23]_
> Great.

**Tyler Panzner** _[01:14:23]_
> So then over time, I could chip away at it.

**Tyler Panzner** _[01:14:25]_
> So then when I sit down, right, it's all ready to go.

**Jason Cooperson** _[01:14:28]_
> Yeah.

**Jason Cooperson** _[01:14:29]_
> And then you can hope you can do it all from your phone, too, with this.

**Tyler Panzner** _[01:14:32]_
> Yeah.

**Tyler Panzner** _[01:14:33]_
> And then maybe we do ideas polished or like maybe have like a hook review or maybe like a ready to be filmed.

**Tyler Panzner** _[01:14:43]_
> So it's like polished ideas, ready to be filmed that I could slowly iterate over time via voice.

**Jason Cooperson** _[01:14:48]_
> Yeah.

**Jason Cooperson** _[01:14:48]_
> And then have a carousel generator, too.

**Tyler Panzner** _[01:14:54]_
> Yeah.

**Tyler Panzner** _[01:14:55]_
> Like if you're like, hey, I like this one.

**Jason Cooperson** _[01:14:56]_
> Let's turn it into a carousel.

**Tyler Panzner** _[01:14:57]_
> Yeah.

**Tyler Panzner** _[01:14:58]_
> And then it would take like 10 minutes to like turn on.

**Jason Cooperson** _[01:15:00]_
> The Carousel Post, you post up.

**Jason Cooperson** _[01:15:02]_
> Okay, cool.

**Jason Cooperson** _[01:15:03]_
> Well, then I just need you to, I would say, let's share this Notion page with me.

**Jason Cooperson** _[01:15:11]_
> I think you might even need to, yeah, just try and share it with me because then I'll be able to set up the integration myself and it'll work for you as well.

**Tyler Panzner** _[01:15:36]_
> Yeah, it like feels overwhelming, but it's a new learning curve, right?

**Tyler Panzner** _[01:15:40]_
> That's what it's all about here.

**Jason Cooperson** _[01:15:43]_
> So, yeah, it's actually like, yeah, it's not that bad once you get into it.

**Tyler Panzner** _[01:15:51]_
> I guess for me, again, it's just like I make all this content and a lot of it comes down to me actually sitting down and filming it.

**Tyler Panzner** _[01:15:57]_
> But when I don't have, I need to make time to actually.

**Tyler Panzner** _[01:16:00]_
> Sit down and film it and just sit down and do it, if that makes sense, you know?

**Tyler Panzner** _[01:16:05]_
> Yeah.

**Tyler Panzner** _[01:16:12]_
> Oh, upgrade.

**Tyler Panzner** _[01:16:12]_
> No.

**Tyler Panzner** _[01:16:13]_
> I don't think you need to be a member, right?

**Tyler Panzner** _[01:16:15]_
> I think that's fine.

**Jason Cooperson** _[01:16:18]_
> Yeah.

**Tyler Panzner** _[01:16:19]_
> I think – Yeah, because, again, my goal here, if I could do, I don't know, two or three carousels per week, you know, one based on a study, another one based on, you know, a value add or, you know, you need help figuring this out, the last carousel, you know, comment the keyword to learn more about my work, right?

**Tyler Panzner** _[01:16:50]_
> I think just get another two, three pieces out, like, per week, right?

**Tyler Panzner** _[01:16:54]_
> Like, pretty streamlined and automatically.

**Tyler Panzner** _[01:16:58]_
> Again, will it help?

**Tyler Panzner** _[01:16:59]_
> We'll see.

**Tyler Panzner** _[01:17:00]_
> Right.

**Tyler Panzner** _[01:17:01]_
> Getting clients never from getting views.

**Jason Cooperson** _[01:17:02]_
> But I mean, it'll definitely help you get out more content, which is going to help you get more clients.

**Jason Cooperson** _[01:17:13]_
> OK, well, I need to run because I actually need to hop on a group call.

**Jason Cooperson** _[01:17:16]_
> I'm like for this other call.

**Jason Cooperson** _[01:17:17]_
> But I'll send you I'll keep obviously I'll keep in contact in the Slack channel.

**Jason Cooperson** _[01:17:22]_
> I'll start building out the content system for you.

**Jason Cooperson** _[01:17:24]_
> I might need to I might just ask you for like some notion stuff like maybe I need you to like add me to a page or whatever.

**Jason Cooperson** _[01:17:30]_
> But I'll let you know in Slack.

**Tyler Panzner** _[01:17:32]_
> OK.

**Tyler Panzner** _[01:17:33]_
> OK.

**Jason Cooperson** _[01:17:34]_
> All right.

**Tyler Panzner** _[01:17:35]_
> Thanks, man.

**Tyler Panzner** _[01:17:36]_
> Of course.

**Jason Cooperson** _[01:17:36]_
> Of course.

**Jason Cooperson** _[01:17:37]_
> I'll keep you updated on that and then have the MVP again ready next week.

**Jason Cooperson** _[01:17:42]_
> Awesome.

**Jason Cooperson** _[01:17:43]_
> Thank you.

**Jason Cooperson** _[01:17:43]_
> Awesome.

**Jason Cooperson** _[01:17:44]_
> All right.

**Jason Cooperson** _[01:17:44]_
> I'll see you later.

**Jason Cooperson** _[01:17:45]_
> Peace.

