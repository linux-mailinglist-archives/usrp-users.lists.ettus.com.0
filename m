Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF46325389
	for <lists+usrp-users@lfdr.de>; Thu, 25 Feb 2021 17:31:16 +0100 (CET)
Received: from [::1] (port=34880 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lFJXl-0007p5-Ez; Thu, 25 Feb 2021 11:31:13 -0500
Received: from mail-eopbgr130115.outbound.protection.outlook.com
 ([40.107.13.115]:2886 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <rpblanco@indra.es>) id 1lFJXh-0007ie-Rd
 for usrp-users@lists.ettus.com; Thu, 25 Feb 2021 11:31:09 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bb4j65rwIvP1/9173tYkryYi+2hwvp1pTv36l7xnbZA6MnnAnjwMKMq4qb5+vsWMT4d9XFsKubB/PDx/+qEd4SEIsJk4EECjfTW3j/N31P5UeiJc7VOOJNWv5vQ/RmxuxWKi+60UwRd5nFYLRMmPBzTyZBwJkM+luMwRs0f/RveO1b989NxMI2/4vFxJsAJBdqlUatov9bWeHyTlYotpnl2PRIi0VZsqo4JWlc3daR5v69ugEr8107ahAOlgSEsGx8YSuJqkllOrQ54sfPBnZvWagRG9crmF/udS6NXavyOGSydp5L/1kp1pIh6E/K3w07yRxHCL8Lb+yW6uKVEoPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cPq63oLNCNaU3lzVH5POYYaZ3U0+8U81OMKJnueiVf4=;
 b=BP9IhPrhvPDKX6+PM3xCrKog/JpXbM49gFK0O5vrVGBBo4tA4YKqZ5s4CkLYaApXSzcLF0HZumV/1pjadAVcfldNoguh5Y9ld6bygXmqoLr3CJtACpiWxz9APTGaOO33ShC8ASo3M0k+lL1IEOsvmhhH5mgnnttQMAdq/rxUuSu7ZbsZyIVK1taWTt9RF/HB2ZcI3Z3dm+JOp4BVv84HiWBalrLPIHNh77ElYQbYxAxcMWGoLC+plGVWO+BbmySuuWnEBuutB0m54j1lyS8ZmFvesmq1wXUgQsW3HJbkKI13T5UHPhbK/c2DKnuDbPkrO2aBMr8i1JN4MHF1roqQlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=indra.es; dmarc=pass action=none header.from=indra.es;
 dkim=pass header.d=indra.es; arc=none
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM (2603:10a6:208:60::13)
 by AM9P193MB0888.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:1fb::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Thu, 25 Feb
 2021 16:30:26 +0000
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2947:4292:a75d:c9fd]) by AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2947:4292:a75d:c9fd%6]) with mapi id 15.20.3825.040; Thu, 25 Feb 2021
 16:30:26 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP N300 - Set RX bandwidth
Thread-Index: AdcLkoPMyshVz7qTRM2zUvgiqmspog==
Date: Thu, 25 Feb 2021 16:30:26 +0000
Message-ID: <AM0P193MB0308B15687129D5E933F0135BD9E9@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=indra.es;
x-originating-ip: [94.126.240.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30284494-c148-4dc7-3566-08d8d9aaa82f
x-ms-traffictypediagnostic: AM9P193MB0888:
x-microsoft-antispam-prvs: <AM9P193MB08886C46B650809F322EB6ADBD9E9@AM9P193MB0888.EURP193.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z7UTaqvOi9hjRcwpa/RQc70vWzryjTRKC23qoF6wwg/65haOXU78ly0uAl7iyyqt9h/yvM0BdV39FtV7V9lZCM0js4PfQe3nG1OuzTy3+a7qRGScEgNYxnFkoScf0KjVqyxrIOgTXK21Lvb/fhZaHtd7WVIdVdmlRXp3SG3HCbePCVsHuLtkqvoAqvXJ01QY34/pw1lZO2YzX9LURbFBctRgtJOTt4cx6uDL2qW+5uUBEDVp9vov3U2C0kg3aTzqqyXPhwhLQK6ho2gU6o061t3UIuj+urx/I8kWWFcp9X4BBxPPnsExRGtg/0y/MGekqzWG9qUITlNQzyAql4WuA0Az3g4uU5cYJpqElyAiBz8olB3jk7MoCdmkRDXF27GzwKAaVZtzQ9WyOWGoveztXwMgpCr0JWw5jYdtcCS/LAAynh/BalyaR4BQR2muYMJ4LM7kSAtajpSyww9ANozyGOkXM4XHLqjwWIDE1FZcszNqmYKYKNHY8k82VsaXDOUnnOISOQwYTIU5Y5UQRb9wFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0P193MB0308.EURP193.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(346002)(376002)(136003)(366004)(478600001)(8936002)(19627235002)(316002)(2906002)(186003)(76116006)(26005)(8676002)(71200400001)(66574015)(86362001)(7696005)(64756008)(83380400001)(33656002)(52536014)(66476007)(6506007)(6916009)(66556008)(66946007)(55016002)(5660300002)(9686003)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?mWNSUJyv4ZuqvFKlgg+ZvQzgtBOqmkPsT5DpZFSO34II3dJxCGEs8bW7uj0s?=
 =?us-ascii?Q?8jMPl0F9LwfcZQEuCNHONMXJJA/LgpMB8Bya7facM9YNRwxu2cOgXaqM9XeK?=
 =?us-ascii?Q?YzvEmT1HMC0tzh163Y2tu9AmrMDU9CaoyuwbgAUJdh0/e2yaceGKtsC1fARQ?=
 =?us-ascii?Q?KRy8UGaLsWJ5OwmVX1R0qDuBP8/5mdUHHBLZY9L3t15Q+JIoxYrXCgkNGMd7?=
 =?us-ascii?Q?pq9UQW8aFuirLNz42RCygiyyw62SBvdrdYoW1ttsHO+0hBvazOxh5pQhQ+v+?=
 =?us-ascii?Q?zAcEHIsyg98onk6YONLz28I8SzE9uNJd1gHDOGV/lHaUA4kKS7VOMla+RdLs?=
 =?us-ascii?Q?Dtk9q2lHtl7wPU5YE03zWOsSUD8/ysr8SWjg1y/uAzXxM42Er79uBtxWcDAI?=
 =?us-ascii?Q?ItWAVwdX6SMGwS2BjzzBdi74VkpvpWeVlQoqlZwnKneTz+k4smiT5wleyWGj?=
 =?us-ascii?Q?oiDgb/LaQ55AiDLV4hxldXQ4z+uqgQdjS4AZoR7mTk3lSpw3bxfUAzfrquC8?=
 =?us-ascii?Q?AzNUOHI6zXWYuqcNyraR7LM7QqA6b5dbB6JOTpCMg9+ADR/mdKQqCQbAYBzi?=
 =?us-ascii?Q?NoR+1iiliywvpwCX5jcRrBMgoIm0ijeC7jjigf91f+j7naiIL2++MDbhQlAL?=
 =?us-ascii?Q?GzTNqJCWA3BDXB2CRpTzo9fpQtvStwefzHIoM13lNW0NNSE+MJH5TrH2/F7B?=
 =?us-ascii?Q?kbpk3mYyhRgLLv3un1GqYSn17/wOxXygSIjub0tA+DHtNNY5AAVc77qIW6Rm?=
 =?us-ascii?Q?4lZq6ZwpDOpRFvO7imKb+W3pCs6jO+b0WgonLc9XiSisxFQKv9Q2ubfvQq8V?=
 =?us-ascii?Q?LNl95hpIL7x7P7/a8dZqrF2pJx1SEUgUhY4NKUj3BAncQ7aaVxNASw3CQUm8?=
 =?us-ascii?Q?lxOeBmNfaYSiimECqUUcFow1J9WUpOaJDWpspS0CO7VnC4AnQF0VdGQqeB4R?=
 =?us-ascii?Q?B+Pkb5ZMCMxDvc731ccT7JDMbIjUdVUg9Tj7w3alxL5wIlN6cGKZ0hz6pnzZ?=
 =?us-ascii?Q?KseVDkJlLQ0yeQLrV13xm/S7klqSi83MqVJC50OpH9xvnPzbTUNMQaJJqIcv?=
 =?us-ascii?Q?ncG14XR3W0vlGQgjJ3pZ8g6N4OGxDL8b4smvafRk2sbUj4IF9U5JoAQWmh28?=
 =?us-ascii?Q?B52X/yNIHDBXWpRGYpi7Ka5L+CpciZM+LKuG3TGxdRIjuwmZxF9l+BAX7Sny?=
 =?us-ascii?Q?c2QIvpiU4W0CffSrMVCx24GNdpgRSDsdK2/FtxnffjdV54hZZoAvYHL0UJkk?=
 =?us-ascii?Q?ZXz7SaF5xo1Mquh+Dl1gk6FB39HX5/3eDl8UVOGA+f5w/zXD4leIImN4g1Im?=
 =?us-ascii?Q?6lc=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: indra.es
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 30284494-c148-4dc7-3566-08d8d9aaa82f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2021 16:30:26.1169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7808e005-1489-4374-954b-d3b08f193920
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ibcQIC0XECkWJ16VovCrZ0YEX3sAUpt/jdSmI6qr++zICCl5bTVzYHYlmUKQKSE/DnqcU0tSFwmumMBjbzNcVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P193MB0888
Subject: [USRP-users] USRP N300 - Set RX bandwidth
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
From: "Puertas Blanco, Roberto via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Puertas Blanco, Roberto" <rpblanco@indra.es>
Content-Type: multipart/mixed; boundary="===============6267543413900329864=="
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

--===============6267543413900329864==
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0P193MB0308B15687129D5E933F0135BD9E9AM0P193MB0308EURP_"

--_000_AM0P193MB0308B15687129D5E933F0135BD9E9AM0P193MB0308EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I noticed that RX bandwidth is fixed to 100MHz, although the AD9371 datashe=
et specifies an adjustable range of 8 to 100MHz. Why is this parameter fixe=
d?

double magnesium_radio_control_impl::set_rx_bandwidth(
    const double bandwidth, const size_t chan)
{
    std::lock_guard<std::recursive_mutex> l(_set_lock);
    _ad9371->set_bandwidth(bandwidth, chan, RX_DIRECTION);
    // FIXME: setting analog bandwidth on AD9371 take no effect.
    // Remove this warning when ADI can confirm that it works.
    RFNOC_LOG_WARNING("set_rx_bandwidth take no effect on AD9371. "
                     "Default analog bandwidth is 100MHz");
    return AD9371_RX_MAX_BANDWIDTH;
}

Best regards,
Roberto



________________________________

Este correo electr?nico y, en su caso, cualquier fichero anexo al mismo, co=
ntiene informaci?n de car?cter confidencial exclusivamente dirigida a su de=
stinatario o destinatarios. Si no es vd. el destinatario indicado, queda no=
tificado que la lectura, utilizaci?n, divulgaci?n y/o copia sin autorizaci?=
n est? prohibida en virtud de la legislaci?n vigente. En el caso de haber r=
ecibido este correo electr?nico por error, se ruega notificar inmediatament=
e esta circunstancia mediante reenv?o a la direcci?n electr?nica del remite=
nte.
Evite imprimir este mensaje si no es estrictamente necesario.

This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without authorisation is forbidden in accordan=
ce with the legislation in effect. If you have received this email by mista=
ke, please immediately notify the sender of the situation by resending it t=
o their email address.
Avoid printing this message if it is not absolutely necessary.

--_000_AM0P193MB0308B15687129D5E933F0135BD9E9AM0P193MB0308EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I noticed that RX bandwidth is =
fixed to 100MHz, although the AD9371 datasheet specifies an adjustable rang=
e of 8 to 100MHz. Why is this parameter fixed?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">double magnesium_radio_control_=
impl::set_rx_bandwidth(<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; const double=
 bandwidth, const size_t chan)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">{<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; std::lock_gu=
ard&lt;std::recursive_mutex&gt; l(_set_lock);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; _ad9371-&gt;=
set_bandwidth(bandwidth, chan, RX_DIRECTION);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; <span style=
=3D"background:yellow;mso-highlight:yellow">
// FIXME: setting analog bandwidth on AD9371 take no effect.<o:p></o:p></sp=
an></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"background:yellow;mso-=
highlight:yellow">&nbsp;&nbsp;&nbsp; // Remove this warning when ADI can co=
nfirm that it works.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"background:yellow;mso-=
highlight:yellow">&nbsp;&nbsp;&nbsp; RFNOC_LOG_WARNING(&quot;set_rx_bandwid=
th take no effect on AD9371. &quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"background:yellow;mso-=
highlight:yellow">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;=
Default analog bandwidth is 100MHz&quot;);</span><span lang=3D"EN-US"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; return AD937=
1_RX_MAX_BANDWIDTH;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Roberto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
Este correo electr&oacute;nico y, en su caso, cualquier fichero anexo al mi=
smo, contiene informaci&oacute;n de car&aacute;cter confidencial exclusivam=
ente dirigida a su destinatario o destinatarios. Si no es vd. el destinatar=
io indicado, queda notificado que la lectura, utilizaci&oacute;n,
 divulgaci&oacute;n y/o copia sin autorizaci&oacute;n est&aacute; prohibida=
 en virtud de la legislaci&oacute;n vigente. En el caso de haber recibido e=
ste correo electr&oacute;nico por error, se ruega notificar inmediatamente =
esta circunstancia mediante reenv&iacute;o a la direcci&oacute;n electr&oac=
ute;nica del
 remitente.<br>
Evite imprimir este mensaje si no es estrictamente necesario.<br>
<br>
This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without
 authorisation is forbidden in accordance with the legislation in effect. I=
f you have received this email by mistake, please immediately notify the se=
nder of the situation by resending it to their email address.<br>
Avoid printing this message if it is not absolutely necessary.<br>
</font>
</body>
</html>

--_000_AM0P193MB0308B15687129D5E933F0135BD9E9AM0P193MB0308EURP_--


--===============6267543413900329864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6267543413900329864==--

