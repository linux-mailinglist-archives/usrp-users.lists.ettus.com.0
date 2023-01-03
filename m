Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4D565C0C9
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 14:27:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9300383B89
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 08:27:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672752435; bh=F9BbbPoSNG5+dbaGmt1RY4s9JP+9DEqFe0df5oXiBvk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uYO2cyGKg1NZMlyx5xDacp6Q+FPG7xxTu3x1ZcaIdRyEFIhjnEx9AzCVAvK74yOP6
	 uYUT3p0bJ1OlSr9zMfmw4Vy/7xbn01b/d1nZi5kTkvpPnhQB1WBq0GfRZWwu4ePzpT
	 w1tP7JbIX0AXtCnKKKBevfN0NvrJtZq5qH6c7NaXac0SFLpnKiirvIHB3KbgTsaW/U
	 lD18zN3Msiv3mYJp7gnxGXHfqyIgzeqAT8Ivq3imwdFwlZYVgHiJnkVRh54ZGNGZ9o
	 jBWHYpYV7iqMAjj4Fd+KfXI1t0F+f55Vr87DMlJAg1mgkyc0pCrAeMPwRJSGMwCRh3
	 7a5esw3IZVyHA==
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id CB645380E39
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 08:25:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fMxhcRwh";
	dkim-atps=neutral
Received: by mail-wm1-f42.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso12885252wmq.1
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 05:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xn2jCNSfkVIKLgP5VZWMWKD+Pm63Ab32mPmZ9kQsnDQ=;
        b=fMxhcRwhdxvF1WwfDynpXZ9orqXMN76Y8ehboThikrPeElRhNwERElsuCRWxfrMmwx
         NdX4PQwxGmZ2l2MC+foGORDtTdowx0ehaUg4cUJRpuL+wQIsYFLgrvtGaglvP/qePnef
         J0jCMLjX3r8Kxvc2zifTQ9RmXuoRCWsY8aIHFWLv1hOdTH8oq9/YtQFozb5+rlv9Fj0b
         83HHGGXUmPXkfCJgCwOJpG1d9LChH5blBdE6J4P/vn10M/SPDlrlEWWaCPxEIXi57H9/
         NuuX/SiWqmwwpwsB6yZrlDK0vx32kA3JMDr0qazdD19PFHDFdtv6Vn/yXOty7vAXKISp
         1lqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xn2jCNSfkVIKLgP5VZWMWKD+Pm63Ab32mPmZ9kQsnDQ=;
        b=EzxOZ1AxyN2ChCFAYJJjR1qfRRHwSdsSl8k+agP6rCe4Ifl00cgLSRc33DPoWdcjzx
         fJJdbw/f2+RL/ejjC6v9UVl4hjYiBkkJWfu+0TNJ6l/DPsqBBOxzsFPxs4F9RXeSjjR7
         A12eWIf/QGAA4YRBXbFERiwXxzvKneX6mIjs2orfdLTqnc5cncEVdw1Sma4RRUB825MZ
         GN/yPYD3iCFMsHYSo5KdUgcwzz5+wPLOJ+rlvLl/Rx60lFhlTy88tkxzN1j4xb3Bq4xi
         rCx7Nulv8KAmrkb7RCd40ZjjKIDPYSgp8pEU2HeGY7YrD8ujbF/CQjSzCWEsiiTibrAN
         jGLQ==
X-Gm-Message-State: AFqh2koXULWwh6bE06/HHnaiyHNDeUzX8R0elfRvhQ6O8CUpAGGYObaD
	r1LA3VU4q6dL57MdHbUiCGejuYrtQ4a5anpTqQtY0cqP7ao=
X-Google-Smtp-Source: AMrXdXuVOxFyYWVaL6IDf8TDVLKNKiDU28BIKHS9OeyN7dGiR4aMqZ7qiXNvY4NpvPr9DFsdyXvcdaG4bvBpfvQyMMs=
X-Received: by 2002:a05:600c:3496:b0:3cf:7959:d8be with SMTP id
 a22-20020a05600c349600b003cf7959d8bemr3628592wmq.85.1672752353666; Tue, 03
 Jan 2023 05:25:53 -0800 (PST)
MIME-Version: 1.0
From: Pedro Pereira <pedro60132@gmail.com>
Date: Tue, 3 Jan 2023 13:25:42 +0000
Message-ID: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FAF7H7YLWOLYML5CZFAM7JYYS2LTRB23
X-Message-ID-Hash: FAF7H7YLWOLYML5CZFAM7JYYS2LTRB23
X-MailFrom: pedro60132@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FAF7H7YLWOLYML5CZFAM7JYYS2LTRB23/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5488787587003958412=="

--===============5488787587003958412==
Content-Type: multipart/alternative; boundary="000000000000d66baa05f15c010e"

--000000000000d66baa05f15c010e
Content-Type: text/plain; charset="UTF-8"

Greetings,

I have 2 USRP front-ends - N210 and N310. I want to develop a GNSS Receiver
inside my FGPA - xilinx ZCU102 - and use one of the USRP devices only as
the front-end. The receiver is quite large so I need an external board for
all the signal processing chain. The receiver has two implementations -
software-only & hybrid. In hybrid mode some tasks of the processing chain
are accelerated in hardware.

The software-only version of the receiver running on my ZCU102 is able to
configure the N210 and read packets over ethernet correctly. However, with
the hybrid version of the receiver, I want to read the digital IQ samples
from the front end directly in hardware.

For example, I am able to do this with the ZCU102 connected to FMComm2/3
using the FMC connection on the FPGA. AD provides HDL reference designs to
support communication between multiple front-ends and multiple FPGAs.

Is there a similar way to read the digital samples directly in hardware
using the N210? The N210 only has the ethernet and a MIMO port.

Thanks in advance.

--000000000000d66baa05f15c010e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings,<div><br></div><div>I have 2 USRP front-ends - N=
210 and N310. I want to develop a GNSS Receiver inside my FGPA - xilinx ZCU=
102 - and use one of the USRP devices only as the front-end. The receiver i=
s quite large so I need an external board for all the signal processing cha=
in. The receiver has two implementations - software-only &amp; hybrid. In h=
ybrid mode some tasks of the processing chain are accelerated in hardware.<=
/div><div><br></div><div>The software-only version of the receiver running =
on my ZCU102 is able to configure the N210 and read packets over ethernet c=
orrectly. However, with the hybrid version of the receiver, I want to read =
the digital IQ samples from the front end directly in hardware.=C2=A0</div>=
<div><br></div><div>For example, I am able to do this with the ZCU102 conne=
cted to=C2=A0<span style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;He=
lvetica Neue&quot;,Helvetica,Arial,&quot;Lucida Grande&quot;,sans-serif;fon=
t-size:14px">FMComm2/3 using the FMC connection on the FPGA. AD provides HD=
L reference designs to support communication between multiple front-ends an=
d multiple FPGAs.=C2=A0</span></div><div><span style=3D"color:rgb(17,23,26)=
;font-family:Barlow,&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida=
 Grande&quot;,sans-serif;font-size:14px"><br></span></div><div><span style=
=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helvetica Neue&quot;,Helve=
tica,Arial,&quot;Lucida Grande&quot;,sans-serif;font-size:14px">Is there a =
similar way to read the digital samples directly in hardware using the N210=
? The N210 only has the ethernet and a MIMO port.</span></div><div><span st=
yle=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helvetica Neue&quot;,He=
lvetica,Arial,&quot;Lucida Grande&quot;,sans-serif;font-size:14px"><br></sp=
an></div><div><font color=3D"#11171a" face=3D"Barlow, Helvetica Neue, Helve=
tica, Arial, Lucida Grande, sans-serif"><span style=3D"font-size:14px">Than=
ks in advance.</span></font></div><div><span style=3D"color:rgb(17,23,26);f=
ont-family:Barlow,&quot;Helvetica Neue&quot;,Helvetica,Arial,&quot;Lucida G=
rande&quot;,sans-serif;font-size:14px"><br></span></div><div><span style=3D=
"color:rgb(17,23,26);font-family:Barlow,&quot;Helvetica Neue&quot;,Helvetic=
a,Arial,&quot;Lucida Grande&quot;,sans-serif;font-size:14px"><br></span></d=
iv></div>

--000000000000d66baa05f15c010e--

--===============5488787587003958412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5488787587003958412==--
