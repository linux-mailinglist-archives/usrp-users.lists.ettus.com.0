Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOdOLgSib2kLCAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 16:40:52 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2340465BB
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 16:40:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C6915385E37
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 10:21:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768922464; bh=vuVwG0Z8rntjhOv9uoz3aI+kNRmZCPzSEN5QLbsyyMQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=AwoyWgwWyGmQshz/RqeerSwPTm+3nkCuU5XEQq5MqCoKOULn0hVao5Btj5FIUq9TU
	 KJ9OjgjqwjP7GTuRXehrZgEtRXt9URvSrVE84CVayuz3kiIw9Bc6pTVMCL5M0G5DX3
	 eIhWw+k7NEwrDC5N/YBheAIsqNXJfrjrFRDspImtUoI3dZ1AsqyKi7fpk6VSNK1mEV
	 mNLlcHiFon0FonmBE1vJbvk0Ls61LRe8VIxilHEwGF3bJ25ZOQusWfS+cOsy2plYlt
	 TqZznizYSCpzEBPe4xhmeQodQp1FBTka4mOAPbG7Cv4/JLHYYfpfIUJGAMThMNJSbC
	 gw6Hoq/Mg+eJg==
Received: from MX3.LL.MIT.EDU (mx3.ll.mit.edu [129.55.12.52])
	by mm2.emwd.com (Postfix) with ESMTPS id B77F8385E93
	for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 10:19:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ll.mit.edu header.i=@ll.mit.edu header.b="QyFfkFQ6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ll.mit.edu; h=content-type : date :
 from : message-id : mime-version : subject : to; s=dkim1;
 bh=avXyWhIZup+Zt1J8xTnVUbWfAJI6OQIYQAmftMkBGyQ=;
 b=QyFfkFQ6RugIiqMeoo5ILIgs7/3yvJUpFPvCUT2YjRolcyqhkFnqSflIjAheGT7Q5rRk
 w6lCKlckVHTCTalQuOlYDNWGDKBm6d5HgGgEYGukbcfSfHXlhDVg4JyqFbERMTqkIAyL
 vmc3+UmV6JGYdAMQtAshe8Xwg55wqwGrGcywTtiI+sz8x8dKpmYHa5rLw+8Vmb8s6eHK
 uJe8bdwz7XVCqM74p4Q65g5Wh4KiL8j8YE0NOyKoD3ad0GMB0mOGZFWBrbj+dx+GAb6E
 /GCdmjRVVoyRtqAwEwIYY46hcxdZ7TntRTvfLZumDKNjpYlibUEGsxpAbytvwXmPaAej fQ==
Received: from LLEX2019-01.mitll.ad.local (llex2019-01.llan.ll.mit.edu [172.25.4.97])
	by MX3.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 60KFJvws098006
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 10:19:57 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=RidinxH22NyT8Cbzdi2LxQ9Exbc+ML+Q9jiFsYekr2DVDRUzawfdYhU0yi6fRwwu88RBDZ/2BiwiE2Of8hzaeS0LeMmJOuhXMdvb2eT5E+O5tShKfJmx6+snkIOODwxoEYFpyHdgGZml+g7dOouZyNR2bNfnPGVNnrEiWDYGscfCD88EMC1FeyjMy03IAZqXSiLL0z1BMokO+IUO2xUT9tiGjZrmopJ9+oBj7Ocv7Lyi2lvrUzp9e8kaLAXvKjtd7n2qNb3oIsPgSEuoMw/cxkq2H5m7+jaXPdbr5sam322M/uHJ36/PE8Kp/4gu+2TJXyjq9yr3IgFM7zqwOUadkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=avXyWhIZup+Zt1J8xTnVUbWfAJI6OQIYQAmftMkBGyQ=;
 b=LCjXxE1/Fx/qsU7chJQ4tu5jBGkdxAy7KtopNVobkRdHE8qfbRq9yKQ578nMeB8mFPzsiXyYdL9xz4cDRL2Edk++Pjy1dp5d5NwmjJpYGifpHjaMlyBYY0hWBt4DpfaqJuoK8O5ZcUJYwVvkxqe/o9HyeA+lky33LtcxabAT4dzVxcvJdN2AJCKMAA1r1wCgFbXkM1FMOCtk2qGZGzlcElnO+ZGArR6D2HtdyFpq8HDay7SBliEEjqrVQLIbjPx726DNvrWIIwXt5BnhSDGZUQl1s8wXMU5TvmAnJsagSBkw4wHsjAwEQseww3AqQOgcRYe63ixl6YDNdGC6mjIkKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Jimenez Vargas, Juan - 0994 - MITLL" <Juan.JimenezVargas@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC Front Panel GPIO
Thread-Index: AQHciiAuOi2DdJhAfUC9qlKn9n+f9w==
Date: Tue, 20 Jan 2026 15:19:54 +0000
Message-ID: <CY1P110MB0888416ED25C0744A4AE0F17AA89A@CY1P110MB0888.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY1P110MB0888:EE_|PH3P110MB1799:EE_
x-ms-office365-filtering-correlation-id: d0f0d66d-dcaf-4213-974b-08de58375d2a
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|38070700021|8096899003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Gx2ntwNFpoF8NCvf+lTL34hn/KhezX9EUuxfTW81mdXvYL/EvlGyFszX2o?=
 =?iso-8859-1?Q?Txq7BspFvMsfA8lCAcktslDr9bLl90vw9oxuhliBY1s9V1N2k65Z+dB7oY?=
 =?iso-8859-1?Q?bXRUjDrMIj3JL8J724wAY9tCLwinVGl1JVLH4RRNbeAuJ8EQ8x62dINirS?=
 =?iso-8859-1?Q?kkrcXwNxVadgPIG4chgut2X3MajeQ2MAOVn5ejps9iQIfeyEZaFSKpJcq7?=
 =?iso-8859-1?Q?LdmLoKmwzY4i7UOHq5kh4bnTJlJ5w7kUrJvQdbgETytPWixVvJXpuaQW9x?=
 =?iso-8859-1?Q?F5B8qqmQGoKvE/pZ6bjWdgJN/TLHYmeiKilprYkb0FCoJeGazBmWrP+Ngs?=
 =?iso-8859-1?Q?khoJN7NoiOrzDfJfxrB2H9isda+KZvVGmWBF7nW2ehfpsGOZF8Oyu+p4Fq?=
 =?iso-8859-1?Q?GCycO8A7ecVuRh4OWQlvB75g1TGVDdfc00umN8f8eRGy6I6tJtIaaaJNna?=
 =?iso-8859-1?Q?cGS2I/MpKb+JLYWYaKSFoEcDGR4nrX/E4sdHHebXq8kOSsalq+yi8HRifs?=
 =?iso-8859-1?Q?TVoBeU/P7erovDDp1mWQJ+ZNo+X1iKNbgc+5Es8egIZJvZ1erztTUHywqM?=
 =?iso-8859-1?Q?CzAfPOSu8uPantMnltrQvI6eMFvyrdqqhGYW/RlZ3e5E1URInoApp2PN2B?=
 =?iso-8859-1?Q?MX42n+AuXPx1j4cXByhcePiPP0FYbwWbys1imTO7xh3sHC2dGYsWzwTb0x?=
 =?iso-8859-1?Q?CGBRpJWGBlVHsyTuHWPHtr5GF4IFQchANDoSTHc/uqlEQFKv7KYsXCBqiC?=
 =?iso-8859-1?Q?f6mUSMpoN19wrQ0dgZZwrNlw01qopSdTdVWWNP9H27CZ4LSVdF8QCJDTjD?=
 =?iso-8859-1?Q?ORAui2Vgc2TnYaa04Y9oOJyPgwnFwjK7Og8Okf9UloyRHsWIa4vzvt55es?=
 =?iso-8859-1?Q?n34Vk3++nT/qtayF/ExihVDitjaddbiiwFCucFLW9XQnqMbNSB0skTGjv0?=
 =?iso-8859-1?Q?8DXiofMh8e5ZqLT9YSRR2Re10a+/K5bVBkmrrdXBUQAjxdiQp91TdVdbex?=
 =?iso-8859-1?Q?/2jAoqUX/jASGslBDQI0u/NIvOG9166EHqHGqbDxXlqXhWQTGfzy7dY1Lz?=
 =?iso-8859-1?Q?S7r4aFyNty0LEDBvvX7OsKRvobtY791XGzL8AHnf60ZMSzs/BssO1R7EL8?=
 =?iso-8859-1?Q?cfFQRSuZ8zXBg4LTSxocg/MlcNW4FOMIDNSSzruLD8RAvMgAFA4JXHJf7d?=
 =?iso-8859-1?Q?7LSEI3kor3u7hK69sx+iydrw/tjZ/Dqe8l86I1yMhl0Wl0VYVdb0kAgiEz?=
 =?iso-8859-1?Q?+2Qav/TgWATvGknHu2adHhJfPTYEh8X/rkk5rJMrETe87I4OYOC+LPwcOo?=
 =?iso-8859-1?Q?cvqo0HbUnGiojUJ5ajTcXrnu/6codXee898eDwayKFaoayUiFDIfBf+wj4?=
 =?iso-8859-1?Q?+rryI/Jouf0/9cwgYWSQXjVDSeWzKyVH7PzIvrR2fwCZ24EXtJVIxdO3k1?=
 =?iso-8859-1?Q?OD1qMGOjmakR27gh0SnmYQRb/FyPnfPLyF2T/zuot0yIXv/ockVtbO5/qH?=
 =?iso-8859-1?Q?idcogJx5UrUFDfAYlaNDQrqP87BCqUjavAoiXPeDQKTtifSPla+jj1qJ9N?=
 =?iso-8859-1?Q?0Z+5flDDCblPzzbbbkT7o0QKfnMNSZWsKC2PHFLyLfzVDZjNM9RN5+6E5q?=
 =?iso-8859-1?Q?hw7fOhXuqqK54OxtbA99BqWBKGzgbRhyEuS9M0zmJKMYpICECnngYIalBY?=
 =?iso-8859-1?Q?8vdVW/E0Up1/uYvaqQA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY1P110MB0888.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?6x62z/8OaXHG72GqlFXxe9accV9A0LkTee3m7Uv7e9TourIynkIqEajyXe?=
 =?iso-8859-1?Q?irniQJ4HRNw7HQ/6aV29c7rk9mk1PsoAUpZs1YzscLeIo9J5F/5fs4Nzsy?=
 =?iso-8859-1?Q?vEn8bJb7SrV33TdTOFA5Z9a7MnTicYGwtmB4QlIzOEJ9zrm+e+gPgj5JBf?=
 =?iso-8859-1?Q?XHI5cjdfd3jGDwBp24tUaSUrWknrZZufGuXRmpNSaZUOZZ1HYhosHQzs9s?=
 =?iso-8859-1?Q?pQ6CASVg2Y2nxIR2Tim07GKcZI7WQpOehLmuuWFiXpXxZi2GiWlAzDvCUk?=
 =?iso-8859-1?Q?1Mc4dfIe/SVNW8Nl8i8i2vvAWWDe612SarWU1mM9Rqk1HZPz+P0GSyQFyk?=
 =?iso-8859-1?Q?qfBiLjyO3kzHH1CZKDAhaer+fkED4vJ0RMQ3uADzbBlySLhsTtA8f7qiZv?=
 =?iso-8859-1?Q?gVmLQD/xbitjbupKGCLZnq1roEMeJiuMnBvcVwmIu0ntyLskfzUcA4jusW?=
 =?iso-8859-1?Q?UQnI1qkc4J43WWvG4M1x+SbzcUA97jcKIm/A+aOwbJBeYx8WNCV6UxBHoQ?=
 =?iso-8859-1?Q?+Lat2aNxh5eNAw9b2L1tfyL1D1OQoTBODJKSzoXCJs4VXd+ICv4l9B95yD?=
 =?iso-8859-1?Q?4b/KkDalqCIuXKoDO22i2XCNa59UtigJt7IUw25Wo8lVl1C7eDbSCbRgJt?=
 =?iso-8859-1?Q?hTiYYAvuxSQJvkpLA7gdXwJa5Wbe3xicfKrWjv9fyfwMlF8kwZzwlZXctD?=
 =?iso-8859-1?Q?MmUgtzirl5u3btF/gjVGgTrx+55jsd95iLdg+pggzqk+3jNCQXigerRHYO?=
 =?iso-8859-1?Q?2a9R683GaAbLmBtsforv9AVT5cR8GDy0SQFby4e/v/jqOgirxx5uNax87E?=
 =?iso-8859-1?Q?mUcVj+p1r0sBsImBWKrrphuoOy4sr/H3YAuBj1wA/7s0KiGveWNWThCa8k?=
 =?iso-8859-1?Q?sD7355KQFPX0oU0Zk8qW6gncEkX5dZBKtS+Qg/luZC/PrLjBvjcTjcgJCQ?=
 =?iso-8859-1?Q?1BnQ47oEcku1T0UNAT/puCfDjeee4p6xwT4aOkfo+s0G5SWfAwFsS5m01T?=
 =?iso-8859-1?Q?BDmzTo+MI8hD0uJeBhYi/2oFRo2yDzIafGn5YO7eg0m+br/Ofuu1kp+wGa?=
 =?iso-8859-1?Q?zxQZNz20n36HzlnAVokIzxhIm8X1zy9M1MRsq4aUoA7chLz4SKkYkeATQS?=
 =?iso-8859-1?Q?icJ47yo526a3ytCiqkF2zU7YqNXknO7C7R2Ym6qjkR8kOJnhzBQsS3pvYJ?=
 =?iso-8859-1?Q?80yQwNVoB1MG/58cf7VWRkjia7ru9J7mn2Ude1mGSNkhTAkKdvmOIXksus?=
 =?iso-8859-1?Q?Jm3pDa1nSwvadLDBPolTNQh6eB6aWl/QuNb2Va25aCuZs5ktztolsRE1EQ?=
 =?iso-8859-1?Q?IkUqaZmhA1KVRZWCwB8Gk1W8zvr4RusMk8QWDToeeIsDs0qRQMf7gZPhN5?=
 =?iso-8859-1?Q?Fi2VyGpPFRk6R5tmWFztYJP/KtrQ1E3OwZTlSMohaq3tro7lsE/o8wtXlj?=
 =?iso-8859-1?Q?JEzc/mODtHVW2texoeIR6DjOBI7nMofcZ0Ynj/tOfFmKM+/ZKJ+arUMgX/?=
 =?iso-8859-1?Q?sWrcEUU/Jtrw+N/Eh57I+wFXUlgX7MGPERQTlW0bWVzhtYfQu68GeY+gQ+?=
 =?iso-8859-1?Q?GAYBCNb2rt/Ciqr3Se2LHA8aY/dl?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY1P110MB0888.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d0f0d66d-dcaf-4213-974b-08de58375d2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 15:19:54.2447
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3P110MB1799
X-Proofpoint-ORIG-GUID: j72JW2y199YMqhr4eiRfQzVKBxVWuU-j
X-Proofpoint-GUID: j72JW2y199YMqhr4eiRfQzVKBxVWuU-j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDEyNiBTYWx0ZWRfX+Qxzad1ujaPy
 gvrMyvKAcA2z2lN4zlnTEOn1UIicsKnSingU+VkuFhgGOYzBgG9zqtMfggcfGQ417yP25t+gZbF
 alUbREnSFHP3XZf2c8l6z9WXeTKgwFQRigRG5B5T5hO5eW8vyTpYVWfKckes3zV/CBRgK4T3hk3
 nUSLRaK2wfe+Gj4Dz5Ca4LkWV3zljY51I0/9o8PZ2P/lnGtoxvBqDNqKldrV3bRMcVJYiUokbvc
 TXVORNit4z4x93ca1YcswC7zqwzgf1kVpVnC5V9VrvgPxO+guVZw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 mlxlogscore=368 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2601200126
Message-ID-Hash: NZ4OHZ7UYVXJB7W52YCXWWBBFYXE43V5
X-Message-ID-Hash: NZ4OHZ7UYVXJB7W52YCXWWBBFYXE43V5
X-MailFrom: prvs=7480cde64f=juan.jimenezvargas@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC Front Panel GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NZ4OHZ7UYVXJB7W52YCXWWBBFYXE43V5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7702082006675940037=="
X-Spamd-Result: default: False [0.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[ll.mit.edu : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Juan.JimenezVargas@ll.mit.edu,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[ll.mit.edu:s=dkim1];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ll.mit.edu:-]
X-Rspamd-Queue-Id: D2340465BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============7702082006675940037==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1P110MB0888416ED25C0744A4AE0F17AA89ACY1P110MB0888NAMP_"

--_000_CY1P110MB0888416ED25C0744A4AE0F17AA89ACY1P110MB0888NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am interested in making a custom RFNOC block that drives the GPIO of an N=
310 device based on the LSB of the incoming samples. Is there some interfac=
e for controlling the GPIO of a device through RFNOC? Would anyone happen t=
o know a method for directly controlling the state of the GPIO from within =
a RFNOC block without breaking the logic that already controls the GPIO in =
the devices?

Thanks,

Juan Jimenez


--_000_CY1P110MB0888416ED25C0744A4AE0F17AA89ACY1P110MB0888NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);" class=3D"elementToProof">
Hello,</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);" class=3D"elementToProof">
I am interested in making a custom RFNOC block that drives the GPIO of an N=
310 device based on the LSB of the incoming samples. Is there some interfac=
e for controlling the GPIO of a device through RFNOC? Would anyone happen t=
o know a method for directly controlling
 the state of the GPIO from within a RFNOC block without breaking the logic=
 that already controls the GPIO in the devices?</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);" class=3D"elementToProof">
Thanks,</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSF=
ontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, =
0, 0);" class=3D"elementToProof">
Juan Jimenez</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_CY1P110MB0888416ED25C0744A4AE0F17AA89ACY1P110MB0888NAMP_--

--===============7702082006675940037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7702082006675940037==--
