Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 470DA84AA93
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 00:34:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECE8A384AC4
	for <lists+usrp-users@lfdr.de>; Mon,  5 Feb 2024 18:34:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707176059; bh=Isos6f3R9oflvgfh/+OEXFxf4YEAaFOR4uwRgExOOnU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YRZRtAp+cd7LY1BZvUgObu5s8W14vEYvmEAeNqBhHuHX1ZpAZesj4L5Yp7iGLhyl3
	 dNkiVyNciGsD4Ahm/9W2COkfBox+xJ00+d92qYMvvmFj5xMIqQhQ+StrxbVAehYGfO
	 w0g7O+kD39L/RzFQX5KY8pKp6uCYWWFAXakMpsSpnPnm2OTPpqU6RKs3L2NqVkP3Z5
	 XI/+xmiO1tSsGhnnMNdwppVzULRaj/1P8ZXMm4QK42buCJPY2Dgh9/QPAZdY4XzEug
	 9ctadTAraBTZEkM9CX4zcRtY8c1udFonTjoqe+/rkvSOtIGuKJlQVbMbGgcQ0dgjf5
	 TIlcxj5Q275Ng==
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2137.outbound.protection.outlook.com [40.107.100.137])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F35038465D
	for <usrp-users@lists.ettus.com>; Mon,  5 Feb 2024 18:34:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=packetloss.org header.i=@packetloss.org header.b="vEEd6dSK";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RBDD4KKgnJ93jnayiCDhAAHVeX22dsBiZv64OxCAX4yK4dQOPePLeHtP01VHV6wTFTzhYVX3nXtiI4bRYCdBdEbHFZt11KRVwAH92b+IORNkpJ9dGjGsRfviLRl8FVQHnoIyNojlPI72iQaEkz1VLEof4kc/ivm8tr5rF7m5+WFhYOosKU1hNoZu9bTEdAIKi7yQ8Tj8CKrA3eFB0EyMMXQLl5vA6YLxNLov87bqg4DQcXlVb3uakkH5xBzj5KQFDAqkhaUe89vDwZxTLf7BboCEVCLC/ywquXOMvunDXo4YL+nsVYjCBRohU2dwsTvlnJKIDtAcoXYxU4+6nP1hfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aWPQiiGk6ZspBnpYJBgZCMK+hnx83thYAl1C1b8s5eU=;
 b=n84utkuhX7Y5Ju9EmhI61R4lWbia5yx+wwDaioQ5v5TjEs56gfnYiEJYYd2RbqViUP6WgIh2UrceKWkD/BlrndNS0IYwem8QeiOyNVr8c73TPfAtzkChD5Ol80xFAJ4BdCn8upWqIXCOA0AWqRjZaf71mRHcVCwQQChgBZDFDZel39a9OxNa9fa7GD7kG4CjWwd2BcGXm4YrLS6i0HYbR/sVA4mSTxGu3tMIoDi5syxVQEMr9ju6q4BeZCUfQfFoABQEX5nX0EYLhNg2O9rERFNepwLsn44Xva4DCASF33k1n/ZGYIGCTYKftMIW8ECuXMqm5XL0mjYnjX+XTdwPhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=packetloss.org; dmarc=pass action=none
 header.from=packetloss.org; dkim=pass header.d=packetloss.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packetloss.org;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aWPQiiGk6ZspBnpYJBgZCMK+hnx83thYAl1C1b8s5eU=;
 b=vEEd6dSKHCgof+8SErx6FBo9sqRuhWDMVtzj87WaOgQA0bIMXblouxt3ibMTL22uIykjenuDDcJEfuf91CACyz89AHPbw5U0o0PRFDhB1tACKBFeJJAfQDN5e7jhqujqFi3bCDDPq1QCJbIzViqaF+5bCuWIxLV3oI++uMI9pQg=
Received: from SA2PR16MB4234.namprd16.prod.outlook.com (2603:10b6:806:146::21)
 by PH7PR16MB5951.namprd16.prod.outlook.com (2603:10b6:510:305::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.15; Mon, 5 Feb
 2024 23:34:03 +0000
Received: from SA2PR16MB4234.namprd16.prod.outlook.com
 ([fe80::590d:30a1:687:a071]) by SA2PR16MB4234.namprd16.prod.outlook.com
 ([fe80::590d:30a1:687:a071%5]) with mapi id 15.20.7270.012; Mon, 5 Feb 2024
 23:34:03 +0000
From: Lee Strickland <protocol@packetloss.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310/UBX-160 power_mode "powersave"
Thread-Index: AdpYi3E4rRD4lkhiRKG8Zm/64yManw==
Date: Mon, 5 Feb 2024 23:34:02 +0000
Message-ID: 
 <SA2PR16MB4234A19689E1B5198DBFCEDCB3472@SA2PR16MB4234.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=packetloss.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA2PR16MB4234:EE_|PH7PR16MB5951:EE_
x-ms-office365-filtering-correlation-id: e384f640-6ee0-4c43-0389-08dc26a2efd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 i3aUwubVgbgrEXRlPVhsPXWO5ZiQ9qtv6VUhZAva5Jc88StaBCObPKeI7ePuXhU3Njh+Yxur8S3BoY6VyOLZ0ftetWnNi17TGqw8z3v5PUtTmRdP5uRMShSm71zyO3dQS7bSOgEFttl7+Y7b06QstXR+QXt4EiyXNJDiWkyYarmOlKcat2D06ChEIs6iZ5cZQEriRqEpOWcvROYM7BmIGOb2Tjy2pbU7B9pwhFseyb711PSZN30y7ob3+4SuuRNwrIWhbyrWe+cKAQV3BWH76N2dYUAba5BqBmfjKszLPK9iT+eP5Bz9OWGSQhXiS4WunsHRUqQQcfMkzqzgoIsjkVw76Z1qXYIxXqWmY9Y7k0Yz8QtabxzNCDv1OxfCMbn5e64jO6/8JJh+jqD+ggN3DOtGPboNnI3ANIRfrk2B91k3AXffogeJl6hNag4xawOLR/T7k9v1LOpkhTNLkxxwD5YIRwcO5cgfNYWNNw8gCFZND4cT6mjL2OHVPryA8YHIG1Dr78FRyNUERMNUSwnyAG3/H97zkq+mXyLeITWhRgqS3TAoFUE+rDl5oiYgsuk7Cp/t4F4vixxySaDR+qYVjwTSioayy9GjOqMCzABu5kw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR16MB4234.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(346002)(39830400003)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(41300700001)(2906002)(8676002)(76116006)(52536014)(33656002)(86362001)(5660300002)(8936002)(71200400001)(64756008)(316002)(38070700009)(966005)(66446008)(6916009)(66476007)(38100700002)(66556008)(66946007)(166002)(122000001)(83380400001)(6506007)(478600001)(7696005)(9686003)(55016003)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?YccwsbslU8PA+UreWViIm5wkr905IBek0ZQ5Cbh9KalGzmNZ8sL613mVgZ4W?=
 =?us-ascii?Q?B/kLYPOxXkkh87hT7e+/w9Y/N+cHQ/2kV30D0jKSxMdHcLmdX7cNPRrMKIW9?=
 =?us-ascii?Q?//wKg5RQ15bHuYWkise6BSKTFPNhK1rGa21p7oFQ+H/12vG4qhaS3H8+L05c?=
 =?us-ascii?Q?bDwaHdXAph4DneDzO5p3C892qEVzvUwadRUXdh8a8qPTHR2heDQOdiqVzBzG?=
 =?us-ascii?Q?0yblwq9/KX6cgkRnT9NKz9/XLDKevUpD2rLmoILhLU7wnBzTolNTKR8tH7WN?=
 =?us-ascii?Q?KJgmJ8X7QMRQH8wqugj3PDnBj33TQXQ+iU5flZsVDFPmbfRnrnXuRxqiXXMq?=
 =?us-ascii?Q?32nugAEFUM+Kx48h+DkRfOKgATPUGJaQdmHcfhTikYR/vS7qPjtO8yQPEyZh?=
 =?us-ascii?Q?3gUo3eWkP1d6wp2Ie722BPfwwAVmDyrVu/j5Hxb+dZtAh9nL/YvMRb8UBNHU?=
 =?us-ascii?Q?ly/hxU4DFCFu0SlDP/5LscVpc6rkxHZk75bahhxy91yf8n6Kjsx8dhzjHc+3?=
 =?us-ascii?Q?RusXjQbwgMHzPwAfiFf0HVuG414+RBq0p5QnsMpyi/o0n89ENLIad+4WO8N/?=
 =?us-ascii?Q?RTUm+eMvnCzdhkczGc6H5J8FpXt+JCi2xAZwQKJ2Apr7955naK1SglmWeCV2?=
 =?us-ascii?Q?vaRxKcOBNN0zzjfVluBPD8sXqMGToyMYyyh5xZWL6JbYuSRfydy3S57pEYg+?=
 =?us-ascii?Q?Eal/ygt0cAf/W3BfDNGMK3suYafqXMDTB20oYQd0+K+BXppckgkYeSyIPHCR?=
 =?us-ascii?Q?TDs1JPXk3/AsF5ZUibjyMjHmQZiKbED8mrJEotJ6usA1suTCKmAteg/0HTyc?=
 =?us-ascii?Q?a85rGXvgZ5XdKESf4C2ohQVqLR1TkOVm6iTlbv/dRGresmAxOQisklkmDoAd?=
 =?us-ascii?Q?bJ0d343+3gP7PCReOb8YaPhfyISBN9EVzrszPs8nnFmiIlQo7pgm4gats9NF?=
 =?us-ascii?Q?+u5pfBPFAtDMWDKhxXwcCuLxniSXwBn1cUKuc7HZZOcvEwGoqjdj6FhFnZGI?=
 =?us-ascii?Q?OWK+kvPsawDS+S/uQqrefQeCYFE5Ju6k0gslJZqdO3ATWkrvuwcwXdmE/0s3?=
 =?us-ascii?Q?wdcWSNWfSTbkpiRPhZeTyB6SAAV0sa+pEOFsau2VUr4r/DFE6S+4z0uYmiz6?=
 =?us-ascii?Q?4X1ANFQPWFgo7pMyhP1GAv8pxPLhvNE4nphEZOie6l5R0USt0pGAgefBZAlu?=
 =?us-ascii?Q?AH8nUfSxejPdIyDUs2xujTJrOCJ8r1SijtuRNPxJnLMgyQw4b/kNjeYtTdVd?=
 =?us-ascii?Q?Fx/q/DAmH0jkOVywruJE94O/jY4BxePx//CUgM5vEE/Bbfl+xVUxQ4zhEMcd?=
 =?us-ascii?Q?030LSh5Pa6G4Cp9ajjnUYMH6PgqcNicVboUoCZ+I1bw+ACpEcrpE6u0gvGGt?=
 =?us-ascii?Q?ZevCH/J5tCJYxHMusfN+uYuyTM45lO4PcuyNZSUFu/t9Vhz9tx9+mWbrFu1n?=
 =?us-ascii?Q?7Gwwcbmuaw/jzMM2d2cPDIxst539td8zrKu/8tfaVS6PvJjymdzVGt9jqIRo?=
 =?us-ascii?Q?ozSsH2beHJV5tAfdi40Qri/K2dZv3lFO/pYYvvCuQy1Vbvq/YUyA73IiK5cV?=
 =?us-ascii?Q?uE/D3YGOrwJhPwyvUCwc+Shc1cEkUgsP0pKcQobq?=
MIME-Version: 1.0
X-OriginatorOrg: packetloss.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR16MB4234.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e384f640-6ee0-4c43-0389-08dc26a2efd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 23:34:03.0055
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4d40171c-2297-4de8-a17c-2c2929bc8691
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8GCX3fm4C6j9x1AHXCkmnoI8X2kOb+/XWDompq3j/jvWyFaVTnKuRZzey52JoOL9k8RKTVrVt/e0K2g6DSMKrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR16MB5951
Message-ID-Hash: NKELBQAAAS6FWTQJEKEYRMZYF776TQAY
X-Message-ID-Hash: NKELBQAAAS6FWTQJEKEYRMZYF776TQAY
X-MailFrom: protocol@packetloss.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310/UBX-160 power_mode "powersave"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FQMFE4KRV2UZ56ZMAH4RZH6YFRH7EUGZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3198006207913508437=="

--===============3198006207913508437==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA2PR16MB4234A19689E1B5198DBFCEDCB3472SA2PR16MB4234namp_"

--_000_SA2PR16MB4234A19689E1B5198DBFCEDCB3472SA2PR16MB4234namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello. Performance mode isn't always needed, and I am having trouble puttin=
g both radio boards into powersave mode to cut down on some of the power/he=
at generated while idling. Using UHD 4.6.0.0.

I have tried the following to no avail. No compilation errors, just doesn't=
 make the change and the property tree always still references "performance=
" when queried.

    usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#0/=
dboard/rx_frontends/0/power_mode/value")
         .set("powersave");
    usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#1/=
dboard/rx_frontends/0/power_mode/value")
         .set("powersave");
    usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#0/=
dboard/tx_frontends/0/power_mode/value")
         .set("powersave");
    usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#1/=
dboard/tx_frontends/0/power_mode/value")
         .set("powersave");


   usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#0/d=
board/rx_frontends/0/power_mode/value")
       .set("powersave");
   usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#1/d=
board/rx_frontends/0/power_mode/value")
       .set("powersave");
  usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#0/db=
oard/tx_frontends/0/power_mode/value")
       .set("powersave");
  usrp->get_device()->get_tree()->access<std::string>("/blocks/0/Radio#1/db=
oard/tx_frontends/0/power_mode/value")
      .set("powersave");


I was referencing the following link: https://lists.ettus.com/empathy/threa=
d/LQCYCPJCMDCFQR2RKFJNR7EXAT4QYYDM<https://lists.ettus.com/empathy/thread/L=
QCYCPJCMDCFQR2RKFJNR7EXAT4QYYDM?hash=3D24G4PYYHCLOMOXZNEIY2E3PSWZAQBDFG#24G=
4PYYHCLOMOXZNEIY2E3PSWZAQBDFG>

Perhaps some changes in UHD 3.9.4 from back when that original post was mad=
e versus 4.6.0.0?

Thanks,

Lee

--_000_SA2PR16MB4234A19689E1B5198DBFCEDCB3472SA2PR16MB4234namp_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello. Performance mode isn&#8217;t always needed, a=
nd I am having trouble putting both radio boards into powersave mode to cut=
 down on some of the power/heat generated while idling. Using UHD 4.6.0.0.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried the following to no avail. No compilati=
on errors, just doesn&#8217;t make the change and the property tree always =
still references &#8220;performance&#8221; when queried.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; usrp-&gt;get_device()-&gt;get_tre=
e()-&gt;access&lt;std::string&gt;(&quot;/blocks/0/Radio#0/dboard/rx_fronten=
ds/0/power_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.se=
t(&quot;powersave&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; usrp-&gt;get_device()-&gt;get_tre=
e()-&gt;access&lt;std::string&gt;(&quot;/blocks/0/Radio#1/dboard/rx_fronten=
ds/0/power_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.se=
t(&quot;powersave&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; usrp-&gt;get_device()-&gt;get_tre=
e()-&gt;access&lt;std::string&gt;(&quot;/blocks/0/Radio#0/dboard/tx_fronten=
ds/0/power_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.se=
t(&quot;powersave&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; usrp-&gt;get_device()-&gt;get_tre=
e()-&gt;access&lt;std::string&gt;(&quot;/blocks/0/Radio#1/dboard/tx_fronten=
ds/0/power_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.se=
t(&quot;powersave&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; usrp-&gt;get_device()-&gt;get_tree()-&g=
t;access&lt;std::string&gt;(&quot;/blocks/0/Radio#0/dboard/rx_frontends/0/p=
ower_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .set(&quot;powe=
rsave&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;usrp-&gt;get_device()-&gt;get_tree()-&g=
t;access&lt;std::string&gt;(&quot;/blocks/0/Radio#1/dboard/rx_frontends/0/p=
ower_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .set(&quot;powe=
rsave&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;usrp-&gt;get_device()-&gt;get_tree()-&gt=
;access&lt;std::string&gt;(&quot;/blocks/0/Radio#0/dboard/tx_frontends/0/po=
wer_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .set(&quot;powe=
rsave&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;usrp-&gt;get_device()-&gt;get_tree()-&gt=
;access&lt;std::string&gt;(&quot;/blocks/0/Radio#1/dboard/tx_frontends/0/po=
wer_mode/value&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .set(&quot;powersave&=
quot;);<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was referencing the following link: <a href=3D"htt=
ps://lists.ettus.com/empathy/thread/LQCYCPJCMDCFQR2RKFJNR7EXAT4QYYDM?hash=
=3D24G4PYYHCLOMOXZNEIY2E3PSWZAQBDFG#24G4PYYHCLOMOXZNEIY2E3PSWZAQBDFG">
https://lists.ettus.com/empathy/thread/LQCYCPJCMDCFQR2RKFJNR7EXAT4QYYDM</a>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Perhaps some changes in UHD 3.9.4 from back when tha=
t original post was made versus 4.6.0.0?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Lee<o:p></o:p></p>
</div>
</body>
</html>

--_000_SA2PR16MB4234A19689E1B5198DBFCEDCB3472SA2PR16MB4234namp_--

--===============3198006207913508437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3198006207913508437==--
