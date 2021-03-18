Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E722340919
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 16:43:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B679383047
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 11:43:42 -0400 (EDT)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (mail-eopbgr20133.outbound.protection.outlook.com [40.107.2.133])
	by mm2.emwd.com (Postfix) with ESMTPS id BF3C2380AC4
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 11:42:39 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=edb17Io9dTfKK2+zVUF8mY4VpI9janB1Q3bT08MBc/5/XRIAmayCMB1Q5yqwJxAchOM1rTX9TTHiPak/DDCQu7E0qSeMqMeEmvtzix59OPtqn1vcn2fm7WJl7Ow7fVI4+P2DWe6n5C4LRx6Iu3EH+W25vEHCqcSD+v/COPWInTxf33cxQQOfaHkrC4/Q2DvL2Y/2MHuOtaXpVeoWvX7eqOR9OFJGiCeuij8+UpDU+/QQzwzP3tGKHPQds/jq61AFP0ey2eNCSZHVXSbJ+SN1hZL8SZ1MWDUktCf5DzFrQ3f0aiTeB8aXSfRczpMIxA5lsi93yThrlu8SliZFJOUUqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UU/t02Kpzx02QkZ6pE2PU8VUkzVaqgEUXIauh1FUaEk=;
 b=IbGYNG8yomnWPSQrebB9LjYQnINCLWyVxmWAcTpY+gt6gCcvvtae/ROCoZ8EL4jZzJW/AFl/11pGkme1ad6ZNDWYL4DEzqFAEjGhxWXwBaIRhpFcorZuPQD5RTwDx8lVSfIGT36r4hEu639ozISFoFo23p9WpreROExdjgvsxo/TwMOtuelKhF7pNwDLupSQfT8Kq3nzLJKg3ejNUPtdP0JIkJ/hDyPtgUqNONIclxRsqfwofwb4Ov5N5JFbNw0iA/GvjSMlB8dX1jnHkxcXyMPrNTSIiLknwGlLGy7XX+c7sa9AZVRVVIecFA2fAB7nJV6wM2GmgLF49d1RLx+Etg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UU/t02Kpzx02QkZ6pE2PU8VUkzVaqgEUXIauh1FUaEk=;
 b=X/IbqG71F6oNhswCmAzpku3RU7eUJaSbmACLUTR83JDI9e/J8ROUZuYpfHbekC3L1WQHbGSd83u04hMYQk+lzXr0/aVuhw/BOUBfFr6fJapVCK0+TadgQt9E4TWQFP1CFA8nuLJJ5GOpkY33hkIeCLCeXqupf1sIefv0LmVP/I0=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1255.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Thu, 18 Mar
 2021 15:42:38 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%7]) with mapi id 15.20.3955.018; Thu, 18 Mar 2021
 15:42:38 +0000
Date: Thu, 18 Mar 2021 16:42:36 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210318154236.krpa3jj7e3a7ycib@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <a27b1bae-35d0-d73c-460e-16b39e759d73@decyben.com>
Content-Disposition: inline
In-Reply-To: <a27b1bae-35d0-d73c-460e-16b39e759d73@decyben.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR02CA0130.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::27) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM0PR02CA0130.eurprd02.prod.outlook.com (2603:10a6:20b:28c::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend Transport; Thu, 18 Mar 2021 15:42:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74173a02-013c-423c-8b70-08d8ea247538
X-MS-TrafficTypeDiagnostic: AS8P190MB1255:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB1255B868B4E105661AA8E946F0699@AS8P190MB1255.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wIgZQsnMwjquFgizPXkmzD5zL/gHtdWQJVtGD+hrkx2QEcqkkf9S6ZH368aJXqLzdWE+IUW+1iGWRMoTitBolkyArueCsPPd3UanxzSZQaNABauQppUhMbtfWwHS99i7SSmvcEwZLWclvk9ewzxANVmKSscn/lWtiNPXsU1Kxwu+0EWA2GuJWdVLT/vgw5Q/ZGAUKD9jAaRT+d7NHOTHAQBfhGQNdhstBUze5x8Nw2uswUPUY/1IC/B4jH6miY/eS1VwrvE10uBC9yWFGz4bi9U2U/yWjk5tXq+0sBGrJcQ6Twg4uiPZozobvMKPPrsBhnzQNScnsj9qJi0g3d86PtZv7CJEg9ddGyBNNOHnPk8/LSe8TLepsrXE8NPUvmxn/9xK4vXD+mkYhvO65dmmXchoJ/3D7BUTB2HQCexVgzmtKU08vrZLqpp/ET0ahXV18BTX01QYj+522YojG2ogA6T0VXaC6KgaQgjteMZYU5UNDTGSe70fzMakY1mMqVvd/n/LVen6/swO21kRKky0WFtKDnN0t9MpJGZLoMXPlFmov6QfIt3bighQOuhDvVgh0imK/m02r0xGysiltE3/KwvduuUmnNwDAlHSDfBHD6nacRdgvAgbMC04I7msDz3+Vp0MdtOyJia6K/OBGRCSPeFzacnZnrpuLVzhww7Z7Lr0v4kyyzuq7YOvZqjQ1Pyn
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(39850400004)(396003)(366004)(376002)(346002)(136003)(5660300002)(316002)(1076003)(9686003)(786003)(33716001)(52116002)(6916009)(6486002)(66946007)(4744005)(66556008)(66476007)(478600001)(956004)(38100700001)(8676002)(8936002)(66574015)(186003)(16526019)(26005)(86362001)(83380400001)(6496006)(2906002)(966005)(53546011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?sxUkGlHqhqm4mdSMuAL7usNXUCZKoC8JdxOA3kUn4LHA43Y4VU5CfB7eVz?=
 =?iso-8859-1?Q?8ImGPBqXoLPyonju+I4ELUfV206OFaWmBdtEdlV0jXShUarU8EpVtHARLw?=
 =?iso-8859-1?Q?4PvQgN27pqOLG/E8kspRGVuJ0BD24GIVGG7V+WVMb0UJITx835cap5LizD?=
 =?iso-8859-1?Q?lC9KfKpq1kAdkp3uomgiBc5xD0Hh/dQVk7AK7YSxrNIsL4ssejL9ab09d2?=
 =?iso-8859-1?Q?UuJSmzqCRTOpjE6ehI5lN3ZL8IMmuxLfWPSzm6fnLJC+V4YlSBRGbYKa7q?=
 =?iso-8859-1?Q?OdRKCEQLl/dbdTHe3Hzkjap6eE8n1lVdQpLRt4ORNXWWJcgvyLeVuJcrVC?=
 =?iso-8859-1?Q?pIe7amSBIduNiMtWKQHbh2p7ldNu/PZHOf7iX3iOLSrjgn8Jsl/abm5ssr?=
 =?iso-8859-1?Q?YTK5og2KrMME2TF9DKWwBu5o+gvRCMkFSrs+QBLya/zqXv3I/5XJpaw+me?=
 =?iso-8859-1?Q?Lsqq4b9zx8imSIUAaddCEV7l3NwPvS8k/U6gVjFkX1rf2JAepQTN909Qxq?=
 =?iso-8859-1?Q?+D10M7SfmAf1i+hCpFsYrKZl/PFRTaxeUMw/CmzjZGrvEwLLp4l/m5Asvr?=
 =?iso-8859-1?Q?b7jrQwgm6VD9tr9wdwkjI0Q2dTzJxCF9vd72pmhfVHPevmEmcuze7Wyc0S?=
 =?iso-8859-1?Q?RzdFzHLS2Ejk5VmiDBwXFzEDgwIOawixDvOoZ9RhMpb0XjjBFazB5SXvkg?=
 =?iso-8859-1?Q?38ZOlOJFIGkkxRS2+kV9uVxofFWqHyoaE+7OM7o71nRgLmYWAm7esjuZIK?=
 =?iso-8859-1?Q?VN2jm62yMqR6AcOefUwCU6ehmET1jiwIOR86/FU5/OsKEx4cOjzN5vqDRn?=
 =?iso-8859-1?Q?gAFqChj+lC1EaHhY6TvNAW8Y+L6uO9pcH0cJm0OAwMFZ3MjJNr9Ln2d3d1?=
 =?iso-8859-1?Q?glODqypwvU1I3OJLpggy29VFZlAesb1PhubJJCB+FNTxlfXKlKyb9H5AUx?=
 =?iso-8859-1?Q?AV9HdGdks4//sM666lebAZ873JokQnFsGyRA1bzVDJ4Op30iVGkaoR909u?=
 =?iso-8859-1?Q?vIHmt8/c8CZ9nBw3B1QjkrHnFAWkEnC+bqQolM7oW40fJhb6PGdRf3H4BW?=
 =?iso-8859-1?Q?WspA6yeZthVDhvXkyKbcE9qiukDYXjzM+2/Jl8O3LPUBcj6hREY4SwqGzT?=
 =?iso-8859-1?Q?y8iHA8p3yZBV3VYXCMvA6256RE+hjY5JxAw5eFMbwbBP/gHLc+5PcBJ2BU?=
 =?iso-8859-1?Q?coyJGkx2s9uaD9aLkjHLXOVsSdHa3UP/JtEyTMG1b9udlc+RtwmpZ+htfy?=
 =?iso-8859-1?Q?vKB1jGWHH0hPiAeBP0pOtTG2Jzp3F8ThhgsVmdw1x9pZCfYhBMbYwPYzoA?=
 =?iso-8859-1?Q?8o58gjSFHjmRkGXhAal7SudQ7/C/zzH7rigrgyyrCsMQhXEFpAo21QduS3?=
 =?iso-8859-1?Q?kEhrYRKAYZ?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 74173a02-013c-423c-8b70-08d8ea247538
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2021 15:42:38.1627
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ra3rKEUw684TK3OcjsI2kopPLXoGkvf9DDO92OE1pNM8iy8a85josRKjKCbaLlQolJJ2GcNzrh5VTJ57dg1ryQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1255
Message-ID-Hash: CFILG5GLXHK62XKDWVOD4SMHYUD4PAT7
X-Message-ID-Hash: CFILG5GLXHK62XKDWVOD4SMHYUD4PAT7
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: broken link for usrp-users list archive
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CFILG5GLXHK62XKDWVOD4SMHYUD4PAT7/>
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

Hi Imad,

On 18/03/21 16:16, Imad-Eddine SRAIRI wrote:
> I was trying to access the usrp-users mailing list archive and it seems t=
hat
> both links found on this page
> =A0 https://kb.ettus.com/Mailing_Lists
> which are:
> https://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> and
> =A0 https://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/
> result in a 404 error.
>=20
> Did anything change and this page needs updating, or am I using the wrong
> URLs?

It seems that Ettus has changed the frontend.
The new URLs are:
https://lists.ettus.com/list/usrp-users.lists.ettus.com

and
https://lists.ettus.com/empathy/list/usrp-users.lists.ettus.com

However, I cannot modify the kb page. But I am sure someone will.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
