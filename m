Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC273FEDBF
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 14:27:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 711EA383E8D
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 08:27:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="J43yA9lH";
	dkim-atps=neutral
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2127.outbound.protection.outlook.com [40.107.225.127])
	by mm2.emwd.com (Postfix) with ESMTPS id D7B8B383E58
	for <usrp-users@lists.ettus.com>; Thu,  2 Sep 2021 08:26:25 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gt+ognpkRijwj6wsfdEaHoJu8TxbspTbZv1IXhQfZUBBV2qqFWWw1lLLTRs5WBSByuteGGF4Xj7vXCOk+NiwHOCFZCpKlishoyA/9xkR1WFZUbQea6qmBVKZQuVSR3NEJ/hSTzwnKHsp95Q8qHc3Ad+0jWFIUHtqFwNv0W6LiTn8ysMswz3FbR9wWig5JzNRK1dQxo+KIZRsx1SgbufixlZLbCD0MXSAlSZLYWpVozoEDl76WZhYT5iKG/lSfSdnv2Y+DTJB0iQdrVNu94hJ+FG8uaovBWQKEx/m90vyfPEDbxx0u5DAw4nllGydEVnnbN6gM5If+QCILwjE1qWOEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=NAdBcN+E/wh5wF8rE9Z4BC53EU7OFyfo/SIw92Fd1Yw=;
 b=iI506WJLLrDyd99vmeYYTOwMv4j9kQIiuhqhj86Gqrqv1S8+mamYCLfVRuZoO/A8G8KrjtovTCHvGIgHBIHRxtXC8Bo1wr/c/IuwHBZQI//GENYT4jKJqJQAM31m2t4ziuo1Omp3/RAOKip/WHFve0OWyurElTZYSNWLVWuoDJjcw2tNU3DhAUiRoBbvCBCw1SgFaIUH2pEZnQW2Xo4RbXrYduj2+/599us7RF1C2cLhOaeUTb1CHBHxzONDTj6PNFZ41ix3YuccjuzSI4BKCYslZ3G68/MxP6m27J+erDSHDixZYojG7KWFifqlXVfebiHqNPxXDIloM7hvDmoBVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NAdBcN+E/wh5wF8rE9Z4BC53EU7OFyfo/SIw92Fd1Yw=;
 b=J43yA9lHUcsrXjEeESN5OwSrPPpo9GYQz0Zq8jh41oFh0hZNBSbnpQRDHKEqD1DDHaPdXS2ayQbhy8rx/K0+vUZN+H1TDxmyiTKgHybZvGvY371D0fC5TRXIilVZgY5+hNDoaWt1kJm1RtUZTL62JCpoxSFAFe9/t71Hw5uYDhp1ji5PXjzo1XwzIgDTaXOSYbZO1abfQQblYoVCAzbWAct//IKQCysyd7kF5y5LxGeFfSCw1W/hc16fO29gZPJCQ8aijrUTgs9ujK+O0SGkdrwOOa687NKAvQNnfXJqNNXTuusLd0vxyJmIPgc9Al2kgDiiX9YcVYaVY/XwVO0lwg==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 OL1P279MB0212.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:b::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.21; Thu, 2 Sep 2021 12:26:23 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::b967:391c:9f8c:d173]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::b967:391c:9f8c:d173%5]) with mapi id 15.20.4478.021; Thu, 2 Sep 2021
 12:26:23 +0000
From: =?iso-8859-1?Q?Skorstad=2C_J=F8rn?= <jsk@nkom.no>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E310 cross compile SDK
Thread-Index: Adef9Oi1fAVtXFldQ9+pTI1bZ9RN3g==
Date: Thu, 2 Sep 2021 12:26:23 +0000
Message-ID: 
 <OL1P279MB00832BE812DACC28710B9C34A0CE9@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49c74660-8200-45aa-6c19-08d96e0ce08c
x-ms-traffictypediagnostic: OL1P279MB0212:
x-microsoft-antispam-prvs: 
 <OL1P279MB0212C81E9D2C07279F435490A0CE9@OL1P279MB0212.NORP279.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 W/J3VWV7WOCn4hfUm2FLkrmrZiFOiJ+40RzQ/NoQ9bwizjHlY+Y2mTMkjeFhb7ddIs50jzUEqxAMOylAOm7kA9ZAMWl3uM/yyMOq2lp0+M+PpDqMwGMGFKnACNkXlaGtlYB2+nglxb8dNdXBV0j7SIieGK/OXIlhdkzcQAbzDMJcDIYYDmJiMhOgVUxcQXfrbwyNzJn5j7yKwgkY5Cj6eopRqvsJCyT1OkEIBnZXJa8jtAMlAXjhtNcD1gw1RRLcIp2t8/YOsYdgHC2spwl8m0U30w8t4Kz8jkvNhmvzv7nv/+uUh6G7J4YVTOpBM9YP12n8m307YPRZZkLAoEgEyGA5LrVuC+nnnp8ecO5irNRMdnqIPgyL86aTu6v+eBCIPQfHPLJbCY/qCMvBKT1hNG4ZE/Pb9iJY/DhRtK6ek49l3+NN0Wr/3JoSZaEOKqWyLfbaa2j7ziPnMpmT8RXZHcHsMwCbMmDCkOEraMDmwfyED+FdyrfXayU5aBIyPKAxNHIvdLnPvP3FJXODW61fiocN5kgQ4uI2vlf52YI7oia+07Kkh9w9YiyBE0qX/p+VUf8lL3aDvads7BAARLNU2xbpKPzbwXUiKRRQTsdXa6FhoNEbzKdbuqcrmcjVOf8doF81/wAR/30EKZNIj9qgrkLeoFbDz3+P89i9jRrWbkLZSAMFtCerrp6OgjEUjEPE8snOsbuGFRU+MG3RHvwonV8gjhQqXgjQFaIj4NzdlGEatGlXTaEQTBThz0+WckMKyVG4ZCgd9KLvO5m1AUQfAL9LDr8lGRy3xN17AYQwfFc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39840400004)(478600001)(55016002)(966005)(26005)(52536014)(316002)(6916009)(4744005)(2906002)(5660300002)(33656002)(166002)(186003)(76116006)(83380400001)(66556008)(64756008)(66446008)(66476007)(9686003)(66946007)(71200400001)(38070700005)(86362001)(38100700002)(6506007)(122000001)(8936002)(7696005)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?sn0tKr0eIWMoK+ejCUrq7inAMe86cnymDiNbI59YVxUYDrMRvlT65SdAOz?=
 =?iso-8859-1?Q?NGctSaQMKiN/XeD86xCQ1AvrdlvDDWubcAxxsiC4QvnT5Nod7mIVoB04gO?=
 =?iso-8859-1?Q?FgGDXL6K0q/OL8HAbpKwUUiTkdnh/sSByQPP5qR8PBgKgmKABplpYjHWyH?=
 =?iso-8859-1?Q?g5BSAzTsA1IgZEgScTHqHC5XdYCQpe7DiO8IiSQZb0uvz25zB2I657MVTh?=
 =?iso-8859-1?Q?vE+7EIGKjz8X5dlV+VQSuMZ+jGdGGPEbB6vwC+asv7ttSVZTqkKg7zBsIK?=
 =?iso-8859-1?Q?oEPFdjZoEmOS7JeteR6/LnJ75E3LWETyfqp3MxrwCtcQJdzb18xZvGY1TA?=
 =?iso-8859-1?Q?5q874ub/8Hdbqcgbvj4+pBbr5P+4UmkmJ0El46OjXT/Mgqtnav2PFo3GrE?=
 =?iso-8859-1?Q?he2ZwiFg9OigNQyGqFF5zPwHcgRkNzUPQ6izn/a4pAXsvqUoXROgtAb7g3?=
 =?iso-8859-1?Q?7A9a5hZxeXz51S/ybpi9IDu2ibBpF60VlfOv5eLMHp0UDw5E1BIfi7H4wf?=
 =?iso-8859-1?Q?aRWAiz0dRSrRAqD1KCEcA4UaQtO+3M5asNvv8vDKpXk4WitgXfVYwzi+K+?=
 =?iso-8859-1?Q?0905IBx8NrU7ZzsKBd0+pGG+ia//cxiM/FSiiCB+rsHxTcRNyRrGHAlpHj?=
 =?iso-8859-1?Q?zIJy6PDkzXREwvYVVW9suObkNJufPcwrFmZsZlBbMBmJDCr7wUsH09SzpD?=
 =?iso-8859-1?Q?QYkdGPUSb0Rt33rWArVU93//0OhyGRhRTWidbU8iiazUTA8m0bKJduPQbq?=
 =?iso-8859-1?Q?YPljE4zKM7LybaB62gTLPcMesg50AkB1O2sGVodnjCyryYockbehr8JYNO?=
 =?iso-8859-1?Q?KYYMeO1R5wWhfr1enVE3jWDTiyvdZ5yTnsiLhSmKfFQoRzB/QMLydQ8vjf?=
 =?iso-8859-1?Q?fYqzEXzGkxAyYjjfytYraXbBE2NAvaJTT56zdRTD1ee+Hjv8hUVZy1hYnE?=
 =?iso-8859-1?Q?JXlx+2OHc5PhszjzTmpst5Zq6nL7nR/1KWgY9bxPYk0VaH/QDEn+jmHCF4?=
 =?iso-8859-1?Q?GO258fWGYRjXgH6iwndeUujrUHq1NTPqlcQTKvx1nvHUNC0mh2NERat9SI?=
 =?iso-8859-1?Q?TmnTe6eZplbCVCuuagRz2s1ebU5l/B3pd6hAaVJ8Bp6ygkrJJVW4LSzDca?=
 =?iso-8859-1?Q?kZ9E/S8xSIgztZrwye+N1s2n6Wbmh0/mmCRJ/qctlkBRV5HDA7Sqht9gE2?=
 =?iso-8859-1?Q?6fSHKvcA7QOjkIznoMqsQ1ZRXA/6bSFAtJdi6/phQsWE18QmxbaOimTCif?=
 =?iso-8859-1?Q?SkqUTVcfnHqQDFvsRSy5CfTtlkQheH3Ux2Mt9rKSnYLhp3lUeN3fVVCJie?=
 =?iso-8859-1?Q?b/iAvS+CmJm77SgS7O67KSAZ8k7En7Ewy+QIQQGBxnK3Xl8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c74660-8200-45aa-6c19-08d96e0ce08c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 12:26:23.5189
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nMs8pLiTvbEswXwQdvLI9tg8zGAPrYTXB27jMdAVZPr/1h6CbozFl2mpAmHwBKl3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OL1P279MB0212
Message-ID-Hash: CNLCGEJKEL2PZLQIQ43JDX2ZACDD5LGJ
X-Message-ID-Hash: CNLCGEJKEL2PZLQIQ43JDX2ZACDD5LGJ
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 cross compile SDK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L6EO5YR7WE2UQM4BYS2AILNVPQIT3A36/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4269344758447630694=="

--===============4269344758447630694==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB00832BE812DACC28710B9C34A0CE9OL1P279MB0083NORP_"

--_000_OL1P279MB00832BE812DACC28710B9C34A0CE9OL1P279MB0083NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all, I have a question regarding setting up cross compiling environment.=
 Ref. the guide https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_=
-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source

The SDK includes rather old libraries, for instance Boost, which doesn't co=
mpile with newer versions of UHD. Is it possible to download a newer OE SDK=
 somewhere? I am using the one linked to in above mentioned guide. Eventual=
ly any recommended way to add/update libraries?

Have tried copying the boost (and some other) library files directly from a=
n updated E310 image to the SDK lib folder, but with limited success.

Jorn

--_000_OL1P279MB00832BE812DACC28710B9C34A0CE9OL1P279MB0083NORP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, I have a question regarding setting up cross=
 compiling environment. Ref. the guide
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The SDK includes rather old libraries, for instance =
Boost, which doesn&#8217;t compile with newer versions of UHD. Is it possib=
le to download a newer OE SDK somewhere? I am using the one linked to in ab=
ove mentioned guide. Eventually any recommended
 way to add/update libraries?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Have tried copying the boost (and some other) librar=
y files directly from an updated E310 image to the SDK lib folder, but with=
 limited success.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
</div>
</body>
</html>

--_000_OL1P279MB00832BE812DACC28710B9C34A0CE9OL1P279MB0083NORP_--

--===============4269344758447630694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4269344758447630694==--
