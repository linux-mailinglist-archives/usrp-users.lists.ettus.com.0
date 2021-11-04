Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED059445610
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 16:10:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D11D3384381
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 11:10:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=sandia.gov header.i=@sandia.gov header.b="tA+09WIm";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=sandialabs.onmicrosoft.com header.i=@sandialabs.onmicrosoft.com header.b="TT/nXMdv";
	dkim-atps=neutral
Received: from smtp01asnl.sandia.gov (smtp01asnl.sandia.gov [198.102.153.114])
	by mm2.emwd.com (Postfix) with ESMTPS id 950FE384105
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 11:09:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=sandia.gov; i=@sandia.gov; q=dns/txt; s=snl;
  t=1636038564; x=1667574564;
  h=from:to:subject:date:message-id:mime-version;
  bh=e3UZtCgC9tPF06/wTeAOwDLzRgAiHQ0DNTQeBjV0knk=;
  b=tA+09WImS+iL/XwTdsJ8Uz5D6ahJ8hERvmYtFS/noKFwRRpljOxciHV6
   tspXE0Rt1JvGrL1eXgfRBfTORqW7/tNlJr8nzZ/yFsKINhDvX3kO6HZek
   5qK+m3niHasLO+wODGXQw7FV9p/jsJ5oX3/UXyxpMz15eakEEeBzK2Qfl
   7mp0LlCseuWYJBldEHj0JMV0qrhXkNvreCdlszRTt6C0sgY9qbxKruweG
   enFt1b/+LeTLzKFMna/ihY4epfQJl6Esvjw8WdskC6PZAhRyzpzGxK5zG
   /qgyG52E64DORbjTWIUlrz2uhlxp4XAPLq3zP+WJYqCWRcjwW02A5CqES
   A==;
IronPort-SDR: LD8QaO6C8dRM9c+vnyoO0i3Keuff6HMRlvNEVUnrthCB/PAdkgKzu3W3SGX2anPTcCqD5mZpDV
 DxnNd8no6BAKn/Pom43bo5Sn2wiPxFwh8=
X-IronPort-MID: 385990544
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="385990544"
X-IronPort-AV: E=Sophos;i="5.87,209,1631599200";
   d="scan'208,217";a="385990544"
Received: from dp10snllx.sandia.gov (HELO Sandia_DLP) ([134.253.181.221])
  by smtp01asnl.sandia.gov with ESMTP; 04 Nov 2021 09:09:22 -0600
Received: from dp10snllx.sandia.gov (dp10snllx.sandia.gov [127.0.0.1])
	by dp10snllx.sandia.gov (Service) with ESMTP id 5BB1960003B1
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 09:09:20 -0600 (MDT)
Received: from mail.sandia.gov (unknown [134.252.86.169])
	by dp10snllx.sandia.gov (Service) with ESMTPS id 33D4A60003AF
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 09:09:20 -0600 (MDT)
X-CrossPremisesHeadersFilteredBySendConnector: ES11AMSNLNT.srn.sandia.gov
Received: from ES02BMSNLNT.srn.sandia.gov (134.252.86.162) by
 ES11AMSNLNT.srn.sandia.gov (134.252.86.167) with Microsoft SMTP Server (TLS)
 id 15.0.1497.24; Thu, 4 Nov 2021 08:09:18 -0700
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (104.47.64.102)
 by ES02BMSNLNT.srn.sandia.gov (134.252.86.162) with Microsoft SMTP Server
 (TLS) id 15.0.1497.24 via Frontend Transport; Thu, 4 Nov 2021 08:09:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gu0cYRjkMyI/wLGFLoxQzT/e01sQxByUAEdoRBuSpH+TG9j2rB4GHvrm7l2xKRFYIZ65Y8zcvvnoazatC5vV6HwQYVNEAdOQootIpnJq0y0Z7yC42o+vmHQjJ87GDJMmdSCSq0v1uP60A0ecu8otzZhjvaLEBgL7bfPaWS0jjvtwEWpVLKRFxEWUgSBY7V003kIizUW1NqlpC2u/RfIuKbXIMHlcjMG4b/JPfbkOr/T/MobdVwNzvZTVkRznvMUiLq2e0G71Ek0FR5r9lz558ycfYrh7Ngle3K66MyMEin6fRJg1OFqBQS9lmTKuSfRhxPvdvYdRIbFPMcgJP+299A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JPtFlDqSG64fSvkThz2e4Fy+yUMk878KFn0rLngg4/I=;
 b=FBdRlnl2/NGa04pKnVpkNE2ERuUeRspHjPZHkCUjAnE1C6TMDtqtYrVJalidPSPA4Ox7CRET5ELSxA/YqHtt4MQoir7rTM0WksOCYOymFhGO7/zunsA5NNm2bHlzjjpIGri5ktBwpcjhm0Xi1W4KQs/Dph4LbCKKeXsaSxLupTnmLFWkT+lAd+WwhBXlsm0OFtaT0BNtejjH3INPnzfrGbOuk8qZGuD+KX9E1nFPCq9yD98rq+uZg/MOIMPhgptNttVDX28/H1qb0LzGFjmFsQo4+U/U9OAC85Ut9ek1rc7EV0KLAy72jK9Zw4DL+gGHdh5uyr3qrWDa/89erAvK8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sandia.gov; dmarc=pass action=none header.from=sandia.gov;
 dkim=pass header.d=sandia.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sandialabs.onmicrosoft.com; s=selector2-sandialabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JPtFlDqSG64fSvkThz2e4Fy+yUMk878KFn0rLngg4/I=;
 b=TT/nXMdvzSJV8XE54cvmOtElSdyOfHt8zcqCOLFZTtCQwLHDbW6Wt3qwWr+8mULI2xPE7HzD2IeDeC0TYN9NK9xFCnVqwbMElug8vmB5Ri/TfaNBXuEbf/omdP0M4NXmopkscky26qczJpQQb08vfHk8oUASmb9j9Ms7i4v5e+M=
Received: from CO6PR09MB7848.namprd09.prod.outlook.com (2603:10b6:303:d1::18)
 by CO6PR09MB7943.namprd09.prod.outlook.com (2603:10b6:303:cc::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 4 Nov
 2021 15:09:17 +0000
Received: from CO6PR09MB7848.namprd09.prod.outlook.com
 ([fe80::b0de:6c37:c90e:b73a]) by CO6PR09MB7848.namprd09.prod.outlook.com
 ([fe80::b0de:6c37:c90e:b73a%6]) with mapi id 15.20.4669.011; Thu, 4 Nov 2021
 15:09:17 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 test_pps_input
Thread-Index: AdfRjHc0h2w0b6pYTg67kFWL5SmrkQ==
Date: Thu, 4 Nov 2021 15:09:17 +0000
Message-ID: <CO6PR09MB784803715D92E3A08E05659CC68D9@CO6PR09MB7848.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL1NhbmRpYSBOYXRpb25hbCBMYWJvcmF0b3JpZXMiLCJpZCI6ImMyYmYxNWUxLTE1ZDMtNGNhYi05MmMwLTlkNGVhYzc0ZTgzOCIsInByb3BzIjpbeyJuIjoiRU1BSUwiLCJ2YWxzIjpbeyJ2YWx1ZSI6Ik5vIn1dfSx7Im4iOiJDTEFTU0lGSUNBVElPTiIsInZhbHMiOltdfSx7Im4iOiJFWEVNUFRJT04iLCJ2YWxzIjpbXX0seyJuIjoiRVhQT1JUIiwidmFscyI6W119LHsibiI6IlJFVklFV0lORyIsInZhbHMiOltdfSx7Im4iOiJSZXZEYXRlIiwidmFscyI6W119LHsibiI6IkdVSURBTkNFIiwidmFscyI6W119LHsibiI6IkNEQVRFIiwidmFscyI6W119LHsibiI6IkNOdW0iLCJ2YWxzIjpbXX0seyJuIjoiQVRUQUNITUVOVCIsInZhbHMiOlt7InZhbHVlIjoiTm8ifV19LHsibiI6IkFUVEFDSE1FTlRUWVBFIiwidmFscyI6W119LHsibiI6IkFUVEFDSE1FTlRPVU9FWCIsInZhbHMiOltdfSx7Im4iOiJBVFRBQ0hNRU5URVhQT1JUUyIsInZhbHMiOltdfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE4LjQuMTg0My4xMjMiLCJUcnVzdGVkTGFiZWxIYXNoIjoibzd2QmxVZmgwUmJyUXUxMmZMMEE4cFVjYmJ2YmduXC9HbHRqTVBwOGFKd1l2TEJmalVMUWdwWlBjazZzVkZINGUifQ==
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=sandia.gov;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fabf557-ed6e-409c-2701-08d99fa51276
x-ms-traffictypediagnostic: CO6PR09MB7943:
x-microsoft-antispam-prvs: <CO6PR09MB79431E4541815F98F1B88BEAC68D9@CO6PR09MB7943.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KEwQS51GUbPm8cl34U5sAWIWlYGsCjDceIlWI/vbshojcis/OW+rknfmNR7JpcgFy/dPJhLJHUeqfxqfmxK/2rag+jtlKmvCUTdLwAUj6qLxExgWVl55V+Jn+s9o8ahXiiy62JxWtBYsI3yuPT5Z3gM2epef7YFeqLMZZP04/5zVq9f/GyoqxLLWKq8iNbQa3sjK+0zSJT+lUi9lqAYlnB139i4ZHImQFCfyZJ6uXDBZ1fpR20mHP8pOgPLY4gB638EdCXCdrQL/XJ0d2EF+Igk7azZ5cuFtL01sZOcGgb3RY1q9KNDiXj6cqupHeb+k0VifJ5bctb+bh4E8hZuvJGvmzuR0YkxIG+B80WFZV234QnlqqrVKwsw7hQOqxiqpj9a1ep3S6V6LN5Hnd6/Gj9ifH0UTtKYHX/YNXjNXwM6s5LkdXZAYpDKFRbILMWVy6DEvWgvlQrV6s02RCaMcUSVguSnflG6mKfiNp8K19DAyCudtfVds6anSBv3Vaf5jIlojZzTbkZm46FJzbptsK++ojmdEVf7MyNxeXfXUsqBGTSzGYm1jJie5pGUBGkuDiQNphrR9ZithBuPQD+F8LBIFhmRs6O0Vtk3ZuPyV3CapGi66kjQMo/winNY9oFtladUv2t4C6XpK2K+28gRJKuhCUsURXzimGf4khbFXtcrX8cSUbhO0khbyjN9vcb6050Dxjqg6U7Gumesk/QzYSg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR09MB7848.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(33656002)(8936002)(64756008)(76116006)(66556008)(66446008)(38100700002)(66476007)(66946007)(38070700005)(7116003)(71200400001)(6916009)(52536014)(508600001)(86362001)(316002)(2906002)(186003)(5660300002)(122000001)(26005)(83380400001)(82960400001)(8676002)(4744005)(7696005)(6506007)(9686003)(55016002)(40140700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2/X9zWv933HosKSGPHj9uH35goXVkVCiF4arOD8wx/+I5lDbmwFzitJs9RQc?=
 =?us-ascii?Q?GTSVGSf0nV1QLyZcQifuKROGo2y3AvhK+15RYjm/0YMgHv3LVMrpX6Zvsxvr?=
 =?us-ascii?Q?kI3AQnIW/IZRsv82Zk9QwqkfmjtzB+r1AJGV67kPyYo/1jgZUtaeUTnM4zRo?=
 =?us-ascii?Q?GwyB/3M9PV6xAc1FkcA72C2YvoQgJYehG+9t6eo00mwlguN5Kw1z/pKEh8PH?=
 =?us-ascii?Q?rfOBFx1U8Tsx7OnzSugsyHfWFra4+oHokH8y95x2GllaaG13YL3pPqk2hCIc?=
 =?us-ascii?Q?6VYquvX6fPmkEAoCGvqKJCIk3wiD6KY5TK5RKpVJnRnkZyEM4gpV1Y1/69xf?=
 =?us-ascii?Q?AsVnxZLkyUgKaQCtQ5s7MWcoxUq+YIFCkxvVnuG7jT7n4+o9qUZusbylhpt8?=
 =?us-ascii?Q?djxAMziQ5/KD7ahxa299ylaOuUB293C3P//yiHqX9OU3GLQlO3+asnlu8k0G?=
 =?us-ascii?Q?CLnMX7PaNzYeK+oCqajcHBpncfKkz/n76c4RUgvD2RdL8Dg2/wYnzo4JaGFa?=
 =?us-ascii?Q?NhCzHtRigMWx9BNZC1DQ2Ltu2fucdABKfV8MBguchmqR8GZaxNbacKXICxLz?=
 =?us-ascii?Q?saYuPXT9543IjdiTFqq1VASvIdDq7vrxe3AzqqneTQYwnDWDt7BZAGlJHY0P?=
 =?us-ascii?Q?rfnpaTyCL9iSvxtRBKF+6wcwE0ajaNvtORwKPSqNOPgmiYViZ00SgSX2/p26?=
 =?us-ascii?Q?rd3y9f9P5RveTw8XCuQVDqS7dJhZfaOfgNHIMArjB3RIAXV+SqblPLKG8qsw?=
 =?us-ascii?Q?opEHnpmUJ+Q+Tg2/uNIPlqYkQnm0Lqrk5wbef0o7ICNuwF7hhBJHK7C2+ksb?=
 =?us-ascii?Q?ChD/ooxNtzAhks/6P4T3WVCXUQ+Q7AekBL60QZdo615EdS3b8/2I1vXuJi8C?=
 =?us-ascii?Q?WPu+ksL5jh0e/ZbUHz9FcXT0UekTRX/NI1e8Ws0PoLQL0jXNKfoxEuZoZdDN?=
 =?us-ascii?Q?HZN58KGtvipa0MOL4coNLezDXwwAr2NT5O/IGMIpJV4ELTQ3OY1xy+/WKlv0?=
 =?us-ascii?Q?j0VTGx1oRtv56x0rzUpzIprBAVSHYeq52KFQDI8gPs4Jnw3Sx3xTqdJujKio?=
 =?us-ascii?Q?WVj+Mx2FDNUdG3T5K9yVPkj+qhU53GYZprt02fQgZKJ6WMNoX2pP1Kkqi4eG?=
 =?us-ascii?Q?wTHdy5PP9ys+OrQ6+pPIPptbWOFwq7m9kd4xvztk2lSAsSqp1fbKFWwZoFql?=
 =?us-ascii?Q?qRNhyYTW/5EFOPOh4Nw0uSpl+XqkjOPG1dmsaL+ULQRrf4YOxH2UbQuwG00d?=
 =?us-ascii?Q?w7Bt+wIxOWK/loGcCEpsfUDWoEryhfVJ7U7ernlyL/AbgJiI+Ci0mjKuwwOk?=
 =?us-ascii?Q?gGsgA4gkxDfqJmesKvrlGa6Z?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR09MB7848.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fabf557-ed6e-409c-2701-08d99fa51276
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 15:09:17.6584
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7ccb5a20-a303-498c-b0c1-29007381b574
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR09MB7943
X-OriginatorOrg: sandia.gov
X-OrganizationHeadersPreserved: ES11AMSNLNT.srn.sandia.gov
Message-ID-Hash: WMTEFSLMYDWAB3L3634XKZZAF2AE4VVG
X-Message-ID-Hash: WMTEFSLMYDWAB3L3634XKZZAF2AE4VVG
X-MailFrom: sccarey@sandia.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 test_pps_input
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WMTEFSLMYDWAB3L3634XKZZAF2AE4VVG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Carey, Samuel Craig via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Carey, Samuel Craig" <sccarey@sandia.gov>
Content-Type: multipart/mixed; boundary="===============8171821363079998648=="

--===============8171821363079998648==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR09MB784803715D92E3A08E05659CC68D9CO6PR09MB7848namp_"

--_000_CO6PR09MB784803715D92E3A08E05659CC68D9CO6PR09MB7848namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Howdy,

I'm trying to verify whether an E310 is synchronizing its clock based on a =
PPS input signal.
I tried running the test_pps_input UHD example with -source option set to "=
gpsdo", "external", and the default.
Even after I had disconnected the PPS input and GPS input, this test report=
ed "SUCCESS!"

I tried measuring the center frequency of an input reference tone from a se=
parate signal generator and there was an obvious improvement in accuracy wh=
en the PPS was connected vs. not connected.

Why is this test reporting success when the PPS input is not even present?
Is there a better way to check whether the E310 clock is locked to a PPS in=
put?

This is happening on multiple E310 devices.
The UHD version is reported during test execution as "UHD_003.009.002-0-unk=
nown". I cannot easily update the version.

Thanks,
Sam Carey

R&D S&E, Computer Engineering
Sandia National Laboratories
Org. 7662, Telemetry and Software Systems
Mobile: (505) 239-2698


--_000_CO6PR09MB784803715D92E3A08E05659CC68D9CO6PR09MB7848namp_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Howdy,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to verify whether an E310 is synchr=
onizing its clock based on a PPS input signal.<o:p></o:p></p>
<p class=3D"MsoNormal">I tried running the test_pps_input UHD example with =
&#8211;source option set to &#8220;gpsdo&#8221;, &#8220;external&#8221;, an=
d the default.<o:p></o:p></p>
<p class=3D"MsoNormal">Even after I had disconnected the PPS input and GPS =
input, this test reported &#8220;SUCCESS!&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried measuring the center frequency of an input r=
eference tone from a separate signal generator and there was an obvious imp=
rovement in accuracy when the PPS was connected vs. not connected.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Why is this test reporting success when the PPS inpu=
t is not even present?<o:p></o:p></p>
<p class=3D"MsoNormal">Is there a better way to check whether the E310 cloc=
k is locked to a PPS input?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is happening on multiple E310 devices.<o:p></o:=
p></p>
<p class=3D"MsoNormal">The UHD version is reported during test execution as=
 &#8220;UHD_003.009.002-0-unknown&#8221;. I cannot easily update the versio=
n.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Sam Carey<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courier New&quot=
;">R&amp;D S&amp;E, Computer Engineering<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courier New&quot=
;">Sandia National Laboratories<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courier New&quot=
;">Org. 7662, Telemetry and Software Systems<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courier New&quot=
;">Mobile: (505) 239-2698<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CO6PR09MB784803715D92E3A08E05659CC68D9CO6PR09MB7848namp_--

--===============8171821363079998648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8171821363079998648==--
