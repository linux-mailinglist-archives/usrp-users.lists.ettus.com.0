Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5EA2CF6AD
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 23:19:54 +0100 (CET)
Received: from [::1] (port=39222 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klJQd-0007nS-Cy; Fri, 04 Dec 2020 17:19:51 -0500
Received: from unifiededge.gtri.gatech.edu ([130.207.205.170]:43041)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1klJQY-0007iI-Ni
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 17:19:46 -0500
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
 c=simple/simple; t=1607120345; h=from:subject:to:date:message-id;
 bh=84qkSyMqWLBfLo5SlQy/HfTCMYP6AT9y8BTpGLq9e1k=;
 b=Aq+ecyNjbyG/Ve6YBGCmOSRTG/2i9zR4LBcLXL2pS7h5jRNXQ+jIJ8QHcFVAgfNIUKiVX9zBTAO
 5z8VuA+lUlw6aljNN09v5NsL7xKKsnfaiyUqMiA7stTSk/nV2EWi8a8J3rXu1hT0ibvT+NVOl88Mg
 gvkJX+7HFnjQmhjRM+bh0/7Gfw6FzkY87yzOJeISliYl03LW0QTdys004MpjjBtZrg39bg2/KOj9r
 nKJ4qJfMcWuiXCOZ7kwA/uGyNWcUFqcpyNq1CFy/WkU6kkHWbql+fpThO4HXE4pCtqZ5HxyiexUeV
 wOCd3z0iE6lnW8nbJvRvqqn/oF/aEPDmoizw==
Received: from tybee.core.gtri.org (10.41.1.49) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Fri, 4 Dec 2020
 17:19:05 -0500
Received: from ocracoke.core.gtri.org (10.41.22.71) by tybee.core.gtri.org
 (10.41.1.49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2106.2; Fri, 4 Dec
 2020 17:19:04 -0500
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2106.003; Fri, 4 Dec 2020 17:19:04 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: power-cycle after remote reflash image
Thread-Index: AQHWyoqfNaStbTPDGE6u5JfWgw+XeA==
Date: Fri, 4 Dec 2020 22:19:04 +0000
Message-ID: <230168bd80dc452d94d4bcc0d781b940@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] power-cycle after remote reflash image
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
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============6364741358018044374=="
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

--===============6364741358018044374==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_230168bd80dc452d94d4bcc0d781b940gtrigatechedu_"

--_000_230168bd80dc452d94d4bcc0d781b940gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have a lab set-up where I remotely run uhd_image_loader on my X310, but t=
hen I need to power-cycle the device in order for the new image to be used.


Does the uhd driver have a command that will do this? or can this be done b=
y the aux IO or JTAG? or do I need to buy a remote power switch?


Jeff

--_000_230168bd80dc452d94d4bcc0d781b940gtrigatechedu_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>I have a lab set-up where I remotely run uhd_image_loader on my X310, bu=
t then I need to power-cycle the device in order for the new image to be us=
ed.</p>
<p><br>
</p>
<p>Does the uhd driver have a command that will do this? or can this be don=
e by the aux IO or JTAG? or do I need to buy a remote power switch?<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
</body>
</html>

--_000_230168bd80dc452d94d4bcc0d781b940gtrigatechedu_--


--===============6364741358018044374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6364741358018044374==--

