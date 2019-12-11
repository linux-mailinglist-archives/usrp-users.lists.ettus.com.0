Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 981A011AEA5
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 16:03:33 +0100 (CET)
Received: from [::1] (port=38626 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1if3WO-0001jH-RZ; Wed, 11 Dec 2019 10:03:24 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:42798)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1if3WL-0001e9-Tw
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 10:03:21 -0500
Received: by mail-ot1-f48.google.com with SMTP id 66so79313otd.9
 for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2019 07:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+K3N0/HyOPtESlG58+bkQZO4DKO5erF/ogoXEHbIck0=;
 b=Vs0XOZtvschkMDLc9MjWhWtgQIQW8WKtjaZgZaSo3H0y31YOHHAGjx5C1f1CjH/NAg
 bh1q+7TwGIY0JtCtQvWj4m0Vjt0ItFGix4DU28Ym54C7xnBhx+kvXB44lgubHimQ94QG
 P8/LIPytQN9G8lwBCKI/i4bcLo/y1IvWEcArGfKiQZVtiEwk264+pOgWmpzfcDnqO0+V
 ZRqHF7XquvHA9a2oCaShXNo+mdNw2uhpeY+/bCU6WiS/z8UFOIa4La2uNRbVpzMDkrgd
 CsF95LP2ia8rZbf7yWkJzkapsDKqYATEyWbT4S+1QQg6yTrtDkWyNqTS66q1UX2xKOx4
 4ndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+K3N0/HyOPtESlG58+bkQZO4DKO5erF/ogoXEHbIck0=;
 b=WigmpziOvdht3QbmLrLScc8R/YJEyAgO5ebcCEgtyiwogmx+pUKKaGhbRnjzGL28lU
 rPS8FTPkLOln7iF/fpro9B8EGPbTp6KSbnh4VDvrUsGF6rkUMsnvM45zwxs1CCEyiqqn
 G+u/tT9pgAZdaX53kmtRMTYFDGgrzysk+Le08AnWKOOhKDp4X+dQj3MS+oPSRhcjEjGq
 cJSSLBTzmk6pEaqBrkZ9Ey5Et/IyG+PyVD0CptAlvmUVvirTFy51M2bIDtkgT2krxoD1
 YW5NovyetwF1tq70sOmCvff/R1n/tvGvaCU+LU/Jk2e4LPink5qaguo8IcTZPXZ7EBUJ
 fweg==
X-Gm-Message-State: APjAAAU1WfHcZPwWtcvRpF34Q8BhV7f2krhsfGN4trY3Yl7bgqQjpesa
 M+cAtJZoYm3bxbbAW94yhrYEKRPKye3QOVnlLN8CaJih
X-Google-Smtp-Source: APXvYqwL3/ARgRuzJgxmQtXktsWBVX08NRrXZR3aumcDTcP9m8kU9mIxuc4o2NX9BuFsAI/Y77PQIfNhwJJyMUGmqKk=
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr2492882otp.211.1576076559873; 
 Wed, 11 Dec 2019 07:02:39 -0800 (PST)
MIME-Version: 1.0
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
 <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
 <CANf970a_3AMjAi=FCxVZyha=u-f9At9nQANB_RZJvSw5oL_5tg@mail.gmail.com>
 <20191209093339.20778A00E4@zmtaauth02.partage.renater.fr>
 <CAB__hTTijCzqgJL9ab+Dh+8g8ZLRh2o2A3yuRS8fG23AhF7tvA@mail.gmail.com>
 <20191211100521.A8A031400BB@zmtaauth01.partage.renater.fr>
In-Reply-To: <20191211100521.A8A031400BB@zmtaauth01.partage.renater.fr>
Date: Wed, 11 Dec 2019 10:02:28 -0500
Message-ID: <CAB__hTRbL+ngUxNJSSdk6MVFUFeNd-DZkP1uMFTnEtUagRTGjg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3026581048131055220=="
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

--===============3026581048131055220==
Content-Type: multipart/alternative; boundary="0000000000007db91d05996eeba5"

--0000000000007db91d05996eeba5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I do not think it is possible using the stock FPGA image.  However, I can
think of a couple of possibilities:

   - On the N310, Ettus includes 4 FIFO blocks (rather than the DmaFIFO
   which used the off-FPGA RAM for memory), to provide capability for 4x125
   MS/s streaming. Perhaps if you built an X310 FPGA image with 2 such FIFO
   blocks, you could use these rather than the DmaFIFO and achieve the desi=
red
   streaming.  Note that this requires a Vivado license to build your own F=
PGA
   image, but does not require FPGA experience because you would be buildin=
g
   an image with "stock" blocks.  One caution though is that streaming at t=
his
   very high rate still requires a high performance host and so it is still
   possible that you would have underruns if your host could not keep up.  =
If
   you go this route, I believe you will likely need to use the "DPDK"
   capability which is a bit of a pain to configure and get it working
   properly.
   - Another possibility is to create a custom RFNoC block that is similar
   to the replay block but that uses FPGA memory to store a fixed duration
   waveform and then plays it out cyclically like the replay block. The Ett=
us
   'window' RFNoC block provides a good example of how to store coefficient=
s
   and play them out repeatedly.  But, making the needed modifications is n=
ot
   a trivial task except for someone who is pretty good at FPGA programming=
.

Given that you were trying the replay block, I'm guessing that your Tx
waveforms are of fixed duration.  What is the duration (in number of
samples) that you require?
Rob

On Wed, Dec 11, 2019 at 5:05 AM Thomas Harder <Thomas.Harder@oca.eu> wrote:

> Thank you Rob for this comment.
>
> But I am not sure if I understand you correctly. Do you want to say, that
> it is *IMPOSSIBLE* to stream TX two different waveforms synchronized  on
> the 2 channels of the x310 with the full bandwidth of 200MS/s on each
> channel?
>
> That is what I am trying the last 6 months full time, starting with
> Labview under windows and then UHD under Linux with a Dell Precision 5820
> desktop (16GB RAM, Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI connection,
> dual 10Gbit connection(Intel X520-DA2), the replay block recently: always
> the same result: continuous underruns.
>
> If you can confirm that this is not possible without an important FPGA
> change (because I have no experience in this field and I have not the tim=
e
> to invest into it), I must search for another solution to create two
> different synchronized RF waveforms with 160MHz bandwidth (optical,
> electronical,=E2=80=A6) because this will be just a part of my experiment=
al setup
> but it is crucial to go on .
>
> I am thankful for any advise,
>
> Thomas
>
>
>
>
>
> *From: *Rob Kossler <rkossler@nd.edu>
> *Sent: *Tuesday, December 10, 2019 5:01 AM
> *To: *Thomas Harder <Thomas.Harder@oca.eu>
> *Cc: *Sam Reiter <sam.reiter@ettus.com>; usrp-users@lists.ettus.com
> *Subject: *Re: [USRP-users] transmitting on two channels with replay bloc=
k
>
>
>
> Apart from solving the underrun issue, there is also an issue with
> synchronization.  The replay block doesn't presently support timed comman=
ds.
>
>
>
> And, as a side note, the issue with streaming from the host is not just
> the host.  The DMA FIFO has a maximum bandwidth of something like 600 MS/=
s
> (combination of all inputs and outputs) that precludes streaming 400 MS/s
> in and out of the block simultaneously.  So, even if the host could keep
> up, the FIFO could not.
>
> Rob
>
>
>
> On Mon, Dec 9, 2019 at 4:34 AM Thomas Harder via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>

--0000000000007db91d05996eeba5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I do not think it is possible using the stock FPGA im=
age.=C2=A0 However, I can think of a couple of possibilities:</div><div><ul=
><li>On the N310, Ettus includes 4 FIFO blocks (rather than the DmaFIFO whi=
ch used the off-FPGA RAM for memory), to provide capability for 4x125 MS/s =
streaming. Perhaps if you built an X310 FPGA image with 2 such FIFO blocks,=
 you could use these rather than the DmaFIFO and achieve the desired stream=
ing.=C2=A0 Note that this requires a Vivado license to build your own FPGA =
image, but does not require FPGA experience because you would be building a=
n image with &quot;stock&quot; blocks.=C2=A0 One caution though is that str=
eaming at this very high rate still requires a high performance host and so=
 it is still possible that you would have underruns if your host could not =
keep up.=C2=A0 If you go this route, I believe you will likely need to use =
the &quot;DPDK&quot; capability which is a bit of a pain to configure and g=
et it working properly.</li><li>Another possibility is to create a custom R=
FNoC block that is similar to the replay block but that uses FPGA memory to=
 store a fixed duration waveform and then plays it out cyclically like the =
replay block. The Ettus &#39;window&#39; RFNoC block provides a good exampl=
e of how to store coefficients and play them out repeatedly.=C2=A0 But, mak=
ing the needed modifications is not a trivial task except for someone who i=
s pretty good at FPGA programming.</li></ul><div>Given that you were trying=
 the replay block, I&#39;m guessing that your Tx waveforms are of fixed dur=
ation.=C2=A0 What is the duration (in number of samples) that you require?<=
/div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed, Dec 11, 2019 at 5:05 AM Thomas Harder &lt;<a hre=
f=3D"mailto:Thomas.Harder@oca.eu" target=3D"_blank">Thomas.Harder@oca.eu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v lang=3D"EN-US"><div><p class=3D"MsoNormal">Thank you Rob for this comment=
.</p><p class=3D"MsoNormal">But I am not sure if I understand you correctly=
. Do you want to say, that it is <b>IMPOSSIBLE</b> to stream TX two differe=
nt waveforms synchronized =C2=A0on the 2 channels of the x310 with the full=
 bandwidth of 200MS/s on each channel?</p><p class=3D"MsoNormal">That is wh=
at I am trying the last 6 months full time, starting with Labview under win=
dows and then UHD under Linux with a Dell Precision 5820 desktop (16GB RAM,=
 Intel Xeon W-2125 CPU@ 4.GHz x8) with MXI connection, dual 10Gbit connecti=
on(Intel X520-DA2), the replay block recently: always the same result: cont=
inuous underruns.</p><p class=3D"MsoNormal">If you can confirm that this is=
 not possible without an important FPGA change (because I have no experienc=
e in this field and I have not the time to invest into it), I must search f=
or another solution to create two different synchronized RF waveforms with =
160MHz bandwidth (optical, electronical,=E2=80=A6) because this will be jus=
t a part of my experimental setup but it is crucial to go on .</p><p class=
=3D"MsoNormal">I am thankful for any advise,</p><p class=3D"MsoNormal">Thom=
as</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"=
><u></u>=C2=A0<u></u></p><div style=3D"border-right:none;border-bottom:none=
;border-left:none;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in=
"><p class=3D"MsoNormal" style=3D"border:none;padding:0in"><b>From: </b><a =
href=3D"mailto:rkossler@nd.edu" target=3D"_blank">Rob Kossler</a><br><b>Sen=
t: </b>Tuesday, December 10, 2019 5:01 AM<br><b>To: </b><a href=3D"mailto:T=
homas.Harder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>Cc: </b><a h=
ref=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter</a>; <a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] transmitting on two chan=
nels with replay block</p></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u>=
</p><div><p class=3D"MsoNormal">Apart from solving the underrun issue, ther=
e is also an issue with synchronization.=C2=A0 The replay block doesn&#39;t=
 presently support timed commands.</p><div><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">And, as a side note, the=
 issue with streaming from the host is not just the host.=C2=A0 The DMA FIF=
O has a maximum bandwidth of something like 600 MS/s (combination of all in=
puts and outputs) that precludes streaming 400 MS/s in and out of the block=
 simultaneously.=C2=A0 So, even if the host could keep up, the FIFO could n=
ot.</p></div><div><p class=3D"MsoNormal">Rob</p></div></div><p class=3D"Mso=
Normal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Mon, De=
c 9, 2019 at 4:34 AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:</p></div><blockquote style=3D"border-top:none;border-right:none;b=
order-bottom:none;border-left:1pt solid rgb(204,204,204);padding:0in 0in 0i=
n 6pt;margin-left:4.8pt;margin-right:0in"><div><div><p class=3D"MsoNormal">=
Hi Sam,</p><p class=3D"MsoNormal">Thank you for your reply.</p><p class=3D"=
MsoNormal">This morning I set the MCR to 184.32 and I am still having conti=
nuous underruns using also </p><p class=3D"MsoNormal"><span style=3D"font-s=
ize:9pt;font-family:Consolas;color:rgb(36,41,46)">replay_ctrl-&gt;</span><s=
pan style=3D"font-size:9pt;font-family:Consolas;color:rgb(0,92,197)">get_re=
cord_fullness</span></p><p class=3D"MsoNormal">for both channels.</p><p cla=
ss=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">But since I need the full=
 bandwidth of 160MHz I would like implement a second replay block in my fpg=
a image.</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Could a=
nyone help me with this? </p><p class=3D"MsoNormal">I am really new in fpga=
 programming and for the image with one replay block I was just following t=
he instructions in <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_B=
lock" target=3D"_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</=
a>.</p><p class=3D"MsoNormal">Thank you,</p><p class=3D"MsoNormal">Thomas</=
p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><div st=
yle=3D"border-right:none;border-bottom:none;border-left:none;border-top:1pt=
 solid rgb(225,225,225);padding:3pt 0in 0in"><p class=3D"MsoNormal"><b>From=
: </b><a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">Sam Reiter<=
/a><br><b>Sent: </b>Friday, December 6, 2019 10:23 PM<br><b>To: </b><a href=
=3D"mailto:Thomas.Harder@oca.eu" target=3D"_blank">Thomas Harder</a><br><b>=
Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a><br><b>Subject: </b>Re: [USRP-users] transmittin=
g on two channels with replay block</p></div><p class=3D"MsoNormal">=C2=A0<=
/p><div><div><p class=3D"MsoNormal">Thomas,</p></div><div><p class=3D"MsoNo=
rmal">=C2=A0</p></div><div><p class=3D"MsoNormal">Upon further investigatio=
n, we may be running up to a practical limit of a single CHDR interface rat=
her than an issue with your code. A single replay block servicing two radio=
s will have a max (theoretical) rate of 187.5 MSPS on either channel. This =
means that you might be able to squeeze full rate out on 2 channels with an=
 MCR of <span>184.32, but that&#39;s cutting it pretty close. Sounds like 2=
 channels at 200 MSPS with a replay setup will require 2 replay blocks serv=
ing each channel independently. If you end up trying either of the above ou=
t, I&#39;d be curious to know what results you observe.</span></p></div><di=
v><p class=3D"MsoNormal">=C2=A0</p></div><div><div><div><div><div><div><p c=
lass=3D"MsoNormal">Sam Reiter </p><div><p class=3D"MsoNormal">Ettus Researc=
h</p></div></div></div></div></div></div><p class=3D"MsoNormal">=C2=A0</p><=
/div></div><p class=3D"MsoNormal">=C2=A0</p><div><div><p class=3D"MsoNormal=
">On Fri, Dec 6, 2019 at 2:38 PM Sam Reiter &lt;<a href=3D"mailto:sam.reite=
r@ettus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt; wrote:</p></div=
><blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0=
in 5pt 4.8pt"><div><p class=3D"MsoNormal">Thomas,</p><div><p class=3D"MsoNo=
rmal">=C2=A0</p></div><div><p class=3D"MsoNormal">I&#39;d need to set it up=
 on my end, but I believe you can TX two distinct waveforms from a single r=
eplay block instance. You&#39;d need to make sure that your adding your dat=
a to the buffer in separate locations and at an address that is a multiple =
of 8 bytes (which it looks like you&#39;re doing from the above snippets). =
Are you seeing continuous underruns, or just a handful at the beginning on =
the run? Does your duplicated code also use:</p></div><div><p class=3D"MsoN=
ormal">=C2=A0</p></div><div><p class=3D"MsoNormal"><span style=3D"font-size=
:9pt;font-family:Consolas;color:rgb(36,41,46)">replay_ctrl-&gt;</span><span=
 style=3D"font-size:9pt;font-family:Consolas;color:rgb(0,92,197)">get_recor=
d_fullness</span></p></div><div><p class=3D"MsoNormal">=C2=A0</p></div><div=
><p class=3D"MsoNormal">on both channels before kicking off the stream star=
t?</p></div><div><p class=3D"MsoNormal">=C2=A0</p></div><div><div><div><div=
><div><div><p class=3D"MsoNormal">Sam Reiter=C2=A0</p><div><p class=3D"MsoN=
ormal">Ettus Research</p></div></div></div></div></div></div></div></div><p=
 class=3D"MsoNormal">=C2=A0</p><div><div><p class=3D"MsoNormal">On Wed, Dec=
 4, 2019 at 3:48 AM Thomas Harder via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:</p></div><blockquote style=3D"border-top:none;border-right:none;bo=
rder-bottom:none;border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in=
 6pt;margin:5pt 0in 5pt 4.8pt"><div><div><p class=3D"MsoNormal">Hello every=
one,</p><p class=3D"MsoNormal">Is it possible to transmit two different wav=
eforms on the two channels of the USRP X310 with the two UBX-160 daughterbo=
ards?</p><p class=3D"MsoNormal">I want to transmit two different waveforms =
simultaneous (synchronized ) on the two channels of the USRP with the full =
sample rate of 200 MS/s. I tried already to do it with a dual 10Gbit-ethern=
et connection and I seemed to be limited by my computer. Now I am trying to=
 do it with the replay block.</p><p class=3D"MsoNormal">=C2=A0</p><p class=
=3D"MsoNormal">I built the FPGA image with one Replay block as described in=
 <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block" target=3D"_b=
lank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block</a> to run the exam=
ple =E2=80=9Creplay_samples_from_file=E2=80=9D and it is working fine if I =
transmit just on one channel. Now I was modifying the code by connecting th=
e replay block to both channels:</p><p class=3D"MsoNormal">replay_graph-&gt=
;connect(replay_ctrl-&gt;get_block_id(),replay_chan,tx_blockid,tx_chan,repl=
ay_spp);</p><p class=3D"MsoNormal">replay_graph-&gt;connect(replay_ctrl-&gt=
;get_block_id(),replay_chan1,tx_blockid1,tx_chan,replay_spp);</p><p class=
=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">and writing the same wavefo=
rm into another region of the DRAM-buffer:</p><p class=3D"MsoNormal">replay=
_ctrl-&gt;config_record(0,words_to_replay*replay_word_size, replay_chan);</=
p><p class=3D"MsoNormal">replay_ctrl-&gt;config_record(20000,words_to_repla=
y*replay_word_size, replay_chan1);</p><p class=3D"MsoNormal">and</p><p clas=
s=3D"MsoNormal">replay_ctrl-&gt;config_play(0,words_to_replay*replay_word_s=
ize, replay_chan);</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_play(20=
000,words_to_replay*replay_word_size, replay_chan1);</p><p class=3D"MsoNorm=
al">=C2=A0</p><p class=3D"MsoNormal">where </p><p class=3D"MsoNormal">words=
_to_replay*replay_word_size=3D16000</p><p class=3D"MsoNormal">replay_chan=
=3D0</p><p class=3D"MsoNormal">replay_chan1=3D1</p><p class=3D"MsoNormal">t=
x_blockid=3D0/Radio_0</p><p class=3D"MsoNormal">tx_blockid=3D0/Radio_1</p><=
p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">then I stream my wav=
eforms to the replay block as defined in the example and I start to replay =
the data:</p><p class=3D"MsoNormal">replay_ctrl-&gt;issue_stream_cmd(stream=
_cmd, replay_chan);</p><p class=3D"MsoNormal">replay_ctrl-&gt;issue_stream_=
cmd(stream_cmd, replay_chan1);</p><p class=3D"MsoNormal">=C2=A0</p><p class=
=3D"MsoNormal">It works but with plenty of Underflows!!</p><p class=3D"MsoN=
ormal">=C2=A0</p><p class=3D"MsoNormal">So what does it mean when it says i=
n the manual:</p><p class=3D"MsoNormal">=E2=80=9CNote that the record and p=
layback buffers do not need to the same, allowing a single Replay block to =
both record and playback to different regions of memory<b> simultaneously</=
b>.=E2=80=9D</p><p class=3D"MsoNormal">(<a href=3D"https://kb.ettus.com/Usi=
ng_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Using_the=
_RFNoC_Replay_Block</a>)?</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"M=
soNormal">Because in the manual it says also:</p><p class=3D"MsoNormal">=E2=
=80=9CThe replay block has the following features: One input and <b>one</b>=
 output=E2=80=9D</p><p class=3D"MsoNormal">(<a href=3D"https://files.ettus.=
com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.html" target=3D"_blank"=
>https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.ht=
ml</a>)</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">So if th=
e replay block has just one output why does it have two channels connected =
to it (replay_chan=3D 0 and 1)?</p><p class=3D"MsoNormal">=C2=A0</p><p clas=
s=3D"MsoNormal">If one replay block can just stream to one channel at the s=
ame time, can I implement easily a second replay block in the FPGA to strea=
m on the two channels of my USRP two different waveforms simultaneously?</p=
><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Thank you,</p><p c=
lass=3D"MsoNormal">Thomas</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"M=
soNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal"=
>=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p></div></div></blockquote></div>=
</blockquote></div><p class=3D"MsoNormal" style=3D"margin-left:9.6pt">_____=
__________________________________________<br>USRP-users mailing list<br><a=
 href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@li=
sts.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com</a></p><p class=3D"MsoNormal">=C2=A0</p>=
</div></div></blockquote></div><p class=3D"MsoNormal" style=3D"margin-left:=
4.8pt">_______________________________________________<br>USRP-users mailin=
g list<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a></p><p class=3D"MsoNormal=
"><u></u>=C2=A0<u></u></p></div></div></blockquote></div></div>

--0000000000007db91d05996eeba5--


--===============3026581048131055220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3026581048131055220==--

