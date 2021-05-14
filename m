Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F35983811C2
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 22:22:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1038C384159
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 16:22:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="Nj6Nms01";
	dkim-atps=neutral
Received: from smtpvmsrv1.mitre.org (smtpvmsrv1.mitre.org [192.52.194.136])
	by mm2.emwd.com (Postfix) with ESMTPS id B2461384134
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 16:22:02 -0400 (EDT)
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id 52AC86C0013
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 16:22:02 -0400 (EDT)
Received: from smtprhmv1.mitre.org (unknown [10.20.200.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpvmsrv1.mitre.org (Postfix) with ESMTPS id 1F9F26DC004
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 16:22:02 -0400 (EDT)
Received: from mwfesmtp-mgt.mitre.org (mwfesmtp-in.mitre.org [192.52.194.235])
	by smtprhmv1.mitre.org (Postfix) with ESMTP id 035F280C0D4
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 16:22:02 -0400 (EDT)
Received: by mwfesmtp-mgt.mitre.org (Postfix, from userid 600)
	id 4Fhg156sKMz3DbZp; Fri, 14 May 2021 20:14:02 +0000 (UTC)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02lp2101.outbound.protection.outlook.com [104.47.65.101])
	by mwfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 4Fhfqp16ZFz3Dc31
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 20:13:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncUcP/bWFalQu1cFsocUmJtH7HY5g9DzQ534bLdPMAdByA3o2kUL+6E8vbCUdQDFAMVhPtkGZOAaChkTYfA+NAW8RNkdcdt2eBkwCyQzLb5sPtkLkCFbGbrhiTpVL2rG+6uQBV8vcd9i6Sa77NMq44/gex7zPiRuz8w/23PHnQaq7bbIhN5MrfwAf/TkZ7z4cTX+3pu30wj2vfq7/ZmPOomF9Rw+1xY+2WVx+5dBjgGmlRaQS9soacy7hxHMyNpyH6l5qA50bb8tMzjcDZjNzkUMbyZMI7iwdnesBTbIxEG9CLcC/W1kglEPP8NoDW5MEI9IHCjyjr1f1bh5s9Cnaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TpQWh4NsCmXL6bYED8kvxZ0qoTdKwSmGZD4MDcr5z6M=;
 b=E+SJ3Kzyd51LBErSxe4B25IByzMTix5pvUqCLi1eavWLrrQjY7VqKJuhr5T6QHhZHbBvMc6qOXCt5gIzTgbv8ApjqU/8DFpqv3+/JgFVWGnTC0VR0PHB5iik2iYyjpHEbACyA9sDzyXEQ5fet+rcmWImJymiFGRWaCL70exeK1BpX1GS76RQQXN/B7H2645Oj9iUgqSKu1Aoke2xy4OCij4wH0YIRX6q5W7yt28Sxt/S/YATUYHxLA8pCy7vkp9JZ5avdJRkByXlM9i6rxFQNxSMkRBns+/TyuP6fDMQMgQ4KSZwucCpKyN2MEcZjD4z0bQkG7M7qVY9/X9G7tFqCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from BLAPR09MB6612.namprd09.prod.outlook.com (2603:10b6:208:2ae::11)
 by MN2PR09MB4985.namprd09.prod.outlook.com (2603:10b6:208:221::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 14 May
 2021 20:13:55 +0000
Received: from BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::d842:7a8a:57f2:4191]) by BLAPR09MB6612.namprd09.prod.outlook.com
 ([fe80::d842:7a8a:57f2:4191%6]) with mapi id 15.20.4108.031; Fri, 14 May 2021
 20:13:55 +0000
From: Jeffrey P Long <jplong@mitre.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC block name?
Thread-Index: AddI/RhY0/YHcSDVSreEtUja24hJ/A==
Date: Fri, 14 May 2021 20:13:55 +0000
Message-ID: 
 <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=mitre.org;
x-originating-ip: [192.160.51.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6c933a4-1c3d-4292-8aa5-08d91714cd16
x-ms-traffictypediagnostic: MN2PR09MB4985:
x-microsoft-antispam-prvs: 
 <MN2PR09MB49858067F601689E45513479D9509@MN2PR09MB4985.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 nxJMf/SPdQummydCJ7BFv7A+Ouse/IeGv1RZauhw5KzVjRtzif6WVKVEHTeqb3ZegsmkzSyYwN+ECyJPLZfmC1cAmIB5Bg0SrHCvEXo/LvCUGkARzrcC/64pJn4jVEq3rujRb+1O5e2kXH7Ua7Xslr4fUXoHSCBkm/Sm3iGmI82/nj2qJ0bkeRKDgkpWFYdphMRE24MdpVAZSo0JcXQYVGrNf1HZM7rJ4NnEKQAygGCrdH0TRHf6mNIjM187/f9VTki+2Lx22e2KZW0g4ipP31cfXH4Ue7A8F22WCdUf5gQbrPEmK023r3EFqmVSCY/ZK9JiVtLPVMFedbyL/hf8EpYxkXCBSqNBK9XpKfDNuFOmy7XM1D+MxLYw4OSJpT+DKe+8RInQOiZVyDhfUx5wDYDetqwouX+57ytDmFcUqUKcNZtrrJQLkjhOc/TQgY4NtUp5uqtckA93zF8sdUTG90ZdiOJRjBXM1wzdbFQ0naAl/RWewmkiyrOwRbTQrXgGHDoQZRzXY4OEPi6Y3/lGRQXejhA3tu1Tp9sQ6C0Fo0F9x22sn7U+ow14LbHLGPIFz3jmdz+hKzjBoLuGt5vhu5sUVyXxJKSaPwkGNiVwOMLJlbDkHO5xycnAjd8DFShkp6TvJh7PEZZCpYMlvFlwZRDmU2FwrnaW+aohGBzagFRL/bFNMxgb13m4ALtxJNLs
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR09MB6612.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39860400002)(376002)(346002)(396003)(136003)(2906002)(6916009)(7696005)(64756008)(38100700002)(186003)(66476007)(66556008)(52536014)(5660300002)(71200400001)(76116006)(66946007)(478600001)(8936002)(8676002)(86362001)(7116003)(9686003)(55016002)(3480700007)(26005)(83380400001)(166002)(4744005)(122000001)(316002)(33656002)(6506007)(66446008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?AJf6fzXbfaqFgLkjjqjHmMtY33NHCEt7vd6Eq0GYU4JgrnM0g8GdhZflfICD?=
 =?us-ascii?Q?YbwRC3WraNEE8VOE1PP4Hz4Q9Nj7tsKQ5k0JIBkscWxC6SnRxCz4tKdwFUzp?=
 =?us-ascii?Q?HHh8Ov6G0MMm4xxY5YYTyhvh8WUtq3MAJ822+MHUD/sKFGUP8EoClzMoAur4?=
 =?us-ascii?Q?qDuvadXvxnb21clkmh9/0S/ED+uIKYm6vqMzAGcXUak9N3cYCYLQBbMhdwxr?=
 =?us-ascii?Q?URrdh9SwQHxoL52UwuEM6nW7pWLk3DJpnYMDQ5NksBX5cljVRdb325+c31c3?=
 =?us-ascii?Q?+obCR+7VXV1UgAHncDe1pHoGeUNU+kXAfo5iYZaUWvbLKObzDejQ+5g2Ushv?=
 =?us-ascii?Q?B96pEjlb8phNHvf5oyWsc9lE8jFAMo5CqcgJcCOCUqkN+oLT+5o4+n9YVpOI?=
 =?us-ascii?Q?y64MyiDX1gB9E5KSpS0AQgwg9K/hr4PRl5t5oMLXFVmCCmPQQU0BCPRPCT2G?=
 =?us-ascii?Q?n9MIlmC8cFlwPwLv+AuYGoa5ksxWVcpaXiAld8iO8h4JiHr6xergcq2fy6fL?=
 =?us-ascii?Q?5jTSaljD0abxYbx3m8Fcy62Pp/R06tJDrcT3w5/ilIcorT/Twto3KH4RTfqS?=
 =?us-ascii?Q?RAWu5jMFjxxfV6XYU5Mz268qKnJ+aevCrsjtMRT43zqWXk7F8p3QvDbic+aK?=
 =?us-ascii?Q?9OQaHnm+yGVh1AnkXHZeNpOXY9iAqoWWwM/k5wMIuMoiF8/pZcWwzN6VOFww?=
 =?us-ascii?Q?U6YkoXdodGckxnhwOZYyfFxr7a9Eb7nYM2+/CBadoRmS30w99LVknzOJoDPV?=
 =?us-ascii?Q?gpZOrSgvUBB5aPI94Zvh45TiKT+NF068OU33Sc7LE9whfDLrfex89nuHMvtg?=
 =?us-ascii?Q?l90auR34ZvTMEugOxA5gqFTkiLWzn1GhJlPJCK2+58jyzRdXPilV/Lb/OyZz?=
 =?us-ascii?Q?CcLQ8pk/biYW0QJ7YTg9BNQ5qergGdIq2GcD7TwVrdPllvP36J0X3Xj0N9E1?=
 =?us-ascii?Q?cTgQf7s+3IKGagoJEoMWyEZYWj9ZyZOai6UB4zpEpXUOlAuWj4359qn1BBlE?=
 =?us-ascii?Q?qSDzya2ywubgwrb7lvnIo79WFZf7Yapwgu8Bad+3Q9lvEfyZMUALLxLGlWg1?=
 =?us-ascii?Q?38L6hy9vtplJrlKMKNp+eFPUk0fEbevNJO3lWVdNeOuj8g3+OsZs9J9hjvxd?=
 =?us-ascii?Q?IBUTWWoKpBtv9OUVntz677MZOMoL6U6RlK9vpj5HUUV+HRb4Cj+OAFICo8K6?=
 =?us-ascii?Q?/++WFShFavjwdXRy5iWc3c2etPW78DqG/oX70B2oChHmp7MKEGaK5VE0T5i1?=
 =?us-ascii?Q?PEDpeuOMKw4ijFELu8i0mIvBhUv9ITZAtwmxvlTFYXuOxVHhU55nCS3L9zFI?=
 =?us-ascii?Q?jzKwOggEJb4R6s2lXpmYToss?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR09MB6612.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6c933a4-1c3d-4292-8aa5-08d91714cd16
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2021 20:13:55.4797
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4985
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from:to:subject:date:message-id:content-type:mime-version; s=BTxNELhf; bh=TpQWh4NsCmXL6bYED8kvxZ0qoTdKwSmGZD4MDcr5z6M=; b=Nj6Nms014843HNTeW9mkzq+EUZs7JtviKZsfHWqapRp+wn3Xjs7qXZOsnhgN+b+QVJwX5TsOHFcTFQUMAoEiuScECKRyxgiTz8xdD8bJfyCC+w+1gCXuHHdw8WAjWcvNZ85r843xb1s9sVFvM151GXefX1pReFaYQYgyZcN6TpQ=
Message-ID-Hash: LU32A5AHN7WTX7OLBDYE4JUFEULYUSOH
X-Message-ID-Hash: LU32A5AHN7WTX7OLBDYE4JUFEULYUSOH
X-MailFrom: jplong@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MSYXUDUZGV2REYH4VR3FJEJZ7EJJBUFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1215905433752074309=="

--===============1215905433752074309==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509BLAPR09MB6612namp_"

--_000_BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509BLAPR09MB6612namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am going through the examples in

Getting Started with RFNoC in UHD 4.0 - Ettus Knowledge Base<https://kb.ett=
us.com/Getting_Started_with_RFNoC_in_UHD_4.0>

And I thought maybe I had messed something up but I noticed in the example =
the real block name is not there either


   |     _____________________________________________________

   |    /

   |   |       RFNoC blocks on this device:

   ...

   |   |   * 0/Block#0

   ...

   |     _____________________________________________________

   |    /

   |   |       Static connections on this device:

   ...

   |   |   * 0/SEP#4:0=3D=3D>0/Block#0:0

   |   |   * 0/Block#0:0=3D=3D>0/SEP#4:0

   ...

Is there a reason why this does not get reflected in the usrp probe?
I am running it on a E320. I built my bit image using the OOT approach. Mov=
ed it over and the .so created for my block.
Do I need to bring over the block yml file or something?

thanks
Jeff Long

--_000_BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509BLAPR09MB6612namp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">I am going through the examples in <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/Getting_Started_with=
_RFNoC_in_UHD_4.0">Getting Started with RFNoC in UHD 4.0 - Ettus Knowledge =
Base</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And I thought maybe I had messed something up but I =
noticed in the example the real block name is not there either<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:solid #DDDDDD 1.0pt;paddin=
g:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp; _____________________________________________________<o:p></o:p>=
</span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; /<o:p></o:p></span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC blocks on this device:<o:p></o:p=
></span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; ...<o:p></o:p><=
/span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * 0/Block#0<o:p></o:p></span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; ...<o:p></o:p><=
/span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp; _____________________________________________________<o:p></o:p>=
</span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; /<o:p></o:p></span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Static connections on this device:<o:p=
></o:p></span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; ...<o:p></o:p><=
/span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * 0/SEP#4:0=3D=3D&gt;0/Block#0:0<o:p></o:p></span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * 0/Block#0:0=3D=3D&gt;0/SEP#4:0<o:p></o:p></span></pre>
<pre style=3D"line-height:15.6pt;background:#F9F9F9;border:none;padding:0in=
"><span style=3D"font-size:10.5pt;color:black">&nbsp;&nbsp; ...<o:p></o:p><=
/span></pre>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a reason why this does not get reflected in=
 the usrp probe?<o:p></o:p></p>
<p class=3D"MsoNormal">I am running it on a E320. I built my bit image usin=
g the OOT approach. Moved it over and the .so created for my block.<o:p></o=
:p></p>
<p class=3D"MsoNormal">Do I need to bring over the block yml file or someth=
ing?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff Long<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509BLAPR09MB6612namp_--

--===============1215905433752074309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1215905433752074309==--
