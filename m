Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 722CC18A206
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 18:59:20 +0100 (CET)
Received: from [::1] (port=39468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEcyL-0002Pl-G8; Wed, 18 Mar 2020 13:59:17 -0400
Received: from mail-mw2nam12olkn2032.outbound.protection.outlook.com
 ([40.92.23.32]:9542 helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1jEcyH-0002Iu-LN
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 13:59:13 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T6B6GYgDhc0BFof9URBR/7evRB8Tbg8SVshoqUVdOBp0p7a3W1ERs1RO7Hl967t0ggHKMvsRRahGfCvY1N87ntEIIcRK7uTuE4jmUmtEzAb82krtbUSAOCt7iuRQWPpuCJ1hjOkTyeL9vC0jtcoMWttTMdKaa7TPnndVf0ASAKOyNjdeQYMsBHyyowdjqc+A2KVv0GKTWS6koMaZ9MyOHRDog9tJzEkEICSaXQXI25JsZ23VS9u05zhNzVKD2tn4Cks55+8TTlBgNv6TSgMIavBIk2ZuhCfdeJtFws4cAMOHifkA/jy5eL08GS8fE3NBn/RUo+daF0FKuMmtiC8khg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E94FkJ6B1ckcSw0s0EbNo7HdDPjJu5M0aT2p40nX+Kg=;
 b=gh07FL8+dp+pb4HI6pD+BI1S9fKNJEdheKgm/Zm0YaQ9xFSrtX13Dd3EKa1PHTO4qU3ZIzeYBKy1ZVsmTxOCjOmR5H3CuUF4KCj3rkzxKlvy3pLtxHi18hUNtpoqQbq7wquLi/HiZCsFVsfVMeBoBUdvGAcZLE5+tzXMR1ZfRT51PN1bUzspjUVElhbBANi9qtGFOqZueaSVofb4ablMBa3g+YJ0RmlgRWUSvp4O4D023xTRqo8sVjY9W9gABDy6STCk3+oQ8y0xRi5O41dnDeU4FctQz+jgku0amXGVn52VW7889y2BQDoLjB+Q/PRepqr/ISXyi3VxzZvmA2kGkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E94FkJ6B1ckcSw0s0EbNo7HdDPjJu5M0aT2p40nX+Kg=;
 b=XIRvDAc+gNqSvK3UKV6qRahQsUo4PXiOMZS+aEvzcglWn0zh5bnNBQw9w1wyW+yapeddhDvjf2hWMmMIemvUmnuCVxfkTcpOVyMsPe6N5NOdEkJLLn1OUVzjJciO9BnbEaP3LE7d1Zyoe8UOajIySC5kfRV+FbgQJ1h+3itieF3l3WIWtyvf0X1o9sY8wk5rap+t4tJ9rX3irRYa8N38MIxVxwcoDtMV8o5GCy/RyD8+OFieOvJcHFxShHqjEFHX9jG1HOEcbU5AEqTFNjpE3NtDj+vLgcHJi5lHMnqSHjmixyr2m+uZZLjMJPxNPTOoMu1beTQhDLBPikL44sZc6g==
Received: from MW2NAM12FT034.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc65::3c) by
 MW2NAM12HT030.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc65::108)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.6; Wed, 18 Mar
 2020 17:58:31 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com (10.13.180.57) by
 MW2NAM12FT034.mail.protection.outlook.com (10.13.180.182) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.6 via Frontend Transport; Wed, 18 Mar 2020 17:58:31 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2%5]) with mapi id 15.20.2835.017; Wed, 18 Mar 2020
 17:58:31 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnocmodtool Problem
Thread-Index: AQHV/Tlz9GkWyHEWDUCXGgJHyqYEEKhOog2D
Date: Wed, 18 Mar 2020 17:58:30 +0000
Message-ID: <DM6PR19MB2668562E6EA9AA0D869A667EA4F70@DM6PR19MB2668.namprd19.prod.outlook.com>
References: <DM6PR19MB26684C7F45F8467E94025D64A4F70@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB26684C7F45F8467E94025D64A4F70@DM6PR19MB2668.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F2A22D8EDF54980F5C327F887658C12B78DEDA26E036AAD409B264176A5DFD36;
 UpperCasedChecksum:11113542DAAC826DFC67E6244071522B33F2BD1FA7228D712D0439D6BD92CED1;
 SizeAsReceived:6889; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pd1M5V3IgrPtEv9bl+tdiBVdjW6F9JBn]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: cf4dabd8-b48f-495e-73cf-08d7cb65f816
x-ms-traffictypediagnostic: MW2NAM12HT030:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LMuudOGeQcr9XGDCZDqxIx+vjmosvAL/HIgs6gqL2S7NbEBqthfHTzogIDIzMa4rrEWJO+sOGSgEzqIlkDE+TFMDx9yiHIix/c7TEJ1PfMJG5lX/ibds07xU9jyg4cNjKUKKR6BcY+Wnf+zo1hdiiR0YNhzuqXDcAIk21pTp/xXdhihCda+GUsaHVY6he1mema8zqTUUKQs2BunnWJEds0UkFUm+8zh602uCEOa1elo=
x-ms-exchange-antispam-messagedata: yj9a0y3F4A3MpUnS/XQ7MtBRNX9NjBr2dY5qF1ildKrUQgxfrd28Ab+u0EASCozgubSIx5oiBgSVE65h6FUBAgHbgOm2dC2VM8Djoo+EddnbGCYjp2St5OsVGnloZmVjFzMPlWRlrOP9nAWdO2x/AA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: cf4dabd8-b48f-495e-73cf-08d7cb65f816
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 17:58:30.9631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM12HT030
Subject: Re: [USRP-users] rfnocmodtool Problem
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============6463048736213390904=="
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

--===============6463048736213390904==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB2668562E6EA9AA0D869A667EA4F70DM6PR19MB2668namp_"

--_000_DM6PR19MB2668562E6EA9AA0D869A667EA4F70DM6PR19MB2668namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

So, if I'm reading the python blogs correctly, util_functions.py is using:


from builtins import input

but is that a python3 thing?  I'm not a python expert (or novice), but shou=
ld python2.7 should be using "__builtin__", or something like that?  Did I =
grab a version of gr-ettus which is too new?  Just trying to narrow my scop=
e.

Jeff


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Jeff S v=
ia USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, March 18, 2020 10:38 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] rfnocmodtool Problem

I'm still going through the "Getting Started with RFNoC Development" guide =
at https://kb.ettus.com/Getting_Started_with_RFNoC_Development, and I am at=
 the rfnocmodtool section.  I do the following command and get the error re=
sponse:


$ which rfnocmodtool
/usr/local/bin/rfnocmodtool

$ rfnocmodtool --help Traceback (most recent call last): File "/usr/local/b=
in/rfnocmodtool", line 7, in <module> from ettus.rfnoc_modtool import * Fil=
e "/usr/local/lib/python2.7/dist-packages/ettus/rfnoc_modtool/__init__.py",=
 line 25, in <module> from .grc_xml_generator import GRCXMLGenerator File "=
/usr/local/lib/python2.7/dist-packages/ettus/rfnoc_modtool/grc_xml_generato=
r.py", line 4, in <module> from .util_functions import is_number, xml_inden=
t File "/usr/local/lib/python2.7/dist-packages/ettus/rfnoc_modtool/util_fun=
ctions.py", line 8, in <module> from builtins import input ImportError: No =
module named builtins

$ uhd_config_info --version
UHD 4.0.0.rfnoc-devel-702-geec24d7b

Is this something obvious that I'm missing?  Something that didn't get inst=
alled?

I used the manual creation of the environment, and I was able to build an i=
mage (higher in the referenced guide), so it seems like the installation is=
 correct.  I did not see the same issue from previous search hits relating =
to rfnocmodtool, but I could have missed a relevant answer.

Thanks,
Jeff

--_000_DM6PR19MB2668562E6EA9AA0D869A667EA4F70DM6PR19MB2668namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
So, if I'm reading the python blogs correctly, util_functions.py is using:<=
/div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<pre>from builtins import input</pre>
</blockquote>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
but is that a python3 thing?&nbsp; I'm not a python expert (or novice), but=
 should python2.7 should be using &quot;__builtin__&quot;, or something lik=
e that?&nbsp; Did I grab a version of gr-ettus which is too new?&nbsp; Just=
 trying to narrow my scope.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div>
<div id=3D"Signature">
<p><br>
</p>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Jeff S via USRP-users &lt;u=
srp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, March 18, 2020 10:38 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] rfnocmodtool Problem</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I'm still going through the &quot;Getting Started with RFNoC Development&qu=
ot; guide at <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Dev=
elopment" id=3D"LPNoLP252897">
https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a>, and I am a=
t the rfnocmodtool section.&nbsp; I do the following command and get the er=
ror response:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<pre><pre>$ which rfnocmodtool =0A=
/usr/local/bin/rfnocmodtool</pre>$ rfnocmodtool --help=0A=
Traceback (most recent call last):=0A=
  File &quot;/usr/local/bin/rfnocmodtool&quot;, line 7, in &lt;module&gt;=
=0A=
    from ettus.rfnoc_modtool import *=0A=
  File &quot;/usr/local/lib/python2.7/dist-packages/ettus/rfnoc_modtool/__i=
nit__.py&quot;, line 25, in &lt;module&gt;=0A=
    from .grc_xml_generator import GRCXMLGenerator=0A=
  File &quot;/usr/local/lib/python2.7/dist-packages/ettus/rfnoc_modtool/grc=
_xml_generator.py&quot;, line 4, in &lt;module&gt;=0A=
    from .util_functions import is_number, xml_indent=0A=
  File &quot;/usr/local/lib/python2.7/dist-packages/ettus/rfnoc_modtool/uti=
l_functions.py&quot;, line 8, in &lt;module&gt;=0A=
    from builtins import input=0A=
ImportError: No module named builtins<br></pre>
<pre><pre>$ uhd_config_info --version=0A=
UHD 4.0.0.rfnoc-devel-702-geec24d7b</pre></pre>
</blockquote>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
</div>
<div>Is this something obvious that I'm missing?&nbsp; Something that didn'=
t get installed?<br>
</div>
<div><br>
</div>
<div>I used the manual creation of the environment, and I was able to build=
 an image (higher in the referenced guide), so it seems like the installati=
on is correct.&nbsp; I did not see the same issue from previous search hits=
 relating to rfnocmodtool, but I could
 have missed a relevant answer.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR19MB2668562E6EA9AA0D869A667EA4F70DM6PR19MB2668namp_--


--===============6463048736213390904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6463048736213390904==--

