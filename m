Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9113397E3
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 21:03:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C7AC383556
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 15:03:29 -0500 (EST)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2044.outbound.protection.outlook.com [40.107.92.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 87C28380033
	for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 15:02:17 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XDQoBQ1igv2jpG9Qx/4qW11/aOei+/eJuh+6t/5DsQQP3ulv/ARvP1Zmrby4DFc4ZsagZF3ypCtwe2d6TFPOOF5r79wTkKAP9qRB1i4o6CQbZUMz3URLyXpeZkTdHuFFh1SxiAJqWMgb0qEUiO+sXbF0fq3ZElRnJg8aqsLH2OdQCCMuv/Rz264p6F39ARHJ4aU4+yoQOLFneaBf9veSgihVj0v6UI3AcglvJ9hchmsj6X3l21IYpn/IRchn/6jHuAtxAnbr3kcSX145sBSrurBGA8KFRfZFCYd6+Vwj6TSpmEp4eQZjgkyNiX0Uzvijmvl8wmZfqy8Q04FMSa4i8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iCtKgbQGn5AB/hN5768+NDj26sr+l+PcbSgsM434oas=;
 b=VdBlz6TZGB8LGNzT2nVRI5Oy8WNUDYJOKmSWXw8ngRWtE8YZeVMDUFj2B4aYo5s4W0xHbTYxcQP4EvVIQAwiWK77rPZaA/hDzb+iOvhwAHoHl4nTFCmlyMyhgZ+LBuxAJwjbBvKxDzp0aidoaGLPEYuBWA41fBEgapcsGZpv4i7IoLgTYwXOsvuYYHM/wVhb3TajLs/I1i30ev9JPSfSkquSFXHeHOwm0tEOVBfC/VpCRYQArT2eu1UxOaMqx0ONl3PuSkDaM9qc2ikhJcF65G812An/Il6ITe9EYL8qG6GbA+JD4Fkn2zEk46sdzwryMy36WlG96OlX/C/6/DQ4kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iCtKgbQGn5AB/hN5768+NDj26sr+l+PcbSgsM434oas=;
 b=NC1ikn6cPzghI0nm5Y7Up2qeZ0rpnFibJJDqvO954SBdMc47MChVnEgGtiuKuDh1UOvoA9sSM2fwMrHTVvZlFnW17ovAuVJeFkuKDRF4BCvVskc0wWYxQ0l18jLuV4skKA7SjrVGcu+YG+H6H/sTZrWVcrDi/hg/u+5T+oRsKx4=
Received: from CO6PR19MB4801.namprd19.prod.outlook.com (2603:10b6:5:341::23)
 by CO6PR19MB4771.namprd19.prod.outlook.com (2603:10b6:5:347::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Fri, 12 Mar
 2021 20:02:15 +0000
Received: from CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::4c0c:538a:a172:921a]) by CO6PR19MB4801.namprd19.prod.outlook.com
 ([fe80::4c0c:538a:a172:921a%3]) with mapi id 15.20.3933.031; Fri, 12 Mar 2021
 20:02:15 +0000
From: Jerrid Plymale <jerrid.plymale@canyon-us.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Where do I find this call to change it.
Thread-Index: AdcXec3qWnr1rrk9Rh6qGzEkiPdC1w==
Date: Fri, 12 Mar 2021 20:02:14 +0000
Message-ID: 
 <CO6PR19MB4801F65B228A1958C8830B06C66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7934bb30-61ca-46c3-bc83-08d8e591bb89
x-ms-traffictypediagnostic: CO6PR19MB4771:
x-microsoft-antispam-prvs: 
 <CO6PR19MB47718091BCDCC37A6FB61FC1C66F9@CO6PR19MB4771.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GXvYtr3/rxO7hxcBR+CrQqKoM/Ft+6PVXZLhh9Mm1cagsipUV9h4JOwmd+J5wxhHtPQzJ+bGzIg0EKkMHvzq4n3v56v4hyIslO1znQutoFc8MH4PR0yM7jqGybrRuZAcxwv55gqXwNaCtrD2MBscnTTHO/uzamNzV9fIWzd+yAiwMqAHU1Agva3Oj49Nys0l3Zyxxe//LDqKdhn7HvLYA8lPhP41G22fVmKBVGW+wa9YuceRVVJMC1tPgKiSVRqvxTA9qlJibcSRZ5CrHLlCn0dAw+FDmWW44ChovPeNy7gfxec1PHTi7w9T9+HIeLrc79LhPXdhSIRxQMBuus8B319k64wNgXMxaxN26I5dUsz/sq2GpCIQ8a25Mupv3R3sOFJ+59dL00Lcml1nI7Hdlfm+asA0yYHqUj/MqexdTgFTXtw6iL28zPvfII33fxg6OrSo3RTkokkF0fuG7CK/WBfNGT1tnjXzv0Hgzm1VEpvwaYxCMNx8NSpubDOiuRGvqHjuUlzv3ts9PWZP807eEA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR19MB4801.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39830400003)(376002)(396003)(366004)(346002)(136003)(76116006)(44832011)(66556008)(66946007)(316002)(4744005)(64756008)(66476007)(6916009)(9326002)(66446008)(5660300002)(71200400001)(33656002)(26005)(8676002)(478600001)(9686003)(6506007)(7696005)(55016002)(52536014)(83380400001)(186003)(2906002)(86362001)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?PBfjzxx0SPs6mUHVzmwF4n043X9Ju3M1tZPkC6jIaIMiRPTCR9zTIjWPL/J4?=
 =?us-ascii?Q?xWp6s9lyhHCPLWRl7N+SnPhlDOl0OHI2dL+9hJIhu222MQ4jxZCNxjZYtT4b?=
 =?us-ascii?Q?6a3HtyLcRx1TVRgs8m6o/6ej0mCfzRTTQUphMa/huAs84tsMlqB8r5rag5I4?=
 =?us-ascii?Q?nPWktuVAd8B5ZJSTeqxXUNu1XL2kS63O6vflv1nhx6fN4LgH5PSLgzgzjugX?=
 =?us-ascii?Q?USz3qAGccPglczFJN6wDqRFIkscgmDb4k4ow2JDVUCXPgFtZrDDSBBGrhmsR?=
 =?us-ascii?Q?W92OKjQUldi2UEQXTMPcS3yAVxEyW+qqzPqzQOdszedyWC9tmKWIM+BgTH5n?=
 =?us-ascii?Q?c+3xlCRhFUv4+/Qlw83PYAUZYBIlRqo5xSHBi6b3L2XEP+EKV14HQzVaKGvO?=
 =?us-ascii?Q?eRVHdmV6LiBY/VnbHTxEAK3pwr0bPK+dobQo9OOAIwltH829fQC9oYgqnjrX?=
 =?us-ascii?Q?EdQYR3+E5V4LVDYK2RaEDKXduEdPrQ+kS27Q/l6WqZtGXvszN8PZw5VfBsg1?=
 =?us-ascii?Q?WB4g62pH8oeQSwMwb/O9RwfA/XtvDYqBz6tuYXajACBJ6l4jiz+ga0iZhhg4?=
 =?us-ascii?Q?Rl4jswDgJgIE+LD7z0UkaU31zvAbnKlsVRmLjesrBmK5FuwV05ct0QjH1ni9?=
 =?us-ascii?Q?ng0mb9zLaew3BUcc8Hal4/wo8hu1ZKIuBycyWsBIgy09OjmSVQgU0BlcCoid?=
 =?us-ascii?Q?XeuqY3eN2ySjGLQ1FTaVwAUbg9zWn+1duXXHpoxh0e6POIMgo54G2S8nrGZr?=
 =?us-ascii?Q?4yi2xN79FRYMTRLN7eDvbTdivaE7/CyiGeJy4JNMr4f9Q+TSgLnhbnKvzvxN?=
 =?us-ascii?Q?Ecgrh09rV0trJhfE/aIF1bM63hJaRjht/T0ZJD+wNywVGNVYqcI+YAjFIxwg?=
 =?us-ascii?Q?qWcf2aYfo4ZryZrJNkX2KyMqZvzA7vPPKcla/DiJ46nPI6sKw+eZFK4XXAxP?=
 =?us-ascii?Q?CZDDGHI61YwiOwDpNPPHI1SisspK9E9ss/YHWeqG8t6ZuGF6SC0wZGcd3EDt?=
 =?us-ascii?Q?1I8Ny25C3fGPTIqap6Kibcsl54xt69yhnrgQsndTqTRMIU9ocKqreAB2RHsX?=
 =?us-ascii?Q?ZJFluPh0khsn1jX+w9TE+sce9sB9xTz0ojne4B1q0ezWUNuSGOeVYKHWJTB5?=
 =?us-ascii?Q?0f/6405/wJ+ZJFtCAWfdKbXoTzDsIk2oP13YhZ9muV9hX/p08lxs7L/qSQrn?=
 =?us-ascii?Q?wQjvBXDFQs68R6Fjcme2krYv331I+ttNKK8xXKTGjTqc5hNZ61IIawt8S72f?=
 =?us-ascii?Q?DxIrubJTb4hQdRfx4ZM0XKZmIEYCKBIR39QSFA17MIj83mG5cgZ0/LZktaiL?=
 =?us-ascii?Q?mDA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR19MB4801.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7934bb30-61ca-46c3-bc83-08d8e591bb89
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2021 20:02:14.9751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i0SEkyaDTBy1GOFw16+26f/QN/JlmnlB+gLP1Trh2tXUN6wlyv8/g+eUrE0uLE5TscVb6viDmVgB1wQPNPV5nbD+I1+s1wP3Z1g3VePrUxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR19MB4771
Message-ID-Hash: I4E5HINVTJ47B3SVPDCNIXB6UXCRRNR5
X-Message-ID-Hash: I4E5HINVTJ47B3SVPDCNIXB6UXCRRNR5
X-MailFrom: jerrid.plymale@canyon-us.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Where do I find this call to change it.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R3SOXWULOELUNQGSC5CBMHGCF6MA2RR4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3280257284136052859=="

--===============3280257284136052859==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR19MB4801F65B228A1958C8830B06C66F9CO6PR19MB4801namp_"

--_000_CO6PR19MB4801F65B228A1958C8830B06C66F9CO6PR19MB4801namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Here is the warning message I am trying to solve:

[WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated a=
nd can lead to unexpected behaviour. Prefer calling tx_stream::recv_async_m=
sg().

I am trying to solve this warning message when I am running my USRP X310, b=
ut I have not had any luck finding the file I need to edit. Can anyone dire=
ct me on how to solve this problem?

Best Regards,

Jerrid Plymale


--_000_CO6PR19MB4801F65B228A1958C8830B06C66F9CO6PR19MB4801namp_
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
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the warning message I am trying to solve:<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#1A1A1B;background:white">[WARNING] [MULTI_USRP]=
 Calling multi_usrp::recv_async_msg() is deprecated and can lead to unexpec=
ted behaviour. Prefer calling tx_stream::recv_async_msg().</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to solve this warning message when I am =
running my USRP X310, but I have not had any luck finding the file I need t=
o edit. Can anyone direct me on how to solve this problem?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CO6PR19MB4801F65B228A1958C8830B06C66F9CO6PR19MB4801namp_--

--===============3280257284136052859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3280257284136052859==--
