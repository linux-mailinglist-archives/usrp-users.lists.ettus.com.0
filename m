Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CA92F674C
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jan 2021 18:20:42 +0100 (CET)
Received: from [::1] (port=36056 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l06Ia-0005zd-Bq; Thu, 14 Jan 2021 12:20:40 -0500
Received: from mx08-002baa02.pphosted.com ([185.183.30.205]:19114)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <david.scott@gmvnsl.com>)
 id 1l06IW-0005sB-QQ
 for usrp-users@lists.ettus.com; Thu, 14 Jan 2021 12:20:37 -0500
Received: from pps.filterd (m0205083.ppops.net [127.0.0.1])
 by mx08-002baa02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 10EHDWI5020614
 for <usrp-users@lists.ettus.com>; Thu, 14 Jan 2021 18:19:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmv.com;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=gmvcom;
 bh=TMfUjXoeWmRymWX+sTnEvuFdTt+ro4kWWlaQhhU3bLY=;
 b=b31vFairZMvNSU+K9jx/T40ww0UllzOIdPnIqyIJk1p2qoB8HZyr/+sQE4/Rm8sNvo4z
 DvE4qCWXi1sHgCXUs3yRVO7GyHIpMFSjCv+XrmmbdgvzTbEh4+5QhouSMdC7e0jwT8bl
 VLfz5u8LVw8eYQMHMU/FmfzNHnYpOKwJeb0AyZuK4EBUsqWaP0+2g3FPqvvet6xgNkPG
 QuXfOK/lkBbXWIMtLEB/I8SIytE7pBFe90P14qZDlWeR4u/i6LL0pIGNTILwVhZKRuuO
 882HO69VglMC4O2j+OYW2pX1IOzVQS1yedNXcsBFy7hpPscK6Gj2jx+MWb1VumfqN5DT qw== 
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E312 Battery Question
Thread-Index: AQHW6pl4+yMmOP+pY0m/RlszEIWd8g==
Date: Thu, 14 Jan 2021 17:19:53 +0000
Message-ID: <1303d2bb25fb4ea3bb1a38188056cf4a@gmvnsl.com>
Accept-Language: en-GB, es-ES, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-kse-serverinfo: PTMEXCH6.gmv.es, 9
x-kse-attachmentfiltering-interceptor-info: protection disabled
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 1/14/2021 2:00:00 PM
MIME-Version: 1.0
X-KSE-ServerInfo: ptmexch4.gmv.es, 9
X-KSE-AttachmentFiltering-Interceptor-Info: protection disabled
X-Proofpoint-Action: Received-Header-Sanitized
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-14_06:2021-01-14,
 2021-01-14 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
Subject: [USRP-users] E312 Battery Question
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
From: David Scott via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Scott <david.scott@gmvnsl.com>
Content-Type: multipart/mixed; boundary="===============1502262957983347224=="
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

--===============1502262957983347224==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_1303d2bb25fb4ea3bb1a38188056cf4agmvnslcom_"

--_000_1303d2bb25fb4ea3bb1a38188056cf4agmvnslcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I need to carry out some development and testing with the USRP E312 for wor=
k in the lab. However, due to the lockdown in the UK I am not able to physi=
cally get to the device except for some initial setting up (network etc.).


I know that the device should not be plugged in for more than 24 hours so I=
 am wondering if it is possible to run the device with the battery disconne=
cted?

Will the E312 function without the battery connected internally? And are th=
eir any snags I should be aware of?


Many Thanks,

David


P Please consider the environment before printing this e-mail.

--_000_1303d2bb25fb4ea3bb1a38188056cf4agmvnslcom_
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
<p></p>
<div>
<div>
<div dir=3D"ltr">
<div id=3D"x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; c=
olor:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,serif,&quot;Emoji=
Font&quot;">
<p>Hi all,</p>
<p><br>
</p>
<p>I need to carry out some development and testing with the USRP E312 for =
work in the lab. However, due to the lockdown in the UK I am not able to ph=
ysically get to the device except for some initial setting up (network etc.=
).</p>
<p><br>
</p>
<p>I know that the device should not be plugged in for more than 24 hours s=
o I am wondering if it is possible to run the device with the battery disco=
nnected?&nbsp;</p>
<p>Will the E312 function without the battery connected internally? And are=
 their any snags I should be aware of?</p>
<p><br>
</p>
<p>Many Thanks,</p>
<p>David</p>
</div>
</div>
</div>
</div>
<br>
<p></p>
</div>
<span style=3D""><br>
</span><span style=3D"font-size:18.0pt; line-height:125%; font-family:Webdi=
ngs; color:green">P<span style=3D""></span>
<span style=3D"font-size:7.0pt; line-height:125%; font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;; color:green">
Please consider the environment before printing this e-mail.</span></span><=
span style=3D""></span>
</body>
</html>

--_000_1303d2bb25fb4ea3bb1a38188056cf4agmvnslcom_--


--===============1502262957983347224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1502262957983347224==--

