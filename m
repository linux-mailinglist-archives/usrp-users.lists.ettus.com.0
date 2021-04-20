Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD923659D6
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 15:20:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A66A3843C0
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 09:20:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="w2BoXsyi";
	dkim-atps=neutral
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2116.outbound.protection.outlook.com [40.107.20.116])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E96C3841E9
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 09:19:23 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9dodzWQ+QUBvJNZnEg+ab4UTDNoGF0dAkeFo0gvUmbEY2+kFMXanpp06HHVU6L85OsWaL7yGm3CBJub7ruKQRN5eCAvS8dVSKqvGhecCGAr2+/kwKupmfkMOMyoLKkMu/tkIXymhAAzIum27V8RD2wbfBQta0otMGg+C/IJF/hWszHeE8Vo7Lg9oUc1Wr0OK2VFHqOVP3L0zfmgq7rdUwatQTuy6CkHOLxVFVCz+RgxwEy8EdhePKrFCd00ggmDKKc+c8Z/itKGso1TEzOSqpSNiE2LQQRnwDKpZiNy7RJR8+miDoaSf7Bf39zhigTGK0woA7wFB/A+jyEfkfcRIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SHXJC4NIwlfoxMgm+qF/o1jFfQnFFd+RzL4KThZjfII=;
 b=gnk7IpAmRb/iJj+03weDzfMsLHdN2qwPquoX20WLPT9UmkeiKB4L0bbjqiFxgUazn80fKlvarleiWzOZwFSwB75YmTKf9AKv+XpBvKx6nzCkJySo0cirhXym5Xa+3rJm09G4D7Qw+5m6r3j4T+sgzzkWUyyrmMHuGOLHUS6QAeiwXWIfkUHKVmDK/XUojvt+zrYRvsMV0d6WM0eyn/WY5pGkEehGXB0yPYzD101U+hIs7kQ+G9yJhn8Kwy1iKPZdZ9fK/yTBHSk0rh60q+VQA/uNqyXoojRZCRTV8CjQs9KPrh4+JiKNpQ6Z7s3/JFH9lo7QGK0zIVU94Fl18PR1Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SHXJC4NIwlfoxMgm+qF/o1jFfQnFFd+RzL4KThZjfII=;
 b=w2BoXsyiiiNb/Z4yG6YX0vIKdfqJV7u+SKt/sZI42DMnU0oqBwxVgY3iqx150Bg1qB05y7cwrpMYF4pEmAUUAg6SPlT1avugntyyfeT3eYnkIdBB1dO+dEtxZaKOXP/rrrsANDePV/GQHayriVCnZfE/NbFUBN+M2pFrop18rv0=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1653.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3f0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Tue, 20 Apr
 2021 13:19:22 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%8]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 13:19:22 +0000
Date: Tue, 20 Apr 2021 15:19:21 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210420131921.g6dloxbg7o7valro@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
 <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
 <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com>
 <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com>
 <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
 <20210420111632.lixq2x3mcryavb6d@barbe>
 <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR02CA0026.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::39) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM0PR02CA0026.eurprd02.prod.outlook.com (2603:10a6:208:3e::39) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.17 via Frontend Transport; Tue, 20 Apr 2021 13:19:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b1db1b7-61da-46a9-ed73-08d903fee945
X-MS-TrafficTypeDiagnostic: AS8P190MB1653:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB165343E720BDE1592B0AD264F0489@AS8P190MB1653.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	plHSPLTBiZlygj2cNuDESv7g5uO/aWWeC6IGbG3mIIOTjHQ/Ua6qJW7N6M97Ow2sRJ9SGIc7heaO7oKmrdUHT/X0Vn+rZuAsJmwadi2JsrrHIBLTPIFMzU0Yt7W/MayeOgRz4HPwtzsd65efoFPqK6Rk7HV3hjOslLYFOksRj6k4/KBJYdHqrQtmQyQndODMiLtM+4oTmF1i6k2YpdO9H7AANfZotSC6iZd9/MMsZUcQs5LcRhqWRbNImOTCf3wVzbky2WJomiPvI7ubiEtdfRrbP0ZBMMYFkL79v93dzz0yHFTCr88Vqt0ClBHbI8m2CJV4iFyAPULE2bzzypvZ/ZlRa1Uhzr6jMGpJ9ym4uxzW18yzEQTDxV58Na+GsszudaVS5kEP9McRcmywuPEwQ668O7Vh6Bxrb3xVwMLtukPVZ+P3y2rLJ0n9YVIbJNz/ArHa3zvPN6JX+l7P7GvRJiOq7SJhoM3cbGYKADzYp16RUTb6ze4qAgIXR8BbjkaKcjW6JYdx/px7iCB59Sre2aPnJoyMJ9y6lsh1PHB04imiuMRk/izdeR/UxDciLcIcvpS/du2jXc4w+Ir2kxMmCkH1gdxTpBAMPJ4GbOIF/4cz9s5S751buhIV48rIj8lFZg0LEmNbBGnd9nwJVqkxSR+4on7N40rt25ALg+83JzmiZCbtaZakktyAZ3CRsCGy
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(376002)(346002)(366004)(39860400002)(136003)(396003)(52116002)(6496006)(9686003)(86362001)(6916009)(66946007)(1076003)(956004)(8936002)(478600001)(6486002)(53546011)(66556008)(786003)(26005)(38100700002)(5660300002)(33716001)(316002)(8676002)(186003)(83380400001)(66476007)(16526019)(38350700002)(2906002)(547064002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?pP9CTB4qPqFYhCn/unM+EZGzmTIaAzCmVmeAFB/UGP8K1xmcbvJT3EZoXJ?=
 =?iso-8859-1?Q?b2jHgqg5qxEU1QrxEuD2j81+I3D1J1XhAHHBz0Qu9SELxVJqNKXlNiftGY?=
 =?iso-8859-1?Q?mHzPXbUBbgf5wDL00QTG/p+NzRsixhlHg3Zo0gY3p1Mk/Op5csWRph14hj?=
 =?iso-8859-1?Q?N3DiNmNbwfPS4+esi0s1JQ2Ei5y00jGvZPtdRxPO+TAWuRpt6QkvadLoe7?=
 =?iso-8859-1?Q?9B4LvVZ6BBf8gZUueyygW1129k4LxlFM4KGwvRQcijSJqANYxFSc4Zn/6W?=
 =?iso-8859-1?Q?5UGNf0VBL5KF54zOEWRSctuMv4ib7yi9mF//n+gXViNoPPmgvfJjquL7Uv?=
 =?iso-8859-1?Q?pzw9+pARv9UlHLELP1Ije/nVOMkhNxVeyqLtJl+eUkB5x7Ig5c9PRE5ENF?=
 =?iso-8859-1?Q?x+Ib3NwLCNTozJcd/p2O3p7ngvXMkYi9kynXFHHs3z50ihBzx3W2f/BjEq?=
 =?iso-8859-1?Q?MTGf/pIUj99S+LbTJKlAXrLBbIaoZrJUxyUVjcQwiUD1a8OiVKfxk1nx/v?=
 =?iso-8859-1?Q?hNf1zIrVAgk9FkB7zxRFvFrZ63UfeoyGc8XR44LT2Z33nlYKZihIr+TYlZ?=
 =?iso-8859-1?Q?EG/E0lU/hVIZE9pqDYSGLiBBXlAPrHZPNYbiBjSuPA1wimkyYDwbGPtn4X?=
 =?iso-8859-1?Q?Gczng6S8twLEXkAYe++P/tFk/ZmFV9RvGG3NCXfAcjLGSRlc41S3biBpU6?=
 =?iso-8859-1?Q?00vzNXfO879DND+qBZ7lxZ+xteua2x1D9wcs69zy58oZ758lA3Zr5zdl/x?=
 =?iso-8859-1?Q?mP+pLQmpDraP/NLu/MKqOrRmsCdbbWdfr6K4oj9h+MXAKtWmlFhv8/H/81?=
 =?iso-8859-1?Q?lnKdQb0PWrVzFlkr7hjbNIJKNkWV/eNRTQO9qoyyBbnO1EkWXclfOnn8UL?=
 =?iso-8859-1?Q?ap3F454bvORC45u/aCM1QO9Y8GnbsCRHakRWyCZBMBvkctYwyNJpvqInzB?=
 =?iso-8859-1?Q?REJVuk4ZomQnd9ICIj5JZ8JvzFun/TUQ36/76cUYKzUM8oQhqZyrUKaXSu?=
 =?iso-8859-1?Q?lOkg7m1kjBFF4Yeg1ZO006NKv9UMFdMNxHRQsHZ+s8CQLGYIxtrp5iip+o?=
 =?iso-8859-1?Q?OQCMJZeT0VvXpPFZ1rrk711YsavS+yoYGU9KIz78jhViEB7QciBmhkuYKr?=
 =?iso-8859-1?Q?I/O+oduUVbOOHuTcKLJITsQJwUkKpbHTT7qTlhrTDC/XXWRC8bTQXUOk3e?=
 =?iso-8859-1?Q?XyJU+TO/U8XlIznrd+YKiVJMstRK+xw3/t7IYqKrbmT3FnBqaHCCuheOBh?=
 =?iso-8859-1?Q?rSUrYa872nMXTpL4QSdhlvARs7FdBso9YYZclBACgTHIKg9ej703oeT1mA?=
 =?iso-8859-1?Q?yfR8pjFRBv+ZY3tT2VB09ZXzflIcHJaEKXBwWby+bHKdivvdC0z4Zb85ui?=
 =?iso-8859-1?Q?pIT4hDM6sV?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b1db1b7-61da-46a9-ed73-08d903fee945
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 13:19:22.2007
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bTlYJ6uJ2yOkov1LGt2eEIYDML+WTMqpNqh2JgX/nXY/VFhUqpPmgB9BNE6CJKCaP0A2y3YDABvQDKFFhGhbhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1653
Message-ID-Hash: QDBRAPHJ2JJHZHTJDLDTXNCBTKFIUVPT
X-Message-ID-Hash: QDBRAPHJ2JJHZHTJDLDTXNCBTKFIUVPT
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QDBRAPHJ2JJHZHTJDLDTXNCBTKFIUVPT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Brendan,

On 20/04/21 22:15, Brendan Horsfield wrote:
> I have verified the installation as follows:
>=20
> [...]
>    - Reinstalled GNU Radio Companion via Ubuntu Software & Updates utility

I do not get this part. What do you mean by "reinstalled"?
Did you installed GNU Radio from source or from Ubuntu Software?
If you download the source, build and install it (following GNU Radio wiki),
then you cannot install it using Ubuntu Software (or apt) afterwards.
It is one or the other, not both.

> Next, I opened GNU Radio Companion and tried to connect to a UHD source
> like before.  Result:  Exactly the same problem as before!  GRC is still
> pulling in UHD 3.10, even though I did not install that version of UHD:
>=20
> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

Do you know where this libuhd3.10 comes from?
Is it pulled by something or do you have a previous UHD installation?
/sbin/ldconfig -p | grep -F libuhd
should help you find where is located "libuhd.so.003.010.003".

Your package manager should be able to tell you if the file belongs to
any installed package:
dpkg -S "$(basename "PATH")"

where PATH is the path of libuhd 3.10 reported by ldconfig.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
