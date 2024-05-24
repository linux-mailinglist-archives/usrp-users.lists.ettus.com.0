Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D424D8CE374
	for <lists+usrp-users@lfdr.de>; Fri, 24 May 2024 11:31:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8345C385649
	for <lists+usrp-users@lfdr.de>; Fri, 24 May 2024 05:31:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716543117; bh=b2EgyHIyKq4YKD47deGy37hb4Qfy+huMix9UohcQ0Xc=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=LjrYNtdj0I8u+ZRHWT56s3EbD6SAmf9fBXRchOdLohnn1N7ZXhu96retZ1C0qzuQs
	 RyU5JOb8cLbyg5fB+Bh84ctdwF+DSysbVo5o0zxvD4dCJPTYhyAhCT1Eql+2ENxwX7
	 XQQaIjKG22fbmPXhy42cY+Z0N2qPVhmR1HyQieMDdBaMVLdS+E37gjusRJKh3jMZ0I
	 3Q1/ZC/MUKzceM9lI9VB8SJ6Z83cfXXw6N4m7KuHf/c5xlIRlMTcWJ/E5jsgM789DK
	 6ZYymKIq59ZGbHTCejvQR7Py9SG3IG1VcCzy9BfcZlTm9xHbTXzctvRQjqPgo+0mtp
	 qFDnOEZdsE/ww==
Received: from mailin.dlr.de (mailin.dlr.de [194.94.201.12])
	by mm2.emwd.com (Postfix) with ESMTPS id BD20D3855F9
	for <usrp-users@lists.ettus.com>; Fri, 24 May 2024 05:31:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dlr.de header.i=@dlr.de header.b="XgBK8pLo";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=dlr.de; i=@dlr.de; q=dns/txt; s=052022;
  t=1716543088; x=1748079088;
  h=from:to:subject:date:message-id:mime-version;
  bh=NzPwIbLo9RLOXl0/uJGYbhgkIWG8MUJSIvSGHsjmYB8=;
  b=XgBK8pLoill/Wme6lacpjGEWMx4zQEmJ0aNmdjJewv5x9OLLeOKxr8li
   BVuWci4rGl5qYsh7dln2D8+YoQbX7nZ1gXpLYN7Xz0peiDRDTUcta3v4Q
   OY2VQJEeyEWqNOtZuGtmQpn+JT+UjACkJ1Ek87Mh6qNxf3vTNHvyA7fVB
   IxKmvZQwHb10ps6BeICsFkA/vmLlbuigFgaTPIMikhHTAvPyLhRBZuXNe
   kCXdT5d/0/1+p7jweUrqVp9GC7+y8zuPaWiRDcpX5HdBj7RTLyocaY/we
   aBw8DLwi2OHfGgYMjFW3JB8ReCGxOEjAH6KhmgbZy4LQbwJIai989G1xd
   Q==;
X-CSE-ConnectionGUID: v5ZTIP9mQ5WDWG5EJ0gUFA==
X-CSE-MsgGUID: bVhsvx8cTnqp7pCxt5n/qw==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A2FeBABjXVBm/xmKuApagQmBT4FBgX2CA7Jag1QPAQEBA?=
 =?us-ascii?q?QEBAQEBCAFEBAEBjVInNwYOAQIEAQEBAQMCAwEBAQEBAQEBBgEBBgEBAQEBA?=
 =?us-ascii?q?QYGAQKBGYUvUoJghREBDAFyJwQbhRUNO7FmgTSBAYR62yOBSIgUGgEkSGmLN?=
 =?us-ascii?q?oEVgnmFf4V3BIEThngBjX2DbIgVhACGdCyBHyIDJjMyAQ9GExcLPh0CFgMbF?=
 =?us-ascii?q?AQwDwkLJioGOQISDAYGBlk0CQQjAwgEA0IDIHERAwQaBAsHdYMlBBNHgTeJc?=
 =?us-ascii?q?4M7gh6EHkuEcoF2DmGKDoFHgg4dQAMLB2Y9NRQbBgIBgTWjdgSFW4IqohmBe?=
 =?us-ascii?q?qFVB4I2oxguF5dHkm6YY6M4hSgCBAIEBQIXgXuCAHGDN1EXAg/cYIEzAgcLA?=
 =?us-ascii?q?QEDCYZIglosgRwBAQ?=
IronPort-PHdr: A9a23:3wGAiBw76FmJ2KDXCzJ5ylBlVkEcU1XcAAcZ59Idhq5Udez7ptK+Z
 h2Zv6s9xwaSFazgqNt6yMPu+5j6XmIB5ZvT+FsjS7drEzIjt4A9sjdkPvS4D1bmJuXhdS0wE
 ZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZrKeTpAI7SiNm82/yv95HJbAhEmj6wbalsI
 Bi3rgjdudQajIV/Iast1xXFpWdFdOtRyW50P1yYggzy5t23/J5t8iRQv+wu+stdWqjkfKo2U
 KJVAi0+P246/MPkugDPQBWA6HUBSmkZnQZGDAbD7BHhQ5f+qTD6ufZn2CmbJsL5U7Y5Uim/4
 qhxSR/ojCAHNyMl8GzSl8d9gr5XrA6nqhdixYPffYObO+dkfq7Ffd0UW3dPXtpfWSJCA4Ozc
 4QAAvEbMupErYnwvUcCoQejCQSqGejhyiVIhnjz3aAi1OkhFRzG0xYgHt4UqnTbttL1NLoIX
 uC216TH0DHDb+lM1Tjg9ofFaxYsquyDUrxsa8Te01UvFx/bgVWKr4zoJz2b2+QCvWWU4OdtV
 f6jhmEppQ1vvDWhydoghpTUio8a11zI6Dt1zoYxKNO2VEN1b96pHZteuSyENIZ7TMwsTm5ut
 S0nybMGoYa2cDUWxJg92hLSaPOKf5KV7h/tV+udOyl0iXJ9dL6imxq+61Wsx+7zW8WuzVpHo
 ClInsPSun0N2BHe7NWMROFn8Ue7wzmP0hje6uRDIU8pi6XWM4UhwrsslpoLtkTDAzP2lF32j
 KCIckUk/fCl5erhbLvoqZGSN496hAb9PKopgMKzH+Q1PAcPUGWF4+i81bvj/VHjQLpQlPE5j
 63ZsIrAKcsGuKG1Gw5V0oA95BajFzqqzcgUkWMaIF9Gdx+LlZXlNl/NLfziE/uyg0ygkDJxy
 PDHOr3hDI/NLn/GkLr5ebZ99lRTyQopwdBF/Z1UDawBL+jwWkLqqdPYCgU5PxapzOn5ENl90
 JgRVnqVAqCFKKPSrUOI5uU3LuWRfIMVoiryK+A55/7yin80gUIdfbKz3ZsPcXy4A+9mLFuDY
 Xr3mdoBFWYKvhEiTOzxklGNTyJTZ2qvX6In/D00FIWmDYLbSo+wg7yB3SK7E4VOaG5JBF+CD
 2vmepmCVfsUcyKSOsFhnyQcW7a4U4Ev2gmitBTiy7ppNuXU+jMXtZbk1NVt/+PdjAk8+zMnR
 /iahjWQVHts234TSiUt9KR+ulBmjFqfzbVjxfdfEIoAyelOV1JuMYPV3qpgAtfvUwHpctOTD
 lqrFIb1SQotR848loddK312HM+v20ir4g==
IronPort-Data: A9a23:/nQAn6tZAiaQwA54tLEciu6pbufnVO1cMUV32f8akzHdYApBsoF/q
 tZmKWiHbKvcYDf0c9lxPNy2pk1Qv5bWzodiGQZrri1jEHwTgMeUXt7xwmUcns+xwm8vaGo9s
 q3yv/GZdJhcokf0/0rrav656yAkiclkf5KkYMbcICd9WAR4fykojBNnioYRj5Vh6TSDK1rlV
 eja/YuHaDdJ5xYuajhIs//Z9Es11BjPkGpwUmIWNKgjUGD2yiF94KI3fcmZM3b+S49IKe+2L
 86rIGaRpz6xE78FU7tJo56jGqE4aue60Tum1hK6b5Ofbi1q/UTe5Eqa2M00Mi+7gx3R9zx4J
 U4kWZaYEW/FNYWU8AgRvoUx/4iT8sSq9ZeeSUVTv/B/wGXYLknQ4s0/CXhrAqEn1btaIzlBy
 NIxfWVlghCr34pawZqXbsVBqOoGDezTZt4yilomzDfFF/9gTZTZBanHjTNa9G5owJkeQbCHP
 JpfM2cHgBfoOnWjPn8TFZsv2v2hgWT2cBVUrEjTqadfD237nF0tjuW9bbI5fPSAe8VOgFbIr
 V7A5nymGjoKKIGZjiOapyfEaujn2HmTtJgpPKCj7OYvnUae3Hc7DBwNSUD9rOWll1X4UNVaQ
 3H44QIiqaQ/+kKuT9zlBUC1sHXCvxgAQdMWH+kgrg2AokbJ3zuk6qE/ZmYpQLQbWAUeHFTGC
 nfhcwvVOAFS
IronPort-HdrOrdr: A9a23:67SI26zgYQYNFK5xkmwqKrPwF71zdoMgy1knxilNoERuA66lfr
 OV7ZEmPH7P+U8ssR4b+exoVJPsfZq+z+8M3WByB8bAYOCOggLBR+tfBODZrAEIbheeygcr78
 ldmsZFZOEYRmIK6foSqDPIdOrI7uP3lpyVuQ==
X-Talos-CUID: =?us-ascii?q?9a23=3Afe1+CGk7rsi0jUFYSzn9huEthmTXOWOA/kvxGx6?=
 =?us-ascii?q?9MDtWZIK6FHKyoKxZveM7zg=3D=3D?=
X-Talos-MUID: 9a23:eQIxXgUYRRkLzt7q/DXShCp8JJdj36K3EB8VuoUa5s/DLDMlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.08,185,1712613600";
   d="scan'208,217";a="8946585"
To: <usrp-users@lists.ettus.com>
Thread-Topic: Building OOT RFNoC modules for GNURadio 3.10
Thread-Index: AQHarbvHKBSEruRJK062pW6XIgPiMw==
Date: Fri, 24 May 2024 09:31:24 +0000
Message-ID: <b0de60b60daa4deba082bc68323b249d@dlr.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Message-ID-Hash: OZJRNIWRWWAGEP2GALQ6TCJAXSUY74X6
X-Message-ID-Hash: OZJRNIWRWWAGEP2GALQ6TCJAXSUY74X6
X-MailFrom: luay.raouak@dlr.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building OOT RFNoC modules for GNURadio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OZJRNIWRWWAGEP2GALQ6TCJAXSUY74X6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "luay.raouak--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: luay.raouak@dlr.de
Content-Type: multipart/mixed; boundary="===============4455326846326684085=="

--===============4455326846326684085==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b0de60b60daa4deba082bc68323b249ddlrde_"

--_000_b0de60b60daa4deba082bc68323b249ddlrde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello fellow usrp users,


I would like to build custom RFNoC blocks for use with gnuradio 3.10 but I =
have not found any documentation on how to do it for this version. I know t=
hat for gnuradio 3.8 and lower gr-ettus was utilized to create the grc bind=
ings necessary thanks to the RFNoC modtool but with the latter deprecated f=
or gnuradio 3.9+ I find myself in a dead end. Has anyone managed to find a =
way to circumvent this issue? Any help would be very much appreciated.


Setup:

Platform: Ubuntu 20.04
Hardware: USRP X310
UHD version: 4.6
GNURadio version: 3.10



Best regards,

--_000_b0de60b60daa4deba082bc68323b249ddlrde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello fellow usrp users,</p>
<p><br>
</p>
<p>I would like to build custom RFNoC blocks for use with gnuradio 3.10 but=
 I have not found any documentation on how to do it for this version. I kno=
w that for gnuradio 3.8 and lower gr-ettus was utilized to create the grc b=
indings necessary thanks to the
 RFNoC modtool but with the latter deprecated for gnuradio 3.9&#43; I find =
myself in a dead end. Has anyone managed to find a way to circumvent this i=
ssue? Any help would be very much appreciated.</p>
<p><br>
</p>
<p><u>Setup:</u></p>
<p></p>
<div>Platform: Ubuntu 20.04<br>
Hardware: USRP X310<br>
UHD version: 4.6<br>
GNURadio version: 3.10</div>
<div><br>
</div>
<p></p>
<p><br>
</p>
<p>Best regards,</p>
</div>
</body>
</html>

--_000_b0de60b60daa4deba082bc68323b249ddlrde_--

--===============4455326846326684085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4455326846326684085==--
