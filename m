Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 241169E489F
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 00:21:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97B043853CC
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 18:20:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733354458; bh=uqM4VhkuLfvdHg6Sj2cVBF+6McR4TmMVsn85tnFgIiI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kCI1BvoUGSOo11kVVaKkaOlX4UaTJ9n1iMDj3TpszPBvYwiGzk58PViO3k0Ir+WIp
	 hVi/kXd3fov28hyDRVUHuchDsmy/K1yzGoJ2FjZsOsrtnc61t3VN3J+tvQpSSviAbz
	 wN1ysClOnoWvCokx+JEMwTLEt+BJk0SRoycGJTwt89EOuZSwBDxvCsB1VuZgM5Msgr
	 hJRy3PPIs2mbGF+MN1nFs0MlaAf2StsVknAlFxE58lIIO0cMQsEQ7wTTwjKBMK32Z5
	 ddAxiaiNqZzSI57mbhq8xS2tnvs5F7rtt6swidvq1rLdiOH4nyiSq49/66r1GuCfui
	 whI9lS7FGi4Bw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D13B6384566
	for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2024 18:20:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733354417; bh=JT70KJUF4NGbjmCEefAlaJ5YV7mclj/67b19yn1SKOA=;
	h=Date:To:From:Subject:From;
	b=YT4LPtdzFwg6FljJYBpvLTZtVEvgQZBK7tnv2jJmFk69xy5BmPzDBko4xpiXs6Zyi
	 HR+Sks6rilzI4qRdMuXXpYSBAHVA3Unf3UcTu5YozKolgV1WXkjG4oyhaJ1egQ7hWC
	 ESybDwlnuWPj7SsJpDWvfcewhDRgBNoDGepHBn1uBsA84OXz85d3znLwI+i8rZTppo
	 f2riKTImuj2VfNVCPY+Vo145X9P9+IWDy2xfOxsIXygfFF/U1rJZXPsI311fDfznRG
	 8OOutDB10m/+p7AkFoe2+NmAfMKzWtYHHM6ZZLYh53z60Rl/6HgoA2SpwOZfoh1PnI
	 xyL2L14NKe7RQ==
Date: Wed, 4 Dec 2024 23:20:17 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <fjMxPgCNLQeba4fkOn0oege8rf8Rf9qnuMMpo473yIw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FYAWZZ3QF6NVRO3M4KJUIIZK6VD37HHT
X-Message-ID-Hash: FYAWZZ3QF6NVRO3M4KJUIIZK6VD37HHT
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trying to run rfnoc blocks in example uhd folder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FYAWZZ3QF6NVRO3M4KJUIIZK6VD37HHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6701544329960177711=="

This is a multi-part message in MIME format.

--===============6701544329960177711==
Content-Type: multipart/alternative;
 boundary="b1_fjMxPgCNLQeba4fkOn0oege8rf8Rf9qnuMMpo473yIw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fjMxPgCNLQeba4fkOn0oege8rf8Rf9qnuMMpo473yIw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m attempting to run some of the example rfnoc flowgraphs in Gnr=
uadio using X410. I keep getting an error that=E2=80=99s similar to the f=
ollowing:

line 114, in __init__

    self.uhd_rfnoc_addsub_0 =3D uhd.rfnoc_block_generic(

RuntimeError: Cannot find block with ID: AddSub Device/Instance: -1/-1

I=E2=80=99m using the latest Gnuradio v3.11.0.0

Does anyone know what that means and how to fix?

--b1_fjMxPgCNLQeba4fkOn0oege8rf8Rf9qnuMMpo473yIw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m attempting to run some of the example rfnoc flowgraphs in =
Gnruadio using X410. I keep getting an error that=E2=80=99s similar to th=
e following:</p><p>line 114, in __init__</p><p>    self.uhd_rfnoc_addsub_=
0 =3D uhd.rfnoc_block_generic(</p><p>RuntimeError: Cannot find block with=
 ID: AddSub Device/Instance: -1/-1</p><p>I=E2=80=99m using the latest Gnu=
radio v3.11.0.0</p><p>Does anyone know what that means and how to fix?</p=
>


--b1_fjMxPgCNLQeba4fkOn0oege8rf8Rf9qnuMMpo473yIw--

--===============6701544329960177711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6701544329960177711==--
