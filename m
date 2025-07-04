Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF75BAF9BDD
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jul 2025 23:10:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB4603861D2
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jul 2025 17:10:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751663457; bh=Gmo/GnhhWujqiQBvr2ooXPwJfOOqNmcj8mDltlsH6rE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xQK+RwT4su34i6OMFvvAgKIfhRVuQ0e9QaZ3H9EDcCiB8QkSkcirx1w95g8XJbcS7
	 F66EqAcT2+eiYuc/tFjdxLC5d3zKwMdbvz6LlE4GocDcXikOF+RNYUQo82ynDA4lQ/
	 yf3ABiJQ8QF2uW+55NTc5yZ+CSGCoOhMKlnO0/fjtjdYXHtpcCWyupxk4L531QKPYY
	 PoLyvlWiUTThD/JeiAI3Ln/BNNcksZEupORz/2qgGPdLcodzbBIeaHtcjTWlbS4noZ
	 ObAWsmuOIahFfVVD+Tk0OTINqYkJF2BezY2eICvHyXgnPicSTy6vCiVNlEiTtf33Ij
	 dOdeKnZ+O54sw==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id D57FC385849
	for <usrp-users@lists.ettus.com>; Fri,  4 Jul 2025 17:10:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="Rl4R34MM";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="i2lRlweS";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1751663443; x=1783199443;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=YvtVhVGSqrVYUt0K/BZwrr62VJDXuja44LxFywZNMqs=;
  b=Rl4R34MMU9i3rIuzYY2rAUeYC4glqDeNqSOL9BVWXxyJXtl+QehaoU/w
   TnYhPaIuzEBd25ORlEtq01G1Hq8YMlXVw/n/DldtjMcS7gDXUPeoa+gOJ
   ekXc0jCSWin4WoK+TCztNiWectb7HVsx8u1LOsSWPGpEbE0Ca49IJjQ8x
   o=;
X-CSE-ConnectionGUID: 4IPdzJAsTsG9mc6SBCtMZw==
X-CSE-MsgGUID: A2ovkv4uR+qkhjMKO47ECg==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="7818613"
X-IronPort-AV: E=Sophos;i="6.16,288,1744095600";
   d="scan'208,217";a="7818613"
X-IPAS-Result: =?us-ascii?q?A2HoAQASQ2hojhQOXShXAx0BATwBBQUBAgEJARWBUwKBP?=
 =?us-ascii?q?4EDQAE9gWeuCoZWgSUDVw8BAQEBAQEBAQEHAhQTKgQBAQMEhQACi3snNAkOA?=
 =?us-ascii?q?QIEAQEBAQMCAwEBAQEBAQEBDgEBAQUBAQEBAQcEAQICEAEBAQEBATkFDjuFe?=
 =?us-ascii?q?w2EB4EmAQEBAQEBAQEBAQEBHQI1VgMDQAEBOA8CAQhGMSUCBBuCeoIdBwQLB?=
 =?us-ascii?q?wMyrViBNIEBggwBAQYEBNshGGOBZQmBSQGDfIFwgmQBKoEziQY2gVVEgRVCg?=
 =?us-ascii?q?mg+hEUfJoNOgi+CJoECFB2ROAcDIgiGWVJyIgMmMywBVRMXCwcFW0VDA4EPI?=
 =?us-ascii?q?0sFLR2BJ36BTRqEGoQqK0+CIgF1gXlaP4NTEgwGbQ8GgR0bTgICAgUCG0ADC?=
 =?us-ascii?q?209NxQbBQSBNQWRFwcSQ4QogXOUaI8WgXyMYpRiNAeEH4FeBgygHBeqZJkGq?=
 =?us-ascii?q?RICBAIEBQIQCIFoghYzGjCDKlIZD446g2fBSHg8AgcLAQEDCZJgAQE?=
IronPort-PHdr: A9a23:XjYraxy93tgHxGPXCzPangc9DxPP8534PQ8Qv5wgjb8GMqGu5I/rM
 0GX4/JxxETIUoPW57Mh6aLWvqnsVHZG7cOHt3YPI5BJXgUO3MMRmQFoCcWZCEr9efjtaSFyH
 MlLWFJ/uX+hNk0AEcvkYBvVuHLhhQM=
IronPort-Data: A9a23:vGJLb6iLHGZXj+Q18BbH4RgWX1619RAKZh0ujC45NGQN5FlHY01je
 htvCjzXaPbbYjehct8la4i08UsCu5bdnYc2HVdk+CkxQ3gW8JqUDtmwEBz9bniYRiHhoOOLz
 Cm/hv3odp1coqr0/0/1WlTHhScsjfngqp3UUbeYanwZqTdMEXpn0VQ63bZi2uaEuPDhayuVo
 9T+vsbDD1Gs3j9wIwo85rmKwP9VlKyaVAgw4BpnO5ingHeEzyNIVM1HefnqR5fFatA88tCSF
 r6rII6RozuxEycFUruNjrv9e0sWdb/eVSDmZq1+BsBOKjAbzsAD+v5T2Mg0MC+7uB3Q9zxF8
 +ihgLTrIesfFvCVwrxFC3G0JAklVUFO0OevzXFSKqV/xWWeG5fn660G4E3boeT0Uwu4aI1D3
 aVwFdwDUvyMr76X+L6paMB3ut8MfczgYrg1kW1F/y6MWJ7KQbibK0nLzeRxjQ8K3pFlIK6GP
 YwedCZlawnGb1tXIFALBZkineCuwH7ibzlfr1HTrq0yi4TR5FAplum2doOJPIbSLSlWth/wS
 mbu8nn2DxcXctOFwCub/2iEj+LVmmX8Qo16+LiQqa4z0APKnQT/DjU/D1yloufll3T9QtFfK
 Wk33XZxgIM9oRnDot7VBEbi/CHsUgQnc8dLCfV/9RqA0LH85weCGnNCQyJddcdgv8gzLQHGz
 XeMltLtQCdoraGVQn+b6q2dqS6pMDoRNTZdPXZcFVFdpd7+vIs0kxTDCM55F7K4hcH0Hje2x
 C2WqC85hPMYistjO7iHEU7v3xOUqorrZxUJ/SqGW2n71SlSeKuXeNn9gbTE1spoIIGcR1iHm
 XELncmC8ewDZa1hcgTdH43h+5n5uJ643C3gvLJ5I3U2G92QF5OLeIlR5HRlI1p1Ms0JfyPza
 UvOogpD4IcKYyPzNfctO8S2FtggyrXmGZL9TPfIY9FSY593Mgia4CVpYk3W1Gfo+KTNrU3dE
 cnKGSpPJS9AYUiC8NZQb71MuVPM7ntkrV4/vbihk3yaPUO2PRZ5s4stPlqUdfwe56iZugjT+
 Ns3H5LVlkwCDrKjOnSGr997wbU2wZ4TVcCeRyt/Jr7rH+aaMD9+Wq+5LU4JJ9I6wvwJyLugE
 o+VCxEDkwSm7ZE4Fel6Qis4Mu+wNXqOhXc6NjYrJlGmxzAoZpy3hJrzhLNmFYTLANdLlKYuJ
 9FcIp3oKq0WFlzvpW5BBbGj99YKXErw2mqz09+NPGJXk2hIG1aRooeMk8qG3HVmMxdbQuNn8
 u39jl+FG8FfL+mgZe6PAM+SI5qKlSB1sIpPs4Hge7G/pG2EHFBWFhHM
IronPort-HdrOrdr: A9a23:anMbia0W47cFKx1YBIXwKgqjBSxyeYIsimQD101hICG9Lfb0qy
 n+pp4mPEHP4wr5AEtQ4exoS5PwOk80lKQFqbX5WI3PYOCIghrNEGgP1+rfKnjbalTDH41mpO
 xdmspFebrN5DFB5K6UjjVQUexQpuVvm5rY5ts2uk0dKD2CHJsQjTuRZDz6LmRGAC19QbYpHp
 uV4cRK4xC6f24MU8i9Dn4ZG8DeutzijvvdEFM7Li9izDPLoSKj6bb8HRTd9AwZSSlzzbAr9n
 WAuxDl55+kr+qwxnbnpiPuBtVt6ZTcI+l4dY2xY/suW3XRYzOTFcpcsvO5zXMISaqUmSwXeZ
 H30mod1oJImjnslyiO0GTQMwWM6kdT11byjVCfmnftusr/WXYzDNdAn5tQdl/D51Mnp8wU6t
 M944u1jesjMfr7plWI2/HYExVx0kakq3srluAey3RZTIsFcbdU6YgS5llcHpsMFD/zrNlPKp
 gmMOjMoPJNNV+KZXHQuWdihNSqQ3QoBx+DBkwPoNac3TRalG1wi0EY2MsclHEd849Vcegz28
 3UdqBz0L1eRM4faqxwQO8HXMusE2TIBQnBNWqDSG6XZp3v+0i92KIfzI9FlN1CIqZ4sqfasK
 6xIW9liQ==
X-Talos-CUID: 9a23:5hdDpG9rnJry0kUfwO6VvxI1Isw3UFTG8Gz/ckqzV11DY6Gwe0DFrQ==
X-Talos-MUID: =?us-ascii?q?9a23=3AQLrp3Qwjy8TaF8lKuQKm5vmwLQ+aqI30D14Oj8k?=
 =?us-ascii?q?bgYqdNixyHhS60GuaaYByfw=3D=3D?=
Received: from mail-southcentralusazlp17010020.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.20])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2025 14:10:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gGC8T1GGINJErFqPljP95lZBNVgH+BtvSjnrPCQHc0K62ssOeym6Gl7fanjDfXKTxY0nKpiDDDzgYecCx9xZVr0SoYMilV5uSLZwa8BG7QNidt5dePDI23I2vLAS7+DZB6su5ezi1a/y266xYY7UEgVMtoM4TZdhWOiyYvv8IiAhth5asaedVXAZIPn8XOwtFcrzlM/bnmFpUF0NmWfg+kNv4Am+X0ZjxBaEr2k9TuAPWZGbovheoQM8XMUbZtU+Z4QkBnA2OF8Dh2ToWx8S1hDldvppsFkB82IDzDagmuKEb02sc7YbsRH5Hp/seZNtBco+bIhgXJ11AMKSaKFjfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mi+MDvrMkSVEFmRDFvOy6EcacswFz9JxIylqC5I0tq4=;
 b=D7irzv3jUCUC0fgdo9x51XcIhtV1fdTrziwjx1dBnFDocnHPmahKftwHCjAlJ67AP3MEU99wAeNVENj4GVQdcyPtJswO6lsWxgj8+StNY8Piu9DjoC5+I1opX4O8H2zgfzEg3shjryCIyL54l4mj+msCpv6Fjv6GgY3mtBlKFXKsL1Ovhzc2Shk3dYcQYkII2YP5rnnRkFRB5LrmT0fU1A/2L6sy3PAMabG5hD/v3d5TOps00S4dJvwqH+ulU+BkhRG/vaKqWZojIvevzsh0jU0EmbPkQGG2WUBecifO2uteuoIGgF5oqhCzMCmLNQY+DXCX+ITqPSwv8sDvqK3IRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mi+MDvrMkSVEFmRDFvOy6EcacswFz9JxIylqC5I0tq4=;
 b=i2lRlweSCLBPXcSvnXOa9W9jvqcZcU1JWA7lb4gTfTYy90MOa77TuzQlxV9E0AdBEhVlFqdlCl3sQ5ZTepjU4PflH/itk7pKhBoiBDH0fB3tOxxdWL32tGyWM6DTi/lreDbk9z0eBGhLovwvdHS7XfCVuud3Hb5wItx+wZInZ3U=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DS0PR09MB11254.namprd09.prod.outlook.com (2603:10b6:8:176::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Fri, 4 Jul
 2025 21:10:06 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%6]) with mapi id 15.20.8901.021; Fri, 4 Jul 2025
 21:10:06 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: control timebbbout waiting for ACK
Thread-Index: AQHb7SdVqnsUEiBjPkq/NzARK68tVLQidYRG
Date: Fri, 4 Jul 2025 21:10:06 +0000
Message-ID: 
 <SJ0PR09MB9126AF58A14EB228D487AA59EC42A@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB9126BF40779325611798B964EC42A@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB9126BF40779325611798B964EC42A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DS0PR09MB11254:EE_
x-ms-office365-filtering-correlation-id: 098ea63a-38e0-44f7-f754-08ddbb3f26aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?0aUWjgIT9L7bau8zw5e7k/VYMn1qFsvdTt1lO6lc1fuxAZxF0mJhuLLR0V?=
 =?iso-8859-1?Q?S3oD2uxVccjQE/n1so03c5MN83KeJo4jeF61Fgc251tc9Kj9zpwAvOA7fk?=
 =?iso-8859-1?Q?CmdgcnFVzbwkuo3ST5WWb7/D/0mBbQagPw1yWgFn4z2FvY3sieROcIvBMg?=
 =?iso-8859-1?Q?NixNqITc3hX26+aK85EOVH30ZXv/sayZ01JwboyPWESPElUFUasJCDkYVC?=
 =?iso-8859-1?Q?Slmh9FUW8b3FcSG+NcGzNZnaq+WptSJYJJIu+P96ePzC3FBFLuHk5Uw2hh?=
 =?iso-8859-1?Q?blzgW+DmUPfBPThiCrwJZgsu0RiJTKVcTnSXhBhT9meeLQ+W7xCXb0yPwh?=
 =?iso-8859-1?Q?FL6si96v9UGnucgAK/iYVRi1SOF9cUyEu1Wgz5NU6NnM2C+zGitKqH4lKk?=
 =?iso-8859-1?Q?skKu2C/Sq3WaoIYQUwSAATdIAvrzAxG/255APh85DXl+1utAdjYOvgbO93?=
 =?iso-8859-1?Q?HG/imKTFuVNVNh5OXI4ySK7eQQWaKF0JCWTBwbP+mWmd97JtJaBGdHNO8w?=
 =?iso-8859-1?Q?gW6nj6J+19iYfhpDtQuYgyJUT7BHs+EI1ok0e6fMXhXYnCcb2BEAZ/yqap?=
 =?iso-8859-1?Q?vD9YeyKo/f8cQnNZKhzYiW642yQOxQ7q/L9evB7fLfTgH8Kv4tzyJLlCRg?=
 =?iso-8859-1?Q?RKNt7OB2dpnVbgzH6G4+i0YuKQTSXO3ZJtfUuisPl+ooizUNh3HZSq9QAV?=
 =?iso-8859-1?Q?Gh1vErsocYANnIWjJ8JxN9t619JXlcUqw6xtDDOi7tadfO+pbOc1doVHO9?=
 =?iso-8859-1?Q?JM0ckW0p6bWcL0xUYJDe3IrpHRhmUGhcVGsK+BXsle6K5T6eCaZS95pSV0?=
 =?iso-8859-1?Q?dHDA32UGde7jHVIE15n70d2W0h72shGACKZ0PehDWmzjmW+ZL21hhxEstG?=
 =?iso-8859-1?Q?5pfV6a3i/mdURr31OfqFT37BHXQx1Vwkmze/BIY6ViA2iYe0eT19jijncx?=
 =?iso-8859-1?Q?l9P5WxxB1w5Q4deOKu4yOiLcLbYJd8WgxC+DljG8BxtzQbD0SnY4eJXY9d?=
 =?iso-8859-1?Q?xg3bfaCc3xbhNZedK9dfx4Ug9SBXyH8irhy/k7mEsWDFfiFKg1HXMjg77W?=
 =?iso-8859-1?Q?1vS/Wp2fo4PN0KX5Nly0OGfuSG5rCZZ+JbPaHvMvritfROOuFzAhNAF20k?=
 =?iso-8859-1?Q?5YeUT6IoSSYus+r607o6z3APBxocvv9NpjU+6EMAuVfvgNIUkx/2r0MvWs?=
 =?iso-8859-1?Q?cUqcyfU1PHJtCd7gsm9fhv0dQDH/6EIcNZqNnd8VwCG9lKaVBrNEzI3RGi?=
 =?iso-8859-1?Q?+YhGUjNwKWPvsgxCOHOTPymW1Ew+FTJTlGsgw0ppQ98w7lI1z9BAISci4b?=
 =?iso-8859-1?Q?O7SbX76EvDDJXtyUXPL5XZGA3eBQKsdvpHZiiiNNXx50RBqC3mTNhy9llB?=
 =?iso-8859-1?Q?wELTWZLyj6BL5aJV/k+i+IIMDf2Gm5LDNihx4GFDtxJtsDGTd76D2AHuu8?=
 =?iso-8859-1?Q?j6pRUvIW+FVcPEGEMsQc88H41HEsbHNjLF94fo+ehdz//eog6Y1oGAS1DA?=
 =?iso-8859-1?Q?D/99BN96qHPxbNIzq/AW1GyIBbLa5zlijWo+oalD/SRA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(38070700018)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?mS4ysR/CyiWLRQpQ2wyvdRy51onr42M5K6WnpBQWbYBWs9K/BzyncWhkKU?=
 =?iso-8859-1?Q?tW+D+mp4qTgVLOyA7h7iO8NXhyRuLa6469eU0b5stt5umNsyIsRQWrQB8G?=
 =?iso-8859-1?Q?CpQGVZLi8KAqjfCCtKeqeTJpC9Yy1wLiAaKljry72XByxMzNqqWNADXtsA?=
 =?iso-8859-1?Q?/csrDUAmScyn8KpnaSF/NCGbCBfYqxeSjlFyX5xFhZsUBLIsAbnVjAGG5/?=
 =?iso-8859-1?Q?OJvu+rExzZLMcH07wdJeJgZ0PhcrKdxpguS0SkerJNZv3OIogMvDHvDXF9?=
 =?iso-8859-1?Q?J/1v6ZC0PPQA5P4Tbwhql4s6G+qVYda9fw9LEGnQnHz/7Vffc8k4q73YU0?=
 =?iso-8859-1?Q?VkP7qaY/5CcN9q8X5r4PkTSmrAlcUapRfiao0hG6nZRly0KtaK0C7YgL7f?=
 =?iso-8859-1?Q?g5zlvoTal3NBRmzcXtcz9+ECnsH5vTatP7WDXE+F3qh+X3S0jfgJqb2Zt6?=
 =?iso-8859-1?Q?1UXWoAx+xSvZ7tCXFCkcsesnpA4VbsX9+dqjiN3IMQqddoihBITuC2cbRo?=
 =?iso-8859-1?Q?kjNceCnPJZ0cKu51anlKTNBCez0Q76bD0FVFjsXoTj4MSUrHFXzJpAp+h7?=
 =?iso-8859-1?Q?lYln2faRpg/whumvJCZeb4rNzYsY6WyqwkxEx8RYjgGpfIcgpxcH1taIai?=
 =?iso-8859-1?Q?q7jS0Ia5VIErUex6ViQAKkCD1oiwD7N/AMOqPsZD6wFheq4Fb7wtd9N6YT?=
 =?iso-8859-1?Q?q/nYGa0U7YyH9BDXVHwz6gVqHWqVl0FU9ZjmaYlp2iQ1nMJZ2/zbriBY7h?=
 =?iso-8859-1?Q?JHTLahVys3Y2ki/0k3azXray+DenMo8j6s0qGhGNX3fto8AFZdFHYeQRy3?=
 =?iso-8859-1?Q?/8Oq+VYNDYFhjukJEEHSaZEhXQU5WJvikz+upM5kDzOuDdK3tMxViv3W0F?=
 =?iso-8859-1?Q?rRswthLnEyQWtLNjj+EXRCCAlAePxQIYxFruRSMYM5ozBR6iZQT4tMhcF8?=
 =?iso-8859-1?Q?o9Mtt8YimOVblu/+aa34Jhllaq7z1w25WekdzlVtaJem+k/j4bi60vPVsf?=
 =?iso-8859-1?Q?3biHEsZO0eRhf8Oxumkow1d8seRAXVqNBnchSJW8/Jv9MfAwqMvA1YmCMx?=
 =?iso-8859-1?Q?2wY4sf28gkS3fxkIWhaG/lcoXVMZMaQ0jOyqNUhOe44TaPKeVK+QyM7hd8?=
 =?iso-8859-1?Q?Q9PVWgfZbu7UXviud2kdiWtbXhg+3AUAHKGqJ1+Utdr0t6Ln+pOp+CV2tP?=
 =?iso-8859-1?Q?e+5kGUgsJqaVSK+MEJ82y6YPtgEkpVgR+jDhvVwwwwXymiklJBAjaPzKFy?=
 =?iso-8859-1?Q?m5d6KRjIuoCPqgEiGzk/ajfF40FZKCjOwjhw/t5AHAxaDBOOoiqkyhSUCj?=
 =?iso-8859-1?Q?OoksZdA/yKPc8ShpeXIqjDI2lOnbbmCLQMSQ5ojS90ZrbPgLMUfIdhgNnQ?=
 =?iso-8859-1?Q?HahdHT2Hlrik60UH+2x4UDhrokWL2md5CdlFBOojSCZ7fYk+0QU/XtwwhH?=
 =?iso-8859-1?Q?N8sGSwe1m8QQG1w02GRhFJasSOSvCn6SqKVK7LJjad1t6TRwqG8np485rV?=
 =?iso-8859-1?Q?XdnxNo/zVqhiYVpJqluSnnfuch8E9Uadzix8hEwettjhQrgTnSbV0vQy05?=
 =?iso-8859-1?Q?FEGe0ILF1vM14VYxSkxEsemOfAJU50q1xJ9dioRAqWRBAqisBaL0RtBKYI?=
 =?iso-8859-1?Q?63/f/tQ6fhq0M=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 098ea63a-38e0-44f7-f754-08ddbb3f26aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2025 21:10:06.2273
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR09MB11254
Message-ID-Hash: ALIYIWEXLPCYHBPX6WO6AJKLHM4A6ACJ
X-Message-ID-Hash: ALIYIWEXLPCYHBPX6WO6AJKLHM4A6ACJ
X-MailFrom: prvs=2736e88a3=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: control timebbbout waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BAVE55JBDAF4CEF5YA255RRJHBPIHSNF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0144931587043207718=="

--===============0144931587043207718==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126AF58A14EB228D487AA59EC42ASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126AF58A14EB228D487AA59EC42ASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Correction to previous post: Sample rate is 125 Msps at a master_clock_rate=
 of 250 MHz.

I am

  *
using a N321 w/ UHD 4.6.0.
  *
Running one channel at 100 Msps on a very fast machine.
  *
Interface over a 10 GbE over RJ45 (on-board interface to PlanetLabs SFP-RJ4=
5 transceiver).
  *
Running a custom C++ application.
  *
Not using DPDK.

I intermittently (once every 2-3 runs) get an error in the RX path.  The er=
ror appears to be fatal (i.e. no more samples received).

RfnocError: OpTimeout: Control operation timed out waiting for ACK

Any suggestions?

Eugene.


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126AF58A14EB228D487AA59EC42ASJ0PR09MB9126namp_
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
Correction to previous post: Sample rate is 125 Msps at a master_clock_rate=
 of 250 MHz.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"divRplyFwdMsg"></div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
I am</div>
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;u=
norderedStyleType&quot;:1}" style=3D"direction: ltr; margin-top: 0px; margi=
n-bottom: 0px; list-style-type: disc;">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" style=3D"direction: ltr;">using a N321 w/ UHD 4.=
6.0.&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" style=3D"direction: ltr;">Running one channel at=
 100 Msps on a very fast machine.&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" style=3D"direction: ltr;">Interface over a 10 Gb=
E over RJ45 (on-board interface to PlanetLabs SFP-RJ45 transceiver).&nbsp;<=
/div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" style=3D"direction: ltr;">Running a custom C++ a=
pplication.&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" style=3D"direction: ltr;">Not using DPDK.</div>
</li></ul>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
I intermittently (once every 2-3 runs) get an error in the RX path.&nbsp; T=
he error appears to be fatal (i.e. no more samples received).</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
RfnocError: OpTimeout: Control operation timed out waiting for ACK</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
Any suggestions?</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
Eugene.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div id=3D"x_Signature">
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
Eugene Grayver, Ph.D.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
Principal Engineer</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb=
(0, 0, 0);">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126AF58A14EB228D487AA59EC42ASJ0PR09MB9126namp_--

--===============0144931587043207718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0144931587043207718==--
