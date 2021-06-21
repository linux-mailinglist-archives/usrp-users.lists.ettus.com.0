Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4E43AEABC
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 16:05:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A50E5383DD3
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 10:05:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="p8s6Zcev";
	dkim-atps=neutral
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10olkn2076.outbound.protection.outlook.com [40.92.42.76])
	by mm2.emwd.com (Postfix) with ESMTPS id 335BF383C62
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 10:04:05 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RfTaE6E89RD+mvrj8NKejWXpxpn8TC58ELNKIXccuU+cMreSFGDdx+SPrlaDxqFCBP4LamTgTwU/6i3UAzJAaTuIkwShl+MR/FgGHe4b1Ej4qzWanRuVqlkmPB7J1jjGbsdkwX31SjaL+5a34lHRzNz9wugP4eYamB3U827i2GXUGaRGxV4L0hKYwRGHGkkFzcCaZTHUarK8NTKreNP1z+h12lZx2eQwi2wrd6TRkX+qcevI7Qqx5C9lULOvcONRkEq7uyb666pzRjudSasJYwHnG7fF0GkWI2EItoX1OMX9cLpgMD1YKizCbelPvGF5h0cUGKcGZ8R++lr0ECrG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ySJH7Zs1ljAHCw/ijQ08nYYkqFNbhCUW43/+m2TQkRM=;
 b=YzJPb5n/1jlLY28BCbc+Xsvh7PqPVuvb7gJhkE2DR+F9ZeR/pTe15FYrQQqnFNIK31aND+WkA8avaje891ym910comSmjn3Icd3ebrbcECwNEUwF97PiPf9bcBRPHv4cOG1R28OHBC/xSKN6U4BvYeq/f6ucwVk2ynpUaCMwe58ytN/gnoJ9S8kyFKia0+JHjZchAXBGaGsc0zTkHLpVpbn0Y3dqed/GdzswZDGuaDnR+0ZiiKJuEtgDOKpAn3EXoWANctjMZ+ew8416HOeRZYJvY7KD5+45WH9nulQzay8h7NEdKsVQPe0ePQjuZGMJ9d6i1f06SdFqcJsFChFlNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ySJH7Zs1ljAHCw/ijQ08nYYkqFNbhCUW43/+m2TQkRM=;
 b=p8s6ZcevgccwdNpXsn8YyiMg2XlpWuto/7PGhkOEABAlKdw4S/RvbazmLVcwDV5vc4d68ytbaxSu7ieGk4weV5/vlwmzo9416lp9MrfUyy3JXYPLyOodQ3FZV0Us77nSxUM+bRgAJrdDkjEOO0j7BxSuXznX+KMlRImm9o5MkKu9SQjSarUY+3YC3xD2BXIImJYhZWFVewVIDJJWWkg0shf8QYQEnoU+EiM96AyyvJrlr6n2RBtHMTy5SROjm0qKLm9x3fglHNfibb+P+surAdrjrs/ZnN23uiDd2QUF0+34z5AQQ5uZZT8Atlvt91MsGo5a03XrN7DGrp8vk2KXEg==
Received: from DM6NAM10FT055.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e86::50) by
 DM6NAM10HT048.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e86::295)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Mon, 21 Jun
 2021 14:04:04 +0000
Received: from DM6PR19MB4122.namprd19.prod.outlook.com
 (2a01:111:e400:7e86::43) by DM6NAM10FT055.mail.protection.outlook.com
 (2a01:111:e400:7e86::443) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21 via Frontend
 Transport; Mon, 21 Jun 2021 14:04:04 +0000
Received: from DM6PR19MB4122.namprd19.prod.outlook.com
 ([fe80::21c2:895c:3f66:c540]) by DM6PR19MB4122.namprd19.prod.outlook.com
 ([fe80::21c2:895c:3f66:c540%5]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 14:04:00 +0000
From: Jeff Clintoon <jeffc10504@hotmail.com>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] RFNoC custom image build errors
Thread-Index: AQHXY5+q9cMehpArh06BX/xTqx3J3KsYugGAgAXJ8ac=
Date: Mon, 21 Jun 2021 14:04:00 +0000
Message-ID: 
 <DM6PR19MB4122868C9A7FDAD75279E5AD930A9@DM6PR19MB4122.namprd19.prod.outlook.com>
References: 
 <DM6PR19MB412246ABCFAEE641D017D58A930E9@DM6PR19MB4122.namprd19.prod.outlook.com>,<CAFche=hNXcQwAXvLkQ4-U9LrC=fJA7_Th3KCFj0b=XfRcwewng@mail.gmail.com>
In-Reply-To: 
 <CAFche=hNXcQwAXvLkQ4-U9LrC=fJA7_Th3KCFj0b=XfRcwewng@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:CEE7424CAD51590D19F4B63D29BA90891E28587420A182B4FA30FF1A73B74E5D;UpperCasedChecksum:4823E54F4DA7E9B2513C416C254595B43DA682B402377F3D65F8DAB6361F6AB0;SizeAsReceived:6941;Count:44
x-tmn: [tEIwmbbkn/ek2h2G9ryudPtLMsiV87//]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 67ef5db4-9718-4501-07a3-08d934bd6b6e
x-ms-traffictypediagnostic: DM6NAM10HT048:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Qh6RBWKOZj8X3ixmNsszKhex/R0M4md6V5WROiRXPpjRLoZDlq9Ry8xAMf4bHY7rlnFs7Hsj6ineKjyfk46kI1w6HwQj6W9+qBdgA+7ZgH/SVu5w/Mbty6ALaFNJCyYz5f3WtqLkh3//ghCX3BFHnurSZIJKz+QlLeZzr8teKkjh/w2hZLVvsAV6hI/Zd2khP1DslfXJAj4BlG0kFYjSYFKEwNJQr59Z7og5Ae1P+lkHFUK8FXeT5lJdLswbwLXGdIMUfRiLBXUXd7p7hoCBXydybiSlU9pG+AwihoEBbyfXEmBXB06Vm2M5jupdsLO2nLRrdZ7699JhspnvdzggarobZV7M/qVeLBc4pMRa3u2BzWE09MXwAYC5aqj7SqZh
x-ms-exchange-antispam-messagedata: 
 71q/0odbFLr9Zo9nF+0j0bz1CMqHQY50LSUjs0B/VmJCan3rhSjoKFwQdo6AD3TtUE6EGR5fj0vQXp58GfV612WKJM2ZcCxksOwmmOEy/VdlB9945FYpmBbAWpGQfQ9a9iUZOJFPIQXRI9YYmSaRRw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM10FT055.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ef5db4-9718-4501-07a3-08d934bd6b6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 14:04:00.4556
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT048
Message-ID-Hash: 3BZHII5QTCIYX6OQHJJCCKQMH42RRYBR
X-Message-ID-Hash: 3BZHII5QTCIYX6OQHJJCCKQMH42RRYBR
X-MailFrom: jeffc10504@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom image build errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ARRJ4AYEVHGDKXYFNS4Y3R7Q3LWQPEEB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Wade,

Thanks for the help.  After fixing that port conflict (I missed one copy/paste cleanup) and changing the buffer sizes to 32k from 64k, it built.  Reading more about that parameter, it looks like I could set the buffer size to 0 for all the ports, as I'm not sending any data for transmit.  Perhaps I still need some buffer on ep0 for control traffic?  It's unclear if that's the case.  Now I just need to write the host-side software to get the data.

Thanks,
Jeff
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
