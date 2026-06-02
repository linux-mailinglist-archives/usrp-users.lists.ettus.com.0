Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IpMLAv1qH2oolwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 01:45:01 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C432632F8E
	for <lists+usrp-users@lfdr.de>; Wed, 03 Jun 2026 01:45:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=djFcU6VA;
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b="OgW/zxd/";
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=oiN9y8zW;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCE9E386C66
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jun 2026 19:44:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1780443898; bh=9sx3/byph2C9JtaByeyTl295jDX1lb28j8iwtsTEg3w=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=djFcU6VAU/ZOkXWu0QiIQ9Jh421LGEcoWPsAqmWLrnNc/WqgdijwQX1H5JBPE0ysU
	 0yw0KiPRiteXR+Bv2pnVXcB9n1F1LW5hloEidD+mAMsLt/4FdldqhWLzRIqrUW6w4q
	 EYiPmmVnjc0NXwko4W74G9RPBwxdfwBMRejuNWDAXAfb4Nu9+yTPDIn9CYQBY88io4
	 kSfAxXXrw2XNtNaVU42K7Mfdk04SP192W04aGzq8+ROpaiV/pTMfdlhib0tY2VTwGV
	 xiaIr9amch2jYOm6+uXiXcWb9/3742n0JRlFKFck5EVeZIyJZrb/Ew1L3rV1dlZgOl
	 ltjdEGcHlCsLw==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C161386C4E
	for <usrp-users@lists.ettus.com>; Tue,  2 Jun 2026 19:44:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1780443877; x=1811979877;
  h=from:to:subject:date:message-id:mime-version;
  bh=wUb0v4PV9YWoZPLADZ2VbhjHtC2n0IwGqw+MiWMq5lM=;
  b=OgW/zxd/yLkkMFXXFYitTlQalNXYZ1QBW+yQqkAU+tmfls+1Ji+LFt4X
   TsPG4VTdkJ0rBisRDeo85VCtSInsfX2oJFJ3z4OwBrJInPYLuaJW+y847
   E0l2NFydW12QsDyVbG4FrlZAuilFt4F7o7EFbxpdS9Tz5JkcpDZRahbnk
   Y=;
X-CSE-ConnectionGUID: H47GcmUfQF2Q02sWzsP3/w==
X-CSE-MsgGUID: QJKIGduQTk68xqdoqa+Lqw==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="9334562"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600";
   d="scan'208,217";a="9334562"
X-IPAS-Result: =?us-ascii?q?A2FtAQCPah9qjh0UXShXAx4BPAwCC4FlgT2BBEIBQwKBa?=
 =?us-ascii?q?pZMl0eFAoFVgSQDGD8PAQEBAQEBAQEBBwI9FAQBAQMBA4ILgnQCjTQnNgcOA?=
 =?us-ascii?q?QIEAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHZ?=
 =?us-ascii?q?Qk2AgEBAQEBAQEBAQEBAR0CNQwqAWUBASYFDREBfycEGwGCeQGCHQcECwcDN?=
 =?us-ascii?q?hSyARqBL4E0gQGCDAEBBgQE2ykYZIFnCYFNgxBugXOCTBwBBSVJbAGJETaBV?=
 =?us-ascii?q?USBV4drKxqDToIvgiZ6EhuBJoMDgz2IJIFEIgMmMywBVRMXCwcFXoEIA4EGb?=
 =?us-ascii?q?jIdgSM+FzNYGwcFgUqCP4EEhRUjHwM5gReBf4EraWkVPgMLbT03FBsDBIE1B?=
 =?us-ascii?q?YsnB1YXD4JMgSMBgR00aT2TAo9Bjl+UYzQHhB+BYAYMiQmBJpVwF4QEjRSZU?=
 =?us-ascii?q?5kGjgmVX4UtAgQCBAUCEAiBbwmCBjMaMIMqCUoZD446g2mFE8NDeT0CBwIHD?=
 =?us-ascii?q?gMLk2cBAQ?=
IronPort-PHdr: A9a23:7q8XEBJGnVFKiM41AtmcuWIyDhhOgF28FgIW659yjbVIf+zj+pn5J
 0XQ6L1ri0OBRoTU7f9Iyo+0+6DtUGAN+9CN5XYFdpEfWxoMk85DmQsmDYaMAlH6K/i/aSs8E
 YxCWVZp8mv9P1JSHZP3akfV5Hqo4m16Jw==
IronPort-Data: A9a23:1jsJV64RjU1JONIMMQ9jSgxRtCbHchMFZxGqfqrLsTDasY5as4F+v
 mtKXmDVOK2LYTb8fd9xbYuxpxlTvpbcnIJnGwY5/i1gEysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC//SEkvU2vbuOlWLaZUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5ABWicxj5geEySFLVMhHf8ldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTij272Zy7eGRNBC3P17dtLULpgn4TZ/mGSx4fYOGfgvQo3hxYZg5m9hrf0WRa+YY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/63aJyPK7RmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPOzjraI33gf7Kmo7MT81dHS3vMCFiRDuS8tTL
 FUduQ43sv1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5bvAiZzsLaYT26H/7OJtjqgPTBMcjdbPHdeHE0C/sXpp5w1glTXVNF/HaWpj9rzXzbt3
 zSNqyt4jLIW5SIW60ml1XCb3B2no6XHdyBv312NRV239TsiI5HwMuRE9mPnAeB8wJF1p2RtU
 VABksmaqeYJF42NnyGLXP8EGKyy7uSBKGSD2Qc2R8NwsTOw53SkYIZcpilkI1tkOdoFfjmvZ
 1LPvQRW59lYO37CgU5Lj2CZVJ1CIUvITI6NuhXogjxmOckZmOivoHgGWKJo9zqx+HXAaIlmU
 XthTSpTMZrqIf88lmbpLwvs+boqzTo53mTdWdjwyA6/uYejiIquYe5dajOmN7lhhIvd+Vm92
 4gFa6OilU4FOMWgOXa/zGLmBQxQRZTNLcys85QPHgNCSyI6cFwc5wj5m+59I9A9z/sKy48lP
 BiVAydl9bY2vlWfQS3iV5ypQOqHsUpXxZ7jARERAA==
IronPort-HdrOrdr: A9a23:WVzrU6MuSmVXQ8BcTrSjsMiBIKoaSvp037BF7SpMoHBuH/Bw6f
 rBoB1z73ad4wr5M0tOpTnvAsW9fU8=
X-Talos-CUID: 9a23:0kYiHW68vqpFUU9bOtss1BJLNcsgT3Pk4i3pexWjNnRycObSVgrF
X-Talos-MUID: 9a23:4X/OiguAUJjjXooXxs2nvRNBFehk/p2SCx5dgYwKvNCNdghpJGLI
Received: from mail-northcentralusazlp17011029.outbound.protection.outlook.com (HELO CH1PR09CU001.outbound.protection.outlook.com) ([40.93.20.29])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:44:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d1mvVCOUFXKUr5cI5GkBj8o9w4ONyyok2mjnhpBXjrO1nbLk/giUdDQr/62t5SKqtwMffL8uFoiPRnk/GBZ+d6dAwjxcNuWXtXpvVUZc1Uj0B40EXv5K/hZV21e557iY8BWiIq4S36OpLgUqRhmbcv3dCX7SCM6iEqsqSX5x0zNfZc/K4MJkc7rDs396lJtfbB69PDnCnBEEvKYwq8OuLgDi36LI1DBM0j6eOtQ6lHeH4v0/qpBxhHoulpGz3Z+HmErK90ht+2s4sxhH1PwlrsWsGdYBuch3ZKvs5uNdxFOkaanX9Hqt2w4f6BpqD+eHfjr2e1egPyYAAzsGaFeJsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uCRE/1xgz27e18dSFGgLo7AnI/9/Fcio4Tzz1WIzifI=;
 b=fm32fkcnpma3RuEy6CXLmehudFCTE1yYVF2aXB2f0bDBjuWpdGdsVb3JSPZQ5AuCj7zST6VaqkrGwKg8eknCns9GCW2LLTcHs50FtFd60XfK6oj0MXYxak59L+9+0FDFDRo1DaPnQAfTKotNw/d9/l8Hm1Kjon93qjw3zc+N97ulkpwg+BGVdV4LkYSz97w13lzSpYlfi92nheP/vR1qWhA76klF8MAi7T8ODuH8mEKiZfPabLE0/Hr7yLHeVs6IaptXh2DNfgztJ9ggV6ajwxwb698pNSfYCH3gfcik0sTIKOXKWBAB1HVsQiIn7kBay63SVeeRryhaG96o7NaHiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uCRE/1xgz27e18dSFGgLo7AnI/9/Fcio4Tzz1WIzifI=;
 b=oiN9y8zWvXqE8AYcb/kpPJl8SUMiHyNdWa+AhejFsRnFRORAjhPpsSK47jkReD3OMwlDZfvHD2VgzEQhlMoyeyUtuH+/EZ+49upyRPztfVhirFCHNnptitTcV6cFD1An5L5sd/2ZXPCiajzVrRSCaTMr8lZtklTE7APuhbbApV4=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA9PR09MB5310.namprd09.prod.outlook.com (2603:10b6:806:47::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 23:44:34 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 23:44:34 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: IEEE Aerospace Conference
Thread-Index: AQHc8unDp10ouJDAWU6Hlc7yjtnqCw==
Date: Tue, 2 Jun 2026 23:44:33 +0000
Message-ID: 
 <SJ0PR09MB912645208452420A853479B3EC122@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA9PR09MB5310:EE_
x-ms-office365-filtering-correlation-id: b248b363-4595-4f20-d8eb-08dec100e62f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|38070700021|8096899003|13003099007|56012099006|18002099003;
x-microsoft-antispam-message-info: 
 pnGuuJpyoG4lSdkVpGOrP9bVR8Q123Yav+uGBDv1dFOGKJnKPFM2w343GS/uZA9iPT6jTLj2vqomakJvpVROup1qYBdDHYBXt+B8CNB8CD1P+fEAezonX+nwtB8UTwY2yZ+mdQu6PSh0llFTsJGDBvhsXOO3XPK8VO46K+veYYtdlGqvKRc/ZmtX27jQl9vbfJU7/RY+sOPwTIkpstcrCA1AcWWH7Rk3AEQuIyUNCf5uXS15jyLdBjvknmtVuS6FyU2ilXMEiLRF1XAV2jfHO6jISLsBoVZhPSxm1R6+aKCVQX0mAQCropM0p6HCgO49p0RDXMk/iCoitKG3IlQtssHctRevY70UiDJ3rRhbZbdXijmJUUWJPIz+BhvJZYEWygcSuevK9lLDr++clN39fi19uf0utXXArFVzY6aM6h0IHAN+70FdfwQQYCpBSaPnJDJ4GAPMqHGI+m5S5XQ665HsMOyTyGqUCPIVG/9tvBbKQDeyK54b5uut9MRXgkWKNwlx0WY8rXUrEx+9pSHC9u0VCrqw2m+G5pFuWEp6L7hJOJjkH8N+ZymjCBq0GmY+Xdl+lXnakI73ho9suGbQ1mDaTSNljbqzwOWWv+Oe2Wu2n8PsHNNmb0MlGv5JFbMejFTAUz6WybxktwtMufJdC0KePgrLrZdzsPX3lzp/jLeuPKmYldVHPGiZDJ5m70pP
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(38070700021)(8096899003)(13003099007)(56012099006)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?a3z0F2nK9Dzn4oxMeoIKQDyIocEDXYLXDogIu/LXV4mcYlilbl578zMx?=
 =?Windows-1252?Q?mAs0UVBkq7Hd2lSCSSjE9e/EFjLRVDqnl1mZF/GmSKa/UmEqQ9dT7RYC?=
 =?Windows-1252?Q?GkbnNHvFPbxtu7eXsNiid0Q2cXvkTvUcXDboD0oejjy34IGmShOXqHbL?=
 =?Windows-1252?Q?O1cdh9wTODPnOTeQ4mgNKv4LY3f6PbZBDnfsJjBlPpB46JdiwnFVyAmX?=
 =?Windows-1252?Q?6ZMIFcAB7dYW4LIEmo7l8mW9Fjjh9kbfPj39Rr07XOhD56R+Mf30qJnV?=
 =?Windows-1252?Q?Yos2FwQH/EclsuLmdifnZFjUgM+CuMQUy5qobYbdIC8EYCHNaDwhpSME?=
 =?Windows-1252?Q?eQkNmg3FVqxEhg76TE3BtDS37/+suYdwR/GsfE7jWiVc0rlbtAoLo9eg?=
 =?Windows-1252?Q?Tfxz4Wu8doPM6r/4pR2XF8IuU2D65shaK4WM/uLs/L9Hgw3QTFhkbBA/?=
 =?Windows-1252?Q?hfKG2G3/n/pYwkY0hblJEXlJVsYWUVS5iUsD0/dabioqdH8u02D/OZLs?=
 =?Windows-1252?Q?0a6fL1L5Oa6lTjdBxuuHh2Pcj2hDtsxtLUsRiOBJWEksq+lntnMNF9WO?=
 =?Windows-1252?Q?4C/2YA+P1j2vm7NkVE88HDD2Re8PIIt9h8pT7MFnGKmiLtg1wcw3fVCZ?=
 =?Windows-1252?Q?oxam5o5Kp3Tk3DTsjKx7+hn3B4yRhumMMoHwkYu/DS6ZKsez8MbvcguT?=
 =?Windows-1252?Q?ccTjP0DcH9GWywr6CdAA9RMY3RBthIn69Li1ZScZoRdmOv8VIIF9VrOg?=
 =?Windows-1252?Q?huoy7ttIohZnNPt/6+5Fr0Nf2VkAcHlyMfB90oNfKh69XKA33AoHYEQ/?=
 =?Windows-1252?Q?1KX+qWYnqiq8v+ueQRtoO5PWcKvIqrVEIFSGhQWhxC2sB7LVuw8jMvq3?=
 =?Windows-1252?Q?WkG40o0+r499r+rKJb7SX7AseBrbP27yN8M9Mv2tc+RLEoJ7Cp0cYa3r?=
 =?Windows-1252?Q?0YmHcV0C7gUCKAILiDh2yHal8mDrFhZs27PAQo2cUS4vV08n6zxWsO2u?=
 =?Windows-1252?Q?yFgbdJGfwErckUML7JLsh8pkjvujesFtAm1pcKl4tA0nm/qlfvjXdDII?=
 =?Windows-1252?Q?vMyzcHs81I330BVcf+gtTxRBR144ztlnhwElsk9OXvtzOWDVxTlDM9XE?=
 =?Windows-1252?Q?Gx3DAAzx4vZ1OW/7WPgb3MwHpslrPxhr42yxjCSR6kx5EUtkA9vaaMs4?=
 =?Windows-1252?Q?r00TYtI39aIs33oyywg9vvYcUDCNTOg1j4ZqveY7ho/J9wG2X7RB8Syf?=
 =?Windows-1252?Q?CpbSMDthW6KUklhBqIGTs4gryU87cWyl2Z+bH1m1y3Ysal2ekWBESRMD?=
 =?Windows-1252?Q?W2vV5gnC/soUW8MgO9pzxwlhgBcYAJqMi30ilThvA32MZyj5nJcPCxDf?=
 =?Windows-1252?Q?Tk7zhffjyYF9wT3wPyPbXdOJ5CTV0Pz+C21hS+hjdkTVxW8cRbb+5UAW?=
 =?Windows-1252?Q?H/pkFKyF2snl/iFV0SjDhGq2b8Od9nYp/FyOQ1tW+yb6pFs7SdTjNZir?=
 =?Windows-1252?Q?fnvQzUIWuYAI4QeroyG8x/LA0uHiB9cU3wU1HxzTW+bpFjAS6LlLlSjb?=
 =?Windows-1252?Q?ZlSr5/JD5rcOxOttPzgL4Ug8WAwCslb/6fPrxN4jWBf0eh/dCv1stomo?=
 =?Windows-1252?Q?eN1K+txp+2x7YC9v/+obxEqDZ7dhP0dlwCecuFNy1ZqYCgvBAVMPye+j?=
 =?Windows-1252?Q?TwL8OkIYLN+VcHAO0p3l/Ogdq5SUtCfm3yFJr5wFBgDRBUp/UAfCzaOF?=
 =?Windows-1252?Q?pB8UJvbH6MtUBGngBDGqc7ZYSPz2NlLWAECeMQRTQBtK/eBDMgsq9eMK?=
 =?Windows-1252?Q?Oui7mNXdpSo1wJAhixCMhYoF4lNfKcksQXJw7LwMjnTnM1nY?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	PuMqPK+rjk+FRPknufMuvvhWBq/rQc6he98+qqCTn0HrsTRX4gcnSF3gcWpz4g5MxccnUxcN8Cp9ptndyklAU+KD9+W/cn4rhQomkWbRbP0ApBDnC5EPeU3JknDNfKA5ez436+8DkEGtBe6ZMZ260D2DjFuE65QhOe4yM/Z44HVmgXJuUBxxd/08hLvKyTgLmUK9uarECNdPj35b8WKRSM04saBZbUTFGkXcPOBJhWadBdbtXvpIuoybN70wJoJmnKlfA+ijnVDvjQYk7MF7iRLWdPrQYHtER5FLCtFs5LpWhjgxIGlXikYuMF0ojetrr9egdhMqpmaUyLFVMsCPVA==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b248b363-4595-4f20-d8eb-08dec100e62f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 23:44:33.8740
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA9PR09MB5310
Message-ID-Hash: YUWNUVXHSYHFCC3DFULGRZND3A52QU5R
X-Message-ID-Hash: YUWNUVXHSYHFCC3DFULGRZND3A52QU5R
X-MailFrom: prvs=6060c7cb2=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] IEEE Aerospace Conference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLUKK4W3JJJTGDBPSOTVECT3J56ZI5N2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3000658052544962299=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[aeroconf.org:url,ettus.com:email,emwd.com:dkim,SJ0PR09MB9126.namprd09.prod.outlook.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C432632F8E

--===============3000658052544962299==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912645208452420A853479B3EC122SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912645208452420A853479B3EC122SJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,



I am chairing the Software Defined and Cognitive Radio session at the upcom=
ing IEEE Aerospace Conference (http://www.aeroconf.org<http://www.aeroconf.=
org/>, https://aeroconf.org/cms/content_attachments/26/download).  This lar=
ge conference will take place March 6-13, 2027 in Big Sky, Montana.  The co=
nference provides a world-class technical program and provides excellent op=
portunities for both networking and recreation. This is one of the few conf=
erences where SDR can be put in the context of a complete system and can be=
 applied to new missions and concepts of operations.



Last year there were a few papers dealing with application of machine/deep =
learning to radio design.  I hope to see even more next year!

Abstracts are due soon, but I can take them later as well, while the full p=
aper is due end of October.  This session will focus on flexible radio arch=
itectures, including the use of GPPs, GPUs,  and FPGAs.  Reports of existin=
g systems and testbeds are of significant interest.  This year I=92d like t=
o introduce work related to machine learning as applied to wireless communi=
cations.



Please forward this to your friends and colleagues working in the areas of =
SDR, ML for signal processing, and cognitive radio.

Regards,

Eugene.



Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912645208452420A853479B3EC122SJ0PR09MB9126namp_
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
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: rgb(=
36, 36, 36);">Hello,</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: rgb(=
36, 36, 36);">&nbsp;</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: blac=
k;">I am chairing the Software Defined and Cognitive Radio session at the u=
pcoming IEEE&nbsp;Aerospace&nbsp;Conference&nbsp;(</span><span style=3D"fon=
t-family: Arial, sans-serif; font-size: 10pt; color: rgb(5, 99, 193);"><a h=
ref=3D"http://www.aeroconf.org/" target=3D"_blank" id=3D"OWAe543cc04-a46b-9=
604-66f6-e9e528787e40" class=3D"x_x_OWAAutoLink" title=3D"http://www.aeroco=
nf.org/" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" data-linki=
ndex=3D"0" style=3D"color: rgb(5, 99, 193); margin: 0px;"><u>http://www.aer=
oconf.org</u></a><u>,&nbsp;</u><a href=3D"https://aeroconf.org/cms/content_=
attachments/26/download" target=3D"_blank" id=3D"OWA3d92aa73-2f85-d7c0-0a98=
-a067e567d5a2" class=3D"OWAAutoLink" title=3D"https://aeroconf.org/cms/cont=
ent_attachments/26/download" rel=3D"noopener noreferrer" data-auth=3D"NotAp=
plicable" data-linkindex=3D"1" style=3D"margin: 0px;"><u>https://aeroconf.o=
rg/cms/content_attachments/26/download</u></a></span><span style=3D"font-fa=
mily: Arial, sans-serif; font-size: 10pt; color: black;">).
 &nbsp;This large&nbsp;conference&nbsp;will take place March 6-13, 20</span=
><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: rgb=
(36, 36, 36);">27</span><span style=3D"font-family: Arial, sans-serif; font=
-size: 10pt; color: black;">&nbsp;in Big Sky, Montana.&nbsp;
 The&nbsp;conference&nbsp;</span><span style=3D"font-family: Arial, sans-se=
rif; font-size: 10pt; color: rgb(36, 36, 36);">provides&nbsp;</span><span s=
tyle=3D"font-family: Arial, sans-serif; font-size: 10pt; color: black;">a w=
orld-class technical program and provides excellent
 opportunities for both networking and recreation</span><span style=3D"font=
-family: Arial, sans-serif; font-size: 10pt; color: rgb(36, 36, 36);">.&nbs=
p;</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; co=
lor: black;">This is one of the few&nbsp;conferences
 where SDR can be put in the context of a complete system and can be applie=
d to new missions and concepts of operations.</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rg=
b(36, 36, 36);">&nbsp;</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rg=
b(36, 36, 36);">Last year there were a few papers dealing with application =
of machine/deep learning to radio design.&nbsp; I hope to see even more nex=
t year!</span><span style=3D"font-family: Calibri, sans-serif; font-size: 1=
1pt; color: black;"><br>
<br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">Abstracts are&nbsp;</span><span style=3D"font-family: Arial, san=
s-serif; font-size: 10pt; color: rgb(36, 36, 36);">due soon</span><span sty=
le=3D"font-family: Arial, sans-serif; font-size: 10pt; color: black;">,&nbs=
p;but
 I can&nbsp;take them later as well, while the full paper is due end of Oct=
ober. &nbsp;This session will focus on flexible radio architectures, includ=
ing the use of&nbsp;</span><span style=3D"font-family: Arial, sans-serif; f=
ont-size: 10pt; color: rgb(36, 36, 36);">GPPs, GPUs,&nbsp;</span><span styl=
e=3D"font-family: Arial, sans-serif; font-size: 10pt; color: black;">&nbsp;=
and
 FPGAs. &nbsp;Reports of existing systems and testbeds are of significant i=
nterest</span><span style=3D"font-family: Arial, sans-serif; font-size: 10p=
t; color: rgb(36, 36, 36);">.&nbsp; This year I=92d like to introduce work =
related to machine learning as applied to wireless
 communications.</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 12pt; color: bl=
ack;">&nbsp;</span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: white; margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Arial, sans-serif; font-size: 10pt; color: blac=
k;"><b>Please forward this to your friends and colleagues working in the ar=
eas of SDR, ML for signal processing, and cognitive radio.</b></span></p>
<p class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; ba=
ckground-color: rgb(255, 255, 255); margin: 0in 0in 0.0001pt;">
<span style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: bl=
ack;"><br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: rgb(36, 36, 36);">Regards</span><span style=3D"font-family: Arial, sans-=
serif; font-size: 10pt; color: black;">,</span><span style=3D"font-family: =
Calibri, sans-serif; font-size: 11pt; color: black;"><br>
<br>
</span><span style=3D"font-family: Arial, sans-serif; font-size: 10pt; colo=
r: black;">Eugene.</span></p>
<div class=3D"elementToProof" style=3D"margin: 0px; font-family: Aptos, Apt=
os_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-=
size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" class=3D"elementToProof">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Eugene Grayver, Ph.D.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Principal Engineer</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912645208452420A853479B3EC122SJ0PR09MB9126namp_--

--===============3000658052544962299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3000658052544962299==--
