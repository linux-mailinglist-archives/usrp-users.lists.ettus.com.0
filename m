Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGYkDMdaq2mmcQEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 06 Mar 2026 23:52:55 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD4922868F
	for <lists+usrp-users@lfdr.de>; Fri, 06 Mar 2026 23:52:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DDFF3863AC
	for <lists+usrp-users@lfdr.de>; Fri,  6 Mar 2026 17:52:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772837573; bh=RNdlQvzVSsKYRf0meUo9+hPRHfhV8Cv45KalpEIHaPw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vNBXtajBxxMjP2cyC8RoejwXC+QqXwCzp10WOLctGWrN6DlDL9rU4hjEdZdLen2am
	 rs7D287CqRbymyIi7I42IEz40++PvGEzsM7+K0eMDEVvoI8wNeDTwcXbqbkMrd1uc3
	 mOcgQ7fA/y/bywaLkPueCYs1gVOXi+T5IyQNid3L/3hMR6mTORQ/QnPkAFVYE59qK7
	 UPEtyyObHuwYAx4RoTITYHoCazteCFRo5Xjm69E9i5qd1KcgdqphQIy6+wWN+Blq6s
	 0qD0VJ7jrsw32I2GetiGmBeTk3f6eHiUH6d92a8aE/TJs5yqbpM9HtUNNGRBq4cVM+
	 bIMKmgco17NtQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id F074B386104
	for <usrp-users@lists.ettus.com>; Fri,  6 Mar 2026 17:52:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="KJyPpbUU";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="WpLEcLW+";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772837525; x=1804373525;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=yAtXGOfpbJfNQ2glktqx7g6r7tqFHbRNp3iKrNlQbJY=;
  b=KJyPpbUUMKyqhR6jsWpcjB5Cb1jZhNXtw2EXLIL91zHBDV/L/XTjqDdI
   A6Uw52ihd0G2B3DfOm3Fc/BYfrBgTl9HkUQs1alNEulWAQWJd/CCQfsw0
   6/IyiOK4qI+rtMipu61v+AYiy1YsXHVfJ7S382DHnHSyumjBR+jLmJ0Is
   I=;
X-CSE-ConnectionGUID: 9U8TvrK1QzabpVtAi3J95w==
X-CSE-MsgGUID: D/FfOUhJS6qL8RCon3k9SA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11721"; a="8671086"
X-IronPort-AV: E=Sophos;i="6.23,105,1770624000";
   d="scan'208,217";a="8671086"
X-IPAS-Result: =?us-ascii?q?A2GMAQA6WatpjgwBXShXA4EJgVCBPQGBA0EBQ4Fslk+XQ?=
 =?us-ascii?q?4d8A0gPDwEBAQEBAQEBAQcCLgEiBAEBAwSFAAKNIic3Bg4BAgQBAQEBAwIDA?=
 =?us-ascii?q?QEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEdAjVVAQEBAQMBPwEBOA8CAQgRBAEBLycKHQgCBBMIgnqCHgcEC?=
 =?us-ascii?q?wcDNqxoeIE0gQGCDAEBBgQE2ycYY4FnCYFNg32BPzOCZAEBKoE1gluBIRmEe?=
 =?us-ascii?q?jaBVUSBV4JoPoRFHyaDToINIoImehQdgSiGC4QwXYZKUnIiAyYzLAFVExcLB?=
 =?us-ascii?q?wVeRUMDgQYjSwUtHYEjIR0XFB9YGwcFEiEqgWl4ggEPhmp5Ay54DiICOlxKP?=
 =?us-ascii?q?gtaBYIhAwttPTcUGwMEgTUFjRZcPoE4gjuCLQEXom6jQjQHhB+BXgYMl2yIM?=
 =?us-ascii?q?heqay6IGpA+pCKEdAIEAgQFAhAIgX6CADMaMIMqUhkPjjqDZ8hceDwCBwsBA?=
 =?us-ascii?q?QMJk2kBAQ?=
IronPort-PHdr: A9a23:08tcoh9COt4K4f9uWCboyV9kXcBvk7n3PwtA7J0hhvoOd6m45J3tM
 QTZ4ukll17GW4jXqpcmw+rbuqztQyoMtJCGtn1RfJlFTRRQj8IQkkQpC9KEDkuuKvnsYmQ6E
 c1OWUUj8Wu8NB1cFdz5IVrIrS7a0A==
IronPort-Data: A9a23:mqWPQqonMACcddlCpEuUx9SaVK1eBmIUZRIvgKrLsJaIsI4StFCzt
 garIBmCPPffYWf2fI8lbI6/8UJXvsCHy4MyQQc9+yAyFShB85acVYWSI27OZC7DdceroGCLT
 ik9hngsCOhuExcwcz/0auCJQV9Ui/HQHtIQL8adY38rHGeIcA941FQ73bd/2tUw6TSAK1vlk
 cvopMHCM0OS1TdxM2YFg4qOsxoHUM7a4Fv0hXRgI6oQ1LPivyNNVsxHfvnvdyKQrrR8R4ZWe
 c6SlNlVwUuEp3/BOvv9+p7nf0sDRKLlPATmohK6jID/6vTqjnVaPpcTbJLwW28O49m6t4kZJ
 OF2iHCFYVxB0pvkxb1HC0EAe81JFfYuFLfveRBTuCEIpqHMWyOEL/5GVCnaMWCEkwre7K4nG
 fEwcVgwgh6/a+2ekY/rdvd2pZ0aPsDhJL0Dk3A772CEEqNzKXzDa/2iCd5w9gZtvvoWTN3jP
 5JALz1ycB7HfhtDfE8ND44zl/upgX+5dCBErFWSpuw85G27IA5ZjOCrYYGTI5rTH625nW7Bz
 o7C12nkDRwcOZqQ0zOU7H+2rubChyS9X5gdfFG93q403wTLljJ75Bs+eRyVr96EimyFBct7e
 3Y//Sx1rvkJ3Rn+JjX6d0bj+iLb1vIGYPJNCPcirRyWx7DPywKYHXQfCDNddME98sQxQFQXO
 kShmtroAXlwvaaJVGmU5LOM9GzqYHFNdDVEYjIYRwwY5dWluJs0kh/EUtdkFuiyk8HxHjbzh
 TuNqUDSmon/k+Za6vWH40rk2gu+r5LRcBIc5171Dz+6u1YRiJGeW2C+1bTMAR99wGuxS1CAu
 D0bltOC8fsHH5WVzXPVGbxVRevv4OuZOjrBh1IpB4Mm6zmm53+ke8ZX/S16I0BqdM0DfFcFg
 XM/WysOuPe/31PwN8ebhr5d7ex2lcAM8vy+CJjpgiJmOMQZSeN+1HgGibSsM5/RfLgEyvplZ
 cjznTeECHcRE6N8yzSqD+way6dD+x3SMVj7HMihpzz+iOL2TCfMFd8tbgHSBshnt/nsiFuOr
 L5i2z6il083vBvWPnOPqdZ7wJFjBSRTOK0aXOQGK77fclQ8SThJ5j246epJRrGJVp99zo/gl
 kxRkGcBoLYjrRUr8Tm3V00=
IronPort-HdrOrdr: A9a23:O9Pqz60SRdznuu2Od/2TFwqjBQFyeYIsimQD101hICG9Lfb0qy
 n+pp4mPEHP4wr5AEtQ4exoS5PwOk80lKQFqbX5WI3PYOCIghrNEGgP1+rfKnjbalTDH41mpO
 xdmspFebrN5DFB5K6UjjVQUexQpuVvm5rY5ts2uk0dKD2CHJsQjTuRZDz6LmRGACVWD5swE5
 SRovFAuyehfnovaMG6DGkuXuTIpdHH/aiWKyIuNloC0k2jnDmo4Ln1H1yzxREFSQ5Cxr8k7C
 zsjxH5zr/LiYD29jbsk0voq7hGktrozdVOQOaWjNIOFznqggG0IKx8Rry5uiwvqu3H0idkrD
 CMmWZvAy1A0QKQQoiHm2qv5+DU6kdu15at8y7bvZKpm72CeNtzMbs9uWseSGqV16NohqAC7E
 pGsljpy6Z/HFfOmj/w6MPPUAwvnk2ooWA6mepWlHBHV5ACAYUh2rD30XklZavoJhiKnLwPAa
 1rFoXR9fxWeVSVYzTQuXRu2sWlWjA2Eg2dSkYPt8SJ23wO9UoJhncw1YgahDMN5Zg9Q55L66
 DNNblpjqhHSosTYbhmDOkMTMOrAijGQA7KMmiVPVP7fZt3TU7lutry+vE49euqcJsHwN87n4
 nASkpRsSood0fnGaS1re92G9D2MRaAtBjWu7FjDsJCy8PBrZLQQFy+dGw=
X-Talos-CUID: 9a23:oYOEuWA5Aua9y4L6E3hapHIKAON8S2/Uxm/uP2a5UkQ4FaLAHA==
X-Talos-MUID: =?us-ascii?q?9a23=3A7qiflg/qtUF5fQTwT9knQH+Qf+svzaqJNUAvqss?=
 =?us-ascii?q?fn5m+Hit2YDTMtx3iFw=3D=3D?=
Received: from mail-westusazlp17011012.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.12])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2026 14:52:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=frCJG+GT/kVY+kWmhMWt6OFsB4Duc0+j+33Gi729GSVXgzh8MhVacoraWg/9c3oZg6xyUzbkGN3OH2Jq9y6SLHsYQGZ1dvIZlF8ZK6O+J2d6hU/639XOhHQqRUoXm5rN1TbW2m5aJ6iN07VX1MG/RFrZJyjP/Nxh2G4DhxZ4e4S2X8rCUj7ZKELYKg55SgKt2ysq24fy6qr8eE9Z/o+n/0P7bdgzaUxFYbWXyB0dc1b1wVN5hV23E9u+VFX/44N/n2xd3+MmhbL19tU/jVtz6AbLzqnUe6QMvlrZc2Fk/Gs7LO/nZhZaPRhFrdWquJmtOcZotfkz3SgCyosviTdiKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=myp/wMQDOibPNQ4UUe3ZX2ndO/jpdpXKVsDC8vIKgjM=;
 b=ntYBKd0z8f8bNnYkCo0WOwqF1EtgbDcGciyDjf0mkYsga4AiYdPdwHQBZwSWvQTi+YRZ0hDtNOp1i5l4qXjM4oULSehKW12wlI/vHeQ6gLyQYZ0ZxXUgS+YltWIH0ruceihZRKqxWKZX0w4zEmnNgkDwKDqRlrEC9/XchVO3GhE0yPOPgLsMrZ6FFPZJ3HZxkRE1WTIrESDNlOShlQBlWsV+k7Sb8Xw5ytAvUnSsH9NvZeXZnDSIr37yuODjme8hZMypUz0NSIk+6vHLADA2zIosk+Pjhn2XFk93iuEk9n+ktYDMiSJdbGaDYimuhMNz6HDFfGHzzrwhBj53ZG4hyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=myp/wMQDOibPNQ4UUe3ZX2ndO/jpdpXKVsDC8vIKgjM=;
 b=WpLEcLW+o1527L9IfBt4D90MPhF2DtGPT5EpDE9g8I9n6wAGT3lqnVywKvcO6O93CuQR2XJ6tuPlVp85H2Vk38dMd3ZHQJo3dE3t6Do1zXoimH6Ovrj2/WFYfvuAMLDZWfCzHXrmyk6VqBbZxas+CUTPRI1VgtWn7THfPLomHWs=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by BY5PR09MB5315.namprd09.prod.outlook.com (2603:10b6:a03:24a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.19; Fri, 6 Mar
 2026 22:51:58 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9678.017; Fri, 6 Mar 2026
 22:51:58 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 X4_200 image TX underflows
Thread-Index: AQHcra1pIGa4J647DkyptKq4MYHpk7WiHEC8
Date: Fri, 6 Mar 2026 22:51:58 +0000
Message-ID: 
 <SJ0PR09MB9126597BD93B0B0244260DF2EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB912604328C9A23C7AD07A357EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB912604328C9A23C7AD07A357EC7AA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|BY5PR09MB5315:EE_
x-ms-office365-filtering-correlation-id: 3ee3b0d3-e450-4868-a495-08de7bd2f92c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|38070700021|8096899003|7053199007;
x-microsoft-antispam-message-info: 
 ANaQygqrRCT5sk6xP9NA3zB3aDNgXp6D9dTBppPEgaXJtgkPXSQPP+F/E9OAZCcv00/pqHUqUirSjgqVQVl+fScoLzIxEAAE1R+PUfAQSgU+3lUnPrXo3e4ccd0pC6LDnt0wn06Ew/6oHqlVdF/l7LhupHmWPE76qbrHM+tMXRPiZkNUpuqIw9pUMqn0LrQYwLkmUHcvMSMTUH8/AXj7znXoVcFg8xr2sVlEqowJ/pf8qkcg7g/sSJuZ0n97fInv26UhUfcwaflUCH2WygD5YUopwcZKFTRFRVjn3EIQG1ho3/ZJrElrfX9ZECH/XKf44iO8pjcOdQ5K25JHMFQIJCYpUuH5O2v952u2MrkRb4hbYzuCDKhNofp+XYmRjsBDhy53MVr7XddA6efl6+hebSZIeyk0Yw0JvDBMJ2uxsv2J6TlHrD1GsvVAb+qTK1maIalU/Uc0hqHHvIBpTnzyIU1xNoYwJRITQMFlJhY+RjEZX4F8t/2/Y15JcmUu/dWdNAt5y0Q5HqX0BPKLqOk3girgXmUuzTK/ZMKlsoZwe5wV4zSFeurXbOLgf6ifc35zr+AjEzyvdb1JeyCSsAOM9bXEbpI9z7VTx03e3RJ87HCtkNlK8NZknlTe6umzxOu54RdBcsNX3shUbLGkl2K+1ds0fzpeLlPcaT3jcQTI1xidcCdop4VE8CRUL7gDguzVQprb/VIYAKZVixjXEyYL40uIEaQrddYnDDHgKGyZfyMKv8ysKHMJQmsR3fguOmu/yLHR0Z2pKLC6FmPUbnC46KYkHN0WMblVhjDx6s8hYm4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(38070700021)(8096899003)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?jIAHM0bTxLpK++szcEDofgS1Wlj0NgA9Dj308dWumBYIIV1s43z0TlvK?=
 =?Windows-1252?Q?CHOnjBJ12hsFqD6Dy47OyrlNinXGydMQ7sCro2EOEJ1NSxirNQW4zNOt?=
 =?Windows-1252?Q?st8h5Nwa6iYPU7C8gHxdb4nBaqBcUl5+N64woxwpMGdb41TcebO++LrR?=
 =?Windows-1252?Q?peuc12F1NmNdjrw1awqju7R532fPuH3FVhCzVtn+Ei2+Z+q16k5HgxxP?=
 =?Windows-1252?Q?z1FLf80QM/fDimna/fkLtZ6tuPw+4NWQF7/Z5S/IsE1wQUJEJJIiI6xd?=
 =?Windows-1252?Q?yl3gzV3grOdsrJs+h89EmaRbR1MjCsfOEYpGvwysVkCT/vZCyIueOvbj?=
 =?Windows-1252?Q?uaZQxhMT4RJK++VxREViHUdhH0WZMynPvVe/LA1atrmhTKuIHphZwna/?=
 =?Windows-1252?Q?W35bNcVmAjCpHkLDoRc+55zVOTSTccaNypt6yvkrxM/+HRs5ek43411r?=
 =?Windows-1252?Q?6o+WraUbBA13WzFlnOAFPVL4HplfYQXBCD7a/TAsX2QwsBTU0W/omZdo?=
 =?Windows-1252?Q?bjlMaOqI+8hkirsYRWiCJDWnq0dHkjlGhUdm32wZMtdNtE2zmWlGNNl5?=
 =?Windows-1252?Q?EOUr8cC9EmY1NQnkTvF6LEbrMhImAasMAL+VTnibeun4DecHBt+jAIeT?=
 =?Windows-1252?Q?O4fEwZb71Z2j7TDTMxVU42OKsgYWWQK13DBRqYC+vtcIbC97iSzvGMZg?=
 =?Windows-1252?Q?93L1My2hVUyJ0vhHF+IR/0rpDHmEneT/cAi+ZlqTcmKomX/nh7R+dkeq?=
 =?Windows-1252?Q?ItuqdwwRIES23bVk/4D4hQQdqBJqQMIrJ/+5bxCmQc1QQRxlnRp55U2l?=
 =?Windows-1252?Q?W3vgI1eG0i+xx8XU2CPBTFi9mLIBRWu6spGamd6g6QORVZAhKSctN8FK?=
 =?Windows-1252?Q?XwCGHm8mTsFqnepiI+jFM7Zk3ZqaepVdKJqmiMe8bviWAuhvsdDUMM+R?=
 =?Windows-1252?Q?AOKVxB6COrUcDaFNmeyIA6gYhFEqWlED1fM70S3W4Ddjlu0wv0w4eopL?=
 =?Windows-1252?Q?Y9E/cRnq7V5kYiS4P9Mb7s0M+IMrkWsv5VolkS1nbZHMTILBumBNB2ms?=
 =?Windows-1252?Q?7XAxr/XgLmIkdm1TCyXcCAJdRr3bsgNL4TFGc7xM6Cs6pafHQc8PxPNv?=
 =?Windows-1252?Q?AklhBLSsvqOXMtBRVma83O0UaR28x8UTxLvW/dTTYr8/bOZ4oN4zgqa/?=
 =?Windows-1252?Q?9I4/Rd8Iu0+xO9fFAuU839ftz538OXL/VZOxyHh83p8gyK49E22qyLA0?=
 =?Windows-1252?Q?nRhCISI8gCHGwJX+n+PXcQbe+YE8ke45bqqHo4HffoxrfrDo9CQwvyLa?=
 =?Windows-1252?Q?LbqSt2OpmSFmNyt3gt3m/HY5GuFGDA2uj+yHDAC72ejlx0XgM3cf3X4W?=
 =?Windows-1252?Q?j55y3TkQV2GKMz0JPw1N+5WdO3mOeHI4nIFTYp6eZONZ4rBQ2jM1okb3?=
 =?Windows-1252?Q?ZO2tDhe5rReQs0A8tx+DubxoS8Geoibpqg+N3gmJj9xSMIuCIhXpQgIZ?=
 =?Windows-1252?Q?P4Qz7MnNYEEL911nz2v4LJKKTChjWBj8GHgQTvOg0LSZHUmZMNcd8NBe?=
 =?Windows-1252?Q?sE9OYu151jlGP2yOUb4oMIz85xm2QlOT1Jt79z0kGZvxXcs2bFhJ0qBy?=
 =?Windows-1252?Q?MMoU1xp7sd2cwKGJDO+EuSjolF3MbjmJz49QAlDUK/4W1i2Eqo5nvzIT?=
 =?Windows-1252?Q?sAwDwlwrLMljrsMK8IkxwfNBiqEoVnPqGuUgtTl1E8UzY4Lw8r+nn7EN?=
 =?Windows-1252?Q?IW/2ZcYE2gryso5SpZNI0Qp01/3V0pksRHBKuT5CzuHwIyR6nyQ9+02H?=
 =?Windows-1252?Q?aoKRiMszTX6eOttt2i1q9lowC0n2O5OiaNPhmrn94doTr0yu?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	sMa03w6kcygEPNG1+ba0uPYw69hCMxI5n9ZF3JzyGa+qnrqn4Q3uWd+CptioQY2verjb0scoWWsV8w3780WTKf5QI3p0bAI5hOHOG/EWGaFQTVAjwwNvkX3xrAP8hEvNPyW/6Smmh5vUCJDntIF24T3ooezw9+GPlKqAR6GIaj4Dw/ngWJk6j/sRHjdzS0KGGDW3UtHE0D+jcylTZM+ueSz3e/ndFKLKJP+h7Te4LDZgQTQtj1vKDrg7v43u2GIF+/SkhjSsEemEBfvTsXHxF6zOr65B029kCz4ciWubCwUg+qdeN0S4Ie+1Gr3iw0usa6RQ1XLZzUa6cZAmx3y+ig==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ee3b0d3-e450-4868-a495-08de7bd2f92c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2026 22:51:58.6701
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR09MB5315
Message-ID-Hash: FG7NJBH26NTYXSAZL2SKMHBF47ORTVLD
X-Message-ID-Hash: FG7NJBH26NTYXSAZL2SKMHBF47ORTVLD
X-MailFrom: prvs=51832ae1a=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 X4_200 image TX underflows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4PSBJJJVXDHT2RSCGW2CNPZLOGLOXCUB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5833521431568933642=="
X-Rspamd-Queue-Id: 9BD4922868F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[SJ0PR09MB9126.namprd09.prod.outlook.com:mid,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Action: no action

--===============5833521431568933642==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126597BD93B0B0244260DF2EC7AASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126597BD93B0B0244260DF2EC7AASJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I am also seeing this warning:
[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radi=
o#0:INPUT_EDGE:0, no neighbour found!
________________________________
From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Friday, March 6, 2026 1:17 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: X440 X4_200 image TX underflows


  *
I am trying to send out 16 channels of 40 Msps data from two X440s.
  *
Getting many underflows (~1/s or more)
  *
As far as I can tell the X440 are synchronized correctly
     *
Set time to 0 on next PPS (external)
     *
Start TX at a future time (5s) using a time_spec in TX metadata
  *
Each TX streamer is in a separate thread
     *
Each thread pinned to a different core
     *
CPU utilization is about 20%
  *
I am NOT reading anything from disk =97 just sending the same buffer over a=
nd over
  *
wmem_max size is 25 MB
  *
MTU is 9000
  *
UHD 4.9.0

What could be wrong?


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126597BD93B0B0244260DF2EC7AASJ0PR09MB9126namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I am also seeing this warning:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radi=
o#0:INPUT_EDGE:0, no neighbour found!</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver &lt;eu=
gene.grayver@aero.org&gt;<br>
<b>Sent:</b> Friday, March 6, 2026 1:17 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> X440 X4_200 image TX underflows</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;u=
norderedStyleType&quot;:1}" style=3D"margin-top:0px; margin-bottom:0px; lis=
t-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">I am trying to send o=
ut 16 channels of 40 Msps data from two X440s.</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Getting many underflo=
ws (~1/s or more)</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">As far as I can tell =
the X440 are synchronized correctly</div>
</li><ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" s=
tyle=3D"margin-top:0px; margin-bottom:0px; list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Set time to 0 on next=
 PPS (external)</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Start TX at a future =
time (5s) using a time_spec in TX metadata</div>
</li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Each TX streamer is i=
n a separate thread</div>
</li><ul data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}" s=
tyle=3D"margin-top:0px; margin-bottom:0px; list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">Each thread pinned to=
 a different core</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation">CPU utilization is about 20%</div>
</li></ul>
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">I am <b>NOT </b>readi=
ng anything from disk =97 just sending the same buffer over and over</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">wmem_max size is 25 M=
B</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">MTU is 9000</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<div role=3D"presentation" class=3D"x_elementToProof">UHD 4.9.0</div>
</li></ul>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
What could be wrong?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" id=3D"x_Signature">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Principal Engineer</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126597BD93B0B0244260DF2EC7AASJ0PR09MB9126namp_--

--===============5833521431568933642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5833521431568933642==--
