Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B596C3E56
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 00:13:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA635384641
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 19:13:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679440401; bh=TK0GinjKczgmBbROXQRadcA5jL8Ame6cbEV52SwT/+A=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tyvgbnyyiI/TfoPSo+Ic+fYx62VGnu/C63gI50xzrtRx3jW22WDUBZvLVLSJM1dE4
	 tPR4BsyV++pfqGvBSDeEVcKh0yM0x8ZV89v9DPXXH/oxwru1/WVFhGO/uPmWrI13uw
	 ukX0HddiSSm05vzwDA2YIRt5itqlfQOkdX7YE2RVs4s83pFq5DIxxGIYslua820U1a
	 y1vA3rxZbNT0GaCNPJEIpFx5iAlfn3XT3XgvG5NpiQ88srYxwP/33UZEZz1e6fSuud
	 urruixvZLT57PyPeprgM54au76J6gAhBXdYH8X4XSZOt8wjVMv0zHG+n5E0ZdAHVcn
	 VEGAMVoUcoQ0A==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id 09FF838461C
	for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 19:12:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="pK1q1jIz";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="GVcYL/h5";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1679440362; x=1710976362;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=RWL0ZrxP9gIg5JOdIlrZZHGR7Jv+uLwdvjVpBrxSlIc=;
  b=pK1q1jIzmHn/8bMlDKWfSKhmug8Oye/CocI1RVGpGn34NmlCAlZ+AaWK
   WfCkeBvcWSlYmE8D8IO7kT4AToo5hbR9iZIBpI61ucnLY1dp7zfIXhrHK
   HhAVk3lZ3a7wUZ8TvzNM0VLqwdGV8rg22wlw+QN0WXhYdqEiB3pNx0ujq
   Q=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="237352"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400";
   d="scan'208,217";a="237352"
X-IPAS-Result: =?us-ascii?q?A2EpAACAORpkh2ZBL2hXAx0BAQEBCQESAQUFAYF7CAELA?=
 =?us-ascii?q?YEqAYECcwKBWoRTiB+JEAOLSIs/hk2BJQMYNQkPAQEBAQEBAQEBBwIuAQwJB?=
 =?us-ascii?q?AEBAwSEfgIWhSEmNAkOAQIEAQEBAQMCAwEBAQEBAQMBAQEFAQEBAQEHAwECA?=
 =?us-ascii?q?hABAQEBGQkXBw4QBSKFaA2DVkoDOwEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQUCQUcMIwEBHQEBAQEBAgEiHQEBNwEPAgEIDgMEAQEoA?=
 =?us-ascii?q?wICAh8HChQJCAIEDgUIgnYBghUNBgMxEwaxMXqBMoEBgggBAQYEBIE4ARZAm?=
 =?us-ascii?q?j4NC12BXgMGgUABg0uDdwQeWF0BAYgYNoFVRIEVQ4JnPoIgQgECAoFfBg8KD?=
 =?us-ascii?q?AkRgxE5gi6BDJgDCoE0dYEgDoE9gQQCCQIRa4ESCGuBfUECDWULDm+BSwKBX?=
 =?us-ascii?q?Ac2A0QdQAMLOzo/NRQgBQRVgRkkBQMLFSpHBAg5Bhw0EQIIDxIPBiZDDkI3N?=
 =?us-ascii?q?BMGXAEpCw4RA0+BRwQvQoEWCgIEASYknWM3K4EYHIEWkncFF4MvikWhZDs0B?=
 =?us-ascii?q?4N9gVMGDIhqgSKNFoF4hiMWqT+Xao1Sg2yQbyuFGQIEAgQFAg4IgWN8gRozG?=
 =?us-ascii?q?jCCRGZSGQ+OIBmDWY95dQI5AgcBCgEBAwmLQwEB?=
IronPort-PHdr: A9a23:hYU/YBIqyBmdQVTt4tmcuWIyDhhOgF28FgIW659yjbVIf+zj+pn5J
 0XQ6L1ri0OBRoTU7f9Iyo+0+6DtUGAN+9CN5XYFdpEfWxoMk85DmQsmDYaMAlH6K/i/aSs8E
 YxCWVZp8mv9P1JSHZP3akfV5Hqo4m16Jw==
IronPort-Data: A9a23:vpJfmKkKZDwL0nN0i0XbZ0Xo5gzJIURdPkR7XQ2eYbSJt1+Wr1Gzt
 xIWDDrTM/3YY2r1fd0kYdvkpB4AuMCBn99iSABoqX9jEC4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8yckjclkYZKlULCZZEidfSc9FGF7z0sLd9cR2uZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrbwP9UlKm06WNwUmAWP6gR5weFzSBNVvrzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TtEF1xZvWkdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWeG5fgLmkH4Ojb8uT0984uaVyi+
 8D0JxhKPwmhtvO7kIjicfVLjZ4Zc/fmMb0Q7yQIITHxVZ7KQLjsaI6Sv5p0+Wx1gcpDW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfujCPilAuluawdoONILRmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOfjqaU32jV/wEQiIyBLdQKS+MDi0ErjCsByM
 mYrxSsH+P1aGEuDFYCmBEXh+hZopCU0UcJZH+Q+6QeK4qXR6gedQGMDS1Zpdcc8rIorXjEwz
 XeNnsj1HnpirKGIUjSW8bL8kN+pES0cLGtHaSpfQgAOu4PnuNtq1kiJSct/GqmoiNGzASv33
 z2BsCk5gfMUkNIP0KK4u1vAhlpAu6QlUCZytxz1b3OovjkgX5KCbNaStmbW4MhPedPxoka6g
 FAInM2X7eYrBJ6LlTCQTOhlIF1Pz6bUWNE7qQ4/d6TN5whB6Fb/JN4IumgWyFNBd5dfJ2azO
 yc/rCsLvPdu0G2Wgbibim5bI+gn1uDFEtXjW+u8gjFmP8AqLFDvEM2DdSetM43FlUEtleQzP
 MyUes30V3ICU/0/lnyxWvsX1qItymYm32TPSJvnzhOhl72DeHqSTrRDO1yLBgzY0E9miFuLm
 zq8H5LVo/m6bAEYSnWHmWL0BQxVRUXX/bis96Rqmhere2KK4l0JBf7L2q8GcId4halTneqg1
 ijjBR4EkgGj3yOfd1/ihpVfhFXHDccXQZUTbXxEALpU8yJ/CWpSxPtBJsRmLeF4nACd5aUsF
 qBYJ61s/cijuhycom9GNcCnxGCTXBGqjhiJJC2rfHA2bYN6SmT0FizML2PSGN01JnPv76MW+
 uX+viuCGMZrb1k8UK7+Naz+p3vv5yR1sLwpBSPgfIIMEHgABaAxdkQdeNdsf5pTQfgCrxPGv
 zur7eAw/LKc/N9pq4OY7U1Gxq/we9ZD8oNhNzGzxd6L2ePypwJPHacovD60QA3g
IronPort-HdrOrdr: A9a23:SzHwlaMVO6580sBcT1T155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE8wr4WBkb6LO90dq7MAnhHP9OkMIs1NKZMDUO11HYS72KgbGC/9SkIVyHygc/79
 YrT0EdMqyXMbESt6+Tj2eF+pQbsaC6GcuT9IXjJgJWPGVXgtZbnmJE42igcnFedU1jP94UBZ
 Cc7s1Iq36LYnIMdPm2AXEDQqzqu8DLvIiOW29LOzcXrC21yR+44r/zFBaVmj0EVSlU/Lsk+W
 /Z1yTk+6SYte2hwBO07R6d030Woqqu9jJwPr3NtiEnEESutu+cXvUhZ1TNhkF2nAjl0idWrD
 CFmWZdAy000QKdQoj9m2qS5+HtvQxelEPK2BuWh2Durtf+Qy9/A81dhZhBeh+c8EY4uspguZ
 g7qV5xmqAneS8oph6NkOTgRlVvjA65sHAimekcgzhWVpYfcqZYqcga8FlOGJkNESrm4MR/ed
 MeRP309bJTaxeXfnrZtm5gzJilWWkyBA6PRgwHttaO2zZbkXhlxw8TxdAZnH0H6JUhIqM0rt
 jsI+BtjvVDX8UWZaVyCKMIRta2EHXERVbWPGebMT3cZdQ60rL22uzKCZkOlZKXkcYzveoPcb
 z6ISNliVI=
Received: from mail-dm3gcc02lp2102.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.102])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2023 16:12:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zqb7p5q5MCbj+cEGyC8G33RRdth65MHNkTjGec4YRAcGcyPEFJ7WS+GH01KbcLncBpi4bAR4pFWndA2rf/4Jr6B7fOZ4+QEHTWMvNQMsfi9Z4Hc9fPSwtrHn2GH0A6/35e7E73Zy/c7mH0/0sPiUsr6rGYQAIh/fAilLLdlORm7CcX37dTj8ph/D+PS9JxuaUqaAI+aSueukob7nauuVgDS7KydhclHXsIIWkD5kFauKKEr1eMaLIxif+e6lglEqyNAbF3HR5kzcfYYoL8PFYo2Q7cQZh0B/smKxGtuBnTEdnymiyd7SjEjh1MjFxsZf4hy/a0MwMfTqH1BBD438+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWL0ZrxP9gIg5JOdIlrZZHGR7Jv+uLwdvjVpBrxSlIc=;
 b=F7cksd6MbdZbefdscvLJBBfqWeLzhQfDA9LFmQtmG8D4TlFq1xlf2BqavieKNsNQZIAdTLJlT8XQd3+woMm6usKsvy/aBAGKsg4aGs8cY9Kss9yYYr/f5lQ7R7l54spCeJSfqXHWyFkv2iWO0K6WwNk23efMiMg7ou2j1NZcAFg9CVGo+OvrPhs89BTb/jZdAu1f1oWVs94eaLApk2MskoNIOkgkb+0Vsu0MgqLjF6d8+sX0l57uM4eb6gbX83jDe84itj3VT5Y7pXQJEpH3RwHZpSeAzwDElyGyHkyLt7vyu4AkPcTyTGLGVI91zL4hYh3FH+S75K1EOXk8FIR+HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RWL0ZrxP9gIg5JOdIlrZZHGR7Jv+uLwdvjVpBrxSlIc=;
 b=GVcYL/h52Lbr31GCmQkmfKsQJ8cYpH+8ny3rAi4lCvLXecIwXC3ITVklbSFzzX4fluUTLsokoj5IlKcACGXY51ySAWN+NYPLrMkHzOTVKIDdBxvSXlt1c4chXmZZ5mTi0ejbpWeolwNw9PBsa3UbA/pA3khSD7iplfZnUV1YB+4=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB11288.namprd09.prod.outlook.com (2603:10b6:806:36d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 23:12:23 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373%9]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 23:12:22 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Wideband IQ Daughterboard
Thread-Index: AQHZXD8Ojxz4RBSYREufclBMUTvp5a8FzagAgAAOrSA=
Date: Tue, 21 Mar 2023 23:12:22 +0000
Message-ID: 
 <SJ0PR09MB9126C531C901C0141417CDECEC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK5UG5wy7MQxJj5bVpHWt4K3gFU=ks=DCdFr1uQQdDJZGA@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK5UG5wy7MQxJj5bVpHWt4K3gFU=ks=DCdFr1uQQdDJZGA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB11288:EE_
x-ms-office365-filtering-correlation-id: 1c61a8b2-5628-420f-4432-08db2a61ba55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 g39zjIQ4WW/VYI8kSwRVKakiQGzpmszchNkX6N/T09v4xgDp0z+gbdOPflCpB4UGrHmSRT10akkIOG4+Uv6XTLgflhtmPhwcEZhr59kPFfEpbJOiP79yNH/y+EqIe+ajqVWJzwfBA9tgQ8ow1yKejwROnQgjL7F3NYUM50a9RoDPv8SVYwPYulAebi4Cf8cwkix8Svpec6TMK4gn8GdoeEmd5ifnT+032mXOC8NN/pZk27DA2H5wPIE51RSghIwE1rp32re36VxGTykqg1ChblKjMw96FnFFpmfgwzXCqm+ZHBdeHtidG1czH82hfBWpTdaCQcGqb8b/WPSkGyPxtAwK/JYHvRNlfu5Zg91rkJih8zZUHvGcIpKCM0AguguSvczLXjPEUq9nbkfUQrbYMhEoVJ3q33zm8Q6EFxDTplXDp6bpKiai080fFtwrK6tJKC/nEP6+Rfv1kpale8jSqjbwZezW7+xG4BH85nB9LlELe1S7CmqLT7kIwHu6isXKy6cU1reBbQii2MhazPnTmzTceQamf8tVHjKZHxnM5rsngpGAamgMsbAJGodeIrncavgf98jZzEP+Fa0ZE1xX0mFoFRMsjmie+VOeG+ISdCvF1W4uP3E0+xjsff7GTdH/dGgXyISQvLJT0rmQwGcROWp813L6oaHVKfTO3AiOZmE/0V5a0ecAfxxteBzYKg7D
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(451199018)(5660300002)(86362001)(40140700001)(8936002)(44832011)(33656002)(2906002)(966005)(6506007)(26005)(186003)(9686003)(83380400001)(4326008)(91956017)(66946007)(64756008)(66556008)(6916009)(8676002)(53546011)(66446008)(76116006)(66476007)(166002)(122000001)(52536014)(498600001)(38070700005)(55016003)(38100700002)(7696005)(71200400001)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?N1BmTTVlUkFLVXc4Z2xzTkVBcTZuYW50czlsVXF4aklZU0ppZ25DN2xBQU50?=
 =?utf-8?B?aDB1UmpST1dzOHRtSEpvWU00RlpIT0hyKy84c3JUQWVEMUpxVlJrM2FGVWhw?=
 =?utf-8?B?ZGhQMkRvOXBlZlZTQU5uY3RQekNhWlQyMEViRHF4K3BqUk5tVHhFUzdWMmd5?=
 =?utf-8?B?dDVnb3ZTMmYzYVI0ZFpkbGR2Zkc2c3hhT1pDMFdSdy82N2dqMEswOWpOeS8y?=
 =?utf-8?B?bzd3Y0lzZnhjV2xpTU0zU1ZWUzZaYUVSVXVLZ0ZYTE1HUWdnNkRDWW1vY1ha?=
 =?utf-8?B?a2hxOUprYWRhZ0VuNEt1Z0ZRTkxEOGlkcWkxZGhLUEJWNDlybGptZDJidXdp?=
 =?utf-8?B?dXJUWHp6cjcvd2xybWVhdG81U0dvdkRqTEF0VEZPa2t2MythSU9HNkZxbkhL?=
 =?utf-8?B?WTVGZmtHZjN4dGFPdFdid3kyZ3R4dEtJb1c1czlWSTBLNllsVi81ei9Ccy9z?=
 =?utf-8?B?dTJsTkJvZGNGQmRaQndzYUNIdXdvaTF4R0VCR2xXdUd1RzRwaFIyOUtpUkMx?=
 =?utf-8?B?T3RtZGZ0WDFBQzNKa0FBaFBHV2wzbncySlZJUHFpRGpDdGJMcFBJa3k5Rjl0?=
 =?utf-8?B?WFNUNy9hRDRZcUhpV01KZE9EbW5GL2gxVE13OWtkdFdPcGFwa2JFVXF2V2w5?=
 =?utf-8?B?ak9yTnJWRFVxa3o0V3FyS3QrQWxSSmlLUGV2aEtJc2JmNWpmNldOYmRCOU9V?=
 =?utf-8?B?ZHZTeXZkVE1OZ01qSHN1a3ZTYmdFNDhQaEJIRTR5QWluYWEzTWNkMnlreitN?=
 =?utf-8?B?dkFsVkFUOVAxS1pYOEZzTFhaS0pqOFlBbmxUQitzT2pDcThkaUo2bXA0bSti?=
 =?utf-8?B?Z2N6MElIU2dTSG1YY2FYc3N3SGh6Y1RaT2ZtNm11UHpuZ1ZIc2VJNnYvNjNX?=
 =?utf-8?B?MUs2LzRSMnlBOEtPblFpOHppdnlvZUh6MzI5YjRXaVJFK2ZvSWVKY0JIOUE2?=
 =?utf-8?B?c2EyaUhQUjZ5Q1UwSzU3Q0xaNW9KQllacDU5a1NsT214MmwwTTR5ckVZQUpL?=
 =?utf-8?B?WmR4SWlxTkw5dC9ob2IwdVlPcllzSFY2MkRMRm56RXhaZzBtcXl4YWZJaVdY?=
 =?utf-8?B?Wi8rRnJFNDZrZ09pVk5CY0lxb05UQlVWRlNWV0hDUU5sQWhnMit4TXVQY3VX?=
 =?utf-8?B?WDB1T013bDBHWGRYcEtzaG5PS0FWd01pMVF2MFdyankzTm12TldiZXlUYWdQ?=
 =?utf-8?B?aW1EcTZWU2xpWlA5KzdpMHM1dGErMDFWMWwvUldIZ3dZMVdsVjRzU050b2lY?=
 =?utf-8?B?NnhETkVRd0ZxNVRUT1drSVZYcFl3OWN3b2h3ZHZENi9sN1lORHBDbzcwd2Y3?=
 =?utf-8?B?WlVrSXRQOUJzaGdhMnhGbGg1R0t6Z0FteFh6Umg0a1hjQnhScmV5VEMwaTJ4?=
 =?utf-8?B?V0pBZjN3b3krbWM2MUFQVW90TnAwbXZHY2pVc2MzcFVWTkNoY200Z2E3N09H?=
 =?utf-8?B?ZWhhOVdwYWNBWitKVVMxYUJoSTBMc1laMHBGc0pyNTZFS2c0RHlhck1rbEgv?=
 =?utf-8?B?ZS9aM1QrODdJeWgwWFJFcU9VRGhuNndhNDBxRVhQVTIvUFE5MmJRdkhWQmtK?=
 =?utf-8?B?elNEb2RKVURxeVBUdHJVVDFBQzlUTE1iNU9hNDhYaFk5Z25SZ1NOV3p2RWox?=
 =?utf-8?B?STIvTXBQT2pSVFF2ZUJ0c3Noai9LTGczN3pxcVZrT2NLQkJkdGZTVDdMVTV0?=
 =?utf-8?B?cmN1TytybnlydWJ3WU50Vm4vc0ZHNGRQUnFPR1FHWEtyVWFCY0dHS3FaVjRw?=
 =?utf-8?B?WGM2c0NUK1ZXZkVPREtKVDJoZzIwRG1QQXBoNGQzQ2lNMlU2eHJ1azFwOW9W?=
 =?utf-8?B?dmJHTzJoTi9YOU42K0ZRWUJjZnNtaDZBSmtDOHBXeHBtZC8zVk5BWUw1ZUU5?=
 =?utf-8?B?YUp3QTZYYWhURzc3bkIvRlBweUU1Vm5DM3RtRTFnOHBXTDdDRkJCanFpV2U2?=
 =?utf-8?B?MHNuVkJteVpiOGZhREU3SEhnTVFmN2NYNWtIRE9WNFZGN2k3ZjlYRk9hb2FJ?=
 =?utf-8?B?YU53a2wzUXFkbVd2a29rb2NLR2J5cThUVTVzQTNXNDAzUlBMM0NST1l5bjdk?=
 =?utf-8?B?dEh4QklPTm9VaEkrdkNxbExuazhBaW1CelNJYjVLK0xSc3IrOEhYOEFDTkM0?=
 =?utf-8?Q?mfKA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c61a8b2-5628-420f-4432-08db2a61ba55
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 23:12:22.8776
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB11288
Message-ID-Hash: POMCIPRPPKEKJC4YD5GL57FVJHKT7HMB
X-Message-ID-Hash: POMCIPRPPKEKJC4YD5GL57FVJHKT7HMB
X-MailFrom: prvs=4374a3ba8=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DTKQLGNUVDTSBLX4ZJIUZXZD63UVOOCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4490956445429761386=="

--===============4490956445429761386==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126C531C901C0141417CDECEC819SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126C531C901C0141417CDECEC819SJ0PR09MB9126namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBhcyBzdGF0ZWQgaW4gdGhlIG9yaWdpbmFsIHBvc3QgJ0Jhc2ljLVJYIHdpdGggYSBtaW5p
bXVtIG9mIDEgTUh6Jy4gIFRoZSBEQyBpcyBjdXRvZmYgYnkgdGhlIGJhbHVuIG9uIHRoZSBiYXNp
Y1JYIG1ha2luZyBpdCB1bnN1aXRhYmxlIGZvciBJUS4NCg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX18NCg0KRXVnZW5lIEdyYXl2ZXIsIFBoLkQuDQpBZXJvc3BhY2UgQ29ycC4sIFByaW5jaXBh
bCBFbmdpbmVlcg0KVGVsOiAzMTAuMzM2LjEyNzQNCl9fX19fX19fX19fX19fX19fX19fX19fXw0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogQnJpYW4gUGFkYWxpbm8g
PGJwYWRhbGlub0BnbWFpbC5jb20+DQpTZW50OiBUdWVzZGF5LCBNYXJjaCAyMSwgMjAyMyAzOjE4
IFBNDQpUbzogRXVnZW5lIEdyYXl2ZXIgPGV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPg0KQ2M6IHVz
cnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVjdDogUmU6IFtVU1JQ
LXVzZXJzXSBXaWRlYmFuZCBJUSBEYXVnaHRlcmJvYXJkDQoNCk9uIFR1ZSwgTWFyIDIxLCAyMDIz
IGF0IDY6MTLigK9QTSBFdWdlbmUgR3JheXZlciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc8bWFp
bHRvOmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPj4gd3JvdGU6DQpIZWxsbywNCg0KSSB3YW50IHRv
IHVzZSBhbiBleHRlcm5hbCBJUSBtaXhlciB3aXRoIGFuIGV4dGVybmFsIExPLiAgTXkgc2lnbmFs
IGlzIDE2MCBNSHogd2lkZSwgd2hpY2ggZml0cyBuaWNlbHkgaW50byB0aGUgbm9taW5hbCBjb21w
bGV4IDIwMCBNSHogTnlxdWlzdCBvZiB0aGUgWDMxMC4gIFVuZm9ydHVuYXRlbHkgdGhlIG9ubHkg
ZGF1Z2h0ZXJib2FyZHMgZm9yIGRpcmVjdCBhY2Nlc3MgdG8gdGhlIEFEQ3MgYXJlIExGUlggd2hp
Y2ggbWF4ZXMgb3V0IGF0IDMwIE1IeiwgYW5kIHRoZSBCYXNpYy1SWCB3aXRoIGEgbWluaW11bSBv
ZiAxIE1IWi4NCg0KSSBhbSB0aGlua2luZyBvZiBzcGlubmluZyBhIGN1c3RvbSBkYXVnaHRlciBi
b2FyZCBkZXJpdmVkIGZyb20gTEZSWCB3aXRoIGEgd2lkZWJhbmQgZGlmZmVyZW50aWFsIGRyaXZl
ciBzdWNoIGFzIGh0dHBzOi8vd3d3LmFuYWxvZy5jb20vbWVkaWEvZW4vdGVjaG5pY2FsLWRvY3Vt
ZW50YXRpb24vZGF0YS1zaGVldHMvNjQwNmZjLnBkZiBvciBhbHRlcm5hdGl2ZWx5IGp1c3QgcmVw
bGFjaW5nIHRoZSBjaGlwIG9uIGFuIExGUlggc2luY2UgdGhlc2UgYXBwZWFyIHRvIGJlIGZvb3Rw
cmludCBjb21wYXRpYmxlLg0KDQpTZXBhcmF0ZWx5LCBJIHdhcyBsb29raW5nIGF0IExGVFggc2No
ZW1hdGljcyBhbmQgdGhlIHBhcnQgIyBmb3IgdGhlIGFtcGxpZmllciBpcyBub3Qgc3BlY2lmaWVk
LiAgQ2FuIHNvbWVib2R5IGF0IEV0dHVzL05JIHNhdmUgbWUgc29tZSB0aW1lIGFuZCBsb29rdXAg
dGhhdCBwYXJ0ICMuDQoNCkNvbW1lbnRzPw0KDQpIYXZlIHlvdSBjb25zaWRlcmVkIHRoZSBCYXNp
Y1JYPw0KDQogIGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9hbGwtcHJvZHVjdHMvYmFzaWNyeC8NCiAg
aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vc2NoZW1hdGljcy9iYXNpY19kYnMvQmFzaWNSWC5wZGYN
Cg0KQnJpYW4NCg==

--_000_SJ0PR09MB9126C531C901C0141417CDECEC819SJ0PR09MB9126namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsi
IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQpZZXMsIGFzIHN0YXRlZCBpbiB0aGUgb3JpZ2luYWwg
cG9zdCAnPHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6cmdiKDI1NSwgMjU1LCAyNTUpO2Rp
c3BsYXk6aW5saW5lICFpbXBvcnRhbnQiIGNsYXNzPSJDb250ZW50UGFzdGVkMCI+QmFzaWMtUlgg
d2l0aCBhIG1pbmltdW0gb2YgMSBNSHonLiZuYnNwOyBUaGUgREMgaXMgY3V0b2ZmIGJ5IHRoZSBi
YWx1biBvbiB0aGUgYmFzaWNSWCBtYWtpbmcgaXQgdW5zdWl0YWJsZSBmb3IgSVEuPC9zcGFuPjwv
ZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1p
bHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJw
dDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGlkPSJTaWduYXR1
cmUiPg0KPGRpdj4NCjxkaXYgaWQ9ImRpdnRhZ2RlZmF1bHR3cmFwcGVyIiBkaXI9Imx0ciIgc3R5
bGU9ImNvbG9yOnJnYigwLDAsMCk7IGZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNh
LHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1
LDI1NSkiPg0KPHA+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrOyBmb250LWZhbWlseTomcXVvdDtB
cmlhbCZxdW90OyxzYW5zLXNlcmlmOyBmb250LXNpemU6MTBwdCI+PHNwYW4gaWQ9Im1zLXJ0ZXJh
bmdlcGFzdGUtc3RhcnQiPjwvc3Bhbj48c3BhbiBzdHlsZT0iY29sb3I6cmdiKDAsMCwwKTsgZm9u
dC1mYW1pbHk6QXJpYWwsc2Fucy1zZXJpZjsgZm9udC1zaXplOjEzLjMzcHgiPl9fX19fX19fX19f
X19fX19fX19fX19fXzwvc3Bhbj48c3BhbiBpZD0ibXMtcnRlcmFuZ2VwYXN0ZS1lbmQiPjwvc3Bh
bj48YnI+DQo8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrOyBmb250LWZh
bWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmOyBmb250LXNpemU6MTBwdCI+RXVnZW5l
IEdyYXl2ZXIsIFBoLkQuPGJyPg0KQWVyb3NwYWNlIENvcnAuLCBQcmluY2lwYWwgRW5naW5lZXI8
YnI+DQpUZWw6IDMxMC4zMzYuMTI3NDxicj4NCl9fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bh
bj48YnI+DQo8L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjxkaXYgaWQ9ImFw
cGVuZG9uc2VuZCI+PC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFs
LEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+
DQo8YnI+DQo8L2Rpdj4NCjxociB0YWJpbmRleD0iLTEiIHN0eWxlPSJkaXNwbGF5OmlubGluZS1i
bG9jazsgd2lkdGg6OTglIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RNc2ciIGRpcj0ibHRyIj48Zm9u
dCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBjb2xvcj0iIzAwMDAwMCIgc3R5bGU9ImZvbnQt
c2l6ZToxMXB0Ij48Yj5Gcm9tOjwvYj4gQnJpYW4gUGFkYWxpbm8gJmx0O2JwYWRhbGlub0BnbWFp
bC5jb20mZ3Q7PGJyPg0KPGI+U2VudDo8L2I+IFR1ZXNkYXksIE1hcmNoIDIxLCAyMDIzIDM6MTgg
UE08YnI+DQo8Yj5Ubzo8L2I+IEV1Z2VuZSBHcmF5dmVyICZsdDtldWdlbmUuZ3JheXZlckBhZXJv
Lm9yZyZndDs8YnI+DQo8Yj5DYzo8L2I+IHVzcnAtdXNlcnMgJmx0O3VzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tJmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNdIFdpZGVi
YW5kIElRIERhdWdodGVyYm9hcmQ8L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8
ZGl2Pg0KPGRpdiBkaXI9Imx0ciI+DQo8ZGl2IGRpcj0ibHRyIj5PbiBUdWUsIE1hciAyMSwgMjAy
MyBhdCA2OjEy4oCvUE0gRXVnZW5lIEdyYXl2ZXIgJmx0OzxhIGhyZWY9Im1haWx0bzpldWdlbmUu
Z3JheXZlckBhZXJvLm9yZyIgZGF0YS1hdXRoPSJOb3RBcHBsaWNhYmxlIj5ldWdlbmUuZ3JheXZl
ckBhZXJvLm9yZzwvYT4mZ3Q7IHdyb3RlOjxicj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0ieF9nbWFp
bF9xdW90ZSI+DQo8YmxvY2txdW90ZSBjbGFzcz0ieF9nbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdp
bjowcHggMHB4IDBweCAwLjhleDsgYm9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIw
NCk7IHBhZGRpbmctbGVmdDoxZXgiPg0KPGRpdiBjbGFzcz0ieF9tc2cyOTM2NDg2NTM3ODMzMzUw
MiI+DQo8ZGl2IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJp
YWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDAp
OyBiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1NSkiPg0KSGVsbG8sPC9kaXY+DQo8ZGl2
IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmOyBm
b250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKTsgYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjU1
LDI1NSwyNTUpIj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJy
aSxBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigw
LDAsMCk7IGJhY2tncm91bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+DQpJIHdhbnQgdG8gdXNl
IGFuIGV4dGVybmFsIElRIG1peGVyIHdpdGggYW4gZXh0ZXJuYWwgTE8uJm5ic3A7IE15IHNpZ25h
bCBpcyAxNjAgTUh6IHdpZGUsIHdoaWNoIGZpdHMgbmljZWx5IGludG8gdGhlIG5vbWluYWwgY29t
cGxleCAyMDAgTUh6IE55cXVpc3Qgb2YgdGhlIFgzMTAuJm5ic3A7IFVuZm9ydHVuYXRlbHkgdGhl
IG9ubHkgZGF1Z2h0ZXJib2FyZHMgZm9yIGRpcmVjdCBhY2Nlc3MgdG8gdGhlIEFEQ3MgYXJlIExG
Ulggd2hpY2ggbWF4ZXMgb3V0IGF0IDMwIE1IeiwNCiBhbmQgdGhlIEJhc2ljLVJYIHdpdGggYSBt
aW5pbXVtIG9mIDEgTUhaLjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaSxB
cmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAs
MCk7IGJhY2tncm91bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+DQo8YnI+DQo8L2Rpdj4NCjxk
aXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7
IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApOyBiYWNrZ3JvdW5kLWNvbG9yOnJnYigy
NTUsMjU1LDI1NSkiPg0KSSBhbSB0aGlua2luZyBvZiBzcGlubmluZyBhIGN1c3RvbSBkYXVnaHRl
ciBib2FyZCBkZXJpdmVkIGZyb20gTEZSWCB3aXRoIGEgd2lkZWJhbmQgZGlmZmVyZW50aWFsIGRy
aXZlciBzdWNoIGFzJm5ic3A7PGEgaHJlZj0iaHR0cHM6Ly93d3cuYW5hbG9nLmNvbS9tZWRpYS9l
bi90ZWNobmljYWwtZG9jdW1lbnRhdGlvbi9kYXRhLXNoZWV0cy82NDA2ZmMucGRmIiBkYXRhLWF1
dGg9Ik5vdEFwcGxpY2FibGUiIGlkPSJ4X21fMjkzNjQ4NjUzNzgzMzM1MDJMUGxuazg4NTg4MyI+
aHR0cHM6Ly93d3cuYW5hbG9nLmNvbS9tZWRpYS9lbi90ZWNobmljYWwtZG9jdW1lbnRhdGlvbi9k
YXRhLXNoZWV0cy82NDA2ZmMucGRmPC9hPiZuYnNwO29yDQogYWx0ZXJuYXRpdmVseSBqdXN0IHJl
cGxhY2luZyB0aGUgY2hpcCBvbiBhbiBMRlJYIHNpbmNlIHRoZXNlIGFwcGVhciB0byBiZSBmb290
cHJpbnQgY29tcGF0aWJsZS4mbmJzcDs8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNh
bGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpy
Z2IoMCwwLDApOyBiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1NSkiPg0KPGJyPg0KPC9k
aXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5z
LXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKTsgYmFja2dyb3VuZC1jb2xv
cjpyZ2IoMjU1LDI1NSwyNTUpIj4NClNlcGFyYXRlbHksIEkgd2FzIGxvb2tpbmcgYXQgTEZUWCBz
Y2hlbWF0aWNzIGFuZCB0aGUgcGFydCAjIGZvciB0aGUgYW1wbGlmaWVyIGlzIG5vdCBzcGVjaWZp
ZWQuJm5ic3A7IENhbiBzb21lYm9keSBhdCBFdHR1cy9OSSBzYXZlIG1lIHNvbWUgdGltZSBhbmQg
bG9va3VwIHRoYXQgcGFydCAjLjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJy
aSxBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigw
LDAsMCk7IGJhY2tncm91bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+DQo8YnI+DQo8L2Rpdj4N
CjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApOyBiYWNrZ3JvdW5kLWNvbG9yOnJn
YigyNTUsMjU1LDI1NSkiPg0KQ29tbWVudHM/PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ibG9j
a3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+SGF2ZSB5b3UgY29uc2lkZXJlZCB0aGUg
QmFzaWNSWD88L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PiZuYnNwOyZuYnNwOzxhIGhy
ZWY9Imh0dHBzOi8vd3d3LmV0dHVzLmNvbS9hbGwtcHJvZHVjdHMvYmFzaWNyeC8iIGRhdGEtYXV0
aD0iTm90QXBwbGljYWJsZSI+aHR0cHM6Ly93d3cuZXR0dXMuY29tL2FsbC1wcm9kdWN0cy9iYXNp
Y3J4LzwvYT48L2Rpdj4NCjxkaXY+Jm5ic3A7Jm5ic3A7PGEgaHJlZj0iaHR0cHM6Ly9maWxlcy5l
dHR1cy5jb20vc2NoZW1hdGljcy9iYXNpY19kYnMvQmFzaWNSWC5wZGYiIGRhdGEtYXV0aD0iTm90
QXBwbGljYWJsZSI+aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vc2NoZW1hdGljcy9iYXNpY19kYnMv
QmFzaWNSWC5wZGY8L2E+PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5CcmlhbjwvZGl2
Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_SJ0PR09MB9126C531C901C0141417CDECEC819SJ0PR09MB9126namp_--

--===============4490956445429761386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4490956445429761386==--
