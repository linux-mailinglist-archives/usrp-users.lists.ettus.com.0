Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C962742796
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 15:41:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94A6938141F
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 09:41:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688046069; bh=iijngBJ2E2XXIqdLWMPBWGA4lTvoCf0UjIRzYJt2C5c=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AjX4KEuX0NH5hH1KWwtAajl9jPmounzz1n86XL4HOkFHVl9CeCwMk5gtIEyFeqNdc
	 H3hEqPX/TWXGuSSBc+HTlG43yuTTreL+Vn9Xbl4+7BRqe/wKLv07AY3YPLc6Quqf8K
	 cPnfbYZkuA1gmJPMk8NQgyJc8PSEYFTkkGuWsk903xe/m6HGg8aNVifh7USpKhLsbA
	 ALOdkSKLbnM5Ij+PfNvWqgr3xG51Nf7hzhUpzq4RkdLVwsPgV3ZU06X/FdZwpznu71
	 CoPEe44b1jtCJnean6bgPE31LnRu+yof057slm1XMMeaQReh3yM23HldLGWFtyOUQx
	 tmqPk2fwOgWuw==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2063.outbound.protection.outlook.com [40.107.223.63])
	by mm2.emwd.com (Postfix) with ESMTPS id AF763380C11
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 09:40:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=NETORG330411.onmicrosoft.com header.i=@NETORG330411.onmicrosoft.com header.b="rbNi5Xkj";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dpTg/eNMZP/hSI425PO2IZmyXMzikuhYxbHFT4+5ENi2R7dMBBeWEBjz6/o5zfmsDdF/ZK2H/7OMQkBsQJ6z4saqR56HOfC4O/VvfBjgqpuDZzXlpFVg2B4LOgWaCHsXn2U+AaCd9yqsH14YlsOwClDjKbbNe2u9c0HHryH2B00QZJ9/NPQAmhS4CeXu5XnWpWP5zSY8Nsw8Wr/WoMJmrOXDSqFKa6C2SIMa3aRJO81W0BZ9rltd9XrZoWqfOYkqLONYSkPMZZjZDpW7iC6z/+BkeK14LUkM7yomNGvYDxI08vuZ+vTnwKaLObVIURcGzWzVEl00QKoLd4m7s0/yHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XjnjP6sKXcPd5nKzQRqjUWMgEzJE4LQav5pdiQbeVao=;
 b=Z2OhamSi5Ofd6+MPywWUr0DCkHmOTsFKxsU/dUEZN7CR6mgt2NkY1/nxS0m38OXHNIYA0jMRRB6zx1Ls30J5XO/+tinjlPe8THG3i38kUY7VbMT6OabngqK1x1nqGyendC6dAExbJ8y++UKysDqrwk1smqQij0QxwpSSsB17LUscffbUsNRsL2MyDgWWarlpI01DV6YcfccWoFnVGawXMGhE7ZJO8FQAu05bTWZFM5p8A6lExHnqjna/gKgyeFr5qP2hgDDN7LBz/6esk8u3r4PMrW0i8IDF8DUy/EXZCGxRTPRG0m8QSnj+FGx9g43O1xPYbd6lcnEhUA6sdqoBRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjnjP6sKXcPd5nKzQRqjUWMgEzJE4LQav5pdiQbeVao=;
 b=rbNi5Xkjgk+hrSLOkCjRgNGtAOGrM0WNXZIem7NXMz1QQUjIn2eRg51uvOEkWSHNEvtrPROxNoHByZI0/GX72D5KHEGc3D2IsyTIrucAqfMaEzJmJ+AGmxnUHo0/O3dQIxgYYH8TlGL0xGkRbPyzR6qoV8HqeXYxfaEG5pupFKo=
Received: from DM4PR12MB6302.namprd12.prod.outlook.com (2603:10b6:8:a4::21) by
 MW4PR12MB6708.namprd12.prod.outlook.com (2603:10b6:303:1ed::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.26; Thu, 29 Jun 2023 13:40:40 +0000
Received: from DM4PR12MB6302.namprd12.prod.outlook.com
 ([fe80::58b2:3732:a8f8:3503]) by DM4PR12MB6302.namprd12.prod.outlook.com
 ([fe80::58b2:3732:a8f8:3503%7]) with mapi id 15.20.6521.024; Thu, 29 Jun 2023
 13:40:40 +0000
From: Mark Koenig <mark.koenig@iubelttechnologies.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Problems streaming with X310 using Rust
Thread-Index: AQHZqo493+AMamVAxkCuJF/1lDYH5w==
Date: Thu, 29 Jun 2023 13:40:40 +0000
Message-ID: 
 <DM4PR12MB6302B710D9A979014A7547FE8C25A@DM4PR12MB6302.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iubelttechnologies.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR12MB6302:EE_|MW4PR12MB6708:EE_
x-ms-office365-filtering-correlation-id: 30638da6-46b6-43af-200f-08db78a66dd1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ON62XWL0jj/KMljuZsUWaMbp92b6GYH/q8xoDfb3YdfxCNyFnJuTgU3JBfwpSC5AfVdY4QaUA3VzlUhd61BBWpE7QFnfCSLIRFdZjhWU46Q9F5iDayuqgqaXfwasnMxFObujzhmwWHi7tbBn8+UXFmn2VT3ftE8spOxjnUV163bm3Ee/DoBE+lRtuPnkfMCsv7q+WDx1UobaPt56EeRSQDsBiddQUPIDJXsGvDDxIwdmyEZT572SkJ1VqULBn8TbBKnkz6Nv5JVxT2mh2JbDW1xZCR3WJElG0TyLHeFw2zzb70j0/iUf3YWejIDfMxVZ/v8ny69vUpndeRtu5V+a6bjZx7TesJmjcDHPF9rUPg5yujjGqyTpWaNNihaKvCRBiyMaxLSkIb9JzxbNvjcxYcr5jaFhblOdzkHXXWx1fI1NVG0ch1Bg9hI9pbVtamSecXJg00motcpnWoJB7BovkEo6G/UZDBQa831iWnOz3/Ndkez+qsNDwRPh5ViZ49Jcvx6U3qS/PpnIsRgn9wVxhd6TBmnDJSxE5+WOpl6WEfYFp7BmqedQwpe7X6LVzbdWBcUYIn5Jmil4NHzjaxj1FjytzhPk623MuaGKv/5aQ+E=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB6302.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(346002)(136003)(396003)(39830400003)(366004)(451199021)(83380400001)(7696005)(966005)(478600001)(4744005)(33656002)(2906002)(66946007)(71200400001)(186003)(9686003)(26005)(66446008)(66476007)(6506007)(64756008)(66556008)(5660300002)(316002)(44832011)(41300700001)(38100700002)(76116006)(8676002)(52536014)(6916009)(8936002)(91956017)(122000001)(38070700005)(166002)(55016003)(86362001)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?jkJgOmCwnj4caffdX8ERI7IXzMHQf5sCnm47KnYlGk5p4kUrkz5k4EurSP?=
 =?iso-8859-1?Q?67W6SsitP7EbN4/C5Neqzelk+fAvT0fGFMwjP1tuN4+z11Cnykg70RyE4a?=
 =?iso-8859-1?Q?rU1tRxfoffhJmy/GSQzrA/JBi3MzPyNYO2kXLO+tju5+l40eqvpDMsl9zV?=
 =?iso-8859-1?Q?8tN110mO5oIO34xbIsuiesxeJpyjZQCL6qugbdyXCo3MV/mux2/ZwCqo+L?=
 =?iso-8859-1?Q?rHdaOIKA3siTC5ftCtuHLdlpNosTjRELOijh3ZfzsVReAzD3N7xkphLGPw?=
 =?iso-8859-1?Q?fhmM8zZVYrW6oxfKGgkL3aR6gG83so2CNuQvw7XddvgsjRN1vTm7vq1GQm?=
 =?iso-8859-1?Q?vraaQhlRUzv/95sqNwM6mt4v1wd8IU6MpPBj7hZ++frevIqdxHHinsJmV0?=
 =?iso-8859-1?Q?DizAbfQKkvIBpI+n+PEwTxWsLpOD/7x0T/x5xBLximtzj2/u8Y9ZHWsDza?=
 =?iso-8859-1?Q?pkixISto6wSigebDPMMwvj07ZZiiZQz1gFo7ThzPJJKpyGxyDy8M73GXN3?=
 =?iso-8859-1?Q?8rXlw79QlCstJ6IuT024Kid+wOylOhtSFCFfxBbnPzLpJHEX6am1X9BTn0?=
 =?iso-8859-1?Q?543GHxlbiqL4LjVqNMSvWRtrNZ2E6CNy7/wSexs8dHX4rKY6ZfGC9hP2kg?=
 =?iso-8859-1?Q?Y73cnIWTEaDuAdqkEDMw3U3G6+koAeGrYFFTIXhQbm61CiHBUEdLKdECP4?=
 =?iso-8859-1?Q?77qt0VnOOE6aZ4ore6AanQ+J9eYc/iXOdOPROBQ5j8E0nPhssMnb+UuIOP?=
 =?iso-8859-1?Q?V38bIGLqO+MQAk+mnkOEY7mJ2EhVPTwTmz0snktB2hoz1I+ucPcBI2mYto?=
 =?iso-8859-1?Q?BBFAWQM9iwcel1RvcrnOuauhNJ1WKDVGUcqrYyJl1RVaJ92qbd9ibpwGoL?=
 =?iso-8859-1?Q?g7/kpYqW3tWK7JlmWFgRNq06fC4TCV+uc/VXiQP/PCMesWc0Wf4qa1RuxC?=
 =?iso-8859-1?Q?KzRM23L/tmDApAYKyOl4BKkrQAMev7EAtXCZ2LwIyIur6HGYSMf2F0yglO?=
 =?iso-8859-1?Q?shmYuiNteUpBAD8BEkjM2F+R2xeYbDtFHX7yB1S+ZM95EYpTNray9DVlOJ?=
 =?iso-8859-1?Q?9R19ZZIaDA6MU1qFhyf708USDMS/cH5ZNsP9XGOAqlyy/jI2ldxF5t36lr?=
 =?iso-8859-1?Q?4zWvHTFk/6dapINvbHTmTfpxwDezpHeWO72kUuNbbiBVxXYK/NADdzcY+U?=
 =?iso-8859-1?Q?c/2f+wo7fxb2KE1Fp7rLxTyVx1gyp31j74bGWLQK6bLRVRBnDhH5juk8rr?=
 =?iso-8859-1?Q?w82dHLJvsPZ/dvx6K2YaAEW+ZLwKAPh6qkHpGGAKDHXd6BKE9zOGgAfiUV?=
 =?iso-8859-1?Q?FaXLUdOaXwvcVFOtJlo2nQERFYKeSBDQ9ENFu9uydCKyUC6+mW9r9+1/dM?=
 =?iso-8859-1?Q?AaUgY9yiNkxbUhVvh+/bZ1clgbKqfcu1L3EYWqbIpsDYq/PymmXjHopRiD?=
 =?iso-8859-1?Q?CILOWFW3x8auiyjSEKc2u8F6H/ol/iQxLdhBp9CuM7GpPM/HZf3Xe011XN?=
 =?iso-8859-1?Q?XZw+eCOgEOYoyY9nRiU7UE/BvmCyJOl1YWvzGT1wazSI3eiY/FmYgSLVC8?=
 =?iso-8859-1?Q?78WDbcbK3vGtOgx3odDO28E1c+VaU2o1fNo0fDbd2Ek8M227Uy0g0X/y5D?=
 =?iso-8859-1?Q?amtxZ1DvMNstKoJloWXcDdDEt7EcV6vZav/iWkP8EBn+C+4Y2RCTz8eA?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB6302.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30638da6-46b6-43af-200f-08db78a66dd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2023 13:40:40.5328
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fumoQFza9pb57XmKVqOVyviXicJRIKpRatebsRO9+PzJ/Fo8rdiiirRCfJfxOXtCoU6/fb/+HNkfVeNhRJiInW5r84znaKozFqcAZ7nNafx5EnwVOt0BGcon0zLyespK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6708
Message-ID-Hash: JBGHFTASSVFWYGJ2C26RKYWCEDL7PH3M
X-Message-ID-Hash: JBGHFTASSVFWYGJ2C26RKYWCEDL7PH3M
X-MailFrom: mark.koenig@iubelttechnologies.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problems streaming with X310 using Rust
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJAMDJO4O6QKUM2I7XZRJMBFW3O7C53M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4177677457559708495=="

--===============4177677457559708495==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM4PR12MB6302B710D9A979014A7547FE8C25ADM4PR12MB6302namp_"

--_000_DM4PR12MB6302B710D9A979014A7547FE8C25ADM4PR12MB6302namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am attempting to use Rust to task a continuous stream with the B200mini, =
N210 and X310.  I have it working quite well for the B200mini and N210, but=
 having trouble with the X310.

With the X310 I am unable to have the stream be continuous and task more th=
an 1 channel for the streamer.  I am using the Github https://github.com/sa=
mcrow/uhd-rust for the UHD bindings and have verified all of the required C=
++ libraries have been imported correctly.

Does anyone have any examples, experience or suggestions on how to get the =
X310 working correctly?

Thank you very much

Mark


--_000_DM4PR12MB6302B710D9A979014A7547FE8C25ADM4PR12MB6302namp_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I am attempting to use Rust to task a continuous stream with the B200mini, =
N210 and X310.&nbsp; I have it working quite well for the B200mini and N210=
, but having trouble with the X310.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
With the X310 I am unable to have the stream be continuous and task more th=
an 1 channel for the streamer.&nbsp; I am using the Github&nbsp;<a href=3D"=
https://github.com/samcrow/uhd-rust" id=3D"LPNoLPOWALinkPreview">https://gi=
thub.com/samcrow/uhd-rust</a>&nbsp;for the UHD bindings
 and have verified all of the required C++ libraries have been imported cor=
rectly.</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Does anyone have any examples, experience or suggestions on how to get the =
X310 working correctly?</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thank you very much</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Mark</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_DM4PR12MB6302B710D9A979014A7547FE8C25ADM4PR12MB6302namp_--

--===============4177677457559708495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4177677457559708495==--
