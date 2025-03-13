Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB98A5ED3C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 08:46:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74D8B3863CB
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 03:46:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741852000; bh=Mxjm4FwOLWJxtifZGAOjgOw2QlJM9CQlfkRI3PcnwpQ=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=LrxI3bnH2tZRTSfEgEXN02SotRnpyr2RXl6eslGaiI5iUsx2/IJ79J4wQyYSgh3bW
	 3eTkILAi+eBL42ZAFkUl/hmRXW21IQmT8lLqweBCuZaqPk0uSHGUF9AoGOB6BTSL/W
	 CR0WpTV2nycm6QGnSuToLEFJd5AFBzy0tKugqcOecGwbGab5VqTM13Hbf8xCZqDkuv
	 N+OBZiNi1G6Ygj0noCiKu7EfnJCNlLedctF9wAR9gBaM6aeDlBgPrZibypTmZD8wA7
	 i7vVLGDhhHBOalq64vCsPp4lkSDZpY65hEZzr85ZcFI4yLtpLE7r2UQLHPMY0QB0KM
	 kidN9klXGKmgg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60003386390
	for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 03:46:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741851992; bh=5nDuzfDT74PSfi3ycSfVxNoP6ERvnspsKYKoMnB1hu0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=tqujRwaG/k3hjNnHrEdWltdbtuHXf5YLKdkf8nZtvLEVswtEvyG6zZ2wQ0ppO3W8l
	 l9WlDp79Hab1AOE+MwU6WO9QjYnzqEAYOF8WHrXiG75CGvr4V5rLFzceHoGJayBpD3
	 QGl7AwegThQ1jVMBm5dhlxdXz6AsbZha7pkpSeVEcfJW/jTSEfngS22+WZ4C8K9xYl
	 xEdU34z+A5OhSTePSvkYQEUY2Uon0Go/U790Hwo6ws4qXFlpkoHXtUoqrBsnS71/yo
	 MsL4DoYXREFDAG480LoW22/gGv1USMvJFUT85UIPxAdD3PVA+/if3Y/36wLDyNe64Q
	 P/5zI+J1qFlMQ==
Date: Thu, 13 Mar 2025 07:46:32 +0000
To: usrp-users@lists.ettus.com
Message-ID: <D1tLO9NN2lY3KHbz0tsun6LLKEGdFr0N8KrugOlugE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH1P110MB12849CFF97D7E5BAF1F2DA4A98D0A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: OS4TZQ4RBYY4XNUE7W2GTJ6AOP744JAF
X-Message-ID-Hash: OS4TZQ4RBYY4XNUE7W2GTJ6AOP744JAF
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble updating file system on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OS4TZQ4RBYY4XNUE7W2GTJ6AOP744JAF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============1765305250543861111=="

This is a multi-part message in MIME format.

--===============1765305250543861111==
Content-Type: multipart/alternative;
 boundary="b1_D1tLO9NN2lY3KHbz0tsun6LLKEGdFr0N8KrugOlugE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_D1tLO9NN2lY3KHbz0tsun6LLKEGdFr0N8KrugOlugE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

When you see the error =E2=80=9C(=E2=80=A6) Artifact Payload type 'rootfs=
-image' is not supported by this Mender Client.=C2=A0(=E2=80=A6)=E2=80=9D=
 then you edit /data/mender/mender.conf and set the following content:

{\
  "RootfsPartA": "/dev/mmcblk0p2",\
  "RootfsPartB": "/dev/mmcblk0p3"\
}

Then you should be able to run the mender update to UHD 4.8.

If it still does not work, another option would be to expose the eMMC as =
mass storage device to the host PC and flash it from there (similar as yo=
u would flash an image to a USB stick). This is described here: https://f=
iles.ettus.com/manual/page_usrp_x4xx.html#x4xx_accessing_emmc_usb

Kind regards,\
J=C3=B6rg

--b1_D1tLO9NN2lY3KHbz0tsun6LLKEGdFr0N8KrugOlugE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi!</p><p>When you see the error =E2=80=9C(=E2=80=A6) Artifact Payload=
 type 'rootfs-image' is not supported by this Mender Client.&nbsp;(=E2=80=
=A6)=E2=80=9D then you edit /data/mender/mender.conf and set the followin=
g content:</p><p>{<br>  "RootfsPartA": "/dev/mmcblk0p2",<br>  "RootfsPart=
B": "/dev/mmcblk0p3"<br>}</p><p>Then you should be able to run the mender=
 update to UHD 4.8.</p><p>If it still does not work, another option would=
 be to expose the eMMC as mass storage device to the host PC and flash it=
 from there (similar as you would flash an image to a USB stick). This is=
 described here: https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_=
accessing_emmc_usb</p><p>Kind regards,<br>J=C3=B6rg</p>


--b1_D1tLO9NN2lY3KHbz0tsun6LLKEGdFr0N8KrugOlugE--

--===============1765305250543861111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1765305250543861111==--
