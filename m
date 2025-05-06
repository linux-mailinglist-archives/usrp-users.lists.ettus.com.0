Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59734AAD021
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 23:49:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3154C386371
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 17:49:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746568147; bh=ZI9JKgRiDAgS8h1IcS70OUiVdN7eXEG46ttSwOw2dpI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=b1RDVm9ivxuBtVY3xQZ6N/CFsRuaij0N9IcorwRUWZnFznYEhODZDpub3oNO9X88w
	 3Mz3sLXzsaY8LAfULcqYW+ElbtFYBk386W0SvNESGdYFOG63wbv9XOwy5o10ybf9r+
	 FxYF9OaebaMSCgROXBam9iKLgySEnRnd9apu3Ttxu4Gb5pyDNv0TIqK7kmUj3NQ5Y7
	 Om2uoD2OM1vdWfJvjw3MJBhIE+pmNQv8AOEdGRHL40QAho6ETJXz4Z/HDSQkhLfSpa
	 IGwb+3bbWLxZkN37uYRDw1VfZqfSmAJLyYHxXCfP2/tRzZXOxbvQP1v63Sckvbewv+
	 JfJ3Hw0Xkbi/w==
Received: from MX2.LL.MIT.EDU (mx2.ll.mit.edu [129.55.12.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A37B38614B
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 17:48:11 -0400 (EDT)
Received: from LLEX2019-02.mitll.ad.local (llex2019-02.mitll.ad.local [172.25.4.98] (may be forged))
	by MX2.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 546LjBAp243392
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Tue, 6 May 2025 17:45:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=LWyHj57Br/KeJ1RtfcEcZ7DMhogYILkRdVkTMT/Gsqdo2aCrOgj26y7g+k79VYJZ4GkBCbMYnhrlUdwHETRbtIvyj6JtCspmYaGrKqEnc16qJLAdqceHvgel/K7UDwpE9HLcfMywzTWeG4JtFfDSQS0iN+V/symeDdqLF4c8Fj0tmccII2Rd/tRFF8VlrebvZU4lllPR+qH7Y7n2/NfmBkqpXDh0Uf87dQLnWKBu5wtmV3PtBEznLfbu/eGGoynyIM5OjP8aaHaVyPS8iMEygrkPdgeF9Q6wG50jrgUZwzE06xngo/bKRwquZPuWyYapxsI9z4Uh6SGQwKqXOktbbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D8USRT750oP7g3LE2URZzoQuFT3xHbADaZrMLk0+WR4=;
 b=0K32FgsIrxNFDETuRNQ22365oYdq5FD1wKZZUr36a20dIJ4wdO5gNKBZUXCNKBZFimxrFmZRVBOgWQnRStr0tBj8lk90KJ/IIRLSqMnQFGFE50g6iBgZksB9IxRWCaau+1NRuSTcOCB8lwUM/74ftw8SYHbI1gLRhtf7U3X7vvITwBtD35AayBbSj1kgzJCOSc/dW0VT6i7HA8PVChpIuBquXSWFXBRH5AmYSqkKAEO9FipMGAEerA9IuQ61SwBBDJGLXtgl03dvjTrochZ/KIquaztvFWJCr1ayLLuM3215f5jpNfgG9msmWUwi66oFIr8e2gtzfNc2STxrOUP4kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X410 - excessive calibration?
Thread-Index: Adu+0Gz1FNYyFFf0QuOCgBTiiciqVw==
Date: Tue, 6 May 2025 21:48:08 +0000
Message-ID: <PH1P110MB12844DA5BEC21C1621A447CB9889A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|BN0P110MB1674:EE_
x-ms-office365-filtering-correlation-id: 11124e3f-3531-40df-6654-08dd8ce7b0da
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|38070700018|4053099003|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?mr2vJyoXeEdmxbF+qONfrkyQsmqzHFN7kwomBKAPd/TAFD8g4UKVrrC2/tQf?=
 =?us-ascii?Q?CMXme0fE9y3HSc/u2CnMIuRnZk+g38gr89FwBMUjD/8YMMwdJKSsMvBbKJHj?=
 =?us-ascii?Q?ixZ0k+NBD9ufWi1Jm1jbvSSGMy/rXWquK4XdKfyLAyYidlnXAqDFimU1mKPV?=
 =?us-ascii?Q?6r61mDstewFwv5jwC7KWL3ZUIMl+ShNJy0qiCwpajF1wHRZmg+X0pFPaMG5a?=
 =?us-ascii?Q?wRcFwV/i4Yy0oJrRR/Ctk+ph4sLEMUeQdAoam8rB+K3ZpKbjTFME/udFZKlQ?=
 =?us-ascii?Q?zl8bdefSqM0BftTFcDcZgBy/gPBUZ1/3Kd7kUH3QOE/xXamozF87/LgAm8f5?=
 =?us-ascii?Q?TtQ/CfxpbndyhCpcZC/urZjpHa0hZGwcq/OxKdP/YvUr1SHjcgcCCzar/gB+?=
 =?us-ascii?Q?ttYH4ecLTr/cOJJYzevVVpcGP5PL0hKfMNGeutr7IT7vh9fAeIZ8e7q2xAik?=
 =?us-ascii?Q?WyCLdNJN9dT9FwomvfisupCxBk1ABbr15iAxlK6Vg0mBfroIIrW75u+STUbI?=
 =?us-ascii?Q?RBORULvjBbY+KbXgWJrqpHJ8Ug0DfuXwAjbpJEZd5PmXVn/Y/s2tzfJ5pL2Y?=
 =?us-ascii?Q?FTaiVB/+1nj8qfsjcQvSHDAMux1KKgJgjbOAK7n4PAX27PdeelnPDC2fiYCs?=
 =?us-ascii?Q?Qdbw1YL0ERjfigEOseivcvOv/85mB3sWLRQNUFz2i+Glec0wPufUeAkeyvlM?=
 =?us-ascii?Q?pcd8C7d1WVJikipCEHE/rNP/+eGknUgsrRsEnKoLg71CO/JjvkhaMzBsoRkX?=
 =?us-ascii?Q?QbcSqRFs26rRrKyjuS2CwaeyB3DwgBbsKjUiavVXVo6vA8CT0uF3WIU0c1A+?=
 =?us-ascii?Q?jvR9snf/NwXYBpBUa3gTIQj9d/YLV1mXhUFsqmYDMFkGUf2ErqTABiCtnJ+d?=
 =?us-ascii?Q?Da9cobQjDZmMsGVbEAUYvknDSW7TZ+g1ovtyddAvytcDxLhm9mNOIrt1TDmb?=
 =?us-ascii?Q?4cEfj5NSmbimHc8gYHzQ0m0aZbHizFh0G/opWYO5Z73ajioWRmCpNvX8cGlQ?=
 =?us-ascii?Q?siMwT8+MuHj51JMGoxTW99asubnlb4VbmVkb80XzTCTp9GRDB1Y39wQiIKAX?=
 =?us-ascii?Q?nDYaJBb08ZtrvWukjl8ipAwRdE+5L2OMwhcoZcDtz/rfv6H3MPaquBHI902D?=
 =?us-ascii?Q?pCBo8fMi+GeYD+vCrGZUgLm3xYfCIwgzbrkIuU/DIbd2Dz72V1rmpsKgFGQo?=
 =?us-ascii?Q?Wj8Wj9Uhus4PrT2C4dMuMyeQEZXqzT/mscBDuVTToZpo4DD14/H2Nn/nyV+o?=
 =?us-ascii?Q?i1iKecjBEoAKn61eWxAb6TY3upQ+Ezs8HYw3RtcYD1pTsRH+8W8JBF+9lEwL?=
 =?us-ascii?Q?SPeGQX07UOv82VTK99+yOKobitinepdbF8JDQivrgTbbGBvs7ssdBM/TsAHm?=
 =?us-ascii?Q?OCOA/mjXgUi1jVPJJHVgPendS0ubcBZZxLCtmiUkU9msGg7Q80vkkPRHj0AP?=
 =?us-ascii?Q?2LLC+A9yd7HbmTyRFThxgOTmsxSxocFjTRrNy20Z1uibbPtNzQ8+agyhMXP1?=
 =?us-ascii?Q?PoMNox2IEubGJw8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(38070700018)(4053099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NlvVWlineuJ6bTUl/UwlD+rPb9LBM2tUYBY+M0lMOHTfrhxGB6wtlivgQLC1?=
 =?us-ascii?Q?n6ECCb78JEMSNcsHKYQRCyaxLSJu1IEvyAFnn9cYfbyAisgV165O539gTphC?=
 =?us-ascii?Q?htNUvZHh9WONTypARVi9BzBuz93wi9A/1b3iXqrwVV8La7uw0m8WKQq/deEG?=
 =?us-ascii?Q?C0wKMSTVvSvEQ6Se6jo/vrggLrUF0LRBEYlMHLg8g8QUfIhr8MNZ/0BT+5bN?=
 =?us-ascii?Q?Y7uMtq89MR1ayiskAF4Xx76h9UW6FsT34J/vHN+qoZwZSmKcbE9RW55m5qet?=
 =?us-ascii?Q?Sx2r5Gvjs9Z1rXYyC2FIPCdMLCEr5ebTsdRIe8aEstyvcZ/rvlzwYcUt+SL1?=
 =?us-ascii?Q?oFHpY8usJbNH8yjGnOzwuPqZXeDTRMZSXXgj8RW5wSFyMi4v04YVzEXkSYeQ?=
 =?us-ascii?Q?QwcovDiswqWZZ3btFcTWghl1dKljy8j9Fw6/pa1sVAj7w7d7eAxvz6MXw6NG?=
 =?us-ascii?Q?VkEm/BJ626u8sNA5O4Ik3rNtX5SeLHoQWjy/SradoO7jPV2rpOQ90pBHBtyR?=
 =?us-ascii?Q?J0FRMO+nYWAQEPQMb2Gi1+xzCQWColPexKX86l2R5aIQ7eTa+6T5+TOjIZas?=
 =?us-ascii?Q?ezLtOdEvyigdUYRPhwCxDeiqKLXnZ/E0052Al1FeBWqFFWAwMQue7X1WXRpF?=
 =?us-ascii?Q?0aFLi+0hqphpnLfd9J/ekk07Eug11k0bbmyxMTZPVMn7WlVDhYTrwfO79Pkz?=
 =?us-ascii?Q?17cBE2kGqTbNAjYOKimuJppTK6ZIAgkSGMjtum3lE4czd4UgN0eylCMTgkbg?=
 =?us-ascii?Q?b7ze5utRaEjMCoyaoW2wmQo6jiiQkuiwgoKMyPitOIcMGPBScXWDwlaGCAJh?=
 =?us-ascii?Q?pUwJu2jT9OWT19QRe+Zwh9AW2WJAkehZzYoozd55r4CtIwhXS1z5wMpREYvR?=
 =?us-ascii?Q?WiCvQvaJwPgp2cVBJmDQZm5quXIhZm/e5MfQ9Ovh+l2MPOlDEN58bYBbXpUy?=
 =?us-ascii?Q?udeeP1uGT54b0AvskOXxEl1NXT6rRWPaUb/zRsmyKB0qq51qeIYlS5h+AIie?=
 =?us-ascii?Q?c4IwBML2DMX9qHzaGAK9UALVcjJW2dkyuncUnU8ky+kVNSti7HPh3UL53XDC?=
 =?us-ascii?Q?w6UfsQhkzLEBzokKPO+iDpwkezXV6BTA5a/4gTkeMXjpycdlAOAV5QKAzRkE?=
 =?us-ascii?Q?R0hxFLeNWteRdBqZqBnNYu6YYK+zZRYMUuiO+flKJAL/ECiiKt80P57YgsgJ?=
 =?us-ascii?Q?6egXhXN/r8DXP+h/bgkm/e3GAKOobt4WhDTEDDGz+rG9cB6oCfb/4qDtjpg5?=
 =?us-ascii?Q?W6PMfiwxTMu+kItBBwWrpPIJacPRU2WBlw2hx7idsyDZaCCGhfrB4Y+toQv/?=
 =?us-ascii?Q?8NasVUxpAfQ6p0O+TASvaQSghwmU6S8fXwPdOEnPw0lUE+kPo5Pf/dDkRW/Q?=
 =?us-ascii?Q?UqaOq0jf9JuNPyuoO7eTq7UJmYIqauR/gN8qfHqv315iOFyrdud97XXOL+Jn?=
 =?us-ascii?Q?XHb6bMA2nsofkpofPnp3rGBbwiElvO7dpbmC2CRnrG4VIi93OKBDM4II4W6n?=
 =?us-ascii?Q?zrypJ6ZOCFzqULw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 11124e3f-3531-40df-6654-08dd8ce7b0da
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2025 21:48:08.8352
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1674
X-Proofpoint-GUID: PWhvUVJ8GY-n0QxZK8fxu8g0qswg2YjD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDIwNiBTYWx0ZWRfXyzwAOqkg7AFc
 n8d8QvxlX6rak4QupoUpuLd7yS2iZOl+k/8mmvxHG30sWIeWGXh0ojkEuyqCfQPaVOi9PLUZzIN
 8WOKDWr81rzthzb1wR/2FGcXvBAXpcE2dKwBIP/4Yg1Wh4k9TmLL5xWDsbt57zkcnOyFULvSXQR
 i5kGPOzEvFcyi8A5e71VATjaGO5qGkCEryuygAMvfY34MWJqVMTYLwiqX01Cn4Wl4iDgZOnW7GT
 HTLCaLOyN+ZHYyufsX8MNgOzv9e9fm/H67Z/QUOX3njybAAjuhzg==
X-Proofpoint-ORIG-GUID: PWhvUVJ8GY-n0QxZK8fxu8g0qswg2YjD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_08,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 mlxscore=0 mlxlogscore=487
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505060206
Message-ID-Hash: 4WSDEZLHNZGZL5VLVW4OJEZKJKRGATEU
X-Message-ID-Hash: 4WSDEZLHNZGZL5VLVW4OJEZKJKRGATEU
X-MailFrom: prvs=922175ac2c=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 - excessive calibration?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4WSDEZLHNZGZL5VLVW4OJEZKJKRGATEU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8502381977012293398=="

--===============8502381977012293398==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_01B8_01DBBEAF.06A14C70"

------=_NextPart_000_01B8_01DBBEAF.06A14C70
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_01B9_01DBBEAF.06A14C70"


------=_NextPart_001_01B9_01DBBEAF.06A14C70
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I created a gnuradio flowgraph that concurrently records data from 3
separate X410s to a RAID on a server (via 100 Gb ethernet).

 

When I run the python script generated by the flowgraph, it goes through an
almost endless loop of calibrations that takes a couple of minutes to
complete before the data is actually recorded.  Is there any way to avoid
this??  It is really slowing down our work flow.

 

John


------=_NextPart_001_01B9_01DBBEAF.06A14C70
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>I created a gnuradio flowgraph =
that concurrently records data from 3 separate X410s to a RAID on a =
server (via 100 Gb ethernet).<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>When I run =
the python script generated by the flowgraph, it goes through an almost =
endless loop of calibrations that takes a couple of minutes to complete =
before the data is actually recorded.&nbsp; Is there any way to avoid =
this??&nbsp; It is really slowing down our work flow.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>John<o:p></o:p></p></div></body></html>
------=_NextPart_001_01B9_01DBBEAF.06A14C70--

------=_NextPart_000_01B8_01DBBEAF.06A14C70
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEt0w
ggOKMIICcqADAgECAgEBMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3Qg
Q0EtMjAeFw0xNjA0MjAxMjAwMDBaFw0zNTA0MTkyMzU5NTlaMFYxCzAJBgNVBAYTAlVTMR8wHQYD
VQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExM
IFJvb3QgQ0EtMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL91qARBjjibZuLnL2n+
ryiBT7PMGrQnekpsKv13kTaOz94zyMTT8Bd/fERg1JjySFwO4ncw+o9KKRSFvpC6mMnvXu/PD1dH
amiZV/PNfHzQ20hPvAeoYnqik0e1XziO+FFUBFClURbkRcOrlWLr4HsNk4/wtnRHnt+3q7kJeZx5
G1djrFp2ezvsrfnrXeh0XGly5T/avFioANwe75DlSDAiqALmlo/gRauyvljZIsovynTh/SZjqW8k
SuI3AO8Wy5xfCRVEjYOXOGNQSaxWmbZAnhujZvaeduBpZZERcz4KY/FYnFfgCvva2NO3U8dNpGKL
U5yrstGMQQMLFF8QEBMCAwEAAaNjMGEwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU/8nJZUxT
gPGpDDwhroIqx+74MvswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMA0GCSqGSIb3DQEBCwUAA4IBAQB6mHxH/9yeWjCoZWEND51AGzAfI2Uq/fx743zhdNHK
xVAn0q6hvCUMKPkv4quuoHKethRICdH0JA4FYOpvgthE6NS6FoksYWAn3EiEBApY5V8EfMBUmshf
NtkuvSKrx4XauHefI1OoGIurLI1OL8LL7FS0SSpP5vwoP8PIFumBzOWoQQ+v+QnHpdnyO6EprJDv
fdfqLawtdWHw8Ahb8+wJtK/ivYlYUlrWuIZiLldGAYmtO3mSkjtNiz4EPGDs95LtGLfpofFVkSrs
dgnGIzKZPlg1dATKe+bam+qagRZHCrxAV6sYPvPhv7po4ouB9HOZLyYWkMspG5jipsTvSHCSMIIE
wDCCA6igAwIBAgIBGjANBgkqhkiG9w0BAQsFADBWMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlU
IExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9NSVRMTCBSb290IENB
LTIwHhcNMjEwNDE0MTEwMDAwWhcNMzIwNDE0MTEwMDAwWjBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS04MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAttKiUZi+ezd6XR3/UBsFtO/XphH8
qPCL1l7Qjq9d3pew3w9mRG5+16+VG4OkSdbg1/C/9G7Qf4E+b1UBcpRT7dMWQ4+czMj5hzJMX8RL
7tMvwgKyNGvIg6WcLm11NY0r10sesBaYVwerNQrkE66PBfTdFq4x62r7CO1GHrnpkzhIpn9GghsA
xeY5V2Z+NrkglNXTaSfUrsr1Did6A6FaOHqUfX02zXd5Rip5vvLK6y8eJlYcZpRZYDsP6wwPuSgv
8lDa/c/28y5egk1EEG3wIBXedgv+mnZ8ZIoAIkhreCZvWrAp8PLotMBY2YoyWVKmpoebfXuaUBB1
0bVHp491wwIDAQABo4IBnDCCAZgwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUB6lj96pk
z9L6G8h9ATWJ3kgVtGswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMGcGCCsGAQUFBwEBBFswWTAuBggrBgEFBQcwAoYiaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL0xMUkNBMjAnBggrBgEFBQcwAYYbaHR0cDovL29jc3AubGwubWl0LmVkdS9vY3NwMDQG
A1UdHwQtMCswKaAnoCWGI2h0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvTExSQ0EyMIGSBgNV
HSAEgYowgYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYL
KoZIhvcSAgEDAQkwDQYLKoZIhvcSAgEDAQowDQYLKoZIhvcSAgEDAQswDQYLKoZIhvcSAgEDAQ4w
DQYLKoZIhvcSAgEDAQ8wDQYLKoZIhvcSAgEDARAwDQYJKoZIhvcNAQELBQADggEBAJOSfJ2oJKi5
AR/DhGv15Y4etfy0fcTVlciAhmBemrvOA7UVTyn/hSTFR+C1aZLM5A9Y8173YIT/JE06cb+dszxW
OLu3eg1TIU/bhkkE6Z1WvDK1fh/T1qcv80BXTG53bGoGVy3n+Djp2w/UJRS5/ror02xW9pcwySwV
4YcgmlTtVyEmfCwfxi+BBOnELZGUWE3O01a44zd81XGS/dMgL504c1lLV1Vs25YmLvZhAe4pFjF+
FSBBdwz8zhIdaqa4BMuE3JJaUFtRdNs8nLR8phUlxhstUac70Shv6FE8PrIFxwkokA5zyxVW0LD3
dpWFLtx18GWfpXatqRreMspTGe4wggVAMIIEKKADAgECAhMmAAB0FHJQAiNxhwPuAAAAAHQUMA0G
CSqGSIb3DQEBCwUAMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0
b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTgwHhcNMjQwODI4MTcxNzUwWhcN
MjkwODI3MTcxNzUwWjBeMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEPMA0GA1UECxMGUGVvcGxlMR0wGwYDVQQDExRNYW5uLkpvaG4uUC41MDAwNTczOTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALrC1gG2GRgmq3F4jYI2jDiDa3ovinQzeFVrIjG6
Sx3dm4nD6Kug5esO0aen+GgXj2gxFmfERh7FiTulHxnU1OvUU10KRRljWVeux137+hvRel8DzsUd
0+/tAT9VSWXM9u04LhuqIZvdP9s1K3gJJWXljVSWMWPtbOnJf3N9dfPP+j9BS5DPJa9yxVQy3aXw
nbVuMXMvKJU6KRMb2xZfL0PVR450g7FZTGky3vCYhVTQwit5DjUtdiRDJwkcVPCFD3vjDuOvvEfA
wPxhPMpALil0ZPpx7opMDXw/Oi1N4HjwGyjpNPm6iYfbme89SvP6lyyY7LcOAq0dj05h9BomtUUC
AwEAAaOCAgIwggH+MB0GA1UdDgQWBBQ92yslVCtoz/v7KCCv9U1uOiFQ+TAOBgNVHQ8BAf8EBAMC
BsAwHwYDVR0jBBgwFoAUB6lj96pkz9L6G8h9ATWJ3kgVtGswMwYDVR0fBCwwKjAooCagJIYiaHR0
cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9sbGNhODBmBggrBgEFBQcBAQRaMFgwLQYIKwYBBQUH
MAKGIWh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXR0by9sbGNhODAnBggrBgEFBQcwAYYbaHR0cDov
L29jc3AubGwubWl0LmVkdS9vY3NwMD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIOD5R2H7Kdm
hq2HFYPq8EWFtqEfHYXL3jKH/4pzAgFkAgEKMCIGA1UdJQEB/wQYMBYGCCsGAQUFBwMEBgorBgEE
AYI3CgMMMBsGA1UdEQQUMBKBEG1hbm5qQGxsLm1pdC5lZHUwTAYJKwYBBAGCNxkCBD8wPaA7Bgor
BgEEAYI3GQIBoC0EK1MtMS01LTIxLTc5MzUwNTg3LTg5NjQxNDU1OS0yNjYyMDIwODY3LTU3ODcw
GAYDVR0gBBEwDzANBgsqhkiG9xICAQMBCDAnBgkrBgEEAYI3FAIEGh4YAEwATABVAHMAZQByAFMA
aQBnAC0AUwBXMA0GCSqGSIb3DQEBCwUAA4IBAQCIrJL/8d+l5D4LQY4U+4mDK+unMLeR1LWmXe4I
5uzcO3SPnQAD09noV67LAidJX/ctA+1dJ9JtZJr2gm1J59IGXVj2GgsvXHuPQnkwQ3mkA2abZeIM
xkCbtpobkXwLqYNblFnK2LXqKWJtFZB0XhsqEe82LUOZD3BIwMw9O/erwrmg5LQCdIVm12wK9M56
mVcCpr2M89FD5e3tQbN6eVQs5NOUjVVMp81Nktw0Qiv6royWJEGjgjUnS2mtDAeoo7lM4D7WmYBh
7yc3lv03mM3DpfbKTJN88pDEM8vzSkrx55qHq5a6MmW1lZe+WRKVyRr9j1SQOisYiO23+uEWUvVx
MIIFQzCCBCugAwIBAgITJgAAECJOdYPN2Sc27QAAAAAQIjANBgkqhkiG9w0BAQsFADBRMQswCQYD
VQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMw
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

------=_NextPart_000_01B8_01DBBEAF.06A14C70--

--===============8502381977012293398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8502381977012293398==--
