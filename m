Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 356C044EE69
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 22:16:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BC983845FB
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 16:16:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="UPdRoy5d";
	dkim-atps=neutral
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 258C7384415
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 16:16:04 -0500 (EST)
Received: by mail-oi1-f179.google.com with SMTP id 7so10086864oip.12
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 13:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=LdU4uelixeBjIPiAbm84tkTtgoUgVk0PHyOK7m7Z570=;
        b=UPdRoy5d5r0Nh1FzWAi7haeEBdP3HIWneLU8JlBXUhDV1Rfoizny+yc3VEIqsdw6vj
         8kFCJch5RdObZQp5juOdhm0yTz8ZZJ557qWIzzIGGWtTwvljdWuoTZRtA48W+1OpEUPD
         ZDOTju8TYyrekN5QxY4XO97poA1XxbHuMl4wBEschQmNYspggdhkimJA2rJ0tfN6DdOI
         suMRFMpB387ihOlQrZAnk0lq3mPAXyINpLwwfjZIE3JBkUvpK4m405OZ0kANxikaTAeS
         QBliuVkKW1azEVyNWYKKBCi4yr+qzEFR1dADpVJpUc8xySKhREislL6hYkb2Aom/ufCh
         qykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LdU4uelixeBjIPiAbm84tkTtgoUgVk0PHyOK7m7Z570=;
        b=Ruj/gRxPobOQv9OKW7in8GpZm555L3a4y+SFWc/1Q4W0Xb8amL6DjrEyXjFLB648TR
         Xrcx1XbZxHDFRXM8xtCfbaNy5KVLQPnCGRG3WNROEQ51khDZAdqewwQbE1E3G0RxufH4
         9c2mlSeTioQZ3bWaksjys9MBFrhekPOCDx8gEKoq5Vl8u+yMMIkbYqh0WUBt7fsDtusx
         1rJXfAzxRsGTtlO1qHJuEGPmG+qS52sjjIpblEFQloM8DDZjqTs3ajsAdDOJOYud7apa
         O1ecM4gtx9ypmdNgm1E1dAquYDtzsSHukutkbNfGHh0vXUrMVU2aGypQvJAMslolHtBa
         162Q==
X-Gm-Message-State: AOAM531v0BCHuwXUdfaBUy3fnajAq3yfhSZTSCXSEhugl8qS7s0Y624r
	uFpCf90oLpVHIDeArQ/IuV6Z6Sqgw5EEP9ZM55n2pHTrHog=
X-Google-Smtp-Source: ABdhPJxLh/Ub4H6o2UD2mqVyNiFftNKY8dwOls8Op/rVaL0gr58WMI3EYp2OWZslnhj1ZK6Erks0KqlsR4Y6OiQWSMc=
X-Received: by 2002:aca:2408:: with SMTP id n8mr29215277oic.124.1636751763928;
 Fri, 12 Nov 2021 13:16:03 -0800 (PST)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 16:15:53 -0500
Message-ID: <CAB__hTTyP82CZQYGBBo3u=vxa5_ajwtXQQpKSyMm1yC_Q2TBmQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LK4TIOMBQ7Q6R5N6TZWEX3FI7SR7QQJT
X-Message-ID-Hash: LK4TIOMBQ7Q6R5N6TZWEX3FI7SR7QQJT
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC gain example time stamp issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LK4TIOMBQ7Q6R5N6TZWEX3FI7SR7QQJT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1653398412245895025=="

--===============1653398412245895025==
Content-Type: multipart/alternative; boundary="00000000000079ab1a05d09df79e"

--00000000000079ab1a05d09df79e
Content-Type: text/plain; charset="UTF-8"

I am using the OOT rfnoc-example (which includes a gain block) along with a
short custom c++ program that simply streams samples to the input port of a
single RFNoC block and then captures the stream from the output port to a
file. I built an E310 image with this block and loaded the bitstream onto
the device. It all works fine but I noticed something strange in that the
metadata time stamps of the tx and rx streams do not match even though the
fpga implementation in this example assigns the input context axi stream
directly to the output context.

Note in the results below that the tx time stamp is 3.456, but the rx time
stamp is truncated to 3. If I change the tx time stamp to 4.456, then the
rx time stamp becomes 4 (not shown below).  I mentioned this issue a long
time ago on this users-list but got no reply. I'm wondering if anyone has
any suggestions regarding this discrepancy?
Rob

*The relevant lines from my custom program are*:
size_t num_rx_samps = rx_stream->recv(&buff.front(), buff.size(), md, 1.0);
if (md.has_time_spec) std::cout << "recv() time: " <<
md.time_spec.get_real_secs() << std::endl;
     AND
tx_stream->send(buffs, num_this_time, md, 1);
if (md.has_time_spec) std::cout << "send() at time: " <<
md.time_spec.get_real_secs() << std::endl;

*Here are the results of my program:*
~/rfnoc/rfnoc-example2/build/apps/rfnoc_block_test --block-id Gain#0
--const-real 5 --const-imag 10 --block-args "gain=256"

Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.1.0.4-118-g06a9ded7
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.0.2,type=e3xx,product=e310_sg3,serial=3150D1D,fpga=n/a,claimed=False,addr=192.168.0.2
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=n/a,mgmt_addr=192.168.0.2,product=e310_sg3'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed

Available RFNoC blocks (# input ports, # output ports):
  0/Gain#0: (1,1)
  0/Radio#0: (2,2)

Block to test: 0/Gain#0
Block args: gain

Using rx streamer args: block_id=0/Gain#0,block_port=0
Using tx streamer args: block_id=0/Gain#0,block_port=0

Rx: Issuing start stream cmd
Tx: Streaming started for 1024 samps, spp = 364
send() at time: 3.456
Tx: send() samps: 364, EOB: 0
Tx: send() samps: 364, EOB: 0
Tx: send() samps: 296, EOB: 1
Tx: Streaming complete
recv() time: 3
Rx: recv() samps: 364, EOB: 0
Rx: recv() samps: 364, EOB: 0
Rx: recv() samps: 296, EOB: 1
Rx: Issuing stop stream cmd
Rx: Streaming complete

Done!

--00000000000079ab1a05d09df79e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am using the OOT rfnoc-example (which includes a ga=
in block) along with a short custom c++ program that simply streams samples=
 to the input port of a single RFNoC block and then captures the stream fro=
m the output port to a file. I built an E310 image with this block and load=
ed the bitstream onto the device. It all works fine but I noticed something=
 strange in that the metadata time stamps of the tx and rx streams do not m=
atch even though the fpga implementation in this example assigns the input =
context axi stream directly to the output context.=C2=A0 <br></div><div><br=
></div><div>Note in the results below that the tx time stamp is 3.456, but =
the rx time stamp is truncated to 3. If I change the tx time stamp to 4.456=
, then the rx time stamp becomes 4 (not shown below).=C2=A0 I mentioned thi=
s issue a long time ago on this users-list but got no reply. I&#39;m wonder=
ing if anyone has any suggestions regarding this discrepancy?</div><div>Rob=
<br></div><div><br></div><div><b>The relevant lines from my custom program =
are</b>:</div><div>		<span style=3D"font-family:monospace">size_t num_rx_sa=
mps =3D rx_stream-&gt;recv(&amp;buff.front(), buff.size(), md, 1.0);<br>		i=
f (md.has_time_spec) std::cout &lt;&lt; &quot;recv() time: &quot; &lt;&lt; =
md.time_spec.get_real_secs() &lt;&lt; std::endl;<br></span></div><div><span=
 style=3D"font-family:monospace">=C2=A0=C2=A0=C2=A0=C2=A0 AND<br></span></d=
iv><div><span style=3D"font-family:monospace">		tx_stream-&gt;send(buffs, n=
um_this_time, md, 1);<br>		if (md.has_time_spec) std::cout &lt;&lt; &quot;s=
end() at time: &quot; &lt;&lt; md.time_spec.get_real_secs() &lt;&lt; std::e=
ndl;</span><br></div><div><br></div><div><b>Here are the results of my prog=
ram:</b></div><div><span style=3D"font-family:monospace">~/rfnoc/rfnoc-exam=
ple2/build/apps/rfnoc_block_test --block-id Gain#0 --const-real 5 --const-i=
mag 10 --block-args &quot;gain=3D256&quot;<br><br>Creating the USRP device =
with: ...<br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4=
.1.0.4-118-g06a9ded7<br>[INFO] [MPMD] Initializing 1 device(s) in parallel =
with args: mgmt_addr=3D192.168.0.2,type=3De3xx,product=3De310_sg3,serial=3D=
3150D1D,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.0.2<br>[INFO] [MPM.Periph=
Manager] Found 1 daughterboard(s).<br>[INFO] [MPM.PeriphManager] init() cal=
led with device args `fpga=3Dn/a,mgmt_addr=3D192.168.0.2,product=3De310_sg3=
&#39;.<br>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ..=
. <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>[INFO] [0/Radio#0] P=
erforming CODEC loopback test on channel 1 ... <br>[INFO] [0/Radio#0] CODEC=
 loopback test passed<br><br>Available RFNoC blocks (# input ports, # outpu=
t ports): <br>=C2=A0 0/Gain#0: (1,1)<br>=C2=A0 0/Radio#0: (2,2)<br><br>Bloc=
k to test: 0/Gain#0<br>Block args: gain<br><br>Using rx streamer args: bloc=
k_id=3D0/Gain#0,block_port=3D0<br>Using tx streamer args: block_id=3D0/Gain=
#0,block_port=3D0<br><br>Rx: Issuing start stream cmd<br>Tx: Streaming star=
ted for 1024 samps, spp =3D 364<br><span style=3D"background-color:rgb(255,=
255,0)">send() at time: 3.456</span><br>Tx: send() samps: 364, EOB: 0<br>Tx=
: send() samps: 364, EOB: 0<br>Tx: send() samps: 296, EOB: 1<br>Tx: Streami=
ng complete<br><span style=3D"background-color:rgb(255,255,0)">recv() time:=
 3</span><br>Rx: recv() samps: 364, EOB: 0<br>Rx: recv() samps: 364, EOB: 0=
<br>Rx: recv() samps: 296, EOB: 1<br>Rx: Issuing stop stream cmd<br>Rx: Str=
eaming complete<br><br>Done!<br></span><br><br></div></div>

--00000000000079ab1a05d09df79e--

--===============1653398412245895025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1653398412245895025==--
