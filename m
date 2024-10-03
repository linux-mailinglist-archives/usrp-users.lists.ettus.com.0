Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BA198F837
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 22:49:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE04638583F
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 16:49:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727988561; bh=CgPzexTrv8Z72K96+D7dxqAXCTN1gg9r3yMxsxiBsak=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0RhhW6krFJtNO3egbkagNMm75nsgHuuwmgmc+kLQDrHD5ksFvoiNAbPyGavj12eKv
	 kFyw1JYMcRZ2/gYsAWWHnmkS4B435fEaXrnzCa1iPjS2Gdp86eRafEavkfQB/L4MhU
	 WsXtppYBVgpu56YEDmzyxYfYyZct6wUZ8vS9+lnVtuqxAIaf4p2me3/X1+FA2NVjSN
	 RsQ7LkgbeF7yt74sGmhCdZfJytFOwOa4RP0nQNd4wRivzID4w+oO+KV7mib82o3QY6
	 Y4+hcIWJRYEsZeIimbWf697mzV+dJVc118QdzQ/9iuD34nTxDEBMZjaGc+GMXgN0lJ
	 +0eDicLeYZFmA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0774B38580C
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 16:49:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727988557; bh=yfNuOUfivuQMJ2xgcD0l8U/ijzim5Mj9U9xm3u/iXig=;
	h=Date:To:From:Subject:From;
	b=eSs8Fsjh5POKO5cA2zDG+YNJuaERPWpwuIs2dUKERX2hB9cgT8UReFG73uiPhur9+
	 WkBadM5DJhHyOdKxmWQRIaUnqcD95gQTDXJoPX9C1QscnK306N3lXrlSS9mOx50abN
	 9QX48Cg3WJAXmIQenAgP7sjkwqLB8c1P92TTWxf9NnrhddRp4s6GrOCKSGRtY6fudb
	 WU13VG1eYnA2Yg0NbTwpGJIrycZ2PByNdzpW1+xxQy5qmRsDbinV31b41wamxNaBQo
	 Dicgw+EYyXj1gblTUUf/+qMSegpa+lemzgbIbrOY+vSpSzVbtxuoRl2YP2Qix81zBx
	 a7iejZGckEDHw==
Date: Thu, 3 Oct 2024 20:49:17 +0000
To: usrp-users@lists.ettus.com
From: shapkiquarry@gmail.com
Message-ID: <vjzQn2dRX9D51dcN8KdgHcLmEY9NVF8y9OIHtqS8Ejw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: JN6VKCTGRFTAF5UBKYH6QVCCFM4QRO54
X-Message-ID-Hash: JN6VKCTGRFTAF5UBKYH6QVCCFM4QRO54
X-MailFrom: shapkiquarry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Octoclock CDA-2990 produces no signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JN6VKCTGRFTAF5UBKYH6QVCCFM4QRO54/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7406008657849101975=="

This is a multi-part message in MIME format.

--===============7406008657849101975==
Content-Type: multipart/alternative;
 boundary="b1_vjzQn2dRX9D51dcN8KdgHcLmEY9NVF8y9OIHtqS8Ejw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vjzQn2dRX9D51dcN8KdgHcLmEY9NVF8y9OIHtqS8Ejw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Upon power up, the Octoclock should show all green LEDs on to the left.  =
After several seconds, the =E2=80=9CExternal=E2=80=9D  LED should turn of=
f, and the PPS should begin to blink once per second.  Instead ,this Octo=
clock simply goes frozen in a state in which the =E2=80=9CInternal=E2=80=9D=
 =E2=80=9CExternal=E2=80=9D and =E2=80=9CStatus=E2=80=9D LEDs remain stuc=
k on.  Nothing occurs after an hour of waiting.  The stuck LEDs are shown=
 in the attached image.=20

An oscilloscope was used to test the unit, and no signals are produced by=
 any output. No PPS signals are generated, no 10MHz are seen from any of =
the front panel SMAs. =20

How should I proceed with troubleshooting this Octoclock?

--b1_vjzQn2dRX9D51dcN8KdgHcLmEY9NVF8y9OIHtqS8Ejw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Upon power up, the Octoclock should show all green LEDs on to the left=
.  After several seconds, the =E2=80=9CExternal=E2=80=9D  LED should turn=
 off, and the PPS should begin to blink once per second.  Instead ,this O=
ctoclock simply goes frozen in a state in which the =E2=80=9CInternal=E2=80=
=9D =E2=80=9CExternal=E2=80=9D and =E2=80=9CStatus=E2=80=9D LEDs remain s=
tuck on.  Nothing occurs after an hour of waiting.  The stuck LEDs are sh=
own in the attached image. </p><p>An oscilloscope was used to test the un=
it, and no signals are produced by any output. No PPS signals are generat=
ed, no 10MHz are seen from any of the front panel SMAs.  </p><p>How shoul=
d I proceed with troubleshooting this Octoclock?  </p>


--b1_vjzQn2dRX9D51dcN8KdgHcLmEY9NVF8y9OIHtqS8Ejw--

--===============7406008657849101975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7406008657849101975==--
