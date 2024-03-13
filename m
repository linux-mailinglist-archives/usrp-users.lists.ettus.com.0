Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E581A87A70C
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 12:24:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B624E384DDA
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 07:24:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710329091; bh=qYKq+ywnTSkucCkcAH61GZR2DlaLlxWGzVizhJk+hEs=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ZVs3k8n54CGkTGMK3XWFklqcO1yZD+wQnk7bkv9XFe2PruaOaUYIsrsnapjq/0ejX
	 aq0eSEtf3Uu8gYY3mVEcwWFrx5Nd/b5yHPtuGuc8O61NBNeptakv+av/n2gZBqLvMQ
	 89JO6cbsSJ5Z1ktrdyNTsahZb8LTxOlILGfs0aDumEFtuGQjX19NzJb5Jr8olVNBto
	 FzmwZEMpCzlRNtFmyfd8B8miLkj+PlAlhPiWa68BrIFaTcCJ/MhYVQbFP5Rn+hIuxZ
	 /DTAr8bK529hFqCJ75Qm/bYXJ/2TDOcyD3dxne5ZyG9U222GvN1vCWKvbP1xY9naik
	 X9SbWf/OF1HYQ==
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2131.outbound.protection.outlook.com [40.107.20.131])
	by mm2.emwd.com (Postfix) with ESMTPS id F2CE938490B
	for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 07:24:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="vkmmUTtG";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=USQg7vkbf187zZ5kknNDPDL2XAP5dPGoLAUW3izcSCleBOKIBrlUHJectyTG1CmUVrv04bfn+y0P1tdVBrMYfZv9ZNmWMOT/kcASfQixcF46u53QdsVCG+turRP6reHm1MD9Vc3Uv6FufzNHsNSlD5dmgxIrVQhUSFh8nsqL+WE8e0O7WovT6I/B+YPHv6wfMe4Nq0PNFiyMy5/ZY7XYjWXhM00yKi6cuLRnS8MwRIFTS9+O8l42PGqtkD7PywQ42Uv3ZE9sfTBq1KzjuDQhWjg4C3TLNSpclwy1zbsxiQ1bFAzEjwkM2wKu71kvJSB2xiJ8YPiePy1b1bi30bXXfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1toYW2ulxye6f4OQnfGOwbUZOUj/IREL+ZZ3QEUhJM=;
 b=fqKBHmSQTpE1aOnL+9nv912d0pnsp7eZPTaITGDgVJJ9woAIfQVNZ/MjGIi2XNUGCHHofCZjhgoihP5SYnas+NtJ+Py16xHkqVLApe+66AZyJAKVxHRnkxOr4rbNo06JKsDWijInThCxa9C6GoOOPlcbXYOTb6vhgJx2is+dqHeYd+gqa3/etc3NanzBXyYwkF00VTbARbpAFDkpTrmwEiZK6uFX45//aUo4kwI39n2yIKbkHNk+Ws1fihMZ+UQwSj4sWLQjE1RsuJQKaHh7mI4SYqh0VlGR1PkS5iTOqqgjwj6mork6CUQaUOkE8mlXcT/4SNJjvbHakJueV43A3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H1toYW2ulxye6f4OQnfGOwbUZOUj/IREL+ZZ3QEUhJM=;
 b=vkmmUTtG0lFZwRUuMoHYZ/neuhfsjIOH04ZsuURXCuAtbuPXT7JRufuTwfmGSUuNtFUutujeSNYqqoh5raUZA9DFIlNJI1JFScKm0nNCIjhzsguyAdVVA7uOP2rSh4h4uGbdjztB4RN/g1WIcTKGIj+j7SL96v0wAcCEWUBzjuQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 DBBP190MB2059.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:52a::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.33; Wed, 13 Mar 2024 11:23:59 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::5f6b:c76a:2ff8:c5f4%7]) with mapi id 15.20.7362.035; Wed, 13 Mar 2024
 11:23:58 +0000
Date: Wed, 13 Mar 2024 12:23:54 +0100
To: usrp-users@lists.ettus.com
Message-ID: <f2r6jo6kwht3mfsk52g5ggwohrfj5flmnq5ubmh6gjl4c2mnpw@3rpnopiaxdsq>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com>
X-ClientProxiedBy: AM9P192CA0024.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::29) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|DBBP190MB2059:EE_
X-MS-Office365-Filtering-Correlation-Id: fdbb15ea-afd8-4915-3a2d-08dc435013b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	L/YfPIoPKc4rYKip201XwmWFBLN7Jbx2DRyE535ovn/PeY6yha4zONizKLIrRhHL5xYgMFrAfjPhDB5I3V+A0YFNpLBFL7fv0uo+7ZGy5f1IzfrhpfG9nPHGIjRqIaYFikR9RJFTlIjpyBDlrij2bbyvnycOM4dHJZEL+h4Xijc0xNOSnrk+QJx72CAKKhPXbVQJs/ndm4CXGcvFnNOLgn9VS48eTXh1osMHpUyCpQBv+f75U4+ntiA+FoNospu2ZAn0PoAdQkC1l1uoSxFGY7H7NAaTK41LHnX4TE9GnN7B95LexnvjWGqn6DWxOlnxiwp/PxwstAlCYJwvYWZJMxQncj2z60glb5Wwa7c422cHIhSFvvkPGchhRrsLIjNz0SOKzyOje0Kmhlz4fKh94NWoXcE5X9/qppB1UzCTNer0PS+S7ZEvM8KNFOL15T2A6KAMLgNJXypHAT++zc6xULGbF5o+nB3ibj5l0jwoDtnlyW6K/5ABa8LfLjfA1Fr4tL/a783mom1V7+5AnEmmwyNZlSr9hHp05fCFyeTVKLUbUDkHSLi0dhiDu9iuC1R2T5hPFa4R/XQjG9D/vMYzYq5rNTCiLX/n8mhm9ST8riQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(52116005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N2RqUERYNHBYY3RrVElXMmtDSXRqem8yZDZpMzd6TXg2cW45VnFheWhzVzZj?=
 =?utf-8?B?bktKMHM1RDFyZVJIaG95WDRWSnJCS24yeURsQjlHQnhaTnZnZGxXcFBJVndu?=
 =?utf-8?B?RUNKN3ZpNk9FMFE4akdkZ2RQTTZvUmJJS2ZxYU53NEZ2RmxKSzYyWllNSGky?=
 =?utf-8?B?Qm9mcXFmaFRveGt3bzZBUXA2V0xwTGhyRjZHSU12eTNVMHk2VzY5OWcxa1Zy?=
 =?utf-8?B?RmYra2FraTZNK3pXK3J6bFVtaHFVaUJKNGxUUk1jc0JjVVU2TUpmaXBpaVJw?=
 =?utf-8?B?OFlPSndIbWM2U0hxMHgxNmljVkx0RVI5elA0dXdMWkFUaVpmeWh0cStuc1Rk?=
 =?utf-8?B?b2JaNTBQOWRCTDZEUkgrQk1FejEyaTJleVFDMS9TZG9nNlpIWmphbm9kaUJS?=
 =?utf-8?B?ZllMcU90SUlkYXJJM0I5cVlyTmVhREhJY1BGTFJ2TDY3cysyWTJSM0JZcklh?=
 =?utf-8?B?VGdTZnFTSnJUTysxR2NDZWQ3SjVnd3l6OUFQK2RaUUV0d25FMU1BcE8vbGVr?=
 =?utf-8?B?c09MeXJHY0NVN2Z1dHMyYnlkKzJsSFJraGxJT083aGxYSTBGZzRqMy8xR0dR?=
 =?utf-8?B?Slc0OW1mRzB5c0xrR2VRdjJsd293ejIzWmNnRmNEV3AybHBXYkNWWFVwTUZ0?=
 =?utf-8?B?Vkx6STNwRWlGeW5CV3gvRkZwdDhQUDJyTVR5ZXJ1dEFmNS9tUy9iemk5TjdM?=
 =?utf-8?B?elJtRXE3ZXFvdmMzb1h4M3B0akg2cE9MTTQyOEphbHE4WUJ4RWNWK0hkYUFj?=
 =?utf-8?B?dldlazQwK1FHbmVXTlZZMmFURXJ4Y0xEYTd0UTV0RVZTai9HTG5KbXV4bTNR?=
 =?utf-8?B?U1hpdkV2aTV2ZzZqRjUzc1BRUXRqSWZSVW52U2tmNXRObkF3MjJwNWkzUmdI?=
 =?utf-8?B?UWVQK2pHdG53QmNYQlFDSzRCY2t0eGFVZTNWWFY4eE9jWG01bjVQK2U3dE5j?=
 =?utf-8?B?T1djcG1rNW1ZYUp4a0JUTGdQd1dlcUJIOUgrN0ZnRTg2cTBrbWV2OHdSTm5x?=
 =?utf-8?B?UVJsQlB3YVEySmY1WlRJZU9nZjFLZk9ma2NwT1Q5bklGWTBqMU0yYThDbDky?=
 =?utf-8?B?WFVhMGJlbWdiZ2crdDRhTnRrMThBSmZLUlZZZk5hWU1jSi82cDZRYzBKU1Fq?=
 =?utf-8?B?UXVNbVkxQithZnNlSm04MnhFZ2kvTUZyNkhqek5wSU5ib1EyUEszVWhSb0hR?=
 =?utf-8?B?cW5IcDNTTEw3THZKblJta0ZNRU04S3ZYRVJtV1lnT1RiQnpqRGtsTVZMb3Yx?=
 =?utf-8?B?NTI1Mk9seVJ1OGM2TmJOc21MdlRZeVh2U0ZCLzJnbklYckYyVlAwMnFuQTlC?=
 =?utf-8?B?bk02b3haZkt2dXBVYkNvZFFISHRyOWNHYkdXNzJGYVdjcmpTVzFGNXR4Rk8z?=
 =?utf-8?B?VUhHeDFiNk9EVFhScGRiQmpVMTYxZUt0UVJCWXlIQlhQbGhQOFJwY1dzYmdo?=
 =?utf-8?B?QTF2K2lGWUdMMFVBUWt5Z3hOOFBwVm9OdWtTTCtJYUxzTVQ2NXZ6c1h1VGlm?=
 =?utf-8?B?MUkyYjVmUmluemZEd0w4d2R5a1FXd0s0UnVyY1RLdEFoYVY1VStRU05YWkRx?=
 =?utf-8?B?QUhGMlNzeHJPZWtvZEMwbksrc1NNNit4YjRuL3Q3ZWd1OHlwQ0Z4Rk80OHJU?=
 =?utf-8?B?MGgrb3JyL3RHbHREWnhNRGd0MFZLUWpiRVZuOWc3Z2R6RkV4OTJLR1VsdGFv?=
 =?utf-8?B?Zko0QUhDODJ0TDVqbngyaUpibFNzS3dzQ25iRHF2UmMxdmVhS2ZtWSs2VVlT?=
 =?utf-8?B?N0RMKzJmbjdRUnphTTdXUkxjTEU4bWZDYlhjV3JSMTB0UU9MUVZPVVZZSFVF?=
 =?utf-8?B?Y3J5a2lIcFJ2TU1YTlhFQktVblh0VGJ5ZVpuZ0h0dzYyTk1UL21hMlRiRDJ1?=
 =?utf-8?B?US80cjZ4N0o5eE0wc1ppcHdsRzhRc05jSWhrT05xb0JtUzNyb0M4aEJQdXBp?=
 =?utf-8?B?V2ZpOHA4c1BIVHpORGFKSWR2NzVtQXdqazJtbXJjSnlWTCtmNW4xY1NSMDBR?=
 =?utf-8?B?M3ExNmYrTzZxT3g0Zk0ybVlzZFIxemlKT25uR2FRTUNKUW1LMm5zejc4NVkv?=
 =?utf-8?B?SlZUelRTYkVXM3JxTDN1cW52V0ZTcEQwYWt5M0grdld0WjFRamZ3N1hFb2dr?=
 =?utf-8?B?eWtBb3MrTzRpeEdLSGhHRFNPWFBONzdZL3VrMlFLcThDb29IVFMrbnBFQTRM?=
 =?utf-8?B?VXNxVkJzTUF2OWVQSkdRKzFnWmhUaHEvR01MbkVmeEpNcU80YUFMYXh1anF5?=
 =?utf-8?B?SnR3QzFWQytXTlhoWnMvaUh5NG5BPT0=?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: fdbb15ea-afd8-4915-3a2d-08dc435013b4
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2024 11:23:58.8507
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o9FOyL0+nq61cbGlsBBYpgUXUpeFgqh/eKuwkR7HoMfhLzoKzGN5nIVuoHRALKb1bdCaebDhtGjpFgwsILnHLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBP190MB2059
Message-ID-Hash: LCSRM5UCKGGJMAMKF3C4ZRB64L63QS4F
X-Message-ID-Hash: LCSRM5UCKGGJMAMKF3C4ZRB64L63QS4F
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Non-Unique Device MAC Address's After Mender F.S. Update
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LCSRM5UCKGGJMAMKF3C4ZRB64L63QS4F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjQtMDMtMTEgMTU6NDIgKzAwMDAsIGVkZW5tY2xhdWdobGluMTIzQGdtYWls
LmNvbSB3cm90ZToNCj4gV2UgaGFkIGEgbmVlZCBmb3IgYSBtdWx0aXBsZSBkZXZpY2UgLSBzaW5n
bGUgc3VibmV0IHNldHVwLiBBZnRlcg0KPiB1cGRhdGluZyBtdWx0aXBsZSBFMzIw4oCZcyB0byBh
IG5ld2VyIFVIRCB2ZXJzaW9uLCBtZSBhbmQgbXkgY29sbGVhZ3VlLA0KPiB3ZSByZWFsaXplZCB0
aGF0IGFsbCBvZiB0aGUgZGV2aWNlcyBzaGFyZSBhIGNvbW1vbiBNQUMgYWRkcmVzcy4gVGhpcw0K
PiByZXN1bHRzIGluIHVuc3RhYmxlIGNvbm5lY3Rpb25zIHdpdGhpbiB0aGUgbmV0d29yay4gQXMg
Zm9yIGluIFt0aGlzDQo+IHRocmVhZF0oaHR0cHM6Ly9saXN0cy5ldHR1cy5jb20vZW1wYXRoeS90
aHJlYWQvUE9ZVVlOQjRSSDVNRlBBRFBGWVRTTExLVkFXVDY0TTY/aGFzaD1QT1lVWU5CNFJINU1G
UEFEUEZZVFNMTEtWQVdUNjRNNiNQT1lVWU5CNFJINU1GUEFEUEZZVFNMTEtWQVdUNjRNNg0KPiAi
RTMxMDogQ2hhbmdlIE1BQyBBZGRyZXNzPyAiKSBpcyB0aGVyZSBhIG5vbi10aGlyZCBwYXJ0eSwg
RXR0dXMNCj4gc3VwcG9ydGVkLCBob21lZ3Jvd24gd2F5IG9mIHJlc3RvcmluZy91cGRhdGluZyB0
aGUgTUFDIGFkZHJlc3Mgb2YgYQ0KPiBuZXR3b3JrIGRldmljZSwgc3BlY2lmaWNhbGx5IEUzMjA/
DQoNCkl0IHNlZW1zIHRoYXQgbmV0d29yayBpcyBtYW5hZ2VkIGJ5IHN5c3RlbWQtbmV0d29ya2Qu
DQpTbywgSSBndWVzcyBpbiB0aGUgbWVhbnRpbWUsDQp5b3UgY291bGQgY2hhbmdlIG5ldHdvcmtk
IGNvbmZpZ3VyYXRpb25zIHRvIGFzc2lnbiBhIGRpZmZlcmVudCBNQUMgYWRkcmVzcy4NCkZyb20g
WzFdLCB0aGUgY29uZmlndXJhdGlvbiBzaG91bGQgYmUgaW4gL2RhdGEvbmV0d29yay8uDQpZb3Ug
Y291bGQgbW9kaWZ5IHRoZSBmaWxlIGhhbmRsaW5nIHRoYXQgbmV0d29yayBpbnRlcmZhY2UNCihp
LmUuIGlmIHRoZSBpbnRlcmZhY2UgaXMgZXRoMCwgdGhlbiB0aGUgZmlsZSBzaG91bGQgaGF2ZSAn
TmFtZT1ldGgwJyksDQpieSBhZGRpbmc6DQpbTGlua10NCk1BQ0FkZHJlc3M9PHVuaXF1ZU1BQ0Fk
ZHJlc3M+DQoNCkkgZ3Vlc3MgdGhhdCBpZiB0aGUgZmlsZSBkb2VzIG5vdCBleGlzdCwNCmNvcHkg
cGFzdGluZyB0aGUgb25lIGZyb20gWzFdIHNob3VsZCBiZSBmaW5lICg/KQ0KDQpPciB5b3UgY291
bGQgYWRkL21vZGlmeSBhIDxuYW1lPi5saW5rIHdpdGggYSBjb3JyZWN0IFtNYXRjaF0gYW5kIGEN
CltMaW5rXQ0KTUFDQWRkcmVzc1BvbGljeT08cGVyc2lzdGVudHxyYW5kb20+DQoNCmFuZCBsZXQg
c3lzdGVtZC1uZXR3b3JrZCBnZW5lcmF0ZSBhIE1BQyBhZGRyZXNzLg0KDQpSZWxldmFudCBkb2N1
bWVudGF0aW9uczoNCmh0dHBzOi8vbWFuLmFyY2hsaW51eC5vcmcvbWFuL3N5c3RlbWQubmV0d29y
ay41LmVuDQpodHRwczovL21hbi5hcmNobGludXgub3JnL21hbi9zeXN0ZW1kLmxpbmsuNS5lbg0K
aHR0cHM6Ly93aWtpLmFyY2hsaW51eC5vcmcvdGl0bGUvU3lzdGVtZC1uZXR3b3JrZA0KDQpbMV0g
aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdXNycF9lM3h4Lmh0bWwjZTN4eF9n
ZXR0aW5nX3N0YXJ0ZWRfY29ubmVjdGl2aXR5DQoNCkJlc3QgcmVnYXJkcw0KLS0gDQoNCkPDqWRy
aWMgSGFubm90aWVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
