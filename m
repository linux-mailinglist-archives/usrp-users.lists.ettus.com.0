Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E79DD6E540F
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 23:43:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D93E9380A6F
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 17:43:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681767823; bh=I0Tc61HeoXzoOnjZlFUew93yKuuTc2ObUWFZu2qq8hA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xx/fRlRnTBN9RnyHVPjfZ+Wo0mRgsO9x/69LNXIQcYl9/K/mTHBQekuHHS0poWZFT
	 dpMjaH9SxLKj2sSltNreXV9CVAgqU1ertDqn2xmzlSKiA6g1R7JlOKJCYKKa3R/Aj2
	 iN0Hbb1u/wwo+jg24Ndb+xHTHlp8gpQzr6YFWXBPYoFI0gCVPudqRvPLWqXfcXKifH
	 wZ4uO8rQ3owA+gIRab1X30SW1kM9FYuf4qiSJSVTSuRnF7wDLFnh7wtc/pM9w6PqkC
	 iAf/c3WSiztLPXokJKuB9uPuNfHbgeM9mLUXgGJSmZ/Aq6gWPMtmQNtaBpB9SBA7Ux
	 UBW+YVpqk1dpQ==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2139.outbound.protection.outlook.com [40.107.243.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 24819380A6F
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 17:43:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=paladinsys.onmicrosoft.com header.i=@paladinsys.onmicrosoft.com header.b="SDjFvFu1";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OM9UcsYr4H424ZVlOzlw3uyuIXbBEP+nAKMdnuer2wd34MxB+koFelM4N+NE88kaLId2A0GPoQDkSpGZPf0Pf0PmWCSC9vI9mm72Pman2I3WQ2nYkFNcSb98210saG2FySSMQCqbD/F81C8u1XlgfBIg/uKOe+p7dWXnxkR0+pOFvCbuf67vttZb9O0G3Af0pD4U60FIrYCjA17LvBdh7/gboy4rYOzDRGkI/hJE367m/l5HNOBWMvc6XcNdDtYNVXHmibo8bFILEe05PTKaF4VJl6EvYGCichHOYYO4tqxvxgIwe5SwmPM1p1tuD3fyichcfEfKZTq9RqOVPB5M/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GTsdDNQRRoR6yyMTA+M9m0274iTCinxqaZEnC4zxyR4=;
 b=fO67EQkJur+LXJQLM71aVjVBCD0BnUUKUv6scBHQdsbjv9xJEUD1E7HBMQJYYOjBkp+JsoaQdrW0K95eMH0zOyuCGQ2gdfKVV8cQJ/0RUc3ZBuOQ0ehPWbU12YXUGGjhTijTB6/v0kHThj4JBX5U3OKcHmxh1PK5ey/JVOTdzXCfRffUneLncuhAZpV7qNNJ+czTY9pOZUCEFL1YS6+CLYsU+pw5vGkb4DJpnA4HL3wWPG+LF5tQ1KJ37fatm4TMTeoiOdBkXVOQCVPZgFs9+kYCjWtGgBRm5rNg0KDB/VsrXR6hnGBCFOGOb2Buefrv70apkVj4YG0p9X+9bH4oyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=paladin-sys.com; dmarc=pass action=none
 header.from=paladin-sys.com; dkim=pass header.d=paladin-sys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paladinsys.onmicrosoft.com; s=selector2-paladinsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GTsdDNQRRoR6yyMTA+M9m0274iTCinxqaZEnC4zxyR4=;
 b=SDjFvFu1Vs5AEsFl28TdUgzhehf1+pUNjtWq8jrlvhLbJwOdtVRGAhJiWYlFUsm/OcL3KJbnU9wDScfgw4N20cdMWD6Y5TZ3TWZJqQCtbA0rvtwdH7GiXLSqz8JOUNUleGpwQnLz2zkr8tP0C+DPShYGWtR1ph2jItnNydQ0ebg=
Received: from BL3PR12MB6402.namprd12.prod.outlook.com (2603:10b6:208:3b2::17)
 by DS0PR12MB6582.namprd12.prod.outlook.com (2603:10b6:8:d2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 21:43:36 +0000
Received: from BL3PR12MB6402.namprd12.prod.outlook.com
 ([fe80::2bef:845f:407:3c0f]) by BL3PR12MB6402.namprd12.prod.outlook.com
 ([fe80::2bef:845f:407:3c0f%5]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 21:43:36 +0000
From: Milo H Fields III <mfields@paladin-sys.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Test
Thread-Index: AdlxdYe4Y56VfPLCRgedVhCv1v8voA==
Date: Mon, 17 Apr 2023 21:43:36 +0000
Message-ID: 
 <BL3PR12MB64029D1AD52C2AD4596AFBE8E29C9@BL3PR12MB6402.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=paladin-sys.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6402:EE_|DS0PR12MB6582:EE_
x-ms-office365-filtering-correlation-id: 9c95e395-8fe9-4543-25bd-08db3f8cccd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 94sCw2JhqHkJ6yBljAl30RocnsjeOl0KWGsIFmL3hbdHQw0Tbtg9NrfhqzoUVy1Hj/kgJRXCQizE3QIzXJj3QJUVRhU59VA8+1BrMS9HvBQs3Pi+K5J8qqPU7j/62WvEw71NS7JL9XJi03+GFLZVEcbcLCIJGoDl5ceYel/fkVbSwumrskrebo2G74JC5CGkpPU28/gZWEFjzJy6RYhSC2uUwoMHppwZ5nlhz0O99W+tQ1jKPFGvT2kL6d6M3O3/XuoUhMRn+C60/YcS2aCYbmUE4vAyXxfmI8Pf3Nk2enBP1eAorVWWTYaCc5Fr3fNwPhx68tPueCojKkLE1degedU8h3eU75XI0a6Ae7RNihCR2dihH9Hd4LSz10Zah2JryJlS4S2u56aoNbTSbzcOlRMaLkpeRDf3Gh28ceS+BpuFfvYxQMLpLrwjV3pPdzoZ/GuYMjxTVI9hZAEVI+N0sQfi8fqORlNcev0EgTXAFMcebG1ZkxEC6A5LyiMQn2WyG02yRlGiv9zEuzsp/xIPzfDggUlfhIDNGALqr4AUANY3cozzNRloy4TE0PpMWA0gCuD5cAX74XsTOWUMX6aukJJjsJbv2n1U0avyAx3nfY9CiabmIKppdSYitR+8clwk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6402.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(346002)(39830400003)(396003)(366004)(376002)(451199021)(6506007)(558084003)(3480700007)(9686003)(26005)(8936002)(8676002)(41300700001)(86362001)(38070700005)(316002)(7116003)(5660300002)(52536014)(64756008)(66946007)(76116006)(66556008)(6916009)(66446008)(66476007)(55016003)(122000001)(38100700002)(2906002)(33656002)(7696005)(71200400001)(99936003)(186003)(4270600006)(478600001)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?83Al5wsR3utguXk7QbeVNpEBNLut7tdl3bmYgb/hHvclT329qBs8Pe4Q1BI5?=
 =?us-ascii?Q?wkAtoWgaAeXbMcxIfY7caTXwkhuZpMJ0vCfG+tY/B7ECFnfLlIY3Wpgnse4h?=
 =?us-ascii?Q?7rvamPjDr9vhd7xJgEurnwwvW9VzMYsTsOOIKBvkgUPnVk/LIf6jhJ/u6gyF?=
 =?us-ascii?Q?sC0UFIuV+x/jyf9nVqm/+iCp46tUcXYritwSRCslp+qCybMpO9MHsI1hSxoP?=
 =?us-ascii?Q?7Nss1/jLIQVE3iTDVYjj7J+uTO76sIS1pkd/NVBxrWvLqzVksNR1qNUBSuYk?=
 =?us-ascii?Q?7OFgiC+dEOOke15UzsZPjlTcN52IzxbMfdZVkXwIEWGsOWS0FP4u2wEsJ7uT?=
 =?us-ascii?Q?pinvaQ2OWJEv75CRX0QTWOTyd7tei03EZWwOVNhDPnuGVvLecBcFOsjMFlz4?=
 =?us-ascii?Q?+cSRHt6DHfBKwrbMpuOZ2UMpUMCvhQNBC1KlY/6YaM1L+myVWaQq31UrrjJg?=
 =?us-ascii?Q?p5ZYd+qr1NZyMZqlaqopXfMnn/s6hN7la4GpGniPHDg0ql3PQkpoK7jnusE4?=
 =?us-ascii?Q?fSLV3FHryN/aJ0uEFj5INYZ2YP1KKs5C51UXm2EPCNDV5L2p6SPWjtVulc+N?=
 =?us-ascii?Q?xK9Z5vXOdR4KAan1qtsHrisaUTS+S5E37Djt70gh80UKQrhxKklvfuyZbw86?=
 =?us-ascii?Q?KStU5PJqhQUfXfh5XIGi8DV7mJBk9P2q5COpQRCQC2weo7MCVM9xN8PEgJhI?=
 =?us-ascii?Q?Wp0AzIscEYa1R+QjTMBw8lTW5ez9psNG5L98XD/WsudWJGipYTyeTrFWQhtr?=
 =?us-ascii?Q?Xn3GcYThTZfEEi+Ey/lGoyCkMfpoZKB0bXCxIJXDSFhrtGyxA4YWP5kF3M2n?=
 =?us-ascii?Q?MtOGilfvjVjhg5ZN8UnZONoMWlba2yC3IsV0EDWir2SQiddgYvPdFe4pRToW?=
 =?us-ascii?Q?WOqmVa4loQ0r/7ioxeYijTlb3C67Kd05QKuFaQu+W0K86MdEluK/RaJfVPXM?=
 =?us-ascii?Q?Scbr3m2mFZjBCCE7f/DTCm/sIeU6SyQsOfvsMgPzcZgCuRRl8rB9wOg4sKf7?=
 =?us-ascii?Q?8R0UN+Cdf/2TghYjPmUf09m4YYbV7pv4hxGYs2vHm/l8DW6WTp5+9XjYoa/m?=
 =?us-ascii?Q?Z5x4Ikmg2M4jWgK2LUJ/hPWfx3TOQVFYozICX5kjr5jD+VN1kXo4an6fV6ga?=
 =?us-ascii?Q?sXY4GucZkgtSKM5o4R7V2evM7DbW+gRL/JUMQU+szoMH74Em1qsosTpvu9kQ?=
 =?us-ascii?Q?UplhTgJrGTNAzjH/pJl230dk9tAoXA5uOzPtRoSzb4bNCrSaztULNhzRiUGU?=
 =?us-ascii?Q?4/loMtGYVbNamG1msKqnNKseDYnJuL+Yx1k5sa6Y6TKMR7B7cMwJMCru0CwW?=
 =?us-ascii?Q?XVb9/u7Q52FCkPvQHM4OeBA3FmRKiRJTF0ZG9+TmvYbz3zCTmCqgDCl3xZxl?=
 =?us-ascii?Q?ltIufpO0nfhiJ4OZyWdZgqsJPgTRD0Wz9iea7J9O/yPIZRCpftzoWWuE1Q9c?=
 =?us-ascii?Q?sd20gKjrazZ35WLtnfGijde/hbyoebzBTqgAyVPlVDWfvWQAlS6GBC64O2V6?=
 =?us-ascii?Q?Q0VQfkFRKrw8sgyqLQyMUxKQqq2YoGrzzdKVRSq0OgMAIPH5dZ29QcQhkeHU?=
 =?us-ascii?Q?MDyzDtzWCaY02IBZbcdbW8yPdyIB0TQ6OU/QHUtP?=
MIME-Version: 1.0
X-OriginatorOrg: paladin-sys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6402.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c95e395-8fe9-4543-25bd-08db3f8cccd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 21:43:36.7431
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dca57ab3-fd50-4fd1-a77a-df89575aa606
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dTEEIcj2haWbrzhN+kJBrDHgicVLjGlpd3v5M/GGav06Nb8+eYpi42cMCMRhhQLYkNWXer3P9lqqe+4f7f5kUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6582
Message-ID-Hash: BC4HGJO4AZSQYUBXHJRSIHQ746L52WE2
X-Message-ID-Hash: BC4HGJO4AZSQYUBXHJRSIHQ746L52WE2
X-MailFrom: mfields@paladin-sys.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E73WUEXXN3NWAF5HAKP4LTM7YF3ELJGP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3962667871217728277=="

--===============3962667871217728277==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_006E_01D97154.164BFAD0"

------=_NextPart_000_006E_01D97154.164BFAD0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_006F_01D97154.164BFAD0"


------=_NextPart_001_006F_01D97154.164BFAD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Just checking if my signed emails are getting blocked.

 


------=_NextPart_001_006F_01D97154.164BFAD0
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
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
class=3DWordSection1><p class=3DMsoNormal>Just checking if my signed =
emails are getting blocked.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_006F_01D97154.164BFAD0--

------=_NextPart_000_006E_01D97154.164BFAD0
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISVzCCA1cw
ggI/oAMCAQICAQEwDQYJKoZIhvcNAQELBQAwTTELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4g
R292ZXJubWVudDEMMAoGA1UECxMDRUNBMRYwFAYDVQQDEw1FQ0EgUm9vdCBDQSA0MB4XDTEyMDMy
MDE2MTMwNFoXDTI5MTIzMDE2MTMwNFowTTELMAkGA1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4gR292
ZXJubWVudDEMMAoGA1UECxMDRUNBMRYwFAYDVQQDEw1FQ0EgUm9vdCBDQSA0MIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuHBpV72AWkHAGeaV59SCE9wsOEuKgsociF2OfjwMb2Xh2rgc
cRi23hQIedvGipnt+iHdYhgALfAUzFpOd57y6HcUAxTGqf2yEqBn/x83etBwj5bXcCQOLZ1FXjwA
E+6gOjEakCBXZeQwF8bJBHndHv+gyO9frAAlOgG/lpwElY6tUrORcPT07DPhDwgXgriGCj850dyQ
Occ+uTMpg9kK6BPgXj0NJYDEbM8sLoAq0C1ASRvEnLbzNikm7DEAcxrNd5Wt5SxL8RQpNugxXN71
XI92W6sB1s/nzSer9LRzUEI0JYdXWh5UmTubAerF3ZWjsHK27HChKqqF+vGpOJQVBwIDAQABo0Iw
QDAdBgNVHQ4EFgQUM1ulb3pVYCuBSyYUzHm/SrqLMr0wDgYDVR0PAQH/BAQDAgGGMA8GA1UdEwEB
/wQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEBALYfYXiGvrV6cReK8ddFAhX3uiDF5ZNpJV4VcTlO
wdHY6HtDu40Z0cAg3+dNq4pdf4AgjY3vAmiK1QCcIbcFrOe3j7GUUz25bvj36IJV0SgkZYDlFsew
RAvThFJDI8ja+172AYbZN7/9brhQyA3mPHT6C26P8ozD31C3nyj4rlAcmsy+dm5K2vS1KDWhHXKR
dhog7zrIRJDAHQZ7sM24weayW09IFVojo2rJBlp8jIhEcYma52rePQmv0cu8lacIV45RoTER03Hw
g+9Qx+55bDsjY/iaZm4OKSAbrSXNubi/G9JzQADDTayJZPFzoIOJDhp0mKiUPLZ07JROAhXrMW4w
ggTMMIIDtKADAgECAgICNDANBgkqhkiG9w0BAQsFADBNMQswCQYDVQQGEwJVUzEYMBYGA1UEChMP
VS5TLiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNFQ0ExFjAUBgNVBAMTDUVDQSBSb290IENBIDQwHhcN
MTgwNjA1MTM0OTI4WhcNMjQwNjA1MTM0OTI4WjB3MQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5T
LiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNFQ0ExIjAgBgNVBAsTGUNlcnRpZmljYXRpb24gQXV0aG9y
aXRpZXMxHDAaBgNVBAMTE1dpZGVQb2ludCBPUkMgRUNBIDcwggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQC+24Vpd3f7yzNWZqYmnOx7uonmrzkn/maFGG0CHkLzT3f3B+KZpp93BBLVS3cw
EbfJbX5ww+98C0SiPLD4AySDVztJ2a4WFNYWBCEAGaSdc6PxWFZ+Sn/Tacy7xdODHqqJkCXggvXi
HHytPfRqq2q7M8F5mf6pXOJgCwOWOIxFpg5dXFUsR4aC/bNwgz3PgQlG4K18MEEHsEJkTLG8zPMD
IlZ/IZKz0mPR95G+g5dB74nD3jlNF9ME8NOFAczbpdA83XwaZmPJmDYMVhxQSx4ltoRSUsx5aUUw
yHbEwXTjbez9kCGN89Kf/kXJLZ6yVS9m2Ez03OSZpcColt1I7RA1AgMBAAGjggGKMIIBhjAfBgNV
HSMEGDAWgBQzW6VvelVgK4FLJhTMeb9KuosyvTAdBgNVHQ4EFgQUYjxQNHk54Crs40Mo+UWkY3pg
qOMwDgYDVR0PAQH/BAQDAgGGMGsGA1UdIARkMGIwDAYKYIZIAWUDAgEMBDAMBgpghkgBZQMCAQwF
MAwGCmCGSAFlAwIBDAYwDAYKYIZIAWUDAgEMBzAMBgpghkgBZQMCAQwIMAwGCmCGSAFlAwIBDAkw
DAYKYIZIAWUDAgEMCjASBgNVHRMBAf8ECDAGAQH/AgEAMAwGA1UdJAQFMAOAAQAwNwYDVR0fBDAw
LjAsoCqgKIYmaHR0cDovL2NybC5kaXNhLm1pbC9jcmwvRUNBUk9PVENBNC5jcmwwbAYIKwYBBQUH
AQEEYDBeMDoGCCsGAQUFBzAChi5odHRwOi8vY3JsLmRpc2EubWlsL2lzc3VlZHRvL0VDQVJPT1RD
QTRfSVQucDdjMCAGCCsGAQUFBzABhhRodHRwOi8vb2NzcC5kaXNhLm1pbDANBgkqhkiG9w0BAQsF
AAOCAQEAAWARJGVpFau5mRxoA2ARXwEk8GfSqRe0O4xyJSyDuc0VuuSvZvjKpb3Dcnxbf4VeCLPV
DTPK2qXig2y+vVYiDJeQiKQnshnFVU49EcTs0KduIeGWf79SIleAMihT84kRHBd8SZjy86nevxkD
0H70bgY/staQu5UdqG4FEBH1uMk8rXLzMXR29naO3tZm4gdkVUY3xONOmaUA0ca15GFsbm4UYSoE
iU0cvxKRImBPs3hgpKwvAzYZmdUGWrB+KVYEbM6Cbog0FFztHn3XZy1YHFAbXVC1XnTHGD462JPB
lsb9mOTYPTGURChE37yuMVH5OBhopNreMR/iBQMzTUUMazCCBPcwggPfoAMCAQICEQCjuKFxjWbt
DIV/TYyN6MfdMA0GCSqGSIb3DQEBCwUAMHcxCzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9VLlMuIEdv
dmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGll
czEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0EgNzAeFw0yMDA5MDYxMjAwMDBaFw0yMzA5MDYx
MjAwMDBaMIGUMQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5TLiBHb3Zlcm5tZW50MQwwCgYDVQQL
EwNFQ0ExDDAKBgNVBAsTA09SQzEdMBsGA1UECxMUUGFsYWRpbiBTeXN0ZW1zIEluYy4xMDAuBgNV
BAMTJ0ZpZWxkcyBJSUkuTWlsby5ILk9SQzMwMTEwMjUwNDkuRW5jcnlwdDCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAIaAWT3hdmbmAgfqCm8JxBAVY7mHFSYRuhZBnV9Mdy+Sz7nIUqrC
ky65njVDCW4id+6mGbODKQTafY72GhaUWVAi2gfDENnaseEvhfP1Pyn+gPzVJGULRAOumvxpAVRE
FhjZEuWBoLjiJeKjGqJO18MRmut0W8AO12qVXOOKwbkVeLogPwrilULSzvsccMvMp/020YgffP6m
9ukIoNwe8L14w/9aMbRlfHUVMMoizc/wHcA9sw/AAcq6JXzXtLfWMLqQtaOYPCfI+/KXGsJwPnts
i1MQFauhnM7TbwWg5oSiedG3kzl2/avPrMijeldlRPaE4vunMhoiw5j6qVWSGTUCAwEAAaOCAV4w
ggFaMBMGA1UdJQQMMAoGCCsGAQUFBwMEMCIGA1UdEQQbMBmBF21maWVsZHNAcGFsYWRpbi1zeXMu
Y29tMBsGA1UdCQQUMBIwEAYIKwYBBQUHCQQxBBMCVVMwYwYIKwYBBQUHAQEEVzBVMB8GCCsGAQUF
BzABhhNodHRwOi8vZXZhLm9yYy5jb20vMDIGCCsGAQUFBzAChiZodHRwOi8vZWNhLm9yYy5jb20v
Y2FDZXJ0cy9PUkNFQ0E3LnA3YzAfBgNVHSMEGDAWgBRiPFA0eTngKuzjQyj5RaRjemCo4zAXBgNV
HSAEEDAOMAwGCmCGSAFlAwIBDAUwNAYDVR0fBC0wKzApoCegJYYjaHR0cDovL2VjYS5vcmMuY29t
L0NSTHMvT1JDRUNBNy5jcmwwDgYDVR0PAQH/BAQDAgUgMB0GA1UdDgQWBBQAGtvPRRgfrpgirSQV
7xrUmvzSOTANBgkqhkiG9w0BAQsFAAOCAQEAL9mFKQGBelrbRS/PDQYtXoaE308V36yquRQJB9t0
wQC6mlZSkTtOna72N25T5yqQmUe4V58zKZgxjk3K+nhs/n5GQDAzDQfmCcytJrNtZPn0BtYWkhtP
QF1m1kvTJ47AKVlGYbUG3T42To2YP8BmoMEGx9GzmvKbOfVP5bgfaYpa9IcTEgWL4BAc73Xb3YC3
PVHo0FAb93JB9QjmETCJ2T+uB151oJMTnjZWyp7Ty0gjL4AWQMhlo09fo2wV/oRz9xfLACBh6Lon
A3wdDhlX+m5VpurZhTDjj4JcA4QKOjuonxzQuu3TIPx+uCJpxbuj5dPbbGIxvdWsz123U59P7TCC
BS0wggQVoAMCAQICEGlMqaD21uVv3mxr7dpcGTcwDQYJKoZIhvcNAQELBQAwdzELMAkGA1UEBhMC
VVMxGDAWBgNVBAoTD1UuUy4gR292ZXJubWVudDEMMAoGA1UECxMDRUNBMSIwIAYDVQQLExlDZXJ0
aWZpY2F0aW9uIEF1dGhvcml0aWVzMRwwGgYDVQQDExNXaWRlUG9pbnQgT1JDIEVDQSA3MB4XDTIw
MDkwNjEyMDAwMFoXDTIzMDkwNjEyMDAwMFowgY8xCzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9VLlMu
IEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEMMAoGA1UECxMDT1JDMR0wGwYDVQQLExRQYWxhZGlu
IFN5c3RlbXMgSW5jLjErMCkGA1UEAxMiRmllbGRzIElJSS5NaWxvLkguT1JDMzAxMTAyNTA0OS5J
RDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKqi5zys/DtinIKjxJlm/qmOAwtHib9L
PuuBFQbi1DrMAOYX4PS7HVPpv1ZGnv5KgUAfqKiXKBozKnXT9OfHnbnXZDjCfc02WHb8OgXCUDnK
0cAbhq9NFsKVJQ8SWkLA6NeiCbFXvWiYXzsRgUlzG0ePehNo+czETjbm+f/NGts2H0ktr5CibXa8
vTJH/x826pXw7zvQZDuKBLD3/CWoo3Ax3MKBvHyknf64tX5wMRYUNVdDuWYY74v6dURuGoHeyU6S
PsJSGI5E1q9d1mIzC6gTRxS7duP86x2lCjRvxa9F6Cwseh7Ki/1/76UhYUOfKrwx9c0JTAUigVAp
FbFx+mECAwEAAaOCAZowggGWMEgGA1UdEQRBMD+BF21maWVsZHNAcGFsYWRpbi1zeXMuY29toCQG
CisGAQQBgjcUAgOgFgwUT1JDMzAxMTAyNTA0OUBET0RFQ0EwGwYDVR0JBBQwEjAQBggrBgEFBQcJ
BDEEEwJVUzBjBggrBgEFBQcBAQRXMFUwHwYIKwYBBQUHMAGGE2h0dHA6Ly9ldmEub3JjLmNvbS8w
MgYIKwYBBQUHMAKGJmh0dHA6Ly9lY2Eub3JjLmNvbS9jYUNlcnRzL09SQ0VDQTcucDdjMB8GA1Ud
IwQYMBaAFGI8UDR5OeAq7ONDKPlFpGN6YKjjMBcGA1UdIAQQMA4wDAYKYIZIAWUDAgEMBTA0BgNV
HR8ELTArMCmgJ6AlhiNodHRwOi8vZWNhLm9yYy5jb20vQ1JMcy9PUkNFQ0E3LmNybDApBgNVHSUE
IjAgBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcUAgIwDgYDVR0PAQH/BAQDAgbAMB0GA1Ud
DgQWBBRt1kX4XYeQ+rBhMkhF/sB9TxjPDzANBgkqhkiG9w0BAQsFAAOCAQEAAE12lwr8GywKRHZ0
g2GWRY3yaka5et4PMw08+zltszEVommC8pBUliBREngulCGW0KuZogNWH56Qli42hVGXvboxZuvH
ubL6Z+dddCkkWUhuefvaiACLES+3O4k5/gw+69o9PmHOwKRY0p749zPd3R+7zYckscL7YepQKuhN
G6KvnEXo9J2Xv2cI46eO7wQrMQBoDS+KiwgCBQqr3ytGObYktsn+89YQLEbYTipQ1UdvJBrZwCa7
uPhJYejWFsKnM6+6m9GbLD/X2FtAz/e+XWoieb+LuuDA4Vr5jngk4yFS+o+1djeH7Nuom35sMs+E
2uaPqNiaL/e9u9AWANeRCDGCA30wggN5AgEBMIGLMHcxCzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9V
LlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UECxMZQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdGllczEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0EgNwIQaUypoPbW5W/ebGvt2lwZNzAJ
BgUrDgMCGgUAoIIBxjAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0y
MzA0MTcyMTQzMTRaMCMGCSqGSIb3DQEJBDEWBBQe9Ty4FgYFcO7HBOwjwmTLCGuFSTAlBgkqhkiG
9w0BCQ8xGDCBFTAHBgUrDgMCGjAKBggqhkiG9w0DBzCBnQYJKwYBBAGCNxAEMYGPMIGMMHcxCzAJ
BgNVBAYTAlVTMRgwFgYDVQQKEw9VLlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UE
CxMZQ2VydGlmaWNhdGlvbiBBdXRob3JpdGllczEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0Eg
NwIRAKO4oXGNZu0MhX9NjI3ox90wgZ8GCyqGSIb3DQEJEAILMYGPoIGMMHcxCzAJBgNVBAYTAlVT
MRgwFgYDVQQKEw9VLlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0VDQTEiMCAGA1UECxMZQ2VydGlm
aWNhdGlvbiBBdXRob3JpdGllczEcMBoGA1UEAxMTV2lkZVBvaW50IE9SQyBFQ0EgNwIRAKO4oXGN
Zu0MhX9NjI3ox90wDQYJKoZIhvcNAQEBBQAEggEAfQtwA0NsvMMlGkoLkyr/EGXXrT/+EIZgz7Gb
IyKI++yRDV8FOGyCoMxMIJZlSkIEtJKnkEuKOkQczIsdCKZo1DGr8N/qdNUaCqbJB4xBj8o0jEWW
Xrg1+9w4AcHR8B+mVMyi/LxgSYHqJF+w9A3gViUAyJLe9NMXpx28402X+PJDcxx92dZcWh63fiRX
m/iyfoNBZfYrjWLrae1XbX3vvUkXWRJHzPI5MJ0lq3ugYiYuyvdO2BfCb8YyaIFKE33A21I66gB0
q1ZOTSJwoabp87gJORe5hSeO97XEb7rQuedM8KjQ1QKpYVUd5UEP8JpPt/QjJ30BJ4oPn+4Oy9B3
KAAAAAAAAA==

------=_NextPart_000_006E_01D97154.164BFAD0--

--===============3962667871217728277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3962667871217728277==--
