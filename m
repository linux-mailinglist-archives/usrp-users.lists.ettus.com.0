Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4160D6F1
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 00:22:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96B19383BF4
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 18:22:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666736534; bh=ujadKylZzdgqD5KD/MTcAoQ48BoagVkulw2nZGA4jxo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Oo/L6YqrRPSVm+c276blv1a2ZOIWcF8N1spUE82ciAs6n539D+Xcj9vbDBc9iyjwQ
	 RiMiAzIz1NEPimyBLEuKIuZmd9tU9L5nZNOuqxx+ahuCcbzDIOIwclcUuZ8rD5o1nM
	 T2BamDPNSnjwl4c2sO745y/n42W/8gCk/S1SsWARrKElnFBQ1h+bcPRRrbkRubPJon
	 jS+pYk9ejjpjLcD74Owq0Ub2QVd/eI5/GuOXy9603YrHzUah6yMTAsqoWn26HPLh1q
	 GnqtLerz5KwqeZ8jCWGrLhYpP+XL8/Wh6M/u8S9OONzxLlKI1UGm1SghX5SVlG+8Zo
	 PQOQcEH6A9fQA==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
	by mm2.emwd.com (Postfix) with ESMTPS id ECB0E38104D
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 18:20:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.onmicrosoft.com header.i=@umass.onmicrosoft.com header.b="SMq6o+EW";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D1Rqj4wdq/RzGVT+Lsv17j+PWAJ5VM3k64D44Z+jqNYwt1+BiPl+X9Qns3mSw7RcOEjtY5JnSK7n9YoKL8Stev7uBgvrbAdaeP16kjFl9ykro3Ngta6RJ37/Avw497uh/S1i2Pg4Vzz+hTYsHjuueioxYJwoug0VngpdRDTvt8oNWDE7p6XCrpin19WI0Rvcvsm8xiv5iU8l6a/GXeRQZKcnID6R0P6nt0tTqPEjoTa/gNk5xFRNuFDM8sTy1y2yVpbBeElZBoDkPMVOkJXdKJGaG/F+FwkTkLL5kPpnX45GvUGLskvLJDyYDQjfBN1rLyXjw7353ncvvdj2Z4pHwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SfQCdYVUNYt14+K5dBEYBh1ZZqCnsk715nxP3Zmg1Vs=;
 b=gTWypwvpsnVhSN+qF0R/GQ9Ngx+Jnf8of5uU/pa20WFd8qDEGIDR0iiHNj00pFgzgz23ahFEdZU62B3F6XkwVTqfaxc+T0X2bK84UsnGXkjkBNHg8pZev8MDqd53etsqjsSo9AyOV1NQRYPQy1Z8h8VWiQtajCk6MEEa5A1AW6UeBeCuPHfwqDdvQeDgaSbFfjpBnQ78Jy/pHXkbs/yQzHH5Y+G05YRDHX6KUX+TL2AXB79xbVY5kbkRwvus60ZB6MbSo4DbdDRcCEWTi2ySgM5gQeo+Mp9dpKzkR485UvQ/dd7ekYt+VHGbfkCi7KL+wApkUc+3Um/UYzbkm4/pRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=umass.edu; dmarc=pass action=none header.from=umass.edu;
 dkim=pass header.d=umass.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umass.onmicrosoft.com;
 s=selector2-umass-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SfQCdYVUNYt14+K5dBEYBh1ZZqCnsk715nxP3Zmg1Vs=;
 b=SMq6o+EWcv49gFbpzcAfTz0ujCdSgVi3Y3/noTqzffD9sMJs2cvwnETJ4OcgGuS6r5WvFW5wQNCDdDQ8LeeaUqytpXM6uK2E7pRMQHZDaHxeVgQAvmjGbANsewTHcMqcke4JeeIgsLQhzWNU2t2YhUdg5fCTM4lTBk1pN73/s/w=
Received: from MN2PR14MB4192.namprd14.prod.outlook.com (2603:10b6:208:1dd::12)
 by CO6PR14MB4433.namprd14.prod.outlook.com (2603:10b6:5:34a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Tue, 25 Oct
 2022 22:20:28 +0000
Received: from MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::238b:b050:b399:b11b]) by MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::238b:b050:b399:b11b%6]) with mapi id 15.20.5746.028; Tue, 25 Oct 2022
 22:20:28 +0000
From: Xingjian Chen <xingjian@umass.edu>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD4.3 FPGA version
Thread-Index: AQHY6L33PI6QW9P8NUGyIu99KDVgEQ==
Date: Tue, 25 Oct 2022 22:20:27 +0000
Message-ID: 
 <MN2PR14MB419214F8506DB89A597490BACD319@MN2PR14MB4192.namprd14.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=umass.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR14MB4192:EE_|CO6PR14MB4433:EE_
x-ms-office365-filtering-correlation-id: eac19f63-bcee-47d4-70f0-08dab6d71ee5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UD4bgOxttMN9SGdd5lNgFE8FZxgNYicPwznwgfHxsqeBh79vFAnkhcqvIl7/uBRL0Hkn1wQj0tGJU51dhE9Ht8zdFwhZOFsZ2NjoxiJ4UH7aLZvULaJsn0iLxKw0+GhlR9Hotdk4KI1Q1aBUV/8HYwoYsLd9eUjZpDaeR/j4KPAh/omAwCeHPpMHSVuXLjKjKjB7X5xN/OXwMiGqgkAocAnrPTIKiCm2nBQyOA22XB/6kQwL7c+7z/9DxdmUqvvLt6LGkrpjzE5+O2ovWSzWUHfUcAo2Xf4BgNHVfEEkIekNIIM3YNFYv7D0DaUqiegD/1Oku+SPvK5dJ13JVVakR1aKXiasGW102V/liL/wFwDet3jQ6bX6hS+txmMG+E/9+p7UAUH3iEFkOS6dcCZoeKrm+TSbYzrCCiYp3cRkhvmyVGIZt0YTA5P8wKuFAkPstiZ0mx7U6EjRfVdM2hCuX68+cdvLz49uIoWdwqEd+PGuIhZnK/IH/s81EHqjN5RLI5eRnSOkKvYQiqSgKmluqPKh0mD4HMJK1Dz/Nu76KkCALlHR5z4FOy/FmnNuf3dnjMQ58biAsVsRjb+Qfzf4D8Qv96uwPZ0T8BhvAqvpoleOWuAQucYLZ4RBP0KWQUbJJPNJxP/08/YlVHFqMNQOfx7mTXF5dQbOY6f0QJ9AD+coBnjHO5g5RZ9REa5Rt95a9Vv4U6zgccGdaObqqEPdEkR+0Xfq67jkT/5F5mXUCpNlExBTu1blXnJonBpEDKUyIB+wCCwpiAIm6ID/A0yyLQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR14MB4192.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199015)(19627405001)(38100700002)(8936002)(66556008)(4744005)(5660300002)(66446008)(76116006)(52536014)(66946007)(66476007)(83380400001)(9686003)(38070700005)(64756008)(86362001)(33656002)(6916009)(26005)(186003)(71200400001)(41300700001)(8676002)(316002)(786003)(2906002)(478600001)(55016003)(122000001)(6506007)(7696005)(75432002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Tn8sDudBNixu4k6boihzHkIw1MM03urhcnWwzPPNI8sMdUj1v/Et3Pg2jA?=
 =?iso-8859-1?Q?fYvG5Nk/+bfPdf62raalLJqTmeheOVQWnaUguhYoRIQU6oLxY1Zlnod7eO?=
 =?iso-8859-1?Q?vsQSYojyf656gAHTtxzZpY2ZskxH/Mb2gb+gwH0eOknM1n+9r60npy5/ih?=
 =?iso-8859-1?Q?RY3K31trIpAY9026LF41t0A2huff6L4WNNy+MqUkvlusf5P2C1K9jVTynV?=
 =?iso-8859-1?Q?cQ8HY+lJSL71NGR0u+/TwYvOeq+5RlmuCk8zOhdZRIA6tjEU5MN8WmPd4j?=
 =?iso-8859-1?Q?U4qyYl7ApI7woCFECZOeaqs2WNPCyG7XM3SBB7ThXcHZaGEem+WLEggNQB?=
 =?iso-8859-1?Q?HIwPkYlqneGzL3sLJ02E/jcz41gFWB1pMgsPkgXm5DpgXfNBiWkJ50xa/e?=
 =?iso-8859-1?Q?RHsH7M57kpH81UOujOgEG1CLwpLLjqkJMR8iuByx204t9nj/4VQYmV0oSZ?=
 =?iso-8859-1?Q?YfXGTQm72d3M5egy/EiA1TCKcciL413vyIJzdm/iGoUP2rhlapU477ae5j?=
 =?iso-8859-1?Q?AG3F/o4dD6ly20yUVEdAwIkk0DdcarO2aQHwuDJU8eWNxxpxtMDfXtyrkz?=
 =?iso-8859-1?Q?P0YGfvLe6Y0mr7xsG7Rvh+eXw8DTooNCq+vEndhmwlI6Su3u5B7IyWZ0O5?=
 =?iso-8859-1?Q?lImHN1wT2ZeitcFkPQ6zYiRA4i4JZ/p74KFUMrLkfX3viL0A72e/lanxt4?=
 =?iso-8859-1?Q?SkFM6TV1fkqdFFwFXMJadpNnbH1N+kYFAby45PHuYqH+7l/KAnJdZ9mkRz?=
 =?iso-8859-1?Q?7NKsXY6e+Nx1ZFdGZCz856tlrpkzfrbTh5gW9JVc5puLNCZq86SfAIX1gt?=
 =?iso-8859-1?Q?36F/bKELLX7t51ArJEPTThWZKCTVbthEEDV2hcy9+W86SlnNjnSz5BoFgI?=
 =?iso-8859-1?Q?eWLJmmVILF9QnihxYrOj+LlK7D1MZUnwPS18DGMYMR96HPMpBhooD8qig+?=
 =?iso-8859-1?Q?ywG+Q7QcLSlx5r9nXrX9awXLdEN0dNmmZbsQR3LAR6oi4sJQLtkDS9ccPN?=
 =?iso-8859-1?Q?htfU7YJ5Y5Ow74BGWTHm+ixO87Fm6p7rbOSZrZKcVU7YzSkK0AMmkj3b2C?=
 =?iso-8859-1?Q?RQXdmPx+byZfvJ15MLDLL/vVng82kBf14jTc35kxp+gzLfpWcI1VPSXGMl?=
 =?iso-8859-1?Q?2sgZj57hZN1zFUaROjCa0iwKnhTefvGajIrNulkuDPSJGFh2kShmYJMtpp?=
 =?iso-8859-1?Q?8xCso4/p4AEE9sYeWlDFKQNWDUgPs9gOrnHHFSIR173n7GVQIDLB2l1ysr?=
 =?iso-8859-1?Q?RzmpX03MxlbRxjfUYwlZWwdd577Xw9TQ76xuDiitbKfaHZzBb7lc+gWNJ7?=
 =?iso-8859-1?Q?lPwXJUvXLlnownSDUZWJoB/wqIxBbXEfjcqmqd2//IojiKYjJZ+7xkN3AL?=
 =?iso-8859-1?Q?kDIeOs6I0KJURP5mE9GdRVG2vkd8Jq6LFqu26qlJTH3TIrPr5ubrNiuEXz?=
 =?iso-8859-1?Q?stxUbaCvgbi/D5YqUy5y5Wj3Nwgq9YyJ5iOSqmUHqXKPS99yQDlFii7Flu?=
 =?iso-8859-1?Q?xmYfbPeEL+bRAL5MHa5r/2mABvKR8iF3+PW+KmPS9q9uvUaHjntTt0Uhy8?=
 =?iso-8859-1?Q?MqAF6TdiRWL0RwOX0e/hkGK96UvZpqqjZmiT8UYeWbSPpq/f9UjCm4PgPV?=
 =?iso-8859-1?Q?EmVefrJiIiQ/w=3D?=
MIME-Version: 1.0
X-OriginatorOrg: umass.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB4192.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eac19f63-bcee-47d4-70f0-08dab6d71ee5
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2022 22:20:27.8298
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7bd08b0b-3395-4dc1-94bb-d0b2e56a497f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MAt93M3U+MhUq4meJHc96PxSq6n4b0H6bb1pLos0pXZ+sspm2efOKJL85LaWlmczrgJs31+QMewHwT+RShoI1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR14MB4433
Message-ID-Hash: ZBXNY4IYOTHQO3IALYYEAXE2Q52GIIEL
X-Message-ID-Hash: ZBXNY4IYOTHQO3IALYYEAXE2Q52GIIEL
X-MailFrom: xingjian@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD4.3 FPGA version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RPVVV4KKVQC2MS7X4K5YHZVWXABJFX6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5165165024039850440=="

--===============5165165024039850440==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR14MB419214F8506DB89A597490BACD319MN2PR14MB4192namp_"

--_000_MN2PR14MB419214F8506DB89A597490BACD319MN2PR14MB4192namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi there,
For FPGA programming, which GitHub branch and tag has FPGA compatibility nu=
mber 39.0? I tried to use UHD 4.3, however, it seems that the FPGA (38) and=
 Host (39) versions are mismatched after I git clone the master repository.=
 I also tried to checkout the tag v4.3.0 for UHD-4.3, but it seems not matc=
hed too. What is the correct way to download the folder with the suitable v=
ersions for both fpga and host codes?
PS. uhd_images_downloader works fine for me to match fpga images after buil=
d and install the UHD 4.3.


--_000_MN2PR14MB419214F8506DB89A597490BACD319MN2PR14MB4192namp_
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
Hi there,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1">
For FPGA programming, which GitHub branch and tag has&nbsp;FPGA compatibili=
ty number 39.0? I tried to use UHD 4.3, however, it seems that the FPGA (38=
) and Host (39) versions are mismatched after I git clone the master reposi=
tory. I also tried to checkout the tag
 v4.3.0 for&nbsp;<span style=3D"background-color:rgb(255, 255, 255);display=
:inline !important" class=3D"ContentPasted3">UHD-4.3, but it seems not matc=
hed too.&nbsp;</span>What is the correct way to download the folder with th=
e suitable versions for both fpga and host codes?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted2">
PS. uhd_images_downloader works fine for me to match fpga images after buil=
d and install the UHD 4.3.&nbsp;<br>
</div>
<div class=3D"elementToProof">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</div>
</body>
</html>

--_000_MN2PR14MB419214F8506DB89A597490BACD319MN2PR14MB4192namp_--

--===============5165165024039850440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5165165024039850440==--
