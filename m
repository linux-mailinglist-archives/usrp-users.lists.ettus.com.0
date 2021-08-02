Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AAF3DD59E
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 14:26:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3044538442F
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 08:26:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=connect.ust.hk header.i=@connect.ust.hk header.b="VT0GQc2l";
	dkim-atps=neutral
Received: from JPN01-OS2-obe.outbound.protection.outlook.com (mail-eopbgr1410139.outbound.protection.outlook.com [40.107.141.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 7575738424C
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 08:25:46 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dTC6ETsZpXcY6aBCRP6jGcGCb//cQhjUSzzmfiRUcCrATAy8A1q4oh2nZf1KI8iewqyJ29vbc6VVdXwSXztQhjfWn5UnDm9lXXeJJAAmSMe+0anxPC9EGeD2+p1Ubca2STK0ZaO6KLRA0CtzWqgwni64Y/yGPGLXg4woZf3NtAIVkeQWzi+58LQUsJ5FhgaQuo4vQhnSzPDPePo8tZuP/+F3TcMJCYVT4pUQ4HymZ38Y0N9DTg+YUc+8hBIwjBrmY6GgAAj8rw6IKby71nF0rAbQxJB9qotTRCk5gEY2V0hZ8JAH04y07mHA/o5LFYjd5np5UfBJ7XNqMVJGuloEyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9NgyTKUWpRDBADt3TcsFh2F7drYKG11wSY7gfUdgTw=;
 b=kJ+MJe6UHmrOmJqVrBtwOBsa+Pff1yFv91eDKsAS2+5OhQ+9g9RBQNGTOBnm7UAiaCrgwOhqSmCG+TyoYe5WiAWLmfiAGqstbfhnQOSbFug4qQyJ6+OATGRRNPRQ91giux5sm7ZWt8cmyY/LQHOB6aC1bzuky2jTeskdvI1xpcPbQUbKT/2O0Mjz2DsHp8d9ikDBPlSkOonIEifuN6efXjxEY+xcvhRoJU+Hn2mIAbPEDK22nX8yy0yWREIvIF1n/uiNf3RikG3TY5c3g3NkUK53tShZc63Z9nr8W29vFvhs08Ef88xASWF6+1d5yqTEY7tYP6+LUgir7uUMeUZVVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=connect.ust.hk; dmarc=pass action=none
 header.from=connect.ust.hk; dkim=pass header.d=connect.ust.hk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=connect.ust.hk;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9NgyTKUWpRDBADt3TcsFh2F7drYKG11wSY7gfUdgTw=;
 b=VT0GQc2l80tmw9RCD80L76KOS2Onygtzf2fKCl45alAS+nvRSFUyN1nn86ZtBm4/xuK+p/kanKPKHB+xLhafvBMBVOfRTGTtwJMaY4gYhva9Wwivow5uqrHNMOHevkhCaPOtTs/aOOPPeCmYARcpK4UCYUFZPIhbgPRlRY8zNAo=
Received: from TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:8041::7)
 by TYAP286MB0876.JPNP286.PROD.OUTLOOK.COM (2603:1096:402:3a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Mon, 2 Aug
 2021 12:25:43 +0000
Received: from TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM
 ([fe80::9ee:2a0d:e00c:28fd]) by TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM
 ([fe80::9ee:2a0d:e00c:28fd%5]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 12:25:43 +0000
From: ZHOU Yuxuan <yzhoudo@connect.ust.hk>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Is there a "trigger" in GNURadio with USRP? 
Thread-Index: AdeHmSYE7Iq3nXHGQnGBGxBx5tFZ4w==
Date: Mon, 2 Aug 2021 12:25:43 +0000
Message-ID: 
 <TYAP286MB0217AB8837C04DA21788E3728FEF9@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=connect.ust.hk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f305fa1d-a02b-4bae-a35e-08d955b0a5f7
x-ms-traffictypediagnostic: TYAP286MB0876:
x-microsoft-antispam-prvs: 
 <TYAP286MB0876BC84FB7FF74E979C81688FEF9@TYAP286MB0876.JPNP286.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gnv+7r0mMa33KmE7hzt3T/YQo0cfEIgLDWSHzeT0wVG/wRdXn66kg9KcyFg3PAvPwJnZVycV8K9qZWWBYz9XRiQJDPPLX+pzaa1VFM91lokEOpJ9tb80KGyCV8DihyDJd3fLNrLNFoWcLihmx9VoipiTh8ZpP3mOeVLQVTwXqF0V5rrzh57NWiGsaGmhGa7tu2+mWQ48lFVdL9pMC8XtymV4SgkJOZMHPyH6KK9tFKHM3vexygz0hRt4PC5yPixl2loM8d5gocn5tjiUq8iC+gq9AjuKXeWKYHfA7gGcEL9UleB7bVYr1JL8oPWFludIHybOFzYJ2jj5DUK3DKBr1evMpWUXS6L+bKty076boYlDmW2Z8EdCJFmvmLNJea7Y9mFWGhUccF5MT4cI6h2x8aPvuzhFTPf1nwGa5Kd6hunvAoww3VrUCOlr4BmGtm1rUCI0F8o8Jb4zZw46KzRJl7fpX9hRmWL2x/7LAXwh7YjLfjMgW/su+r+ma0XpUI2GehFAeF0mJ+K4Z45ZgeeYirnFH/wzihuW3DdZT+MR6LfOTdtaLavZkYygSMIvgeLTRltKUaGSqMWfoI6QsXOEuBpryGXXguSF8f3TrMhG9/7Arm6Q+SoVSw6lnPrJGwrFMDjrQktklOroMW6aXCPLL0wD0hOXzSzKxAQv1dcQg9NYitbPF+o+yUaa5JNK6DhA
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(376002)(366004)(346002)(39840400004)(66476007)(786003)(122000001)(478600001)(4744005)(6916009)(316002)(33656002)(6506007)(9686003)(66556008)(64756008)(38100700002)(86362001)(76116006)(66946007)(71200400001)(66446008)(26005)(186003)(52536014)(2906002)(7696005)(5660300002)(38070700005)(4743002)(8936002)(55016002)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?4NuB/g/5XV4I1qBzIJlaJ12ebiLtLXbgH5fUEt7RhPX4exo1GfxYOsWYep3E?=
 =?us-ascii?Q?bKa0EVbXy6/9qWHIKqeDVF4igLtkU3k10X3aYD5CW+peMM3k3ZOBiqCia3ro?=
 =?us-ascii?Q?lM4cy77yXegb5803eN89V8uEFDHVWJI+IKPsek/S6QLD4QBAXIaPXDkhTR93?=
 =?us-ascii?Q?2m6bRl1YnYZeXu+tbntDU7SxONDbzx1yHC6VsE7sCKuRYusE3fOoGKZ86gXo?=
 =?us-ascii?Q?LX8B98Dcqv3pnKzBSUyT7Vst2yX1cMgybpb3k7C+LMMOnYKDn18F25DTbIz7?=
 =?us-ascii?Q?dxd4BZwc/wKypxZ3HoB4sc+rZDwLHPeaMEFUMgujCdAxWdFXTOAkTxOq1l2S?=
 =?us-ascii?Q?2aK4zB5yUYDEyrLBoqj8adzlLdXghUdM8a3LGELwk9KkbahrC/fRInjXgufb?=
 =?us-ascii?Q?fEnv/vJjILXtYlqafPZXE6adlV8x5eaBDRM8X3hrnRIoqyDMESY/Syjo412J?=
 =?us-ascii?Q?ZVHmwTnBPNwVZ+APtd3/Y4TAOigq3mhTrpmYyLF6NuQ79FUweNbUcH3xhQvq?=
 =?us-ascii?Q?StssfhXESyFFQ/iIzx3TupvemsBT+cyAXKQo1inSRzSfYpbQ+sbv5HgrIQhc?=
 =?us-ascii?Q?suApJW8TssxAjosvxsf11ptn/4ztu0ViqF8A6WHdPU4AOeDAzKt2oSITyU9a?=
 =?us-ascii?Q?zVp2EYPGWlTN+gRRM717TjR10kna2uStI8tgKGkWpsuIE3th1yfwuyqd0Wb0?=
 =?us-ascii?Q?0sH69Fc3DNCSejPqauPM0GmcMDn3JulGK/l/sUSoA0g7vw/ZSnhhfDT1CJDk?=
 =?us-ascii?Q?Bt53RoEKQGQTm+ivHL00gwswlouyUQI9j3llS69BrX3Id5zy7BDnFEmQX08S?=
 =?us-ascii?Q?LgfXHwrpR0hsSnIf5xoHpBo8cdqOq4fo47e6hN+f6iMnmQ6zmkExunSn0i4Q?=
 =?us-ascii?Q?vq1LuA2+++DFbz4ZoUb2KOlgeIakzloXUYH5EdF+C1DY/aVzVK1/qcMDCXHj?=
 =?us-ascii?Q?0P5VzhfbgfVPLxGEnjSll27qHzwl+sTbAvMZIktgoIT+IPgLQcMb5yB8Wv1r?=
 =?us-ascii?Q?frXzhujIhzclzDjt3d4TpTqvRnnO8iWzUagwmzvZm6eyZgY5yuT58KE7mZuN?=
 =?us-ascii?Q?wx4E76TK9oL6EUrsrsnG4k5D5E67ZVPoT8v07jfz5EuYU3ndeTRFlGa+6xv7?=
 =?us-ascii?Q?WuRIaaE7Arz9tagFDZ9NEQWmeS7khzPIzyObxVygtMZISZp/tEMeaE0ewLV+?=
 =?us-ascii?Q?sKLppdErZRGI83OFcOEiNebDNS8PIYchcKckBqEPwX/H3nezCWyaDFwYe22o?=
 =?us-ascii?Q?Rq+W1P9l1Ke0qu3nGkXxu1C44r3+lEJ+t2mjIMzuRDgtixrkGZlHAAeCMUpp?=
 =?us-ascii?Q?Bw0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: connect.ust.hk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f305fa1d-a02b-4bae-a35e-08d955b0a5f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 12:25:43.4998
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6c1d4152-39d0-44ca-88d9-b8d6ddca0708
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WbEWuhP5HlPKxDSX0LjUOD2dG061sNgBfnPTYscIkAq3Y3t5au6kB5AYEDZrYLPKU3bfa/7mxRCiAgGJubdvMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAP286MB0876
Message-ID-Hash: 75UL5IRJH47QUR4JCG4MOSJFEKRNFUHD
X-Message-ID-Hash: 75UL5IRJH47QUR4JCG4MOSJFEKRNFUHD
X-MailFrom: yzhoudo@connect.ust.hk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is there a "trigger" in GNURadio with USRP? 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FBQPWDOSMWFW224HPIVYZSNBAT2BRN7J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1288598678229915613=="

--===============1288598678229915613==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_TYAP286MB0217AB8837C04DA21788E3728FEF9TYAP286MB0217JPNP_"

--_000_TYAP286MB0217AB8837C04DA21788E3728FEF9TYAP286MB0217JPNP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone.

I am using USRP N210 and Gnuradio 3.7. I want a "trigger" like a button tha=
t only when I push the button then the USRP start to transmit the sample fr=
om file source. I did not find any materials or experience from other about=
 this case.

The reason I want to do this is that the transmission is correlated to the =
human motion so I need to control the timing.

Is there anyone know how to implement this fuction?

Regards,
Kevin

--_000_TYAP286MB0217AB8837C04DA21788E3728FEF9TYAP286MB0217JPNP_
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
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:\7B49\7EBF;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:\7B49\7EBF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:\7B49\7EBF;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word;text-justify-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using USRP N210 and Gnurad=
io 3.7. I want a &#8220;trigger&#8221; like a button that only when I push =
the button then the USRP start to transmit the sample from file source. I d=
id not find any materials or experience from other
 about this case.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The reason I want to do this is=
 that the transmission is correlated to the human motion so I need to contr=
ol the timing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there anyone know how to imp=
lement this fuction?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kevin &nbsp;<o:p></o:p></span><=
/p>
</div>
</body>
</html>

--_000_TYAP286MB0217AB8837C04DA21788E3728FEF9TYAP286MB0217JPNP_--

--===============1288598678229915613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1288598678229915613==--
