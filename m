Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A83A287B07
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 19:33:40 +0200 (CEST)
Received: from [::1] (port=51204 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQZnM-0005KB-PI; Thu, 08 Oct 2020 13:33:36 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:38652)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1kQZnJ-0005Eh-3k
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 13:33:33 -0400
Received: by mail-ot1-f53.google.com with SMTP id i12so6285117ota.5
 for <usrp-users@lists.ettus.com>; Thu, 08 Oct 2020 10:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=cZMAcwwQ1CEwtKxgnAw9pl8DUO6qc0K0zwxb6kRpGdQ=;
 b=pSX0Fozze+1cz5i+5b7epuB2YTTow5h0sRrwZZahJTMrfH/C+1zfxuuq2VJnMYag5c
 Ad4aTUbejCZyt8IFnpzZtAhQTNhseKyxkcWU+Z6ObhOlyu40fQpPWmc1ID/DYd4tL6Km
 Q/vkt1RCz7OOqPpY+jqgELVfRO5fxzLpuL32kUsX7X9f+AMta1JUUjitySHOirTF85Zv
 N8oT64q8S5pZREkD5ffOXbxCZD/dgix68USF6W3CBb81A5wrO7H+f5r2f7rvTaFHHzL4
 SCaexeK55wooTA+VdP9+sX2RGdVy51nAw5nn1nffyPMHE4KRBXy6YMQj+2yXGe5u2CmR
 6P0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cZMAcwwQ1CEwtKxgnAw9pl8DUO6qc0K0zwxb6kRpGdQ=;
 b=XGFH/Jc3RVuRYYpaShXIxeUyEVYsZ53Fd7cJA+jKql0ADeE5XE7Q29zzI2y9xLvCdM
 AbVC2tyU9UsNCn9L5ufdknviBCoy2tyCeJ2kEHeWYwogi4uNw3GlELVTdug3DchqZ2aS
 9HtLB1LUJDAveQufLylOfmRCkh/58veb8ngoH2iRjnx2n8cwgvNDw7oxeXho3r88mnST
 aTY6JOkjuehXesjAd4WtOE18ObZo4v23euneFYueyMaqXIzJSXzkCr2tNmlMBlrUSxwG
 sC1crnJCC0GP6SpbAkW/LWksEjGP9butLf8dUjK4fClVFOYVIuGgZeJe5/op+8LqyiJM
 3wgA==
X-Gm-Message-State: AOAM532+TxzlQEfQLmu17GJPn9Ak2+ii+6GKzUKhi7r3zmEPVz26R5A2
 3w5nOssDZjzzrz+k12APa1D0uFgsM+ZXa4XNGHI8zUmoe+nnqw==
X-Google-Smtp-Source: ABdhPJyue5AT8dFSkdYitNv6rmDDGZdixCxudX4jyhv3zYD7vWQP9k7vb9KBqoHCwLRLhamdHdfUnS4DfdIylDDDY1c=
X-Received: by 2002:a9d:2264:: with SMTP id o91mr5516331ota.24.1602178371970; 
 Thu, 08 Oct 2020 10:32:51 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 Oct 2020 19:32:41 +0200
Message-ID: <CAOx6OK04fY7xSebmPM8d5b_=qDbqWm9hbgHFrhT5raAZVKDPsg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Custom RFNoC block test with UHD C++ (UHD-3.15.LTS)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============3696302138747208447=="
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

--===============3696302138747208447==
Content-Type: multipart/alternative; boundary="000000000000ba820d05b12c3835"

--000000000000ba820d05b12c3835
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to test my RFNoC gain block, the one from the =E2=80=98Getting =
Started
with RFNoC Development=E2=80=99 guide, through the UHD C++ API on an E310 (=
I'm
using UHD-3.15.LTS, I know that UHD 4.0 has just been released but I would
appreciate it if someone could help me with this version).

I'm quite sure that the bitstream I generated is correct, when loading the
image and then running uhd_usrp_probe, the name I used in the gain.xml file
shows up among the other RFNoC blocks. Also, when doing
*gain_block_ctrl->sr_write()* and then checking the value through the
readback register with *gain_block_ctrl->user_reg_read32()* everything
seems to work fine.

What I'm trying to figure out is how to transmit and receive samples from
the block, I've tried a couple of ways and I'm still not getting a good
result.

First, I tried to send a packet with 200 samples to the block
(*tx_stream->send(&tx_buff,
tx_buff.size(), tx_md,0.5)*, with tx_stream obtained through a device3 usrp
object, including *tx_stream_args.args["block_id"] =3D "gain"* and
*tx_stream_args.args["block_port"]
=3D "0"* in the tx stream arguments, the *tx_md* (metadata) set up with
*tx_md.start_of_burst
=3D false, tx_md.end_of_burst =3D false* and *tx_md.has_time_spec =3D false=
*, and
I didn't use the radio at all this way. When trying to receive
(*rx_stream->recv(&rx_buff,
rx_buff.size(), rx_md, 5.0, true)*, including the *"block_id"* and
*"block_port"
*arguments in the rx stream like in the tx, and in mode
*STREAM_MODE_NUM_SAMPS_AND_DONE*), and I got an *ERROR_CODE_TIMEOUT*.

Then, I tried this time connecting the RFNoC Radio block to the gain block
with an *rfnoc::graph* and setting the radio and gain *"block_id"* and
*"block_port"
*arguments in the tx stream. When doing *recv()*, I got an unknown error:
"Receiver error: Unknown error code: 0x30" (does someone know what this
means?) when checking the *rx_md.error_code*. However, *recv()* returned
200, like if it had received the samples I sent, but the rx buffer was
empty.

I also tried using the RFNoC Replay block, but didn't get anywhere either.
Does anyone know if this block is supported in the E310? (this was asked in
the mailing list a while ago in
http://ettus.80997.x6.nabble.com/USRP-users-RFNoC-Replay-block-for-E310-td1=
1156.html,
but I'd like to know if someone has tested it since then).

Lastly, I tried using threads, one with the *recv()* waiting for samples
and the main program thread doing the *send()*, but I wasn't lucky again. I
got this other unknown error: "Receiver error: Unknown error code:
0x3ce8e2b0".

So, which would be the best way to test my block? Again, I only want to see
that samples enter and exit multiplied by the gain value to understand how
I can work with RFNoC blocks from C++.

Also, I'm confused about this, when sending samples to the block its result
should be kept in the FIFO that then UHD reads from, so I understand that
there should be no reason for an active tx streamer to be streaming while
doing the *recv()*, because the *recv() *should just read the result from
the FIFO, or am I getting something wrong?

Any help would be appreciated.

Thanks in advance,

Jorge

--000000000000ba820d05b12c3835
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am trying to test my R=
FNoC gain block, the one from the  =E2=80=98Getting Started with RFNoC
Development=E2=80=99 guide, through the UHD C++ API on an E310 (I&#39;m usi=
ng UHD-3.15.LTS, I know that UHD 4.0 has just been released but I would app=
reciate it if someone could help me with this version).<br></div><div><br><=
/div><div>I&#39;m quite sure that the bitstream I generated is correct, whe=
n loading the image and then running uhd_usrp_probe, the name I used in the=
 gain.xml file shows up among the other RFNoC blocks. Also, when doing <i>g=
ain_block_ctrl-&gt;sr_write()</i> and then checking the value through the r=
eadback register with <i>gain_block_ctrl-&gt;user_reg_read32()</i> everythi=
ng seems to work fine.<br></div><div><br></div><div>What I&#39;m trying to =
figure out is how to transmit and receive samples from the block, I&#39;ve =
tried a couple of ways and I&#39;m still not getting a good result. <br></d=
iv><br><div>First, I tried to send a packet with 200 samples to the block (=
<i>tx_stream-&gt;send(&amp;tx_buff, tx_buff.size(), tx_md,0.5)</i>, with tx=
_stream obtained through a device3 usrp object, including <i>tx_stream_args=
.args[&quot;block_id&quot;] =3D &quot;gain&quot;</i> and <i>tx_stream_args.=
args[&quot;block_port&quot;] =3D &quot;0&quot;</i> in the tx stream argumen=
ts, the <i>tx_md</i> (metadata) set up with <i>tx_md.start_of_burst =3D fal=
se, tx_md.end_of_burst =3D false</i> and <i>tx_md.has_time_spec =3D false</=
i>, and I didn&#39;t use the radio at all this way. When trying to receive =
(<i>rx_stream-&gt;recv(&amp;rx_buff, rx_buff.size(), rx_md, 5.0, true)</i>,=
 including the <i>&quot;block_id&quot;</i> and <i>&quot;block_port&quot; </=
i>arguments in the rx stream like in the tx, and in mode <i>STREAM_MODE_NUM=
_SAMPS_AND_DONE</i>), and I got an <i>ERROR_CODE_TIMEOUT</i>.<br><br>Then, =
I tried this time connecting the RFNoC Radio block to the gain block with a=
n <i>rfnoc::graph</i> and setting the radio and gain <i>&quot;block_id&quot=
;</i> and <i>&quot;block_port&quot; </i>arguments in the tx stream. When do=
ing <i>recv()</i>, I got an unknown error: &quot;Receiver error: Unknown er=
ror code: 0x30&quot; (does someone know what this means?) when checking the=
 <i>rx_md.error_code</i>. However, <i>recv()</i> returned 200, like if it h=
ad received the samples I sent, but the rx buffer was empty.</div><div><br>=
</div><div>I also tried using the RFNoC Replay block, but didn&#39;t get an=
ywhere either. Does anyone know if this block is supported in the E310? (th=
is was asked in the mailing list a while ago in <a href=3D"http://ettus.809=
97.x6.nabble.com/USRP-users-RFNoC-Replay-block-for-E310-td11156.html">http:=
//ettus.80997.x6.nabble.com/USRP-users-RFNoC-Replay-block-for-E310-td11156.=
html</a>, but I&#39;d like to know if someone has tested it since then).</d=
iv><div><br></div><div>Lastly, I tried using threads, one with the <i>recv(=
)</i> waiting for samples and the main program thread doing the <i>send()</=
i>, but I wasn&#39;t lucky again. I got this other unknown error: &quot;Rec=
eiver error: Unknown error code: 0x3ce8e2b0&quot;.</div><div><br></div><div=
>So, which would be the best way to test my block? Again, I only want to se=
e that samples enter and exit multiplied by the gain value to understand ho=
w I can work with RFNoC blocks from C++.<br></div><div><br></div><div>Also,=
 I&#39;m confused about this, when sending samples to the block its result =
should be kept in the FIFO that then UHD reads from, so I understand that t=
here should be no reason for an active tx streamer to be streaming while do=
ing the <i>recv()</i>, because the <i>recv() </i>should just read the resul=
t from the FIFO, or am I getting something wrong?</div><div><br></div><div>=
Any help would be appreciated.</div><div><br></div><div>Thanks in advance,<=
/div><div><br></div><div>Jorge<br></div></div>

--000000000000ba820d05b12c3835--


--===============3696302138747208447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3696302138747208447==--

