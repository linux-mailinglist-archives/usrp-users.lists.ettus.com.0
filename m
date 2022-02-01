Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E024A6592
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 21:20:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D132F3851BE
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 15:20:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="da4xz9Nj";
	dkim-atps=neutral
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id E6BE2385070
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 15:19:53 -0500 (EST)
Received: by mail-wr1-f45.google.com with SMTP id w11so34190443wra.4
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 12:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3fhAxIwJkn3MY4NoKD4JF21A0G0IT5aV/+EnWDNzcFM=;
        b=da4xz9NjOsxEl2LSbCmtQAaagq9+6nKkAKDkJty8kerdklH/CtCRqZFbCwNEV2srz/
         0J6gnOB0l+Q5H0/4pDFPTqWS8f7lGpA7K/yL/eXXb6d8uBjhk01GzlbTSjlwUoEQ4Trr
         3AbEczV0cLtt45jw/VEtvNkdoXh434UnG2D9ti9uN3AvEk/SLr+zdhlo350x2+rc7xWD
         Wc18q3bQPJ8bB2BsYlRwMNgg+n1eR1gshk7fxqv+c02H7i2EbHr6tP0dAMA/LDaSsduo
         ioNpoyusjJpXMkZF2Aa0z8E9aTCBRAOHpgpBnRkJwsMfjMO3kH0aW1TrRO8nhDqAllII
         ZA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3fhAxIwJkn3MY4NoKD4JF21A0G0IT5aV/+EnWDNzcFM=;
        b=34nj+OSdkr3UYI1i/7qoHeoAHMHMiGnyZLmAy03oJIqBTnhvZGXjbvV+xueomo+IX6
         8LStVE/N1r4NiS8N4VTHcGsw0IBG7lqE1crmLP6aCAhwFi1aEnk+6T3a5HX69orIKIuB
         ea3SjlamCVAGPX/JX/8RuYKDr43gl3UVI0iximqXN/YSVI/bb9/tKoFS+6xY1P/ZhAHj
         ArhPiF0tEmey2Kvmjn0Yw54NgO+rpAzOpCgXxQ61M0LlHGYt1R+I0q6syssInhirkOXI
         iiOtaMghl3IRtZ4TrWwyTesjeg4HwUhHjzjLKnU9Wd5WaF+1DCJw2ua6ksPTJNf0XFNw
         wwXA==
X-Gm-Message-State: AOAM530pMUnKTlg5TQ/7LEr+OB/EYg/cpnzySz9sCF9WN8Ja8m4cVyaf
	71sHeq28NbEW9jV4ev+0bygPVQ6q3ZYj80jsBrLtLa6wzsc=
X-Google-Smtp-Source: ABdhPJxJtCq3V7RAZBgbL6vDJ2GIuAGIMKeAVoLaoXRsh0aAtsQmWCJO4g8WGLw+JoBcNtSGG87QWXVwsGFDgzJ4wwE=
X-Received: by 2002:a5d:4e11:: with SMTP id p17mr22883310wrt.325.1643746792662;
 Tue, 01 Feb 2022 12:19:52 -0800 (PST)
MIME-Version: 1.0
References: <164366958084.11274.12985129402155989646@mm2.emwd.com>
 <CACDReSwaUtZmNFzRrZnOb0dz3E0_RA=OD0L2dBejHXcMxd-w=w@mail.gmail.com>
 <CAB__hTT5bqDK-MPbS_1wZHFpqjP5XNp25eQdamZHhx+=QPpkuQ@mail.gmail.com>
 <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com>
 <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com> <CAB__hTQxHsDTCXkLWOn9eyiFSyiMcP2DdoMFReycC2K8jNMhjw@mail.gmail.com>
In-Reply-To: <CAB__hTQxHsDTCXkLWOn9eyiFSyiMcP2DdoMFReycC2K8jNMhjw@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 1 Feb 2022 15:19:40 -0500
Message-ID: <CAB__hTTLwMA9Pz7_COWoff_5qCscHssxk66k5G2zL=OZFxHN0w@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: EHH4X6HFMCIFIPMBQ7JBC5454VRU6YSJ
X-Message-ID-Hash: EHH4X6HFMCIFIPMBQ7JBC5454VRU6YSJ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EHH4X6HFMCIFIPMBQ7JBC5454VRU6YSJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0649775595389783533=="

--===============0649775595389783533==
Content-Type: multipart/alternative; boundary="000000000000adf53205d6fa9ffc"

--000000000000adf53205d6fa9ffc
Content-Type: text/plain; charset="UTF-8"

I just reviewed the Replay block "issue_stream_cmd" and I think I was wrong
in the previous post. This appears to operate with the playback buffer
rather than the record buffer. So, I think you will need to use plan B and
call "issue_stream_cmd" directly on the radio controller.

On Tue, Feb 1, 2022 at 3:11 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Ofer,
> The Replay block has an "issue_stream_cmd" that should work identically to
> the same command in the rx_streamer. You should be able to use a timed
> command with it.  Even if this doesn't work for some reason, you could
> instead use the "issue_stream_cmd" directly on the Radio (using a timed
> command). Note that the reason for issuing it at the rx_streamer or at the
> replay block is so that ALL blocks in the graph will get notified of the
> impending stream (in case any given block needs to prepare in some way for
> the impending stream). Thus, in a typical graph, when you call
> issue_stream_cmd on the rx_streamer, this command then propagates to the
> DDC and ultimately to the Radio which guarantees the start sample.
> Rob
>
> On Tue, Feb 1, 2022 at 2:34 PM Ofer Saferman <ofer@navigicom.com> wrote:
>
>> Hello Rob,
>>
>> Thank you for your assistance.
>> I will take your advice and keep it simple and use a separate port for
>> each operation/channel.
>> I want to do it not only to keep things simple but also because my Tx
>> playback should never stop while my recording is timed and rare.
>>
>> Can you or Wade comment on item (4) in my latest query? - How to issue
>> recording simultaneously on two replay ports? As I mentioned, I know how to
>> do timed commands on streams but not on the replay block.
>>
>> Regards,
>> Ofer Saferman
>>
>> On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Oops. In step 3, I meant graph Replay->rx_streamer.  Also, in step 2,
>>> since this is a circular graph, you need to disconnect property propagation
>>> on one leg of the graph (or something like that).
>>>
>>> On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi Ofer,
>>>> Considering just a single port replay block, it seems that you want to
>>>> do the following:
>>>> Step 1: Populate Tx samples: Configure tx_streamer->Replay graph and
>>>> populate Mem block A with Tx waveform
>>>> Step 2: Transmit/Receive samples: Change graph to Radio->Replay->Radio
>>>> and "play" from Mem block A while recording to Mem block B
>>>> Step 3: Download Rx samples: Change graph to Radio->rx_streamer and
>>>> play samples from Mem block B
>>>>
>>>> This seems doable to me, but you may want to start with a simpler
>>>> approach (such as separate ports that don't require reconfiguring graphs).
>>>> Also, regarding your question about a fixed number of samples, I think that
>>>> the limit is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you need
>>>> more than that, I think you are out of luck (I don't think there is a timed
>>>> radio command to tell it to stop streaming on a given sample).
>>>> Rob
>>>>
>>>> On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman <ofer@navigicom.com>
>>>> wrote:
>>>>
>>>>> Hello Wade,
>>>>>
>>>>> Thank you for your prompt response.
>>>>> A few more questions please:
>>>>> 1. I am not sure that when we say bi-directional we mean the same
>>>>> thing. The record and playback functions derive their function to some
>>>>> extent from the graph connectivity. I would like, for the *same port*
>>>>> of Replay, to make 2 graphs: tx_stream --> Replay --> Radio, Radio -->
>>>>> Replay --> rx_stream. When I do record or playback, which of the graphs is
>>>>> active? Both of them? In both directions? Can I control it to activate only
>>>>> one direction? For Tx I want to use the record function only once to get
>>>>> the samples into the buffer and playback them periodically (same as in the
>>>>> rfnoc_replay_samples_from_file example) but for the other direction of Rx I
>>>>> want to use the record function all the time. When I issue the record
>>>>> command, which graph is active? The Tx graph? The Rx graph? Will it allow
>>>>> me to make the 2 graphs at all using the same port? It is my understanding
>>>>> that for the 2 graphs I mentioned I need two ports of replay, one for each
>>>>> graph. Please correct me if I am wrong.
>>>>> 4. I would like to use two ports of Replay to record 2 Rx channels.
>>>>> One replay port for each Rx channel. How do I issue a record command that
>>>>> will cause both channels (ports) to record at the same time instant? I know
>>>>> we can do timed commands for streams but how to do it for replay ? My use
>>>>> of the rx streams is done later in an offline fashion and can be done in
>>>>> series for each of the Rx channels but the recording of samples itself to
>>>>> DRAM has to be simultaneous.
>>>>>
>>>>> Thanks,
>>>>> Ofer Saferman
>>>>>
>>>>> ---------- Forwarded message ----------
>>>>>> From: Wade Fife <wade.fife@ettus.com>
>>>>>> To: Ofer Saferman <ofer@navigicom.com>
>>>>>> Cc: usrp-users <usrp-users@lists.ettus.com>
>>>>>> Bcc:
>>>>>> Date: Mon, 31 Jan 2022 16:52:41 -0600
>>>>>> Subject: [USRP-users] Re: Questions about replay block
>>>>>> Hi Ofer,
>>>>>>
>>>>>> 1. It is bidirectional. You can think of the "record" and the "play"
>>>>>> components as independent, but connected to the same memory. So be careful
>>>>>> not to read/write to the same memory space and be aware that reading and
>>>>>> writing simultaneously slows down the DRAM making under/overflow more
>>>>>> likely. But I think the E320 DRAM should be fast enough for your use case.
>>>>>>
>>>>>> 2. The number of ports on the Replay block doesn't have any
>>>>>> restrictions that I know of. Any positive integer should be fine. You could
>>>>>> also leave ports unused/unconnected if it was somehow a problem.
>>>>>>
>>>>>> 3. To record at a predetermined time for a fixed amount of data, you
>>>>>> should be able to issue a stream command with the time and the number of
>>>>>> samples you want.
>>>>>> a. Yes.
>>>>>> b. Yes. The first time you want to record data, you call record(). To
>>>>>> record to the same buffer again, call record_restart(). Make sure num_samps
>>>>>> for your stream command does not exceed the size of your record buffer, or
>>>>>> else the radio will overflow.
>>>>>> c. Yes, you need to play back the buffer. Since the output is
>>>>>> connected to the rx streamer, it'll stream to the host. So you can call
>>>>>> recv() on your rx streamer to capture the data. Something like this (in
>>>>>> Python):
>>>>>> replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0),
>>>>>> False)
>>>>>> rx_md = uhd.types.RXMetadata()
>>>>>> num_rx = rx_streamer.recv(output_data, rx_md, timeout)
>>>>>>
>>>>>> Happy coding!
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>>
>>>>>> On Mon, Jan 31, 2022 at 9:45 AM Ofer Saferman <ofer@navigicom.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hello,
>>>>>>>
>>>>>>> I am working on a E320 USRP unit and using UHD-4.1.0.5.
>>>>>>> I prepared my own FPGA image that has 1 radio block and 1 replay
>>>>>>> block with 2 ports (channels)
>>>>>>> I would like to be able to simultaneously perform playback of 1 Tx
>>>>>>> channel and recording of 2 Rx channels (to/from different memory locations)
>>>>>>> The example rfnoc_replay_samples_from_file.cpp is only helpful to
>>>>>>> some extent because it shows only the playback path and I am having some
>>>>>>> difficulty setting up the recording path.
>>>>>>>
>>>>>>> I have a few questions about the replay block functionality and
>>>>>>> connectivity that I hope you may be able to resolve.
>>>>>>>
>>>>>>> 1. Is the replay block bi-directional? If I have a replay block with
>>>>>>> 1 channel, can it be used for both playback of samples and recording of
>>>>>>> samples (from/to different memory locations) simultaneously ? or does each
>>>>>>> operation require one channel?
>>>>>>> 2. If the answer to question (1) is no then I guess I need at least
>>>>>>> 3 replay channels. Is it possible to define in the FPGA image (in the yml
>>>>>>> file) a replay block with 3 channels (ports) or does it have to be a power
>>>>>>> of 2? a multiple of 2? I didn't want to try and see what happens because it
>>>>>>> takes a while to compile the FPGA image and I would rather get it right on
>>>>>>> the 1st try.
>>>>>>> 3. I would like to issue samples recording at a predetermined time
>>>>>>> for a fixed size data chunk and then at my own leisure dump the memory
>>>>>>> buffer that was recorded to a file. Since I don't have a working example I
>>>>>>> am having some difficulty getting it right.
>>>>>>> a. The graph should be Radio -->  Replay --> rx_stream. Is this
>>>>>>> correct?
>>>>>>> b. I should start my recording with replay_ctrl->record_restart and
>>>>>>> check for fullness, right?
>>>>>>> c. Then how do I get the rx_stream to dump it to file? Do I need to
>>>>>>> do playback for this to happen, mirroring what is going on in the
>>>>>>> rfnoc_replay_samples_from_file example?
>>>>>>> If someone has a working code snippet I would appreciate it if they
>>>>>>> can share it.
>>>>>>>
>>>>>>> Thanks,
>>>>>>> Ofer Saferman
>>>>>>>
>>>>>>> --
>>>>>>> This message has been scanned for viruses and
>>>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>>>> and is
>>>>>>> believed to be clean. _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>
>>>>> --
>>>>> This message has been scanned for viruses and
>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>> and is
>>>>> believed to be clean. _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean. _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000adf53205d6fa9ffc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I just reviewed the Replay block &quot;issue_stream_cmd&qu=
ot; and I think I was wrong in the previous post. This appears to operate w=
ith the playback buffer rather than the record buffer. So, I think you will=
 need to use plan B and call &quot;issue_stream_cmd&quot; directly on the r=
adio controller.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Feb 1, 2022 at 3:11 PM Rob Kossler &lt;<a href=3D"m=
ailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Ofer,<div>The Rep=
lay block has an &quot;issue_stream_cmd&quot; that should work identically =
to the same command in the rx_streamer. You should be able to use a timed c=
ommand with it.=C2=A0 Even if this doesn&#39;t work for some reason, you co=
uld instead use the &quot;issue_stream_cmd&quot; directly on the Radio (usi=
ng a timed command). Note that the reason for issuing it at the rx_streamer=
 or at the replay block is so that ALL blocks in the graph will get notifie=
d of the impending stream (in case any given block needs to prepare in some=
 way for the impending stream). Thus, in a typical graph, when you call iss=
ue_stream_cmd on the rx_streamer, this command then propagates to the DDC a=
nd ultimately to the Radio which guarantees the start sample.</div><div>Rob=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Feb 1, 2022 at 2:34 PM Ofer Saferman &lt;<a href=3D"mailto:of=
er@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>Hello Rob,</div><div><br></div><div>Thank you for your assistance.</div><d=
iv>I will take your advice and keep it simple and use a separate port for e=
ach operation/channel. <br></div><div>I want to do it not only to keep thin=
gs simple but also because my Tx playback should never stop while my record=
ing is timed and rare.<br></div><div><br></div><div>Can you or Wade comment=
 on item (4) in my latest query? - How to issue recording simultaneously on=
 two replay ports? As I mentioned, I know how to do timed commands on strea=
ms but not on the replay block.<br></div><div><br></div><div>Regards,</div>=
<div>Ofer Saferman<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler &l=
t;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div>Oops. In step 3, I meant graph Replay-&gt;rx_streamer.=C2=
=A0 Also, in step 2, since this is a circular graph, you need to disconnect=
 property propagation on one leg of the graph (or something like that).</di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Feb 1, 2022 at 11:58 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.e=
du" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi O=
fer,<div>Considering just a single port replay block, it seems that you wan=
t to do the following:</div><div>Step 1: Populate Tx samples: Configure tx_=
streamer-&gt;Replay graph and populate Mem block A with Tx waveform</div><d=
iv>Step 2: Transmit/Receive samples: Change graph to Radio-&gt;Replay-&gt;R=
adio=C2=A0 and &quot;play&quot; from Mem block A while recording to Mem blo=
ck B</div><div>Step 3: Download Rx samples: Change graph to Radio-&gt;rx_st=
reamer and play samples from Mem block B</div><div><br></div><div>This seem=
s doable to me, but you may want to start with a simpler approach (such as =
separate ports that don&#39;t require reconfiguring graphs). Also, regardin=
g=C2=A0your question about a fixed number of samples, I think that the limi=
t is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you need more than t=
hat, I think you are out of luck (I don&#39;t think there is a timed radio =
command to tell it to stop streaming on a given sample).</div><div>Rob</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman &lt;<a href=3D"mailto:ofer@n=
avigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hel=
lo Wade,</div><div><br></div><div>Thank you for your prompt response.</div>=
<div>A few more questions please:</div><div>1. I am not sure that when we s=
ay bi-directional we mean the same thing. The record and playback functions=
 derive their function to some extent from the graph connectivity. I would =
like, for the <u><b>same port</b></u> of Replay, to make 2 graphs: tx_strea=
m --&gt; Replay --&gt; Radio, Radio --&gt; Replay --&gt; rx_stream. When I =
do record or playback, which of the graphs is active? Both of them? In both=
 directions? Can I control it to activate only one direction? For Tx I want=
 to use the record function only once to get the samples into the buffer an=
d playback them periodically (same as in the
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
</blockquote></div>

--000000000000adf53205d6fa9ffc--

--===============0649775595389783533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0649775595389783533==--
