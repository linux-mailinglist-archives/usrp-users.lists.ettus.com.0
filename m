Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2802C91BF22
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 15:05:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A94F385930
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 09:05:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719579931; bh=3tK/i1vLXynXD4wrY0YPjW+DaSlwtVhZBz9k3FVfU2A=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C6ilpKJ2wTU2QPdu+rsOgX/g+snHbgV9wBchhS/bvp1ncj3JtPw9zVGCDjcnnRv4c
	 +OZHnkg9W+wNduW9Np/q0eX1kO7TDW32yC1SuRkEldELKfQc+idflsvntVikYTLcvL
	 hwQFghKXhBDCiBjyiS3zWaxFBeiVzRZGj3ksgrBiGfIte42fiT9DVChcp4aqSgmlao
	 Jy+JQiPTtWx0TOHdiiqBALAkioJZHi7vQZo2fquCphNTmWTV0xr20vFiJwme3hC2U+
	 SKBx43T6zZU6RjYLfqT/SdMPfjL8wv1XMPxZ6u/8TxkegaTsMPmHUkUG9uPE4baX6S
	 BMuBKaMv5mlSw==
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2124.outbound.protection.outlook.com [40.107.237.124])
	by mm2.emwd.com (Postfix) with ESMTPS id A0D33385826
	for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2024 09:05:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=mit.edu header.i=@mit.edu header.b="BCeR+TWJ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gz/pwNp2FMnolCrFDbj8XeI2C0qlI8NfECihXwRTiM0mlM1C/S9wGZzgUvEEGZbO7kGiPiyKvopHXS/WR2+8UgbJJxjFvZQMSPdCFMO6md9+iCrmc7Ran+id8UMGbN42LQfZhA0hQs6BTyIumDI7OoZ3iZ0xCtC5Tg3U9RXijA8yCf2o1Ue5yJTKIK1GxLcSwI1cq+oOnAoyd0L52nfCBu88p10BAmb+jDF384irUOh0xqPEaH2DG5P7v4MiRd+nScIrNw5XkXA4lswhbZRuyz0kenrlAnbrHilmwoTD4Y3RV6E5vTdXMf4syULOth3vmZL7PuMcezHVaYz20/IVzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bGTO8+UZJ3G1BWERbcxEcQx5OpdC3ATIEIMa5Wx3kN0=;
 b=Mv/f0t0g821e7dqZV2dhrxlp8due6M8BPbD2QYLieEPtjPCHbIfyy5sk0wV3B/Fgnl9QrE5o+oIzPa/DVBkNEHZTBeL9Psbrs0ICg9az/bg4bRWezD0s6oa1tZdTvzvtMGZM9xC4eGgCZ55F5LFGn46LmzmubB7/C/7D9MR+dQmJ2AR6uGtq8zaCcegzrKrlQG8nJRV/enyrNKSq8QN/fBN3l3jv13maIe8PTIvMhmizpWqZODoWiqNX2xbcls4/zCKJYPSNQw0hC0Sc+hoNgB5Lhglaq8adMfQTBrby7d7zmr3t7BFVWFD7SY52urqRt9xbpTgxgpFNgnDPWzvFZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mit.edu; dmarc=pass action=none header.from=mit.edu; dkim=pass
 header.d=mit.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bGTO8+UZJ3G1BWERbcxEcQx5OpdC3ATIEIMa5Wx3kN0=;
 b=BCeR+TWJ4YP3JBodr+adZtJ4eBV74LS1IWudV9mngl0+MWAp4amXKHwpYfDLo4oZO+vXE7xC0mWxiDbo9qgG2bXXt0tTNolF9lpBiZDQNBehICj1icrB9JPynIsnENEkaLjm/9BSjJb/VnjqhT7f0hjkp2YTIad6ejc3yOrpXvI=
Received: from SA3PR01MB7967.prod.exchangelabs.com (2603:10b6:806:31e::15) by
 PH7PR01MB7533.prod.exchangelabs.com (2603:10b6:510:1e0::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7698.32; Fri, 28 Jun 2024 13:05:02 +0000
Received: from SA3PR01MB7967.prod.exchangelabs.com
 ([fe80::7183:ac2d:2f81:9945]) by SA3PR01MB7967.prod.exchangelabs.com
 ([fe80::7183:ac2d:2f81:9945%3]) with mapi id 15.20.7698.033; Fri, 28 Jun 2024
 13:05:02 +0000
From: Mark Rosenbaum <m_rosen@mit.edu>
To: Martin Braun <martin.braun@ettus.com>
Thread-Topic: [USRP-users] Bricked B210 due to wiped EEPROM
Thread-Index: AQHayMDDsGWnrckqmk+JIb/EeEpSdrHc6QiAgAA9As4=
Date: Fri, 28 Jun 2024 13:05:02 +0000
Message-ID: 
 <SA3PR01MB796705BF695CA698FB45A75F87D02@SA3PR01MB7967.prod.exchangelabs.com>
References: 
 <DS0PR01MB79635F144100CD6C4EDE94E087D72@DS0PR01MB7963.prod.exchangelabs.com>
 <CAFOi1A72R2wVz+i7qMLpxYw+1xAwLMhw55emCDQJvCnx3F6FHQ@mail.gmail.com>
In-Reply-To: 
 <CAFOi1A72R2wVz+i7qMLpxYw+1xAwLMhw55emCDQJvCnx3F6FHQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mit.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA3PR01MB7967:EE_|PH7PR01MB7533:EE_
x-ms-office365-filtering-correlation-id: 50ddcfa4-ba5b-4c48-bad5-08dc9772ec4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|4022899009|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?OUVtaldITWxOUFlSbFVXd0orMWFITEZoNVdvS3RDSGZ2SFhKZ0tlNHhHMGQw?=
 =?utf-8?B?SkRwYUVQQzVCQmczN2JDQnNsY3VWUyt6cVBjY0FyVzlIckxMMk9CT1JEQXFT?=
 =?utf-8?B?aWtPazl5WDJ1U3ZycjcwUER1QXIzWGh3N3ByanpkcXg4V0FQeFlsSXpDbEhx?=
 =?utf-8?B?NURORjdOUEV5aU1ZcTB6YjlaL2x3WUVyRmROZTcyVUkxa3JyN2pCRGdvTzVR?=
 =?utf-8?B?SHlDWGhmRXo4VllGdWgzYk5hT28rNzFHWE5tcFFmY1pveENlVzhXWTErbnIy?=
 =?utf-8?B?NHJBQk1sT2Q0VW9uM2ZTelVJbG9IY2tsYnF0eTJiQmZOSkxlTm1XczJUODJG?=
 =?utf-8?B?a2c2V0xLVldPQlZSNTR2K3dDNUxrWEc3Tlo4L3VteS9SYVk0ajNucjh6eks4?=
 =?utf-8?B?Y2ZVNmxrMVE3Yy9oWFVaK1VzeEtaODdYQ080d2ZheU16U0Y2REJHYjVwRU91?=
 =?utf-8?B?eWNYR2RncndXRkdtRm9qMVNJUXc0emxieHVaWUZCK0dJWEtxWFFlMUNjczhv?=
 =?utf-8?B?N1ZSSlNZUUhLY2hyT0RpNFBhSVlRdjhLc09OTE01cnc0ZDdka3RXY3FFOTFu?=
 =?utf-8?B?ZVNCbEZXYVhKTkIzSnlsRGxMd0hRSEwyTW1DaG1FdjUwU21PMFZYR0svRE9R?=
 =?utf-8?B?aGk1NTdVTEw0RTI2WlVoK0lXVjhWRTdDQ0xkOXBJbUxka0pOdHUrazNjTFk0?=
 =?utf-8?B?ejAwRFpLUUpyYnpHMHR6Qy9ST0hOWEhSN01meXlNK3lidE50RGpJdERHenRa?=
 =?utf-8?B?SmN3WWhLNEoxaDZ1SFpOaStwKzl1MTlBa0ZkY1c2Y0w0NWVYN3NSZGN5MWhh?=
 =?utf-8?B?OUc2WDBleXNGMUFrYzNEbnFua3lIZEVEQ0hocEVaZVRUQmV4MkFEUFhwK0lw?=
 =?utf-8?B?OVFWclV0NXJhUTZoRXNsdHNqbWlhQnFabHNnQysySUxJbjlmNUdydktldWtk?=
 =?utf-8?B?QytrUE9kMUJrNUovL0VKYTB1ckhKS01BUUExSWJUYWN0THp4Z2Rud1I0Rmln?=
 =?utf-8?B?MTRvazQ3RlY4bzRGR1g5cUF4L2ZGVGxSaWJtSDJMUnFGMStIUWQwMjU5amdj?=
 =?utf-8?B?SEpiVnZDazRKM0hxQjRrM1QzZW1RWUpQUDZkT3JlYzdKUThGcVJGWi9pdUhJ?=
 =?utf-8?B?T1hybUtVWUtqQU1XUmJ5Q2cvZjhPRWJ6a3hvNzlLOEFKeDRJcXd4T0RoQ1NP?=
 =?utf-8?B?YWp3UDFZN3Yrb0NxTHdhRkJTcDBnVDg2bjFaelpoN0xhMStkMU9XaWhMdUJU?=
 =?utf-8?B?Ry9RVTVqSFBKSmtXNDcxMlBKMFZ3ekNScU9KVXJNTXc4VzRQVEYvam5xRHBD?=
 =?utf-8?B?cFFpZnRic0s3L200eUxXem5yMGJpNE9KMXVMeVlJT3ZUbW8wTHkwQWoxVHhx?=
 =?utf-8?B?OXVkZjN4dm51VFMvVDlmOTJ1THVTL3dBU1FRMDlPeE9MeUVIQnhrcGJxTWRE?=
 =?utf-8?B?Wlg3VG05eFRWdjdJT3Ayc0VOcUMzUzZOOWFRaC9mQnhRN0Y3dnIxdW1NOWwv?=
 =?utf-8?B?SG4wa2RHQUJvUVFVcWI4UTdQb25PUkx3RGo3YzYzdFNlSFhDNjhSaVRyeHN1?=
 =?utf-8?B?S25PWEkwQnBZSEppU3diZTN6elBCdW9CeU5tUEhsbzE4ODJXc0xGcnpkUWI2?=
 =?utf-8?B?QmkvQktEL1llbElFTVJjaVBNUVNYdmVtbkZ5VDV5S09FckZHSmZmckhSWTl2?=
 =?utf-8?B?bjNSRXI5bVhsUVZISDZKaWVObkQxdUlEQkN5dVZsNmpaNC83bTBiYlRGOFpJ?=
 =?utf-8?B?ZytPWE0rL2toN1hlREUrbStrOEpJUGszb1FzbjVmUUMxM0h5UnYwKzhkaUdJ?=
 =?utf-8?B?RDRPcnpvc3Fjb3pNUzI2SG5JVWVZWVZsKzdVck5PN3Rtcm1pbEtLR0lwTElB?=
 =?utf-8?B?VEQvanBnUVI1WkRLY2M1SWp3VTYralZOWlVSU1pzZW1sN1E9PQ==?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR01MB7967.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(4022899009)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?L1c3ZGxTT1E4TjlCdmVZUVJjeFgzRlBaQzYzMGFFK2R4OXN0Qm9iNTQyUEJD?=
 =?utf-8?B?ZG9ySTNtRGJjWDhYWW1lQUo5ZWltNjNia05jWitnQXBsblYrT0dnRVZ6eXhJ?=
 =?utf-8?B?OTFUcFhkU2xnUlJWQy84Y2theUtTTXdEZUxlbkc4cUwyZzZpVmtrdUlITHh5?=
 =?utf-8?B?VGFrbENJQzZmK1JmUUxQWmNBTkoyVkFvYkYrb0lVMTczc0NUd3JTMkZ2ZUl6?=
 =?utf-8?B?a25oRGlsQXluNzYzN1lURXRWV0tHQ0pjNWd6eGw4RGg0RWw2SHhpazdSb0dM?=
 =?utf-8?B?ckREdG1zS0N6bUd0d213OVVGVTZWRkJuTzhDUE5yaFZNbUMzcFpoNTRIdFZJ?=
 =?utf-8?B?S05rOTc2MmRsMmpTMDZvZWR3ZjZZQ3Q4L1lyMStydyt2amFsTzhBNVFQcG9T?=
 =?utf-8?B?VTNJS29sdlJZSGwxRFZKVExHamtidG1oQ3JnNlczTjhkL0x1emJoU0RSVzBz?=
 =?utf-8?B?U2ZUY3VlTDdNMXRjMHdMVS9YcXc2R20xd0QzNCtuaFJGcUFQVHJLalVFeXBk?=
 =?utf-8?B?UFlOTHhsSVlGL3hIWFNxS2lxc1NhOGpld2xDNmsxeXVmUHRmM2xwalFpSjlD?=
 =?utf-8?B?K0ZuMEs3T05KYVkzd1AydDBFSzhYaUpvOU91R3dPa2V3cndiQmZmdmZDZUNn?=
 =?utf-8?B?ZUtCRkp1dkhQMXc2Q1cxZzUxaFV3ZjBhMVFBdlNUdWxLcStPNnl1SU4vYkRH?=
 =?utf-8?B?NHI1TXdDNkU5MHlaT1E0MjdCSWFDMmV6Y2hIR1ZPUlM4SWI0QjNRK1ZuaVhM?=
 =?utf-8?B?cEF4WXd0MURQZ2lhN2FTSXBHVDUvMVdvc2ZpK3NDaSsxVk5EQWErZ2k5K0M0?=
 =?utf-8?B?ZDlXbDNzWGdsQ2tya2p5VEhESTY1UE51d24vRVhLZklmb1k3a25XNXBMcy9F?=
 =?utf-8?B?NUdwZ1pYSzVtdENFRllEc090V3AzTXFwdzZ2OTZ0UzdreEUwQW5MbGxnK21l?=
 =?utf-8?B?c3QwTnNDUXF0V3Y2N1g2cEJDcG1xc2NRM21qbDlyTkVFa296K1FnV0xvVTVo?=
 =?utf-8?B?Nkh2SWJqZjY4NmhBeFpvaE9VdUV0dHV4bzNrWkhEa0pTTThBYzBwRUVHa3Bo?=
 =?utf-8?B?YTVmYktIU2tFVkg4d1Bqb3puWE5kNk9XaFhMZ2RnK3pyUEM0RVo0aG9xYmxq?=
 =?utf-8?B?U2o0MURwWC92VVZEK2czaHVkTTZUWFh4elBEQ2xJK1RhKzBlM05QWlFIbXJy?=
 =?utf-8?B?VElteGhINDlZTnpKWkpKMCtvdERTZHhzd3o2bVVYeUl1QU0wZ29tRk9QWnVI?=
 =?utf-8?B?Y3JNK3RIbG1iN1RPcFhRN2tYUEMrcFI2YllKK3VCT1I4NXpjSWdzdUUwWDUx?=
 =?utf-8?B?cC9sQ1p2a0cvbDVyaVJoNUhBRDEwNDFLeHV1UzZmeEhGVzhJVHhlK3lYc3I1?=
 =?utf-8?B?TGNuckk0bW5ReTBzSUFkdkFCSGRvaThMQ3pVelBIU2JJd2ZkbEpHY1c0TmRp?=
 =?utf-8?B?ZW8xNVozTFA5S3NKdzhhSDg4V2ZTRmRrOUVqWUw0SUZvRVhKZzZwZDhraG1j?=
 =?utf-8?B?TVBWUis3QzZuSU11c3JmZUJvS0hGcTMrSnFPcFg1VENidFlqeUs4UVNRV2dN?=
 =?utf-8?B?TlZyZS8vbHdMZEtET0lvYkowYkIvSmJiMUN3dGdlRVVRZFV2c2NTSmh6UTln?=
 =?utf-8?B?YytkbkYyT1BKWGcrQ29BLzhCMU91M25TamlpUysvRkMzb3gzN2VSc09vQmE4?=
 =?utf-8?B?cEZ3ODM2bzREOGhuSnVybUIzZHJHK0pqYXpXT1BlNzFqNE9LczJ3MTNyUVZV?=
 =?utf-8?B?Qzh6SGtKTEV6MjdidFhqMVlyNU50MEsxRjVac2xOR2NkckljSm9xVWI3ZW5V?=
 =?utf-8?B?Ty9veHI5RjJ2YTF2ZE85cFVmMEIzcU1mR3dVOFI4anUzTnNlKy9QdDgxOU15?=
 =?utf-8?B?cTBkS0tPTVRJL0pBWS9RQS95ZmM0dk1PRnI0YmFtcTJnSnk0L3NrZENrOXZx?=
 =?utf-8?B?cnpvdjFTMkx0R1ZXNzNBOUtpT0o4dGhUTWRONmhpNzhzQzdZd0FjZEVKRlNr?=
 =?utf-8?B?cDIwb0xhTVlJR0EzdHh3VnhXSXp1OFp3NWdGbHpLeGgzcVM1RFV0MCtVZi9S?=
 =?utf-8?B?UkxyekpQT3puMWg5bFFVaWE5a2pUQmFDSTNvM0VuUWE1MW41YjNpS1lYc1k0?=
 =?utf-8?Q?g2yY=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mit.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA3PR01MB7967.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50ddcfa4-ba5b-4c48-bad5-08dc9772ec4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2024 13:05:02.6193
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 64afd9ba-0ecf-4acf-bc36-935f6235ba8b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PbzvyQcmwSrYqTnADq1fkfSnSxkMt2kQAFe9itPVBBbnmEZISRVU2lzjfc+SBp8i
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR01MB7533
Message-ID-Hash: THBJU4YAFNBDH27ZXCW6DZ5LG2OC2PZE
X-Message-ID-Hash: THBJU4YAFNBDH27ZXCW6DZ5LG2OC2PZE
X-MailFrom: m_rosen@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bricked B210 due to wiped EEPROM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QY7FWOI3L4WJIMOBQEA65LWNHIZRRSJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3813688436805044964=="

--===============3813688436805044964==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA3PR01MB796705BF695CA698FB45A75F87D02SA3PR01MB7967prod_"

--_000_SA3PR01MB796705BF695CA698FB45A75F87D02SA3PR01MB7967prod_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IE1hcnRpbiwNClRyaWVkIHRoYXQgYXMgYWxtb3N0IGEgZmlyc3QgdGhpbmcgYWZ0ZXIgdGhl
IGlzc3VlIG9jY3VycmVkLiAgVGhlIGNvbW1hbmQgc3VjY2Vzc2Z1bGx5IHJ1bnMgd2l0aCBubyBl
cnJvciBidXQgdGhlIHNhbWUgaXNzdWUgcGVyc2lzdHMsIHdoZXJlIGFueSBvdGhlciBjb21tYW5k
IGdpdmVzIG1lIHRoZSAiRXJyb3I6IFJ1bnRpbWVFcnJvcjogQjIwMCB1bmtub3duIHByb2R1Y3Qg
Y29kZTogMHhlM2UwIiBtZXNzYWdlLg0KLS0NCk1hcmsNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQpGcm9tOiBNYXJ0aW4gQnJhdW4gPG1hcnRpbi5icmF1bkBldHR1cy5jb20+DQpT
ZW50OiBGcmlkYXksIEp1bmUgMjgsIDIwMjQgNToyNiBBTQ0KVG86IE1hcmsgUm9zZW5iYXVtIDxt
X3Jvc2VuQG1pdC5lZHU+DQpDYzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSBCcmlja2VkIEIy
MTAgZHVlIHRvIHdpcGVkIEVFUFJPTQ0KDQpIaSBNYXJrLA0KDQpiMnh4X2Z4M191dGlscyAtLWlu
aXQtZGV2aWNlIGlzIHlvdXIgZnJpZW5kLiBBZnRlciB5b3UgcnVuIHRoYXQsIHlvdSBjYW4gcnVu
IGB1c3JwX2J1cm5fbWJfZWVwcm9tYCBhZ2FpbiB0byBjb25maWd1cmUgc2VyaWFsIG51bWJlciBl
dGMuDQoNCi0tTQ0KDQpPbiBUaHUsIEp1biAyNywgMjAyNCBhdCA4OjQ14oCvUE0gTWFyayBSb3Nl
bmJhdW0gPG1fcm9zZW5AbWl0LmVkdTxtYWlsdG86bV9yb3NlbkBtaXQuZWR1Pj4gd3JvdGU6DQpI
aSBBbGwsDQpJIHdhcyByZWNlbnRseSB3b3JraW5nIG9uIGZpeGluZyBhbiBpc3N1ZSB3aXRoIG15
IEIyMTAgYW5kIGFjY2lkZW50YWxseSByZS1mbGFzaGVkIHRoZSBib290bG9hZGVyLiBJbiB0aGUg
cHJvY2VzcyBpdCBzZWVtcyB0byBoYXZlIGZ1bGx5IHdpcGVkIHRoZSBFRVBST00gYW5kIG5vdyB3
aGVuIGF0dGVtcHRpbmcgdG8gcGVyZm9ybSBhbnkgYWN0aW9uIG9uIHRoZSBkZXZpY2UgSSBnZXQg
dGhlIGZvbGxvd2luZyBlcnJvcjoNCiJFcnJvcjogUnVudGltZUVycm9yOiBCMjAwIHVua25vd24g
cHJvZHVjdCBjb2RlOiAweGUzZTAiLg0KSXMgdGhlcmUgYW55IHdheSB0byBnbyBiYWNrIGFuZCBy
ZS1mbGFzaCB0aGUgb3JpZ2luYWwgdmFsdWVzPyAgSSd2ZSB0cmllZCB0byB1c2UgdGhlIHVzcnBf
YnVybl9tYl9lZXByb20gY29tbWFuZCB3aXRoIHRoZSByZWNvdmVyX21iX2VlcHJvbSBidXQgaXQg
c3RpbGwgZmFpbHMgd2l0aCB0aGUgc2FtZSBlcnJvci4NClRoYW5rcywNCk1hcmsNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20+DQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbT4NCg==

--_000_SA3PR01MB796705BF695CA698FB45A75F87D02SA3PR01MB7967prod_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0idGV4dC1hbGlnbjogbGVmdDsgdGV4dC1pbmRlbnQ6IDBweDsgbWFyZ2luOiAwcHg7
IGZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2
aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29s
b3I6IHJnYigwLCAwLCAwKTsiPg0KSGV5IE1hcnRpbiwmbmJzcDs8L2Rpdj4NCjxkaXYgc3R5bGU9
InRleHQtYWxpZ246IGxlZnQ7IHRleHQtaW5kZW50OiAwcHg7IG1hcmdpbjogMHB4OyBmb250LWZh
bWlseTogQXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwgQ2Fs
aWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2Io
MCwgMCwgMCk7Ij4NClRyaWVkIHRoYXQgYXMgYWxtb3N0IGEgZmlyc3QgdGhpbmcgYWZ0ZXIgdGhl
IGlzc3VlIG9jY3VycmVkLiZuYnNwOyBUaGUgY29tbWFuZCBzdWNjZXNzZnVsbHkgcnVucyB3aXRo
IG5vIGVycm9yIGJ1dCB0aGUgc2FtZSBpc3N1ZSBwZXJzaXN0cywgd2hlcmUgYW55IG90aGVyIGNv
bW1hbmQgZ2l2ZXMgbWUgdGhlICZxdW90O0Vycm9yOiBSdW50aW1lRXJyb3I6IEIyMDAgdW5rbm93
biBwcm9kdWN0IGNvZGU6IDB4ZTNlMCZxdW90OyBtZXNzYWdlLjwvZGl2Pg0KPGRpdiBzdHlsZT0i
dGV4dC1hbGlnbjogbGVmdDsgdGV4dC1pbmRlbnQ6IDBweDsgbWFyZ2luOiAwcHg7IGZvbnQtZmFt
aWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxp
YnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigw
LCAwLCAwKTsiPg0KLS08L2Rpdj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29mIiBzdHlsZT0i
dGV4dC1hbGlnbjogbGVmdDsgdGV4dC1pbmRlbnQ6IDBweDsgbWFyZ2luOiAwcHg7IGZvbnQtZmFt
aWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxp
YnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigw
LCAwLCAwKTsiPg0KTWFyayZuYnNwOzwvZGl2Pg0KPGRpdiBpZD0iYXBwZW5kb25zZW5kIj48L2Rp
dj4NCjxociBzdHlsZT0iZGlzcGxheTppbmxpbmUtYmxvY2s7d2lkdGg6OTglIiB0YWJpbmRleD0i
LTEiPg0KPGRpdiBpZD0iZGl2UnBseUZ3ZE1zZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9IkNhbGli
cmksIHNhbnMtc2VyaWYiIHN0eWxlPSJmb250LXNpemU6MTFwdCIgY29sb3I9IiMwMDAwMDAiPjxi
PkZyb206PC9iPiBNYXJ0aW4gQnJhdW4gJmx0O21hcnRpbi5icmF1bkBldHR1cy5jb20mZ3Q7PGJy
Pg0KPGI+U2VudDo8L2I+IEZyaWRheSwgSnVuZSAyOCwgMjAyNCA1OjI2IEFNPGJyPg0KPGI+VG86
PC9iPiBNYXJrIFJvc2VuYmF1bSAmbHQ7bV9yb3NlbkBtaXQuZWR1Jmd0Ozxicj4NCjxiPkNjOjwv
Yj4gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tJmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNdIEJyaWNrZWQgQjIx
MCBkdWUgdG8gd2lwZWQgRUVQUk9NPC9mb250Pg0KPGRpdj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0K
PGRpdj4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdj5IaSBNYXJrLDwvZGl2Pg0KPGRpdj48YnI+DQo8
L2Rpdj4NCjxkaXY+YjJ4eF9meDNfdXRpbHMgLS1pbml0LWRldmljZSBpcyB5b3VyIGZyaWVuZC4g
QWZ0ZXIgeW91IHJ1biB0aGF0LCB5b3UgY2FuIHJ1biBgdXNycF9idXJuX21iX2VlcHJvbWAgYWdh
aW4gdG8gY29uZmlndXJlIHNlcmlhbCBudW1iZXIgZXRjLjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rp
dj4NCjxkaXY+LS1NPGJyPg0KPC9kaXY+DQo8L2Rpdj4NCjxicj4NCjxkaXYgY2xhc3M9InhfZ21h
aWxfcXVvdGUiPg0KPGRpdiBkaXI9Imx0ciIgY2xhc3M9InhfZ21haWxfYXR0ciI+T24gVGh1LCBK
dW4gMjcsIDIwMjQgYXQgODo0NeKAr1BNIE1hcmsgUm9zZW5iYXVtICZsdDs8YSBocmVmPSJtYWls
dG86bV9yb3NlbkBtaXQuZWR1IiB0YXJnZXQ9Il9ibGFuayI+bV9yb3NlbkBtaXQuZWR1PC9hPiZn
dDsgd3JvdGU6PGJyPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBjbGFzcz0ieF9nbWFpbF9xdW90ZSIg
c3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDsgYm9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJn
YigyMDQsMjA0LDIwNCk7IHBhZGRpbmctbGVmdDoxZXgiPg0KPGRpdj4NCjxkaXYgZGlyPSJsdHIi
Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9z
X01TRm9udFNlcnZpY2UsQ2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEy
cHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KSGkgQWxsLDwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1m
YW1pbHk6QXB0b3MsQXB0b3NfRW1iZWRkZWRGb250LEFwdG9zX01TRm9udFNlcnZpY2UsQ2FsaWJy
aSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCki
Pg0KSSB3YXMgcmVjZW50bHkgd29ya2luZyBvbiBmaXhpbmcgYW4gaXNzdWUgd2l0aCBteSBCMjEw
IGFuZCBhY2NpZGVudGFsbHkgcmUtZmxhc2hlZCB0aGUgYm9vdGxvYWRlci4gSW4gdGhlIHByb2Nl
c3MgaXQgc2VlbXMgdG8gaGF2ZSBmdWxseSB3aXBlZCB0aGUgRUVQUk9NIGFuZCBub3cgd2hlbiBh
dHRlbXB0aW5nIHRvIHBlcmZvcm0gYW55IGFjdGlvbiBvbiB0aGUgZGV2aWNlIEkgZ2V0IHRoZSBm
b2xsb3dpbmcgZXJyb3I6PC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRv
c19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5z
LXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQomcXVvdDtFcnJvcjog
UnVudGltZUVycm9yOiBCMjAwIHVua25vd24gcHJvZHVjdCBjb2RlOiAweGUzZTAmcXVvdDsuPC9k
aXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0
b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6
MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQpJcyB0aGVyZSBhbnkgd2F5IHRvIGdvIGJhY2sgYW5k
IHJlLWZsYXNoIHRoZSBvcmlnaW5hbCB2YWx1ZXM/Jm5ic3A7IEkndmUgdHJpZWQgdG8gdXNlIHRo
ZSB1c3JwX2J1cm5fbWJfZWVwcm9tIGNvbW1hbmQgd2l0aCB0aGUgcmVjb3Zlcl9tYl9lZXByb20g
YnV0IGl0IHN0aWxsIGZhaWxzIHdpdGggdGhlIHNhbWUgZXJyb3IuPC9kaXY+DQo8ZGl2IHN0eWxl
PSJmb250LWZhbWlseTpBcHRvcyxBcHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2Vydmlj
ZSxDYWxpYnJpLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdi
KDAsMCwwKSI+DQpUaGFua3MsPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpBcHRvcyxB
cHRvc19FbWJlZGRlZEZvbnQsQXB0b3NfTVNGb250U2VydmljZSxDYWxpYnJpLEhlbHZldGljYSxz
YW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQpNYXJrPC9kaXY+
DQo8L2Rpdj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
PGJyPg0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+DQp1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbTwvYT48YnI+DQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9
Im1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsi
Pg0KdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPC9kaXY+DQo8L2Js
b2NrcXVvdGU+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_SA3PR01MB796705BF695CA698FB45A75F87D02SA3PR01MB7967prod_--

--===============3813688436805044964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3813688436805044964==--
