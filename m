Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9969047B094
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 16:48:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61C5438456D
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 10:48:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="CYsU6JoC";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id 0609D384643
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 10:47:41 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.28])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 9EB00280083;
	Mon, 20 Dec 2021 15:47:40 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 4671E3800B1;
	Mon, 20 Dec 2021 15:47:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GQE9FsOvwnEjtPlJ622+dt0NYBz5tSVTit2EDieRc1Ihi9JG9w+R/+OofGFkyvQI1fvUDnlCPmxtKz1zUxKxPHr04prCY3xDeGsdBByR4JA6hnxz7lRgCJJqOPD6WM0V1BwCA4SbGMF5RRdItmSNzBCwe7C27MLzIL4XkZOEu4ZX5P0qHRfMSDKahR4piji1CRxxYEdv0vBcl3aANjJ2RZxcQId0iId9ZuxW0LmeIJdNME8mK0q52Q+7ONg2mU1Zmdpy/Mmayc2vfAd9uCTqnF2em8mvbdUh3HcJQNVixHF4FRfyT5+KL/ayEjAJZmvfLdOCdFhuznv3MbkIDcn0WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xvvqCgxvcdPtUCVK5euxdzHv9W8cna4r84lkyvkZZ58=;
 b=CFrw31FJOUzbkKgJHjE7YcTFaIR+d4v9ob6ckPZKb6DCILdaes2quHjTvz1MyPZIPSb0C4oXYWieKVRz5z1DyXtQUR2iFWMdXfeSoKtgrW/BwwjZlndtEGpgBAGUgkSgq1Yb1FtWFgy5truOLdyWonQRHl/+M2o9Lg1PNeL7jeaw6W5fG7v6ApPPSosOT90yA7TPJ8a+H1wAeu85xzl4aKL7aCMk5fhRLqOKgEVPTrzlW2r9s8d19yWkbJ4zHe44gSLbHfViiNMdEt/VgV3I0pM90AMUCAghGSrDH8QMnLB8wCRfJm8D1FqW815d5dWYRpo2SWz6XeZld1JQXPhKXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xvvqCgxvcdPtUCVK5euxdzHv9W8cna4r84lkyvkZZ58=;
 b=CYsU6JoCOhxaCWcQcOLwcS0B/NywKerpJgSXxpjP8eSLnaFuhhBVKYAsBmSA1kIvPR6LaunOUyzTPei0XOXoVTUbEFhraKDxmckGi7Voj7DfDAeC1JQI1HzysZNxwvrknZIVHga7Pc7L9xemu+MLry9fvwfT48rvFEvd8QnjNq8=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3165.namprd12.prod.outlook.com (2603:10b6:208:ac::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.15; Mon, 20 Dec
 2021 15:47:37 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7169:fc2b:3322:2bed]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7169:fc2b:3322:2bed%5]) with mapi id 15.20.4801.020; Mon, 20 Dec 2021
 15:47:37 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: zhou <hwzhou@yahoo.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>, =?iso-8859-1?Q?Marcus_M=FCller?=
	<marcus.mueller@ettus.com>
Thread-Topic: [USRP-users] Re: Time different between X310 and N310 USRPs
 using UHD4.1.0
Thread-Index: AQHX9behptzVWuAyJEeBudPmBYxAIqw7hGPC
Date: Mon, 20 Dec 2021 15:47:37 +0000
Message-ID: 
 <MN2PR12MB3312E25B1C5E0666072677C4B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com>
 <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com>
 <39042870.1585115.1639996294719@mail.yahoo.com>
 <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
 <24577536.1842643.1640004636102@mail.yahoo.com>
 <MN2PR12MB3312017026FEDC5C5E5D5F46B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
 <921829071.1909465.1640014692296@mail.yahoo.com>
In-Reply-To: <921829071.1909465.1640014692296@mail.yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 2d09a3aa-323c-feb4-01e3-61e468f568b0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb9fe511-e65a-4200-f3f2-08d9c3d00c64
x-ms-traffictypediagnostic: MN2PR12MB3165:EE_
x-microsoft-antispam-prvs: 
 <MN2PR12MB3165F91468ADA67B70A03AA4B87B9@MN2PR12MB3165.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Rbv6D8rF2FxsT1LWx6QpIsVtIoEopqFFOQ2QoanqhbYdg7tqdJeGvNbO3CLO6sEqlxt8yE9tScd17h5r7ofOBkX3jQrl0uTo77/CUqs9V1K0N6tfHNCJ0hnki3yemMW5aJLtQb7yjHH+UTjuR/A+sQSxTSiYbryvr1ZAtsrlBISpYKihm/jT1b+aPTrnjYoKvjLVw5wBSNr57e/0DkM8MUd5z2rIIfJe+bFzADx8rqhaL4xa172vJN7pSM4nm6nCSgVsw3PuCe3laLtHctd71ae73am0xMaLI+Xm/BXP+RraYoAogFS7ILRcG8a/0PuoCT0St0JGElQbQym87GoNhe0eRWyfCmWDleFguzNquu1l45yAWeE23W8Xw88QH+vTLU3olBZLBTK3Iy0CAE8kJsDPqG4n2TyrU/5+ru7P+Mbn6l14LpaTBYdm/RgJOXcByYoEQz/Z++ltv6+5bqXS5pwWpkOet8kOPvK4yhQy1XvwbooyPx6NYJD8UBiod2q6cVYXPOoIBVE8rb8C1D3SrdHMAh0xU/zUR5scjoshW+YyS/mAHRfRcXLmE8qVCYqJz/s5JUEu8Lg3OZZBs28vyoO+7lZQcRGjNyzLFmnUeHxR5N3KbyIAg8UkTHWe7Ji7VUJsSEL2hMyId/THgrv61/DuRR/uuKHOXePkogDBENKljIKQIaMUZ4ZVValJ7TiU/r7CJDCFtYZW9nurkuotvg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(376002)(396003)(346002)(39830400003)(136003)(66446008)(64756008)(38070700005)(66476007)(55016003)(66946007)(110136005)(508600001)(76116006)(66556008)(66574015)(5660300002)(186003)(316002)(52536014)(86362001)(83380400001)(6506007)(8676002)(9686003)(122000001)(8936002)(38100700002)(53546011)(33656002)(71200400001)(2906002)(7696005)(19627405001)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?HGdKyUGFqyXpciQusM0UrKQm8b8eI02915cNarDFjFyuvtNGWGPwEJxNIE?=
 =?iso-8859-1?Q?TJSQ96+F7VLv+pFQ7LgzMJH5QzdzNLcC54sODwvaMWyJ6tC3Q0o28B2yEy?=
 =?iso-8859-1?Q?RRyPbSyKfZER0KOvgrsbT6zsh3yarf+GapuHY4jDs7bntlGEUk1tsOcR6A?=
 =?iso-8859-1?Q?GXoHrKL7cwxUsC3m3/P3osgm83gWVaHnxWcmO7hlyCVSLL9HV5juOZp2va?=
 =?iso-8859-1?Q?EscGdAIudN5cqtSaNDKONTNj+/EPnxnBtExKf1eP14v/nKvkN0o9zmpoWl?=
 =?iso-8859-1?Q?PsgRtmecuIJEPc3XMLkQgZFIReKZMH47j9ZPK6UMRkWFumo+napQ6zZ9Os?=
 =?iso-8859-1?Q?gVFyhfGRX7FrUHz8H3Q8iw6Uo2MHGOyr7k9VADqfBZCF/HvSaIDadn+UA8?=
 =?iso-8859-1?Q?sl5XboeegHhtIKrJuh0Om6Ambee9VSyA/23ehYC+l5TgHVBjmT2TLrV0zh?=
 =?iso-8859-1?Q?dxo5ubJe5GtthNBVxz6oiUnSlBUJQ3z5J01FPN7t34VtU/iWLBkzOvzmud?=
 =?iso-8859-1?Q?RXU0MJQtxbv6Yapq/QQUCciZcbGTfXveYc8Qoqab0BwDq50vdJ/RIZvfjV?=
 =?iso-8859-1?Q?+VCMIzXQ7HfCi4UP5iDiX5o6rWgei0Agn25w5nxlzomgmWsi15XHBiPYEW?=
 =?iso-8859-1?Q?KQ6WKi/qiy9r2wwdAe9ux+15mdlGW3/v9J4k1YdLGF2YF8RjjZ858J5s+1?=
 =?iso-8859-1?Q?7rTc5e3HLhQ81kki5k16TgAOtVFodm1A+lBm0bNoWq5QkAUe9y0QosLCX2?=
 =?iso-8859-1?Q?FgXKPznAWId67iQT5x+lu5JH+neXi7ZHvXZ2TqhwNibRpGT1bAmHGl9mB8?=
 =?iso-8859-1?Q?gVr9K6SSl1SlMYato/P2OMoIoi+UBqrvOTDg96CeqJLE1ucLwBmLOLotkR?=
 =?iso-8859-1?Q?abUPE9BsKSIYN1/bHGIGILbxL5AMz6LfxuPHMnyQNy8Z2/dLCiVgLQ+GXw?=
 =?iso-8859-1?Q?aqdYeHS4cELBizG193DisedZ1kkd6UL/SMZJAP4uHYiqyVksmbwx9ESBqD?=
 =?iso-8859-1?Q?sde2KwCekij2FmZ5MudtPqBtCNpiCQiIWYbSlgO1WlCH5G4n8r/2qYR5tK?=
 =?iso-8859-1?Q?QnPZSoFvxy8oUfXNMYM3jA2IAWbvPMHyaFj50pglAfhn09RFDgfuB5hU8G?=
 =?iso-8859-1?Q?a7ATw67fQu1KR1RJUgban44PkCA2vsGkbDG/yjHsbTwAH3pPQiCXSt8Xwc?=
 =?iso-8859-1?Q?wuf9tfqx41KAOdVcW+LSEBgP7Hne8L8Pm0g8U1aMNXUfp2fRf/THTtn14f?=
 =?iso-8859-1?Q?nd8owMZVnBKgT8aQunMFD71kB/Y2LiDY+5pA7C2WCI+p19Tl6lZk7CASAS?=
 =?iso-8859-1?Q?69Jg5BVzU5lerW4Z+Ypr6Mfz7bb4vr9xKTjnCdgNVHyi/nh4E3ZjTppkPd?=
 =?iso-8859-1?Q?SflcSm3NXdACwDl5nJFUHb5qdDTeuPQsIgQV52//Oq4XOYoSOQgjD1Rt4V?=
 =?iso-8859-1?Q?4LbOY3VB0aV5VIxBtJLi1IRWWdmgb+GWpFBzB2WNHYD485wWBx+UIaXlsY?=
 =?iso-8859-1?Q?KkySTCtJEdUTHjbtFuu3ajEQ4GZYbD0DDSidTUrze0DaWX1wIs1VJQ8DKi?=
 =?iso-8859-1?Q?xiPsKOIQik7z5tI0UZ12mCreyXUrk2sRxLGiFGWdVzB4ZOaQ597FzW9rY1?=
 =?iso-8859-1?Q?uLRS9UxpsWajpNTnAWNPhPZ8Ns+ze2YP6st42XiUqYCE53+qif1cxnJ6pa?=
 =?iso-8859-1?Q?s2NXCGZ2ACt197kRvliusmNIy9HyYJbnRTHjNIkkonyr0F2A7FQr06R6Se?=
 =?iso-8859-1?Q?TkYA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9fe511-e65a-4200-f3f2-08d9c3d00c64
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2021 15:47:37.6783
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J3CJRNaLONl6bVh+Tb1+kTQD3pKuZsU9fMS3WjlAxgmXiBiK3fJfdFAw7x0+fdRRARNgJxhPu5TpsNXO8lpDzzonR9PNMpPuHBlE/rhj3EI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3165
X-MDID: 1640015261-tHnLtDbXo-Az
Message-ID-Hash: YZBGZNRE6AMNGSTUMYJYDHJILRVWWDAF
X-Message-ID-Hash: YZBGZNRE6AMNGSTUMYJYDHJILRVWWDAF
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AGD3FZR5ERK3Q733DQWZNU6U45XOTTTZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4789279540660043820=="

--===============4789279540660043820==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312E25B1C5E0666072677C4B87B9MN2PR12MB3312namp_"

--_000_MN2PR12MB3312E25B1C5E0666072677C4B87B9MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Assuming this is the issue, inverting the 1pps input into only the X310 sho=
uld fix the offset and get everything aligned. If you invert the input to b=
oth USRP devices, that would just flip the time offset.

Hope that works for you. Happy holidays to you, too.
Jim

________________________________
From: zhou <hwzhou@yahoo.com>
Sent: Monday, December 20, 2021 10:38 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=FClle=
r <marcus.mueller@ettus.com>; Jim Palladino <jim@gardettoengineering.com>
Subject: Re: [USRP-users] Re: Time different between X310 and N310 USRPs us=
ing UHD4.1.0

Hi Jim,

Thanks for your explanation. I got it. Inverter may be a quick solution; ju=
st the duty cycle will become 80% after conversion. I will definitely try i=
t. If not, I will rebuild X310 FPGA as you suggested.

Have a Merry Christmas and happy New Year,

Hongwei



On Monday, 20 December 2021, 13:18:23 GMT, Jim Palladino <jim@gardettoengin=
eering.com> wrote:


Hongwei,

If this is your problem, then "get_time_last_pps()" should report the same =
time between the X310 and N320, unless you happen to ask it (or if you set =
it) during that 200ms window between the 1pps rising and falling edges.

However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the "get_time_now()" command at the same time to both devices, th=
e X310 will be 200ms behind the N320.

To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used a function generator instead of the Octoclo=
ck to generate the 1pps to both devices. Then, we varied the duty cycle of =
the 1pps pulse and saw that the time difference between the two devices tra=
cked the duty cycle (the time that the 1pps pulse is high per second).

Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would set the N320 to the time we specified =
1 second later (when the next rising edge occurs). However, the X310 would =
see the falling edge occur 200ms after issuing this command. So, it would s=
et it's time then. So, the way we were doing it, the X310 was actually gett=
ing set 800ms earlier than the N320.

Hope this helps.
Jim

________________________________
From: zhou <hwzhou@yahoo.com>
Sent: Monday, December 20, 2021 7:50 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=FClle=
r <marcus.mueller@ettus.com>; Jim Palladino <jim@gardettoengineering.com>
Subject: Re: [USRP-users] Time different between X310 and N310 USRPs using =
UHD4.1.0

Hi Jim,

Thank you so much for your quick reply. Your finding is very interesting an=
d I believe it is very related to my problem.
After some thinking, I am still having some confusion:
Because N320 and X310 USRPs are using different pulse edges, their time 0s =
are actually different by 200ms in universal time, but their internal timer=
s should be similar. When querying their time respectively, we should get s=
imilar time - the responses are their internal times. But I am seeing 200ms=
 difference.

Could you please give some comments on this?

Thanks a lot,
Hongwei


On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino <jim@gardettoengin=
eering.com> wrote:


Hi,

We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS pulse from the Octoclock stays high for a=
bout 200ms, so I'm guessing this is the issue you are seeing.

We ended up making our own custom FPGA build for the X310. We modified the =
file:
"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".

Originally, the PPS edge detection looked like:
pps_edge<=3D pps_del & ~pps;

We changed it to:
pps_edge<=3D ~pps_del & pps;

It would be good if this could get "fixed" in UHD, as it would be nice to n=
ot have to maintain a custom FPGA build. I'm not sure what effect this chan=
ge will have on other USRP FPGA builds that use the same timekeeper.v file.

In any case, I'm guessing this is your problem.

Jim





________________________________
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, December 20, 2021 5:31 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=FClle=
r <marcus.mueller@ettus.com>
Subject: [USRP-users] Time different between X310 and N310 USRPs using UHD4=
.1.0

Hi,

I am using mixed types of USRPs in my applications, namely, X310 and N310. =
The signals are timed. I find 0.2-second time difference between these two =
USRPs.
Details:
Each USRP is controlled by a Linux server;
The same Linux version in all PCs;
All USRPs are connected to the same Octoclock;
UHD version is 4.1.0 in Linux servers;
All Linux servers are connected to a control PC which is the client;
The sampling rates are different: 184.32MHz in X310 USRP and 245.76MHz in N=
310 USRP

Control PC sends command to set time 0 after PPS in all USRPs, then query t=
he time in each of them.
The time difference between USRPs of the same type is small, ~2ms, but the =
time difference between different types of USRP is much bigger, ~0.2s.
Times should be impacted by sampling rate; when setting timers, no signal i=
s transmitted.

2ms time difference between USRPs could be due to network delay; 200ms can'=
t be because of network. It seems to be due to HW in USRPs. Does this mean =
that X310 and N310 are not synchronized?

Thanks for any comment,

Hongwei



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_MN2PR12MB3312E25B1C5E0666072677C4B87B9MN2PR12MB3312namp_
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
Assuming this is the issue, inverting the 1pps input into only the X310 sho=
uld fix the offset and get everything aligned. If you invert the input to b=
oth USRP devices, that would just flip the time offset.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hope that works for you. Happy holidays to you, too.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> zhou &lt;hwzhou@yahoo=
.com&gt;<br>
<b>Sent:</b> Monday, December 20, 2021 10:38 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=FCller &lt;marcus.mueller@ettus.com&gt;; Jim Palladino &lt;jim@gard=
ettoengineering.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Time different between X310 and N310 U=
SRPs using UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_ydp9ad5d71yahoo-style-wrap" style=3D"font-family:Helvetica =
Neue,Helvetica,Arial,sans-serif; font-size:13px">
<div></div>
<div dir=3D"ltr">Hi Jim,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your explanation. I got it. Inverter may be a q=
uick solution; just the duty cycle will become 80% after conversion. I will=
 definitely try it. If not, I will rebuild X310 FPGA as you suggested.</div=
>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Have a Merry Christmas and happy New Year,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div><br>
</div>
</div>
<div id=3D"x_ydpf5f19502yahoo_quoted_0502683226" class=3D"x_ydpf5f19502yaho=
o_quoted">
<div style=3D"font-family:'Helvetica Neue',Helvetica,Arial,sans-serif; font=
-size:13px; color:#26282a">
<div>On Monday, 20 December 2021, 13:18:23 GMT, Jim Palladino &lt;jim@garde=
ttoengineering.com&gt; wrote:
</div>
<div><br>
</div>
<div><br>
</div>
<div>
<div id=3D"x_ydpf5f19502yiv1424726215">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hongwei,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If this is your problem, then &quot;get_time_last_pps()&quot; should report=
 the same time between the X310 and N320, unless you happen to ask it (or i=
f you set it) during that 200ms window between the 1pps rising and falling =
edges.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the &quot;get_time_now()&quot; command
 at the same time to both devices, the X310 will be 200ms behind the N320.<=
/div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used
 a function generator instead of the Octoclock to generate the 1pps to both=
 devices. Then, we varied the duty cycle of the 1pps pulse and saw that the=
 time difference between the two devices tracked the duty cycle (the time t=
hat the 1pps pulse is high per second).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would
 set the N320 to the time we specified 1 second later (when the next rising=
 edge occurs). However, the X310 would see the falling edge occur 200ms aft=
er issuing this command. So, it would set it's time then. So, the way we we=
re doing it, the X310 was actually
 getting set 800ms earlier than the N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hope this helps.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div id=3D"x_ydpf5f19502yiv1424726215appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_ydpf5f19502yiv1424726215yqt18463" class=3D"x_ydpf5f19502yiv142=
4726215yqt5525963825">
<div dir=3D"ltr" id=3D"x_ydpf5f19502yiv1424726215divRplyFwdMsg"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> zhou &lt;hwzhou@yahoo.com&gt;<br clear=3D"none">
<b>Sent:</b> Monday, December 20, 2021 7:50 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=FCller &lt;marcus.mueller@ettus.com&gt;; Jim Palladino &lt;jim@gard=
ettoengineering.com&gt;<br clear=3D"none">
<b>Subject:</b> Re: [USRP-users] Time different between X310 and N310 USRPs=
 using UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_ydpf5f19502yiv1424726215x_ydpbf121617yahoo-style-wrap" styl=
e=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif; font-size:13px"=
>
<div></div>
<div dir=3D"ltr">Hi Jim,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thank you so much for your quick reply. Your finding is ve=
ry interesting and I believe it is very related to my problem.</div>
<div dir=3D"ltr">After some thinking, I am still having some confusion:</di=
v>
<div dir=3D"ltr">Because N320 and X310 USRPs are using different pulse edge=
s, their time 0s are actually different by 200ms in universal time, but the=
ir internal timers should be similar. When querying their time respectively=
, we should get similar time - the
 responses are their internal times. But I am seeing 200ms difference.</div=
>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Could you please give some comments on this?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks a lot,<br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei<br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
</div>
<div id=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yahoo_quoted_0577239239" =
class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yahoo_quoted">
<div style=3D"font-family:'Helvetica Neue',Helvetica,Arial,sans-serif; font=
-size:13px; color:#26282a">
<div>On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino &lt;jim@garde=
ttoengineering.com&gt; wrote:
</div>
<div><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
<div>
<div id=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS
 pulse from the Octoclock stays high for about 200ms, so I'm guessing this =
is the issue you are seeing.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">We=
 ended up making our own custom FPGA build for the X310. We modified the fi=
le:</span><br clear=3D"none">
<span style=3D"color:rgb(61,60,64); font-family:Calibri,Helvetica,sans-seri=
f; font-size:12pt; text-align:left; background-color:rgb(255,255,255); disp=
lay:inline!important">&quot;uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v&quo=
t;.</span><br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-size:12pt; font-family:Calibri,Helvetica,sans-serif">Or=
iginally, the PPS edge detection looked like:</span><br clear=3D"none">
<span style=3D"color:rgb(36,41,46); font-family:Calibri,Helvetica,sans-seri=
f; font-size:12pt">pps_edge&lt;=3D pps_del &amp; ~pps;</span><br clear=3D"n=
one">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Calibri,Helvetica,sans-seri=
f; font-size:12pt">We changed it to:</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">pps_edge&lt;=3D
 ~pps_del &amp; pps;</span></span><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">It
 would be good if this could get &quot;fixed&quot; in UHD, as it would be n=
ice to not have to maintain a custom FPGA build. I'm not sure what effect t=
his change will have on other USRP FPGA builds that use the same timekeeper=
.v file.</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">In
 any case, I'm guessing this is your problem.</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)">Jim</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"><span style=3D"margin:0px; font-size:12pt; font-famil=
y:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span style=3D"marg=
in:0px; font-size:12pt; font-family:Calibri,Helvetica,sans-serif; color:rgb=
(36,41,46)"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(36,41,46); font-family:Menlo,Monaco,Consolas,monos=
pace; font-size:13px"></span>
<div style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:14px; =
background-color:rgb(255,255,255)">
<div>
<div class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821a11y__sec=
tion x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821post x_ydpf5f19502=
yiv1424726215x_ydp2f3ddc08yiv3164486821other--root" style=3D"max-width:100%=
; padding:8px 0.5em 0px 1.5em">
<br clear=3D"none">
</div>
</div>
<div style=3D"display:inline; min-height:0px; z-index:-1; margin:0px">
<div dir=3D"ltr" style=3D"visibility:hidden; z-index:-1; min-height:160.652=
px">
<div style=3D"z-index:-1">
<div style=3D"z-index:-1; min-height:160.652px">
<div style=3D"min-height:187px"></div>
</div>
<div style=3D"z-index:-1; min-height:160.652px">
<div style=3D"min-height:306.133px"></div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:14px; =
background-color:rgb(255,255,255)">
<div>
<div class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821a11y__sec=
tion x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821post x_ydpf5f19502=
yiv1424726215x_ydp2f3ddc08yiv3164486821same--user x_ydpf5f19502yiv142472621=
5x_ydp2f3ddc08yiv3164486821same--root" style=3D"max-width:100%; padding:0px=
 0.5em 0px 1.5em">
<span class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821post__co=
ntent" style=3D"display:table; width:760.415px; padding:0px 8px 0px 5px; ma=
rgin:0px auto; table-layout:fixed"></span></div>
</div>
</div>
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:13.5p=
x; text-align:left; display:inline!important"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(61,60,64); font-family:sans-serif; font-size:13.5p=
x; text-align:left; display:inline!important"><br clear=3D"none">
</span></div>
<div id=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821appendonsend=
"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821yqt49578" cl=
ass=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821yqt1332618028">
<div dir=3D"ltr" id=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821=
divRplyFwdMsg">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> zhou via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br c=
lear=3D"none">
<b>Sent:</b> Monday, December 20, 2021 5:31 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br clear=3D"none">
<b>Subject:</b> [USRP-users] Time different between X310 and N310 USRPs usi=
ng UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821x_ydpf231=
7585yahoo-style-wrap" style=3D"font-family:Helvetica Neue,Helvetica,Arial,s=
ans-serif; font-size:13px">
<div></div>
<div dir=3D"ltr">Hi,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">I am using mixed types of USRPs in my applications, namely=
, X310 and N310. The signals are timed. I find 0.2-second time difference b=
etween these two USRPs.</div>
<div dir=3D"ltr">Details:</div>
<div dir=3D"ltr">Each USRP is controlled by a Linux server;<br clear=3D"non=
e">
</div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr" style=3D"color:rgb(0,0,0); font-family:Helvetica Neue,Helv=
etica,Arial,sans-serif">
The same Linux version in all PCs;</div>
<div dir=3D"ltr">All USRPs are connected to the same Octoclock;<br clear=3D=
"none">
</div>
</div>
</div>
<div dir=3D"ltr">UHD version is 4.1.0 in Linux servers;</div>
<div dir=3D"ltr">All Linux servers are connected to a control PC which is t=
he client;</div>
<div dir=3D"ltr">The sampling rates are different: 184.32MHz in X310 USRP a=
nd 245.76MHz in N310 USRP</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Control PC sends command to set time 0 after PPS in all US=
RPs, then query the time in each of them.</div>
<div dir=3D"ltr">The time difference between USRPs of the same type is smal=
l, ~2ms, but the time difference between different types of USRP is much bi=
gger, ~0.2s.</div>
<div dir=3D"ltr">Times should be impacted by sampling rate; when setting ti=
mers, no signal is transmitted.</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">2ms time difference between USRPs could be due to network =
delay; 200ms can't be because of network. It seems to be due to HW in USRPs=
. Does this mean that X310 and N310 are not synchronized?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks for any comment,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class=3D"x_ydpf5f19502yqt5525963825" id=3D"x_ydpf5f19502yqt37947">____=
___________________________________________<br clear=3D"none">
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"nofollow" target=3D"_blank">
usrp-users@lists.ettus.com</a><br clear=3D"none">
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br clear=3D"none">
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312E25B1C5E0666072677C4B87B9MN2PR12MB3312namp_--

--===============4789279540660043820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4789279540660043820==--
