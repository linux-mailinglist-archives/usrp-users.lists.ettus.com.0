Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AFE4100B1
	for <lists+usrp-users@lfdr.de>; Fri, 17 Sep 2021 23:21:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C9AF384440
	for <lists+usrp-users@lfdr.de>; Fri, 17 Sep 2021 17:21:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=Rurispond.onmicrosoft.com header.i=@Rurispond.onmicrosoft.com header.b="JWnDAP/o";
	dkim-atps=neutral
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2085.outbound.protection.outlook.com [40.107.94.85])
	by mm2.emwd.com (Postfix) with ESMTPS id CF7D1384402
	for <usrp-users@lists.ettus.com>; Fri, 17 Sep 2021 17:20:35 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AAw0q7JWYTszy4Qok1UblREiOvKNjbfsqkI6RvS4wL1gux2dA+6mHT2vf5sZi9lpzdQCAjk/W15bpN9TamzwcBsMKDf/riU+ghlBKF2Ye5JCNlLHQ0GdF8EwczDBSK1uJxeYVBwh8wnUqAIr/UaHMsT/wmHm/OOKukChbCcGeP8KZQr06Vibobm3DdDJMUp5MHICQVIBYRNgKxQK8J+gYe42oBNa6gozf7vVG+qZ+M2rgv7agQ8V/zgrqF3yzY9W4sGC9kHwMawlHl2eJzQtm8FdfOuXUoBLNuC1uPYmTmSu0yjy/K4Rjgi5JbdIg+AlN4NZ0oIiFPdY83PW0i5CaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=AFuJNK9Pvlaa/CsIPWuj332fVU3RBUXlHBE0B1G7KOU=;
 b=H0UU+7xcB9ILyVmjisQR8lFqr4p244IX5mfW/a8O4/J/387LLYfmsJa0Ie+KxHX5ea99rMuniOVEpz4vSO2XRQJBwMHMuMFbZ97z8AOK0b1EfF4aVinAE+4WnECZlbGxxNMVM9c1pk3f83NySH662nvElYk5beSIYDvLuAyZYdYxqTw4wVwcS28tSaU65R/YJyblDMYfH6npn5NwzFKHrD31bXdp8j8P4cBRo0tspvznwsL/+o14Ys7gg/lh44YFTuYukwceXJdXn0Hn3RJmC/9PGTXtpjc6/Edd38f7Pr0SmpPsajJc9Vyr9iwHKujeJXLyn7xqbv77MYxh/uPRTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=rurisond.com; dmarc=pass action=none header.from=rurisond.com;
 dkim=pass header.d=rurisond.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Rurispond.onmicrosoft.com; s=selector2-Rurispond-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AFuJNK9Pvlaa/CsIPWuj332fVU3RBUXlHBE0B1G7KOU=;
 b=JWnDAP/o3nqfw36aP5h3RLQZYMXGxw+PreKFcDAKzXEBozSuS0RYxsQVX1kVtET7GBZBaxR2X5z42stNzLiK5bD3SIeOpKw2t0X+dLsdXbCOBHg33S3S+jaVTelaAlz8iKyQR6X+pAzj/fQcP1+FsV4BFgSrqLWFfZ+SgAAnToU=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=rurisond.com;
Received: from MWHPR11MB1742.namprd11.prod.outlook.com (2603:10b6:300:113::13)
 by MWHPR1101MB2109.namprd11.prod.outlook.com (2603:10b6:301:53::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.19; Fri, 17 Sep
 2021 21:20:32 +0000
Received: from MWHPR11MB1742.namprd11.prod.outlook.com
 ([fe80::29b0:f39a:ebd1:430e]) by MWHPR11MB1742.namprd11.prod.outlook.com
 ([fe80::29b0:f39a:ebd1:430e%9]) with mapi id 15.20.4523.017; Fri, 17 Sep 2021
 21:20:32 +0000
To: usrp-users@lists.ettus.com
From: Tom Riddle <triddle@rurisond.com>
Message-ID: <4c01dabe-99c7-8fdc-1c7f-130c400ff95f@rurisond.com>
Date: Fri, 17 Sep 2021 14:20:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Content-Language: en-US
X-Antivirus: Avast (VPS 210917-4, 9/17/2021), Outbound message
X-Antivirus-Status: Clean
X-ClientProxiedBy: BY5PR17CA0031.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::44) To MWHPR11MB1742.namprd11.prod.outlook.com
 (2603:10b6:300:113::13)
MIME-Version: 1.0
Received: from [IPv6:::1] (2603:3024:2113:f800:ecea:64fb:5828:e10d) by BY5PR17CA0031.namprd17.prod.outlook.com (2603:10b6:a03:1b8::44) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 21:20:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5d06d9f-ba10-4e82-02dd-08d97a20fb71
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2109:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2109892E2D3FCD2A6D78898DD9DD9@MWHPR1101MB2109.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vu1vcn5q3yzSNV7q4h0hel/1OcnNe0tDXa107y8Q1nFCpe5VJjMvRCfKdLRR4+k+/3Owa3fE+KCHfT5hYus4AZ46LwPweBqwMVRxOV+SHY36274N52SdeirBV58SGm8+64lRfluTCW/5xaHqIYVI+VdZ7XA7p4neYbKBt4DDr1JA27YB47UMS9GiU4cWNnjCunjb4qL8JswZ9wuHSv3YVu6eW8d0NwC33ulCo7Hdbo6F3XeBChjaHwgdv1U8sUFS8E7PtC2Lu/Rca36ci6cA+nTHsUWxCS6KJ/usSIsMEUDIaRycyGalr3s7eHK3+oRjy+LyM1UF+GS9iSfKHJpkR1oi3ZCmM+Haec5SvC0WkE0KAns+Yo9b8wttlG1yG52t1b8/1OWrAac7Y5mUemOjAqSdr3UPxVn2x9URlpw8mAhm3Bj+a32ohHzLQ0uV/pM9ZZnryOzsYE1ViVqDVfnmYNcN92g2pzrTB+qM8wlPACmVgZmFKxGcAvk/dAalXK/uzbMFClXGKSoT2anoj1V6iDobf7s/c6TEw/Bs9vwftzNrBp3UJij7x0VqbFJMNtZuBtUwTxCAHGC2TZ577PxTph0/Gbf0jgZDwDS8P2Mp9islBw/l0c17iWXJiZujlCJaJEXF7I9RU89+33bJXeiLWRRfXUfwXf9yU5uHqOAV+SJLXFqcoTDWMwTFNT7fDYz2stj/0z0qVUNcrdhs+tzXSO+2mPvDJGulyY6oFsHKBgI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR11MB1742.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(136003)(346002)(376002)(39830400003)(52116002)(186003)(66946007)(508600001)(83380400001)(31696002)(2616005)(2906002)(38100700002)(558084003)(8676002)(6486002)(31686004)(66476007)(66556008)(8936002)(5660300002)(316002)(6916009)(86362001)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VEdVK3ZOa25JUTVrM2U2UlhDZDVhUmhkTjRNWVJoblVONFRLakJOOGpGcnBD?=
 =?utf-8?B?bTBQWDMzekZUa3g2KzBEL01VNWZySkVJa1FnVTk1d0V1MmVCZ3ZESENLdjRY?=
 =?utf-8?B?MmhDV29rSW9qS0l1WlRyM0NYeTdiVnBTOWRaWjBXSDVpOU4rMjUyUmllbWZX?=
 =?utf-8?B?MHdnSjVVVll0VTdQMVo1UXh2QmVCY0RzM0hOUitmdmgrbTV6cnpYc3pnQ2Rw?=
 =?utf-8?B?b2xKd2Q0YTYxc1BiL3Y5Ymx3TVQzQlBzb3RXSXovR3RTK2hQUlkxcHJvdmNh?=
 =?utf-8?B?Vys3cVRKb0NKRGVzenIxUGpLQXh1RjcrSkl5ZHFVR1BwTkFnelo4WjBNU3Ew?=
 =?utf-8?B?WEJmTGNBQUIwdU9mdFFUVFBwdGpvWmwrTVkxcUZuZE1Da2dtUU9hbmJqRStl?=
 =?utf-8?B?d3RCZVRrZHJqclNzdGNXbnhvMi9NU1g2UnFuYnl3bVNxUEs0MHJNQUVGWWJ5?=
 =?utf-8?B?akdxY1F0TXVEYWhXcEYrQmI3SXQ2VDdnR255cXhPOXh5em90cEpoZlJMM3B4?=
 =?utf-8?B?cDNSK1I2T2pqSEZRVmhoUTR4NHlpNlFFZVd1ckxzaXEvMmRkYlpnT2VLVG4y?=
 =?utf-8?B?ZmxHd1cvSlJvRkNhSFRmQ2h5dERub1ZtNmk2Smxrc1YxZ1lMcHJ0bVg2aHdX?=
 =?utf-8?B?MU9BV0ljeFdCTVdrQ1J3b0tZb2ZUcUNRMWlxelhOWFN6bTBabnVXUUltS3ZF?=
 =?utf-8?B?Tk5yZXR1YUIzT09jODVPVFhSN2lwaEtqeUpodXp3cXF2VHcrNXladHpWbHRR?=
 =?utf-8?B?OUNWUldlUFVnbzlHS1lQYkdZd28vWUR2L2VvN1JZRmNUcG9hRTlzbHZUNjls?=
 =?utf-8?B?dHV4SXc0ZTdJS3lRV3Bwaytpd1k4YjI5N295ZkpzR0h6eGl5RHdETlQ5WnFT?=
 =?utf-8?B?Tml6R1VSV04rUkNudm8yd2I3dEdJYWZoRm5PMzhaaVZud0UvZnpLcGNld2Ft?=
 =?utf-8?B?SVN5TXZKWEluc2ZDZEZmdU4rSjhYN2Y5MmVMZEp2aXQvdmdRSjE2VHFzeHJI?=
 =?utf-8?B?QTBOSSswVE5QVzlSanhjeFFZaWhhekhxbm1ZTTV3U2FMMVBHenF3ejVVblpo?=
 =?utf-8?B?eHZWMHhzOE5wazVlelI2UTRQZndmTTZQTTgyTDZxa09idEFiNklFdml2QUZ2?=
 =?utf-8?B?REFFTVNJRVpBQ245K2ZaWWVYdVA2NFhvY240U2t5ZnVoYUtCQW92YndoSUJz?=
 =?utf-8?B?VVpCcWF6NzhyMzFZZnAvVERvLzI0OHlUUG91TXNPa3hUZlBXZ0Z6VjNsMGs1?=
 =?utf-8?B?eW9mVkl3RGxuK1lMTTZQUHh5clBCZ05BNXJVT2ZFTldncUdyZWxaNWtFQTZJ?=
 =?utf-8?B?VngvZ0wvOFlicnFiU3IrYlN1YWcxTldjRWIvU09pVnZvU3ZEVi84V0FEMG5F?=
 =?utf-8?B?NlRodFBWNkVuRFEwbTh6SStvSUV1UXcyLyszcXhVUjdXeTYyb281TEhnSWJW?=
 =?utf-8?B?eSsxRWpFSEZMVXZ5Qkp6eHk0eWpwRDdLdnhjYkk1bWJ6QzMxWjczUG5oQTd5?=
 =?utf-8?B?bG5QU3R5U1pWSlhMTnAzamc4c0xBd3RFWnQxNDYrMWN0bVJXRVkrSzZmclFq?=
 =?utf-8?B?bElUUHhpZ0ZkR2dQQ3JIWkhTSEtBVjM1YThubVQ2ODlVblJTZ0REK0xmRE1F?=
 =?utf-8?B?dktXQkwzc2dHcURyc1EzSkNpQTYxTWxORGZ5Z1FmV2lRUzRITVZmQ0pVRTM0?=
 =?utf-8?B?dWgwN3h3SnRUelIzNGs3STZFbElMaXRsQmI0c0NMYTUwNlZSL2ZmU1ZUWDg0?=
 =?utf-8?B?M3dWVkx2NStsbUNaOWNSYml0aUh0cGhiUzh3NWFnQ3VtT3FWbFdhakw5OXFi?=
 =?utf-8?B?cHozVFYzNWpPMW9WMUZlby9WVGRXYVlMNWpxdGN4OWI5VFNRVFM3WmM5d2xC?=
 =?utf-8?Q?3jAvZ7MZYvwwc?=
X-OriginatorOrg: rurisond.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d06d9f-ba10-4e82-02dd-08d97a20fb71
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1742.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 21:20:32.6685
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 9eb5bc29-0eeb-4ae1-86b7-cf6b89d3c546
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HUdZMcVZyXa5ehQnbS4Qd4AWrAtsLgDpsi66KlK1EHMwGL8cFcTJrh6+B905Fc3bLmOcZG/wvyStNuGjwmWWAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2109
Message-ID-Hash: PYHG2MWXQBQQ2NBNOERQSSNUCY5OFKED
X-Message-ID-Hash: PYHG2MWXQBQQ2NBNOERQSSNUCY5OFKED
X-MailFrom: triddle@rurisond.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Upgrading E310 to UHD 4.2.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYHG2MWXQBQQ2NBNOERQSSNUCY5OFKED/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I've upgraded my host side to UHD 4.2.0. Can someone point me to instructions on how to update the UHD to 4.2.0 on my E310... thanks in advance, Tom
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
