Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A74F426F53
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 19:03:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9688638506B
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 13:03:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="nEerGk00";
	dkim-atps=neutral
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2117.outbound.protection.outlook.com [40.107.220.117])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B789384408
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 13:02:16 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5uYYXhBEa73+SEFqAeUYxOkNVam3PVFm4toC00M7rHPmr1iseTj+Ex/tQiNlPERdRlVNSzNOjLkwlJiZhcgXDZTGY4/iFnjILEN9DvNJei8RUjxVKf//pWRzs4TVHBe0U1h9CKwnuqnEaGyz8xWFk+We2cQjFkWquOKxAjIPhOoyP7tzmq+z9+qL/PZT5fciy1d8C6eYsyqdOQq5kInRsrwpzPNY6XIW7a2KPQG6Afn9byRy5QPMDJR7mp4gDzryQoYt9Or2jz+Bj2VXgBJD01yiAA5ISXRVDEPWtPHooRyYXphXYd6aEPjorQjeV8WEwJ9znNRrB0KdVQmBQlprw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c9fVkEZlGg+i6KWGHa90phJFnlFMsUK4DHHiZ2ImE4I=;
 b=hjWvV+OINhLfVfj6NLXJX/CVfxtWw+Wn1djCOA3Yaci1yblkwYXUCNMAJxna2ywIjs04TYEOraOUM0/go5mOh1thtjjNGTXz472ko6ox1IkAHQhzhQN73rhVCFzq73OrEcrnCa3wE4/0VjLtV3+N0azx7M5+/W6a9OEmeQHwQ3cVgyDZtuVsM8rsRKN6RjF2Bh+E6okxgDNl3sIplxoPCIY/c2NwovQ7KpeYfhifltuSn0s+pcq1FfNozkPypkHxD5NMBhYr9d4tg4MRrc3nDAN8zJJMty2Ij1q4tvbDMj5ZLcJ5gtk0C9L4+ruJho/4sh+lxjNa2nzMeJ5M2Zvg5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c9fVkEZlGg+i6KWGHa90phJFnlFMsUK4DHHiZ2ImE4I=;
 b=nEerGk00nbYvTyNzkCpeceLg/jLn3q2sLLTd0+17KpY3KujzaYpJ+4PCXc8wNPz0rb7SOSLkCCccG2vnf4kAWCm5uegZtTBQqsnqms5dP/zBS9xkcUCH1AX9G8J5YDbym2DODFbIam3hMbUeQP4oxalZQT4Gz/NYADtxKm7qU/Y=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN6PR05MB3169.namprd05.prod.outlook.com (2603:10b6:404:bb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.4; Fri, 8 Oct
 2021 17:02:12 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::6475:8813:2550:ba95]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::6475:8813:2550:ba95%7]) with mapi id 15.20.4608.005; Fri, 8 Oct 2021
 17:02:12 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: UHD 3.15 on Windows
Thread-Index: AQHXu7Ffas7XyjJm10iyTMRp/NLduKvH68NQ
Date: Fri, 8 Oct 2021 17:02:12 +0000
Message-ID: 
 <BN7PR05MB450066DB9ABF262DE0F01C51D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
 <CAB__hTR35saQd6PsoATaN93woLe_0g1Bnq2qoLzPATkZmMnz7A@mail.gmail.com>
 <BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <9449daef-bcc9-e996-f0eb-be6d8676f1c6@gmail.com>
In-Reply-To: <9449daef-bcc9-e996-f0eb-be6d8676f1c6@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5ab5043-3ed0-4009-5bed-08d98a7d5f28
x-ms-traffictypediagnostic: BN6PR05MB3169:
x-microsoft-antispam-prvs: 
 <BN6PR05MB3169DA57DF00DAB97A7E8AE2D5B29@BN6PR05MB3169.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6V9anQgS8YRGDeItbixaomVE1YdFh6EPUTip0H/zoQ6koetqFfsfbg3ixmWtn2fldiXLhKvoVxGYvDrHZT055KNWkKbHeOkdJcyhvoyTNZYMwxgGPsieFkM/67xs8r9mDV2n88b2+J3ek1EzhmZmjUK1s1oeKcGQWphRNms7TOUlyZdL+PNsy2/tGyogCfYZ6w3xhOgo+sFx5kQcZatSuq22hNSSww6Z49irS21qFMJNRF9s+XE5RiDJUGfjEiHQ+iVzzXzLnurRzHCQZjU2CEQlNYWUCqNrWcMW3NdIwBnEZZePI6cqIwg/H+oQov9Vzdmh72iumaNbhLTODDe3bypoYStjg4OVQoDUHpWMSzZrlVnoAjJ0WLloBoT5gx70k4f6fzl3h7vYz0sz5V/P/3LCQQT4yt9FqqCLsnB4MCVL81+nLsUHBhthx/t1fuOlsyQPRU5ZLu0f2M3DikIFwnDa4+bdgC0dFTcn5T0u6yT2yg0iPDTfHkXTk4h2FkPWnohFBvTWDebfodCS2fqXa2Sjh2pVJqBlCtPLylge5ZiuiH/kKaRlop1I5jLdqSTdQz67mYz2hZkHXaJlKkBS+RY6Ji2LvcihbGzhiZuVFS4ZJEb2K8Jddt7rI2MQqKMGpjcVDaUCMl5TVjt58TTrsFF4bL23H3Un4uw4sij9p/mbcBhIFB/HDJGWac5nRg4KG7fyrJP2Jgs4hLx0++E+Pjhwefu/2/eQA/Bqcngl4cWvW0GDpe7Mj10oWMzOEG6QKHgxl4VE1crdc4VIYq4BiqzOpe4zSGH4n7itp7pfe4I=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(376002)(346002)(396003)(42606007)(136003)(366004)(83380400001)(26005)(53546011)(86362001)(55016002)(66476007)(7696005)(8936002)(6506007)(66946007)(66446008)(64756008)(8676002)(9686003)(66556008)(33656002)(5660300002)(316002)(91956017)(2906002)(76116006)(110136005)(186003)(52536014)(45080400002)(508600001)(38100700002)(966005)(71200400001)(122000001)(38070700005)(166002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?N/NQnU9Oj5z06/YW/nyQu6gSAc33Tz9l2PsSRmifhBHpiAhOr0vmk/ZW?=
 =?Windows-1252?Q?CXkSjTHS7GDKAo48vAXPCbWmqN1B9ueydZNG3hh5ldlf1i58zwtJehHC?=
 =?Windows-1252?Q?srXLaFhhqTT1Eu/fvsfHFKGwqXC2UhCK0Nk2zcNwnpULPZjAK1LJ+iKe?=
 =?Windows-1252?Q?0BVuTmsEvFpJ5Dve7Xn2p1nbJDHbbG88GNa9DNj2057SIapPWD2I7lbD?=
 =?Windows-1252?Q?5TgwHN4b8uPMGZe6Rp2uH3aosDYsApBelfRpiMnJSG/ZgOSepGYb1pLm?=
 =?Windows-1252?Q?6Cwiy1GMaeAiiQuvEAEsq4V+zYerf0FcVzyjlNsqxP4Uyg6YwwdZsdjT?=
 =?Windows-1252?Q?6wtBHFUEuZ/ZSsamiKZg49QyDiAaIwUD7+FCYq/HM8V72W7wWeUfS1xu?=
 =?Windows-1252?Q?Ss0DU8Nre8qR9MxrtfKjg4pZlwi1qO2FX6RV9WOCwjdPjfrIjNMZXrE1?=
 =?Windows-1252?Q?dmWTf5OxReYyKMkV8ebQT82XKen8qQL8i+n3nlEK+GpSnJvW6DAR/RkJ?=
 =?Windows-1252?Q?BHu3l/To/9erEoPW2hBMgr6Xz2uhI1QSg22NJfKoQAJ0fbbuFBYaQv78?=
 =?Windows-1252?Q?kF8vMm7DOx/Q1FPn0Y5KA6Zf02sd5KdsJBuyOUte/mhkzVvOKQkpw7OU?=
 =?Windows-1252?Q?7LW6c7731cl34mvdsQmZTj0tJeTN8xS/I9sjvbQLCh5hj0L6qdQxLLYS?=
 =?Windows-1252?Q?H2Htw9skGud9D3UHfVygtSxES42f69EI3rS7qICaUZT/8hywo9lyrfOb?=
 =?Windows-1252?Q?r+tBGMU3ij6S4LTxBitn8dm50SY4gZ/EXcZl3eMwXKXDmO5DclUaY1hp?=
 =?Windows-1252?Q?SUc5yPNASjOH4PYrqAx2nI4Wrvnuhg1vuVPLU10wm6IkE3MeFZlPdw9N?=
 =?Windows-1252?Q?oBqNxtM52khXcyrGjtLe6Tow4pSUvGmJ2jXL1bgYXNHeswdVMxYGX1wt?=
 =?Windows-1252?Q?HO/ajuua+V7qu0A/sLStFPoJKkAOs4kAG9/bAJ+sq50VfBN48xtp+72R?=
 =?Windows-1252?Q?4Tgo0R8w3oXWVUjerOHuwieFhJVcd2qpF+/GQDO22xvisu4jBYgRtA57?=
 =?Windows-1252?Q?nozSWeUf0Nf1PpeuSalSlILD5f3LZe1+Yghuu7iYfgXYqQZKtOg0Gs6/?=
 =?Windows-1252?Q?pETvLMVZ34NU8x6mce8nustl3nXUbT3ArtlCpNXZyaSAxOXFqRm9xWP8?=
 =?Windows-1252?Q?apkLomrePG0Pt7dByMJwawicWIKeaKg8/aH+bzkYfmZ3Uddt6brOX71X?=
 =?Windows-1252?Q?Yzo/Siby5Hun1TqAklTlL9aH8LgyN3wBrpoWomPE4olXmJU4JFHNS9V5?=
 =?Windows-1252?Q?djZruLUTLRZGs5hyCVIXw7/gzh98/smMqS2Y0/XeHJdoq/Txv+RsavAZ?=
 =?Windows-1252?Q?ECaAHm0vb2pUqZ6uJ4s+ObJ+i856KD/bZL5LCUXvDSKLJ+V6QT4Wzx9w?=
 =?Windows-1252?Q?6mMMrwF/zEn7+g3XB43nMA=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ab5043-3ed0-4009-5bed-08d98a7d5f28
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2021 17:02:12.1271
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z1agVVqisVdd9nwbWQ8GCOyM0ki9pdsNSl4qdEQf5Rl/NzvwXiwxz5EMurTJIGN5cxJWho11lZ1TI3fRmCWx5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB3169
Message-ID-Hash: AFPVJXL7MJNV6ZPP6EJENALYNRRCJDCZ
X-Message-ID-Hash: AFPVJXL7MJNV6ZPP6EJENALYNRRCJDCZ
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IA4OCXXCNUAAURCWFVKDCYHZL3VTLQY6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4100236073808640745=="

--===============4100236073808640745==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB450066DB9ABF262DE0F01C51D5B19BN7PR05MB4500namp_"

--_000_BN7PR05MB450066DB9ABF262DE0F01C51D5B19BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

It does indeed fail. I updated the image on the N310, but the issue remains=
 the same.

Thanks,
Jonathan

From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, October 7, 2021 1:27 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: UHD 3.15 on Windows

On 2021-10-07 2:31 p.m., Jonathan Tobin wrote:
I am only connected to the USRP via ethernet to SFP+0 port.

I have no problems with a Linux Host running 3.15.

Yup, so try:

uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310

If that *still* fails, then you probably have a much-older image on the N31=
0, and should follow the directions for updating it:

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card




From: Rob Kossler <rkossler@nd.edu><mailto:rkossler@nd.edu>
Sent: Thursday, October 7, 2021 11:56 AM
To: Jonathan Tobin <Tobin@augustusaero.com><mailto:Tobin@augustusaero.com>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 3.15 on Windows

Also, does the N310 have the 3.15 file system / MPM installed?

On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler <rkossler@nd.edu<mailto:rkossler=
@nd.edu>> wrote:
Perhaps you are just finding the address of the N310 RJ45 Ethernet port, bu=
t not the address of the SFP+ ports? These are needed for UHD (at least one=
 of them). Are you only connected via 1GB?  Do you have a direct link betwe=
en host PC and one of the SFP+ ports?
Rob

On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin <Tobin@augustusaero.com<mailt=
o:Tobin@augustusaero.com>> wrote:
Hello =96 I am attempting to install UHD 3.15 on my Windows 10 PC. I am abl=
e to ping and find the device, but currently unable to probe. Not sure what=
 the issue is =96 any recommendations?

Command Prompt output:

C:\Program Files\UHD3\bin>uhd_find_devices
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3218B5F
    claimed: False
    mgmt_addr: 192.168.10.2
    product: n310
    reachable: No
    type: n3xx

C:\Program Files\UHD3\bin>uhd_usrp_probe
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de
[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD sess=
ion. Specify find_all to find all devices.
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address


Thanks,
Jonathan


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_BN7PR05MB450066DB9ABF262DE0F01C51D5B19BN7PR05MB4500namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">It does indeed fail. I updated the image on the N310=
, but the issue remains the same.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jonathan<o:p></o:p></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><o:p>&nbsp;</o:p></a></p=
>
<span style=3D"mso-bookmark:_MailEndCompose"></span>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"_MailOriginal"><b>From:</b></a><span styl=
e=3D"mso-bookmark:_MailOriginal"> Marcus D. Leech &lt;patchvonbraun@gmail.c=
om&gt;
<br>
<b>Sent:</b> Thursday, October 7, 2021 1:27 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: UHD 3.15 on Windows<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal"><o:p>&nbs=
p;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">On 2021-1=
0-07 2:31 p.m., Jonathan Tobin wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">I am only=
 connected to the USRP via ethernet to SFP+0 port. &nbsp;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">I have no=
 problems with a Linux Host running 3.15.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:=
p></o:p></span></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">Yup, so t=
ry:<br>
<br>
uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310<br>
<br>
If that *still* fails, then you probably have a much-older image on the N31=
0, and should follow the directions for updating it:<br>
<br>
</span><span style=3D"mso-bookmark:_MailOriginal"></span><a href=3D"https:/=
/kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card"><span s=
tyle=3D"mso-bookmark:_MailOriginal">https://kb.ettus.com/Writing_the_USRP_F=
ile_System_Disk_Image_to_a_SD_Card</span><span style=3D"mso-bookmark:_MailO=
riginal"></span></a><span style=3D"mso-bookmark:_MailOriginal"><br>
<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal"><b>From:<=
/b></span><span style=3D"mso-bookmark:_MailOriginal"> Rob Kossler
</span><a href=3D"mailto:rkossler@nd.edu"><span style=3D"mso-bookmark:_Mail=
Original">&lt;rkossler@nd.edu&gt;</span><span style=3D"mso-bookmark:_MailOr=
iginal"></span></a><span style=3D"mso-bookmark:_MailOriginal">
<br>
<b>Sent:</b> Thursday, October 7, 2021 11:56 AM<br>
<b>To:</b> Jonathan Tobin </span><a href=3D"mailto:Tobin@augustusaero.com">=
<span style=3D"mso-bookmark:_MailOriginal">&lt;Tobin@augustusaero.com&gt;</=
span><span style=3D"mso-bookmark:_MailOriginal"></span></a><span style=3D"m=
so-bookmark:_MailOriginal"><br>
<b>Cc:</b> </span><a href=3D"mailto:usrp-users@lists.ettus.com"><span style=
=3D"mso-bookmark:_MailOriginal">usrp-users@lists.ettus.com</span><span styl=
e=3D"mso-bookmark:_MailOriginal"></span></a><span style=3D"mso-bookmark:_Ma=
ilOriginal"><br>
<b>Subject:</b> Re: [USRP-users] UHD 3.15 on Windows<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:=
p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">Also, doe=
s the N310 have the 3.15 file system / MPM installed?<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:=
p></o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal">On Thu, O=
ct 7, 2021 at 1:54 PM Rob Kossler &lt;</span><a href=3D"mailto:rkossler@nd.=
edu"><span style=3D"mso-bookmark:_MailOriginal">rkossler@nd.edu</span><span=
 style=3D"mso-bookmark:_MailOriginal"></span></a><span style=3D"mso-bookmar=
k:_MailOriginal">&gt;
 wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><span style=3D"mso-book=
mark:_MailOriginal">Perhaps you are just finding the address of the N310 RJ=
45 Ethernet port, but not the address of the SFP+ ports? These are needed f=
or UHD (at least one of them). Are you
 only connected via 1GB?&nbsp; Do you have a direct&nbsp;link between host =
PC and one of the SFP+ ports?<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><span style=3D"mso-book=
mark:_MailOriginal">Rob<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><span style=3D"mso-book=
mark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><span style=3D"mso-book=
mark:_MailOriginal">On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin &lt;</spa=
n><a href=3D"mailto:Tobin@augustusaero.com" target=3D"_blank"><span style=
=3D"mso-bookmark:_MailOriginal">Tobin@augustusaero.com</span><span style=3D=
"mso-bookmark:_MailOriginal"></span></a><span style=3D"mso-bookmark:_MailOr=
iginal">&gt;
 wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">Hello =96 I am attempting to ins=
tall UHD 3.15 on my Windows 10 PC. I am able to ping and find the device, b=
ut currently unable to probe. Not sure what the issue is =96 any recommenda=
tions?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">Command Prompt output:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">C:\Program Files\UHD3\bin&gt;uhd=
_find_devices<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">[INFO] [UHD] Win32; Microsoft Vi=
sual C++ version 14.2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">--------------------------------=
------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">-- UHD Device 0<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">--------------------------------=
------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">Device Address:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;&nbsp;&nbsp; serial: 3218B=
5F<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;&nbsp;&nbsp; claimed: Fals=
e<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp; &nbsp;&nbsp;mgmt_addr: 19=
2.168.10.2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;&nbsp;&nbsp; product: n310=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;&nbsp;&nbsp; reachable: No=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;&nbsp;&nbsp; type: n3xx<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">C:\Program Files\UHD3\bin&gt;uhd=
_usrp_probe<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">[INFO] [UHD] Win32; Microsoft Vi=
sual C++ version 14.2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">[INFO] [MPMD FIND] Found MPM dev=
ices, but none are reachable for a UHD session. Specify find_all to find al=
l devices.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">Error: LookupError: KeyError: No=
 devices found for -----&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">Empty Device Address<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">Jonathan<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;margin-left:45.6pt">
<span style=3D"mso-bookmark:_MailOriginal">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:45.6pt"><span style=3D"mso-book=
mark:_MailOriginal">_______________________________________________<br>
USRP-users mailing list -- </span><a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank"><span style=3D"mso-bookmark:_MailOriginal">usrp-user=
s@lists.ettus.com</span><span style=3D"mso-bookmark:_MailOriginal"></span><=
/a><span style=3D"mso-bookmark:_MailOriginal"><br>
To unsubscribe send an email to </span><a href=3D"mailto:usrp-users-leave@l=
ists.ettus.com" target=3D"_blank"><span style=3D"mso-bookmark:_MailOriginal=
">usrp-users-leave@lists.ettus.com</span><span style=3D"mso-bookmark:_MailO=
riginal"></span></a><span style=3D"mso-bookmark:_MailOriginal"><o:p></o:p><=
/span></p>
</blockquote>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal"><br>
<br>
<o:p></o:p></span></p>
<pre><span style=3D"mso-bookmark:_MailOriginal">___________________________=
____________________</span></pre>
<pre><span style=3D"mso-bookmark:_MailOriginal">USRP-users mailing list -- =
</span><a href=3D"mailto:usrp-users@lists.ettus.com"><span style=3D"mso-boo=
kmark:_MailOriginal">usrp-users@lists.ettus.com</span><span style=3D"mso-bo=
okmark:_MailOriginal"></span></a><span style=3D"mso-bookmark:_MailOriginal"=
></span></pre>
<pre><span style=3D"mso-bookmark:_MailOriginal">To unsubscribe send an emai=
l to </span><a href=3D"mailto:usrp-users-leave@lists.ettus.com"><span style=
=3D"mso-bookmark:_MailOriginal">usrp-users-leave@lists.ettus.com</span><spa=
n style=3D"mso-bookmark:_MailOriginal"></span></a><span style=3D"mso-bookma=
rk:_MailOriginal"></span></pre>
</blockquote>
<span style=3D"mso-bookmark:_MailOriginal"></span>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN7PR05MB450066DB9ABF262DE0F01C51D5B19BN7PR05MB4500namp_--

--===============4100236073808640745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4100236073808640745==--
