Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9322E1902
	for <lists+usrp-users@lfdr.de>; Wed, 23 Dec 2020 07:37:18 +0100 (CET)
Received: from [::1] (port=33732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1krxlr-00064p-3M; Wed, 23 Dec 2020 01:37:15 -0500
Received: from mail-eopbgr00123.outbound.protection.outlook.com
 ([40.107.0.123]:47872 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1krxlm-0005nW-8z
 for usrp-users@lists.ettus.com; Wed, 23 Dec 2020 01:37:10 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISM3OCwrIcp9qJsvz0I2ALbuTfChjNwVElBDTs4AlQaz4IzgaDSt1ikNCAbXxarppRf0YmctU6pg2ZLnHoLrREKlMI6HGfUKN92x0mawl7j4Qs0GyIIKtKyPazjcFxaWojRnSq/pkPQynnK2z78RzIT+j+yVS7SmJlQH9UFQcumm/AU4hGqiNXhaDDNkBoK3QtuT2gavaTBLC4llQE/Wuh8hzuuzOHYQmh3cNOrNjPoJMg1/JtQj08inf9QIGX5k4LM0bIEyOcKe/VZMcxcCJ3GQjp4i346fxRCQHDqZ7qGs8HUwVZzv9sxwO47/5gt3G0IV59FgufXCmOiSzRtO5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fTsrmsbAeezldEsXxhveAblCAUfdQe5kjm6sj+nvk6Y=;
 b=Otz1gOsQYqxizIRVwkRZVPr3Gwk7JfNVFmhnVwfGPZ5yj+GeciYL8sNWMu/dVWsUVkMQDkNQBRmVvKymL/hxquBfBqjPtjnyWGiWB9ZVP8Lvb23kGPn0ck0AkhAtcXHkXjiYbBgSbcnMIyD5damRtuyCgA/myyiCVNaVIfwGbSC99mSMOrWItC3GBC2rV6+OYJbNtO3JbIt68EHbHXViAbjS8KR7Czd+AUEpI8D4I9x/9pPxMqKkevTbzxAsVEJ4P0qTPwHB2z6K/CxFRbLiQ3AR7oVispJEZ25EBduM39tsqPYYFZCd3kwNNnWHJ3+eY1gZZ4TlXf8KQOy3PSgkyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fTsrmsbAeezldEsXxhveAblCAUfdQe5kjm6sj+nvk6Y=;
 b=SQNVvdgrVsgsACWx4nZ0W9QRSMJe5wmlOxB3HhQ1Iu8Y3axpTR2pXZTYmPWdK93QFKlnbmMsLNjuG3YJbOcWS8TNr4prGWgW0R4m6h+Xka4hxAgET9L9Hah6sPgdK9zPWdCGodmECleLuGPup7cC234QPpN6Y45yAHVPveP1K8M=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1238.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27; Wed, 23 Dec
 2020 06:36:27 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%8]) with mapi id 15.20.3700.026; Wed, 23 Dec 2020
 06:36:26 +0000
Date: Wed, 23 Dec 2020 07:36:24 +0100
To: usrp-users@lists.ettus.com
User-Agent: K-9 Mail for Android
Message-ID: <1A0C1E24-F805-4627-8830-F3F87525CFCD@ulb.be>
X-Originating-IP: [2a02:1811:371b:2300:34a2:a728:72c1:9f14]
X-ClientProxiedBy: PR0P264CA0267.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::15) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:::1] (2a02:1811:371b:2300:34a2:a728:72c1:9f14) by
 PR0P264CA0267.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3676.30 via Frontend Transport; Wed, 23 Dec 2020 06:36:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c7d71494-e248-496d-26ce-08d8a70d1313
X-MS-TrafficTypeDiagnostic: AS8P190MB1238:
X-Microsoft-Antispam-PRVS: <AS8P190MB1238FCCDA4E9885BAFE119ACF0DE0@AS8P190MB1238.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V87zMBBL+Wprqh+jpCj3BXVYWm8nGUG+u0WcNOJVxtBY+glJEUSYjBM9/IC9WiYC4xs6/Gz/0kBWxqBmT5hK3Nv/FQOplGhGC/YogiVWzquixn6tMYG9KRaACFBAfwjzRhZJM/EaVpH6OC0GzWOvvLLP8/4/yjMjtG7n4qKACTpye5wMRHZdfi6WjoYLJwX0ExD3t9g35HBpjPsgG6RGeT2VZaao+Ki60hsoopQPhco7aHtDG1Gd5KhFKSrL3xGmYGH3UPCQ+3A3hDo36NmDew+27/ZOXc3AkwAzT7Xlj1SqXUkNG6F8e/1kY31Uik+77lJ+fdmW/mc31iB9vPbSNdXRYSa5bPSKknR9CTSUC6g37dbd+4rFJs+DAH/Sm/mYz6swVieBNa2SLSS+DRp4cvEU9VrfF4rQCUzDmEgj+LWke9RjADywN+2Yo5dxg7AyGPHI8XgbzMX3JzZ63FLSnWJgJfnCcxGXY/uXpsKGbd1g1V2BNfBPy5APS1btSt4tX32oYPITAz1giK2+x8GinA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(376002)(366004)(136003)(396003)(346002)(83380400001)(7116003)(2616005)(8936002)(66476007)(66946007)(66556008)(8676002)(2906002)(16526019)(478600001)(52116002)(966005)(5660300002)(3480700007)(6486002)(186003)(86362001)(316002)(36756003)(6916009)(33656002)(786003)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?ZTFKQ0hGNnpwUXY0S01GYTcweDl5Wm4ydFdLME84MjJoSkgrOVRkeG9FMHFX?=
 =?utf-8?B?bjZOYTlWQVRkaVlpVHBHZDAxVGhxOTg3NFY0L1dtd2pPOFpYR1pFclZRSEZR?=
 =?utf-8?B?YmYyM04yeitETXYxQVRoZWp4dUpCSmN2RDN3SG1rVDBvNkZiYmovcTNWNHcr?=
 =?utf-8?B?N2FNeXl0WjI0QXJMbWkrNkV1WkV2YTVVL1ppeThPUXIzQWdZd3orRTFMWEsr?=
 =?utf-8?B?b0U5R01mbWs5bHVKVUhzV1NaSFFmb2Y2TVJTblhQbVdwWitmNE1KSnh4VWlp?=
 =?utf-8?B?S2IyUGprQ3RQYmNORndSMlJNb0E3R3JnSjdmTncyN0s5UWxiSFRKaHQrS2la?=
 =?utf-8?B?QXFYczhvOGU0OGl0VjY4d0VRbWl2K284bEF6KzlodC9ENkM1akZ2NGFTeE5O?=
 =?utf-8?B?bFhYUXFEWmJLajBJTDBLb2VzWERDQWVlYW9jMDI2UVpsWS9OTWhrc2M2QVFI?=
 =?utf-8?B?WmZ1VmNlVmYzWXVyU0V5YkZ2N1hPRWgzVEtYU0wxczZaMGNlUXJ3dnlxanUv?=
 =?utf-8?B?WDlqTUlwOGJtTk5VbCtpaVVjeG5JYUx4OTFYWmRZNWxkd094WXdKc01Tekhm?=
 =?utf-8?B?bXlYa29LV3Q1UEpKVXVHdnYvcktUZ3ZMUDkyL0xxWVBsTlZGUWxhRG9KdWFQ?=
 =?utf-8?B?YTFqd1hHOE85VkdDQ0ZZeU1QdmxOQXAyTTQ4NkVZWW1ndEZSQ0xLR2QzT0dw?=
 =?utf-8?B?MG1hbjNlY2U0T3c2SlZ6aTcxczU1TTgyaDFyOFRrT2t5RWhVL2pucU5Eakcx?=
 =?utf-8?B?Tk1mbjVBejBHU3ZhUCs5dWJ2MmdlREluTzRSS1d6UTlhYWlSN1ZXWUlUNlgz?=
 =?utf-8?B?dlFiYmpENElLZFdoVGs1NUZBaGZXYTJTbU5YTnRCVnVLaEd3YjFNbmg4STR4?=
 =?utf-8?B?RVRCTE51UzFkbTA1NE1DOGE5VUVTQ1JJRTZJNUIvRGY4ZnRNWE1NaFRDMXh6?=
 =?utf-8?B?QXVXZmNXYzNva0lEYkM3ZW4vcExycjlQcmZramNaTkpPOHQyZTdPeVBsRnFB?=
 =?utf-8?B?QTU0SXVTTi8raVJSTjVjdE5oN1ZwNC9qOHZ4MUhOaDdoMEw5MWZySHJlUHFk?=
 =?utf-8?B?N3hodEZPTmJNR2J3MGU5TzhMMmZFMHh4UnMxS2tXd1JFeW82c0dIcUNCVnVu?=
 =?utf-8?B?RGtPaWt5TlBzaTBSNllYS2RrcWZRSGNvZE80cXZDZzRLWGpKZENXZURrbXdQ?=
 =?utf-8?B?L1JjYnplOUJuempmTXgzb29xNitRQ09TQWQ3aWhQMy9XeHpoWm9HaWdhRU0r?=
 =?utf-8?B?U0hhamdLREhZaCt6QjhEQ0d3WWxVYk1BMlptNzJWMVFSS0VDVXhMVXcvRDZK?=
 =?utf-8?B?c2ZuOWtOL3NIVWF0TUNWaVFIaSthTDdpWlRHZ0hDTkk4a1NiUU45ZjNrbkJP?=
 =?utf-8?B?eFlxOGtCU0NiUnlBVzBBZUF1L3o3c2sySzBMak9Db1NvSDFPd21WL3g2cFU5?=
 =?utf-8?Q?P862Qdqv?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2020 06:36:26.4283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d71494-e248-496d-26ce-08d8a70d1313
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: faNNJMPlbBrRIO0rK90mhjemsUMwscRUwB6jw9FGYrGol6npUEdMPjixUsytlbEMEcO51lbr7h5UZ+kKZsN3pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1238
Subject: [USRP-users] RFNoC Specification Questions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?ISO-8859-1?Q?C=E9dric_Hannotier?= <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

RGVhciBhbGwsCgpJIGFtIHJlYWRpbmcgdGhlIFJGTm9DIFNwZWNpZmljYXRpb24gUERGICh2ZXJz
aW9uIDAuNyksCmFuZCBJIGhhdmUgc2V2ZXJhbCBxdWVzdGlvbnMuIEFueSBoZWxwIGlzIGFwcHJl
Y2lhdGVkLgoKIDEuIEluIEFYSS1TdHJlYW0gRGF0YSAoMi4zLjMuMyksIGF4aXNfZGF0YV9jbGsg
aXMgcHJvdmlkZWQuCkhvd2V2ZXIsIHNvbWUgYmxvY2tzIHVzZSBjZV9jbGsgaW5zdGVhZC4gV2h5
PwpJbiBbMV0gaXQgaXMgc3RhdGVkOgoiTWFueSBvdGhlciBibG9ja3MgcmVxdWlyZSB0aGUgY2Ug
KENvbXB1dGUgRW5naW5lKSBjbG9jaywKd2hpY2ggaXMgdXNlZCBmb3IgdGhlIGJsb2NrJ3MgaW50
ZXJuYWwgRFNQIi4KSG93ZXZlciwgSSBjYW5ub3Qgc2VlIGFueSAiaW50ZXJuYWwgRFNQIiBpbiBy
Zm5vY19rZWVwX29uZV9pbl9uLnYuCkluIHdoaWNoIGNhc2Ugc2hvdWxkIEkgcHJlZmVyIGNlX2Ns
az8KCiAyLiBJbiBBWEktU3RyZWFtIERhdGEgKDIuMy4zLjMpLCBJIGhhdmUgbm8gY29udHJvbCBv
dmVyIENIRFIgaGVhZGVyLgpXaGF0IGhhcHBlbnMgd2hlbiB0aGUgYmxvY2sgZHJvcCBzYW1wbGVz
IChlLmcuIGtlZXBfb25lX2luX24udik/CklzIHRoZSBOb0MgU2hlbGwgdXBkYXRpbmcgaGVhZGVy
IGZpZWxkIGF1dG9tYXRpY2FsbHkgKGVnLiBsZW5ndGggZmllbGQpPwogMmJpcy4gV2hhdCBoYXBw
ZW5kcyBpZiBJIGRyb3AgYWxsIHNhbXBsZXMgb2YgYSBwYWNrZXQ/CgogMy5JbiByZm5vY19rZWVw
X29uZV9pbl9uLnYsIGl0IHNlZW1zIHRoYXQgaXQgZHJvcHMgdGhlIHRpbWVzdGFtcCBpZgp0aGUg
c2FtcGxlIHRvIGtlZXAgaXMgbm90IHRoZSBmaXJzdCBzYW1wbGUgaW4gdGhlIHBhY2tldC4KSXMg
dGhlIHRpbWVzdGFtcCByZWNvbXB1dGVkIGFmdGVyd2FyZHM/CklmIG5vdCwgaG93IGNvdWxkIEkg
Y29tcHV0ZSB0aGUgdGltZXN0YW1wIGluc3RlYWQgb2YgZHJvcHBpbmcgaXQ/CgogNC4gSW4gTm9D
IFNoZWxsIEdlbmVyYXRpb24gT3B0aW9ucyAoMi4zLjMuNCksCnRoZXJlIGFyZSBzb21lIGZpZm8g
cGFyYW1ldGVycyAoZS5nLiBpbmZvX2ZpZm9fZGVwdGgpLgpXaGF0IGFyZSB0aGVpciBwdXJwb3Nl
cz8KSG93IHNob3VsZCBJIGNob29zZSBhIGRlcHRoIHZhbHVlPwoKIDUuIEluIEFYSS1TdHJlYW0g
UGF5bG9hZCBDb250ZXh0ICgyLjMuMy4yKSwgaXQgaXMgc3RhdGVkOgoiTklQQzogVGhlIG51bWJl
ciBvZiBpdGVtcyBkZWxpdmVyZWQgcGVyIGN5Y2xlLgpOSVBDIG11c3QgMSBvciBhIGxhcmdlciBw
b3dlciBvZiAyLCBzdWNoIHRoYXQgSVRFTV9XICogTklQQyA9IENIRFJfVy4iCkRvZXMgaXQgYWxz
byBhcHBseSBmb3IgQVhJLVN0cmVhbSBEYXRhICgyLjMuMy4zKT8KSWYgbm90LCB3aGF0IGlzIHRo
ZSBydWxlIGZvciB0aGF0IERhdGEtUGxhbmUgPwoKSW4gSW5wdXQgRm9ybWF0ICg0LjIpLCB0aGUg
Zm9sbG93aW5nIGtleXMgYXJlIG5vdCBkb2N1bWVudGVkOgogLSBzd19pZmFjZSAobm9jc2NyaXB0
LCBjKyspCiAtIG1kYXRhX3NpZyAofiwgTUQ1IHN1bSkKCiA2LiBJcyB0aGUgbm9jc2NyaXB0IG1l
YW5pbmcgd2UgaGF2ZSB0byByZWx5IG9uIHRoZSBVSEQgQysrIFJGTm9DIEFQSSB0bwppbnRlcmFj
dCB3aXRoIGJsb2NrcyBhbmQgdGhlIGMrKyBtZWFuaW5nIHdlIGltcGxlbWVudCBhIGN1c3RvbSBD
KysgQVBJPwoKIDcuIFdoYXQgaXMgbWRhdGFfc2lnPwoKIDguIEtleXMgInJlZ2lzdGVycyIgYW5k
ICJwcm9wZXJ0aWVzIiBzZWVtIHVudXNlZCwgc2hvdWxkIEkgdXNlIHRoZW0/CgogOS4gSW4gRmln
dXJlIDE2ICg0LjIpLCBJIHdhcyB1bmFibGUgdG8gZmluZCBob3cgdG8gdXNlIFJGTm9DIE1vZFRv
b2wKd2l0aCBhIFlBTUwgZmlsZS4gSXMgaXQgbm90IGltcGxlbWVudGVkIHlldD8KClsxXSBodHRw
czovL2tiLmV0dHVzLmNvbS9HZXR0aW5nX1N0YXJ0ZWRfd2l0aF9SRk5vQ19pbl9VSERfNC4wI1Vu
ZGVyc3RhbmRpbmdfdGhlX1JGTm9DX0ltYWdlX1lBTUxfRmlsZQoKS2luZCByZWdhcmRzCgpDw6lk
cmljIEhhbm5vdGllcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tCg==
