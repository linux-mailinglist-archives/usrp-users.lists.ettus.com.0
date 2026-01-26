Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YY8FHzEAeGnHnAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 01:00:49 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2AF8E5EF
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 01:00:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B4C83882C9
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 19:00:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769472047; bh=60u0ctQmkd+oWxueLf4fIESPO4WCm5FrA0JJzAYAHKk=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=coiocgEbzEIXNhrut544KuWfiN++KpSdP5RuNdk2MKvNilpW9Gu/joX3vfGFcQKOn
	 O+mDYah9O+JRpv5t94JYto40BHRpzB5SqN28ti5aBLWWeK+tS8LSd0EAGxiHttwP+V
	 sbjcnWDNtvf91K+FtVI3tUXFN57qHRHKkKjfh6Diz9rb0rsTi9LnOIeHAJdsXzFhEf
	 Dgk1Ggr6hJE1a/AXJd7ADwrd8mx3q+52XKt4isqbetMSGeRYPsAfgArXCCvbkZ63YK
	 HYT7Q+UijrNkwXIrt5pB8eOWVZ8YwLC3KyRSwUjBytLYZna2ho18+YB4IdrBkzRsKw
	 i7AQL/GqBcEjA==
Received: from BN8PR09CU001.outbound.protection.outlook.com (mail-eastus2azon11012031.outbound.protection.outlook.com [52.101.58.31])
	by mm2.emwd.com (Postfix) with ESMTPS id 84D2D388275
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 18:59:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="InCgd28f";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k+4v4s/dx+lF0Ckg3kgl/97i9SF4ASM4r2hnG8uzw9ARKFKQOaP2V+ZRPGiM9WwVVigwmspx+SBwUptWS77sfqFRFaWcwNWOKXXp1lWVuk2JuVdUqG/Ar2xFyAmbdSvLEEccJxYplmKkZ6340LgiXkxVRsP9dYbGHcPbLvmfIjHLByyHEfQ9hotPtWuUG5WAvDcZvdTV5mLoB80SyguWKKL78QaDOl4Wle/Z5NLBF4TEjfFqBLsm2NBrkc1AyQ9ubjHgDprtkYD88aTW8E2wZE3YsvEiLFsE44rdW2eCPPRNj0Rzmv6ZYtFu9/JwX9B6/W8HvPnEgaFI0bZzCRSUKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sZAqCGEWhtw3zekPblbp5uMokoKnort3l6wg2+PpNw8=;
 b=XsPc6RcSSjkMSklByIZiLvT3I6nnJGgVPSYg926vWF50ok7FeK3c2elBN5FCngeWOEvuoxBB0F6Y1yZ09iBSyM+H/h7GIxiU5JgAE8IxKzgM2COvJjeDKLJBmcVJafuf1ZBtlc47mCGmBBPJP0AInyGtNYnPsM56P5edhaslxFfToE378ETiA5olWijyycGws0xDhBoAlCiLh4VW3Nrjb2UPzSaTrxvQBzCLY2I+JNS1o21CSi65bOhshcqQlVKtRHoMwcWIj/IjImCUFKh9i20kqLELLxXAC380iilS+k1Pl8iW8wGsjpuH3V5U0LTeGUWyIcqH7pLiXZhZKfS6xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZAqCGEWhtw3zekPblbp5uMokoKnort3l6wg2+PpNw8=;
 b=InCgd28fZo4+0AnVTjiknvZT7la0fYHLdDM6AKfJ4dDQwm60metglr7VPQXjws98Diw0jKOguom1Z4oaEEg9dVqUPqhVCesP7MHBMFEvNsraIU0+jLhaSSgAyk2M4y/K10Eb6uyA0mhcVOVIwn4arACtXC2LM15PHiOJH9TOn44=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by MW4PR09MB9740.namprd09.prod.outlook.com (2603:10b6:303:1e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 23:59:35 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 23:59:35 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: TX DRAM buffer
Thread-Index: AQHcjx93T9evDZaSP0azPNmhNYsLKw==
Date: Mon, 26 Jan 2026 23:59:35 +0000
Message-ID: 
 <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|MW4PR09MB9740:EE_
x-ms-office365-filtering-correlation-id: 793a1dab-c039-40b8-ec79-08de5d36f50d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?WvalPJKE6NRM1EIfCc+TGSQpc4uJ3phNcpQi1nNoHyFbUPeX9YoEE8xc?=
 =?Windows-1252?Q?psNmiknqt6q/dCYoglqDb1IBrFSUaFRHNW6+gecHI8Phdljh2hP8kUAi?=
 =?Windows-1252?Q?1lDU6W9q0/X2F/I7itMaBT0Mp2ok16OYiR0KliuQoFQSxsLeEUiOb9dy?=
 =?Windows-1252?Q?Y1zvYdh07kRR2NsCqtMTBWdVtSwFcWGWOU41fPtCBFJXfZvwjcVxCMjS?=
 =?Windows-1252?Q?D15l9CbUgO1R8G9EWM0zTZBjYxZiPd5cPd/eZ0Q5Z6oTc+Mz46Lt71+Q?=
 =?Windows-1252?Q?GwQG3sH86VcAElag0IxsAHgKD3hVe5dOHmfgv9uGdMejP8w+d/neh7M8?=
 =?Windows-1252?Q?A8Yn/f52njjBAu/PSbc8eOhWItQsk8PE0ypeMC19mULZDjGaDZD/WXqB?=
 =?Windows-1252?Q?16C1wQok/cvA1B/6lbwTU1wzq0/LQEo1mfTc6iLBIgb/Q/2w9GdAHtGR?=
 =?Windows-1252?Q?axd/MxD5npTLFUKGMqpdEufbW4gbSLMi3SrplFuQi+OFvO6NV6FIwIs8?=
 =?Windows-1252?Q?Kv6Qjk2un8E5m0O44C+vuMxjC9YpKS+qjPdOIic/2xqmQb0q/TUL5e9A?=
 =?Windows-1252?Q?xBbwz3loBqsMb2YELt3o7gHb3CJ1BeB0jH19c6CXh8I9ds8ZUAbsqcT+?=
 =?Windows-1252?Q?HfcvWUNV+Emv7sSGnoFwKE2bRoGOOFI21BNzSVPGNbDXkyHoJmVYBvLC?=
 =?Windows-1252?Q?ic4BST5XuXP/3bCk6T5o/YxOUtnjpBugfRUaPgYfwG/OXYlbbhbY3lwR?=
 =?Windows-1252?Q?BGEgqLgpI07XNuGjwt9uq3K5MaIDRD62JbFOT195j+BAy730HlMzRtCM?=
 =?Windows-1252?Q?EojpLNw5mmYYir7xxU4UTXZUWDtsyIF2M2sFGIi88wH8Q0s9h1SQGYpx?=
 =?Windows-1252?Q?GyyBzqEZUyP+kDlSTrGiXoG0X6luT67uzKI+UlCwjptaQL7iUi8Wc52L?=
 =?Windows-1252?Q?H4kPZn3tncVxjYjNGBG5rA95lc5rHeQRG9vhlMpu9X8gxk7bjvOtQutu?=
 =?Windows-1252?Q?VRiFnM2BpGMgoZFaFhz5o9FIWfq/zeK/mud6Vn+xvy9Tx5WyisnZRpNz?=
 =?Windows-1252?Q?5n5c4xlUc8YjzCRKILc/OE4UwcZTbWo6HNju+by5qHttffPRZdhYtpFw?=
 =?Windows-1252?Q?rSzz1zIiwQO+rr1Jj35sfOV3qOdHnGKOs6CeBtRgkUVq75QmJ5CFV7T8?=
 =?Windows-1252?Q?ukmOR7xneLBBJVWqAZwuSYdp9ogwMk9W1w/cb4wrQiWYzZaEHbFPvwfG?=
 =?Windows-1252?Q?kSemDRuMB2i8yTRUM6EnfAtA3xOqDgvD11rEGQMIA78guZxBcP2otZ9R?=
 =?Windows-1252?Q?PWsNYcCQ3ZQ3C4J5dRxXnoeF7kJLTrCGHPSjsbCCXdvn+JeABsWOPTfd?=
 =?Windows-1252?Q?oOUmBtrUGavydb7VT77tSnKrt36V/B2s/vsdSWDNctw4XaWTXzL1odeJ?=
 =?Windows-1252?Q?C9AkepyzmxactiejEOKs+d9pW2kD2raXphnvzCdvZ9UhmT4GoutYnRGC?=
 =?Windows-1252?Q?Eo4lP4Mqof/LceeObYbQ4GjDeM+dJcqZgbrhj5w0gO/zM8mScOlzdA5r?=
 =?Windows-1252?Q?oa8+8Xr6+/wESbPOouDzazmisg3FMZCKp6bc5Jpz8mtybFjjS/4fyBGs?=
 =?Windows-1252?Q?O/ip6nobGNJx1KxCNWZKzD5JjXE3H7IcT+Qon+2OD+dyQj2ALfVIfJUe?=
 =?Windows-1252?Q?TDs9PTELnboULmNReRn01kYhMxSgSuGFjPkAMFFz/+c0QAhCwmzpyeQf?=
 =?Windows-1252?Q?ucPH0YoV4QzS5HecQuc=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?09rfWwSsyYGQjXAnJRQsePzvcL8fZZWM6XRqat8ti5C39PnloIKIDx2R?=
 =?Windows-1252?Q?9/3h52Q/C7es/LUmzi7QXHzkhuFD/ReWWjx5At9XQrCrtkBdznXw3Lap?=
 =?Windows-1252?Q?G657Au1LaFrTkzOgPcMvp+xlcTAIV1P9GLDNJxkrW7dxxkRg+7Knwxpy?=
 =?Windows-1252?Q?TAWov2h0KlU/CD9zEiyzl+cFNN77+fCV8SX6wHJL2jwzIIFvQuSRVuTG?=
 =?Windows-1252?Q?rQSPSb8bpVm390pSPR0kuvKMP5CnV8v0lCkg4Yqtinl/JuXQysqHfXfe?=
 =?Windows-1252?Q?LK9SLt9iI7ISCZi78go871ljpCjTB8TiS/as5fn5keOqf0aOKkOEV0M3?=
 =?Windows-1252?Q?OEZ38txWfI+p7x1Ft8NeC9RZn6ctnkiiVYNYPtrRFUJ4DmlTJmY5/es3?=
 =?Windows-1252?Q?7erWwClZLFVr9xyKE4n80+csNoONl8auiHlFVqPojHI8i+z3FkVhPDxi?=
 =?Windows-1252?Q?/D0i8dsAEzJ6G3vPIQiYleG9DYnCKrjl1Wum1JqJyY3TusJBMUWShHNj?=
 =?Windows-1252?Q?YO3e8zT0VV67TtJDX6NqX86MHpdtPDjrIN+qeCoE4yXNYRFBIJ7AiOq5?=
 =?Windows-1252?Q?yj+lx2Iawo+Jy97pUvrIQAfxQD3H6kGabx59JgNxWOTh82OMnDVJr8Xa?=
 =?Windows-1252?Q?liaSYtdo1+vxg/RFyHc7HZPTYPlZJ3QpuruAn9iBH2P2F0OKyqECUGwb?=
 =?Windows-1252?Q?sfovR6D1OP/XfCbbc5NTonsh6eEVJHdfeH2eQmkFFUthlz+kk8o3RWL8?=
 =?Windows-1252?Q?19sMOTWNz/bmbDEDcKhCVfdMWTycN6zW/TvNOgZxxFl7MJ3vrpLnYQbK?=
 =?Windows-1252?Q?hYwlPn6xyjGQu5G7h44CAnoJZrNVupaHhzNDahx/VX9QopZzh4Y0d4hT?=
 =?Windows-1252?Q?dc2imFhS9p7yotCfYu82YkLtHe9XO64RGPEHhTxmw4ABg5oLrzPHYUmN?=
 =?Windows-1252?Q?Jgqz7wTX/OUaF7OZ69w3Jq5tpGPL8jrOtCbFDLsBOSManoPKIWj7+YRI?=
 =?Windows-1252?Q?FCWNXBbbvgh2DYKHLdJI4UkZr3AVMijbBOUHlE6te5uuamK928ufJxjI?=
 =?Windows-1252?Q?otfOV8+gA0xdYbybVZ7EOezU7KB/9XxeT1vDdQ3HH6o+yGVw1PpjDsTR?=
 =?Windows-1252?Q?Ea8JMs9e599FX9AhsabaX7EFdopsEJVVwVFIif/guqKbk8QworJJWApJ?=
 =?Windows-1252?Q?422SICUylOLvD7mN2jd+TS6CBukWAffzpMMfTEWbA62Uq3Pc7BUuqanu?=
 =?Windows-1252?Q?Jkkhc/DUQ4gLq29Hc7gEGO22bW85ulbyFW9F0tP6i8l0QJw2iC4b5PJQ?=
 =?Windows-1252?Q?XzCaodaNoZ3PTFUI5WqiLWHCFLF0N3miNuqVYew2TpOltvMkgT1jnl4y?=
 =?Windows-1252?Q?MU9BgETUKcZFLw300NVtTqTt3nCqTlgHceGTHCOh+49amwHSxQJQlJVr?=
 =?Windows-1252?Q?MDUbZd87rFrdDoyXu6iqd3t1U9MmSCNidszVsIoTm8RQOOx+k8+wvfxp?=
 =?Windows-1252?Q?BuZ4BrF5j0HCMrRfpHQRUQcaveVe6Mz0eBtxlZkcwzfzA0ZtfUZvrV1b?=
 =?Windows-1252?Q?Ku1EOY9lbhPT62agexILfX21RoXhXFsL7WLYbCUxsOBhen1XvvnmHQu+?=
 =?Windows-1252?Q?TyY0Iynx+T9VQsZ/T4UlSJVajGZwdqQQ2CSY6XFB2ODvvthCd5fPHC0E?=
 =?Windows-1252?Q?LNLz52RPbbGvgJw3WqKB3063BcSqBWEOOF+8IpZNkvzNlp/kCJlOuPRV?=
 =?Windows-1252?Q?5ZwrmK1sXP+HykQ9YvOdfWO5dt+0C8qzQNpCEkopAdljy5VjzKfa3r8O?=
 =?Windows-1252?Q?Bnw2ZQY2KhJbp6gO4csfrWejw8xHMjeGgIoar5J8+ZJJpZqe?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 793a1dab-c039-40b8-ec79-08de5d36f50d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2026 23:59:35.3725
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB9740
Message-ID-Hash: 3DGQNAKYHLCFDBRZTN6VZTUEH7IMJOEC
X-Message-ID-Hash: 3DGQNAKYHLCFDBRZTN6VZTUEH7IMJOEC
X-MailFrom: eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2P36BS3RJGPSGGLLMRTYWO35YTA63XRK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5725286629158284583=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[emwd.com:+,aerospacecloud.onmicrosoft.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	TAGGED_RCPT(0.00)[usrp-users];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Queue-Id: DD2AF8E5EF
X-Rspamd-Action: no action

--===============5725286629158284583==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91268FDF57110D4B6B826462EC93ASJ0PR09MB9126namp_"

--_000_SJ0PR09MB91268FDF57110D4B6B826462EC93ASJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

The default TX buffer for N32x is 128k samples =3D 512 kB.  The box has 1 G=
B of DRAM.  I am getting occasional underflows when streaming at 200 Msps, =
even though the CPU is not very loaded and easily meets the average through=
put.

I have done all the usual stuff =97 isolated cores, pin threads to cores, e=
tc.

Is there a way to increase the default DRAM buffer size w/out rebuilding th=
e FPGA image?

Thanks.

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB91268FDF57110D4B6B826462EC93ASJ0PR09MB9126namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
The default TX buffer for N32x is 128k samples =3D 512 kB.&nbsp; The box ha=
s 1 GB of DRAM.&nbsp; I am getting occasional underflows when streaming at =
200 Msps, even though the CPU is not very loaded and easily meets the avera=
ge throughput.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I have done all the usual stuff =97 isolated cores, pin threads to cores, e=
tc.&nbsp;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Is there a way to increase the default DRAM buffer size w/out rebuilding th=
e FPGA image?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks.</div>
<div class=3D"elementToProof" id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB91268FDF57110D4B6B826462EC93ASJ0PR09MB9126namp_--

--===============5725286629158284583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5725286629158284583==--
