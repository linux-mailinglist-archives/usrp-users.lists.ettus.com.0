Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D2599AB81
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 20:52:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 371BC385D03
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 14:52:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728672737; bh=nEKSz8Qn9KzFuhvBqnc7iY7Dwt6mTpXcrifPF864bDk=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=Dj310zqy4VB/Ujlm4pSVXm1GYx1hMYvuvipouTISpcoDTyGZjcSAO9UJ3Xr1SDINY
	 j0aesjuDurw6O0sZM5ftC4yp6ZJQPICnerE+KmMgYQLHS0oEQGxTUFgRLFA/u1qLF6
	 26zTuMY0K5UZXl2D/czkcwWCYviQJEc5vCfFQWk5sR9Rdm3fvt3OK3DjYeWKNo83im
	 9iCZnG/ZqGRP6QOD6Ii//r2K5WQQzX1EnX71fMBpw/WL3WZGQo6VG6NWMaZTlvS66A
	 HlEmrniN3fJe5d/aqxr+WFlRMD0uh7Kkq8Mnpn2v+5/vkdKpKgTyRyDMG6M/JS3uRn
	 a8icrQWkSbHww==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 910CA385CB8
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 14:51:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728672717; bh=lpZD4WC3oAI1v9YgqP9dplENnepiLTn+HT9pGwkM84k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cT/PKC3RVPPkDUucSUbB2ApzR/RIiqgOLektEBaG68dXBcF80zfHIHWpTnvYtlDoG
	 0A34fiTEuGaOCIVVw/IKwttUOGEUO2ToZKPMUgaq1nW7AlZoyFlQtk/qcodt2J+iP7
	 Up/kA/2lbotHwt0B47DTh+mtsejx18IKWGIhrMkhdt5k3bC63OMLEKAkaVSJFGgtf6
	 mzCQwJmVuI5XGYg14R6fRymgSKnjJ0oPuy9xoWJ0GDGm9tgdzf1pQeeYyOpCp6oyIP
	 gjbp1XAlar5VP7f9LaabdRtuxm7Zr3vkpQod8B1lpb3wir6RXV14xG0YHxhQwworZg
	 ZfOJTgvnodz5g==
Date: Fri, 11 Oct 2024 18:51:57 +0000
To: usrp-users@lists.ettus.com
Message-ID: <djU1uJHMNuDReVtvVHmmJxvEfR7WPIkThQ1L0T9ddk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8d4fae65-290d-4c09-8c8f-c5aa2abab43d@o2.pl
MIME-Version: 1.0
Message-ID-Hash: FFPAV6TMMKFH4QIYKRJGOEGP5HRARNZP
X-Message-ID-Hash: FFPAV6TMMKFH4QIYKRJGOEGP5HRARNZP
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FFPAV6TMMKFH4QIYKRJGOEGP5HRARNZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============5644361509431808704=="

This is a multi-part message in MIME format.

--===============5644361509431808704==
Content-Type: multipart/alternative;
 boundary="b1_djU1uJHMNuDReVtvVHmmJxvEfR7WPIkThQ1L0T9ddk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_djU1uJHMNuDReVtvVHmmJxvEfR7WPIkThQ1L0T9ddk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Piotr!

I was able to patch the meta-mender layer to fix the PSEUDO_ABORT bug.   =
I=E2=80=99m still not sure it=E2=80=99s a bug in Mender, but it only seem=
s to occur when I have the graphviz recipe included, which is required by=
 the Vitis-AI library recipes.   I=E2=80=99m really glad to have Mender i=
mages now.   That will simplify some things for me.

I=E2=80=99ll make a fork of the meta-ettus and other repos on github, and=
 start pushing commits up to it.

Cheers=20

Mike

--b1_djU1uJHMNuDReVtvVHmmJxvEfR7WPIkThQ1L0T9ddk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey Piotr!</p><p>I was able to patch the meta-mender layer to fix the =
PSEUDO_ABORT bug.   I=E2=80=99m still not sure it=E2=80=99s a bug in Mend=
er, but it only seems to occur when I have the graphviz recipe included, =
which is required by the Vitis-AI library recipes.   I=E2=80=99m really g=
lad to have Mender images now.   That will simplify some things for me.</=
p><p>I=E2=80=99ll make a fork of the meta-ettus and other repos on github=
, and start pushing commits up to it.</p><p>Cheers </p><p>Mike</p>


--b1_djU1uJHMNuDReVtvVHmmJxvEfR7WPIkThQ1L0T9ddk--

--===============5644361509431808704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5644361509431808704==--
