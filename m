Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D9875770
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 20:47:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA7E738533C
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 14:47:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709840866; bh=pB3TLbFmwxAdctJb/mkqPE1hgjm/ilGu3j7ZD3vG92I=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=bk0jFy8KEeuQGx1eXJCbPhQKZnux7d0ywL7k9vBYBx22T3Te5JF8uc+rJEdcaXhBi
	 6VDFm2GlMegf7QAWFz3cm+BEJd8LxlfQjxKb1T2tAENVZ8ZXTs9A/voRTe/XykTA5k
	 QvdpUxpk2EomKxC+x/fN/qFck/IV92uwELF64ovkgDlnaHJX4f7W0wlqRmIGroOsQ0
	 JawKnqkzFQocz9yXFBHuR8nYGkVF9y+H0QPy2vhVcqIj34lNYkI0hRZlUYdeCHHALT
	 Fqi4I0y3LeauyboTSPLLpTvTo6miV6hN/G6FUlgaCV+BqXmUINM0RoCg2P58f4qmZM
	 2YUdlSS3JAT6A==
Received: from mx0e-0020b901.pphosted.com (mx0e-0020b901.pphosted.com [67.231.147.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 386F138588A
	for <usrp-users@lists.ettus.com>; Thu,  7 Mar 2024 14:46:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=jpl.nasa.gov header.i=@jpl.nasa.gov header.b="ndjfB/kI";
	dkim=pass (1024-bit key; unprotected) header.d=JPL365PROD.onmicrosoft.com header.i=@JPL365PROD.onmicrosoft.com header.b="ZVeedS/v";
	dkim-atps=neutral
Received: from pps.filterd (m0196083.ppops.net [127.0.0.1])
	by mx0e-0020b901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 427FgNEM028734
	for <usrp-users@lists.ettus.com>; Thu, 7 Mar 2024 19:46:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jpl.nasa.gov; h=from : to : subject
 : date : message-id : content-type : mime-version; s=InSight1906;
 bh=1/iNcUDwxFa5kcp2I9PfIRWvjlkWFcv8o1f5b4VPOJA=;
 b=ndjfB/kI7CgTv/Qh6TJ7pIWNYsuMbrFiZaHEX0+aZ+lirMlGexxQ4pDyIYQGSS7vZYs1
 yZkMT5WgJM9XWvfxhTvJ/4GikPeFsxu0VJUhBLUACmJAjw8KBipmcMKZN/fbAp3DD+hy
 c378y3BYDinfgw8iwM85XsTA/XFptABnYhLet81J9MCwKvPjra1Jg+OkqB5LSi5OnCqv
 eEP1UAczIsTTGS1dJG99uytCsSxHsPunM38r9nLWQKrWLFUxZNjp2JRKGak82hcml3NV
 d03MOXF3akpH4qI0aDHUSJ2/lNfTeTWANmpdE+vxobc3KdL+cibrSrDrO3zOeHDYrQwz rg==
Received: from mail.jpl.nasa.gov (smtp.jpl.nasa.gov [128.149.137.104])
	by mx0e-0020b901.pphosted.com (PPS) with ESMTPS id 3wmdxrgvwn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 07 Mar 2024 19:46:52 +0000
Received: from ice-ex-mdc01.RES.AD.JPL (ice-ex-mdc01.jpl.nasa.gov [128.149.155.141])
	by smtp.jpl.nasa.gov (Sentrion-MTA-4.5.9/Sentrion-MTA-4.5.9) with ESMTPS id 427Jkq0P089300
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits) verified FAIL)
	for <usrp-users@lists.ettus.com>; Thu, 7 Mar 2024 19:46:52 GMT
Received: from ice-ex-sn02.RES.AD.JPL (137.79.100.49) by
 ice-ex-mdc01.RES.AD.JPL (128.149.155.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 11:46:51 -0800
Received: from ice-ex-sn02.RES.AD.JPL (137.79.100.49) by
 ice-ex-sn02.RES.AD.JPL (137.79.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 11:46:51 -0800
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (137.78.153.23)
 by ice-ex-sn02.RES.AD.JPL (137.79.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 11:46:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O/ESj1wa6E4qyfEkZP1XCroTWzKJmwQG36L7P7TPxfS6L7QIeHRz+ng26iv/BHuFuPwVxaA3GuzyGohAPL7fVXfg9ukZnakBRnaR0GCU3/QIlVDK3dLHEqilgRSIJI+rMa18avGVtUmp3BuTZpzMsFInmCBMGk3nCuZkccfW331BMXuFDlKm4JbvY7t2BWVdyqalnRNXKbpmmnxgD2HmwUNvVd1n8IJiW1uRUc38wcR2sjLddrBvumMMtR5ATSBuR0Cq1uXQxzHapJjh/LaDQL3HHcWku0erpyM9sAp/Rx0EvKGf80eQo7pFzeYKYtxbSEoUaw5l67aUYu4ZyftSjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1/iNcUDwxFa5kcp2I9PfIRWvjlkWFcv8o1f5b4VPOJA=;
 b=VJbbMk8bIw7cqUpSizqEQcP7Ua1toMyRpW5SgmJ6JyWmnS7oF5UpA8y9HAP9R/otnCyw2VbNBYpwVu21ExsAliDpjR7Bhq2by+EdhAynOgjqydjE9bbNo1L7tMU0XzE1evapopFfaK76WjgG0SlQMlRMFjIiQFWGXR/I/FbbqXLeKZC7MxPaEzMBzLZste8yD5Zrd32jvvmy9wh6kmmXaCpKZNPeHG9DpSXiOWiJPxbQK9R+kYChw2TpQtEcdd+RbkvUQgYRfhm9YVm8SumvafjvNglFvmEDnJ9pMfXYfluTcwQJItCFys3QtibAPoUIvDaegCCrw32SgAr1FEPPcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jpl.nasa.gov; dmarc=pass action=none header.from=jpl.nasa.gov;
 dkim=pass header.d=jpl.nasa.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=JPL365PROD.onmicrosoft.com; s=selector1-JPL365PROD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/iNcUDwxFa5kcp2I9PfIRWvjlkWFcv8o1f5b4VPOJA=;
 b=ZVeedS/v0Q26bGmZ6eV2UTgsFJw2RgWNFQvWE0CdHfyiKUX2v3fd+fXG9oX5GKJHClZ6falO4M14SSMPbld/zKGSZoMGiDOoK4CoXeF32Y0s53w27OBZGtsyAQFsuP8UKXVTTU+gVmnGff7xYD/xFYGNq4hUUKfFg99lmxzTwLw=
Received: from SA1PR09MB9275.namprd09.prod.outlook.com (2603:10b6:806:282::21)
 by SA0PR09MB7386.namprd09.prod.outlook.com (2603:10b6:806:76::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.27; Thu, 7 Mar
 2024 19:46:49 +0000
Received: from SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::91f4:8560:fe96:25ca]) by SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::91f4:8560:fe96:25ca%7]) with mapi id 15.20.7362.024; Thu, 7 Mar 2024
 19:46:49 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC: Sending Messages from the FPGA
Thread-Index: AQHacMZnyN3OxIW+kkWodJdnZFuqWA==
Date: Thu, 7 Mar 2024 19:46:38 +0000
Message-ID: <SA1PR09MB9275C4FA3F31FB9C4C1476EC92202@SA1PR09MB9275.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9275:EE_|SA0PR09MB7386:EE_
x-ms-office365-filtering-correlation-id: b7289185-4c8b-48ca-21ee-08dc3edf5484
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OjOwfwZWuW4id293BgqinR8oGLL2mksRbjTtGHFqcdRpQfgrfba+kOldTb1oXw0qXMWePcpoT44Upro9epry9GdYNn01q5TOgL/QW2gvIIMu5qODAgR/2sUOja07dJDGmgZ4ktGr2dOz5ysBIgsXeFjTO0xV6hgEe5ETRFvru+T5YYCcCMDLlJr9/0xd3xOhXtjoqrgsB6B1k+U1li4tsqWWvIj9QQdFVJlJ7EIaNLv3bldQz/aSc3rKI25RjktBm34uFfnKYoLospnEPAVKN1/2dBOvEnH971DKawKm4AiEdVLnF4wqpBOi1pOtjDcLiUIBIXsbINxQ9FR2vwTbiMMF/LX+VgPdy9mMac6A6ZIWBCSBDll8p1j9/PI6N+X+UqaE00Y1ls4Y7QLG2v5xkL7h7Ud0fpfT0QbR9PLur+gCbJxBeic/DN93dztspcSlH7wIpGGweUTkSLiwdsyTvxB0O/AUVs6hM4EMIm33ouGECYsnslkkmOHuSMW0GL6zEgkh9IPWlQA23OK6DlgARDIrewi0nbgswygo+To/9gr2CY8xZ7AVAIQxF65NTrvw28sSXc7GIlkJ3m1HUVsEmpf7b7jyZFJhvS1N+TAZZoMi7GC75A5JaxDTwUHEhY776IxH4DSTAB1yzisd7ahhZ8ntZDr2iqmCl7whFme5C5fcP4NF1WykQ72D2SXUZGbcLs6mLCRDZYz3E3zJ18BRvONvt0+xclJ+PSl0fv44ye8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9275.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?NvWvjGNnI3164v3LF1QmfIzAJ6Ecg6F0lYm12GVdsEV1eSbPTNxWKYfw?=
 =?Windows-1252?Q?YcyQN0ksoLiOhXb6ILFuNVHjjpCOnJiDHvRTv8kPfuc5iKcJag524ekP?=
 =?Windows-1252?Q?H4h/cSsgPou0FNSYfaHaJgaflXkFruB252o4s3CY+guwR1XdrjZHKLvq?=
 =?Windows-1252?Q?914e05LS6IXFFuNU8sdg9EdnRBPjbF3nahROycbnPoBQ9AbgT8jBX90t?=
 =?Windows-1252?Q?f1RM2Lal3uUj77eJBiPJfKq7m4wa1tr8zEjjun46sDgwqB64iHQe2gf7?=
 =?Windows-1252?Q?+WsR33+nClsDpdoGEiNdDQSqxS0LbVIP9pZsZIhC8Uv1QWXW1hA1UCIF?=
 =?Windows-1252?Q?Iaj81V9pzpE+xPXw9Nbk+wefL0WCzluIqdH2wTvsZRYfQeWiTDTL0shk?=
 =?Windows-1252?Q?DQ4eHk5aBHY1uC1NejZUvYyqHbHF8l70LeeAu47mRVjqr4QBn9REcORc?=
 =?Windows-1252?Q?PsSADEQeOYuK8gTjR4wV/XNhER8f3Z9He2dk2Cwt16KiGNq9JXN2mok+?=
 =?Windows-1252?Q?2E6ZKuIQjiquKPCokwVUGcHypVtNgzk9uqG0yJ+tSoHUgmryXWOV4XwH?=
 =?Windows-1252?Q?T9iQkjoB1qaMz/Tac64wdbOyxEN8SxE3n5/ZGbSPYydbIESVsUdJURl6?=
 =?Windows-1252?Q?5HKnCnrRqW44K7Vg8N0y62RiGAH3CLk/l720rlHUnSFUrctzfm1phgUv?=
 =?Windows-1252?Q?BKsMHIIjbRqQTP6griTeErAPOxXt55dGOCgNX1rZD9mnbbhQ6KxDdpLd?=
 =?Windows-1252?Q?3udtHP5GxJOvI+S8ja5AvcpUzQ2QQHfZUZP3evKmsjJnq+LETYWrfNEB?=
 =?Windows-1252?Q?m1WVj/bF3IOuTuuK2b8ShIIsT2LHwhLdDAk+sp5JJnWiNLNz0jOES34e?=
 =?Windows-1252?Q?9ZICUYpOdH9QUggCfW2rOOLMhW6z2oMkaHkLAlrAlwDOK/Y9O1OlwbJr?=
 =?Windows-1252?Q?ERoSYC2+lp1bme0rfi1VOVTPy4PtDOnYqL4wbeNxwfVw2cuqIqbqetmR?=
 =?Windows-1252?Q?quCWc9o3nVaS08WhtLLH/hRBTJEQ3i3ZDg3RajjVj4SBPtDQRsPrOrbS?=
 =?Windows-1252?Q?vPbeZRHmDQbRucYsihKM5spsWnFHHOFV5+SZw64Rgs1u+p6FDzkVg0FC?=
 =?Windows-1252?Q?Ty9lpgelsjRVMXWppGm1YHjeN0WKcUIATVuL6zRWpcS6RDBk1PS09JFa?=
 =?Windows-1252?Q?DOr1go7tos52rzIXWxC79pmqgY3/c2SLviH7KNrwz5Rsb5+h/U8wPKXf?=
 =?Windows-1252?Q?UJ5Yb7eh8LgozUp2tHR0Xlv6ovQKt8ej2N6oSHuLmllyBXCFHuykXElj?=
 =?Windows-1252?Q?0sRwluZgLEV/CpWFhq61ZiBL8eYoOe6X5LXndkuCsqzo52sdP5lQSmmB?=
 =?Windows-1252?Q?YvIGPUAGIDp6wQlODOV/FqEw+x0OISEeM9MoTARXLMXErgG9pPEfdiHh?=
 =?Windows-1252?Q?QOfhiwEc8Qb/k1iNdvVro3EKUnQnwJS0NXAZMmody0MzoAsAnCVkuPYg?=
 =?Windows-1252?Q?1zGp2Wi7H8jv25CT0Z3T5N5ueSKFFgKKydX/NY3HQhFVy2oXQw1/n7Ts?=
 =?Windows-1252?Q?Dj2lm00aReGQM6Y0B7+bPtuJP4uCeD7EFn8/W7a0Vk0SYfUVJ1vC/Hz3?=
 =?Windows-1252?Q?ZsNF7HzyGSsdnmAjVXwOTwZCpc1u8pylMUrm8jmkUwuV9oWRsJwxJvOW?=
 =?Windows-1252?Q?ByWz1fWHYhWk6I1qc6r19BQ9NHDIw5YzyUYVdGm4al8wMi1pgLXUVg?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9275.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7289185-4c8b-48ca-21ee-08dc3edf5484
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2024 19:46:49.6184
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 545921e0-10ef-4398-8713-9832ac563dad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR09MB7386
X-OriginatorOrg: jpl.nasa.gov
X-Source-IP: ice-ex-mdc01.jpl.nasa.gov [128.149.155.141]
X-Source-Sender: zachary.s.rohde@jpl.nasa.gov
X-AUTH: Authorized
X-Proofpoint-GUID: MAIQNqG3L3U0xHpEIpLjcJ6-tEyz4lNU
X-Proofpoint-ORIG-GUID: MAIQNqG3L3U0xHpEIpLjcJ6-tEyz4lNU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-07_14,2024-03-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=670
 mlxscore=0 impostorscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2403070138
Message-ID-Hash: OV7YEZCXBL75A3WEH5DTC6G3525ZR6WU
X-Message-ID-Hash: OV7YEZCXBL75A3WEH5DTC6G3525ZR6WU
X-MailFrom: zachary.s.rohde@jpl.nasa.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC: Sending Messages from the FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OV7YEZCXBL75A3WEH5DTC6G3525ZR6WU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rohde, Zach (US 333G) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Content-Type: multipart/mixed; boundary="===============2356156180536446095=="

--===============2356156180536446095==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB9275C4FA3F31FB9C4C1476EC92202SA1PR09MB9275namp_"

--_000_SA1PR09MB9275C4FA3F31FB9C4C1476EC92202SA1PR09MB9275namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

I need to be able to send a message from an RFNoC block up to the C++ layer=
. What is the recommended =93RFNoC way=94 of sending an async message?

I know that the RFNoC Radio block has an async message queue for errors, th=
at seems to be what I need. I see in the RFNoC Specification that in regist=
er_iface there is register_async_msg_handler, is this the recommended funct=
ion? I am assuming this data flows through CtrlPort, but what would it look=
 like in Verilog to generate a message and send it up to the register_iface=
 instance? It would be great if there was a simple example that showed this=
.

Thanks,
Zach

--_000_SA1PR09MB9275C4FA3F31FB9C4C1476EC92202SA1PR09MB9275namp_
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
	{font-family:Aptos;
	panose-1:2 11 0 4 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to be able to send a message from an RFNoC bl=
ock up to the C++ layer. What is the recommended =93RFNoC way=94 of sending=
 an async message?</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I know that the RFNoC Radio block has an async messa=
ge queue for errors, that seems to be what I need. I see in the RFNoC Speci=
fication that in register_iface there is register_async_msg_handler, is thi=
s the recommended function? I am assuming
 this data flows through CtrlPort, but what would it look like in Verilog t=
o generate a message and send it up to the register_iface instance? It woul=
d be great if there was a simple example that showed this.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,</p>
<p class=3D"MsoNormal">Zach</p>
</div>
</body>
</html>

--_000_SA1PR09MB9275C4FA3F31FB9C4C1476EC92202SA1PR09MB9275namp_--

--===============2356156180536446095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2356156180536446095==--
