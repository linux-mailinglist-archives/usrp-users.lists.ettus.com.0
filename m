Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C246A63F0
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 00:57:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F07BD3844C6
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 18:57:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677628631; bh=lCv38lyawKAzipAg3lG0OZm6mdDgR1aRvDwzmKFM9lA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iyK+34D8GPDRjrIqTC+DkZj5SGntfandy7v3Al3+UJHdSIiNKOV+XIrGpqPFrSBl/
	 5z4A6+NffQdab+DN/ILsszG7QIqPSdqidmNup7Ck8B6/BmrJmNacOCa5akifjIuwQ7
	 zsi7dhdqUWm2nWBtjHTlijNrABSxJkezYhH2V61nCyqn9al6UZgDnwDK211+Wnf/sW
	 /9i4VG1E6EtrBvLiS0QDphXxdWl9T3bObmRg/86ZpzRgqxTecVfX9OF7uW0WvKbQ9j
	 rL0aUTQX9a7dMw7eAVHVOkcwWPepRoHmVvjcbUoqXZANro6C+3QXgcsm1p/HqTDvZU
	 nZNuSMJ4BgvfA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id AEABD3844C0
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 18:56:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="TphiyAae";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="ah4kVb78";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1677628587; x=1709164587;
  h=from:to:subject:date:message-id:mime-version;
  bh=mtDq/VdnAlhrfDb2xoUCtsIB5f/UtAuedOKSiN+UYqs=;
  b=TphiyAaew5nOMkOG1Xu2d+yPeZjZa0b9Wb19trB8gp4xd5W7UhaXhLJB
   nFubKdXHPfc0OsK7nXMyFGCUb2geDSIIq0UL3rMDFlAd+Ujp1r3MRvLIE
   eAu9B7OzFBStZHVOVq50fnqclUA2Jv03Siu6nY2r//097WIA8LrWrOTY0
   s=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="2095149"
X-IronPort-AV: E=Sophos;i="5.98,223,1673942400";
   d="scan'208,217";a="2095149"
X-IPAS-Result: =?us-ascii?q?A2FeAgAjlP5jh2RAL2hXA4EJgU+BKlsogQeBXKx0hHWBV?=
 =?us-ascii?q?oElAxg+DwEBAQEBAQEBAQcCRAQBAQMEhH4ChTEmNAkOAQIEAQEBAQMCAwEBA?=
 =?us-ascii?q?QEBAQMBAQEFAQEBAQEHAwECAhABAQEBGQkXBw4QBSKFaA2DVk07AQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQKBCIEVAQE4EQGBACcEG?=
 =?us-ascii?q?4IeWIIXUgYDMbFYgTSBAYIIAQEGBAScTBhdgV4JgUCDSoN5HlhciE6BVUSBF?=
 =?us-ascii?q?UOCN4U0RYNKgi6OXocFaYE0dIEjDoE/gQkCCQIRb4EUCGyCAkcCD4EDBzYDR?=
 =?us-ascii?q?B1AAwt1PzUUIQUEVYEbJAUDCxUqRwQINgUGThECCA8SDyxDDkI3NBMGgQYLD?=
 =?us-ascii?q?hEDUIFHBHOBFgoCUZpsAYMYkwqOC4F5jCyTYjQHg3wFgUoGDIhgllIWqTiXW?=
 =?us-ascii?q?aJWhRgCBAIEBQIOCIFighYzGjCDKlIZD445g1mPeXU7AgcLAQEDCYskAQE?=
IronPort-PHdr: A9a23:L0VLuxb92gx6A6c0MLXnSBL/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:S0PYAKA5Bmw09xVW/7Pjw5YqxClBgxIJ4kV8jS/XYbTApGh20GcAy
 jcaD2HTOvaIM2CmfYx3bYW1oE9T7ZbVzdQ2TANkpHpgZkwRpJueD7x1DKtR0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC+0/1WlTGhSAki/rVLlbEILeYfHo3HGeIcQ954Tp7gek1n4V0ttawBgKJq
 LvartbWULOf82Yc3lk8tuTS+HuDgNyo4GlD5gZkNagQ1LPjvyB94Kw3dPnZw0TQH9E88t6SH
 47r0Ly/92XFyBYhYvvNfmHTLyXm6paLVeS/oiI+t5qK23CulQRrukoPD8fwXG8M49m/t40ok
 o0V7fRcfi9yVkHEsLx1vxC1iEiSN4UekFPMCSDXXcB+UyQq2pYjqhljJBheAGEWxgp4KVxUy
 dUJdm1dVx+Cg++RkJ2gVtg32u12eaEHPKtH0p1h5R7yJq58BLrnG+DN79Ie2yosjMdTG/qYf
 9AedTdkcBXHZVtIJ0sTD5U92uyvgxETcRUB8A7T+fVxvTSVlVQpuFTuGIO9ltiiSNhak0CV4
 G3c9nXnDwsyPdGFznyC6H3Eaurnx3uqBdtORdVU8NY30Q22x00KNiQ8VFu3iNKms1SXVpVAf
 hl8Fi0G9vFprxTyFLERRSaQvWWeplsBQNdKCMU+6RqR0ezZ/xqEHS4PSTspVTA9nMo/RDhv3
 FvTkNjiXWZrqOfMESrb8aqIpzSvPyRTNXUFeSIPUQoC5Z/kvZ03iRXMCN1kFcZZk+EZBxnN2
 QyjvXZj14wcjMoG8PWU5kz22G6F882hohEO2i3bWWes7wVcbYGjZpC15VWz0RqmBNbIJrVml
 ChU8/Vy/NziHrnWy3PQGLRl8KWBoqfaYGeF0DaDCrF4r2z1k0NPa7y8992XGauEGsMNeDusa
 kuJtghavMVXJCHzNfcxZJ+tAcM3y6SmDc7iSv3fcttJZN52aROD+yZtI0WX2ggBcXTAc4lgY
 v93ku71Uh727JiLKhLqF4/xNpd3nEgDKZv7H8yT8vhe+eP2iISpYbkEKkCSSesy8bmJpg7Ym
 /4GaZTVlU0OCLagP3aJmWL2EbzsBShqbXwRg5wHHtNv3iI8QwnN9teNn+J+Ktw9wMy5aM+Tp
 C/sARYwJKXDaY3vclzRMSg6MtsDrL56rHkhOjcrM0rg0mo+e4vH0UvsX8pfQFXTz8Q6laQcZ
 6BdJa2oW60TIhyapWh1RcSj/eRKKk737SrQZHDNSGZkIPZdq/nhoYKMkv3Hr3VVUUJadKIW/
 9Wd6+8sacdfH1g4UZyLNZpCDTqZ5BAgpQ67ZGOQSvE7Rakm2NECx/DZ5hPvH/wxFA==
IronPort-HdrOrdr: A9a23:OMNEwK5rPvwzGhHgyAPXwSqBI+orL9Y04lQ7vn2ZFiY5TiXIra
 qTdaogviMc0AxhPk3I6urwQZVoIEmsg6KdhLN8AV7MZniDhILFFuBfBOjZsnTd8k/Fh4lgPM
 5bGsAQZuEYZmIK7voSlTPIdurIt+P3kpxA692/815dCSVRL41w5QZwDQiWVmdsQhNdOJY/HJ
 2AouJaujuJYx0sH4+GL0hAe9KGi8zAlZrgbxJDLQUg8hOygTSh76O/OwSE3y0ZTyhEzd4ZgC
 L4ek3Cl+ieWsOAu1DhPlzontprce7au5d+7YK3+4kow37X+36VjcxaKsa/VXYO0amSAR8R4a
 TxSxtMBbUI11rBOm6yuhfjwA/mzXIn7GLj00aRhT/5rdX+Xy9SMbs1uWt1SGqr16MbhqAP7I
 tbm2aC85ZHBxLJmyrwo9DOShFxj0Kx5X4vi/QagXBTWZYXLOY5l/1pwGpFVJMbWC7q4oEuF+
 djSMna+fZNaFufK3TUpHNmztCgVmk6Wh2GXk8BsMqI1CU+pgEM82IIgMgE2nsQ/pM0TJdJo+
 zCL6RzjblLCtQbaKpsbd1xMfdfyla9MC4kHFjiX2gPTpt3R04lg6SHn4kI2A==
Received: from mail-bl2gcc02lp2100.outbound.protection.outlook.com (HELO GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.100])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2023 15:56:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncRZTIZleY1OPacDkza4ag5GWCytSc8LPauFUGxN+lh6ENwEIJzFq5Av6jVy2pu8lCJXtkJtZanfighUSufzCcv29GMKHpTCBorQYS0AQRMcZtX7j57eyt+QufVGqkuYjdfNLeVOSfrq4SLP1Xz9ZiOJS36I+la2sd2gXG+IyG/XZWFAK9IN8NLBQaavJQwnqfHgPRF/wDMLG4PbibO1aLv4t56s6GJRk4+TaaVadr7DL+oBlFbweCAfCjAYUzPNJ3yNLRaUKBu0R6dK4VDf1sY3NQDjoqm8MLSIKigk21HtelFwpDIFB8YMgvniuPhraQZj8G3EFXV8Z2ms09xcWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lhsv604w0Fay990gxYSGqBbwc5ehIgUa4HPniPpufYQ=;
 b=Zs9Ruh2O83mh1+ic/kIeNND4WBDITlU/i/f3qGq46G9LkfNjHYupx9xKlmcK71fskvUZD1aWfoWVN05jpv24kWnxl1zwHju+9ozvtEKmw2z211oPS09hiHGC8QEl876R7SiV0dODNl5osDLfy0rZ3I6QLzX6w2zPpP72sSQ0qYSy9mpc6VnoV108pMFI5vhX3H01m52cXYX9AFRUen/sNE/+dRvCTDNDO8Mv34oVjFdKbMg4eAJ12NehewOfr1qLsOy04rT/vqwsRt3XZMlvMP/UK9KfNwhdrfCvewgKszLdU0baof7C8MdJY+F2eL7KgCjLRFobxSSqaZJj4HFwNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lhsv604w0Fay990gxYSGqBbwc5ehIgUa4HPniPpufYQ=;
 b=ah4kVb781d1YAGrFICcE4tUku5iTIPZElKqtg6uNCqZ9+rAropetviJyYpcmWaGMvIc2XpnUPsrparOsaKJkxv1+Y8Ko0ij1LT+GsNbhZpR9v5XRefFm1cBU0gJX1xEaWFouf5W02jIspLtuOEdjxRpKNMo51/fpIXthCyOgUzo=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA9PR09MB5149.namprd09.prod.outlook.com (2603:10b6:806:45::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 23:56:23 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373%9]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 23:56:23 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Underflows every 33s at 200 Msps
Thread-Index: AQHZS7q4sJ64tFYRfkevTMnuAm5gCA==
Date: Tue, 28 Feb 2023 23:56:23 +0000
Message-ID: 
 <SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA9PR09MB5149:EE_
x-ms-office365-filtering-correlation-id: edb8d3d6-611f-407f-7083-08db19e76558
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 PLm4bIGxLgqcmfmL5Xmkz/6BASFZFEmaIFAHjFgNyJPv65j8EsAhVDrjooFZlIMG6phTtqLvhF+sdFL0lU5a5C84WOAiq/zX+peIH/FytsnVq+MtfSzJDqqLBlJKtTGY7AuMQBn/A/W/Sh45cWa8Qxj7tT5Au6IGn9nQHT5PNCcydYydeCWeWK4AKDJLaoEZXeVn0xCQqTN6lirR2CdK4YdUMliDuaigUcJQCg14blPY8WxnvphZjX21195eKRnsXZl+O8bDHRoiQTP8hEAvxpAs81LvcqdroTXq2QkvjEbJ8FQXw7bEJYvRRxXQj6PrpNRjZFXuMD4VBAwoeAyxSchRVPRc+YWoDE/Jx0XrLCUn/20FdfGKAmysnRc3toUDzgA/PzC5WsAhOlS4HayfUjWl8QM/Zaym2e6Zn2xZE7g7i3RiHfLO8HIxA5Fgtn5vjnSEY5OsfACE4+MAiPm5IlCXNAGxmgxWqlSkTfYEwqU9E5E5BFfNgGVDwocsyekOhhPEMt9Jg1a3sCgUuzV/+7udHJEyb6jfJL8BKFb7pmP0/BBAozhZ5zfcF+S+0H100jF4fwDPWmPzxY6VyjWskmxnWV91PW74oYq+xZ8u3rY9rzl3mKCPHefRLj6WWUT/ErGAs2MRyjnildTRro2XbKyswA0BqdbxljNxzMmu4+BvRz3krlzHxzNs1TH9fMmfCO8OXQWnxHL51ZtJQ+6i8g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(451199018)(19627405001)(44832011)(2906002)(5660300002)(38070700005)(52536014)(8936002)(4744005)(86362001)(6506007)(66556008)(66946007)(76116006)(8676002)(66476007)(66446008)(33656002)(64756008)(55016003)(498600001)(71200400001)(7696005)(40140700001)(6916009)(38100700002)(122000001)(9686003)(26005)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?shGz+rzMjRCCY+q76rzQBDW2+aSGNHjZgriqbUsuSnmNrh4GFNDAlBbfBd?=
 =?iso-8859-1?Q?mLcKO41JwzqDIcTzeUVMpDmE56vtLi8kSlHYzRepZn+b2TbGHvUcSQRv8F?=
 =?iso-8859-1?Q?rrwEMok4y3AiCvtP4pWWNPjQGAh+RDJfyT9RFt6uEzkomjhr/twWD+7THE?=
 =?iso-8859-1?Q?gu0YFo79Jikm+lpPYQYBwmlWXtE2t4ZCfJbLSwP2tNXYG3+epBbyEKzfLk?=
 =?iso-8859-1?Q?g9XakMgWb7n9XT0/JEQP+HDWxCGJj1IGZtd0yMuMvl7WGKJvCWdCFmuG70?=
 =?iso-8859-1?Q?4F+hslQPy9dELlTxqnknmmUYj8oPODh2uVQG2sOwDhieMpQBqT3jN+oyl7?=
 =?iso-8859-1?Q?6RbJ07TemOAPaWURwzIDCkXlbwaIlqC6VQEef5NRdlF/tvleg+xQUKXU1H?=
 =?iso-8859-1?Q?nkRL4Z463qvUCta6pIyBClX9NM8yByASDNX3cMZy7EDOzy/8QMx2EteVFP?=
 =?iso-8859-1?Q?4Rw8urGkGTR/rhguTpQaNexAy4ZkMpWL1tBkE0Wwp/o/NQZR+rft0oGAdA?=
 =?iso-8859-1?Q?HA3ZQO3IRLFeB4ABPO5XkF9c8MPfbpGKPavToxKKuHs7JoGNvvhjsgmQwl?=
 =?iso-8859-1?Q?k5SSSOr3ncKMq7Zrtv47KzQwpjIi6dFfvqq5VAQ1fs1xSqQUj3MiwCfvaJ?=
 =?iso-8859-1?Q?5RLPd9YR9Y797UKZ/bVbjuq0N8UljCTimxiD2OFXnYEs3B49NWK5GXzAY8?=
 =?iso-8859-1?Q?RJddghzopcnxFL3iDiG9VomggvBJESaXgJ6pnTmv3rv9fphYrS58p+eRBW?=
 =?iso-8859-1?Q?CJUshagErc5qaJbB6gmhH75aHD+4Dvlb0G9GIaI5rQAze7TnE0p01qy95R?=
 =?iso-8859-1?Q?opfdXOj+7bTI0X3MlREjPHieSYxfxASqfII2Qesi0U7gC0qpPOODLQLJle?=
 =?iso-8859-1?Q?ta8Vb3cYWGGgFFdEOaFegKZlJcmxVysjGLg9hdy3l89/o8yaN99lyLLIJS?=
 =?iso-8859-1?Q?4QRf3Uq11S47qkCthIv1rMywcADSOqDdtSmfa9ZQYR2HOBn9qHx2MVTDS/?=
 =?iso-8859-1?Q?ucWIvDnIJvdNYkmRUtrnqcUGSpg1jFh1yWDxvpU6S38ljAsJIEt1R+DCO9?=
 =?iso-8859-1?Q?SSC9zEcn1s4grGc2ozMPeV4Dbz6VNnifo54YHlutNqV2JlqhP2lHZFlqR9?=
 =?iso-8859-1?Q?XO9+2McMqQC1rVygFRQvPu+pRN0md9LhPn+PW6gApEQdiOeFCzwjRTP3iK?=
 =?iso-8859-1?Q?tFZ11TmCYEqJC9GDVy/JfKdviPy5lik5mYZRqczItkLX4yk7oUrFi/fAAb?=
 =?iso-8859-1?Q?LyhzUbWcNxwJoUne36U+lU6BzEWxwX5QVCuv/W6fjZa58An872yTj1bJKQ?=
 =?iso-8859-1?Q?yHwtWRQnIRcAZgsx1NF1M60FlktsbuBXjQ21ShZvPPv3JRrUMqjxwHUYIn?=
 =?iso-8859-1?Q?PlHqpH2GaD0a+kxhH84DZN0jYkmV02j/RIhx6uHHydQNxqYJ7CvRDwPYNg?=
 =?iso-8859-1?Q?Ildjhnemx75PCzIwP/5Kt2HV1ug4r46+353zplYJROo1DEFpnVtic8Gcuy?=
 =?iso-8859-1?Q?yKZbQJNpm4GBaOTFgNap72p2FicR+7fhB2Vfm4D818VBTcUlnLZ/0hOu3y?=
 =?iso-8859-1?Q?kswxQ8IwqU08mhPDMojrMfdeQxJEU6eQP+7JO/2MdV14P3MDfzf8NyMAQj?=
 =?iso-8859-1?Q?vV8nuhn5XMBkM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edb8d3d6-611f-407f-7083-08db19e76558
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2023 23:56:23.1023
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA9PR09MB5149
Message-ID-Hash: MSPC7PJ6NPEYIEANQ66PPKFD3XHKCPDI
X-Message-ID-Hash: MSPC7PJ6NPEYIEANQ66PPKFD3XHKCPDI
X-MailFrom: prvs=416a480bb=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Underflows every 33s at 200 Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XYW6DWSMUQQCNFUO7QOBQ45OR57LJRGR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0729364674004447246=="

--===============0729364674004447246==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a simple application (C++) that essentially copies input to output. =
 Using X310, direct connect 10 GbE, DPDK.
Each thread is tied to an isolated core, none of the cores (other than DPDK=
) uses more than 75%.

UHD:

GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.4.0.0-0-g5fac246b

Kernel command line:
iommu=3Dpt intel_iommu=3Don hugepages=3D1024 isolcpus=3D1-7 nohz_full=3D1-7=
 rcu_nocbs=3D1-7 irqaffinity=3D0 intel_idle.max_cstate=3D0 ipv6.disable=3D0=
 fips=3D1 .


I have turned off all the services I can think of, including irqbalance.


I am seeing an underflow event every ~33.4s.  Very repeatable across runs. =
 Anyone have any idea what could be causing this?


Eugene.



________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9SJ0PR09MB9126namp_
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
I have a simple application (C++) that essentially copies input to output.&=
nbsp; Using X310, direct connect 10 GbE, DPDK.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Each thread is tied to an isolated core, none of the cores (other than DPDK=
) uses more than 75%.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
UHD:&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.4.0.0-0-g5fac246b<br=
>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Kernel command line:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<code style=3D"font-family:SFMono-Medium, &quot;SF Mono&quot;, &quot;Segoe =
UI Mono&quot;, &quot;Roboto Mono&quot;, &quot;Ubuntu Mono&quot;, Menlo, Cou=
rier, monospace;color:rgb(23, 43, 77);font-size:14px;background-color:rgb(2=
55, 255, 255)" class=3D"ContentPasted0">iommu=3Dpt intel_iommu=3Don hugepag=
es=3D1024
 isolcpus=3D1-7 nohz_full=3D1-7 rcu_nocbs=3D1-7 irqaffinity=3D0 intel_idle.=
max_cstate=3D0 ipv6.disable=3D0 fips=3D1</code><span style=3D"color:rgb(23,=
 43, 77);font-family:-apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot=
;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &=
quot;Helvetica Neue&quot;, sans-serif;font-size:14px;background-color:rgb(2=
55, 255, 255);display:inline !important" class=3D"ContentPasted0"><span cla=
ss=3D"ContentPasted0">&nbsp;</span>.</span><br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color: rgb(0, 0, 0); =
background-color: rgb(255, 255, 255);">
<p style=3D""><font face=3D"Arial, sans-serif"><span style=3D"font-size: 13=
.33px;">I have turned off all the services I can think of, including irqbal=
ance.</span></font></p>
<p style=3D""><font face=3D"Arial, sans-serif"><span style=3D"font-size: 13=
.33px;"><br>
</span></font></p>
<p style=3D""><font face=3D"Arial, sans-serif"><span style=3D"font-size: 13=
.33px;">I am seeing an underflow event every ~33.4s.&nbsp; Very repeatable =
across runs.&nbsp; Anyone have any idea what could be causing this?</span><=
/font></p>
<p style=3D""><font face=3D"Arial, sans-serif"><span style=3D"font-size: 13=
.33px;"><br>
</span></font></p>
<p style=3D""><font face=3D"Arial, sans-serif"><span style=3D"font-size: 13=
.33px;">Eugene.</span></font></p>
<p style=3D""><font face=3D"Arial, sans-serif"><span style=3D"font-size: 13=
.33px;"><br>
</span></font></p>
<p style=3D""><font face=3D"Arial, sans-serif"><span style=3D"font-size: 13=
.33px;"><br>
</span></font></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
12pt;"><span style=3D"color:black; font-family:&quot;Arial&quot;,sans-serif=
; font-size:10pt"><span id=3D"ms-rterangepaste-start"></span><span style=3D=
"color:rgb(0,0,0); font-family:Arial,sans-serif; font-size:13.33px">_______=
_________________</span><span id=3D"ms-rterangepaste-end"></span><br>
</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
12pt;"><span style=3D"color:black; font-family:&quot;Arial&quot;,sans-serif=
; font-size:10pt">Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9SJ0PR09MB9126namp_--

--===============0729364674004447246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0729364674004447246==--
