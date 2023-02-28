Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EF66A5D8A
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 17:50:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F7DA3840F4
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 11:50:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677603000; bh=m7oPGEDCV8iNgQ4tQaUcJ53GPQiuB1lo2gpAlqWGO3c=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eXD6DwcVgB6tDYoz+Yt4iCyl3VTwsY4Cli/X9PWSLoe+tqcVvsTrMOy37alGO3PK0
	 lSly/4W/vsMge5NpZwSuPj0yt/ImdMOc1+h2A1qghnU3/k8ZsPrymhl05gPIhzYDMJ
	 7wEN7gMAnmRxbQy3jqi0HJY97oDKK2RpxTKCZv746xvHHUckGoXhUWkIHskZ+1vyKp
	 vitvmScrlPM39gCJf18vjlg3L9lo/uXYcc1sEmSE4zscUCdOS605vTBy4CdDshzwTK
	 a1/AEzOPjpthn4G2UoXrLXXgeBm/P3geWbyxkDrAj0q5ovve3ruROezZbhp5+iuAYi
	 zLSlQjIPVcHgA==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2068.outbound.protection.outlook.com [40.107.94.68])
	by mm2.emwd.com (Postfix) with ESMTPS id 492A83847A8
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 11:48:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="KWY2UO7h";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GjRmH4izdBjzF8SC81zEmy1QL/GovfU8bL3kZ27L+93K2VFAwlTanginv3Bv/5yPTfq2xxpzAqLYH/HEc9CyXCgFB0IOBgRNxEMVe2GZ7W9hSkEdEC+Oc2NEEJX26lm7jR05DshlRQr1UZEeC61RHIhQoUrKpDgiRastpX/lo7bv8myx4MvoRclfErLKGQSt4QyDEAVr38ZC58MClmYOFp3dWVaKFGP+3BOx3YzS9qr6fXRJkgIgjaODjFkTs9kq77zywrHOEvCNDjLief7G7ClE60GOMBgKE0uEH6D9qr4B+J7S9rp1CoyDof5CNMPEciC7LpgsI64wUx0HtvDjUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SdnDwa3pn/xhAikNOIUW9OPZ+MYEuPOg0DoGzqHsrFM=;
 b=QAPTN6MHjyOmUqg7HzbgBx3NluCd2ly365+iCUXjBHi9qORTSqwGVjvUmMBNkAMO12k/2YTb9ZHqw9eguDU7WQ+1pX0kPdlbMjji0yeMG+nQJkovd2lZ4rlFRHxWonyleiW3D9Eo2XgFJYvmj4+OhSgTZKuuypMZkhmhXw+Xfd/lvDxR4P8cbno6FIbOE3uYrImYG71PXlvMHV0zz4mLqPt812blltLhmkvAvInCdyMYuc+xzX33wkn8NzlCteKaOz9KjNFB8TXth/iL3INJTxXH4DBZkIBOB8n6/oIHe0S25Wl6Y5lhZPTtyq7yjtht0NXoiPicyjHhuTMBOBpbrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SdnDwa3pn/xhAikNOIUW9OPZ+MYEuPOg0DoGzqHsrFM=;
 b=KWY2UO7hedNoQZNPVa3ISpV1kW3IBsYESlNg5/YtlNyfYV3LFShGPLVEGhVbkB2xssO9nX4dw3qIiWDwOq0JXl+L/5XKO+3A8q/iGZHFTDh5dSVZlIrpOJnTPi2G7OE3i7Q2xY0mJnJ6GUcRgQfWjitQpYIovq1dwMxv9NBAATMNAMwGsirKodM4PgQRn+p3IGGJUCGFYxRJSNIrrwWl94JxGifPjJXQCEBqtJih1hhLBnGDK7ikWHRHVDwShtxnkmFEUGZUP1tIUr/Kyj2kcbxPPZLV5lfFwFj1lT+KvKp9ydOuUJlfPE9mGARU9xah7IfdNzVefQx7Fg61K9OZCw==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by PH7PR03MB6920.namprd03.prod.outlook.com (2603:10b6:510:151::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.27; Tue, 28 Feb
 2023 16:48:46 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 16:48:46 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] RFNOC packet size - Keep one in N
Thread-Index: AQHZSwI14s5x8ZkjREq+AXT2Lhipg67khtOAgAAHm5c=
Date: Tue, 28 Feb 2023 16:48:46 +0000
Message-ID: 
 <BYAPR03MB467850C040F3F4A2A95047BFD3AC9@BYAPR03MB4678.namprd03.prod.outlook.com>
References: 
 <BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAB__hTTBdCQ2SjFRCGqi4kNdO1iNPGbfVrLLePYx0R8QXJxyMw@mail.gmail.com>
In-Reply-To: 
 <CAB__hTTBdCQ2SjFRCGqi4kNdO1iNPGbfVrLLePYx0R8QXJxyMw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|PH7PR03MB6920:EE_
x-ms-office365-filtering-correlation-id: b7560d01-f3a3-44de-46e5-08db19aba8ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Lq0kFs/EdVTGuvcZmGgCXH697Dpn2+Wms8KEkVpSohjwUSGxXowCUnerQeTiD83Y1m7A1kkhLQYUnJcMlYAxqjjcazD1epUnVvuVRGtedNFiFKVgUWtqh3dkpUKUjaZfH/csvPBPEHyHY2tEnVXlcslX01vqD5I8oO+xowuRiSyt3MTLnqcQCPy8/qxh3wQxNIUQoWZtjrOhI9EY1yL3BJpoSJr0uXlXyyoo/dVm+ZIGckZtvWJjFEv+Py7mPqJW5WLDy3jeotax2tAs6F3tKU6X/oI6FEsptUQXAx6moNzlT1iceW/aVme8n/H6nPHcatHt3pZGe5ngoYLI7WHvSymHkGIULG1aW/eax6o7LGZ1M1wMGeD+Tl7TuBmKh2kFFGs8avZWYSlaBjZyT75U0j5hMrqDof4BFs+1dn4pUyt1dOepjikNy4G29IbPD3L5Del79G8bPJnlW8i0jZrEaeWVCk7p4JthNY+2n7gBA1K6nwmG1Dtup9qzwGvGM+KL/FsJbXGRWZSU9JThMgkaaLxnXaJz96KjiL6A9HZBRkCZhbD0B2xLUo+KsCefU+4uXYmoV79G+HVH5iPDDaXCuOMN+58LGt4LrFn7IRcOBE08FekwFhmESO14sJf1gA0/mV7PIXom2+Bj6fOsh2JdDr9Y5eup7PKEs6uzw+7cgVz0zIrdAvLLlgcoqA7p0pqU
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199018)(8676002)(8936002)(52536014)(122000001)(786003)(316002)(75432002)(9686003)(38070700005)(7696005)(166002)(26005)(33656002)(478600001)(53546011)(86362001)(966005)(71200400001)(186003)(6506007)(41320700001)(2906002)(55016003)(38100700002)(5660300002)(76116006)(66946007)(83380400001)(91956017)(4326008)(66446008)(64756008)(66476007)(66556008)(6916009)(19627405001)(66899018)(41300700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?SZK6O4J52ok732vqQQcNezZn1ayRB6qtzr39tN7aWV+qMNiEjJs0kI2fVtcR?=
 =?us-ascii?Q?gpbL1czztkCytnxWJHrcQNmAjmB6CcPW7zvJg/KixdBSAadDCBusy4rhKDRh?=
 =?us-ascii?Q?xT6rJL5LszwvbEJUhLt6ZhtbsxuxuJtZu2I1xwSuvUoG1CM9DdDGEz614O69?=
 =?us-ascii?Q?Mnl9I60AMGmc/jUHEX8leac7R4YoQFxxSuotDZXYMlQSEQpcPBZP3vBfbd9f?=
 =?us-ascii?Q?gs0mT+wniBvBSlGf8/ewzWELKv4htbND+K9XSsx3yJz1g25l97HEGMm4GW2e?=
 =?us-ascii?Q?LQHD4r4pLHT8ayVoHBEMgrY6eZtU8zBJBVS+8JAhsZdJAYunGsVr4NX29IFF?=
 =?us-ascii?Q?OuWwA7X7SvPNcp+Cg1iKOVINvmcbqNyhH9Pnef9KQLX9D4XcAiiZOmhxfThD?=
 =?us-ascii?Q?HTJpCBZuFD+vcwmOH5Qok5m21hemmiXSYt5o5L0f4eZ3dLSVuWYEv5cXFlrd?=
 =?us-ascii?Q?JCNbnonRJG/BV7JgOWvIK5GaNA4K4r2KEQoDXL6BagLy+OW7v9szQMLqEe5G?=
 =?us-ascii?Q?HCf3ydPnKhb449mm++Sv3pnV+zmP+v9d+blxqAcw0p7aAvPq3zVSRnB6ScAR?=
 =?us-ascii?Q?L3qOUgFj5Bz0AbB5Kw09HX3vzdrZrWGc+acoPu7W2TJ+ea12bF5TQSytsOY1?=
 =?us-ascii?Q?8wZpT9D8WR92Yutu3tCjpDJEYKAGh8fhjj7uOXNyKhKoPN/2V3t1ArEkkN74?=
 =?us-ascii?Q?pRrtQPSVf4agsGHqjcSslRmrDNYTodyhGKR5/lTGw/UU5sTKU6FXkf4H76Jw?=
 =?us-ascii?Q?BVhfvBxOXtxJxER3FXgkydf6MI82Mfinn66zFN36MBrbYsjTMEmMBEKBc9VF?=
 =?us-ascii?Q?Yzym+LQVLOdGfV5i6cnc0yQ3KtqhdUI37iQG73tU0kH9LhPTekIwzRspDcsu?=
 =?us-ascii?Q?YSVzGlzMdPJ1RnpDcRYYOne3R3sA4L1GbS7wokXgSLED1jXwYakdV6//7Awi?=
 =?us-ascii?Q?iDnRvL1n+KBjM+GAR5Uj39VsKBQbnODaKMpnzj+Qo49nJJ1sAqByAkU08LVo?=
 =?us-ascii?Q?7hrYp/aNte1nvZWb4LMZk4CVAmlifv6dlBlpZ+VxdzfyqCZNOT8Dunp5VGxz?=
 =?us-ascii?Q?/iJA6yeSm8IZKkqzsm/wcsJORnK4L1MPQHAyrmsI1PYXG9Mzulw+SQirqMwB?=
 =?us-ascii?Q?HtkcwPS1CkZP264/IkEVMIMPgmPAP12AfztMcGMddT+P4Npw08M9FkkfWaM0?=
 =?us-ascii?Q?K0InB5JEIHOHwQh29BrbgxJJrhyVCZKD2kAdIGkrYA9NE+hjzW81bt4hdH0m?=
 =?us-ascii?Q?Ht03stRWEUMd56o8VD4H/8qWfr7GVYJbd+Vc1Qh4J29ocYv9cHk2KuprkeCo?=
 =?us-ascii?Q?4phddXfdZUZ0jfUwk+aCdSSVI0iJQm1A2N24LI5aWnKT2NnFaFzgiocxcB1U?=
 =?us-ascii?Q?1VjkD2ih5m+h4jXikov3gM8qkQkq5kcHJQBmyMBG7DTlH4BY9ti2iZS04UCs?=
 =?us-ascii?Q?V2YLFB+r4VvPlTeiEVHBRan7cp4xTkPozOH9YDEfDiClk4/HFrqg0fpYaV+h?=
 =?us-ascii?Q?K+FvM3SX0t2620QriU/oVakSXtlJ5RtLuLlmGgj++Utp8Yf0zHqFAeXM/N7B?=
 =?us-ascii?Q?dDBJltuzmMnNWcmLY0gYLLLlZMYnszNCTNyeGgYQ?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7560d01-f3a3-44de-46e5-08db19aba8ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2023 16:48:46.7190
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fxR7HBiHI24scYq0D11oj4cXHsxR8pY3z7jKFyBjuNzixCl5k5axXNyzuDFbECScl2F3cYh3glhHUdAmUP/8zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR03MB6920
Message-ID-Hash: H4VDN5M3CUFV2H3RBNA56DCRJKWXE3YN
X-Message-ID-Hash: H4VDN5M3CUFV2H3RBNA56DCRJKWXE3YN
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC packet size - Keep one in N
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IKIQQYNEJNAUYFRMXZ5AP4H3KMEBXERF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0470378905231440350=="

--===============0470378905231440350==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB467850C040F3F4A2A95047BFD3AC9BYAPR03MB4678namp_"

--_000_BYAPR03MB467850C040F3F4A2A95047BFD3AC9BYAPR03MB4678namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I see,
I'll try and play with the network parameters to see if anything changes.

The large packet strategy doesn't seem to be the best approach for what I a=
m doing anyway, since I cannot reach 2048 samples.

I'll also try to modify the K1N block to me more like a Keep-M-in-N block. =
Where the M packets are not discarded but accumulated.

Hopefully the combination of this mod and a packet resize on the FFT side w=
ill allow me to make a 2048 samples long decimation and FFT.

Your help is really appreciated.
Lorenzo
________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Tuesday, February 28, 2023 8:05 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNOC packet size - Keep one in N

Hi Lorenzo,
Regarding the SPP=3D364, this sounds like it is being set according to your=
 Ethernet transport MTU. Sometimes the NIC defaults to MTU=3D1500 rather th=
an 9000. If I am right it means that even if you created a graph without K1=
N, you would still get SPP=3D364.  If the Ethernet MTU is set to 9000, I wo=
uld expect that the SPP would resolve to 2000.

Regarding the 2048 vs 2044, you might be running into a limitation there. W=
ith the packet header bytes, the maximum payload length might not be able t=
o reach 2048 - I'm not really certain.  But, as a test, you could try 2000 =
(after you resolve the SPP=3D364 issue).
Rob

On Mon, Feb 27, 2023 at 6:36 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
Hi All,
I am trying to build a firmware for an x300 device that uses the radio bloc=
k and the Keep-1-in-N block using UHD 4.4.
For my application I need the Keep-1-in-N block to operate in packet mode, =
on packets 2048 samples long.

Before connecting the graph, I try to set the radio block to use packets of=
 that length with the following command (C++):
radio_control->set_property<int>("spp", 2048, 0);
The first issue arises as, calling the function to check the spp, I read 20=
44 instead of 2048.

After connecting the graph with radio RX->K1N->RX_streamer I check again fo=
r the radio spp and I get 364.

Reading this page:
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_the_SEP_buffe=
r_size.3F

I understand I could possibly use a larger packet by changing the CHDR widt=
h of the design. If I change the value in my YML file, I get Vivado to thro=
w an error saying that 64 is the only value supported for the device.

Running the design compiled with 64 bit CHDR width results in an even diffe=
rent packet size written on file.

The questions are:

  1.  how can I make the radio to work with packets 2048 samples long in a =
x300? Does changing the SEP buffer size help? I'm currently using 8192 as b=
uffer size.
  2.  why introducing the K1N block reduces the packet size to 364 samples?=
 how do I change this behaviour?

I can share the whole code/firmware if needed.

Thanks in advance for the help.
Lorenzo
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_BYAPR03MB467850C040F3F4A2A95047BFD3AC9BYAPR03MB4678namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I see,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I'll try and play with the network parameters to see if anything changes.</=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
The large packet strategy doesn't seem to be the best approach for what I a=
m doing anyway, since I cannot reach 2048 samples.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I'll also try to modify the K1N block to me more like a Keep-M-in-N block. =
Where the M packets are not discarded but accumulated.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hopefully the combination of this mod and a packet resize on the FFT side w=
ill allow me to make a 2048 samples long decimation and FFT.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Your help is really appreciated.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Lorenzo</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Tuesday, February 28, 2023 8:05 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] RFNOC packet size - Keep one in N</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Lorenzo,
<div>Regarding the SPP=3D364, this sounds like it is being set according to=
 your Ethernet transport MTU. Sometimes the NIC&nbsp;defaults to MTU=3D1500=
 rather than 9000. If I am right it means that even if you created a graph =
without K1N, you would still get SPP=3D364.&nbsp;
 If the Ethernet MTU is set to 9000, I would expect that the SPP would reso=
lve to 2000.</div>
<div><br>
</div>
<div>Regarding the 2048 vs 2044, you might be running into a limitation the=
re. With the packet header bytes, the maximum payload length might not be a=
ble to reach 2048 - I'm not really certain.&nbsp; But, as a test, you could=
 try 2000 (after you resolve the SPP=3D364
 issue).</div>
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Feb 27, 2023 at 6:36 PM Min=
utolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech=
.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg-8672289987009370211">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I am trying to build a firmware for an x300 device that uses the radio bloc=
k and the Keep-1-in-N block using UHD 4.4.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
For my application I need the&nbsp;<span style=3D"background-color:rgb(255,=
255,255); display:inline">Keep-1-in-N block to operate in packet mode, on p=
ackets 2048 samples long.</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"background-color:rgb(255,255,255); display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"background-color:rgb(255,255,255); display:inline">Before co=
nnecting the graph, I try to set the radio block to use packets of that len=
gth with the following command (C++):</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"background-color:rgb(255,255,255); display:inline">radio_con=
trol-&gt;set_property&lt;int&gt;(&quot;spp&quot;, 2048, 0);<br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
The first issue arises as, calling the function to check the spp, I read 20=
44 instead of 2048.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
After connecting the graph with radio RX-&gt;K1N-&gt;RX_streamer I check ag=
ain for the radio spp and I get 364.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Reading this page:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_th=
e_SEP_buffer_size.3F" id=3D"x_m_-8672289987009370211LPlnk878763" target=3D"=
_blank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_the_S=
EP_buffer_size.3F</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I understand I could possibly use a larger packet by changing the CHDR widt=
h of the design. If I change the value in my YML file, I get Vivado to thro=
w an error saying that 64 is the only value supported for the device.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Running the design compiled with 64 bit CHDR width results in an even diffe=
rent packet size written on file.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
The questions are:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<ol>
<li><span>how can I make the radio to work with packets 2048 samples long i=
n a x300? Does changing the SEP buffer size help? I'm currently using 8192 =
as buffer size.</span></li><li><span>why introducing the K1N block reduces =
the packet size to 364 samples? how do I change this behaviour?</span></li>=
</ol>
<div><span>I can share the whole code/firmware if needed.</span></div>
<div><span><br>
</span></div>
<div><span>Thanks in advance for the help.</span></div>
<div><span>Lorenzo</span></div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB467850C040F3F4A2A95047BFD3AC9BYAPR03MB4678namp_--

--===============0470378905231440350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0470378905231440350==--
