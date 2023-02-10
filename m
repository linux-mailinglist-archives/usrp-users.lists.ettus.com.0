Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56277692A0A
	for <lists+usrp-users@lfdr.de>; Fri, 10 Feb 2023 23:22:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 19E6E3844FF
	for <lists+usrp-users@lfdr.de>; Fri, 10 Feb 2023 17:22:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676067757; bh=oVzGi56Jw4d0MAnU1dH30CDiQgS5XCIvAN2pXglh9Ac=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bwbfA9QWWrdBUcGbjkDn289eRhk6RQZQg6FTfCPudFPCv28mRjqRmIhz2tMsKuUkw
	 BPS2q1OI71GHcybd4RcGMHbgfsn35EdhfDyIPZdWIF+gfnGmaumb4O8zeVMW1X/LkT
	 m+hDuq8X74EPeYGJk1BdR9DIKcqzKK66DJ5cK+Z1MAXaxaY9d/VGT+00hXWU3SqANB
	 P2vsQXFWG86zO4scYR2XJPQ+oXQCtzrG4TUAcgu4aRt3I5vOKQYf3m6pw+0ijUsqm+
	 gqhyOZp1fJrxznRJiARKXXOV7gQiUll5qVXifmPxLdTmxkk39h4Q05GLXIJSwqTHDk
	 mYL4MpwhnlGtg==
Received: from email3-east.aero.org (email3-east.aero.org [130.221.184.167])
	by mm2.emwd.com (Postfix) with ESMTPS id AF22F3844B1
	for <usrp-users@lists.ettus.com>; Fri, 10 Feb 2023 17:21:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="OQa77Vwe";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="N1JsBb+l";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1676067704; x=1707603704;
  h=from:to:subject:date:message-id:mime-version;
  bh=FyaVw5s+ZeXqFyJRQN0pILHt9iA+Mc8YZ2rOk2AFAIw=;
  b=OQa77VweQu15q10p6W5s8MzKloq2B8r6WaSD+Ep+GI+XT+ngjy5YmNZQ
   Ko9REML+vrnPmvaAiHu0Q3Xrecz/wlF5BA5mroWU3Sw+kpZCKFjuDO6jd
   swVTQ/+o5xgb87HPGshyBVoTFMjJDI2IfV8vqmBv0TheqetswGwE8LSto
   o=;
x-SBRS: 3.4
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="1855650"
X-IronPort-AV: E=Sophos;i="5.97,287,1669093200";
   d="scan'208,217";a="1855650"
X-IPAS-Result: =?us-ascii?q?A2F7AwA2wuZjhjBJL2hXA4EJgU+BKoEDgQeBW6xthHSCe?=
 =?us-ascii?q?wMYPg8BAQEBAQEBAQEHAkQEAQEDBIUGAoUqJjcGDgECBAEBAQEDAgMBAQEBA?=
 =?us-ascii?q?QEDAQEBBQEBAQEBBwMBAgIQAQEBARkHGQcOEAUihWgBDINWTTsBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEFAoEIgRUBATgRAYEAJwQbg?=
 =?us-ascii?q?naCF1IGAzGufoE0gQGCCAEBBgQEnEwYXYFeCYFBg0eDeR5YXINnhGmBVUSBF?=
 =?us-ascii?q?UOHa0WDSoIulQdqgTZ3gSQOgUSBCQIJAhFzgRkIaIFOBzYDRB1AAwt1PzUWJ?=
 =?us-ascii?q?AUEQgIPHzYGAwkDAiFLgRwkBQMLFSpHBAg2BQZPEQIIDxIPLEMOQjc0EwaBB?=
 =?us-ascii?q?gsOEQNQgUkEc4EXCgJUmWyWe44KgXmMK5NWNAeDeQWBSAYMiF+WUBapL5dSI?=
 =?us-ascii?q?KI2hRgCBAIEBQIOCIF4ggAzGjCDKlIZD445g1mPYXU7AgcLAQEDCYwpAQE?=
IronPort-PHdr: A9a23:Wn4kohY8L+HhGfDwHgq28S3/LTAqhN3EVzX9orIriLNLJ6Kk+Zmqf
 EnS/u5kg1KBW4LHo+lFhOzbv+GFOyQA7J+NvWpEfMlKUBkI2skTlhYrVciCD0CzJfX2bis8S
 cJFUlIt/3yyPUVPXsjkYFiHq3Co6ngVABqsXTc=
IronPort-Data: A9a23:Ce7jgq2LC5AsFEz5SvbD5Ulxkn2cJEfYwER7XKvMYLTBsI5bp2QOm
 mobUW2Bb/aLamvxfIp0aYq2oEJT7JHQmN9rQFY+qSg9HnlHgPSeCIXCJC8cHc8zwu4v7a5Dx
 59DAjUVBJlsFhcwgD/zb+C5xZVb/fjQGOOjYAL8EnktA1UiEU/NsDo788YhmIlknNOlNA2Ev
 NL2sqX3NUSss9JOGjp8B5mr9VU+45wehBtC5gZlPaoS5AeF/5UoJMt3yZ+ZfiOQrrZ8Q7bSq
 9brlNmR4m7f9hExPdKp+p6TnpoiH9Y+lSDX4pZnc/DKbipq/0Te4Y5iXBYoUnq7vh3S9zxH4
 IgU78ToEW/FCYWX8AgVe0Ew/yiTpsSq8pefSZS0mZT7I0Er7xIAahihZa07FdRwxwp5PY1B3
 fMdATccSTClvtC/zpKARtE9hOYtBfC+aevzulk4pd3YJdAPZMifBonvu5pf1jp2gd1SF/HDY
 cZfcSBocBnLfxxIPBEQFY46m+CrwHL4dlW0qnrM/fZxvzeVk1c3jOiF3Nn9I7RmQe1Yg0mVo
 G+A8H7wEw8XLvSWxCCCtHW2iYcjmAuiCN9PSuDgnhJsqFaMmGUdER8kaX7hm/2GuxWTdIIDK
 VNBr0LCqoBprRfwFoCnN/Gim1aZpQQEHsdLHvchwAWM0bbPpQuFGnUfCDVGbbQbWNQeQDUr0
 hqFmo3vDDk37LmNEyrBpvGTsC+4PjUTISkafygYQAAZ4t7l5oYukhbISdUlG6mw5jHoJd3u6
 z+PhS8voJU1tPwC2YWA8WiWgRCij6GcG2bZ+T7rdm6i6wp4YqusaIqp9UXX4J58wGCxHgnpU
 J8sy5j20QweMX2evHfSH7hVTdlF897AYWKM2wc+d3U03231oybLQGxG3N1pyK5U3issfDboZ
 ArfvF1X7ZoLYH+yN/crM8S2FtggyrXmGZL9TPfIY9FSY593Mgia4CVpYk3W1Gfo+KTNrU3dE
 cjHGSpPJS9FYUiC8NZQb7tMuVPM7nxvrV4/vbihk3yaPUO2PRZ5s4stPlqUdfwe56iZugjT+
 Ns3H5LUlEsHDbauOHSJrtB7wbU2wZ4TVcGeRyt/Jr/rH+aaMDt4YxMs6e9/KtA6x/8E/gs21
 ijjBhIBlTITekEr2S3RMys4MOq1NXqOhXc6NjYrJlGmxzAqc5u14c8im2gfLNEaGBhY5acsF
 ZEtIp3eatwWE2iv02lDMfHV8dIzHDz1317mF3T+O1AXIcU/LzElD/e/ImMDAgFVU3Lr3Sb/y
 pX8vj7mrW0rG1w7V56PNa3/lztcfxE1wYpPYqcBGfELEG2EzWSgA3WZYiMfSy3UFSj++w==
IronPort-HdrOrdr: A9a23:B3GEFqOUyHmq4sBcTuyjsMiBIKoaSvp037By7TEUdfUnSL3+qy
 nIpoVg6faUskdrZJhOo7C90cW7LE80sKQFhLX5Xo3SITUO2lHYT72KhLGKq1aLJ8S9zJ8+6U
 4KScdD4ajLbGSS+vyV3ODXKbodKZK8gcaVbK/lvg5QpC9RGtld0zs=
Received: from mail-dm6nam04lp2048.outbound.protection.outlook.com (HELO NAM04-DM6-obe.outbound.protection.outlook.com) ([104.47.73.48])
  by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2023 17:21:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OK1cKFDiEj8cByFgPAHOOpCmud0NlOGVf2qOOdTZkDaShRQUhHuYVKM31yd33RJ0GFI7KZ0E4s2WVsJL/c09Jj81Lh/jQRSFgIlNykz8pBD7imHowrI2Uq2eClNF/0Ei4qlfBDKK9Iy3c+z3dFHon1615WoKi6HsLTkn0rwuUeCDiQyNMtL9y0umjf+v7iBF10l7xpPsvQcKzGQ3sJHGbx4wrsNij1aqCwiTdToGR1GubKoCGL2FofdYTbdMPg1eK7LpdSxUMRxtVYDCrtc3CWTiNCsYcx5WiATHtZoqkql1Y9d1wyWDQy7HvVWsY6Zxh4WH2ZJvRLRfwl4e6sKzZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+aJGDwIJqMzCtwTHZCh6uVNPajMn6Dfb4+Kb+wMCuY=;
 b=TKw7hQDS7b8uYC03cGb5/Tg9M73lSajYs+ny/MZg697ukcF7OrHVxnC982HqpY+y6Tf8LyN0wGc7pcPayQ9mrrgKz13QA4vvO/dtWQedicRUCcS2zMeBCuV0eZRWwTgIzyjy15iGkaJ3NHdVRSKF024cSdNCKaf2Np+OqfwjI0Nzh5AGHkFTM4Sx5FHlQGARcm4A0jQ5LVb0/qSUpFW7lrbxHRBHE4/7Xdwbc8rghJjBrZrbDaB1UYfjtKoJI0+zOwqTNNf+RYroPH4PABrn2EwBSyB0VNGICJDkuFdieqIcJzZvt0OtxvGmDXmyCLHK+0f0i6c9wy92COo5qLKC+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v+aJGDwIJqMzCtwTHZCh6uVNPajMn6Dfb4+Kb+wMCuY=;
 b=N1JsBb+lPENVwsvsdwXLSWYaztHvrzZYD365Gh5H1t1tnY1YsNb5iYIbv6ke6FLsst4ocbW4ik3+TAW8EKLGh1p5z7UL3heoV04Me8Sx2q9M2vVIIDumMJEkvqtHVu/Qlp3rAU4nLmA6gH6qcqZ+FgJoSloewllB+eVf78vOP5Y=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SJ0PR09MB6381.namprd09.prod.outlook.com (2603:10b6:a03:268::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.21; Fri, 10 Feb
 2023 22:21:40 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::aa8e:c236:5554:2a80]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::aa8e:c236:5554:2a80%4]) with mapi id 15.20.6086.021; Fri, 10 Feb 2023
 22:21:40 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Minimizing latency with DPDK
Thread-Index: AQHZPZ0CFEtBT/zBNUiTwYWF+ZvpkA==
Date: Fri, 10 Feb 2023 22:21:40 +0000
Message-ID: 
 <SJ0PR09MB9126C2EF985D05F956DC479EECDE9@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SJ0PR09MB6381:EE_
x-ms-office365-filtering-correlation-id: 35bf94c3-b721-4f5d-b4e8-08db0bb52ea0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ficfl7MHtybaHrrFwxZ5p+E3J7nyHvtwzZ8gOb1OcRIQ4/8e00W3BOxQTy2TSm4OThzqOER4tpjJXkYcBwwTwzCmkZ+kf9aOa3P9Onc0hFoS7Ca2c7WzK571CEZdeEzXGOeJn9nAoeuFPz3uvXAUjK37KN/1qcALS7WorVJrmDVBFy20cZLHx4P+FkKlRjlt63erN3uNPZbKy7UnSGVHZ21FpFQcnN66kLf/1P2bujR2m805APU3U7/AGtMiArnaEaFJrQmHkI4+suBQS5WME4uAxEWU72D5ehlVZT3Xd4PGV6H0iz6HjC721J48guiQewX+cqafvsd1YuIzvkhB0xIGSVgSblmC5pf+yVMt5AZYwtmnAKhRQhnJs7iY7t3k755dMzzaC4fn1jlAYMjZhuhUGxTHeVUdT0YQ8l5Mk772vbwrBm4NV37raMLideZh82g7x12ifln+wPUAZX3KU3lEc4+UG+t6E0r314hnRjAAVDpRhaQwf3Q0Hocw+qLWjLMvNtZK3e8sos4Sp35zNK7fITuH3cJS0sO6X3hKilB9r6xOmmeVe7HPYB1v2vtzU8enBtB9DPl1kFFzp85FEvN6Q3AexPgCrUUq+CaUYSiHCB1F0Mp0+6FT9pLw9VDUxMxBIwxFEBvEy1zILHLlM/n7Rrgk3GiMmH2idP97qH8WdAKU+Bc4Z//c1Klkrr0dlfDvvfmWwtWeBMl5cuxkVw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(451199018)(44832011)(2906002)(86362001)(71200400001)(38100700002)(122000001)(19627405001)(7696005)(186003)(6506007)(9686003)(26005)(40140700001)(33656002)(38070700005)(55016003)(64756008)(76116006)(66946007)(66476007)(66556008)(498600001)(66446008)(6916009)(52536014)(8676002)(3480700007)(5660300002)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?YtQYXJeDtNdXcFm2YlIfvZjHraffAWlHbec4sDd7P/dTWA6Io1uxKZau5c?=
 =?iso-8859-1?Q?8H4MIzP2DZy6GpPt1OVqbP0C6GztzXyvMHhPm6S3ii2G78KmyrB2OAq/NQ?=
 =?iso-8859-1?Q?m2JFraVQEvoQqnwfw7oGNVptHaxVs0LcnhQQ6yV2Gdc96FssNw2n8HoMUB?=
 =?iso-8859-1?Q?LAGS9Zcog8FNab2Z4WCr5FreG/HAsNi1kRh4mh+P2X+rqOo5KF4/F1MiXK?=
 =?iso-8859-1?Q?3D+cidYzQ1dkMlsy1nC5uVgX/VEq3Tu9NgrxYE9ZlpPGUv8cAZ8ZCQtTfY?=
 =?iso-8859-1?Q?uJRCvHISN/eLEdmnxQ2vqAx2sh0UusFjn3nJq7y296saeuK9+3ikC+VIZT?=
 =?iso-8859-1?Q?RrdYLtMYV1/PhOhJxrAYfnslJbhrtvcjmPcXe/zsNi3CYiiv1wj8FyB9Jx?=
 =?iso-8859-1?Q?fRNPePsA96/jLfesfnOE1IMNJdYhhd/q79j7II5sLHrlMpPioAezR6hFCS?=
 =?iso-8859-1?Q?eg4FzysSheztZgFZYtSP5OOkC8Oti7uEo6eaOfOuHFJz2WXBOs0D+WuRia?=
 =?iso-8859-1?Q?iRLRvgiwqlud/tNUiN6GBuzMYmTcODwRdWzxDeklHg7Q9gZL7zkdvzQCnT?=
 =?iso-8859-1?Q?Nd0QHO9bmCyG1PuDwCICQwsbkRyj0ZuXlKrAguKmEvj/wBUNJh8d3m6IKc?=
 =?iso-8859-1?Q?IsA/2VeAySkIovPw7ucTxRoxXWcPuMvVnOvlWgBa19mTAfHrkjpVsOAyMg?=
 =?iso-8859-1?Q?Gpi1Hq5fCpkj8B0rRY58HDpRxF4Nt4eMEQzMAtnHEswR312vtsbM5rOxU4?=
 =?iso-8859-1?Q?IFZrEaoiuRadnfgpaVwSdkr0BA9R0qsF5dQ3HKlG0Lh2V7Zk9xwzgLR9W6?=
 =?iso-8859-1?Q?ovY3humD6w3NE3i6DMNRW9u5O2eOWdB8h3V/F0eOfs6ZGCTC8uHz2CueC2?=
 =?iso-8859-1?Q?MAneEeOCCFsZkI9SslFPTNMW8CP+zv6GJvapOrijSdqFO3H0HPg9PQPFfO?=
 =?iso-8859-1?Q?wIrVIGpwG7f2YrOhOoNnz55/GwKy2tvL/wcHZcoyN4WFascBRLx+Gy71cr?=
 =?iso-8859-1?Q?xdc7/oNEq17nViBKz7XVYt81U0AwHux5iQP4A1v48KwdBaO44mHUF99Ws5?=
 =?iso-8859-1?Q?4996Q5tqzj1cNHnqVRNo5usjlKag158KxZdAmzBPgzLS80xIf6vVZ5pybN?=
 =?iso-8859-1?Q?dIX8oenwAYMhFyVnXuEJ5SQHWq1twYPgyRFkxcEz+cOj+kMP6xZtur1SKW?=
 =?iso-8859-1?Q?65K3qYvxz7KBONCoqCz7ziqBb2xZGut7Od3kNPjS+/aXbPIXPNtVT96e6M?=
 =?iso-8859-1?Q?IefvPQP3ApHyCQjrbrQKrecabZlp/PZh43oWpgwAFNDD7L5oQ5hNTS7VTO?=
 =?iso-8859-1?Q?TYiBGabBCFUPBC26En0/g+20sv+p1EKDat+2xx4DKLhoF453HFkC6klof6?=
 =?iso-8859-1?Q?yR/d/eBReQ2oAGoOrbV5Y+WQXSnAimbxKUy+dP7b8KZhOF10YiJK0GBPTe?=
 =?iso-8859-1?Q?A5PDdjuMQ/mwgOzyehD3Wz5k4PVS9mlEJtWKqTAJgE+T9+gkraVtWgwSAO?=
 =?iso-8859-1?Q?5WcoReBXN6TQkvDgVgvoAWeBbsE7M1FQicPVw2wVsqCK2B3xf4RwVYUhbg?=
 =?iso-8859-1?Q?FIeFoWXIp5uyt18eahccP6RU2llbMByLnhK9aUhPuBDiDjz03E7JmEMfTO?=
 =?iso-8859-1?Q?xZPYFnD8Be2Dg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35bf94c3-b721-4f5d-b4e8-08db0bb52ea0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2023 22:21:40.1857
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB6381
Message-ID-Hash: WDVZMCFXQEGOOM3LZREBFVSUKAEF6SJJ
X-Message-ID-Hash: WDVZMCFXQEGOOM3LZREBFVSUKAEF6SJJ
X-MailFrom: prvs=398848027=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Minimizing latency with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TYHNEGJB7FFG3OWVTC65YCDCHRMTERQR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3033791298685051596=="

--===============3033791298685051596==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126C2EF985D05F956DC479EECDE9SJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126C2EF985D05F956DC479EECDE9SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a custom C++ app that takes in an input stream, modifies it, and out=
puts the modified version.  I am trying to minimize the latency.  To achiev=
e fixed latency, I set the start time on the RX and TX streamers (tx_time =
=3D rx_time + latency).  I then change latency until I start getting underf=
lows.

The system is a i9-13900K running at 5.4 GHz.  I am using DPDK with all rel=
evant kernel parameters ( iommu=3Dpt intel_iommu=3Don hugepages=3D1024 isol=
cpus=3D1-7 nohz_full=3D1-7 rcu_nocbs=3D1-7 intel_idle.max_cstate=3D0).  DPD=
K gets two dedicated cores.  I have a core dedicated to taking data from th=
e multi_usrp, another core for processing, another to push data to multi_us=
rp.

 iommu=3Dpt intel_iommu=3Don hugepages=3D1024 isolcpus=3D1-7 nohz_full=3D1-=
7 rcu_nocbs=3D1-7 intel_idle.max_cstate=3D0

I can consistently get no underflows operating at 100 Msps with 1ms latency=
.  However, going below 1ms causes underflows (a few at 500 us, more at 100=
 us).

Are there any ideas I have not considered?

Thanks.



________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SJ0PR09MB9126C2EF985D05F956DC479EECDE9SJ0PR09MB9126namp_
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
I have a custom C++ app that takes in an input stream, modifies it, and out=
puts the modified version.&nbsp; I am trying to minimize the latency.&nbsp;=
 To achieve fixed latency, I set the start time on the RX and TX streamers =
(tx_time =3D rx_time + latency).&nbsp; I then change
 latency until I start getting underflows.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
The system is a i9-13900K running at 5.4 GHz.&nbsp; I am using DPDK with al=
l relevant kernel parameters (&nbsp;iommu=3Dpt intel_iommu=3Don hugepages=
=3D1024 isolcpus=3D1-7 nohz_full=3D1-7&nbsp;rcu_nocbs=3D1-7 intel_idle.max_=
cstate=3D0).&nbsp; DPDK gets two dedicated cores.&nbsp; I have a core dedic=
ated
 to taking data from the multi_usrp, another core for processing, another t=
o push data to multi_usrp.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
&nbsp;iommu=3Dpt intel_iommu=3Don hugepages=3D1024 isolcpus=3D1-7 nohz_full=
=3D1-7&nbsp;rcu_nocbs=3D1-7 intel_idle.max_cstate=3D0
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I can consistently get no underflows operating at 100 Msps with 1ms latency=
.&nbsp; However, going below 1ms causes underflows (a few at 500 us, more a=
t 100 us).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Are there any ideas I have not considered?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thanks.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
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

--_000_SJ0PR09MB9126C2EF985D05F956DC479EECDE9SJ0PR09MB9126namp_--

--===============3033791298685051596==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3033791298685051596==--
