Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 373AA123554
	for <lists+usrp-users@lfdr.de>; Tue, 17 Dec 2019 20:00:28 +0100 (CET)
Received: from [::1] (port=52568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihI4y-0006lq-1J; Tue, 17 Dec 2019 14:00:20 -0500
Received: from mail-oln040092253044.outbound.protection.outlook.com
 ([40.92.253.44]:63232 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <snehasish.cse@live.com>)
 id 1ihI4u-0006V6-Ej
 for usrp-users@lists.ettus.com; Tue, 17 Dec 2019 14:00:16 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R09mvEhWQLSAbZ8rll7YdZSUm8jnKwAHMaduXDF9ECv2zw2N5knNZWBX+jKfJp/SrvXKZVcjDdzdKPegFQew+hvXXnn6mU9Fg3pNG3Y5d165r0UamevqpICfim21frvS21HBx9ZjD0tPyANvpEIqMmrL9naVBh8ZGLIuNPub8xQnKbRGRILT9LDuM0DjJJBQNPOfOdZofnBXCYmSibH6SZs5HrMPO2rOweILuaWIPEegiGdkhr7KoDKtIxrXOjG+BohZj1ZP+2WxDJhHbkw9zCmMkW43cJBb1RrSTm55/YG4bQLJ77TQqo91cWy4Phd+LOJTorUXnSBmWC6LBLglhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ENghDYnNwZtvF2yl1tfGIQ7xU/CipuT7ZY7Xkv+N0gg=;
 b=KQFRX60eFsYAJVB1Gd8MXvYrZgIdyzPluzMK0bmeFvUcP+5fGYpB6b/efADvM8pTUwWzNYz+2QhEokSDN8ji3hXnAxKMSS9WlNsTrCghFP7c2fsNAbMGBrrFam0lHsU8KhbnN/yzYCT7g27P+mkzq+ypty37AxqTjNd1LADZooV3EhDouv+tslPGyvocatDEGtAkMvB+LtvwF9r32nRUKe8tZicYkQhsIFgxk7DxtpxyE38ehyJzvEXogAstZWPjipKFeYcCsPfuenf0XmBBQTBfo6gtU+sqvqnHXiCDFdsmSkndy0YNGmKz3MzUgWU6dr4gUz2/65i0VPLZODZkTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ENghDYnNwZtvF2yl1tfGIQ7xU/CipuT7ZY7Xkv+N0gg=;
 b=QvdZisAwt4cB80FZemqB+wOR7GPOj8Vt0ex0jko5NUyVe2C6dROwWNZhfNo1ToPu6yJu0yu33NSia8s39PDhOXYHgLjwEIpvQjZNi+8+wA8ryRgwfaaWlox/llYVp1JcrZ8tV3WwQLYoVv3MdAeXBS6rFj/hA5yjeHBqz0K7x14NcRmFu4qzlLdn9y4yIgc8CoRWoQ862+pYGyg5x17w8tt/VBT/DYUDJXjZ9IE98Dmy98kyEC4ANedZWJS68KB1VffzPymPArGIajNOu/ANkWKfjUos8RfrMEwdMhrKviXCEMHLasOQnbsk4G/TQsLZO2zXny7XcvNgXfR1EQ199Q==
Received: from SG2APC01FT033.eop-APC01.prod.protection.outlook.com
 (10.152.250.59) by SG2APC01HT053.eop-APC01.prod.protection.outlook.com
 (10.152.251.119) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15; Tue, 17 Dec
 2019 18:59:33 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM (10.152.250.51) by
 SG2APC01FT033.mail.protection.outlook.com (10.152.250.119) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15 via Frontend Transport; Tue, 17 Dec 2019 18:59:33 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921]) by BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921%7]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 18:59:33 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Api to call rfnoc split stream
Thread-Index: AQHVtQwddBT+QtlTJUCTEkuACuqnDw==
Date: Tue, 17 Dec 2019 18:59:32 +0000
Message-ID: <BMXPR01MB39447CA3F4BA58C9B9D1B09988500@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:A4F5DB579BF5C16746290548568E223ED82361316ABBE0A2874EE4B453FDDF16;
 UpperCasedChecksum:0863F41E2C8F8CC726BFEE57BACFF26A36786C9516E5CFAA36FF305A8A1AFB69;
 SizeAsReceived:6727; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [s58Q5MXdSos4Mus0prAOxg4JNg3ddz3y]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 4d15a778-ad56-4f9d-10b9-08d7832340ed
x-ms-traffictypediagnostic: SG2APC01HT053:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: utqUJlb6iRgHgi1Huwx4P5kCfod39czl5XX+2MFlHq/mqKDfYQZ33AGP7wmb3CxkfnWO49bQ3t6j35z7ajuSaUb5TlP57SvIrISl1fQ7kfipM3Pg7968q4Hjfsm6M4UwVZiNJCYjKOMEJx68FVZeKrtv8louj3CrhAp2lGyrN4ObhL4HMFyVYsZjGrkafU40
x-ms-exchange-transport-forked: True
Content-ID: <97813B63B247B84D81295DE628C021EC@sct-15-20-2387-20-msonline-outlook-56dde.templateTenant>
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d15a778-ad56-4f9d-10b9-08d7832340ed
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 18:59:32.2333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT053
Subject: [USRP-users] Api to call rfnoc split stream
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hello

Please let me know ho do we use the rfnoc split stream from C++ I am not able to find the concerned header file.

Regards
Snehasish
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
