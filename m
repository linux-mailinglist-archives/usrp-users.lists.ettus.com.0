Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D16B42CDB8
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 00:19:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6387A3844A2
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 18:19:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=sandia.gov header.i=@sandia.gov header.b="ZQPnRyET";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=sandialabs.onmicrosoft.com header.i=@sandialabs.onmicrosoft.com header.b="A5r7xvlj";
	dkim-atps=neutral
Received: from smtp02asnl.sandia.gov (smtp02asnl.sandia.gov [198.102.153.117])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B1A838445A
	for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 18:18:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=sandia.gov; i=@sandia.gov; q=dns/txt; s=snl;
  t=1634163530; x=1665699530;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=LFCapjEKbp7ZQJv3k7fkkccFpUujekOtYLG2p6xTlho=;
  b=ZQPnRyETK8LecfkK9ItHNcByN1uNfEh87jf1eBtY5+M4VT2wmK5LFL/D
   AD0zPOlxeur2EvpHTGzhKqV6phnFvaha7y2f0X4kJtIMg7C25mx648abh
   7gbpg7xFVcdZYYZL0sKV/wCwgE9XO4QC1KXscrFdbPTr5x6MNQGg8hA4c
   kCX4cnigsxGBafWhC0Q+xi2SrvarfNlyyCATvz+HH8nb7k5cBAil/ov2j
   E1FHyVDd8wWoVv7Bqf9rdGf7R01AoLSOYJBNVugyKkihCPe9mJOa850sC
   OLd6WcX9kipxDQR4PnLI20lQq2LYnfBr1aS2BCKvuMiqStvVD4Ijuyt/Z
   A==;
IronPort-SDR: VKiv81nB5TlfGT3C6kyx+1ZcQQUUEoACDVrWJ0sLd7HMhUMvJkDxrZYeH5Ljvzb+fR658v2qBV
 WR59qowaYqdQE8gWdfjMPU8Vz1pXk5RtA=
X-IronPort-MID: 370256037
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="370256037"
X-IronPort-AV: E=Sophos;i="5.85,371,1624341600";
   d="scan'208";a="370256037"
Received: from dp10snllx.sandia.gov (HELO Sandia_DLP) ([134.253.181.221])
  by smtp02asnl.sandia.gov with ESMTP; 13 Oct 2021 16:18:48 -0600
Received: from dp10snllx.sandia.gov (dp10snllx.sandia.gov [127.0.0.1])
	by dp10snllx.sandia.gov (Service) with ESMTP id F1EBD60003AB
	for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 16:18:48 -0600 (MDT)
Received: from mail.sandia.gov (unknown [134.252.86.170])
	by dp10snllx.sandia.gov (Service) with ESMTPS id C998560003A9
	for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 16:18:48 -0600 (MDT)
X-CrossPremisesHeadersFilteredBySendConnector: ES12AMSNLNT.srn.sandia.gov
Received: from ES08BMSNLNT.srn.sandia.gov (134.252.86.170) by
 ES12AMSNLNT.srn.sandia.gov (134.252.86.168) with Microsoft SMTP Server (TLS)
 id 15.0.1497.23; Wed, 13 Oct 2021 15:18:47 -0700
Received: from GCC02-BL0-obe.outbound.protection.outlook.com (104.47.64.109)
 by ES08BMSNLNT.srn.sandia.gov (134.252.86.170) with Microsoft SMTP Server
 (TLS) id 15.0.1497.23 via Frontend Transport; Wed, 13 Oct 2021 15:18:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EnWhGIDGl65AmQwrqdrrHuxQb+HJJcw1LChC5PMRTiz2+/hZ/4wE8IliyvmQRL32N9USsj+GXux6aMErcfPxxch4eFyf3Q5a/cZczTAXokVyHP4DejIalNxpLzvMbyyl94IRgWRq/TIdn7a33YrI3CaPS5vpOnqunDZoTkFoqnqEFm1KBdnotHr/EtZX5ykjd7mgg+709YfBBwpVLl71b561nCjZMPqq4Ob+DFIg7VjjnPnyhbnxrRkcFqz8s4p/fIS0Cfop4jf+wnGkSDTeVf7PwFNFldGgLDn+vrno3lK8wrGloJVwt+fKDs54g62+K9BDSE1HrXQ1WfAZFZFg5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=si2VI1lCPv1zMNkimgVBSek6ii0TA6bfrdWxV+JG4qI=;
 b=PErJTOAEyE12s63XWcC3WTF/KcUkiOlWWgxsT1c2lZSl5VgwK8POGuDj1mqaELE3QgxPBFBkNq2zisoVZ29K2nz+LqIYQaEh8jbxhCUQVNlt6euxQi+FlUgTdBRBlx3pZ/NTpRN40q+4qnvzPzuB5XJ/KvEHBfD8pJ4AgupTU6KA74tEvZmI5ZSlt2NAnFxztJvb6Xf0Ffdbb7y2CeNHVKqmj+AoyKmip0QKfDIAOTIgQgveddaSGxchm0ny/t6fRLF+4JpnxHJe/ebTs+I8/43+VjhLUcQkdjveyKM/HoMiWkkIPmCaNwowrFJblp2w0Xmx33LgvKl8vVgZqaW6UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sandia.gov; dmarc=pass action=none header.from=sandia.gov;
 dkim=pass header.d=sandia.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sandialabs.onmicrosoft.com; s=selector2-sandialabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=si2VI1lCPv1zMNkimgVBSek6ii0TA6bfrdWxV+JG4qI=;
 b=A5r7xvljxs7v/koYSPsAGM/S4X76h6xUT6LIEaSvK47UXdyHBDz22OF44uRIsumSp/kcyVuQpFUiVUbiNgJOVMhStdrAGwqRqtQLlZ92V0YEjI522Tc+7qQ8IR6Au8ZxgwW8GujIS8LfM+B8gd2RudxIf9ynkMRSHafXr7CGm/k=
Received: from CO6PR09MB7927.namprd09.prod.outlook.com (2603:10b6:303:c2::23)
 by CO6PR09MB7798.namprd09.prod.outlook.com (2603:10b6:303:ce::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.24; Wed, 13 Oct
 2021 22:18:44 +0000
Received: from CO6PR09MB7927.namprd09.prod.outlook.com
 ([fe80::3909:de46:da:8a0d]) by CO6PR09MB7927.namprd09.prod.outlook.com
 ([fe80::3909:de46:da:8a0d%7]) with mapi id 15.20.4608.016; Wed, 13 Oct 2021
 22:18:44 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 NTP PPS support on meta-ettus images
Thread-Index: AdfAbaDyxry9auQ7S7S2e7tsaaCgMQ==
Date: Wed, 13 Oct 2021 22:18:44 +0000
Message-ID: <CO6PR09MB7927D536C960564012D4E965CCB79@CO6PR09MB7927.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: =?us-ascii?Q?eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpc?=
 =?us-ascii?Q?L1wvd3d3LnRpdHVzLmNvbVwvbnNcL1NhbmRpYSBOYXRpb25hbCBMYWJvcmF0?=
 =?us-ascii?Q?b3JpZXMiLCJpZCI6ImY4OWEzNmE0LTg5NDQtNDI0ZC1iNTRkLWJlMmVjZDIy?=
 =?us-ascii?Q?N2NlYiIsInByb3BzIjpbeyJuIjoiTUFOQUdFUlEiLCJ2YWxzIjpbeyJ2YWx1?=
 =?us-ascii?Q?ZSI6Ik5PIn1dfSx7Im4iOiJNQU5BR0VSIiwidmFscyI6W119LHsibiI6Ik5F?=
 =?us-ascii?Q?RUREYXRlIiwidmFscyI6W119LHsibiI6IkVNQUlMIiwidmFscyI6W3sidmFs?=
 =?us-ascii?Q?dWUiOiJObyJ9XX0seyJuIjoiQ0xBU1NJRklDQVRJT04iLCJ2YWxzIjpbXX0s?=
 =?us-ascii?Q?eyJuIjoiRVhFTVBUSU9OIiwidmFscyI6W119LHsibiI6IkVYUE9SVCIsInZh?=
 =?us-ascii?Q?bHMiOltdfSx7Im4iOiJSRVZJRVdJTkciLCJ2YWxzIjpbXX0seyJuIjoiUmV2?=
 =?us-ascii?Q?RGF0ZSIsInZhbHMiOltdfSx7Im4iOiJHVUlEQU5DRSIsInZhbHMiOltdfSx7?=
 =?us-ascii?Q?Im4iOiJDREFURSIsInZhbHMiOltdfSx7Im4iOiJDTnVtIiwidmFscyI6W119?=
 =?us-ascii?Q?LHsibiI6IkFUVEFDSE1FTlQiLCJ2YWxzIjpbeyJ2YWx1ZSI6Ik5vIn1dfSx7?=
 =?us-ascii?Q?Im4iOiJBVFRBQ0hNRU5UVFlQRSIsInZhbHMiOltdfSx7Im4iOiJBVFRBQ0hN?=
 =?us-ascii?Q?RU5UT1VPRVgiLCJ2YWxzIjpbXX0seyJuIjoiQVRUQUNITUVOVEVYUE9SVFMi?=
 =?us-ascii?Q?LCJ2YWxzIjpbXX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24i?=
 =?us-ascii?Q?OiIyMS4zLjIxMjQuNCIsIlRydXN0ZWRMYWJlbEhhc2giOiJYbVBQaW5HTVNW?=
 =?us-ascii?Q?bFRoM3dPT09HaGMwWUlPMFNPcXNvN1hFbTkxcmQ3bTlyQzlUbWdVU0lueENZ?=
 =?us-ascii?Q?QjJ4VmNJNkhWIn0=3D?=
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=sandia.gov;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 698611df-d05f-476b-397f-08d98e976b94
x-ms-traffictypediagnostic: CO6PR09MB7798:
x-microsoft-antispam-prvs: <CO6PR09MB779880F85A7C25E929D0E2A4CCB79@CO6PR09MB7798.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9upMNqQCP2AlIsaUKH+OGD7U5u+oBatxwAbnrrAzRoCtC01C9d6hUDGI9AV0W9DhYOQHKH9XDYT8RW7Qh/zOczMpLtvWU3MB1QiLDJ1h0Jtyex6A+frtPaHhQu9knoDYW0xiw0xwSAuvPMXP2o4zh7oLXXA9xhjNATMaC52v85819KNf3c93ulkyVBt/ljMuQUvm4X2Xg2s5jV87DslZz80rsZq3owfCAI+jhLmD6PdWku7xanXrMXKsTk+S9jmTXWGeVwNf9jyjxbVRql2lBuMhvqyOcBeBAWvJiJ368sFeMlza4nArpLJIwYeT+OsDqKdhiyNyghvAguPEiKVhqqQUjBtv2O/dPHQAhVWROrRIpyfdPf1hz2SXsLbEeQXkTuDc6YoXm/hDXU2vfdfJ8OV4U/yza2k/SHsDl9T9sMnOzh+gNdp+Api1vO/UQILwUMerD+akTw9m3YJBoWd3HVd+4Nvb0p6hUr+aotGgwRKp7yA2uupJMF3LCXwn/qDaPdMTxOJqtNKNSi4SBjMjTQDk9tRM4MAerttayn+LyT1KGXBNOeQEnDGF5VlogXtggpFa+W8Cf2tTZZQqD+zts6HtyMp39eY4Z/5agnq22cnHR8H2IY33k1MaqeEwt0LUPgUz1KsxlB+UYQ1FbTJfV5sLnc2IkY6I7+mVNYT/tmkLxPGAnqXxSyMIdv3dTtSaWb4BiieiydS+ALRcUXdYHztlCfmSBixuHjfjAh5e6B6VOzvDNyOefbnJOX4b7xqHDAQeVNCPk2OoplFWh2z0HqRQrGu2ZnJFVu4+aiB84Io=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR09MB7927.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(86362001)(52536014)(6506007)(82960400001)(83380400001)(316002)(9686003)(66946007)(7696005)(33656002)(8676002)(5660300002)(8936002)(122000001)(55016002)(76116006)(38100700002)(2906002)(66476007)(71200400001)(186003)(26005)(966005)(66446008)(66556008)(64756008)(508600001)(38070700005)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?guktwB/BmhfZRXrlcXjMElOLGzA2ZEMrMSb4Go58I4EC5vYHs4TKQivrZFz/?=
 =?us-ascii?Q?+m8Umpl0T6TLH+FqKhpxnmFDf9sk4ZuBudah2jT8YG/CjYazIx1rloEQdSgC?=
 =?us-ascii?Q?Q+vklnuQBCabi1OcrqEfFb9EtNyt14ffnT5gq7u5UsEv8M/QPF/e/MRBCrQg?=
 =?us-ascii?Q?xh4OyaaZtiUchdhwe3C930Pz63m46ZvOiZG5DBfvgi0/wHQGPGHvpac1cDAt?=
 =?us-ascii?Q?zt0dijtNjmMhRRaiAKQzGwyBvirXrVn7b2BJ2HNeJ+95vN8jwp7hGRIkTDMO?=
 =?us-ascii?Q?JKXg2KO9G2AXk3qh+oen3h9o0LTH+4zLmQSIaNqhVlzf9rcilhm3SuxoTzav?=
 =?us-ascii?Q?tGZMtiqMPqWZKauI3wLEihrB79f9nhAd3GCwsNDEYBdW7yx5cP2iRaLcExal?=
 =?us-ascii?Q?TDMTdtai57SHzHo320LnDhPtBOJN9DUjcTXOwimzll0DDy6o5TCiJT4If4NZ?=
 =?us-ascii?Q?j39zFIaL0qwDXUiu2atjMPThbNpDjx8KMuJuFR9ddahyioakaxHnD8jcBMyq?=
 =?us-ascii?Q?cMYOdo0Lnew6ZbrghzK9KDcja9DBwUwmbnkPPgsG+Ux7dmNlhDv5dNdQuO+Y?=
 =?us-ascii?Q?5PG2Aj1Ktc5oGkT5NqaGl+nk9y8j+jsNcrWz32g4H4w0ajij4Tkzd6EoBoJB?=
 =?us-ascii?Q?qsBmdzitGobhA0m5tSIYDzM2iLDemCNsWzFynQqx+gwOg1mAPcixkgvKrIaA?=
 =?us-ascii?Q?9+Womt333sVIPgVrE5I4lbbJjyE9GQXyzwlC77e0nCNxqi5FQ6iD9H4JbG1L?=
 =?us-ascii?Q?ATzFOloVVLWyMLbD2JKFeOVFjJiYxWzkZS01/juazf2WX8wWNu1DlF/mWK6N?=
 =?us-ascii?Q?NrvrXiRB/3D2CIxxUPilt+FUReZvHoB2/zPmAaiIApSzbRVLyn845bzEmuCm?=
 =?us-ascii?Q?4NhPamd92vLLniOA5bgxtuoUUbMhHB9pqW74YONjkRSc/VWEB4fH/19FdihZ?=
 =?us-ascii?Q?gsL8rEZaeDMxbAPiqWBj/3lwLfWPamnAwuJ5nAehwRgx7345wBK2tHfrf6od?=
 =?us-ascii?Q?Z2B8pZ0JV9QQtUaG1i8mnU7ax6p49+UA4tofIIM7E9IkYcvt7NktN6nf4EuV?=
 =?us-ascii?Q?VPpP+eNuINNzaMF+A1LGIjcqOnUVOlGWIdComYTJzso8X8r4DBLBO0k66aPR?=
 =?us-ascii?Q?3pX/+JQViDComI56MpykyOdBRWKCBql1IPJiiczkC5XFIRabhf4/YPHxbhCu?=
 =?us-ascii?Q?9r+wQICSnlKB/7LAS1CYowZVKJ7dumBS+gQGTJ8jCfYIanLXfHzkd/AtYwuy?=
 =?us-ascii?Q?2vFJOSkFtKJgjYu+eALwjo38yNR65vniYuQWNkxXIZ8e8Y57GH2Qa62yf9Do?=
 =?us-ascii?Q?f3Tu+hdGIZksGKc6hNHiXJkH?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR09MB7927.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 698611df-d05f-476b-397f-08d98e976b94
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2021 22:18:44.4503
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7ccb5a20-a303-498c-b0c1-29007381b574
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR09MB7798
X-OriginatorOrg: sandia.gov
X-OrganizationHeadersPreserved: ES12AMSNLNT.srn.sandia.gov
Message-ID-Hash: GKNCQSRB4UHH7XUXQOYB64CNZOELF6Z7
X-Message-ID-Hash: GKNCQSRB4UHH7XUXQOYB64CNZOELF6Z7
X-MailFrom: djpeaco@sandia.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 NTP PPS support on meta-ettus images
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GKNCQSRB4UHH7XUXQOYB64CNZOELF6Z7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Peacock, Daniel Jackson via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Peacock, Daniel Jackson" <djpeaco@sandia.gov>
Content-Transfer-Encoding: 7bit

I'm trying to get NTP working with GPS on the E310. In the past, I've gotten it to work with the old release 4 images (UHD 3.9.2), but with latest meta-ettus images (UHD 4.1.0), only the serial GPS data is getting NTP (via SHM), and not the PPS data, so the accuracy isn't great.

The approach configured out of the box for release 4 has NTP connecting directly to the PPS device (using the server 127.127.22.0 alias). This approach doesn't work with the new images as there are no /dev/ppsX devices - in fact PPS support isn't even compiled into the kernel:

	root@ni-e31x-3203241:~# zcat /proc/config.gz | grep -i PPS
	# CONFIG_PPS is not set

Compare to release 4 image output:

	root@ettus-e3xx-sg3:~# zcat /proc/config.gz | grep -i PPS
	# PPS support
	CONFIG_PPS=y
	# CONFIG_PPS_DEBUG is not set
	# PPS clients support
	# CONFIG_PPS_CLIENT_KTIMER is not set
	# CONFIG_PPS_CLIENT_LDISC is not set
	CONFIG_PPS_CLIENT_GPIO=m
	# PPS generators support

Last month a message on this list[1] suggested that the following ntp.conf (which uses GPSD SHM for both Serial and PPS data) should work:

	# GPS Serial data reference
	server 127.127.28.0 minpoll 4 maxpoll 4
	fudge 127.127.28.0 time1 0.0 refid GPS

	# GPS PPS reference
	server 127.127.28.1 minpoll 4 maxpoll 4 prefer
	fudge 127.127.28.1 refid PPS

Unfortunately, I haven't had success with that either. NTP is just getting serial GPS updates, not PPS:
	root@ni-e31x-3203241:~# ~/install/usr/local/bin/ntpq -p
	     remote           refid      st t when poll reach   delay   offset  jitter
	==============================================================================
	*SHM(0)          .GPS.            0 l    7   16  377    0.000   -1.830   3.126
	 SHM(1)          .PPS.            0 l    -   16    0    0.000   +0.000   0.000

Starting gpsd with -D3 gives the following startup logs:

	GPS: Activating GPS antenna supply voltage...
	GPS: Activating GPS PPS...
	gpsd:INFO: /etc/gpsd/device-hook returned 0
	gpsd:INFO: SER: opening GPS data source type 2 at '/dev/ttyPS1'
	gpsd:INFO: SER: speed 9600, 8N1
	gpsd:INFO: SER: speed 9600, 8O1
	gpsd:INFO: SER: speed 9600, 8N1
	gpsd:INFO: SER: speed 9600, 8N1
	gpsd:INFO: SER: speed 9600, 8N1
	gpsd:INFO: gpsd_activate(2): activated GPS (fd 7)
	gpsd:INFO: KPPS:/dev/ttyPS1 cannot set PPS line discipline unknown error
	gpsd:WARN: KPPS:/dev/ttyPS1 kernel PPS unavailable, PPS accuracy will suffer
	gpsd:INFO: PPS:/dev/ttyPS1 ntpshm_link_activate: 1
	gpsd:INFO: device /dev/ttyPS1 activated

Does the new image use a different API to get the PPS data to gpsd/ntpd that I need to configure?

Thanks,
Jackson

[1] https://lists.ettus.com/empathy/thread/YRNSBGDFVCXJDLOVHFYWMDVC5F3QAK5J
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
