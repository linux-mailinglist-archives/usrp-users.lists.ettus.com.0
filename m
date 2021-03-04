Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A89E32D412
	for <lists+usrp-users@lfdr.de>; Thu,  4 Mar 2021 14:24:55 +0100 (CET)
Received: from [::1] (port=35712 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHnyG-0006W4-Ba; Thu, 04 Mar 2021 08:24:52 -0500
Received: from thsbbfxrt02p.thalesgroup.com ([192.93.158.29]:56856)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <frederique.courant@external.thalesgroup.com>)
 id 1lHnyC-0006Rk-Me
 for usrp-users@lists.ettus.com; Thu, 04 Mar 2021 08:24:48 -0500
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 4Drs5g41LVzJpf3
 for <usrp-users@lists.ettus.com>; Thu,  4 Mar 2021 14:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1614864247;
 bh=UHhAqTR+rqiOketIUPvPFwz50a/1m/ltmMEd8if1JRI=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:From;
 b=ZyV/esxhBBZXFd78OMmrmcpnBxIy/gOOdo9AvNI+Ndc/2V7MaScYkjmODwpgaUUv6
 sllHoqSDM6qMIZD2WLze8MrsOxRswkiQysdVt9bTIr95YFkieIrD3Fp7d53LMH/CDa
 QWNhxyixf5z/zAbrv7AnwSZl2cqjT0Qp3qtDMqlQSwKB827to2KbHVOq9KBzoAP4N5
 0AVdvOLBMLH4Lu8HIy5yEXhhjQWjuOY3UxSV45Rzb7JgZ4v5Gx0RIeGiNLFaOArexd
 tfYkkt2SrAGFwtZLQy9DnVcSKGFRF+qg8cMltVpXQE3lIDPl1euttfRYy7uZN8o9tG
 vXG85I5SgQMkw==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: readback register of personal RFNOC
Thread-Index: AdcQ+Pj9j4KKRqsrSHKUFXtAW0b88w==
Date: Thu, 4 Mar 2021 13:24:06 +0000
Message-ID: <eb81935188c04199a55efe231b8e3b74@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.82
MIME-Version: 1.0
Subject: [USRP-users] readback register of personal RFNOC
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
From: COURANT Frederique - Contractor via USRP-users
 <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor
 <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============2839497497656735664=="
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

--===============2839497497656735664==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_eb81935188c04199a55efe231b8e3b74externalthalesgroupcom_"

--_000_eb81935188c04199a55efe231b8e3b74externalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello users,

I have created a personal RFNOC blocks. I have reserved some address 4 in r=
ead/write and one in read only.
I have no problem for write but I don't find how can I read my register in =
read only at the address 133.

Someone could help me or give me an example please ?

For information, I work on USRP X310 and I develop with python.

Thanks for your help.

--_000_eb81935188c04199a55efe231b8e3b74externalthalesgroupcom_
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have created a personal RFNOC=
 blocks. I have reserved some address 4 in read/write and one in read only.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have no problem for write but=
 I don&#8217;t find how can I read my register in read only at the address =
133.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Someone could help me or give m=
e an example please ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For information, I work on USRP=
 X310 and I develop with python.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.<o:p></o:p=
></span></p>
</div>
</body>
</html>

--_000_eb81935188c04199a55efe231b8e3b74externalthalesgroupcom_--


--===============2839497497656735664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2839497497656735664==--

