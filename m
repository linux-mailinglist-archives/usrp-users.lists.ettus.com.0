Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B467FDCE
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 17:51:18 +0200 (CEST)
Received: from [::1] (port=44320 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htZps-0008HK-83; Fri, 02 Aug 2019 11:51:16 -0400
Received: from otransport-4.outbound.emailsrv.net ([54.84.14.167]:39580)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1htZpo-00087y-3O
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 11:51:12 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-4.outbound.emailsrv.net (Postfix) with ESMTPS id BCB33616CE;
 Fri,  2 Aug 2019 15:50:31 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2059.outbound.protection.outlook.com [104.47.33.59])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 62B80613C3;
 Fri,  2 Aug 2019 15:50:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQcQWrcVy5Ir425CbkLDITBQQhmW8Y2s0J5cLYj+gTOnE7ti42RkzWGdTmkWH4HaBMJ0FhBfbpe6XIPa0F6y4MlVwudy0UhWyufmh4RBa7LRrNpd42Upq3BVNz2ptZi6oV631oX/dxtzP5goAtY8uVa9F+erjrMXmOO8lTaHvpfjJO3KQasNwXW3blW4xo8+cZHbtvbv/TQ//5b7U7qX1XKrPFbsv6cjFyOTBl2m5cxZtm03Fd90qjkIVSkb1CjYwxr16Q71QwxCcx74HV5qLHLjhF26c/G8cmPujM/XkBNa/RMEbiW5q6hzxT/RXErgJLFSLPKe7LPtCasKH32r/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8h43KI2mCCwM58No1z7/um10CBRWBu8S/sNQ9NjwEA=;
 b=aKiLvfzwl/5pOzelBi4xDGPDFUnU+9GPj1jZPL4b4zC9Ceey+uVZshqLvLpwPHQ39jYEx/DY6BheYoCh8K1B0WlWe1JZW/kIYlDpPro5SZJtOPsGIfLb8UnkTiwlqkeZtvmW7m2iTJs86j1gKDdgMvKnYbry+th7a6Re93dHw7JVHJmtD5D8WvtacSLaN4Q5mkBYAmVZlPfl8q1OPky7o0hvfCKE6vf9HwWYD4S04lGwS79H7N1rnVBbinm0Y/PKphS3DqfAWBhpS2qQxFmjeGEkKRz3WPqsay2WSKcVe3JhkrACZfkIPwtK3qL4VvdIw93IJAdAZ2/1LP1x2ylNtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8h43KI2mCCwM58No1z7/um10CBRWBu8S/sNQ9NjwEA=;
 b=NJa3OjGIOqKHZEC2tkdqkY15ePI3aKoy52GBkV2CCECiZcZeWkSmcUVKnayR6b/eBgZUb1NTueaP9LrDUl8QpUvVgpIrgNIswVyoxZRXjmKL2SLsu6zto7i+QME81eG6tDkvW3diaLu2dMoXVklnF9Y6JVkJ15zj2tJs40HBZpA=
Received: from DM5PR12MB2342.namprd12.prod.outlook.com (52.132.140.165) by
 DM5PR12MB1305.namprd12.prod.outlook.com (10.168.237.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Fri, 2 Aug 2019 15:50:30 +0000
Received: from DM5PR12MB2342.namprd12.prod.outlook.com
 ([fe80::79ad:d314:ef63:1e52]) by DM5PR12MB2342.namprd12.prod.outlook.com
 ([fe80::79ad:d314:ef63:1e52%5]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 15:50:29 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Lars Kuger
 <lku@inets.rwth-aachen.de>
Thread-Topic: [USRP-users] Error 'Timeout on Chan 0'
Thread-Index: AQHVSTk+DumZtfyjQEeLOgqLax5Lnabn5nOAgAAaN2w=
Date: Fri, 2 Aug 2019 15:50:29 +0000
Message-ID: <DM5PR12MB2342B15BEF975C16D69A14D2AFD90@DM5PR12MB2342.namprd12.prod.outlook.com>
References: <0DDB54B1-7013-468B-B0FB-CB0262804513@contoso.com>,
 <c82d5049-525c-f985-fabc-7b29b2687225@inets.rwth-aachen.de>
In-Reply-To: <c82d5049-525c-f985-fabc-7b29b2687225@inets.rwth-aachen.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36117ac9-ccf5-489e-f835-08d71761252e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR12MB1305; 
x-ms-traffictypediagnostic: DM5PR12MB1305:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM5PR12MB1305F1F7961B9AAF5DE89394AFD90@DM5PR12MB1305.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(136003)(346002)(366004)(396003)(376002)(189003)(199004)(76176011)(2906002)(102836004)(3846002)(508600001)(7696005)(53546011)(66446008)(66556008)(64756008)(7736002)(966005)(446003)(86362001)(66066001)(6506007)(54896002)(71190400001)(68736007)(6306002)(53936002)(486006)(66946007)(476003)(105004)(52536014)(11346002)(236005)(71200400001)(76116006)(55016002)(66476007)(8936002)(25786009)(606006)(2501003)(6246003)(5660300002)(74316002)(256004)(9686003)(81166006)(186003)(229853002)(6116002)(26005)(316002)(8676002)(6436002)(110136005)(99286004)(19627405001)(81156014)(33656002)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR12MB1305;
 H:DM5PR12MB2342.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sIRyHOgrkL+kdfNm6TuLhOmzxwFJA/RgZCAc825Es1JD86PjuDQ8fU5UHuFqqO2pbn3Oth8Osu1Hsqe6RB25TzalPnAjmAoajSF9pu62nMh19Z4FNVF3EMyVxdRx+iarHtGqiGr/XkfRg6x3eikNGf1RTod6rhi1pHPUaFpJQuSoIryOk1NLQaM/9iz0zQGOw4oSvP1K/4iuNipIMA1dRLXd3CsF2oTRSw3ljhjCZeGWy5PdLdvXDoqyr4Hqc8kgWuwkVMxBFrLt63coxaOcXsDKHSoR4okbFfhW+L4qDBjD0KvIQFpbSNBhQbr5wzjUul8INZjRrwAd6aHxMRBN1GMt8bK4GqrAJy9RW+hQlIpkn+B/Oi33EkiEZyMZsruCWGsPxDCSIixEFfJIfUQ24MfXjZZI0lzz0M9UHmQKIJg=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36117ac9-ccf5-489e-f835-08d71761252e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 15:50:29.8206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1305
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam01lp2059.outbound.protection.outlook.com|104.47.33.59|NAM01-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.33.59, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-17453-c
X-Mailprotector-ID: 2d600d8d-e2ed-45c5-9e75-6552f3c36c7c
Subject: Re: [USRP-users] Error 'Timeout on Chan 0'
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============2731054459132521120=="
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

--===============2731054459132521120==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR12MB2342B15BEF975C16D69A14D2AFD90DM5PR12MB2342namp_"

--_000_DM5PR12MB2342B15BEF975C16D69A14D2AFD90DM5PR12MB2342namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Also, there is a timeout clock running somewhere (can't recall off the top =
of my head) that will throw that message when it gets tripped.  That is fin=
e though if you are INTENDING to do something that might cause there to be =
a gap in samples and trigger a timeout.  I had an RFNoC block that was taki=
ng chunks of data and throwing away samples until a condition was met.  Tha=
t message was printed because it didn't see samples moving though the strea=
m, but that was by design.  I am almost positive that when having this disc=
ussion on the mailing-list in the past, someone pointed out where they comm=
ented out the line in UHD since they were doing something similar and didn'=
t want to see it.

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Lars Kug=
er via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, August 2, 2019 10:13 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Error 'Timeout on Chan 0'


Hello Kirsten,

I remember getting the same error message while developing a custom RFNoC b=
lock. I found the problem to be caused by the corresponding xml file which =
is located in the grc folder. I am not sure what part of the file exactly c=
aused the error message (maybe the ordering of the parameters or tags withi=
n the parameters) but I eventually solved it by replacing the file with the=
 xml file from a working block and modifying that one.

Best regards,
Lars


On 02.08.19 15:50, Leong, Kirsten - 0551 - MITLL via USRP-users wrote:

Hello,



I am using a USRP X310 and am using gnuradio companion to test a custom blo=
ck. The current diagram flows as follows: File Source->RFNoC FIFO->custom b=
lock->complex to image->frequency sink. However, when I try to execute, I g=
et the error =91timeout on chan 0=92. My testbench passes all 5 cases; I ca=
n read signals on the inputs and outputs of the noc block and the flow grap=
h works once I remove my custom block. Where else should I be looking?



Thanks,

Kirsten



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_000_DM5PR12MB2342B15BEF975C16D69A14D2AFD90DM5PR12MB2342namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Also, there is a timeout clock running somewhere (can't recall off the top =
of my head) that will throw that message when it gets tripped.&nbsp; That i=
s fine though if you are INTENDING to do something that might cause there t=
o be a gap in samples and trigger a timeout.&nbsp;
 I had an RFNoC block that was taking chunks of data and throwing away samp=
les until a condition was met.&nbsp; That message was printed because it di=
dn't see samples moving though the stream, but that was by design.&nbsp; I =
am almost positive that when having this discussion
 on the mailing-list in the past, someone pointed out where they commented =
out the line in UHD since they were doing something similar and didn't want=
 to see it.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Lars Kuger via USRP-users &lt=
;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, August 2, 2019 10:13 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Error 'Timeout on Chan 0'</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<p>Hello Kirsten,</p>
<p>I remember getting the same error message while developing a custom RFNo=
C block. I found the problem to be caused by the corresponding xml file whi=
ch is located in the grc folder. I am not sure what part of the file exactl=
y caused the error message (maybe
 the ordering of the parameters or tags within the parameters) but I eventu=
ally solved it by replacing the file with the xml file from a working block=
 and modifying that one.<br>
</p>
<p>Best regards,<br>
Lars</p>
<p><br>
</p>
<div class=3D"x_moz-cite-prefix">On 02.08.19 15:50, Leong, Kirsten - 0551 -=
 MITLL via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered=0A=
        medium)">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Hello,</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">I am using a USRP X310 and am using gnurad=
io companion to test a custom block. The current diagram flows as follows: =
File Source-&gt;RFNoC FIFO-&gt;custom block-&gt;complex to image-&gt;freque=
ncy sink. However, when I try to execute, I get
 the error =91timeout on chan 0=92. My testbench passes all 5 cases; I can =
read signals on the inputs and outputs of the noc block and the flow graph =
works once I remove my custom block. Where else should I be looking?</span>=
</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Thanks,</span></p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; font-family: Calibri, sans-serif;">
<span style=3D"font-size:11.0pt">Kirsten</span></p>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___=0A=
USRP-users mailing list=0A=
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>=0A=
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>=0A=
</pre>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR12MB2342B15BEF975C16D69A14D2AFD90DM5PR12MB2342namp_--


--===============2731054459132521120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2731054459132521120==--

