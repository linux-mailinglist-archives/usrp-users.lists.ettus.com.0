Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D22656ED391
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 19:35:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CDD7384767
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 13:35:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682357711; bh=FkA0j4uxGzERrWJxVMiHKufGCrP92R8WDR2fy/2sJV8=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EGjbFRREbMQUoUZftUeJwYdbxjFWKXS9vuecoOhrvahAmkreSjOhJmo1fPUd8f5ZB
	 OVldgjbvNntSQUnvsNMz0ApSH/UoUGwdH+1AUzmOYrWJXkT67z0h5YK9YTZ2QCOHaT
	 A37YnwQnBhY8m8BPlduytxYd/Z7wePHBipp2Kca/KhanmAHxu5+H7OInAx+imHqbkS
	 yyv0MKl7BE6KrhfV9UTpmZCXO0Pn5nHOg18Qdd9QysMVcFIzcfe1PgGnP27pJq+7wn
	 5pBie8VWAb0Ano479indWtc6du0LNqNXW5+EiLdyisk5ZeoJWueSplkEK9sPQ54PoU
	 WdUV2ZlI3M6aA==
Received: from nesvaprod05.mail-relay.ubc.ca (esvaout5.mail-relay.ubc.ca [142.103.117.135])
	by mm2.emwd.com (Postfix) with ESMTPS id 29CB83810A9
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 13:34:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ubc.ca header.i=@ubc.ca header.b="XwEnvNBy";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=ubc.ca; i=@ubc.ca; q=dns/txt; s=s1; t=1682357667;
  x=1713893667;
  h=from:to:subject:date:message-id:mime-version;
  bh=w4N2fNfQgcPfyR3j1t/KWgsb1vvOYW1oU+2Q4z3hYls=;
  b=XwEnvNByShZTVsTn755EeJGoD2WXFp0ms/1QL08OuYCcUIDc5pfINWo3
   EKnLfAkYdHuC6qCv1/U9yNaipUdSZ7F8XSaWmX02+nUlNGBQb1RD7N0Q9
   UHAv/TH81E28GtJyxU88J81C/Sm3ULgs9H1tzEt+OxPUnojxCvyYfm7DX
   6wSlCwpXG29kcIhzoCbPS4lUBd88Rbx82llyDWvf0eauWBE22DFPzd31m
   i3q7qPcLnDox34aaj0fRQMFV6FWcvKeU8H+No7qL7XTWlF3CIa4ok5wxc
   SSOHSKdWlQQ5Z3n1rvNw+ASLqaKujBsbTwrfcuwzUqygjX6lOo1Ipifr/
   Q==;
X-ExtLoop1: 1
X-SMTPAUTH: FALSE
IronPort-Data: A9a23:OYtzJ6CGXTMtkBVW/3riw5YqxClBgxIJ4kV8jS/XYbTApDxxhWZWy
 WNMXWHQbPnYMzP2L4x1ao/ko0pTupSGn9VnTANkpHpgZkwRpJueD7x1DKtQ0wB+jyHnZBg6h
 ynLQoCYdKjYdleF+lH3dOCJQUBUjcmgXqD7BPPPJhd/TAplTDZJoR94kobVuKYx6TSCK17L6
 IKaT/H3Ygf/gGYoaD5MscpvlTs21BjMkGJA1rABTa0T1LPuvyF9JI4SI6i3M0z5TuF8dgJtb
 7+cpF0R1jqxEyYFUrtJoJ6iGqE5aue60Ty1t5Zjc/PKbi6uBsAF+v1T2PI0MS+7gtgS9jx74
 I0lWZeYEW/FMkBQ8Qi0vtYx/yxWZMV7FLH7zXeXkou6lm37I1LV+tJMMlMYBocjwfZpHjQbn
 RAYAGhlghGrnOeq2PS+Q+howNkpJ4/gNevzuFk5lXeFULB8HdaSHM0m5vcBtNs0rslKHOyAN
 uICdSdjYRLcJQBFMREcAfrSmc/x1iWuKmwB9zp5o4IT5Fji8yFv1YHcMYTPedvSWZVc3UCX8
 zeuE2PRR0ty2Mak4See6Grpm/TChzjTXIMJCKb+++J2nUbVzWsWYCD6TnO/q+G2jkClUIoGJ
 FcI4nJ36KU06FfzF5zzAlimunCLugMRHtRUFOQmrhqc0bbZ5h3fB3RCUzRKLtcv3CMreQEXO
 payt4uBLVRSXHe9EBpxKp/8QeuOBBUo
IronPort-HdrOrdr: A9a23:pwk1maHi6qGebL3BpLqE28eALOsnbusQ8zAXPhhKOHlom7+j5q
 STdZUgpGfJYVkqKRIdcLy7VJVoIkmsjqKdg7NhX4tKNTOO0ADDQb2KhbGSuQEIcBeRygcp78
 ddmt9FaeEYY2IUsS+w2njeLz9p+qjgzEmHv5am80tQ
X-Talos-CUID: =?us-ascii?q?9a23=3AtTvHEWjNjZB/yQYSBzp6poemajJuUTr0lVftc2a?=
 =?us-ascii?q?BMEFLdq+7clWrw7N6jJ87?=
X-Talos-MUID: 9a23:38Eu8wv4nGv97qJJVc2noDZSBfhF/aGXOUFTi5YB49XUPG92NGLI
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from lbpglfsc01gstp01-ents01-f5-vrfglue-float.systems.it.ubc.ca (HELO smtp.mail.ubc.ca) ([10.45.24.97])
  by nesvaprod05.mail-relay.ubc.ca with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Apr 2023 10:34:24 -0700
Received: from SAM-SRV01AP.ead.ubc.ca (10.19.216.61) by
 EXCH-SRV01BP.ead.ubc.ca (10.19.216.29) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 10:34:22 -0700
Received: from SAM-SRV05AP.ead.ubc.ca (10.19.216.43) by SAM-SRV01AP.ead.ubc.ca
 (10.19.216.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Mon, 24 Apr
 2023 10:34:22 -0700
Received: from SAM-SRV05AP.ead.ubc.ca ([fe80::c5b3:8b1c:585d:dfc8]) by
 SAM-SRV05AP.ead.ubc.ca ([fe80::c5b3:8b1c:585d:dfc8%4]) with mapi id
 15.01.2507.023; Mon, 24 Apr 2023 10:34:22 -0700
From: "alir69@student.ubc.ca" <alir69@student.ubc.ca>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: connection
Thread-Index: AQHZdtLb0fKpiu30g02UtiTrO815Sw==
Date: Mon, 24 Apr 2023 17:34:22 +0000
Message-ID: <bca00bea81c04e28a8cd963fb3a02279@student.ubc.ca>
Accept-Language: en-US, en-CA
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.30.33]
MIME-Version: 1.0
Message-ID-Hash: XDJJRMQQWDZSNPTO4ER7SCUNNPYFFDUE
X-Message-ID-Hash: XDJJRMQQWDZSNPTO4ER7SCUNNPYFFDUE
X-MailFrom: alir69@student.ubc.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XDJJRMQQWDZSNPTO4ER7SCUNNPYFFDUE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5282111982644082993=="

--===============5282111982644082993==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_bca00bea81c04e28a8cd963fb3a02279studentubcca_"

--_000_bca00bea81c04e28a8cd963fb3a02279studentubcca_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

we cannot connect our USRP E310 to computer not with USB and not with ether=
net

linux machine windows machine and mini pc cannot recognize the device


--_000_bca00bea81c04e28a8cd963fb3a02279studentubcca_
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
<p>we cannot connect our USRP E310 to computer not with USB&nbsp;and not wi=
th ethernet</p>
<p>linux machine windows machine and mini pc cannot recognize the device</p=
>
<p><br>
</p>
</div>
</body>
</html>

--_000_bca00bea81c04e28a8cd963fb3a02279studentubcca_--

--===============5282111982644082993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5282111982644082993==--
