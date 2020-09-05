Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FCA25E88A
	for <lists+usrp-users@lfdr.de>; Sat,  5 Sep 2020 16:58:25 +0200 (CEST)
Received: from [::1] (port=47338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kEZe0-0004G5-6J; Sat, 05 Sep 2020 10:58:20 -0400
Received: from mail-eopbgr1380113.outbound.protection.outlook.com
 ([40.107.138.113]:33559 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1kEZdv-0004A8-Hr
 for usrp-users@lists.ettus.com; Sat, 05 Sep 2020 10:58:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nk2ofQr5Hje0usBfTunTRapQScgKsFDfuHW7xikVi5wZKG9mZF+rfyG8pQTjrto4cyZ8O34PDhDzRAHitESsq1pfvShzfefk0U6vdNy6upEcFJfriB+suzJ20gQfhYus1FMSWAtCwt/mfRoJRnopNWXLofdTaDCrMr4Oejdt/ZpYUOkz7hPz+BD9uy2UlvCEr+JBfRV64YlSZ7gQXbSNxRe551sw3hwGnNFi2K3DKrobNkqcVXJYsJOovVsnN3u5AtMquGgspkkRdY3HobHSXyB3zA+Rsm2i7ncY1iMEqh55Rwa3Mn7mX+2JTkv+mU1dRe2UyKthQcmvaU1amkwWDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8/jRVc+hNH60yxzhnOoMlM3gnO2tgKesDUNepvv7k4=;
 b=CKKjmhpi6ZLJjLqPiFQ9alllc3t+AynpVKvwUKZl1hnLwbkjap7s9sKOWhDqalOPgpKIl/9Yl86WCCv5JaIZH4XO8STQhmp9mA/CSU/M6f8eE3YwMEoocbPt7mnge8CgUJYf6Wl/34DE45PMQbhQF26PU68HJ73vKyYxXymvAN+yCcl4BgKhPUMKtX1aWHiPR9pEiV8T4aXOCxXnBEo7FXhM2osuzqzYMNA0q6rStJUaqHUTVzCVLj+oS6HCAmFg1vndAwNtnmfer+cVIUkKotBLaR/j8XX5+45DpC+biuO7Yig/+0ei3/874/Z9JxTyK1tWB62+FBOXPhMmcUQ17w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8/jRVc+hNH60yxzhnOoMlM3gnO2tgKesDUNepvv7k4=;
 b=YyB6o7ehxAYNoZhZzseAmoG5qwF2oYU5YaEwzFp8IytrqCB63wQytOn+dE6bcotFFgnnpDi11kpB1J05CvobIbobj52+YrcYJVyuJy69VuCg1Tps3s+BKnQpcSvIqwe60DU7A4fId0Du9CsMF1gbAdGLyCqg5CJww7eX23fQrYs=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB3630.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:64::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Sat, 5 Sep
 2020 14:57:27 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe%5]) with mapi id 15.20.3348.017; Sat, 5 Sep 2020
 14:57:26 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
CC: "Naveen Jaiswal (Vehere)" <naveen.jaiswal@vehere.com>
Thread-Topic: USRP sensitivity
Thread-Index: AQHWg5OMJebIind1hUCTMMLlf4n41w==
Date: Sat, 5 Sep 2020 14:57:26 +0000
Message-ID: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.138.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a0dae45-0062-4abb-cb01-08d851ac0120
x-ms-traffictypediagnostic: MAXPR01MB3630:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MAXPR01MB363002977335ED7E712DFFB6902A0@MAXPR01MB3630.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t8zxM3ag8obX2wqXrwDuXnt1v7dqCqAJ6mkXQk9gbTpFgyHMnrRP6DD6oRD6og153xCBLtXiKz2WKyZedtMTgOF28ywLBNN2VYlWR3lqtp28HafdEB2wLlorq4rJ2nrTSeUGqYBdeok+bz6qG+KF7O2L2GihDP4M3CBS2Lg6i8jOR9Z2FEYkVOMoPw6Vi2AFkpTvaDmQ6/BOqzg7hnnP/o4rwx1vUxXJezRNNhTyj1Dui/4lhX6yJ8nDzIf0/z+3B9va7a1lBfgw9kgwCupOyXq+XkuXINxxGEXyfBdcgEnh9gmrew2bX3RNTU4OJ8lWNkuIRazRKjxR6LTHvKXBC4jiSz3Ol02EbiPkHqoQuHC4HA9qKXPuzd7JTJMyp7ZxJMY70p0AtOXyoVGWECiYCQU0xNCdO2Sl8DdThHU+Dv9Te7LkEBF4MVTKv0uevUbk1iVDHPguISPNfxm/zy1qzw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(346002)(396003)(39830400003)(376002)(136003)(8936002)(166002)(7116003)(2906002)(6916009)(6506007)(478600001)(8676002)(86362001)(186003)(76116006)(107886003)(45080400002)(26005)(66946007)(66446008)(66556008)(66476007)(64756008)(5660300002)(71200400001)(3480700007)(9686003)(316002)(4326008)(52536014)(7696005)(33656002)(55016002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /L9IXTFoPHWM/YqcRmq2qcWw0qLpmFbgBfJ7mNkcGPUl8UTEceXxFRK9+3AnvNNn/yU+4Wqip0UhuOk+VsFuwmb0Y/ASrDeZzk8nlta36p/qzEJts9iRrYOUaTUBia0+uUFkDATwqlbqzSaV40JaHS/xe7LjnAT/xA6KaBZ8VHIUr5VwbRqsbKmApvEWLA25Q06Asl2GJCjqxDjcD1lHKmm85zcpY1nUDQ91eadzbJPHNdqWtiyWx704wMsiZ6SOpNdPX+5v3c6gAKeP86aevcOaXKglgd9S9qUgtulz+TjEiGxlmquEgJexigGuSTDcQPtkDTaHKIREGiFP2EYN8dbM+r+4SBU2jyHlm63DGSHeSJNHJ2cqPaI3fxZoi0ie//SdNiAMx550K63/6OdA3Ub+Jg4hb5Jsl7ie8ASEE1lh1BHijltLhMLoDn/HnRuLIu3AdkLuqagbd5yA6NmnFxhGInLP7lUDBElZMicS8+wLj44QiRki9R6m+YimlOGGtnnfjMxyaldlbO70YaWYK0iI6hLDEeIHaZnaWxZ5fqXaBQIKv2bxCOE9s1bzc4MjXnXFhDqe+YkSlNmpQIgKl3QG9ZzztSptH6GjwtDl2buxgJ/O1aQSZra7W87eSbv7kwEDkuIG0rFjVR19BP6n5Q==
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a0dae45-0062-4abb-cb01-08d851ac0120
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 14:57:26.6707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NpLyJKNLU+6GrPR+QUAYO3vhSr3TQOmDh7wsif+A2CTUxHkqUWBvh/zCcpHnOY1QhB06eIg9PQUl8AgKBZlw2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3630
Subject: [USRP-users] USRP sensitivity
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============3739507621520385406=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3739507621520385406==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25887D46F7718F3B577EB766902A0MA1PR01MB2588INDP_"

--_000_MA1PR01MB25887D46F7718F3B577EB766902A0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

NI told me magnitude of IQ samples received in usrp is the voltage in volts=
.

Info: Office wifi 10 m distant USRP 70 dB (power) gain gives 10^-3 (volts? =
ie magnitude of IQ samples)

Assume wifi transmits +20 dBm, isotropic radiator, isotropic receiving ante=
nna

Voltage expected at receiving antenna terminals in 50 ohm:

Effective area receiving antenna: lambda^2 / (4 pi) =3D (0.125 m)^2 / (4 pi=
) =3D 1.2e-3 m^2
Power per area at 10 m distance =3D 0.01 W / (4 pi * (10 m)^2) =3D 8e-6 W/m=
^2
Received power =3D power per area * effective area =3D 8e-6 W/m^2 * 1.2e-3 =
m^2 =3D 9.5e-9 W
P =3D V^2/R 9.5e-9 W =3D V^2 / 50 ohm V =3D 7e-4 V is voltage across antenn=
a terminals

Voltage at ADC:

Power gain =3D 70 dB -> voltage gain =3D 45 dB.
7e-4 V at antenna terminal is amplified by factor 10^4.5, gives 22 V

Actually see 10^-3 (magnitude of IQ samples)

That's a big difference between expected and observed. If the unit of IQ sa=
mples is really volts and 10^-3 is in volts then 70 dB gain of usrp is actu=
ally much much lesser value than real 70 dB.

Further I see in wifi analyser app the power ratings are -30 dbm to -60 dbm=
. Those values agree with my calculated expected receive power above. I exp=
ected at 10 m range to receive 9.5e-9 W, which is -50 dBm. That's nicely in=
 the -30 dBm to -60 dBm receive power range that the analyzer app reports.

So what=92s wrong with usrp?

Regards,
Koyel
Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB25887D46F7718F3B577EB766902A0MA1PR01MB2588INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">NI told me magnitude of IQ samples received in usrp is the=
 voltage in volts.</div>
<div dir=3D"ltr"><br>
</div>
<div><span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, =
HelveticaNeue; font-size: 14.666666984558105px; display: inline !important"=
>Info: Office wifi 10 m distant USRP 70 dB (power) gain gives 10^-3 (volts?=
 ie magnitude of IQ samples)</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: -apple-system, HelveticaNeue; font-size: 14.666666984558105px"=
>
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Assu=
me wifi transmits +20 dBm, isotropic radiator, isotropic receiving antenna<=
/span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, H=
elveticaNeue; font-size: 14.666666984558105px">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Volt=
age expected at receiving antenna terminals in 50 ohm:</span><br style=3D"c=
aret-color: rgb(0, 0, 0); font-family: -apple-system, HelveticaNeue; font-s=
ize: 14.666666984558105px">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Effe=
ctive area receiving antenna: lambda^2 / (4 pi) =3D (0.125 m)^2 / (4 pi) =
=3D 1.2e-3 m^2</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -=
apple-system, HelveticaNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Powe=
r per area at 10 m distance =3D 0.01 W / (4 pi * (10 m)^2) =3D 8e-6 W/m^2</=
span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, He=
lveticaNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Rece=
ived power =3D power per area * effective area =3D 8e-6 W/m^2 * 1.2e-3 m^2 =
=3D 9.5e-9 W</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">P =
=3D V^2/R 9.5e-9 W =3D V^2 / 50 ohm V =3D 7e-4 V is voltage across antenna =
terminals</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple=
-system, HelveticaNeue; font-size: 14.666666984558105px">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Volt=
age at ADC:</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -app=
le-system, HelveticaNeue; font-size: 14.666666984558105px">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Powe=
r gain =3D 70 dB -&gt; voltage gain =3D 45 dB.</span><br style=3D"caret-col=
or: rgb(0, 0, 0); font-family: -apple-system, HelveticaNeue; font-size: 14.=
666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">7e-4=
 V at antenna terminal is amplified by factor 10^4.5, gives 22 V</span></di=
v>
<div><br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, He=
lveticaNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Actu=
ally see 10^-3 (magnitude of IQ samples)</span><br style=3D"caret-color: rg=
b(0, 0, 0); font-family: -apple-system, HelveticaNeue; font-size: 14.666666=
984558105px">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">That=
's a big difference between expected and observed. If the unit of IQ sample=
s is really volts and 10^-3 is in
 volts then 70 dB gain of usrp is actually much much lesser value than real=
 70 dB.</span><br>
</div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; font-size: 14.666666984558105px; display: inline=
 !important"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; font-size: 14.666666984558105px; display: inline=
 !important">Further I see in wifi analyser app the power ratings are -30 d=
bm to -60 dbm.&nbsp;</span><span style=3D"font-size: 14.666666984558105px;"=
>Those
 values agree with my calculated expected receive power above. I expected a=
t 10 m range to receive 9.5e-9 W, which is -50 dBm. That's nicely in the -3=
0 dBm to -60 dBm receive power range that the analyzer app reports.</span><=
/div>
<div dir=3D"ltr"><span style=3D"font-size: 14.666666984558105px;"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size: 14.666666984558105px;">So what=
=92s wrong with usrp?</span></div>
<div dir=3D"ltr"><span style=3D"font-size: 14.666666984558105px;"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size: 14.666666984558105px;">Regards,<=
/span></div>
<div dir=3D"ltr"><span style=3D"font-size: 14.666666984558105px;">Koyel&nbs=
p;</span></div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25887D46F7718F3B577EB766902A0MA1PR01MB2588INDP_--


--===============3739507621520385406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3739507621520385406==--

