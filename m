Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2349F4A6512
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 20:35:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FD4538523D
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 14:34:59 -0500 (EST)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 604F2384FE8
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 14:34:03 -0500 (EST)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 28C1741141
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 21:33:22 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 0772A9FFB1
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 21:33:12 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id c9h0o5wBOeHt for <usrp-users@lists.ettus.com>;
	Tue,  1 Feb 2022 21:33:09 +0200 (IST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by o.dtnt.email (Postfix) with ESMTPSA id 293D99FF71
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 21:33:08 +0200 (IST)
Received: by mail-wr1-f52.google.com with SMTP id e8so34088243wrc.0
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 11:33:08 -0800 (PST)
X-Gm-Message-State: AOAM5304S3dOdAJcLl3Byl7f+ks7SgJdjiOfxMzGrRc7bWrWfNqELxXD
	j30K5S6cQd4ApWOGKTSumgp35uE2UbFJG9iGuQQ=
X-Google-Smtp-Source: ABdhPJxKzvkHiG0m8RnaCWNt0i+szrNKB/NrMxq0fTy8gYBBMwCQIQakYaOmNd02AhcO9x1YYnMmrZ7quwvToHqj1wI=
X-Received: by 2002:a5d:598b:: with SMTP id n11mr22777574wri.702.1643743987920;
 Tue, 01 Feb 2022 11:33:07 -0800 (PST)
MIME-Version: 1.0
References: <164366958084.11274.12985129402155989646@mm2.emwd.com>
 <CACDReSwaUtZmNFzRrZnOb0dz3E0_RA=OD0L2dBejHXcMxd-w=w@mail.gmail.com>
 <CAB__hTT5bqDK-MPbS_1wZHFpqjP5XNp25eQdamZHhx+=QPpkuQ@mail.gmail.com> <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com>
In-Reply-To: <CAB__hTTGRP0uBZpcs9jWT84N=7CHYtQfx1+WjcupqsdPz9FB7A@mail.gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Tue, 1 Feb 2022 21:32:56 +0200
X-Gmail-Original-Message-ID: <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
Message-ID: <CACDReSyjBnXe5uYYAyGoAnh1+jhZSAKtz6BTfix6haDGn==rEQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 28C1741141.A2525
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: FV4UV3K5AIROXXI46BOSBHAM6IAKXTHS
X-Message-ID-Hash: FV4UV3K5AIROXXI46BOSBHAM6IAKXTHS
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FV4UV3K5AIROXXI46BOSBHAM6IAKXTHS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6107837349862127859=="

--===============6107837349862127859==
Content-Type: multipart/alternative; boundary="00000000000080727805d6f9f868"

--00000000000080727805d6f9f868
Content-Type: text/plain; charset="UTF-8"

Hello Rob,

Thank you for your assistance.
I will take your advice and keep it simple and use a separate port for each
operation/channel.
I want to do it not only to keep things simple but also because my Tx
playback should never stop while my recording is timed and rare.

Can you or Wade comment on item (4) in my latest query? - How to issue
recording simultaneously on two replay ports? As I mentioned, I know how to
do timed commands on streams but not on the replay block.

Regards,
Ofer Saferman

On Tue, Feb 1, 2022 at 7:02 PM Rob Kossler <rkossler@nd.edu> wrote:

> Oops. In step 3, I meant graph Replay->rx_streamer.  Also, in step 2,
> since this is a circular graph, you need to disconnect property propagation
> on one leg of the graph (or something like that).
>
> On Tue, Feb 1, 2022 at 11:58 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Ofer,
>> Considering just a single port replay block, it seems that you want to do
>> the following:
>> Step 1: Populate Tx samples: Configure tx_streamer->Replay graph and
>> populate Mem block A with Tx waveform
>> Step 2: Transmit/Receive samples: Change graph to Radio->Replay->Radio
>> and "play" from Mem block A while recording to Mem block B
>> Step 3: Download Rx samples: Change graph to Radio->rx_streamer and play
>> samples from Mem block B
>>
>> This seems doable to me, but you may want to start with a simpler
>> approach (such as separate ports that don't require reconfiguring graphs).
>> Also, regarding your question about a fixed number of samples, I think that
>> the limit is 2^28 samples in the NUM_SAMPS_AND_DONE option. If you need
>> more than that, I think you are out of luck (I don't think there is a timed
>> radio command to tell it to stop streaming on a given sample).
>> Rob
>>
>> On Tue, Feb 1, 2022 at 12:18 AM Ofer Saferman <ofer@navigicom.com> wrote:
>>
>>> Hello Wade,
>>>
>>> Thank you for your prompt response.
>>> A few more questions please:
>>> 1. I am not sure that when we say bi-directional we mean the same thing.
>>> The record and playback functions derive their function to some extent from
>>> the graph connectivity. I would like, for the *same port* of Replay, to
>>> make 2 graphs: tx_stream --> Replay --> Radio, Radio --> Replay -->
>>> rx_stream. When I do record or playback, which of the graphs is active?
>>> Both of them? In both directions? Can I control it to activate only one
>>> direction? For Tx I want to use the record function only once to get the
>>> samples into the buffer and playback them periodically (same as in the
>>> rfnoc_replay_samples_from_file example) but for the other direction of Rx I
>>> want to use the record function all the time. When I issue the record
>>> command, which graph is active? The Tx graph? The Rx graph? Will it allow
>>> me to make the 2 graphs at all using the same port? It is my understanding
>>> that for the 2 graphs I mentioned I need two ports of replay, one for each
>>> graph. Please correct me if I am wrong.
>>> 4. I would like to use two ports of Replay to record 2 Rx channels. One
>>> replay port for each Rx channel. How do I issue a record command that will
>>> cause both channels (ports) to record at the same time instant? I know we
>>> can do timed commands for streams but how to do it for replay ? My use of
>>> the rx streams is done later in an offline fashion and can be done in
>>> series for each of the Rx channels but the recording of samples itself to
>>> DRAM has to be simultaneous.
>>>
>>> Thanks,
>>> Ofer Saferman
>>>
>>> ---------- Forwarded message ----------
>>>> From: Wade Fife <wade.fife@ettus.com>
>>>> To: Ofer Saferman <ofer@navigicom.com>
>>>> Cc: usrp-users <usrp-users@lists.ettus.com>
>>>> Bcc:
>>>> Date: Mon, 31 Jan 2022 16:52:41 -0600
>>>> Subject: [USRP-users] Re: Questions about replay block
>>>> Hi Ofer,
>>>>
>>>> 1. It is bidirectional. You can think of the "record" and the "play"
>>>> components as independent, but connected to the same memory. So be careful
>>>> not to read/write to the same memory space and be aware that reading and
>>>> writing simultaneously slows down the DRAM making under/overflow more
>>>> likely. But I think the E320 DRAM should be fast enough for your use case.
>>>>
>>>> 2. The number of ports on the Replay block doesn't have any
>>>> restrictions that I know of. Any positive integer should be fine. You could
>>>> also leave ports unused/unconnected if it was somehow a problem.
>>>>
>>>> 3. To record at a predetermined time for a fixed amount of data, you
>>>> should be able to issue a stream command with the time and the number of
>>>> samples you want.
>>>> a. Yes.
>>>> b. Yes. The first time you want to record data, you call record(). To
>>>> record to the same buffer again, call record_restart(). Make sure num_samps
>>>> for your stream command does not exceed the size of your record buffer, or
>>>> else the radio will overflow.
>>>> c. Yes, you need to play back the buffer. Since the output is connected
>>>> to the rx streamer, it'll stream to the host. So you can call recv() on
>>>> your rx streamer to capture the data. Something like this (in Python):
>>>> replay.play(0, num_bytes, port, uhd.libpyuhd.types.time_spec(0.0),
>>>> False)
>>>> rx_md = uhd.types.RXMetadata()
>>>> num_rx = rx_streamer.recv(output_data, rx_md, timeout)
>>>>
>>>> Happy coding!
>>>>
>>>> Wade
>>>>
>>>>
>>>> On Mon, Jan 31, 2022 at 9:45 AM Ofer Saferman <ofer@navigicom.com>
>>>> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> I am working on a E320 USRP unit and using UHD-4.1.0.5.
>>>>> I prepared my own FPGA image that has 1 radio block and 1 replay block
>>>>> with 2 ports (channels)
>>>>> I would like to be able to simultaneously perform playback of 1 Tx
>>>>> channel and recording of 2 Rx channels (to/from different memory locations)
>>>>> The example rfnoc_replay_samples_from_file.cpp is only helpful to some
>>>>> extent because it shows only the playback path and I am having some
>>>>> difficulty setting up the recording path.
>>>>>
>>>>> I have a few questions about the replay block functionality and
>>>>> connectivity that I hope you may be able to resolve.
>>>>>
>>>>> 1. Is the replay block bi-directional? If I have a replay block with 1
>>>>> channel, can it be used for both playback of samples and recording of
>>>>> samples (from/to different memory locations) simultaneously ? or does each
>>>>> operation require one channel?
>>>>> 2. If the answer to question (1) is no then I guess I need at least 3
>>>>> replay channels. Is it possible to define in the FPGA image (in the yml
>>>>> file) a replay block with 3 channels (ports) or does it have to be a power
>>>>> of 2? a multiple of 2? I didn't want to try and see what happens because it
>>>>> takes a while to compile the FPGA image and I would rather get it right on
>>>>> the 1st try.
>>>>> 3. I would like to issue samples recording at a predetermined time for
>>>>> a fixed size data chunk and then at my own leisure dump the memory buffer
>>>>> that was recorded to a file. Since I don't have a working example I am
>>>>> having some difficulty getting it right.
>>>>> a. The graph should be Radio -->  Replay --> rx_stream. Is this
>>>>> correct?
>>>>> b. I should start my recording with replay_ctrl->record_restart and
>>>>> check for fullness, right?
>>>>> c. Then how do I get the rx_stream to dump it to file? Do I need to do
>>>>> playback for this to happen, mirroring what is going on in the
>>>>> rfnoc_replay_samples_from_file example?
>>>>> If someone has a working code snippet I would appreciate it if they
>>>>> can share it.
>>>>>
>>>>> Thanks,
>>>>> Ofer Saferman
>>>>>
>>>>> --
>>>>> This message has been scanned for viruses and
>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>> and is
>>>>> believed to be clean. _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>> --
>>> This message has been scanned for viruses and
>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>> is
>>> believed to be clean. _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000080727805d6f9f868
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Rob,</div><div><br></div><div>Thank you for you=
r assistance.</div><div>I will take your advice and keep it simple and use =
a separate port for each operation/channel. <br></div><div>I want to do it =
not only to keep things simple but also because my Tx playback should never=
 stop while my recording is timed and rare.<br></div><div><br></div><div>Ca=
n you or Wade comment on item (4) in my latest query? - How to issue record=
ing simultaneously on two replay ports? As I mentioned, I know how to do ti=
med commands on streams but not on the replay block.<br></div><div><br></di=
v><div>Regards,</div><div>Ofer Saferman<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 7:0=
2 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
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
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000080727805d6f9f868--

--===============6107837349862127859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6107837349862127859==--
