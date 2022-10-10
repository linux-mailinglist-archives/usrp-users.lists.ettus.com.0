Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 552945F9D03
	for <lists+usrp-users@lfdr.de>; Mon, 10 Oct 2022 12:43:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5406383EF5
	for <lists+usrp-users@lfdr.de>; Mon, 10 Oct 2022 06:43:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665398604; bh=w1fOe5pQWaTI9/fhzqIbd6N9D8zGkxuli5/sHlYkD/c=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ppdbi507suUxmfAAgMB8O4tOnOHvKnfbi4Y3lrdGok46aCO9M29mgFlM/tbT1khxG
	 cxSNFkrTc65yCNHgLyD3jPRizAyNP8ehSMs3JFniqvl2y96l2nlWqbMzKJ4FVlAPsK
	 K7cYCSHaqf2cXfNGMWAmhInP7xxB3D9vffWuH3Yx0qVxGSej0qeOKyf3iqB659qdx4
	 k8IzPuBs+pWVyVQiAt4N1gNEmAtifyQn7e2yTdeFsIvGudzXbJMl0CmGr6feS9mtkw
	 +OkfGXX7eT4CaTdHift694IntXvKJRWXeZ4rBNJaZSWM2Z6W13s7b+rQ5w4TYJUYLU
	 1xjKQWk9qMGqg==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60049.outbound.protection.outlook.com [40.107.6.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C4043383AFB
	for <usrp-users@lists.ettus.com>; Mon, 10 Oct 2022 06:41:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=xenint.com header.i=@xenint.com header.b="VrBSrCfu";
	dkim=pass (1024-bit key) header.d=xenint.com header.i=@xenint.com header.b="VrBSrCfu";
	dkim-atps=neutral
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=CedfFVoIS5mv/aVcRea78+SqlL/doLEaHEHT/iOl59RyaRH6H1W/YPhRU1TwuL1yDyRcm/BNsC8W7r1KBtxvImXT4350oyKukVC9X9lGDOUw+65QkUH4G9j02liPkNMb+3/bA6oD+7EAXgBoqesFhrV2xS+s1KS3oUFdHqSfcHBYOX8PC4XJiNyPGXcG3DoRxgTWAHQg2J6ALp3jMJuAzzPFh16NyA9lUYmlI/Z0AnGAN9D6+YTH5j8vZLuSAjmNd56kgxi4mDO58Ouc8bEzN7cMh6BZsMtUAvZVgb9ZS3LFk6eG5jsu8QRQ9LwtiZFWd1I/Sgkh16QZxD7ZEkrw3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HuTYnDN/Nr19mwUZ9p5rXBLUM8x+kbcIvrcVFf7cbfI=;
 b=bn593xc9T+It7PJvvQDX6xU9XbTmGv1xYfusU167jyO9X2eNzJaiT/NsluvmME8ikONGC408v0n7g2ilgIJDKZIQkxJrm2nJE8ZpqNwGQ9aWWr2iK0MoJxRCIyf30le/fR/WtT+dIbCDxVbu28N+I4sCFRAsvKxt17tKMjn/6mbUfidctMTDZ6IMrDSab7vOgQrc2sVzGNqG0H0wsjUGHQ6VenuZFz2ASv4HDurnjUgJ/q0LY7Akklw8jMeJ1zhTQGizVKIHRBZS5i1qVd1jliDSyrACg/YkE6qeU74vIl6OOuxZyYR+BJvgLsplEX/8zL4vre6ANv0J0ikxbv1iSQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 51.140.37.132) smtp.rcpttodomain=lists.ettus.com smtp.mailfrom=xenint.com;
 dmarc=bestguesspass action=none header.from=xenint.com; dkim=pass (signature
 was verified) header.d=xenint.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=xenint.com] dkim=[1,1,header.d=xenint.com]
 dmarc=[1,1,header.from=xenint.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xenint.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HuTYnDN/Nr19mwUZ9p5rXBLUM8x+kbcIvrcVFf7cbfI=;
 b=VrBSrCfuGasehUdSSFZnaWhna5ePHbdbfGL7Np2MR+9pdeLkovY+wCw/ABhKcagHiN2Wizj+t468IEc2e7XDj3/TnLdO9933k8pC86p4eg9haR+YC7ThW0v6S14t/10ehraqvcEN+icnzrh0WScU9RgjRx+4rzEjWWw27uWKDco=
Received: from AM5PR1001CA0043.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::20) by DB9PR02MB6746.eurprd02.prod.outlook.com
 (2603:10a6:10:215::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Mon, 10 Oct
 2022 10:41:37 +0000
Received: from AM7EUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:15:cafe::3e) by AM5PR1001CA0043.outlook.office365.com
 (2603:10a6:206:15::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.28 via Frontend
 Transport; Mon, 10 Oct 2022 10:41:37 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 51.140.37.132)
 smtp.mailfrom=xenint.com; dkim=pass (signature was verified)
 header.d=xenint.com;dmarc=bestguesspass action=none header.from=xenint.com;
Received-SPF: Fail (protection.outlook.com: domain of xenint.com does not
 designate 51.140.37.132 as permitted sender) receiver=protection.outlook.com;
 client-ip=51.140.37.132; helo=uk1.smtp.exclaimer.net;
Received: from uk1.smtp.exclaimer.net (51.140.37.132) by
 AM7EUR03FT051.mail.protection.outlook.com (100.127.140.64) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.5709.10 via Frontend Transport; Mon, 10 Oct 2022 10:41:37 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.54)
	 by uk1.smtp.exclaimer.net (51.140.37.132) with Exclaimer Signature Manager
	 ESMTP Proxy uk1.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA384); Mon, 10 Oct 2022 10:41:36 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 4798818
X-ExclaimerImprintLatency: 802502
X-ExclaimerImprintAction: 2369ae8053554d8d9e11ffde318fbb66
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKSzl5hoy0fhOK40wBi5VD1JfxW8bZCfe8aLFnY3Sne2QcQZFxeKM5wHXCFEH/Qv+pDY1zOCQUnl07sWggqdAcm0Uv5f3SXJhzZZhW+i96ZM6CND6/yc9OUpBztlhEDd4y4chpUnpH+rwPtS+AK+sHy24ANCcCBwQYScdP9SMM5Nyn1+xJ8CAzU5PmJMtfdBjn/2MHXPP1vwn6CEfQ4/rJ3OzSAtcEffNc5KhU1dBneASly9Eegio7Ye7E3myaMRgOIvuAC9WUMKeoU9oh0Oy+XXH3O4gnyGFiXnYnx5BHqDnPakv8uTp5v6kh0vKv6djb0WkSaylndpPkupwhzvRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HuTYnDN/Nr19mwUZ9p5rXBLUM8x+kbcIvrcVFf7cbfI=;
 b=hP+1MyWKIasNOECfmOYXAKOlBGNsuU1OnPNBeozsYO+PGXnX97jzm5wbTcqKbeLxvG5iKJjP3/LNUPh0nKjfLaiXvYmiyXvr6OM1YiTLogoFy9MDGc7BHQ2lHE8EUlh8Aym3tEZ6vCTW1UYANOabyJOaFjCmkV0Wi9KbtjMv3Cf0QM/5bEDEtzlHQ0x+vMyQ2FSbcWCy3h+SplZXjG8t82QXxV9gBmEF0v9/RMuzamne+U+9+8uVnEUIeFKQ/nB29uMSGJ5TEaBJ7/1vXn2WOsIazNeNV7yOCraYwMIPzYPJ96t03SV5Rbg4iFdC4EBz5bZhjpoDx4M9x/5UvRTALw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xenint.com; dmarc=pass action=none header.from=xenint.com;
 dkim=pass header.d=xenint.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xenint.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HuTYnDN/Nr19mwUZ9p5rXBLUM8x+kbcIvrcVFf7cbfI=;
 b=VrBSrCfuGasehUdSSFZnaWhna5ePHbdbfGL7Np2MR+9pdeLkovY+wCw/ABhKcagHiN2Wizj+t468IEc2e7XDj3/TnLdO9933k8pC86p4eg9haR+YC7ThW0v6S14t/10ehraqvcEN+icnzrh0WScU9RgjRx+4rzEjWWw27uWKDco=
Received: from DB6PR02MB2981.eurprd02.prod.outlook.com (2603:10a6:6:1c::31) by
 PAVPR02MB8992.eurprd02.prod.outlook.com (2603:10a6:102:32b::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.15; Mon, 10 Oct 2022 10:41:34 +0000
Received: from DB6PR02MB2981.eurprd02.prod.outlook.com
 ([fe80::c53e:8825:e979:197f]) by DB6PR02MB2981.eurprd02.prod.outlook.com
 ([fe80::c53e:8825:e979:197f%7]) with mapi id 15.20.5709.015; Mon, 10 Oct 2022
 10:41:33 +0000
From: "Peter Featherstone (XENINT)" <peter.featherstone@xenint.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 - loopback test error
Thread-Index: AdjclHyPMNaC/RVsQge5PmD0eJlbWw==
Date: Mon, 10 Oct 2022 10:41:33 +0000
Message-ID: 
 <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=xenint.com;
x-ms-traffictypediagnostic: 
	DB6PR02MB2981:EE_|PAVPR02MB8992:EE_|AM7EUR03FT051:EE_|DB9PR02MB6746:EE_
X-MS-Office365-Filtering-Correlation-Id: 86a150ba-6975-419f-dc1a-08daaaac0232
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 nNIwBWIK2pBGVkQpU0JMkXC681LK3ln/fEWYn/PonI4qSDcWy0UCxiMBXbrYvJ5Sncgw2qoczwBWp3atcwQ6oumxMcUoY8ZwOaDi1QgFWURge2/SR8ia1IXFLuy9qHGQ4YJF60ER+ovu5ArJvOKc+ahaZShXgeHfUU4RvTR5sI0o1mxEul9/bBzEJV5matTUiInwXmWORCs0EhXPcmCyqcfhhN4DRyew/BbypxTo0u+MbvHRBgpC7I1/TkBNUn+2LTDvLld9UfqLC0qvWlWpecDW+dtzyh6QlNB3IoWUwLQV0uAkatlfuQ36LrszirF/DvZ+M9tYRzSrv028ZRPDmD0jmc/9jm7GYh7mhj/kP8cLpPR1H0u32N1EYVc1wTzwBGPfOyWqwgoe96ZjdLkB7CHRO5KnVTCJorCdDZmWYBsmhvdW3pP9RW6YDfyId448CEYJ3Q1rYWwh9345lMTjyu0qY/xOJwwwNjvRQY6yEzYqrBkvEVwr0Tovt9+0Fz4KnpEWlnkHaAJdTUwHvzviM4ciOrF48erKkHjrfTMqqQ80wTYmx/EyEIcJruefcBKJo6lO4vt78HytE+G3oGCf8ZPkUJbWIT4rDR2zdvaD+BWjmf9gdDPoASqkf674lAmVcZNRJvAlgFXl21oEBSCO5EJehxqiLmgLiIcPb1e1y8h2tKJoLFDp95tvKqXKvRJHkn+SKhOBmR0o0ffmBd1K4wjpBZJmY1Saf2dP8C1r47LpOOEcCVGE7OR77x9lR4zKH0QQ9P/xCNVZEOw5eAZxgQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR02MB2981.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(376002)(136003)(366004)(346002)(39830400003)(451199015)(6916009)(52536014)(9326002)(41300700001)(8936002)(478600001)(33656002)(316002)(76116006)(66556008)(66476007)(8676002)(64756008)(66446008)(5660300002)(66946007)(86362001)(38070700005)(9686003)(186003)(55016003)(38100700002)(26005)(122000001)(71200400001)(7696005)(55236004)(6506007)(83380400001)(2906002);DIR:OUT;SFP:1101;
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR02MB8992
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c28c7ebe-8171-4942-9dd4-08daaaabffb0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XS3PLf0/TyYn1aLFGWESAVeYjKkbfrC6Z21wjtnh73ZcQMn6lKOV4F+HgT3yl+oxfee2AWXjerkFyFQmVqzTr8qf8AM/Sv1cvSoGz8G01pgSvFX5ks/eNZnD/lVSt56De8+NQPqEaqRoSx71QZL+sZPhnkYTWtBq7OeN7qNlIyqD5UDfS77jjviwBUIpz/Du0foW9cWfFzph1s2u5kPW64giHTtF6YSoJSrjVsWsUCkvfwBRz2qZBwGmeA46L5Dra42XYs3JyYWjvbczqilarJ/FeHs7UcoVLv+0VfmSi5nTI1miwVMkZ7JDTfHGJCPnkkfitt0eXiwakI8pz9pen3JXkokD1EGp6HZSbzL1xemYt6iOyKGY6U/sBZTWxPROuE8ADicpxy+gjm45bzcDbPJq/KfuvKULEH9j+LMyCcNM7ybJ71mEUp+tNsVKC33ITsUcw6ZZluGXleGIkzZ2nW0CMJaxlCnpS45jjYzgJX4FqPct828+RpwpRYSPe2uTr7XuVTonxBbNxYIA1h2G8yHo7UYENexWU375XqnH/dFzXYJMupQCWUg521PY+6zmv82h+Clt3suazGlQKeJxh5BwHRx/cas/5GCRmG0CsJR5fkEfAJP/UWM5nVlP4weWFhJKGGtrHyjfjruzj9rwDCciZ0rUeK9B2L6O1vHUM913lNtv6daBKYhjBaEuwNs3rGD5PDxvQJ0WJtQEq+viZv9JrFSWHiyV6PR3UBZw4kg=
X-Forefront-Antispam-Report: 
	CIP:51.140.37.132;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:uk1.smtp.exclaimer.net;PTR:uk1.smtp.exclaimer.net;CAT:NONE;SFS:(13230022)(136003)(39830400003)(376002)(346002)(396003)(451199015)(36840700001)(46966006)(6916009)(82310400005)(9326002)(83380400001)(52536014)(33656002)(8676002)(26005)(70206006)(47076005)(70586007)(8936002)(478600001)(41300700001)(36860700001)(6506007)(7696005)(356005)(7636003)(86362001)(55016003)(7596003)(40480700001)(336012)(2906002)(316002)(9686003)(186003)(5660300002);DIR:OUT;SFP:1101;
X-OriginatorOrg: xenint.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2022 10:41:37.2456
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 86a150ba-6975-419f-dc1a-08daaaac0232
X-MS-Exchange-CrossTenant-Id: d6824d12-a925-410b-8f9a-7721b23d31f5
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d6824d12-a925-410b-8f9a-7721b23d31f5;Ip=[51.140.37.132];Helo=[uk1.smtp.exclaimer.net]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB6746
Message-ID-Hash: AICQQ67DB6YRJ6CKLSESMR526DX5T7RG
X-Message-ID-Hash: AICQQ67DB6YRJ6CKLSESMR526DX5T7RG
X-MailFrom: peter.featherstone@xenint.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 - loopback test error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CURWQNO2DI4TMCLLX6RIP5XLSC76QVQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7492209685433135441=="

--===============7492209685433135441==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR02MB2981930195E78445C7C9AAB3E7209DB6PR02MB2981eurp_"

--_000_DB6PR02MB2981930195E78445C7C9AAB3E7209DB6PR02MB2981eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm using an E320 with libuhd 4.2.0.1.
I regularly get this error when running `uhd_usrp_probe` or starting a capt=
ure with libuhd where the CODEC loopback tests hangs for ever.
The log is as follows:

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.1,type=3De3xx,product=3De320,serial=3D31C8CC7,name=3Dni-e320-31C8=
CC7,fpga=3D1G,claimed=3DFalse,skip_init=3D1
[INFO] [MPM.main] Launching USRP/MPM, version: 4.2.0.1-g321295fb
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 31C8CC7
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Installing component `fpga'
[INFO] [MPM.PeriphManager] Installing component `dts'
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 31C8CC7
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.1,type=3De3xx,product=3De320,serial=3D31C8CC7,name=3Dni-e320-31C8=
CC7,fpga=3D1G,claimed=3DFalse,find_all=3D1
[INFO] [MPM.PeriphManager] init() called with device args `find_all=3D1,fpg=
a=3D1G,mgmt_addr=3D192.168.10.1,name=3Dni-e320-31C8CC7,product=3De320'.
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=3D2500000
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2500000 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2500000
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the minim=
um recommended size of 816000 and may result in dropped packets on some NIC=
s
[WARNING] [UDP] The current send_buff_size of 212992 is less than the minim=
um recommended size of 307200 and may result in dropped packets on some NIC=
s
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...

At which point it hangs for ever.
The only way I can get out of this is continuously power cycle it and reloa=
d the image until it succeeds.
Anybody seen this before and know how to fix it?
Many thanks,

Peter Featherstone



--_000_DB6PR02MB2981930195E78445C7C9AAB3E7209DB6PR02MB2981eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using an E320 with libuhd 4.2.0.1.<o:p></o=
:p></p>
<p class=3D"MsoNormal">I regularly get this error when running `uhd_usrp_pr=
obe` or starting a capture with libuhd where the CODEC loopback tests hangs=
 for ever.<o:p></o:p></p>
<p class=3D"MsoNormal">The log is as follows:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_10=
7400; UHD_<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.10.1,type=3De3xx,product=3De320,serial=3D31C8=
CC7,name=3Dni-e320-31C8CC7,fpga=3D1G,claimed=3DFalse,skip_init=3D1<o:p></o:=
p></p>
<p class=3D"MsoNormal">[INFO] [MPM.main] Launching USRP/MPM, version: 4.2.0=
.1-g321295fb<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.main] Spawning RPC process...<o:p></o:p>=
</p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device serial number: 31C=
8CC7<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.RPCServer] RPC server ready!<o:p></o:p><=
/p>
<p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Spawning watchdog task...<o:p=
></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Claimed device without full initializa=
tion.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Starting update. This may=
 take a while.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing component `fpg=
a'<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing component `dts=
'<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Update component function=
 succeeded.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Resetting peripheral manager.=
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device serial number: 31C=
8CC7<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.10.1,type=3De3xx,product=3De320,serial=3D31C8=
CC7,name=3Dni-e320-31C8CC7,fpga=3D1G,claimed=3DFalse,find_all=3D1<o:p></o:p=
></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called with device=
 args `find_all=3D1,fpga=3D1G,mgmt_addr=3D192.168.10.1,name=3Dni-e320-31C8C=
C7,product=3De320'.<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The recv buffer could not be resized=
 sufficiently.<o:p></o:p></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">Actual sock buff size: 212992 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<o:p></o:p></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.rmem_max=3D25000=
00<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The send buffer could not be resized=
 sufficiently.<o:p></o:p></p>
<p class=3D"MsoNormal">Target sock buff size: 2500000 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">Actual sock buff size: 212992 bytes.<o:p></o:p></p>
<p class=3D"MsoNormal">See the transport application notes on buffer resizi=
ng.<o:p></o:p></p>
<p class=3D"MsoNormal">Please run: sudo sysctl -w net.core.wmem_max=3D25000=
00<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The current recv_buff_size of 212992=
 is less than the minimum recommended size of 816000 and may result in drop=
ped packets on some NICs<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [UDP] The current send_buff_size of 212992=
 is less than the minimum recommended size of 307200 and may result in drop=
ped packets on some NICs<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC loopback test on=
 channel 0 ...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">At which point it hangs for ever.<o:p></o:p></p>
<p class=3D"MsoNormal">The only way I can get out of this is continuously p=
ower cycle it and reload the image until it succeeds.<o:p></o:p></p>
<p class=3D"MsoNormal">Anybody seen this before and know how to fix it?<o:p=
></o:p></p>
<p class=3D"MsoNormal">Many thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;color:#0D0D0D;mso=
-fareast-language:EN-GB">Peter Featherstone
<br>
<br>
</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-GB"><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB6PR02MB2981930195E78445C7C9AAB3E7209DB6PR02MB2981eurp_--

--===============7492209685433135441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7492209685433135441==--
