Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C405B0B0
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jun 2019 18:42:14 +0200 (CEST)
Received: from [::1] (port=59184 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hhcu0-0000e0-5y; Sun, 30 Jun 2019 12:42:08 -0400
Received: from mail-oln040092072086.outbound.protection.outlook.com
 ([40.92.72.86]:46641 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <andrewjohn83@outlook.com>)
 id 1hhctv-0000Zb-Tl
 for usrp-users@lists.ettus.com; Sun, 30 Jun 2019 12:42:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vs9bgXpQDxuc03GmucoFGNDe+YRa5ToIbkQdjuzwP5c=;
 b=LWKRLS7eVG60RKID87/RjJ8d1FbOYU0TMARfIxSEaizEftlKPthSw3aAHNf+OLytRExlCLbKOvK1F/PvrG1LKtBnu7sy/inpjKC38fRQGkWdft2NjiPcJdXjS+E6gHsa+jWgFgxAJw5yyLx43Cse3dI8KfW5uvnP7knYWg/+y3Huvgl54N/W5A+SEDgz0acBwbzES0SY0ZWhqXUgpcR17WgUgXUw5uvQdMctPDcsPGF59RRHpqU6iQUm0+AoUCQ/+X/p/S/weegBZOVR2Y42repsfuf5pCXjBzf/jxercHVstteWuzJn4i0WUa0ILPOhYR8UBpykhFNiNHi6VegtZg==
Received: from DB5EUR03FT012.eop-EUR03.prod.protection.outlook.com
 (10.152.20.53) by DB5EUR03HT072.eop-EUR03.prod.protection.outlook.com
 (10.152.21.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.15; Sun, 30 Jun
 2019 16:41:20 +0000
Received: from AM6PR04MB5222.eurprd04.prod.outlook.com (10.152.20.53) by
 DB5EUR03FT012.mail.protection.outlook.com (10.152.20.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2032.15 via Frontend Transport; Sun, 30 Jun 2019 16:41:20 +0000
Received: from AM6PR04MB5222.eurprd04.prod.outlook.com
 ([fe80::9556:bac5:be47:fa74]) by AM6PR04MB5222.eurprd04.prod.outlook.com
 ([fe80::9556:bac5:be47:fa74%6]) with mapi id 15.20.2032.019; Sun, 30 Jun 2019
 16:41:20 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC Utilisation
Thread-Index: AQHVL2EfXDgzfVMxbUq2yQMrUmngVA==
Date: Sun, 30 Jun 2019 16:41:20 +0000
Message-ID: <AM6PR04MB52221BE873AD22C1578ABD06DFFE0@AM6PR04MB5222.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:FAE38F5CD88635ADF244E1762071952793D4D60BDFBB3184EB351A497766EA8C;
 UpperCasedChecksum:D46C95F84F4E73F6B548B835B89BF3300A6000AB2224451D413CF99A2AD5D95D;
 SizeAsReceived:6621; Count:40
x-tmn: [vaXasRYrQ4PYcMMVsxsRBdti3yWNFa66Lmn92vnSamr4osruM3Q1yO0PbE9rW9cG]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT072; 
x-ms-traffictypediagnostic: DB5EUR03HT072:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-message-info: vytIFJDQb/KWOc4FVgbtE9tywGbc5R8zlhJvijdhjgAay0+2+ozUIAfy7cTGWDyQI+SPESSSoxsZSu5E0PnYx1qE5ZUVhva4h5baQoHJvm18Or1i5V5kN5xSmk0hjGD1ll0BSqP0Czjak+jOAHMuiZ5AvrAyKgonkxTlSZkfB34Vu8apwDRGBc2+IviIQn72
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 39cc4508-2991-4315-71d9-08d6fd79c7c8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2019 16:41:20.3806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT072
Subject: [USRP-users] RFNoC Utilisation
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Andrew Thommesen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Thommesen <andrewjohn83@outlook.com>
Content-Type: multipart/mixed; boundary="===============8928325763746990973=="
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

--===============8928325763746990973==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AM6PR04MB52221BE873AD22C1578ABD06DFFE0AM6PR04MB5222eurp_"

--_000_AM6PR04MB52221BE873AD22C1578ABD06DFFE0AM6PR04MB5222eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

According to this link (https://kb.ettus.com/X300/X310) the baselink RFNoC =
X310 image should use <25% of the available LUTs. However, my build uses mo=
re than 50% with a single DDC using the same UHD release:

./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8 --fill-with-fifos.

The DDC should not require >25% of the available LUTS, so am i missing some=
thing? Should I be using an alternative to the X310_RFNOC_HG base image to =
achieve this utilisation.
I really need that 25% of LUTS for my design so any guidance would be grate=
fully received.

Thanks,

Andy
X300/X310 - Ettus Knowledge Base<https://kb.ettus.com/X300/X310>
Device Overview. The Ettus Research USRP X310 is a high-performance, scalab=
le software defined radio (SDR) platform for designing and deploying next g=
eneration wireless communications systems.
kb.ettus.com


Sent from Outlook<http://aka.ms/weboutlook>

--_000_AM6PR04MB52221BE873AD22C1578ABD06DFFE0AM6PR04MB5222eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
According to this link (<a href=3D"https://kb.ettus.com/X300/X310" id=3D"LP=
lnk344939">https://kb.ettus.com/X300/X310</a>) the baselink RFNoC X310 imag=
e should use &lt;25% of the available LUTs. However, my build uses more tha=
n 50% with a single DDC using the same
 UHD release:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8 --fill-with-fifos.=
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The DDC should not require &gt;25% of the available LUTS, so am i missing s=
omething? Should I be using an alternative to the&nbsp;<span style=3D"font-=
family: Calibri, Arial, Helvetica, sans-serif; background-color: rgb(255, 2=
55, 255); display: inline !important">X310_RFNOC_HG
 base image to achieve this utilisation.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; backgrou=
nd-color: rgb(255, 255, 255); display: inline !important">I really need tha=
t 25% of LUTS for my design so any guidance would be gratefully received.</=
span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; backgrou=
nd-color: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; backgrou=
nd-color: rgb(255, 255, 255); display: inline !important">Thanks,</span></d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; backgrou=
nd-color: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; backgrou=
nd-color: rgb(255, 255, 255); display: inline !important">Andy</span></div>
<div id=3D"LPBorder_GTaHR0cHM6Ly9rYi5ldHR1cy5jb20vWDMwMC9YMzEw" class=3D"LP=
Border555056" contenteditable=3D"false" style=3D"width: 100%; margin-top: 1=
6px; margin-bottom: 16px; position: relative; max-width: 800px; min-width: =
424px;">
<table id=3D"LPContainer555056" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td style=3D"width: 100%;">
<div id=3D"LPTitle555056" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: wf_segoe-ui_light, &quot;Segoe UI Light&quot;, &=
quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Taho=
ma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor555056" href=3D"https://kb.ettus.com/=
X300/X310" style=3D"text-decoration: none; color: var(--themePrimary);">X30=
0/X310 - Ettus Knowledge Base</a></div>
<div id=3D"LPDescription555056" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: wf_segoe-ui_normal, &quot;Segoe U=
I&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12=
px; margin-right: 8px; overflow: hidden;">
Device Overview. The Ettus Research USRP X310 is a high-performance, scalab=
le software defined radio (SDR) platform for designing and deploying next g=
eneration wireless communications systems.</div>
<div id=3D"LPMetadata555056" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: wf_segoe-ui_normal, &quot;Segoe UI&qu=
ot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
kb.ettus.com</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
Sent from <a href=3D"http://aka.ms/weboutlook">Outlook</a></div>
</div>
</body>
</html>

--_000_AM6PR04MB52221BE873AD22C1578ABD06DFFE0AM6PR04MB5222eurp_--


--===============8928325763746990973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8928325763746990973==--

