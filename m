Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F245711583B
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 21:39:51 +0100 (CET)
Received: from [::1] (port=54160 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idKOE-0006Ef-6s; Fri, 06 Dec 2019 15:39:50 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:41691)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1idKOA-00068f-46
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 15:39:46 -0500
Received: by mail-lj1-f172.google.com with SMTP id h23so9028305ljc.8
 for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2019 12:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GRsrOBZa22LCpWOlEDGS2HMYoK8r1YXffIi7UAzgapI=;
 b=yuBJ8E0VGpp8WlT3DucIRqYvvRId4XUbbOd7jFbHzE1DPt4Qij25OUeQ7WERDuq056
 MSVzDl82KkWog/YWEi9XFbGli/r4RkffEXdXDlmpRFPu8YlCH3h71fMvcxLy7NL1nJzh
 XuxInJTUsRkZ0tMKcoGhpdyi6PxpqNOszCNlZ8aS3qHI1x7zVa87BPGtcEQEqvrIYkMt
 5nJfuragoRKjRcf8LndKfETCK41y+VxWaW//oHBEr+hvBarH+9Kr9/W0roCwi2MTvMgX
 66WlKi6SmFNxu7CYUV+vEu+P0D75InbOdm6qt3qvMmXvcxIfPoKcS+HCPngJmq0neMbd
 YbVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GRsrOBZa22LCpWOlEDGS2HMYoK8r1YXffIi7UAzgapI=;
 b=ZRfIrHIcZOvX58ytPuliriw/Va3OkourCDd0vHeuXjoR0irT0tRVOwtCW/y4LB3S6N
 yVNIs4Oc0l6OuwwOEGwSqOjY43RrqWsUrXA7jCLQPQO3ySc8fgGiXjdDeBCfYWoc1KOX
 CajsT2iUa0q82rinCOajkZhWYjtFW1WX60Iy9V51nFxMRkv4hbFNn56vSQjK4X90utzD
 aRuSeppm7BsZ0YUm/5quVdGLx6pQ33S50ZP56efkpjfkFZ495I4IdImAaOJ+Nb65oO5Q
 G1Lp+et9akef/Gmi074cimxhark+KDdS7T46yov+Z555k5oJPTNq2vgXzZws++zEFpC0
 Q0hw==
X-Gm-Message-State: APjAAAUmguyY3h9cXeqSKaghHrZh2iqvzlH6Rn3V4EXH6gMEXZ6ixrlz
 9sMa44QavKQzHpLrMtDZgw1NgwZAJbJv+fnWmVOb+x9bGnUZqg==
X-Google-Smtp-Source: APXvYqxoeBXpFHSFvzyDWkPdYNlbfqix/o1FAV5skAiNDJrOaSzx7Sy+hnqeIGyn/OndWtbvz6R3FpGzhvGsLcCoKg8=
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr5267644ljj.97.1575664744751;
 Fri, 06 Dec 2019 12:39:04 -0800 (PST)
MIME-Version: 1.0
References: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
In-Reply-To: <20191204094750.31BCC1400BB@zmtaauth01.partage.renater.fr>
Date: Fri, 6 Dec 2019 14:38:53 -0600
Message-ID: <CANf970bHPRczWQDS=OVMWmJwhJVzycCCw4Ey5JeoVqtg9WVVfQ@mail.gmail.com>
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5256808321347942580=="
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

--===============5256808321347942580==
Content-Type: multipart/alternative; boundary="00000000000065978f05990f09f2"

--00000000000065978f05990f09f2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thomas,

I'd need to set it up on my end, but I believe you can TX two distinct
waveforms from a single replay block instance. You'd need to make sure that
your adding your data to the buffer in separate locations and at an address
that is a multiple of 8 bytes (which it looks like you're doing from the
above snippets). Are you seeing continuous underruns, or just a handful at
the beginning on the run? Does your duplicated code also use:

replay_ctrl->get_record_fullness

on both channels before kicking off the stream start?

Sam Reiter
Ettus Research

On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000065978f05990f09f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thomas,<div><br></div><div>I&#39;d need to set it up on my=
 end, but I believe you can TX two distinct waveforms from a single replay =
block instance. You&#39;d need to make sure that your adding your data to t=
he buffer in separate locations and at an address that is a multiple of 8 b=
ytes (which it looks like you&#39;re doing from the above snippets). Are yo=
u seeing continuous underruns, or just a handful at the beginning on the ru=
n? Does your duplicated code also use:</div><div><span style=3D"color:rgb(3=
6,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Me=
nlo,monospace;font-size:12px;white-space:pre"><br></span></div><div><span s=
tyle=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liber=
ation Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre">replay_ctr=
l-&gt;</span><span class=3D"gmail-pl-c1" style=3D"box-sizing:border-box;col=
or:rgb(0,92,197);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&=
quot;,Menlo,monospace;font-size:12px;white-space:pre">get_record_fullness</=
span></div><div><br></div><div>on both channels before kicking off the stre=
am start?</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr">Sam Reiter=C2=A0<div>Ettus Research</div></div></div></div></div><=
/div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Dec 4, 2019 at 3:48 AM Thomas Harder via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v lang=3D"EN-US"><div class=3D"gmail-m_5559831256830253905WordSection1"><p =
class=3D"MsoNormal">Hello everyone,</p><p class=3D"MsoNormal">Is it possibl=
e to transmit two different waveforms on the two channels of the USRP X310 =
with the two UBX-160 daughterboards?</p><p class=3D"MsoNormal">I want to tr=
ansmit two different waveforms simultaneous (synchronized ) on the two chan=
nels of the USRP with the full sample rate of 200 MS/s. I tried already to =
do it with a dual 10Gbit-ethernet connection and I seemed to be limited by =
my computer. Now I am trying to do it with the replay block.</p><p class=3D=
"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I built the FPGA=
 image with one Replay block as described in <a href=3D"https://kb.ettus.co=
m/Using_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Usin=
g_the_RFNoC_Replay_Block</a> to run the example =E2=80=9Creplay_samples_fro=
m_file=E2=80=9D and it is working fine if I transmit just on one channel. N=
ow I was modifying the code by connecting the replay block to both channels=
:</p><p class=3D"MsoNormal">replay_graph-&gt;connect(replay_ctrl-&gt;get_bl=
ock_id(),replay_chan,tx_blockid,tx_chan,replay_spp);</p><p class=3D"MsoNorm=
al">replay_graph-&gt;connect(replay_ctrl-&gt;get_block_id(),replay_chan1,tx=
_blockid1,tx_chan,replay_spp);</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></=
u></p><p class=3D"MsoNormal">and writing the same waveform into another reg=
ion of the DRAM-buffer:</p><p class=3D"MsoNormal">replay_ctrl-&gt;config_re=
cord(0,words_to_replay*replay_word_size, replay_chan);</p><p class=3D"MsoNo=
rmal">replay_ctrl-&gt;config_record(20000,words_to_replay*replay_word_size,=
 replay_chan1);</p><p class=3D"MsoNormal">and</p><p class=3D"MsoNormal">rep=
lay_ctrl-&gt;config_play(0,words_to_replay*replay_word_size, replay_chan);<=
u></u><u></u></p><p class=3D"MsoNormal">replay_ctrl-&gt;config_play(20000,w=
ords_to_replay*replay_word_size, replay_chan1);</p><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">where </p><p class=3D"MsoNorm=
al">words_to_replay*replay_word_size=3D16000</p><p class=3D"MsoNormal">repl=
ay_chan=3D0</p><p class=3D"MsoNormal">replay_chan1=3D1</p><p class=3D"MsoNo=
rmal">tx_blockid=3D0/Radio_0</p><p class=3D"MsoNormal">tx_blockid=3D0/Radio=
_1</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"=
>then I stream my waveforms to the replay block as defined in the example a=
nd I start to replay the data:</p><p class=3D"MsoNormal">replay_ctrl-&gt;is=
sue_stream_cmd(stream_cmd, replay_chan);<u></u><u></u></p><p class=3D"MsoNo=
rmal">replay_ctrl-&gt;issue_stream_cmd(stream_cmd, replay_chan1);</p><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">It works bu=
t with plenty of Underflows!!</p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u=
></p><p class=3D"MsoNormal">So what does it mean when it says in the manual=
:</p><p class=3D"MsoNormal">=E2=80=9CNote that the record and playback buff=
ers do not need to the same, allowing a single Replay block to both record =
and playback to different regions of memory<b> simultaneously</b>.=E2=80=9D=
<u></u><u></u></p><p class=3D"MsoNormal">(<a href=3D"https://kb.ettus.com/U=
sing_the_RFNoC_Replay_Block" target=3D"_blank">https://kb.ettus.com/Using_t=
he_RFNoC_Replay_Block</a>)?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p><p class=3D"MsoNormal">Because in the manual it says also:=
<u></u><u></u></p><p class=3D"MsoNormal">=E2=80=9CThe replay block has the =
following features: One input and <b>one</b> output=E2=80=9D<u></u><u></u><=
/p><p class=3D"MsoNormal">(<a href=3D"https://files.ettus.com/manual/classu=
hd_1_1rfnoc_1_1replay__block__ctrl.html" target=3D"_blank">https://files.et=
tus.com/manual/classuhd_1_1rfnoc_1_1replay__block__ctrl.html</a>)</p><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">So if the r=
eplay block has just one output why does it have two channels connected to =
it (replay_chan=3D 0 and 1)?<u></u><u></u></p><p class=3D"MsoNormal"><u></u=
>=C2=A0<u></u></p><p class=3D"MsoNormal">If one replay block can just strea=
m to one channel at the same time, can I implement easily a second replay b=
lock in the FPGA to stream on the two channels of my USRP two different wav=
eforms simultaneously?<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal">Thank you,<u></u><u></u></p><p class=
=3D"MsoNormal">Thomas<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0=
<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></=
p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>______________=
_________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000065978f05990f09f2--


--===============5256808321347942580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5256808321347942580==--

