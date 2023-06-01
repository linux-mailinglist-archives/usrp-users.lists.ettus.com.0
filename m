Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B968171F2CD
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jun 2023 21:18:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CD29384942
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jun 2023 15:18:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685647101; bh=iT15FDkdjUesnrr2+51ILZRp9BMfLZglUZ5z9W0G7YU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kqaIwwgK2HlXlIBJvFLlHJ5Gt9qX42230e9lQ+Jmbzh/j6mqBm07JkPS1nivpfojs
	 aHjObcmOy3ZHOYBq14QDjRua6JWFN4hsqOAcvYZql2X+qprM+R840eFgoC6msEAmnj
	 UycNI5PsLYS6E1kkQfkRBawcPXw6MBY7CeFcGgzoJiVardv3jzEFIm5wbtm/yChJUN
	 AwS0kET3arlJ0Xhv36dPY8jtty68UbBpUzeHdf1hVbBk9uzsuKWX6BAgAE2mHYEsyY
	 i7ERvMGChbdmt38wu/S44qTKF4rScA1lSLai7o6nkRCtbyPO5BFWiWDfnMn6FeW9IC
	 1Sr/X+Km8c+Jg==
Received: from email6-west.aero.org (email6-west.aero.org [130.221.16.31])
	by mm2.emwd.com (Postfix) with ESMTPS id 4EC643846C5
	for <usrp-users@lists.ettus.com>; Thu,  1 Jun 2023 15:17:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="kyxgsHv6";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="ZDz4pjFH";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1685647038; x=1717183038;
  h=from:to:subject:date:message-id:mime-version;
  bh=s/plf4V+gOvcGhsKiKkTGrI+f/oDKUu3EdurLiUACg8=;
  b=kyxgsHv6bc4WwjQXE2FPWGEBp8lW7ZGw6F8But0o9wRd6dNGl12FsNz2
   yz83md1z1LcxF5w5eJhbTjwe6q0GNYxQ5eLwE0qDbQEh2uTSU6r+zUkkB
   8iN4lAC9diveH5hsfwXQg6kpm3zPaEDZ8txxoXmdcUL9XgIFU66yRtbck
   c=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="541699"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400";
   d="scan'208,217";a="541699"
X-IPAS-Result: =?us-ascii?q?A2FfAgAI7nhkh2lAL2hXA4EJgU+BLIEDcwKBXK0rhHiBV?=
 =?us-ascii?q?oElAxg+DwEBAQEBAQEBAQcCOwkEAQEDBIR/AoVhJjQJDgECBAEBAQEDAgMBA?=
 =?us-ascii?q?QEBAQEDAQEBBQEBAQEBBwMBAgIQAQEBASIXBw4QJ4VoDYNWTTsBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEFAjUMgQsBATgRAQx0HwgEG?=
 =?us-ascii?q?4J2AYIVDQYDMRSvOoE0gQGCCAEBBgQEnFEYX4FfAwaBQoNVhAUeXmKIXoFVR?=
 =?us-ascii?q?IFYhHCBGAGBYysag02CLo4+jQxngS9wgSGBJ4ECAgkCEWeBDghjgXRAAg1VC?=
 =?us-ascii?q?wtjgSOCWQICET4UTnwQAREDBwQCgQcQLwcEMicGCRgxJwZUBy0kCRMVQgSDZ?=
 =?us-ascii?q?AMKgRtJFRACEU0HNgNEHUADC209NRQfBQSCRwRwgRICSpxjLQODYFoJlT8cj?=
 =?us-ascii?q?hKBe4w6lBs1B4QLgVcGDIhvgSOVOhepUIYchRyMVo1alRSFHAIEAgQFAg4Ig?=
 =?us-ascii?q?WOCFjMaMIMqUhkPjjkJg1KPeXU7AgcLAQEDCYtGAQE?=
IronPort-PHdr: A9a23:o4XISRaiHfwwFK8BtlTTZfH/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:vPT8NKnVwWwhObb/n0N/+lno5gw1JkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIWWmjQP6yJZWr1fdsjPty2oUxVu8LdzYBrSFE4/C1mFy4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8yckjclkYZKlULGeakidfSc9FGF7z0sLd9cR2uZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrbwP9UlKq04GtwUmAWP6gR5weAzyBNV/rzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TtEF1xZvWkdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWeG5fgLmkH4Ojb8uT0984uaVyi+
 8D0JxgtfxWuu8m2mY7qEOZnofwFdczhG5sQ7yQIITHxVZ7KQLjsaI6Sv5py+G91gcpDW/HDe
 8AedDxjKgzaZAFCMUsWD5R4m/q0gn74cHtTr1f9SagfujCPilAuluaxdoONJ7RmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPODkr6A70TV/wEQ4VgMWVXKEiMXli1STcfdcN
 xE56hsH+P1aGEuDFYCmBEXh+hZopCU0RsFKC6gn8wyX0YLQ4h2FHS4JUiJcc5ots8peeNAx/
 lqAntesDzg1v7aeESiZ7u3N9W70PjUJJ2gfYyNCVREC/9TovIA0iFTIU8pnF6m2yNbyHFkc3
 gxmsgAelrA+seULjpnqp1/MpAqK/53DaRY6s1C/sn2e0it1Y4usZoqN4Ffd7OpdIIvxcrVnl
 Clc8yR5xLBfZaxhhBBhU81WQ+DzuKzt3Cn0xAExT8R9q1xB7lb5JehtDCdCyFCF2yruUQPge
 FfauQpX4phYPxNGhoctOd/vU6zGIUUffOkJu9jRZ9tKJ5J1LgCM93k0YVbKhjiw1k8xjas4J
 JGXN962CmoXArhmyzzwQPoB1bgsxWY1wma7qXHHI/aPjuH2iJ29EOht3L6yggYRsPPsTOL9r
 4k3Cidy408DONASmwGOmWLpEXgELGIgGbf9oNFNe+iIL2JOQT9xVqKMnuN6JtQ1xcy5c9skG
 FnsAye0L3Kv1BX6xfmiMC0LhE7HAckn8ypibHVE0aiAgiV5OdrzhEvgS3fHVeJ+r7c7lKQco
 wgtfsSLGPNUTTrbsz0PcIPwxLGOhzz67T9iyxGNOWBlF7Y5H1Kh0oa9ImPHqnNSZgLp7pFWi
 +P7iWvmrW8rHFkK4DD+M670kDtcfBE1xIpPYqc/CoMMIxS1odc3d32ZYz1eC5hkFCgvDwCyj
 26+aSr0b8GUy2Pp2LElXZy5kro=
IronPort-HdrOrdr: A9a23:oJEtuK0FTPIDPlyFfB7JagqjBVByeYIsimQD101hICG9Lfb0qy
 n+pp4mPEHP4wr5AEtQ/+xoS5PwOE80lKQFl7X5WI3PYOCIghrNEGgP1+rfKl7bamTDH4xmpM
 BdmsFFYbWeY2SS5vyKgzVQZuxQpeVvh5rY59s2oU0McShaL4VbqytpAAeSFUN7ACNcA4AiKZ
 aa7s1b4xK9ZHU+dK2AdzI4dtmGg+eOuIPtYBYACRJiwhKJlymU5LnzFAXd9gsCUglI3awp/Q
 H+4kbED+SYwryGIy3npiDuBqdt6ZXcI+54dYCxY4YuW3TRY02TFfxcsvW5zUsISaeUmR4XeZ
 D30mod18gf0QKqQkil5RTqwAXuyzAo9jvrzkKZm2LqpYjjSCs9ENcpv/MtTvL10TtSgDhH6t
 M440uJ855MSR/QliX04NbFExlsi0qvuHIn1eoelWZWX4cSYKJY6dV3xjIjLL4QWCbhrIw3Gu
 hnC8/RoP5QbFOBdnjc+m1i2salUHg/FgqPBkICpsuW2T5Lm20R9Tpt+OUP2nMbsJ4tQZhN4O
 rJdqxuibFVV8cTKblwAe8QKPHHelAlgSi8QV56DW6Xap3vYUi916IfyI9Fm92XRA==
X-Talos-CUID: 9a23:ZSbRCWE4KLHmbnWRqmJH5Us5JuslK0GMlnjbBHeeUGNjb6WaHAo=
X-Talos-MUID: =?us-ascii?q?9a23=3AHslj9w2JZWV37fmqwNeAdtFAEzUjyPqwCEAkrrw?=
 =?us-ascii?q?658ieGAZVOCvAoSSGa9py?=
Received: from mail-bl2gcc02lp2105.outbound.protection.outlook.com (HELO GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.105])
  by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2023 12:16:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MieFH+NUldaN8KOaMSZYjNsZ+ewStpB5jP1jqfwyt27PF/boY3DaKDY0Vcbs/33bbnGqle2U8P+0oyKjNYT80kzQAfB5W22P9sL6XsMYw+asfu2si7oQqwqHiC/8iJv9S1e+P93+pVMgKPHg94e8FEgkWi/jZmeJZqQJpPeF9qQYRy6217TJ43xwFgFcHbggPVuGIrRnv6M19OuZNcCmVxNTS5GBetLlRIRum1kJA2AWLSuxTMJGijIt1oVOB6R1VZHxb7mPG0UfY3xEoRuaBkQ7N6cuU8Urxz/u+25Hci9m/Yk2AVaA0tRFrl8bQn8Oeg/KqkjFDtPpKGVJimkAtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=57mK0V61K1iwpaEH8Ifk65A6rf8OCrAvNGjwcK7hPIo=;
 b=K95o8h2qDroxW7ts/MYQ9TAzd2QRnExVkVEcA8Okle7GRCWV543+JCnloz0kIABuMuu/z1pmNEFtfDkl9O0Xv5UOrHalPv0no5T+wsyBl4z185JVATPSq5OhabgeptQ1IRUhypLpCAtAtwplVBCDh4lHO8Md61Lnn/PL7DkF7J6RjDR0DNHOGL6OYu36qwcPWra/8s2oAHukXcIaW13qCn36KSuuByr99oZpsx1viEsJP86bbopVEl4vj1qaRZoayF9uvMmsWpfNy4wVRlucBwjZYikoQus7OqvSngxyOg6fNHKkuQrZS1LP9pKkcUabMX9d0ZHAb6Ak7gKcEGzvVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=57mK0V61K1iwpaEH8Ifk65A6rf8OCrAvNGjwcK7hPIo=;
 b=ZDz4pjFH2cyDLHXIGOA3BuZhUHJmJiKJ48U9uUorCaKMgD+qdrxFjbzRQQyZV7HNuaqDotFbWDoC3hX3UTCzFCK8t2ztLYINAC93cu9p6Od2V9stmsO6cNd5wqrKBwhICEB9ce9UfaSkTPkK45SL+2clDLCM4ZBZlG0RXEWJDjg=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by PH8PR09MB9709.namprd09.prod.outlook.com (2603:10b6:510:17d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Thu, 1 Jun
 2023 19:16:51 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::89b3:d652:b7c0:1496]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::89b3:d652:b7c0:1496%3]) with mapi id 15.20.6433.025; Thu, 1 Jun 2023
 19:16:51 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: octoclock specs
Thread-Index: AQHZlL1By579jdCwVEuOjHS1WKcm5w==
Date: Thu, 1 Jun 2023 19:16:50 +0000
Message-ID: 
 <SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|PH8PR09MB9709:EE_
x-ms-office365-filtering-correlation-id: fe94ca3f-2f1d-4680-df02-08db62d4c0ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8vUFdU+hQnGWlBCRao3u38p4BjT79TL+ukM1ZLQb+NDmFVc19tbM0SjLcReG/dH9q34l012gbq76NvHNqvFV9PbvsPzQahdONLooFvTI66Sr7Zu/9d+VJONlnHqr9baYsV/xuP+rbJt76wNIqRBGciOjtPZhOfh3G5NL/AO25Q2+1tp1XvPlDgVlitFb5XZjpfbBkqaqSGXodtVQGB1f0/Dj5XMvgRXXkwALPHTFY5DkC9UVsSsB6u9uP4vdiEsDoh2KIh97TUCkEXD+f4TpdCBwt4SaN0biHQTi/tXSU4tYJlKtnlibxN4FOmVsCdyAqDr7EQo+Zldr95tcgKMcnkTDFdlBZJTRMLy1dytr88CtmUR49Pny06k8oAGbASCe3MqXHEc5z7QZ8Em6Eyw9dajXmkgMhROfUnmVOviH6s7A+7BYRTK2dfjKUXka41kVAp0jxhvZKVWjG3WxQLJbgjQTwJoV44ug7mUlsOLQucDAY8B8m56qTeqxWeOXr8DUOkmlv4wTqlpdGM1iYxqWx7aVz6AYrEH29RCdBoiXWZro8oPqxe8Y35Rp08SYxFP6rj5nFMUkXznK49KJdMuKigov5E0lCw7dAj0rFqDhv1E=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(451199021)(71200400001)(33656002)(40140700001)(76116006)(3480700007)(66946007)(66556008)(52536014)(64756008)(66446008)(66476007)(7116003)(6916009)(5660300002)(166002)(38070700005)(966005)(8676002)(8936002)(7696005)(86362001)(38100700002)(122000001)(55016003)(44832011)(498600001)(19627405001)(2906002)(4744005)(186003)(9686003)(26005)(6506007)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?AyUcULUWUMKcl4Z//Cw9CJLRQt23P+W3GX0UpjWuQxc5oTLcdWPNJL0hY0?=
 =?iso-8859-1?Q?B9iSmp6W+/dX+XgwvviGxKkqB/fXic+2skiNEYbnUv34sZ0wnt9/q1YM+K?=
 =?iso-8859-1?Q?uFrXlUPXVK93AHkztrIxBzgbaBCqoNo1NGQuY+xOMY8c0EqbUPFnFa5pnm?=
 =?iso-8859-1?Q?nPCU6+xyAncGzKnrXH5tCPV5b3xYkyfsUL1HDSs1N8/44T+Uy8o1CCXY/D?=
 =?iso-8859-1?Q?oLxDz1TckjjO9PVtXGYq5/QlCKeosPZbiSGeqbB747uRV+rbBgYmv8VAS9?=
 =?iso-8859-1?Q?nfkkxp7aXGtKTTQQ9NYGlub5NKVA9aot+LKB64z24/eMfI27ZVImidtkbp?=
 =?iso-8859-1?Q?iF2yPjwmwPR9y+FGYNu5SYDLuhzBWLhIx7/gyY5bOQpfLPo+tcnupZYDGr?=
 =?iso-8859-1?Q?I472wYE7zfl0Kh6dAXwXZPkKjGIZB62PwGMZBZ3gyzrKWBz76lVF4SvD6h?=
 =?iso-8859-1?Q?88HGTa6GGa51nBBEEeYbXSQogSjg5bz1WeALVN5as1FoXbry+QPVgzKboM?=
 =?iso-8859-1?Q?PFQdMXLfCtG2zoaQfBAfvIG3ovtCFY6U7ay+6i+z+MACC0r8VWaOlKm/T7?=
 =?iso-8859-1?Q?j4GZwgKMbWfn/q1uzomO0qd4ZtJy6N/Q3j67z7aCW8Mi0XBEx2Ath57l3V?=
 =?iso-8859-1?Q?QDozaPFqDnOPE779f9t1zlhUbRgELSF21vp1dDXHcGrOKV8yMFz5w2emDi?=
 =?iso-8859-1?Q?7I+7EboOuE//ZkknMrQJgdca2/rgSEiJsSQoiB/ymbiOO+Cuu7f+Rw54W5?=
 =?iso-8859-1?Q?LaZ4lZSgkT2SKooMN0jpoPt1rpXZnCgBJ34jdn7sNtml9bfGLfK9oSCkCN?=
 =?iso-8859-1?Q?vPf1AYo/uscCRCKnbZuWyr0zqdogin0mC7R6yv19TueyeJkcA+V3fSM+bg?=
 =?iso-8859-1?Q?9Py9KLiGu1O2KUIPcpB57XnKjccMF/9P32TF1ukxpe5s7jJuzTH6icovc1?=
 =?iso-8859-1?Q?E7ZL3ZqkJmWhiqHXe0q2+O1HEZILtWTAvOE/nOgZJzr6Aa4eXko5E/nDSg?=
 =?iso-8859-1?Q?pu25rHhfzvY83VHpeVE2Dm/IUf0ddoRCfxNnnCu4Tkzwy8dCqQFy29GjB+?=
 =?iso-8859-1?Q?WIjcuF7wlny/OnBeS9UAGR+1YBRhY/decApfQR/5E4s2DEYJnupFupFH0f?=
 =?iso-8859-1?Q?UCWuHDPUeSMJGU0YLfTKAY9cVQb1KSCXWiM/7UKw+K/4NcXlGgulglt1X2?=
 =?iso-8859-1?Q?VJD5fMHpRPQYCbPqvfP1F14L1D81rS+rpJN25bAH6b7Jh1OS1GgOCZ1iLL?=
 =?iso-8859-1?Q?wWnKL9FmqEnAoLXKn8XOoHwhsll2XdmA95/PM+QiaOx+Ar5GRgnx0Nc4M1?=
 =?iso-8859-1?Q?89pfO2N+V6adBsTUXzAd8InK5BEy8OHCckfR1OaqFBAOIPa5gLaH2lipZi?=
 =?iso-8859-1?Q?Unb/ZUQGUlYm7NVi8stxK/AoiV6d86Gs+Ofz8HXCynAfza77E84DnK9z/s?=
 =?iso-8859-1?Q?DMtLdgD0T7SdBhIKum9f0JpCWLVYD/6h7o9FZqJRNg/MiXljiylW0hGZVK?=
 =?iso-8859-1?Q?SraxDOoA6F164/F0lIlHcPJdDpyLmRCMvaXvMFwiYuynxxLBQvBwnqquZS?=
 =?iso-8859-1?Q?gGXbafcc+hkWBCpA/WCyh6Pe8sIDv0rE0xpdJS6gaAv/mwCUAro1Vu6256?=
 =?iso-8859-1?Q?VG28Az+HmFdeU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe94ca3f-2f1d-4680-df02-08db62d4c0ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2023 19:16:50.8092
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR09MB9709
Message-ID-Hash: WMDSABGLOLMHVGYYJBVUYP3AX7LUBPSO
X-Message-ID-Hash: WMDSABGLOLMHVGYYJBVUYP3AX7LUBPSO
X-MailFrom: prvs=50969606e=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] octoclock specs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2BOQEGPOZVKUEMQ5YV2JHJP3IGARQ3FK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4580928498836506391=="

--===============4580928498836506391==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126585283051825C55DFA30EC499SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126585283051825C55DFA30EC499SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am building a high-end testbed and trying to decide on a 10 MHz distribut=
ion option.  I've used octoclock for other systems and it 'works.'  However=
 the datasheet is pretty sparse.  Does anyone have detailed specs (that you=
 measured or from Ettus).  I am interested in the non-GPSDO version since m=
y 10 MHz comes from outside the system

  *   port-to-port delay variation
  *   phase noise increase if any (assuming external source)

My other option is https://endruntechnologies.com/products/distribution/10-=
MHz-low-phase-noise, which is about 5x more expensive.

Thanks.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB9126585283051825C55DFA30EC499SJ0PR09MB9126namp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am building a high-end testbed and trying to decide on a 10 MHz distribut=
ion option.&nbsp; I've used octoclock for other systems and it 'works.'&nbs=
p; However the datasheet is pretty sparse.&nbsp; Does anyone have detailed =
specs (that you measured or from Ettus).&nbsp; I am
 interested in the non-GPSDO version since my 10 MHz comes from outside the=
 system</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<ul>
<li><span>port-to-port delay variation</span></li><li><span>phase noise inc=
rease if any (assuming external source)</span></li></ul>
<div><span class=3D"ContentPasted0">My other option is&nbsp;<a href=3D"http=
s://endruntechnologies.com/products/distribution/10-MHz-low-phase-noise" id=
=3D"LPNoLPOWALinkPreview">https://endruntechnologies.com/products/distribut=
ion/10-MHz-low-phase-noise</a>, which is about
 5x more expensive.</span></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks.</div>
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

--_000_SJ0PR09MB9126585283051825C55DFA30EC499SJ0PR09MB9126namp_--

--===============4580928498836506391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4580928498836506391==--
