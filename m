Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA305B8662
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 12:30:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20A06383E66
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 06:30:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663151407; bh=dpkS8pSgha/84NCLwDGfpIyIoV6y1+wb+GqfoAcWDoI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nlB8AOk5tgtxOuYl1lHRUOZEoutDz12oua6ibvyebbEf4FPluUZ2N+GF9gBI8Bmip
	 u3ZHlBCFIegYaETA9iILzxKr8vGizr9HpvhIGYMcOhNIRd4bA6yLClzb8NwfFKwM6B
	 2evRyz2Cymrp95v83JdBR6hqUZLfVZA4HupxB7fo1DnASAB7Fj5peDYFTy7V89pXXS
	 Lh7LwDRc5Yx/yoB6E5anMiXtCkRnYZiX47/IZ9xmjTqw/GUZ51jlUSVtfkpQg3c3Jw
	 +S7hpWskaA9JtgbZjocnMhVWu5ACRCydYqgPQ51JiaiUaiW1N+uuvFizvYHT6IRYRm
	 lhB4z1cU3WFaw==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80105.outbound.protection.outlook.com [40.107.8.105])
	by mm2.emwd.com (Postfix) with ESMTPS id 72D9E383C7F
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 06:29:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=antunibremen.onmicrosoft.com header.i=@antunibremen.onmicrosoft.com header.b="vlC18gQ9";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMwXs99D04Y2stC8/EAgwIRBRY7cjKh6SLM97ipyOs+cMLw1l51a+4W49cY+8d1lt9QBJE5UnVF6VAUMRfGz1WtBxcT5F/Z4nnTG+mrVSMoDG+DDXowdXknOylRiEOtAzU4LKcCV948T8dUVpYXqbp9OMx82vmFpOlgNBRnFSFsUwqSJVmRUy1TD6E4kVtAkj6hDJaajqYX+Tjw/De2Wz3yvsIV41K2j/LWV/E0/nnPigxXMrYagoZSqwyshIDIdGaD9PSqAuksB+k2jIxixXsiHu6mSXmo4T7vnp6GDz9+Fc0teEK7qdIMMUGthMaOrSVGcRqyz1a8LzVfFTIo1yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RDibTJf/2l3RBwsLVDg0ep5K0VpC8blgK2zftdsgr1Y=;
 b=ZNwx0rLW+r7VObz6IwaGhcz4MpDSCW/HyIazMOrVxwPEYWNT/dgPRxvgkMgzW/JkevK1thRfriQnP3X6d5KroJuiEYDxODKBVCoYQtiCvbEfmYFSUQxc3L/LQwMdaRtXkof2CFduzKex9VhxBCiuDwZacqIf5Gbo7aT6u9jUTh5cjmUr452YQpj9WgK7VsJiECJDEOOWgdCSeS6Qr8UpKIXPd5AnEGqMJnghOPHvawYRW0jpvBIdPnWNl//WatqfMbTx6kAvJkPaiI/MT15qwMD7bTqxVYQoiiaQ3+FgadVRecYgQpUG1YfrFK2VsucMVk9DS5NR6fSFxmlZ9NiFDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RDibTJf/2l3RBwsLVDg0ep5K0VpC8blgK2zftdsgr1Y=;
 b=vlC18gQ92wuh8NC6Xw1SDoAWwe+JGDIUKj8apdBICM1FRRHN4OovY8NsuhkAMMt63Xmd6H6ErOSTAXP3av8WnDu/BLqEd5qQUNAXKbpvk1AihVtvI1ANp5406zuyGnUh7H5Iob8JYLEfFxY0YmhD+d5Z5HcDXbV80n+jw/rHlXE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ant.uni-bremen.de;
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::7)
 by DU0P250MB0866.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:3e9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 10:29:10 +0000
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::709d:a13:716d:3ae0]) by AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::709d:a13:716d:3ae0%4]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 10:29:10 +0000
Message-ID: <d5713f3e-aba2-69ee-cf38-7db901990d54@ant.uni-bremen.de>
Date: Wed, 14 Sep 2022 12:29:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE@lists.ettus.com>
 <71a13fb1-9c46-b596-caa6-397e672d71f4@ant.uni-bremen.de>
From: Johannes Demel <demel@ant.uni-bremen.de>
In-Reply-To: <71a13fb1-9c46-b596-caa6-397e672d71f4@ant.uni-bremen.de>
X-ClientProxiedBy: AM0PR03CA0104.eurprd03.prod.outlook.com
 (2603:10a6:208:69::45) To AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:329::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8P250MB0294:EE_|DU0P250MB0866:EE_
X-MS-Office365-Filtering-Correlation-Id: b29a4a5e-9a21-4c95-c2cf-08da963bf5e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FTEPa/8xr6jjr5xPg8hk/y+0twhLuOw2c2q0Of/K5TE99m5J5k9XzBN2SO7RzVA79ywpiCzgooje5/5E4HrlOXz0Gk/Z9mKJYNxBNDDsL5JCLqfJo69D/7nSlxSAO5xfVQGalQrS4w0bcheEMLeGrQFRB7vQ45zRzmXrS2jAS1SwOyveAkkqnZAQ51khyyVBNbxlOJqK/6oZAKOJiddDA2FXrbiP6kkcB9besZYymoYzQGIJwM76Gyij4YQd/l7ztajfJ9JwIt0o9Vb1x1nNALPfdbuI0YRBBKSmjSF7WOY15vdm1anDnExgMm0Cgv4uA/aPtEJN7sfi60r6o7AimhI8E+MmLMTWVUL+stKHdEI11gRVgxTlJEfyyzH9W4KKLcWoleNRQxOch5Evq6ptmZk00J801wMxmfdxy+NqhiaiqoW3uVMvrTXEmeE4EZOL/SuTL/hnmTSW6MJXUgHNxeHmj0rxxs+pkMTn2pgQZUWPq+5J9TN3vEJsmHKJQa5jhg+qTOnf2MEMOPcdzTZxU72aQnUfVfTr4HsxNIdMrVjNI+64XrdMnbeOs/KA8M05inC8E3Ctuey9FLDdIXExb6Vd2xjaWOsfs0iLB8uozZcV3HyYbevOAtkiYuYsOlDl4GdMGq3TwYbFg4zOMwSQOoN4uFgH5G2ouApOOlFm3+FGBEpPuGmsmgGO1s/MdW2HhfR0n8K//1UV5LORMXSuA15dHV+pXsNaJkJdaeUAcWijTYMtAS8NEPGFQE2A9uyR3NX7QPizR4cnSH0mD+mxJVGtRa6ygd60oipJ1Z3JxYO8GLd1GXB7ggS3EFK7AVtIiuW/LRiqpj7qcr0p/301bTspkfk6ZvWWFbsGQ6qSAVxNHsLeq5hmntpp03oIriQr
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0294.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(39840400004)(396003)(376002)(136003)(346002)(366004)(451199015)(6506007)(41300700001)(966005)(8676002)(86362001)(66476007)(52116002)(31696002)(38100700002)(38350700002)(66946007)(66556008)(316002)(33964004)(186003)(31686004)(83380400001)(53546011)(41320700001)(6512007)(2616005)(2906002)(235185007)(26005)(8936002)(478600001)(786003)(6486002)(6916009)(5660300002)(21314003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?czZNUTlmMElkVlczVjY4aFR6SXJTMFB3Nk9KUXFwN0dKVGhLSU5WSzBiTkJC?=
 =?utf-8?B?TEtwcE9HVHU2cm1pVXUzWXd3ZVNNRVNZdmtVL2ZlaEJuQmw1RUFLY2Ruekw0?=
 =?utf-8?B?R3VSdUVXTGFvNDhOdHJzQU11SGdwN3l0bHQvcUFEVVlIUk9OLzhVY2UxVHl1?=
 =?utf-8?B?emc5U1RFYVdUQUE1VHhRTTdzRHlaVkFuc3ZYQzRFTXhLMWRiK01lWTZxZjNx?=
 =?utf-8?B?d0FWbW44K0Juc1VaNnJ0eHdwQUh1K0ZXRnk1L2JNdDlxUE5xNXJKN0RPUXYv?=
 =?utf-8?B?aE10cTZZdFZYSTR5eUR5V3VMTjRTUGFSZlk4M0VHaFp4U3pFSHdjK1p5ci84?=
 =?utf-8?B?ZmpVb2lZbnc2NmdvMHBxSVR3ekh5UUJ4T09XUEpXMCtsWDFENitidG9ic1hJ?=
 =?utf-8?B?azRxKzlXaXk1VjJjTHF5L0tzMEc1THc4akNGc2U0MC85azVkeFQ4Z0NWUys5?=
 =?utf-8?B?VnlJVWU5VklKL0l3bFI5QWNuZENhMDRrcWt1QkFudnZLRWhIb0xkbVRrRkRz?=
 =?utf-8?B?cldMbzlXNGdFRy9BV0sxSThqOE1qVVpNUjB6YlhFRjluQ2FqZUJVMjc2eTRH?=
 =?utf-8?B?ZzdaOTNGMGl1VWgrN2M2c2dBRFI0eHZoZHBlaTlqenBBS2tUTHNXNU9LM0RL?=
 =?utf-8?B?Q2lIa3dJcXhwNUw1TDJONGFzZFY1MmdiNzUrdy9ZaXhVZC9ud3g4cUZnNkN1?=
 =?utf-8?B?dkNnWk9TVTd0dzlPYjhuL3c0c0RoL1ZrV2dxOTAxc3prTkpsQVhZMVIwbHB1?=
 =?utf-8?B?RTRQOUJSNExUc291YkZvWWZmbTdBZ3hKTlo2Sy9uallWWWRoZCtKR25KZVlv?=
 =?utf-8?B?NUpSUDNUWHNwbVRISitvL0N3ek1LQzNlWU5ST2lOMkgzeElGODdFZGI3VWE2?=
 =?utf-8?B?OFJBQnVzZmZSdSsrRGZhZ3MveE13c1A4T2lVcTVJcGtlRG9wc25IaFAycmhW?=
 =?utf-8?B?MjJjdHpOWStybHNhdFZwK2RCcUE4bU5GQXppdlB6Y2dqQndBMTlBdWVPanlv?=
 =?utf-8?B?VFJ4US9xNDY5YWx3aXhvZi9GUEdBdE1uZnBwVTl3WEFkSjR2VEFRcWxyQTZW?=
 =?utf-8?B?bzlwampWdFVJYzFhd1hFZFpUclpuRWxkR1hzcUVtSnNDa0V3Z1pPb2h4bnNW?=
 =?utf-8?B?bFMxOHlLeDNadFJvL1VHWmRtVVBEVkgwaWJyNGQ2QXd1RE11QU91N2g3Q3Rs?=
 =?utf-8?B?TEZtbEdYTXhnQVhZdVVHOVY0KzlncU8vSVBwY1hVU1RxUHF3cSsvOTlrUVZW?=
 =?utf-8?B?d3NrK3lIZmtuQkhZZC9IMXVXS0NROWgxdk90dlNGclpRSDkvcDJXTUtHOEFu?=
 =?utf-8?B?VndvT2taTGp0a0MvaHFNbTY0MjM0VVNjSDZJQXR2eUNwL1dnNEVML1NNOTI3?=
 =?utf-8?B?NWhXd2FhdEtORnAybFZwTDZyU2hjTkpCWndENTVTVzJ1Q0ZGMEhJK09NL25R?=
 =?utf-8?B?M2FOVXE0UWdiVHV3OG0xbUpLakhNelRHNGlSRWI1cklEbWdCOFdiNlg4L1VH?=
 =?utf-8?B?azFLNXNHKy9tTmU5THBleFFlZUJMY1h2dUt6TzZYcUVPWWdRUGZtYy84bStl?=
 =?utf-8?B?Ni9Sc0trRk90NFFhRTlUOFNIMjNCalYyaThnNmo0SFRKZ25waCtMbThWcTJY?=
 =?utf-8?B?UDlCMEFMbThiRStPZkJaaEJwQlppWm5aRDVhU2NOQy9aWExrUWwxTmpTR0Jm?=
 =?utf-8?B?OEptRkN1VUo2NVVEZnd4NytjaWUzbkRtOHVDY2wxeHVEWUlhMkF6S0pVVDNv?=
 =?utf-8?B?eG1TT00vclZtNkhLU1lPSXZGa2phUXBSZ211aTV2RlRJSml1R1I2UHBYcndp?=
 =?utf-8?B?UEVXQ04vTVZ0Z3czZnNQZVFoaTFHM0hTUzQxUzkxTjB6UDcxN2ZiS2FnVE9P?=
 =?utf-8?B?UmhNSVdQcGVjcW5LMG1NS1NWb0J5YTVvNDU5T1Y2VGE2VVo3NEY2UWxvdFY4?=
 =?utf-8?B?THdQa2VYUDBPSG9YUlhaWlk1QnRMWC9MN28wbm9xa2lDQkR3VjAzcC9vMEMz?=
 =?utf-8?B?U1R0MEZ5aVYrSGVhdCtDTk9KWkg0NlFqTlA1bUR6bXNXOWsxVWhTakZ0NE8w?=
 =?utf-8?B?eW8wL3V1bWxIVzgxUVNqbTBJdXVvU2VISkoxcnVraUM3WUIzOU9MaUtxZzFU?=
 =?utf-8?B?azFLTWQyU1B1RGJ4TjdPa01LMzJmWHlzL0ZCOEFMNVFoZENleGlMaVNOUVFx?=
 =?utf-8?B?NkE9PQ==?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b29a4a5e-9a21-4c95-c2cf-08da963bf5e3
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 10:29:09.9865
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TU9uwlxCuHZKQuWZXP87FQDnb9lFbxBEghAUKHKXpu10ABHtynloTFVgKwLkYx0SMfU0RwxUZJriZWClX+TdMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P250MB0866
Message-ID-Hash: OL7QFE76A7HWA72ETHUHNCVUDS7GMJ6Z
X-Message-ID-Hash: OL7QFE76A7HWA72ETHUHNCVUDS7GMJ6Z
X-MailFrom: demel@ant.uni-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OL7QFE76A7HWA72ETHUHNCVUDS7GMJ6Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1388035450580464273=="

--===============1388035450580464273==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms060702040607090702030409"

--------------ms060702040607090702030409
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm still trying to figure out what the causes these problems.

I tried different B210s on multiple computers now.

It works with 2x2 up to 24.4MSps. And breaks with 24.5MSps.
However, 2x TX+RX @30.72MSps does not work.
Also, 2x RX @30.72MSps and 2x TX @15.36MSps works.

I'm sure things use USB3. UHD reports it and the "working rates" are=20
beyond USB2.

I tried 3 different computers with 3 different B210s. I tried=20
UHD3.15-LTS, UHD4.1, and UHD4.2. All seem to show the same behavior.=20
Also, I tried Ubuntu 20.04 as well. I was under the impression that 2x2=20
@30.72MSps should be possible.

One of those computers has a 10Gig Ethernet card and I'm able to run an=20
N310 with 2x2 61.44MSps and more. Also, `htop` shows benchmark_rate at a=20
maximum CPU load below 60%.

My application runs continuously with 2RX streams at 30.72MSps. However,=20
it only transmits occasionally. I use burst transmissions in GR with=20
length tags. The aggregate rate would be below 15.36MSps. This=20
configuration works on all devices except for the computer with Ubuntu=20
22.04 and UHD4.2.
Moreover, in this case I can see an "O" reported whenever the=20
application transmits. Thus, I assume after a burst is transmitted, smth=20
fails.

Cheers
Johannes



On 09.09.22 11:55, Johannes Demel wrote:
> Hi all,
>=20
> there's smth else going on. I tried the UHD-4.1 and UHD-4.1.0.6 branche=
s=20
> and all cause these errors. I will investigate this further.
> I need to switch USRPs and hosts and see how the errors appear/disappea=
r.
>=20
> Cheers
> Johannes
>=20
> On 07.09.22 19:29, perper@o2.pl wrote:
>> Johannes Demel wrote:
>>
>> =C2=A0=C2=A0=C2=A0 Hi all,
>>
>> =C2=A0=C2=A0=C2=A0 thanks for your suggestions.
>>
>> =C2=A0=C2=A0=C2=A0 A few more details:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ryzen 5900X CPU
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UHD reports USB 3. With USB=
2 it would probably fail above ~8MSps.
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ubuntu 22.04 with GCC 11.2,=
 Python3.10
>>
>> =C2=A0=C2=A0=C2=A0 I tried 2TX streams alone at 30.72MSps. works. chec=
k. I tried 2RX
>> =C2=A0=C2=A0=C2=A0 streams alone at 30.72MSps. works. check.
>>
>> =C2=A0=C2=A0=C2=A0 I tried configurations with
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_recv_frames=3Dnum_send_=
frames=3D256
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_recv_frames=3Dnum_send_=
frames=3D512 Doesn't help.
>>
>> =C2=A0=C2=A0=C2=A0 The error pattern looks like this: UUUUUUUUO[D00:00=
:07.60063828]
>> =C2=A0=C2=A0=C2=A0 Detected Rx sequence error.
>>
>> =C2=A0=C2=A0=C2=A0 I tried
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 send_frame_size=3Drecv_fram=
e_size=3D8000 also in conjuntion with the
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_xxx_frames configuratio=
ns. But that didn't help either.
>>
>> =C2=A0=C2=A0=C2=A0 I will try to use UHD 4.1 on that machine. If that =
works, I'll just
>> =C2=A0=C2=A0=C2=A0 switch back. Otherwise, I'd get suspicious of Ubunt=
u and the=20
>> hardware.
>>
>> =C2=A0=C2=A0=C2=A0 Cheers Johannes
>>
>> =C2=A0=C2=A0=C2=A0 On 07.09.22 17:17, McKnight, Ryan wrote:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I have found after much tri=
al and error that adding the
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 arguments =E2=80=9Crecv_fra=
me_size=3D8000,num_recv_frames=3D512=E2=80=9D to the
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device string allows for me=
 to sample at the full 56 Msps rate
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 on the B series devices wit=
hout any overruns (tested using UHD
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4.2.0.1 on both Debian 11 a=
nd Arch Linux on various computers).
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I haven=E2=80=99t tried tra=
nsmitting at all though so not sure if there
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 are better arguments for th=
at. One additional thing to double
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 check for is that your devi=
ce is actually connecting using USB
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3.0, I have found a surpris=
ing amount of bad USB3 cables that
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 would only link up at USB2 =
speeds (check using =E2=80=9Csudo lsusb -tv=E2=80=9D
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 after running uhd_usrp_prob=
e to load firmware onto the device,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 should show speed of 5000M)=
.
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /From:/ perper@o2.pl perper=
@o2.pl <mailto:perper@o2.pl> /Sent:/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Wednesday, September 7, 202=
2 10:31 AM /To:/
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp-users@lists.ettus.com =
/Subject:/ [External] [USRP-users]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Re: B210 reporting U/O on U=
buntu 22.04
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /Use caution with links and=
 attachments./
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perper@o2.pl mailto:perper@=
o2.pl <mailto:perper@o2.pl> wrote:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |perper@o2.pl <mailto:perpe=
r@o2.pl> wrote: Hi, I can only
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 confirm that I see the same=
 result: 24MHz is working, starting
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from about 24.5MHz there=E2=
=80=99s a lot of underruns. My CPU: AMD Ryzen
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Threadripper 2990WX, 128GB =
RAM, motherboard Asus X399. =E2=80=A6 and the
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system is Ubuntu 20.04 with=
 UHD 4.2.0.1.|
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 But with UHD 4.1.0.6 there =
situation is exactly the same (not
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 working for >=3D 24.5M), so=
 if you=E2=80=99ve got it somewhere working it
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 would be worth sharing:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 you=
r exact UHD revision,
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 spe=
cs of your PC.
>>
>> If you could capture situation where it worked and stopped working on=20
>> the same machine that would get you much closer to solving the issue.
>>
>> You could write a test and use it for automatic git bisect (git bisect=
=20
>> run): https://lwn.net/Articles/317154/
>>
>> If it=E2=80=99s UHD fault this can show you first commit that worsened=
 maximum=20
>> transfer rate.
>>
>> Best Regards,
>> Piotr Krysik
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------ms060702040607090702030409
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
EaUwggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWsMIIElKADAgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYD
VQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hl
biBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRE
Rk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcN
MzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp1xCeOdfZojDbchwFfylf
S2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNMZj0cZGnl
m6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhfZZkQ
0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUkP7agCwf9
TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22MZD08
WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAd
BgNVHQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK
4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIu
cGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYB
BQUHAQEEgdAwgc0wMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1T
ZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9j
ZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21
rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCNT1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7L
n8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISoKTlslPwQkgZ7nu7YRrQb
tQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuEGMGpuEvObJAaguS5
Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7EUkp2KgtdRXYShjqFu9V
NCIaE40GMIIG2zCCBcOgAwIBAgIMJu9jPmW/Y3B2GzQvMA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRz
Y2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIyMDcxNDA5NDUyNFoXDTI1MDcx
MzA5NDUyNFowdTELMAkGA1UEBhMCREUxHDAaBgNVBAoME1VuaXZlcnNpdGFldCBCcmVtZW4x
DDAKBgNVBAsMA0FOVDEOMAwGA1UEBAwFRGVtZWwxETAPBgNVBCoMCEpvaGFubmVzMRcwFQYD
VQQDDA5Kb2hhbm5lcyBEZW1lbDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAPLK
kKSvj22LQSFvw4RSL6cwNiA+kJ2kQPRxCGF/Z8lJGbA9HJR+5rAa+1Jv6r00OfRPzSmToUL9
zJuDKdeZpmxDidBB0Upi47VFTVQP42/re5skc6kUAPsSXcK4CAxCVDxzxOdTSIAOYIS0f903
evw6bJUoY9zpBLyuZVE+P53vo4ZzaTA4GDIqn1jrD5jMcs+r+oAAR0wkvudYmB87rTxdk96z
WHGEv13gRnyOt68U7t0p4ICLFcFI/7t/6iJqDm2mVFcFRQkqJS+EtFg0k3/p2sxnygGJWk4o
1khxYUecHIBoIWSCtJNegHX2ubLj6+TGFn2+wufhmbiarvYmHGfO0RVDCWUbUGLZ8SUCv5rh
ed5YH2XBp6SuhcsGRnUHxb2DxfmZagBNcqfGejfy5iTON+d4K2PmEIX1HkQrMgJkRhPhf7AY
AI4XsyaJQlTI3j/BVprCORF1/TuQUnNkio96lFSMGVsY0V6VMzAnm2ZLCxobGWBNsZvSE0Oz
LxQyenv68K87xK6O/tYHSC1r3NOrnqr2o0+nnH4H0Qx4jeA4QtiedPQXog33PJI/isQhnKmR
i6lgVnR7i6k3jKjUsxQ1LBhMthg0me+n6y8qU6QJNUZpzgLi3qa1InXE9pjl9vhOE4jiDx3S
tSY9nKeC9qs48oufSQyRFdxD70SHGwNFAgMBAAGjggJQMIICTDA+BgNVHSAENzA1MA8GDSsG
AQQBga0hgiwBAQQwEAYOKwYBBAGBrSGCLAEBBAowEAYOKwYBBAGBrSGCLAIBBAowCQYDVR0T
BAIwADAOBgNVHQ8BAf8EBAMCBeAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMB0G
A1UdDgQWBBSDSIZCmtILeESKwIUu+QqBy82DIDAfBgNVHSMEGDAWgBRrOpiL+fJTidrgrbIy
Hgkf6Ko7dDAiBgNVHREEGzAZgRdkZW1lbEBhbnQudW5pLWJyZW1lbi5kZTCBjQYDVR0fBIGF
MIGCMD+gPaA7hjlodHRwOi8vY2RwMS5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHVi
L2NybC9jYWNybC5jcmwwP6A9oDuGOWh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZGZuLWNhLWds
b2JhbC1nMi9wdWIvY3JsL2NhY3JsLmNybDCB2wYIKwYBBQUHAQEEgc4wgcswMwYIKwYBBQUH
MAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NTUDBJBggrBgEFBQcw
AoY9aHR0cDovL2NkcDEucGNhLmRmbi5kZS9kZm4tY2EtZ2xvYmFsLWcyL3B1Yi9jYWNlcnQv
Y2FjZXJ0LmNydDBJBggrBgEFBQcwAoY9aHR0cDovL2NkcDIucGNhLmRmbi5kZS9kZm4tY2Et
Z2xvYmFsLWcyL3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDANBgkqhkiG9w0BAQsFAAOCAQEAcFco
hB8HTgETnX2eBmEF49U2ECKsg/u/NRogUPziHtAEH7JhmQ31gmmV+E7bVDPKHtljckl1aaDZ
1umf0RiOsxPLTgypvjYMfUTZ+dXMwxwxw1tkXrHvHiwiFCkFVDY9uXDdcXgMDLO2WvF8yHsk
2Hz0IZqDvHK+aL85fDWl33DcI2FYxg3InEboy7RrV5pBps3MlDy8cyn2B2WJmOe0kxuND8sh
2TRhyaO9eo8YyyFDNHMBoFi0V4KKBc1cfJP6FgcWmEki0SQIzz0LcK/MGpBtOI360idOL7n7
HcTMrVPLviBrWp/F3DGRyZZxnzVCtg2h41pk9oacM4BXWJFjxTGCBSswggUnAgEBMIGeMIGN
MQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERl
dXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYD
VQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJYIZI
AWUDBAIDBQCgggJdMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8X
DTIyMDkxNDEwMjkwOFowTwYJKoZIhvcNAQkEMUIEQE+j36/ccjVOT5WZYoKIHy55QQXKC1DK
QVPrP/lheAUS81p+hm8ln5BscxG+pNEokGMFJCSmb+AqDYrQMOWk8bowbAYJKoZIhvcNAQkP
MV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMC
AgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBrwYJKwYBBAGC
NxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdE
Rk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9j
cHYbNC8wgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8
VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVz
IGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJ
c3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJKoZIhvcNAQEBBQAEggIA5RJQGkgudRz0SwrE
VFTQwS6fbd7j9fPt/D91PUHIFTzpUx+GLUnbS8HOY6njkS4Hqm492w2NfYvx4uLGH33cADMj
qg8jgfqNvsfdswusynDSaPNq/hHEDM0GAaQtv36yavBFR9nUdawZaTd3XAuKRQJROFTIVT5M
863dplxdWKoCy9s44atwVu9EXfEa3TKtFc1sn4dvzBXw9uIk+U9Oc8+MHa/2WhXOaxb8uhUw
WtecfbJh1IefN/idwVdvBXjRilssiG5H+3jOjPTRFzRq6TmHvW/ukW0YAf0N5+iLPSyZou9q
KD9s6VeuJ+Yy7soFUI8KEndGmo60oi1vKkyOrOi+b106Gjf5U6CaT1kGrIShmLxM8fZl3m/P
TnRwL39PBYqIBkvqAPijw1M0LWORVhDfVRgXir7Cq6G6dSJs0F+RgZjYtrMgk48w3l8up5Jl
0ntSCA5XXW6JvOOytE6paA6Wp4h4Zp0D+0P+5+vDFnOtH24sIi4koRLkdjp7kgzMkLzMynBt
e0HPbBHJhVK0yheSI1VuWdOx7lhuu2rbWv0Xf7oseI0DSr68fKViK37cUocDtaUwGBPqQGJU
x83D3v8SdLLKa4IaqU7kAt/6w54hOUV/YYAZhny1ZE3NIiMxsQTOVHMqa1uL5VaReKcnWx7q
3Lk0HApc5yBWmd4NlmMAAAAAAAA=

--------------ms060702040607090702030409--

--===============1388035450580464273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1388035450580464273==--
