Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ED24C9D6E
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 06:34:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7E61384638
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 00:34:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="RmnYaP61";
	dkim-atps=neutral
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2050.outbound.protection.outlook.com [40.107.92.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 4BBC0384563
	for <usrp-users@lists.ettus.com>; Wed,  2 Mar 2022 00:33:31 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfxSSr3G58/UyTuQdvrT4Cy2lPhD02dLdza/6kok+SjzJxnwIh/lhmBQK6Tg3Us67QSAu5uHJQusYZ6H+QCjfC/BrBOoS3iJaBEfKe8/T3gQFCGAXdwsVKE3BgprrsNnCDiVRVer3UgLCSCbm9GYnQGNeJmOduuKv34woo/bNPJ5cysk8S9+YOFxDD4A1Jy21gmLIEViP7yy5K9WMp8+d0ltefkBEfmASr0924CzNv7e3ra3vsra/mPCQUgRMHqnHPlgGZABuuZ52b//MCG9BhYLrRX77hyGWFsf7Y9tESDrH4qrYyxdR9qkjkoXGuqBdfC0v7JmDVNE1KVvQaFuhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RycC1xE+7xeoCQGQloHv9uU09Ne+qRqhttZGC2ZE5hI=;
 b=Wy44r2XUwvVabls1ascNQc4/7uqjLp4EKQi3kbBjpj549X6u4xFdihbrDWGUG7Mq7jTFaqsG7hIwLWx/3i2oBvhnW8XB3P6dNTwDOcTIluoDRCZe/ZORhlV+kZmeiPMSzXGcX0/j6ChIkhIYZrG4n2N7f6PTljKHcpl3RGxN6cW5cCAbA/vyKvAhFvUoOojwVBGWphuqFfjyApYgKxROpEES5h7zMZB9CvUsTuf4NZcfz1i1KCelD7As6t2oDd01T6JQJlyRjOHRFGyOmsdwg0Uqb1G7VeU00Qvu2HE5gyObh4ZUQRrBc9FFwO0ilzRs5ia/++9433EfUDe7q6sktQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RycC1xE+7xeoCQGQloHv9uU09Ne+qRqhttZGC2ZE5hI=;
 b=RmnYaP61meW+fVYLy8awIVmPEjEuHJGLyWASb5NHAZvrN1D5tWbF+at7bD/6jhGnyhJBSqY4w5KvlTQRUjqCciP6FuYov/QldynHDeiGK0lTRQ80QYxoUJ6L2MyPJwCcDC+BdskPcIO13SfyGVfYXqE0BaODzCAGsXYh7IzoZcY=
Received: from BN6PR16MB1700.namprd16.prod.outlook.com (2603:10b6:405:20::21)
 by BYAPR16MB2822.namprd16.prod.outlook.com (2603:10b6:a03:e9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Wed, 2 Mar
 2022 05:33:30 +0000
Received: from BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::895b:e239:fb85:9291]) by BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::895b:e239:fb85:9291%12]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 05:33:28 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: single flow utilising multiple receivers with high sample rate
Thread-Index: Adgt9O9LQahBt6bST06gwNL8f1d/iA==
Date: Wed, 2 Mar 2022 05:33:28 +0000
Message-ID: 
 <BN6PR16MB170007FD7537DF2A793E2D27B9039@BN6PR16MB1700.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6c74854-cb95-4732-d8dd-08d9fc0e2e86
x-ms-traffictypediagnostic: BYAPR16MB2822:EE_
x-microsoft-antispam-prvs: 
 <BYAPR16MB282243EE6E2B0DDAAAAFF340B9039@BYAPR16MB2822.namprd16.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vHYhb6c+dAv8WPgVjIFosNFi7qWXxT1ndtAPjdLcrHwznmQehnDnH0ApziGHnZK2QjSG8oYMYRI8EkQUBmV6nnuuYOa0MURxPX17TasvveFlPP/acI8HaiN9L2vyJD40rSsHsloqouMBnjJXobZFf+1lYYinWdQUlAmI4McDlV56HxyMi5rknvNCFNGYuZYpv431aXyAGyUh1A2QUI2FfJooF0QCnDgPCrfbbDvHNR9V8yvsGKrals+RxHRFtAzv9Fn8BUV0cYTYFwbWwRsAqzDMvWDSgPq6UAMRGF0+WURxb1h2PRdsr2tCX4HU8sG/WS9RtPKA4/pcym2OvoY61gPeKv6Ng+5W8BxFwe2cKyIAXUZMRytbytayuAk6c2ZkfvCQBwnv1ARv7a0dXazndduHJFMU+wotcU0L3EM4BqFRqtFaAiuddBQ1pzRtRQTWpxVFExDub5pveqZbjK/KNPsoHQz/zIQgadSU3g4uM6Yywx9gDUfS9QPxP5l683sz4LTkpl/hJ7cLnsMDklIUn/AGAKNWNXbzeTGh0xplAxAZu9QU0mOawW1qKlDIUUAVCFeHbGZyHHIF66bv86YeAQ3jHDqE7QG4+ygRTFhlAccjo4cmgJpNF946Lk2WnPtp6QWu3Jhb1yzeNttYrc9+WirFzyfeUmSzb4BhtF4itDdyiWM+v6qm/SdM9P2GCikAaakP0JGLbCjICbDx6jGSgQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR16MB1700.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(346002)(39830400003)(376002)(366004)(396003)(71200400001)(55016003)(508600001)(5660300002)(8936002)(52536014)(66946007)(7696005)(64756008)(66446008)(66476007)(66556008)(76116006)(8676002)(6506007)(186003)(6916009)(122000001)(38100700002)(33656002)(26005)(9686003)(86362001)(38070700005)(2906002)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?pO2BM1P/HW5hSiiPbLZWUBIbf3moIrXscHf4wnMr2x4WDyYmv5F6gBcyOZBL?=
 =?us-ascii?Q?PP6tOclRotIU4HqYkU4Zpf61T9mPyuu9aS335BJbLw/0vEHa/YPePRE1xH4T?=
 =?us-ascii?Q?jfYtclEr5drAxUR9kMMRpKU9rI8qLnXQ4d6NeKkhYouMckaLvwlUJyS07q8P?=
 =?us-ascii?Q?RBZLck1bTOVaheSZHAZ/6F0AIi/vaLOUbRA7oINMWg8hqu/Zl8P1QiadNzog?=
 =?us-ascii?Q?4pXsM+M4fhs2S4er2HzAvz8AUexxNPrLzQrQjUP3Cx+6r2L0dT2wOakgsSfG?=
 =?us-ascii?Q?OeYFHwkveQr39UShnisSKlSII/LhnKjYLf94mIM6KBU/jcHx0cCRyiXeWdpr?=
 =?us-ascii?Q?KiIYuB1VQa1rPlFDANd0Szo2/Qa14pmgHDTgt3Xi7MW0GM3rU8CTIh+r/sbz?=
 =?us-ascii?Q?q3oA/z3CrKRXKgdKU+68RQp/QGngFzKsrqS7DScHd8vbA7CBP3Zv8iKzufu+?=
 =?us-ascii?Q?N8nRU6IfVyIl8IzTzMys0G4+skj+vRUPxpJPUhc/14lUWInQyRCB+LJkc3iH?=
 =?us-ascii?Q?4VWl/pkxl/eU8gvt6A8NmPdEaYBan2dYKihBscihX9dWPkT9yyvKMRMmdPUy?=
 =?us-ascii?Q?W+UHw/xW6J5OVZNj1sAWzieTJZ+rEe7EAk7BKF+pwXAnqsWcjI0SAx+iaxY4?=
 =?us-ascii?Q?evz/HZTP10HY293IF/3h5bBbAEvJpQ28YE6D5GEtgnFfQHBobPbsHIXrrpHR?=
 =?us-ascii?Q?EFp37r9JVHG6/FcBZ5GM1qWDmceEvSFjh9hl/3zCu64ukXUWZW0vRiBrKE81?=
 =?us-ascii?Q?UvUap64OrbzzW17bFnFSNuEEIGKfCpFAOgmoSXHTUC4B+aTL9CkrlziSM3kB?=
 =?us-ascii?Q?6wk9lyCO9tYrJcsAzPuRcjnUnxqySA+V2DY5OsFi4jG9XQf/PYvGeBQlQ9hj?=
 =?us-ascii?Q?/D49CVGRiaC5zImoFFxxp61j0MXUQUMtngnPpd4l1aiswXyztnDTo+9T/VTD?=
 =?us-ascii?Q?h3AB9rUdS/3EkDL4A06H6WlLlja9u3acfwtHx6XRaEiY5INiW85FheGZHYGA?=
 =?us-ascii?Q?zofVVe8CjKXCzrU/bp0BSARu64CcRkjzSoElxBBTrRCjKU1lqgXAZCQszcPl?=
 =?us-ascii?Q?+l76SZTpKV2Z1VDO66RIiAXnbfpmy2+XgIwy0dxnvTPSrUGfI97M3TDoxTUN?=
 =?us-ascii?Q?C3D1vBfGBm8O3IgtCY5hqzoy6l2kLTybvOdi+wZWK7uwWxz+eZieXwgUbrTG?=
 =?us-ascii?Q?nvb3fmz41fGzxMoMfj+Nj5pwdgpcuLA0TdFA9RqPYKfeEchOq+ygUHyLEWZz?=
 =?us-ascii?Q?ZHImTVEmyl144GlHD7OKKpQxVS0rbnvk8qzKRUEamsCC5EFfRsYdD4vhbDgX?=
 =?us-ascii?Q?Lx7H24YGoBb3X7YMV4Aveo4WkSkik6zc0w6d4M6BUD34FfNIR0XCynfeYFow?=
 =?us-ascii?Q?0U9gijwl/ixVsVhKs3PyHc3w3SUExYibfIy5S25py0ebqrtHU3VNhsVmB9Wj?=
 =?us-ascii?Q?ox2oyfu3Ws8ivVNVM2m8hipw6Vne/lMsOhfXzp6xYz6aVaCtoUXqpLjf9nav?=
 =?us-ascii?Q?bmFJfmSgGofD50i4OM78qMxs1p6DVTbT796TMizBuYKfMdCZA8DXX+Y2Ari8?=
 =?us-ascii?Q?KcekEFXFXLqjl+1VOGFTB7194W5At45n8iqCvCFI3iMND6PDR6U9jDf6J6O/?=
 =?us-ascii?Q?sw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR16MB1700.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6c74854-cb95-4732-d8dd-08d9fc0e2e86
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 05:33:28.8091
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8WLXK+jEtCIoCZiTwA0IffGKZTLCLTHfNsaD1PhLQpqmYVAlT5GEQQulgGq83ocTI+3F4AOImCyZp/Q0NAd7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR16MB2822
Message-ID-Hash: VFXTFFMHLHP3FDLHF3K5KFSWWSRF52W7
X-Message-ID-Hash: VFXTFFMHLHP3FDLHF3K5KFSWWSRF52W7
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] single flow utilising multiple receivers with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TQJ3RXVOLYBV54ANN72LIO77QNGQKKLC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hi.

My setup is an X310 with a single twinRX installed. I am trying to get 200MSPS off the device from both receive channels at the same time to one PC using two 10GbE connections.

The radio has been flashed with the XG image appropriate for gnuradio 3.9.0 + uhd 4.1.0 which is running on ubuntu 20.
There are 2x 10Gb  SFP+ modules on the radio (happen to be fibre) and an Intel X720-D2 with two 10Gb SFP+ modules on a PC and two fibre cables spanning the gap.

I can read at 200MSPS from either port - no problems.

I have created a flow with a uhd source that has two channels. I have set the motherboards to 1, and set the address (addr0 & addr1) to both of the ethernet addresses  that I can see and operate individually. both channels are driving null sinks for the purposes of testing.

when I run this flow I get the following error
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph : RfnocError: Specified destination address is unreachable
with a meaningless traceback following.

Is there a way to do what I am trying to achieve?

thanks
JP
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
