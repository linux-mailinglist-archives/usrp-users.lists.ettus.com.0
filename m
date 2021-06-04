Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F34239C185
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 22:43:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2698384A6E
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 16:43:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="ZtS+7pRV";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id 8592938440D
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 16:43:09 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.50.13])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 19EAA120066;
	Fri,  4 Jun 2021 20:43:08 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id AE90C440076;
	Fri,  4 Jun 2021 20:43:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CeA17EpIPhwnzjgJwctm3YnfrdWPjDsS0J32XPwZ71M19wCxf4a+TCpjrQPvG1hDwACUr6saX5Pcpd/AXWTwAPhYefxL6t6BxwkPsbfeBguoWzQ8MoUjKNXxAENtZ33KaI4mYHd5G+8f268iBeOe06u47AlcDx51FChBdDWZV2Nud8bKrRnYapjOWkr+tr9zQsPqeFImgSKnMwiqFMS5E4w8g5bQzdlU2XH2Fj96uKlLOZ+eFu7a5RG/1Ts/0qJETXBQHfaTdDh8ZcC0MsHuscgq7ULKV+0KGcVy3hVBviaq47gz4UCCjiLKUzCOd5aPtOYMSDKsQND+R6ENAjl3GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vd1SEo5Kwzga7eBXzy/+3GLd5HljQRRmWEjUyqqMbqg=;
 b=BrmffGG/HVKVwZQF+GMsz7m8lxziw09Mtn47sYZf3msUHQB+EEHcYRfUXFKK+iKspg/rADBvYjPq4zdchoy62HvT2LPyiDvAX0tWNcNE+12XV1yVrdXyWh+4+cGhX7QeA+i5/AsH32iL4Ac7pOljzV5Ge8squzAiIMmwA9foOJH00Zk6werXT3qPSE5GjWhw0khOenirMH4hsRlbYASZhdO4imgRm6IOiai0G33pHABIBhuMmsE5Na1pwlR2DpaMEOQWc63QrQK9dQHRErId6Q/XLUyxxbtZsu8ZpO25sFINAPv4LuVWWsWersv+aKgOkxnPBP9Oi21mEAOPGcspCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vd1SEo5Kwzga7eBXzy/+3GLd5HljQRRmWEjUyqqMbqg=;
 b=ZtS+7pRVxeoqVvJd2PZ3ajqRe/PygkFF1MGmd1k/rBPGBqCXTZ67gFsdoicOo25HCBo/zWH50EnDRtHjlr2X1o2Hb0vmGhdK/9QpYagsNwJZvfnUcZqj2FoFKbvn5RWG0qmHVSCpBixbYPCtTNmpSKnPMJdd2+ECiCCzp5LAUzI=
Authentication-Results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
Received: from MN2PR12MB3871.namprd12.prod.outlook.com (2603:10b6:208:16a::17)
 by BL0PR12MB4995.namprd12.prod.outlook.com (2603:10b6:208:1c7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22; Fri, 4 Jun
 2021 20:43:06 +0000
Received: from MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::3d98:b4f9:79e4:bcf4]) by MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::3d98:b4f9:79e4:bcf4%5]) with mapi id 15.20.4195.023; Fri, 4 Jun 2021
 20:43:05 +0000
In-Reply-To: <CAGNhwTM8J-x4L7eRvarjb2qzNc2=CfrEae2X7-YZ4ywfCWdYxA@mail.gmail.com>
References: <MN2PR12MB38719D13ABC60C01624DC1BCAF3B9@MN2PR12MB3871.namprd12.prod.outlook.com> <CAGNhwTM8J-x4L7eRvarjb2qzNc2=CfrEae2X7-YZ4ywfCWdYxA@mail.gmail.com>
X-Referenced-Uid: 13839
Thread-Topic: Re: [USRP-users] Troubles with the QSFP+ on the N3x0 series
User-Agent: Android
X-Is-Generated-Message-Id: true
X-Local-Message-Id: <d76c077c-d91b-49cf-8111-8ebb65cfb180@gardettoengineering.com>
From: Jason Matusiak <jason@gardettoengineering.com>
Date: Fri, 04 Jun 2021 16:43:03 -0400
To: Michael Dickens <michael.dickens@ettus.com>
Message-ID: <d76c077c-d91b-49cf-8111-8ebb65cfb180@gardettoengineering.com>
X-Originating-IP: [2601:14f:80:4a70:1c7:751e:1b87:daa4]
X-ClientProxiedBy: BN6PR22CA0038.namprd22.prod.outlook.com
 (2603:10b6:404:37::24) To MN2PR12MB3871.namprd12.prod.outlook.com
 (2603:10b6:208:16a::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPV6:2601:14f:80:4a70:1c7:751e:1b87:daa4] (2601:14f:80:4a70:1c7:751e:1b87:daa4) by BN6PR22CA0038.namprd22.prod.outlook.com (2603:10b6:404:37::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20 via Frontend Transport; Fri, 4 Jun 2021 20:43:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 62f6878f-d7e8-41d5-8f59-08d927995ade
X-MS-TrafficTypeDiagnostic: BL0PR12MB4995:
X-Microsoft-Antispam-PRVS: 
	<BL0PR12MB4995842970EBADB8FA7E3673AF3B9@BL0PR12MB4995.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gO30MICGOcJgeg+9XyrrcQzY+sFupQbXAYVHT2+9fyZVctl/IRvtr+z4AXmoqO/ECfBaQQw0+BLXanJ7g7JAQbDZYGC7X0RzkP6NkPTnHcn0VhU7Pc3K/V8df/D0XZdORJW37p92MHwrGNUpH3mQgDHTuMmqji1BKyDagML0TTMbJ5OTCxMhj/ECmi/+83Uy/0uvVHRrZLE9jQj3ytdhdo7T6xKP5fVTe84stN02CRs37NqxMZ2fXSBtzUTO6Q8iJSnulnrJwsly/WchUsLeIADHK96r5rjg+KFZrsAp4W3/OJE5ve+A+FTlhcTHckIIZg2uJspDMKdrewGJrMO5CRZzt/p411fi2mVO6gERrT6SqHVKlH1gP6ROymB/yzP+YusegN2JmiB2Br6MN1PBFb5/CkJLD0kUVMzP9fsVxAXgr1G9mvB83+lacd+7ovad1wjCPYIxzNOyMKMn1mKL/e+XWb9df3ncB0pREs8qUhkHtQMLaFUaMQcH58HFVG8++wrcPhaSRCd40af5/CrE+F66Q0yzQzNvBaCZ/99UL10WU0x3G6tqvSQxuF7B2OwK2W4t00MfLTBubkIjAs+cntFmCo/55b4MgtsPcic3HNC1kvKOF8eUNMGVB9zd63AEMjH0xRXCrC6xz1IrY7yKsgoGhrf1bpmp3Ju73aeB2e8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3871.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(376002)(346002)(396003)(366004)(39830400003)(8936002)(5660300002)(8676002)(53546011)(52116002)(33964004)(186003)(31686004)(16526019)(316002)(66556008)(66476007)(83380400001)(66946007)(6486002)(2906002)(36756003)(478600001)(6916009)(38100700002)(86362001)(31696002)(4326008)(2616005)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?aFFOa1N0R3VJR2hibW5mSnVYR1BHYkxleUhpemNBQ0Z6cE8vVDdONHZPYjIz?=
 =?utf-8?B?YnRLbXZPVjFXaE4yK3RmNHNBOEQvOVBGdGdWbDZQZmRvVTNvNWZsekhVV28x?=
 =?utf-8?B?UXQ0NHBkMnREQnhocnpYcWZoSjFlcUFUWExPL1lqeWJKS0Fsekk2dm03dnJK?=
 =?utf-8?B?ZE0xWFhiM0ppTmlEMklxTlJhcG84MDNUNnpxMjFYcXNJOVZSSjN4US9QOG1N?=
 =?utf-8?B?UWpQenlabmF2Vkh5VE9YSG9HQmVpeGZ2QURSbVlkYmhXZmEyb1hoeTNIR0Ny?=
 =?utf-8?B?NXU3eElnQUtoV05jNEhjOEp3YUp1WFRrVHhJOTJSUmlkWTdRMjBVN2FMb2Iy?=
 =?utf-8?B?RllIMXNOVmxTbEV4U0pSN25WMGJabndhUk5yR3k0a01scU0rTzJWWmVkd2NB?=
 =?utf-8?B?TGsvVWJWZ0FQeXErSWU5a2xnM1FEUEk3QnF5M0x2ZnhaVDA0ZkJWd0toV0V4?=
 =?utf-8?B?SUtwcDlmSzlqR1pyKzVIdEM4eUF0ZytUd2JOdmhtNExUZGdrN1JhWFhSTFFE?=
 =?utf-8?B?VjBLZHAzY0RFUXRjbjRhbnBVV0N0SDBJUHdoTVNNWlIxTXlCZElsVm1jZWhB?=
 =?utf-8?B?akJGZ2R4RWRkdlU5bncyWWVScnYrRlFvV2h1ZVhYSDgrRUFqb0N6RnEydjVN?=
 =?utf-8?B?SFVicy9qNFlnek9MOTN1bmJmc2VtVEpJL2tnOFJGbUp3dHE4MjVZSldWMHdI?=
 =?utf-8?B?K3kyTWxYZ3A4a1JpUkI3RkpwekFHTzlGMzJGRnY0cS9XU0poU1ArdUJVSHVI?=
 =?utf-8?B?aGNNakszamMzdnBIK2hEdWJwUXliK3l6R3YzVlZwRTQ2R2xsSkhHL1l3aDk5?=
 =?utf-8?B?SjdvNWVLYWlJTVQ5VUxHNXlGN01yTHdVRFBudWR3N3gyMFZvWGNrMEY2YWtv?=
 =?utf-8?B?ZCtwSkNKVlRhWWRDSFlyZXdZdFpFcG5wMk9wR1NZRXBBVlk5dHVKSGplZVRL?=
 =?utf-8?B?YU05R0RFdWRCbjF0UUxET291amlFWE1wUUZROWM0QllsbTUzNTVLZ1UwdmE3?=
 =?utf-8?B?TVB6MjcrNmNOdmNtZmhkVUlob0dJZGgrRzgvdmRja29YdHBMV3ExOXZSWng4?=
 =?utf-8?B?NFZ4dU8wQmhScDVJbHVINklNVUFlL0tkOG9jUmpRUVc1Z0FCSTdEbEs1Vk1x?=
 =?utf-8?B?Z09zRUF2d3hUT3ZDcTRrU3JRRkVKQTJwOWk5MCtEenNqbUdDWHFKWjZYd0ww?=
 =?utf-8?B?U2JOWk4wbVp2ZzJ6elgyOGtTcUVGWkx5S2ZWcUxvaGVOeit6eGtHdll3amlN?=
 =?utf-8?B?UHZ2UE1jaWFuWDFXbGhsR1RjcThtQU5XVUYvb0lDUmk5SjdRbjRBOHhwbU1C?=
 =?utf-8?B?VHJ6d2VZaXNaNGo0b0NYdUJrNkRsMnFuUzEyTU16bGd4S1V2emRMMFhmUm5r?=
 =?utf-8?B?UXZSYThXS0padDVMTXJmQ2pITFcySlllTHAzSWo4OU9Fa2w3WGgvcThXYWFj?=
 =?utf-8?B?VDZEa2J4OXdPaTNoeDdSRmE2a2ExTUcxWm0rVUc4b1F0OHZqVVlJMjBNZnRz?=
 =?utf-8?B?RDBUeFpjdnNkbmNlbWFhSTJMTU1kajExNVpZWElERnRUaCtHK0pjMkdYRmZR?=
 =?utf-8?B?c01hT3UzN1dCSXNyaDNVR0xpaGpVV0Q5WndxRXEzMUpBRE9KdzFucGtvNUVH?=
 =?utf-8?B?MnFqUXhsQks1WU5wSTdmejVvL3h4TUhhSUZVc3llay96REVSajFMZDVMaWkw?=
 =?utf-8?B?UGhmRlJmM2pwS29KSzEzbmpyb1EyekFITkNUZEZNdU1wSktXWFF3SGVkQk12?=
 =?utf-8?B?VVRDMU9HRlF1b2xMekYzTjhzYzhXQnFCRXgzYVJaWndwak1jc1YrVGVRTStl?=
 =?utf-8?B?elp2VmxxRkZSTlVFUG5TaU1UNldSSjR4aW1LalZ3ckcrZWhTeDZCeW1OSGoy?=
 =?utf-8?Q?k8Dr5t1MIzUrQ?=
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62f6878f-d7e8-41d5-8f59-08d927995ade
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3871.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2021 20:43:05.9110
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LlU5bLY2HSgHu7RjgcisCe1FHEiVfGMGfZ1FNB+IMAtJ8lyTOIf5fPD2dgvob63ZuDVC+gposmFnq7aveCMr1gcpU9WMtjQCrAxnKvzVKNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4995
X-MDID: 1622839388-4jBCz_o8Kfm0
Message-ID-Hash: IK7SBJDM7XTN5F55AGPSBYOUOMDWHHFN
X-Message-ID-Hash: IK7SBJDM7XTN5F55AGPSBYOUOMDWHHFN
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Troubles with the QSFP+ on the N3x0 series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IK7SBJDM7XTN5F55AGPSBYOUOMDWHHFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9116503469027337534=="

--===============9116503469027337534==
Content-Type: multipart/alternative; boundary="----N74CJ3VY6SEL4EQKJGT4UT3Y5T1IJ1"
Content-Transfer-Encoding: 7bit

------N74CJ3VY6SEL4EQKJGT4UT3Y5T1IJ1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=UTF-8

Afternoon Michael! This is exactly the info I needed=2E I misspoke when I s=
aid WX, I meant XQ=2E

After putting the new image on, we knew the /data/ d=
irectory still had the two sfp network setups, but we were expecting someth=
ing in addition for the qsfp=2E It makes sense that it doesn't //need// to =
change since we are only using 2 lanes of one, or 2 lanes of the other=2E B=
UT, what I couldn't be 100% sure of is since white rabbit needs Ethernet as=
 well, why wouldn't THAT be the sfp0 configuration, make sense? I'm not wor=
king the white rabbit side, but I understand it to be ip based=2E

Lastly=
=2E If we go the pure Aurora route, I know that we lose white rabbit, but w=
e gain a full 40Gbps, right?

Thanks again=2E

On Jun 4, 2021, 4:18 PM, at =
4:18 PM, Michael Dickens <michael=2Edickens@ettus=2Ecom> wrote:
>Hi Jason -=
 Answers, and more=2E I hope this is useful and helps clarify
>the
>options=
=2E - MLD
>
>1) The N32x QSFP+ port/link/interface should work with UHD 3=
=2E15 via the
>XQ
>FPGA image=2E I haven't tried that in a while, but it di=
d work for me
>once
>upon a time=2E
>
>2) When using the WX FPGA image on a=
ny N3xy, you get just SFP+ port 1
>for
>data, which is just a single 10 Gb =
link -- not the QSFP+ port (which is
>on
>the N32x only, by the way)=2E If =
you use the XQ FPGA image with the N32x
>then
>you get 1x or 2x 10 Gb links=
 via the QSFP+ port: lanes 0 and 1 (or 1
>and 2
>if you count lanes as 1's-=
based)=2E In theory you could use 2x SFP+ 10 Gb
>links on a host NIC and ag=
gregate them via fiber into a QSFP+ adapter
>attached to the USRP; I've nev=
er tried this directly, but I can say
>that
>taking QSFP+ off a host NIC an=
d switching lanes works fine using the
>appropriate adapters and fiber cabl=
es and connectors=2E Just make sure
>that
>lanes 0 &/or 1 on the USRP side =
match up correctly with the other side
>coming in (whatever lane[s] you cho=
ose to use, so long as it/they are
>valid
>on the NIC)=2E
>
>3) When using =
the WX FPGA image with an N3xy, "ifconfig" will report
>back
>just "sfp1" a=
s the 10 Gb data link that is connected to SFP+ port 1 on
>the
>USRP; not t=
he QSFP+ port (which is, again, on just the N32x); this
>single
>link is se=
t that up as you would any data link on a USRP and host=2E If
>you
>use the=
 XQ FPGA image with an N32x, "ifconfig" will report back "sfp0"
>and
>"sfp1=
" as the 2 10 Gb data links, and you set those up just as you
>would if
>yo=
u were using the XG FPGA image=2E The FPGA maps between the data link
>(SFP=
+
>or QSFP+) and the OS, so that the OS "sees" 1 or 2 10 Gb links; or
>that=
's
>how I understand this to work =2E=2E=2E the end result is the same rega=
rdless
>of
>where the mapping happens :)
>
>
>On Fri, Jun 4, 2021 at 2:26 P=
M Jason Matusiak
><jason@gardettoengineering=2Ecom>
>wrote:
>
>> I have bee=
n away from USRPs for a while but am back to using some
>N3x0
>> units and =
am having some issues=2E
>>
>> 1 - Does QSFP work with UHD 3=2E15?  We'd pr=
efer not to go up to v4 yet
>due
>> to some issues we've seen in testing it=
, but I am not sure how well
>> supported QSFP is on 3=2E15=2E
>>
>> 2 - Wh=
en using the QSFP with White Rabbit (WX image), is it correct
>to say
>> th=
at the QSFP link is really x2 10Gb links, not a single 20Gb? 
>Meaning
>> t=
hat we would need a 40Gb QSFP that can handle 4 10G outputs,
>correct?
>>
>=
> 3 - Lastly, I cannot find any documentation on setting up the QSFP=2E 
>I=
've
>> downloaded a new WX image over Mender, but I don't see where/how to
=
>> configure the QSFP=2E  Is there an article or writeup anywhere that
>wal=
ks
>> through the steps?
>>
>> Thank you
>> _______________________________=
________________
>> USRP-users mailing list -- usrp-users@lists=2Eettus=2Ec=
om
>> To unsubscribe send an email to usrp-users-leave@lists=2Eettus=2Ecom
=
>>

------N74CJ3VY6SEL4EQKJGT4UT3Y5T1IJ1
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"></=
head><body style=3D"zoom: 0%;"><div dir=3D"auto">Afternoon Michael! This is=
 exactly the info I needed. I misspoke when I said WX, I meant XQ.<br><br><=
/div>
<div dir=3D"auto">After putting the new image on, we knew the /data/ direct=
ory still had the two sfp network setups, but we were expecting something i=
n addition for the qsfp. It makes sense that it doesn't //need// to change =
since we are only using 2 lanes of one, or 2 lanes of the other. BUT, what =
I couldn't be 100% sure of is since white rabbit needs Ethernet as well, wh=
y wouldn't THAT be the sfp0 configuration, make sense? I'm not working the =
white rabbit side, but I understand it to be ip based.<br><br></div>
<div dir=3D"auto">Lastly. If we go the pure Aurora route, I know that we lo=
se white rabbit, but we gain a full 40Gbps, right?<br><br></div>
<div dir=3D"auto">Thanks again.</div>
<div class=3D"gmail_quote">On Jun 4, 2021, at 4:18 PM, Michael Dickens &lt;=
<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dick=
ens@ettus.com</a>&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"marg=
in: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-l=
eft: 1ex;">
<div dir=3D"ltr">
 Hi Jason - Answers, and more. I hope this is useful and helps clarify the =
options. - MLD
 <div>
  <br>
 </div>
 <div>
  1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the X=
Q FPGA image. I haven't tried that in a while, but it did work for me once =
upon a time.
 </div>
 <div>
  <br>
 </div>
 <div>
  2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 for=
 data, which is just a single 10 Gb link -- not the QSFP+ port (which is on=
 the N32x only, by the way). If you use the XQ FPGA image with the N32x the=
n you get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 and 1 (or 1 and =
2 if you count lanes as 1's-based). In theory you could use 2x SFP+ 10 Gb l=
inks on a host NIC and aggregate them via fiber into a QSFP+ adapter attach=
ed to the USRP; I've never tried this directly, but I can say that taking Q=
SFP+ off a host NIC and switching lanes works fine using the appropriate ad=
apters and fiber cables and connectors. Just make sure that lanes 0 &amp;/o=
r 1 on the USRP side match up correctly with the other side coming in (what=
ever lane[s] you choose to use, so long as it/they are valid on the NIC).
 </div>
 <div>
  <br>
 </div>
 <div>
  3) When using the WX FPGA image with an N3xy, &quot;ifconfig&quot; will r=
eport back just &quot;sfp1&quot; as the 10 Gb data link that is connected t=
o SFP+ port 1 on the USRP; not the QSFP+ port (which is, again, on just the=
 N32x); this single link is set that up as you would any data link on a USR=
P and host. If you use the XQ FPGA image with an N32x, &quot;ifconfig&quot;=
 will report back &quot;sfp0&quot; and &quot;sfp1&quot; as the 2 10 Gb data=
 links, and you set those up just as you would if you were using the XG FPG=
A image. The FPGA maps between the data link (SFP+ or QSFP+) and the OS, so=
 that the OS &quot;sees&quot; 1 or 2 10 Gb links; or that's how I understan=
d this to work ... the end result is the same regardless of where the mappi=
ng happens :)
 </div>
 <div>
  <br>
 </div>
</div>
<br>
<div class=3D"gmail_quote">
 <div dir=3D"ltr" class=3D"gmail_attr">
  On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak &lt;
  <a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@=
gardettoengineering.com</a>&gt; wrote:
  <br>
 </div>
 <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">=20
  <div dir=3D"ltr">=20
   <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:1=
2pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
     I have been away from USRPs for a while but am back to using some N3x0=
 units and am having some issues.
    <br>=20
    <br> 1 - Does QSFP work with UHD 3.15?&nbsp; We'd prefer not to go up t=
o v4 yet due to some issues we've seen in testing it, but I am not sure how=
 well supported QSFP is on 3.15.
    <br>=20
    <br> 2 - When using the QSFP with White Rabbit (WX image), is it correc=
t to say that the QSFP link is really x2 10Gb links, not a single 20Gb?&nbs=
p; Meaning that we would need a 40Gb QSFP that can handle 4 10G outputs, co=
rrect?
    <br>=20
    <br> 3 - Lastly, I cannot find any documentation on setting up the QSFP=
.&nbsp; I've downloaded a new WX image over Mender, but I don't see where/h=
ow to configure the QSFP.&nbsp; Is there an article or writeup anywhere tha=
t walks through the steps?
    <br>=20
    <br> Thank you
   </div>=20
  </div> _______________________________________________
  <br> USRP-users mailing list --=20
  <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>
  <br> To unsubscribe send an email to=20
  <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usr=
p-users-leave@lists.ettus.com</a>
  <br>=20
 </blockquote>
</div></blockquote></div></body></html>=

------N74CJ3VY6SEL4EQKJGT4UT3Y5T1IJ1--

--===============9116503469027337534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9116503469027337534==--
