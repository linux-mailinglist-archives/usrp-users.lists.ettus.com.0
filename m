Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF487803F4D
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 21:29:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A84DF38456F
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 15:29:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701721744; bh=tCSV0sgvH12sYr8Xhb4rX7VtafloUrpp0UVuOKrHNbo=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=VdbDZWB+JovdsZDVl4+XrYgeKHRvJz/DsxhMH1X4rCoJqYPAGXSvRoEh7wpzI0GEd
	 GWYTvxcSdsOaOTbU9BuuQrRW68cQofDWGwQlC/N2cIMyfSx3WHvn/AFDcIGef5zIsy
	 0HhX3qE30JfzRocQJJnMRrj7eMU+9QoucqYNp/2oF7r6fQmhFkQb3zJ+CuzJCPgbc9
	 BWCg2chDKLrOoL29F5XiZFhzuelaZ2KW7jCONWYEEp362TB5eBQ0xnD6mn/0Ilw3zh
	 qTXC17yAtsBJrolPp0uUdEZPyWiIJIxmAG/G93uRTf7e9N7y+vzD4o9AOwGujMFa3T
	 r+Z8qLnra+kbA==
Received: from mx0f-0020b901.pphosted.com (mx0f-0020b901.pphosted.com [67.231.155.103])
	by mm2.emwd.com (Postfix) with ESMTPS id D6717383E26
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 15:28:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=jpl.nasa.gov header.i=@jpl.nasa.gov header.b="LqiF3ND9";
	dkim=pass (1024-bit key; unprotected) header.d=JPL365PROD.onmicrosoft.com header.i=@JPL365PROD.onmicrosoft.com header.b="MvE3o/92";
	dkim-atps=neutral
Received: from pps.filterd (m0196084.ppops.net [127.0.0.1])
	by mx0e-0020b901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3B4ANY6s007052
	for <usrp-users@lists.ettus.com>; Mon, 4 Dec 2023 20:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jpl.nasa.gov; h=from : to : subject
 : date : message-id : content-type : mime-version; s=InSight1906;
 bh=mI7TiHdmPdAhzXr5wbgol/mI92W+0JgJy/S/dkPIlZo=;
 b=LqiF3ND9tUQJkdaXny/ZD+LAAj9iZcjCHpgWj5oMYepJD1bAkRQftw05LOjuG/D5ta2e
 2k18Yhp0ofcd6XyRiXaHPWLe53jcEEF17HJ6OcKaEdOE9U8f5MowwstsDA2+RFdexucH
 ZIOrlNgyRPQjbB8bKrryaYq3dMtI+8WR1DjjelekJXe1cZJNQn/vKOYpIpuhyWJgKTtZ
 E4yGATtXmLULIDvNJyvPvsZi/3lVM5JyirNczD60KJJ7Aq9sIob2xTnRTs0yN/Hd7pRC
 d48gPg+2Y1XRssnnuQuf2nUkf8U+fPyvrGGAqhv1/rYyCOZgNQwIhjr+mdGrCzl79gwe Dg==
Received: from mail.jpl.nasa.gov (smtp.jpl.nasa.gov [128.149.137.102])
	by mx0e-0020b901.pphosted.com (PPS) with ESMTPS id 3uqvb07kmr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 04 Dec 2023 20:28:37 +0000
Received: from ice-ex-mdc02.RES.AD.JPL (ice-ex-mdc02.jpl.nasa.gov [128.149.155.142])
	by smtp.jpl.nasa.gov (Sentrion-MTA-4.5.9/Sentrion-MTA-4.5.9) with ESMTPS id 3B4KSaqK099719
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits) verified FAIL)
	for <usrp-users@lists.ettus.com>; Mon, 4 Dec 2023 20:28:36 GMT
Received: from ice-ex-sn02.RES.AD.JPL (137.79.100.49) by
 ice-ex-mdc02.RES.AD.JPL (128.149.155.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.6; Mon, 4 Dec 2023 12:28:36 -0800
Received: from ice-ex-sn02.RES.AD.JPL (137.79.100.49) by
 ice-ex-sn02.RES.AD.JPL (137.79.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.6; Mon, 4 Dec 2023 12:28:35 -0800
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (137.78.153.23)
 by ice-ex-sn02.RES.AD.JPL (137.79.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.6
 via Frontend Transport; Mon, 4 Dec 2023 12:28:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PzrlgSX3uE8dndel9Y8XsANtEm8fxBkv5lsNZvQT/+CUlGOl+Im/o+X2iKIi6PjjqGoX0lImfG0l1jszztaF8Y+7QMisX3tFemnnCT6pnv1g279IMSGc+UmOM/xhT6W/wxdv0dBmqZpkIag8v9aBudT4Xp/3+ZTg+j4CRNggoGRlK+ISmvDlU2ErB4tYwEa+wd3Ip/tCvhG2VoGk8W0vssUkSXwEcgY2YNU+/VP+g0i7K2Tw/xKXkTtKe8N9JfGpsiSxjdNiXnlymHM78qj+3QrulpYJhkk+z6r9Hem37XRi/ZKkRpbG+s5CcEjUUdHGsKimeBavkzVyZHzWnaWAVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mI7TiHdmPdAhzXr5wbgol/mI92W+0JgJy/S/dkPIlZo=;
 b=TZU7ZrljW2imozj40Bmpf6QWzC1s33RNgbGpE18T69HwBMKZdlY2EcaHlE2cWj852QcZJFx8AFBATr1m+i0uJ2flqW/O9NEm+LALsryg8VwdahuhQu4a1zFQUo7hZZ1LWAdBakRZjRG6w5fcIQehZlj/n6LvwtBZ5I2B3MvFQ7+WeEU+sy9kN/XLwAkTfbKjW6wo1mr2pkw17BasamFP1Gai0xw2yQZyCnrPuD3cTqiiV2PN/GTKcoGs9/10qVR286ehKHMckKxM2M+sJaeATXRnY+z2kIJ6gaq11UC/vxIR9jHdPK0jnsdk3GcQcrhXBBvkNl2SdAmlDTnRNGKG4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jpl.nasa.gov; dmarc=pass action=none header.from=jpl.nasa.gov;
 dkim=pass header.d=jpl.nasa.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=JPL365PROD.onmicrosoft.com; s=selector1-JPL365PROD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mI7TiHdmPdAhzXr5wbgol/mI92W+0JgJy/S/dkPIlZo=;
 b=MvE3o/92t1a61Fl/D1FlxU2bYhLfiH+iVcqqmVbFkZh9RIspsZxzHcK1duNSMlsr5ohJNFFVGXRSg0VkvJXDZvbSNvf0Rem4reo89afuyyNyDAxcCoJplZUD0dMMNlzlszN0nRPO5jYNp3bfVR7l/V40L4fNfV6s8Nsa/QTRTFg=
Received: from SA1PR09MB9275.namprd09.prod.outlook.com (2603:10b6:806:282::21)
 by SA1PR09MB9730.namprd09.prod.outlook.com (2603:10b6:806:287::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Mon, 4 Dec
 2023 20:28:27 +0000
Received: from SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::a6d4:bcb6:e7f1:66e9]) by SA1PR09MB9275.namprd09.prod.outlook.com
 ([fe80::a6d4:bcb6:e7f1:66e9%6]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 20:28:27 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X4XX: Query RFDC Data
Thread-Index: AQHaJu7kXODiK5LODk+Ynomq9HKgVg==
Date: Mon, 4 Dec 2023 20:28:08 +0000
Message-ID: <SA1PR09MB927506E4666041FD75ED4E299286A@SA1PR09MB9275.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR09MB9275:EE_|SA1PR09MB9730:EE_
x-ms-office365-filtering-correlation-id: 6ee11d51-d905-444d-06ac-08dbf50792a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +XxbnrzuZDDFkaBI5PH2+BzIQGwd9ZR1gjTEaUEreTZr3PeH9cyDigftzUuxVlqBru5ZR591LUneplyQFgnq20ydiBeFHl50bwUMv8VXZ0r/4xIpGVRDNT7DEGawJZde4rVAQyNTKIAAQhHV3evqyDhGdJPmkaX9vtEaDc9xEOX9QjrUk2KR2+euw0TE1mCMWl43ZOelRNWqPCq4Zo2unIKvw3ebYS6KKzC/LbvscGHO7Gn/Dbs74OXC+YnektPtLFPc1jw6iSRyPiw276nRtTPxLeSsj21n3fbT7QDdQPntBOBSlHhRutRal6oPqMizQHA6kIs4OU9rzoJl/qFI4Z7qGc61BlGHp+vdt4vmNpSZ8WBjjrjJ++LlmfOpxtuN6N6V7hgHL68YjEFuceb1N2YSFJ8U9GURTLAp3ze3O7eRpVF6x9nAgogAamak1P95zG/OP9JPp3RiS+Wpoh+6IBRzvDSCpYb4YYdYK1Ktpt3Jmwf4MOaZJQnuIZPtgj3WPPoCfxBbak5rZoru02VXE/Xe5aLsWkrm5555tbt0PhcFQTIjeW29DZt9IYErht2+UDT/XAmEwGuXw+XX+RYPb9u9xeCEMiPHzhGSkTl9OAYIPYqV5BeUB4lKInbfSQTUdTQW3Dzzr6pGbH8WFoqWsZ8LSXvdi/hfnvPbZv9yedQiBopE449S7TADi8IbV8di
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB9275.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(186009)(451199024)(1800799012)(33656002)(38100700002)(55016003)(122000001)(38070700009)(52536014)(2906002)(83380400001)(5660300002)(26005)(4744005)(9686003)(498600001)(6666004)(71200400001)(86362001)(7696005)(6506007)(64756008)(66476007)(66556008)(66446008)(8936002)(76116006)(9326002)(6916009)(66946007)(8676002)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?3d1ouCma1mxhDGZhobXv5IOIgx04drs0UAo8E5COc99A/F0x8AX0OQvr?=
 =?Windows-1252?Q?hW6hTLj574X3Td+iEKy23+7hHT/ccG4cYKouHJaoJV6SlbJ37IThuE0A?=
 =?Windows-1252?Q?DSCP6Kpx92W8yShelJzaQhhOW6nRyEulSEfXX+tBl1+7FnBrm4lZlToO?=
 =?Windows-1252?Q?GaCzTAu3570vZNaPdFGYGk4YECxX13zX2ruZ/l24RTAJFqKyDfZ+dfS/?=
 =?Windows-1252?Q?HxxsnRyUQSnt6gH2mSa12hsaSc6QO+x6o4Ug4LPO0j9cho2MkYbkYEBE?=
 =?Windows-1252?Q?M7IbhdDXoZiYXyObOz2mWzAbljLGCVWjiOjKvSSS3AjyiP2iPcaAvARv?=
 =?Windows-1252?Q?dwyWujCcxemwN3TVtkfQi2UVHOcaIdLAY5OFsXktBX5xib82acDncsrj?=
 =?Windows-1252?Q?Yl+oqa3Nm9MtHYwXWdduI3UrFjl0SOZEnMMZgb30wZV3eQ78T49cH2Mo?=
 =?Windows-1252?Q?sD7nrYSiqTspMDBbjNEbDe1GenD1kS1ukY+Msg3t301EiAucc2aFrITf?=
 =?Windows-1252?Q?1Hqso05H4+4nQhBdsVwXMqyji0lUrzP9UMEXMWQcXg35a073UIcIjupO?=
 =?Windows-1252?Q?sBf7KyoAg+Mvb4Q9SQXhP1Vqisx2es0oGmYhW0bwdbeYg0oOmXQLdOlH?=
 =?Windows-1252?Q?A5MHMAfqbIjRsMsFDhOGfOE/Ws/hqPiBFpc6u4PShPtVXvCBnOp+SEfp?=
 =?Windows-1252?Q?CsRgifn7FEymhM+COytXrgPJW5c2SW+BSoda/XdJKVNRH2m+nmabV6en?=
 =?Windows-1252?Q?QPMVbVITbN6wnWdv0KNetXQBc8BftpH1b2dQA+hgobOf/dH8JY/8dW/3?=
 =?Windows-1252?Q?v+s5Vz2aRXF/mazt9yB9vjtfRj/wW71KsFMKEjcjAU+M9hTdhEyCwib4?=
 =?Windows-1252?Q?4pfcxrpfCwvlOvptvQslGJy4EghRiYp4k3MLWhXSN5OhcAM+9aGr/RnB?=
 =?Windows-1252?Q?Ytmlfzegjitp7wjKkDMCmY37ItGK9Kw/xRnlR0uegm+Njme7XxgwIqnm?=
 =?Windows-1252?Q?dCZSSsCxOyYQotsXTYpzXLwOm4vYkq9mSQk8tAOGr5B5FqCCKQ62EKbv?=
 =?Windows-1252?Q?jpmmpLmJ+vP6X6C3ZS90cUk7I5ilb0m7ROQsdtO1K3IYlpbbwx/bLqxl?=
 =?Windows-1252?Q?NrK2omU/SQs/p2XYWbOtzOsqpBgIrSgjkqnWr8kDjRGdVX8LsI7r9Jhy?=
 =?Windows-1252?Q?0UObd8zZwKKtEGPvPXCweJ9886TzYmdoFPFoi5ykJrSVDw/1QBr2TvBz?=
 =?Windows-1252?Q?CqXYczgMJJpL6VrSqaXiW5kSUSwY7fSj8CqQ//IHI1dMpgnFV/7e69pG?=
 =?Windows-1252?Q?XYvTKCNOEFskvZLSjvgUPKJ+uGsSDV1X2TVYXQkHP8Z+AI3i8LrQDqh6?=
 =?Windows-1252?Q?ZQPwW1OgzsQMOyHXto/jLc/vC6WaDfzCav5q6r3JOvSWcbgnuP9Xi4ZG?=
 =?Windows-1252?Q?gEJBMHkmV/uaiogioyTBVPAWBvZFxfu9lH1EtcTt2bGHJxZOKNA5BVL8?=
 =?Windows-1252?Q?mAss56CN9s58uFwXPF3xfFQ5m2eEefln5oXW/cVEbhzkmjltu+JUX69+?=
 =?Windows-1252?Q?zYNH+re7eo4xzwSgtNhMvgwl6yvFxpGP7PcFQzpdxaleHJuKYMr10Epp?=
 =?Windows-1252?Q?Jnrte6GHya9h6qHR5xV8nrOPzmvqpsip+9nbmTDzmt1SdRKOXaGFNP84?=
 =?Windows-1252?Q?XqAXissGv/Tbun1Pmx8s2CmmS2/S2fti3v9Gc5W6TzqEUTWMjc44OA?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB9275.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee11d51-d905-444d-06ac-08dbf50792a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 20:28:27.6335
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 545921e0-10ef-4398-8713-9832ac563dad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB9730
X-OriginatorOrg: jpl.nasa.gov
X-Source-IP: ice-ex-mdc02.jpl.nasa.gov [128.149.155.142]
X-Source-Sender: zachary.s.rohde@jpl.nasa.gov
X-AUTH: Authorized
X-Proofpoint-GUID: Om1Bh3FncQnnxli3HtGPrywHV4fiW1T2
X-Proofpoint-ORIG-GUID: Om1Bh3FncQnnxli3HtGPrywHV4fiW1T2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-04_18,2023-12-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 mlxscore=0 suspectscore=0 mlxlogscore=867 spamscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2312040159
Message-ID-Hash: IV753FYA4SFCFKEH7HZPFIJZ2QHXR426
X-Message-ID-Hash: IV753FYA4SFCFKEH7HZPFIJZ2QHXR426
X-MailFrom: zachary.s.rohde@jpl.nasa.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X4XX: Query RFDC Data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IV753FYA4SFCFKEH7HZPFIJZ2QHXR426/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rohde, Zach (US 333G) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Content-Type: multipart/mixed; boundary="===============8195995837651396634=="

--===============8195995837651396634==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR09MB927506E4666041FD75ED4E299286ASA1PR09MB9275namp_"

--_000_SA1PR09MB927506E4666041FD75ED4E299286ASA1PR09MB9275namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,

Is there any way to query RFDC data/metrics on the X440? I am mostly trying=
 to probe the RFDC=92s NCO phase accumulator data. Is this data exposed and=
 can it be accessed by the C++ API? I tried looking through the UHD source =
code but it is not obvious to me if these register(s) are exposed.

Thanks!

--_000_SA1PR09MB927506E4666041FD75ED4E299286ASA1PR09MB9275namp_
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
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
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any way to query RFDC data/metrics on the X=
440? I am mostly trying to probe the RFDC=92s NCO phase accumulator data. I=
s this data exposed and can it be accessed by the C++ API? I tried looking =
through the UHD source code but it is
 not obvious to me if these register(s) are exposed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
</div>
</body>
</html>

--_000_SA1PR09MB927506E4666041FD75ED4E299286ASA1PR09MB9275namp_--

--===============8195995837651396634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8195995837651396634==--
