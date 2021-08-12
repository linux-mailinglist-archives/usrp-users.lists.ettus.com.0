Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A60DD3EACDF
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 00:03:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93F64383DDA
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 18:03:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="ILVhtaqB";
	dkim-atps=neutral
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2113.outbound.protection.outlook.com [40.107.236.113])
	by mm2.emwd.com (Postfix) with ESMTPS id EDB44383C5C
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 18:02:48 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MUEhjLb64SmuBuh0fRRKAYqvVVQ6764c/LR3ZOhR1aToGKSMOahrcSQ4LzsUXIbyJp+7z1BH0SfbiivXaxuTG198kJVOrbqeKjUieSGUrDNNlRMxn4vneQe9umX9XlJTvCkGCuLwJ+z4XOdN+XEx4qP/meGsPrKw3xtmRHRu1OczMAnUqNI8jCsMENdSammIoXkS39ZcSi6QF1bZV9+VRexNM3vjNZsUU0i/pbPT1KJ06zHm5gKpcqaktqrUnjbws8czRG7EAc9sogb8YjLa4sniMhBKNd51Wyv7YQsunZK7v+iTQyvsIMYKW7dJKfRKs5dXc4NEzh3HNniS5/wVUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+tP1mp8eGp+ktfIjQOStlDxbF0MbIBuD0+ODhpGFb04=;
 b=cZAzFCUhokCCsJp1joA5O9L2aQCLQ4VD/N3FPmHnm6JRwWoE+McvVcfdTxQic3kF7NGE2BG4WmIPabM7NtJtxKDplNmdVXWMG47FZ9/1Qu/9x5w8HbtIBw7dyaqzUjNsCbR3ksf4Py5o5F6SBtBClcYfD1CP7IbzkP0hdk2+hdD5eIzG4flruWh9Xr5aaSjkO2iEmQ8U3zSvLz18MQZlqxXZHxdQiEwVA2NibLw4S5XS6cSHsNszRybZo9XRG7byOsQpOVMbiCp1RWtKrRiyyfwYsHGwko1k6ChNgNt50x3KICQ4J+LQZEFPvzOKROxliMkHKksA7P+lfZ3cquCzBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+tP1mp8eGp+ktfIjQOStlDxbF0MbIBuD0+ODhpGFb04=;
 b=ILVhtaqB3u39RWr2czhAz6iumjg9T5KyZbHEXBvNC1r849pB72UcXANSX+SQtvHwqpi64H9nzT5KMTnAi0o6QyAnYKRGIIF4vTzjLEeAIuzvWAWJDud0CX2EwTNcbv2zIjIkJTt0OPi1uj4kX7xNzPac63VeCMtoJN1ridDG0xs=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN8PR05MB6033.namprd05.prod.outlook.com (2603:10b6:408:67::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.8; Thu, 12 Aug
 2021 22:02:45 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21%6]) with mapi id 15.20.4436.008; Thu, 12 Aug 2021
 22:02:45 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: N310 Phase Coherence
Thread-Index: AQHXj8WT7HtY3f0YYkOpKMZNZKqcIw==
Date: Thu, 12 Aug 2021 22:02:45 +0000
Message-ID: 
 <BN7PR05MB450080F8E19AC008CDFEA2FED5F99@BN7PR05MB4500.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab9bf575-537c-4d54-46b1-08d95ddcea23
x-ms-traffictypediagnostic: BN8PR05MB6033:
x-microsoft-antispam-prvs: 
 <BN8PR05MB60330E3CD724100DAC605E0ED5F99@BN8PR05MB6033.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mhRaZUy592k/Ax7+MRFe2iepbJI16N3Pbij82xc9DgWDZz2GhQvoN82r9ubYtRvXmLyTNTEqkizUbmA3HCtlNIdTgtRqP/zxqaMS6bOk3E4huu7KAdWOuLCBRVaWj1KjI0p4No4lWdArooi6+GoDF0dbJuTM3rl0f5WLgw6QAyo9zXsCFcBNO0TGBrYJdLFu09ziT+/68S3H8qy6KwHLS/FjEKJYm6E6kYjxoABKLPjAvO1iIarzR6n5fQBuLOjvoP24AqyrMxDp8tfZ9r92tGYTh62IjbdIbZrw6nUfyuBHeFSH3g59U3Mrp6jl8daoe3/VpUMKmZ7JM9nsQqMjj64iL92nTglozfz4Znd/wAEyj78hJTsJ61See2PJg6Hy3ZkD7HiU/qNXcqgo61cwosiwQyQ46aUYE4S82Urz/80FMOmVpxpD84YwfCL8Db1emjseerxz+Xvc7M6r0TcPD39XxUx32pzd4mLGG8YU18wtHI1XqJR+npwB+rPmku/yo8y0mQuR5rgncNfBGQt7hTBft9H5jLoGyqofP7gOD4tz9XwDAy88YqzdmxA/1Lu2H9thACv1MjSbdnNtmwB8XF5fRWwtk+ujLT3I5tx6kKDdm6iPS1gmzIUckGTB6s3cAkpTGK8FM1v8XNvW7LTKUk74PZUQ5LGUuecW1jJ9H3QiH4kWZ5M3tvHFYDJ7Il4cQAW7SXDKL+3FQ6eW7/QwoA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(42606007)(346002)(136003)(376002)(396003)(366004)(7696005)(7116003)(2906002)(508600001)(6916009)(52536014)(316002)(186003)(5660300002)(122000001)(55016002)(8936002)(33656002)(71200400001)(8676002)(6506007)(64756008)(66556008)(66476007)(9686003)(86362001)(558084003)(91956017)(76116006)(66946007)(26005)(66446008)(38100700002)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?hMh5msUPW8p4Suj/9S37BG7+8ifIGc7d5MWN/W7tMfN6Z/dEZTsRkhdNe2Mo?=
 =?us-ascii?Q?9Ni0UnDWBofC9nb7YXH/42OcSQBD124STKE6BAcVHxMZAvzPYAYB8nzJyZKq?=
 =?us-ascii?Q?VqQQznV4cqxYQpjw6QRAy4UgURSl1cvsY1gK23E5e6zpotXQAvVHVhh0fmqa?=
 =?us-ascii?Q?dZ4yYq88UAgPBAbp2MaVYFV6l+afbJfs4cyToXtgxbgyGosxk8q23x0gaD3p?=
 =?us-ascii?Q?dvYCZgO5366+lKD8lt+lhwBcmNGnv3zz8dadijR0TxoP2w4kqQx+DCMWFlSn?=
 =?us-ascii?Q?2H5vHWNBCEBX/2vODPh/D9d+1fT12XvdO5nYzGIKftQUiHVS6zQS8uj5yvqu?=
 =?us-ascii?Q?/FNuqoqqLW+hC4lvnrEi9g+oBYeyC+nEXRaa+JtzH7F68oZdyN15nd+OKAdD?=
 =?us-ascii?Q?lXIOwZ+R3K0PcU9Jr1oo3oK7MNGsUmE/Ptv2D0DA11x3o0FFtZ6omPo/hFkg?=
 =?us-ascii?Q?ggeWSOA8jOLeW3bdMblhT96vfNCuFhJNDwOBn3JuqBlLbkrKGn23zCSnNBaL?=
 =?us-ascii?Q?Njbl6URkIACEDzB6SB4codCSr/elwa/NKO8Tlyd9lIi+d7u2vUITWwbPfLAH?=
 =?us-ascii?Q?Jvgx0YYgxE4fbQ+DPfv2TqlYmaSdesornD24ZRegOZ4rfwIwO6QwDf60qlXb?=
 =?us-ascii?Q?rTKcR9WDvP24p5HO9EYrCpui0Orlqts4IDNrTCE/K1efKnt7a06wVQ8uZZiY?=
 =?us-ascii?Q?ll1wbYVfQltF5hYGr1mWhRRmZyg7VOHrQB5bBs63ewnhxZr3l+E3OMnZqEqD?=
 =?us-ascii?Q?1ScdnA842CxYtxesZOWh/E3GPJR9R81mjBmQiw0L6VXwTkGZ5sR82i/FuNbX?=
 =?us-ascii?Q?PnuzggVfadPw/MLxjkhetq+6eLFEK+OWGpNmdhSWRSZOS3bOpKksPxtr5Fzx?=
 =?us-ascii?Q?L8uqxl4gQ7u0jYboi4CJxsE/pjOhWRSGSFSCUGlRzkfazMrchBUbwRhZ+aqv?=
 =?us-ascii?Q?4qqkgnDNN1zqGKbPSsYWLM0sF726W8mFkT6fvjxkJmhe6aUNiM1D8jXDYc3A?=
 =?us-ascii?Q?4rHzCpOG/abYB6I+vI4Mjs4bwD9iSrG9i7YIxc7Ki3aadwg1fmwoii3C6if+?=
 =?us-ascii?Q?IJv4vQmdJy7p0U5ugHC9Vxd8F30WCorl7mNULT3UB0qF5//aUE5wop4s0tq/?=
 =?us-ascii?Q?G5g5y8vUk1zNHTsEje1xBNmeV7um1HeJFWv1jBuGfKMBM9emm0OCd7w9GOKZ?=
 =?us-ascii?Q?SXpQgGiNLHkcJsMVLVRNUwIebWUXP16tu66MITGI0jzljOJoa0gWUtPK5nth?=
 =?us-ascii?Q?ykeM8pPaGyV1WtAMMlM3h38n3uHkELQ7fcv1MISFJ1wS45944LTicinX4sfd?=
 =?us-ascii?Q?MxqLCwYUH2TQAsyDzZ5epAyFTLUg5aVXcUxXxp8/A2P31g=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab9bf575-537c-4d54-46b1-08d95ddcea23
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2021 22:02:45.0175
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JJw0khrjtHPAvMOMzgfqODgG/GRYlR77vTe3200oyW6XFfJoVFX7KqZommAl7n9MZvPrVuBCkWLfNQ3lH7FSJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR05MB6033
Message-ID-Hash: 24767575ZV6TZJLWBHWQYZ7YAGSOPU2M
X-Message-ID-Hash: 24767575ZV6TZJLWBHWQYZ7YAGSOPU2M
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 Phase Coherence
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ATZOA2JVWRSH7BQPHL2OE3AP3VPJ2ZJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7603613423727653944=="

--===============7603613423727653944==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB450080F8E19AC008CDFEA2FED5F99BN7PR05MB4500namp_"

--_000_BN7PR05MB450080F8E19AC008CDFEA2FED5F99BN7PR05MB4500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hi all,

For those that have used the N310 for phase coherent applications, what was=
 your approximate phase difference between channels?

Thanks,
Jonathan

--_000_BN7PR05MB450080F8E19AC008CDFEA2FED5F99BN7PR05MB4500namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" style=3D"word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi all,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For those that have used the N310 for phase coherent=
 applications, what was your approximate phase difference between channels?
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,</p>
<p class=3D"MsoNormal">Jonathan</p>
</div>
</body>
</html>

--_000_BN7PR05MB450080F8E19AC008CDFEA2FED5F99BN7PR05MB4500namp_--

--===============7603613423727653944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7603613423727653944==--
