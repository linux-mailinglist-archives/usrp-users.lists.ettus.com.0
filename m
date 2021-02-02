Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6092130BC88
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 12:06:21 +0100 (CET)
Received: from [::1] (port=45784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6tVd-0004Ff-BQ; Tue, 02 Feb 2021 06:06:13 -0500
Received: from mail-eopbgr110137.outbound.protection.outlook.com
 ([40.107.11.137]:7635 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1l6tVZ-0004AD-98
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 06:06:09 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IOqus8yofdmkRYljD/sfCXFu3jVmi/EjNkwQnkjGnJrLoz579pnwcKh7qCdSCDztJA4UJ3eVrKcMXFIj2vCYWUYUHLVk27FSmcKYbycMlbWatN8ypEeEBOoLyAzPT1SGGfLO5FXY1ptnGSXzl5mtqlm9kOxEld+mC7EZHLwKjP3wnRvbzfbRiTSLRQAW6WPw/e0+j73hqVXgI4hEsP9a0dX+zImwt+Ln0h4rDswmsu1OQXNx8JoArLmomFQuMrIlJUyhT65/sIfWaKCgTla7MdvoDxbgNjofohU3NReifWsKLbl1vZMk7mWhnMZSdWcqt/PLpO6pVlwkv0rEXLmwRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZOA4u7PcGXISo3PtAfREhmPLGHSWQOueDX3in7BeEnM=;
 b=Xk4H1Br8SRfawY9Pr0+l8YWYzTJChye5mPXVXqDsFfgRm90CreMg5SSsuNIkj/6jS8eUOtQIeDo/HBQpEz+MEnrl75VaTMY/BdV3fsrXARnus1IThYbxEZJg5iHGQrNt2Di7qMEljxOvUyL6EuEOl+89FE/uSv+lu5VGt2jl70TbiJzATebfjp17R+pO9MAuwRhx4zbWmzio0a7oapB8MhigM6RkrpJfonfdtD2qLNyUtKjgo/YuR62CjhMaBI+HW4kiYpTn0Zs0jEJpN9UTZ9BFhwbcPjNaQ63DPue448Cx+eDCKDmA3ODmhow1aoQVRUWv3ka3coGP34XdozbL8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZOA4u7PcGXISo3PtAfREhmPLGHSWQOueDX3in7BeEnM=;
 b=Df48S0NV3vhlFkR22Q7xct5ez3w4xF5YTEuShE8Ir/3WtlEsPijYthO5i5e67lWjqLeuqhsjzI9WnmBu6n4RleSZ7+gaeAqjn9PTQMkUe9ZLPtFZupIIva1YmpuO5gqNy0CKTYMpvRKJ9cBmtMGDyZb8t+0uJnXAOYkC7HZ4rwk=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LOYP123MB2893.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:ed::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.19; Tue, 2 Feb
 2021 11:05:26 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3805.025; Tue, 2 Feb 2021
 11:05:26 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Opening Vivado GUI during FPGA image build
Thread-Index: Adb5UifNbGHjaHXZQZaCPPt8iNPFaA==
Date: Tue, 2 Feb 2021 11:05:26 +0000
Message-ID: <LNXP123MB372437DE53B4243C99065495CAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9917818c-d0dd-44fe-8125-08d8c76a71e0
x-ms-traffictypediagnostic: LOYP123MB2893:
x-microsoft-antispam-prvs: <LOYP123MB289372FB80BDEC2156C3602CCAB59@LOYP123MB2893.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G+uGOJZaIF4QmmRQ2NjIwaoyIZjpipRMx7MIc5i7VVNXy6/3qdIywKBHokydI0QjGQezOs2btRP71ztEIeiWZ+SeGW3er/yqE4s0vZgNRAq9QH10TniaKLHG6omAatvh0fd+d2fJwVqelBqG5TfbiCf6p0K4jE1xvMA+PGXVSoy3ouC5FxU6Hpy6k/FZM8MWNCCljp9ScJ/pMfLP99ZxHOwtpinUJhdPX93/viSFutj6zUo8bXbeERAsyD4yeyx/7u1JIIGWdP5N7iZ4RwrK6XqjzU+SLOK2rgzRDKUGaMVzzj5/hPo6sMBThJvfx2zBxcEjT1NOdvtoI+RJR3OV3HBPZi+6NvNbAywFpCawnqUZCWHQnQH5C7w4mt3mas+4f76OqKCbEbHwLhmEi1lk+dS45HhwZGz92Yu+76A1iVJPGrJG/leYKT3YjI5HyQcAjlsyysnuWRiHg1Lmw1CZasRUZ6yQsZCiFivooRJ1yoW5KxfaEgdB2HL2MDM1pSpr9Fg0xX67POV2EEOOD80OOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39840400004)(366004)(316002)(83380400001)(7696005)(64756008)(76116006)(8676002)(52536014)(26005)(71200400001)(86362001)(33656002)(66556008)(8936002)(66476007)(66946007)(9686003)(4744005)(55016002)(2906002)(6916009)(5660300002)(66446008)(478600001)(6506007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?lZXXkJyxC0Nu2dC4RweTXaN8n4YTttrWrUBEGbc613qUM5CvG7PkhQYOOuec?=
 =?us-ascii?Q?4aliAULkz8rwR2fdTlTr/XqGpmgeWOBFpbAHTlqTi/UlG+trpgB/ysBiZrE8?=
 =?us-ascii?Q?bOsMP+10JP3gyREpGQ6z2qgQTdkYB7IHfCQPYDK7VMNiuGvy5t/lwcO/Qk/R?=
 =?us-ascii?Q?S1ds6P31NaX4n+/GeqNi83mcSUPjqykkWdM/5eEBnZExacnxvx2g+bpnTG+8?=
 =?us-ascii?Q?dWvMEB8v2r7Lbe9MG+1zHttrlr0wy4ROEduZkuQViTmXjNoqAM4juc1Uzj07?=
 =?us-ascii?Q?b7yCQD/db2Ym3y5ToE6dBqeTkvqb5PvNmhzYXk/uQrJUiBjN4qcBRyKRXjiF?=
 =?us-ascii?Q?xwdyDaOW9mzvQvrbAOHVD4bc/l4t3Azbzqo6d+B6cZi5CtT0kbXKzQ5/cDGI?=
 =?us-ascii?Q?acJW+07qh4AMNJBMIErPnEY2ltiQ6GEKPfUHauzK2tS9KTnWqhkMiU4eM8Ya?=
 =?us-ascii?Q?Y7EIQdWlToqo2J4p/nKapYIYRjFrIV2e24UwK2I0kn/uaeFnZ0bpbRLV1K9g?=
 =?us-ascii?Q?YnspHBhgpRTLaDT6II/GcD2MUwaQwEB10SWAOsqrOBQHCDeJ5hzWuTfjER7F?=
 =?us-ascii?Q?6wt0HHqnQBvTgQA8Hhqo4jciad3vu2/RnGPhADDpDMcPR8QZSchbGiUX/O9i?=
 =?us-ascii?Q?hp+NSz4rzM6hZV4dF0WjedUL551vxVFVhgB6+blu97Bo8IjRFxMucNDoYUIi?=
 =?us-ascii?Q?VIElqF0xfSXSoY0S0pKmUspjElmHaPVVWQBtUAGl67ZEOznEGjn9KCwyZCpN?=
 =?us-ascii?Q?4e2UWSFlWXNJuR2vleFWiM7Omz6Y0LAYekpGrapllUUygF04xMOu9oiwcLib?=
 =?us-ascii?Q?A2fehvGRJPmfOeyvkVy7aYuDzhlPFmuMjXY3OS8PJM+ytlGw2jZ2Z19uK29l?=
 =?us-ascii?Q?lnYJNBJAENmUvUO8NtLVIfMMLrHflNc4YsN7QEFWVJoNc7shdslqANRZ7SZH?=
 =?us-ascii?Q?nz1bGVg3c0XEzxwMRo1IHgYaLVBGhm8VCFXl2joGPZYWTfGb5iOK2nY+WS/Q?=
 =?us-ascii?Q?Yljo854/AeBas5nrE/ikYbfUS1+sBkCVS66ZBvH8MT8DV1VdazJVBjcBOshp?=
 =?us-ascii?Q?2+TIhgJn?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9917818c-d0dd-44fe-8125-08d8c76a71e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 11:05:26.3297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8+C1ZSKUPo0l2TY2w29znA47ggykhgXPl8rRRw9zPWm15+Dclb+95fRPSuKt44PRTx05U5lJr5ybNTzVtfSvzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP123MB2893
Subject: [USRP-users] Opening Vivado GUI during FPGA image build
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============4501992922422817064=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4501992922422817064==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB372437DE53B4243C99065495CAB59LNXP123MB3724GBRP_"

--_000_LNXP123MB372437DE53B4243C99065495CAB59LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm using UHD 4.0 and building an FPGA for the E320 USRP.

I'm trying to follow the guide for debugging FPGA images on the Ettus websi=
te AN-121.

I'm using the rfnoc_image_builder command to build the image, and have adde=
d the -g option to open the GUI during the build process: udd_image_builder=
 -7 e320_my_fpga.yml -t E320_1G -g

However the build runs to completion without stopping to open up Vivado.

uhd_image_builder -h shows that the option of -g or -GUI is listed as openi=
ng the Vivado GUI during the build. I've tried both -g and -GUI and neither=
 had any effect.

Any ideas? AN-121 is a few years old, is the -g option still supported by u=
hd_image_builder?

Thanks,

Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB372437DE53B4243C99065495CAB59LNXP123MB3724GBRP_
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;m using UHD 4.0 and building an FPGA for the=
 E320 USRP.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to follow the guide for debugging F=
PGA images on the Ettus website AN-121.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using the rfnoc_image_builder command to b=
uild the image, and have added the -g option to open the GUI during the bui=
ld process: udd_image_builder -7 e320_my_fpga.yml -t E320_1G -g<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However the build runs to completion without stoppin=
g to open up Vivado.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">uhd_image_builder -h shows that the option of -g or =
&#8211;GUI is listed as opening the Vivado GUI during the build. I&#8217;ve=
 tried both -g and &#8211;GUI and neither had any effect.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any ideas? AN-121 is a few years old, is the -g opti=
on still supported by uhd_image_builder?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB372437DE53B4243C99065495CAB59LNXP123MB3724GBRP_--


--===============4501992922422817064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4501992922422817064==--

