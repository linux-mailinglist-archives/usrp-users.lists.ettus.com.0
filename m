Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AAF9FEAB1
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 21:48:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 816EA385A32
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 15:48:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735591681; bh=oa1x2g6E8OgQQu1ZOQniOHDp7kiCMOclgBSQz1kU3oY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PLWh+HoRKb2Zj/LeKBUxBAZJaL7W44oL0BlayyHAvFjeYVp2jESWdSrVK/IQRCAsh
	 6ZsQsssQb5HM1YI3Z8RfOaNnjcAFq7opvr2YXWNQt8GeFxXRpQJ9dnEuRD1rtERXoU
	 +jMpCs2bCwQmoxaqAITtBRwmB/LhL6lbJnGUv80GuJU12HbPq5vW+g9Q9AQthWSRWJ
	 Xmfxe5v2QoLyD7/N7yTW+yTFciJM6SZWEbBQsKB/7+KRHYcFrsYnysi7LQrFr5guN7
	 M1XFz1ihl+eyc/6xcErb8GMC00HoIp4ZkFQL4rM3qKQ+mr0qp7mMfO6X39Yrxfp+sz
	 d7AuZ7nWc/7CA==
Received: from SA9PR09CU002.outbound.protection.outlook.com (mail-southcentralusazon11010035.outbound.protection.outlook.com [40.93.193.35])
	by mm2.emwd.com (Postfix) with ESMTPS id CFB7038589A
	for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 15:47:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nwra.com header.i=@nwra.com header.b="y9zzEPT5";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xEWihnxNBcL1j/J+iuMGt5YZszZOVd9BfRb5Lf+RvJymUMsxNBnoz72f58BXMs95Xu9qptRAaIGCzYpWyphpeEEJ4LaZ1Z+gByx8aVW8dISzQ0dQbpccvuEBq8zn11iuL/9Jwc90tO34emBsjPX4Hmv/RwyAFHlOV+/G9gOmnVEzsFfYyn/BTYvpPLF20ISAkjbJnfrYoJWDLVD3y2dN82usUM5xn5QBSp5c029ZW+mVlXnndpsuHWPEGO3BMSBoce+igt5SAj7otIB3dfdiXTkAY3j1/AZpwR4VDIT+dAddL4ALj4PQ9mucXQkR/1ZRQ2XrReDn4VgukdzrPxJQ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4gCYBe2SDBHMpV+KI8CLc0IM1ImaD+Wl7ZshafNqnzM=;
 b=YtFcZ66ZxXcZNlTIYp8wNNKbpBLV10F8qNBDXFS8rCuirNytwHsdZJthHcaxbb2d7ih8ma22+X4452/AXylEU0hhs6vir30M8cDwtI5/hECDOkb5wZI0vPF3+X73aexOOCEK6TROSehgxURkShMQssoGGDukREHNUeBttgqqxT2LfNvSB6BOOwK7gkRAV5XqFJOr7OSQl/hqIxJJHX4WNpdu5JkY1i8bdwufwUY/gTT6lTS0jXlsfN6dDmPLkmOQzULiO9+LPAq0kmaG7e35bylpiBBTgwKLSxPRcTLQYQBjh5OC0Y7IBnsWhGzYTxtkzaHuC8ZVxuzJvN1vCU5yTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nwra.com; dmarc=pass action=none header.from=nwra.com;
 dkim=pass header.d=nwra.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nwra.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4gCYBe2SDBHMpV+KI8CLc0IM1ImaD+Wl7ZshafNqnzM=;
 b=y9zzEPT5OfgqKI0qN3zgXKdfX3X1ylniJKct6l39WRpxkd6t4u9vy1oBoNEE1c6SHbllvaAMlXW94owsCQG7hOCvfwEJj8+sFSzgoYYTZO9omwoby86zXNyC7zUWk7QJRxbdQEKdWBSJmLTDs309C140CnpUFqKSUMjx6iJYzMleJEs353RgH4hkOXHbha4Tv912MOiovY7EBFyLCSALJ27iJJ9xViQwtSy6hdB+zjM+KoBiklq3msN+09QgEX6xKk5F/N63keUxzjQCMURf2vhhnajyThN1n2E0ChdDu8UvJfF5G3q0fdR1/ebtrTC+8v1CHcjaHHZVTdQPzB3NSg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nwra.com;
Received: from SA1PR09MB8906.namprd09.prod.outlook.com (2603:10b6:806:28b::15)
 by PH0PR09MB11038.namprd09.prod.outlook.com (2603:10b6:510:2c8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.20; Mon, 30 Dec
 2024 20:47:43 +0000
Received: from SA1PR09MB8906.namprd09.prod.outlook.com
 ([fe80::6704:7f9d:b12d:4e8b]) by SA1PR09MB8906.namprd09.prod.outlook.com
 ([fe80::6704:7f9d:b12d:4e8b%3]) with mapi id 15.20.8293.020; Mon, 30 Dec 2024
 20:47:43 +0000
Message-ID: <a3bfa27e-f68b-46d2-97b5-b95e7bfad1d9@nwra.com>
Date: Mon, 30 Dec 2024 12:47:41 -0800
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
Content-Language: en-US
From: Chad Spooner <cmspooner@nwra.com>
Organization: NorthWest Research Associates
In-Reply-To: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
X-ClientProxiedBy: BY5PR16CA0023.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::36) To SA1PR09MB8906.namprd09.prod.outlook.com
 (2603:10b6:806:28b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB8906:EE_|PH0PR09MB11038:EE_
X-MS-Office365-Filtering-Correlation-Id: f6918905-51e3-4d67-04f0-08dd2913354b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|41320700013|4022899009;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bkZWOSsxUUpWcTVSQmpsZDFSeGtRYkFrSEQrcFNXVWhJZExhSURxV2VKRzVY?=
 =?utf-8?B?Z1ArRTBER2xZRExScVZ2U1VnUGE3Uzl2RmhrS2x6czlXNUJCdlpYNkxmeXZ4?=
 =?utf-8?B?OXhEeFdmTmFHeFpsRFdiQTZFckRoU2ZrV3k2MmdBVDBhV3B3MS9XMWhxa0hr?=
 =?utf-8?B?NnJjejJMcGhKazl4OThManJ5WEdRT0dzOFpQV2ZmZlJLWDNJM2Z3Yk1scGN3?=
 =?utf-8?B?aVB6cWo1TVVjMGphUk9VY2dhL0FSejhMQjZ0Tm1JczIzdE9RWm9FUS9NYTFq?=
 =?utf-8?B?c2hDOG5yMlA3WGJBRWNXdzB5Vm1YZUh6eXRpZzZJUGcrTlFockMrZUNYejVw?=
 =?utf-8?B?WXFlODNublZyZC9XUW85Ui9UcWxsSFVKdXlqZFZCdjJsZ3RkNHN2dXhKcHpu?=
 =?utf-8?B?NnJnZU1seDZkcit0TkRLbUpvcnpXK2Q4bTJqc0RYRzRLekRoNXlwcHlvL1Bo?=
 =?utf-8?B?TWh4WWVSQ1ZSWjVvT1orV2cxcDA0ci9WcFkyU214K0g5bVBjTHZOSXgzYm9X?=
 =?utf-8?B?NElqdktpTTRtdXBDU0RCN0hwTG1mdkowM2R2eFdoZTA4S2Y3dHk3c3dGczdP?=
 =?utf-8?B?U21ZNklUWWZKVldnOUY1c1doTVlkRm1Xb2ZpaUcySnl0OHhPZzcxQ1BVNWIv?=
 =?utf-8?B?a0VWOFJpRTJURXhNRlhndjF4ekIxODZnQ0RtL0xLL1VzdHZPTnFlWUhXTjU2?=
 =?utf-8?B?bU9XNzE2TXFoNzVmQmdoWnZ0czBiMkJvd1NHRklibEZ6WU9EL0tCZTVPY2ln?=
 =?utf-8?B?RUF0ZndsMFlrYnVGWm54MDhlaGdRcEhzbHpaWUpaQkFhQWpUT202ZEUyV1Nv?=
 =?utf-8?B?QWowZUs2Y0VWT01wM0tiYzZCMWZycUlyYy9PdlNjSTNaOFpnTUFQb3ZmdS85?=
 =?utf-8?B?Mml6d1dMMW5Qejhqc3dkaU9tU1hnb3N1WmxMalZNTkZ5QlIvQVkxQnIzZVZX?=
 =?utf-8?B?WU5QeFFKTTA4c3Y5ai9JVTBEbXZWaVdFVmkxd08vYmJ5SmRMQU5uMkRMVEtl?=
 =?utf-8?B?NDB1ano0RHVBM3huZ1o5N09Dajhtb2lXM01DL01HSU1ia3p3WW94S0FCWURq?=
 =?utf-8?B?WWpDdUI1WERTNHRaWG1La2tqQnVEcEtLK1F3Qm5wMXRzVmFDM2pwK25BMkFu?=
 =?utf-8?B?OFZtRUdsZkpIdXI1bnRRNG5mem1iZHBUSEdNelh6ZlJlUzA5MXVPNFFHM1Q2?=
 =?utf-8?B?WG1EQlFNaitvWFA5NEo1Rko5ZjZON1BMcTNuZjlrcXhNNzF1a2xrU3YydzVt?=
 =?utf-8?B?dGk3MEVjOUR1Z2dMU3VnVHRmSm9zUndpQmszQzZyWElwdGd4VXdzR2pRQVpl?=
 =?utf-8?B?Q2Vla0JwN3g2N0NHeFhTNUE1eDA5dW90UlVWZ3F0WVB5aVhYZ0kyMUJQOWlz?=
 =?utf-8?B?OGRrUE5FQkRVTE0xUUJwdXZRekZNZkpkcDlEK0dpTDg1dk83Mk0waFhWQTEr?=
 =?utf-8?B?LzhldlB3Ym5kbHhmK3V6b0pNd2VmKzVSK01LRWFIczdtYTZvVldjVkphbXV6?=
 =?utf-8?B?cGR3WnRKK1p0Ty9IaTBnU1FoSEF1aitsN01VcjE1Tis5UVM2Q0hBYTA5Qnov?=
 =?utf-8?B?TVBaeEpyWEF0NUJidHE5blVvZTg1Ukk5eGRsZWsxODIxMms4YUpLUFFFQ1pw?=
 =?utf-8?B?Zk9yVXpEdmtDODBDQ2g4RWR2cXJBc2h0Q3FxdUh2YlhaMTQrV3AwR3dRTzB2?=
 =?utf-8?B?eVlySXgvK3p1MEFGSklUQzBTYUpTSzFGbkNvSmZTNStMcko0MnlDYlZkY0dy?=
 =?utf-8?B?YzE1bWZYL3N5c241amRiTWVWZEVobUpnV2dVRzhsd1lKRFYxT0N4WlBBTTZR?=
 =?utf-8?B?SmZzSlZNZENBcGUrUjh6WDNlTzd3d2lFcEFyOEs5Wi9pTEtHa0J1Q3M0UTdK?=
 =?utf-8?Q?tclEehAHWIESu?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR09MB8906.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(4022899009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ODB4OTdrei84RWtkWWttRkNEUEF4YmxNSTF4MnhPZUFkcCtxd1ZlbEY1cGY1?=
 =?utf-8?B?WlliYm00amF4bnFEc3VIUjNpVkd4TUxqSVhVWVZsalFTcVdXSnZMNFp3NHQx?=
 =?utf-8?B?dlNKU0RKY1RYQzJmYnBZcGpkL1FLM1lseEkzaWZtalZGeitnQTEwdk42S2dK?=
 =?utf-8?B?Y01idUZBbUhyZnBnMFhwWWtNeEQxNTIwVDBFU0dKL3h1U1dIdGo1NXJqWEhj?=
 =?utf-8?B?eFZsRjU3d2Z2QTVOTjdVYStnSjlGZ1BpeWRqaERkZUV1NkVNa1NYQjA3cnAz?=
 =?utf-8?B?TXBGdzRSTWhzcDM2SlhoVzU2dzF0YzNFVkQrWjBYT2xYcWhzdXcrRTVQQUh2?=
 =?utf-8?B?ZUt0dmtsbEVjYXF0bm1pN2I5ZkRpM0REM2FJRThVcEUxMzJEMFh1Y3lFdHdY?=
 =?utf-8?B?QW05OFlFWXEyMkM3Q0FTR1ZCc3F6QTZtKzZtVWl4cXd5dTYvcURRNTUwQ203?=
 =?utf-8?B?Z0VMSXlyN3dHeGJUL1A1MHBPamEvY3pabEU4WjdnZ0RxSEVHeVJnWXZUQkF1?=
 =?utf-8?B?QXo1ZU9ZVk5NUGQ0KzErOGtzamxTNTlkbUZXRnphUEhmSlQzdEdVMDNVS0Rs?=
 =?utf-8?B?Zzg0WGI2WVNrZUxxc202dnlKbFJWc01zZUdERG1WWHRtNU42Ynh5VlVxNWVi?=
 =?utf-8?B?MmxFSmYva09rTitiMzA4dDNBTGxBdFhoQlpvVDdMWEFkS3RyUTdEYWVKQ0U5?=
 =?utf-8?B?RUxHOFU2bHc0TEtHUVdGWUtmYUVDS3B0Nkk4T1JDNEVXazA0azYrVi83Wm1o?=
 =?utf-8?B?Tm9xYkJaTzJYWUFXTnNFTWlzTkN2WU55TUd0a0lsWkFBZ2drb0pYdXRSL0Ex?=
 =?utf-8?B?MnlhdU45TTBZb2xwVXlKWnptdXllVTUxRllEaWVVTERBQVNSZWZKNHFRcHlF?=
 =?utf-8?B?cjB2V3dnZHF4d0VvczVMeVZUQnMwY1VsYTZIWmtpUjdSMU10T04vUlZIK0RH?=
 =?utf-8?B?SU85WG5XdDhYMlo5MDVFMUhNQ2tzU0ZpN3NqOHZuUGRCazVYUzJ1c3VGZnlr?=
 =?utf-8?B?REhldWtMajRZR3RRaFQzZm1CZjR2anBEaElzQXhDMndiUmVVMkhzY2s0MXNw?=
 =?utf-8?B?b2NDQlluQ3lYZWRaNnRlYk8zdnk2aVpRMnhYZ0p6WUp4Umh2NmZZMGg2NDYr?=
 =?utf-8?B?OWc3ckw3VWQyeVk2UXg4K0laU1VEY0Q1blNvczVqdDRsTGFlN280TTV4aGhV?=
 =?utf-8?B?aTA3eHJVYVVTQjd4YVE3N0wzc2M4ZlhsdTQxVGVpMm83Z2wwdmdrUXNzRlR0?=
 =?utf-8?B?RytjNXhWVjRmWEY2RHYySWdmRDBzQmIrZGhnMjNIMFFIK3RLVXQrd29FVHh6?=
 =?utf-8?B?OXhVcjFUQTVYSVEvS1pvVE1DaVZpVmk1WmtYelRkTU1teUFrSnJoZFhwSytt?=
 =?utf-8?B?NFNFMWo5M1o5S3N4ZGRNSXBtanl0Ukk5dGlvNjEvcnlYcDJxWWQwTHNnK1la?=
 =?utf-8?B?ZHk1UGJoUm9zWjVpWjA1K0sxSTJFbXhEd3NhcUxBWkZDY0FKcnhoL2xOSHMz?=
 =?utf-8?B?cmk4bXFDMFZNaC85UzdBOGN4UnBCZEZUZDJsVG5MdmZQOE5ZeGF4dnJ6eTdn?=
 =?utf-8?B?WUNjM3BzUm96WHNiK1hDRmtMd0VNZWlnVFdxWkV3aHdDem5yNUxuV0tKZXJH?=
 =?utf-8?B?dExkcjYzN3lKVGZpRXJ6TUpQZ0pRUFN3QjV6aTduenRmaVpqNGwyY0dNN2hv?=
 =?utf-8?B?cmUvQVo0R3Jtb1pOM3RTQmhoV05DRmM1M3ZpcFkzelJZK0IweWlmNytVV29i?=
 =?utf-8?B?UlE3cDFPbGJQeFg2eEdpT29hZ3VEMHRZNW9JOXdIVFl4VWZsVjQwUmFvVGlx?=
 =?utf-8?B?c0hYSnk0VHhQR2lNVVRMTjJSd0RSZ0NDd25VeDFGZXRRQUN5a2poZU9aZnFF?=
 =?utf-8?B?SkFsY2tWOFYyZ0R4TVE3bFV1c05nSlBxVGNwd0FmNW0vd0ZSOUREdTNWZmYr?=
 =?utf-8?B?dU81bGpPVVNKT1JzOVg4cEtTUXJYOTY0ZkVMYk1qcEVLWkJmYTBtSnV0VDNL?=
 =?utf-8?B?WGhXU3JMaGxOZWJPbGI4RkRWKzRlWlkvdTlRekRJS3pnamVidUtRbjN4V3pH?=
 =?utf-8?B?aHZ3aDlnWitOaEwyTGR3d3k1bWJqOFpxSnE4RHV3ckNGd1hFclBYK1pxbFZQ?=
 =?utf-8?Q?iS/Gaq535PyzOj/Nw1SFP7dGq?=
X-OriginatorOrg: nwra.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6918905-51e3-4d67-04f0-08dd2913354b
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB8906.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2024 20:47:43.3447
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 761303a3-2ec2-424e-8122-be8b689b4996
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR09MB11038
Message-ID-Hash: ECGLXPAN3W7KJN2JY5EHWRRHRAMYPG7T
X-Message-ID-Hash: ECGLXPAN3W7KJN2JY5EHWRRHRAMYPG7T
X-MailFrom: cmspooner@nwra.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Thanks for a decade of professional fun! (Or: so long, and see you around!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ECGLXPAN3W7KJN2JY5EHWRRHRAMYPG7T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1251826226880991730=="

--===============1251826226880991730==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms060606020503060804020407"

--------------ms060606020503060804020407
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

TWFyY3VzOg0KDQpUaGFuayB5b3UgdmVyeSB2ZXJ5IG11Y2ggZm9yIGFsbCB5b3VyIGdlbmVy
b3VzIGhlbHAsIGJvdGggZm9yIG15c2VsZiBhbmQgDQpmb3IgdGhlIG1hbnkgb3RoZXJzIHRo
YXQgaGF2ZSByZWFjaGVkIG91dCB0byB0aGUgbGlzdCB3aXRoIHF1ZXN0aW9ucy4NCg0KWW91
J3ZlIG1hZGUgdXMgYWxsIGJldHRlciENCg0KQmVzdCBvZiBsdWNrLA0KDQpDaGFkDQoNCk9u
IDEyLzMwLzI0IDEwOjU4IEFNLCBNYXJjdXMgTcO8bGxlciB3cm90ZToNCj4gSGVsbG8gVVNS
UC1Vc2VycywNCj4NCj4gd2hlbiBJIHN0YXJ0ZWQgaGFuZ2luZyBhcm91bmQgb24gdGhpcyBt
YWlsaW5nIGxpc3QgaW4gMjAxMywgSSB3b3VsZG4ndCANCj4gaGF2ZSB0aG91Z2h0IHRoYXQg
SSdkIHN0aWxsIGJlIGFyb3VuZCBlbGV2ZW4geWVhcnMgbGF0ZXIuDQo+DQo+IEJ1dCBtZSBh
c2tpbmcgYWJvdXQgc3BvcmFkaWMgc2lnbmFsIGlzc3VlcyBhZnRlciByZXR1bmluZywgd2hp
Y2ggSSANCj4gd291bGQgbGF0ZXIgYmUgYWJsZSB0byBhdHRyaWJ1dGUgdG8gdGhlIGltcHVs
c2UgcmVzcG9uc2Ugb2YgdGhlIERDIA0KPiBjYW5jZWxsYXRpb24gSUlSIGZpbHRlciBpbiB0
aGUgTjJ4MCBzZXQgbWUgb24gYSBjb3Vyc2UgdG8sIG1vc3RseSBvdXQgDQo+IG9mIGJvcmVk
b20gZHVyaW5nIGxlbmd0aHkgY29tbXV0ZSwgd291bGQgc3RhcnQgaGVscGluZyBwZW9wbGUg
b24gdGhpcyANCj4gbWFpbGluZyBsaXN0IGZyb20gbWVtb3J5IGFuZCBsZWN0dXJlIG9mIHRo
ZSBHTlUgUmFkaW8sIFVIRCAoYW5kIA0KPiBnYXRld2FyZSkgc291cmNlIGNvZGUuIEl0IHdh
cyB0aGF0IHdoaWNoIGluIHRoZSBlbmQgZ290IG1lIGNvbnRyYWN0ZWQgDQo+IGFzIHN1cHBv
cnQgZW5naW5lZXIgZm9yIEV0dHVzIGluIHNwcmluZyAyMDE0Lg0KPg0KPiBTaW5jZSB0aGVu
IEkgaGFkIHRoZSBpbmR1Yml0YWJsZSBmdW4gdG8gcGxheSBhIHNtYWxsIHN1cHBvcnRpbmcg
cm9sZSANCj4gaW4gc28gbWFueSBwcm9qZWN0cyBvZiB1c2VycyBvZiBVU1JQcyDigJMgZnJv
bSB1bml2ZXJzaXR5IHN0dWRlbnRzIGRvaW5nIA0KPiB0aGVzZXMsIG92ZXIgZW5naW5lZXJz
IGdldHRpbmcgZGVtb3MgdG8gZG8gd2hhdCB0aGV5IHdhbnQsIHRvIA0KPiBwaHlzaWNpc3Rz
IGNvbnRyb2xsaW5nIGluc3RydW1lbnRzIG9yIG9ic2VydmluZyB0aGUgY29zbW9zLCB0byAN
Cj4gYmlvbG9naXN0cyB3b3JraW5nIGluIHRoZSBtb3N0IGRpdmVyc2UgaW1hZ2luYWJsZSBm
aWVsZHMsIGFuZCBvZiANCj4gY291cnNlIHRoZSBtYW55LCBtYW55IGNvbW11bmljYXRpb25z
IGVuZ2luZWVycyBidWlsZGluZyBmYW50YXN0aWMgDQo+IHN5c3RlbXMgZnJvbSAoYm90aCBs
aXRlcmFsIGFuZCBTaGFubm9uKSBiaXRzIGFuZCBwaWVjZXMhDQo+DQo+IFdvdWxkbid0IHdh
bnQgdG8gbWlzcyB0aGF0IGV4cGVyaWVuY2UhIFNvIHRoYW5rIHlvdSBhbGwgZm9yIGJlaW5n
LCANCj4gc3Vic3VtaW5nIGV2ZXJ5dGhpbmcsIHRoZSBuaWNlc3QgdXNlciBjb21tdW5pdHkg
YSBoYXJkd2FyZS9zb2Z0d2FyZSANCj4gdmVuZG9yIGNvdWxkIHdpc2ggZm9yIDopIFRoZSBV
U1JQIHNlcmllcyBvZiBkZXZpY2VzIHdpbGwgcmVtYWluIHRoZSANCj4gY2xhc3Mgb2YgZGV2
aWNlcyBJJ20gbW9zdCBpbnRpbWF0ZWx5IGZhbWlsaWFyIHdpdGgg4oCTIGFuZCBJJ20gc3Vy
ZSB0aGF0IA0KPiBldmVuIGFzIE5JL0VtZXJzb24gbW92ZWQgdG8gaGlnaGVyIHByaWNlZCBz
ZWdtZW50cyBhbmQgcGFpZCBzdXBwb3J0IA0KPiBtb2RlbHMsIHlvdSB3aWxsIGNvbnRpbnVl
IHRvIGRvIGdyb3VuZGJyZWFraW5nIGFuZCANCj4gaW5mcmFzdHJ1Y3R1cmUtdXBob2xkaW5n
IHdvcmsgd2l0aCB0aGVtIQ0KPg0KPiBCdXQ6IGl0J3MgdGltZSBmb3IgbWUgdG8gbW92ZSBv
biDigJMgdGhpcyBpcyBnb2luZyB0byBiZSBteSBsYXN0IHB1YmxpYyANCj4gZW1haWwgZnJv
bSBhbiBAZXR0dXMuY29tIGFkZHJlc3MuDQo+DQo+IFdoaWNoIGRvZXNuJ3QgbWVhbiBJJ2xs
IG5vdCBiZSBhcm91bmQ7IHlvdSdsbCBzdGlsbCBmaW5kIG1lIG9uIHRoZSANCj4gbWFpbGlu
ZyBsaXN0IHVuZGVyIG90aGVyIGFkZHJlc3NlcyAoc2VlIHRoZSBSZXBseS1Ubzogb2YgdGhp
cyANCj4gbWVzc2FnZSksIGFuZCB5b3UgbWlnaHQga25vdyB0aGF0IEkgYWxyZWFkeSBraW5k
IG9mIHN0dWNrIHdpdGggdGhlIEdOVSANCj4gUmFkaW8gcHJvamVjdC4gTXkgcmVudCBpcyBz
dGlsbCBwYWlkIGZvciBieSBTRFIgc3lzdGVtIHdvcmssIGFuZCBzbyANCj4geW91J2xsIHJ1
biBpbnRvIG1lIGF0IEdSQ29uLCB5b3UnbGwgZmluZCBtZSBwbGFzdGVyaW5nIHRoZSBpbnRl
cm5ldCANCj4gd2l0aCBleHBsYW5hdGlvbnMgb2YgdGhlIHN0cmFuZ2VzdCB0aGluZ3MuDQo+
DQo+IE5vdCB0byBnZXQgdG8gc2VudGltZW50YWw6DQo+DQo+IEtlZXAgb24gaGFja2luZyB0
aGUgZWxlY3Ryb21hZ25ldGljIHNwZWN0cnVtLCBuZXZlciBsZXQgeW91ciBzaWduYWwgDQo+
IHByb2Nlc3Npbmcgc2xvdyBkb3duLCBhbmQ6DQo+DQo+IFNlZSB5b3UgYXJvdW5kLA0KPg0K
PiBNYXJjdXMgTcO8bGxlcg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQoNCi0tIA0KQ2hhZCBNLiBTcG9vbmVy
LCBQaEQNCk5vcnRoV2VzdCBSZXNlYXJjaCBBc3NvY2lhdGVzDQoxNDkgQm9uaWZhY2lvIFBs
YWNlLCBTdWl0ZSAyMDANCk1vbnRlcmV5LCBDQSA5Mzk0MA0KY21zcG9vbmVyQG53cmEuY29t
DQo4MzEgNTIxIDY3NDMNCk5XUkEgU2NpZW50aXN0L0VuZ2luZWVyLCBWUCwgQm9EDQpjeWNs
b3N0YXRpb25hcnkuYmxvZw0KDQo=

--------------ms060606020503060804020407
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
KoZIhvcNAQkFMQ8XDTI0MTIzMDIwNDc0MVowLwYJKoZIhvcNAQkEMSIEIJO1bkujVCicvgsP
RdIjgGEj1O4iROllrejDhbZQ6wHZMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEqMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgcwGCSsGAQQBgjcQBDGBvjCBuzCBpTELMAkGA1UE
BhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xOTA3BgNVBAsTMHd3dy5lbnRydXN0Lm5l
dC9DUFMgaXMgaW5jb3Jwb3JhdGVkIGJ5IHJlZmVyZW5jZTEfMB0GA1UECxMWKGMpIDIwMTAg
RW50cnVzdCwgSW5jLjEiMCAGA1UEAxMZRW50cnVzdCBDbGFzcyAyIENsaWVudCBDQQIRAJ+U
N4/qVBcXAAAAAEw81ocwgc4GCyqGSIb3DQEJEAILMYG+oIG7MIGlMQswCQYDVQQGEwJVUzEW
MBQGA1UEChMNRW50cnVzdCwgSW5jLjE5MDcGA1UECxMwd3d3LmVudHJ1c3QubmV0L0NQUyBp
cyBpbmNvcnBvcmF0ZWQgYnkgcmVmZXJlbmNlMR8wHQYDVQQLExYoYykgMjAxMCBFbnRydXN0
LCBJbmMuMSIwIAYDVQQDExlFbnRydXN0IENsYXNzIDIgQ2xpZW50IENBAhEAn5Q3j+pUFxcA
AAAATDzWhzANBgkqhkiG9w0BAQEFAASCAQBH6RoBZrJWxsLWZhPiOWwtCk6plqVX8WxKRgG5
eiEDe3EnYaqygWw2ACjpfr6Ww5ViKS9siWOJj1cRcaOUMVL5jb27BP4IXn8MPZlPZT/6g8mu
LcHn3wTCyrTcR2768ybiTRxgI0+3K6RIg63KGYCQT+ZLl1DO/ioblVikj/W+l41D7eQlQQUR
ZmdBqaIBaQVfoIxcgQfg6v6ffiWBELrIssA+yS58EDrvsEDas4QmwHOfHEvxIjOQnbwuLQBz
d2nGtDUw4Gl2nSGb5Ds0Qkd7QwvOL//yUL5D4LCxLgMacgrPrup1W+7zBiNQj66QXap832ko
LfmMHAK1qwKiGLRaAAAAAAAA

--------------ms060606020503060804020407--

--===============1251826226880991730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1251826226880991730==--
