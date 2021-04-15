Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB8D361315
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 21:49:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F039D383EAA
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 15:49:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="OMlm8U6o";
	dkim-atps=neutral
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12olkn2073.outbound.protection.outlook.com [40.92.22.73])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B7D8383E7C
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 15:48:14 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n7w8GJ+HGebr+4zH5KclGpAuY2mywrI066cX3vKR7OCUJlsBfh3HcHDpLMcjsiE/d4RyJdlbVVljbCyVBzBu6QEehB63JfJ97FbnnHdTGaMZ9XCMjUnD5tLAhuwBaLPYby9v5sWud90u3lUxauw2ybss6TJ9+6mjdcKaomKwuMV1a3nSO+uvI6McgfOX1Q/ttBra34lfLFcei5S+AHq0Qm71XPYJ/AQR6POqQfLHQJZomdupfohsgCvpZW9fjpl7CWWso4DiYL2LM1/tKeYNkrcXFCJPwlmAHnka64BTWXkyNAardCUsRwAnMbFtk3wSsStm/+UyXmMZJGKDNAumzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5oZA99sWPF3WrhHSnwUCmGfVksS3/2d1dU6vo+cqZzw=;
 b=DZXrYEatX8lUdHVp6hdnoQj0LGDcT+YYl6AoQm6ub5monnTgsJRGWpwvJ5pUGbCOK7G76KDIWWeyGuvdQHYN2DH5CC+u2YrtPoUyQXMMbjWnT4SFbTUTMbpgmWC1Uw2RU7WCNEX5cTqE49bxYbtvBEUNd1UalcSmWmPYAz0E9pmg5OfF11S8LzRqbhXU209z75U3Q79yD8nvrGL4gJXp6jkdpUxjWNetiN2cpbnsCfUGcDCH+7EJcyM1nqd+sN+yGbIqOFzt55rHNu5O3rVe+X+tS/omaTgXpZH37jnswK2m+DtV2drRBRyYTUgWxr4nP7+//EO2MzhMfFU5aqV9vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5oZA99sWPF3WrhHSnwUCmGfVksS3/2d1dU6vo+cqZzw=;
 b=OMlm8U6oRtWnLzLlbYmm/OB3DIM8XUpQQ6RcFvZ6OE/qLFZegDbh0shRXPWtudie+DHtl75in20VQpTSVjm2ad/b223z0dHD5IKpfP24PCx+adiFHE1FI9D75iTl+KJrNM2Da1e9sZCCzliPBGHxixudLdGP9fUANd/MCZpWkHBS6684pWldanTqZAuVqhwMwB244YTtVuAE7yCknZVNjD1DjDyUCLs2oiNxK7gq//ByQNHv5Lq4vp24FWybIkoB3Z73yuv0dRiN2/7D49NHSQWUmuOcJHT0c1eG02sWMHdiPulcCDyd3ZZW4USosCgtncEoeIBgz7wiThgvBqq/ww==
Received: from DM6NAM12FT057.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::52) by
 DM6NAM12HT216.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::307)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.6; Thu, 15 Apr
 2021 19:48:13 +0000
Received: from MN2PR19MB3149.namprd19.prod.outlook.com
 (2a01:111:e400:fc64::44) by DM6NAM12FT057.mail.protection.outlook.com
 (2a01:111:e400:fc64::73) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.7 via Frontend
 Transport; Thu, 15 Apr 2021 19:48:13 +0000
Received: from MN2PR19MB3149.namprd19.prod.outlook.com
 ([fe80::f5f6:c482:9517:56de]) by MN2PR19MB3149.namprd19.prod.outlook.com
 ([fe80::f5f6:c482:9517:56de%5]) with mapi id 15.20.4042.018; Thu, 15 Apr 2021
 19:48:13 +0000
From: Jeff S <e070832@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Adding RFNoC Blocks to GRC in UHD-4.0
Thread-Index: AQHXMiwWeIJwkXDzoUmvFg6UO9mATA==
Date: Thu, 15 Apr 2021 19:48:13 +0000
Message-ID: 
 <MN2PR19MB314923A9CE83FC523E434FD9A44D9@MN2PR19MB3149.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:4EAAD9E034C4A6904CD9562AAAADB5B358B328E5642A6D28D1A760914FED31B6;UpperCasedChecksum:4A0C08C1CBEE9216C11547F0967E9BBAAB243B4694FAB949D5E948FC57131E40;SizeAsReceived:6624;Count:41
x-tmn: [NM+VV6EEO1xsZwx7AT/aiRFKYHlHBeMB]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 0eb054fa-7542-47c4-16c5-08d9004767f4
x-ms-traffictypediagnostic: DM6NAM12HT216:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ukWfhyXS7mybCPhQacLa/loWQzp0zZD+BSFFzbCRbuMe6K/00WVmrerD9iF/WNJJRO9Jm6O0Cei7fQf9NyLVq6RYIIPhyGKeFWfYotcNmKUtKNUGSsPKogIF6TIKZAR48kVGnUCepk7YDLHD5WD+2wuYAR5wWyHrfEYtIMbmy7p6WZsCc5REQGYMK2UAa0aBp+OWfLca7V+1kHXTp4zpd6tCTeTOjctV6EPpr5nrpNOQuWjzH6kgutqs33MNjZ/T6b3Fpc7WqwJI4z+tnjZXMXLxA0GACErSx+aXLENECJhoe3dYzQjtS3NwhvvWkLfh/oEHf99tW4dBfdeho0BDdTndJnjjD0Up418r/sSwtowHFCLSj+uXv1p1M6YQk/vx0nRxZtG1pJA92FYzCw0BcA==
x-ms-exchange-antispam-messagedata: 
 YIR37Smm64te0bLQKZ5x5IO21fwgLAJtZgdHs+icUBGsG4zZPQMzCx0vbLg9eB/j4jiHP1Nu+j/DOCp5jmSU/5pBQ+siHa2BCuG2Q4tv/48wdf7NxO+IBF6kLlf4hVcw+fUbChptpshAuIvx87OPBA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT057.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eb054fa-7542-47c4-16c5-08d9004767f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2021 19:48:13.5284
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT216
Message-ID-Hash: L5CNI323BQFHWLKSVZA46VY6DCJZDTAG
X-Message-ID-Hash: L5CNI323BQFHWLKSVZA46VY6DCJZDTAG
X-MailFrom: e070832@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding RFNoC Blocks to GRC in UHD-4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XE7HNRG4PN5UZUF7M44PXBKNBT6TOEKW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My current versions are:

  Linux:  Ubuntu 18.04LTS
  GNU Radio: v3.8.2.0-102-gcc5a816b
  UHD: UHD-4.0 (e520e3ff)
  gr-ettus: maint-3.8-uhd4.0 (1038c4ce)

The UHD and gr-ettus repositories seem to have the RFNoC blocks, in particular, the FIR filter (the one I'm interested in).  But they don't seem to have been installed for use in GNU Radio Companion.  The RFNoC Rx/Tx Radios and DDC/DUC blocks seem to have been installed.  Is there a process for getting the other blocks installed?

Regards
Jeff
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
