Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 385E2A5562E
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 20:08:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56AE1385F27
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 14:08:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741288116; bh=6mQyxrCoiCAlzwY04eq8AhjIDo1oefIBEWWVXKgOeN0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wA7/1tax/XlLl+0nb7ZzFaKytOyGULv+vDepFfzLNbVMkJiemcniDfP6VLtOB4K0x
	 xgD0keQbD5vJuULJoYrFQznxzWbl+WO+lNVFNtSooANavz+A6SC0xAEX5hkf33xh3+
	 cRfJZLO9DtZbKYU5J5RjGlzIx4VRZXErBoMfX49GG6tPIma6t/Lotz2nVsXcmT+XLb
	 ai9G1RoRLm34tywN8JnQjwKizAKQNe4dJeE6Ui2sWgIIy2zSWG1Huw1OgsvbjerxSp
	 P69Romshde+LeY5vfj/qIlyOVdiQlMwxP7JCZAEb3mbmmhel0MItAZce3N1DHLyKk7
	 33VlRhL3kBXQQ==
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11023134.outbound.protection.outlook.com [40.107.159.134])
	by mm2.emwd.com (Postfix) with ESMTPS id 7279D381413
	for <usrp-users@lists.ettus.com>; Thu,  6 Mar 2025 14:07:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=student.uclouvain.be header.i=@student.uclouvain.be header.b="hWpt1kXM";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uczHJhkBGF9NlkZcawoTeq7sGom7WWgsgTPJ1EHMa0Hb8NWP+svtlbBhqMYWnF2J+fy2EfdNFOc9HHXmVHk6bshrtpqpFrQp/p+3iP5Xh2RqvP1QpumzktulXnHhiuuifASk0Imv1Xn+9PmrcdjBBwKlXCQ3VFfiS7AVQCUx+1KHlLzH4NijCoHGPiWFEOxK8oAO5EVGrZinosbD9oWLqe48YEMzYHDf+zxYv27WL2/uPQyh1Xt9+YdGLKxoI+IUcXIJJsEmhJNuxpLRR04aZTCtPB5UK5S1wAEL8M9rgKhlTQbpuOE8yJ4+QEn5Jrs5q1vIAV01u3GtODKCwNix/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2E87UdHJA8baIU7TWA1KdCFe0kkWPAMECt9f86tNjs=;
 b=BS67uav40ZAKJCm5cgQRo2vynEy87/MlBL5uYREajMS0jEasRV+h1Hj2g17YisRFEXwVF+fjJeRmRj/2siuOU/XlP/8JD1uS4tn0lIGcx5rRndrjzxueAydvMDBc3Munzyfu6zsh/Pg8D1qicsF3yPab/zPRtlWFnEGEhndxBFojS0Kz7ujyiBkJ8XSwcgOy2wAcCNQ9YlmbesXafAnNTjR1SUniIRlbjIsyw6r7D2u4AoIcbfBMnDaJEevapHkiFsDYTD6sYFCKTlJ/lYHOJ6YV1ZybMzm25FOwfTdxQQR/Ojd0tvmCh1fA1UZNkJBU9/v2v6OZkzdpEfiQAq0q+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.uclouvain.be; dmarc=pass action=none
 header.from=student.uclouvain.be; dkim=pass header.d=student.uclouvain.be;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.uclouvain.be;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v2E87UdHJA8baIU7TWA1KdCFe0kkWPAMECt9f86tNjs=;
 b=hWpt1kXMPAgRUc2JPCFdtBnB05iruw9AB+HfW6qfYYrEiugwU1BzP4KcvAnH+WrGP2JNPyo6PVIK7liDZ6sT6IU3EbR3PyUF8XcsVfdhlLyScP/kJXemMprW8zotDPAUH8EwwUL50OKg/waufY+ecgE9Dq2ex5RsDjepmLOhiwzlhur2leUGt+jLx3q4cilxgmHi+5yEpuUk24bWWQx176Sh3rFxMtp+NsiHc1oY8bIfFMss1virzhl5jo/iwtqeZ6LcX2TAn9HLdecxTu0VDxk2KEFNJUZq+MwZD3u1JffObS/92KTt6TzhdHcBGSpBaNSqvr9NRQfxm6Yx+y/cmQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=student.uclouvain.be;
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com (2603:10a6:10:2d1::9)
 by PAXPR03MB8131.eurprd03.prod.outlook.com (2603:10a6:102:229::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Thu, 6 Mar
 2025 19:07:32 +0000
Received: from DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d]) by DU2PR03MB7862.eurprd03.prod.outlook.com
 ([fe80::16c7:3652:4278:dc8d%4]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 19:07:32 +0000
Message-ID: <7378136c-86c0-403c-9eed-20e1b563b0ea@student.uclouvain.be>
Date: Thu, 6 Mar 2025 20:07:31 +0100
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <b02c97f1-c0f2-42ee-9634-6b4db87b6bc2@student.uclouvain.be>
 <ndvfv4gyhxiiciggelyb4wxqal4iskwl42zqwm3dpqyqmobvlv@iluybtxe234d>
From: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Content-Language: fr, en-US
In-Reply-To: <ndvfv4gyhxiiciggelyb4wxqal4iskwl42zqwm3dpqyqmobvlv@iluybtxe234d>
X-ClientProxiedBy: AS4P189CA0034.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dd::12) To DU2PR03MB7862.eurprd03.prod.outlook.com
 (2603:10a6:10:2d1::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR03MB7862:EE_|PAXPR03MB8131:EE_
X-MS-Office365-Filtering-Correlation-Id: 00eaa326-4e05-4804-f772-08dd5ce2259f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|10070799003|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dzN0ZGczUzgzSzZWTDlLQmlraDZtSk0vNk0ybmE4R2N4c1FYMkV1ZjcvZHBz?=
 =?utf-8?B?MDVsNXpjS0UvdG9QQW5BNnYzTVBmc2NaU3lDaW1kNDlCRjNFcFhYSmEwbnVC?=
 =?utf-8?B?Q2FQUU5CaG5ZZWhpMHRKaWhCYmtKNGZjOXU4UDAxdmY4Q1Q5V1Myc3NQMmd0?=
 =?utf-8?B?K3RNWUh0bHFMN3hBYVY4YTl5WDhOTS9QdzB4OVJ3cGw1R2tIK3JaQzhIYnpO?=
 =?utf-8?B?bnEwaVpxOExOVWZOQ2toVUYzYnhkNm9uMExKaWVmR3VoOWdOQm1ENGRhNUYw?=
 =?utf-8?B?L2dxWkkxeG9GQnY1aU1yN0xHMkJnRXpYM3BJdC9kOSs1RFpiVnRJbGUzN1h6?=
 =?utf-8?B?R1JTQmp5UkdaYTZnUWdhcm1VeFFveXVnUUdXZWFtWitTL0p3Q1RKT1ZhZnFx?=
 =?utf-8?B?VUxsNHRlV00rMTVaM0xsT2RWRzZOUC8zMElOYTZHZkpiQStPWXFtSnlNdEtx?=
 =?utf-8?B?MEUyeTdLZVZMNWxtRlduYUJpU3p6UzBtUkxBRG5CUU5QYnFhSEtVOTJtazBZ?=
 =?utf-8?B?dXZHa0MyMEhGMW9VbXdHMGJTQ0trZnVNeDdBL2NxWmFzU0tXSm9TdW9XRkNs?=
 =?utf-8?B?Q0dwVHNQcTdIODdHdzhMZmZ2V0UxeWc5ckpyUFFFRjNXelVIYnZoQVRHTXBu?=
 =?utf-8?B?OWc4S283Q2svQ2RmY1VsYnROL2lueGxuVkJEL05VWFZjdlJ3R2RvQ0ZQMjRn?=
 =?utf-8?B?a0Y2eUV4bHRhOWFXWExTZW9BZ3ZmK3dHeWViUTNLaDFpL0tWa0cwZjkzR1o0?=
 =?utf-8?B?SVJteHpWNVd1ZDl5UHpvNHh3UHdyZUVRTVBPWWtDQ3V0MkRoamtyY3l6cnp1?=
 =?utf-8?B?TXhTNTIwTjZ2L29Da04zSHpVMXZlZUhyYXZsaHFVaGt1dEc3dktjSHAydkIv?=
 =?utf-8?B?Q1M5cDZ1cVpiandLRENmWjRzdFRkejdrS2R6cUdZdHIvdVFxZmY3bG9BbnJX?=
 =?utf-8?B?WFZudU5DVDhUR2RwUEp4amdWY3p1dnZCUy9ZTm5aN0Zmc0ljZ2pxVVM3R2VH?=
 =?utf-8?B?VVhndlFlNldZcjZPeVpwQ1FGclA0ZUZTc055Z1J6Z2xMNHBNTmlGVTlzUWIv?=
 =?utf-8?B?NURpV3JoNkc5aXNBWXZlZWIzbzY1WENnNVJtMldBOVR3emdnNmlpZlM5VVdU?=
 =?utf-8?B?bk1CeExCRFphandQbUUzUEdwczZLWFZlUVd1a0N4dWZEd3B4MFp4RjFzN25Q?=
 =?utf-8?B?YU9kejR5aWlXNDZWYUoxTXF0MGtIVzFFYW5HUjJNeGZTaUhFMUU1c1lzWnNq?=
 =?utf-8?B?U1JTL2NtQ2lYWStFS2F6RFZUcVp5MGQ2ZDVuYlQ4cCtQQlZUdW5QMlBsNWRp?=
 =?utf-8?B?SDVpTU5rd0NNZnlDd3lQNjBUSjBYS2RjRlBqOC91RXUwcnZhcjBWMHlOMTZM?=
 =?utf-8?B?U2dRYnJqT2xSMTk3YXhzS0k4TlBhclNhWE9JM3QzMEVyQWo4cVlPR2xjNEI2?=
 =?utf-8?B?ZjhMMS9DdnNuY3gwejB2RjhETlFqei84V1dUTTR0L2VXQXN5OW80QnZ4ZEhC?=
 =?utf-8?B?MnI0OFpUNjJybWkzaVUvak1WNmJjMENROHJYaTliZ09GL2dJaVJ1Y1lqeW5U?=
 =?utf-8?B?Y2I0OEdoeHJreEtIOVhjaWlJWndGRTVHdzIwazFISmxkUVZnYjBaZ292V3Bs?=
 =?utf-8?B?RHhFNzJ0S0xKeHdjUS8vMHc0QWR2YWlGQW1jNngzT0NhaytDZjFlNjc3bXJm?=
 =?utf-8?B?czJjQ0lSK05TSXdvT29GbXVzZUpka2d4Y2tBaGY3VEdBeE1yMUVFbVh1Z1Az?=
 =?utf-8?B?dmpwUHdSWTltcU50bFJHdm1VbkUvR2h1dmN6WU9QNmY0VW9TWWZoQ3Z0Zmta?=
 =?utf-8?B?YjZiaGdtNzZvMGNCYXRMb29IaHJUL0l1dUhnT2pHd042YURodURacFZFZ0hT?=
 =?utf-8?Q?sZydw700HuSot?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR03MB7862.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(13003099007)(8096899003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MUczaGx2L3lHTWhVZFdQT3MzUC90bVBtdHlrcXNlWWVkcFJpTy9lSnV1RHd2?=
 =?utf-8?B?Z0xKUFpRR2RRNW5EWlJ0dmh1am5SYkx4dng3V0IzdWt0SERUK3FYTnBZOS9v?=
 =?utf-8?B?cjZTTVFITG82UzY4ZkhJQ2tVR3lXOW4wQlJ6REI3ait2K0hOY0NGNDJnTnNy?=
 =?utf-8?B?YndFcEFyUW51b3RiMi9seW4yT01HU0hCNTBWSkRXK0hMb3grQWFWelpHV2h0?=
 =?utf-8?B?ZVU3T0Jwa05JOHRodXJSZUgrNE40Y0p3Wjc5UjdxYjhpTUZOejBZTWFLK1NR?=
 =?utf-8?B?eXhXVFlXOGFxbXJNNE8vT05UQXhra3UvQVQzVDJ0OWlrMWR4WXZIeG5IQTEr?=
 =?utf-8?B?UmFLa0hpMzR6T2JzUHZoMDNqOWphM2pxU3BpTldkNWtmNnNEUGg1dStQVnNX?=
 =?utf-8?B?QlByNHhXdjM4aTY3V2Fic0syTjUvQUlEMlRKUDlFaGlJbHg5UGJDWDVMNit4?=
 =?utf-8?B?ekhuKzEyWTdCWDdFY3NJSW8rd2hNdzNhSFJGL0JEc0ptTWJsMTkzRVpFOWd6?=
 =?utf-8?B?MTR4L2lxZDJ2eWc3S1QrZ2FmM2tOTlExcUtVOUFhTlJYZE96VE5Yd0JkYUMv?=
 =?utf-8?B?Mk1NbzcrVlpQQ3JNTDlLZWpmS1VLQWJ4MWd3N3MxVklBcFJucGJGNWFhbEp5?=
 =?utf-8?B?U21JeFRKNHZERlZCWndxU0l6c001eWZ1NnpvS2gxM0tPbVVsdGZDazRCb3k2?=
 =?utf-8?B?U0NMMG1TN0tKbENTekdESFFBTXdudm9sdUF5RTByYWVUTFNPelM5ajdtejc3?=
 =?utf-8?B?akEwL2FncXRka1J4ek8wc0U4ZGxIMDU0b3BHSThFdjJVd3orM3BHaEcvMW8r?=
 =?utf-8?B?WXB3WVRuNDIwMUJSdFoybTBzSWxYdnBjaWdGd2NWMWorR3lMTjFvYjZ1TnNr?=
 =?utf-8?B?b1ZMaUV4aWd6eVVTTzFZMWo4b0tpWG0vVndISUNOeEMwS0ZTWCtzTkFRMU1j?=
 =?utf-8?B?SHE0ci9uYkFsMlhHN1A5d3hrRk1ha2JZVzYwWWF3RUM3SmFNcTl4dlpDODhr?=
 =?utf-8?B?Rmtnd2FOb042cDk2eHVUOERFZDB3MldtbjVIMGt1T3g5QXFMNDV0M1REeENw?=
 =?utf-8?B?QlgyQllwcTFxWTlGajN5QlMrckdUcDQrMHFoRDJreWRNK3AxdExtdEt2QkE1?=
 =?utf-8?B?TnFqeTU3aHAyekxBdldRMUprVHVXYjJmdHNYSEVnSER5RklpMXJmd3dsK1Vy?=
 =?utf-8?B?emN2NDAvTWx2dlJsSVpXOFF5cG0wTkJMWWFLMGM0WVNOVEdIaDdQWUg4VnpW?=
 =?utf-8?B?WjlOZm42UklLcnBzSzZMWjFYay9PTjMwUlVvMVd6QmVRbytramUyZytSRFli?=
 =?utf-8?B?RW1HQ1ZoOXRIdHZPWXBGd2FSSTdSWEJDNGhJZGFtcUpBalB0VkVpSnFZOCtp?=
 =?utf-8?B?REVMeVBVaDBUc2J0TGRtSExKWlFRN1FPZEtzRkNOa0lnQzJFRkVwWDg1cDZV?=
 =?utf-8?B?NUVqYWJjSzRPTEp4ZURxdWZnRXh6em5xd1o3ZnFGS1p5M2RwZlZIQjNBazJw?=
 =?utf-8?B?Z1FrWnBiZUJMMm1ySXRUTW5YUVN5d3RQT3kzTlBDSjNnQWlTZ0NSY1RmV2o5?=
 =?utf-8?B?Q0pyQXU5amIxZVdocVliOSt3NGtGUDNEZHN5U21qN1dSNW0yM0J3TFdoME5k?=
 =?utf-8?B?NllUWGFRVkN5eVZXM1dBWDNLbGpxQ2VWVDNQSVJlMlV4Y3FEdmNlZG5IK1R2?=
 =?utf-8?B?YkFjd0FiVTFSSk1maGxiTW9kdVVqWWNycnlhVUVOVGk4cWJpb1V5aHhYQXYw?=
 =?utf-8?B?b05YTWtUVUdsOEk2NkphenRLOFl3Ri9kUHNVdk9WZ3VISWR5SjRJQTVwRXdW?=
 =?utf-8?B?cFVxcGlYbDZvMTJrb2YzbjVxdlRYaUlab093U0hvc2ZraXZQMFVYUzBLR3JH?=
 =?utf-8?B?a253UUE1ZUFFTnpScWRubFJiUWVIaVI4bUhCN1gySU9sUTE4em5SNEVVTTM4?=
 =?utf-8?B?K3BGUm82Mk5aaVREZzF6WVE4VER3bE16OXR1L0YwdXBZZXNrYytxdnU0V1Y2?=
 =?utf-8?B?T0taT1pjSXBWV2hwTWRhZmtNcnlzaENKRXd0M0ZyS2l6R2xhWGFsRC96OXps?=
 =?utf-8?B?b2IzTmlnSzFSZnZmWWtTNUsvNERia0FJSHpVT2U1NllidFp3b1NKN0dmM0Jj?=
 =?utf-8?B?bDNDSi9hNzI0RVhkand6NXBKL0tkY0NSYjAzcW1lRkJiRlgwdmhNTmtsKy94?=
 =?utf-8?B?NTJQSmI4ZTM1akZYQkM3eUtIdUxyWUFvb2tkelhCWVZmbFUzOC95aGFOOElM?=
 =?utf-8?Q?eoAIM4Lyw6kCOMyHvVZTQZGTuXX9/1MTB0lxZmvwbI=3D?=
X-OriginatorOrg: student.uclouvain.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 00eaa326-4e05-4804-f772-08dd5ce2259f
X-MS-Exchange-CrossTenant-AuthSource: DU2PR03MB7862.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 19:07:32.1536
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7ab090d4-fa2e-4ecf-bc7c-4127b4d582ec
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jU9oiz4c5/kAtYCr1LKpShL/uT8hvkQi4qYgTRXVpXA7JOSvA736dvy3sY9Gn9Lk2wCUboqc2mmv/LnO+9R8Q5PETAEro7zI6o6AbOozUTeUBXlf8HVuNEjH7K3XL4xt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR03MB8131
Message-ID-Hash: YOHTZ22KVPZQPEVHIL73DK7S23L2R5JC
X-Message-ID-Hash: YOHTZ22KVPZQPEVHIL73DK7S23L2R5JC
X-MailFrom: quentin.prieels@student.uclouvain.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM Reciever chain on USRPx310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOHTZ22KVPZQPEVHIL73DK7S23L2R5JC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1532915095589236008=="

--===============1532915095589236008==
Content-Type: multipart/alternative;
 boundary="------------CyN0UG0YP5Y7l0wnWZPdOafe"
Content-Language: fr, en-US

--------------CyN0UG0YP5Y7l0wnWZPdOafe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello C=C3=A9dric, Hello everyone

Thanks for your replies.=C2=A0 I will try to use or be inspired by those =
blocks.

I have a slightly more specific question on this subject. Do you know=20
how to integrate the codes in the fpga/usrp3/lib/blocks/rnfoc folder=20
into a new OOT block/module? Do you instantiate them in the same way as=20
the =E2=80=98mult_rc=E2=80=99 IP (the one in the "HDL_IP" parameter) in t=
he example of=20
the gain module? To structure the code, is it possible to define how to=20
move this code within the OOT block?

Thanks for your help, I appreciate.

Quentin

On 6/03/25 16:53, C=C3=A9dric Hannotier wrote:
> [Vous ne recevez pas souvent de courriers decedric.hannotier@ulb.be. D=C3=
=A9couvrez pourquoi ceci est important =C3=A0https://aka.ms/LearnAboutSen=
derIdentification ]
>
> On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
> Hello Quentin,
>
> On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
>> As part of a research project, I'm looking to implement an OFDM receiv=
er on
>> the FPGA of a USRPx310 (and more specifically, the synchronisation sta=
ge).
>> According to my research, some RFNoC blocks with this function already
>> perform this function. Where can I find them?
> AFAIR, there are some RFNoC blocks in a branch over the old FPGA repo:
> https://github.com/EttusResearch/fpga/tree/rfnoc-ofdm
> for example:
> https://github.com/EttusResearch/fpga/blob/rfnoc-ofdm/usrp3/lib/rfnoc/o=
fdm_peak_detector.v
> Apart from Schmidl&Cox, I don't see anything merged into the default br=
anch.
>
> Never used them. Don't know how accurate they are.
> Note that they are 7-8 years old...
>
> Best
> --
>
> C=C3=A9dric Hannotier
--------------CyN0UG0YP5Y7l0wnWZPdOafe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p><font face=3D"Aptos">Hello C=C3=A9dric, Hello everyone<br>
      </font></p>
    <p><font face=3D"Aptos">Thanks for your replies.&nbsp; I will try to us=
e or
        be inspired by those blocks.&nbsp;</font></p>
    <p><font face=3D"Aptos">I have a slightly more specific question on
        this subject. Do you know how to integrate the codes in the
        fpga/usrp3/lib/blocks/rnfoc folder into a new OOT block/module?
        Do you instantiate them in the same way as the =E2=80=98mult_rc=E2=
=80=99 IP (the
        one in the &quot;HDL_IP&quot; parameter) in the example of the gain
        module? To structure the code, is it possible to define how to
        move this code within the OOT block? <br>
      </font></p>
    <p><font face=3D"Aptos">Thanks for your help, I appreciate.</font></p>
    <p><font face=3D"Aptos">Quentin<br>
      </font></p>
    <div class=3D"moz-cite-prefix">On 6/03/25 16:53, C=C3=A9dric Hannotier
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:ndvfv4gyhxiiciggelyb4wxqal4iskwl4=
2zqwm3dpqyqmobvlv@iluybtxe234d">
      <pre wrap=3D"" class=3D"moz-quote-pre">[Vous ne recevez pas souvent d=
e courriers de <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cedric.=
hannotier@ulb.be">cedric.hannotier@ulb.be</a>. D=C3=A9couvrez pourquoi ceci=
 est important =C3=A0 <a class=3D"moz-txt-link-freetext" href=3D"https://ak=
a.ms/LearnAboutSenderIdentification">https://aka.ms/LearnAboutSenderIdentif=
ication</a> ]

On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
Hello Quentin,

On 2025-03-06 15:19 +0100, Quentin Prieels wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">As part of a research projec=
t, I'm looking to implement an OFDM receiver on
the FPGA of a USRPx310 (and more specifically, the synchronisation stage).
According to my research, some RFNoC blocks with this function already
perform this function. Where can I find them?
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">
AFAIR, there are some RFNoC blocks in a branch over the old FPGA repo:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/EttusResearch=
/fpga/tree/rfnoc-ofdm">https://eur03.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fgithub.com%2FEttusResearch%2Ffpga%2Ftree%2Frfnoc-ofdm&amp;=
data=3D05%7C02%7Cquentin.prieels%40student.uclouvain.be%7C3ae893fb4a284ca44=
e9f08dd5cc714ca%7C7ab090d4fa2e4ecfbc7c4127b4d582ec%7C1%7C0%7C63876873233627=
2267%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIl=
AiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3DdaA=
wbNquMCdD0qG2gSu73Zv9XjU8OF03P4YAY%2BncKVw%3D&amp;reserved=3D0</a>
for example:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/EttusResearch=
/fpga/blob/rfnoc-ofdm/usrp3/lib/rfnoc/ofdm_peak_detector.v">https://eur03.s=
afelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2FEttusRese=
arch%2Ffpga%2Fblob%2Frfnoc-ofdm%2Fusrp3%2Flib%2Frfnoc%2Fofdm_peak_detector.=
v&amp;data=3D05%7C02%7Cquentin.prieels%40student.uclouvain.be%7C3ae893fb4a2=
84ca44e9f08dd5cc714ca%7C7ab090d4fa2e4ecfbc7c4127b4d582ec%7C1%7C0%7C63876873=
2336299309%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAw=
MCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=
=3DXnKpXNpmd9RTNmyF%2FFewBEL8MpL32bbe%2B1S1aUtyr%2Bo%3D&amp;reserved=3D0</a=
>
Apart from Schmidl&amp;Cox, I don't see anything merged into the default br=
anch.

Never used them. Don't know how accurate they are.
Note that they are 7-8 years old...

Best
--

C=C3=A9dric Hannotier
</pre>
    </blockquote>
  </body>
</html>

--------------CyN0UG0YP5Y7l0wnWZPdOafe--

--===============1532915095589236008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1532915095589236008==--
