Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD724A657C
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 21:13:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D94293850DB
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 15:13:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TGBuUdFs";
	dkim-atps=neutral
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 56136384E86
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 15:12:05 -0500 (EST)
Received: by mail-wr1-f51.google.com with SMTP id u15so34227543wrt.3
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 12:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C9QA13oUQnVpoaTxxsOHLoAfeqJsBqy3rA319i0a14Q=;
        b=TGBuUdFsLxKuVNCOtVAupRFKlPb3IUMyH/ItpCGHeY9cls2xBax8vkXkkVXc8p5mF0
         tlywVq5MWJjq7D4lgKGqg6oAY5IL1yYWf1+u27MmQVmvEy652Z/3GWBw15t6CriPAwtO
         kOz2yIVKZC0iE4fPJCaE8NAb/Vau4sAAQaTkL5Z/hMzMhMJUDbQjVUS0BJK26UAehKR2
         +f+4dznec+K1Hg1vfYXwAggx66lOyD9sGJqWBM4IKwvilZa3GfmWsLl6BkMHyDFjE8BS
         +DDueUCSjObkUiRDWCvvRlm+qFdrKZvUmNouU8PLaVd3tsZmmcNfbr6gdT39YPC1Xgz4
         2nKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C9QA13oUQnVpoaTxxsOHLoAfeqJsBqy3rA319i0a14Q=;
        b=wn1qMnb8I8hmjqYQVEwUGGlJ3e2ah9O6570gfptZl/pvuZKh/EacntMrPigS5gsB5D
         sif6ApjVp2eQs7WrRGfa0tgUGqnr3sPrFGPBHmmUV+wU3bFaY3LO353i4mes3vGdho01
         /A5CqF6uncDHaSIy0H1SuYxgbnjIwihakgRP2k1I29+WTP3wjtu8CQDaUxTRlCA8QWT+
         JO8EJmnj3vvNdNdI934g9NKOtIlJ46uUfamffBscPkVc2uO0AJ2G/UKyNevs3humx96W
         SLZgD+5iYxc+lU62zqthw+k6bRZf8p8WLQdFymntM9kARYIkJSgTh1yz3ZX2HiH4mswG
         +3/w==
X-Gm-Message-State: AOAM530TU2DFnQrta/rY+Bw+We90Kv87GymtDj0vv9ow9fLNOA9acu/n
	k5eYitaLXXa03PNxyWZ60gPQvZsWcZMaLOEalVFo/sy63GA=
X-Google-Smtp-Source: ABdhPJyUNue6y8DZ487bVE+5WbpWgB1x9NvtF0RvU2148Qsirvhdb6qMWFkeUU9wl3znHNOuPtc49tYF3gwHqIxDKhE=
X-Received: by 2002:a5d:4e11:: with SMTP id p17mr22864306wrt.325.1643746323859;
 Tue, 01 Feb 2022 12:12:03 -0800 (PST)
MIME-Version: 1.0
References: <164366958084.11274.12985129402155989646@mm2.emwd.com>
 <CACDReSwaUtZmNFzRrZnOb0dz3E0_RA=OD0L2dBejHXcMxd-w=w@mail.gmail.com>
 <CAB__hTT5bqDK-MPbS_1wZHFpqjP5XNp25eQdamZHhx+=QPpkuQ@mail.gmail.com>
 <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com> <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
In-Reply-To: <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 1 Feb 2022 15:11:51 -0500
Message-ID: <CAB__hTQxHsDTCXkLWOn9eyiFSyiMcP2DdoMFReycC2K8jNMhjw@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: 6A3PUDHFTP6AGSRJ3473B2AI4SFCV6G5
X-Message-ID-Hash: 6A3PUDHFTP6AGSRJ3473B2AI4SFCV6G5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6A3PUDHFTP6AGSRJ3473B2AI4SFCV6G5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3854375707624946965=="

--===============3854375707624946965==
Content-Type: multipart/alternative; boundary="000000000000bc971105d6fa839a"

--000000000000bc971105d6fa839a
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,
The Replay block has an "issue_stream_cmd" that should work identically to
the same command in the rx_streamer. You should be able to use a timed
command with it.  Even if this doesn't work for some reason, you could
instead use the "issue_stream_cmd" directly on the Radio (using a timed
command). Note that the reason for issuing it at the rx_streamer or at the
replay block is so that ALL blocks in the graph will get notified of the
impending stream (in case any given block needs to prepare in some way for
the impending stream). Thus, in a typical graph, when you call
issue_stream_cmd on the rx_streamer, this command then propagates to the
DDC and ultimately to the Radio which guarantees the start sample.
Rob

On Tue, Feb 1, 2022 at 2:34 PM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello Rob,
>
> Thank you for your assistance.
> I will take your advice and keep it simple and use a separate port for
> each operation/channel.
> I want to do it not only to keep things simple but also because my Tx
> playback should never stop while my recording is timed and rare.
>
> Can you or Wade comment on item (4) in my latest query? - How to issue
> recording simultaneously on two replay ports? As I mentioned, I know how to
> do timed commands on streams but not on the replay block.
>
> Regards,
> Ofer Saferman
>
> On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Oops. In step 3, I meant graph Replay->rx_streamer.  Also, in step 2,
>> since this is a circular graph, you need to disconnect property propagation
>> on one leg of the graph (or something like that).
>>
>> On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Ofer,
>>> Considering just a single port replay block, it seems that you want to
>>> do the following:
>>> Step 1: Populate Tx samples: Configure tx_streamer->Replay graph and
>>> populate Mem block A with Tx waveform
>>> Step 2: Transmit/Receive samples: Change graph to Radio->Replay->Radio
>>> and "play" from Mem block A while recording to Mem block B
>>> Step 3: Download Rx samples: Change graph to Radio->rx_streamer and play
>>> samples from Mem block B
>>>
>>> This seems doable to me, but you may want to start with a simpler
>>> approach (such as separate ports that don't require reconfiguring graphs).
>>> Also, regarding your question about a fixed number of samples, I think that
>>> the limit is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you need
>>> more than that, I think you are out of luck (I don't think there is a timed
>>> radio command to tell it to stop streaming on a given sample).
>>> Rob
>>>
>>> On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman <ofer@navigicom.com>
>>> wrote:
>>>
>>>> Hello Wade,
>>>>
>>>> Thank you for your prompt response.
>>>> A few more questions please:
>>>> 1. I am not sure that when we say bi-directional we mean the same
>>>> thing. The record and playback functions derive their function to some
>>>> extent from the graph connectivity. I would like, for the *same port*
>>>> of Replay, to make 2 graphs: tx_stream --> Replay --> Radio, Radio -->
>>>> Replay --> rx_stream. When I do record or playback, which of the graphs is
>>>> active? Both of them? In both directions? Can I control it to activate only
>>>> one direction? For Tx I want to use the record function only once to get
>>>> the samples into the buffer and playback them periodically (same as in the
>>>> rfnoc_replay_samples_from_file example) but for the other direction of Rx I
>>>> want to use the record function all the time. When I issue the record
>>>> command, which graph is active? The Tx graph? The Rx graph? Will it allow
>>>> me to make the 2 graphs at all using the same port? It is my understanding
>>>> that for the 2 graphs I mentioned I need two ports of replay, one for each
>>>> graph. Please correct me if I am wrong.
>>>> 4. I would like to use two ports of Replay to record 2 Rx channels. One
>>>> replay port for each Rx channel. How do I issue a record command that will
>>>> cause both channels (ports) to record at the same time instant? I know we
>>>> can do timed commands for streams but how to do it for replay ? My use of
>>>> the rx streams is done later in an offline fashion and can be done in
>>>> series for each of the Rx channels but the recording of samples itself to
>>>> DRAM has to be simultaneous.
>>>>
>>>> Thanks,
>>>> Ofer Saferman
>>>>
>>>> ---------- Forwarded message ----------
>>>>> From: Wade Fife <wade.fife@ettus.com>
>>>>> To: Ofer Saferman <ofer@navigicom.com>
>>>>> Cc: usrp-users <usrp-users@lists.ettus.com>
>>>>> Bcc:
>>>>> Date: Mon, 31 Jan 2022 16:52:41 -0600
>>>>> Subject: [USRP-users] Re: Questions about replay block
>>>>> Hi Ofer,
>>>>>
>>>>> 1. It is bidirectional. You can think of the "record" and the "play"
>>>>> components as independent, but connected to the same memory. So be careful
>>>>> not to read/write to the same memory space and be aware that reading and
>>>>> writing simultaneously slows down the DRAM making under/overflow more
>>>>> likely. But I think the E320 DRAM should be fast enough for your use case.
>>>>>
>>>>> 2. The number of ports on the Replay block doesn't have any
>>>>> restrictions that I know of. Any positive integer should be fine. You could
>>>>> also leave ports unused/unconnected if it was somehow a problem.
>>>>>
>>>>> 3. To record at a predetermined time for a fixed amount of data, you
>>>>> should be able to issue a stream command with the time and the number of
>>>>> samples you want.
>>>>> a. Yes.
>>>>> b. Yes. The first time you want to record data, you call record(). To
>>>>> record to the same buffer again, call record_restart(). Make sure num_samps
>>>>> for your stream command does not exceed the size of your record buffer, or
>>>>> else the radio will overflow.
>>>>> c. Yes, you need to play back the buffer. Since the output is
>>>>> connected to the rx streamer, it'll stream to the host. So you can call
>>>>> recv() on your rx streamer to capture the data. Something like this (in
>>>>> Python):
>>>>> replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0),
>>>>> False)
>>>>> rx_md = uhd.types.RXMetadata()
>>>>> num_rx = rx_streamer.recv(output_data, rx_md, timeout)
>>>>>
>>>>> Happy coding!
>>>>>
>>>>> Wade
>>>>>
>>>>>
>>>>> On Mon, Jan 31, 2022 at 9:45 AM Ofer Saferman <ofer@navigicom.com>
>>>>> wrote:
>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> I am working on a E320 USRP unit and using UHD-4.1.0.5.
>>>>>> I prepared my own FPGA image that has 1 radio block and 1 replay
>>>>>> block with 2 ports (channels)
>>>>>> I would like to be able to simultaneously perform playback of 1 Tx
>>>>>> channel and recording of 2 Rx channels (to/from different memory locations)
>>>>>> The example rfnoc_replay_samples_from_file.cpp is only helpful to
>>>>>> some extent because it shows only the playback path and I am having some
>>>>>> difficulty setting up the recording path.
>>>>>>
>>>>>> I have a few questions about the replay block functionality and
>>>>>> connectivity that I hope you may be able to resolve.
>>>>>>
>>>>>> 1. Is the replay block bi-directional? If I have a replay block with
>>>>>> 1 channel, can it be used for both playback of samples and recording of
>>>>>> samples (from/to different memory locations) simultaneously ? or does each
>>>>>> operation require one channel?
>>>>>> 2. If the answer to question (1) is no then I guess I need at least 3
>>>>>> replay channels. Is it possible to define in the FPGA image (in the yml
>>>>>> file) a replay block with 3 channels (ports) or does it have to be a power
>>>>>> of 2? a multiple of 2? I didn't want to try and see what happens because it
>>>>>> takes a while to compile the FPGA image and I would rather get it right on
>>>>>> the 1st try.
>>>>>> 3. I would like to issue samples recording at a predetermined time
>>>>>> for a fixed size data chunk and then at my own leisure dump the memory
>>>>>> buffer that was recorded to a file. Since I don't have a working example I
>>>>>> am having some difficulty getting it right.
>>>>>> a. The graph should be Radio -->  Replay --> rx_stream. Is this
>>>>>> correct?
>>>>>> b. I should start my recording with replay_ctrl->record_restart and
>>>>>> check for fullness, right?
>>>>>> c. Then how do I get the rx_stream to dump it to file? Do I need to
>>>>>> do playback for this to happen, mirroring what is going on in the
>>>>>> rfnoc_replay_samples_from_file example?
>>>>>> If someone has a working code snippet I would appreciate it if they
>>>>>> can share it.
>>>>>>
>>>>>> Thanks,
>>>>>> Ofer Saferman
>>>>>>
>>>>>> --
>>>>>> This message has been scanned for viruses and
>>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>>> and is
>>>>>> believed to be clean. _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>
>>>> --
>>>> This message has been scanned for viruses and
>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>>> is
>>>> believed to be clean. _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bc971105d6fa839a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ofer,<div>The Replay block has an &quot;issue_stream_cm=
d&quot; that should work identically to the same command in the rx_streamer=
. You should be able to use a timed command with it.=C2=A0 Even if this doe=
sn&#39;t work for some reason, you could instead use the &quot;issue_stream=
_cmd&quot; directly on the Radio (using a timed command). Note that the rea=
son for issuing it at the rx_streamer or at the replay block is so that ALL=
 blocks in the graph will get notified of the impending stream (in case any=
 given block needs to prepare in some way for the impending stream). Thus, =
in a typical graph, when you call issue_stream_cmd on the rx_streamer, this=
 command then propagates to the DDC and ultimately to the Radio which guara=
ntees the start sample.</div><div>Rob</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 2:34 PM O=
fer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com">ofer@navigicom.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Hello Rob,</div><div><br></div><div>Thank you for your =
assistance.</div><div>I will take your advice and keep it simple and use a =
separate port for each operation/channel. <br></div><div>I want to do it no=
t only to keep things simple but also because my Tx playback should never s=
top while my recording is timed and rare.<br></div><div><br></div><div>Can =
you or Wade comment on item (4) in my latest query? - How to issue recordin=
g simultaneously on two replay ports? As I mentioned, I know how to do time=
d commands on streams but not on the replay block.<br></div><div><br></div>=
<div>Regards,</div><div>Ofer Saferman<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 7:02 =
PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rko=
ssler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Oops. In step 3, I meant graph Replay-&gt=
;rx_streamer.=C2=A0 Also, in step 2, since this is a circular graph, you ne=
ed to disconnect property propagation on one leg of the graph (or something=
 like that).</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
dir=3D"ltr">Hi Ofer,<div>Considering just a single port replay block, it se=
ems that you want to do the following:</div><div>Step 1: Populate Tx sample=
s: Configure tx_streamer-&gt;Replay graph and populate Mem block A with Tx =
waveform</div><div>Step 2: Transmit/Receive samples: Change graph to Radio-=
&gt;Replay-&gt;Radio=C2=A0 and &quot;play&quot; from Mem block A while reco=
rding to Mem block B</div><div>Step 3: Download Rx samples: Change graph to=
 Radio-&gt;rx_streamer and play samples from Mem block B</div><div><br></di=
v><div>This seems doable to me, but you may want to start with a simpler ap=
proach (such as separate ports that don&#39;t require reconfiguring graphs)=
. Also, regarding=C2=A0your question about a fixed number of samples, I thi=
nk that the limit is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you =
need more than that, I think you are out of luck (I don&#39;t think there i=
s a timed radio command to tell it to stop streaming on a given sample).</d=
iv><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman &lt;<a href=
=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hello Wade,</div><div><br></div><div>Thank you for your promp=
t response.</div><div>A few more questions please:</div><div>1. I am not su=
re that when we say bi-directional we mean the same thing. The record and p=
layback functions derive their function to some extent from the graph conne=
ctivity. I would like, for the <u><b>same port</b></u> of Replay, to make 2=
 graphs: tx_stream --&gt; Replay --&gt; Radio, Radio --&gt; Replay --&gt; r=
x_stream. When I do record or playback, which of the graphs is active? Both=
 of them? In both directions? Can I control it to activate only one directi=
on? For Tx I want to use the record function only once to get the samples i=
nto the buffer and playback them periodically (same as in the
rfnoc_replay_samples_from_file example) but for the other direction of Rx I=
 want to use the record function all the time. When I issue the record comm=
and, which graph is active? The Tx graph? The Rx graph? Will it allow me to=
 make the 2 graphs at all using the same port? It is my understanding that =
for the 2 graphs I mentioned I need two ports of replay, one for each graph=
. Please correct me if I am wrong.<br></div><div>4. I would like to use two=
 ports of Replay to record 2 Rx channels. One replay port for each Rx chann=
el. How do I issue a record command that will cause both channels (ports) t=
o record at the same time instant? I know we can do timed commands for stre=
ams but how to do it for replay ? My use of the rx streams is done later in=
 an offline fashion and can be done in series for each of the Rx channels b=
ut the recording of samples itself to DRAM has to be simultaneous.</div><di=
v><br></div><div>Thanks,</div><div>Ofer Saferman<br></div><br><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">---------- =
Forwarded message ----------<br>From:=C2=A0Wade Fife &lt;<a href=3D"mailto:=
wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt;<br>To:=
=C2=A0Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_bl=
ank">ofer@navigicom.com</a>&gt;<br>Cc:=C2=A0usrp-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Mon, 31 Jan 2022 16:52:41 -0600<br>Subj=
ect:=C2=A0[USRP-users] Re: Questions about replay block<br><div dir=3D"ltr"=
><div>Hi Ofer,</div><div><br></div><div>1. It is bidirectional. You can thi=
nk of the &quot;record&quot; and the &quot;play&quot; components as indepen=
dent, but connected to the same memory. So be careful not to read/write to =
the same memory space and be aware that reading and writing simultaneously =
slows down the DRAM making under/overflow more likely. But I think the E320=
 DRAM should be fast enough for your use case.</div><div><br></div><div>2. =
The number of ports on the Replay block doesn&#39;t have any restrictions t=
hat I know of. Any positive integer should be fine. You could also leave po=
rts unused/unconnected if it was somehow a problem.<br></div><div><br></div=
><div>3. To record at a predetermined time for a fixed amount of data, you =
should be able to issue a stream command with the time and the number of sa=
mples you want.<br></div><div>a. Yes.</div><div>b. Yes. The first time you =
want to record data, you call record(). To record to the same buffer again,=
 call record_restart(). Make sure num_samps for your stream command does no=
t exceed the size of your record buffer, or else the radio will overflow. <=
br></div><div>c. Yes, you need to play back the buffer. Since the output is=
 connected to the rx streamer, it&#39;ll stream to the host. So you can cal=
l recv() on your rx streamer to capture the data. Something like this (in P=
ython):<br>replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0=
), False)<br>rx_md =3D uhd.types.RXMetadata()<br>num_rx =3D rx_streamer.rec=
v(output_data, rx_md, timeout)</div><div><br></div><div>Happy coding!<br></=
div><div><br></div><div>Wade<br></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 31, 2022=
 at 9:45 AM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=
=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></=
div><div>I am working on a E320 USRP unit and using UHD-4.1.0.5.<br></div><=
div>I prepared my own FPGA image that has 1 radio block and 1 replay block =
with 2 ports (channels)</div><div>I would like to be able to simultaneously=
 perform playback of 1 Tx channel and recording of 2 Rx channels (to/from d=
ifferent memory locations)</div><div>The example rfnoc_replay_samples_from_=
file.cpp is only helpful to some extent because it shows only the playback =
path and I am having some difficulty setting up the recording path.<br></di=
v><div></div><div><br></div><div>I have a few questions about the replay bl=
ock functionality and connectivity that I hope you may be able to resolve.<=
/div><div><br></div><div>1. Is the replay block bi-directional? If I have a=
 replay block with 1 channel, can it be used for both playback of samples a=
nd recording of samples (from/to different memory locations) simultaneously=
 ? or does each operation require one channel?</div><div>2. If the answer t=
o question (1) is no then I guess I need at least 3 replay channels. Is it =
possible to define in the FPGA image (in the yml file) a replay block with =
3 channels (ports) or does it have to be a power of 2? a multiple of 2? I d=
idn&#39;t want to try and see what happens because it takes a while to comp=
ile the FPGA image and I would rather get it right on the 1st try.</div><di=
v>3. I would like to issue samples recording at a predetermined time for a =
fixed size data chunk and then at my own leisure dump the memory buffer tha=
t was recorded to a file. Since I don&#39;t have a working example I am hav=
ing some difficulty getting it right. <br></div><div>a. The graph should be=
 Radio --&gt;=C2=A0 Replay --&gt; rx_stream. Is this correct? <br></div><di=
v>b. I should start my recording with replay_ctrl-&gt;record_restart and ch=
eck for fullness, right?</div><div>c. Then how do I get the rx_stream to du=
mp it to file? Do I need to do playback for this to happen, mirroring what =
is going on in the=20
rfnoc_replay_samples_from_file example? <br></div><div>If someone has a wor=
king code snippet I would appreciate it if they can share it.</div><div><br=
></div><div>Thanks,</div><div>Ofer Saferman<br></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bc971105d6fa839a--

--===============3854375707624946965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3854375707624946965==--
