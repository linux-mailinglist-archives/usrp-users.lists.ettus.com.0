Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DQIiJWXBQmp9AgoAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2026 21:03:01 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEFF6DE313
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2026 21:03:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=SqDoDPlj;
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b=iYKj5Z8A;
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=wO9PLYWl;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66C4F386829
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2026 15:02:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782759779; bh=5pJl+1McJjmI0Pnfl08A7z6ntXeVFLSNCAcmt3MY6S4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SqDoDPlj6GCmaDhLVVLbNdU+bfrfVPPR8zHXT9av4rHjQQ0jchvXSWgXzTu0L87nN
	 tROk/CBfLoRrHg2UpCVZTtxDPpKmdmAC+DcnJgqStav6N+ty5T9bIAw9vtTPwWrwx6
	 vflSf6eShB/92p4otYLapRKoeYvHs8b00xJqE6TkAMR3Rs2wY+npjaT6eNkM9NFhMy
	 VY8budDl//R8MIjVLJOfYkn7mODxNadi3iDWzTcyFL89v+Jjs2fFxdTXBAXTrtSPKe
	 7jTO5g6LS9Emz2WZbDKoguj8Bf/jjEOY3Ze0lJVSqBPGWQJtQZr6TTZ+nHOMsHkndA
	 mvRZ5J/ZXB1Ng==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 509013857DC
	for <usrp-users@lists.ettus.com>; Mon, 29 Jun 2026 15:02:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1782759735; x=1814295735;
  h=from:to:subject:date:message-id:mime-version;
  bh=cG/n6GjI66nXRGm5+cfgU/UrNrN/ZGUrv3wGnmlirC4=;
  b=iYKj5Z8AaYalU6l4wORHqNoUV3YMjwTn89MeMOEJI0usn5dvPPiWltYh
   Zulv2V+MNmXvPlki0j+qBhjm1Gh5BkN7IF2vxZ+hGbR76fEpbVde4W8E/
   SEaZ68ljb5z6gc/V92prLavNLZfQtr4nBAgYP87/Zo6NkW2GiFZldynDS
   4=;
X-CSE-ConnectionGUID: EOZMBB22TnKCKUqp1nrSLg==
X-CSE-MsgGUID: UI01I4cJQMuCHQ7kRb36KA==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="9524266"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600";
   d="scan'208,217";a="9524266"
X-IPAS-Result: =?us-ascii?q?A2FqAQB5wEJqjhIOXShXA4JZgT1bKUIBRYFshFipO4UCg?=
 =?us-ascii?q?VWBJANXDwEBAQEBAQEBAQcCUQQBAQMEhH8CFo03JzYHDgECBAMCAwEBAQEBA?=
 =?us-ascii?q?QEBDgEBAQUBAQEBAQcEAQICEAEBAQEBATkFDjuGTw2EB4EmAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBHQI1fx0BATgRAQZEAgQvJwQbgnqCHgcECwcDNpxbnD6BMoEBggwBAQYEB?=
 =?us-ascii?q?NsqGGWBaQmBTYN+gXOCThwBBSVJbAECDoQGhTKBVUSBFUKHbEWDFDqCMIIme?=
 =?us-ascii?q?hIbgSM6Mh6BEY0wgUQiAyYzLAFVExcLBwVegQgDgQZuMh2BIz4XNFgbBwWBH?=
 =?us-ascii?q?YFpgQSEfSMfAzl/gTB1WGYVMDWBAxIeCoFSJwMLbT03FBsDBIE1BYtxB1wXD?=
 =?us-ascii?q?4MVLDsbW0qUNINfi2KjQzQHhCAFgVsGDIkJlxYXqmyGQZJHo2oEhSkCBAIEB?=
 =?us-ascii?q?QIQCIFvAoINMxowgypTGQ+OOoEdAQeCRMoyeT8HAgcPApNyAQE?=
IronPort-PHdr: A9a23:0EGbxBBsLqlMgASf5FX+UyQVaxdPi9zP1kY95pkmjudIdaKut9TnM
 VfE7PpgxFnOQc3A6v1ChuaX1sKoWWEJ7Zub9nxXdptKWkwJjMwMlFkmB8iIQUTwMP/taXk8G
 8JPHF9o9n22Kw5bAsH7MlTfuHr06iQdSX3C
IronPort-Data: A9a23:z6KUDK7jwWJpu84l89hYnQxRtCbHchMFZxGqfqrLsTDasY5as4F+v
 mVJUGqHb/aDZmD1e9Eib9u0/UkDu8PRyNNqTlQ+riswEysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC//SEkvU2vbuOlWLWeUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5ABWicxj5geEySFLVsNHfMldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTiuoNCT6pjhENVqpe8AEdDzZYUFgVVvmGSx4fYOGfgvQo3xzI5g5m9hrf0WRayYY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/60bJyMKrRmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOzlrKIw3gP7Kmo7NTxODHrnqtuAr1OVe+sAK
 HYeoXQNhP1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5byAiFzsLaYT26H/7OJtjqgPTBMcjdbPXddHU0C/sXpp5w1glTXVNF/HaWpj9rzXzbt3
 zSNqyt4jLIW5SIW60ml1X3gsReGjMKTcggWzSbqR3r86BlCQIHwMuRE9mPnAeB8wJF1p2RtU
 VABksmaqfsJEI2NnyGLXP8EGKyy7uSBKGSD2Qc3R8BxsTOw53SkYIZcpilkI1tkOdoFfjmvZ
 1LPvQRW59lYO37CgU5Lj2CZVJ9CIUvITI6NuhXogjxmOcYZmOivoHkGWKJo9zqx+HXAaIlmU
 XthTSpTMZrqIf88lmbpLwvs+boqzTo53mTdWdjwyA6/uYejiIquYe5dajOmN7lhhIvd+Vm92
 4gFa6OilU4FOMWgOXa/zGLmBQxQRZTNLcys85QPHgNCSyI6cFwc5wj5muJxK9A9xP4Iz48lP
 BiVAydl9bY2vlWfQS3iV5ypQOqHsUpXxZ7jARERAA==
IronPort-HdrOrdr: A9a23:X4uVZa6j8bsPU3zbSAPXwU+BI+orL9Y04lQ7vn2ZFiY5TiXIra
 qTdaogviMc0AxhPk3I6urwQZVoIEmsg6KdhLN8AV7MZniDhILFFuBfBOjZsnTd8k/Fh4lgPM
 5bGsAQZuEYZmIK7voSlTPIdurIt+P3kpxA692/815dCS16YaBp6Al0Tj2cDlB3Qwd+A584Ho
 q358ZMpTasEE5nJviTNz0gZazuttfLnJXpbVotHBg88jSDijuu9frTDwWY9g12aUIE/Z4StU
 z+1yDp7KSqtP+2jjXG0XXI0phQkNz9jvNeGc23jNQPIDmEsHfkWG0hYczPgNkGmpDg1L8Yqq
 iMn/4UBbU915qeRBD0nfKn4XiZ7N9n0Q6Y9bbfuwqpnSWxfkNGNyJM6LgpCCfx+g4uuspx37
 lM2H/cv51LDQnYlCC4/NTQUQp2/3DE1EbKvNRj/EC3a7FuGoN5vMga5gdYAZ0AFCX15MQuF/
 RvFtjV4LJTfUmBZ37Us2FzyJj0N05DaSuuUwwHoIiYwjJWlHd2ww8Rw9EehG4J8NY4R4Nf7+
 rJP6x0nPVFT9MQb6h6GOAdKPHHflDlUFbJKiafMF7nHKYINzbErIP2+qw84KWwdJkB3PIJ6e
 T8uZNjxB8Pkm7VeLOzNcdwg2zwqU2GLEvQ9v0=
X-Talos-CUID: 9a23:7TrbKGxO7hhtKvCkxPI7BgU5PfIAWFeHlkvWAGSbNH9xEbuPcnufrfY=
X-Talos-MUID: 9a23:cmNBAgsY/j3zQziR2s2nuRA6beY06IaXLV0msaxZuPOObnJTEmLI
Received: from mail-southcentralusazlp17010018.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.18])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 12:02:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b1mLHt9w5M7KjQiVGEFJzv2Dymyp3rcjkP6eCPb3kcpbgugaV//VmPyo2ZwPymyuG0gTMzNPdCyD61/CvVWitXdjZd+NDL2l5mXpmN2LkLpjrbMm+Ybh+2XdPFnLcmthRP27yJEb2xXEMMvAgtbaBmywpz5FIcJBAtaRxMf9j478oelgx+gWcvyYFnWPI/Tux6121lajE4MH8CTPrR5FYUOxoobunSGEsVtNV1pfVgF/Rp7zUlQ2QDT2fV0GppfR1s+9e/il7q7G+OPCOXXsjVB8MqbvC5++IgvNd8x2usAqWBGyTZ1IKZEFBr2NB5u3tuUW53Vaa6FlWCgOlkLcdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cG/n6GjI66nXRGm5+cfgU/UrNrN/ZGUrv3wGnmlirC4=;
 b=R+KUQpHrOArqslE/3mjEJR16IMPi0ulHhOVeuAqanQtpT015zx09al+Pk6vNHrJd9Sc51EgP1YwxAfjpGUnm1us5vEaqBUJsG9YVXRPYoUWhr41KR+s8rCwNoNF9/oiNJhJKPyNZesM2n07mW+9PCgp83pdTo6OVDI8f+Gb6gjRrzGzLa6K4tst4wQ71Z+WviUB2nVBhJK8s7Jcs9PX0lrvINshZU2mrszpfF9Ecs4vB2obXcIWmSEWLLd9iR4O8IuZmGrQS8rCVcr3Qek45Dxmzv9jJFrppF6Nz5mabXhAOu5MZzSYc9h5b16XKAy6jLiZ9BnsAzW9y0JYINtkAHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cG/n6GjI66nXRGm5+cfgU/UrNrN/ZGUrv3wGnmlirC4=;
 b=wO9PLYWlOwTnRFM6vkHC4C5XcGggddF27QLi24AXI0YuPQZ0H101OHDm/E39QNf0LCHVqjT94x1vzThlBdiZbyrx1Q55sDfBBa3ILSxSB3HB+H0BbXVOxx5Uq9w2avzwHEYD86ShHioRNkl2rr67dqhtZnhWekeoQmdUenxiRQs=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by MW4PR09MB9010.namprd09.prod.outlook.com (2603:10b6:303:1fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 19:02:10 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 19:02:10 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Underflows on X440 TX
Thread-Index: AQHdB/c1QzxkLAVUZEyLcGMkftC+ew==
Date: Mon, 29 Jun 2026 19:02:10 +0000
Message-ID: 
 <SJ0PR09MB91269679895FCEA5C6F8A3DCECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|MW4PR09MB9010:EE_
x-ms-office365-filtering-correlation-id: 17321269-6c36-4307-9418-08ded610ec5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|23010399003|366016|41320700013|18002099003|8096899003|38070700021|56012099006;
x-microsoft-antispam-message-info: 
 iYfDQj7PbqoonCrMJldHztcCdbiGZ56hbYUPQ/7PlX+m0htL1nwSkmyCiOdt6zgf/7lPKZRBDWUJgsV3VmhPtmXvFDBZ8cUw4PaBo4wka2egeGnNrmsRJBPhAr6fDGIHhqeLmi/InLgzkCSFFrEler7M5ApQh7qgEYifyhD5qP4lLOozDaDi2CRQSUHjQv//Y6bkUR1X2ELxa3QdyXdYnq67ItknPiHHChQ4dnBSCjqpgdmbc8olGHaCFVYJuWzuPyFP6ReA0cpRhL31D+9X20ZggrW954MbNlxlnjjGal8GY5TJsLXDkAm0ydollBODfYiVfRCsg4LQFYsZ7RATyd1LP2JLK5v2OCtT1gIiWPujanglnZpPVVy3arWr2gNGJ9H2fMGmdH0XluyhOWPgQzqZ8eNI1Sx7PMm89Xuj7Dhki9fGnmufGjGI3WxdMa2ZglOQ9WStZxCLD3EajdvMxSumSL88j3abqlsHgfUp+uNh61OEKxOlGPcJuXiUYzDTO2mgp8gR8EMs+6FGmC+VaeVP/UfY2RbEYYnsdmYIGGwi3dFyslHqHu7k5i/ZRSxxqFcBeQtGV0PlNZpRnRZyPMd3oRmv3V59IxHoLxDLRA0+VXS8M+SKezHsudqceSMgb0cZz989JKyH22d1+l4lv7R275XtjuTFlYdwRmCHHB74r9yVAMHu3G/+uLauFkbZP/V7WO25CjIZnbp5Opn4Icw/gYAaP4ulqgPoSbvUvWM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(366016)(41320700013)(18002099003)(8096899003)(38070700021)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TGp4MUFLRklHRzFkeHY3OHI4MU5qd3ZxSldNaEhSRldzWFZHUEhQb1FTQzNs?=
 =?utf-8?B?ZEVjUjd3T3RLMnkzT01NS09sWnpseDJrYkZBRmZucy9XcDM4SFJYcDVYK2Rt?=
 =?utf-8?B?SXQ0Z2lEeGFDUE82RzZrYXpBeldnT1YzMEtuV3ArajZoVnBVTkljMWduT0Fs?=
 =?utf-8?B?MnA3N1hUWFZlUXR1QUNONFZhNFk1alhGSmxKSjhFRkpsbjNRQkpsem1FR1N6?=
 =?utf-8?B?dXdNVnpOOVh5S2RyVEFSM1M5Q29aMlFma09ISS9pWjFJUUJXTWlDeS9iOG1u?=
 =?utf-8?B?cTBGcFBGd1dCODJOU1ZadFR6aDMzTlYxTGIreXZGYVJ5ZC9xWnlPQ1lTMUhQ?=
 =?utf-8?B?OTBzY1QzYXNKaENGUnVIcHIzQ21NdTVIZ2lRVDJsdlZuSHFCTnVUUDZWWmhJ?=
 =?utf-8?B?aGFsR1VNUWtWZm9vNWtGV256N21lNDMwWjFWVTQ2NTlSMldDM0UzQ2JJM0Jq?=
 =?utf-8?B?Z1VBeFdMNTk4NjF3bGZSaDlKOXdIL2xWMXMrcEMzTGVBVEE2TVl4c2V1KzBQ?=
 =?utf-8?B?eEZyeUxHQ29HT3RzRWN0RUxzS2l0NFFaV2ZwbzlGWjJQWWoxb1VIcmkybERR?=
 =?utf-8?B?M055WlBwY0M0UVFGc3V0SVA1c3libVhsSE9IV2lIZzlneS9GRUcxeUNOS0Jk?=
 =?utf-8?B?Z2RwYjdWM2NkVzRpRHhVM083amk3N2FJNWlkY1U2RWs4VmpXaGcwZVRKSVh5?=
 =?utf-8?B?Y1pPT1ZCdDBNaVZQMGRmSWNBbENUbTN2ZzgvOVJZYXozSU0wYlZYV1p0cTAw?=
 =?utf-8?B?MnpFODl4bnQxMEk3bWtRQnNwbjVtTEhRM0pWMWRqczFwaUNnOXpxNGhJSStZ?=
 =?utf-8?B?dDQ1WnA5SWVZaUVZQktWMTVXSWdiUk90VVR5WUFPakxpUEpaS3RLQ3Bia1cz?=
 =?utf-8?B?UjNlRFpIaHZLYnBiZXU5YWVuUFdNbXUzSnRlUCtwb2RYWHFWb0Jicm92Z1Y4?=
 =?utf-8?B?Y2Vrc3hzMkxkYk9yTU5VR29jWkljanpmM1Nic29mZW5GS2pYWmpDN0VSbVIw?=
 =?utf-8?B?Z1lZWGlTSkZxZWI0SWNxc2JuL0Nlb05jOUl5Nm1mWVlFMWRLMHN5V2RFRzJN?=
 =?utf-8?B?Vm9ZT3dnY1liMkR4SkRsV0J3M3RHV1JiV25Edm1MSUViZ3RCTCtjV1NoS2pu?=
 =?utf-8?B?WFMxVkRZVkc2YmlMelhNcStJR2RYM1dZWWEvRDBWNTRzTXh5OERxc3lETmtU?=
 =?utf-8?B?ZVAvNTQrdXM5dVdCeDc2VGhteTlhNjNYVG9vRkFvVUY4WG91NS8wOUl2bldG?=
 =?utf-8?B?bkR1Vm9YaUVIK2trOEExdHNZbE00ak85am5IUHFkVENMZ01ZRnQxdDgzWFBx?=
 =?utf-8?B?b01TZWZXUHNFaE5sTGgwY0NoRE1uQmp4NDlXNlp4SFEvYTJYZkJJenllbmNa?=
 =?utf-8?B?d2M0ZXF1VlRmWXNXdVJhc0pLci9DOEt0RDEwTEJCdWJ5RUNlZEZZR0RPWC8r?=
 =?utf-8?B?RThEcElhOGFVUHN2MXR6K0NNSzBULytQdS9qMTgxbGlNRnlVdTJ3M3RrUzVw?=
 =?utf-8?B?NEIzQ3RkN0Y1eEJjbjFJMUJ3K2RhbFJKQmkyNzVQbElwUjh0V1hRL2pUUG9l?=
 =?utf-8?B?enZ4NEQ4UUhFZ20rNFQrMCtHOWIzMGM4dERsUXovQVNlNmZPOUdoUGNsNG5L?=
 =?utf-8?B?Z212OEVoZE5LU2ZYSXNwUG85aXpqb01vcHhDN0lyRDdEYXJNbkdtbVpOZFgy?=
 =?utf-8?B?cVo1eXMyQlNGKyttbmVYRWxOUDZBM1pjallIM1psZmxDUk5vZ3BJRWhZUzlY?=
 =?utf-8?B?cUNDLytLdnptQ0toNWMrNDFqN2JKalo4YnMyWG55bjBoVXBSeGhQRWhoYXQ5?=
 =?utf-8?B?azFVQjZVQmJWVkZOYmFiOThTbFFPdEI2TlVicjFJK1JtOTBoMEc2b2l2aEVq?=
 =?utf-8?B?SUJUTWVyRlFZLzNGNVkzL0VRTmRRTTFISVlTckFzYVJEN0NSQ0FmM1crdDBW?=
 =?utf-8?B?cUdWZEF6bFdjOTkrMzZIQy9UVEZuL1lhN2RQUkt3eHk2UFoxaGFJZGNmMTd1?=
 =?utf-8?B?ZHRMOEFSWkh4YUZZTEU3c2RxTWk0RHF1TnBKbmxPcngwM2h1anBKTktWeFZS?=
 =?utf-8?B?dkc4SkZPaTBtTVB6OFp5S0VJMEtuU0tYTlNrZWZQZDVBK0FheU9GOVBwSHQ0?=
 =?utf-8?B?ZnMyZUI2Rk50cm5JUGhzbjlvVGhKUXpPM05lc2swYzFLdkVEOVdFQXY3RUIx?=
 =?utf-8?B?eFVQWmdHQW1hcUR3M1hhY0FQb29rdjFnRXI4YmpFZSs3ZWNqdk1pclNIWFFB?=
 =?utf-8?B?K2RxM0loTHQ3MFBWNXdUTTBCVFEvOVFEOHVCVWJGSkEwMkUwYXdZZTY1WjRj?=
 =?utf-8?Q?S0+yyxYCP5/zI3z0Ij?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	i8Kum3ikDSeMy2+ZpcnZXScQzIEIt+VE8PsivOmxfz/PEzaFlEAQaMtQWryRqreL5xm2BE1NjE+cfT9KgdZz7nMvUzkzV6U/DBufzMejWcPIDxUgcc56KNsWP6nBQGTuEtwWVALBTNPf6lbR5FJP2cFlUUMpURMzpCMyL57/p6h+zM2fM+xhPEDXak80FDvjHEjgu4tJWeUz0oUhJbvIIEH3BCc6jFkyUJLsfo16oJm3ZwNSXrOdo64Z0n6XEbrvff1unYj7Ml/OtQWrqwnaicgT5SSzakxgmr8KgTbXTQ82h+YV4KOnRQTKOvy1+E3q/6GXN4x0Uc542k0ip9NlhQ==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17321269-6c36-4307-9418-08ded610ec5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2026 19:02:10.6678
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR09MB9010
Message-ID-Hash: WKVGKV5OLVNNTIITAWQFA5AZJ3TJXBDL
X-Message-ID-Hash: WKVGKV5OLVNNTIITAWQFA5AZJ3TJXBDL
X-MailFrom: prvs=63344e7c2=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Underflows on X440 TX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OLA6GCT5YWBHN2JKEAW2KWPCXD7ZM27/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0430441295872822074=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,emwd.com:dkim,aero.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BEFF6DE313

--===============0430441295872822074==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91269679895FCEA5C6F8A3DCECE82SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91269679895FCEA5C6F8A3DCECE82SJ0PR09MB9126namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgYW0gcmV0dXJuaW5nIHRvIHRoZSBwcm9ibGVtIHJlcG9ydGVkIGEgZmV3IG1v
bnRocyBhZ286DQoNCkkgaGF2ZSB0d28gWDQ0MHMgd2l0aCBYXzIwMCBpbWFnZSBjb25uZWN0ZWQg
dG8gYSBUaHJlYWRyaXBwZXIgMjQgY29yZS4gIEkgYW0gdXNpbmcgdHdvIDEwIEdiRSBkaXJlY3Qg
Y29ubmVjdCBjYWJsZXMgZm9yIGVhY2ggVVNSUCAodG90YWwgb2YgNHggMTAgR2JFKS4NCg0KSSB3
YXMgYWJsZSB0byBnZXQgUlggd29ya2luZywgYnV0IFRYIGlzIGdldHRpbmcgY29udGludW91cyB1
bmRlcmZsb3dzLg0KDQoNCiAgKg0KVXNpbmcgdGhlIGJlbmNoYXJrX3JhdGUgZXhhbXBsZS4NCiAg
Kg0KVW5kZXJmbG93cyBvYnNlcnZlZCBib3RoIHcvIERQREsgYW5kIHcvb3V0IERQREsNCiAgKg0K
VW5kZXJmbG93cyBvYnNlcnZlZCB3aXRoIDQsIDggY2hhbm5lbHMgYW5kIDE2IGNoYW5uZWxzDQog
ICAgICoNCkZld2VyIHVuZGVyZmxvd3Mgd2l0aCA0IGNoYW5uZWxzLCBidXQgc3RpbGwgZ2V0IGEg
ZmV3IHBlciBtaW51dGUNCiAgKg0KUHJpb3JpdHkgaGlnaC9ub3JtYWwgZG9lcyBub3QgbWFrZSBh
IGRpZmZlcmVuY2UgKHVzdWFsbHkpDQoNCklNUE9SVEFOVDogSWYgSSB1c2Ugb25seSBvbmUgaW50
ZXJmYWNlICgg4oCUYXJncz1hZGRyPTE5Mi4xNjguMTAuMixtZ210X2FkZHI9MTkyLjE2OC4xLjEw
KSB0aGVyZSBhcmUgbm8gdW5kZXJmbG93cyB3aXRoIHVwIHRvIDcgY2hhbm5lbHMgKG1heCB0byBm
aXQgaW4gMTAgR2JFKS4NCg0KLi9iZW5jaG1hcmtfcmF0ZSAtLWFyZ3M9YWRkcjA9MTkyLjE2OC4x
MC4yLHNlY29uZF9hZGRyMD0xOTIuMTY4LjExLjIsbWdtdF9hZGRyMD0xOTIuMTY4LjEuMTAsYWRk
cjE9MTkyLjE2OC4xNS4yLHNlY29uZF9hZGRyMT0xOTIuMTY4LjE2LjIsbWdtdF9hZGRyMT0xOTIu
MTY4LjEuMjAsY2xvY2tfc291cmNlPWV4dGVybmFsLHVzZV9kcGRrPTEsdHlwZT14NHh4LHByb2R1
Y3Q9eDQ0MCAtLXR4X2NoYW5uZWxzIDAsMSwyLDMsNCw1LDYsNyAtLXR4X3JhdGUgNDAuOTZlNiAt
LXR4X2NwdSBzYzE2IC0tbXVsdGlfc3RyZWFtZXIgLS1kdXJhdGlvbiAxMjANCg0KVGhpcyBzaG91
bGQgYmUgdHJpdmlhbCBmb3Igc3VjaCBhIHBvd2VyZnVsIG1hY2hpbmUhDQoNCkkgYW0gc3VzcGVj
dGluZyBhbiBpc3N1ZSB3aXRoIGhhbmRsaW5nIG9mIHBhY2tldHMgYWNyb3NzIG11bHRpcGxlIG5l
dHdvcmsgaW50ZXJmYWNlcy4gIEFyZSB0aGUgVFggZmxvdyBjb250cm9sIHBhY2tldHMgbm90IGdl
dHRpbmcgdG8gdGhlIHJpZ2h0IHBsYWNlPw0KDQpUaGlzIGlzIGEgY3JpdGljYWwgZmFpbHVyZSDi
gJQgbm90IHNvbWV0aGluZyBJIGV4cGVjdCBmb3IgYSAkMzVrIGJveCDwn5mCDQoNCg0KDQpFdWdl
bmUgR3JheXZlciwgUGguRC4NClByaW5jaXBhbCBFbmdpbmVlcg0KMzEwLTMzNi0xMjc0DQo=

--_000_SJ0PR09MB91269679895FCEA5C6F8A3DCECE82SJ0PR09MB9126namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpIZWxsbyw8L2Rpdj4NCjxkaXYgY2xhc3M9ImVs
ZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZv
bnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsg
Zm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rpdj4NCjxk
aXYgY2xhc3M9ImVsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRv
c19FbWJlZGRlZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwg
c2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpJIGFt
IHJldHVybmluZyB0byB0aGUgcHJvYmxlbSByZXBvcnRlZCBhIGZldyBtb250aHMgYWdvOjwvZGl2
Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250LWZhbWlseTogQXB0b3Ms
IEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwgQ2FsaWJyaSwgSGVsdmV0
aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4N
Cjxicj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250LWZh
bWlseTogQXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwgQ2Fs
aWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2Io
MCwgMCwgMCk7Ij4NCkkgaGF2ZSB0d28gWDQ0MHMgd2l0aCBYXzIwMCBpbWFnZSBjb25uZWN0ZWQg
dG8gYSBUaHJlYWRyaXBwZXIgMjQgY29yZS4mbmJzcDsgSSBhbSB1c2luZyB0d28gMTAgR2JFIGRp
cmVjdCBjb25uZWN0IGNhYmxlcyBmb3IgZWFjaCBVU1JQICh0b3RhbCBvZiA0eCAxMCBHYkUpLjwv
ZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250LWZhbWlseTogQXB0
b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwgQ2FsaWJyaSwgSGVs
dmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7
Ij4NCjxicj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250
LWZhbWlseTogQXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwg
Q2FsaWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiBy
Z2IoMCwgMCwgMCk7Ij4NCkkgd2FzIGFibGUgdG8gZ2V0IFJYIHdvcmtpbmcsIGJ1dCBUWCBpcyBn
ZXR0aW5nIGNvbnRpbnVvdXMgdW5kZXJmbG93cy48L2Rpdj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRU
b1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFw
dG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1z
aXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rpdj4NCjx1bCBkYXRh
LWVkaXRpbmctaW5mbz0ieyZxdW90O2FwcGx5TGlzdFN0eWxlRnJvbUxldmVsJnF1b3Q7OmZhbHNl
LCZxdW90O3Vub3JkZXJlZFN0eWxlVHlwZSZxdW90OzoxfSIgc3R5bGU9Im1hcmdpbi10b3A6IDBw
eDsgbWFyZ2luLWJvdHRvbTogMHB4OyBsaXN0LXN0eWxlLXR5cGU6IGRpc2M7Ij4NCjxsaSBzdHls
ZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01TRm9udFNl
cnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBj
b2xvcjogcmdiKDAsIDAsIDApOyBtYXJnaW4tdG9wOiAwcHg7IG1hcmdpbi1ib3R0b206IDBweDsi
Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHJvbGU9InByZXNlbnRhdGlvbiI+VXNpbmcg
dGhlIGJlbmNoYXJrX3JhdGUgZXhhbXBsZS4mbmJzcDsmbmJzcDs8L2Rpdj4NCjwvbGk+PGxpIHN0
eWxlPSJmb250LWZhbWlseTogQXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250
U2VydmljZSwgQ2FsaWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7
IGNvbG9yOiByZ2IoMCwgMCwgMCk7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4
OyI+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgcm9sZT0icHJlc2VudGF0aW9uIj5VbmRl
cmZsb3dzIG9ic2VydmVkIGJvdGggdy8gRFBESyBhbmQgdy9vdXQgRFBESzwvZGl2Pg0KPC9saT48
bGkgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19N
U0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTog
MTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsgbWFyZ2luLXRvcDogMHB4OyBtYXJnaW4tYm90dG9t
OiAwcHg7Ij4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29mIiByb2xlPSJwcmVzZW50YXRpb24i
PlVuZGVyZmxvd3Mgb2JzZXJ2ZWQgd2l0aCA0LCA4IGNoYW5uZWxzIGFuZCAxNiBjaGFubmVsczwv
ZGl2Pg0KPC9saT48dWwgZGF0YS1lZGl0aW5nLWluZm89InsmcXVvdDthcHBseUxpc3RTdHlsZUZy
b21MZXZlbCZxdW90Ozp0cnVlfSIgc3R5bGU9Im1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRv
bTogMHB4OyBsaXN0LXN0eWxlLXR5cGU6IGNpcmNsZTsiPg0KPGxpIHN0eWxlPSJmb250LWZhbWls
eTogQXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0b3NfTVNGb250U2VydmljZSwgQ2FsaWJy
aSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwg
MCwgMCk7IG1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRvbTogMHB4OyI+DQo8ZGl2IGNsYXNz
PSJlbGVtZW50VG9Qcm9vZiIgcm9sZT0icHJlc2VudGF0aW9uIj5GZXdlciB1bmRlcmZsb3dzIHdp
dGggNCBjaGFubmVscywgYnV0IHN0aWxsIGdldCBhIGZldyBwZXIgbWludXRlPC9kaXY+DQo8L2xp
PjwvdWw+DQo8bGkgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250
LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsgbWFyZ2luLXRvcDogMHB4OyBtYXJn
aW4tYm90dG9tOiAwcHg7Ij4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29mIiByb2xlPSJwcmVz
ZW50YXRpb24iPlByaW9yaXR5IGhpZ2gvbm9ybWFsIGRvZXMgbm90IG1ha2UgYSBkaWZmZXJlbmNl
ICh1c3VhbGx5KTwvZGl2Pg0KPC9saT48L3VsPg0KPGRpdiBzdHlsZT0ibWFyZ2luLXRvcDogMHB4
OyBtYXJnaW4tYm90dG9tOiAwcHg7IGZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRG
b250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7
IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8
ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9Im1hcmdpbi10b3A6IDBweDsgbWFyZ2lu
LWJvdHRvbTogMHB4OyBmb250LWZhbWlseTogQXB0b3MsIEFwdG9zX0VtYmVkZGVkRm9udCwgQXB0
b3NfTVNGb250U2VydmljZSwgQ2FsaWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNp
emU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4NCklNUE9SVEFOVDogSWYgSSB1c2Ugb25s
eSBvbmUgaW50ZXJmYWNlICgg4oCUYXJncz1hZGRyPTE5Mi4xNjguMTAuMixtZ210X2FkZHI9MTky
LjE2OC4xLjEwKSB0aGVyZSBhcmUgbm8gdW5kZXJmbG93cyB3aXRoIHVwIHRvIDcgY2hhbm5lbHMg
KG1heCB0byBmaXQgaW4gMTAgR2JFKS48L2Rpdj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9ImVs
ZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZv
bnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsg
Zm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQouL2JlbmNobWFya19yYXRl
IC0tYXJncz1hZGRyMD0xOTIuMTY4LjEwLjIsc2Vjb25kX2FkZHIwPTE5Mi4xNjguMTEuMixtZ210
X2FkZHIwPTE5Mi4xNjguMS4xMCxhZGRyMT0xOTIuMTY4LjE1LjIsc2Vjb25kX2FkZHIxPTE5Mi4x
NjguMTYuMixtZ210X2FkZHIxPTE5Mi4xNjguMS4yMCxjbG9ja19zb3VyY2U9ZXh0ZXJuYWwsdXNl
X2RwZGs9MSx0eXBlPXg0eHgscHJvZHVjdD14NDQwIC0tdHhfY2hhbm5lbHMgMCwxLDIsMyw0LDUs
Niw3IC0tdHhfcmF0ZQ0KIDQwLjk2ZTYgLS10eF9jcHUgc2MxNiAtLW11bHRpX3N0cmVhbWVyIC0t
ZHVyYXRpb24gMTIwPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZv
bnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNl
LCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6
IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9v
ZiIgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19N
U0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTog
MTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KVGhpcyBzaG91bGQgYmUgdHJpdmlhbCBmb3Ig
c3VjaCBhIHBvd2VyZnVsIG1hY2hpbmUhPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9v
ZiIgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19N
U0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTog
MTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJl
bGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRG
b250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7
IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KSSBhbSBzdXNwZWN0aW5n
IGFuIGlzc3VlIHdpdGggaGFuZGxpbmcgb2YgcGFja2V0cyBhY3Jvc3MgbXVsdGlwbGUgbmV0d29y
ayBpbnRlcmZhY2VzLiZuYnNwOyBBcmUgdGhlIFRYIGZsb3cgY29udHJvbCBwYWNrZXRzIG5vdCBn
ZXR0aW5nIHRvIHRoZSByaWdodCBwbGFjZT88L2Rpdj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1By
b29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9z
X01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXpl
OiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9
ImVsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRl
ZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJp
ZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpUaGlzIGlzIGEgY3Jp
dGljYWwgZmFpbHVyZSDigJQgbm90IHNvbWV0aGluZyBJIGV4cGVjdCBmb3IgYSAkMzVrIGJveCDw
n5mCPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZvbnQtZmFtaWx5
OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJp
LCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAw
LCAwKTsiPg0KPGJyPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGlkPSJTaWduYXR1cmUiIGNsYXNzPSJl
bGVtZW50VG9Qcm9vZiI+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZvbnQt
ZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBD
YWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJn
YigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIg
c3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0Zv
bnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJw
dDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KRXVnZW5lIEdyYXl2ZXIsIFBoLkQuPC9kaXY+DQo8
ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0
b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2Es
IHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KUHJp
bmNpcGFsIEVuZ2luZWVyPC9kaXY+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9
ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2
aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29s
b3I6IHJnYigwLCAwLCAwKTsiPg0KMzEwLTMzNi0xMjc0PC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4N
CjwvaHRtbD4NCg==

--_000_SJ0PR09MB91269679895FCEA5C6F8A3DCECE82SJ0PR09MB9126namp_--

--===============0430441295872822074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0430441295872822074==--
