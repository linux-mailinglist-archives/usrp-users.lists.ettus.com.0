Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF8193E597
	for <lists+usrp-users@lfdr.de>; Sun, 28 Jul 2024 16:07:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 168923853E0
	for <lists+usrp-users@lfdr.de>; Sun, 28 Jul 2024 10:07:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722175646; bh=7omcLfcpGuPdBQwBcx9MwyNj8WF/lvP8Y1iMe8v7Vzk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oSV01ZPqojSs260o//XfA2fBki+NGQkQRTeHnBkvuxkVtJ6zhTJX6S0JgB0U9FwuK
	 Q5sENoo7LJXt+pan4SMmWCLAyHcADHeKlGxXZ2AC5sM6U1ggHK0CEnbiqgL62NxltH
	 qoWuBn1rvBR68B6p83dOd6UT4nVvlc/RhqOVY5WdRSCEuHMmRPMZgQ9nWJbjpwqtZm
	 pCPRZ3cKfqXOnmkHrY8poBPM/Ivfv0P5z158ddIHah2QFgDwmg5cxXjlcy5lhSYr2U
	 EHtYj+bxq0G+UX3P1Z7rYus6PIBF5IJikKymEAYcQMTPc+R8LOPyVbiJt6UkCK+cEc
	 iN7TkS+ia2jnQ==
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2110.outbound.protection.outlook.com [40.107.244.110])
	by mm2.emwd.com (Postfix) with ESMTPS id AC23D385368
	for <usrp-users@lists.ettus.com>; Sun, 28 Jul 2024 10:07:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ohio.edu header.i=@ohio.edu header.b="J0F7PAuF";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h2419zSl7TSAyVe38oFmDFQDIc6eMDYUP/9Qd97f+cph65c1gVTzY11nELDNXiIbk3IJYuYy5trEZCxEY4jKGBhdSHVgrFjUKO5JevqRWcc5fiL67eVxQgdg1FQa9Q0pKvxVjCPjY6sZE16XSQURNsAHQXPSbiUxjq1UpAu3DynRRWPxJ5JgcwytfYEkOtbiyVD/jDXYwphCrd9ejQIBNgzLIM+SHscr5Xa2uRNj9GVbjoKU7jDeBZXs/kq1RFh7y3XF8kPPV5uYlZf4jv7lpxkU6pRBeeiLI360nN4YLqaDUHc3bhvP/TNvz1JaC6J8j2VOtmVrL4AYbqWv8mrGWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VWwEcFpOYRXsjbIwfP4qmIzxSMzsvHEJiFhAN5pSaXI=;
 b=mVQk5kvWsBF9EYjaVv5yBw3WmvaHSGstunAzyRZFHd3eV1B7LAag5aq3VPc+KDMvHtCK1L2e2QVJVcFwTOFmwneRNT0BNssCYSHQhNneNovdQIqzWybGxH5Dbmd7+BgX1XOqQa1g25CTkdnL9IoA3Ar8rzhmX5hbXt3BoYjlhSgeuvhKnnqHTwCyTM7co50KqhSN/tzY8VGwXwyzWtpWdlJisi3D+TcWSMWgLbtsjKpGJlXmxhDAh7s90jpnGprxp+yCSZJVB+kogLg25LBV0BYA6CS+7ZXNRlENmJXg+a58vseIMVWqOxFS3zR26FVt43VYMMDTgqS2jQJ3HuvW/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ohio.edu; dmarc=pass action=none header.from=ohio.edu;
 dkim=pass header.d=ohio.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ohio.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWwEcFpOYRXsjbIwfP4qmIzxSMzsvHEJiFhAN5pSaXI=;
 b=J0F7PAuFhG2JmxNoH2KNXeylE8A646NIsW/Jkq0Pqci9ZULD3IGRTvyQKpoeJjrlgvj8e97jmqDhrJ+n79FKoBn8P5uYoyMhDtWQdWaAWTppglVPHcQBfLjnQ83Nl0EqtszeGCMva5+49n0Ng2dvQyDujcXsiJAjuhXWIKmOv9YSWBzvNyn7YE5FMEh2JoJFCw6EXE3PwgPozm3yQbe7bftfC+PmWpZOZfVHeufk/+E/BxosxiuGuX+NuH9SIJ2d0z1WJgecar2lZRlmMFdvaMXVFak1szB7AV4LNEBbMM/FOIvnoujNqoWyQx8+QeJH0i0pJnAWqeDpVzb9QMkzIg==
Received: from SJ2PR01MB8103.prod.exchangelabs.com (2603:10b6:a03:4f4::21) by
 SJ2PR01MB8205.prod.exchangelabs.com (2603:10b6:a03:539::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7807.27; Sun, 28 Jul 2024 14:07:07 +0000
Received: from SJ2PR01MB8103.prod.exchangelabs.com
 ([fe80::d716:8170:bd4c:baae]) by SJ2PR01MB8103.prod.exchangelabs.com
 ([fe80::d716:8170:bd4c:baae%7]) with mapi id 15.20.7784.017; Sun, 28 Jul 2024
 14:07:07 +0000
From: "McKnight, Ryan" <rm249114@ohio.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [External] [USRP-users] Re: X310 Buffers - 200Msps
Thread-Index: AQHa3IgXodmigh25Fky9oIjtbpGOdbIMNbkJ
Date: Sun, 28 Jul 2024 14:07:07 +0000
Message-ID: 
 <SJ2PR01MB8103ACADF69DD63700E267CEB5B62@SJ2PR01MB8103.prod.exchangelabs.com>
References: CAB__hTQdEvf23e212-_7_izsk7PKkJACcAFPn6cFXmkOHqj7cA@mail.gmail.com
 <hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac@lists.ettus.com>
In-Reply-To: <hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ohio.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR01MB8103:EE_|SJ2PR01MB8205:EE_
x-ms-office365-filtering-correlation-id: a75d58d9-ea5b-4de1-1325-08dcaf0e90da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?8tc+sYEpHRrCpZ+DcP4RGEWmH9IQZdUPNLP3JFCbV9KnjyQ4Xa231cdV?=
 =?Windows-1252?Q?BuCSPp7e/LBS2umQTPogTczsf8QH6rMcODVdRavKEoEHl8bzg8CfIlY+?=
 =?Windows-1252?Q?ZLVFi97v8ViD7ehsuTFni9knaxm/pzc7xwV6lPqa5omNT+7XCk8UZwD5?=
 =?Windows-1252?Q?7EXEJLW6a2YQSqEy/Kjwp23x/Ni8cp2UPuyBFqt640AtH1imDMkdZczr?=
 =?Windows-1252?Q?uCvkL3M/XtOtxoU3adiJA+gZoPdpZP+Eb0M+hCK27xXBME3ehDbTIAFH?=
 =?Windows-1252?Q?9l5X8Q3rNBJ4YsQaCegclvi32K1gLtS3zZ7CPeUElFXgX2DZkzyciLY7?=
 =?Windows-1252?Q?bykASE7cBGNaRbpB+7+8pWEbOKhpypv0anPcVLHEIZa6Nhd5CFLtkGfQ?=
 =?Windows-1252?Q?xCSBBR/eGdsVEVFX8un4hXkEP2KZxKSb0FeIxsOhOKH06hbYQsMV/j6m?=
 =?Windows-1252?Q?q9xeJk5hl7sDr2GBbgJSIKFovik1rjAR/QLQKylaZjnH7BhXAAP4s4/t?=
 =?Windows-1252?Q?ugnd4I/KsBn1FGdV/WhyTtNDGiS6y8to2ApeX02yvlFoeOtqG2eywYRU?=
 =?Windows-1252?Q?7dsG3gummdZ+RYquoxm3mcnNai4xicZWd3NR3a/juE9ECNHnp39ZIPCL?=
 =?Windows-1252?Q?CFiBTiwROb8UVTgefwYYSukY0PbOP2fzGUKHyixn7ZtGUbBxLVXQ19Nv?=
 =?Windows-1252?Q?Q1UH2jTtJUnOxnM8kfFdWYsRwoXtmmbm79p4uxX586m35eO1NqSGUHH2?=
 =?Windows-1252?Q?jacgIWuf2MCwGC0blLJ7lvKjS3jbw+aMvg+l/nN2FDXdtDzhoQclE7SO?=
 =?Windows-1252?Q?aDHKfEj1QGZdsH6XbEWLflAvqffCVMWbUBlBdGVaS/Lziea7opoGaVGY?=
 =?Windows-1252?Q?S5YdfFIpoRYDkqUJGPWW7GITG3GLMqVUfZ/2XBimHsiC/DVerRIAVrjB?=
 =?Windows-1252?Q?jCcaKdW/TQlvYIoOAuHRX/Yc7OQY6hyWkd6aU+HVI0Gl8GW7n0ZfP9BR?=
 =?Windows-1252?Q?xgH44TqX08/ZVJpVcfXiDUZRyYfZ8Pcjv4xrTj8uHe5xpY5/mXhPGSLf?=
 =?Windows-1252?Q?9pjpnQNnXfLhbc9sBPoFNUc/JgHb7SyHPu/JXK0ZoKSfGrVBMlZ45DPN?=
 =?Windows-1252?Q?iZuQo8RJBrZqqMfyEnSYW16l5cVriFWJAc1DQSIhHG8Wbd+J5tKQvDq2?=
 =?Windows-1252?Q?6U8mzyxk5tNs5MMjlEQkkdzz8meDpACGy9V7RdpoSq4FR0EeDaZlqzok?=
 =?Windows-1252?Q?Ub36fJ0yMupltOgeFUXZPx5IGNMoczXv/9RDJR8XpH8AQ/7xy4hmqeww?=
 =?Windows-1252?Q?9IEg0guH4zF0F4OFQrp8XBKLXpNnMT5qD2hATSTtAZC+BW07PfhBl8HI?=
 =?Windows-1252?Q?w2G6qejgVoE3dQ8wi+t/FyIXtbQsKLNW3NigaUfDH9eQSZqKebAHXJl2?=
 =?Windows-1252?Q?qvBmhu7Op/AvnLNVGcJ8uztyjIxXA+2q+pK+aEwX7Oc=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR01MB8103.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?/LkJjFxnTYv5Kt3GpSx2DbheybDMpcHpeSFs83r9OG9avMGlHvKhNhi8?=
 =?Windows-1252?Q?2b/Y05Ob524LEbddlx2ghJnD5VNCQqg/R24ZdNkNomLdOWD+i27gORGM?=
 =?Windows-1252?Q?4itdGDy5dQHSVHvDVyM0TVtB1uyD4+xHZS5Jpx7iEMNqojnRHisBG2U4?=
 =?Windows-1252?Q?03ruC3qWm0rP///UGouuuK6qpIrf1tN59QCThEe5p+zXOKqh6JR66HDi?=
 =?Windows-1252?Q?CodVRJWJPbWDbQDGqkxK8HDjUtDQr8c8ZvxQRwcFnpc40TJgavICUEcg?=
 =?Windows-1252?Q?ht/ZcVNFTejD4CUqAC6t1zCL/nRPmgFyzdVFLuVpMtTuDjwPekoW53p3?=
 =?Windows-1252?Q?+tbmTpEIDhVS8iBll+wOO17HpVQpUF+7rDlm8hfEtp7GRpOx0ERL2ffQ?=
 =?Windows-1252?Q?vk2Cf1u7kpCnK6SzYA1FU83Dg9gmVXmUAxiOosB19DEZn3hBWUHuCdGX?=
 =?Windows-1252?Q?5iwsXaAtvazKGdTdsSiQu8+yA/9ts8Dj+dQSK+K+KOGfZBB5ui8BqO3m?=
 =?Windows-1252?Q?o7WtGfrWhVruIUyXHWky6BCr6MPUP/8Hm7VqD9pYYCOLiQqaOG1TTcEF?=
 =?Windows-1252?Q?DFQp31RESFKANKiwT4U/d3M3M7tYpQgGuSt8wzs6mPIF3Ec3o00O/A/k?=
 =?Windows-1252?Q?QPgi4hlndGLvkSxSCFJQHcYHWPfP2j1M03FgnLUeC0RO5P7LEZOx2hvj?=
 =?Windows-1252?Q?1cIJNjcqEo1cyAs9eDSgC2qb8kIganxk+VjL3mGl+E/DQFrNm9/69AuN?=
 =?Windows-1252?Q?hPKb4UkrlEPzDiqDDTpuSi9bAeO0qq38cG71EvQ7ZnWOU4qTJ78kPvtk?=
 =?Windows-1252?Q?bhCRDUBITUmPmRsvrazZR9CibaloWQdZ2K7xB+29KMeSxLamtGyoYVZw?=
 =?Windows-1252?Q?/uFd0J35oYsSbtxW0Cf7EdsZesNLGRZ69yfxl9sYubz02H/WGPG3B1x1?=
 =?Windows-1252?Q?vtdfaUepTSZ8v1Y8y/WoMPzOunQ4P1HLJ1fNjEqv/4NX01gPDXyYqvBv?=
 =?Windows-1252?Q?aVwGMIw0c9XK06ynjCET+wi6GjvQHKTyeNdoUB7Sw3WYLYPwbtQqoo5P?=
 =?Windows-1252?Q?jff5B/tLXk3HHSqB4O9mz5QtlN5rWXwxrjzZCIWWummSziGqVNdrNn7B?=
 =?Windows-1252?Q?DL7AVYbRfiaeAHW03gHR7KlFPrvv3YLBBIl3l3Mfy/BoBD4fpwmgGIQE?=
 =?Windows-1252?Q?gxb3BvVkv4T0HzNNuhiRkgT4lyn4pQeoeQ7FpyPVcDfXSyUZQiPZ7UTQ?=
 =?Windows-1252?Q?0Jnmt/d//pfX3/yINNXiQyT/m8g0ZrCJDFyoRXHkSKfywmRHfTE1ITLs?=
 =?Windows-1252?Q?ZAY9qlYGmtg6sC0Rx0aNVimd++keT4SmTdP8Ku5vqQ3A4g2Ld83/IaS5?=
 =?Windows-1252?Q?GBMUH1V8rp06WUU5Mv/ZSgYgs6qDrkBo4ZyQ7PYhJTUGA4rU3rWW37y+?=
 =?Windows-1252?Q?4WzHp8SABpnzkVnf559rZutxSfqxcIlsVerT0kLr3OA1oU2kq1QXQhH0?=
 =?Windows-1252?Q?/w17pdXWI8QVXsSJ0CCI39vFbKkG9wHeMGUhmKr9jFJculgFkrA96U6Y?=
 =?Windows-1252?Q?lOWHHGknRIv81gS7kTodSDxmMqgKSkV1sSpiyZtx1XalU2KfmaAK+4vL?=
 =?Windows-1252?Q?YrzsfRdea42IZmOybSipeN20UHee1gITIKfzpoX4lDTcPeI+FfZCrr+y?=
 =?Windows-1252?Q?HDbVq5P+2GqC54zcOuyCoIQpLPO9cWNWdTij+oejVYOKMdDq5uE3wA?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ohio.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR01MB8103.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a75d58d9-ea5b-4de1-1325-08dcaf0e90da
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2024 14:07:07.3860
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f3308007-477c-4a70-8889-34611817c55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2tIpa+6tvDCqam+9scFRzALT0B6LlXM+mDz6fIqBo4iMI/j2xufCCZLrZO5+P+WUwVo4yB3XEP8pnm7IiyHJCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR01MB8205
Message-ID-Hash: 2SWXWQCH4WBT7XED2OYPRB7ZWDXCNUUF
X-Message-ID-Hash: 2SWXWQCH4WBT7XED2OYPRB7ZWDXCNUUF
X-MailFrom: rm249114@ohio.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [External] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L46OSVVMOP6SJG3NDEZDMVM6ZEXLDXOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1658576162607902191=="

--===============1658576162607902191==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ2PR01MB8103ACADF69DD63700E267CEB5B62SJ2PR01MB8103prod_"

--_000_SJ2PR01MB8103ACADF69DD63700E267CEB5B62SJ2PR01MB8103prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

As an anecdote, for my use case (200 Msps RX streaming with the X310, along=
 with heavy FFT-based real-time data processing on a 48 core CPU), I did fi=
nd that using DPDK resulted in a large performance improvement. I avoided i=
t for some time because I had heard that it was difficult to set up and did=
n=92t make much of a difference, but I found neither of these to be true in=
 my case.

Two other things that made a large difference to me:
- Pinning all my threads to specific CPU cores, as Yann mentioned (especial=
ly the thread calling the UHD recv() function)
- Enabling the RT_RUNTIME_SHARE kernel feature (this was a huge improvement=
, see https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD)

Additionally, on my CPU (AMD EPYC 7401P), the CPU cores were spread across =
4 NUMA nodes. I found that a lot of tweaking of my code to reduce memory tr=
ansfers between different NUMA nodes also resulted in some performance impr=
ovement (pinning threads to CPU cores on specific NUMA nodes and using numa=
_alloc_onnode() to allocate memory).

After much tweaking I was able to stream and process the 200 Msps data in r=
eal-time with no overflows or dropped samples over the course of multiple d=
ays of streaming.

-Ryan McKnight


From: cjohnson@serranosystems.com <cjohnson@serranosystems.com>
Date: Monday, July 22, 2024 at 18:40
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [External] [USRP-users] Re: X310 Buffers - 200Msps
Use caution with links and attachments.

Thank you Rob=85 I will explore this because I don=92t want to deal with DP=
DK. I read in other posts that it didn=92t seem to make a difference.

--_000_SJ2PR01MB8103ACADF69DD63700E267CEB5B62SJ2PR01MB8103prod_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;
	panose-1:2 11 0 4 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#212121">As an=
 anecdote, for my use case (200 Msps RX streaming with the X310, along with=
 heavy FFT-based real-time data processing on a 48 core CPU), I did find th=
at using DPDK resulted in a large performance
 improvement. I avoided it for some time because I had heard that it was di=
fficult to set up and didn=92t make much of a difference, but I found neith=
er of these to be true in my case.</span><span style=3D"color:#212121"><o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">&nbsp;</span><span style=3D"=
color:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">Two other things that made a=
 large difference to me:</span><span style=3D"color:#212121"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">- Pinning all my threads to =
specific CPU cores, as Yann mentioned (especially the thread calling the UH=
D recv() function)</span><span style=3D"color:#212121"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">- Enabling the RT_RUNTIME_SH=
ARE kernel feature (this was a huge improvement, see<span class=3D"apple-co=
nverted-space">&nbsp;</span><a href=3D"https://kb.ettus.com/Getting_Started=
_with_DPDK_and_UHD" title=3D"https://kb.ettus.com/Getting_Started_with_DPDK=
_and_UHD"><span style=3D"color:#0078D7">https://kb.ettus.com/Getting_Starte=
d_with_DPDK_and_UHD</span></a>)</span><span style=3D"color:#212121"><o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">&nbsp;</span><span style=3D"=
color:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">Additionally, on my CPU (AMD=
 EPYC 7401P), the CPU cores were spread across 4 NUMA nodes. I found that a=
 lot of tweaking of my code to reduce memory transfers between different NU=
MA nodes also resulted in some performance
 improvement (pinning threads to CPU cores on specific NUMA nodes and using=
 numa_alloc_onnode() to allocate memory).</span><span style=3D"color:#21212=
1"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">&nbsp;</span><span style=3D"=
color:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">After much tweaking I was ab=
le to stream and process the 200 Msps data in real-time with no overflows o=
r dropped samples over the course of multiple days of streaming.</span><spa=
n style=3D"color:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">&nbsp;</span><span style=3D"=
color:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"caret-color: rgb(33, 33, 33);font-variant-c=
aps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.0pt;color:#212121">-Ryan McKnight</span><span s=
tyle=3D"color:#212121"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div id=3D"mail-editor-reference-message-container">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"col=
or:black">From:
</span></b><span style=3D"color:black">cjohnson@serranosystems.com &lt;cjoh=
nson@serranosystems.com&gt;<br>
<b>Date: </b>Monday, July 22, 2024 at 18:40<br>
<b>To: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>[External] [USRP-users] Re: X310 Buffers - 200Msps<o:p></o:=
p></span></p>
</div>
<div style=3D"border:none;border-left:solid #FCD146 4.5pt;padding:0in 0in 0=
in 8.0pt;margin-top:7.5pt;margin-bottom:7.5pt">
<p class=3D"MsoNormal" style=3D"background:#FDFAE7"><b><span style=3D"font-=
size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Use cauti=
on with links and attachments.</span></b><o:p></o:p></p>
</div>
<div>
<p style=3D"margin-bottom:12.0pt">Thank you Rob=85 I will explore this beca=
use I don=92t want to deal with DPDK. I read in other posts that it didn=92=
t seem to make a difference.<o:p></o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SJ2PR01MB8103ACADF69DD63700E267CEB5B62SJ2PR01MB8103prod_--

--===============1658576162607902191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1658576162607902191==--
