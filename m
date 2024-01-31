Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BF1844539
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jan 2024 17:56:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B48123852BB
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jan 2024 11:56:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706720170; bh=NuIvodx433omtr3bWEAbNNy84kS1rzBEfgbjBPCPo9c=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=p0Mz0XMnmybQmTftnYC5e/PMRdzB8+ethfrdtzjhyH1Db8LMzxbG4XX5AFlvAAOYW
	 eNbGt8fB245LFLzR4ME++iP39nt6kra1LnTfulx+Lc2nSCJFNW19ybIN4T22q5maCw
	 HUnNZCtvbEOFu+bWOdfD+OI2uG/EKRkvqwileG2a/qlk2Ednbl6cXcexnn+9Mp6dQE
	 z+mM85DUI9E91zO2PeQP0ZPDIg9F9Aunvida0MLytj7lPIRVeugdjAnLfFYWY99Ul9
	 OrTtoKZbAMhoWvIp3k22hemchhafONCdQQqVijYKPgoMLB4vIGO2iIJrubXAboM/gS
	 FshbGfqFnp1sg==
Received: from DS0PR09CU002.outbound.protection.outlook.com (mail-centralusazon11012008.outbound.protection.outlook.com [52.101.61.8])
	by mm2.emwd.com (Postfix) with ESMTPS id 854D7384D6E
	for <usrp-users@lists.ettus.com>; Wed, 31 Jan 2024 11:55:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gridsystems.onmicrosoft.com header.i=@gridsystems.onmicrosoft.com header.b="HAa7AdV1";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fbD+QMM7wY2Lj7hlmPcfw+epwj48R3LogacpHdr3GUJSH39+RVtXgi50QXwlUNFfVddDF5jjREC08gZkMUeKOuYSg+LuAVU7HzO2zxX/VNcmM0KQCNPOhrRQHwoMBGvaGoigMM1+mTEjh72YJmEXWlqRLGmu/Cg2N4GSlLLXZlpfA43RX9RlSGLUMawA6IF1pE+BIy/qwoL6q/ubBKCHdVpaRGKQuZOOPtXmfs3JW0mbdme0shK55XmcztoTL001rINKHY4QmPU4HTgDpieBqoJ2n6MyXn6R8HIKdhI1Q7Dq4IiInz4ROV3c0qCKxVEGLKhBfniKWoilcj6tuacWoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G+/E91cUPyklvKD/Cy8nf3FOxy6Y9ZUrU/Oy1iE3M+0=;
 b=dH3IuJKPjOlItjFMynOjwSCOfnx2L3P1/jJwq6AyuN0/BHH1UICaqSyjwrSS6Xrn4CpuogRvxWYsP+n4DV/kOlTyjNRvWiFSeC/2iavhCzlVB21N8Qm5nbLfpCfNRcdDNIGwU0Bdkob6vF4wD1cG/DzAeyLhHEhqxmzTMCl08k13wOHMT8L+vc52eBTYV0G+sQwtEF3e/yx9Ydcx/bUjjYLD0Lmfm+5V5sUd2mfQgddgR24CCRlOHAZJGMj4GRQkObVfmxCWNi1UuIVI7UK5wAWtvxc8qk+QW7G/uyaduGBTEvipw2verr4wOQlj5OVeNmyB5NCjyrKwVpGMq2MvSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=girdsystems.com; dmarc=pass action=none
 header.from=girdsystems.com; dkim=pass header.d=girdsystems.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gridsystems.onmicrosoft.com; s=selector2-gridsystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G+/E91cUPyklvKD/Cy8nf3FOxy6Y9ZUrU/Oy1iE3M+0=;
 b=HAa7AdV1QGnSCSSXfV2/zRJEZJtuOctJLuVoOCVBB387dSR3MMkbpvAUuVkoxO8oHKaKzLwvEyM3cO91eaj/xulZarp6/78m2u4c0veVUGuE5303dRymCRM4olD0IBcvKGoL2Z3V3fgwgCggoNF9Z6dk6Xw5bn6j+FpuOEXLY6TE65iYvHL/TQ674NL7sCs41SZ/D7xTK8tWoWpM8GlpKLl1wMoFIzPlapI96SBNTbuymtanDOSMe9ajJCnWT91mDY5YL077y91oc3ExrrUm5shet5UZMf9JdVAT17adU7lAi8RXoDJsNmm0V2od3QwEt5RcUYPaUVjKaRqNV/BKzg==
Received: from DM8PR09MB6663.namprd09.prod.outlook.com (2603:10b6:5:2e0::16)
 by PH0PR09MB10479.namprd09.prod.outlook.com (2603:10b6:510:2c0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.8; Wed, 31 Jan
 2024 16:55:35 +0000
Received: from DM8PR09MB6663.namprd09.prod.outlook.com
 ([fe80::9509:9f9c:2f2b:c2b6]) by DM8PR09MB6663.namprd09.prod.outlook.com
 ([fe80::9509:9f9c:2f2b:c2b6%4]) with mapi id 15.20.7249.024; Wed, 31 Jan 2024
 16:55:35 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B210 FX3 ready 
Thread-Index: AQHaU6PLMBPki0MWpEGheyS9XqRY2A==
Date: Wed, 31 Jan 2024 16:55:35 +0000
Message-ID: 
 <DM8PR09MB6663BF1386DE2F247096B30EC17D2@DM8PR09MB6663.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=girdsystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR09MB6663:EE_|PH0PR09MB10479:EE_
x-ms-office365-filtering-correlation-id: 288e0bf5-2170-4c02-f13b-08dc227d7197
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CJC73hJBhvjg0Mct3PV8Z0LCApccV9x3MLtSgTGmOrhllX5mUO4KoS9Zh9hOA1LFLEOlh/tpL3H16FdFYxvwfzL12lO1gmzCXR/Yj2NOWBRLmsmocHo2q6J/KSDMf0Pm2SkG+8Mn1lqo2orKjMKIqFGvPbGD2uWvCDITyRopwjwNX+aNg4vYoup1QvzezK3vtS3Q3HwtYli/78FsQ0TJoDqymUdRS5fK9F4H2gwrhVkTB5G32Bx3iLl3Q28TXGqQYXkfPgjB0SZy263FIF0jUa5avTLj4Us7m2gqgX1yVnXLefmKxQIlvB/DpUnYy+WZqiVE/ABjWmQuizpEuKcgmS+FreYytviaKrYeAfXN0hxY7iOe70G8DDI2zJLNKyVbTNZMMWpfPmyIWzwyVNpvU5Gsb7C9KygaGRn8/DV0P5FFY4V6Oq533DyVrJWDuD9vtvcEAnzdu4Br0lNB+/ul/6rwRhLW+hvnTEIl9vefGpb5bKICT4XxgdhuSfa5GPyQIMSVMyYIj4M6PiqT6KRXzPkGjJD/ykW1gsJQLUNkSPgKYOWILOHdVJ2SlnGkYr2rWoxtKoga7nMR3XfrgtipZKwPdEimER2vaNNOEVIiphhEN6PFsg1d6u1SnuArJc0J
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR09MB6663.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39830400003)(366004)(396003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(4743002)(55016003)(19627405001)(26005)(41320700001)(41300700001)(66476007)(38070700009)(64756008)(6916009)(66446008)(71200400001)(508600001)(7696005)(6506007)(9686003)(83380400001)(38100700002)(66556008)(122000001)(66946007)(5660300002)(33656002)(2906002)(86362001)(76116006)(91956017)(8676002)(8936002)(52536014)(7116003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?U0MvkdBFzRQEmA91NIIDUYRTLElbfg5DYZA1cQQqkkfEeOKKnU4ymMXjpH?=
 =?iso-8859-1?Q?jIGTvicwcLK/bRjBqPy1OKFPg6r++1XA9CxCRTECwRb1e+V/IeQJajxqGa?=
 =?iso-8859-1?Q?MGJ/XG0OlmIpAlW3XQu7WgVn58GNUQmUUdqdMiO5TQXzbNenqxgwiCD7Th?=
 =?iso-8859-1?Q?IUoFLf0i5a6etXPEVbmIj8HIXt0QiGgmTSKh8+MT5PCy5Odev9DGQ6b2H6?=
 =?iso-8859-1?Q?kdtSlLbosky/zopwmdb6UqQ8grJHftPMEshhV+uTtG18KihBPe88U8Ehww?=
 =?iso-8859-1?Q?AKPmy2M8VjaZEnPGaiqthuuNEgMaNqXZV1lgOaupZ7AOw3nTneiB/keYiu?=
 =?iso-8859-1?Q?SjnbJrHdUOERwjrGqmcU2AQp7DB5ZK42XI6lJUW1lbCiaSDH3VkMq50pwD?=
 =?iso-8859-1?Q?69IqCl8HsofRyyuPrmakGKv3WN+CYoHVSFlycBRK8eBokx4uQMcIBpzHza?=
 =?iso-8859-1?Q?gSsQyIYDG0HaqJnpjO+QPBKPwtYllgpBwa9EGi+wFKgQFNMFq3g1kMAxTc?=
 =?iso-8859-1?Q?YEYFGpcQA6OGW+xj/LDD072cw2ewbo4vEQw3me/J2clxqsxBMblk8IV6je?=
 =?iso-8859-1?Q?gn91tK6KaJAZ4pzhXK2Fos2ylyCTyxmdn98TTOMWguER2GLMZnpWlFR/sE?=
 =?iso-8859-1?Q?fv8V15TjlO65KKz6R7wyoon6eZQFA1jNvLBNe50ZDVGGm8kWryMuCObr12?=
 =?iso-8859-1?Q?OEyy0fSAkENkGDTIT3OQJG65tXlyUjiyCJZ5Hmi+MtoJMWNzkAtSkubqEg?=
 =?iso-8859-1?Q?Pv8FdyUECRXvEcxTTj6XSU0PdHO9gdAb0EpBph1ui7tTmMc7E0E9WhA8yU?=
 =?iso-8859-1?Q?AdyA8jP57BlarC7OHdhung/Eo5KIWhrk6bH3eyBY6xDl0VTgUY3WBe2Srv?=
 =?iso-8859-1?Q?K+nTddG/OJjuFC9c1NGen8vDB4Zu6GNaapivq1678ZBBIKNaDQhcHqewqv?=
 =?iso-8859-1?Q?EQW1mN3zVHtKm70RLJcHhqGX/UNc+zAIwza92roFzDPji1KOOc4qnWbbo4?=
 =?iso-8859-1?Q?9pUpqTu/YbO79ExPAkPcRCdMeqW9BryNRQS48ZUoxeMD6ixZUyGwiNj8bV?=
 =?iso-8859-1?Q?v8EKmbw/tynsvI35s6SWQPvLpO23PrRoc3gyZtlO6l4P6EjXBbre2LrgVg?=
 =?iso-8859-1?Q?lMPqPxW8SvJ7EAhpPBRc9crp7SA2Z/k8ahlYFJYBZxpwKOAMXBezGDNO61?=
 =?iso-8859-1?Q?lBDXeFrUeJbBMuVYleoKdlJZKnLN4oMD9gx8bT3vrKUQQzPNcFRh+qQkyc?=
 =?iso-8859-1?Q?n1fxda8vXD4NwqwLjvaIMc6gFU/CXYz09lA64pJeCsNfc5D0ZTDefpHggp?=
 =?iso-8859-1?Q?Ud/S4LfSvAoPG2l+eJbk8RGX7jx+f8434PmLs+xm4RKb97YbUPRVpRcP8s?=
 =?iso-8859-1?Q?24NBb/JkanU6CTK1JV12AhW52bPhR6GdXgl1G0N4Jdz7RjfqZHhuwqYXuf?=
 =?iso-8859-1?Q?rtpe0rMJbchVnjX2APKaJtVvTDIoi98EvS3LWT569D1mCyrtB8raPZ5JyA?=
 =?iso-8859-1?Q?kF6Jijr2QxgrbxdDuPICtw6J7bVAYQW+1fa/O8TYcytgqSrVcJ9XbE/272?=
 =?iso-8859-1?Q?aDFi/oqd+tgp3T+JKgv9odilQT4N5ZTS32geqRq0qITSXEZM9nguA//lNf?=
 =?iso-8859-1?Q?y+9hOh+VZ1Vj6tXybQiabQX8KR6lf/5ZQI?=
MIME-Version: 1.0
X-OriginatorOrg: girdsystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR09MB6663.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 288e0bf5-2170-4c02-f13b-08dc227d7197
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 16:55:35.1782
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3201e397-4bc1-4c3f-b91f-5f2b588311f4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR09MB10479
Message-ID-Hash: QM27QPRXS7HK6ZTHVVFGATN2VMS3JWRT
X-Message-ID-Hash: QM27QPRXS7HK6ZTHVVFGATN2VMS3JWRT
X-MailFrom: jgolusky@girdsystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 FX3 ready 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3TDJ6COADEUHFV7ADI5Z6VX3NOKHP7RR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: John Golusky via USRP-users <usrp-users@lists.ettus.com>
Reply-To: John Golusky <jgolusky@girdsystems.com>
Content-Type: multipart/mixed; boundary="===============2983535280192712117=="

--===============2983535280192712117==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM8PR09MB6663BF1386DE2F247096B30EC17D2DM8PR09MB6663namp_"

--_000_DM8PR09MB6663BF1386DE2F247096B30EC17D2DM8PR09MB6663namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Running the benchmark_rate example code on the B210 radio and only requesti=
ng receive samples the FX3 DMA buffer ready signal for the receive data de-=
asserts for <1us after each packet is written to the FX3. This is expected =
behavior according the documentation for the Cypress FX3 USB3 chip. The pro=
blem I noticed is that when running the same benchmark_rate test with the a=
ddition of the random option that the FX3 DMA buffer ready signal can de-as=
sert for more than a ms. The benchmark_rate test without the random option =
requests maximum sized packets whereas the random option requests a random =
number of samples up to the maximum sized packet for each requested receive=
 packet. I have tried changing the FX3 DMA buffer size as well as the numbe=
r of DMA buffers, but haven't found any settings in the FX3 firmware to res=
olve this issue. I would be interested to know if anyone else has experienc=
ed this behavior or any ideas to resolve it would be appreciated.
This is running with the latest uhd version 4.6 for the host, fx3 firmware =
and FPGA design.

Regards,
John


--_000_DM8PR09MB6663BF1386DE2F247096B30EC17D2DM8PR09MB6663namp_
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
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
1pt; color: rgb(0, 0, 0);">Running the benchmark_rate example code on the B=
210 radio and only requesting receive
 samples the FX3 DMA buffer ready signal for the receive data de-asserts fo=
r &lt;1us after each packet is written to the FX3. This is expected behavio=
r according the documentation for the Cypress FX3 USB3 chip. The problem I =
noticed is that when running the same
 benchmark_rate test with the addition of the random option that the FX3 DM=
A buffer ready signal can de-assert for more than a ms. The benchmark_rate =
test without the random option requests maximum sized packets whereas the r=
andom option requests a random number
 of samples up to the maximum sized packet for each requested receive packe=
t.&nbsp;I have tried changing the FX3 DMA buffer size as well as the number=
 of DMA buffers, but haven't found any settings in the FX3 firmware to reso=
lve this issue. I would be interested
 to know if anyone else has experienced this behavior or any ideas to resol=
ve it would be appreciated.</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
1pt; color: rgb(0, 0, 0);">This is running with the latest uhd version 4.6 =
for the host, fx3 firmware and FPGA
 design.</span></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
John</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_DM8PR09MB6663BF1386DE2F247096B30EC17D2DM8PR09MB6663namp_--

--===============2983535280192712117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2983535280192712117==--
