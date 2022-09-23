Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3675E80F6
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 19:38:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33DEF3841E1
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 13:38:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663954711; bh=bIItLGJaOYRn/hNeVLAqBTYHbp7bCOHWWME7f/VZpTc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iuUgZkpBeMNRCgZSkglYmS30Wn2U9AH8UHx5ceTNK4juDkwIO6ZZySeyvgpMG+6D3
	 Lh9399vNRpjFTZ5D1CDgrdxoFQmkF0W/AG3WTnkwq0bA/69gAjTY8G3o7TxnO+l2c+
	 BzTkXYIWrZnWst9BKEATqagOXw26qU9YamFyix/ufo5KACNquBG4/Dp1NsaV6Tclsv
	 HGfmOkiU1eQlgjzxn1uGIdTqulXfbBacwPtQq5crCTtoqIwkzdCE0Nae1YwW49pBf3
	 j4eOOltkR/vjqHJ6MxlawpReTi7N5ferx0ZM0HW682VMxT3X46MOo/9JHyloIFOr3r
	 BtHm/vMbiOlcQ==
Received: from na01-obe.outbound.protection.outlook.com (mail-eastusazon11011013.outbound.protection.outlook.com [52.101.52.13])
	by mm2.emwd.com (Postfix) with ESMTPS id C15043841AF
	for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 13:36:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=minersutep.onmicrosoft.com header.i=@minersutep.onmicrosoft.com header.b="PGHu2kL+";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bT4FfTrngBJMf7+mpYlufNRkDtZEUmPXtsOWfdtK1Chzr/8k9bsR+j07q91fBkLCJdcSUUp8TNNzv90zNw+2HbMZkj+jLeaPS9I27SfcCxgXOxvSmxtFbflKbSsbi6eNXpVbh3HqOpKEbop9QOJk+AtOkBA7WDOR6zKDddX/flTRbr0mBdYRdHh7W0Qk0JH8guB1EsGEwTpwTAI3QWlkIlrHILOR1LQWDmUD0ChzL1BPpXkHW9MyToVTcwu0+9wFchqh5YHHLIeQN3xLCLpMNKf/h8TbWqLL7IBauwlHTP2D62BBk1Ofd5o3u4uBmoeenzwqD3OTSxtoSK05WBpUqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KgTDUXLUtI+Tv8hDYJ6LskOrXR/ysobwaOtJnNY0Wyw=;
 b=IfuiERtnvLYN9gJEtp6Pctk8MKjPxPDcVXkyuS22rMMtO0LgXQf9wiMJeOquem9wQBTkmvqsdot06GBcozeLZibf8ppCC1bGntAy7l3ygougRhOc6k1VHr/pTb12Phf5KubmMHLKunosnaF6HKZ6vDvFZhVI2iLQIQHSWS1mOOPediq6GYpgPhQLQ8lodqAbpZIo7FE2VRN55TRS8YS9v8We8MqH3cBtDI44upU/R6ECHNnUkSw+di1TDcI5SG82MAPVXE6o0fWThd3wy4ACfyJhIx6P8N3J1J/WW5EXlXsOZ6iYXNScngl5TZA4MvBEiBfhRKY9Rt2FYnTTcWavxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=miners.utep.edu; dmarc=pass action=none
 header.from=miners.utep.edu; dkim=pass header.d=miners.utep.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minersutep.onmicrosoft.com; s=selector2-minersutep-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KgTDUXLUtI+Tv8hDYJ6LskOrXR/ysobwaOtJnNY0Wyw=;
 b=PGHu2kL+BRBUoXLriOlKTx5rHNYRhIfKCkoQk9YTqnrTdpf+oKFpn7K+/IbErzO02WUkRbT7zYpGHePFHNSlCcXQBgFMqojxPg7wQATf/Y4KkFjru52t7OSkqnQChc9LcjPxPbjoRMOZwfPndzlNPSqIBnFfKBYvM2DSwJAoaZA=
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 (2603:10b6:803:4a::25) by BLAPR05MB7331.namprd05.prod.outlook.com
 (2603:10b6:208:292::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.9; Fri, 23 Sep
 2022 17:36:38 +0000
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47]) by SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47%3]) with mapi id 15.20.5654.014; Fri, 23 Sep 2022
 17:36:37 +0000
From: "Avila, Jose A" <jaavila5@miners.utep.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 calibration
Thread-Index: AQHYz3IPn2d6heZq5USKOX9pPDQfSg==
Date: Fri, 23 Sep 2022 17:36:37 +0000
Message-ID: 
 <SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3919.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=miners.utep.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN4PR0501MB3919:EE_|BLAPR05MB7331:EE_
x-ms-office365-filtering-correlation-id: 5b7e1f58-5127-4f50-baff-08da9d8a2acb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uSXYXzqOg7aAb/zAc1iHWeJPfSFrYE0uAyXRQe7xowNCAcGMJu9nhicGOFlS4N11FXc+e7ELqL0WJsmFGZrsK4vKM6qyZ+HHPcs2tUI5e1kg4l4i7DiBJtKMNjmfl6fvyKWh/fsgr2GM/WhpWJ5AsgJXcmWHgoMXo20DKuvH1UpDbishtEWK1E4iyyCkIbn7bxLsnQoVXI+y8eF/NxVwrAytyFl8EA9O7Oz7gDjWBp6Yb9hBdjV7874zDkIx1p+/m0t939nGuSRAnDSAwH++xuDpO1juLw1zMV95F0b7xo/NltAqSbt7Auoe8L73M4QMmeL4vPwrzDbFp2B6DTz5Jy7cObIjQOD76kd/WPBn4xC5G7Y9nyAE7mWh7m0yQp1uWyWsG2ztZG3uFq9+L4qWob05o4BcGtvPK/w1fLvSpGLqZvXghxTi+6Pqb/o7zPCH0wKIl0DOf+pLroYTC6bzpu+nwW6IWTeU9NGaSbS6Q+4CxjO83vzUAYIBrhctEE3awcOifwwNynvkePPkOWTwqqbFUM8MA4YQPljaxCMDN3e8VPH787trkupWe0D3hBNwnP5ZKQTqyTjj90lPE/pkOuvnFIL9csnelexEP/6Q2jAJVYpPx96alxFtSJ75/5EjO8IQ/TYSDgpoe/oyy0LWPyA/E6HzCeXCx7/YC+hN7kHpK5GmpgkL6Gi5AiaMIk56fMEgKKxbCBcUCh6UsPhFPpAoiBfTANgFUxOvkSHVoHl+06YVaE+UfGU37do68g0K1z0C7KU7QD4SiXFDq4Mbl0Q2JHX/nW1941vdoRyCEhCdsM6POQ9qKDW+MQvA7QlO
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0501MB3919.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(366004)(376002)(396003)(39860400002)(346002)(451199015)(33656002)(86362001)(38070700005)(38100700002)(786003)(41300700001)(91956017)(316002)(6916009)(66946007)(66446008)(64756008)(5660300002)(8676002)(7116003)(76116006)(66476007)(66556008)(2906002)(4744005)(122000001)(83380400001)(71200400001)(478600001)(41320700001)(52536014)(75432002)(55016003)(186003)(7696005)(9686003)(6506007)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?CyQwLpSS+h2O1G8SdoSqIY+Ryx2JYheynOAlwwBT8JnM9rvLN0oNdXiRmLB+?=
 =?us-ascii?Q?r1Ba+DOlv8xUDXz0FCu74PFsDxPZJHgEs3ISi140S6wBeztn1JMLCxuLdYNx?=
 =?us-ascii?Q?7fJNk9NZr41mhR8pnJB54mGJbYz3FwzvmQdAE2rOQL7SVx+tAWYWREOjjWjM?=
 =?us-ascii?Q?Xcuag2WwkcrCKKvLsofdvtJJShi1Cg9RYTo1zhvHpDdVyg/5hbDeddNS6VgT?=
 =?us-ascii?Q?StNaB7gmT692NW1QeJvKtUEaj7/KGsjfhp9I9Hl2hnjcYr9V5lvsEajHzyvG?=
 =?us-ascii?Q?HjAO9YNaaG9rXxfmye1YUhH7xWUyHQ8pMdw7PtoojOxS17eKlt9SCGYa0oPH?=
 =?us-ascii?Q?9xs5GnoNyjKcGLFyir+kb8mi2LxGvVr7WYw9YYm/QzGeOIAqgyWDIM9RB3Qu?=
 =?us-ascii?Q?Rpch3QgnbRj34wZydulrvgG3RorfKZleJYiZTXSso1ghrnNbJZMlqmI51dAS?=
 =?us-ascii?Q?CSX7lNANOeeyccLoaqy1oYepkccIF4DVua6Qx5agsBDKUJY1jmt/DqLi+z/n?=
 =?us-ascii?Q?719GX6uKqEcRGcvJZDAil1aCVm9EWNFWM+RnQknzThkL+MiwE4R02++oU17j?=
 =?us-ascii?Q?k3/BmztnMZfEbTlDSqRTcOoVqfUuMbs5eGVGHflBmGjRxMuc0I74C9s1KDiB?=
 =?us-ascii?Q?RRaVNxqYu3tZa+F7A/NLnR0ZUaou8+EWSVjei4G0BRHU4sHNDzYPO5A6ewVQ?=
 =?us-ascii?Q?HLsZsv2Ae0tMPeVgqrRW+HyyBVl+on33O0LRP0eXCpj93CHq1wny6tV7zDN3?=
 =?us-ascii?Q?hqQoNUCAeGMtOJuy+SCpBq36G8/NA/W5GcVtuVO3ASed6EK+6KcNBfC7wKiv?=
 =?us-ascii?Q?RJuYCD6yQ4bA61PhSJKh3LC53VZrEYyfnPVX2FatbOymzehdaF6I/XcIOw6f?=
 =?us-ascii?Q?RL3UxDRQ9ruOLeA3snDt0+RRJlcuiGHTBnSnnjKKbDMDSEGFj0pPjX/3hRHn?=
 =?us-ascii?Q?metAdneg0K5yYexgbn923uOdCF5HIm3YAOj+I9A/+ZpihQl9AbCG7u3fKS2I?=
 =?us-ascii?Q?Ivdp+l1Lx+C8CXLC7x6RI3ihPLPut2YKA8i5WoLVXFq2K8jePt00e2rEIKQS?=
 =?us-ascii?Q?Xhu9F50GmpvVOVdShEi9I1L3iwS4z1C/BNMuW99vFOYVfzYqqzKbToCQzoV+?=
 =?us-ascii?Q?Qszn8Okmw8R2tiPi5zg7OIPLr80b2QHCl3GOV1KTLpyzLVtTZveJsvYeSb/k?=
 =?us-ascii?Q?ip9tMsz8O1tTjzw383aEGUNhcuUNDxSZ/xAMszj+Sn4XLaRPht5KhIis8v8G?=
 =?us-ascii?Q?4WaeEk5YPny/LdETJ8DUeWQ1SsOtNVsMBVbZ5Yx952byPLMjI9sc4vPNCh0j?=
 =?us-ascii?Q?LUEsVxNnCutACx0EpjLv76Vx4Sj+9DQsufJwlOKl4UDeiYYG16vsV6gSZ18M?=
 =?us-ascii?Q?Po1cvVoE+L0Hq3j5JVA6GvalYW0nX3SeTQBEV+dzqTo6Ge9cg9t1YLnm6dIW?=
 =?us-ascii?Q?4/vc4k8lset95+ui9LL28BY3+IL/V+UcfhXdTJWfSmrmhWFzVyHh3cbNtrYL?=
 =?us-ascii?Q?HMvBjEqnFfg4ugalykSNjnxqSdJCqTgN+O0/d6/zhmQbQW2xl9Xd9NEXuOuE?=
 =?us-ascii?Q?ZHLs0hzy36lHVuYZYEpHvTQjdD9eMoOPFQZpy22MnYDmrJzV2vMjdZ4BHu2H?=
 =?us-ascii?Q?7lk1qwTmv9rt3hNwllM/FYCkWVUh2+1wLKHsLy7dehI7mMahC4hYt+UBU4AS?=
 =?us-ascii?Q?9AmyjA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: miners.utep.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR0501MB3919.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b7e1f58-5127-4f50-baff-08da9d8a2acb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 17:36:37.5076
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 857c21d2-1a16-43a4-90cf-d57f3fab9d2f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uaLcs/CeVXDgeAcyZmAE/z8K4ks7Dh6R/ZS1NORdArTa+5AOMd9f5SBPYANz7KcjjGTKs0l0jhoXa43PUdzfq9y4xv9M9N9AUAtEqfA0rKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR05MB7331
Message-ID-Hash: CXTCECQA4WBZ4AOXG6UXMDW33MKYR4I4
X-Message-ID-Hash: CXTCECQA4WBZ4AOXG6UXMDW33MKYR4I4
X-MailFrom: jaavila5@miners.utep.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2NOXULYJBLUG7QZQMOLZ7QGQOMJGILV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4698856389353236197=="

--===============4698856389353236197==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519SN4PR0501MB3919_"

--_000_SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519SN4PR0501MB3919_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have noticeable lo leakage when running the cpp rfnoc replay samples from=
 file. So I ran the calibration functions but it doesn't seem to be using t=
he created files since I did not notice a difference. Is there a function c=
all or setting in cpp I need to add? I thought it would be automatic. Using=
 uhd 4.2 with X310.

--_000_SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519SN4PR0501MB3919_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">I have noticeable lo leakage when running the cpp rfnoc re=
play samples from file. So I ran the calibration functions but it doesn't s=
eem to be using the created files since I did not notice a difference. Is t=
here a function call or setting in
 cpp I need to add? I thought it would be automatic. Using uhd 4.2 with X31=
0.&nbsp;<span></span></div>
</body>
</html>

--_000_SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519SN4PR0501MB3919_--

--===============4698856389353236197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4698856389353236197==--
