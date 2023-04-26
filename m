Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 834ED6EFD2A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 00:32:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0668D38403C
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 18:32:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682548359; bh=3Sj/a970F7SN/zgC52ZG70yBDtP0rM3e3BZQtGDYl74=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=stW8XHUTz78iG3jO4H5HI3DqawS2XeULA9G/h9NJM+K+HrOPFsGEzvVuQRzOvDGgA
	 giEa0nv0I1A/xmVf+B2hVaKMCE329Y3geGGkcfdzCpPxa78he7AekQJKaruelqXakS
	 Tz9KMwJ/8X+qz1VayNBarXduI2Y5C9IhAhJle1Y3TqyqpltdZA+rSnMsDNac1/Gf3q
	 DStIf+QRLiSPlDqqqAXUUopqtHNcNydZ0BCAQdxcGZW21ZEBASR/a121spQQe+9euK
	 MKt109vcApzp1nYEZZSnoG+YBd1JwT7xNuVwdbZEELWpiwsZw3tWmMr2+yJE/IF1tN
	 v8USd8iU+jT/g==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 30520383DD5
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 18:31:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="th8G8jsZ";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="wUk42nMJ";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1682548320; x=1714084320;
  h=from:to:subject:date:message-id:mime-version;
  bh=qWFHLTL89JDMZm+E5SbZdLXav78EZuiX/hntdWCcdCw=;
  b=th8G8jsZyeAosrfrIJBovpbvognOKMcbWmQO7zyNyxCsF5fG3Dkxp2lQ
   SVnFY7R5CfZdi/XHWNCT0eYsVtChsyO/r5q5bxm2FoKf4u+nRTBrNKKID
   voSXgaT7BuD55svytYYkyEGHKbBPhWEXz5o02/tVQsrdbUxXCc2gd5MM8
   U=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="2353878"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200";
   d="scan'208,217";a="2353878"
X-IPAS-Result: =?us-ascii?q?A2EwBAArpUlkh2lAL2hXA4EJgU+BK4EDc4FcrRiHcwMYP?=
 =?us-ascii?q?g8BAQEBAQEBAQEHAkQEAQEDBIILgnQChT4mNwYOAQIEAQEBAQMCAwEBAQEBA?=
 =?us-ascii?q?QMBAQEFAQEBAQEHAwECAhABAQEBGQkXBw4QBSKFaA2DVk07AQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQI1gRYBATgRAQx0JwQbgnaCF?=
 =?us-ascii?q?g0GAzGyEYE0gQGCCAEBBgQEnFAYXoFeCYFCg1GFXYhYgVVEgRVDh2wfJoNNg?=
 =?us-ascii?q?i6XAIEzcoEngTGBBAIJAhFrgRAIaYFzQAINZAsOboFFgxcEAhRCDBZeBGMHN?=
 =?us-ascii?q?gNEHUADC3U9NRQfBQSCSQRvgRMCTphQgWGBZDk6oGGBeqA4NAeEAYFTBgyfP?=
 =?us-ascii?q?hepQ5d5p3gCBAIEBQIOCIF5ggAzGjCDKlIZD445g1mPeXU9AgcLAQEDCYtFA?=
 =?us-ascii?q?QE?=
IronPort-PHdr: A9a23:NC/2nRREoZpSNtphW6dZLIC+J9pso7jLVj580XJvo75Nc6H2+ZPkM
 QSf4Ph2l1bGUM3d7O4MkOvZta3sGAliqZaMuXwPatpAAhkCj8hFkwkpGsXQD0r9IbbjZDA7G
 8IXUlhj8jm7PEFZFdy4aUfVpyi74CQVXBLlOlkdGw==
IronPort-Data: A9a23:z51V7KtZTXBz64VxJiarBmiAUefnVO9eMUV32f8akzHdYApBsoF/q
 tZmKT2AOfvYYDP3c4wkatuzp0tQ75+HndFhTwM4r3s0FixB9ZOVVN+UB3mrMnLJJKUvbq7GA
 +byyzXkBJppJpMJjk71atANi1Eii/nQLlbbILecZHErLeNcYH59z0glwobVu6Yw6fChGQSBp
 NjulMPWPV6hylZcP3kdg065gEsHUM/a5XVJ7zTSWdgR5AWFzyVPUspETU2MByKQrrd8T7bSq
 9nrkenRElPxp38FFt6jm7DnRUwGKpa60d+m1xK684D76vRzjnRaPpQTbZLwWm8O49m9pO2d/
 f0W3XCGYVpwZPWUwIzxZDEDe812FfUuFLYquhFTu+TLp6HNWyOEL/mDkCjalGDXkwp6KTgmy
 BAWFNwCRkmmv7izxZKqdvB9j9l9KeLlFo8dsX41mFk1Dd5+KXzCa4rhzocCmR0U3oVJF/uYY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCKlFA3jOerboaTI4TXLSlWth/wS
 mbu8nn2DxcXctOFwCub/2iEj+LVmmX8Qo16+LiQrKU32w3MlgT/DjUcT2bj4qa3l3KQXophL
 XMq23spoZQLoRnDot7VBETj+ybd5HbwQeF4DvYg8ESQ0afO+C6dB3MYVXhMdMA7r4k9QjlC6
 7OSt9bgBDgqurnPRnmWru2QtWnrYXVTKnIebygZSwdD+8PkvIw4khPISJBkDbKxidr2Xzr3x
 lhmsRTSmZ1KqPZR0qCb7Gzekjux+J3iQCQ55A7YCzfNAhxCWKapYImh6F7+5PlGLZqEQlTpg
 JTis5jPhAzpJcHd/BFhUNnhD5nyuKffb2e0bUpHWsZ/p2nxpxZPaKgKuFlDyFFV3tHokNMDS
 HPaoRtY5JZVOnyhbsebiKrrUZl0lcAM+TkaP804g/JLa5l1MQWDpi5lbhbK23i3yRBx16YiJ
 Z2cbMCgS24ADrhqxya3QOFb1qI3wic5xiXYQpWTI/WbPVi2OyL9pVQtaQTmggUFAEWs/Fq9H
 zF3a5vi9vmneLeiChQ7CKZKRbzwEVA1BIrtt+tcffOZLwxtFQkJUqGBm+56INw/wf0Jx48kG
 01RvGcImTITYlWXeG23hoxLMu+HsWtX8S1jZHd0bQnAN4YLONjytvhEH3fIQVXX3Lc6lqUsF
 qNtlzSoB/VEUDPc/DoBJZDvsZZvHClHdirfVxdJlAMXJsY6LySQooGMVlK2qEEmU3Tr3eNj/
 ezI/l2BHfIrGV84ZO6IM63H8r9ElSNA8A6EdxCUeYY7lYSF2NQCFhEdeddufJpXc02bn2PHv
 +tUaD9BzdTwT0YO2IGhrci5Q02BSoOSwmIy87Hn0IuL
IronPort-HdrOrdr: A9a23:g9wkI6/2IQODallTndduk+E6db1zdoMgy1knxilNoENuH/Bwxv
 rFoB1E73TJYW4qKRcdcKO7SdC9qBLnhOhICOwqUYtKMzOW3FdAQLsC0WKA+UyoJ8SdzJ876U
 4IScEXZ7PN5DNB/KXHCXyDYrMdKa68gcKVbInlr0tFfEVPUeVN/g15AgGUHgldXw9dH6c0E5
 Ka+45uuyegUW5/VLXxOlA1G8z44/HbnpPvZhALQzQ97hOVsD+u4LnmVzCFwxYlVS9Vy7tKyx
 mOr+W53NTvjxiI8G6S64bh1eUZpDLV8KoOOCXDsLlVFtymsHfRWG0oYcz4gNlympDm1L9iqq
 iwn/8tUv4DkU/5byW7pwDg1BLn1ytr43j+yUWAiX+musDhQikmYvAx8L6xXyGpmHbIhusMop
 5jziacrd5aHBnAlCPy65zBUAxrjFO9pT4nnfQIh3JSXIMCYPsJxLZvi399AdMFBmb3+YonGO
 5hAIXV4+tXa0qTazTcsnN0yNKhU3wvFlONQ1QEuMaSzz9K9UoJu3cw1YgahDMN5Zg9Q55L66
 DNNblpjqhHSosMYad0FI46MLuK46z2MGPx2U6pUCra/fs8Sg7wQrbMkcoI2N0=
X-Talos-CUID: 9a23:nz4iIm9PCA1Tu74io1SVvxcxIpogd13M8G7BKlLmDE1nYrGXQlDFrQ==
X-Talos-MUID: =?us-ascii?q?9a23=3AQv8JyQ2LdDF5idglKORU+5MNwzUj6b6TUANSn4g?=
 =?us-ascii?q?6lczcCypPBRbMiziLe9py?=
Received: from mail-bl2gcc02lp2105.outbound.protection.outlook.com (HELO GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.105])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2023 15:31:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6LdEnG+/yTUc2f8I8exmOgQZwNt30hLRqxA+8NuMtK5YfcfVN2njjP46sdFB5BDEq/t67LecIzgDO1rzerNYe3s9CwwP4siXpILBX1AyFWGSKYP1zKaplqY3gVbmo4uVFGHDIijp1Bc8Mb7FzAyyc2VnbnaMka+RrKnq7pbKvphBTPISl7Fu9SZHgaSbvg1/W3jcC6+fQ+kk5kg/jhgAuqChb8ix/VC7L8INeOPJBfXGAf3ZVwmjdU03bwK/MDpoCRVeS27T/81r6BvV/2zUY126geqhO3RkXEEw8gT5dhjmFDT0LUXmdkPCBgzkpqmSxIFOSRi0tEPzutHkuInzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZ1KgsA8O4biMmayeCPF0b+AnreCbQUi4udTet7NBdk=;
 b=Ib6igmcymhtfq0T7cJmsTbWwbSBR+ufCxfD1hBGKTPqbRReUr97P/mzA067YuqCvI2GJ5FGBYyK/zkL+esz0q1EiUgZIM2wZFExojHlmuPTguMcBuB5+z5sxoJ528s869VaUK47AA4gt1daJSnfD/ayiPD39XUcODZntI39v4Oa1g9kWTy8vJzY7CMGSuE7AsgBUDBV9/Yned8yUSNIEdh7LQCrqKVgmT7Yzk70eEDF1KydNIto6Z3UFBjt+1sk2wdLRJ5tbtO6dgjbOba9igHPYqz6uo1ufcdTJmzs6Aq8d/8eEimVX3NCanFyifQvMv9zxm6+Cpb9caQ0UnDIZkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nZ1KgsA8O4biMmayeCPF0b+AnreCbQUi4udTet7NBdk=;
 b=wUk42nMJNU7fPLBTvwD7LDot5DvkRMvi8YGZ9JF7Djell61No6maWCWFn+wd6Vppkng1ByV5ULDrOG8WHwaoB4xICoIBhM3WXFc/vlVbDrGR+wGK0DaikPmmPTyd39uyquuN+jw93LocdPNmi1eAPfnHMWAkxFJn2pExqoqmt6M=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA0PR09MB6345.namprd09.prod.outlook.com (2603:10b6:806:75::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Wed, 26 Apr
 2023 22:31:56 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::89b3:d652:b7c0:1496]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::89b3:d652:b7c0:1496%8]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 22:31:56 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Split USRP (X310, N231) between two PCs
Thread-Index: AQHZeI5ayvs3NzdvqE6kZjQ3y3vtRg==
Date: Wed, 26 Apr 2023 22:31:55 +0000
Message-ID: 
 <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA0PR09MB6345:EE_
x-ms-office365-filtering-correlation-id: aa1c04ed-0e68-4214-78b7-08db46a60a97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dwCvFTJTn4G9QZcPw+Cpy0zbHNj9sGhDmryA+f7xYf8pk+IYkNxfq7TlrhfyH2LLDMKfU/OctGD2QDctwpsx7btIWthZ0aJgei/K5Q598g/VNw28RJ2iqfkSyLGj3NBDtbr/MqjIcEfHDzR4Wdua4QbxSi/jY1SK9nVv1CoB+SM6Ob0+8jhsyR9XRTeAN9UF+JrP6jR+GogWRbLQkfDzNj6iS6kh3gNWW+Jfj0G0Pc8dW7B9PXd3XOhumvjASSzsuJzSYmsaUnmJ5+nh64jf387M/v0gZOhMh623iCLhcpZ/R2WsQDdOP6/60WelF5B5PeL3FTx0qeLn4ur0DkF7SmyOesoYsNyfgxhchrAFsnwxKMKhle6s8zKqg00bGj3jS6Cs6b+zLN/0P5RwfCWCS5ZgtfOd7HwlIRgVx7K6R9vrNX7+gset/ee35eC7uE9QlCCqtkqrXuNCUHNjK6Aw9mHR9FGJFVLFh9yjVOIaqQzsT1zKWzAApaQH5T3Uo/tzTyYC+09xaIts/AkjXCFXLks2SeJC6iUDhwYKi3NtAfZv+4gNvroK8FIPgyw9YBFJNYbzrZoIny2owox3772SvxCkR2UQTZAboOcQ0uaKfc7oy6Dy7V+CUfMgJPD1fFZh
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(451199021)(52536014)(122000001)(26005)(6506007)(9686003)(5660300002)(38070700005)(8936002)(8676002)(19627405001)(83380400001)(44832011)(2906002)(4744005)(38100700002)(6916009)(91956017)(66556008)(66446008)(66946007)(76116006)(66476007)(64756008)(498600001)(86362001)(55016003)(33656002)(186003)(7696005)(40140700001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?EfpPXZ4tquPOdbM9pVvljwawOr1p40Bcp0dEJYNQB38288pv+6yNbTg11g?=
 =?iso-8859-1?Q?a2InQEZnikkK2nC4HDIMqeF9ZQa6nkZQD/yYthHDTWzMM/5rav9akK3G34?=
 =?iso-8859-1?Q?1FuOZQf4cwvyCEJKhRzs8ny8lnLlP/jYams/dBz8FmjUbjZDoJ/DKmcXsH?=
 =?iso-8859-1?Q?84NR9hOzidPp6L+c9mpQY6F2bDHDBd/Dgy9cVN34SKfEvIWCmUWs9RZM+O?=
 =?iso-8859-1?Q?0DXswvcf106tNuXe4S3ndSnQfTjHhGiktHqyxwWnCcz9eU+nv0KQMGxvDv?=
 =?iso-8859-1?Q?ALKQ0mFjQZfitg8IgljCCRwT558yx3Q2uifcSOg/gW8/zbuztw0VBdtIzI?=
 =?iso-8859-1?Q?Futc791Q62IMM81+DGEHve1zhQ5h3BguH6zc4G++piYVeBqC3g1oFCRKvs?=
 =?iso-8859-1?Q?UUeZC7X0zHdrt/spaH/FjVYEJ9b9H00VMcRorkYaUnR2PekAVKBZOsPChd?=
 =?iso-8859-1?Q?H3/YDZY3taNpKttPQgpeE2+WRqp6HwUpYwvnEiako3PXeG4db3oi6C11ol?=
 =?iso-8859-1?Q?59OOUWPtDlU0qSBlORzsvCDSHnqSQBoCtBFqZXTeb7EBXhpjwiU3+Z2DNm?=
 =?iso-8859-1?Q?XZI00brtuLuD2tj1A+qfp7LQvZKsoHT8qNVALfFcOEgclHiX8U+Xv8RQpe?=
 =?iso-8859-1?Q?HGbdanCJi/Uo2tvuGYX2ZTZC5CxajO+Uwi2sqBrAAifS3o5tRe8IRQljsI?=
 =?iso-8859-1?Q?jN918Vg+s5qv6j1OYIgk8qiv3obgHLN3il429Ec9RDxMivW0w9zLfcnE/m?=
 =?iso-8859-1?Q?BcEUmn5jMH4s/0o4EUwR2qPaGK8zComL/hR57ULyni1L5JLxgLuEZAOiQ5?=
 =?iso-8859-1?Q?UZGvysTkHazsalq0pdAnAfdiG/CuIZ9DYpDZ9WkpfOL/f1ZwfrjtmfMRnt?=
 =?iso-8859-1?Q?1SARsdOGO1Ll2vGt1SugWYJQLq3zCA1v+xZQTjgvQ0L0k3iFDV4eoAjBxl?=
 =?iso-8859-1?Q?bZ94kcQyQUm1+CU9mYfT1wSPkp5NYnMxwT6SLHFVhLiKeDaEB4+ppjoS0e?=
 =?iso-8859-1?Q?qsf1SoPtBkiQdZXXYA1oxuw6i4Y3r+yRAPzjX3m/kfOoN9bjoh9Yj7y3RC?=
 =?iso-8859-1?Q?XADLHLfEjW+G/456fRzu8tNrNvTTpaW5mTE7l78gqfi0tPtgxS3YvC5xqf?=
 =?iso-8859-1?Q?dAik3q5iTzioodvN736F3XZ7uCLcy+x/1TIZEJrWPQFzjN1HIWfHGnXBSb?=
 =?iso-8859-1?Q?gu7wDg5mk7txlZnT0iEFwVZiqe5OD/HgOEi0UIj3wDC6Ceu6i6K5Ooeoo3?=
 =?iso-8859-1?Q?9eJ62ZgFaJI3hbHDO1ibtYNLa1EllmRKwueZdKxb+XH/4DfbVSJMycctVJ?=
 =?iso-8859-1?Q?wbiv7jN85yZrofbt+ak8Z3Ra63v6GBw2N37BbmNvqRGcmyW8QXP+5RP+cP?=
 =?iso-8859-1?Q?ikgfavwu6saFnMwbqDzBcEbsT6ws0k3oVXtN5ygIVtSCrhlF/GYadkAPi3?=
 =?iso-8859-1?Q?vamZbXOfpN3X7DiuH+hzOpuKLXaF+sGWejGBKGsb7VEZB+b5NzCKyliIgL?=
 =?iso-8859-1?Q?CHyo4W2wXVxT2sk/DzW7hagVgJ/cb1HroPy6ueMjTQUuU128YyKwMrlG2p?=
 =?iso-8859-1?Q?oidsSGXgH3bpNxQxfqldpp1o0jTQe/XRcYVxCTcYYXTSCPCbhlnYujowtS?=
 =?iso-8859-1?Q?LkstsNDtZL3T0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa1c04ed-0e68-4214-78b7-08db46a60a97
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2023 22:31:55.8801
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR09MB6345
Message-ID-Hash: QUKAXOUXI6N6LFTHFPBKR72IKFFNXBCM
X-Message-ID-Hash: QUKAXOUXI6N6LFTHFPBKR72IKFFNXBCM
X-MailFrom: prvs=47365bbe3=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VO35SS6LMD45VUWBQHM3NYXKYKCAOSIN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1329448579582703511=="

--===============1329448579582703511==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91268F4BF0C27FE2E41A1846EC659SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91268F4BF0C27FE2E41A1846EC659SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

How much would work would it take to allow two different PCs to each contro=
l one of the channels on the X310?  Would the work be mostly on the host (s=
oftware) side, or will some FPGA work be required?   There is no issue on t=
he RX side (with the recent UHD updates to support streaming to arbitrary I=
P).  The issue is with control (e.g. set sample rate) and with TX flow cont=
rol.  One use case would be two independent modems each processing the full=
 200 Msps from the separate 10 GbE ports.  I guess one could always just bu=
y another USRP but it seems wasteful/inelegant.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB91268F4BF0C27FE2E41A1846EC659SJ0PR09MB9126namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
How much would work would it take to allow two different PCs to each contro=
l one of the channels on the X310?&nbsp; Would the work be mostly on the ho=
st (software) side, or will some FPGA work be required?&nbsp; &nbsp;There i=
s no issue on the RX side (with the recent UHD
 updates to support streaming to arbitrary IP).&nbsp; The issue is with con=
trol (e.g. set sample rate) and with TX flow control.&nbsp; One use case wo=
uld be two independent modems each processing the full 200 Msps from the se=
parate 10 GbE ports.&nbsp; I guess one could always
 just buy another USRP but it seems wasteful/inelegant.</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); backgr=
ound-color: rgb(255, 255, 255);">
<p><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: b=
lack;"><span id=3D"ms-rterangepaste-start"></span><span style=3D"font-famil=
y: Arial, sans-serif; font-size: 13.33px; color: rgb(0, 0, 0);">___________=
_____________</span><span id=3D"ms-rterangepaste-end"></span><br>
</span></p>
<p><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: b=
lack;">Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB91268F4BF0C27FE2E41A1846EC659SJ0PR09MB9126namp_--

--===============1329448579582703511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1329448579582703511==--
