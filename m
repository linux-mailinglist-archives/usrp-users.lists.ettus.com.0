Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B8AF9BDA
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jul 2025 23:09:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55AF2385D48
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jul 2025 17:09:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751663365; bh=hk05Y+8plJI2BvIK2RcvXKC2T31ATAFGreJDqzgHtko=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=aKcTFiFbyYUZtiLAEZEbEzzc/m755gWojpsVtcqKEvO9JaWzMq91uyD8NtMkBz4Fd
	 wG0xwIjANlSFHZ1+untQ+dTII1oAOzgQfcs7PNd0I2F6oEzS0TDOk/grT2ipR1busX
	 0u+8eWoLRP97OOwzGMgI05tcNf48fdbehX/9hVRBbS1ag57R931wAwiSQTGQRIPedE
	 IxoEVQqU6p+zgX5qM4w4oqoXTz7v6fpk+KgCu2/8pnZ6YhExoEgAmxjiC6PNSQ8lla
	 COVmowijbwkkw6vHUlAfBeA4xsUPS0/QjK/EaO58jrHQ2IlZ/giOmgylU4Wr9IrKEI
	 FGhBhbPWCKPlQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id E9EAE385E30
	for <usrp-users@lists.ettus.com>; Fri,  4 Jul 2025 17:08:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="SbRui7f1";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="s/tfjd4T";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1751663321; x=1783199321;
  h=from:to:subject:date:message-id:mime-version;
  bh=5JkM6+0SG0bT5wVLu54Oan/RTa9m2IKFQZwoLEa8uLs=;
  b=SbRui7f1rQAj4B0tKyJY8/5GH4AC5WiTmEpzqWHaRjafCjpevjZRX/EN
   CNclOL5RHMWndXSng8DMLpXFJyOsfjf9i7pXra2rc57QjdCsUYNz3O8jb
   BjyS6zsQ6qGdhIY6534Pr5xCFsCFntyIDtJNCwITSp7lQLP8SXboo/Exd
   o=;
X-CSE-ConnectionGUID: F3vW+vn9STyogriVC28iQw==
X-CSE-MsgGUID: 1USHnJi4Qx2HDnCN9hbUIA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="7818611"
X-IronPort-AV: E=Sophos;i="6.16,288,1744095600";
   d="scan'208,217";a="7818611"
X-IPAS-Result: =?us-ascii?q?A2EGBACrQWhojhYOXShXAxwBAQE8AQEEBAEBAgEBBwEBF?=
 =?us-ascii?q?YFTAoE/gQNAAT2BZ64KhlaBJQNXDwEBAQEBAQEBAQcCFBMqBAEBAwSFAAKLe?=
 =?us-ascii?q?yc0CQ4BAgQBAQEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBO?=
 =?us-ascii?q?QUOO4V7DYQHgSYBAQEBAQEBAQEBAQEdAjWBHAEBOBEBfycEG4J6gh0HBAsHA?=
 =?us-ascii?q?zKtV4E0gQGCDAEBBgQE2yEYY4FlCYFJAYN8gXCCZAEqgTOJPIFVRIEVQodrR?=
 =?us-ascii?q?YNOgi+CJoECFB2ROAcDIgiGWYFEIgMmMywBVRMXCwcFW4EIA4EPbjIdgSd+h?=
 =?us-ascii?q?gGEKitPhRGBGYNTEhJtDwaBHYERQAMLbT03FBsFBIE1BZEXGUOEKJZbjxaBf?=
 =?us-ascii?q?IxilGI0B4QfgV4GDKAcF6pkmQapEgIEAgQFAhAIgWhogS4zGjCDKlIZD446g?=
 =?us-ascii?q?2fBRng8AgcLAQEDCZJgAQE?=
IronPort-PHdr: A9a23:EtNerBZGRZWOmYOQ1ojnkgX/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:QYIY8a//sHFSKgg9ZQBKDrUDFX6TJUtcMsCJ2f8bNWPcYEJGY0x3z
 jMaWGiHOfmCYTageNglYI/j80lSu5LTnYRrGwA6ryAxFiIbosfsO4+Ufxz6V8+wwmwvb67GA
 +E2MISowBUcFyeEzvuLGuax9SEUOYagH+OgWLKs1hhZHFIiEGF4z0o4w4bVu6Yw6fChGQSBp
 NjulMPWPV6hylZcP3kdg065gEsHUM/a5nVB4DTSWdgR5AWDzyZNUMpETU2MByKQrrd8T7bSq
 9nrkenRElPxp38FFt6jm7DnRUwGKpa60d+m1xK684D76vRzjnRaPpQTbZLwWm8O49m9pO2d/
 f0W3XCGYVpwZPWUwIzxZDEDe812FfUuFLYquhFTu+TLp6HNWyOEL/mDkCjalGDXkwp6KTgmy
 BAWFNwCRj7Ymd313rTqcdV9gcs5LffAZtMeg241mFk1Dd5+KXzCa57jtOdihGYbu5gWR7DZe
 tYTbidpYFLYeRpTN1wLCZU42uC1mn34dD4eo1WQzUY1yzSLil0qluGxdoCPEjCJbZw9ckKwq
 3/J8mL0RB4APc2BxCCt+3+2ganIhyyTtIc6S+3hpqAz2TV/wERKNSY2U3m6/cCp0G6SXfl5e
 kwexwsH+P1aGEuDFYKnA0LQTGS/lgMHQcIVDvY38hqlzqvP/x3fC3QYUyUHY9sj3PLaXhQv3
 16N2sjuGCBvu7CTVWiU8qqPpCG2IXFKdTZaPXVeCwwY/9PkvYc/yArVScpuG7K0iduzHizsx
 zeNr241gLB7YdM3O7uT0wvZvHGyoMnych8y6R/WYEn/vgJAe9vwD2C30mTz4fFFJYefa1COu
 nkYhsSThNzi67ndy0Rhp81dQ9mUC+a5DdHKvbJ483AcG9mF/neiecVL5yxiJExkNNoecDv0e
 0bBvRsIu8cKZCPwN+lwfp67DNkswe74D9P5W/vIb91IJJ9saAuA+yIobkmVt4wMrKTOuf9uU
 Xt4WZ/2ZZr/NUiB5GHqLwv6+eRyrh3SPUuJGfjGI+2PiNJynkK9R7YfK0epZesk9q6Cqwi92
 48AapLXlUoCCLCvPHi/HWsvwbYifShT6Xfe+5w/SwJ/ClQ5STFJ5wL5ne1+JtQ5wfg9ehngr
 y/mAREBoLYAuZE3AV7RMCw8AF8edZN+pmg8JisiIR6j3GI7CbtDH49OH6bbiYIPrbQ5pdYtF
 qFtU5zZXpxnFG6bkxxDNsOVhNI5K3yWafemY3DNjM4XI8Q4H1ShFx6NVleHyRTi+QLu5Jtj+
 +H+jFiHKXfBLiw7ZPvrhDuU5wvZlRAgdChaBiMk/vE7lJ3QzbVX
IronPort-HdrOrdr: A9a23:k2Ar0aMLAPZzXMBcTyP155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE7gr5K0tQ4OxoWZPwN080kKQY3WB/B8bHYOCLggqVxeJZnMLfKl/bakrDH4dmvM
 8OHZSWY+eAbmSS+PyKhTVQZOxQouVvnprJuc7ui1NWCS16YaBp6Al0TiyBFFdteQVADZ0lUL
 KB+8tuvVObCD8qR/X+IkNAc/nIptXNmp6jSwUBHQQb5A6Hii7twKLmEiKfwgwVX1p0sP0fGC
 n+4kHED5eYwr6GIyznpiHuBqFt6ZfcI5V4dY2xY4MuW03RY06TFf9csvu5zXgISaiUmSsXeN
 WgmWZbA+1jr3zWZW27uh3rxk3p1ysv8WbrzRuCjWLkutGRfkNONyNtv/MrTvLi0TtTgPhslK
 ZQm26JvZteCh3N2Cz7+tjTThlv0k65u2Arn+Ifh2FWFdJ2Us4nkaUPuEdOVJsQFiPz744qVO
 FoEcHH/f5TNVeXdWrQsGVjyMGlGn4zAhCFSE4fvdH96UkjoFlpi08DgMAPlHYJ85wwD5FC+u
 TfK6xt0KpDS8cHBJgNdNvpgfHHe1AlbSi8Tl56e26XaJ3vE0i91KLK3A==
X-Talos-CUID: 9a23:NsBR5mBW1zeR6xb6Ewc86nFXBMZ0SUHMy3jKInGTUzZocaLAHA==
X-Talos-MUID: 9a23:d9CeUwtAL+XWZYNcj82n3QxZFMFK4viXGBotvZMtnZiEPxFREmLI
Received: from mail-southcentralusazlp17010022.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.22])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2025 14:08:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mb5/clir8B66i74KdiOL8d7usHiiiPJi6/PHgOCDq1CaxHEjw+US8f5QbMK2wLJdB9IvAbLoI5SpvlxZ8qNuu7EARSqdlyeFnAIC+2a/DQ8VD8F5NvmTnJKdfq6s1+94S1I0jny8JrwD3F7mWK2UwErtDV5jMrLHEVj+RrMNs2sy7KPyxcH1o3lgiFGLAg9w381VtEPByqPsl2i12zbKwADFVTU50mHPPGz9E0On4OArVU2PnkIL1Nab4l8dLP928sAOGZs+82CbzJ+qyk9UzcGdXkcHjXBofYzcx68Cx3saxSWhISYdtszO+r3AJMIFXRgiydF1stMUn8ujrqA4IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p0vS9zbvPIrzK+naXzNBGxaNFhye1xkmEc3imvHQIt8=;
 b=pprDf4ni9IwsXslWKxIb4gOllLtwKAQ7dLflwfpwfdzLRrFjczMiEuUqhVtneIAO1ofmIpB8ktm12blJXJNNhVyvPKY2UBDLSJjFKLb/zsuybWhpWtSeoVXMYM96fe54BcnSKupM7EN5B3wj5RvcNCKxiXAx9QGuMW+bxwvP8Iz+vkoyEEd3WlsiuMP7O3ViNWGrpHyIhXIBoi3pfVhBpciQZZ5vnsU2FVkYmP/eGGjvKMu49jXLDSAl/kLAMJ3FnEHlRbXX2xQUTTxZiE8sBrqr2J59V/wk6dexghmABBqCRqc1Vc9zVurMdyQxH4SsXLqHNbNMES7zLUaHh9ZtIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p0vS9zbvPIrzK+naXzNBGxaNFhye1xkmEc3imvHQIt8=;
 b=s/tfjd4T41cOucizrzBKJxOc+BJLRMbnMGoLY+Yrlfa0DrmBCcq39lBYv49C85QSTsRXUtn9TEe9UDECWsgNM6W4nt4B5Oed9OV4j9h8CnSB1ERA7pQgJeFjQJKTmddesyUTZ+HgjjnyLGnAiMcPcor8xASiDMou7GvW5fWAtXQ=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DS0PR09MB11254.namprd09.prod.outlook.com (2603:10b6:8:176::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Fri, 4 Jul
 2025 21:08:18 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%6]) with mapi id 15.20.8901.021; Fri, 4 Jul 2025
 21:08:17 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: control timebbbout waiting for ACK
Thread-Index: AQHb7SdVqnsUEiBjPkq/NzARK68tVA==
Date: Fri, 4 Jul 2025 21:08:17 +0000
Message-ID: 
 <SJ0PR09MB9126BF40779325611798B964EC42A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DS0PR09MB11254:EE_
x-ms-office365-filtering-correlation-id: c67ce11a-fb85-4f64-7db6-08ddbb3ee5d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?ZfyqOQbRwaxt8AGQx5Lt44/thCx6s/sNejWjZCW72Qz0WL/ty1NwVKri3w?=
 =?iso-8859-1?Q?gBYjKChpXaKp3goKK/Fbvi0lS0MYi8utvq4Htgqk1R2pI7Ez3QZQb7x6OB?=
 =?iso-8859-1?Q?CsOAnMJ2tGfW6nX5xAdl2AVXUlGzwSK9fRL1CeWOrni1J9UsgFn3zDp77f?=
 =?iso-8859-1?Q?1Cqqsa9nDappPXcg0ze3f+EB9aO5xu6GCmW+7a4dHjHuln9OSZAPVpoGwR?=
 =?iso-8859-1?Q?43XWC11yL5VS/2TnbyWAWeOUi+IxEz14T4ZSwrW3FTFmCSgjoE67Ai2I3F?=
 =?iso-8859-1?Q?lluNN4n1VaBqGvH3pFzLhsDGWqKDQXDncKT6ABBI0V1vaDVoqzZPkFX2Oc?=
 =?iso-8859-1?Q?4aZDSoLz4YXIPDQ4EuZ4GxL6cPaCJ4WCrlQIPsbJBHapVF1QfaWpeBmtEd?=
 =?iso-8859-1?Q?PZMkunwHWX+Tfrv1xngZhzWmeofjRg9TEUZT8O8/5mj96FvAsGI0LJppwd?=
 =?iso-8859-1?Q?62mgHQSZkJubk+zuohG+BjNDLQ9sC7/5R013oT00YTUCJjUFVpmk20ByvR?=
 =?iso-8859-1?Q?Sr8irr4c5do42ybuvl277y8pfq3aJStN15LkJs18UfxbcISKOvc2Yr+dia?=
 =?iso-8859-1?Q?lB6Uc5xbuLplYwB3Ejh4vO6uxxjwIvwC3hy0m/8Ukpi1bKg6ipltEtOJii?=
 =?iso-8859-1?Q?KU6t1kzXAK11XzwZJiA7clD8advvGcYC8qRePNycBAu9jYvCL0kXwQ2zuY?=
 =?iso-8859-1?Q?mWbDk02rH9E2tR+CwIsSXBau1864OyMn5t9QEnHbBnD4Bu7lIKwstpP94E?=
 =?iso-8859-1?Q?AnutP/NhbrptO6pXQfIEwdLCq2EQvjG1nhOeeaOpexp2zOk+2X5XgcdFeO?=
 =?iso-8859-1?Q?F4mEYjOWR7WlclUicn5Wh3YvQqF6x/JDvAI1qyuxt52+1mWceLQWkzuBCg?=
 =?iso-8859-1?Q?j8an7n6NFoZWC1vXl5tvxV1JS0/E8T+5SbKs3D2A/NgMl1p3JzXlWHSgIH?=
 =?iso-8859-1?Q?y62kLmn+lyMJT0nDoYQMPx77ylxgQ0wX5vF6SFbrWv6ZE54yk3pMDDaRyE?=
 =?iso-8859-1?Q?t+RQLH+Q8USkpjR1ssXq5dpAwPUhoIK2cg1+qZTn8NugTNZjsEPHr4eDtQ?=
 =?iso-8859-1?Q?sBKfHFqTKLPqB2vf96fwvsGEUwWle8Nw/7JlR2sG+1A1Dpg736NR4dt5Oh?=
 =?iso-8859-1?Q?FWDguX5btheQC+oNGv1yDOHovWuzrLm/ACr8tqkDaHxipSjoWR3cStWZ88?=
 =?iso-8859-1?Q?BmNFsB9sk/xJZzPD3/WJKeW3MKCEifDrlMAHdnVYUKArybXe36Rjr4eZ1Q?=
 =?iso-8859-1?Q?HsoWzpM+lXAqHFsolut/tYZArlLWyydu/CLCh5SFqyjAyxLnZXBuJPsteR?=
 =?iso-8859-1?Q?2Yu2LEqThQSkoQOpIq746hBlTq3oKw5g61RycahkPA5NrI/4AJ28B2uE/N?=
 =?iso-8859-1?Q?k1unpS7hknPRKziIi8B1GqrXpZl20FTOxFksVy/QJCHsHDs7CaPylErjJ7?=
 =?iso-8859-1?Q?izAxx4Luzij8HOkRtPm9ebpPFhUTeZB3oYoWDsn3/4Ya7MFbnSspvDTA2j?=
 =?iso-8859-1?Q?47tpOLZ6gEEPcdDn00JeKCln99QpZvRRlU6z1Y9NR8cA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(38070700018)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?UMwv9OrS8XG5UH20xm0IiGqqmOZr2hLGO34J61HW6nclfdS3SDCErvopPA?=
 =?iso-8859-1?Q?RaUelyV4WD74efIkOqSj4s4LjlTMrQHepEgbzzCWyORpFwTYT9QT7f+bHm?=
 =?iso-8859-1?Q?rINxESDKtPYl8P5fFVuMiJoKdE4rU+zbjilnsLeMrR8pgG/cSyJb6p1vIY?=
 =?iso-8859-1?Q?WoLsK87zUQKmBxHQXcA44xrGa47sOqC5mCBu/7BW6fd+pSp8KWNzd2JaZn?=
 =?iso-8859-1?Q?JSZX0p9vpM/8iBaWGtyzEotNB2Dwr0fULlPSLjR64VOqi1Cip9WHxp1J5h?=
 =?iso-8859-1?Q?ZSzw9vyDnyeNX2ecv+DJLOoBdI8zF65lIImYvx4PzbXBN/OakspD3PV0QY?=
 =?iso-8859-1?Q?f0/hZCX3A0cwBqpl0DWFAqw586bb/RJfPEIFAJ0S29G0xYylHu6K2pyZIT?=
 =?iso-8859-1?Q?1pYxGdgkzm4twTwu/jh2eqnVhx5/NWI126SgTvUm9HloJRY/pFEc2UqDfK?=
 =?iso-8859-1?Q?SLpZXAhpwuG2KJoJB24mEfdEydHRbQXRNllDxSocDiHQ4IbHLR+xSJAMXB?=
 =?iso-8859-1?Q?jpu0WiajxBuPCOb5eNgEn4m+YLty3Aw+ML4JUMcfCLMosSPSHSCYWiS5AS?=
 =?iso-8859-1?Q?mrnk1NipdjJ/nZHrMd6M+4ygfC6vDQKD5z0F3nxa94fQDD/vBl3AbL7QSw?=
 =?iso-8859-1?Q?3AnlO5+moRrOSCFzVYYs8eJy3ohtRhkWi7TaC2+TIDH6XX8l+jiWAcdniA?=
 =?iso-8859-1?Q?svLkSTutgnRW4mNjpdijvg6CDEkoA+bg22z2nHJR+ekubESIJY1NgNfmH7?=
 =?iso-8859-1?Q?LMoX/NmiN0L/1hoxCYwxePZpvMLXguyKLNgaqbFGGEDo+BmuT23zRRoKYm?=
 =?iso-8859-1?Q?z/9Qytkq09UO9S0TZt4But2j9NrOI8jzlZ7r6oYwBUrDnO/jbTigq8e2O2?=
 =?iso-8859-1?Q?UuzaJxOoy2V/OZ8F4KpuloiscZxtaC5WHu9z5son9I2Pg9ouGh3exzMtOr?=
 =?iso-8859-1?Q?DeDg+2vZUIS0+tqPrcwB6sl7GsvzmDAtoZ/1iqxicGqrgQYfCEaZpcnukl?=
 =?iso-8859-1?Q?+mqYbY9WpFL7dGHldTEEezQ+L5PrR5zx3hf5Cg1U0nGWPQMcJ9ErUpvOMW?=
 =?iso-8859-1?Q?9Z5/MEHEUYfQCdFiKq6EUmeTdr++PaNQ+tOcn2WlkV+kayF8unfjNcFPm6?=
 =?iso-8859-1?Q?mC02zOOW5eAw7wid0XIVp7rVJrneeoD9JzFuPEzi6lH+2y2NKtNHRUDo9I?=
 =?iso-8859-1?Q?wV/U2nWPVZH4mjA15aJAwk+aqVhWU1ZukYB7d+XJZ77G904Idryps4q162?=
 =?iso-8859-1?Q?1mQiXoX1f7jawbPTAkaIuHw6Z3T60blBoST0nYemDfsD7qkd4mCy/visZW?=
 =?iso-8859-1?Q?b5hF7P+eaT7KMJO+J/en/H+ROCHktpwDL1vcml0/+NCKmWVSObFtQ/3PTz?=
 =?iso-8859-1?Q?95Pcq2IoVn5V9a8xLLlm8d7P1DiqG6vR0uxJ2+XDsfJXy1YH0iX2+OPjD6?=
 =?iso-8859-1?Q?p3gmPhHe21J+4DZGJ4kN43Y9eQvdjgzrTQQoZ0vPrYBKRc5W7wiq+9xBc/?=
 =?iso-8859-1?Q?weIr4U1ZMw0oSuMQYfYcFKVK+/2/KjluQxowYtCQ+9uTFV9p9bKPzFHFN3?=
 =?iso-8859-1?Q?yP4pMrFDqgSkLjE1B8FFrs6+I84G8HluSvfeePN681Eza1N7HoiL78qd9/?=
 =?iso-8859-1?Q?y8WqbedKmr61c=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c67ce11a-fb85-4f64-7db6-08ddbb3ee5d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2025 21:08:17.4130
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR09MB11254
Message-ID-Hash: 72QFWR2RQWROERCPAFX3PN7WB37P3K4U
X-Message-ID-Hash: 72QFWR2RQWROERCPAFX3PN7WB37P3K4U
X-MailFrom: prvs=2736e88a3=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] control timebbbout waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PLXKBWGIERBDL76YK7XUSRPQO7MHDURS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6565093438652934205=="

--===============6565093438652934205==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126BF40779325611798B964EC42ASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126BF40779325611798B964EC42ASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am

  *
using a N321 w/ UHD 4.6.0.
  *
Running one channel at 100 Msps on a very fast machine.
  *
Interface over a 10 GbE over RJ45 (on-board interface to PlanetLabs SFP-RJ4=
5 transceiver).
  *
Running a custom C++ application.
  *
Not using DPDK.

I intermittently (once every 2-3 runs) get an error in the RX path.  The er=
ror appears to be fatal (i.e. no more samples received).

RfnocError: OpTimeout: Control operation timed out waiting for ACK

Any suggestions?

Eugene.


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126BF40779325611798B964EC42ASJ0PR09MB9126namp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I am</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;u=
norderedStyleType&quot;:1}" style=3D"margin-top: 0px; margin-bottom: 0px; l=
ist-style-type: disc;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation">using a N321 w/ UHD 4.6.0.&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation">Running one channel at 100 Msps on a very fast m=
achine.&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation">Interface over a 10 GbE over RJ45 (on-board inte=
rface to PlanetLabs SFP-RJ45 transceiver).&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation">Running a custom C++ application.&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation">Not using DPDK.</div>
</li></ul>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I intermittently (once every 2-3 runs) get an error in the RX path.&nbsp; T=
he error appears to be fatal (i.e. no more samples received).</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
RfnocError: OpTimeout: Control operation timed out waiting for ACK</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Any suggestions?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Eugene.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126BF40779325611798B964EC42ASJ0PR09MB9126namp_--

--===============6565093438652934205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6565093438652934205==--
