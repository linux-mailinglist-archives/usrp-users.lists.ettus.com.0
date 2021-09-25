Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D22417F80
	for <lists+usrp-users@lfdr.de>; Sat, 25 Sep 2021 05:25:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D0F5383EB1
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 23:25:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="X+ELPzpM";
	dkim-atps=neutral
Received: from sonic313-15.consmr.mail.bf2.yahoo.com (sonic313-15.consmr.mail.bf2.yahoo.com [74.6.133.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AA86383DE0
	for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 23:25:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632540300; bh=5jUiSNFfA43wjrx9CyGgdGQs7hxhXuvubip3v/rbCUI=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=X+ELPzpMNvBAm4K+IHmZLPGspx0RlNjdTnxzL8adc4tRL4w2nK4nb0TD1vP1cNoM1Ix0pMbiG0LjKpC4ryrMEoP2ufTXnT0G2EdD3Id72ss/bg+l8xCRwLNvzrpj2k9ybYkWmFBBRiKj8xldZV8DvC6oH8QLmgmEh74c3OzImjR39EAiq+Ql0O5eBxrrOAa1cKz6zdSm3QNQYxPutwjilcwGDa01vPN0EyxzaF1fgMRgp/B/9/t8Ch3nLmoN9W135IAN6WobL77Aa9ItvzzWv0iIPcMrgRe6H7tC3i2ws4WDUm4N2TIyQ/GmpvAVhpW+jFHDqK2uQMiI6IcGf7Gmsw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632540300; bh=balYaR7kbFY298NtELD0+gS1T6Hgqnae7MhcSdVZIPw=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=bA0gG3h4lmcoTzypQvd9M/mzlCoyPb9OUlNa+iFE1mGU6nD7ccWqPzFMXPtX8vMv6rNmsX2m/cWHmrxXUG4EiVfdiWwwO0wbq0/O3erF9/a5VQfmrs/AZjh7nYaBRhjhHr7fgCilhfbE89k6QlQN4iqE5UnL6BltXXUq03BSKayJdEr7PYDwiPCz7q7BYgN9micCOl0b3shzQus6K4HU8s2u5cZOUZ5GHS2705MC8ly8k7TgtSONyYF171laUHLkXcdTE0NcftE0Sntwhvm50lVGN3o0O7GyoMCGb55STHhcbK75SrLJM/yyh116C6cey4zpJYCL4kdlBOqMbT5OhQ==
X-YMail-OSG: BOF8fRIVM1mmyAPaVEFx3cf.a9rpIpeMlprDLBMLFjlzUYy32mi4RsYWndqHbmP
 67pmx9dlXoU1PeqPIVDjzoz7YsyM9w96aNNFynt5GZ6NyTcWlemta9WIc6DJ4eFQhqFHRmXpqA9X
 0DJiccMU0BlsuvP9xGqgw5EYzktxQQe2VWhilJv3pC04HlGTTNfgB9yBdQfqezjTTqVjehXsfU6q
 iOpK82ofy8Ub6_EjCWhn7K6fGLYhzZ6x8QyD3l0_.A1zYJqaCCogmIOPU25iqcUAkJP_xpfAkYgW
 PFfyPGu4a79qzOKWihrsiBoAzlhJXXgnc_yhXoBfdun_Dtgs4wOt175CBAUkYp0_FPFfpVR068zs
 lBcEbnQaDOh1iGb0WfBp5jW9pGHVOcsNNVKU0q53rbfma9FhsxhHTLPB.WqXTyRtfoVKBNXcPXRd
 QT55fDj6K5CljvM6ll9Fnu8YRbBAS4Vir2qnT19Vw0lBuzSDTPMzvTpYHpYWhfN1aNN6oggh9Kuh
 pC6luK1GIMd2JGanGjXxC0idI_GJO0fllZAHbx2p26yP5nsTvwY_SdNojmBIt22CfFU1Tvv6zpA1
 KuMtJlpvqtomITGu.erq_2iMd6_aENSGYz9YC9DuGnA2rk68imgXLhfiw89t6SVdPyedWfcWvDU5
 8c32I.rvlQ7LAs2uZls052qWLFVD.qMy0Cu1ilaeRLTvxg9kjVBE6cbaSnbliCjroZ5ELYfAPdAj
 1ciocnG3XwcyK8XZ685Ds_6H1BQhaYDpA0LaGpgCY4hx1FaKL4hbRhBhvkOWnQp8TXH2QhNMXf63
 .KC4kvSYd45eM_SDvVQK6hOZRLu32VON.aclgfQXrliTHpwq8GfzmZ1Jbe8goZ0MrzQhDId.h49B
 oeK8xn1JxvDn2yvKEoFNN3QXjC1X8iEcjtkFX0mWhpscojMMK7wm.k5ZO04sPQF2iqyqiARg4a.H
 YORKXfvPNAbt3myDYh_NLnmjz5stbAqVYAqOXV8rkkqzwc.0Fq5hNwkVWxl9FvCuDlmaYplgcGb0
 Tjbzlz7QBn9H_QS6zYmZ.kSF1rqmV82YK8U8uOSBZ0IvfpaYZ.Lk6K3pALWDNUrBBAgvWoH8r0Zj
 Zifs.UGXrUnaC9lXpTd36V9qOm8CDKlrLNl8BDB2fjkhr5Pppne60uAFvjRBiQwzL65OIgON1IOi
 UADnfB16CmuXjg4AuSLRyIQF4wpoUEq7XmIKLJ025nIFD6QA6fZndkO1DblFDkfec44JYitB2..Q
 w9Rh3jzzApJhtPzhjiatUsZaJPnZ4tk0XL9AwyduOcT.w0YT93u1yqOxV_XHDg10rqt7F0wJfS4b
 cfiAEoTR_fZW_LG0W7.anFe.1k1fuo7l6SiXlmmlJpIGZX5HGy5M_0CIchUFNGHO30wP6E0cbROE
 ZVN79h_lPfbxB0jukvX0dFEuDxCvvQJXGb7Ss3acoL7Ydbc1BDJG2U_hf0tzjuYuZ7szKcC_O90_
 Lg7mVIaOui.j41uUyzloBdfuiaiTD_ezsaUzyI_9UvlG5srIuqJ5WiZQS4NCDV1hGuqsnONEMPKj
 oE9T7WLXavfZoI7jVSiq405mMSXc7J5HBMtz7y9jk2IhN8FUVTmRUMXKU69xij63Yg_bDLvqpgF3
 PXCQOCq2GESC.wnoV6mKUEf00sRA7t1yi8_iDyGguvvNzMhiK68f8u.p2KRRpnCVS7lpwnqID0Js
 nVSrE_41GtlxDLvi79FD0.WhuTtwAfS_oK4TORenkljAI7kOCMwgu2adBhUkx_.4BvJP_DwKbXwc
 Kz.M5bwrG5ZIn9itoxS6a.8ihOFWJjNnxrj7gC5GgHOmdVtyzvQbFFqu_.BVqn8zAFtZ0c0DSn4b
 EXSIHuu4HpKEAHwavmtoQaGR9R0kfEahHpaXnRFRy5EAUKcBVWOMzUDuCcuTjrR7WS89XgUciLP9
 QlELCDSppPfVmVT61n2ZfqFXbyYlI7eB6Qu7omYQN4iFNOjfnKlB3e7bjsfSSyQj.2BjchxVlQEU
 qPWs8o2WEtlt1uXBJ3wt6ZeHyoWTmMzvcvoFpffw0SOnavw5kv5NTHlTBpPGkeirEmm24UjE1aOU
 BoF_3GgWmxut4YS_SFOw94Y4wECAnxMjYdq.JR8EYE2.wN08fxf.TJHam3_8BOhR_GL.LBFXobHA
 RX0oBUa2XAjE3XWP2b8qjRYJq2txCjJeR5LbOqNB34vUPfJOonHi6_UT4N0Xy03anDlnnA15NnGI
 3JkViK063Ux2Vfi6MnNEJAHjtCfBD0gKKmcJWsNiaWrrzXzUeLWgwP9hI0VHdBLAHa0EJzY_90x8
 -
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.bf2.yahoo.com with HTTP; Sat, 25 Sep 2021 03:25:00 +0000
Date: Sat, 25 Sep 2021 03:25:00 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <240673658.793208.1632540300003@mail.yahoo.com>
MIME-Version: 1.0
References: <240673658.793208.1632540300003.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.19043 YMailNorrin
Message-ID-Hash: K4ZQKYODZJ2YJF75AT7WZEXJ4OPG62IA
X-Message-ID-Hash: K4ZQKYODZJ2YJF75AT7WZEXJ4OPG62IA
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Cross Compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K4ZQKYODZJ2YJF75AT7WZEXJ4OPG62IA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6349520000608201655=="

--===============6349520000608201655==
Content-Type: multipart/alternative;
	boundary="----=_Part_793207_742399558.1632540300001"

------=_Part_793207_742399558.1632540300001
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm currently building an application that I want to run on the N310. I'm f=
ollowing the link attached=C2=A0
USRP Hardware Driver and USRP Manual: USRP N3xx Series

|=20
|=20
|  |=20
USRP Hardware Driver and USRP Manual: USRP N3xx Series


 |

 |

 |


where I've downloaded and installed the sdk toolchain and set the necessary=
 paths, however, is it necessary as well to cross-compile UHD as well for t=
he N310??



------=_Part_793207_742399558.1632540300001
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" xmlns:v=3D"urn:schemas-microso=
ft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"><head><!--[=
if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>=
96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><bo=
dy><div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;"><div dir=3D"ltr" data-setdir=3D"=
false">I'm currently building an application that I want to run on the N310=
. I'm following the link attached&nbsp;</div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><a href=3D"http=
s://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk" rel=
=3D"nofollow" target=3D"_blank" class=3D"enhancr_card_2783769732">USRP Hard=
ware Driver and USRP Manual: USRP N3xx Series</a></div><div><br></div><div =
id=3D"ydpf9c86721enhancr_card_2783769732" class=3D"ydpf9c86721yahoo-link-en=
hancr-card ydpf9c86721yahoo-link-enhancr-not-allow-cover ydpf9c86721ymail-p=
reserve-class ydpf9c86721ymail-preserve-style" style=3D"max-width:400px;fon=
t-family:YahooSans, &quot;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Helve=
tica, Arial, sans-serif" data-url=3D"https://files.ettus.com/manual/page_us=
rp_n3xx.html#n3xx_software_dev_sdk" data-type=3D"YENHANCER" data-size=3D"ME=
DIUM" contenteditable=3D"false"><a href=3D"https://files.ettus.com/manual/p=
age_usrp_n3xx.html#n3xx_software_dev_sdk" style=3D"text-decoration-line: no=
ne !important; text-decoration-style: solid !important; text-decoration-col=
or: currentcolor !important; color: rgb(0, 0, 0) !important;" class=3D"ydpf=
9c86721yahoo-enhancr-cardlink" rel=3D"nofollow" target=3D"_blank"><table cl=
ass=3D"ydpf9c86721card-wrapper ydpf9c86721yahoo-ignore-table" style=3D"max-=
width:400px" cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><t=
d width=3D"400"><table class=3D"ydpf9c86721card ydpf9c86721yahoo-ignore-tab=
le" style=3D"max-width:400px;border-width:1px;border-style:solid;border-col=
or:rgb(224, 228, 233);border-radius:2px" width=3D"100%" cellspacing=3D"0" c=
ellpadding=3D"0" border=3D"0"><tbody><tr><td><table class=3D"ydpf9c86721car=
d-info ydpf9c86721yahoo-ignore-table" style=3D"background-color: rgb(255, 2=
55, 255); background-repeat: repeat; background-attachment: scroll; backgro=
und-image: none; background-size: auto; position: relative; z-index: 2; wid=
th: 100%; max-width: 400px; border-radius: 0px 0px 2px 2px; border-top: 1px=
 solid rgb(224, 228, 233);" cellspacing=3D"0" cellpadding=3D"0" border=3D"0=
"><tbody><tr><td style=3D"background-color:#ffffff;padding:16px 0 16px 12px=
;vertical-align:top;border-radius:0 0 0 2px"></td><td style=3D"vertical-ali=
gn:middle;padding:12px 24px 16px 12px;width:99%;font-family:YahooSans, &quo=
t;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;=
border-radius:0 0 2px 0"><h2 class=3D"ydpf9c86721card-title" style=3D"font-=
size: 14px; line-height: 19px; margin: 0px 0px 6px; font-family: YahooSans,=
 &quot;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-s=
erif; color: rgb(38, 40, 42); max-width: 314px;">USRP Hardware Driver and U=
SRP Manual: USRP N3xx Series</h2><p class=3D"ydpf9c86721card-description" s=
tyle=3D"font-size: 12px; line-height: 16px; margin: 0px; color: rgb(151, 15=
5, 167);"></p></td></tr></tbody></table></td></tr></tbody></table></td></tr=
></tbody></table></a></div><div><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse">where I've downloaded and installed the sdk toolchain and set the nec=
essary paths, however, is it necessary as well to cross-compile UHD as well=
 for the N310??<br></div><div><br></div><div><br></div></div></body></html>
------=_Part_793207_742399558.1632540300001--

--===============6349520000608201655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6349520000608201655==--
