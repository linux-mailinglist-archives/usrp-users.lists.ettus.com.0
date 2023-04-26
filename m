Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D356EFA52
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 20:50:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88471383C7D
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 14:50:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682535052; bh=OaLsknT4beh8dNNoJFNXXdLkbfPbiYuBTWTZ5vpuc3w=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fQJXegOWWy1KSjei24TqB9/FyoV4+fTKyKm9Uk7rZGbsgVFMzcblbNzjg7ol+ogWS
	 2VyMEVd4BIk1Euo5lodM0xBNRYtvXjDQh7b8Gei5OhGVa8gadNmpPhzF/z+V2htVR0
	 rVVRmyVMEdwJH6VwnpZ1JrqI0qbo+k7tGk4wIFlFLfUZLcfsL66RGEIfP98SyMVIFW
	 /AfHWg79wOdNxe6Kfmybi6PkN43ePgu6Rc5+D9xnAts7vVPuIbSRq5gg2YjqKwO1zb
	 w4vgT8fJSD512YfJd1zX8DJgmoebpBjOYAvLA5oZZ7XYweVQjaMDu2XSeK5xv1DByG
	 T1wE86iXSGN0A==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E503380989
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 14:50:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="HRRVDLMT";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="Cn6eNnC+";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1682535011; x=1714071011;
  h=from:to:subject:date:message-id:mime-version;
  bh=JJEaSMRieiyZ3s7LBnu5RTkjEDN19ZsrlxPza2mclVc=;
  b=HRRVDLMTaJ//NM/DlcEckyihOTsIe6iXo89u4EkqE3T7uqbdYHVftfkR
   HRVUh5Qou5zlIv1DPbj5NLG4mgCZjsd28p4RNWZk9VpD7gpBT1wfVohp8
   EQS+kPsspdeeQCL0o+JDCGp7JuWuth5WasWFr5KNHmqQeca/cu4oUS88V
   E=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="2351917"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200";
   d="scan'208,217";a="2351917"
X-IPAS-Result: =?us-ascii?q?A2FgAgDIcUlkh2hBL2hXAx4BPAwCCxWBT4ErgQNzgVytG?=
 =?us-ascii?q?IR4gVaBJQMYPg8BAQEBAQEBAQEHAkQEAQEDBIR/AoU+JjQJDgECBAEBAQEDA?=
 =?us-ascii?q?gMBAQEBAQEDAQEBBQEBAQEBBwMBAgIQAQEBARkJFwcOEAUihWgNg1ZNOwEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQUCNYEWAQE4EQEMd?=
 =?us-ascii?q?CcEG4J2ghYNBgMxsW6BNIEBgggBAQYEBJxQGF6BXgmBQYNShAEeXGKIWIFVR?=
 =?us-ascii?q?IEVQ4dsHyaDTYIMIpYXaYEzcoEngTGBBAIJAhFrgRAIaYFzQAINZAsOboFFg?=
 =?us-ascii?q?xcEAhRCDBAGXARbBzYDRB1AAwt1PTUUHwUEgkkEb4ETAk6cSJMEjheBeowvl?=
 =?us-ascii?q?Ak0B4QBgVMGDIhrllMXg32TUpF0LocykBmiX4UZAgQCBAUCDgiBY4IWMxowg?=
 =?us-ascii?q?ypSGQ+OOYNZj3l1PQIHCwEBAwmLRQEB?=
IronPort-PHdr: A9a23:xbkfGhdGJ1LzG2X5VjBFLut+lGM/toqcDmcuAtIPh7FPd/Gl+JLvd
 Aza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZURgDhJYamgU6C5uDDkv2ZPfhcy09G
 pFEU1lot3G2OERYAoDwfVrX93S/9zlUHQ/wZmJI
IronPort-Data: A9a23:kmUyyajyn99/OMQUoke8eZIzX1613xAKZh0ujC45NGQN5FlHY01je
 htvXDvSOP6OYmr3Ld1zYIuy/BkFsMCHy9A3GwBp+XtnEigW8JqUDtmwEBz9bniYRiHhoOOLz
 Cm/hv3odp1coqr0/0/1WlTHhScijfngqp3UUbaaa3oZqTdMEXtn01Q68wIAqtYAqcCjBA+Qs
 s/FrcTaOVu0sxZ5KWt8B5ir8HuDh9yv/mJJ1rACTaoT5gSGyyNLVMh3yZyZdhMUfKEFRoZWe
 M6elNlVzkuBlz8xB9WslKrMc0FiatY+6iDT4pb+c/HKbilq/kTe4I5iXBYvQR4/ZwGyojxE4
 I4lWaqYFF5zZvWU8Agqe0Iw/ylWZcWq8VJcSJS1mZT7I0buKxMAzxjyZa2f0EJxFutfWAlzG
 fIkxD8lRSqCt+vo5byATKozj+E8NZDWN4QfgyQ1pd3ZJa5OrZHrbI7hvYUd8BJrw8dEELDZe
 tYTbidpYFLYeRpTN1wLCZU42uC1mn34dD4eo1WQzUY1yzGLkEotj/6zbZyMIoDiqcZ9xy50o
 krL4mv0BBxcO8aW2CSI6Fqli/XI2yThV+r+EZXiraMz0QTMroAVIEIbRUTq5ungsU+jR5V9L
 XUY4ggEloFnoSRHSfGmBkbj+Cfe1vIGYPJNCPcirRyWx7DPywKYHXQfCDNddME98sQxQFQXO
 kShmtroAXljteaaQnnFrLOM92rqZW4SMHMIYjICQU0d+d7/rYovjxXJCNF+DKqyid6zEjb1q
 9yXkMQgr54pjP4CiYC1xlaE3DuJuYGQcwUy5jyCCwpJ8ThFTIKiYoWp733S4vBBMJuVQzG9U
 J4sy5n2AAcmXcHlqcCdfAkeNO3wua7faVUwlXYqTsJ/rm72k5K2VdoIiAySMnuFJSrtldXBT
 ELI8SZW5ZleJxNGhocqO9npVKzGIUXwfOkJu9jRZ9tKJ5R0LwCM93k0YVbKhjix1k8xjas4J
 JGXN962CmoXArhmyzzwQPoB1bgsxWY1wma7qXHHI/aPjub2iJ29EOht3L6yggYRsPLsTOL9r
 4Y3Cidy408DONASmwGOmWLpEXgELGIgGbf9oNFNe+iIL2JOQT9xUaONnu97K9w8x8y5c9skG
 FntCye0L3Kv1BX6xfmiMCwLhE7HAckn9CljbXNE0aiAgid6PdzzhEvgS3fHVeJ+r7c7lKQco
 wgtfsSLGPNUTTrbsz0PcIPwxLGOhzz67T9iyxGNOWBlF7Y5H1Kh0oa9ImPHqXdSZgLq65pWi
 +P6imvzH8FZLyw8V5m+VR5a5wjs1ZTrsLkuBBSgzxg6UBmEzbWG3ASo06dveJ5Xd0mdrtZYv
 i7PaSolSSD2i9dd2LH0aWqs9u9Fz8MW8pJmIlTm
IronPort-HdrOrdr: A9a23:yNGkV6B1XIcnwSTlHehOsceALOsnbusQ8zAXPh9KJCC9I/bzqy
 nxpp8mPEfP+VAssQIb6Km90ci7MAXhHPtOjbX5Uo3SODUO1FHIEGgA1/qq/9SDIVyYygc178
 4JHMZD4bbLfDtHZLPBkWyF+qEbsbu6Gc6T5dv2/jNId0VHeqtg5wB2BkKwCUttXjRLApI/Cd
 61+tdHjyDIQwVdUu2LQl0+G8TTrdzCk5zrJTQcAQQ81QWIhTS0rJbnDhmj2AsEWT8n+8ZpzY
 GFqX212kyQiYD19vbu7R6c031ioqqs9jIMPr3MtiFfEESVtu/hXvUbZ1TFhkF8nAjn0idWrD
 HBzi1QRfhb+jffeHq4rgDq3BSl2DEy62X6wVvdmnf7p9flLQhKfvapqLgpAScx0XBQzu1Uwe
 ZOxSaUppBXBRTPkGD04MXJTQhjkg6xrWA5meAegnRDWc9GAYUh2rA37QdQCtMNDSj64IcoHK
 1nC9zd/u9fdRefY2rCtmdizdSwVjA4HwuAQEIFpsuJugIm6ExR3g8d3ogSj30A/JUyR91N4P
 nFKL1hkPVUQsoffctGdZc8qAuMex3wqD73QRyvyA7cZd060lr22uHK3Ik=
X-Talos-CUID: =?us-ascii?q?9a23=3AxuIUh2tGDixpWMJ1HKUND3xa6IsOSHztxSn1LXS?=
 =?us-ascii?q?+SjlgbaKMEGKb/6Ndxp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3Ay8vY2Q9mgNm8o+ZdA0Kg3vmQf5hl87v/T1BUqpQ?=
 =?us-ascii?q?bp46mMxV8IxW3tx3iFw=3D=3D?=
Received: from mail-dm3gcc02lp2104.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.104])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2023 11:50:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cs59/lppW8pRPbFQRRpkdNpYJlfdGunkNx4L8xlT969RlMZ0PKZZicCPDAckfOTUecw185L6MjnxjuKjgwpI9lwDmtKn0k2HTXPxx1r4/Twi9DKG+tWXUoSIlk3E+gziGc7ZADMpvsMspRmI9vcwoItwtUD7gqy8S9PFIY+e4rHD5G6mhuboVZlwKCe9lXUesDY+AphQ7lmpo9TgmILuXslrGkD7bbcs5RwuqHcZ+9l2PZEkRekzffRRtqQSuo9hlYniXYvBlvn7v5rj1NUrjU/jkR7iUGlPHKEQcBAR2nRHJgelPTqpDR1lqU45FaP3lKErnfMI2i64lNJ9NmeLMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zcsBjLk+y2N8DwGAski06MdYOTy+Ggz3PdJqsj3GYXg=;
 b=HfGcm8RGABDwVGKmDR3SKApUPV0E1YwYCFbeA5pYEg4hMC4I/BRTAbNlIXp87WcWVzJDTOtgHuKujET5DK3+ZIpldWJ6MNGREtrJlPyME0zFgeKYgPtn6QdrbeAyIX86xZE6ltamnJB9aNXnxhqTUbUDYO9q8u4L7bAJq9ep3ctFeJJgAbeUqYVSfkxWNCkwcKRmugjxF89TBnOKfDoOUoAVNHhirlQuLBD3RnqObOfPDuuhYsRz6lJ8QIqIE1FwwBSXloVIyVZTvKsj0SlsVsgLYHwVxzaPmMx/+IEJmtJcaG85811R16Xk35jGsJiqQmg5oS68fK6eIpGUHASkMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zcsBjLk+y2N8DwGAski06MdYOTy+Ggz3PdJqsj3GYXg=;
 b=Cn6eNnC+OLXJf8NzwJjg9L4Tw3IVz0ntE1z1dJN7QLmw1uiUYk6qNhysPezUR1wHcmTtWsjbaucpCJXP764tZYsUAfgSJgbTZOGtMs08ZM25mbSOB1Ntrxvx8vzaN1PwweJ+FznyNiMDpLan+MNkeVfB6kKnycoTep+TH0fF7b0=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SJ0PR09MB7392.namprd09.prod.outlook.com (2603:10b6:a03:26e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Wed, 26 Apr
 2023 18:50:08 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::89b3:d652:b7c0:1496]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::89b3:d652:b7c0:1496%8]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 18:50:08 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: DPDK ignores the $UHD_CONFIG_FILE
Thread-Index: AQHZeG+0T1Oup+ytNU+z4pCqsqKu/g==
Date: Wed, 26 Apr 2023 18:50:07 +0000
Message-ID: 
 <SJ0PR09MB9126D338E3E787735AF8410DEC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SJ0PR09MB7392:EE_
x-ms-office365-filtering-correlation-id: 1040c997-db13-4397-c761-08db46870e61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AyRJBbue2egCAM8ogBxW6YRoe8U1REFc7I6+Ou4XcLrmLZ7lW9s1xcSTs6udYafXGb0pnTuyoXhYFKv3JmycwkHca4i/JYd5NQc4wWdh7mFNcJRGRFjaVkjQczqZJVPchIbXYCKNgcpwi7wvz92w/WspYrdB8a7nQtVuEJRv4m3VCrseXl8urltxAuoC6skBLFPpm5HOLzRvfxrJPqsIsVgA2ojc9N4hH4oQeIJmFrXrVOkPncNYOGqcIdrhAMn/bO1fE+wRrwHnEPpYJ1ncT/cCtBUlQPYnEJ8QCahwiZJnlY4kaatyoBZGwqg/isKwSWe3p+bCKJQ3NW+u2NOdELg22PeJ2D4Omc0EQD5U0R9WacObGEWxTVpMLFrCdOx+oA02o0whSlc3s93rtMSq7qJ6a7pcUWBr4WPj5+4yTs85bPm8pYySMlLJTXfnRATlslJ4AxvZ8b9Xk34dcAhG3IvEo322eYYqFbyoIj0lGqoo1RxOkJH0aQfmvTcjsuRk24bSYOPtUXuUnv6qnrRNfyhfAmB6kuTx9gS8qA+ozCskQKgj4EuUPzAeRRK3baR27HU7/0+KRD71QnKVuSut7aWDhd1eG+ePdtWj6hXu1e9f+tAuq3mqrKKVXiN+UOvW
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(451199021)(9686003)(26005)(6506007)(186003)(40140700001)(498600001)(33656002)(7696005)(5660300002)(71200400001)(52536014)(8676002)(8936002)(2906002)(4744005)(38070700005)(44832011)(86362001)(91956017)(6916009)(64756008)(66446008)(66476007)(66946007)(76116006)(66556008)(38100700002)(122000001)(55016003)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?t0Lu8lqzpSXAZIzUHv8TDuLnCvUtUkpL5dv2IkeCnyTpCYWmsvS3uWCuPN?=
 =?iso-8859-1?Q?DKoJFdEahL4DquCNyqP1V4if23aKwBWhwMt4owKEKHrFxQy7QbYwwR8fKq?=
 =?iso-8859-1?Q?HckjzfZFM0shKjzG9kFt8gHNdwNNMwcWl98aHvNVykStLbKdVLgqpZfLwv?=
 =?iso-8859-1?Q?o+KvGwpM1a6BgQREG7hVQ3sQ11Ot5FQa1+AJjE1+5+i10hNdIhdWLuwETP?=
 =?iso-8859-1?Q?MdAujxGqJXXvYhnPRN562UuwhjJIxTWE8/FRNtIwmIYngKoOTbWHyHs3Fb?=
 =?iso-8859-1?Q?zt1qZ3yQ2t9z4rDesf6ju03LQyxvoE4Ghaxq1guNWi1+wRCQTFk5zU+Ypy?=
 =?iso-8859-1?Q?mVjWfpTuKXljiPXsnc8FIIaVpENRPEoGsN9zl4KYE382qGC5XLceMuaq4e?=
 =?iso-8859-1?Q?PtCITt2T5IqKh4aOhhOZAOWAlYYI2FC8BEzUuf0r5wIIeHNdI/AGODo0rb?=
 =?iso-8859-1?Q?bnSizF3/o4T87rJICYcjawot5cnph+L5qtuGEbeUGSvxNQWAMLNM19d/a0?=
 =?iso-8859-1?Q?87a0LmTHlOkDXCaQIM1op3WQzzdVQ+Ax4COlLk3zb267mVX5EOxdEGGTtf?=
 =?iso-8859-1?Q?Et4dtvkTD26UoWYbSKizYIMG75C3uzOdd0AzT9oRi60uj0FOQCqbVBumxU?=
 =?iso-8859-1?Q?H99ZOL+aTyFfgYbkE1FskLarS7uriylKDCeAYZnp++EYbtHCc6cLmONXVv?=
 =?iso-8859-1?Q?jtPJYjUbNKzKwzQwxhGQJ37r/ce84tnqA4lHwjTDwBOohm8OUHahcp/MOL?=
 =?iso-8859-1?Q?rlerl4cmcS5yIFOW7ouTU+XLEZGQqy2vDu+KdDr/dAQWa1D9AyFxuwWvDn?=
 =?iso-8859-1?Q?ok+nV37oTLpI0hLVIuKBkyXxWXNKbC6PTMOINryAvQFprsAydG8WipeVIT?=
 =?iso-8859-1?Q?g4stiNvPbUnGrjXxBZYWZCGoKbLGZD93mr47B2NOT+vjytJPfnJn4Mi4TY?=
 =?iso-8859-1?Q?lrwbr2D1tTukbCtPCxqtY8dmWx6QsjYSYkElwtbftz1OHgVdEIs40royth?=
 =?iso-8859-1?Q?tMIwkAnfFdCTlRaInl+7ulD5YCWx18i1WIoB0grrBGlEtu8D1xEFFnRLw0?=
 =?iso-8859-1?Q?d8l1/Ylm2l6tv3FaM+FZtluorbx9mbQGZWRFeil4mtSBn88j8pytk/tbhb?=
 =?iso-8859-1?Q?XfZUSnY0OXaxBtCNtwu2IxlJGVBs9u7qpmmREnwrp5sWtL7mZUfpIjbbqU?=
 =?iso-8859-1?Q?72i9YEfSlE8u4uN41ajJzRqIvVnqCukQSGj1ZnqT6HwgZZr2bKWSPz0HV7?=
 =?iso-8859-1?Q?aP42rPKHEsgj8I6JItjfGQmhEJFGhuEJ1cwgyYn4DRoOYI7afA3hryPnH6?=
 =?iso-8859-1?Q?dLUe/1617jURhqsm4SwvMBGsZ7aFIUQyFC37q7wVhcRNdyotRf+lW773sI?=
 =?iso-8859-1?Q?4/TOaHZaIHFTbcFM40WNFTorXMn0UorU3J2jq5DqkAaoiGWBgA2/rY+5uh?=
 =?iso-8859-1?Q?hGXzchD6p7OomzWjqkuH+yY08RMUmdutH46kboiqh9uWPxwACYWHDXY7ye?=
 =?iso-8859-1?Q?uhP6va4SWZDqgud0+W2ZwGqy/08qgSbbfy0xwqpknC2hwe97LjX1VmC+LW?=
 =?iso-8859-1?Q?tTAWlSahLnEgizKCGS9guJq7ddm7wV6ZSKwFSuv8FhWJmAt5f29Q/9gspb?=
 =?iso-8859-1?Q?ta+mm/7W2iNcQ=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1040c997-db13-4397-c761-08db46870e61
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2023 18:50:07.8493
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB7392
Message-ID-Hash: H7INQPEHRWWQJIXYHITSXHO33BOZXEGA
X-Message-ID-Hash: H7INQPEHRWWQJIXYHITSXHO33BOZXEGA
X-MailFrom: prvs=47365bbe3=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK ignores the $UHD_CONFIG_FILE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V2QBH76EYILFOAYEV2KZ4XUOQHNDWDBH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8550544566528998525=="

--===============8550544566528998525==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126D338E3E787735AF8410DEC659SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126D338E3E787735AF8410DEC659SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

There appears to be a small bug in the UHD support for DPDK.  The configura=
tion should be read from $UHD_CONFIG_FILE, followed by ~/.uhd/uhd.conf, fol=
lowed by ~/.config/uhd.conf.  However, it appears that the environment vari=
able is being ignored.  It works with 'usrp_probe', but not with UHD.

Eugene.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB9126D338E3E787735AF8410DEC659SJ0PR09MB9126namp_
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
=3D"elementToProof ContentPasted0">
There appears to be a small bug in the UHD support for DPDK.&nbsp; The conf=
iguration should be read from&nbsp;$UHD_CONFIG_FILE, followed by ~/.uhd/uhd=
.conf, followed by ~/.config/uhd.conf.&nbsp; However, it appears that the e=
nvironment variable is being ignored.&nbsp; It works
 with 'usrp_probe', but not with UHD.</div>
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

--_000_SJ0PR09MB9126D338E3E787735AF8410DEC659SJ0PR09MB9126namp_--

--===============8550544566528998525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8550544566528998525==--
