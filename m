Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5273246D
	for <lists+usrp-users@lfdr.de>; Sun,  2 Jun 2019 19:20:27 +0200 (CEST)
Received: from [::1] (port=52688 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hXU9a-0002zX-3L; Sun, 02 Jun 2019 13:20:18 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:38201)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zianggaowireless@gmail.com>)
 id 1hXU9W-0002te-5S
 for usrp-users@lists.ettus.com; Sun, 02 Jun 2019 13:20:14 -0400
Received: by mail-qt1-f172.google.com with SMTP id l3so6983953qtj.5
 for <usrp-users@lists.ettus.com>; Sun, 02 Jun 2019 10:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=mgwW1t9JOMxdwmUqVwMEzvMO/+IH9ZZkGYdl6oYHEng=;
 b=Wredg05cWEACFW0Y2xH7+Bqizh4UyxDSrWsqY4HTRbjIRJ4oJYg+fWnDXXjBeMd2cg
 pyB/0EmqlZLKFKw6um4nxTtr3M2UTYcI0rqc82hkGfADkTq4DKLV5NfbAYCLNuIDI5RI
 2qogc8Gjfl9geP5p+NvwyQROdHpGxwCM/v5hYfQLTzyR9HnQMO9e0ZTBtCGkeg9xpSij
 4dtpt5rpsPTFbwFw1R5SmFLH3+bLvld7ozJ6ZvKdNTjuuU2oZjh3Tq1O/XOevWt+aQ5J
 ESKX1jvJpbG4BZWQLP4jmvnI2Xy/MNW7Cb56DXqK9IEtxRaaEGLYLkt7aLS9WeW7DrnJ
 IfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mgwW1t9JOMxdwmUqVwMEzvMO/+IH9ZZkGYdl6oYHEng=;
 b=DHIXU/TkRensM/YmlohRLtpwz4L4imfb+Fyz1JwXwUnT1hMW06A3rUHI8+KGPvIkzx
 6Vu1JrGepkyea1ePQgo2uwW5IBwNp1KcNZub/8bs4D0TPdnGnnhbPtTkCoO6VKunW5UF
 k5XpfgU4i6oc4cFkgrZjvVbpdwiuk99uWiPXF500gRz/q5m6gIPv9EIZR/pVN3C8Vjf0
 Mon3yiDTUtVzW3RtqPXdHAeTYQsuswmteRm7wyE7Uw8SC5G0/bmzCAXH32FMS1DP1zCd
 penZIiA4XnN9g1+cbV7OWCnchP/6q469gVweweNPW4/1Lif0i6fUTlLrRVac528dO9Bx
 seXQ==
X-Gm-Message-State: APjAAAXmr7uuk3uYrrT41fBgGmKxZk9qYlVwnhvUKRrkBCzvbpWf29EE
 PSkNUTTy5JvUTvb45RStIeVBZ4Z8jJD4NNN2ii1pr6Vm
X-Google-Smtp-Source: APXvYqzltFsfAhlxBwV83v3To1vgXR2+q8nHb30GF7uuKAhbrvMeFnH6dj44rzvTWLk5CmFTELXJ0uhnG+IUk/4tuL0=
X-Received: by 2002:ac8:45d2:: with SMTP id e18mr17378330qto.258.1559495973323; 
 Sun, 02 Jun 2019 10:19:33 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 2 Jun 2019 13:19:22 -0400
Message-ID: <CALmz3p1TnLw14Ga=maszXXQW18_TXUgUqHsKDoUZFV0jVb0-Vg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] E313 RFNoc build
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ziang Gao via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ziang Gao <zianggaowireless@gmail.com>
Content-Type: multipart/mixed; boundary="===============3848354738512529351=="
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

--===============3848354738512529351==
Content-Type: multipart/alternative; boundary="00000000000084c661058a5a7349"

--00000000000084c661058a5a7349
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm currently building RFNoc environment on E313 using the following link:
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source


However, when I ran uhd_images_downloader I noticed the files that I
downloaded were different from what was suggested:
inventory.json    usrp_e310_fpga_sg3.bin   usrp_e3xx_fpga_idle.bit
 usrp_e3xx_fpga_idle_sg3.rpt
usrp_e310_fpga.bin  usrp_e310_fpga_sg3.bit   usrp_e3xx_fpga_idle.rpt
usrp_e310_fpga.bit  usrp_e310_fpga_sg3.rpt   usrp_e3xx_fpga_idle_sg3.bin
usrp_e310_fpga.rpt  usrp_e3xx_fpga_idle.bin  usrp_e3xx_fpga_idle_sg3.bit

 and when I ran uhd_usrp_probe, the result I got is different from the
instruction

|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * Radio_0
|   |   |   * DDC_0
|   |   |   * DUC_0

I double checked the uhd_usrp_probe version, which is correct:
4.0.0.rfnoc-devel-702-geec24d7b

Is this a version issue or I missed something? Thank you very much.

Best regards,
Ziang

--00000000000084c661058a5a7349
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m currently building RFNoc=
 environment on E313 using the following link:=C2=A0=C2=A0<a href=3D"https:=
//kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/=
_GNU_Radio_/_gr-ettus_from_Source">https://kb.ettus.com/Software_Developmen=
t_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source<=
/a>=C2=A0</div><div><br></div><div>However, when I ran uhd_images_downloade=
r I noticed the files that I downloaded were different from what was sugges=
ted:</div><div>inventory.json	 =C2=A0 =C2=A0usrp_e310_fpga_sg3.bin =C2=A0 u=
srp_e3xx_fpga_idle.bit	 =C2=A0usrp_e3xx_fpga_idle_sg3.rpt<br>usrp_e310_fpga=
.bin =C2=A0usrp_e310_fpga_sg3.bit =C2=A0 usrp_e3xx_fpga_idle.rpt<br>usrp_e3=
10_fpga.bit =C2=A0usrp_e310_fpga_sg3.rpt =C2=A0 usrp_e3xx_fpga_idle_sg3.bin=
<br>usrp_e310_fpga.rpt =C2=A0usrp_e3xx_fpga_idle.bin =C2=A0usrp_e3xx_fpga_i=
dle_sg3.bit<br></div><div><br></div><div>=C2=A0and when I ran uhd_usrp_prob=
e, the result I got is different from the instruction</div><div><br></div><=
div>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 R=
FNoC blocks on this device:<br>| =C2=A0 | =C2=A0 | =C2=A0 <br>| =C2=A0 | =
=C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=A0=
 | =C2=A0 | =C2=A0 * DUC_0<br></div><div><br></div><div>I double checked th=
e uhd_usrp_probe version, which is correct:</div><div>4.0.0.rfnoc-devel-702=
-geec24d7b<br></div><div><br></div><div>Is this a version issue or I missed=
 something? Thank you very much.</div><div><br></div><div>Best regards,</di=
v><div>Ziang</div><div><br></div><div><br></div></div>

--00000000000084c661058a5a7349--


--===============3848354738512529351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3848354738512529351==--

