Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF9C31DD87
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 17:44:10 +0100 (CET)
Received: from [::1] (port=35016 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCPvq-0003Kr-4y; Wed, 17 Feb 2021 11:44:06 -0500
Received: from mail-eopbgr110113.outbound.protection.outlook.com
 ([40.107.11.113]:52450 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1lCPvl-0003GL-Ns
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 11:44:01 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eLILR+lmSa+f00jqNrEsDXbk6DetyslPc1+F0+yoJFR0TSIzjuvCjjc9218zKPbvjukNgsgu0DDpjylrhvKDTUBmhSL6TnBiPxqhG1DzmKM3s7pEpCfN9lUuxCDy2LRTPa/IOcEjRDsT0o599DeBMDCvk6B+rpi9uETT7x8Je7NRatE90vkHQ1x7clBJolDT2NGbgMCmZBGjxBwqXOvrwQ7obVYNX7bpETPs0w9JzMNivhQcTpm4OqmV7oSvz6k88jZ2Ow+dP2YnDWk6Pxrg7pHUaw/gSoW0DIWtDJnCT1XdmlLj6vkeV0BsEWiVGPZPZcE7+PPizjpZfxhnx/42lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q/GMSlDnnAm/Du+NcH8/zlMe3wBUpnxuNW1sflRZheA=;
 b=Y7emNHAqNeMb3r46B00CLrNnPDwT32Rdzqccr0SAAjIzVZLBjqmyTpZIzpS1sOPExJoyKO+Sv+HcODaaawNy16Bz5vJ7t/JzVK8ToC04AdRT7lduXlSKpxPr0iHmgy0EXqpA8hq/dVI04G8aj2wT3oTrWzem/PoO34nokGQNEbECyBW29wi3pX7/zBAMdcljaSW3TvuGTWSeKpAS6jCiNXduBflwRcLH/WNU+fhq5O1YmUPq9+d+Rd4+GGdm+4nyLMK2wvQDp39V9Tt4h1EB5OsWel+Pqy6Y83JvcAx3yeUwyu491c6cpznH+oySgXDvoN6LH+kEuT8iw8yCN1182g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q/GMSlDnnAm/Du+NcH8/zlMe3wBUpnxuNW1sflRZheA=;
 b=n3QCEmxB46ck8d0CLhqepltUVSWMaSMpXFjqBn4xdUDbbDt7Z6ulBuryXWRoj4UQ0+G9+DssINoaWwlsw2/Dnn5EdTjp6t9MX9CE/QCeR7JP2t3MOEoT3M5xS2SMpXMxjqKz+s5xTVfnr8YEhYhruaFSRkrN4hH3k+tgRZsDjEk=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LNXP123MB3787.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:137::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.39; Wed, 17 Feb
 2021 16:43:19 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3846.041; Wed, 17 Feb 2021
 16:43:19 +0000
To: 'Jim Palladino' <jim@gardettoengineering.com>
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: OTT Gain Block stopping samples flowing from RFNoC Digital Down
 Converter
Thread-Index: AdcFQlWECmXf12heRQuWe0v7YuOKiwAASohLAAFYZmA=
Date: Wed, 17 Feb 2021 16:43:19 +0000
Message-ID: <LNXP123MB3724A8B3199C2169A41BA6E0CA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <MN2PR12MB33129C28A79231554AC0FD21B8869@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33129C28A79231554AC0FD21B8869@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gardettoengineering.com; dkim=none (message not
 signed) header.d=none;gardettoengineering.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29b44298-b969-470d-4320-08d8d36321e5
x-ms-traffictypediagnostic: LNXP123MB3787:
x-microsoft-antispam-prvs: <LNXP123MB378778921751255B82411C74CA869@LNXP123MB3787.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3PSt/vGb1Ytv6FH0ogkqdExlyXnmKoqPkoo3NVcQC+G3+2bRNFOZBdiKdjj6rEqHHa0nMGycY2hEsrAnNAQKtw4rpXuB3W4Aw7Y9N+sD5hfbJgzIBeg3snuPPtvpfrXhp5NkDrPdoiOWvQp5KaB+LP3kJGUAjKJxOPEZ5gmfkpx2HnOWRAamLN6X9JHLdHWlO5o3lqcp9wJ4uFDPjsiFGE6+s2MmYRcxVBJlPNvSCjd7pdZU+6f315qdQslSo0AUQeL4MVgBNOdp/qgxtq+fOkmWY9mF+WgGXocT1ykWJ4PTKJtvfoRy/3UGFCWKpSkXXYRoJl/NwpETcJpyTZXC6h7SB7duc/kDkSh0IMSW5TbIUhsT0UPPo+og7RBZ0Rh1tcszPmD7EE4FnR24iDooaHVtE0BezOUJri4kT4mR4g+8ohww6fvAS26g1KeAVvVrbEAh6OR6FpIzRhUosp9w8AsmspE9rcHCo3Rig5JJ8q28fc8xRKxBYWoQQoZwolHWkjVTDHW0tPKlN76tLPNyGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(396003)(39850400004)(136003)(4326008)(55016002)(9686003)(316002)(8676002)(53546011)(83380400001)(26005)(186003)(6506007)(52536014)(2906002)(66476007)(6916009)(8936002)(66556008)(5660300002)(64756008)(66446008)(66946007)(33656002)(7696005)(76116006)(71200400001)(478600001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?uHKQXH26gtUvfykNgtYs+Nfux7W9iAGAUzyBo0Q/D01KMLu7xT9RZsUq9kNi?=
 =?us-ascii?Q?r3D04AHqec7rrNZ3054/e+gC03V+CdEDm5S0Pu9YenPhkyzvUhXwj6cvU/16?=
 =?us-ascii?Q?D1mBBouM2JZzgFPTEGDcU7x5pQD2gKKop2LFqgeFvrc5LhOU/joGMDBjkNvh?=
 =?us-ascii?Q?jEOC6Bg0pagqKm0U14Oxi+LAE4GChI0pQKv9vPbTWqE+LbVYvJLYSaza0jf2?=
 =?us-ascii?Q?DIrH0Gul5HiQXC47bJy52vlTsjVyFz0S3MJfdSjVnaJ4q+tz72JGUSjXHHPJ?=
 =?us-ascii?Q?Own+aYq64t03o8CI21InIGJ1k18rYNGi8zTiDfdsJirh34asF1vnbxduAy4K?=
 =?us-ascii?Q?XHXeTA/JLuuUp0GU0ir+XvuJOgjmc9yHcgfC13XtI9GhatFaZ8N4oGhhx9Mi?=
 =?us-ascii?Q?BHvSfDxEpvXr/mMB5FM19FnHa9+7UMTOmkSRDi17qoU5A97rr/YHQRKKu9th?=
 =?us-ascii?Q?eFs4QiekQ9jF/qOZ8S4SyM9B+Ww3hPJcvDSw2GS2W27TYc94iuKcvM/63l9d?=
 =?us-ascii?Q?urYPjCW1vGPiKWI9k6h/z5/apzGsptBOHdNwB5xFy3X5+Tf+PUVYfllLF+w/?=
 =?us-ascii?Q?dz0Ct9Yrld6b809GccQUtlrUoWHx74q4jd67npScberNSHTTNPz8GHksYkJE?=
 =?us-ascii?Q?oFNDKu8ADvdSIrGljNMidbipRuvnkNGxCVZXrqQhKJeosd8oJsYBj5LqBuol?=
 =?us-ascii?Q?xSYxVWiG/14Peu9d1XHA7X1s1zmKC1pcQm4Olad9TxOHqF0dKZYKC9n9iK+H?=
 =?us-ascii?Q?GX8sROmo6bFrVTSG1j27GoG44WtNi2IGIZ1alFrTL2wHNpkx5W6TwAsC5fCn?=
 =?us-ascii?Q?Y2qt/YgLGREE5CfTvZKYw/aAWNv/dzYiCdDqClPXcJIixW4gu9a3jmXL07Y9?=
 =?us-ascii?Q?KhQQxQ7n/5pjJ+n93K2gS+prKfraAnREhAK7L+wDP0mYgnLmHUIcEir0qKmr?=
 =?us-ascii?Q?DZCIDdCIXHHTTBQCWJkoFvF1CEBeafY3Eov285TKaZ4OjqXlYnUOliIgsMm7?=
 =?us-ascii?Q?oX0r3/spojf5jEk71wRr2pKFL/dnj83cDzRkrReBsFjJprnaMM9blaHRzn8v?=
 =?us-ascii?Q?MGBb7BrV8EAyPL/Tc4hNS8ev6aQbYtRyXHu8cGkaRZ0XDxbyuQNVKqaKB7Ge?=
 =?us-ascii?Q?bmc/D413GFa7PXaBHcVY0abII+cSEirFwbyGz8ZVxPT9BcWxu8Xt0bSVk+KY?=
 =?us-ascii?Q?9nGdmFuQbuB+n2x5CfCO4S3+UXnJ7yZ92nRqrV7JzF2zX6L3wV0EZQh0th2z?=
 =?us-ascii?Q?h9i2r/+buOqtxZwBFqNwT0DWq4+cNROlC0PqiwiJBY2ThBCspfjriDD/hs/E?=
 =?us-ascii?Q?n4x2u9JNKO7bFoNIgFMzyudj?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 29b44298-b969-470d-4320-08d8d36321e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 16:43:19.6442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hTTAt8oX2OoVcuLjYkR51EIDXLIfpdxHOuVnUK5x8eBAd0PpQfSMB7DGu8Q/4kGsX4/wp2hjcaje2rAMSdGMWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LNXP123MB3787
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
Content-Type: multipart/mixed; boundary="===============6513723793619551162=="
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

--===============6513723793619551162==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB3724A8B3199C2169A41BA6E0CA869LNXP123MB3724GBRP_"

--_000_LNXP123MB3724A8B3199C2169A41BA6E0CA869LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Jim,

I'm using eth0 on the E320 which is set with an MTU of 1500 and this seems =
to be the maximum. If I try to set it to 1501 it says that's greater than t=
he maximum allowed.

I've now switched to using the SFP+ port rather than eth0 which has an MTU =
of 9000, but this hasn't had any effect.

I tried setting spp by adding spp=3D1987 to the Block Args field in GNU Rad=
io, but still no luck. Is this the correct way to set the spp argument?

Mark

From: Jim Palladino <jim@gardettoengineering.com>
Sent: 17 February 2021 15:52
To: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>; Mark D <md96=
4@hmgcc.gov.uk>
Subject: Re: OTT Gain Block stopping samples flowing from RFNoC Digital Dow=
n Converter

Hi Mark,

I'm not sure if this is your problem, but I had a similar issue. After some=
 debugging, I found that for some reason, with the OOT RFNoC Block inserted=
, the total size of the CHDR packet plus the Ethernet header that gets adde=
d on in the FPGA would slightly exceed the MTU size (mine was set to mtu=3D=
8000 for the E320). I never figured out why this happens, since this isn't =
the case if the OOT block is not inserted (just like the flowgraph you desc=
ribed). Maybe just increasing the MTU size would help?

Anyhow, my solution was just to set the "spp" argument in the RFNoC_RX_Radi=
o. I found that setting spp to a maximum of 1987 keeps the total packet siz=
e (after the Ethernet header is appended) to be less than the MTU of 8000. =
FYI, for spp means 1987 samples per packet. So, for 32-bit samples, 1987*4=
=3D7948. This leaves enough room for the Ethernet header.

It seems like there should be a better "fix", but you can try setting spp m=
anually to see if that helps.

Jim

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Mark D via USRP-users <usrp-users@lists.=
ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, February 17, 2021 10:35 AM
To: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com<mailto:usrp-us=
ers@lists.ettus.com>>
Subject: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC Di=
gital Down Converter


I'm working with an E320 using UHD 4.0.



I've been working through the video "RFNoC 4 Workshop - GRCon 2020" to inst=
all my own custom signal processing block into the RFNoC on the FPGA.



I've also been following the guide AN-121 "Debugging FPGA images" and have =
added Chip Scope probes to the payload and context stream signals.



I have got to the point where I have the block instantiated in the FPGA. Ru=
nning the example GNU radio code that streams samples from the host compute=
r through the gain block and pack to the PC works as expected. I am also ab=
le to capture the payload and context stream signals in Chip Scope.



However if I reconfigure the GNU radio to "RFNoC RX Radio"->"RFNoC Digital =
Down Converter"->"RFNoC Gain"->"RFNoC Rx Streamer"->"QT GUI Time Sink" the =
system no longer works.



The Time Sink appears but the GNU Radio console is saying rfnoc_rx_streamer=
0 - UHD.recv() call timed out. Removing the gain block from the GNU radio d=
esign restores operation, so it appears that the gain block is in some way =
blocking the streaming data.



I've also rebuilt the FPGA with the gain block connected between the DDC an=
d Stream Endpoint but the results are the same. I've tried reverting the ga=
in block code back to that generated rfnocmodtool, which just loops the con=
text and payload data straight through.



Does anybody have any idea why this block would be stopping data internally=
 generated within the USRP from streaming out, whereas it works Ok when dat=
a is flowing from and back to the host?



Any help would be greatly appreciated,



Mark

________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB3724A8B3199C2169A41BA6E0CA869LNXP123MB3724GBRP_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Thanks Ji=
m,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I&#8217;m=
 using eth0 on the E320 which is set with an MTU of 1500 and this seems to =
be the maximum. If I try to set it to 1501 it says that&#8217;s greater tha=
n the maximum allowed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I&#8217;v=
e now switched to using the SFP+ port rather than eth0 which has an MTU of =
9000, but this hasn&#8217;t had any effect.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">I tried s=
etting spp by adding spp=3D1987 to the Block Args field in GNU Radio, but s=
till no luck. Is this the correct way to set the spp argument?<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Mark<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Jim Palladino &lt;jim@gardettoengineering.com&gt;
<br>
<b>Sent:</b> 17 February 2021 15:52<br>
<b>To:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;;=
 Mark D &lt;md964@hmgcc.gov.uk&gt;<br>
<b>Subject:</b> Re: OTT Gain Block stopping samples flowing from RFNoC Digi=
tal Down Converter<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hi Mark=
,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I'm not=
 sure if this is your problem, but I had a similar issue. After some debugg=
ing, I found that for some reason, with the OOT RFNoC Block inserted, the t=
otal size of the CHDR packet plus the
 Ethernet header that gets added on in the FPGA would slightly exceed the M=
TU size (mine was set to mtu=3D8000 for the E320). I never figured out why =
this happens, since this isn't the case if the OOT block is not inserted (j=
ust like the flowgraph you described).
 Maybe just increasing the MTU size would help?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Anyhow,=
 my solution was just to set the &quot;spp&quot; argument in the RFNoC_RX_R=
adio. I found that setting spp to a maximum of 1987 keeps the total packet =
size (after the Ethernet header is appended) to
 be less than the MTU of 8000. FYI, for spp means 1987 samples per packet. =
So, for 32-bit samples, 1987*4=3D7948. This leaves enough room for the Ethe=
rnet header.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">It seem=
s like there should be a better &quot;fix&quot;, but you can try setting sp=
p manually to see if that helps.&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Jim<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces=
@lists.ettus.com">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of M=
ark D via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 17, 2021 10:35 AM<br>
<b>To:</b> 'usrp-users@lists.ettus.com' &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] OTT Gain Block stopping samples flowing from R=
FNoC Digital Down Converter</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"xmsonormal">I&#8217;m working with an E320 using UHD 4.0.<o:p><=
/o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">I&#8217;ve been working through the video &#8221;RF=
NoC 4 Workshop - GRCon 2020&#8221; to install my own custom signal processi=
ng block into the RFNoC on the FPGA.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">I&#8217;ve also been following the guide AN-121 &#8=
220;Debugging FPGA images&#8221; and have added Chip Scope probes to the pa=
yload and context stream signals.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">I have got to the point where I have the block inst=
antiated in the FPGA. Running the example GNU radio code that streams sampl=
es from the host computer through the gain block and pack to the PC works a=
s expected. I am also able to capture
 the payload and context stream signals in Chip Scope.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">However if I reconfigure the GNU radio to &#8220;RF=
NoC RX Radio&#8221;-&gt;&#8221;RFNoC Digital Down Converter&#8221;-&gt;&#82=
21;RFNoC Gain&#8221;-&gt;&#8221;RFNoC Rx Streamer&#8221;-&gt;&#8221;QT GUI =
Time Sink&#8221; the system no longer works.
<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">The Time Sink appears but the GNU Radio console is =
saying rfnoc_rx_streamer0 &#8211; UHD.recv() call timed out. Removing the g=
ain block from the GNU radio design restores operation, so it appears that =
the gain block is in some way blocking the
 streaming data.<o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">I&#8217;ve also rebuilt the FPGA with the gain bloc=
k connected between the DDC and Stream Endpoint but the results are the sam=
e. I&#8217;ve tried reverting the gain block code back to that generated rf=
nocmodtool, which just loops the context and payload
 data straight through. <o:p></o:p></p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Does anybody have any idea why this block would be =
stopping data internally generated within the USRP from streaming out, wher=
eas it works Ok when data is flowing from and back to the host?<o:p></o:p><=
/p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Any help would be greatly appreciated,<o:p></o:p></=
p>
<p class=3D"xmsonormal">&nbsp;<o:p></o:p></p>
<p class=3D"xmsonormal">Mark<o:p></o:p></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
<p class=3D"MsoNormal">This email and any files transmitted with it are con=
fidential and intended solely for the use of the individual or entity to wh=
om they are addressed. If you have received this email in error please noti=
fy the system manager.
<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_LNXP123MB3724A8B3199C2169A41BA6E0CA869LNXP123MB3724GBRP_--


--===============6513723793619551162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6513723793619551162==--

