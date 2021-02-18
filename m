Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A45D731E9E3
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 13:42:35 +0100 (CET)
Received: from [::1] (port=43178 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCide-0002wf-Bd; Thu, 18 Feb 2021 07:42:34 -0500
Received: from mail-eopbgr100103.outbound.protection.outlook.com
 ([40.107.10.103]:39760 helo=GBR01-LO2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1lCida-0002qZ-Mv
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 07:42:30 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lQKEYwkGucgqouNPo0GQmFP3VDCb5FtU+CJEYe6Im3yVGAF0v7FM9BlBJrRirF8QJnx1TtwSDhHN3VH9rrJq7Y2SDfKokc6GkycAGENYQ2amqEfgvqxNbG9cY1Oi+I8xkd6e0RduabgDcj70m4JFozPTErSJ1sEVi3RbGrLT/p3NbcoFk6d1X3oiWOtXbL2yKV/CcEt2j+wJ7eD6Qh7ZaX3hVvLsuYl+0Hq6J314ZowSmw/SmlClrniuJnfkb2XlOwjcQLp8SuOMOp/GBjpj8UDZ9SY35T+g2Etwx0O8n9i7NsgomLUrF5yVTkO8N7fe1OowEIqI+/TPXB50Ivh8jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kSbdV/+2DFVvAeJc62ujxcRpGEBoB5AV6VFWSjM5MDg=;
 b=Y30/cwxzXAdpuxQEXBhse6KovxTAlf9A+kCVbdfg+m2fNiuFZtPHme+Y6L/aaBVGE2v9UMi+xIPgtptsX3FvmQUjE/mVAdKhlfzeUJ7+wX63s46P5KI7DlsWMKBGOPvwgSm65KMZYeg+02UP1ZguYgy+NSHmZoI52tDht/QvE9BBzhE1L0tC/219DlKcempZaR9pU/r8PdmD/ElsYsfoTbWSj5VpMsAjcfHwptitW3bsFlHhOqyqbpFKu/XpJvcKiAxLDqT8nGetkupvF6XxfEmNzeTcrPrh25xzV9+NdlWf6uGL1gk/5ucW0n7UjgHp4xrmmQol5MUHBi51j83bjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kSbdV/+2DFVvAeJc62ujxcRpGEBoB5AV6VFWSjM5MDg=;
 b=f93xDBwCPwGySrinT9UYvbn0Ohhzn6342DGVT29a2BS6/XMyl4VyeNAm1MaKy+rXGPN+iY7qEp1T1jBlC6jVOAk5PkQ2FnuioaM/ORHyOGqk4IycC8yLW9mmUweQ6AAzrfFS9M7r+qab77MLXkLb/q5logSlg3jN5TWTQILu0Bw=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO2P123MB4588.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:1c5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.34; Thu, 18 Feb
 2021 12:41:48 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3846.044; Thu, 18 Feb 2021
 12:41:48 +0000
To: =?Windows-1252?Q?C=E9dric_Hannotier?= <cedric.hannotier@ulb.be>,
 usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
Thread-Index: AdcFQlWECmXf12heRQuWe0v7YuOKiwAECAiAAAJrJQAAHmOZAAAHbuf+
Date: Thu, 18 Feb 2021 12:41:48 +0000
Message-ID: <LNXP123MB37243469ECCB695FD772B87DCA859@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>,
 <20210218090858.serfuy4u67rmor6c@barbe>
In-Reply-To: <20210218090858.serfuy4u67rmor6c@barbe>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ulb.be; dkim=none (message not signed)
 header.d=none;ulb.be; dmarc=none action=none header.from=hmgcc.gov.uk;
x-originating-ip: [20.77.25.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d3bf371-e7d5-435d-ff92-08d8d40a8ee4
x-ms-traffictypediagnostic: LO2P123MB4588:
x-microsoft-antispam-prvs: <LO2P123MB45881A33FB70B59D26493468CA859@LO2P123MB4588.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D6Kei2tVcTQtXyi4MLgjEohqlz3l3KhfuP69KXQEEfaOcbPDAjVTOBC4s6Y7uIoERrm6aNcrsXHRciX4rTnGxdZY7JUKoWWvyx2VyJWec2B3ArRoGRLg6INB09h/0b1EIBTTekDUeQ1KIh4X06gwPhyXCj+9yQ+89puxKr1kTPmgDjr8tCqFQoBVeaVnN9808GRSL6MDsdM26U0X8Q3NkzhK4AkjFt/S37lkkh8GnHsEzmI6YD+LXinroCDxItyTICMU1iFcXj9Y6PP2gZ7UTtHmFbk1ekfNFMTaXZVb2RLeS4lGuWX+m3hku3c+yZ9R6cCH3SGEEuzw7r4MpSoMML1slda2F9MZFs6orgHojuMqE9o293Gz4CGKzoUk/bb1EVzxOYMDofp2CUH9zcaNqbJdeX/STWnBMXIJRXDzX2Ala0ctLsDMGlFAA0blUTsOZbtz4RY5+SC+vDtoIbuW6ma/d5GJeIuwG6NLXV+IY/giBtmuI71ijgVRjMfOftthaZZgGtNkKZ27igWyVxP1IZqpR8CaEA+WZw3jxVtG7pp9ZpaWOmgdhbnrMHYkA9syflqoh3jYeuSWSwtMzZj0unA9oxw8pk656yfmvknJCsE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(346002)(396003)(39840400004)(366004)(83380400001)(316002)(21615005)(52536014)(8936002)(7696005)(66446008)(55016002)(76116006)(66574015)(19627235002)(26005)(64756008)(66556008)(66476007)(8676002)(5660300002)(166002)(33656002)(478600001)(66946007)(186003)(966005)(2906002)(6506007)(9686003)(71200400001)(110136005)(86362001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?uWmkNrk91K1k1slgggabRGSfX+4d/BejVSDofV0Ha9BoEsLAtW36L34y?=
 =?Windows-1252?Q?vE4wI0hb+SQ23nRgsYj6s1/0FYuPIfkB9/6bwMkT26xAFQwaCjhXlj8h?=
 =?Windows-1252?Q?zJHAzjKGsaTAb5DxLIZDik0pBV+F74xSZrAiolyDqqlJFAjpOwEudmv5?=
 =?Windows-1252?Q?eJCboq9QazRjizllFfuJI2gpoiKph+avOZy5JXsMIfRet54G4CBxY/mA?=
 =?Windows-1252?Q?ZGALWISl6w0n/RDZyQ7DiskNEabLB5OKsyA5Jk3tD6XTKjvXo4/22EdC?=
 =?Windows-1252?Q?WwZVmcJQxFEHv4SolfLQ3CbV7QWvLcdokoKbZ+Fo3Kl3puECrkxKDv6q?=
 =?Windows-1252?Q?GCTY2hj34HQsg9tL/J5ZuCxpX9rVvIA/GnYTxzJvwyYtrKtB+SXUae7U?=
 =?Windows-1252?Q?VuyWy9ht0RlFgP5ymRKBrJOnDPMC34Pyu6CoMsvgdCBHP8vK991PmF72?=
 =?Windows-1252?Q?vCK5fy+smn5t/Obt8DwhFQnfTBKEI1lApKeZXnXm61Yr+A2y177WbQBy?=
 =?Windows-1252?Q?ZKU44XvAWLwAuYf4cjqX5uiDFlmtqv0dfVyQqzwMCiQNgM6nabfzuRVv?=
 =?Windows-1252?Q?y9aZ58RJm2DD3GCfuhEsPDipBGduAbH1LfZ4LqCKKQ/NXzOeDlpkDLXq?=
 =?Windows-1252?Q?yE9d1yQp/Uf7EtAzBVuWqlR925s6CmHrj+nwkqwduJBreewL+ln0f40U?=
 =?Windows-1252?Q?K8+Dc5GScKLufSex0XH8bNYK3cXVQ9KJ08P7x4XixZ8XVYQiYLaAR3Yb?=
 =?Windows-1252?Q?mRKT8x2upA8lh+jfYV+AxqlCJPWVNbyX2bT4Y+mi/atNsgW8wycMho8E?=
 =?Windows-1252?Q?U+UKI+2uYu0X2N+9M2mt9X5MwKJxozMDukzae7InbfIj5EUr566AIVBA?=
 =?Windows-1252?Q?h5wxiw4wNR3uw7poP6eI0jaeiBqbg+lB5LcGP97VNgUvHLRvOrotRAOx?=
 =?Windows-1252?Q?1Q275uNEBrLQzzDt6oxBAm9LibBq+QTO40NFuT9y9I8UeUOV7w2ovzQl?=
 =?Windows-1252?Q?Q/ViMBz44oHeHzYhJxu2j2lRKRMmHGXDlaKngPuWWIfUnqG/Q8O9YAIU?=
 =?Windows-1252?Q?D6U8HettnstO7BmF2OeojEjkYVPlMCQ8LpjTWGf92AA2+C/xH1jE1lo0?=
 =?Windows-1252?Q?e65t83bRt2UpXKVnH/KwYtiKQ4vPlDK2AsRy9Gh/zC3OoERaKQ0EXmQD?=
 =?Windows-1252?Q?e2BvVp1IsYO1uNexknY/9Y9bBA1Qd5vvKhtJ12ZTDf0orP2AnV1jGMiG?=
 =?Windows-1252?Q?A63j4quH/23SYW6VjhtNFkB5M264lkY1s2FAfWSnbwMaaeHZUuE6CCxu?=
 =?Windows-1252?Q?zY5qyoCaL6KF6CJcGeiFO8lU5WaZiYwEGAiiUWed78ig4qMXA2iOiZUP?=
 =?Windows-1252?Q?VjF2b5JRYcmtAnUcP13MF3EqsewISdcjLe6UaN4h16+UTKaQh/IOE4oK?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d3bf371-e7d5-435d-ff92-08d8d40a8ee4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2021 12:41:48.4063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6HaFIEKSUSs20nE0kzcSi1nNQttrVqN3I+EYapA6odoKQHn3gRXkbSXzeYQuMU/0872129eYl6Fu/88lothrFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P123MB4588
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============0699875316030816643=="
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

--===============0699875316030816643==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB37243469ECCB695FD772B87DCA859LNXP123MB3724GBRP_"

--_000_LNXP123MB37243469ECCB695FD772B87DCA859LNXP123MB3724GBRP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Cedric, Rob,



Thanks for your help. It sounds like this is the issue.



I=92ll give the workaround a try next time I=92m in the office.



Mark



Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10



From: C=E9dric Hannotier via USRP-users<mailto:usrp-users@lists.ettus.com>
Sent: 18 February 2021 09:10
To: usrp-users<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNo=
C Digital Down Converter



Hi Rob,

On 17/02/21 13:38, Rob Kossler wrote:
> Could this be another case of the "issue_stream_cmd" never making it from
> the streamer to the Rx radio?  C=E9dric, didn't we find that if you don't
> have a custom block controller, the stream cmd does not propagate as expe=
ct
> to the Radio and thus you get a recv() timeout?

Yes, that my thought as well.

Information about the bug and known workarounds can be found there:
https://github.com/EttusResearch/uhd/issues/406

and the mail thread is here:
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2021-January/06=
3522.html

TLDR, your custom controller (cpp|hpp) must be compiled in-tree with UHD, n=
ot OOT.

Regards
--

C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB37243469ECCB695FD772B87DCA859LNXP123MB3724GBRP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
.x_MsoChpDefault
	{}
@page WordSection1
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-GB" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:brea=
k-word">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Cedric, Rob,</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Thanks for your help. It soun=
ds like this is the issue.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">I=92ll give the workaround a =
try next time I=92m in the office.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Mark</span></p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwli=
nk/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal" style=3D"border:none; padding:0cm"><b>From: </b><a=
 href=3D"mailto:usrp-users@lists.ettus.com">C=E9dric Hannotier via USRP-use=
rs</a><br>
<b>Sent: </b>18 February 2021 09:10<br>
<b>To: </b><a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users</a><br>
<b>Subject: </b>Re: [USRP-users] OTT Gain Block stopping samples flowing fr=
om RFNoC Digital Down Converter</p>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">Hi Rob,<br>
<br>
On 17/02/21 13:38, Rob Kossler wrote:<br>
&gt; Could this be another case of the &quot;issue_stream_cmd&quot; never m=
aking it from<br>
&gt; the streamer to the Rx radio?&nbsp; C=E9dric, didn't we find that if y=
ou don't<br>
&gt; have a custom block controller, the stream cmd does not propagate as e=
xpect<br>
&gt; to the Radio and thus you get a recv() timeout?<br>
<br>
Yes, that my thought as well.<br>
<br>
Information about the bug and known workarounds can be found there:<br>
<a href=3D"https://github.com/EttusResearch/uhd/issues/406">https://github.=
com/EttusResearch/uhd/issues/406</a><br>
<br>
and the mail thread is here:<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2021=
-January/063522.html">http://lists.ettus.com/pipermail/usrp-users_lists.ett=
us.com/2021-January/063522.html</a><br>
<br>
TLDR, your custom controller (cpp|hpp) must be compiled in-tree with UHD, n=
ot OOT.<br>
<br>
Regards<br>
-- <br>
<br>
C=E9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB37243469ECCB695FD772B87DCA859LNXP123MB3724GBRP_--


--===============0699875316030816643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0699875316030816643==--

