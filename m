Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C24C128FF76
	for <lists+usrp-users@lfdr.de>; Fri, 16 Oct 2020 09:52:05 +0200 (CEST)
Received: from [::1] (port=47716 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kTKWw-000158-1C; Fri, 16 Oct 2020 03:52:02 -0400
Received: from mail-oln040092254081.outbound.protection.outlook.com
 ([40.92.254.81]:31378 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kTKWr-00010W-Qp
 for USRP-users@lists.ettus.com; Fri, 16 Oct 2020 03:51:58 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvZVJ4jQgGEh/waaLMr/x3SG6MdIABUqdlgdLirMqOEptu6rIEwmRfJKvO4HBvNKQmsZZQDOtcFLevyM8nDKZV4i2bois05n403AEPqsIl/gAaGNtD+EmXyyc9EzCIccIjeVG05+wHZUb46AMjgGBffY2Ji9TqALEYgfagykrzPTibfuVNxSyzjmarWEzfnOgtcHKQ3bSELJT4fc5Kc2eeU3tQKJdw4Vu2Y3u1BQ05t+TqmvgL1JQA9LLv315hIrLvOyS7uWJb1v2SL9NBkTDjVjwkdSYrIYsFg3CnaJuyl1kWhJgvuT0uy3NM1klq8Qwescyh2C6GxjPlTjnw8g2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RuAGzoyn39pm/r5nrsSrPnC96wiCL9iNIDVZxJbWgzo=;
 b=EiUJ3vZEOX0YKxLc1lf7p1/44Quhtwhhamkf4UPmb9u78B/b3L5haovOonEdUzl+apqfF36DsAXpScJTrY1xxuH03J9DriKqeZCH/PbY2vaZR6q5zMGXabka7l4zyZXOQUvBm6lzLBZhIiHrnfgbcACTxBmSS2kG8uZs5uz6x1wKUYdh7qs986ECjzaumlEAnt09vLd+sAg42/6XDVMK8hMXhQFX1kGpAuHHr9NxyOFwxEf2CDAkkP+kjicT9pvjrydli1pz66+M/KcPkWumhDsBP9CgAtYmgIxPAJQBA4WsvYisHvrThq84qDUuZnAkA4CmQxkPFB4QvuzRgCse9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RuAGzoyn39pm/r5nrsSrPnC96wiCL9iNIDVZxJbWgzo=;
 b=boELZfOaNlQvTEXmt/gp0f7lOZ5FvYnrQYwpE47shUljRN14Y63InRbRyoIOEeMSP9yrW1xV2QJZRgfQ4wNA4fzDN7TNM1MyPA6SXLUkLVm9mCTSyisXghtEzt4IY1xlCWiXg5CHCgNcv2sbPbulPs+UOqcnIO72hBoJnXHyiCaxDUSwOr3OR25L1yh0vcpYhxIyTpjBjyOBDiBNXA+HC0QJrwxECXSYxzWv4YseBSqufaOigoFCv3Sjm33osmpqnzp3ihq4fSHQpm7XvGmuMia32HUXLOuQMaeDzu5MLoukeO0JBDxpggut8rB/A2t/+hSvNHMshRV4xweIsjFwzQ==
Received: from PU1APC01FT038.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::52) by
 PU1APC01HT144.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::510)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.23; Fri, 16 Oct
 2020 07:51:14 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com
 (2a01:111:e400:7ebe::4c) by PU1APC01FT038.mail.protection.outlook.com
 (2a01:111:e400:7ebe::392) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21 via Frontend
 Transport; Fri, 16 Oct 2020 07:51:14 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee]) by SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee%7]) with mapi id 15.20.3477.022; Fri, 16 Oct 2020
 07:51:14 +0000
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] How to build N310 file system image
Thread-Index: AQHWlt0B8rzEMtYCKkm5HfO8EMDqqqmAoimAgBlSCYs=
Date: Fri, 16 Oct 2020 07:51:14 +0000
Message-ID: <SYAPR01MB28487ADC6FC52070151510CA9D030@SYAPR01MB2848.ausprd01.prod.outlook.com>
References: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F741327.5030501@gmail.com>
In-Reply-To: <5F741327.5030501@gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:5E755B6E4C8174A221C75034A1AB561B54CECE08AE47DA57E707E3FBEB32A6BA;
 UpperCasedChecksum:20B6C8A1352B9C4A71B805692486F60CFD5A28166EC22420594D71747EC08BAC;
 SizeAsReceived:6885; Count:43
x-tmn: [AvXpfjdsPhS8EQC/qnOYJDb/hdC0P+vx]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 5890968a-c33d-40cd-86aa-08d871a841b8
x-ms-traffictypediagnostic: PU1APC01HT144:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TJVfnRnSf/JOCSSQMgvU1Xz6oxdg4rmsM9g69+za2UACnUYus+mlBSTz2FMIW+Ex+BWT6iv29ggt44rbsAzEwBPsWpgXBVEgFd6Ri23U4O+YhN/u7OkN6rZ2uCIklPG0Bo9zWKoI+W8/WQB89zZAVFpjT7vmlYWhsAwX4TYHtG6Z/ro4Ij7cy1spXzi/uFEsCqOn0ljjv2o5VM5m7/RyY6Emhbvs+/SfY7faMHRGSb1mB7N0IZJxKuTl2pbgP1Ez
x-ms-exchange-antispam-messagedata: pEgV0bT4nowovTcHh8BXxDok9R1YefxT8gej2a1LTXBo6JBNt/zpFgS0sJFC7Cfi2/PYamCnH1IbAhTpQbVnMZ95nPkpensaPvGm3Dr40NonBvteaQGBQy+Vl8nA/PHfsdYC43tgiupWDEduINU2hw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT038.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5890968a-c33d-40cd-86aa-08d871a841b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2020 07:51:14.3641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT144
Subject: Re: [USRP-users] How to build N310 file system image
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
From: james Thomas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: james Thomas <james_ttfun@hotmail.com>
Content-Type: multipart/mixed; boundary="===============1127100409801110131=="
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

--===============1127100409801110131==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SYAPR01MB28487ADC6FC52070151510CA9D030SYAPR01MB2848ausp_"

--_000_SYAPR01MB28487ADC6FC52070151510CA9D030SYAPR01MB2848ausp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,
is there more document of how to build this source?
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, September 30, 2020 01:09
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How to build N310 file system image

On 09/29/2020 11:52 PM, james Thomas via USRP-users wrote:
Hi,
where is the source code of N310 file system image and how to build it?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


I think what you seek is here:

https://github.com/EttusResearch/meta-ettus



--_000_SYAPR01MB28487ADC6FC52070151510CA9D030SYAPR01MB2848ausp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
is there more document of how to build this source?<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, September 30, 2020 01:09<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] How to build N310 file system image</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 09/29/2020 11:52 PM, james Thomas via U=
SRP-users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
where is the source code of N310 file system image and how to build it?</di=
v>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>
</pre>
</blockquote>
I think what you seek is here:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://github.com/EttusResear=
ch/meta-ettus">https://github.com/EttusResearch/meta-ettus</a><br>
<br>
<br>
</div>
</body>
</html>

--_000_SYAPR01MB28487ADC6FC52070151510CA9D030SYAPR01MB2848ausp_--


--===============1127100409801110131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1127100409801110131==--

