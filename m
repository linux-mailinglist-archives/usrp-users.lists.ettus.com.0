Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SF8BKp9QuGmKcAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2026 19:49:03 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2DB29F416
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2026 19:49:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41D5A385C13
	for <lists+usrp-users@lfdr.de>; Mon, 16 Mar 2026 14:49:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1773686941; bh=yr0I8nECo4DG06LxMobVpdn5B1ZbEisbz0E//KTVW/s=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DZAGiblmrTlShS8swrWQbRBxysZIckSqWXenEDG0VB9FugtlO6tm7ncmsV5ATutGX
	 zlU3YfpT8PuEGOQWfLg+NYOcCVlxT2AD2NR9HSSuDG2Gk5gj5BoOEMDSx5SbYblb9Q
	 Hmo2kTgX5FsDN1kyIIwYivq8k4RfhycY+TobmK/bNnGq2kwFTZzkBM0YUysgiJqa3c
	 fNF3j2xYnvObGPXtyRxeF1+Fc6R6ktAE2f8RRtnVvl1NZ6ddotPlYdsj7q/7A/530l
	 +gJugEF+ISRVJoxoDfOCv76rX57k/gpn1cUNbsH12PGcBQa3DUZlGo3VGsVUkH3JsO
	 7DhQhJuDHNwoQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id A04D6385C13
	for <usrp-users@lists.ettus.com>; Mon, 16 Mar 2026 14:48:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="ZBQ1kJq6";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="TwOCcfCm";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1773686884; x=1805222884;
  h=from:to:subject:date:message-id:mime-version;
  bh=uOpWzJSJDoqtjfLUiTfUWqoREpH9HzC8NhVFM9vI8+M=;
  b=ZBQ1kJq6CaN/VWTs9I58J/dR69nV85trjdSgZJL/G7QWQtK8o/nTGKtT
   MEziojOSJDyCE8fxTs1a1ub1Y99LV5FHT6LfM6fO0Z71HxzDO7OohtYmE
   Pz9Xn6D/tbJ0GSzpXLp2bYfghZVsQAQQA6QO6HPswm8G1zbBal3Y3aZi5
   M=;
X-CSE-ConnectionGUID: Xi4Brpw5RR2a9pPNCTKzsg==
X-CSE-MsgGUID: mpVL0SPTSRO7SYxvloybyQ==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="8737348"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000";
   d="scan'208,217";a="8737348"
X-IPAS-Result: =?us-ascii?q?A2GHAQAnT7hpjjYMXShXAx4BDS8MAgsBC4FZgT2BBEEBQ?=
 =?us-ascii?q?4FsrhKHfANXDwEBAQEBAQEBAQcCUQQBAQMEhQACTxGMRCc3Bg4BAgQBAQEBA?=
 =?us-ascii?q?wIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEdAjWBHAEBBTMRAX8nBBuCeoIeBwQLBwM2t3CBNIEBggwBA?=
 =?us-ascii?q?QYEBDPadBhjgWcJgU2BYYIcgXKCZQEqgTUBhBSFMIFVRIEVQodrRYNOgi+CJ?=
 =?us-ascii?q?noUHYEoOoUMhDBahmiBRCIDJjMsAVUTFwsHBV6BCAOBBm4yHYEjPhczWBsHB?=
 =?us-ascii?q?YQkD4pOgRODSgMLbT03FBsDBIE1BYxfB1U8gUKBbQkKMYFACJQej01HgTWhR?=
 =?us-ascii?q?jQHhB+BXgYMoB4XqmuGQJJGqRYCBAIEBQIQCIF+YIEgMxowQ4JnUhkPjjqDZ?=
 =?us-ascii?q?8czeD4BBwIHDgKBc5F/AQE?=
IronPort-PHdr: A9a23:E/I7Zx2GUOrjGr57smDPrFBlVkEcU/3cMg0U788hjLRDOuSm8o/5N
 UPSrfNqkBfSXIrd5v4F7oies63pVWEap5rUtncEfc9AUhYfgpAQmAotSMeOFUz8KqvsaCo3V
 MRPXVNo5Te1K09QTc/zfVqUpWe9vlYv
IronPort-Data: A9a23:kIZszKkIfD4Et7j0CrpUMlPo5gyJJkRdPkR7XQ2eYbSJt1+Wr1Gzt
 xIfUDuPbKqKZWPwftwlPt+0p0sPv5HWn9NkSgdpqXo3RC4T+ZvOCP2ndUqhZCn6wu8v7a5EA
 2TyTvGacajYm1eF/k/F3p7J8ykkjclkYZKlUbGfY0idfSc9FWF5z0slw7Vh6mJRqYDRKxuXv
 t/vqNHoNlag2jplWkoZ8KvrRClH5JwegxtG+AZlDRx3lAWGzSdNV8tBffrZw0bQG+G4IMbrH
 44v85nkpgs1zz91Yvu5n7DydFE9Q7K6FWBiXVILM0QKqkEqSh0ais7XBtJFAatko2zhc+RK9
 Tl4ncfYpTEBY/SWwLxFO/VvO3oW0aVuoNcrKJUk2CCZ5xWun3DEm52CAKyqVGGxFyke7Wxmr
 JQlxD4xgh+rt+Pq6qijVbRWvJ4qfdHTGqgjmWN7wmSMZRomacirr6Tiz/kI5A1o1+tzRa6HI
 c0EdTBocRLMJQVVPUsaA44/m+HugWTjdzpfqxSeoq9fD2r7kFQ3geOraYCTJ4DiqcZ9xy50o
 krL4mv0BBxcO8aW2CSI6Fqli/XI2yThV+r+EZXoqaU12wHDroAVIBgOa3/jmsGFsXSZBOluO
 1IQ/TskvJFnoSRHSfGmBEfk/xZopCU0RsFKC6gn8wyX0YLQ4h2FHS4JUiJcc5ots8peeNAx/
 lqAntesCDV0rKCOE3uP8q/N8mvrY3BIcSkFeDMOShYD75/7uoYvgxnTT9FlVqmoktnyHjK2y
 DePxMQju1kNpf4Ki4+h5U+auQj2r8nRdige2ibFRW3wu2uVe7WZi5qUBU83BMuswa6cR1iF+
 XUNgNSD97oHH5WVzXPVGb9VQe3v4OuZOjrBh1IpB4Mm6zmm53+ke8ZX/S16I0BqdM0DfFcFg
 XM/WysOuve/31PzN8ebhr5d7exxlsAM8vy+CZjpgiJmOMQZSeN+1HgGibSsM5/RfLgEyvplZ
 cjznTeECHcRE6N8yzSqD+way6dD+x3SMVj7HMihpzz+iOL2TCfMFd8tbgHSBshnt/nsiFuOr
 L5i2z6il083vBvWPnOPqdZ7wJFjBSRTOK0aXOQNJrTSeFs+QTp7YxITqJt4E7FYc21uvr+g1
 hmAtoVwkTITWVWvxd22V01e
IronPort-HdrOrdr: A9a23:BTzm+KkVwMl6XkEqqKbzauKzeRnpDfOrimdD5ihNYBxZY6Wkfp
 +V8cjzhCWftN9OYhodcIi7Sc+9qADnhOdICOgqTMGftWzd1FdAQ7sSibcKrweAJ8SczJ8V6U
 4DSdkYNDSYNzET4qjHCWKDYrUdKay8gcWVbJDlvhVQpG9RC51I3kNUGwybGkp5SE18A4YlFJ
 2T38xDpzCxU3UaZMa2CxA+LqD+juyOsKijTQ8NBhYh5gXLpyiv8qTGHx+R2Qpbey9TwJ85mF
 K12TDR1+GGibWW2xXc32jc49B9g9360OZOA8SKl4w8NijssAC1f45sMofy8Qzd4dvfpGrCou
 O87SvIDP4Dqk85S1vF7icFlTOQkArGoEWSsWNwyUGT2vARAghKQPapzLgpDycw5ycbzatB+b
 MO0GSDu5VNCxTc2Cz7+tjTThlv0lG5uHw4jIco/gliuKYlGcxsRLYkjTFoOYZFGDi/5JEsEe
 FoAs2Z7PFKcUmCZ3ScumV02tSjUnk6Ax/DGyE5y7uo+ikTmGo8w1oTxcQZkHtF/JUhS4Nc7+
 CBNqhzjrlBQsIfcKo4DuYcRsm8DHDLXHv3QRavCEWiELtCN2PGqpbx7rlw7Oa2eIYQxJ93g5
 jFWEMwjx9DR6svM7z+4HRmyGGyfIzmZ0WQ9ih33ekHhoHB
X-Talos-CUID: =?us-ascii?q?9a23=3A7hGX42v7lLKhss2FT4INvRMN6IsVcyH31m/PfnW?=
 =?us-ascii?q?CU284UIWzYmOz6rhrxp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3ATUGAOw5q2fEeSs9NAIilsKjaxoxt+5qKUHs1ra4?=
 =?us-ascii?q?8nJa/BDxuPzCMhiWOF9o=3D?=
Received: from mail-eastus2azlp17012054.outbound.protection.outlook.com (HELO BN8PR09CU001.outbound.protection.outlook.com) ([40.93.12.54])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 11:48:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZkGjt5wDIiaBCt45yxrTJbw7ZdcLDN2KVobpLNiOz7gwRMyLc/vVFEAXwUkkBfgTHsQJg6jEwQOpPiGRJfBcmv1A+4/AGhF2y4xeq4ooZLY/q04EKKbAu8L9BvZFh0ajbBfD4I5QK9KS9DYwKj0QBFV1OaDgh1v9lFdYeM8iYrIuXKDk2n0nl/zAWnq7puY4BSVEZYxetmEN3aF9xSOw9u1FSuwvgfYtaB6G326QB3SnQIf3cHQ87ZWhOxs/eWw6JsrhO7qprKDrUbv760M6/QeGdWqxJlXrILGZzSUsQB2Hsbpb0arfl7jzG4BX72nKyta/DrnGYUTEbi1+vygKpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ds6rr9Wg1knGzxtOEe3f8PHilPZZxlqDklNCVuNsbrk=;
 b=NqzR0OYnoJjx1VKFyKeT6C8q/TSeQC5VfBHWml014JDc9s6S5kbJQNgxEduQzVsUG3nv5KT6oYiNHH0ssIi8n27EadA+xwzXDijW89CwhkIU7RqGM3zkJFzhXLgkxFzbUTwBp3uzxFxNYKX0sObyfS8iVYbPs2EH6WulTPW7eUNUjN0nkKFgwM4w0IsNR8rfenFGH3nNEsf76i+DAU9t4J4QNeKfyOq0BbsKCLd4SyGZKLTTrDq29jUG31fq2NROZdp+Ca3mp6uMY3NxPU/NI4K77xGuBjpAe+if24koR/DtqnfcpJRl5YZhJcJfspvvXzaHyUGVGDqZQA6puScSQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ds6rr9Wg1knGzxtOEe3f8PHilPZZxlqDklNCVuNsbrk=;
 b=TwOCcfCmXNaFtVM03A+Iz5hKSP0SDMCiCXfaT1iO40ylDifHWLEnRteCw56hUN7mi/x7W4FSZitkIIIE5yFDck2NHy7pWOATWeeCEb717bYA87S0dR1PPPGc80F6BIlvFImC6VoKjmv4HppzYZKjrboRHJ5JH3yO7m/NTnSdo5Q=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SJ0PR09MB7245.namprd09.prod.outlook.com (2603:10b6:a03:26d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Mon, 16 Mar
 2026 18:47:59 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9700.010; Mon, 16 Mar 2026
 18:47:59 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 RFNoC rebuild
Thread-Index: AQHctXQDUtoaqNRZNU24BKK8ju66ag==
Date: Mon, 16 Mar 2026 18:47:59 +0000
Message-ID: 
 <SJ0PR09MB9126E3D60E0DBA1C8304723FEC40A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SJ0PR09MB7245:EE_
x-ms-office365-filtering-correlation-id: 178adb0c-aeef-450b-e782-08de838c8b8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|56012099003|18002099003|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 7sG3AOeFDbfwPOujCH861StE1zdkD+U7kVgNqOse8svQY1gmyKtEf2nJ68OBRIWhZCdpLVtY+muALNVkggxCVovS9zTiHpCxPwGMRPJjH0JGJxcuhcU4xRqltqAAaM1Zgj9lPRzbwjwaXwLuZfUPSNzDU7exekkbB1gCnUaqq6YxVxjHwmXQK/LuB1hnyd9ezyoaJIeORP1JM/4j+wNnnAJL1qmBCagD7c7JzV0dfStAUdgm6p3BbkKrZTJc3e455gfU5nXk2Cf8mJSttR0laGxSzbOStztx0PHj1vd38VLkfJpVc7XXlG11fK0eeUiDFGwhjRIGlN5h5B3WRj6s/Uy9M/0WnGV8aL4utRjte1mVWyyik9ExPUfb2AzFouejsx+kaOhlYk0Q323EeaEcjygurKtUCSjB4lTzNzxEjAyJ93zjRL0YlDqk5/Jfsh1BRMBYegH+DwzOxw5stt1vitEk77ibbVYVEeYHIxEB1eqDZDsQ16RbVxR8BajBXBpzICx8af3jvtCQ/d9VZ1VVr9gx43dWdru3yhF+Tt//l6S9Sw5zgmHOjOnFzVjSw3ipUXIRhmjWxFreQCqfvZ6F3Owf5hD8H/HdVRPeoGYyK7aaIo6xb+djtOc4G+GzPD9cxCTesl0Z4fuAqttEa6cHLWmbLpI/thuLaSigG0QPzEfBGrAdz0jvxkmTNcC1oeQA8l3DTeCDo4c4Evyl0wf7II5lfJNEOkfmTLguEPWfGzXlWPU2uYV+YUuXGWC38SFtTvDeqn95EbDATUGTGCGJmvSmG9F8WFtUR62NPoG+IUM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(56012099003)(18002099003)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?yHYi2AQsLqnSEXdHd+eqAD4pYpcLcEBpJQX8XI+twcnAgQbgrhDLyk5/aT?=
 =?iso-8859-1?Q?lvKKtrd5BkQ9GKdGQJOy3irWhtJGWfevOTJP1IUvOMgdGbSOS6r5DYxDtn?=
 =?iso-8859-1?Q?xRNIDd2+od0fb9yyNWLjyiU3lFoiXf9VbfisudqzYSW135q5WedonRGenl?=
 =?iso-8859-1?Q?nN2WpGFvPoNVb6mDwhUIhq5Mb/21nJODyWlZQPTHteoo6Ceg49gWhnIlaj?=
 =?iso-8859-1?Q?rvCB/NCOvNRAgLTIiRAA8zu0jBitthqk4C1gvpEbOTGCKnW1wqEafT1TI4?=
 =?iso-8859-1?Q?O04MoJSaMG69YGw7yk1gf/qNg43O0wdZLJmhpcpPyQMr1KdVi+WOMlnZWr?=
 =?iso-8859-1?Q?E5OSOuomD+q7FSJubnV7GWeI0Pt6p+J235pKJ5MirY9vv5BfNSzBafO6wg?=
 =?iso-8859-1?Q?e3t0GGSZx1PpmR/mihVqrFv5ffeJ1VnKNaGQCKjgb7REukTt0pcGOGJPcq?=
 =?iso-8859-1?Q?hAWveJ3bNl0yZLzLXxy1RjKnVR3jvDX5EWbRHgn274Pt8txT2D26iSK6ga?=
 =?iso-8859-1?Q?QIyF6tJq0tCuNGQKa5whsy+dfYfYCPj3RyuGGXLaDmZiLjVMuMCqqYD7z3?=
 =?iso-8859-1?Q?eK1tVAknPuiw8btMS6Xn3eeKdg3q5YpFwM/QPHAqkQxqYEE1Jpa6VApRcM?=
 =?iso-8859-1?Q?NYSxbjrD1p9Z/+Joh03+erqrxpoMbz7oerqZGdYvk2aB4+UI+9+DaIWX5Q?=
 =?iso-8859-1?Q?Wk10e9Sa2J7cPf4T9opLR9BdcBWgNVwM/fv7v1yzr9d/vT6VZilbFXwbn0?=
 =?iso-8859-1?Q?N95itLGFaI7ZftXFoVqCWmun0MMg2k5tqnuPLOzMcygy9jHJ+mKXkVp4K1?=
 =?iso-8859-1?Q?TSKzuhbz8SxT3PBlHpF9NJHuwp3rJmKHorxrJBxzIwJac5sN6tLLdocNKu?=
 =?iso-8859-1?Q?zWH1kfOJn043cDDVXj5nSZGiyC0Y2qrg38IHlm/IHpO9GVUgtf8R6J0lNl?=
 =?iso-8859-1?Q?zvtYfak/JZQBVlK7tXSw22F2KmFiNeNDtDe1blRMfMrrhjaHJ4LIGapo14?=
 =?iso-8859-1?Q?ZQIL28a4o0dYKoAdovptwo4YeYnYkhdWnq1A7wPABtxlpjNnET8F/hPswS?=
 =?iso-8859-1?Q?BW50j3yq5z9+b+hg1PVNdMKNAV1+VjHjYfNHkl83MUBAzVkEtqZkXj7nF8?=
 =?iso-8859-1?Q?pUtD3nWeORUnGqhlTM52Z8Ymo+ytMT6iPbwPN/gmroiM9KhmcQYUAW9xsp?=
 =?iso-8859-1?Q?bcRyQt1dHM6Czyyncfpfb5k+72sl+h0Qt/ZwZ6oKfgXUXuVki+O12mx+zy?=
 =?iso-8859-1?Q?9paTrjknxMg3AGxOGddGXKHPFGZWOO4J07wrhBr1wxqSmaeHXoLS18RTP1?=
 =?iso-8859-1?Q?DGimrvY8N71dUsSM0jWXfuT+MA8dprBiNkLywVke2LL9bq+7QzfCvC7UeZ?=
 =?iso-8859-1?Q?j3jeP2/Qq4e0K8UrPyXSoN1pYC7oxVGwdbHOl6gZM/mMf2bQLmAAodMTn0?=
 =?iso-8859-1?Q?OLkIkMQRRR1hp9ikdb6MzQ37+TxScygc78NTPAGiMp8O8d8NfUsIaAN09A?=
 =?iso-8859-1?Q?gNKe1sA+YFflPb6aq5dAHV5iprZpsFiQJhG2VII6e8bfGRdxQES8o05CwY?=
 =?iso-8859-1?Q?Tz6xv3g7+AwI+ls4ts4aECB549So/euR3UHh4ojoF7jGoMK4Wm2G7CfIK3?=
 =?iso-8859-1?Q?NIO55dN9b37nXyrSzXC2kWvRp0MFI06MkhtnBKwtzJjZp2hs+pm2izN7nR?=
 =?iso-8859-1?Q?1NM8doPLA4xOZuifvadFG0t3ejN5c6aQcCvjzOQ8nbyAbEa3pk67O8oRJq?=
 =?iso-8859-1?Q?VHkAV9F3kc5iAnm4/yNmt/SWG8s8RhtXIebbsEn0P5NK2V?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	N2G0bx2lxljm4nxtTtRLl2C4gh8O+tQRqIQu4JG8mVqXSSDgVeOEP7h85fi9i8Kdhr8w2GO/A5V78+hx3X19IHtgFUtzUzEAEeCypCGF4kKvhsFvAcemKQCKKwi0lakn85hJQbXmuJIyJCTf58cx1/ytbOoGouQdRLNa1yMm9hlhD+te2DzLxdtEuUijJr6eBfy3JhFAw757Tu9aEZqi5tRr2vo8y5q5hPEuIaLza7AB/1bwt2/aT5wODpIgtRt7Xc2pI+al18ietS1iAcwBrq4vPFgjeCtDiC/Vvc6/Pg4noDHTgdeSp8h45j5y45dx3jnVn0+wANI1F5uOccfbAQ==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 178adb0c-aeef-450b-e782-08de838c8b8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 18:47:59.2767
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB7245
Message-ID-Hash: 2AKKYSDJMOYLGOKTDPBWYFJYIDYFTL2M
X-Message-ID-Hash: 2AKKYSDJMOYLGOKTDPBWYFJYIDYFTL2M
X-MailFrom: prvs=528ced53f=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 RFNoC rebuild
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P6YMIZ4SD6QTE5D453MFNWQ2SORW7LS5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7996476397697736944=="
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,ettus.com:email,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Queue-Id: AB2DB29F416
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============7996476397697736944==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126E3D60E0DBA1C8304723FEC40ASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126E3D60E0DBA1C8304723FEC40ASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry about spamming this list :)

I just rebuilt the clean/unmodified X4_200 image on the X440 just to make s=
ure the build process worked.  I loaded the created .bit file and am now ge=
tting the following error:

Specified destination address is unreachable: 1:0.

What could be the problem?  Google says it's a mismatch between the UHD and=
 FPGA versions, but I can't see how that would happen.

--------------------------
~/uhd-git/host/build$ uhd_usrp_probe --args addr=3D192.168.1.10
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.9.0.0-290-g=
cfb98407
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.1.10,type=3Dx4xx,product=3Dx440,serial=3D344FF6B,name=3Dni-x4xx-344F=
F6B,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.1.10
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_200,mg=
mt_addr=3D192.168.1.10,name=3Dni-x4xx-344FF6B,product=3Dx440,clock_source=
=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0
Error: RuntimeError: Failure to create rfnoc_graph.
-------------------

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126E3D60E0DBA1C8304723FEC40ASJ0PR09MB9126namp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Sorry about spamming this list :)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I just rebuilt the clean/unmodified X4_200 image on the X440 just to make s=
ure the build process worked.&nbsp; I loaded the created .bit file and am n=
ow getting the following error:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Specified destination address is unreachable: 1:0.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
What could be the problem?&nbsp; Google says it's a mismatch between the UH=
D and FPGA versions, but I can't see how that would happen.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
~/uhd-git/host/build$ uhd_usrp_probe --args addr=3D192.168.1.10</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.9.0.0-290-g=
cfb98407</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.1.10,type=3Dx4xx,product=3Dx440,serial=3D344FF6B,name=3Dni-x4xx-344F=
F6B,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.1.10</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_200,mg=
mt_addr=3D192.168.1.10,name=3Dni-x4xx-344FF6B,product=3Dx440,clock_source=
=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Error: RuntimeError: Failure to create rfnoc_graph.</div>
<div class=3D"elementToProof" id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
-------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126E3D60E0DBA1C8304723FEC40ASJ0PR09MB9126namp_--

--===============7996476397697736944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7996476397697736944==--
