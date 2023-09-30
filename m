Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FE27B405C
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 14:57:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6A3438559D
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 08:57:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696078659; bh=mX0cD6tUVK97XPT1wJ6SdXVTE2lAmddPrwOUUGx7s88=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ml7iNhUgfQj9FouH4YQiPnacOUJct0mv7sKRyB8py+SPFoh2GWvx7/JeivUq4hg2L
	 fb+UX3nCRIBQ3s3/YSY/QfL5N4uY4FPIElObFcGbX3vQsUKq10Mv3Blo/FT138xgo0
	 S/0K/rlerosCjJdUePZYqR1B48EQjgbsu7Mo4ZkHm7L9U2CK3D077boScvF58doVbs
	 d+kEzWZol1ItiDFH3qAoA5hQhIzgyuLu94hox5DoDnn6CFH681owdCAJwaeuiipHQF
	 Mbo7DdHagYper27m21rkcyJ6tgJIRQmn4qW+nnajIIMihadJirgDHcIl/RaFo46Frj
	 dEwtZIB5xcObA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5C4C385586
	for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 08:57:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696078655; bh=RVlgdu0fZFTOf81EMpEJKhTbz3G4kir95ddaH+qG32I=;
	h=Date:To:From:Subject:From;
	b=BiuthIwslwt3sUWmzYn5MATuUN+USBrEfeUTf0Mx9sPG7OeiUFOnViLbJN/YawHiR
	 uKDtk+WhW5qif4D8YlDFjsareLJD4VkkpZ1vlD2Ffq/D50eoLWKQR07gAR6UK1ZLN6
	 xtKFa6fRQSObRXSoMeQ2b6jc5RSLoallfEbCJ8IA1VN/gJPHCqkseIK5r2GxjMNJep
	 iVMprpAMqbgJ8VPPBwNmZ2kNxEGx5O1DgIqfymVbaogQSykQGPasbBXGMcB/X/OjXC
	 eu+Wqwspkp+kCmEe4UJ4GvOKPIS+CoTPSB11A+HCPRLEeTPXRtNY5JCbeVlbLtN0xo
	 wwnFjSC36S/VA==
Date: Sat, 30 Sep 2023 12:57:35 +0000
To: usrp-users@lists.ettus.com
From: usama.khurram@hotmail.com
Message-ID: <G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: SSEKDPPLTSEIK5OT6DDA6VLWTNIITPV5
X-Message-ID-Hash: SSEKDPPLTSEIK5OT6DDA6VLWTNIITPV5
X-MailFrom: usama.khurram@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus, USRP N310, MPM major compat number mismatch error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SSEKDPPLTSEIK5OT6DDA6VLWTNIITPV5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2316978731322701731=="

This is a multi-part message in MIME format.

--===============2316978731322701731==
Content-Type: multipart/alternative;
 boundary="b1_G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, I am using USRP N310, I have installed UHD driver many times from the=
 Source in Ubuntu, but still getting the same error, also I downgraded th=
e UHD version to 4.0.0.0, but still same, Could someone please help me in=
 this regards, Thanks

=C2=A0

usama@monnawea:\~$ uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.5.0.0=
-0-g471af98f

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D[10.0.1.217](https://10.0.1.217/),type=3Dn3xx,product=3Dn310,serial=3D=
31AFFD4,fpga=3DHG,claimed=3DFalse,addr=3D[10.0.1.217](https://10.0.1.217/=
)

\[ERROR\] \[MPMD\] MPM major compat number mismatch. Expected: 5.3 Actual=
: 4.0. Please update the version of MPM on your USRP device.

Error: RuntimeError: MPM major compat number mismatch. Expected: 5.3 Actu=
al: 4.0. Please update the version of MPM on your USRP device.

--b1_G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg
Content-Type: text/html; charset=us-ascii

<p>Hi, I am using USRP N310, I have installed UHD driver many times from the Source in Ubuntu, but still getting the same error, also I downgraded the UHD version to 4.0.0.0, but still same, Could someone please help me in this regards, Thanks</p><p>&nbsp;</p><p>usama@monnawea:~$ uhd_usrp_probe</p><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.5.0.0-0-g471af98f</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=<a href="https://10.0.1.217/">10.0.1.217</a>,type=n3xx,product=n310,serial=31AFFD4,fpga=HG,claimed=False,addr=<a href="https://10.0.1.217/">10.0.1.217</a></p><p>[ERROR] [MPMD] MPM major compat number mismatch. Expected: 5.3 Actual: 4.0. Please update the version of MPM on your USRP device.</p><p>Error: RuntimeError: MPM major compat number mismatch. Expected: 5.3 Actual: 4.0. Please update the version of MPM on your USRP device.</p>


--b1_G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg--

--===============2316978731322701731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2316978731322701731==--
