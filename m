Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C08C9B0B04
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 19:19:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30AA4385BAD
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 13:19:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729876782; bh=6wKXDgoi6G0olSn2TUa5vm3mKej6DvYRkcVN0xY2hJ0=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dlSBajx1sgarMPP9vuh8bl4xklu69PTeXX31B9k4g3sKe0hcGaWn1gRQst3gEh6Os
	 yX87g5EHZRlsb+HY8c4C92djYVUoFn9x7fisPYCwztaV9SThKku+I9d+q4cdQ+3g2s
	 XLDhCUXGwBfVESb2A4B5XQq+ddhYEIgQ742q1ks4HW8aciyxMhSXB6N8CkqaOeYmA4
	 B5GVGN9m/kL4aJ9QKNpbjcnVTQog8Z54JmdWkhQfr9Fqv8U4/YFCJaznCx5zLVtw4C
	 DRXSqRIzBMa8rnu4ChzaI2qRoKT7dtSk78+x8jfSmJVSvLuYvEQNWf4zk/Bjrhc5Te
	 k5tZazr/CL2sw==
Received: from BN8PR09CU001.outbound.protection.outlook.com (mail-eastus2azon11012058.outbound.protection.outlook.com [52.101.58.58])
	by mm2.emwd.com (Postfix) with ESMTPS id A1CF4385A62
	for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2024 13:18:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nwra.com header.i=@nwra.com header.b="ZfuofWss";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h62dg0pzvGMcIHkwCuHlzpUUWgtBOmCH58weU0f2/3Yewnu3OmP/+V8+baxifIFN/skaCFsiMmtIkE2rDBOnEKzG5eNffedwipcdkvPEFVInajV3O+x2scUYNFQpe1tweE3+Rk7ymzcu7zx/gskLbeE40mOfgDn+A3bi197JAFBYHE3/rDnC0HngaVVkCoEjETtPxxr8pp8qrP/CSfGUn6LZk8eLI13jbgQKVaEsNnF5IuJQXKGBdtTkthYK1gWp+jSP1zuSebrev4Wa+ckDQAGgGx+M9+vUIaBia2NUlBV0QG253DbsOmdFmwxuR/H2ChVCaWvFIr5kEpptdza1Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IBsPJjbcm495foDqe5qicT2iJV7PwLTcEtzYQOWFVJE=;
 b=g/M9nnvUgtcObYvGoBBjUj7+SiQmtP5t//rmQgXeSFKUSsmGbiH+8NzY91r0ZNIeGkK5ctLlBfajqGxpJhsSe5Rov+bUcO1mnlXiApwGl3Sv3c6k/5u0rGW/Lp7ueXlh5AirhDO0Ewhe7mXruKvZzlJF7zA0Cig8RUmIf0wDmx5Unpt/8JJfhXYeGuww5cXsLNfq/yn677Psjr5/ILZKhvQhF5FlwZ0FQWOBHPciN0z68K9Qy+s6IJphmkbBUhJWoYMLIq9ohpBwyYRdWehvAkC6qm+Fkfmbx3cfgg0hPXW7Wt2BQXqcsCHp07k/ri6nlTp3bs6Nz6h/eLqkiJQUbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nwra.com; dmarc=pass action=none header.from=nwra.com;
 dkim=pass header.d=nwra.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nwra.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBsPJjbcm495foDqe5qicT2iJV7PwLTcEtzYQOWFVJE=;
 b=ZfuofWssRWRYi82773UQ7c31Er9u4Q3YKaBZsPNuO/Iw0/NoRtxrCsg8suhI1Jtty7aXldD1kDqK7kr+aOEYjujJM38/3HICVoP1P1zVN1ByHsKVVXVdWUq/TMRV8kQR1l4+pKtacGV3ICebV1iVhkwz89CjOE3I3vm0XvW3UGBV/IADnTT/t1lrh/IZp79cjt2jH6ESy/y2JQv0LOSb1Chq2/jNsJ9IdVSbaH5s7Q21oOhfvbGbeJ/O4k0YRBUO2oDSKaZ+lxkKO5H+ndD9vrYWDpv3yRmfqavM3RTBSZPvnKLVXjqZjdgnIZWVzOIiWe2uphQNcrVDgLpB+ZWjWg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nwra.com;
Received: from SA1PR09MB8906.namprd09.prod.outlook.com (2603:10b6:806:28b::15)
 by DM6PR09MB5302.namprd09.prod.outlook.com (2603:10b6:5:271::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Fri, 25 Oct
 2024 17:18:39 +0000
Received: from SA1PR09MB8906.namprd09.prod.outlook.com
 ([fe80::6704:7f9d:b12d:4e8b]) by SA1PR09MB8906.namprd09.prod.outlook.com
 ([fe80::6704:7f9d:b12d:4e8b%5]) with mapi id 15.20.8093.014; Fri, 25 Oct 2024
 17:18:39 +0000
Message-ID: <cd6ed424-41b7-4b2d-a4c5-395eb2775851@nwra.com>
Date: Fri, 25 Oct 2024 10:18:37 -0700
User-Agent: Mozilla Thunderbird
From: Chad Spooner <cmspooner@nwra.com>
To: usrp-users@lists.ettus.com
Content-Language: en-US
Organization: NorthWest Research Associates
X-ClientProxiedBy: SJ0PR03CA0079.namprd03.prod.outlook.com
 (2603:10b6:a03:331::24) To SA1PR09MB8906.namprd09.prod.outlook.com
 (2603:10b6:806:28b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB8906:EE_|DM6PR09MB5302:EE_
X-MS-Office365-Filtering-Correlation-Id: 46c1f134-f52e-4910-0251-08dcf5191161
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|41320700013|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?V21sUUE2cUVjdXpaMnYrTzQ5YUxXVGQ2eDl6aEtnRWI2bGJhaWVsV3pvbVp2?=
 =?utf-8?B?SStIMGYycVhRSXRCdzVqTUh6QXEzeDJsalVKSWxRNHJEV1h4aFVwOVl5N2d1?=
 =?utf-8?B?MS9RUjVPWjdjTFpBWDhvS05Fb05LdXpQMG16aGxVeHFqUGtveGF2SWl4Rnht?=
 =?utf-8?B?SjluUjZNREhxc2s5c0RuZisyZ3pjdzVoby9Na1pWTlNtbG5TdUx3U0ZvU3V4?=
 =?utf-8?B?Q0xZcGNrR3AyTjZ5bTJPNFE0V25WL1YxYVBmTHZXejhNWG5LNFlTUHgwVVdE?=
 =?utf-8?B?V0lldTZ2ekhKVUJDV1dRemNvQWd5V0J2TllGZ0JaaWxJYllWOFJ5SE0wMWtk?=
 =?utf-8?B?RzlJWFRUeXhCVGVrVEtKVGl4QzVMNGRtaU5Xek5vRE5INzNIU3hrVnhYdUZ3?=
 =?utf-8?B?VzlsMVhNMFJlQ21UaTJRa0R1WWNlcGd2YVdicm1tNHBiZTNCdW5PQ2RvMG9n?=
 =?utf-8?B?MTI5QWQyQU1Ud3lHTVUyZUZKS2M4ejRDTlZhVXpWVVNhY0hWalFXckhWZWVx?=
 =?utf-8?B?dU1KcTNIbytZbm5URndUdjNQYmp5TnNuWHYvaEV3emp4MGR4TnFXSGx6MUZQ?=
 =?utf-8?B?WStIazZkZVBVbnJ5ZER1YlNmZ1QzS0IzWE04N2R1MUdETTJPUTc4b3hyNEJR?=
 =?utf-8?B?YnFFYTVPTkdNMW9UdXZNMGlTODJPcHY0aSs0aWxYUy9QWFV2TERKbWh4UEZG?=
 =?utf-8?B?ajFzMysyMW1pcnVmZUxkWW9IbHFtOS9hd0lqRDEyT1VJWVREbm13QWt1RzFx?=
 =?utf-8?B?UjlUcS96WHloWHVqM1ViOHhhVnBrWU9hY3p5bTFta25DdUo1c2tkbWZPU2Rl?=
 =?utf-8?B?a0RZV1l2Q1ArRklYYjJ3SWhwbTN1N1RhSlpibUhqVU1NelpKSDdHSzBYUkpy?=
 =?utf-8?B?eUpYTXplamlhOHRLT2FKT2FnMFp5dnNzd2c5T0RBbzhwZGVvU0sxVmY1cEt4?=
 =?utf-8?B?NTdPL3RDTFpqOGt6Ujdsb2g1LzY3a2N1V2paVXhPNFIxTkU2UENvaGhaWllL?=
 =?utf-8?B?MEJyZ2E1TlhzWVBhaXFXRWRBYmxMd1BzMlZUNTQraVkrUkF3U1k1N2FwUUdX?=
 =?utf-8?B?bzJWa2Z1c0lLM216TGVETlNOWlBMS2ZYckRGdERBc1JzSjFRRWpXTXptdlFR?=
 =?utf-8?B?QXdabnJqUGQwb3o3NUJpUUxYaG5nTE1ia0tCcndiSlBaV1p6NDlaTlVGRkwv?=
 =?utf-8?B?enB5WXNDcGdZWVlrK1lORTduMCtFWEc0VnVrbEpRWks2MHZXaXpOWU5RVU1C?=
 =?utf-8?B?T1NQMlZTcVZ6U01yT1ArVHFKVjI3MWZ0L0c3WG9mQ1BsU1FjNGlxSEtXb3RP?=
 =?utf-8?B?ak8yYWlLci90SFlSNkV1SEpHRUV5REtrMTF5NWpSVFFCVUhjYU4zQW9OZnk4?=
 =?utf-8?B?Ym1NYzNGMDFzZ3FUVHFhbVl6VFIvdFdIVHNQeHlscDhKSjUwYTdPNW8rZ0Rm?=
 =?utf-8?B?WDE2a0pyU3BURE5qc3dNR29HazhwdVlLMW12QVZhREhzN1RsQlVHV2Nqelg5?=
 =?utf-8?B?ZEE4SVN1RHhaazJucnROZU9CTWxaSjVkS2dwUFlwbkRJUVNvQkpZcmU5cVRF?=
 =?utf-8?B?NjYwc3ZYK3JWNjVBZVF0L3l6ckxycHE4emw2d1ZHQlA4TkoxVXFwMHljdC9o?=
 =?utf-8?B?eU8xT2VzcTdxTHhHWWc4K0owYXd0a3hKemMzM0NnWDdjeDA1aFMreERPS2p6?=
 =?utf-8?B?ZFhLWE1TR01wMS91bjY4SWRHTFVCZ1NtVkFIZUIxTUlaMElReEl4V0p2MlZ4?=
 =?utf-8?Q?atnwvChZajRb/Q/Ng9pAKbQGC51CXTi3Wv6AFrA?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB8906.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MG5SdGdsVVovWlYyZURVb3BrRlcyb3RTVWF2cXVxMjVSSG85cUJnSjdXSDNB?=
 =?utf-8?B?aEViTURWeDZncUtCRjZXVi9MUlFJa2FKODlkSTBlc05aOUUvRWpFNXc1UjJl?=
 =?utf-8?B?MUdpcEdiVk1MVUE4VUxQbDNnYU5WWlRQUk5PK3ZCKzRvWmpTbDIza1NtRVpo?=
 =?utf-8?B?UTI3TmxwcmU3ZEpIMXJRK0l5bnJwMmxBbmp3R1FIT005cVFpNjcxR2lxOFZP?=
 =?utf-8?B?RXRmQlF5Vkc5SEtGOG5ySUJrK2EvVXFvSkZBV2ZzcHVkMlNxMlgvTlgyRG1a?=
 =?utf-8?B?aFpJL0R0UkNySDZmOVR3WFBIOFlKUEZXVjJ2U0hIYlBmdmF5UHQvZHRRakNS?=
 =?utf-8?B?MHZGOEE4WU5xWEV0TDN0bkZUNk5PbHJwZXovMHhZMzA3NFJWSC9vM0J5VFpW?=
 =?utf-8?B?cW1sUVJXbkgrdi9naVdHd09qaDhRQVpSVms1SGhMVmxLRkMwaVhXL1RRdC9s?=
 =?utf-8?B?U2JYcDZZVzVnQnZBNXZhVlJOZzg0YW85dzJWZ0dPY3VQWm5hckpRVG84Z3Vy?=
 =?utf-8?B?bUw3d2dTMzBiT2ljUDY0YzVONmZYcjc3OUUwWEMwL1BxQWZsV2dsTWoxa3dm?=
 =?utf-8?B?c2xzdEpXelFnWkVkQ1ZldWF6VWwyY0Jzb3gxUWh3RFlVaFIwTklxWmN4Qm4w?=
 =?utf-8?B?SGducmpTV0NoTTVEN3FJRDZWazNIMnBVQUpnTGVnWnNJLytxc0RQM0NNck9h?=
 =?utf-8?B?aHgrR3FjRjliL3UwbDNMSmVaUS93WTNtWlE3VCtmMEZWV1hiQ29wZnMwSHY0?=
 =?utf-8?B?a1VLeDg2SnpBNy9mZEhPVmJYWlY5V1l4RUlUclZDZUdkb1VBSE5wYStIYW9Z?=
 =?utf-8?B?WWV6N09haEdKNXFqaUk0cklKamgydlZMV29oZ0huUmFYdkM1N0hhd3pmSkJ0?=
 =?utf-8?B?eFZPcXVmbWtFZ2pVcW1RMDJiQ3RFU25Ma3FaQ04xUmRYVElHRThYZEd6K2lZ?=
 =?utf-8?B?WkJiWkJqZjFXcUZKYTdkSldqWFRrbzhVRlU1QWRCcjR0UFE0MGowUEYwZEJ6?=
 =?utf-8?B?a2plcDBsYjZyTzlFUEFlUHFOZEpkOXJPa2FWUlpBSDh5MG9TLysyUHRNV1B4?=
 =?utf-8?B?QkVqS1JiaHBjT05MYXRQbG9XdSsybmxJT2twSUEzZUd4THBxelhDY21FcWxI?=
 =?utf-8?B?S24vNmJXcjcvaHk3ZnFla1lwWUMvTDVqR3A2eTZWempzNWhSNE04WHRyVjI0?=
 =?utf-8?B?RE5NY0dVR3pyazZ2Rk1sK2FqN2R0MXBtc05GakNDdmFWV2pldE1HcGhCbTRk?=
 =?utf-8?B?a1ZhTXh3UWZXTXFORnZqUnR2OFlqR1daaFRGYW83WlhYc3p6bjBJMUM5V0Vk?=
 =?utf-8?B?Z0YydXA2b3M0VW1xTGZ1VThlVzN4emNZUkpoMi9aL2M4N3NlUWNFaW9kQVJT?=
 =?utf-8?B?Qmc0Q3ZVSjlTZ3VOeVZibWY1alJyV0NPWWx1WDJNWWZ6VTZmREcyVUxQNlc2?=
 =?utf-8?B?VTR0VUpiUE1WZXBadWsvZUwxOUwzSWxmN0hiUlh1bUpFTDdkM2g4UnpKTU9I?=
 =?utf-8?B?cjRqQ2lFb3NwMU1zZ2NuMktuc1U3OGhTRkhodUt5eUFib05tcW52c2JYZzhi?=
 =?utf-8?B?dWsrYTNjalVJSzhLekxkRmJTOFZLY0N2K1Q0c0dtWUZnRXh4TEVkRWZvMHZM?=
 =?utf-8?B?azdkSlNRNU5ZUHhOZ0o2cWFDNkNmcUIzU25relhCcmJSS2FDUmNWelZud0lh?=
 =?utf-8?B?WXVtWnc0ZXMzdTdXQSs2SVRucUtSbWR4b1FpV0tQUGNWNU5kZTJKcm5FbW45?=
 =?utf-8?B?a1YrNWJVRUh3N2FSV1RXMmlSa1E1UlBqN3hrWEx2ckRBT1dTSXYwWFdvbHB3?=
 =?utf-8?B?ZEJSZHFKUjVja3JERWcrdlpXNFlnVW5mZU9QT01EdGZaWUxiRGNqdjlWcFpa?=
 =?utf-8?B?WkhvUFl6azl5eHhxbVZNaUhpT0hJYTMvNno3VER5TStsUkp3MzJmajUxT25S?=
 =?utf-8?B?Unl1cEFsY0NJVTJyU0Y0YkRWTGlQc3JJVW5DSkFITVB4R3NUVCs2bHdoS3hO?=
 =?utf-8?B?dWFBSXpGbDJQTGVuNEFhWVVDVjgyVU9hVkxIei9mSDNqeEQ1MUpFM0IzbW1O?=
 =?utf-8?B?Wjk0NW10VUE4ejFBNjBIeW1Uc1czWWNrNWZ4THRURUpvbERKT0xQSFdrZkE4?=
 =?utf-8?Q?aP9WEgh5dKZ8wpGYL5cwrT1a9?=
X-OriginatorOrg: nwra.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c1f134-f52e-4910-0251-08dcf5191161
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB8906.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 17:18:39.5601
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 761303a3-2ec2-424e-8122-be8b689b4996
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR09MB5302
Message-ID-Hash: 3QCLGK4FIWRVRV34V3KQPHEZPTYEJUL4
X-Message-ID-Hash: 3QCLGK4FIWRVRV34V3KQPHEZPTYEJUL4
X-MailFrom: cmspooner@nwra.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trouble connecting to an x300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QCLGK4FIWRVRV34V3KQPHEZPTYEJUL4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7533998193512018643=="

--===============7533998193512018643==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms090200080308020600010004"

--------------ms090200080308020600010004
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

QWxsOg0KDQpJJ20gaGF2aW5nIHRyb3VibGUgY29udHJvbGxpbmcgYW4gRXR0dXMgeDMwMCBT
RFIgdXNpbmcgVWJ1bnR1IDIyIHNlcnZlcnMuDQoNClRoZSBicmllZiBkZXNjcmlwdGlvbiAo
ZGV0YWlscyBiZWxvdykgaXMgdGhhdCBJIGNhbiBwaW5nIHRoZSBkZXZpY2UsIGJ1dCANCkkg
Y2FuJ3Qgc2VlIGl0IHVzaW5nDQp1aGRfZmluZF9kZXZpY2VzIG9yIHVoZF91c3JwX3Byb2Jl
IG9yIHVoZF9mZnQgZXRjLg0KDQpJJ3ZlIGxvb2tlZCBhcm91bmQgb24gdGhlIHdlYiBmb3Ig
dGlwcywgYnV0IG5vdGhpbmcgaXMgaGVscGluZy4gSW4gDQpwYXJ0aWN1bGFyLA0KSSBtYWRl
IHN1cmUgdG8gcHVuY2ggYSBob2xlIGluIHRoZSBmaXJld2FsbCB1c2luZw0KDQogwqDCoCBz
dWRvIGlwdGFibGVzIC1BIElOUFVUIC1wIHVkcCAtLXNwb3J0IDQ5MTUyIC1qIEFDQ0VQVA0K
DQpEZXRhaWxzDQotLS0tLS0tDQpJJ20gdXNpbmcgdHdvIFVidW50dSAyMi4wNC41IHNlcnZl
cnMuIFRoZSBVSEQgdmVyc2lvbnMgYXJlIHRoZSBzYW1lIG9uIGVhY2g6DQoNCiDCoMKgIFVI
RCA0LjEuMC41LTMNCg0KT25lIHVzZXMgZ251cmFkaW8gMy4xMC43LjAgYW5kIHRoZSBvdGhl
ciAzLjEwLjEuMS4NCg0KQm90aCBzZXJ2ZXJzIGNhbiBjb25uZWN0IHRvIGFuZCBjb250cm9s
IGFuIEV0dHVzIHgzMTAgd2l0aCB0d28gVUJYIA0KZGF1Z2h0ZXJib2FyZHM7DQp1aGRfZmZ0
IHJ1bnMgZmluZS4gVGhlIHgzMTAgaGFzIGRlZmF1bHQgKDEwIEdCKSBJUCBhZGRyZXNzIG9m
IDE5Mi4xNjguNDAuMi4NCg0KVGhlIHgzMDAgaGFzIG9uZSBVQlggZGF1Z2h0ZXJib2FyZCBh
bmQgb25lIFdCWCBkYXVnaHRlcmJvYXJkLiBXaGVuIEkgDQpjb25uZWN0IGVpdGhlcg0Kc2Vy
dmVyIHRvIHRoZSB4MzAwIHZpYSAxMCBHQiBldGhlcm5ldCwgSSBjYW4gcGluZyB0aGUgZGV2
aWNlIGF0IA0KMTkyLjE2OC40MC40Og0KDQpjbXNwb29uZXI+cGluZyAxOTIuMTY4LjQwLjQN
ClBJTkcgMTkyLjE2OC40MC40ICgxOTIuMTY4LjQwLjQpIDU2KDg0KSBieXRlcyBvZiBkYXRh
Lg0KNjQgYnl0ZXMgZnJvbSAxOTIuMTY4LjQwLjQ6IGljbXBfc2VxPTEgdHRsPTY0IHRpbWU9
MC4wNTggbXMNCjY0IGJ5dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21wX3NlcT0yIHR0bD02
NCB0aW1lPTAuMDM0IG1zDQo2NCBieXRlcyBmcm9tIDE5Mi4xNjguNDAuNDogaWNtcF9zZXE9
MyB0dGw9NjQgdGltZT0wLjA0OCBtcw0KNjQgYnl0ZXMgZnJvbSAxOTIuMTY4LjQwLjQ6IGlj
bXBfc2VxPTQgdHRsPTY0IHRpbWU9MC4wMjYgbXMNCjY0IGJ5dGVzIGZyb20gMTkyLjE2OC40
MC40OiBpY21wX3NlcT01IHR0bD02NCB0aW1lPTAuMDI3IG1zDQo2NCBieXRlcyBmcm9tIDE5
Mi4xNjguNDAuNDogaWNtcF9zZXE9NiB0dGw9NjQgdGltZT0wLjA0MiBtcw0KXkMNCi0tLSAx
OTIuMTY4LjQwLjQgcGluZyBzdGF0aXN0aWNzIC0tLQ0KNiBwYWNrZXRzIHRyYW5zbWl0dGVk
LCA2IHJlY2VpdmVkLCAwJSBwYWNrZXQgbG9zcywgdGltZSA1MTA0bXMNCnJ0dCBtaW4vYXZn
L21heC9tZGV2ID0gMC4wMjYvMC4wMzkvMC4wNTgvMC4wMTEgbXMNCg0KKFdlIHNldCB0aGUg
SVAgYWRkcmVzcyB0aGlzIHdheSBsb25nIGFnbyBhbmQgSSd2ZSBiZWVuIHVzaW5nIGl0IA0K
c3VjY2Vzc2Z1bGx5DQp1bnRpbCByZWNlbnRseS4pDQoNCkJ1dCB1aGRfdXNycF9wcm9iZSBy
ZXR1cm5zOg0KDQpjbXNwb29uZXI+dWhkX3VzcnBfcHJvYmUgLS1hcmdzPSJhZGRyPTE5Mi4x
NjguNDAuNCINCltJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDExLjIuMDsg
Qm9vc3RfMTA3NDAwOyBVSERfNC4xLjAuNS0zDQpFcnJvcjogTG9va3VwRXJyb3I6IEtleUVy
cm9yOiBObyBkZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4NCkRldmljZSBBZGRyZXNzOg0KIMKg
wqDCoCBhZGRyOiAxOTIuMTY4LjQwLjQNCg0KYW5kIHVoZF9maW5kX2RldmljZXMgZ2l2ZXM6
DQoNCmNtc3Bvb25lcj51aGRfZmluZF9kZXZpY2VzDQpbSU5GT10gW1VIRF0gbGludXg7IEdO
VSBDKysgdmVyc2lvbiAxMS4yLjA7IEJvb3N0XzEwNzQwMDsgVUhEXzQuMS4wLjUtMw0KTm8g
VUhEIERldmljZXMgRm91bmQNCg0KSSBhdHRlbXB0ZWQgdG8gcmVmbGFzaCB0aGUgRlBHQToN
Cg0KY21zcG9vbmVyPnVoZF9pbWFnZV9sb2FkZXIgLS1hcmdzPSJ0eXBlPXgzMDAsYWRkcj0x
OTIuMTY4LjQwLjQiDQpbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS4y
LjA7IEJvb3N0XzEwNzQwMDsgVUhEXzQuMS4wLjUtMw0KTm8gYXBwbGljYWJsZSBVSEQgZGV2
aWNlcyBmb3VuZA0KDQpJJ20gcHJvYmFibHkgbWlzc2luZyBzb21ldGhpbmcgc2ltcGxlLiBB
bnkgYWR2aWNlPw0KDQpDaGFkDQoNCi0tIA0KQ2hhZCBNLiBTcG9vbmVyLCBQaEQNCk5vcnRo
V2VzdCBSZXNlYXJjaCBBc3NvY2lhdGVzDQoxNDkgQm9uaWZhY2lvIFBsYWNlLCBTdWl0ZSAy
MDANCk1vbnRlcmV5LCBDQSA5Mzk0MA0KY21zcG9vbmVyQG53cmEuY29tDQo4MzEgNTIxIDY3
NDMNCk5XUkEgU2NpZW50aXN0L0VuZ2luZWVyLCBWUCwgQm9EDQpjeWNsb3N0YXRpb25hcnku
YmxvZw0KDQo=

--------------ms090200080308020600010004
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
CmgwggUVMIID/aADAgECAhEArxwEsqyM/5sAAAAAUc4Y4zANBgkqhkiG9w0BAQsFADCBtDEU
MBIGA1UEChMLRW50cnVzdC5uZXQxQDA+BgNVBAsUN3d3dy5lbnRydXN0Lm5ldC9DUFNfMjA0
OCBpbmNvcnAuIGJ5IHJlZi4gKGxpbWl0cyBsaWFiLikxJTAjBgNVBAsTHChjKSAxOTk5IEVu
dHJ1c3QubmV0IExpbWl0ZWQxMzAxBgNVBAMTKkVudHJ1c3QubmV0IENlcnRpZmljYXRpb24g
QXV0aG9yaXR5ICgyMDQ4KTAeFw0yMDA3MjkxNTQ4MzBaFw0yOTA2MjkxNjE4MzBaMIGlMQsw
CQYDVQQGEwJVUzEWMBQGA1UEChMNRW50cnVzdCwgSW5jLjE5MDcGA1UECxMwd3d3LmVudHJ1
c3QubmV0L0NQUyBpcyBpbmNvcnBvcmF0ZWQgYnkgcmVmZXJlbmNlMR8wHQYDVQQLExYoYykg
MjAxMCBFbnRydXN0LCBJbmMuMSIwIAYDVQQDExlFbnRydXN0IENsYXNzIDIgQ2xpZW50IENB
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxDKNQtCeGZ1bkFoQTLUQACG5B0je
rm6A1v8UUAboda9rRo7npU+tw4yw+nvgGZH98GOtcUnzqBwfqzQZIE5LVOkAk75wCDHeiVOs
V7wk7yqPQtT36pUlXRR20s2nEvobsrRcYUC9X91Xm0RV2MWJGTxlPbno1KUtwizT6oMxogg8
XlmuEi4qCoxe87MxrgqtfuywSQn8py4iHmhkNJ0W46Y9AzFAFveU9ksZNMmX5iKcSN5koIML
WAWYxCJGiQX9o772SUxhAxak+AqZHOLAxn5pAjJXkAOvAJShudzOr+/0fBjOMAvKh/jVXx9Z
UdiLC7k4xljCU3zaJtTb8r2QzQIDAQABo4IBLTCCASkwDgYDVR0PAQH/BAQDAgGGMB0GA1Ud
JQQWMBQGCCsGAQUFBwMEBggrBgEFBQcDAjASBgNVHRMBAf8ECDAGAQH/AgEAMDMGCCsGAQUF
BwEBBCcwJTAjBggrBgEFBQcwAYYXaHR0cDovL29jc3AuZW50cnVzdC5uZXQwMgYDVR0fBCsw
KTAnoCWgI4YhaHR0cDovL2NybC5lbnRydXN0Lm5ldC8yMDQ4Y2EuY3JsMDsGA1UdIAQ0MDIw
MAYEVR0gADAoMCYGCCsGAQUFBwIBFhpodHRwOi8vd3d3LmVudHJ1c3QubmV0L3JwYTAdBgNV
HQ4EFgQUCZGluunyLip1381+/nfK8t5rmyQwHwYDVR0jBBgwFoAUVeSB0RGAvtiJuQijMfmh
JAkWuXAwDQYJKoZIhvcNAQELBQADggEBAD+96RB180Kn0WyBJqFGIFcSJBVasgwIf91HuT9C
k6QKr0wR7sxrMPS0LITeCheQ+Xg0rq4mRXYFNSSDwJNzmU+lcnFjtAmIEctsbu+UldVJN8+h
APANSxRRRvRocbL+YKE3DyX87yBaM8aph8nqUvbXaUiWzlrPEJv2twHDOiGlyEPAhJ0D+MU0
CIfLiwqDXKojK+n/uN6nSQ5tMhWBMMgn9MD+zxp1zIe7uhGhgmVQBZ/zRZKHoEW4Gedf+EYK
W8zYXWsWkUwVlWrj5PzeBnT2bFTdxCXwaRbW6g4/Wb4BYvlgnx1AszH3EJwv+YpEZthgAk4x
ELH2l47+IIO9TUowggVLMIIEM6ADAgECAhEAn5Q3j+pUFxcAAAAATDzWhzANBgkqhkiG9w0B
AQsFADCBpTELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xOTA3BgNVBAsT
MHd3dy5lbnRydXN0Lm5ldC9DUFMgaXMgaW5jb3Jwb3JhdGVkIGJ5IHJlZmVyZW5jZTEfMB0G
A1UECxMWKGMpIDIwMTAgRW50cnVzdCwgSW5jLjEiMCAGA1UEAxMZRW50cnVzdCBDbGFzcyAy
IENsaWVudCBDQTAeFw0yMzAzMTMxNTAzNDJaFw0yNjAzMjIxNTMzNDJaMIGUMQswCQYDVQQG
EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEmMCQGA1UEChMd
Tm9ydGhXZXN0IFJlc2VhcmNoIEFzc29jaWF0ZXMxNjATBgNVBAMTDENoYWQgU3Bvb25lcjAf
BgkqhkiG9w0BCQEWEmNtc3Bvb25lckBud3JhLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBAKAOJ5sYwH9JzKVQ9S2qV5AieT0CYhNSKfqlXt1grRJRtMk/n/nuU269gtPD
j+U4prgOOQiUYL+Qk6FcnwFgy2mk+qDul26kwe7jt5td3bwgprFLeDgMdKGTM/x21KnMQuJl
lSKZUXgeqfXJjantHbEWx+jg+X0vK/HuyCWubB8gxNTMMln8VdM0v7kR25T2lJzWXU8AeamG
rjnZoPHm09TYqITcif3kVvQtiAS0+M9Uu9KO+8diZYhrbrqkjPHXEUXF7bcTYsZUbSlIAoSa
ySPhuwIj8nbbOt1M2K2i2XhERxHnEa2X/VVNbxjP0cXASAjpw7Rr2FGPr4abwx5GersCAwEA
AaOCAYMwggF/MA4GA1UdDwEB/wQEAwIFoDAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUH
AwQwQgYDVR0gBDswOTA3BgtghkgBhvpsCgEEAjAoMCYGCCsGAQUFBwIBFhpodHRwOi8vd3d3
LmVudHJ1c3QubmV0L3JwYTBqBggrBgEFBQcBAQReMFwwIwYIKwYBBQUHMAGGF2h0dHA6Ly9v
Y3NwLmVudHJ1c3QubmV0MDUGCCsGAQUFBzAChilodHRwOi8vYWlhLmVudHJ1c3QubmV0LzIw
NDhjbGFzczJzaGEyLmNlcjA0BgNVHR8ELTArMCmgJ6AlhiNodHRwOi8vY3JsLmVudHJ1c3Qu
bmV0L2NsYXNzMmNhLmNybDAdBgNVHREEFjAUgRJjbXNwb29uZXJAbndyYS5jb20wHwYDVR0j
BBgwFoAUCZGluunyLip1381+/nfK8t5rmyQwHQYDVR0OBBYEFBJ+PqijD687HzCmNYRFqaVv
0Jd0MAkGA1UdEwQCMAAwDQYJKoZIhvcNAQELBQADggEBACTA+IlfE3XqdaXjKismzvV2W0el
qyXdJUQLatdlesOxOxowoGN9QRiNLl2Sr84DtxbOGTRQcRxbRYk44Tf266xEPuBXxAjU2okv
JZcok5fyqSVYhea1pD9WmkG0Err+kSjaUmvCIjQXAa3s1QFn0wHJcHNEd7TeiMY07vRCYpOD
+1N+dY06e0lmmCNNAx4ae2oJ2JUKpR5W5ykRS/A4l1+SH52Hno+39m+fu9DtOtEZMPp6RMl4
BbeyplQbFiBYA0HtVwLRBLXRPlu21JAg4DpH7T/WFvcRLuFcSyCl9NfsgjOeteSGfP8037tm
a9vxtZt/Drdf4D4E8xHPRdPm4XwxggRiMIIEXgIBATCBuzCBpTELMAkGA1UEBhMCVVMxFjAU
BgNVBAoTDUVudHJ1c3QsIEluYy4xOTA3BgNVBAsTMHd3dy5lbnRydXN0Lm5ldC9DUFMgaXMg
aW5jb3Jwb3JhdGVkIGJ5IHJlZmVyZW5jZTEfMB0GA1UECxMWKGMpIDIwMTAgRW50cnVzdCwg
SW5jLjEiMCAGA1UEAxMZRW50cnVzdCBDbGFzcyAyIENsaWVudCBDQQIRAJ+UN4/qVBcXAAAA
AEw81ocwDQYJYIZIAWUDBAIBBQCgggJ3MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJ
KoZIhvcNAQkFMQ8XDTI0MTAyNTE3MTgzN1owLwYJKoZIhvcNAQkEMSIEIHeOxMSmc2Km+sws
NU/L/NfqSSGdhKttGuhHkBo4NqEJMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEqMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgcwGCSsGAQQBgjcQBDGBvjCBuzCBpTELMAkGA1UE
BhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xOTA3BgNVBAsTMHd3dy5lbnRydXN0Lm5l
dC9DUFMgaXMgaW5jb3Jwb3JhdGVkIGJ5IHJlZmVyZW5jZTEfMB0GA1UECxMWKGMpIDIwMTAg
RW50cnVzdCwgSW5jLjEiMCAGA1UEAxMZRW50cnVzdCBDbGFzcyAyIENsaWVudCBDQQIRAJ+U
N4/qVBcXAAAAAEw81ocwgc4GCyqGSIb3DQEJEAILMYG+oIG7MIGlMQswCQYDVQQGEwJVUzEW
MBQGA1UEChMNRW50cnVzdCwgSW5jLjE5MDcGA1UECxMwd3d3LmVudHJ1c3QubmV0L0NQUyBp
cyBpbmNvcnBvcmF0ZWQgYnkgcmVmZXJlbmNlMR8wHQYDVQQLExYoYykgMjAxMCBFbnRydXN0
LCBJbmMuMSIwIAYDVQQDExlFbnRydXN0IENsYXNzIDIgQ2xpZW50IENBAhEAn5Q3j+pUFxcA
AAAATDzWhzANBgkqhkiG9w0BAQEFAASCAQAzpAKh113psRMY2H2vXstsi51p7TPmansG6r9J
b49rpwob5cZtoNGOWa7Q3wJIUmRX2mXptVPJNo5gKNfKSbRelSclToI5Cv5ml9HIMTb528HX
l2ZnkJ1x77JNQbm7D6JzuwXOKThjkU4+4cVKnZ8FMYuOW00J/zOzKSCxr3RkAuHXp8zrxfSY
LY2+phvFFcUPZkp+lkG3ZgadRAY5nXYamkdJSIVF13VMm8so7sNYqGUz6rd9FpygmmhPA9mg
KoTn8gbIx3pgCqrs7iUdKb+lZUZ+nZV1PenRfHv/lD9YVGTSK83LiDGPf3jho40m5ykskNP0
LF4rQIc1XHmyXfLyAAAAAAAA

--------------ms090200080308020600010004--

--===============7533998193512018643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7533998193512018643==--
