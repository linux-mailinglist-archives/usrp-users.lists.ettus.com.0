Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD23425F318
	for <lists+usrp-users@lfdr.de>; Mon,  7 Sep 2020 08:18:36 +0200 (CEST)
Received: from [::1] (port=34422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFAU4-00045M-4D; Mon, 07 Sep 2020 02:18:32 -0400
Received: from mail-eopbgr1390128.outbound.protection.outlook.com
 ([40.107.139.128]:20040 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1kFATz-00040k-Mo
 for usrp-users@lists.ettus.com; Mon, 07 Sep 2020 02:18:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AUpcd5BRBvhsOBgGF+Ohjcko9XZHJFgFlC9GQArFVJ+0qT6UVrL1q/v0vUjfjyvpmkaBaXa3CcpLe8f8Yp+yF4sKhXvG7it6A8VGjVeV5pR42uVYnY2l8bxIO7fMWBvjaMB2/U5njz6oRG1ox+vUOKxk7h7xNP0KrlnjOw8jWN1f6icVvkFt8PlDwbKRABZWH/kxZJ2KZKY7IqaHhgQMY5hPlcUnuqvR9lClFX8FBOhbK2raV3pINbJ0esue4eoqWDWK9Mfcu1ijDhC9OAt1ibOFHDenKOEysjjZdU8M6AaaJ+7dPbQ845jTwsE1bVb/24vQNf/zf6uYoR0Lo5HFww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dk4r1vVM+9L6vFRS8deSGqwIYx8iCO2kSwTOf+zOB2A=;
 b=jfM2n7a9pbX2C5hN7giJ9JRr//hfYMnIRU3hPsIZ4M3jLhGwYXhce9ohAJlDpKMjNewXb5oO6Qd4CPJfohyRMc2uhxBaecCWZnVBO/0ZLFazS1CitQevHkDFKiMcE9LecQ+63yFY0wxhYzGfWDLX5pMUf55u6XwkZWv6z0dx47zr/XkSqsMi9XTICUDhcikLD5rPCTXh4wwFphMhbXZxUUR2Kp7Fxp/AfNeDRWiqhcux1MBKdy+I+8dldnV/vQjIepzt2gvwih/EVTb245OQFOrckPcAHactg75NrTmRe4u43ym/XhEpTxMLfnxd9vqGhMrwNOLORNyhD9LHjUBDoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dk4r1vVM+9L6vFRS8deSGqwIYx8iCO2kSwTOf+zOB2A=;
 b=QkjWnwcf32a0ioEOp5a5pwP6+SKBh/KLAnC7ks20f2RiaQmiYfl7F9FJAra6kC60xqMvL+oqstMd3sei8aHP1xjemyEF2vTnBgBNHdx8s2zUxdwoAvSrbAx+q3arYXrQwAXTf3e09VYKkNs5dIjpO5jpkEDAqyx2stwvCoHaMAY=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB3152.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:6c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 06:17:39 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe%5]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 06:17:39 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] USRP sensitivity
Thread-Index: AQHWg5OMJebIind1hUCTMMLlf4n416laVpEAgAJebF8=
Date: Mon, 7 Sep 2020 06:17:39 +0000
Message-ID: <MA1PR01MB2588D546B056E4D5828FFBB990280@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F53D2F2.2080107@gmail.com>
In-Reply-To: <5F53D2F2.2080107@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.139.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b2a2833-0e77-4db1-fca4-08d852f5b8ca
x-ms-traffictypediagnostic: MAXPR01MB3152:
x-microsoft-antispam-prvs: <MAXPR01MB3152FEC8DFB643B30F4FBAFB90280@MAXPR01MB3152.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jWDMXktHpQDD7xoEB3dUPv8NR/HCAvrdGzpXqJVANP1AlgpxL/xV5IjalUBAWHVwXHrtau09WLZA8BysQAqh8JJjaO/1huKjIL2+8PBLy4YB92Mdvyua2P/Ijb2NsNl/TjF0HMmhVeYBno0xW9jvTklIQ+S+BGI1+6qCJwjF/zmWK9jopjH/E8KVqwymzV8cOZgkNahz2QDeC5QetgPecEyZtaX340U3n2/dUvIDwJSd2oIzYhFNgMyWX7GSx9Q4AHExZ7HEOiKTdMJaDQCLFmjs/YzZ+TnFUQfge/JRQan6nokCplXvLB1O7Kgua/T8MZTvr2IPrpj1D5J/XBA9PgwIIPzKNO+OCMLAYsoXQDyyWXv7LTJWzAqfXvxVxfE0gnDggS9Gw5aUE3AQekqqxw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(376002)(346002)(366004)(136003)(39830400003)(396003)(55016002)(86362001)(316002)(71200400001)(166002)(478600001)(45080400002)(83380400001)(9686003)(33656002)(8936002)(52536014)(8676002)(5660300002)(2906002)(53546011)(6506007)(7696005)(26005)(64756008)(66476007)(66556008)(66446008)(76116006)(91956017)(66946007)(186003)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: npTTM3Ch+mgm+NTfjIzfIOiKLzpnpd9xsvi7w6Jl8ejMiwPVJMGek9FZjfDiHa9Scjaa695hy0We+zI4heeli3ZTFDn1i5NNVSHJ4GpN2pIHa8EFLoPHw1IyS/A9/XVtsByfOtpqfDCo8iEIcHmCmePCBSqe/mG8Q3tHBrbohFRvtHfq4ZTDrLKbNXAsTTNyiRnWKybkfWLzxXNFsi2hSnDklajhFqiM8UlKXPVZRHd5t7g+6RQDdFvQAiqFKx/M7HAz5A5234oXFGs1c5M4lFp6jRmdu1sC747hc2JLxbLDbe6/VuOSPE6xE5CfxDCEzMXEyI5yaYTCawi4RluoqJcGt7OevVFOknya1eFDv6DaC10TyCWha9w8fT8saLDv8RbeSWl0/o1jNcc4S933zhBNDGbfQt9Bvyllbv6SwQoMXKTwDP4bvbyWsGLDtTOIwJ0+CM6i5Z7i0iXV3FeuuCzKwkEFZ0+GT4jhu14hWx2PAiAiNonSXmuuhUvAKoTHmbOl1cVQhql1p5RmvXWTzRhBeoMYpiBrah0D95zSAYIimDpdMjStDAtfxb52wfffRuuAeeOD72knGt86oDzD85d4i9xXF4eM+zqiW+xnQnN9YCNMYxmjxO5sC26A/k+MUUsnxCGAglm/pQqLAAEmNw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b2a2833-0e77-4db1-fca4-08d852f5b8ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2020 06:17:39.3121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nlh8rWv5a/OlbmHnQ3w3bkFYXuo7+59O/ZVpbZGIlRCmyoV4/vZGP/GXG3PiO1AdrIl6eFyEVZk3qUPbiCTkFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3152
Subject: Re: [USRP-users] USRP sensitivity
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
Content-Type: multipart/mixed; boundary="===============1178771070888756623=="
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

--===============1178771070888756623==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588D546B056E4D5828FFBB990280MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588D546B056E4D5828FFBB990280MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks so much for the explanation. If IQ samples are not voltages then ofc=
ourse I can=92t do this analysis. However, FYI I am using usrp 2955 and fre=
quency is 2.4 GHz.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Saturday, September 5, 2020 11:33:30 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP sensitivity

On 09/05/2020 10:57 AM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

NI told me magnitude of IQ samples received in usrp is the voltage in volts=
.
The I/Q samples are *linearly proportional* to the antenna voltage.  But yo=
u can't use an analysis like below to come to any conclusions
  about absolute antenna voltage from the samples.



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
The ADCs are set to a reference voltage of 1.2V.  That's as much as they ca=
n reasonably see.

Also, you haven't said what USRP you're using, nor what frequency you're op=
erating at.

Further 70dB power gain =3D=3D 35dB voltage gain.

I prefer to do this type of analysis with any of the online path-loss calcu=
lator tools, and set both the TX and TX antenna gain to 0.

Further, you can't infer the total system gain from the gain setting in the=
 API--that just sets a gain-setting hardware "variable", which in
  most cases, is an attenuator.  Without knowing WHICH exact hardware you'r=
e using, you simply cannot know what the exact system gain
  is ahead of the ADC.

But wait there's more.  Unless your sample-rate =3D=3D ADC clock rate, you'=
ll be getting decimated samples, which will tend to reduce the
  total power in the output channel, leading to lower-magnitude samples.





--_000_MA1PR01MB2588D546B056E4D5828FFBB990280MA1PR01MB2588INDP_
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
<div>Hi Marcus,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks so much for the explanation. If IQ samples are not =
voltages then ofcourse I can=92t do this analysis. However, FYI I am using =
usrp 2955 and frequency is 2.4 GHz.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Saturday, September 5, 2020 11:33:30 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] USRP sensitivity</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 09/05/2020 10:57 AM, Koyel Das (Vehere)=
 via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">NI told me magnitude of IQ samples received in usrp is the=
 voltage in volts.</div>
</div>
</div>
</blockquote>
The I/Q samples are *linearly proportional* to the antenna voltage.&nbsp; B=
ut you can't use an analysis like below to come to any conclusions<br>
&nbsp; about absolute antenna voltage from the samples.<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><br>
</div>
<div><span style=3D"font-size:14.666666984558105px; display:inline!importan=
t">Info: Office wifi 10 m distant USRP 70 dB (power) gain gives 10^-3 (volt=
s? ie magnitude of IQ samples)</span><br style=3D"font-size:14.666666984558=
105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">As=
sume wifi transmits +20 dBm, isotropic radiator, isotropic receiving antenn=
a</span><br style=3D"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Vo=
ltage expected at receiving antenna terminals in 50 ohm:</span><br style=3D=
"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Ef=
fective area receiving antenna: lambda^2 / (4 pi) =3D (0.125 m)^2 / (4 pi) =
=3D 1.2e-3 m^2</span><br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Po=
wer per area at 10 m distance =3D 0.01 W / (4 pi * (10 m)^2) =3D 8e-6 W/m^2=
</span><br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Re=
ceived power =3D power per area * effective area =3D 8e-6 W/m^2 * 1.2e-3 m^=
2 =3D 9.5e-9 W</span><br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">P =
=3D V^2/R 9.5e-9 W =3D V^2 / 50 ohm V =3D 7e-4 V is voltage across antenna =
terminals</span><br style=3D"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Vo=
ltage at ADC:</span><br style=3D"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Po=
wer gain =3D 70 dB -&gt; voltage gain =3D 45 dB.</span><br style=3D"font-si=
ze:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">7e=
-4 V at antenna terminal is amplified by factor 10^4.5, gives 22 V</span></=
div>
</div>
</div>
</blockquote>
The ADCs are set to a reference voltage of 1.2V.&nbsp; That's as much as th=
ey can reasonably see.<br>
<br>
Also, you haven't said what USRP you're using, nor what frequency you're op=
erating at.<br>
<br>
Further 70dB power gain =3D=3D 35dB voltage gain.<br>
<br>
I prefer to do this type of analysis with any of the online path-loss calcu=
lator tools, and set both the TX and TX antenna gain to 0.<br>
<br>
Further, you can't infer the total system gain from the gain setting in the=
 API--that just sets a gain-setting hardware &quot;variable&quot;, which in=
<br>
&nbsp; most cases, is an attenuator.&nbsp; Without knowing WHICH exact hard=
ware you're using, you simply cannot know what the exact system gain<br>
&nbsp; is ahead of the ADC.<br>
<br>
But wait there's more.&nbsp; Unless your sample-rate =3D=3D ADC clock rate,=
 you'll be getting decimated samples, which will tend to reduce the<br>
&nbsp; total power in the output channel, leading to lower-magnitude sample=
s.<br>
<br>
<br>
<br>
<br>
</div>
</body>
</html>

--_000_MA1PR01MB2588D546B056E4D5828FFBB990280MA1PR01MB2588INDP_--


--===============1178771070888756623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1178771070888756623==--

