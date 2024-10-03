Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD4998F9D9
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 00:27:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 892413858CE
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 18:27:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727994457; bh=bWmy3GXm/FfxFZjESK2IqFYiqNs2fus5uOLh2EV6c/c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SLG8mBhXwyZQlX88P7h/CeA54Tac1VJBPhhKEymGA6Y2E6L7vbWyBRNR1aUaZkYyB
	 oKxTHjq8jcmZfVKH+Bji9Qg5cfep6oZSpJAEFAEqBdZdxbkfX7F94LuWfWvecjlul5
	 DQt4nNSe6ltLXv9lbYXEeZ/R+gwDgJ5xySL2Hmp3yzFqdh2p+TrfqdUe/kxOw41DWt
	 4ruWj4/E91Ffr2tGvEpb+pyfgn15USFqWVIBwTPD7xL2lNZu4/A0wnNqE3GcXWE88H
	 LJN+60AcYZ2I0dkbK1GnY1pawxHYu5/GGRTjExyyYtFuK2Qe1yAZuutDoAXAUG3n/Z
	 xnx0cRaE/k7dQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97D6D385889
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 18:27:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727994453; bh=a6v2U8qj2qylhdF58uKqeZrMPIRUIpN/mIiTFhpjK7A=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aM8jXcqe3gbtfN7RZ2OXy3TVXfeWBOK/eBl8I21+JvZ8XoY2CkK7iIIpJvuDrgbyl
	 9/VASGswMBUjNEV9BOdgYcBlWXourVg5+a/1Cve0G9zzTcp2A+H5Btzd/Wmdhugz00
	 hkDnJ1Bn0+rgojnDK3cYqRpeuezmvrSuPSFZwEkI0NeRWhuoofx1gObBxLYFthpFja
	 UyxKIgaVxBipdr4FL9x2eV26iEyiXn5+dWkXAVUlhUwDfOmCEJQkT+oybbDHTMa5IC
	 PFsMG92sY1a+aF3EIIl4V7QVsezWFOlj0/lV/IEEKKuci9rHMePNTgAAY6C7ZwPT53
	 M5jf4yedYRBPw==
Date: Thu, 3 Oct 2024 22:27:33 +0000
To: usrp-users@lists.ettus.com
From: shapkiquarry@gmail.com
Message-ID: <4uipCyETSBEN8uOTi8PicBTBzyP5jkyBhPOimT1raWk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7ff9d88d-c4a7-4a42-9b32-ca0f8dffcd73@gmail.com
MIME-Version: 1.0
Message-ID-Hash: BRC32BH5U5Q4XYI7JB7UGPECZCAVWFDF
X-Message-ID-Hash: BRC32BH5U5Q4XYI7JB7UGPECZCAVWFDF
X-MailFrom: shapkiquarry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Octoclock CDA-2990 produces no signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BRC32BH5U5Q4XYI7JB7UGPECZCAVWFDF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2136987821344326604=="

This is a multi-part message in MIME format.

--===============2136987821344326604==
Content-Type: multipart/alternative;
 boundary="b1_4uipCyETSBEN8uOTi8PicBTBzyP5jkyBhPOimT1raWk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4uipCyETSBEN8uOTi8PicBTBzyP5jkyBhPOimT1raWk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

Thanks for the reply.  I have two of these Octoclocks and the second one =
is doing exactly what I said.  It is blinking the PPS and sending a 10MHz=
 square wave to an SOC=E2=80=99s  REF_CLK.  This is happening right now, =
a few feet to my right.  These are identical models.  I can take a photo =
if you like. =20

On the frozen/broken unit,  there is a GPSDO decal sticker on the back si=
de. We have been using it for its PPS and 10MHz output signals for many w=
eeks now.   Both signals appear clearly on an oscilloscope. Only today it=
 has failed.=20

What should I try now?     Should I log into it via network?

--b1_4uipCyETSBEN8uOTi8PicBTBzyP5jkyBhPOimT1raWk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Marcus,</p><p>Thanks for the reply.  I have two of these Octocloc=
ks and the second one is doing exactly what I said.  It is blinking the P=
PS and sending a 10MHz square wave to an SOC=E2=80=99s  REF_CLK.  This is=
 happening right now, a few feet to my right.  These are identical models=
.  I can take a photo if you like.  </p><p>On the frozen/broken unit,  th=
ere is a GPSDO decal sticker on the back side. We have been using it for =
its PPS and 10MHz output signals for many weeks now.   Both signals appea=
r clearly on an oscilloscope. Only today it has failed. </p><p>What shoul=
d I try now?     Should I log into it via network?  </p><p><br></p><p><br=
></p>


--b1_4uipCyETSBEN8uOTi8PicBTBzyP5jkyBhPOimT1raWk--

--===============2136987821344326604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2136987821344326604==--
