Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CB936EF7E
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 20:34:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40AC8383FE9
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 14:34:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="KtFFhvGI";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 1817F383F9E
	for <usrp-users@lists.ettus.com>; Thu, 29 Apr 2021 14:33:37 -0400 (EDT)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1619721217; h=from:subject:to:date:message-id;
	bh=lWsTWVPJfjxAGzLeBVHhGiv2gxYvlVy+RMTtsy7NOLE=;
	b=KtFFhvGI1xEWVcdVB4Hkl/4iVe3u5TjABhAcsMezI1v8c+UY2E+RHEngPM6+KV8/W1o7eHEaKUf
	yzy++FYMFpFxvU+OWArUg4fLHTvwhqrHH29GPfiry5p+68uHcdP408s2+rs+Q4nx0HgiJB0cMS1nN
	72fh2j74phy8gL8t2jzTwlcBM4+nRrhnR5orTnWYW+TQg3KJJNxTG6qL/GzJrLLA9F+VHePHIIVtK
	GRi2uJfUXD0cgx/LhXkwHMfi09YEOoSIJSj8pog4x6L9yHsXC6MIh1kbSdePGI6bT0BZgkfyNzNbn
	bKIqJ8SayjXiu0l9MrnBA9F8ju/BaXM2AEwg==
Received: from currituck.core.gtri.org (10.41.24.231) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.858.5; Thu, 29 Apr 2021
 14:33:37 -0400
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 currituck.core.gtri.org (2610:148:610:2918::231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.4; Thu, 29 Apr 2021 14:33:37 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2242.004; Thu, 29 Apr 2021 14:33:37 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: n3xx series questions
Thread-Index: AQHXPSRYXBu6snb4SEi1fZGiIZoXBw==
Date: Thu, 29 Apr 2021 18:33:37 +0000
Message-ID: <e5825df7934e4dca8d6acc1fe3e18c05@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: Y77GFHZIMANZNSV7VEFJ6CLDQHZRCVCX
X-Message-ID-Hash: Y77GFHZIMANZNSV7VEFJ6CLDQHZRCVCX
X-MailFrom: Jeff.Hodges@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] n3xx series questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y77GFHZIMANZNSV7VEFJ6CLDQHZRCVCX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============9066630417580707242=="

--===============9066630417580707242==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e5825df7934e4dca8d6acc1fe3e18c05gtrigatechedu_"

--_000_e5825df7934e4dca8d6acc1fe3e18c05gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

How many rfnoc Computation Engines (CEs) are available on the N3xx radios F=
PGAs? For example, i read online that the x3xx has 16 CEs.


How does the tuning speed compare between the N2xx and N3xx radios? I saw a=
 whitepaper a few years back that listed the max sustained hop rate of the =
N210+WBX of approximately 250 hops per second. I'm wondering if the N3xx ra=
dios have comparable tune times or faster/slower?


Thanks,


Jeff

--_000_e5825df7934e4dca8d6acc1fe3e18c05gtrigatechedu_
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
<p>How many rfnoc Computation Engines (CEs) are available on the N3xx radio=
s FPGAs? For example, i read online that the x3xx has 16 CEs.<br>
</p>
<p><br>
</p>
<p>How does the tuning speed compare between the N2xx and N3xx radios? I sa=
w a whitepaper a few years back that listed the max sustained hop rate of t=
he N210&#43;WBX of approximately 250 hops per second. I'm wondering if the =
N3xx radios have comparable tune times
 or faster/slower?</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
</body>
</html>

--_000_e5825df7934e4dca8d6acc1fe3e18c05gtrigatechedu_--

--===============9066630417580707242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9066630417580707242==--
