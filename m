Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33847580FD1
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jul 2022 11:24:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03B853809CF
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jul 2022 05:24:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658827488; bh=2sbKgdhhDVNmY84r0oNERMn8pWL9rcF99gh30PzYBLw=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=OdFOdTKzt3ViZksK3tntv51n1kDwCwolwU7egyllx7sr+nYxbI9qrGNbK3VgsXuMv
	 d3TNsSGLdST0K7Y3i7wgZ2xIz7y9JiuFuJud8IXAl/jlAaGdT6WCzeE3HKye9QNG1c
	 6olHVEwEMbqik+ViUOGm9Dgs/qQzdK1qfNw/VLDjiBo2zosKCzYQjPr/c9t1P8Z4aV
	 BNMKMErbTMvaKyGDhXnl7pffMI44wNFhieFJ7gFxF3S+gwqaSNTfB9FYCnAEPxqzcH
	 frFTWnneHQsKoVT0Mto3I5jNH+wbxQ/RYz+UvaK/BF37LHnXhgc99SaeHylcu09xPk
	 TUtzKOJ1YWaZg==
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2113.outbound.protection.outlook.com [40.107.22.113])
	by mm2.emwd.com (Postfix) with ESMTPS id 79875380CB8
	for <usrp-users@lists.ettus.com>; Tue, 26 Jul 2022 05:22:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="klLzV/Ko";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLmrGXghqlgNhk2Rw5DzO5JMEC34xLx0dgxb42JRNBYyJc2JtBd2EYkfRBaNUyPqAYwLrg59spD66oJ7T5dkQzgToaXyRj+Gr9YX40+qTiIRFgrCUEav4zRjD4eaIPhGlqpMTAjoLmhb4SYYDJ+aibmxXc/jkb72bFoKEBA/DSLBUdu9rzbnVDhtr+Bkv7wcD0SH0cbMfu8xbR4joC22TgkUIQ+ZToMsNz6j86t1o/c057XyOW3umkol70zoggwNuzNF6zkaVKU0P7oIMGaOOxnok7Vdg0ayzrEN/hi4LKI1n5fTLMsERVkWZaIk17aPsrXfFxB+otbEyEcn14j/uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xRnw9npC224b6anFPmYm/NXswZtyYyolGVXUSgR4vOE=;
 b=YRpWwVJNxPFo/qHlysl2qP+FYfHrzK3plp6jOB7egE0dPxyD19D7Fw4dU6vGu7EL5E79xoccwF6KoZXv1BnBrrsxLjEb7Rn4iXI4xszNeC65qocDNJ5A3s3ZRA5QIERa+ZSB1AoGmsIsfXUOpi6/hTHT3uquqnmSIfttU4Mq+668O+gC+DH1GIIlrEsRWxG01aaXqFbKy7atnw0fQ5t0+6UPIPImaGCL7Re+Rdl3P68aeWVpPW3ULvTAUnWLFd+IWqiHs/T8bosCMB+sSRA292ukur7QEsZz9ljdk/kaJY1pnRcnCQE/y8Kxk7LpmaV7tPiq//XejdwscBVsJRGBeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xRnw9npC224b6anFPmYm/NXswZtyYyolGVXUSgR4vOE=;
 b=klLzV/KoveK5eTiAea2KzQuaWSs4TNPCBH60XuoGlQs34Uwjf9vDsUCWvaREE8YTLzrfc0C9ti4zLktDxOnGS0IMvVTFAIOXdEIUEVE0Cw+5W9axzzVMZLCskLgggif5lWCNFDAmeTMsUkzI9BMHKs75yvxgD7Ks8f6qj9Hniig=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 DB9P190MB1289.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:22a::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.15; Tue, 26 Jul 2022 09:22:46 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::3d8a:cf3c:ebfb:aa18]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::3d8a:cf3c:ebfb:aa18%7]) with mapi id 15.20.5458.024; Tue, 26 Jul 2022
 09:22:46 +0000
Date: Tue, 26 Jul 2022 11:22:45 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220726092245.yxepcz2hvgdql2fq@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <a03b9660-457b-abfc-ba0f-ebdff7dfe0c8@gmail.com>
 <4lLC3Xgh7VN06w42yJNbMIG7V8zzRzQnIMZwJzrNr0@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <4lLC3Xgh7VN06w42yJNbMIG7V8zzRzQnIMZwJzrNr0@lists.ettus.com>
X-ClientProxiedBy: FR3P281CA0066.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::17) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec0cfce4-33b1-4554-1697-08da6ee866e5
X-MS-TrafficTypeDiagnostic: DB9P190MB1289:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sDC/A882OV/XxOwYSPWwacC/GcfDtzZSDdDAQB69jIJn6M6rR669qrZdNmaOH9Cz3TC6xxV9SI8IRzvvmO4HNOjzTW4CbCeJKO21Vq1idPPiM/2+Af3uGeBY4Z4qEACYAD99AkunMqFjI12QgCBdwFd2D7QsBkw+gcmuxX37dHwXVrG+2UMhEqW8s/+XwQJ0ri3ra9jvxkYhfbSn3Hh++R6N6J+KfNkclS5TI2i9evzyNWOWZSn0NDeqwKnFPfFzl7uTEw6iibGz4SbmHo/ot8xkGcpWuIQkGh/5xU6lOohNIWPE8xYyGztuwP5frJt14vl89KUC2myJTwzJ8E4Onx7koZBJmb/SMGTycEmYX1RA5bzWir0dZ53201RDvVdM62Gj42YpGsN1aHsT5ZNShz8ibsEkrJdvlBij8rGc+ude0nG3h5/HQ3HukOPqG3+ghefu1ufbpL+VX4svwcJfjKikQ7qpjcs3j/wkj9tOgtic//n5x/pwgakY2Z0dFofAKhBsmJS5BoGk3r5lNTpBAxfxJWuox/oFxxHRTtbdKt4ABjbmG1lKXJsbmv1twNVP+giBnGmZXyFZN7+R0eE2eaxSQCbuFiBDMOEyn4L3uAWCEFpSyu9ue+usrKKK3WNc6ncEf1M0vjXx+ZS1Q4PpnSVlJTLNCJTloFaaTwCnwHrnMkMZbsMHqVVrkf3JhL99f8VdsoIzifJehcTc/jOrUhue4/Yhr5/ukisQY1bhPYcXwK+DTkbbsuV0+HxTo/l6noMWV5UGyc81LEPH8Gpq3W7jTPIaeKC38cqBFsXsL/A=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(376002)(136003)(346002)(366004)(396003)(39860400002)(66946007)(4744005)(8676002)(316002)(66476007)(786003)(1076003)(38350700002)(6916009)(8936002)(2906002)(5660300002)(26005)(86362001)(41300700001)(53546011)(66556008)(6486002)(33716001)(38100700002)(6506007)(186003)(6512007)(478600001)(9686003)(41320700001)(52116002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RUZYNzgvR2l1VGFsbXFBdXc4cmFiNFJabURIS1ZwSHAwaEY1Q09yaHIvenRr?=
 =?utf-8?B?clltVHNkYUkyaFJ0aUtHV09IMFpoUXZmZGU2c2RkQ3VpY05QTVpibmQxZHRP?=
 =?utf-8?B?UzNkQ1B1ajBjUXRDSDdVR1NGcHZyNUQvRjk4OENmSjV5WUJHMUhISWNnUmhH?=
 =?utf-8?B?QU5OYlgxU1I1SGNBdzl2UTBQVk1uU3Z3WW13LzduSjJtMWd2RGVtR1JRdzky?=
 =?utf-8?B?N01IVCsvQnRQUVhkUjJtVU12SHpLTXdIWWdUeDAyd1Ywc0RybnFyNW1JY1pC?=
 =?utf-8?B?Sm5kVnZPOXdGSmtCK1N3Q2JHN0xKdFo3cmwwZzU1RCtLdXRXTU1ZS2t4UzBS?=
 =?utf-8?B?aEhnR1hXS3F2cnBxa2IvektIT0w5dEx6QS9HUkdpMit2RTdCZWJPdUVBWUZx?=
 =?utf-8?B?d0ZTUzdFSU9yaEpiVHo0NTZ5cHNhWFhZSVRTcmNWRExuZlNvRDdnVlNvZ2Ju?=
 =?utf-8?B?c2pyeWtxWWhkazZERjVXcUt4anZVcVJOMC9iWFNnbVZDL2VZNkIrUlJZMGV4?=
 =?utf-8?B?VkI3N2JDbllSRVRLb3plMEg5Y3FNYWk3TDdHT1d0U3ZXT0I4QWZTaTdiTTdv?=
 =?utf-8?B?SERBRmNkVkdiMXI1N3Nkc29zempKM2d0dHgvdEc2eXA0dWxFcjVnUEpBOHRr?=
 =?utf-8?B?anRyK1FYN0IxNWFHM0JlcWJ1UEJFSWViLzFEbUJSZHdxSmpBOUg4VmJRTzFH?=
 =?utf-8?B?Zm1LMWZyNGVxdVZpTGt4anNLRGhuZU1CVWp4R0Y1a0lML292NG5LWlZuekdv?=
 =?utf-8?B?Zm1FTlo4U2lSTnhKUmJFN1NETTd2K2Fpc25RU053SXF1bFlBdGFJV0hPZlFI?=
 =?utf-8?B?Vm02SmxrU015RHFEelRrV3U3WlF1eEFkNm9lcTFMWUp4Y2ZkU25ZQ21sNFdi?=
 =?utf-8?B?YkozZ1dSbkZDQ01IeEp2YUpXSDQ3QkJBdWwwSUphWnhSYVpWT1RrdWg0Uk5y?=
 =?utf-8?B?ZXVuQkVqQS9SQjBrdWhrNW8zLzFYdEhDd29SMXQ5cWl2K0RwenBiRkJWL2xj?=
 =?utf-8?B?cG8vL0VQK1h4UWNJQW1vRi9lODFIbWloRXVWRWVrbDVVcUtnYWtxdWw4NlBN?=
 =?utf-8?B?UWlXblNLM1htUTloTDcxY0N2TXZEcTROLzFBUGw1ZGJ1dkk4ZkVudjhiSlRC?=
 =?utf-8?B?Y3djdzhSSFBqLy9LTVNxYkFUM3RUenRZWVBoNEIybzY3bXkvV1I0cnFLZ2Vh?=
 =?utf-8?B?Y2c0QkY4TVNYOFBYa1hhRStMbHJoV3ZzQWN2WHRGSGdTWFU5WDllL0ZFQkZ6?=
 =?utf-8?B?NUF3NGJFVCs1alBwaldXeVFYbXpvQlpaanI2REdMQTBhSndWRGFVMFFYYWFF?=
 =?utf-8?B?Wm5uZ3FhYUlKUHcxRnltRG4raVQ0bEM2MmJ1YTZXUWZjU05oUDVudWVURDJY?=
 =?utf-8?B?SDBKQ0lrSXdJWUVlQzFnZmp5R20vNWpYcUthOEI4OFVIbFQ2Z1VTUWErRW1y?=
 =?utf-8?B?QmpJRFBJYkc3VFRKcmt6c1h1RHJMdnNkQklMaElRV0FEaG4veWhaVis3VTlw?=
 =?utf-8?B?dHdKWDc0VmRtc05rbG92dVFWWnZWYVdzV0luM3J5R2hyVmp1NkdPSmt2ZDNa?=
 =?utf-8?B?M2hCL2ZMUWdnWWJsdE51ek9BdUoxTUllRnA2SFovK25VUyt4T0wxR1NEbEhF?=
 =?utf-8?B?Qy80b2hMY0JVZitiWG9ySjlBSjJDQUZDbWd1aFhKU2NZbzBmVEdHSEdvczJP?=
 =?utf-8?B?M2tzWDA0cmhCMGJjK0V6S2l5ZUN1N3VhVUprbWlyTGJVWnltN3piRldiNUxJ?=
 =?utf-8?B?VmxnaXo3Z2VDZmI2akJpZGt0QXVUN2N5Nk5qNTVvdVd1azhoQVJxajNXdDYx?=
 =?utf-8?B?YlN6QVhYbnJyd0Y1bUxCdS9mKzFGODFQNFBEYTdJZVJob1hkclcveU5nNEFX?=
 =?utf-8?B?NTVMdmIrU2V6Ty84NFoyckhJaHozaENyOXhta1gyV1pYSnpPakZKMEY1N1Qy?=
 =?utf-8?B?UWk1cDJvZHNoa3pvNkFkSnZib3JCa2liSVNlSUtadFp0Q0RSekMwVHNIZGlt?=
 =?utf-8?B?b1lMVlNYcWVjT05uWndTemVFL00zWDZ6dzFMZlBEdnhZblVXbWMwVk5RYXlh?=
 =?utf-8?B?R3oxUmpRdXdsYzkyeHBlaXZMTDN6b2cwUk9NVEdYVG9rT2M4a3RPT1B0Y0dk?=
 =?utf-8?Q?urN9fdZRi0p1MsCjC8smvLZZL?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0cfce4-33b1-4554-1697-08da6ee866e5
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 09:22:46.5665
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /RABqFZxH+4pslbdOwzif1OB9Y5FwU7cqbnb+0Cbb9v6nMS8+7ohC2mHNhUFLYXt0NnNtAhFj+JmX3YNaYtoMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P190MB1289
Message-ID-Hash: BP3CK763AHUA4FMWQ63DQNZQDO36DTXD
X-Message-ID-Hash: BP3CK763AHUA4FMWQ63DQNZQDO36DTXD
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting low number of samples (USRP N310)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BP3CK763AHUA4FMWQ63DQNZQDO36DTXD/>
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

SGkgc2t5dW5nLA0KDQpPbiAyMDIyLTA3LTI1IDIwOjEzICswMDAwLCBza3l1bmctLS0gdmlhIFVT
UlAtdXNlcnMgd3JvdGU6DQo+IEkgZGlkIHJ1biB0aGUg4oCccnhfc2FtcGxlX3RvX2ZpbGXigJ0g
ZXhhbXBsZSBidXQgZGlkIG5vdCBnZXQgYW55IHRpbWVvdXQgZXJyb3IuDQo+IA0KPiBUaGUgZm9s
bG93aW5nIGlzIHRoZSBwYXJ0IG9mIG91dHB1dCBJIGdldCB3aGVuIEkgcnVuIHRoZSBPQUkgVUU6
DQpbLi4uXSANCj4gXFtIV1xdICAgUkYgYm9hcmQgbWF4IHBhY2tldCBzaXplIDM2NCwgc2l6ZSBm
b3IgMTAwwrVzIGppdHRlciA0NjA4DQoNCkkgbmV2ZXIgd29ya2VkIHdpdGggTjMxMCBub3IgT0FJ
IFVFLA0KYnV0IDM2NCBzcHAgc2VlbXMgcXVpdGUgc21hbGwuDQpDYW4gdGhpcyBiZSB0aGUgcmVh
c29uIGZvciB0aGUgVElNRU9VVC9PVkVSRkxPVz8NCldoYXQgaXMgeW91ciBOSUMgTVRVPw0KDQpS
ZWdhcmRzDQotLSANCg0KQ8OpZHJpYyBIYW5ub3RpZXIKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
