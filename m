Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1823020A8
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 04:07:07 +0100 (CET)
Received: from [::1] (port=56298 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l3sDX-0006s9-GZ; Sun, 24 Jan 2021 22:07:03 -0500
Received: from mail-io1-f52.google.com ([209.85.166.52]:38667)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <berenguj@uci.edu>) id 1l3sDU-0006nl-27
 for usrp-users@lists.ettus.com; Sun, 24 Jan 2021 22:07:00 -0500
Received: by mail-io1-f52.google.com with SMTP id e22so23773225iom.5
 for <usrp-users@lists.ettus.com>; Sun, 24 Jan 2021 19:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uci-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=3Pjd1xSIyJwudvCtXidB+Mo1KF5FU7cxlHLq431pAOM=;
 b=deiw6Uj8qcCNuctJgrwk+Gg8KoJdpIiqxe8DrxE49dX0wzMK668dYrDGGFQHiAU7+1
 D+ZX2zmiUc2N62kATvx1R/FwA9s/3dEGpdfOpu0r3MVa1pTvu93h60J/d9ucoycLxvaQ
 I4uPcUqhswomcl42EIvBWDcTmY9O3/OjZ1kdrw21nxXZv9XmqVGGSHukKpSmA3EPkwXG
 66ZaEbld1Z540nXWB1fDoOpUtgrjc0qKMtVlzZ5/SWIu/YaAshVMp9Ck94qdJ5VE8x4d
 UNZFLHl+WHmiozEPgebGU1KbtSZzhR3A0x/VaUyEQ6Y850hROxQ7lCTA83NngZzCJRGD
 utOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3Pjd1xSIyJwudvCtXidB+Mo1KF5FU7cxlHLq431pAOM=;
 b=CJObhnsuUrXv/kSGKHNj9n6D2/rk+bpvphKo1X/YifgYpOhvcPgFJPKexcLw4CKldg
 qZocWQ3mFzRPH9uXCE9C23wH480HX74BDHFWM0XyvITtXft+jonMYfjB/GbjNv8515FM
 kzVcCgWosInYwO2X7I8fX0QJ/5dDeF49gtwJszSMx/qE0mCxNLMBrzyeKXlQ8tTwlVUn
 3lvM8sstveNcOQ7LIEMsjId/niGLpf3wMB/+RUeUk1EMzzGe/3kvRGxLk4xdJrcxB+WR
 QgoQOAtvBJYGxQnOc1a30PA1XdXXlUYufmpQyJgHsTWxowG2xmrFzBpqQksms2SAu43W
 KGSg==
X-Gm-Message-State: AOAM533oJCdbBIIa3jou5DMVQq4bGfeMRfr2KXOnJYF0GFDYP+qGyEqO
 nc9Y6G9BM1iqnn2kLviUAj6muLLJ2moA3DIaU1+0M9QfYAM=
X-Google-Smtp-Source: ABdhPJwWYfLVbGPa8Pia5f1OEBhlCo7j0KwTuqHrU5/0xx8isiCwHw1AQ1b5LMF2nlDcW5iMUpTia2QKYDCC0HQvLbs=
X-Received: by 2002:a6b:7e05:: with SMTP id i5mr269727iom.60.1611543978771;
 Sun, 24 Jan 2021 19:06:18 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 24 Jan 2021 19:06:07 -0800
Message-ID: <CAE72A4RhC=gKDVzZMRx1UX06kLtCXeW1rBCK6EVigD4fFZpT2A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Using a USRP with Packet Receiver
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
From: Jada Mariano Berenguer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jada Mariano Berenguer <berenguj@uci.edu>
Content-Type: multipart/mixed; boundary="===============0790439017849504167=="
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

--===============0790439017849504167==
Content-Type: multipart/alternative; boundary="0000000000006522f505b9b0d2a5"

--0000000000006522f505b9b0d2a5
Content-Type: text/plain; charset="UTF-8"

Hello! First, I'll start off with letting you know that I'm very new to
GNURadio and USRPs so please bear with me :) Also, I wanted to preface this
with my setup: I'm using a B210 board with GNURadio 3.8 on a Macbook Air
running macOS Catalina.

So, I'm trying to send a message to my USRP, have the USRP receive the
message, then have the USRP transmit the message back out. I'm basing my
flowgraph off of a packet_loopback_hier.grc example that I found in the
GNURadio examples directory under examples/digital/packet. Based off of
this message thread
<https://lists.gnu.org/archive/html/discuss-gnuradio/2018-06/msg00254.html>,
it says I can replace the Channel Model block with a USRP Source and Sink
block. I did that, but found that the Packet RX block is having a hard time
decoding the packet and printing the contents to the terminal.

I believe that my USRP Source and Sink blocks are receiving the packet just
fine. I wrote the input of the USRP source and the output of the USRP sink
to a File Sink, and verified that there are bursts of digital data being
captured using Inspectrum. Because of this, I believe the problem may be
with how Packet RX is decoding the packet. Because I don't have much
experience, I was wondering if someone could help me figure out how to get
the Packet RX to decode the packet properly and print the output to the
terminal using the Message Debug block.

Also, I've been discussing this problem on the GNURadio mailing list, and
was hoping maybe someone here could continue helping me with the problem!
Here's my GNURadio mailing list message thread
<https://lists.gnu.org/archive/html/discuss-gnuradio/2021-01/msg00212.html>
for past information of what I've done.

Thanks in advance!

--0000000000006522f505b9b0d2a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello! First, I&#39;ll start off with letting you know tha=
t I&#39;m very new to GNURadio and USRPs so please bear with me :) Also, I =
wanted to preface this with my setup: I&#39;m using a B210 board with GNURa=
dio 3.8 on a Macbook Air running macOS Catalina.<div><br></div><div>So, I&#=
39;m trying to send a message to my USRP, have the USRP receive the message=
, then have the USRP transmit the message back out. I&#39;m basing my flowg=
raph off of a packet_loopback_hier.grc example that I found in the GNURadio=
 examples directory under examples/digital/packet. Based off of this <a hre=
f=3D"https://lists.gnu.org/archive/html/discuss-gnuradio/2018-06/msg00254.h=
tml">message thread</a>, it says I can replace the Channel Model block with=
 a USRP Source and Sink block. I did that, but found that the Packet RX blo=
ck is having a hard time decoding the packet and printing the contents to t=
he terminal.=C2=A0</div><div><br></div><div>I believe that my USRP Source a=
nd Sink blocks are receiving the packet just fine. I wrote the input of the=
 USRP source and the output of the USRP sink to a File Sink, and verified t=
hat there are bursts of digital data being captured using Inspectrum. Becau=
se of this, I believe the problem may be with how Packet RX is decoding the=
 packet. Because I don&#39;t have much experience, I was wondering if someo=
ne could help me figure out how to get the Packet RX to decode the packet p=
roperly and print the output to the terminal using the Message Debug block.=
=C2=A0</div><div><br></div><div>Also, I&#39;ve been discussing this problem=
 on the GNURadio mailing list, and was hoping maybe someone here could cont=
inue helping me with the problem! Here&#39;s my <a href=3D"https://lists.gn=
u.org/archive/html/discuss-gnuradio/2021-01/msg00212.html">GNURadio mailing=
 list message thread</a> for past information of what I&#39;ve done.=C2=A0<=
/div><div><br></div><div>Thanks in advance!</div></div>

--0000000000006522f505b9b0d2a5--


--===============0790439017849504167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0790439017849504167==--

