Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAA694A938
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2024 15:59:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E56F7381410
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2024 09:59:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723039143; bh=F3UIHF1dNGqdE0JW5TGJiP7wVNRSh/Kz1D+1xf/EciI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gBCyH0QGlA8sxlQuCG2C4pe8rH83oom2l9KKYqSY2WqBJFMoDTN1T2ZYx0SLwwiVe
	 OlredxL6JGZemsGZO+DPRItrqvRdwySWBESu16SOfeq2ydB+HG+Dd0uCBq7kJyye4C
	 nPDDxS7kRMNNirPXsFnmmWZQ+2zzBMaCGOr57MAJnS04hRmHuskt9wXodRWqtV8H0c
	 2Jvwi5N3mf3Jp/WpUH2S4wInv6CBnsX/yTMFXBIPsnCT+l0n86ANPUpH5xpl1Q/Y2l
	 e1B8dFHf6Ps+yPezCgA/sMCaeA8sfihJW2lBTuxRyyirM2stpf2yNs/FAh8/1xfkUa
	 mSF4ZIejBC0uQ==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2081.outbound.protection.outlook.com [40.107.94.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D9C4381097
	for <usrp-users@lists.ettus.com>; Wed,  7 Aug 2024 09:58:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="W5eL80cc";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R8anC41XXSCxejEIUswrlvzZuOVnmsGOm/LMcPm598kAf+7y0qKewaMIXYuV7Dd+2i6Z9VV6OSo+6Sacw5TUWrXt5pMLEwji9YpTPArCRPDKC9Z1T3Wx5iwituAGibAHuDc3rTJ4X6q/GNRrz+chYH1RyVlLmuY2eXoxO9Q5WcI/UpMhJ9MM0f6hVxWfFAbLYD6+/8OcCuTUK/XXXLBdAK/l8Xovf38N+9ebOFKhDEw+wigotZHxF+UwbrE6Cet78pdhd7huOeN/2DlTsU84K0lA2B6o0ffBdoCgkHGa1aiXooNZxClz2aCDb0/EgCIkD1TH14VyW1F2ggbAix+sSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJE4fCqQm2zLfoptjWQ1+Sc8+ExxuQvaVxl2y6ohraI=;
 b=u392Zn0gcMzUN0tIGllWoIeD8ylPCFuZ7Mabv2hehUiPMrYgECaSuzwfcopSaTIdHJO+dAvmNVctRS3Z1uo6TouRkExxZ/ElwZwJBoYsWnHPUUHBhZIndp75/vGsUYiRm4MJrxOhB3Fx406/vZX6NhTibHgRliXHQuQI1YccXCZGrXDdkhB2oNm4Dj0ij1Pn4oT8iId5/RikW9JBD9TJTlCjcAcr0+Y8GHX2hiSZHsOhZNoQ8l/C5zBluCXKhin0vRnUk9GG2KDjwaklT5dKQ+dVWAxG7RUloOYTFVbqxUDKDm1gpm8E4AZ5V3i8iG6ykXFiP9aehUKOicmZfUfGjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJE4fCqQm2zLfoptjWQ1+Sc8+ExxuQvaVxl2y6ohraI=;
 b=W5eL80ccOmy1qTdcYxGlJ0hdXlabp33++P6WMBnaaJgijTP5aMdnyUC1E0sVhBvdne8aXkGhUHZGzSB78PF8S6AqkvCiaMMJVOdlaOowNd4qn/qj7JQQkkyIY8mpdHJtUokhpHnKhPD3ccGJtNflqB81imZT0+VfQBLnHvRILfA=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by PH0PR04MB8295.namprd04.prod.outlook.com (2603:10b6:510:10a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.13; Wed, 7 Aug
 2024 13:58:52 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::e1af:c5e8:238b:f56d]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::e1af:c5e8:238b:f56d%7]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 13:58:52 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>, "Panuski, Patrick"
	<patrick.panuski@str.us>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: X440 Tx and Rx Power Constraints
Thread-Index: AdriiEO92bxfVU67TCOmm+FBO9U7+ABsodMQALjj5rAAa5aycA==
Date: Wed, 7 Aug 2024 13:58:52 +0000
Message-ID: 
 <PH0PR04MB8311C710CF8AE30CA02DE9F9F3B82@PH0PR04MB8311.namprd04.prod.outlook.com>
References: <ec3aae17e9b346ec9ad87e62dc19f5ab@hhi.fraunhofer.de>
 <BN0P110MB101423D7A04A6F86EC58045E84B2A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
 <d16672fea2ee4379a73b9e5d1520bc2e@hhi.fraunhofer.de>
In-Reply-To: <d16672fea2ee4379a73b9e5d1520bc2e@hhi.fraunhofer.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=cb3f995c-3a0f-4d07-a0eb-17e6ab0299bc;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2024-08-07T13:21:44Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|PH0PR04MB8295:EE_
x-ms-office365-filtering-correlation-id: 4a2e38c8-7ad3-447a-a5e7-08dcb6e911c7
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?e8YBSZt6s+kiBbQZ4n8O9sZ4BuLjFFdiqGNTfvMrmqFMZ/DpoiaMfFhirbhG?=
 =?us-ascii?Q?O3jO3A5f5P2HgiSUmISW8OnKFkUEG4D8jBkXdattKaWogSM1i9S0nFJ1hMFu?=
 =?us-ascii?Q?OB5lJCEp1Pws+MD0eXip9DloCkHNLeqOXGlZgXOK8NPcw1LX8JsrKqnQwRp8?=
 =?us-ascii?Q?v1+iDyHhNfsfsAaXsknCvMKaOqsTiR/vR0fgSjHwJH15GlWhX0LMKKwpMcOQ?=
 =?us-ascii?Q?ew9sqRgu+Zkf0BLSKLQq/D4E0E1Lc34fdS0khI9iUU7IAzrklgCp35vPOLlM?=
 =?us-ascii?Q?/Uacf9/+pQ79VTXo2RFfZSoJWPe4moYz1W903dN0uj9dCdck7OuYCDcTR4Bk?=
 =?us-ascii?Q?pT5o+zhlMDLR5r33mW/1FmUgfuLFftqWLAf4cDtWJv/hJlb/PF4/6tyeWqSw?=
 =?us-ascii?Q?KM8yZ94bYQCHzyqSKk37SXJBlGuRD9UZvwbm9a0OZNpD4OwicONSAZji7arr?=
 =?us-ascii?Q?t3h9WG6jYcOJ1Xqg+PdeltYWkYfs74jVjeicXxC3MiAd6EoRa7eycgr9zHrZ?=
 =?us-ascii?Q?N7gTVcGDbyBZCK+3edx7BDocFqmA43gbAUq4fksIYnGIfEYdJx0dgf0VoFKh?=
 =?us-ascii?Q?hzSBeFcObMJ6QIZE5Ka03IsEhnWFguMpqQ+iIMnnSjgiSaaziwknGEIxzlRc?=
 =?us-ascii?Q?9RegMepBLYWNh9t3SYm2xNOd9agXEkY1Pu10Xabe1DJc6OjNAa8o4cA6l665?=
 =?us-ascii?Q?EFwkeU7nDQxHAJW31kjnebPyObqOMkeOvhtdpYA7bXt4255aGpBTrc8FL7P8?=
 =?us-ascii?Q?pp0//CvudsapwA1QZjrEPULA9ShweiZIIIuCql0Bww6ZAFWUPHH0wEup2p31?=
 =?us-ascii?Q?EjQJ8LerUi06icGkLbqahWXaF1oefH0Hupxl7V3Joi4/EAJj4NLkFn6YEy9b?=
 =?us-ascii?Q?2zxaEXApOPF4FZ3vT62hwM8aqp6Bn3owxN8SxfJOA60r6YZyOe1FEfAVopav?=
 =?us-ascii?Q?QbhSH10A3Azo2yeDsbV51gIcPdDp33oETEPxke8f+4YQA9ci/SoBevtiNqEa?=
 =?us-ascii?Q?Q2qywV31VpzBo0c1MwNPAd33nDWdXunvY1/UjSKxRnaMzy0b9iI+ooGykKdc?=
 =?us-ascii?Q?YyZkPM57eVsNgZb1duOT8Lntkpl9Xk8krxBRXZoPZk4ldtZtheb4+d5kPYyz?=
 =?us-ascii?Q?rAENEI7BKe3ntTHSVKxX2sztN4O29gBJ2KZGo8SMeN/NHPGeV3E+EpTsmHmt?=
 =?us-ascii?Q?f1Z2xe/mds/wm7t8kQTZL/oNfO8kixCVCjHCt/GmucePCqUnjDJ0KvckSweT?=
 =?us-ascii?Q?SmEMJagaXcdwkZ/DALWsTtREieP3x0Ldx7yZaWEN+AjGOJ+BjzK2JFo3jTmE?=
 =?us-ascii?Q?lWjXE9sXjP3lwqjqF8i2Ci6KtIIgUFubolLQ1ZA6HRZ7zP1GencdxWQtjn+T?=
 =?us-ascii?Q?0LrBAC8=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?a7MLnF4IAZZ1TjfWu+SvOd6AtFgueDQX6EfFd8nX4+mDzz84KPXrb9XMQlA9?=
 =?us-ascii?Q?jQahaKmcXZWTWDcwd6WywYAKFv+54SfO55J0OH1b8Ytu6I3X7CQaqP0CgXC/?=
 =?us-ascii?Q?jkrVY+P1XAfPsUID6+XxcICrzjeslmZaLpG2tGmRx2NuZiJ5vcQN0iKIq4g0?=
 =?us-ascii?Q?HIVQa45QtXXahXESrZ/fhxc6CECE1BlgtwXhOBv0zXvocmaVnGGug2N+CvwT?=
 =?us-ascii?Q?of6J8kvzyYkL8uFmK4l67bKk6h5Ex+4sdHupIYNFRAPA7cntusYOMI2IbyAY?=
 =?us-ascii?Q?N2fxZIQ+ODyd44Zeu3SUFIXlQK36grRXi64rc3xTk9EbkspsogiHB1mfXRRw?=
 =?us-ascii?Q?xGrLwmKubMkoeKsOdZyeDCbUJ1Zyuu06ScfYOdILbyGQ7qYL3wWlmxVlXYzU?=
 =?us-ascii?Q?zVf6bKgNouRk5p5x4vco8kFpKFanVSczUN1llWflntQ28shAruLQ9eXjZGex?=
 =?us-ascii?Q?G8MqfV/22SBMbPS4KjfkSMQEY+ySeAJujrPjGiTzKQKPsU1Jym5jxt7a33Bc?=
 =?us-ascii?Q?+vbaTlJDEvSp2TWsqVhVvd/YWSEDmHxetnNicZVGhyV6wsiOgHDFu3QzA74e?=
 =?us-ascii?Q?Ju007zLTAwjD049Kg7oigtf+VystoVwxh4culfOWE0SR8E41Cx3DDdgDd70C?=
 =?us-ascii?Q?VySyCo9R59J5GK2ciftk5RRPjRS6XvCFJYYSItIBKVUZixui+EjRHBpRsiYL?=
 =?us-ascii?Q?AiuEhxpzTYSWhv4omBOOf8hjC8l0dEY7FTuAeVxhKR8BgTg7AO2SUJq5y/hz?=
 =?us-ascii?Q?H6153jekdxzbbUUtjvQIpAPMelKZpvR+Fl2elHuUA1aziaXRaE8ew/MXbp2T?=
 =?us-ascii?Q?GtgOBJty7xkIssCcCXdg/UpVf8hKEpunQbQv07OLqV5djVtA95btE1MEXGCg?=
 =?us-ascii?Q?ss4BapricV/zLCruPaMUlt5RNSrM8eUKiFHiEMPi4mRFSfW+VUlfGQ6ggMpk?=
 =?us-ascii?Q?5LjtIj0lZimeIaRODUwAV+0HiZE83ZBNPQ6oNCoSHN9fgrpNRnbVwr91NXYb?=
 =?us-ascii?Q?1PRqpykzOvqb9xeIr8AzDoypvuzF6bJOgEsMfS3gNfCcq7g0uU8oq6kdeAGU?=
 =?us-ascii?Q?eOTXzqJB8p+U/CLH+5Qtd+lb4v3KdiYnTSh8eaDjVifZIJCechIN/qKSt8ol?=
 =?us-ascii?Q?41Xhc2/V5hEcmj/u7ca4hD1Tp/vJSH4xv0diV4hgHRTWjLoewLm10StnC859?=
 =?us-ascii?Q?eAuHo+xKOLiBHcakJxIdHw09yoQl+89pBY/dUhMwhG6x60YURvl3+MF2vCDv?=
 =?us-ascii?Q?NGxdLIdk5Kq3hiujri5VzvZ1GZUmEs//xhTt9dV3D/3fi//qWlsUcQY2zxS7?=
 =?us-ascii?Q?mVIEAygikHsSlMWpXYZSu19eGAchCDRttDSpd1QDAGagmaLqOamKlaF4lKsY?=
 =?us-ascii?Q?hek4nMuwf0Gg9HDEj6P3wkFe57086Qctys2oDOumIbIiOfb0ao8Y87xFGpr8?=
 =?us-ascii?Q?Nx72JAjSmpTK7bbLeD/q56JO7+tLM1LAQCLZl0hnjVmhBtjWqkabLlQASVkT?=
 =?us-ascii?Q?RmYsxGTkClTPic+aUayTmxaRdbQIKS2o3nyAOqYGZ9Qa/6XNQ8mP859Fii4M?=
 =?us-ascii?Q?GYUbz8Aw7tMZV/Eujk4MLPGCbN6FVnKbrCyBJ6bp?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a2e38c8-7ad3-447a-a5e7-08dcb6e911c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2024 13:58:52.1173
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fAGLcCUlRqsyRTPIgCRhFLlTUUrKJECmi6U0HAFtuTNjbzxDDKfyD0hKp+o9FX38HpFS/zbOiKlR/ILPyVoe/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB8295
Message-ID-Hash: RKCM2LVL7EWZYMKE3RSZCLGB4VIX7MBG
X-Message-ID-Hash: RKCM2LVL7EWZYMKE3RSZCLGB4VIX7MBG
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Tx and Rx Power Constraints
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NG7YPFIBL7HT4ZIFZ73XUU4YBUMHZZUR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6679075739099494212=="

--===============6679075739099494212==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB8311C710CF8AE30CA02DE9F9F3B82PH0PR04MB8311namp_"

--_000_PH0PR04MB8311C710CF8AE30CA02DE9F9F3B82PH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Altug, hi Patrick,

The explanations by Patrick make sense to me. The MMPX connectors were requ=
ired to fit the available space, although they may not be as rigid as the S=
MAs unfortunately.

The power question is as follows: To use the full amplitude in the tx_wavef=
orms example you need to pass an amplitude value of sqrt(2), so roundabout =
1.4142. This should get you closer to our numbers. The FPGA image should no=
t make a difference when using the same rates.

For the KB article you're right and I just updated it. Most of our USRPs ar=
e safe if you put the attenuator between TX and RX, but the X440 should not=
 be able to destroy itself even without this.

/Martin

From: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>
Sent: Monday, August 5, 2024 12:40 PM
To: Panuski, Patrick <patrick.panuski@str.us>; usrp-users@lists.ettus.com
Subject: [USRP-users] Re: X440 Tx and Rx Power Constraints

Hi Patrick,

Thank you for your detailed answer based on your experience. Please find my=
 last, and probably the final, findings about this topic.


  1.  I checked the MMPX connection once again. It is definitely not the be=
st type of connector if your setup consists of SMA-type attenuators/analog =
filters. They might bend the MMPX-to-SMA cable around and cause lose connec=
tions, you are right. In addition, the MCR was set to 368.64 MHz in order t=
o set a converter rate of 2.94912 MHz. Furthermore, instead of measuring th=
e power of the constant wave at 500 MHz with a marker of the spectrum analy=
zer, I started to use a Power Meter from Rohde & Schwarz to consider the co=
ntribution of aliases due to having a RF Sampling device. Moreover, I used =
two different X440's and their 2 possible Tx ports (4 ports in total due to=
 CG_1600 image) to eliminate port specific problems.

Unfortunately, I still measure around -5.2 dBm instead of around -2 dBm dBm=
 (according to this graph given for 2.94912 GSps https://www.ni.com/docs/de=
-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DFigure%202.%20TX=
%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94912%20GSps%20Conver=
ter%20Rate%2C%200%20Hz%20Waveform%20Frequency). Apparently, I have to live =
with the current status of this setup.


  1.  I agree. An update on the knowledge base page (https://kb.ettus.com/U=
SRP_X410/X440_Getting_Started_Guide#:~:text=3DX440%3A%20Always%20use%20at%2=
0least%2030dB%20attenuation%20if%20operating%20in%20loopback%20configuratio=
n) can certainly clear this confusion.

From: Panuski, Patrick <patrick.panuski@str.us<mailto:patrick.panuski@str.u=
s>>
Sent: Thursday, August 1, 2024 8:31 PM
To: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraunho=
fer.de>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: RE: X440 Tx and Rx Power Constraints

Hi Altug,


  1.  Have you tried setting your converter rate to 2.94912 GHz and compari=
ng to the Ettus graph to get an apples-to-apples comparison?  Also in my ex=
perience, a weak MMPX connection can cause at least a 3dB loss... You can s=
ometimes see the observed Tx power jump around when you wiggle or adjust th=
e connectors. My X440 currently has one transmit channel that transmits abo=
ut 3 dB less power than the others, and I think I've narrowed this down to =
the particular MMPX connector on that channel being weak/faulty. I'd sugges=
t trying a different cable and also testing transmission on other channels,=
 but overall I wouldn't be surprised if the different clock rate was having=
 an effect here.
  2.  On the X440, you're probably okay directly connecting Tx to Rx. I thi=
nk the 30 dB attenuator recommendation is left over from older USRP devices=
 and is less applicable to the X440 architecture. The older USRPs had separ=
ate RF front ends with amplifiers on the transmit side and LNAs on the rece=
ive side that could be individually controlled in software, so it was possi=
ble to set transmit/receive gains too high for a loopback configuration and=
 the device could damage itself. With a 30 dB attenuator, virtually no soft=
ware settings could make the device damage itself in a loopback configurati=
on. However on the X440, the entire front end is integrated into the RFSoC =
and the daughter card is now just a passthrough. This means that your UHD p=
rogram cannot change amplifiers and gains so the max transmit power will be=
 capped in hardware around 0 dBm which is significantly below the sustained=
 Rx damage threshold.
  3.  Disclaimer: I'm not an expert here, just a user

Thanks,
Patrick

From: Kaya, Altug <altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraun=
hofer.de>>
Sent: Wednesday, July 31, 2024 5:57 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] X440 Tx and Rx Power Constraints

*** WARNING: This message originates from outside the STR organization. ***
*** Please take appropriate care in opening any links or attachments. ***

Dear USRP Mailing List Members,

I have two questions regarding power constraints of X440:


  1.  I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps.  I used an UHD example call=
ed "tx_waveforms" to verify the maximum output power. To compare the result=
s with the specification sheet, a constant ('CONST') wave of 500 MHz freque=
ncy with an amplitude of 1 is used. While expecting a single tone whose pow=
er is around -2 dBm (according to this graph given for 2.94912 GSps https:/=
/www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=
=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94=
912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency), it is ar=
ound -5 dBm. Does the output power vary that much between the converter rat=
es of 2.94912 GSps and 2.88 GSps?



  1.  I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10 dBm. This is further elaborated down to=
 the operational frequency in this webpage (https://www.ni.com/docs/de-DE/b=
undle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DMaximum%20input%20pow=
er%2C%20damage%20level). On the other hand, in the loop back configuration,=
 >30dB attenuation between ports were recommended.


What is the difference between connecting the Tx port of one X440 to the Rx=
 port of another X440 and connecting Tx&Rx ports of different daughter boar=
ds of the same X440? Why does the maximum receiver power requirement change=
? The maximum one can transmit from a Tx port of X440 is 0 dBm. According t=
o my understanding, it should be safe to connect Tx and Rx ports (of either=
 same or different X440s) to each other as long as I am working with a cons=
tant waveform with a PAPR of 0 dB.

I am grateful for your time and effort. If anything is unclear and you are =
willing to help, I can provide further details.

Best regards,
Altug KAYA


National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Directors): Sa=
brina Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Registered Offi=
ce): Dresden; HRB (Commercial Register No.): 22081; Registergericht (Regist=
ration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB8311C710CF8AE30CA02DE9F9F3B82PH0PR04MB8311namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:420183726;
	mso-list-type:hybrid;
	mso-list-template-ids:-1053519324 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:776415424;
	mso-list-type:hybrid;
	mso-list-template-ids:-1446986388 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:2070299612;
	mso-list-type:hybrid;
	mso-list-template-ids:853935170 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Aptos&quot;,sans-se=
rif;mso-fareast-language:EN-US">Hi Altug, hi Patrick,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Aptos&quot;,sans-se=
rif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US">The explanations by Patrick =
make sense to me. The MMPX connectors were required to fit the available sp=
ace, although they may not be as rigid as the SMAs
 unfortunately. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US">The power question is as fol=
lows: To use the full amplitude in the tx_waveforms example you need to pas=
s an amplitude value of sqrt(2), so roundabout 1.4142.
 This should get you closer to our numbers. The FPGA image should not make =
a difference when using the same rates.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US">For the KB article you&#8217=
;re right and I just updated it. Most of our USRPs are safe if you put the =
attenuator between TX and RX, but the X440 should not
 be able to destroy itself even without this.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US">/Martin<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Apto=
s&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Kaya, Altug &lt;altug.kaya@hhi.fraunhofer.de&gt;
<br>
<b>Sent:</b> Monday, August 5, 2024 12:40 PM<br>
<b>To:</b> Panuski, Patrick &lt;patrick.panuski@str.us&gt;; usrp-users@list=
s.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: X440 Tx and Rx Power Constraints<o:p></o:p=
></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Patrick,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you for your detailed ans=
wer based on your experience. Please find my last, and probably the final, =
findings about this topic.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1"><span lang=3D"EN-US">I checked the MMPX connection once again. It is =
definitely not the best type of connector if your setup consists of SMA-typ=
e attenuators/analog filters. They might
 bend the MMPX-to-SMA cable around and cause lose connections, you are righ=
t. In addition, the MCR was set to 368.64 MHz in order to set a converter r=
ate of 2.94912 MHz. Furthermore, instead of measuring the power of the cons=
tant wave at 500 MHz with a marker
 of the spectrum analyzer, I started to use a Power Meter from Rohde &amp; =
Schwarz to consider the contribution of aliases due to having a RF Sampling=
 device. Moreover, I used two different X440&#8217;s and their 2 possible T=
x ports (4 ports in total due to CG_1600 image)
 to eliminate port specific problems.<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal" style=3D"margin-left:.25in"><span lang=3D"EN-US"><o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span lang=3D"EN-US">Unfo=
rtunately, I still measure around -5.2 dBm instead of around -2 dBm dBm (ac=
cording to this graph given for 2.94912 GSps
<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/=
specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20d=
BFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Fr=
equency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
). Apparently, I have to live with
 the current status of this setup.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.25in"><span lang=3D"EN-US"><o:=
p>&nbsp;</o:p></span></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1"><span lang=3D"EN-US">I agree. An update on the knowledge base page (<=
a href=3D"https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#:~:text=
=3DX440%3A%20Always%20use%20at%20least%2030dB%20attenuation%20if%20operatin=
g%20in%20loopback%20configuration">https://kb.ettus.com/USRP_X410/X440_Gett=
ing_Started_Guide#:~:text=3DX440%3A%20Always%20use%20at%20least%2030dB%20at=
tenuation%20if%20operating%20in%20loopback%20configuration</a>)
 can certainly clear this confusion.<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Panuski, Patrick &lt;<a href=3D"mailto:patrick.panuski@str.us">=
patrick.panuski@str.us</a>&gt;
<br>
<b>Sent:</b> Thursday, August 1, 2024 8:31 PM<br>
<b>To:</b> Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de">=
altug.kaya@hhi.fraunhofer.de</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
<b>Subject:</b> RE: X440 Tx and Rx Power Constraints<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Altug,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo2"><span lang=3D"EN-US">Have you tried setting your converter rate to 2.=
94912 GHz and comparing to the Ettus graph to get an apples-to-apples compa=
rison? &nbsp;Also in my experience, a weak
 MMPX connection can cause at least a 3dB loss&#8230; You can sometimes see=
 the observed Tx power jump around when you wiggle or adjust the connectors=
. My X440 currently has one transmit channel that transmits about 3 dB less=
 power than the others, and I think I&#8217;ve
 narrowed this down to the particular MMPX connector on that channel being =
weak/faulty. I&#8217;d suggest trying a different cable and also testing tr=
ansmission on other channels, but overall I wouldn&#8217;t be surprised if =
the different clock rate was having an effect
 here.<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin=
-left:0in;mso-list:l2 level1 lfo2"><span lang=3D"EN-US">On the X440, you&#8=
217;re probably okay directly connecting Tx to Rx. I think the 30 dB attenu=
ator recommendation is left over from older USRP devices and is less applic=
able
 to the X440 architecture. The older USRPs had separate RF front ends with =
amplifiers on the transmit side and LNAs on the receive side that could be =
individually controlled in software, so it was possible to set transmit/rec=
eive gains too high for a loopback
 configuration and the device could damage itself. With a 30 dB attenuator,=
 virtually no software settings could make the device damage itself in a lo=
opback configuration. However on the X440, the entire front end is integrat=
ed into the RFSoC and the daughter
 card is now just a passthrough. This means that your UHD program cannot ch=
ange amplifiers and gains so the max transmit power will be capped in hardw=
are around 0 dBm which is significantly below the sustained Rx damage thres=
hold.<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-=
left:0in;mso-list:l2 level1 lfo2"><span lang=3D"EN-US">Disclaimer: I&#8217;=
m not an expert here, just a user<o:p></o:p></span></li></ol>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<br>
Patrick <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de"=
>altug.kaya@hhi.fraunhofer.de</a>&gt;
<br>
<b>Sent:</b> Wednesday, July 31, 2024 5:57 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] X440 Tx and Rx Power Constraints<o:p></o:p></s=
pan></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:dotted #003333 1.5pt;padding:2.0pt 2.0pt 2.0pt 2.0pt">
<p class=3D"MsoNormal" style=3D"background:pink"><b><span lang=3D"EN-US" st=
yle=3D"font-size:12.0pt;font-family:&quot;Courier New&quot;;color:black">**=
* WARNING: This message originates from outside the STR organization. ***
<br>
*** Please take appropriate care in opening any links or attachments. ***</=
span></b><span lang=3D"EN-US" style=3D"color:black">
</span><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Dear USRP Mailing List Members,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have two questions regarding =
power constraints of X440:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo3"><span lang=3D"EN-US">I set the master clock rate to 360 MHz and made =
sure that the converter rate becomes 2.88 GSps instead of 1.44 GSps. &nbsp;=
I used an UHD example called &#8220;tx_waveforms&#8221;
 to verify the maximum output power. To compare the results with the specif=
ication sheet, a constant (&#8216;CONST&#8217;) wave of 500 MHz frequency w=
ith an amplitude of 1 is used. While expecting a single tone whose power is=
 around -2 dBm (according to this graph given
 for 2.94912 GSps <a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usr=
p-x440-specs/page/specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%=
20Power%3A%200%20dBFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20=
Hz%20Waveform%20Frequency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
), it is around -5 dBm.
<b>Does the output power vary that much between the converter rates of 2.94=
912 GSps and 2.88 GSps?</b><o:p></o:p></span></li></ol>
<p class=3D"MsoListParagraph"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span>=
</p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo3"><span lang=3D"EN-US">I will use another X440 to capture the single to=
ne (and the aliases due to RF sampling) and analyze the ADC spurs. On the f=
ront panel, maximum receiver input power
 is stated as 10 dBm. This is further elaborated down to the operational fr=
equency in this webpage (<a href=3D"https://www.ni.com/docs/de-DE/bundle/et=
tus-usrp-x440-specs/page/specs.html#:~:text=3DMaximum%20input%20power%2C%20=
damage%20level">https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/=
page/specs.html#:~:text=3DMaximum%20input%20power%2C%20damage%20level</a>).
 On the other hand, in the loop back configuration, &gt;30dB attenuation be=
tween ports were recommended.
<o:p></o:p></span></li></ol>
<p class=3D"MsoListParagraph"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span lang=3D"EN-US">W=
hat is the difference between connecting the Tx port of one X440 to the Rx =
port of another X440 and connecting Tx&amp;Rx ports of different daughter b=
oards of the same X440? Why does the maximum
 receiver power requirement change? </span></b><span lang=3D"EN-US">The max=
imum one can transmit from a Tx port of X440 is 0 dBm. According to my unde=
rstanding, it should be safe to connect Tx and Rx ports (of either same or =
different X440s) to each other as
 long as I am working with a constant waveform with a PAPR of 0 dB.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span lang=3D"EN-US"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am grateful for your time and=
 effort. If anything is unclear and you are willing to help, I can provide =
further details.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Altug KAYA<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctors): Sabrina Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Regis=
tered Office): Dresden; HRB (Commercial Register No.): 22081; Registergeric=
ht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.&nbsp;
</body>
</html>

--_000_PH0PR04MB8311C710CF8AE30CA02DE9F9F3B82PH0PR04MB8311namp_--

--===============6679075739099494212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6679075739099494212==--
