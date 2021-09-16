Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EAC40D151
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 03:41:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AB753843ED
	for <lists+usrp-users@lfdr.de>; Wed, 15 Sep 2021 21:41:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=Rurispond.onmicrosoft.com header.i=@Rurispond.onmicrosoft.com header.b="Pk3kmZKj";
	dkim-atps=neutral
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2061.outbound.protection.outlook.com [40.107.220.61])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A4A73843D0
	for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 21:40:37 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HlU1IDFNVooKK/X5bkxikie1D97rx57VKwrzqbgwVjyTEw4gxpikci618fmKAmkCqmpYQWTWvw8R2G02N9XzP8gP4544lCJJ4lLFDki3JFeNPgQgSTjdrCPRxMno28OtQv/M5l6bQu/r5ZUGdKHhvt+223e5BX3CXyApMDq/omH6QsIk0KxKQCKhJ7FD8s8G66ESK0y258RmCZipIL/HS1Q7bkWVmmHsYpoTd9SbG7dMtdEl/p6rCrNfV+6h3/sJiH7bAyyJNekgfxPsvcVizcHmKuV6UGe+ns1sqE5Ur9EAPSWNlPkIEvDiyR00LeUWYuSmbjVej0ysflGCFljZ9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=0IAlgh2ZQmogcw/9B7ZkqwEBbSYS85U87Ioka0pSymc=;
 b=B2BQg+dfwjN10dnFE3djeqIvgQAE8kpcfJQEqnbCEVcho1YNTQ1UHVkbk0VLGGqjFTVjP/YaOlBkELEroNZ+bSUIn96ZYGeRkTlL5hLqho/jVR3FPUhIcqDljveSHLal6pCyeg1CX63ww4ZvzikvcOc+/CQI7znsQ+JqfvfV+FhWeruXFUVaUSnFqquDf3Vf2oJLtZtY8gYrpm8rTwKiuZrH1KTbVWiOY0TNs3fBGo4tOevFl/kJRrI4yk6eH7BmMcHzz/h2/4BXeokbnZvS2snXGA81fgg3bZJjLUkWHth7GytERcB7Y+9Ad3YnJfEkSgA5TM2fSkx8guYro0AEFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=rurisond.com; dmarc=pass action=none header.from=rurisond.com;
 dkim=pass header.d=rurisond.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Rurispond.onmicrosoft.com; s=selector2-Rurispond-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0IAlgh2ZQmogcw/9B7ZkqwEBbSYS85U87Ioka0pSymc=;
 b=Pk3kmZKjJ3zNaGiIq7aRC5Xn4IKL66znwMr+S/ULRoSAcE6vVYNx3H1gqGHzrsujWx3dicmfY6DhjIKSb41WJ0NbUxgBDFDG+kug8zj8VBomzjhkovQ4YWzmwzbO5OkFZ5ksW8aOGUfmaHgEXblpdXFH6Hed97E8GatU/MGHUNU=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=rurisond.com;
Received: from MWHPR11MB1742.namprd11.prod.outlook.com (2603:10b6:300:113::13)
 by MWHPR11MB0080.namprd11.prod.outlook.com (2603:10b6:301:68::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 01:40:34 +0000
Received: from MWHPR11MB1742.namprd11.prod.outlook.com
 ([fe80::29b0:f39a:ebd1:430e]) by MWHPR11MB1742.namprd11.prod.outlook.com
 ([fe80::29b0:f39a:ebd1:430e%9]) with mapi id 15.20.4500.020; Thu, 16 Sep 2021
 01:40:34 +0000
To: usrp-users@lists.ettus.com
From: Tom Riddle <triddle@rurisond.com>
Message-ID: <82a8e974-82b5-8f96-3fa3-f66b66ed4e02@rurisond.com>
Date: Wed, 15 Sep 2021 18:40:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Content-Language: en-US
X-Antivirus: Avast (VPS 210915-8, 9/15/2021), Outbound message
X-Antivirus-Status: Clean
X-ClientProxiedBy: BYAPR02CA0070.namprd02.prod.outlook.com
 (2603:10b6:a03:54::47) To MWHPR11MB1742.namprd11.prod.outlook.com
 (2603:10b6:300:113::13)
MIME-Version: 1.0
Received: from [IPv6:::1] (2603:3024:2113:f800:5d3c:2fb9:1bdc:b262) by BYAPR02CA0070.namprd02.prod.outlook.com (2603:10b6:a03:54::47) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Thu, 16 Sep 2021 01:40:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 169a9b69-e8ba-4c44-362a-08d978b2f9a6
X-MS-TrafficTypeDiagnostic: MWHPR11MB0080:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB008083933BCD9839A7D5028FD9DC9@MWHPR11MB0080.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BIv0auJL/aw/fU484epSp09vF+8jqrAcikIqe61VoV3fVTvicaE08OZi1C3C9iMVw/SOlXvqIIQOyFoqBNm4KLeP9MlQIG/wf8D+Ay+FUgc+LYGWvs8Dr6rARHZTkJWIXdDTEHj+XTOpJ+0psZI0g0tKLEpbPjpWmB24dtvlnUDAnHQ4DFniP9BPDKxITWMGFwYI9BE8OOy/N/6O3mfQxgKYQ+gyTRYRPUH6oaArKwmxGJ2BAUGJe3WgwFwXW1WadO+k347SGaxhz7mpo9X+UDlvwOWxo0u2BKTeswRcBdJaBs4/dgQeszUNIreYYcXUOgfDHIOBqgJ9PAKLVZlMmFaI7oar2/T7/YeyfaiA9kMdga0m0hBYNmuQMDa0DpQge8BAObG8kHTZl8J6uO/3Ici2AgeP9IqjxSbSYztZ3SFEu81/yzb0cYzHLYPW84xlqMFOOr3aP2UWLlVjQ0139DLpzcqPUfnyWPZf2gKFJVphdUcjdcbF/OILaGrb7LneoGyStUV/khQNx+TXmA5GjRXV+49gBOiiz4pweLi75yfpZq8Pnq90fYtSpSwlr/WtFjkCdyejPTvlqdd643AeRiYIO4FR5gOWsnV9+oA1rl5NMq1Yio3rPLrej6h1OJ3DrXjdPYvtbs8u1pgvOgWypsqkaO7Vfkd6pkgc87LKGX0LT+QZ1hu7JrCehSVDGPJvkOii2a/9vjytRjij+9Gy8ODrHvLc8AImG79ITIoK9qI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR11MB1742.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39830400003)(366004)(346002)(136003)(376002)(2906002)(478600001)(186003)(52116002)(31686004)(66476007)(66556008)(4744005)(86362001)(36756003)(8936002)(6916009)(38100700002)(2616005)(8676002)(6486002)(316002)(5660300002)(31696002)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SXFNWm1uait3enFPblo3eUlYbEM4NjZVMFVZUHoyOU1UTmovaTJzMVl0OGRN?=
 =?utf-8?B?VTRzYVVIWUdYVUVSQ1BtUnZycVBGSmg0eUlFSHB0ZUdyWFNKN0Q1TkNjUTJU?=
 =?utf-8?B?WnJkNFE1VWhXemZYbE8yRDFLV0hGMFVvakVid0QxdGxLbmJleTFrNDQxN1J3?=
 =?utf-8?B?ZldFbzM5WjlOZmxmT04yZEw2S1NDL2FjeU83SWIxQVBhamlQY0JWN3MyMDRC?=
 =?utf-8?B?OHFNcThxUlV3enNkR3c4QVA4QThrdHlZWjd2MFVJYjN2RGlZT2oxM1puWWNY?=
 =?utf-8?B?dkhWQVVhajg0aWpodnRFNFF3V0JMSVpKM2VIQ0xNbVptdFg3T1M1a1dxM3oz?=
 =?utf-8?B?Nk1vQlR4OE9vQURLUjdjUjZUWkt4djFjSlJGc0IyblhGY1lMTXJzcWgvQ1NZ?=
 =?utf-8?B?cTZSQXhmY1hLU2JXUXJwd3RFSktYU1VjUmUzV21UNWRDbTA1M0hwNlBYakYy?=
 =?utf-8?B?dWJhMUE3d29BUjlpdHBFeS9CbHBlQlN3UVJEb01KUWVCRGFFRUhPSXhkNWg0?=
 =?utf-8?B?UUErZlNpVE1vdk41ckl5WnVURkE5RmN0U2IrVHJVZEtidndzc3RRZUxGRUor?=
 =?utf-8?B?YzArZ0VuSER5Tmd0Ty9MK1VmSzB2dkhIcTBDQkZNdnZDTUlHQzJsdG5ZUS8z?=
 =?utf-8?B?SUlNRVdGYVhtUHd3cUV4ZlhWd3AwOTFrODAyaWRuMzdqTWVTL0hTYjdzU011?=
 =?utf-8?B?Nng4NXlOYmtMczduUmhDWlpmV3JuZCtsWDVaWGFTYm9PVkNpTVd0WjlHK0pV?=
 =?utf-8?B?VC9FaFdVbVIwamd4L0ZWZ3dMNnRRemVYbS9pZjZZam1nd2FtTk1qbzdKbmVE?=
 =?utf-8?B?NUVYcUI3cC9Cenc0cEZqTWNlZ0xwQXdhY0RscUh0UlVGNzROOW0wRllCd0Np?=
 =?utf-8?B?elR5WTRwaVRZNkQ3V1h5VHIzRlFyRnJLUU10bU8xckVTM3dGdHkySDZjdzNn?=
 =?utf-8?B?ZWFXZUVnYkdsR2xVaFEzOHdicUp5OXMzdWNPdkN6TnNlTkFyd2lFczVwMXow?=
 =?utf-8?B?Z055emtkSGJzSTZmdkg1UzVwdlhRTVdIaTVRcXEyK1hucndac0lnVEtLU2g2?=
 =?utf-8?B?WDNLNnhDRG1CZGFGMUFNazZNbzJlVjJGbkZpU1owTFBqekpaQmNmbmE1MHBE?=
 =?utf-8?B?bUNpT1dvMzVIQjZOZGxrR1MrclpVdkY0Qlh4cklmVStFNjhHOVJqT2ZNUXpm?=
 =?utf-8?B?dVR2aUZCUldWaHRiVkdoY0JVcGhoLzlDWTZ2ckY4SE1hZG9nWDR6Wis0eEZK?=
 =?utf-8?B?Z081S1BuTjhnclE3dGFsdEhHd08vN2dwVEV0OXBXcStPUmdsVGpTOGpDdkQr?=
 =?utf-8?B?QVl4MGNKdDZCcjFHYlMvQUpBSHFXZUFxMEF3N1ZHQXBGMFI1OEdEc0crL2Z2?=
 =?utf-8?B?cXp6U29keENsMnNvS1d4M1B4V2NjVHEwMWpYZGV2djl2a0FGZmx0S05QdU91?=
 =?utf-8?B?N2dJOHBVM3c0MlhpZFFZUHBOYzBnTndENFhSWlF0ajdId3BUTFdUeUtTSVBI?=
 =?utf-8?B?SkxRcnpYVC8rMUc2eE1nT0MzdDI0TmlqYUV4T09lbXA2K2g2MUtPUTNVa3kv?=
 =?utf-8?B?WG5FNW1VeStpOXE2RCtFRFNLakRRbk5sMlA4YmQ5MmZrTE9GT3ZpMVp1a2Js?=
 =?utf-8?B?d2lQK1ZhQ1JLblpDcjNCQUtVd3ZnZTVSaElIOW0rd2ZkQkxDQjV2WkZHOTBu?=
 =?utf-8?B?eE5SZlZKeDNPVHV1bFBlZkdvdXowWXJQVDZiWEEzdk9BVVFIWWpnNEhyckVL?=
 =?utf-8?B?U1RSQXUxN0tkempmcGxqTm1aeUIzc29yWnB5cldYMGV4c1RGUzNVbitqYlVM?=
 =?utf-8?B?Ris0OFgxS3VVSHlRK0JNMmdpMmgydEJSemdwMkhjZEFRZjh6MkpSR2xEWmND?=
 =?utf-8?Q?QKH8gheQe738E?=
X-OriginatorOrg: rurisond.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 169a9b69-e8ba-4c44-362a-08d978b2f9a6
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1742.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2021 01:40:33.9516
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 9eb5bc29-0eeb-4ae1-86b7-cf6b89d3c546
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6G4b9K4C7qmUYYW6QmCQgmhOCSRQZ2ekFtUwzQoyppiRMJw4/TahiW4lOmhDce+Ndxp7teCxzJ9o0QvpMZdVSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0080
Message-ID-Hash: QH5KAVQXLCNUWORUFK647IIVZYZNRETL
X-Message-ID-Hash: QH5KAVQXLCNUWORUFK647IIVZYZNRETL
X-MailFrom: triddle@rurisond.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 in Network Mode
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QH5KAVQXLCNUWORUFK647IIVZYZNRETL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

We have a couple of E310s w/SD cards that are running UDH 3.009.003. I would like to initially use it in network mode with GnuRadio running on a Linux Host. Either an Ethernet connection or even over USB would be sufficient for the current needs. I do understand that the performance may not be optimal over the network but that it can be done. 

We have installed UHD on a Ubuntu 18.04 host with version 3.010.003. The E310 DHCPs an address and the Linux Host can ssh into the E310 and visa vesa. Both usrp_find_devices and uhd_usrp_probe on the host return "No UHD Devices Found" but this appears to be expected from reviewing previous forum posts WRT E310. Addionally I was able to get an old USRP1 up and running from the Ubuntu host without any issues. 

Would it be possible to obtain the steps to configure the E310 for either Ethernet or USB setup. Thanks in advance. Tom  
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
