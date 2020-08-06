Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 004C123D4EE
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 03:00:08 +0200 (CEST)
Received: from [::1] (port=45710 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3UGH-0003SM-NF; Wed, 05 Aug 2020 21:00:01 -0400
Received: from mail-mw2nam10on2062.outbound.protection.outlook.com
 ([40.107.94.62]:53504 helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1k3UGE-0003EI-3q
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 20:59:58 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/STaxaEMMWpqE4PG3QroQBLxgRTcOcPNuxlDTkfUcGZIhhKG6PKKIN6V3pU3uyz2wn77I+KBA+Y19N4+A4jaIcmwMASh3nv23OeRDLlFtUA8LjLz/yNHJiQItfutpixS5x7Wcv7Ngb0yz4ZLSfvEkT+Amod4b/rC7XOMBh2OAOCtwPZNwZwyAxTM5TL1LpXDN6dihsbiManyGMAiaITT23On2oVeuCAqKbFHeZq0CC1mNcQx9yw528XRXUaZ1pDCDFtxkO0g0m4z/yDxUzfS6zj8ZOZ7GDN/0Z9oFiyGGFi7LxgwpYBzDShwtmKUeyKeBc9mFYayI1tED/m4mCFGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABKiDlwP7nmFraq2rZoGN+JUyh1slScGNYE16u9eA7g=;
 b=mkZQOr/8285v8WlmbHcCCv+zCOVGqx5eULYtgjRltezPBG7T4/ntEfb19qadO0EDrwWzCmq3SEscRfJ1f7ge3GA/zeNT5qsDdjXzAoxV8bweufHUDZGNu+JsLaqRD0PeldytnFLLu5AXKnjvfRz9cfU6uU5vvrfGZurubvT6JeIls4aS3Yg0Nzp5Eh4rpSPKrk0P8xgMvWtkxex39IVZJtG2+dp1E+cm5Ijg7UUdEaYOkvcVaykNv/LOhn5FR5loh41AF3SgzrPZo7l2cIDNzMog6I/y5kdTq3k++5PjmfpMhVHsz9E/g8HzC/TsB+2L2zLR0QkK5BkVoMp7n4RDkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABKiDlwP7nmFraq2rZoGN+JUyh1slScGNYE16u9eA7g=;
 b=qM2hr8L2jP8kKvzz5XXCeqeLcM059X7pfGBPPagVd8nb7XGIieB3yKX3S7BEVNYZjzXedE39cf+MFxjrXELMU7SmPsLGdva8kHrW1+i8+9CkFKSFMAORY2pSBzWmFagemDohuQo86yXE6nQLbXMUc+HnMskI6Th7MH7Fk5wBCvo=
Received: from MW3PR19MB4268.namprd19.prod.outlook.com (2603:10b6:303:4f::17)
 by MWHPR19MB1598.namprd19.prod.outlook.com (2603:10b6:300:cb::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.15; Thu, 6 Aug
 2020 00:59:15 +0000
Received: from MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643]) by MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643%9]) with mapi id 15.20.3261.015; Thu, 6 Aug 2020
 00:59:14 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Re: Signal transmission on a USRP X310 
Thread-Index: AdZrivNoV+iGtol/Tn2uhhGDwEKMOg==
Date: Thu, 6 Aug 2020 00:59:14 +0000
Message-ID: <MW3PR19MB42689B9327EF7D5DE58E3739C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74533437-208b-44fc-536c-08d839a3f074
x-ms-traffictypediagnostic: MWHPR19MB1598:
x-microsoft-antispam-prvs: <MWHPR19MB1598A316D9A6E237045C6277C6480@MWHPR19MB1598.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: faZWr+zCDi9KqcDkvkY/C/59iuZ2OjjYbOUUpNThizPxk5ciiVyAAB3yrQIFugsFdgDtRae8hOSO91LfGGZipj1pTrzefzBGIqNdkYTYW/0ThD9owkY2jLQo2C/j4lh+Qxt8DYMFDL7c1kRX/gr6lMIoOaeg0nnHKej9fRNUiOEjNiVUUiIrs+1Qvc9OtrcnBC/gfp8b375OGKugTxao6k2eNnYBGTFh2h8KYL154sQEleT32bOXYhua2pzWYfb9/6hrfdecJxcxQKgo1fmH6ddXXwzbxs21CkDjkUaFJIigQyosl4f1AAwCl4+R9Oy2zZgtOW58iHrY83sdM+vRxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR19MB4268.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(366004)(396003)(39840400004)(316002)(66946007)(76116006)(66446008)(71200400001)(5660300002)(508600001)(64756008)(66556008)(66476007)(86362001)(4743002)(7696005)(8676002)(9326002)(6506007)(8936002)(44832011)(55016002)(2906002)(26005)(9686003)(186003)(52536014)(83380400001)(6916009)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 9osT1XbqsPx2/egI53tk5RmUfDBO1z6yO8Uu8kfaIgbp/87N91o09dAOYKHow8BqVT5CC3XIvriAUfjEKVZt8iBWbR1dbzFFhSdZRu84xM9VQholGLi1a99UondNrcJhZSyOY44xSeQWIaExXnTuHuEke3iQLzBgGdJX3ift4rZGNyy4bvoyTH45Cq7+tYqFLiR5le/9ykAO6WY15GJ/tqibYi7vksLafMPSt/TvJSPUPuZjqFw2BdMEWB5EPned9Lj+6Mpq6rN+55nqUCcAhGUplRgxVAaUKDp516gYfHiKmUp/OOMmdMvG2y9Rl5T4xgiwo2X3DmAybMF8BcVUQfwtrXa43QPTePidP+nWHkWz1FTlQtRRUJCVqV1I+dW85UpwNqCj28/J8WIJ+X8NyMFN43eTkcahqe3SACwPpg39frC1zlwV7+FUdQSi/8HL0jKVvaplquqCOQgnqhhp8SDk5PHtvdgIM+cV7xrQo4VZoBbKD1xFFK1SojoC5IvGbCm1VAdB8aNrzHcM39La4dVmsedlZRpNFmRjxq90CpTLpsqS+Wnur5F2HvjlRUffUafE4nPpw1bVO19gZksTIgGCYp6IqcDdneqt8JkcmAgpQaGvlBI0ltr1e6KOSnD8Xt3xYjPCdTQemHelb4Kw0A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR19MB4268.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74533437-208b-44fc-536c-08d839a3f074
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2020 00:59:14.7063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JuPyunXL7Wo2NqaHg9fCKra4vya00fuyyIhBYx75cNhwKDq57NZ3r/zv3dNYsY9DX9hyj1X28/5hY1YfL7eZu+7fc/2SKrxlMYaFia67Dto=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB1598
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============7415569748045741222=="
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

--===============7415569748045741222==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW3PR19MB42689B9327EF7D5DE58E3739C6480MW3PR19MB4268namp_"

--_000_MW3PR19MB42689B9327EF7D5DE58E3739C6480MW3PR19MB4268namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Marcus,

I apologize for the delay in response, but I was able to solve the problem =
I was having with sending a signal at frequencies above 1.3 GHz. Turns out,=
 in one of the two USRP's I am using for my project, I managed to get the c=
ables for TX/RX and the RX2 flipped around when I set everything up (so I h=
ad the cable that was connected to the TX/RX hole on the front of the USRP =
connected to the RX2 terminal on the UBX 40 daughterboard, woops). Now I am=
 able to get a clean signal transmitted without issue.

Upon fixing this problem I stumbled on another issue I have been scratching=
 my head over this week without any success. When I turn on the USRP to tra=
nsmit a signal, and I have muted my signal source blocks in GNU Radio Compa=
nion, I am still getting a signal. I have tried using both USRP's and the s=
ame thing happens, a signal appears when no signal source is supplying data=
 to the USRP from the PC, and I do not understand why. The signal is about =
2.125 KHz off from the center frequency set in the USRP sink block, with a =
power of roughly -100 dBm measured by the Spectrum Analyzer I have access t=
o. The signal appears even when I have a null source block connected to the=
 USRP sink block. Is this something that can be fixed or worked around? Is =
this suppose to happen when transmitting using a USRP x310 and a UBX 40 dau=
ghterboard? Any suggestions or insight you can provide would be greatly app=
reciated.

Best Regards,

Jerrid Plymale

--_000_MW3PR19MB42689B9327EF7D5DE58E3739C6480MW3PR19MB4268namp_
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
	margin-bottom:.0001pt;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I apologize for the delay in response, but I was abl=
e to solve the problem I was having with sending a signal at frequencies ab=
ove 1.3 GHz. Turns out, in one of the two USRP&#8217;s I am using for my pr=
oject, I managed to get the cables for TX/RX
 and the RX2 flipped around when I set everything up (so I had the cable th=
at was connected to the TX/RX hole on the front of the USRP connected to th=
e RX2 terminal on the UBX 40 daughterboard, woops). Now I am able to get a =
clean signal transmitted without
 issue.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Upon fixing this problem I stumbled on another issue=
 I have been scratching my head over this week without any success. When I =
turn on the USRP to transmit a signal, and I have muted my signal source bl=
ocks in GNU Radio Companion, I am
 still getting a signal. I have tried using both USRP&#8217;s and the same =
thing happens, a signal appears when no signal source is supplying data to =
the USRP from the PC, and I do not understand why. The signal is about 2.12=
5 KHz off from the center frequency set
 in the USRP sink block, with a power of roughly -100 dBm measured by the S=
pectrum Analyzer I have access to. The signal appears even when I have a nu=
ll source block connected to the USRP sink block. Is this something that ca=
n be fixed or worked around? Is
 this suppose to happen when transmitting using a USRP x310 and a UBX 40 da=
ughterboard? Any suggestions or insight you can provide would be greatly ap=
preciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<b><o:p></o:p></b></p>
</div>
</body>
</html>

--_000_MW3PR19MB42689B9327EF7D5DE58E3739C6480MW3PR19MB4268namp_--


--===============7415569748045741222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7415569748045741222==--

