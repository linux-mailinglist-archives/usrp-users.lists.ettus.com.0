Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8B23E96B4
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 19:23:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C03EC383BC3
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 13:23:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=kth.se header.i=@kth.se header.b="OaAlzXiw";
	dkim-atps=neutral
Received: from smtp-3.sys.kth.se (smtp-3.sys.kth.se [130.237.48.192])
	by mm2.emwd.com (Postfix) with ESMTPS id A98643849AB
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 13:22:17 -0400 (EDT)
Received: from smtp-3.sys.kth.se (localhost.localdomain [127.0.0.1])
	by smtp-3.sys.kth.se (Postfix) with ESMTP id B63612AF4
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 19:22:15 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kth.se
Received: from smtp-3.sys.kth.se ([127.0.0.1])
	by smtp-3.sys.kth.se (smtp-3.sys.kth.se [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 1ehvq4lEsSWr for <usrp-users@lists.ettus.com>;
	Wed, 11 Aug 2021 19:22:11 +0200 (CEST)
Received: from exdb6.ug.kth.se (exdb6.ug.kth.se [192.168.32.61])
	by smtp-3.sys.kth.se (Postfix) with ESMTPS id 401B628EB
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 19:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kth.se; s=default;
	t=1628702531; bh=/ex6lvfMRlqs32fn3oawjqXbdVVb97pUo2zfFrMOhlI=;
	h=From:To:Subject:Date;
	b=OaAlzXiwFZB8bz8pdpF4S38zaUqjHclAex+TNnEReRrjJWpzKMGEuU+Df6AJggzoV
	 XyIxJxiskRL/b5MfPNbEKOObY9jMY6qJVX/fs/LHgoAT2h1Fe2HRB0j7r2Xp+YfQrB
	 BWuwutuC4ugMFJHUgY4FdI8N+2w5zUqbuoIK0+gU=
Received: from exdb2.ug.kth.se (192.168.32.57) by exdb6.ug.kth.se
 (192.168.32.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.858.15; Wed, 11 Aug
 2021 19:22:10 +0200
Received: from exdb2.ug.kth.se ([192.168.32.57]) by exdb2.ug.kth.se
 ([192.168.32.57]) with mapi id 15.02.0858.015; Wed, 11 Aug 2021 19:22:05
 +0200
From: Anton Ottosson <antonott@kth.se>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N210 Center frequency tuning resolution
Thread-Index: AQHXjtQigHT4yf/xL02wX0AvlO3UtA==
Date: Wed, 11 Aug 2021 17:22:05 +0000
Message-ID: <ca21b213473c4123827230dfe49c903f@kth.se>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.32.250]
MIME-Version: 1.0
Message-ID-Hash: UZURPTDIQ2BY2XFQPU2YM7XBDQUZOMDV
X-Message-ID-Hash: UZURPTDIQ2BY2XFQPU2YM7XBDQUZOMDV
X-MailFrom: antonott@kth.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N210 Center frequency tuning resolution
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UZURPTDIQ2BY2XFQPU2YM7XBDQUZOMDV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5007007979895584586=="

--===============5007007979895584586==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ca21b213473c4123827230dfe49c903fkthse_"

--_000_ca21b213473c4123827230dfe49c903fkthse_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Does any one here know what the center frequency tuning resolution is for t=
he N210, or how one might find out? By tuning resolution I mean, basically,=
 the step size when selecting center frequency. I have been looking over th=
e Devices & Usage Manual<https://files.ettus.com/manual/page_devices.html>,=
 but have not been able to find an answer.


Best,

Anton

--_000_ca21b213473c4123827230dfe49c903fkthse_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p>Hi,</p>
<p><br>
</p>
<p>Does any one here know what the center frequency tuning resolution is fo=
r the N210, or how one might find out? By tuning resolution I mean, basical=
ly, the step size when selecting center frequency. I have been looking over=
 the
<a href=3D"https://files.ettus.com/manual/page_devices.html" class=3D"OWAAu=
toLink">Devices &amp; Usage Manual</a>, but have not been able to find an a=
nswer.</p>
<p><br>
</p>
<p>Best,</p>
<p>Anton<br>
</p>
</div>
</body>
</html>

--_000_ca21b213473c4123827230dfe49c903fkthse_--

--===============5007007979895584586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5007007979895584586==--
