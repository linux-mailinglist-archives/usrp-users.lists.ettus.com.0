Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 797713CBBE7
	for <lists+usrp-users@lfdr.de>; Fri, 16 Jul 2021 20:33:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 128B83841B5
	for <lists+usrp-users@lfdr.de>; Fri, 16 Jul 2021 14:33:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=canyonconsulting.onmicrosoft.com header.i=@canyonconsulting.onmicrosoft.com header.b="L8SkpSUs";
	dkim-atps=neutral
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2075.outbound.protection.outlook.com [40.107.94.75])
	by mm2.emwd.com (Postfix) with ESMTPS id 255B5383CC1
	for <USRP-users@lists.ettus.com>; Fri, 16 Jul 2021 14:33:12 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZS3quFqf8ANpKW0muNXWsaeAiFDo2Ei/EleYIrS2ctkCcnmDX5HNhcNLmoEFB/DDnC5HND7C+6us1DE3BlW3/drp6kDE5LDBX2E9xAv1chDCTy0AVUoCemXmfiTLBFJKhuB5YQzN1lTnzkMpK/qmE+dwXJaM6LEbbFFbG0MwSNUgJ+FLHyi4E3MC/4ZIXX63/xDL/nei9FJK0REWfqE7q1zuQBkTpQp5EZwcdMHn1aT7/Ne6Ed+HG0jCQP9YBaocGCGD+oyHaMcxJVcIcD8fPeULbWS1mSyoS6qgImGqmicVmiy9qF2MxgSN2drcKp8NqiTVjRsQ42z2mXiSb1R9oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RFTHySb3xbo59tnSKEkN+hx3q4/nYA1fy8JKM+SAwwE=;
 b=Sh3c8EjU0Lm/KfN7IPVPgQ5nJmMI2aElVxWiPDBIGg3O19C5oUG2YtvFzA7zB58ZtYk+NINl6LYSA0ehczwk1IQIRqiAOQEBoVhqiXEs+V3S8sY1lrNWua5en3hpNHAlcPylfq72dPGifAQmZnCOGvzdYb267moKF3WCvFY9wC98thE01CEVEtLsGKVngoy873WCNBj5VUtfzZ5NHLv+j76mSztG4WhzH5Wk8Un1sZJWdIqHU/kvkRu4c7ewXmCC01H6VvwzStaotnWyhjHg2aBgGTat1U+oRMJvLG/Wt+mDqfDU6Az/EsEmSvSReXyMGRhKQh1h0UDdG5Xu3JXaWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RFTHySb3xbo59tnSKEkN+hx3q4/nYA1fy8JKM+SAwwE=;
 b=L8SkpSUsYM2rYwWohv+CuhEgDgA4ETbegbxgMC2PE8DJCJDpPE5Av/yWtc5IJNi1a8VX02dLR7LS2NEnd66hfDSr6gT3o5O99iz58r4dH0ICohc5Wdiq7pAGTmrISsJooiEKiijNqd7tsllErIzSRBR+uw/AsHXj1b8a0F4YnAU=
Received: from CO6PR19MB4801.namprd19.prod.outlook.com (2603:10b6:5:341::23)
 by CO6PR19MB4819.namprd19.prod.outlook.com (2603:10b6:5:353::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Fri, 16 Jul
 2021 18:33:10 +0000
Received: from CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::e937:6f45:7891:cdd0]) by CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::e937:6f45:7891:cdd0%2]) with mapi id 15.20.4331.026; Fri, 16 Jul 2021
 18:33:10 +0000
From: Jerrid Plymale <jerrid.plymale@canyon-us.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Setting the TX SPP to reduce underruns
Thread-Index: Add6b+j20jDTqvIqSYaPhiEtL5bVJA==
Date: Fri, 16 Jul 2021 18:33:10 +0000
Message-ID: 
 <CO6PR19MB4801A4FA037924252BDC9DF2C6119@CO6PR19MB4801.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a6fb2df-0e08-4a87-27d5-08d9488829f4
x-ms-traffictypediagnostic: CO6PR19MB4819:
x-microsoft-antispam-prvs: 
 <CO6PR19MB481909D74B621C8D84A43810C6119@CO6PR19MB4819.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 loVzhzUsAqBgCF0Fv3ttviM3K8l3ENt6gTpt8smR1d98qgyOLz9KwYAM8kXkF9x2VAC0l+l0sEWeGE6u+aSk3E/tVzbOg0Dg8+mp7uOcPr7zufSp4AYQJasBsTr1DRasfiRW/6fJa+bWkzeJFNX4KDZn8UfuwWjxy/b5Z9PJ+GiIQJHJm4mUkcbiiXWXq3x2mv7+mE4o50zAcvRP7kmY02Qqwr5/FehXhdekX1jO+Dympg4V1aWl2ybVrMyo8wphpSV0kk9IzuV/mHrUx2tdIRcPIuvf7mv+dqi8/ExmuCd39uN+wvLQmyuJ8Rxfdlzl3SPrX6IfZyi6SF7F39G61tsDD13QY15TESKuq8nsjvcaLX8UQmQpF9Pr2gbJIMC1mkj5fu9xrID9e8Ze2oRoJnaqc3Dq7cxo1q8t8VJgURBD4JqjFB11ihh2nKlFjiE2zvO47jVuD0kyIrfTT9T6QiwCfycRCL7DSa0pYD3bkaOIFSqPiXrto7ZO2CWsN5emlLYL7OkwHUmvpsJOjnWLJPH6AU8+Bldb0hSA8GwDba/pyE56YwJKqI2A3f9jhsfCtXUq9nhWnVoQxIUvHmrw+gDL2GAD6Y0cOaGv729ogPlPL56KGAG6QMFOQoX5EH09K+r4D+TxEnv9u9Pmv08AxevPsywooz9tjSEsHaJjGp6w9+7A/zB/nPnPqkWaDsJX/jOGTObs/wXGJ4eq00smqg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB4801.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39830400003)(366004)(136003)(346002)(396003)(376002)(86362001)(2906002)(7696005)(71200400001)(8936002)(316002)(5660300002)(83380400001)(33656002)(4744005)(66446008)(9686003)(66476007)(44832011)(66556008)(55016002)(52536014)(8676002)(66946007)(26005)(38100700002)(478600001)(64756008)(76116006)(6506007)(186003)(6916009)(122000001)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?rwdCV+GkylTTaiORCBgpHLkypLRVuy2TR+JCWipzCEZg5S/iUIVIXAT1AjtL?=
 =?us-ascii?Q?0Z8MtQ/I2wFF8yBDMINl+QGdOr12btYLW7FN3HgfSxJAdmn2m6aM4Swk2Rx0?=
 =?us-ascii?Q?GpkfQJjEL+zM/3SWsOSAqe85pEoYsXWsOU1srhG0DgOTDaQ8RXK8dSRPAb55?=
 =?us-ascii?Q?rTQLe0EoD2huD1E7rAjeiJ58NrLpG2YRRz2D1KAlYNbaKVMbyxQIVtwTeOxY?=
 =?us-ascii?Q?msflWseSx3P3Jdz13lqAeYcxR8kZ3w6TCshQMEoln62cJGvzTxre/n3tXRI2?=
 =?us-ascii?Q?yxI1SySctIjMrhJKCif8WIhELvxjLzWqMPNldy96KLFK3NNQePBZ6npIhYJC?=
 =?us-ascii?Q?+9LciXeBiR/QI9QxypKnGELtQL6uxiBqgugyN5x1WDiijC71Rm+UzJgXTDZe?=
 =?us-ascii?Q?ic/XwYcD9n1kul6cgVSVRbEmjduXAfIwKxfmFgxcaU8cB6yG0JmjWDXwGfN5?=
 =?us-ascii?Q?HSF3UgOCFftQO0i38C6ANxwh67OprN9AgVf84jUpOoASzLJVzKB3dvIFCz3V?=
 =?us-ascii?Q?zPAtYnYIvyzTP4l1v6naVEm5UWuOebuhi2Mrkt7edwG2pUeKBNsS7YnCkah7?=
 =?us-ascii?Q?xa+9cJKgXWyQU25jNe+Ju9zCbg2IatdV7rVdF6KCJFIw2Xp3+5gkQMg7072C?=
 =?us-ascii?Q?kuQ4/MQ5uPGkfc2HtVDwWgljwm9w/ifA4Uq/8WWwGnOkIEXJ6ACeNpr0Erst?=
 =?us-ascii?Q?tjdUNp1Kk00GEaNZGGFXBOnOeLhacOZpevQQXtIiCPFU0qnKyZpLXYqkieDR?=
 =?us-ascii?Q?E4xsJDmIE+K/3moZa4PTwAZ9imfbW0sShE9xRK///PNfDNKFn+tm2Cdu8Fxc?=
 =?us-ascii?Q?3MSLqnyU3bbaRWSV7GHsnwkAbtyM2jfcC97ApxwWjBCf/BoFdon7BS14or0U?=
 =?us-ascii?Q?gdCx3xeSuYMi9z1r0aGlaYus5+VgeYSDQAOSFZ6TwH6Nb38tvMv1I26Vqjwz?=
 =?us-ascii?Q?Im9pQcSlOySn1yTLO8EoeIb34oICXgKrulsIN47PKE47fBH2TCQlc8E6sibE?=
 =?us-ascii?Q?QMc1vOFvbBj+zoUWCNDG2boHO1yy86qu2WmvuMd+ImwIknjhG9BcR6IFAEiQ?=
 =?us-ascii?Q?n99l++v7gzEn5fqySq+yuOE0CxnxaL+009xXr5oVqjwObA6bvAdkfOHj/NxP?=
 =?us-ascii?Q?fFnF27javeW+e2En1z89O2khCDPGwbpi7R6n6kO4U4v7yNRwWRr1UWzZTqCY?=
 =?us-ascii?Q?bzP4dqPtg46YW6ZkgjjNP7uLcaRVY+vDAlYHhsAV46mcsLgT0tFbPhzQnMWe?=
 =?us-ascii?Q?WPEdyhuzm3Ku04TMtMeQQAvRxNbnbrVduw1mVsl59OKWonaanRQWraAU953X?=
 =?us-ascii?Q?OezxNS7/KAGHT+fyoVrnnxGd?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB4801.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a6fb2df-0e08-4a87-27d5-08d9488829f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2021 18:33:10.5179
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qQvLRUfOTmP2tJEVNObJpcsUq3Fal3KNyOGPqvWnP7AKhseJLSSKs0CTCGgA20BqbiGc6G1NmQBwnv69s7DVItTjTcd9Eb1oq8/H6I+Aw6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR19MB4819
Message-ID-Hash: FMZT6X42IGABBOPHNQGYJ4VBOV2LISFS
X-Message-ID-Hash: FMZT6X42IGABBOPHNQGYJ4VBOV2LISFS
X-MailFrom: jerrid.plymale@canyon-us.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting the TX SPP to reduce underruns
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XE7Y2FE3EFUBW74ZWBD2ZDUTQVWODZZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3558347256582634097=="

--===============3558347256582634097==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR19MB4801A4FA037924252BDC9DF2C6119CO6PR19MB4801namp_"

--_000_CO6PR19MB4801A4FA037924252BDC9DF2C6119CO6PR19MB4801namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Marcus,

Ok, that's what I thought it was. So I tried changing the spp to a few diff=
erent values and have seen no change. I feel like setting the spp in the st=
ream args dropdown in the UHD USRP Sink block is not actually doing anythin=
g, because I'm not seeing a reduction in underruns, which I thought I would=
 see since making similar changes improved how well the benchmark_rate ran =
and reduced underruns at higher sampling rates when running the benchmark_r=
ate.

Any thoughts on this?

Best Regards,
Jerrid

--_000_CO6PR19MB4801A4FA037924252BDC9DF2C6119CO6PR19MB4801namp_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ok, that&#8217;s what I thought it was. So I tried c=
hanging the spp to a few different values and have seen no change. I feel l=
ike setting the spp in the stream args dropdown in the UHD USRP Sink block =
is not actually doing anything, because
 I&#8217;m not seeing a reduction in underruns, which I thought I would see=
 since making similar changes improved how well the benchmark_rate ran and =
reduced underruns at higher sampling rates when running the benchmark_rate.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any thoughts on this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>
</body>
</html>

--_000_CO6PR19MB4801A4FA037924252BDC9DF2C6119CO6PR19MB4801namp_--

--===============3558347256582634097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3558347256582634097==--
