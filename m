Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 583ED189FDB
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 16:39:42 +0100 (CET)
Received: from [::1] (port=48950 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEanF-00014k-HJ; Wed, 18 Mar 2020 11:39:41 -0400
Received: from mail-dm6nam10olkn2067.outbound.protection.outlook.com
 ([40.92.41.67]:64993 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1jEanA-0000xA-Ue
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 11:39:36 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+wT7Aitx43ZTGC3Mc7imyIpoYo85y6JXVuNSocfFe3bmBVXecAjKrDcHYOpfQFmuerj2v32QPC0sgsmn2iLu/jPYINNjbu1vLorDouU8p62WcAi50Bztg9OoL+fryfgVGq/APf1MRhkr2oSf7XVCuHIgtfhULH5rEkjcIzpOLPxe0i0c5CHZMO2LnhgwBETLSiUDyWv/IpfR/ToHKPLoL13p5lEwqdfd7JVCx56lGYnqhRSc6Kvec8LhV74fcdoM6SU62haErPtL+kGesKnMN1hpOJ5BIVIo2NySpCxkwmFnRdcgFANq2cGP08mVF0zIMNZ4+k/ISecD6JnAP39xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2dD8vZO5iegDUICSB75v9J00/PpkY+Ms3nOf9briiw=;
 b=SRYAgJX732mq7y3+y1Zc7pduszZT5pr1Xc4llvhjM0ibAiYpa20H0bWrH3a+XqGVpAhqeZnGZUJVj2hcJUNDUlvdadWSO1ooKDj0WXFTHmBtzGD1J2FaqW35UxmWTnapvg9JCbaFUS8OgHrY92lcMGLP9pfYqHdpSdINrYy+4qsJz24JM8PUQtZW9C+G5FfouWsBH5vW51Z9tNDnI5WZFO9QaF0PTKAeiAxIg/nsQ4PYRtnWkCPNX6u82f/lt65OgE4YEtYLLgzY8hEikdv9myTMFFOQGSe2dtKjh4o1ZdJ9uo+I/YP+37nvQHKeKRf3mwQ7uMhg5IhANJl6LnDk4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2dD8vZO5iegDUICSB75v9J00/PpkY+Ms3nOf9briiw=;
 b=ecGBm+arJqtTyv95S6PDIWs9/u45/PJAaE7uXzsIvHyy7zEyhzEk/A05t055Svvr/VEpPCoMerUdfOVWBaXPdlbBREhrPS4weZ46K0E/6v+ZrZUWLxWYLRNZTM3dMxfhUfZ1qsBjRFq9oyfBVSJ+8RFOvQWAWcKu1+xhnSwDShFL1CIuu0BBNi2EliAfwG+S0Dg6/mDcQkTuuhPODbMIYCtWmAC45snJXkcYgkhCLG9YPIFXod4g1VgRz0EQv4UeRtx4v6Se3gASLRmyW9+TcuNpEt1JldSCdItyqdT6cXLeswXnfpHT9f5nYIO1oVGYK5e8zxyIRrCgfPtuG0kKAQ==
Received: from DM6NAM10FT020.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e86::3c) by
 DM6NAM10HT071.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e86::305)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Wed, 18 Mar
 2020 15:38:55 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com (10.13.152.60) by
 DM6NAM10FT020.mail.protection.outlook.com (10.13.152.115) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Wed, 18 Mar 2020 15:38:55 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::d5b1:1ab1:8cb6:b6e2%5]) with mapi id 15.20.2835.017; Wed, 18 Mar 2020
 15:38:55 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnocmodtool Problem
Thread-Index: AQHV/Tlz9GkWyHEWDUCXGgJHyqYEEA==
Date: Wed, 18 Mar 2020 15:38:55 +0000
Message-ID: <DM6PR19MB26684C7F45F8467E94025D64A4F70@DM6PR19MB2668.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:DB0351519C195C0F001B112AE08633D430085EF07C9F70D18362DD77B21AF171;
 UpperCasedChecksum:96E523D291BE75E2C638335B41782ACA5F9E77566BF65B6068FADA9425CCFBB9;
 SizeAsReceived:6643; Count:42
x-tmn: [/6JiTaoN+KPE0HdRAnsWuKXe1tmIqrA5]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 608f9ea7-cfb8-4ad4-0103-08d7cb527800
x-ms-traffictypediagnostic: DM6NAM10HT071:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A85uK8Jp8jnlUkcEAewpqiX9m3t5J4AUEOUcsJkdNRXPp9UQG9WQbuUQ1wPQyZh5ik1oayvAIR0wfyzQ7blee+lAhFFCS9xz2GKiSQs2TUld1jEjfGCh4l+A+ULQxjwa960tl0t9oOlSxrsn8UZ761DYx79YBZKT4w+5lTK6pWed98gRu64J4LDbOQGPkrlUgP1z/4kGHtMrUvtJSd4wpWxno4G6MiDs1cHlvSczVjs=
x-ms-exchange-antispam-messagedata: gIoZYcVgwnxdUnJk7nA9d8XYzkx7t3h0wNLT5QbkCr5uE+l4WCkFQ+EuZj+pow4YgpnQ2VL36xx3OhHpS3WzFvmtJmiLAX3Nne+PN6cSL0VzQVD9znXpkthUYdl8LeOP3sBPmvd3I8ggbDaUIQkZbw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 608f9ea7-cfb8-4ad4-0103-08d7cb527800
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 15:38:55.5988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT071
Subject: [USRP-users] rfnocmodtool Problem
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
Content-Type: multipart/mixed; boundary="===============4803562702122887704=="
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

--===============4803562702122887704==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB26684C7F45F8467E94025D64A4F70DM6PR19MB2668namp_"

--_000_DM6PR19MB26684C7F45F8467E94025D64A4F70DM6PR19MB2668namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_DM6PR19MB26684C7F45F8467E94025D64A4F70DM6PR19MB2668namp_
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
I'm still going through the &quot;Getting Started with RFNoC Development&qu=
ot; guide at <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Dev=
elopment" id=3D"LPNoLP252897">
https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a>, and I am a=
t the rfnocmodtool section.&nbsp; I do the following command and get the er=
ror response:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
</body>
</html>

--_000_DM6PR19MB26684C7F45F8467E94025D64A4F70DM6PR19MB2668namp_--


--===============4803562702122887704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4803562702122887704==--

