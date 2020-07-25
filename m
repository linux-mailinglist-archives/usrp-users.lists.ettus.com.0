Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE1322D715
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jul 2020 13:33:21 +0200 (CEST)
Received: from [::1] (port=53124 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzIQV-0007kp-7T; Sat, 25 Jul 2020 07:33:15 -0400
Received: from mail-eopbgr1390139.outbound.protection.outlook.com
 ([40.107.139.139]:35150 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jzIQQ-0007bg-Gc
 for usrp-users@lists.ettus.com; Sat, 25 Jul 2020 07:33:10 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fwYn/7F4btxJ9Vz9GObyi7USKsDSva6TPMn9lkcFlkkNfm6kHQqk3hurbtv+Z/k9wYt+sY+Ph5q61/fpTuC9Z/DqHKT0fj+ErO/xwQ6pwxmFrD49tMMcbPc/86vYi0jOM4fGBvfhYC2JDFTKRZJGXv73IJ1c7M8hlsDZMf5LqbugherVFZwaCgPNttZAACYxi7ch8USZqLAw/h4M+texLMpOtpSDEFiMP0SvIuSzN03V/i3b6DuwDmH9zXp0QlhApO8BTx7aeu23x+lrDf5b7bTI0OCSLCeY98AdZMbUcrh+ezTyev6PcLlkSCeiYK9BznEiaOhZCKfNIzBjVPOR6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s6LM4pgG8cYm3kGNwj6QdzeooLNFD7N2rkIdRuEXmT0=;
 b=LqSuCn8ZWqBW6xPqFW0EsLh/krhUH7Zvsq+6XDc4G2PPN1PDsMQ8zh7Y2d34TtOFFMxRQi+KGoaEnHV0yBzeZT8IWDcengl8J8JnXu0EmXDsFFhY4UTbxu6jPS+n2R8jvrVuNv/fotcSNiKAoNm8hSycGkvXg3ZrLBYwiAWH6pIDXhndobzfhK3k0d70DzXOunDscG+noJX8cR+EPurkmBa+J07+zBbDMkXYjTOXH3vPwLUu/Rh1O/3p2hUWyR+NUfJDV31DEiVTelo0vt+trVDkV6Ca26LyvGsMCJzp8EUfzJHFksLyLa6vbowGSTYE6zL9l1H0kOsyEjyTKijTXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s6LM4pgG8cYm3kGNwj6QdzeooLNFD7N2rkIdRuEXmT0=;
 b=bJZ6NkULuBkjHMWOxEML/zmcaMBRBYhho9xolpSjlptYVNZN4pg9pIMU8IYhha/tB87/dNAU4tRozBXYSBKUAzjNYXaJVgd9SB9/QmCfpt5HERA21vGBpvGLTetwoq+RfxjR+YpBYxtfHkhBsPgHUdwSKHviq1kwWheqXD+KJwo=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR0101MB2090.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:15::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Sat, 25 Jul
 2020 11:32:25 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.028; Sat, 25 Jul 2020
 11:32:25 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Data rate using usrp and grc
Thread-Index: AQHWYlbbHjnwDUz39U+Gftus+wZMPakX9kiAgAAzE+0=
Date: Sat, 25 Jul 2020 11:32:25 +0000
Message-ID: <MA1PR01MB2588B4D9AE8EE8E9E48363DC90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <a7903b46-932a-4848-cffe-4dba3c53f43b@ettus.com>
In-Reply-To: <a7903b46-932a-4848-cffe-4dba3c53f43b@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.138.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b02c0964-5b44-4fde-c1c0-08d8308e6781
x-ms-traffictypediagnostic: MAXPR0101MB2090:
x-microsoft-antispam-prvs: <MAXPR0101MB2090EC613E66C2FD77064F4C90740@MAXPR0101MB2090.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GeUd70RkKp93xjOiiN/zduMYj3k4m+yLADGmA01qGWVANYCS4Ofyebm1hbfWP3LtxgnJJlXvaAr0AZ0Su0ny1ma090HvepD7qIQqyBZucHZSIIT1GwMULGodary59rLPWLJJS03oBxrRGTalBOXn0PYXkeAOcmX7RMwZ3VDPbJehaNJMBrgjwlColE4Du0hW3fOrC2LIO4dWYBFK+0006olxgnIKdmLEWdnxLKynyXuzPqXwAWuWTcP2GrJ13yzQQ9Arj6BH0PDgG/VXrnOT7VYsk5wjCIO8nEP6W7M1lPA6uy6+nFotuIW/a1a++e0pb9NwlzdCPW5lfdU5FhAoDriqrvJimk4z/RWggIidUsGkrE1tkUWKoqne0WdJPJ7opTrpeSvO7UTJkFtezTR5IVinkLO11spT+jEeBLYqt5xr5r1vKy9Tz3sgjHwvdEIp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(396003)(136003)(366004)(376002)(346002)(53546011)(6506007)(33656002)(110136005)(316002)(66574015)(86362001)(71200400001)(5660300002)(66446008)(83380400001)(66946007)(66476007)(66556008)(76116006)(64756008)(52536014)(2906002)(45080400002)(9686003)(966005)(7696005)(55016002)(8676002)(186003)(8936002)(508600001)(166002)(26005)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: f97gV8nD/EoRHqIMSmILZndSr1+5OqBl73el46dtUyCqA1y5aQc9J5wOFF8EW2h/T0ONB12PZ/JgwtiQamQej+6SwDsOAeuYby1HzS0Ks7U3Z4DycM9T90U/MZodkZv7qboZngVTU0p9rv3fRpTl6jfxh9XAsX7FfUGq0+Q6Xhmsan4srn4eLK0Phl+4SOANbIr+9GDy3yL/s1jJRb1znzRVz9GyoPKqEi1R653WEfgRl4ockokMocSlzy/NYhzSr7GqXl7unH+XIjLVUw8sZqUpMappubDrUKq5NqicdpP0VYx/zQM34SRwFGSLV14KK6WbtDvlwkMv6O6ysPmc6b6XGCapp2E0TJ6x51KeXM1tgxbC1jYwlW4K8bik44A3j25jDkC8raIzftqRu9JSJB4XICUvSXfZkuBPTiO0m3WWHKKP1q4MKVJyNPmONVT7gftB75Y5Rm4beoDAbBKIrzUrMtrEMYs6bvd8J4rTplS8reA+Qzhsx6wgyugypBTh
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b02c0964-5b44-4fde-c1c0-08d8308e6781
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2020 11:32:25.2381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctXg/0fJpqSp5680bnQcmtPtdunCBTuOOrYerlXc23Yo/zTx+ljR/0BLmhGV+6HNIrKYvLYZis8OsFhdFmbwLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB2090
Subject: Re: [USRP-users] Data rate using usrp and grc
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
Content-Type: multipart/mixed; boundary="===============3940337592882913129=="
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

--===============3940337592882913129==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588B4D9AE8EE8E9E48363DC90740MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588B4D9AE8EE8E9E48363DC90740MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

=93as to your previous questions regarding "will my computer be able to
keep up": We can't tell you how fast your computer and storage is.=94

If I use a 10 gbps server and

RAM disk storage or as you said the following:

=93Also, setting larger output buffers in the GNU Radio blocks can help,
too, if you don't need low latency (which you don't need at all, if
you're just recording). Try setting "2**24" in the min output buffer
setting in your USRP source's "advanced" tab.=94


 Then will I be able to write data at 6 gbps ?

Regards,
Koyel



Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Saturday, July 25, 2020 1:57:49 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>; 'USRP-users@lists.ettus.com'=
 <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Data rate using usrp and grc

Hi Koyel,

> Will there be packet drops if USRP source is set at 32 bit complex
float in grc when receiving at 100 MSPS each from two channels?

as to your previous questions regarding "will my computer be able to
keep up": We can't tell you how fast your computer and storage is.

Anyway,

> I am unable to set usrp source block in grc to 16 bit complex as then
the usrp source block is not compatible with file sink which doesn=92t
have option for 16 bit complex

Nothing in GNU Radio cares about the content of the data bytes you're
pushing around: simply set your file sink to e.g. int, or float, or to
short with vector length 2, or to byte with vector length 4: Doesn't
matter, as long as the item size ends up being 32 bits.

Best regards,

Marcus

On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> I want to capture data from usrp 2955 using USRP Source block of grc and =
write to file using file sink block of grc. Will there be packet drops if U=
SRP source is set at 32 bit complex float in grc when receiving at 100 MSPS=
 each from two channels? That makes 2*100e6*64 (32 bit I and 32 bit Q) =3D =
12800e6 or 12.8 gbps. I am unable to set usrp source block in grc to 16 bit=
 complex as then the usrp source block is not compatible with file sink whi=
ch doesn=92t have option for 16 bit complex. Please help
>
> Regards,
> Koyel
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_MA1PR01MB2588B4D9AE8EE8E9E48363DC90740MA1PR01MB2588INDP_
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
<div dir=3D"ltr">
<div style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helvet=
icaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; =
display: inline !important">=93as to your previous questions regarding &quo=
t;will my computer be able to</span><br style=3D"caret-color: rgb(0, 0, 0);=
 font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; =
display: inline !important">keep up&quot;: We can't tell you how fast your =
computer and storage is.=94</span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; =
display: inline !important"><br>
</span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); display: inline !important">If I =
use a 10 gbps server and&nbsp;</span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); display: inline !important"><br>
</span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); display: inline !important">RAM d=
isk storage or as you said the following:</span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); display: inline !important"><br>
</span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); display: inline !important"><span=
 style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; displ=
ay: inline !important">=93Also, setting larger output buffers in the GNU Ra=
dio blocks can help,</span><br style=3D"caret-color: rgb(0, 0, 0); font-siz=
e: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; =
display: inline !important">too, if you don't need low latency (which you d=
on't need at all, if</span><br style=3D"caret-color: rgb(0, 0, 0); font-siz=
e: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; =
display: inline !important">you're just recording). Try setting &quot;2**24=
&quot; in the min output buffer</span><br style=3D"caret-color: rgb(0, 0, 0=
); font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; =
display: inline !important">setting in your USRP source's &quot;advanced&qu=
ot; tab.=94</span><br>
</span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); display: inline !important"><span=
 style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; displ=
ay: inline !important"><br>
</span></span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<span style=3D"caret-color: rgb(0, 0, 0); display: inline !important"><span=
 style=3D"caret-color: rgb(0, 0, 0); font-size: 14.666666984558105px; displ=
ay: inline !important"><br>
</span></span></div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
&nbsp;Then will I be able to write data at 6 gbps ?</div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<br>
</div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
Regards,</div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
Koyel&nbsp;</div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue">
<br>
</div>
<br>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Saturday, July 25, 2020 1:57:49 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; 'USRP-users@lis=
ts.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Data rate using usrp and grc</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Koyel,<br>
<br>
&gt; Will there be packet drops if USRP source is set at 32 bit complex<br>
float in grc when receiving at 100 MSPS each from two channels?<br>
<br>
as to your previous questions regarding &quot;will my computer be able to<b=
r>
keep up&quot;: We can't tell you how fast your computer and storage is.<br>
<br>
Anyway,<br>
<br>
&gt; I am unable to set usrp source block in grc to 16 bit complex as then<=
br>
the usrp source block is not compatible with file sink which doesn=92t<br>
have option for 16 bit complex<br>
<br>
Nothing in GNU Radio cares about the content of the data bytes you're<br>
pushing around: simply set your file sink to e.g. int, or float, or to<br>
short with vector length 2, or to byte with vector length 4: Doesn't<br>
matter, as long as the item size ends up being 32 bits.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I want to capture data from usrp 2955 using USRP Source block of grc a=
nd write to file using file sink block of grc. Will there be packet drops i=
f USRP source is set at 32 bit complex float in grc when receiving at 100 M=
SPS each from two channels? That makes
 2*100e6*64 (32 bit I and 32 bit Q) =3D 12800e6 or 12.8 gbps. I am unable t=
o set usrp source block in grc to 16 bit complex as then the usrp source bl=
ock is not compatible with file sink which doesn=92t have option for 16 bit=
 complex. Please help<br>
&gt;<br>
&gt; Regards,<br>
&gt; Koyel<br>
&gt;<br>
&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef">https://aka.m=
s/o0ukef</a>&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
</div>
</span></font></div>
</body>
</html>

--_000_MA1PR01MB2588B4D9AE8EE8E9E48363DC90740MA1PR01MB2588INDP_--


--===============3940337592882913129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3940337592882913129==--

