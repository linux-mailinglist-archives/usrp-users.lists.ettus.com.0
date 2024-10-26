Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD909B19D9
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2024 18:49:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6AFF385A99
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2024 12:49:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729961390; bh=hG//y4IVrY7H1ZRuZsPINs/9XqLX3F8NpilYY/Oes90=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FTSXMMKQg9yKjcH2t2DXKUEnkf/iiZL7cygp+ksg+UdxzBx4P8UbC4aNuO8kkOooL
	 3nMfERaU3oqLNW2skWxfTcJkp4VY+/XoTfsQ9wZxXV0qO6b05RuqCqYaxA7jIy25VA
	 qg0Jh2CofzgF0mCr0wbfL+KSU6rxuojPw23LtOXY5nfhmrHBd6yViV0G1oH0jHaNcK
	 Ht0YIvQDdulMBtySvelcT/voQHICj6sCgPGf03pcl8h64VDvCRiR19DmcgYj4tevmp
	 YcC7eoKiEcdkQffYUkUmdR/msxLpBV1E+9v9kL7X6V0B6J40miGsjkO3zLWwkpEg1l
	 p+DiNAR0UMjag==
Received: from BN8PR09CU001.outbound.protection.outlook.com (mail-eastus2azon11012019.outbound.protection.outlook.com [52.101.58.19])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C3E3385CCC
	for <usrp-users@lists.ettus.com>; Sat, 26 Oct 2024 12:49:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nwra.com header.i=@nwra.com header.b="bIeUGozw";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RXOkbJVmtuuMuS2rq/bnFJcAJKk6XHb/Y4cfmEi45dTEt7E1w0FnPmiXwkjQKP6Tln3BnlIr7y5FrD30jKppD/8ug1o9+XpQCNz+S2dFjkYitDX4H+Bi7ez2Td1jYbSD7DNVMX9SNBXRwRZPk7Lse8wrtzN6v0syMof5z7VGIxvgnBNgwLXWFMP7/9wDeR599bD7wtB/bmBG0axwq8FJsmSHPXh2F6g+4Uqt1IUiS0X/eRx9LVns1id3grnnp0QmVUD8NLq8E8POi7o8/UXrFbvPv38K68pY3uOCBywn9iSbBcH8Wl1lHZkNMJqvPvWKFve9/mQYDLHV/RF5GT8Ryg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+0f58wB6taSt0XGoeyCOwTOf3aBlVXBbRKCpYEbA5o=;
 b=CnOgFOUIN4YO32tgcsreqHQVewErQDnxCZjsOID7GgZJldeEdYWSfzLeWc4xhcj2dr0eil3Rozpeqrag3q01rHV2+ggXMrWJvVdDS8cxGb/O9CcehpQumfwObm2BJMjU13xMik/0HuWSiEas7xIQNVldCo5vomEdFO8swnamXZtGQNPR6nmqI6XvtYbLBbCpcL11lmBrN5eqxTZKXkjiPZCaCACOPfDEdxdAfdaVPqRgyoyIdYIHp4vGIfGMYsmdBDJTvNX7w8tYXHWYJeSF/FuRJbZhjS+scix+manfCjNKZgV8QpPTauhBpR3lrtcMe4zpal/71Y+D1iOMO8gJfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nwra.com; dmarc=pass action=none header.from=nwra.com;
 dkim=pass header.d=nwra.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nwra.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+0f58wB6taSt0XGoeyCOwTOf3aBlVXBbRKCpYEbA5o=;
 b=bIeUGozwWdR3B3O5Vew2nEO2rzaLdWgkKMadsVFN4Xrgu9/8FaP/H8FAqoiX+w1zJouqSOjHnRbIeP0K7Fc4cKaryrD1GkIruQZ6vgqqJITKBalkfuYbkKuSbHQ9ZVtxo2KCu3Iguma0b9bq9xeD+KNNQH/X1g+XPBbZ56Wb9zOcYIKVLYREG7cT4d3C3ZMK3x8c4UIMRod8+WxGELOaswJUqf4lUxpPMUDe5+YMFNid+klA7Ibfn6CTJtnio9g1n2wPSzi6401OQYctEz5U1BTIzg5TPjXqW/PUyM523aj3VSSCnYvJMC+sN7KHSaWTkHd7DRsPDebFgP2tVfxJGQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nwra.com;
Received: from SA1PR09MB8906.namprd09.prod.outlook.com (2603:10b6:806:28b::15)
 by SJ0PR09MB9841.namprd09.prod.outlook.com (2603:10b6:a03:469::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Sat, 26 Oct
 2024 16:49:27 +0000
Received: from SA1PR09MB8906.namprd09.prod.outlook.com
 ([fe80::6704:7f9d:b12d:4e8b]) by SA1PR09MB8906.namprd09.prod.outlook.com
 ([fe80::6704:7f9d:b12d:4e8b%5]) with mapi id 15.20.8093.024; Sat, 26 Oct 2024
 16:49:27 +0000
Message-ID: <125e24ae-990d-4ca5-abcc-283cfef28e0c@nwra.com>
Date: Sat, 26 Oct 2024 09:49:25 -0700
User-Agent: Mozilla Thunderbird
From: Chad Spooner <cmspooner@nwra.com>
To: usrp-users@lists.ettus.com
References: <cd6ed424-41b7-4b2d-a4c5-395eb2775851@nwra.com>
 <85e89155-f303-46ba-bc3b-c75fc7c3f03d@gmail.com>
Content-Language: en-US
Organization: NorthWest Research Associates
In-Reply-To: <85e89155-f303-46ba-bc3b-c75fc7c3f03d@gmail.com>
X-ClientProxiedBy: SJ2PR07CA0012.namprd07.prod.outlook.com
 (2603:10b6:a03:505::13) To SA1PR09MB8906.namprd09.prod.outlook.com
 (2603:10b6:806:28b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB8906:EE_|SJ0PR09MB9841:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a8f4ec4-2989-443e-3df2-08dcf5de2783
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|10070799003|41320700013|4022899009;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?N01YOHk0YnF5a3o4VEsvUHpQUEthZmxmRHJKZ1R0MGpsY21rMzdsajVSQjJZ?=
 =?utf-8?B?RyttcXVEVTR0d2lxS2JraG1yaGVGaXJDa1JNRm9HU2pUU2RGNTU5K1JHaC8r?=
 =?utf-8?B?SVlJK3dDSjVBZmVqcmVOeEc1NlE1Y1JrYVFEOEJzLzMxa0I4WS9UOFhCc1Rk?=
 =?utf-8?B?WGgxUnp1WUZzMy9vZGJPTzhOV2JYTXVZOE5rbE5BemtNQjhYeFZtTkQxOGd1?=
 =?utf-8?B?ei95dm1FNHYwVkRMY3RFalhKVlAxVTJBeUgwczZLbE00MTNGT1hZbWNXc1N5?=
 =?utf-8?B?S3cvWlUxSTMrTFlxMWh4QzdXL0pMc2xWTjVYSDRVMlJkcVcwbTk2VlJWZVZI?=
 =?utf-8?B?ckNkUzQzeWtxakdvclh6bXpNdjVpL01STzdWUzdCbTJGUElGdU1YRlMxNzRU?=
 =?utf-8?B?OUNrRkJpdmlVSysxNEdqWklLMHZtcDgxem5OU2d6TVZPTWRMM1BGdldrZFlp?=
 =?utf-8?B?ZlVhbnZsZVBQenFGc1o1bVNvbFh4eGx2ZXNNZWNWNjd3aER4VGs0SVp0Mk4x?=
 =?utf-8?B?d2JJbDdjU3ZqRk9vUWlVNmpEdjhpTmFlS2pZTVFQTzBiVERHQUxTTEN5ZGdS?=
 =?utf-8?B?RzRaa3hIdlNqd3FIQk9TczEwZ1pyT3FRRzJublZnUi84U2lRTUZjWjRMM01k?=
 =?utf-8?B?TnhrZVQrYnoxaGRQc3VEVU82ZTd1SmFRN29wWXRlOGNzUkZYNFBES1g0U2Ju?=
 =?utf-8?B?WHBFaVZzYnlqZFNQVXNmMHJLd2UwajRUS2ZrM1FxY0tCalhYdHlaNFNublhH?=
 =?utf-8?B?UUFrSC84d0VKUWl1OUtRYUZjbkN1QUN5YmoyakY1aFJ0ZlZyTHloWHNyL2RQ?=
 =?utf-8?B?YWkxTml3TEwvUFV2WVdZRG9IL1V4RHlMSFNEa0QvNDR5TlQwVEdXcE1XcUlZ?=
 =?utf-8?B?RUgrbm5nUldhdjNhQzVTazBxMzFYektHd3k2aEFJbktDMTdPTDJuTndUNW1E?=
 =?utf-8?B?Sm1ERm9BK3dRV3FYTFNkVzFNRGxiMEdxQ0IyR3EvT0g2YmpPOUdvRGZVVmVS?=
 =?utf-8?B?d2tBbmhoK1FjY1JjU0p0aWNQbEdyTzZpYnRhMFUwamk4ZGxrejg3WmI3cEJT?=
 =?utf-8?B?Y2EwQ2s4U3dZdmFRTE8vUXVhemVsSEVUWVJNdld1NDNjK0tJQ2VWTWlyZjRI?=
 =?utf-8?B?eTVCYjhtMUFRTXl3S0Z1ajk4SkQrN3BjN2ZMcHloOUt2Rm5MZEJHT1R2YXF2?=
 =?utf-8?B?b1Ruc1FBdDRqTVhndXdDdElvV0hNeTgveCsyZU5iSEdqOXdERzluUjFDQnc2?=
 =?utf-8?B?MGRQT3R6RjUwdmdGRVBvK0JoZnJWZ0hUTUg5LzBZMEw4STU0eGRvaGFzSVVK?=
 =?utf-8?B?RDJEUG83aEdqTzkyV3htcC94ZkJXZU5HUUJHRHpDYUFMQmdubWtKbFg3WkZY?=
 =?utf-8?B?Mmo5WkdMbUNaQThWMllURXd6THBLMWpuSExmMGdKSDRTdElmNkY1RnVpK1lP?=
 =?utf-8?B?N2FJOW4yRjQ2TmlQdXhuUDdkdlY4UEQ4Wm1XRzJ1WEVTU1d2WVB6MmxMNDB5?=
 =?utf-8?B?UzV5QzdhcTZxaHVKSmFmQ3JSdXRsSm9rektnc2Q1Yis2N1FsbTN5ZHREQmUx?=
 =?utf-8?B?ZmQ3OXJmWmhyUFpYRThoWnIzSGR4bnY2NXQ4UUtIVC9yNWgxZzd6QnU4VGFk?=
 =?utf-8?B?a3h6azlteWw5YzV4N01yZVRUVGdSMVhjWWp2WktMaW1iK21iMzNWS1BiQVNv?=
 =?utf-8?B?NWxZV1FGTmxrMlgwWWt1YTJlenJ2TXkxOHhaOEQ2UFc1QjcwbnlEdXoya2Jv?=
 =?utf-8?Q?a+y/Ixei+4vb9jh981pTcBl2ai2sx/dI82Dvjmb?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB8906.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(10070799003)(41320700013)(4022899009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cXRUNE0zMTdXa0lwWXowN0EyQVJyTW05SUI4NmR6SkxGdGxLWXNQL1p5Vmwx?=
 =?utf-8?B?Q2N4RU0xbGVJMWozK3BPcEM3UzI1OXRrNThPVGp3MHNpc3RET2pXSVJoalZT?=
 =?utf-8?B?UkNzZEw5V1B6QitUMnFVYnVaNTgzS2dPQXBHQ3V2SUFhWG9ZZjVHK1FaNWVU?=
 =?utf-8?B?UmtHY1BhWG9zUjlsbWZXcnRjUWJKN0NrRkxWMUFjd1NrdmgxZkdiQmFMV2My?=
 =?utf-8?B?MlhaQXRJQ0srcGI0WnJCRHJuaGlyN3Mwdy8wRC9Za1lZK1FMYU5vbnNDRFlG?=
 =?utf-8?B?SnRrbWltL0NoeGs4bFZSdkdKZGU4TTE5UGJZS2M3L3Znd3lCMXEyZmxNVTJF?=
 =?utf-8?B?N0FFbi9qVUxqMWRMRi95aDFzaVRNSFNDSWd3WUxlc0w4eTJpK205WitoaU1U?=
 =?utf-8?B?VXBRaE1obkhKdVlQQmR3TXFQcmU4TWs2RVRhNTRiRUJaN0lsMTFwSUhqUEZN?=
 =?utf-8?B?RXgzZjFqYndDck9xb2NOZGpvcUtiUElSNDR0djdtZ0tmMnBFMm0yTXNtZ05C?=
 =?utf-8?B?TVBaejk2Mk10THUyWEhhWUxZeXlDTk55aDdXZjcvOUk3dFMwc0ljTk4yQWsz?=
 =?utf-8?B?cjkrbGpwbTQ2c054UDV6dE5ldGszbERSSzNETkFLdDV5MkxpbWRNMlltU2lJ?=
 =?utf-8?B?NE1HS0Z4RTlTQTZub3FBZEpFeGFqT0UycHhTQ2oxa2VtMWplTVVqM0lMSGxm?=
 =?utf-8?B?M3NscDlHRCtQU29ZZzJENWVNdXZTS0VjalZkWmR0MlZuaDNTQ3VBWTBOb0Zh?=
 =?utf-8?B?UXhHSEJXKzVYNTVydjIzNVhTcjRFOWZ6KzNEVzBWUFV6WGs1dDk1UGdJNW5a?=
 =?utf-8?B?UWp2cWNzWUJuRXNBejFxQnp6UzBQY0YxaXZVdmxkZDJQSnoxYzltSis0ZHRB?=
 =?utf-8?B?VkZNZVhjYWxuWWJxUkhzalFGY0JuSVJFMHkvb3BzaVpBSWJwdmxGK0U5S01C?=
 =?utf-8?B?dHkzQ3BlSUZVdVVOUDlEb295R0MrWWRmNndIVWVCeU1MeE5BMUhKUjNtZXl5?=
 =?utf-8?B?bE5EclRid09TV1FqUjhreFo3VzdCNkF4VmNMRllaaDZzQzlQZWorVWdrMEN2?=
 =?utf-8?B?SGVPVUFUdEhIV0hsSWhIa0FjTDVOYlN3N0dxQ0htS2ZKMzF0bXowVHZIV3Qy?=
 =?utf-8?B?UlAwL2IrZ1RQZitJRW9XcjlNRGNYS2hHRmo4RFJaVGNZbFRtUTY5ZjVVeFBP?=
 =?utf-8?B?bklFd0p1SkE2dUVCNmZFSktKY1hNNlJrd3IxQlpKSTlJTjZsT0VFM0tQTmV3?=
 =?utf-8?B?amY3VWhybVZFSjR6cHZDSUxCV3l6MmlnUTREdnowRjJwWXBMUGR5c2t6S3ZF?=
 =?utf-8?B?cXI4bGhJRDdSa1NXVW5VNnl3ZURQMHEvQ1VHTVdWbFlBVUtHcDRydncwQmtM?=
 =?utf-8?B?akxrYkJkUk5JL1NYRmhVY2dIeU1GcUtlcElFbEg4aWpyMGw0MlNmaHpicXlE?=
 =?utf-8?B?ejZjS0JoTnBZUEVoNFo0bXpwcnRUa2tDR2ZzUytEMDl6VU9qc2lqMmlyUTQw?=
 =?utf-8?B?bjRCbUI0YXExa3pUQ0hxUXRSZ290djNYNWtRelFIMXpCY2hFZnRSV1NKaFpj?=
 =?utf-8?B?Y25WQ1E3bzhoQ0E2U0ZYN0tXVTh5RW5QUC9RWGJQdXRvMVZiYW9WbkhMYStm?=
 =?utf-8?B?ZEZUdDUzZThXNTgzTnA0eldmWlRJV3BqRmZZZGQzS08wYmVOeDBrNFl6NWRl?=
 =?utf-8?B?UTZqSjk4SFAvNVZRL0pXdnFBeHNQR1BKVjZFZk1OQXV2TTc3T0ZZTWdCdUJG?=
 =?utf-8?B?eWtuWVAxb0k0VnJ1azU2bWEyMklmWGM2c1RoYVVRVHZUSm1GK2xGQzQ4T0Y0?=
 =?utf-8?B?SHFIK3AwdVFPeFhRRGIvVzIvbEhIaGE4dXJUamlpRnZuREh4VVFLNDdFSkhG?=
 =?utf-8?B?a3AwYXZJZ1pUWjRZSThCbklWampGQVpEMVJTR2tWNFJWOUd6RGIrSlZMWVlY?=
 =?utf-8?B?L1ZhdkFQMDh5Yjl2NlA2d3BwODNiOGUrdlhZWjJNdXRITnZLdnphdU1xdHhv?=
 =?utf-8?B?ZGlxNkpMeW40dDBmL2FheWZtcGJPRmlqMkpxR0hCbWF0bWoxMSt4bGo5Y0x4?=
 =?utf-8?B?OG5WRGR2K1RsVkZydUNuUnBvNXlhclFndlY4U1FJTHc4RlJ3RTBIcXVNdjVG?=
 =?utf-8?B?QzVRQkthYXVLY1p1K2tMWlhwUkpkbVRMUDRFT2hyNkJXQmJNdEdFWmQ1NWIv?=
 =?utf-8?Q?Dof6Iyt09o/XkgcbfFgdvTefSL2aFAAVMalGC2uy6b4S?=
X-OriginatorOrg: nwra.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a8f4ec4-2989-443e-3df2-08dcf5de2783
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB8906.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2024 16:49:27.6117
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 761303a3-2ec2-424e-8122-be8b689b4996
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB9841
Message-ID-Hash: BEV7H6534MFLFUVO25J2EH2OH2WRD5UE
X-Message-ID-Hash: BEV7H6534MFLFUVO25J2EH2OH2WRD5UE
X-MailFrom: cmspooner@nwra.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble connecting to an x300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BEV7H6534MFLFUVO25J2EH2OH2WRD5UE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6022300641606283087=="

--===============6022300641606283087==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms020702020803000709090905"

--------------ms020702020803000709090905
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

VGhhbmsgeW91IE1hcmN1cyENCg0KWW91ciBzdWdnZXN0aW9uIHByb21wdGVkIG1lIHRvIGNo
ZWNrIHRoZSBuZXR3b3JrIHNldHVwLCB3aGVyZSBJIA0KZGV0ZXJtaW5lZCB0aGF0IEkgaGFk
IGluY29ycmVjdGx5IHNwZWNpZmllZCBhbiBJUCBhZGRyZXNzLiBUaG91Z2h0IEkgaGFkIA0K
Y2hlY2tlZCB0aGF0LCBidXQgYWxhcyBJIGRpZCBub3QgY2hlY2sgaXQgd2VsbCBlbm91Z2gu
DQoNCkNoYWQNCg0KT24gMTAvMjUvMjQgMTE6MDUgQU0sIE1hcmN1cyBELiBMZWVjaCB3cm90
ZToNCj4gT24gMjUvMTAvMjAyNCAxMzoxOCwgQ2hhZCBTcG9vbmVyIHdyb3RlOg0KPj4gQWxs
Og0KPj4NCj4+IEknbSBoYXZpbmcgdHJvdWJsZSBjb250cm9sbGluZyBhbiBFdHR1cyB4MzAw
IFNEUiB1c2luZyBVYnVudHUgMjIgDQo+PiBzZXJ2ZXJzLg0KPj4NCj4+IFRoZSBicmllZiBk
ZXNjcmlwdGlvbiAoZGV0YWlscyBiZWxvdykgaXMgdGhhdCBJIGNhbiBwaW5nIHRoZSBkZXZp
Y2UsIA0KPj4gYnV0IEkgY2FuJ3Qgc2VlIGl0IHVzaW5nDQo+PiB1aGRfZmluZF9kZXZpY2Vz
IG9yIHVoZF91c3JwX3Byb2JlIG9yIHVoZF9mZnQgZXRjLg0KPj4NCj4+IEkndmUgbG9va2Vk
IGFyb3VuZCBvbiB0aGUgd2ViIGZvciB0aXBzLCBidXQgbm90aGluZyBpcyBoZWxwaW5nLiBJ
biANCj4+IHBhcnRpY3VsYXIsDQo+PiBJIG1hZGUgc3VyZSB0byBwdW5jaCBhIGhvbGUgaW4g
dGhlIGZpcmV3YWxsIHVzaW5nDQo+Pg0KPj4gwqDCoCBzdWRvIGlwdGFibGVzIC1BIElOUFVU
IC1wIHVkcCAtLXNwb3J0IDQ5MTUyIC1qIEFDQ0VQVA0KPj4NCj4+IERldGFpbHMNCj4+IC0t
LS0tLS0NCj4+IEknbSB1c2luZyB0d28gVWJ1bnR1IDIyLjA0LjUgc2VydmVycy4gVGhlIFVI
RCB2ZXJzaW9ucyBhcmUgdGhlIHNhbWUgDQo+PiBvbiBlYWNoOg0KPj4NCj4+IMKgwqAgVUhE
IDQuMS4wLjUtMw0KPj4NCj4+IE9uZSB1c2VzIGdudXJhZGlvIDMuMTAuNy4wIGFuZCB0aGUg
b3RoZXIgMy4xMC4xLjEuDQo+Pg0KPj4gQm90aCBzZXJ2ZXJzIGNhbiBjb25uZWN0IHRvIGFu
ZCBjb250cm9sIGFuIEV0dHVzIHgzMTAgd2l0aCB0d28gVUJYIA0KPj4gZGF1Z2h0ZXJib2Fy
ZHM7DQo+PiB1aGRfZmZ0IHJ1bnMgZmluZS4gVGhlIHgzMTAgaGFzIGRlZmF1bHQgKDEwIEdC
KSBJUCBhZGRyZXNzIG9mIA0KPj4gMTkyLjE2OC40MC4yLg0KPj4NCj4+IFRoZSB4MzAwIGhh
cyBvbmUgVUJYIGRhdWdodGVyYm9hcmQgYW5kIG9uZSBXQlggZGF1Z2h0ZXJib2FyZC4gV2hl
biBJIA0KPj4gY29ubmVjdCBlaXRoZXINCj4+IHNlcnZlciB0byB0aGUgeDMwMCB2aWEgMTAg
R0IgZXRoZXJuZXQsIEkgY2FuIHBpbmcgdGhlIGRldmljZSBhdCANCj4+IDE5Mi4xNjguNDAu
NDoNCj4+DQo+PiBjbXNwb29uZXI+cGluZyAxOTIuMTY4LjQwLjQNCj4+IFBJTkcgMTkyLjE2
OC40MC40ICgxOTIuMTY4LjQwLjQpIDU2KDg0KSBieXRlcyBvZiBkYXRhLg0KPj4gNjQgYnl0
ZXMgZnJvbSAxOTIuMTY4LjQwLjQ6IGljbXBfc2VxPTEgdHRsPTY0IHRpbWU9MC4wNTggbXMN
Cj4+IDY0IGJ5dGVzIGZyb20gMTkyLjE2OC40MC40OiBpY21wX3NlcT0yIHR0bD02NCB0aW1l
PTAuMDM0IG1zDQo+PiA2NCBieXRlcyBmcm9tIDE5Mi4xNjguNDAuNDogaWNtcF9zZXE9MyB0
dGw9NjQgdGltZT0wLjA0OCBtcw0KPj4gNjQgYnl0ZXMgZnJvbSAxOTIuMTY4LjQwLjQ6IGlj
bXBfc2VxPTQgdHRsPTY0IHRpbWU9MC4wMjYgbXMNCj4+IDY0IGJ5dGVzIGZyb20gMTkyLjE2
OC40MC40OiBpY21wX3NlcT01IHR0bD02NCB0aW1lPTAuMDI3IG1zDQo+PiA2NCBieXRlcyBm
cm9tIDE5Mi4xNjguNDAuNDogaWNtcF9zZXE9NiB0dGw9NjQgdGltZT0wLjA0MiBtcw0KPj4g
XkMNCj4+IC0tLSAxOTIuMTY4LjQwLjQgcGluZyBzdGF0aXN0aWNzIC0tLQ0KPj4gNiBwYWNr
ZXRzIHRyYW5zbWl0dGVkLCA2IHJlY2VpdmVkLCAwJSBwYWNrZXQgbG9zcywgdGltZSA1MTA0
bXMNCj4+IHJ0dCBtaW4vYXZnL21heC9tZGV2ID0gMC4wMjYvMC4wMzkvMC4wNTgvMC4wMTEg
bXMNCj4+DQo+PiAoV2Ugc2V0IHRoZSBJUCBhZGRyZXNzIHRoaXMgd2F5IGxvbmcgYWdvIGFu
ZCBJJ3ZlIGJlZW4gdXNpbmcgaXQgDQo+PiBzdWNjZXNzZnVsbHkNCj4+IHVudGlsIHJlY2Vu
dGx5LikNCj4+DQo+PiBCdXQgdWhkX3VzcnBfcHJvYmUgcmV0dXJuczoNCj4+DQo+PiBjbXNw
b29uZXI+dWhkX3VzcnBfcHJvYmUgLS1hcmdzPSJhZGRyPTE5Mi4xNjguNDAuNCINCj4+IFtJ
TkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDExLjIuMDsgQm9vc3RfMTA3NDAw
OyBVSERfNC4xLjAuNS0zDQo+PiBFcnJvcjogTG9va3VwRXJyb3I6IEtleUVycm9yOiBObyBk
ZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4NCj4+IERldmljZSBBZGRyZXNzOg0KPj4gwqDCoMKg
IGFkZHI6IDE5Mi4xNjguNDAuNA0KPj4NCj4+IGFuZCB1aGRfZmluZF9kZXZpY2VzIGdpdmVz
Og0KPj4NCj4+IGNtc3Bvb25lcj51aGRfZmluZF9kZXZpY2VzDQo+PiBbSU5GT10gW1VIRF0g
bGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS4yLjA7IEJvb3N0XzEwNzQwMDsgVUhEXzQuMS4w
LjUtMw0KPj4gTm8gVUhEIERldmljZXMgRm91bmQNCj4+DQo+PiBJIGF0dGVtcHRlZCB0byBy
ZWZsYXNoIHRoZSBGUEdBOg0KPj4NCj4+IGNtc3Bvb25lcj51aGRfaW1hZ2VfbG9hZGVyIC0t
YXJncz0idHlwZT14MzAwLGFkZHI9MTkyLjE2OC40MC40Ig0KPj4gW0lORk9dIFtVSERdIGxp
bnV4OyBHTlUgQysrIHZlcnNpb24gMTEuMi4wOyBCb29zdF8xMDc0MDA7IFVIRF80LjEuMC41
LTMNCj4+IE5vIGFwcGxpY2FibGUgVUhEIGRldmljZXMgZm91bmQNCj4+DQo+PiBJJ20gcHJv
YmFibHkgbWlzc2luZyBzb21ldGhpbmcgc2ltcGxlLiBBbnkgYWR2aWNlPw0KPj4NCj4+IENo
YWQNCj4gSXMgaXQgcG9zc2libGUgdGhhdCB5b3Ugc2V0IHRoZSBJUCBhZGRyZXNzZXMgb2Yg
eW91ciAqSE9TVCogdG8gdGhlIA0KPiBhZGRyZXNzIGludGVuZGVkIGZvciB0aGUgVVNSUD8N
Cj4NCj4gVGhvc2UgcGluZyB0aW1lcyBhcmUgc3VzcGljaW91c2x5IGxvdy4NCj4NCj4gSSBy
dW4gYW4gWDMxMCBvbiBhIFVidW50dSAyMi4wNCBzZXJ2ZXIgd2l0aCBzaW5nbGUgMTBHYml0
IHBvcnQgb24gdGhlIA0KPiAybmQgU0ZQKyBpbnRlcmZhY2Ugd2l0aCAxOTIuMTY4LjQwLjIs
IGFuZCBpdCB3b3Jrcw0KPiDCoCBqdXN0IGZpbmUuDQo+DQo+DQo+Pg0KPj4NCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tDQoNCi0tIA0KQ2hhZCBNLiBTcG9vbmVyLCBQaEQNCk5v
cnRoV2VzdCBSZXNlYXJjaCBBc3NvY2lhdGVzDQoxNDkgQm9uaWZhY2lvIFBsYWNlLCBTdWl0
ZSAyMDANCk1vbnRlcmV5LCBDQSA5Mzk0MA0KY21zcG9vbmVyQG53cmEuY29tDQo4MzEgNTIx
IDY3NDMNCk5XUkEgU2NpZW50aXN0L0VuZ2luZWVyLCBWUCwgQm9EDQpjeWNsb3N0YXRpb25h
cnkuYmxvZw0KDQo=

--------------ms020702020803000709090905
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
KoZIhvcNAQkFMQ8XDTI0MTAyNjE2NDkyNVowLwYJKoZIhvcNAQkEMSIEINi6Vfgf8o4fEQDC
2QUs8u+50aMj/8uBBZpDrNE3GeCTMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEqMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgcwGCSsGAQQBgjcQBDGBvjCBuzCBpTELMAkGA1UE
BhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xOTA3BgNVBAsTMHd3dy5lbnRydXN0Lm5l
dC9DUFMgaXMgaW5jb3Jwb3JhdGVkIGJ5IHJlZmVyZW5jZTEfMB0GA1UECxMWKGMpIDIwMTAg
RW50cnVzdCwgSW5jLjEiMCAGA1UEAxMZRW50cnVzdCBDbGFzcyAyIENsaWVudCBDQQIRAJ+U
N4/qVBcXAAAAAEw81ocwgc4GCyqGSIb3DQEJEAILMYG+oIG7MIGlMQswCQYDVQQGEwJVUzEW
MBQGA1UEChMNRW50cnVzdCwgSW5jLjE5MDcGA1UECxMwd3d3LmVudHJ1c3QubmV0L0NQUyBp
cyBpbmNvcnBvcmF0ZWQgYnkgcmVmZXJlbmNlMR8wHQYDVQQLExYoYykgMjAxMCBFbnRydXN0
LCBJbmMuMSIwIAYDVQQDExlFbnRydXN0IENsYXNzIDIgQ2xpZW50IENBAhEAn5Q3j+pUFxcA
AAAATDzWhzANBgkqhkiG9w0BAQEFAASCAQA0ajv2OF3htJm6ua5f9Os2seZMKyF8IK2om+Hs
nAk3HfkV34HNjZ19Ec6HhZxrtmTG6coQvGZD+7hx5aRZfyZj3jMWTPGOEfz3RR56P5wRQc3I
pp9Stwwe8Gs7jhZVrb5f4WguMJX6qToLYiAvguFuGGeDAY5NMWqrJY43GW1mEbf4vD9k6UgS
kiE32DPmE+7QkimE3FLpUHocnuWro6bIZQgQwcjhuhZPjURRSUbZweiStiiylne78DQdkcbT
9/nEBOInxr/U6b3bq0NJKYuhaGeiZ/YdCTiZIMUg6fOyjrhygivg+J+Kzr9CHLyMV+OVCXgM
45I4lWAHhlMa4B8zAAAAAAAA

--------------ms020702020803000709090905--

--===============6022300641606283087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6022300641606283087==--
