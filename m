Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CDDB9AB94
	for <lists+usrp-users@lfdr.de>; Wed, 24 Sep 2025 17:39:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1187385E91
	for <lists+usrp-users@lfdr.de>; Wed, 24 Sep 2025 11:39:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758728367; bh=CEVKk1eC8PWbf8LQoS0kUBbsYDOsD5RsTplRcT3oUGo=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=zQA6NLR76qRj1Zv9bjORqZycQc6RrGoxZ7F7mLYuIPT5edBU9UHXpm4aG9cF0m9tx
	 5tWQdtyKspe5EYPeud4WgWLi+A4jvgN9RxZa0/2bsDLvC601C/kzlnSQT6HsNqQLZh
	 ZiIehioKqXt4vIu3pE2whsjfPp6nolO0uwPNmoWzdQWOPo9I320zqkthfgrbGnZYkS
	 e3Bbc5IyRidz3qE9R/sZ3R3Z8VmYsnRm842wn8uHKkN34vWsbmoF685U6x0UtaYylN
	 HbxVR7lYIFuzwBw4/77wmF4WIhY3n6YdDNpGFANhxfsKFxqvwg9T17eCuzfxEiO1dN
	 o4He66mbxIAAg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B836D385DD1
	for <usrp-users@lists.ettus.com>; Wed, 24 Sep 2025 11:38:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758728330; bh=mfM+vxUkVnjTlUZU7W2UBCvcCy153PawFkhA0KYDtKQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZlTy4lo7LNMo9knjRNxxNunteLkQGlvl4Cp+hUyU6HBr+E4wgDRJutj9lOTeOJdjA
	 oOHeiAyBNhPzEZsdP0VGkmkEF3E5nnzOIVRrQAq70gLyTLMEt4HBQ8cad1JnLQ4LDO
	 Fjp3gtPohsKWac4+EW4FfngT/vC9q15TGLHlV3YxtCftSJ74/7soZ1d5C1d7xPq6TP
	 wMM0i/HtkCVWBbkN/R9zVUj4Mizb1CEnSfh+wj+UupVEocQoBdE0Qie6HoJYw7AcCP
	 851mrd5g4m26M4RDaSa28UEMFQVU7iFvGwOVvh39TqnrIDHtjxnOO0xS6lG1OrrjXB
	 l2Gl+b+nZdJJg==
Date: Wed, 24 Sep 2025 15:38:50 +0000
To: usrp-users@lists.ettus.com
Message-ID: <RO4GkomSLaKbZpeoikLQHxPnUE2fQBGFsQg7nTzyXk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A61wB3Y58BXT_z=5dN4eudWw6ymQEtkdC0uf6-opG753g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5KZELFB7XDAHWRUG7IJXDCURBRX4XLSD
X-Message-ID-Hash: 5KZELFB7XDAHWRUG7IJXDCURBRX4XLSD
X-MailFrom: peter.gu@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5KZELFB7XDAHWRUG7IJXDCURBRX4XLSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Peter Gu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: peter.gu@tum.de
Content-Type: multipart/mixed; boundary="===============5810794942816715464=="

This is a multi-part message in MIME format.

--===============5810794942816715464==
Content-Type: multipart/alternative;
 boundary="b1_RO4GkomSLaKbZpeoikLQHxPnUE2fQBGFsQg7nTzyXk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RO4GkomSLaKbZpeoikLQHxPnUE2fQBGFsQg7nTzyXk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Martin,

thanks for the fast reply! I managed to build the image with three SEPs a=
nd just one replay block. However I have three more questions:

1) I was not able to find a .grc template which was given in <UHD4.6, e.g=
. shown in this video https://www.youtube.com/watch?v=3DM9ntwQie9vs Are t=
here any examples available from your team?

2) https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Example_RFN=
oC_Image states that the rfnoc_modtool should be used. However according =
to https://man.archlinux.org/man/extra/libuhd/rfnoc_modtool.1.en there ar=
e way more instructions, e.g. add-gr-oot. I know this instruction is for =
UHD4.9.0.0, but I wasn=E2=80=99t able to find it for UHD4.8.0.0, which i =
am currently using. In UHD4.8.0.0, it seems that rfnoc_modtool only suppo=
rts create and add.

Further, it seems to me that there are no instructions available how to u=
se rfnoc_modtool, did i just missed them and if yes, can you please send =
me the link?

3) I saw that you moved from .v to .sv files. What are the reasons?

Thanks!

Best,

Peter

--b1_RO4GkomSLaKbZpeoikLQHxPnUE2fQBGFsQg7nTzyXk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Martin,</p><p><br></p><p>thanks for the fast reply! I managed to b=
uild the image with three SEPs and just one replay block. However I have th=
ree more questions:</p><p>1) I was not able to find a .grc template which w=
as given in &lt;UHD4.6, e.g. shown in this video https://www.youtube.com/wa=
tch?v=3DM9ntwQie9vs Are there any examples available from your team?</p><p>=
2) https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Example_RFNoC=
_Image states that the rfnoc_modtool should be used. However according to h=
ttps://man.archlinux.org/man/extra/libuhd/rfnoc_modtool.1.en there are way =
more instructions, e.g. add-gr-oot. I know this instruction is for UHD4.9.0=
.0, but I wasn=E2=80=99t able to find it for UHD4.8.0.0, which i am current=
ly using. In UHD4.8.0.0, it seems that rfnoc_modtool only supports create a=
nd add.</p><p>Further, it seems to me that there are no instructions availa=
ble how to use rfnoc_modtool, did i just missed them and if yes, can you pl=
ease send me the link?</p><p>3) I saw that you moved from .v to .sv files. =
What are the reasons?</p><p>Thanks!</p><p><br></p><p>Best,</p><p>Peter</p>

--b1_RO4GkomSLaKbZpeoikLQHxPnUE2fQBGFsQg7nTzyXk--

--===============5810794942816715464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5810794942816715464==--
