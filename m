Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 149B96DA7F6
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 05:26:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9594D384B35
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 23:26:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680838016; bh=q+L0Jg/kiUi1hCl+snb9BTddLl8ztZ63Lk9W+OCBBrU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UVz5avD7M3w4j6WTET8aE4lcdUhLxIKNGPY97pEcKapSDsxC51W2kMytcjXFykIoI
	 8nyjGXHdLdMd60ZrnDQgIS2PAiJ/4TdWgx2GDfK7gO1L2ayOPr6sqQcpcpnzo+f1Ag
	 OfUDfL3QeDxg5qVCKgU45qqdun0u7vuqgV/Ob8BA8TuJBNWpdNlbpv/v721vldYJ1G
	 RWvg4I1Mr0KMoF7XZbMbH2TjXMpUpGm8Vnp/CUkHFzWyXybMUVCeAJxRT2CbhzNGQO
	 ulRLPf7JADwjbU55hF+1KADOe5tqwpYKxNC98XLSr/7j6ANGUEpX0Q0a7fNaG7XDNx
	 LVhOzoCAmVqhQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26A82384B35
	for <usrp-users@lists.ettus.com>; Thu,  6 Apr 2023 23:26:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680838012; bh=iatlN/hPoBYv5VAaHqeba2xMG3BmTh6HFMp6FMNt+c0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HKE6V/ozDWJxNSlITi+5rUub1SlBBJmfyIBKacyZw2tOhJv6M9avjZ0pxeC9py0VB
	 o6mpQI8Af+L8i4HwCGb+2MVvGeuFfHgbAtwGJDxBj24JomFNR4ame91pPzHqngbTyS
	 bnIovsKjMQyWaq55fO6J7NQuOvLZs8TCSkuK061PgoxFA2UH8m1ULvGwed5Z5Gh6MR
	 vOFUyPeXOqmksezJIomkz6It17000Iv8MFfPwhUdS4iCAByMrOnMH1Qu/G0wFDmLqD
	 +YHgJPLNvKL5otMF2KHodIwywHRlPUoI3x/FSwJMA0qBz47mFpaIjsOM0pA1dHerJK
	 46mEBx8FCrwwQ==
Date: Fri, 7 Apr 2023 03:26:52 +0000
To: usrp-users@lists.ettus.com
From: shikunhong12138@outlook.com
Message-ID: <S5EOhpoEKhUiygXxYE1NWtk4Q7D3ojGoRzc3fD4EGw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=h4g1L00VzBoC3cEdnv=Q3BmyG=Acew3NDmzitVd_cKWw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: M5C5XTWJCOKOKYZMBIAT3DCNADXBI4RB
X-Message-ID-Hash: M5C5XTWJCOKOKYZMBIAT3DCNADXBI4RB
X-MailFrom: shikunhong12138@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 x4_200 connectivity question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5C5XTWJCOKOKYZMBIAT3DCNADXBI4RB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0763826117342358286=="

This is a multi-part message in MIME format.

--===============0763826117342358286==
Content-Type: multipart/alternative;
 boundary="b1_S5EOhpoEKhUiygXxYE1NWtk4Q7D3ojGoRzc3fD4EGw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_S5EOhpoEKhUiygXxYE1NWtk4Q7D3ojGoRzc3fD4EGw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, you are right!

1\. This should not support 4 10GbE, when I use CG 400 image, the ubuntu2=
0 can automatically recognize it as 100 GbE=20

2\. But there is a new problem: in gnuradio I can't change the sample rat=
e, x410 devices always use a sample rate of 491.520 MHz, resulting in the=
 computer can not output complete data to x410 devices in time.=20

Erro like this:

**\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=3D=
CG_400,mgmt_addr=3D192.168.10.2,name=3Dni-x4xx-324AA5D,product=3Dx410,clo=
ck_source=3Dinternal,time_source=3Dinternal'.**

**usrp_source :warning: Requested sample rate 4.9152e+06 Hz not set; inst=
ead, 4.9152e+08 Hz used.**

**\[WARNING\] \[0/Radio#1\] Requesting invalid sampling rate from device:=
 4.9152 MHz. Actual rate is: 491.52 MHz.**

**\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 4.915 MHz. Actual r=
ate is 491.520 MHz**

**\[WARNING\] \[0/Radio#0\] Requesting invalid sampling rate from device:=
 4.9152 MHz. Actual rate is: 491.52 MHz.**

**\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 4.915 MHz. Actual r=
ate is 491.520 MHz**

So I wondered how to change the sample rate of the device under the CG 40=
0 image=EF=BC=9F

Any insights would be greatly appreciated:)

--b1_S5EOhpoEKhUiygXxYE1NWtk4Q7D3ojGoRzc3fD4EGw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Yes, you are right!</p><p>1. This should not support 4 10GbE, when I use=
 CG 400 image, the ubuntu20 can automatically recognize it as 100 GbE </p><=
p>2. But there is a new problem: in gnuradio I can't change the sample rate=
, x410 devices always use a sample rate of 491.520 MHz, resulting in the co=
mputer can not output complete data to x410 devices in time. </p><p>Erro li=
ke this:</p><p><strong>[INFO] [MPM.PeriphManager] init() called with device=
 args `fpga=3DCG_400,mgmt_addr=3D192.168.10.2,name=3Dni-x4xx-324AA5D,produc=
t=3Dx410,clock_source=3Dinternal,time_source=3Dinternal'.</strong></p><p><s=
trong>usrp_source :warning: Requested sample rate 4.9152e+06 Hz not set; in=
stead, 4.9152e+08 Hz used.</strong></p><p><strong>[WARNING] [0/Radio#1] Req=
uesting invalid sampling rate from device: 4.9152 MHz. Actual rate is: 491.=
52 MHz.</strong></p><p><strong>[WARNING] [MULTI_USRP] Could not set RX rate=
 to 4.915 MHz. Actual rate is 491.520 MHz</strong></p><p><strong>[WARNING] =
[0/Radio#0] Requesting invalid sampling rate from device: 4.9152 MHz. Actua=
l rate is: 491.52 MHz.</strong></p><p><strong>[WARNING] [MULTI_USRP] Could =
not set TX rate to 4.915 MHz. Actual rate is 491.520 MHz</strong></p><p>So =
I wondered how to change the sample rate of the device under the CG 400 ima=
ge=EF=BC=9F</p><p>Any insights would be greatly appreciated:)</p>

--b1_S5EOhpoEKhUiygXxYE1NWtk4Q7D3ojGoRzc3fD4EGw--

--===============0763826117342358286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0763826117342358286==--
