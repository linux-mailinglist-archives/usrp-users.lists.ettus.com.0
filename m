Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3221557BF3D
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jul 2022 22:36:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 870B83841F4
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jul 2022 16:36:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658349363; bh=F2da8yTd1dTa3rKjab9dIqBI/b+HmSkP3ZPY3jlqGlU=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=TZhFOIyyOkflj1rU/oJ7Yen463eAyI21cqwWHsZxrFZxs+L6wBiyjYNckZERVbOBh
	 vwWULWgA99NmLczp40Iv3K8Uzatd8ek2flPcY1RBButnaI97ZPdaRbYSzCBF9/Eyp3
	 L6eWoatiKKMT51eBWQFB5OPRhKTzdF8RR7CFYeS2yjTYKrq/kR/w7LmNER955D/EIf
	 TRjnpDSHnjzg2ElreWXoK7siM/sT5wFSBwoAdk1sSYa+H6oejkIvKuevAzrA3XwfR/
	 oDfFjva1pXCktRkvOvmucdYw3FWRkcUbJbotnp83VYNBJJfhRdB95XebQ665A1hkfP
	 BYu7qcvbHwTcA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCE81380F84
	for <usrp-users@lists.ettus.com>; Wed, 20 Jul 2022 16:34:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658349295; bh=YpwqIe4bLBjLETV5srtSgsyRvTd5oxOgQYHo6TUuyrc=;
	h=Date:To:From:Subject:From;
	b=UyYhbViRsy5XR8M1oM43KaY1wi/LcVMC3gdKv7aDlTpPLRZ8BZu/5SvqydzWmbuJ7
	 VGcP0Q5a7ra4/u1Uvc7TGiSsYw8r76fJ+aTmtL3nfcA4B5suchZ7Rs5ijM8NFhgZt6
	 eUVITyl3nheQmzu+TtICmkc/iumT0H1vjIKxGKFzkq7n1SWvqfvzvStj1HP4oyyXlY
	 LglWJlbdRnFyezOsDLE8T4MZCvAB45M3CYUnRN8Igmk2hJ3VtepYiREbBhqbeTmDRQ
	 zimbADfUIuRwMP6jcaUO5oyml2YgtLCnwysNIuKHn+ay+dfW8luHBFspM9Y6tyiGgo
	 OMM1AP1S588kg==
Date: Wed, 20 Jul 2022 20:34:55 +0000
To: usrp-users@lists.ettus.com
Message-ID: <YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 5DEP54GNHHBYWS5OCVBEAYL4554UJRQT
X-Message-ID-Hash: 5DEP54GNHHBYWS5OCVBEAYL4554UJRQT
X-MailFrom: kevin.macknight@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] meta-ettus build errors out (undefined reference to 'stime')
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DEP54GNHHBYWS5OCVBEAYL4554UJRQT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "kevin.macknight--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: kevin.macknight@baesystems.com
Content-Type: multipart/mixed; boundary="===============7532529316018043553=="

This is a multi-part message in MIME format.

--===============7532529316018043553==
Content-Type: multipart/alternative;
 boundary="b1_YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Running Ubuntu 20.04 and looking to build ***meta-ettus***, targeting the=
 x4xx.=20

I have built UHD-4.2, GNU Radio maint-3.8, and gr-ettus from source. Now =
I=E2=80=99m onto the ***meta-ettus*** (Yocto) build.

Downloading the ***meta-ettus - zeus*** branch and came across a build er=
ror :

    *syscall.c:7657: undefined reference to \`stime'*

Does this mean I don=E2=80=99t have the correct set of downloaded package=
s?

>>>BUILD COMMAND$ *./contrib/kas-build_imgs_packages.sh x4xx v4.2*

--b1_YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Running Ubuntu 20.04 and looking to build <em><strong>meta-ettus</stro=
ng></em>, targeting the x4xx. </p><p>I have built UHD-4.2, GNU Radio main=
t-3.8, and gr-ettus from source. Now I=E2=80=99m onto the <em><strong>met=
a-ettus</strong></em> (Yocto) build.</p><p>Downloading the <em><strong>me=
ta-ettus - zeus</strong></em> branch and came across a build error :</p><=
p>    <em>syscall.c:7657: undefined reference to `stime'</em></p><p>Does =
this mean I don=E2=80=99t have the correct set of downloaded packages?</p=
><p>&gt;&gt;&gt;BUILD COMMAND$ <em>./contrib/kas-build_imgs_packages.sh x=
4xx v4.2</em></p>


--b1_YFJ1UHp1FoA53vbMUt1LEdrotQvBHwi5klWAyxvakE--

--===============7532529316018043553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7532529316018043553==--
