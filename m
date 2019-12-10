Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25044117EAB
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 05:02:28 +0100 (CET)
Received: from [::1] (port=40026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieWjC-0001zv-6L; Mon, 09 Dec 2019 23:02:26 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:42043)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ieWj9-0001s4-4s
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 23:02:23 -0500
Received: by mail-oi1-f169.google.com with SMTP id j22so8543321oij.9
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 20:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2YJx6BkN4APX9I4PNL9x8sIsPGe7tbaP2N8+6jaCRXA=;
 b=eStSluuzFMs4zUqFb4xlCQ1ciA2Ml8grKxz3cbrmdcMMLryEDoj0NZYrktW+VUd/th
 j3n2WX+WbQ4x7Wd78sFM5I/HcXui22kzg1ABMLmh4GgqpFT07N/hAoEYF6alhYSWTfG7
 oWK6JSNayAPZLTkAq/4ZqXG1ZJxQrszlTEqTMcAcFngZoZ6yqvs5bTsp8G/wWalmS3Hu
 t51peYa0+jDH3My4GOremkP6HiLysCSJa2K4Mlb/Sa0XRFLAnFQZRj8T0/ojUMdP5ktB
 AROqHzj0VF07eKun79keCGf/mPeFlyv83Sl9vs49V/8VXYgAm8UJ05ah2lOHhbMyRIV2
 fudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2YJx6BkN4APX9I4PNL9x8sIsPGe7tbaP2N8+6jaCRXA=;
 b=DJ+YTtaBCtJfD3b17kKnd4mdjoarA9J0eXjBoah1IXlh0n2CwvMTajAI3WlBu3Z4Aw
 6YCrRYIp55IK53vF8eRl0iMX61V6KugYukKaSCfN03thYskS0go8i5rm35tDtO+lXQag
 n9M/4/eGlz5BUp0HZ7mFcd545rqsMP4Py5DTa608mkoF485Q9q5HzHAw7K8Tq0pZtd1S
 xSXfVUanh0CUPIw39PKLOvJ1knscW5mg3bUn88AmzzFGQ6L+onbG03AOsU/nBFIb4zUS
 VYpInHugul6dmTHDvXW106X9JgsmoPWZZGYbDWPFJYknrYAfOSwtaF67m82+Ls/KkUs6
 Lzxg==
X-Gm-Message-State: APjAAAVaqbjtp0Lle89Al0amwrEJ9OMyrKsG/9qmcRRIGa/mrVkP9lUx
 aoHr+JvnzrWxrDEKelZmmxIhb8L2892Vj19b7Pgy6Q==
X-Google-Smtp-Source: APXvYqzhPWufzuQFjrUA2mEuxlpSy4L9tpZfJzjX4YgU4sapOghZfSTFYYCATESYBSi5Ay/cA3UlGUHtK/Z71l5C4t0=
X-Received: by 2002:aca:4587:: with SMTP id s129mr2245256oia.124.1575950502115; 
 Mon, 09 Dec 2019 20:01:42 -0800 (PST)
MIME-Version: 1.0
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
 <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
 <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
In-Reply-To: <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
Date: Mon, 9 Dec 2019 23:01:31 -0500
Message-ID: <CAB__hTTijCzqgJL9ab+Dh+8g8ZLRh2o2A3yuRS8fG23AhF7tvA@mail.gmail.com>
To: Thomas Harder <Thomas.Harder@oca.eu>
Subject: Re: [USRP-users] transmitting on two channels with replay block
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8178844211583568178=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8178844211583568178==
Content-Type: multipart/alternative; boundary="000000000000dd0e320599519178"

--000000000000dd0e320599519178
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Apart from solving the underrun issue, there is also an issue with
synchronization.  The replay block doesn't presently support timed commands=
.

And, as a side note, the issue with streaming from the host is not just the
host.  The DMA FIFO has a maximum bandwidth of something like 600 MS/s
(combination of all inputs and outputs) that precludes streaming 400 MS/s
in and out of the block simultaneously.  So, even if the host could keep
up, the FIFO could not.
Rob

On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Sam,
>
> Thank you for your reply.
>
> This morning I set the MCR to 184.32 and I am still having continuous
> underruns using also
>
> replay_ctrl->get_record_fullness
>
> for both channels.
>
>
>
> But since I need the full bandwidth of 160MHz I would like implement a
> second replay block in my fpga image.
>
>
>
> Could anyone help me with this?
>
> I am really new in fpga programming and for the image with one replay
> block I was just following the instructions in
> https://kb.ettus.com/Using_the_RFNoC_Replay_Block.
>
> Thank you,
>
> Thomas
>
>
>
>
>
> *From: *Sam Reiter <sam.reiter@ettus.com>
> *Sent: *Friday, December 6, 2019 10:23 PM
> *To: *Thomas Harder <Thomas.Harder@oca.eu>
> *Cc: *usrp-users@lists.ettus.com
> *Subject: *Re: [USRP-users] transmitting on two channels with replay bloc=
k
>
>
>
> Thomas,
>
>
>
> Upon further investigation, we may be running up to a practical limit of =
a
> single CHDR interface rather than an issue with your code. A single repla=
y
> block servicing two radios will have a max (theoretical) rate of 187.5 MS=
PS
> on either channel. This means that you might be able to squeeze full rate
> out on 2 channels with an MCR of 184.32, but that's cutting it pretty
> close. Sounds like 2 channels at 200 MSPS with a replay setup will requir=
e
> 2 replay blocks serving each channel independently. If you end up trying
> either of the above out, I'd be curious to know what results you observe.
>
>
>
> Sam Reiter
>
> Ettus Research
>
>
>
>
>
> On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>
> Thomas,
>
>
>
> I'd need to set it up on my end, but I believe you can TX two distinct
> waveforms from a single replay block instance. You'd need to make sure th=
at
> your adding your data to the buffer in separate locations and at an addre=
ss
> that is a multiple of 8 bytes (which it looks like you're doing from the
> above snippets). Are you seeing continuous underruns, or just a handful a=
t
> the beginning on the run? Does your duplicated code also use:
>
>
>
> replay_ctrl->get_record_fullness
>
>
>
> on both channels before kicking off the stream start?
>
>
>
> Sam Reiter
>
> Ettus Research
>
>
>
> On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello everyone,
>
> Is it possible to transmit two different waveforms on the two channels of
> the USRP X310 with the two UBX-160 daughterboards?
>
> I want to transmit two different waveforms simultaneous (synchronized ) o=
n
> the two channels of the USRP with the full sample rate of 200 MS/s. I tri=
ed
> already to do it with a dual 10Gbit-ethernet connection and I seemed to b=
e
> limited by my computer. Now I am trying to do it with the replay block.
>
>
>
> I built the FPGA image with one Replay block as described in
> https://kb.ettus.com/Using_the_RFNoC_Replay_Block to run the example
> =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine if I tr=
ansmit just on one
> channel. Now I was modifying the code by connecting the replay block to
> both channels:
>
>
> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan,tx_blockid,=
tx_chan,replay_spp);
>
>
> replay_graph->connect(replay_ctrl->get_block_id(),replay_chan1,tx_blockid=
1,tx_chan,replay_spp);
>
>
>
> and writing the same waveform into another region of the DRAM-buffer:
>
> replay_ctrl->config_record(0,words_to_replay*replay_word_size,
> replay_chan);
>
> replay_ctrl->config_record(20000,words_to_replay*replay_word_size,
> replay_chan1);
>
> and
>
> replay_ctrl->config_play(0,words_to_replay*replay_word_size, replay_chan)=
;
>
> replay_ctrl->config_play(20000,words_to_replay*replay_word_size,
> replay_chan1);
>
>
>
> where
>
> words_to_replay*replay_word_size=3D16000
>
> replay_chan=3D0
>
> replay_chan1=3D1
>
> tx_blockid=3D0/Radio_0
>
> tx_blockid=3D0/Radio_1
>
>
>
> then I stream my waveforms to the replay block as defined in the example
> and I start to replay the data:
>
> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan);
>
> replay_ctrl->issue_stream_cmd(stream_cmd, replay_chan1);
>
>
>
> It works but with plenty of Underflows!!
>
>
>
> So what does it mean when it says in the manual:
>
> =E2=80=9CNote that the record and playback buffers do not need to the sam=
e,
> allowing a single Replay block to both record and playback to different
> regions of memory* simultaneously*.=E2=80=9D
>
> (https://kb.ettus.com/Using_the_RFNoC_Replay_Block)?
>
>
>
> Because in the manual it says also:
>
> =E2=80=9CThe replay block has the following features: One input and *one*=
 output=E2=80=9D
>
> (
> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.h=
tml
> )
>
>
>
> So if the replay block has just one output why does it have two channels
> connected to it (replay_chan=3D 0 and 1)?
>
>
>
> If one replay block can just stream to one channel at the same time, can =
I
> implement easily a second replay block in the FPGA to stream on the two
> channels of my USRP two different waveforms simultaneously?
>
>
>
> Thank you,
>
> Thomas
>
>
>
>
>
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000dd0e320599519178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Apart from solving the underrun issue, there is also an is=
sue with synchronization.=C2=A0 The replay block doesn&#39;t presently supp=
ort timed commands.<div><br></div><div>And, as a side note, the issue with =
streaming from the host is not just the host.=C2=A0 The DMA FIFO has a maxi=
mum bandwidth of something like 600 MS/s (combination of all inputs and out=
puts) that precludes streaming 400 MS/s in and out of the block simultaneou=
sly.=C2=A0 So, even if the host could keep up, the FIFO could not.</div><di=
v>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v lang=3D"EN-US"><div class=3D"gmail-m_-383616684794867338WordSection1"><p =
class=3D"MsoNormal">Hi Sam,</p><p class=3D"MsoNormal">Thank you for your re=
ply.</p><p class=3D"MsoNormal"> This morning I set the MCR to 184.32 and I =
am still having continuous underruns using also </p><p class=3D"MsoNormal">=
<span style=3D"font-size:9pt;font-family:Consolas;color:rgb(36,41,46)">repl=
ay_ctrl-&gt;</span><span style=3D"font-size:9pt;font-family:Consolas;color:=
rgb(0,92,197)">get_record_fullness<u></u><u></u></span></p><p class=3D"MsoN=
ormal">for both channels.</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p=
><p class=3D"MsoNormal">But since I need the full bandwidth of 160MHz I wou=
ld like implement a second replay block in my fpga image.</p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Could anyone help m=
e with this? </p><p class=3D"MsoNormal">I am really new in fpga programming=
 and for the image with one replay block I was just following the instructi=
ons in <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=
=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a>.</p><p cl=
ass=3D"MsoNormal">Thank you,</p><p class=3D"MsoNormal">Thomas<u></u><u></u>=
</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p><div style=3D"border-right:none;border-bottom:none;b=
order-left:none;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">=
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><b>From: </b><a hr=
ef=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter</a><br><b>S=
ent: </b>Friday, December 6, 2019 10:23 PM<br><b>To: </b><a href=3D"mailto:=
Thomas.Harder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Cc: </b><a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two ch=
annels with replay block</p></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></=
u></p><div><div><p class=3D"MsoNormal">Thomas,</p></div><div><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Upon fur=
ther investigation, we may be running up to a practical limit of a single C=
HDR interface rather than an issue with your code. A single replay block se=
rvicing two radios will have a max (theoretical) rate of 187.5 MSPS on eith=
er channel. This means that you might be able to squeeze full rate out on 2=
 channels with an MCR of <span class=3D"gmail-m_-383616684794867338e24kjd">=
184.32, but that&#39;s cutting it pretty close. Sounds like 2 channels at 2=
00 MSPS with a replay setup will require 2 replay blocks serving each chann=
el independently. If you end up trying either of the above out, I&#39;d be =
curious to know what results you observe.</span></p></div><div><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p></div><div><div><div><div><div><div><p c=
lass=3D"MsoNormal">Sam Reiter </p><div><p class=3D"MsoNormal">Ettus Researc=
h</p></div></div></div></div></div></div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><d=
iv><div><p class=3D"MsoNormal">On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter &l=
t;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reiter@ettu=
s.com</a>&gt; wrote:</p></div><blockquote style=3D"border-top:none;border-r=
ight:none;border-bottom:none;border-left:1pt solid rgb(204,204,204);padding=
:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in"><div><p class=3D"MsoNo=
rmal">Thomas,</p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div>=
<div><p class=3D"MsoNormal">I&#39;d need to set it up on my end, but I beli=
eve you can TX two distinct waveforms from a single replay block instance. =
You&#39;d need to make sure that your adding your data to the buffer in sep=
arate locations and at an address that is a multiple of 8 bytes (which it l=
ooks like you&#39;re doing from the above snippets). Are you seeing continu=
ous underruns, or just a handful at the beginning on the run? Does your dup=
licated code also use:</p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u=
></u></p></div><div><p class=3D"MsoNormal"><span style=3D"font-size:9pt;fon=
t-family:Consolas;color:rgb(36,41,46)">replay_ctrl-&gt;</span><span style=
=3D"font-size:9pt;font-family:Consolas;color:rgb(0,92,197)">get_record_full=
ness</span></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></=
div><div><p class=3D"MsoNormal">on both channels before kicking off the str=
eam start?</p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></d=
iv><div><div><div><div><div><div><p class=3D"MsoNormal">Sam Reiter=C2=A0</p=
><div><p class=3D"MsoNormal">Ettus Research</p></div></div></div></div></di=
v></div></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><di=
v><p class=3D"MsoNormal">On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:</p></div><blockquote style=3D"=
border-top:none;border-right:none;border-bottom:none;border-left:1pt solid =
rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in=
"><div><div><p class=3D"MsoNormal">Hello everyone,</p><p class=3D"MsoNormal=
">Is it possible to transmit two different waveforms on the two channels of=
 the USRP X310 with the two UBX-160 daughterboards?</p><p class=3D"MsoNorma=
l">I want to transmit two different waveforms simultaneous (synchronized ) =
on the two channels of the USRP with the full sample rate of 200 MS/s. I tr=
ied already to do it with a dual 10Gbit-ethernet connection and I seemed to=
 be limited by my computer. Now I am trying to do it with the replay block.=
</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">I built the FPG=
A image with one Replay block as described in <a href=3D"https://kb.ettus.c=
om/Using_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Usi=
ng_the_RFNoC_Replay_Block</a> to run the example =E2=80=9Creplay_samples_fr=
om_file=E2=80=9D and it is working fine if I transmit just on one channel. =
Now I was modifying the code by connecting the replay block to both channel=
s:</p><p class=3D"MsoNormal">replay_graph-&gt;connect(replay_ctrl-&gt;get_b=
lock_id(),replay_chan,tx_blockid,tx_chan,replay_spp);</p><p class=3D"MsoNor=
mal">replay_graph-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan1,t=
x_blockid1,tx_chan,replay_spp);</p><p class=3D"MsoNormal">=C2=A0</p><p clas=
s=3D"MsoNormal">and writing the same waveform into another region of the DR=
AM-buffer:</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_record(0,words_=
to_replay*replay_word_size, replay_chan);</p><p class=3D"MsoNormal">replay_=
ctrl-&gt;config_record(20000,words_to_replay*replay_word_size, replay_chan1=
);</p><p class=3D"MsoNormal">and</p><p class=3D"MsoNormal">replay_ctrl-&gt;=
config_play(0,words_to_replay*replay_word_size, replay_chan);</p><p class=
=3D"MsoNormal">replay_ctrl-&gt;config_play(20000,words_to_replay*replay_wor=
d_size, replay_chan1);</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoN=
ormal">where </p><p class=3D"MsoNormal">words_to_replay*replay_word_size=3D=
16000</p><p class=3D"MsoNormal">replay_chan=3D0</p><p class=3D"MsoNormal">r=
eplay_chan1=3D1</p><p class=3D"MsoNormal">tx_blockid=3D0/Radio_0</p><p clas=
s=3D"MsoNormal">tx_blockid=3D0/Radio_1</p><p class=3D"MsoNormal">=C2=A0</p>=
<p class=3D"MsoNormal">then I stream my waveforms to the replay block as de=
fined in the example and I start to replay the data:</p><p class=3D"MsoNorm=
al">replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan);</p><p class=
=3D"MsoNormal">replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan1);<=
/p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">It works but wit=
h plenty of Underflows!!</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"Ms=
oNormal">So what does it mean when it says in the manual:</p><p class=3D"Ms=
oNormal">=E2=80=9CNote that the record and playback buffers do not need to =
the same, allowing a single Replay block to both record and playback to dif=
ferent regions of memory<b> simultaneously</b>.=E2=80=9D</p><p class=3D"Mso=
Normal">(<a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" targ=
et=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a>)?</p><p=
 class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Because in the manual=
 it says also:</p><p class=3D"MsoNormal">=E2=80=9CThe replay block has the =
following features: One input and <b>one</b> output=E2=80=9D</p><p class=3D=
"MsoNormal">(<a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_=
1replay__block__ctrl.html" target=3D"_blank">https://files.ettus.com/manual=
/classuhd_1_1rfnoc_1_1replay__block__ctrl.html</a>)</p><p class=3D"MsoNorma=
l">=C2=A0</p><p class=3D"MsoNormal">So if the replay block has just one out=
put why does it have two channels connected to it (replay_chan=3D 0 and 1)?=
</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">If one replay b=
lock can just stream to one channel at the same time, can I implement easil=
y a second replay block in the FPGA to stream on the two channels of my USR=
P two different waveforms simultaneously?</p><p class=3D"MsoNormal">=C2=A0<=
/p><p class=3D"MsoNormal">Thank you,</p><p class=3D"MsoNormal">Thomas</p><p=
 class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D=
"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNorma=
l">=C2=A0</p></div></div></blockquote></div></blockquote></div><p class=3D"=
MsoNormal" style=3D"margin-left:9.6pt">____________________________________=
___________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D=
"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=
=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>_____=
__________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000dd0e320599519178--


--===============8178844211583568178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8178844211583568178==--

