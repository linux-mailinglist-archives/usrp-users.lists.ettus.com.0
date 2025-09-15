Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CAFB587F9
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 01:01:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 475F53864E7
	for <lists+usrp-users@lfdr.de>; Mon, 15 Sep 2025 19:01:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757977299; bh=wJYkOejrMLugLlyG4fM+W4Yl086aIXcv6eb1qf2+JlM=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=0D9S9b6smW8lM8QrnEyLvOwuseSPAtMY77pdFKXXIGNcDmZl2DWS4/xnvSWTXmIkk
	 WiH+4FIzzC4VmmQ5Iysa8l3LhGLqJYMRYxVjFxBYP4QQ9wsPjgp0S2lccOdxhqZ5Pn
	 KZUYVO77GGclBv8mpcW755G2Q9ZTyIiU7gZIWjv8wPsO7uUNduGqqhdDm8lYEXRaxa
	 HfOjWNAUuanSrQlVAjsvPC6SW/PxVuTpFLHG9SNegnY2LEKAE2CjSwcyYIy2nwqAkj
	 S3dJIQrpE67x4SAei6qeJt9bfChIZoHNZWmT43yCcoNce9vNhksvjIDUyr49Kn42dO
	 GOyXyU6OWbBJg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F4893864AB
	for <usrp-users@lists.ettus.com>; Mon, 15 Sep 2025 19:00:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757977243; bh=UlaMMKZRdH/BNVfiABm+16g6nqSs0Llh60RszWslA+I=;
	h=Date:To:From:Subject:From;
	b=bldTttevvRSNo7c12FDacwlxv0wo6PGkV1hTmA5vee2Fo5ppwzrNSrrQI9wNuqB6Q
	 Ie0FnRfOtjupFAj9om7eki0sm2hXAfWb5F99TSkrGf0MmgZ5pioce8SEBMllZSskof
	 8wwFOdpv99WFDoQCjzzIoEbAM18idNUtCm2Cu24y0eAXdi7x3h+SAEjWxOq1vtxOcJ
	 A9rMigIrKaena/LhAO907VUrIMJ3Y9vv7TqAXNwio/5AT7D0YBwf3CqNdVLaqvABW7
	 NR0x/uQiOYD9QkphjrrkUC+LjmJe8qZYinSBaW8OKHHRubqMcr+Iewg8TubZlzTyRH
	 M37g0fbXOH+yA==
Date: Mon, 15 Sep 2025 23:00:43 +0000
To: usrp-users@lists.ettus.com
Message-ID: <svvk1lS93yhWQ3oiQfG0J2tLJZaXWtwp9uxcWLNM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: R2CGDCUQDMNJZ6KJMNDGZKAUECZU34ER
X-Message-ID-Hash: R2CGDCUQDMNJZ6KJMNDGZKAUECZU34ER
X-MailFrom: marian.koop@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [GNURadio] Announcing GNURadio 3 binary installers with UHD 4.9
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R2CGDCUQDMNJZ6KJMNDGZKAUECZU34ER/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "marian.koop--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: marian.koop@emerson.com
Content-Type: multipart/mixed; boundary="===============3802536789482869541=="

This is a multi-part message in MIME format.

--===============3802536789482869541==
Content-Type: multipart/alternative;
 boundary="b1_svvk1lS93yhWQ3oiQfG0J2tLJZaXWtwp9uxcWLNM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_svvk1lS93yhWQ3oiQfG0J2tLJZaXWtwp9uxcWLNM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

To complement the UHD 4.9 release new GNURadio 3 binary installers with U=
HD 4.9 support are available for Ubuntu and Windows.

Ubuntu Noble (24.04), Plucky (25.04):

\- GNURadio 3.10.12

\- [https://launchpad.net/\~gnuradio/+archive/ubuntu/gnuradio-releases](h=
ttps://launchpad.net/\~gnuradio/+archive/ubuntu/gnuradio-releases "https:=
//launchpad.net/~gnuradio/+archive/ubuntu/gnuradio-releases")

Windows 10/11:

\- GNURadio 3.11 (based on [https://github.com/gnuradio/gnuradio/commit/7=
21e477](https://github.com/gnuradio/gnuradio/commit/721e477 "https://gith=
ub.com/gnuradio/gnuradio/commit/721e477"))

\- [https://files.ettus.com/binaries/gnuradio/latest_stable](https://file=
s.ettus.com/binaries/gnuradio/latest_stable "https://files.ettus.com/bina=
ries/gnuradio/latest_stable")

Note:=C2=A0=C2=A0 The Windows installer bundle uses cmake changes not yet=
 available in gnuradio main and has received limited testing outside of u=
sing grc with gr-uhd required features. Please refer to [https://files.et=
tus.com/binaries/gnuradio/latest_stable/gnuradio_installer_README.txt](ht=
tps://files.ettus.com/binaries/gnuradio/latest_stable/gnuradio_installer_=
README.txt "https://files.ettus.com/binaries/gnuradio/latest_stable/gnura=
dio_installer_readme.txt") for other known limitations.

Thanks,

Marian Koop

--b1_svvk1lS93yhWQ3oiQfG0J2tLJZaXWtwp9uxcWLNM
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p><p>To complement the UHD 4.9 release new GNURadio 3 binary in=
stallers with UHD 4.9 support are available for Ubuntu and Windows.</p><p>U=
buntu Noble (24.04), Plucky (25.04):</p><p>- GNURadio 3.10.12</p><p>- <a hr=
ef=3D"https://launchpad.net/~gnuradio/+archive/ubuntu/gnuradio-releases" ti=
tle=3D"https://launchpad.net/~gnuradio/+archive/ubuntu/gnuradio-releases">h=
ttps://launchpad.net/~gnuradio/+archive/ubuntu/gnuradio-releases</a></p><p>=
Windows 10/11:</p><p>- GNURadio 3.11 (based on <a href=3D"https://github.co=
m/gnuradio/gnuradio/commit/721e477" title=3D"https://github.com/gnuradio/gn=
uradio/commit/721e477">https://github.com/gnuradio/gnuradio/commit/721e477<=
/a>)</p><p>- <a href=3D"https://files.ettus.com/binaries/gnuradio/latest_st=
able" title=3D"https://files.ettus.com/binaries/gnuradio/latest_stable">htt=
ps://files.ettus.com/binaries/gnuradio/latest_stable</a></p><p>Note:&nbsp;&=
nbsp; The Windows installer bundle uses cmake changes not yet available in =
gnuradio main and has received limited testing outside of using grc with gr=
-uhd required features. Please refer to <a href=3D"https://files.ettus.com/=
binaries/gnuradio/latest_stable/gnuradio_installer_README.txt" title=3D"htt=
ps://files.ettus.com/binaries/gnuradio/latest_stable/gnuradio_installer_rea=
dme.txt">https://files.ettus.com/binaries/gnuradio/latest_stable/gnuradio_i=
nstaller_README.txt</a> for other known limitations.</p><p><br></p><p>Thank=
s,</p><p>Marian Koop</p>

--b1_svvk1lS93yhWQ3oiQfG0J2tLJZaXWtwp9uxcWLNM--

--===============3802536789482869541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3802536789482869541==--
