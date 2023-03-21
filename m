Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A6D6C3D72
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 23:12:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F8DF384650
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 18:12:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679436726; bh=f6bQRcHpgpsRBH5rIA9gDV6H55p1w1jcLYvC/flytGs=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vBD3i7ey7bYFFKCsqWfLliQFPMKQaGUAJetGqBLb9orcYQRww7myYWdzro+prd0Oz
	 cPFRSAohg4gPQLt91UqJCC3flMia7xC8ceymRhY04KbesEJbp6qu0wDCSvEgJsOV9w
	 NMd1Wtb5OFUJ76t4wWHTeX/qjXxBGjYBjbIIKBjgBIugReWSg/0Fr9keljLnXUjOZ/
	 wLdGHJI51np1JTxksRghXOFZa4ykb/KmAiJHwyAC9qTcYXEEvU1LJR9dAuwUKx7S2z
	 lCy2JAZQ5mlnp4AQqfKRqXTsCP6VgA9zetFMEuvn2qF3vvNS4I51Ub4k74LcsDW8o2
	 Btrc7xXVOm6Bw==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id D85D3380CB3
	for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 18:11:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="sG1raDLy";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="T7XBnBTQ";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1679436677; x=1710972677;
  h=from:to:subject:date:message-id:mime-version;
  bh=GVoqQv9gxHd48BUGKadpZQ21pwnw2AwwBCADJnuTs2U=;
  b=sG1raDLypT7b2hWkFGHcsNo4Bh76FtRebVynL7mGxdC6OcdVBNwfTBUh
   a0MR7H1ei2OO0MN/XUOyJcxTGVF5GdfVvr4+5d3S6N46IUglKi02L0Unv
   aakGAzuYYDT9PozyoBiWMJPKzXddNx33EUE91s8d7HdmrIIfXMI5T17Nl
   I=;
x-SBRS: 5.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="237013"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400";
   d="scan'208,217";a="237013"
X-IPAS-Result: =?us-ascii?q?A2ETAQAkKxpkmGlAL2hXA4EJgU+BK4EDcwKBWq0MhHeBV?=
 =?us-ascii?q?oElAxg+DwEBAQEBAQEBAQcCOwkEAQEDBIR+AoU3JjQJDgECBAEBAQEDAgMBA?=
 =?us-ascii?q?QEBAQEDAQEBBQEBAQEBBwMBAgIQAQEBAQEBAQEVCRkFDhAFIoVoDYNWSgM7A?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQJBRwwjASNCA?=
 =?us-ascii?q?QE4EQGBACcEG4J2AYIVDQYDMRMGsjKBNIEBgggBAQYEBIE4AZsUGF2BXgMGg?=
 =?us-ascii?q?UCDTIN7HlhdiFCBVUSBFUOGBwECgWErGoNKgi6YL2qBNHWBIA6BPYEEAgkCE?=
 =?us-ascii?q?WuBEghrgX1BAg1lCw5vgUsCgVwHNgNEHUADC3U/NRQgBQRVgRkkBQMLFSpHB?=
 =?us-ascii?q?Ag5BlARAggPEg8sQw5CNzQTBoEGCw4RA0+BRwRxgRYKAk+dY2KVQQWOC4F6j?=
 =?us-ascii?q?C2TeDQHg32BUwYMiGqWUxapP5dqoi0rhRkCBAIEBQIOCIFjghYzGjCDKlIZD?=
 =?us-ascii?q?445g1mPeXUCOQIHCwEBAwmLQwEB?=
IronPort-PHdr: A9a23:UjTTThWN1bBecjN1CtoCFehjv2LV8K35AWYlg6HPw5pCcaWmqpLlO
 kGXpfBgl0TAUoiT7fVYw/HXvKbtVS1lg96BvXkOfYYKW0oDjsMbzAAlCdSOXEv8KvOiZicmH
 cNEAVli+XzzMUVcFMvkIVPIpXjn5DMIHVP4LwUmTtk=
IronPort-Data: A9a23:yJEp66k56jWHtTbTDR2ygA3o5gw+JkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIcCzyOOf7eNGvxf4x3Pt609k0H6MXTmtBhQQY4rSswHi4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8yckjclkYZKlULCZZEidfSc9FGF7z0sLd9cR2uZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrbwP9UlKm06WNwUmAWP6gR5weFzSBNVvrzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TtEF1xZvWkdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWeG5fgLmkH4Ojb8uT0984uaVyi+
 8D0JxhURzOuu+m0z4idYctWgfo5LMK6DdM27yQIITHxVZ7KQLjsaI6Sv5py+G91gcpDW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfujCPilAuluaxdoONJ7RmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOfjqaYz2zV/wEQJJwYcThiUisKzpVKyX915O
 lNN2BAx+P1aGEuDFYCmBEXh+hZopCU0RsFKC6gn8wyX0YLQ4h2FHS4JUiJcc5ots8peeNAx/
 lqAntesDzg1v7aeESiZ7u3N9W70PjUJJ2gfYyNCVREC/9TovIA0iFTIU8pnF6m2yNbyHFkc3
 gxmsgBnrpY+scUJ2J+d1nL9hAy2ppOYf14cs1C/sn2e0it1Y4usZoqN4Ffd7OpdIIvxcrVnl
 ChV8yR5xLBeZaxhhBBhU81WQ+DzuKzt3Cn0xAExT8R9q1xB7lb5JehtDCdCyFCF2yruUQPge
 FfauQpX4phYPxNGhoctOd/vU6zGIUUffOkJu9jRZ9tKJ5J1LgCM93k0YVbKhjiw1k8xjas4J
 JGXN962CmoXArhmyzzwQPoB1bgsxWY1wma7qXHHI/aPjuH2iJ29EOht3L6yggYRsPPsTOL9r
 4k3Cidy408DONASmwGOmWLpEXgELGIgGbf9oNFNe+iIL2JOQT9+WqOLmu97JdQ7xcy5c9skG
 FntCye0L3Kv1RX6xfmiMCwLhE7HAcgu8iNrZXNE0aiAgCB6ONvzhEvgS3fHVeJ+r7c7lKQco
 wgtfsSLGPNUTTrbsz0PcIPwxLGOhzz67T9iyxGNOWBlF7Y5HlSh0oa9ImPHqXdSZgLq65pWi
 +P6imvzH8FZLyw8V5m+VR5a5w7r1ZTrsLgsDxKgzxg6UBiEzbWG3ASo1a5oc51Xc0SrK/nz/
 1/+PCr0bNLl++cdmOQlT4jex2t1O4OSxnZnIlQ=
IronPort-HdrOrdr: A9a23:vqMZnKB5MSpiffvlHehOsceALOsnbusQ8zAXPh9KJCC9I/bzqy
 nxpp8mPEfP+VAssQIb6Km90ci7MAXhHPtOjbX5Uo3SODUO1FHIEGgA1/qq/9SDIVyYygc178
 4JHMZD4bbLfDtHZLPBkWyF+qEbsbu6Gc6T5dv2/jNId0VHeqtg5wB2BkKwCUttXjRLApI/Cd
 61+tdHjyDIQwVdUu2LQl0+G8TTrdzCk5zrJTQcAQQ81QWIhTS0rJbnDhmj2AsEWT8n+8ZpzY
 GFqX212kyQiYD19vbu7R6c031ioqqs9jIMPr3MtiFfEESVtu/hXvUbZ1TFhkF8nAjn0idWrD
 HBzi1QRfhb+jffeHq4rgDq3BSl2DEy62X6wVvdmnf7p9flLQhKfvapqLgpAScx0XBQzu1Uwe
 ZOxSaUppBXBRTPkGD04MXJTQhjkg6xrWA5meAegnRDWc9GAYUh2rA37QdQCtMNDSj64IcoHK
 1nC9zd/u9fdRefY2rCtmdizdSwVjA4HwuAQEIFpsuJugIm6ExR3g8d3ogSj30A/JUyR91N4P
 nFKL1hkPVUQsoffctGdZc8qAuMex3wqD73QRyvyA7cZd060lr22uHK3Ik=
Received: from mail-bl2gcc02lp2105.outbound.protection.outlook.com (HELO GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.105])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2023 15:11:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LON61sFYeLZEdeABkmwdG9XSZxEtBToVo6XNmMasY0+t5CBLBiDQTre9uG5Joi3JkwZugW/ugutjMWHwTgpXKcr5Z/hteJVY21OLxoXHj45gQEL36rsCDDogWu0mLWs0AnvJx1fYxI6oS4rJNlerJJOfSRL5Vb3aHtgEcmTNSe8/RIAuJ2GdTaZYEos7iWSu+VFwPDU+wr5gYqRJvCPswBMrHsvMQQCymdHNT8XAgrV5Xculsp2xDUTdUw1ax6Am6UYT/d35GTMj/9/+zZM3c0ZrNvX0h38/+hOgSM5y/C1lugJvKzdWsR2B1m6gUKNE+h02+9VgUm0wM6muGb6HQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X0zE6RIVwViDCqeNXOtE4PeI4NRGdf67bde9zscZ/ZY=;
 b=YIc6Kf0rldMe+sWgfo4KfXAhX1VlsW3/nwZ/8KeJL6zmC4fFQeSO1sfEYi6vy/SqFeeLlQhfeeyCrUG6qhpNjwi3M+xDu92WSJ8YovkcmVOXB3M4LUPAm5V1Du9EkR6wh1Wv6vHDlXBxGtdmXf41PFPDkLbJ2qINMRFv3oC9cT8r1dGM9Zb5/XbaWXNaiTkLB4d0dllS4kwKP2a/rwa1AIPiP/GOguUmPl3aD4kXDIOb18rHIM0wgxCeALWOhs25qUXyKgN874DU4mGTuuiDXNALzKL6DSMrRL7gxS3IeedY8sLLiUknha5B7QM1ZVOfrYd6MuOhSybqpr6UbOX7YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X0zE6RIVwViDCqeNXOtE4PeI4NRGdf67bde9zscZ/ZY=;
 b=T7XBnBTQyFdWgQYpOh3FUZyCtgg8b3wn7qgfMCN0ve60388mpau+xMCAc9HSdtLeJLV7cFZ/kdy9Yswwg4xpD8Q0FOUXfDd4brwYH9L1SoEfQ6D+yWvpv/r1E3TnlwkF6Pd+LRCDaKGaGMhkkVpk9GhnxEcMXMGEG+yO68EYhAI=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DS0PR09MB11058.namprd09.prod.outlook.com (2603:10b6:8:176::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 22:11:11 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373%9]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 22:11:11 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Wideband IQ Daughterboard 
Thread-Index: AQHZXD8Ojxz4RBSYREufclBMUTvp5Q==
Date: Tue, 21 Mar 2023 22:11:11 +0000
Message-ID: 
 <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DS0PR09MB11058:EE_
x-ms-office365-filtering-correlation-id: 570174f9-5038-4d42-39db-08db2a592dfd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uWdJedsVAiBvwu/z7WpPkF+o+DxkBGBv+yIgusA96jUim0L35AHlkEu5jas6LFNi6MRjSiA8GcU6aJ12DSgq89B5FpGkCBCU7TFpgfgiOIJHnmuVqiSzjiymSAytdxzcJYhqpCqke0HmUmKvcLGdRPtr3+S8ledC06WWHykSTdVUZcWxXBTJmDdb0Cy6O6j1S4YJzrQ3xYXcbJa1uOlQ8Dtyl+I5YJ5kMUJfPhrOs9nAJzq3jgbBsVU9VYK6u1bPwKO00q7cJUFho0gybhLY0rEoPRatK7Mv8IIshPHOcYk+QX377sJk4Aa0R7CN3s1RMPblQySPmCbPp3sXdU+LSnKQr4ED3sm+VMAG0oeBnapwX+Wvquy1M8au3qZ/jADIAH1LQF7ozppc6V4tZzg8XdD7WH4ox1XeKQ15HEzZ7pwkd64lovChRjuRs6VFLAQEM6bCQoQ3Ay/9zgGiW9ZC5jk1BM09Aptvm5WH23SBiFduhwccCGi8THu6d1ibI/pyzB+Eyi1vRx+G9DcoFRRAgNtRacmXhGRRYrogYvOXxMVTLcW/UZve3/sbm5eeJSe0FrgRiiiZWZgxER4tqgNXn6JtjR/AVLSQmN6fUhricWAEnDY8524kZ4jbOu0AyNYBajnlnnbPUVHm+4aGanNR2CvJKmpxIQmZyZZOGgzLr+S/NNK8x1h1Obd6GHoOiOcu
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(451199018)(166002)(55016003)(9686003)(26005)(186003)(6506007)(122000001)(71200400001)(7696005)(4743002)(498600001)(86362001)(38100700002)(38070700005)(40140700001)(966005)(33656002)(3480700007)(83380400001)(64756008)(6916009)(8936002)(8676002)(52536014)(91956017)(66476007)(66556008)(7116003)(66446008)(66946007)(5660300002)(76116006)(4744005)(2906002)(44832011)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?hYXZdfNi8PhciwxaSndZIIG6vr6J6Jl6/usXghipWOhBoG8CPNAWq7WaYt?=
 =?iso-8859-1?Q?6Salhto8Dk9Rw/2S124VLB89DZXvn5sn9exP14uzRA1JMItPkJAF9U9nSW?=
 =?iso-8859-1?Q?4rYQM66beUimNzO+iTnGkswMHYlYTgH+S3tAgE3dlwG1H3d6j32eGgYu0d?=
 =?iso-8859-1?Q?Sx4/xVenz9IlZmbKBCj3hnxecxAx4cxoLxqXjNzyF5OPtMoz9L9DAXRiei?=
 =?iso-8859-1?Q?VtrKcMfh85ATEWCMPI8yBYDAaiWviyceBa3adg0eHlRj/+2PD1P2FlFmPS?=
 =?iso-8859-1?Q?g96QTJzn4chRxj6N2dovSY2z/xW+EFMbtPq3m2rwLRHb0Dykts6tmejjaC?=
 =?iso-8859-1?Q?W4Q26P6ufhTsDATNy09305vfzgYwhwdoJ0gtFf3W5PHbyC/6YcSqs9ly1M?=
 =?iso-8859-1?Q?DlrmysipdeMhQbVNVZ0aI5O0oCc/osm1e/Nvhmy5jNyMKnY5QYB3YsI5ml?=
 =?iso-8859-1?Q?qMev8ndoB6dIhXNm/3kTyDHr8GwFqu1146cdvUPO3XXX6np2NP95tTc3sa?=
 =?iso-8859-1?Q?DefIIL/xzSqTQawtXvumT1BCf3zphszEyqoF5VIwKhZMq+HO+sbzrjbwtn?=
 =?iso-8859-1?Q?/NK3UYajt4jXUgOQZjttSjFVA+Rci6wDOVtM/MyS23cZgb6OVs3V9m660j?=
 =?iso-8859-1?Q?47fEzNpxHE2xKRzs5V48mkdHEC834MJx1d3BJUKn+fG3kumA3BzBqwCRL2?=
 =?iso-8859-1?Q?WxnKiWLJh3xV3Q2ME+5egiVUrLvd46OOt29kJqfEBQLYPYDwpJ5oKq1VxY?=
 =?iso-8859-1?Q?d8Cpfgx2jKq6q01rHO2IgNe8W8uUSJIFNtc2X2i9OY7H5dBdvRKInRX397?=
 =?iso-8859-1?Q?ZkDcYEwN1S8wvkaisEPtK6DivdwrR5T+L8+le2RM3En7krHJAwbuy/S/DR?=
 =?iso-8859-1?Q?7rtu0N0dDvyhQCLQ0S6YQJ/O4S0Q2aLvV/8ckKtl6Cg/cwQtm/mU25WLmK?=
 =?iso-8859-1?Q?vHk7oXgtQZLhjksXzkzJhhwa3rdntb79FQ4/xQa8PCgPOuS/PL0aRfH2y8?=
 =?iso-8859-1?Q?+hRr+PI+gSEZ2LLA+7wlQiWPwWeVm689bVMy/y4cCwFqE/V4FRseCN6yz5?=
 =?iso-8859-1?Q?xiPeOL0jkE3gEgZA2gg9HbrhI6R6BtrEn4g7aSeB1CZ104/3ug0hKEGd+M?=
 =?iso-8859-1?Q?Y0TfuAvbvUCW2ycTwe/y7jupUh4I2D/8FQI96GVC0SQpkVwMlkZuMkjgS5?=
 =?iso-8859-1?Q?mpP/i7EbOrWTLAOgpH7GzChR45PMJdhPTr1omPPeBIDk9+IFAvUStm1Eyd?=
 =?iso-8859-1?Q?R4+wgFVt2vyc8uwKKySePEoc8u+TB0nyc1MpvLfVqBP+Z3ToAHqnlh/aMv?=
 =?iso-8859-1?Q?rFzWR+2rFOFFAMtuEnA8lhwaYSKU7xVgE65DE8w9+wog6Oak5qRlg/z2Ra?=
 =?iso-8859-1?Q?A7g9KT0a6ML0o5KrHc8eyVdme50wQl7nyvEfUpqceuWN9oyWwR+D6GzCUe?=
 =?iso-8859-1?Q?ih1TBOMFoVThu9g/L+O8jeDfuUGEHhEMmKejrpGFha3JKetGJOFZMCZinI?=
 =?iso-8859-1?Q?YvlrUnYAEakbXMtWSkHcopJAZUmyUXJ3Ab0FO9NwWkmREgIsA5QNN48bYP?=
 =?iso-8859-1?Q?Ih9BIhnsaDVRq+YUBqOlB61PXYY7WAMUCPN0eeN6X0NZ3nmc6N0EygF8bg?=
 =?iso-8859-1?Q?XCRnQEvGOV9cs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 570174f9-5038-4d42-39db-08db2a592dfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 22:11:11.4926
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR09MB11058
Message-ID-Hash: IDQEAV6DDLIUBHQ4IDF53YZBX2NEMS72
X-Message-ID-Hash: IDQEAV6DDLIUBHQ4IDF53YZBX2NEMS72
X-MailFrom: prvs=4374a3ba8=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Wideband IQ Daughterboard 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5R6C3W7EADZZ3HDFBWD32ECDSNBWDR2W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2031458457664951118=="

--===============2031458457664951118==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91263A201E869804E985BCD9EC819SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91263A201E869804E985BCD9EC819SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I want to use an external IQ mixer with an external LO.  My signal is 160 M=
Hz wide, which fits nicely into the nominal complex 200 MHz Nyquist of the =
X310.  Unfortunately the only daughterboards for direct access to the ADCs =
are LFRX which maxes out at 30 MHz, and the Basic-RX with a minimum of 1 MH=
Z.

I am thinking of spinning a custom daughter board derived from LFRX with a =
wideband differential driver such as https://www.analog.com/media/en/techni=
cal-documentation/data-sheets/6406fc.pdf or alternatively just replacing th=
e chip on an LFRX since these appear to be footprint compatible.

Separately, I was looking at LFTX schematics and the part # for the amplifi=
er is not specified.  Can somebody at Ettus/NI save me some time and lookup=
 that part #.

Comments?

Eugene.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB91263A201E869804E985BCD9EC819SJ0PR09MB9126namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I want to use an external IQ mixer with an external LO.&nbsp; My signal is =
160 MHz wide, which fits nicely into the nominal complex 200 MHz Nyquist of=
 the X310.&nbsp; Unfortunately the only daughterboards for direct access to=
 the ADCs are LFRX which maxes out at 30 MHz,
 and the Basic-RX with a minimum of 1 MHZ.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
I am thinking of spinning a custom daughter board derived from LFRX with a =
wideband differential driver such as&nbsp;<a href=3D"https://www.analog.com=
/media/en/technical-documentation/data-sheets/6406fc.pdf" id=3D"LPlnk885883=
">https://www.analog.com/media/en/technical-documentation/data-sheets/6406f=
c.pdf</a>&nbsp;or
 alternatively just replacing the chip on an LFRX since these appear to be =
footprint compatible.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
Separately, I was looking at LFTX schematics and the part # for the amplifi=
er is not specified.&nbsp; Can somebody at Ettus/NI save me some time and l=
ookup that part #.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
Comments?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
Eugene.</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0); fon=
t-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; background-col=
or:rgb(255,255,255)">
<p><span style=3D"color:black; font-family:&quot;Arial&quot;,sans-serif; fo=
nt-size:10pt"><span id=3D"ms-rterangepaste-start"></span><span style=3D"col=
or:rgb(0,0,0); font-family:Arial,sans-serif; font-size:13.33px">___________=
_____________</span><span id=3D"ms-rterangepaste-end"></span><br>
</span></p>
<p><span style=3D"color:black; font-family:&quot;Arial&quot;,sans-serif; fo=
nt-size:10pt">Eugene Grayver, Ph.D.<br>
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

--_000_SJ0PR09MB91263A201E869804E985BCD9EC819SJ0PR09MB9126namp_--

--===============2031458457664951118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2031458457664951118==--
