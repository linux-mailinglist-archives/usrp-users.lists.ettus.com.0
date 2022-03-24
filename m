Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F714E65AA
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 15:51:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28ECA384A8E
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 10:51:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648133478; bh=t6q+lNwzC0IsC3fUK8OeOOBqSHLhke1rnYJRJJe45gs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QFE/jC0ouLiygyFwOtsngagks0iVRdY+KynEUn4zy6l3pb0RnTc9jlLoXWCvryZSd
	 1wIgvV5Tpg7UED1vm0Ni4CHGAbZVuai8vzEnC8AMBS1AUvBAeidEZmbdgmhrciVzBU
	 o4bXHuRN/odukgLITm9ay7kNcCUF4GY/LAD0aPMNIjEcvenKAJZPujFXzLZKzmFfCn
	 VhSNTFyRCBaceuM3VBjsnJi00TSgre0C6BVqE9xZehKOGU+YGwRjMgI28eX1nfPvEW
	 MN8jocYhgS2tPUJLT9GCD0q1y9NbrfCG0gq0TKUfT0wgrktWvzb5afbe3t9hEHdJHH
	 8jACEzPsB+Ong==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id C4576383D49
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 10:50:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="ROuBCCVf";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.48.6])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 004162C006F
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 14:50:12 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id AE547900089
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 14:50:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=flOkezUlghbQWNJ01vYAeTLGzwodHPf34a60pNZLfkUkeZaDYLs08puAzBMHn6i/sW8saxiwnUX+jFZerv7+rX24JVEd/t7o5NjcIn9eaF0s1npCkw551q9qV1327SXlS1BSOIJv79Z2L82LTk6f5BwNOcNpY9feHuWpzQP1Flhb8ZEPjkn7B3wG0DGuHIM9nDE88OK/TAihfXSGNqLxwTWHjlpK8AYQOjZn8pxnV2yDLDguCMJPooetS8iy8FvME4UQV6whjRqYvxKZxXlWcP6hlhmJ2FbNXcSfDWNr+Y5yZnWtUSvAbEPOJHCqm6QtBbNU/3c9DjKpiM+OJSSETQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9BL9w3QmmxLltxe18pJAEEWe28aLw+J4iR5GpXYPEZQ=;
 b=hFFZ1PfIacj4b9IEqQEhJ35OQq31GsF2ltHpKXZ0GqePSdyesntBunYNnpJ/DcAHO1tilrZSq7WcR1vs+ZHykuueccjW+0OX69aZG1dxUiWre4Bfr+sL7nKJgEDI67hBVuV3dNcjHXZKSMVR4KIUGHH+M37j5yJcbqGzcHM8Jv3cy3FrhY+VEVCFcLlngoDRcxIZMZ3kOJTnSMWLgPlZUkjZkiwnMV5FzhlK+yM7TMrJ0vpee1QrY3+gsp1Ar3acCSI20ASYQVGelj9XKXgOw6NdJv4N9HPkRLY1MXJIYw/eQxgks+1ynlBZLZLTO50ug7fKQ7nhlszPhypvIplL5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9BL9w3QmmxLltxe18pJAEEWe28aLw+J4iR5GpXYPEZQ=;
 b=ROuBCCVfnR3MTCaxuRKAEmlqbI1la38fCMwoUWG2jDSw2qddLHN2KWJBq/JZ8Y8MfsGOe2Zg05A9dQ2vzT8TxvOFrvVtFBUIZQ0LNDVoo+AfJO1R32LHByJ7G8HXTUZcd55iYQadSK1FtoCwrRTh2743h+BU/nV+1kqt9Ueg1WI=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN0PR12MB5882.namprd12.prod.outlook.com (2603:10b6:208:37a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Thu, 24 Mar
 2022 14:50:11 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::98c0:773c:d193:9504]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::98c0:773c:d193:9504%7]) with mapi id 15.20.5102.019; Thu, 24 Mar 2022
 14:50:11 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc vs mult_usrp API question(s)
Thread-Index: AQHYP4kyn43/yD/+p0+aicBl5i1xrKzOnQJE
Date: Thu, 24 Mar 2022 14:50:11 +0000
Message-ID: 
 <MN2PR12MB3312931656671448116A815BB8199@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312BC29A0F365E1378DD71FB8199@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB3312BC29A0F365E1378DD71FB8199@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 951c75d0-03a7-45ca-2594-08da0da598d8
x-ms-traffictypediagnostic: MN0PR12MB5882:EE_
x-microsoft-antispam-prvs: 
 <MN0PR12MB5882768D4EB5C5237558681AB8199@MN0PR12MB5882.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JZQMg16/h0EchVTwDCNPOBqigmywz0oSPmHHAQg3B74zfKX+tjm18eGZONmKbLCcIOg2XeeP/pLnSV52IZar/iGeeh+wUnUXryUAZ786C/TDCUYub9afyvG3nVUnXaHPE5zVKK5P6GrTPxj4nZlDxcHxKAA53lQFzosq5elbZjd1rIgIIDOK/IBdrIK9TrMMq0YOztuDzsIRSI0Dnf2+z5dbYqEfPCw6/rqmvap63clyrIb2AO0BQKDVyUkzGygxMI0IY0YB202SbJ/8S+atEsa4CfFOLgYGIFUJMzoxBuD7rlrkRfb4jUEt0ZjpwaTX+S0y3Q7sBsqM8XkxuCiE1Zpv0dfwFMmra+FyC7YQBWGfBnumylKMkmQ4jwQISIQOSLCfoPlVsOjch3AHDflrrSdUaT3PBjAUf7rgMoyjd/YpeYHTyLpPpvLBcYy0cIpZuutjhCLY0Y9xALLwOQ0K52HUWG3/sLXG3XP1d9dcL4T682SHZSYlf5uvTismGzpEX3SHWNcrVz5Q9Gh2c9xLQ5AXxbZSd28EtT5M+Crq8Rh1VkPo8iGicYvoC28PYIQNHfDNWkhDc2PYfpkw/6NxlBSYUgj9l4aquowCXmGmwh+OhG3fNxNbBL22ckRQACfd4CcDwDaFUmxWVluvAY5LXQYxCR6lgB2umwOrm2kj2VA0aucT20Us3PxqFYCHj/y/yqP3Ajhj9374z35AVVVFdw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(396003)(136003)(366004)(39830400003)(346002)(376002)(71200400001)(6506007)(53546011)(7696005)(508600001)(38100700002)(316002)(5660300002)(38070700005)(2906002)(55016003)(8936002)(186003)(52536014)(26005)(66946007)(66556008)(64756008)(66476007)(76116006)(66446008)(9686003)(8676002)(122000001)(6916009)(86362001)(33656002)(83380400001)(19627405001)(2940100002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lKcPzHohzESKWtUvby4FeAAvyqTkiWJe/uvLejxYs6dTVRyOSQWz6hxNqbuX?=
 =?us-ascii?Q?Mi5vshhYhTH+ZAtEjHF1q2sjzkPtYo4BAZorrwCYqjIYUuX2pAyXMJWprZK/?=
 =?us-ascii?Q?9Xefd+1RdX9+OiaBIqbIQI/rN6Eh6C1YqIpVD4zOzl33PFiQ5vVQd4h0vNfB?=
 =?us-ascii?Q?6X0BVScDmU6t8Kjxa4ah5evB3OZSmRFvdGRvTiwNcWt968SVXfnDPmM1Zigm?=
 =?us-ascii?Q?GoJ+vcZ3B41PHdQPd3DRIig/LDdq/RSJHhz8tOq5GbkyDtKARDYtFVeEP82e?=
 =?us-ascii?Q?I1KlB4LrJq0cr7sJgxE/4pEqjKCxAvOyzmqtWyw5GjJe7NVSxZsGieODuv6b?=
 =?us-ascii?Q?EY5+sVxNq6GzD/K26WR3V41Gdn1B3Fa0x/3BwxqxA9P1xrUL6FcCcE7iQWyM?=
 =?us-ascii?Q?VHvHi40lVBORfy8IuNG1aefqdIBBK1v4goFH+D499XNUPPqlEfut/m+JtDGl?=
 =?us-ascii?Q?kt5JeIZqNvXsnYkGKkJKBGScQXy1YV7f3SCbPOVEYqYPOEHJhtqcNip9msbk?=
 =?us-ascii?Q?kbgO5XXSo6c0zXRsPH+Mmy6L0kBBf9GMlEDowGJ2mZfaV1+4+KxbQ1SaPzZM?=
 =?us-ascii?Q?LnKBfv3S0EenwBzgW+P/hcMYcA2vbDOegj5h9d+jAV8byy1FcabWIGiamQqQ?=
 =?us-ascii?Q?UjxhRSPh+ckJFFUa9+ynhAsys7hglbE6COZFUhxrWqpF/ELeGE0QEbY9FZzr?=
 =?us-ascii?Q?KlUJg4J92T7pjeBoNpCVKKrz0AOeRURuHJwLyN22VvQBvTiYOY0wXt0Jnb80?=
 =?us-ascii?Q?xjoZmjf2rpLlQ7z6TIyBj7RnQcYr+I0k3JwjcvTI2Xmjox5FNc1p+AgQT1Ik?=
 =?us-ascii?Q?qN/8j3+e5TFXHRtm8afeHBdT/2rby4eSF3byMTxW/m4Nr+xqSMBGad3B+veu?=
 =?us-ascii?Q?5kEhIi1MoWoL1/PdZ1Ow8Uj7X5594nKCJndMcbuTSWEJn/YVZicijlGeztIr?=
 =?us-ascii?Q?u9VhH2c1X24OkAPlsBOQoH1RfXD/w5HWG65NMVajbNCZy0tsPAsaoCnXBZjg?=
 =?us-ascii?Q?ZSSg2GEUJmDR4amlcGAmJep5NXyS3B+XhC28X2EO4/f+Kct0zELUrtMzGouj?=
 =?us-ascii?Q?cOq0CtuDNoYg2pepf46IrTQl9AYfmmNgeC1OcJvZigvRvtIBAx+XOFkCor8o?=
 =?us-ascii?Q?UnmQ1PbOef4QZhDWO5j4tqaLX56Cdd8UW4+JiPL3XSE6j6rAVlgctFkdksa2?=
 =?us-ascii?Q?ZTskOFmLP0f3Hy5GBsKKo3EYBQyH8GBSUblR2SQkSUpTYpxzGF9cIzzLRJOA?=
 =?us-ascii?Q?m1bOtbvPPuHw62gIoyz3xqrx0zzbraKcwmkIwYEbJ5DR7B5xnWN3+MEZPgBS?=
 =?us-ascii?Q?XpKLZ/brkHqwqXHsLdhg1w1CNjc4yV3GB1b5P/ykkg9nmqxP7xEhp1zIVuhP?=
 =?us-ascii?Q?sA/jAFO1+HuXov2fbctvxYdktscTRGQQXNR3TclVOTmEDo1oTYYMMGe7U87h?=
 =?us-ascii?Q?52eg9yzLndAQn15bATiM70PME3UW08Jf1IVODWcUyDEl/ij1gj4AuLTETQGA?=
 =?us-ascii?Q?lbwHr0R1X9FvJCZ3cxSlBp06Q7U5otrusYkmEA4wtmcyGRllwQjnFPsGKhnG?=
 =?us-ascii?Q?kEqZvcJvc2zdw3O48ykyF8MAtligUyePLxzHHI04UuDUz8ELjo1gK2HN8Qqx?=
 =?us-ascii?Q?2oDTTN0DoSheENA6oCLAvc1xvjTkumCj2UI8Sn5IQOCup5HwwSp8cN9jGOrF?=
 =?us-ascii?Q?js4FRpnqrnutPfMORzGu0QN57OlwNJQvk23MXsT24pPwD2rb1kmkLj3LpSX6?=
 =?us-ascii?Q?jOn6kZ54WU3uX6GQBtx14Fk4EaNfRCU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 951c75d0-03a7-45ca-2594-08da0da598d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2022 14:50:11.0476
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f9MgbsqW2cSZzZLkAfx8lVNZOivaHkpDwovywzpY50G8PyowuHT8nl3HmbHdG5CvrHABRcqrl/KLllsb3u+sPRiR5+dvQBY+YbOB1AMsB4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5882
X-MDID: 1648133414-ESIedxyvtL7e
Message-ID-Hash: BDOAF4PKSUH2EXJUXUAXYWNUJUGMIUD3
X-Message-ID-Hash: BDOAF4PKSUH2EXJUXUAXYWNUJUGMIUD3
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc vs mult_usrp API question(s)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2RDQESLDIKW54T5F5RRDSBBMWSKZG4RH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2259233829227066329=="

--===============2259233829227066329==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312931656671448116A815BB8199MN2PR12MB3312namp_"

--_000_MN2PR12MB3312931656671448116A815BB8199MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I just noticed a typo in my original email. I meant to say "I'm wondering i=
f I could/should be creating a multi_usrp_rfnoc object . . . ", not: "I'm w=
ondering if I could/should be creating a multi_usrp_rfnoc class . . . "

Just correcting that so I don't cause confusion.

Thanks,
Jim

________________________________
From: Jim Palladino
Sent: Thursday, March 24, 2022 10:40 AM
To: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: rfnoc vs mult_usrp API question(s)

Hello,

I just want to make sure I understand the different API's and when to use t=
hem. I've been using the multi_usrp API for most development using the stan=
dard FPGA load on an N320.

I recently added in an FFT RFNoC block into the FPGA load, and will soon ad=
d 1 or more custom RFNoC blocks. I switched to the RFNoC API for my applica=
tion code so that I can create my graph and directly interface with the blo=
cks. I believe I "needed" to do this, correct? Meaning if I wanted to creat=
e a graph with anything other than the default statically connected radio->=
ddc (for RX path) and if I want to interface with those blocks, then I need=
 to use the RFNoC API. Please let me know if I'm understanding this right. =
I've already done this, and things are working -- but I want to make sure I=
 couldn't have done this with the multi_usrp API. We have a lot of pre-exis=
ting code using the multi_usrp API. If I add and start using different RFNo=
C blocks, I want to be sure that I need to switch over to the RFNoC API bef=
ore modifying all that code.

One thing that confuses me a bit is that I just found the multi_usrp_rfnoc.=
cpp file, which contains the code for the multi_usrp_rfnoc class. I'm not c=
lear if or how this class is used. I see that it is a subclass of multi_usr=
p, but if I "grep" UHD source for "multi_usrp_rfnoc", I cannot see where an=
 instance of multi_usrp_rfnoc is created anywhere. I do see that multi_usrp=
_rfnoc.cpp is included under the LIBUHD_APPEND_SOURCES in "/lib/usrp/CMakeL=
ists.txt". I'm wondering if I could/should be creating a multi_usrp_rfnoc c=
lass, or if this somehow happens behind the scenes when using the multi_usr=
p API with an RFNoC-based radio. Again, I don't see where it's being used a=
t all, but I am far, far, far from a C++ expert and am likely not understan=
ding something.

Thanks for any help,
Jim


--_000_MN2PR12MB3312931656671448116A815BB8199MN2PR12MB3312namp_
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
: 12pt; color: rgb(0, 0, 0);">
I just noticed a typo in my original email. I meant to say &quot;<span styl=
e=3D"background-color:rgb(255, 255, 255);display:inline !important">I'm won=
dering if I could/should be creating a multi_usrp_rfnoc object . . . &quot;=
, not: &quot;<span style=3D"background-color:rgb(255, 255, 255);display:inl=
ine !important">I'm
 wondering if I could/should be creating a multi_usrp_rfnoc class . . . &qu=
ot;<br>
<br>
Just correcting that so I don't cause confusion.</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant">Thanks,</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant">Jim</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><br>
</span></span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino<br>
<b>Sent:</b> Thursday, March 24, 2022 10:40 AM<br>
<b>To:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> rfnoc vs mult_usrp API question(s)</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I just want to make sure I understand the different API's and when to use t=
hem. I've been using the multi_usrp API for most development using the stan=
dard FPGA load on an N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I recently added in an FFT RFNoC block into the FPGA load, and will soon ad=
d 1 or more custom RFNoC blocks. I switched to the RFNoC API for my applica=
tion code so that I can create my graph and directly interface with the blo=
cks. I believe I &quot;needed&quot; to do
 this, correct? Meaning if I wanted to create a graph with anything other t=
han the default statically connected radio-&gt;ddc (for RX path) and if I w=
ant to interface with those blocks, then I need to use the RFNoC API. Pleas=
e let me know if I'm understanding
 this right. I've already done this, and things are working -- but I want t=
o make sure I couldn't have done this with the multi_usrp API. We have a lo=
t of pre-existing code using the multi_usrp API. If I add and start using d=
ifferent RFNoC blocks, I want to
 be sure that I need to switch over to the RFNoC API before modifying all t=
hat code.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
One thing that confuses me a bit is that I just found the multi_usrp_rfnoc.=
cpp file, which contains the code for the multi_usrp_rfnoc class. I'm not c=
lear if or how this class is used. I see that it is a subclass of multi_usr=
p, but if I &quot;grep&quot; UHD source for
 &quot;multi_usrp_rfnoc&quot;, I cannot see where an instance of multi_usrp=
_rfnoc is created anywhere. I do see that multi_usrp_rfnoc.cpp is included =
under the&nbsp;LIBUHD_APPEND_SOURCES in &quot;/lib/usrp/CMakeLists.txt&quot=
;. I'm wondering if I could/should be creating a multi_usrp_rfnoc
 class, or if this somehow happens behind the scenes when using the multi_u=
srp API with an RFNoC-based radio. Again, I don't see where it's being used=
 at all, but I am far, far, far from a C++ expert and am likely not underst=
anding something.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks for any help,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312931656671448116A815BB8199MN2PR12MB3312namp_--

--===============2259233829227066329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2259233829227066329==--
