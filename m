Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1DCA10C79
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2025 17:40:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BED43385A6F
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2025 11:40:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736872847; bh=aAO1CVpqp5un27zqfTa2/yoegV8BGYZgUfX4Hh046tU=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=A9eHnAyEyCHk+JdPD1IlUNInuOnPtpaiUpIKK0EYIb1YN5k0nzY1vXjZQWwBGsu5g
	 bm/6T8fbzeFQWVTfLaYFh/Kn3/nBktj5Qkwf5H7xhWEzo5RUwxikd62Y+nz9SkqeZy
	 8+A1lapel+Z0+X8iIwnOwyDBn30+e0rxTNsR7Xuf0maLaVqt1xo8QOrZ6plr9zxZgL
	 EVuzmH6cut6Lqg0BygSPGFgQeYK4l9V07JQYArvQQfOop9UykmGnlejs5uMLCkM9sm
	 iEP4xGTTsWLOW23xXm1xHdht+8VRlsY1JPj2nFxLE80iIlJJMtPZ7kETP+I6oRWIdV
	 a/lPSWkzY/pmQ==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id ED9863862E9
	for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2025 11:40:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="ldAlXcyB";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="UrhFSO/X";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1736872807; x=1768408807;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=nkkoP98TWzijZYJulnS6BIMxL+rqljWA+ARBt7mzMw0=;
  b=ldAlXcyB93nA4c3+k3DuL6owxsnTNn96D6Gb0hdEz1yfhed4WRl1aOU0
   1x+rsI++QpBOjv3lN4ILG1HrrHcS6MH4rY7gJ/G33pUTzFfAY10SW1ACm
   box+RHdRC2H/qeHMtcRp4cBUfRg14EgMl+snELpR0r6NppqCCRgt1cMyO
   g=;
X-CSE-ConnectionGUID: amzNGFXDTHGOjmYkyyB+4A==
X-CSE-MsgGUID: 8MglefSLTdqQ/R9WTzkNUQ==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="2074088"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600";
   d="scan'208,217";a="2074088"
X-IPAS-Result: =?us-ascii?q?A2EQAQBakoZnjhIOXShagQmBU4FBgQN7gWauCXmFXYElA?=
 =?us-ascii?q?1YPAQEBAQEBAQEBBwJEBAEBAwSFAAKKdic0CQ4BAgQBAQEBAwIDAQEBAQEBA?=
 =?us-ascii?q?QEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4V7DYQHgSYBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEdAjWBHAEBNwERAX8nBA4NgnmCHQ0HAzG0AIE0gQGCDAEBBgQE2x4YYYFkC?=
 =?us-ascii?q?YFIg3uBcIJjASqBMok8gVVEgRVCh0ArhBOCDSKCN4FFg26GVJgcgUciAyYzL?=
 =?us-ascii?q?AFVExcLBwVhgRIDgRQ0gRh7OYINaUk3Ag0CNYIefIIrhFyER4RVhWKCFIIRh?=
 =?us-ascii?q?BMdQAMLbT03FBsFBIE1BZo0AQcDEIEXhXs2gXWiI4F7oTs0B4QeBYFYBgygD?=
 =?us-ascii?q?ReqUy6HZJBqo16FJQIEAgQFAg8IgWdogS4zGjCDKlIZD446g2G+CXg8AgcLA?=
 =?us-ascii?q?QEDCY8ugX8BAQ?=
IronPort-PHdr: A9a23:JQPlRRVqW86EF2rIpLFYX3R5KX/V8K35AWYlg6HPw5pCcaWmqpLlO
 kGXpfBgl0TAUoiT7fVYw/HXvKbtVS1lg96BvXkOfYYKW0oDjsMbzAAlCdSOXEv8KvOiZicmH
 cNEAVli+XzzMUVcFMvkIVPIpXjn5DMIHVP4LwUmTtk=
IronPort-Data: A9a23:fwKMjqD7bk3rlxVW/7zjw5YqxClBgxIJ4kV8jS/XYbTApGgghmdVz
 2FNXGzUPP2Na2b3edFxbY7nphwEuJ+AnIVnTANkpHpgZkwRpJueD7x1DKtR0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC+U/1WlTGhSAljvjVLlbEILeZfHg3HEk8E39JZStLw4YRmpRvjcWyHzSDs
 Nbzp9y3EFK+0laYCEpMg064gE0p5a6aVA8w5ARkOKgS5QOGzRH5MbpGTU2PByqgKmVrNrPiL
 wrz5OnR1n/U+R4rFuSknt7TGqHdauO60aCm0xK6aoD66vRwjnVaPpUTbZLwXXxqZwChxLid/
 v0Q7MboEV9B0prkw4zxWzEAe8130DYvFLXveRBTuuTLp6HKnueFL1yDwyjaMKVBktubD12i+
 tQRLSIrQT6zq96W75W5T9hvl9UJb5XCadZ3VnFIlVk1DN4daMH7ef2bzuIAhG12gd1SF/HDY
 cZfcSBocBnLfxxIPBEQFY46m+CrwHL4dlW0qnrJ/exmuC6KkEoogNABM/KMEjCObchIkUueq
 yTJ5W3oHBwAHNWS0z3D9Wij7gPKtXmjB95KRO3QGvhC0HicwmEdMzkqWUKC5sPotXKsWPRiE
 hlBksYphfNprhD0JjXnZDWlu2Sc+wMHVsBLO+k78x2WjKfI/xuCQGMDS1Z8hMcOscY3QXkx0
 UKVn9jkAyB1ubmIUnuP8q/N8mvrYXBMfSkFeDMOShYD75/7uoYvgxnTT9FlVqmoktnyHjK2y
 DePxMQju1kNpccOxYOU02DrvxKDgZrMfw0k9y+UAkvwu2uVe7WZT4Cv7FHa69NJI4CYUkSNs
 RA4dy62vLBm4XalxHzlfQkdIIxF8cppJ9E1vLKCN5wo9jDo4Hm+YYBb7TdiPk5tL90NazvxO
 RCL4FsJvc8VO2a2Z6hqZY73E94t0aXrCdXiULbTc8ZKZZ9yMgSA+UmChHJ8PUizzCDAcolmY
 /93lPpA615GUsyLKxLqHI8gPUcDnHxW+I8qbcmTI+6b+bSffmWJbrwOLUGDaOs0hIvd/16Lr
 IcEb5rRkkkBOAEbXsUx2d5CRbztBShrba0aV+QJKrHeSuabMD1/VKKJne19E2Cbt/gJyb6Zp
 RlRpXO0OHKk3iebdm1mm1hmabj1Wo14o25zNis2JT6VN4sLMO6SAFMkX8JvJ9EPrbU7pdYtF
 qVtU5vaXpxnFG+dkxxDNsaVkWCXXEjx7e54F3b/OGBnF3OhLiSVkuLZkvzHrnBUUXTo6Ztm/
 tVNFGrzGPI+euirN+6OANrH8r97lSF1dD5aN6cQHuRuRQ==
IronPort-HdrOrdr: A9a23:cLTQ86nFmIq+fgn6bcjvLsh4DxnpDfO1imdD5ihNYBxZY6Wkfp
 +V8cjzhCWftN9OYhodcIi7SdC9qXO1z+8X3WBjB8bbYOCGghrgEGgG1+ffKlLbakrDH4JmtJ
 uIEJIOQOEYb2IK6/oSiTPQe7lP/DDtytHLuQ6q9QYIcegcUdAE0+4WMGamO3wzYDMDKYsyFZ
 Ka6MYCjSGnY24rYsOyAWRAd/TfpvXQ/aiWKyIuNloC0k2jnDmo4Ln1H1yzxREFSQ5Cxr8k7C
 zsjxH53KO+qPu2oyWsmlM7rq4m1OcJ+OEzSvBkufJlawkEvzzYK7iJFYfy/Azd69vfk2rC2O
 O82SvIef4DoE85N1vF3ScE12TboUsTwm6nxlmCjXT5p8vlADo8FspanIpcNgDU8kw6obhHod
 Z2Nk+ixuhq5Cn77VHAzsmNUwsvmlu/oHIkn+JWh3tDUZEGYLsUqYAE5ktaHJoJASq/sekcYZ
 9TJdCZ4OwTfUKRbnjfsGUqyNuwXm4rFhPDRkQZoMSa3zVfgXg8xUoFw84UmGsG6fsGOu55zv
 WBNr4tmKBFT8cQY644DOAdQdGvAmiIWh7IOHL6GyWVKEjGAQO8l3fa2sRF2AjxQu128HIbou
 W+bG9l
X-Talos-CUID: 9a23:VUgFImEJj43Cs+HFqmJu8VwyNe4VXkH941DSJn67GHdDC+G8HAo=
X-Talos-MUID: 9a23:a8WArQn9ap5ycRKf//gzdnoyEchs7qqVLHwBiKxBgZi7CT5zHQqk2WE=
Received: from mail-southcentralusazlp17010018.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.18])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2025 08:40:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UhOMLaq3xH4wsspP2ZWzu34fiq6U+esxMtIP36bEDzQJA+TPgN2m4e7JFhdkpt7k7YgIVSLkvDWqYTmfoy1VcXU7NevP0yv8U7pEnM02lRMdapBLgCx9Fxd03v/3uW6WlUuN5/wrq2yhgfm9Yc62yldIALeiQr75+Bcg0CBqy5ne4c4PaoHrlNaPLTNgw4+kB+0IJFbNlqcWV6wCHnNUJGh0Bxxu/Sk3MhQ33Hy4hEkdVFq02CIwr90FbPWNiHdMzxNAmVqs0zxM35eglMbbyi29MWUcoGnUmhfwU5/G1Ss0KNaeBNdyqOJ+ARASMnK/eUT8rNy3J6QXx2kQaUCwrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/JBTQPADrtR8ejUVlgtu5A9rvmMu5N5ABJ3A/6TvzsU=;
 b=XF24dB9EGWK7zWD6BclgYcAZQX+m4dJcMAK8u+WEkAYYJUygzNqGGB15AbzN+rbosqZd2XvLXL1YmvoKCKtWPJd3wYHasZ7dHN5dRdWpFcNNHatn59c5IWFF6Rf/yAiANGfrQ2MHHBWr2wsthlod/Bh1pq61hJgYXg3l2lyNXaylGm2GOg7eXpxKFpun+2xPliUDhDQGf93PlnStr0kmDI+Yz46nQyshtl6ju3ruQXV6/DlhoqDIJZoW58cKFsS0d6ktYo03dRHN3hqSmEVUC9cSIcjn0TIt3+CFfYK9JZ/S7IN884rbiTB/kUx6moUSaK3vA1UIlw0shfBUcX3mPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/JBTQPADrtR8ejUVlgtu5A9rvmMu5N5ABJ3A/6TvzsU=;
 b=UrhFSO/XTrdwJWaivYfP1uxZbIJPaEfoy7sUKqj02NkD/Ksz14bq1fQwxZDzcnU0wHCLmxkRHqZkOvxP65oUheBPS6YPtpdHfjH3wXh4JfjbI9CLg2uDoT99Es9dMuQ2Tw54JCQq8qcMCsrxIxNbVXaxwV4F/jFVGBrRRn4LPR4=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB11400.namprd09.prod.outlook.com (2603:10b6:806:36d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Tue, 14 Jan
 2025 16:40:02 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 16:40:02 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Incorrect disk throughput measurement in rx_samples_to_file
Thread-Index: AQHbZqKS9hO65HAnBEGQpknogkcxiQ==
Date: Tue, 14 Jan 2025 16:40:02 +0000
Message-ID: 
 <SJ0PR09MB912651AC1B56D9DD2F202F34EC182@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB11400:EE_
x-ms-office365-filtering-correlation-id: 83e23507-1064-46b1-b509-08dd34ba1798
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?WOsmizyJU0MoopAzbB2P6UAMdYU/vUUKXJAW8WzPRKqvEVT1mVIPZHlYN+?=
 =?iso-8859-1?Q?co4/R+77UOBEa7Lr2uY1g85mdoWLugefR6fqqi/Kd+OMz5iqlNis6jnktH?=
 =?iso-8859-1?Q?8rNR66XEvBdrTnlTOXw08ynG3uWIxy++I8CjdgHZVKnqXJ+wctc7NlPXCU?=
 =?iso-8859-1?Q?yxjpesQHhQFKGeC4s6rDyA4QehzIgHnUzR32U7e2FxH4to+igtq6PAxJZi?=
 =?iso-8859-1?Q?WC83pDV04uZZzuFDnlLEHBKRIeXLF5rsVP0laGQJsheDyN1/L71fHKmvGd?=
 =?iso-8859-1?Q?cw7r3cvQIFCcVbXQOX/tcHyTxnaUahGLj5AsWrJyAmTz89XFMbBxCz6fNE?=
 =?iso-8859-1?Q?S8SxhbnYar5FzwWecIsW93OyEIayhUzv+/PlAgcUhOUV3uBGKIApabk5es?=
 =?iso-8859-1?Q?+If7Bk52hZXX+6Bm6pNTzyYfYqH2+XFjChCHCHqSxwuxhD94OSZ7Uflmn1?=
 =?iso-8859-1?Q?/uPg312WcCsxr725lj39c8D0lGQ9ceFoFbdTL9Y/f1xES2bRJhDVxodxow?=
 =?iso-8859-1?Q?oJ9dik2cUOaiGsPiV8mLAqDx75PXoTKy64vmXIJQEjIk+nbYUx/oP1aW/S?=
 =?iso-8859-1?Q?apNmHgWGbL+9lV8exjfPOg30Yg4ARmSv7fS1vEjA0w4D9sDno13VXH1XEs?=
 =?iso-8859-1?Q?XyNROD5azt7fNmgwI0zEd2/z4sjMKr7bdBJR+DhH07b3EoarjoF8uQYE/2?=
 =?iso-8859-1?Q?2xbcUfbPNRXzmTQFkp4tiFYLOS5NXtnvS23ictBmrGb708s4ZpzULmUzqb?=
 =?iso-8859-1?Q?0kZSEKSiVcLwZ1jNvVq14a1nPOW0eUsLoPAJKHMQpbWq6Ywuht5IUKfHxR?=
 =?iso-8859-1?Q?lLini3M0jaYBW58n9KIFKuSn+dTiFbndHp7W6bpbljGRGhP9wSBi2hXgxy?=
 =?iso-8859-1?Q?c86xvWmKDsvgUjq2kULedHEwNA/cHoT5hwDN1uLLgvLYEjRx43aykuzJvV?=
 =?iso-8859-1?Q?J1dZ07O3ihZ+Iqx4lFH5SNRDzoTFPwV99uxsZTev1U9KfqweEVLeBcUj/P?=
 =?iso-8859-1?Q?UgZNWsBFTKp1jou30mCMV67ZbjcHk+qA3IV6WT/WkKKtmJua7iFMG9a/vf?=
 =?iso-8859-1?Q?GRoOq1VjAoEUMiWFGTJmevGzmLz9RUeG/DjAKHd2/KXTc/LebLE6kr8lqq?=
 =?iso-8859-1?Q?ln2JBKVQjrPEDbGyDHGH07MPiBRgubzKf0lGosaURwTvRcJIH3Dy5xmx96?=
 =?iso-8859-1?Q?wC1cJohEHJLCvmoGsBQIyllIFUQz6Yw7U62LVkWlerSHKli4ks5cflynG5?=
 =?iso-8859-1?Q?hsOIWsQ/XGBemowntIO4cmzF9jyUWqs5XPSEWGSMCCKcFv/Z14Bldx7hgb?=
 =?iso-8859-1?Q?ZOJ6TnXoDTxW8lo2EX1LDEYWNmq6lMIL369nMDCL4CskmxQwsbIO21xVjJ?=
 =?iso-8859-1?Q?/QP9y1IncbOsN/31Axu4ULavsGhPLqNjptVclqpAPlU5G/itvtG4e6IbvC?=
 =?iso-8859-1?Q?jXzK+JOn7ahBlHX7Yvt4OzlEox9mTevw41rxBRfiEAAqY8qbjo9oTrnDzG?=
 =?iso-8859-1?Q?yUOx8u2hdq1Pr9w5ZjAz2J?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?rjNzVn5pRpkyYersrzGBno/qJWpi6xeFA0Rw9hQmExOTVbMfMWUboT/1ZI?=
 =?iso-8859-1?Q?59KtQw7aWRir3qgP+JJrSzwTDHFzUwkMsU58c9KNLd8neyzO4PVLDDne9Y?=
 =?iso-8859-1?Q?HNiOAGPMhJcECwQE/7VVtDQdx199J7t59kOAKRLb6j2fpA9cKmdjOYs9Uw?=
 =?iso-8859-1?Q?Y0e2szyCDTbkWeKHmIOTnqupGGtlHU9JyDvs6cJKq3ajOlbcGFu4msD8Ny?=
 =?iso-8859-1?Q?OdUn/hbqvjtiodAkMqxMn59JumuKWkxT0FZJ8qCP7uwor/krzy3WNAae7S?=
 =?iso-8859-1?Q?jLQLIerg1UduKF91DGaSdUauMI56dgljeCt2Dl/nMuWNYXKp4sRSq662kD?=
 =?iso-8859-1?Q?roUM5tIGaBlFIjSsnPpDbOUcNk9aNxuAYxIG5DcHxWkPqXHsHdZoYBr1oL?=
 =?iso-8859-1?Q?9Fe6m7XoNOYv31Tlm1O1J5Dc9J01ms9Qmtf5YsGzpMO31NuzQPNy/cxEmX?=
 =?iso-8859-1?Q?kGQJCx2vlQmkYVK2Syjz9loz76cj8o3N/BSPUcMsNhZ3xVVd/BBcPgiLnA?=
 =?iso-8859-1?Q?5TcO4MXQzEqJbPUXBi0lMbJo2wTAjJUJOcrOW7LL6zA5JKJ5J5zQNfEyfp?=
 =?iso-8859-1?Q?ECbM4N3ECw5El1xAm4jEMoXLRFHaGfeqHxyq5kbHo/4U/Qum3ZGMKj260G?=
 =?iso-8859-1?Q?VM/YG7YaHiIk3NDrRZHf4GnQtSwUtLw78iwNHm9IJfMSrQxyBcFqhvWdCa?=
 =?iso-8859-1?Q?J6YydHSe1Z1Ru03qYn5GNJhM0FD3wpRd9PN9uhJ7oki4wj20O+VrkLtbOC?=
 =?iso-8859-1?Q?aLHfiJ3jdN2jW1icmInLSEZuMqgFVQ8NGhiaBEJOenZ6SOVjm2omzAP8ic?=
 =?iso-8859-1?Q?sG0i1ohKcyiLChEbD+Ng0qFYHmZJdCBwmdUF3wfd+hndCcbUB9Wdszf4AD?=
 =?iso-8859-1?Q?VtWE/UUHrRLZJuXF7Kxa+w6PWridKp1jtMA9kardFZ9PLdr91P5Iokrzib?=
 =?iso-8859-1?Q?lM6Ddc+6OYAIRwN8h0x76x/yLVwQBwavnLxRxZtDWPceeyUE/IRGc70i+f?=
 =?iso-8859-1?Q?92AhjTp2gtcfYl7rTp5wcnGrSxu+POlBnjSapzltbGMfYKij9PwqkjjSxe?=
 =?iso-8859-1?Q?FQWV5SeUvBShMihzh2WFbsQplHR8GKQHTVpuB8TtGWw1FsH0f5eCS8UtMC?=
 =?iso-8859-1?Q?omxM/1vfClSuygVygJHnSHkVpUbg661vj9jIao4D/qELHuZ40gbQAtK8mM?=
 =?iso-8859-1?Q?PsWNNn/cfrZubpKWAV+rYbt1WrpzmXjTcPuiWYGOQZZFPK55EtNY+bNEPv?=
 =?iso-8859-1?Q?xCu92McXiVwTXS0d7+Ips6pKWV14MznPIlE3w1BsxEo7sefIGGvjHBbCtm?=
 =?iso-8859-1?Q?08nOQGAtcaG9NG5srKTxRcMhswc68i88uPC8AARoxoFxba54NJYSGf4jR3?=
 =?iso-8859-1?Q?pYZrvigfFBJ8bMZGoh6QgSCh2VazPDatlTiuxvEppjsjLGEDl736UN5pvO?=
 =?iso-8859-1?Q?l8DIPMQvhByqULuWsoazv3QR4oVrEPJi5Of4+UxOeuBwXelebeyz85yyTz?=
 =?iso-8859-1?Q?2E37kOcOEPYRm3RaLI/PrPvI8XUyTLHyqhov8KH71UXsYruBexds0V7oi4?=
 =?iso-8859-1?Q?54biu7i8fIJXMLmXbifr3asza4nfEiGDiU5Zfbm3+3p/CXJq3MKZ0NDrkT?=
 =?iso-8859-1?Q?vA6wtZj/9zxGw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83e23507-1064-46b1-b509-08dd34ba1798
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 16:40:02.0298
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB11400
Message-ID-Hash: BGTH5BIVAE4MCECTWDG2WIIYP5WBMG23
X-Message-ID-Hash: BGTH5BIVAE4MCECTWDG2WIIYP5WBMG23
X-MailFrom: prvs=102a985eb=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Terry Ferrett <terry.ferrett@aero.org>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Incorrect disk throughput measurement in rx_samples_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WF3LJHZXMDSYJKGML3UAC3OO4R7CZC6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7381759367433317937=="

--===============7381759367433317937==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912651AC1B56D9DD2F202F34EC182SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912651AC1B56D9DD2F202F34EC182SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

The rx_samples_to_file example uses 'dd' to estimate disk throughput. It is=
 not done correctly.  The code below uses /dev/random as the data source.  =
This was OK for old SATA drives, but for fast NMVE drives the rate is limit=
ed by the random number generator (which maxes out at around 1 GB/s on a mo=
dern machine).  Therefore the example incorrectly reports that the disk thr=
oughput is too low if the expected write rate is > 1 GB/s (well within mode=
rn drives).  I suggest replacing /dev/random with /dev/zero.

std::string disk_check_proc_str =3D
        "dd if=3D/dev/random of=3D" + temp_file.native()
        + " bs=3D" + std::to_string(samps_per_buff * channel_count * sample=
_type_size)
        + " count=3D100";


--_000_SJ0PR09MB912651AC1B56D9DD2F202F34EC182SJ0PR09MB9126namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
The rx_samples_to_file example uses 'dd' to estimate disk throughput. It is=
 not done correctly.&nbsp; The code below uses /dev/random as the data sour=
ce.&nbsp; This was OK for old SATA drives, but for fast NMVE drives the rat=
e is limited by the random number generator
 (which maxes out at around 1 GB/s on a modern machine).&nbsp; Therefore th=
e example incorrectly reports that the disk throughput is too low if the ex=
pected write rate is &gt; 1 GB/s (well within modern drives).&nbsp; I sugge=
st replacing /dev/random with /dev/zero.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<table cellspacing=3D"0" cellpadding=3D"0" style=3D"text-align: left; line-=
height: 20px; border-radius: 0px; margin: 0px; width: 675.583px; height: au=
to; min-height: inherit; table-layout: auto; color: rgb(51, 51, 51); box-si=
zing: border-box; border-collapse: collapse; border-spacing: 0px;">
<tbody>
<tr style=3D"background-color: initial;">
<td style=3D"width: 660.583px; height: auto; text-align: left; line-height:=
 20px; border-radius: 0px; background-color: initial; padding-left: 15px; v=
ertical-align: top; min-height: inherit;">
<div style=3D"margin: 15px 0px 0px; padding-bottom: 15px; padding-left: 0em=
; border-radius: 0px; min-height: inherit;">
<div style=3D"text-align: left; line-height: 20px; white-space: nowrap; mar=
gin: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-he=
ight: inherit; font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;,=
 &quot;Courier New&quot;, Courier, monospace; font-size: 12pt; color: rgb(0=
, 0, 0);">
<code style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;,=
 &quot;Courier New&quot;, Courier, monospace;">std::string disk_check_proc_=
str =3D</code></div>
<div style=3D"text-align: left; line-height: 20px; white-space: nowrap; mar=
gin: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-he=
ight: inherit; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;,=
 &quot;Courier New&quot;, Courier, monospace;"><code style=3D"font-family: =
Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Co=
urier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;dd if=
=3D/dev/random of=3D&quot;</code></span><span style=3D"font-family: Aptos, =
Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;">&=
nbsp;</span><span style=3D"font-family: Consolas, &quot;Bitstream Vera Sans=
 Mono&quot;, &quot;Courier New&quot;, Courier, monospace;"><code style=3D"f=
ont-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier N=
ew&quot;, Courier, monospace;">+
 temp_file.</code><b><code style=3D"font-family: Consolas, &quot;Bitstream =
Vera Sans Mono&quot;, &quot;Courier New&quot;, Courier, monospace;">native<=
/code></b><code style=3D"font-family: Consolas, &quot;Bitstream Vera Sans M=
ono&quot;, &quot;Courier New&quot;, Courier, monospace;">()</code></span></=
div>
<div style=3D"text-align: left; line-height: 20px; white-space: nowrap; mar=
gin: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-he=
ight: inherit; font-size: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;,=
 &quot;Courier New&quot;, Courier, monospace;"><code style=3D"font-family: =
Consolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Co=
urier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +&nbsp;&quot;=
 bs=3D&quot;</code></span><span style=3D"font-family: Aptos, Aptos_Embedded=
Font, Aptos_MSFontService, Calibri, Helvetica, sans-serif;">&nbsp;</span><s=
pan style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &=
quot;Courier New&quot;, Courier, monospace;"><code style=3D"font-family: Co=
nsolas, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, Cour=
ier, monospace;">+
 std::to_string(samps_per_buff * channel_count * sample_type_size)</code></=
span></div>
<div style=3D"text-align: left; line-height: 20px; white-space: nowrap; mar=
gin: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-he=
ight: inherit; font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;,=
 &quot;Courier New&quot;, Courier, monospace; font-size: 12pt; color: rgb(0=
, 0, 0);">
<code style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;,=
 &quot;Courier New&quot;, Courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; +&nbsp;&quot; count=3D100&quot;;</code></div>
</div>
</td>
</tr>
</tbody>
</table>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_SJ0PR09MB912651AC1B56D9DD2F202F34EC182SJ0PR09MB9126namp_--

--===============7381759367433317937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7381759367433317937==--
