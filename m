Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA90274264
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 14:51:09 +0200 (CEST)
Received: from [::1] (port=54476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKhlD-0004jW-AG; Tue, 22 Sep 2020 08:51:07 -0400
Received: from mail-oln040092066029.outbound.protection.outlook.com
 ([40.92.66.29]:4673 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <pliago@hotmail.com>) id 1kKhl9-0004cg-W4
 for usrp-users@lists.ettus.com; Tue, 22 Sep 2020 08:51:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5ChVLxJ/J81r6MMlFl8mWnnYMOAnBfm6WTjcKCIQ+rIHtYQcf2/pcgb4wkYA4eFnZNpKkcRAVuOkBSwlEYtHeqZKxY3i6M+Vr+LVtcEDMi0WabWWPqIxYbtmf59Wq6eFXtZ+t0i/KnyBVwtlSRZcBXgO09cjB4KvTtPFPZwmhvNJ+I0VAVUKiXJKUcOoiKu0k+rLDsj5+46ktbYOTXpLnZBcDbizzO8asOtvdCFmu5Rxnb6lu2yhn6s3G592p5hQe0xZEZnU2I3HPZSbCbtkY8NJ2741kTmeRukvPaJh7ykTYviI3p2hq6/xXTZdbH9o/5V+USb3uUIOXuj9y/GVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dvGB7h7qCEJoZ3yc7suOZkIEgLpLW2tzhH4WoSP0g0s=;
 b=cnRFT+xL2nJLurB2JUwj/Tee7gje9VwBbAH9EHOG1QU20F4fiNIHSlEbHrR4wyiJ8taiAL946arnj6o4ZsW8VJ9MRMXcs9loxlQCOLLReYUzkUdCl7D4iPjjyjIOP44txurYLmyi9KWnilkCzKuCFFkjlo32HljITR2zolbvGnk98AQI+O+EfF8ACOzqbRsn2Sq37dwrHqBRAAojZp2dEwdUjJ7Z8vF+HyI6GJogoFzvfovqjAvxvtuAMi7VxWV8f+lUqrlsXxjaeeD55aB/saJTweq6ETN8PUiouG7q/ZvSWiG6O/9ve1KitFK2n191KlrMlhr0KfacqtLe9mCAXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dvGB7h7qCEJoZ3yc7suOZkIEgLpLW2tzhH4WoSP0g0s=;
 b=pz0TINi5n9V7iJ3XhpKUxR1rHp9dhJFmX+Im2dkH8vY/MZUkk+b0f9komFnqm2tl2WlEdXVmuet9q2d2fivXRIZw6h/DCD/PDSiljnhEmJtCToO8YPlINYrCMlpt63zi4QyWHmaIlSRRkkDVaC8WRkUGtMHEdvLRzpSDHxtsiXsxvIDz/XOubNkuPL/s6OLMO74/47bn/mE5DIxOuFLxbXXwI6mnyjgBS9oIeEUbdbFkeDAZP3DopKlUnxid2s4n5ajsCs7y1iqcmdLt2oO+3J5r5RXyPvkfiRARGuNMD2cOGBCiq+bPyVx5JeMKTiCcmD2EpYSwMBih1aUtvoi/vA==
Received: from VE1EUR01FT038.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e19::49) by
 VE1EUR01HT141.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e19::282)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Tue, 22 Sep
 2020 12:50:22 +0000
Received: from VI1P195MB0285.EURP195.PROD.OUTLOOK.COM (2a01:111:e400:7e19::4e)
 by VE1EUR01FT038.mail.protection.outlook.com
 (2a01:111:e400:7e19::274) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15 via Frontend
 Transport; Tue, 22 Sep 2020 12:50:22 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:DC4F698F3AA13946D8839F72A52C1C39CA25E93908994A154C066E23ED863761;
 UpperCasedChecksum:C922B300E2F687E68E2AE48FFB40B20D289D18B99DB818FD87D4204C904C191B;
 SizeAsReceived:8532; Count:46
Received: from VI1P195MB0285.EURP195.PROD.OUTLOOK.COM
 ([fe80::ccb4:891a:23fe:868c]) by VI1P195MB0285.EURP195.PROD.OUTLOOK.COM
 ([fe80::ccb4:891a:23fe:868c%7]) with mapi id 15.20.3391.027; Tue, 22 Sep 2020
 12:50:22 +0000
To: usrp-users@lists.ettus.com
Message-ID: <VI1P195MB0285728BBD364C5BCFB1C5E8D33B0@VI1P195MB0285.EURP195.PROD.OUTLOOK.COM>
Date: Tue, 22 Sep 2020 15:50:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
Content-Language: en-GB
X-ClientProxiedBy: ZRAP278CA0010.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::20) To VI1P195MB0285.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:67::30)
X-Microsoft-Original-Message-ID: <dab5ea92-bb98-ea71-1442-f1505d17d1d6@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.230] (77.49.0.120) by
 ZRAP278CA0010.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:10::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.17 via Frontend Transport; Tue, 22 Sep 2020 12:50:20 +0000
X-Microsoft-Original-Message-ID: <dab5ea92-bb98-ea71-1442-f1505d17d1d6@hotmail.com>
X-TMN: [JQBbgWXztJe6qe01RgKDIzKvudA7LEIj]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 8ff9caa9-939c-470e-4d25-08d85ef610a5
X-MS-TrafficTypeDiagnostic: VE1EUR01HT141:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Txgc1/wvVWNfn4Hi0dfWUMUXPXqaL91/KyoOD/JlKIc2FMm6DlMuQcWAPA02xLKLIrSh3QSrM3GTOAJiO67EYS11z9qpuXnSStdfzWKxZOWcwgxCQybSWhOWvE66ZjoZdyCcJMizN7qhuF02emxW6ndJoBsxffFntySmQ3lzaHKbVfqgK/MKr8kUiyuygxtOEWF3jDU8JiSa/M8c0Vonaw==
X-MS-Exchange-AntiSpam-MessageData: 4ktYjAlXMT4pydPZBQDmGH3bcwYTPTyFhcrwHn8KPnceMPaYS+d2TIaeCkqAAyXzsUpZ48TGzoVVAt3jineykpWbXhGIWIU08JwI/vtY4ouW/zAhoAQXOd53SJf1K3poHK7+0L8vQ/bl+/xBl7ZFbA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff9caa9-939c-470e-4d25-08d85ef610a5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2020 12:50:22.2490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR01FT038.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT141
Subject: [USRP-users] Decision between N320 or N321
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
From: Dimitris Pliatsios via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dimitris Pliatsios <pliago@hotmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

SGVsbG8gYWxsLAoKSSBhbSBsb29raW5nIHRvIHB1cmNoYXNlIDIgVVNSUHMgZm9yIHJlc2VhcmNo
IHB1cnBvc2VzICg1RywgYmVhbWZvcm1pbmcsIArOnM6ZzpzOnywgZXRjLikgYW5kIEkgYW0gYmV0
d2VlbiB0aGUgTjMyMSBhbmQgTjMyMCBtb2RlbC4gVGhlIG1haW4gCmRpZmZlcmVuY2UgaXMgdGhl
IExPIHBvcnRzLgoKQXMgbXkgcHJldmlvdXMgZXhwZXJpZW5jZSB3aXRoIFVTUlBzIHdhcyBhIEIy
MTAgbW9kZWwsIEkgZG9uJ3Qga25vdyAKd2hldGhlciB0aGUgTE8gcG9ydHMgYXJlIG5lZWRlZCBv
ciBub3QuCgoxKSBDYW4gdGhlc2UgcG9ydHMgYmUgdXNlZCBhcyB0aGUgb3RoZXIgUlgvVFggUkYg
cG9ydHMsIGluIG9yZGVyIHRvIApjb25uZWN0IG1vcmUgYW50ZW5uYXMgKGUuZy4sIE1JTU8pPwoK
MikgQ2FuIHlvdSBwbGVhc2UgcHJvdmlkZSBtZSBleGFtcGxlcyBvZiBMTyB1c2FnZSBvciBhbnkg
cmVsZXZhbnQgCndpa2kvdHV0b3JpYWwvZ3VpZGU/CgpUaGFuayB5b3UgdmVyeSBtdWNoLgoKQmVz
dCByZWdhcmRzLApEaW1pdHJpcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJz
X2xpc3RzLmV0dHVzLmNvbQo=
