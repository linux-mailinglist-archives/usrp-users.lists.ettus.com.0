Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1776A8A82
	for <lists+usrp-users@lfdr.de>; Thu,  2 Mar 2023 21:35:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42B203846F7
	for <lists+usrp-users@lfdr.de>; Thu,  2 Mar 2023 15:35:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677789328; bh=iijlkS84rKgNBl3zHHcjMnlucaHtoAz1DrOMLvhYW5M=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hy2+F/Cx/GK4HOHX+qVwxhHJvgtvSOqakNcvnBtzCyxGqARZILpPbtiezgyy+P/Gk
	 zvf0gs+zP1KeA5vof7C2oQsY5deqx+8antwLJxitsBvTLoOyf4LRrgzKAsxlYIjrC9
	 LvMbq/xGMj4DqZd5l5rKbxELPi3WmMmgqBlz9syCob3Kt8o4TwTW5Meq74FL6dF67C
	 8179aAo8/avC76SrZBc4E5UAFe/YSHzPrKht0+Fj5bTrPfXLYPuQCR5PrJWylF6yz8
	 QwPQFA7uUR9pLGuIbe5HqgyTptJJ3jghh0gUtnsSquGGwN6vDdP3c7fbHR+AwaMTIt
	 Ohf7BrOwIXe7g==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id C8B73384737
	for <usrp-users@lists.ettus.com>; Thu,  2 Mar 2023 15:34:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="gJTrWF+H";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="xSqYVIQB";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1677789285; x=1709325285;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=kODTYeUR4d9mdmduDZLl1SyzJw5BDifscJEVdssSpC8=;
  b=gJTrWF+HuyFXgBGHy7Xe70kLZ7Z0CxUuKBcFcZpIKy0/ke5T0DyCxKyI
   brpupKnetk3beOf7aYW1/q1wUolGxxkYIpHbhe2+Am1JZ6mU/rBsKCVff
   ekdaegtt+d+01dcrerMs+/0SNRFkYPexVOqDGXjnPWk7PrZOdgGz64Ovx
   w=;
x-SBRS: 5.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="2103779"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400";
   d="scan'208,217";a="2103779"
X-IPAS-Result: =?us-ascii?q?A2ENAABUBwFkmGdBL2hXAw4OAQEBAQEBBwEBEgEBBAQBA?=
 =?us-ascii?q?UCBOwcBAQsBgSkBWiiBBwKBWoUlh02JAQOWfoZLFIERAxg1CQ8BAQEBAQEBA?=
 =?us-ascii?q?QEHAi4BCgsEAQEDBIR+AoUxJjQJDgECBAEBAQEDAgMBAQEBAQEDAQEBBQEBA?=
 =?us-ascii?q?QEBBwMBAgIQAQEBAQEBAQEVCRkFDhAFIoVoDYNWTTsBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEFAkFHDEIBAQEBAwE/AQEMIAsBDwIBC?=
 =?us-ascii?q?A4DBAEBKAcoCQEUCQgCBAgGBQgVBIIFWAGCFlIGAzETrwR4gTSBAYIIAQEGB?=
 =?us-ascii?q?AScTBhdgV4DBoFAAYNKg3keWFyDUYRHNoFVRIEVQ4I3MD6EDwESASMfDAkRg?=
 =?us-ascii?q?0qCLlc2gR4DKEgmAz0Zcj9UK0QCAhYEPwUoDT4EAQERgSw7AoF8gi0PAYFmA?=
 =?us-ascii?q?gICAoVzCoE0dIEhDoE9gQkCCQIRa4ESCGiCAEECD3QODloHNgNEHUADCzs6P?=
 =?us-ascii?q?zUUIwUEVYEbJAUDCxUqRwQINgUGHDQRAggPEg8GJkMOQjc0EwZcASkLDhEDT?=
 =?us-ascii?q?oFHBC9CgRsCBAEoJJswAVEQV24IZQUTkneOC44mk2M0B4N8gU8GDIhggSKNF?=
 =?us-ascii?q?ogaFqk5l1qNUpUEhRgCBAIEBQIOCIFifCpwMxowQ4IBZlIZD44gGYNZjzRFd?=
 =?us-ascii?q?TsCBwsBAQMJi0EBAQ?=
IronPort-PHdr: A9a23:2nuA7B/X4wYMZ/9uWCboyV9kXcBvk7n3PwtA7J0hhvoOd6m45J3tM
 QTZ4ukll17GW4jXqpcmw+rbuqztQyoMtJCGtn1RfJlFTRRQj8IQkkQpC9KEDkuuKvnsYmQ6E
 c1OWUUj8Wu8NB1cFdz5IVrIrS7a0A==
IronPort-Data: A9a23:GyZwy6DIsM3JVxVW/5/jw5YqxClBgxIJ4kV8jS/XYbTApDor1TIHy
 WcWWGvSP/zfZjGnLtAlbomw8UgAvpeAydFkTANkpHpgZkwRpJueD7x1DKtR0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC+0/1WlTGhSAki/rXLlbEILeYfHo3HGeIcQ954Tp7gek1n4V0ttawBgKJq
 LvartbWULOf82Yc3lk8tuTS+HuDgNyo4GlD5gdmP6gQ1LPjvyB94Kw3dPnZw0TQH9E88t6SH
 47r0Ly/92XFyBYhYvvNfmHTLyXm6paLVeS/oiI+t5qK23CulQRrukoPD8fwXG8M49m/t40ok
 o0V7fRcfi9yVkHEsLx1vxC1iEiSN4UekFPMCSDXXcB+UyQq2pYjqhljJBheAGEWxgp4KWNl+
 /NDMDxVVTKegc/m7q27WsRo1v12eaEHPKtH0p1h5R7yJq58BLzmGODN79Ie2yosjMdTG/qYf
 9AedTdkcBXHZVtIJ0sTD5U92uyvgxETcRUB8A7T+fVxvTWVlVQquFTuGIO9ltiiSNhak0CV4
 G3c9nXnDwsyPdGFznyC6H3Eaurnx3qjA91NRdVU8NZmuWya6EwpSyFHD36Ent7+tGSiePh2f
 hl8Fi0G9vFprxTyFLERRSaQvWWeplsBQNdKCMU+6RqR0ezZ/xqEHS4PSTspQNAtvsYsQicCy
 0OEj9ryQzFjrdWopWm1876VqXa+PHMaJmRaPyscF1JduJ/kvZ05iQ/JQpB7Cqmpg9bpGDb2h
 TeXsCw5gLZVhskOv0mmwbzZqzCHqJeSVgJt3SfKWE/1wBx5dKOhN7X9vDA38s18BIqeS1CAu
 l0NlM6f8P0CAPmxeMqlELRl8FaBt6btDdHMvbJ8N8J+qGn1qhZPaagVsW4ufh44WioRUWaxO
 Be7hO9H2HNE0JKXgUJfZouwD4EmyPPvHt+9DPTMNIMWOd52aRON+zxoaQiIxWfxnUMwkKY5f
 5CGbcKrCnVcAqNipNZXewv/+eF0rszd7TqMLXwe8/hB+ebODJJyYeteWGZilshjsMu5TPz9q
 r6zzfeixRRFS/HZaSLK64MVJl1iBSFlWs+p+5UHLLDaclcO9IQd5xn5keJJl2tNz/U9qws01
 ivmMqOl4Aah1CKWeV3VApydQOi1Ac4u9BrXwhDAzX7zgiN4Od/1hEvuX542dqMg7+tt0bZ9X
 eQfdq297gdnG1z6F8AmRcCl9uRKLU3z7SrXZnbNSGVhI/ZIGlKYkve6JFeH3HdVVEKf65Bhy
 4BMIyuGG/LvsSw4UpaPAB9upnvs1UUgdBVaBBaWcoQKJhu2mGWoQgSo5sIKzwg3AU2r7lOnO
 8y+WH/0ecGlT1cJzeT0
IronPort-HdrOrdr: A9a23:GGqAsqpl1h3oG+k2S5e04xQaV5u+L9V00zEX/kB9WHVpm5Oj+v
 xGzc5w6farsl0ssSkb6Ku90KnpewK+yXcH2/hqAV7CZnishILMFu1fBOTZslrd8kHFl9K1kJ
 0QC5SWa+eAR2SS7/yKhjVQeuxIqLbozEnrv5am854Hd3AJV0gU1XYcNu/tKDwSeOApP/oEPa
 vZwvACiyureHwRYMj+LGICRfL/q9rCk4+jSQIaBjY8gTP+wQ+A2frfKVy1zx0eWzRAzfMJ6m
 7eiTH04a2lrrWS1gLc7WnO9J5b8eGRheerRfb8xPT9GA+cyjpAV74RGIFqiQpF4d1Hpmxa0u
 Uk6C1QQvibo0mhAl1d5yGdljUImQxelUMLxTKj8ATeiN28SzQgB8Vbg4VFNhPf9ko7pdl5lL
 lGxmSDqvNsfGX9dQnGlqz1vitR5z2JiGtnlfRWg21UUIMYZrMUpYsD/FlNGJNFGC7h8ogoHO
 RnEcmZvZ9tABunRmGcunMqzM2nX3w1EBvDSk8eutaN2zwTmHxi1UMXyMEWg39F/pMgTJtP4f
 jCL81T5fhzZ95Tabg4CPYKQMOxBGCISRXQMHiKKVCiD60DM2Klke+D3Fz03pDZRHUl9upApH
 2aaiIoiYcbQTOfNfGz
Received: from mail-dm3gcc02lp2103.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.103])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2023 12:34:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCMC3ONpsXPrsyJpN3FgmguIfpWrmBTbZS/zLRSYv/H+/1IG78Etfa5THHMlKlk/6d05EfR+/TYLu2AEsLJf+OUDGfd6jxgzPf4MgGDqCRHTZ38kIuCZURROTLAfrfC9VCg37hJosnj5ovVHZeVq4ZRExK6mmRqQcVSbAq1K+vB2nClNfCDfdXN+ia4zwpI8bfIyNeU/7lMvC7CZL6UjZz1ormtXUb6Juq2lalePlIQafTc0hZebLDLVQXizFkz63O56auA+BVILCtCVtR/EkVQ39wfIKtCwrTBZzORvGDcXkifjDePBUYINaHd5quwsJN00wYSOKiFEdjn33Nsz1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XI9HYf5a58UQ+G4Em+d72D9DS4Le5V4+dh9VDffX07U=;
 b=G31VyjZmbYh8F//1myky5OIy+ZH5CY4xZOfTNTcNeLHpnT3LPtn4XFWhTgqUGjCsjumATvoUnYBj0wM16hNTSCR8i0gPGRzK3hsVZ6pfUVZKKu0BwqEVmOrD3LXOzmK3d1Z0na3mBnWbvdVbDq75+ruCMDmrZqI19JpfQnjmQf5rRfcU2RkFSl59rgu+8AzhTtQXdHEYZVZUjgNUhu1rjvEJzCxUBG2LkBIdJiRrGYPnC8NLs0mMEbbCMMMaBHm9OXEtOZaRrxi4zyxad7aFAOmNoUdr/g9+S9N1ge6VczgxRw9ByNz9hScYaY/udH/rjuhOqH7FSy4wvZVIsCLjAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XI9HYf5a58UQ+G4Em+d72D9DS4Le5V4+dh9VDffX07U=;
 b=xSqYVIQBj5Row5zPQ00xw3gBlyJ8Bjs7yo/HvHN0oZnDLnaCVxzF1MbNdxPbiVHOC7/b2h/Jdb7e93gtOE8MlpJA0wah0FaYUyRIJsu/GMZmF+lI6rO5K4SoRUkQfI9AC/IGE8RH27dvyO6YceUvN1jQqkgloTnGG6eL71WWVXM=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SJ0PR09MB10005.namprd09.prod.outlook.com (2603:10b6:a03:467::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.19; Thu, 2 Mar
 2023 20:34:38 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::d44e:83bd:1602:373%9]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 20:34:38 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Dylan Baros <dcbaros@utexas.edu>
Thread-Topic: [USRP-users] Underflows every 33s at 200 Msps
Thread-Index: AQHZS7q4sJ64tFYRfkevTMnuAm5gCK7lCeMAgAErK4I=
Date: Thu, 2 Mar 2023 20:34:38 +0000
Message-ID: 
 <SJ0PR09MB912626C7F0D9CE54CAB64B6EECAD9@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAMy0=DeO9jReKhk4U-KrHRvNx=svTXPgSgnpbGGYv4zynQd0Hw@mail.gmail.com>
In-Reply-To: 
 <CAMy0=DeO9jReKhk4U-KrHRvNx=svTXPgSgnpbGGYv4zynQd0Hw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SJ0PR09MB10005:EE_
x-ms-office365-filtering-correlation-id: 0f077f61-d56b-4940-849a-08db1b5d8b2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kFdILCjIj1i7qWVOMBTY9OKZqXiPrP66llLQ+FhkKSMKVyxmYmurx/shPwZh9Y4QimuzBnHJAskq5l3f/s/BoLgVVWl7+B7ju4Xv3WxQ1rNtj8bluGuFwBFNGnWWx4/iOWWElk/TNa3seuza0vRTTmimf3s5ib13g7hUIyhx4ZgJXGNQz6jYz6uxAW1zE3+Ye+ZdUKcyT/684VND61qMRf/LabQv+zjU0kLHyQvxYtOKPu19B5f0cwzTs4srafMzaXG8mbaMgpEpM8Zw5Oize/5huFlqJEjvGZrOuNrl33RFAdR9FiLsHTU0nmD4WsGI7R6adRoU+sdddN6f1gD7WdiUSsFNh7Q3cX/J/VCj5eH48N4Cjj6a0dt0dK+Adf4lJLJlTm1oaeD/m6rUsS6ulJoa9KoVUWdOf99yOTGAot3inMkFAqW1y3J7vr3dLcN/gGtfd1Az6v/9g6tKUgEYPy1sPQDrIF/eO04/RcadJ4ef82ndvD4KUtuQ42SxDQxFbSmRXM5oKfASr4n/nN/xkh9iveOhgmHC5mG+qF7HW4LKQVQ50Se23qkVdKdDrX3KnfYWSQ4LKso3SudOF5kJx6PkDY5IJJFfbXlDvTdiXks19nU4sn/Zf7Pf5jkyu6iYFZ5jii8lDE9dgJjrvQUYbICuyEtHFvXtw52FAu8yJpC7ZA370tlqYzuMjowo1AVp
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(451199018)(53546011)(508600001)(9686003)(6506007)(966005)(186003)(26005)(91956017)(4326008)(66446008)(64756008)(66556008)(2906002)(6916009)(7696005)(8676002)(76116006)(66946007)(66476007)(44832011)(52536014)(38100700002)(5660300002)(122000001)(86362001)(33656002)(40140700001)(166002)(8936002)(55016003)(71200400001)(38070700005)(83380400001)(66899018)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lVStb/MZDM5haM0KUGJjavATK5yDLFf8nKHoXjde0KBxvVwiGpwb42z31DSd?=
 =?us-ascii?Q?frWYvNXnFmyaxBSO52pJT3dPiDq57/D7xJTgC2HVBYNY8UK96pIOIOGRinT4?=
 =?us-ascii?Q?owf8sRi3MSbmUpIxijvitZLpN7LP+i0ItdpN0Pu3l60zWlsOhX0eVoOK3WIa?=
 =?us-ascii?Q?G/f6LxbujPKijeTxOwc8+6gUHKY96sNvOOSxuDsZOXSFvSPwCDV30nOuwcM8?=
 =?us-ascii?Q?CaHtZnK6d6aJoQmgZocXGYLxNZ2FL7TYebfAFssPqfeVB4gXM8Jt3PU2ZxGf?=
 =?us-ascii?Q?ObxGKhYm9UleJZmOC8zc5iWUTX3R0DtyDh5fnTJmuJLOTii9r60PK1KPQL+8?=
 =?us-ascii?Q?lGYopCBxiCcuMaU9vz6gDpgtoM6Zkz4WmqOBAbdj77POIqzihrgvtHo5im/E?=
 =?us-ascii?Q?GzO9rSZokJAJeDVKYmq9g7QHgOPOyB2ZsgbxXtdC5W0IbS32Osm75ygTVWsO?=
 =?us-ascii?Q?PvmioRBbUMTLH33rZ4Q1OKLkU8SMujokTlYxHrTPWdDxYs4qSy5xV06sD7Tg?=
 =?us-ascii?Q?rw3/P/sEgQkPLSWvNokJt5utScnfYCBHfPwHr+uoQY/JykIekBbVO4fivbJw?=
 =?us-ascii?Q?U6GbkIdliRKNBDimfBqYBDOietI4khchVDC0v1padf6ySOKG20MXaefoX0SY?=
 =?us-ascii?Q?xrr7MSkOLKie504XXc8WcIgAgZUJSqLKC/RSztTcMxW/ezsho1OP2L6MWZ03?=
 =?us-ascii?Q?lMv1Nz1oKac00VeOUbwrkoyr77PBb6tVlFal9+yne6M4C7NHHenoodtjaduO?=
 =?us-ascii?Q?EMUTrAYU/q29f4eRKpWogLSO3OHPPK/+AYDsDvU5PKBD0wTwsTIIXTw58DAs?=
 =?us-ascii?Q?T+b4fklAusG0ZIfx99Ff82jHB7TGpsnmcUeevVjJX0NfECerq5wAEUQud8SN?=
 =?us-ascii?Q?CRvqtrLXSuMK0Fe38bsQQALwp42w25IP9aBP+QxRvNbPs8bcHpEd9J/r5Xys?=
 =?us-ascii?Q?uj/Hl+WSl3HoSkAKSoA9Mn3s/dHZoxp9T6SPvgP1AIdLYDj5JD6J5+rWnB6N?=
 =?us-ascii?Q?TLwXjoDBjagQmZvMlmKWpNGqvDx/8am20v54JcSOvwWOP7WCkPLCTa4glYvs?=
 =?us-ascii?Q?n2Q1EQjq3rqPgKb9xHaycDYtLjWH6GWjzgaEv/NDlS6WdXuGqzoaaik2Q4kb?=
 =?us-ascii?Q?EXSdJNg0pYf0IzFdz/gPnlL++LYkEz0d/Zj1gHETM8EtIByq/LmXl0G5hn3G?=
 =?us-ascii?Q?4iDyi+Yagsc1Pp4IKAK0Ic6vi1+y+vCyy6oWgOyT7+jWDE/SWM10gH6ALMNU?=
 =?us-ascii?Q?H42UkUQiBCwQHgndsAOjGkqsRg0RcpYf0IXH7XQrbeRmK3WroBcU1Qio4YJw?=
 =?us-ascii?Q?zxm8vY1VzssSkOjEMSA0Gt2/n0jrGuCVaWUmXthCZnTWhzuqVgRJVZ1vYTJT?=
 =?us-ascii?Q?37OKBeW8I2V+Tww88QBHu2M1qJg2b9Hm/KPaCrMlgvLEY2o7/VLW0m2K92Do?=
 =?us-ascii?Q?E3vK1598jLmKsvaKwRVMN4HPnDEmQBoPYsKMnvVFDcduCllzJP1qpuIhAGDb?=
 =?us-ascii?Q?JGDiEdiVJ88W0VnbT7qysOwISdWu5gD8l3wgfH7Vp3Z6Pg0ECrDoz9dqCJQQ?=
 =?us-ascii?Q?wuHzqXLbmj2+0kqwDW0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f077f61-d56b-4940-849a-08db1b5d8b2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2023 20:34:38.3487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB10005
Message-ID-Hash: HKNKJNU32H4HD3Z7343NM3LH4UQ7HLHB
X-Message-ID-Hash: HKNKJNU32H4HD3Z7343NM3LH4UQ7HLHB
X-MailFrom: prvs=418c522ad=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflows every 33s at 200 Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NQ2FLRJFBOJBAK5SRJJKP3XFYFTBKJRK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1562032756602201263=="

--===============1562032756602201263==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912626C7F0D9CE54CAB64B6EECAD9SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912626C7F0D9CE54CAB64B6EECAD9SJ0PR09MB9126namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the suggestion,

Unfortunately I already take care of that (Ubuntu 20, 5.4.0-1070-fips).

echo RT_RUNTIME_SHARE > /sys/kernel/debug/sched_features

The symptom of that problem is underflows around once a second.  My underfl=
ows are around every 33s.  There is probably some other kernel process that=
 does 'something' on that timescale.

Note that I only experience the underflows at 200 Msps, but not at 100 Msps=
.

I am at a loss!  There was someone who mentioned a problem with using DPDK =
as root, will look for that message.

Eugene.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

________________________________
From: Dylan Baros <dcbaros@utexas.edu>
Sent: Tuesday, February 28, 2023 3:59 PM
To: Eugene Grayver <eugene.grayver@aero.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Underflows every 33s at 200 Msps

Good Evening Eugene,

Take a look at the bottom of this article:
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

This is what I think of off the top of my head.

Thanks,
Dylan Baros

On Tue, Feb 28, 2023 at 5:57 PM Eugene Grayver <eugene.grayver@aero.org<mai=
lto:eugene.grayver@aero.org>> wrote:
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

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_SJ0PR09MB912626C7F0D9CE54CAB64B6EECAD9SJ0PR09MB9126namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
Thanks for the suggestion,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
Unfortunately I already take care of that (Ubuntu 20,&nbsp;5.4.0-1070-fips)=
.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
echo RT_RUNTIME_SHARE &gt; /sys/kernel/debug/sched_features<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
The symptom of that problem is underflows around once a second.&nbsp; My un=
derflows are around every 33s.&nbsp; There is probably some other kernel pr=
ocess that does 'something' on that timescale.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Note that I only experience the underflows at 200 Msps, but not at 100 Msps=
.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
I am at a loss!&nbsp; There was someone who mentioned a problem with using =
DPDK as root, will look for that message.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
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
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Dylan Baros &lt;dcbar=
os@utexas.edu&gt;<br>
<b>Sent:</b> Tuesday, February 28, 2023 3:59 PM<br>
<b>To:</b> Eugene Grayver &lt;eugene.grayver@aero.org&gt;<br>
<b>Cc:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Underflows every 33s at 200 Msps</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Good Evening Eugene,</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Take a look at the bottom of this article:&nbsp;
<div><a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD">htt=
ps://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a></div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">This is what I think of off the top of my head.&nbsp;</di=
v>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Thanks,</div>
<div dir=3D"auto">Dylan Baros&nbsp;</div>
</div>
<div><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Feb 28, 2023 at 5:57 PM Eug=
ene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@a=
ero.org</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left-width:1px; border-left-style:solid; padding-left:1ex; border-left-c=
olor:rgb(204,204,204)">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
I have a simple application (C++) that essentially copies input to output.&=
nbsp; Using X310, direct connect 10 GbE, DPDK.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
Each thread is tied to an isolated core, none of the cores (other than DPDK=
) uses more than 75%.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
UHD:&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.4.0.0-0-g5fac246b<br=
>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
Kernel command line:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; background-color:rgb(255,255,255); color:rgb(0,0,0)">
<code style=3D"font-family:SFMono-Medium,&quot;SF Mono&quot;,&quot;Segoe UI=
 Mono&quot;,&quot;Roboto Mono&quot;,&quot;Ubuntu Mono&quot;,Menlo,Courier,m=
onospace; font-size:14px; background-color:rgb(255,255,255); color:rgb(23,4=
3,77)">iommu=3Dpt intel_iommu=3Don hugepages=3D1024 isolcpus=3D1-7 nohz_ful=
l=3D1-7 rcu_nocbs=3D1-7
 irqaffinity=3D0 intel_idle.max_cstate=3D0 ipv6.disable=3D0 fips=3D1</code>=
<span style=3D"font-size:14px; display:inline!important; background-color:r=
gb(255,255,255); color:rgb(23,43,77)"><span style=3D"">&nbsp;</span>.</span=
><br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_m_-3074783446654621431Signature">
<div id=3D"x_m_-3074783446654621431divtagdefaultwrapper" dir=3D"ltr" style=
=3D"background-color:rgb(255,255,255); color:rgb(0,0,0)">
<p><font face=3D"Arial, sans-serif" style=3D"font-family:Arial,sans-serif; =
color:rgb(0,0,0)"><span style=3D"font-size:13.33px; font-family:Arial,sans-=
serif">I have turned off all the services I can think of, including irqbala=
nce.</span></font></p>
<p><font face=3D"Arial, sans-serif" style=3D"font-family:Arial,sans-serif; =
color:rgb(0,0,0)"><span style=3D"font-size:13.33px; font-family:Arial,sans-=
serif"><br>
</span></font></p>
<p><font face=3D"Arial, sans-serif" style=3D"font-family:Arial,sans-serif; =
color:rgb(0,0,0)"><span style=3D"font-size:13.33px; font-family:Arial,sans-=
serif">I am seeing an underflow event every ~33.4s.&nbsp; Very repeatable a=
cross runs.&nbsp; Anyone have any idea what could
 be causing this?</span></font></p>
<p><font face=3D"Arial, sans-serif" style=3D"font-family:Arial,sans-serif; =
color:rgb(0,0,0)"><span style=3D"font-size:13.33px; font-family:Arial,sans-=
serif"><br>
</span></font></p>
<p><font face=3D"Arial, sans-serif" style=3D"font-family:Arial,sans-serif; =
color:rgb(0,0,0)"><span style=3D"font-size:13.33px; font-family:Arial,sans-=
serif">Eugene.</span></font></p>
<p><font face=3D"Arial, sans-serif" style=3D"font-family:Arial,sans-serif; =
color:rgb(0,0,0)"><span style=3D"font-size:13.33px; font-family:Arial,sans-=
serif"><br>
</span></font></p>
<p><font face=3D"Arial, sans-serif" style=3D"font-family:Arial,sans-serif; =
color:rgb(0,0,0)"><span style=3D"font-size:13.33px; font-family:Arial,sans-=
serif"><br>
</span></font></p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt"=
><span style=3D"font-family:Arial,sans-serif; font-size:10pt; color:black">=
<span id=3D"x_m_-3074783446654621431ms-rterangepaste-start" style=3D"font-f=
amily:Arial,sans-serif"></span><span style=3D"font-family:Arial,sans-serif;=
 font-size:13.33px; color:rgb(0,0,0)">________________________</span><span =
id=3D"x_m_-3074783446654621431ms-rterangepaste-end" style=3D"font-family:Ar=
ial,sans-serif"></span><br>
</span></p>
<p style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt"=
><span style=3D"font-family:Arial,sans-serif; font-size:10pt; color:black">=
Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912626C7F0D9CE54CAB64B6EECAD9SJ0PR09MB9126namp_--

--===============1562032756602201263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1562032756602201263==--
