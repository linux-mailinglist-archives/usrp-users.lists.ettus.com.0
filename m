Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEFC27DD30
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 02:00:50 +0200 (CEST)
Received: from [::1] (port=57422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNPY7-0001Hi-F5; Tue, 29 Sep 2020 20:00:47 -0400
Received: from mail-bn8nam12olkn2065.outbound.protection.outlook.com
 ([40.92.21.65]:17857 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <arthurlobo@msn.com>) id 1kNPY3-0001Dq-Kg
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 20:00:43 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VXvZAA2fgANZwFgGmYduI0IVI2uUOexCruyKbjSt4JR5Vfola1ow0eX+D8LQJgUgcUvGw6v/6FxJhiGtHyA0ZOTlvmuy3zl6WUIJ+DsjMjY+9RpcNto4auqD58f/8OHHlGLMddUX25qoXIrFoUveWpOuVlNLewMuvGGsXweJtFflfgVwzkdV/Zl/8wJ0RLljkvxmLhofM/Gh8CeAKo4dTnMuTmb7S0JWGleUEhs5KsWyI4Gq587YFLwMnT04uA3TgfDmHZmkKY3bvggBpOvMdXxxwhTtmhVUK4OF4XExRFyC2W17aJOSHKqKrAPKfjxNVkef9Jcm1iETPCWa/eIG/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9qpvWXuP4KP/uPEFPklGSxxKffPktfem6z4Q9yunjc=;
 b=OSakCwqfE5SItVQpI7QqmL3Y7a7fbhhbLH+OcDdbRXDfBQs6/j5XnwOZ8wEssDX/WE66FgFPgBu4InsfCQ1R0Llqs/fhXAnbsrLO2QOO+9oKTAkqLL7AaTg4AO94ND0la1FGYfd0zDQkoeKPUzDoves7YSjL5riahIkMfJP8qJaer+Ly9hYI6wXmrXq2SLXDpuQuyBO9qWj66b1CKIKCAOrjiMQYRqPPAafDkcorzucRifAiqXOciwXhi03vQ8vddYfzp+cEaFpWwjjimM53sN7wtT9X58mY7y+OJvKVvrH7WY35iNcCB2XVrOWwMYylNdOiCXaKg7M4CniRU1yA0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9qpvWXuP4KP/uPEFPklGSxxKffPktfem6z4Q9yunjc=;
 b=etJDUQdiG8zFj+rdoIod140O1NjpjbzKSTVDm//oGE1toXAa6Jc9fFZort3XXckpFCEjxWiZMCw6LC00cJOMydRreFnZho5lyzUENGGiYOCFfesDxD5pECg6vMYtpJV6nBPZU1ewjcCuvAAemIVsW4m0RsrAhi7xYrzhDdZCTLpyh3vMvWak3B0iksoMRoHZLCXu+GbSdH9RWVKOrmy2ggfQp/alGe8AwIj54cEj21fufAwzwOC8t1d1lsu+QkQX1U0e21Y72s6h70qREleQCy5C9KsMzB6E0PHVRW5lRVMpAyX2eAhniVVWnSn3zRoy4M8WEbGXqFMK/osbOUQtYw==
Received: from BN8NAM12FT052.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::41) by
 BN8NAM12HT167.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::356)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.14; Wed, 30 Sep
 2020 00:00:02 +0000
Received: from DM5PR16MB1451.namprd16.prod.outlook.com
 (2a01:111:e400:fc66::4e) by BN8NAM12FT052.mail.protection.outlook.com
 (2a01:111:e400:fc66::236) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.14 via Frontend
 Transport; Wed, 30 Sep 2020 00:00:02 +0000
Received: from DM5PR16MB1451.namprd16.prod.outlook.com
 ([fe80::2860:e2c2:2512:1a43]) by DM5PR16MB1451.namprd16.prod.outlook.com
 ([fe80::2860:e2c2:2512:1a43%11]) with mapi id 15.20.3412.029; Wed, 30 Sep
 2020 00:00:02 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Raspberry Pi 4B and B205mini
Thread-Index: AQHWlrs54yGjeCni10GwDyJVFdJqNQ==
Date: Wed, 30 Sep 2020 00:00:02 +0000
Message-ID: <DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2F1B55CA8C3EEEC79A30885907810A1CFEA1358C1574A94ED6A095C6710583DD;
 UpperCasedChecksum:5416767A976C1CE6135E02051A4C7D3BB20A203B92F0B8A6885F416957846812;
 SizeAsReceived:6612; Count:41
x-tmn: [r4peG4Aqu7PrWA5QRFS8/IazLn+AwaSr]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 04347f61-82dc-4b68-f447-08d864d3c7af
x-ms-traffictypediagnostic: BN8NAM12HT167:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LUFMbVeGYHlx6BHpwLO7x6W9oeCjn6NIe0rf8Vz8qGYNvIW41BoJiqYOTSO8/dujNABxvCpTHrY0tbKYma8No+L6EXKEP327Vzat8R2OO2RLQPYgeBgL7KVSN1EQuBrWXqj6OnCrMzQq13bKVMCZ56Zte72IMvbuJJjxdkgJ01/uxV/Q70fPaXt9Xwn4IFjQTYQ9H8olvV+iHnjDkO2SVbnvBsjqiiUODFeG+dkOHuSvTeascf/a/hpJcavNdpLb
x-ms-exchange-antispam-messagedata: PYz3bdJYnrphV6KQw7GTE82twn9v41DqL8vbXIAl5KJOO02KyhOOO6I239lviA+mj5lI5nljvURctp+je4hsVmGEt5czzWe2OP+MAABj8fiiNkVYGmVqvT0a/bzbGmnGr7uOSriIFtAqRaMwaO9wPw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM12FT052.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 04347f61-82dc-4b68-f447-08d864d3c7af
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2020 00:00:02.3359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT167
Subject: [USRP-users] Raspberry Pi 4B and B205mini
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
From: Arthur Lobo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arthur Lobo <arthurlobo@msn.com>
Content-Type: multipart/mixed; boundary="===============9093625426835338740=="
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

--===============9093625426835338740==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR16MB14511C5C0058E960D82185A7C3320DM5PR16MB1451namp_"

--_000_DM5PR16MB14511C5C0058E960D82185A7C3320DM5PR16MB1451namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All:

I installed UHD 4.0 and GRC 3.9 on a Raspberry Pi 4B following the procedur=
e at:
https://wiki.gnuradio.org/index.php/InstallingGRFromSource_on_Raspberry_Pi
However I did not specify DNEON_SIMD_ENABLE=3DOFF in the command cmake -DNE=
ON_SIMD_ENABLE=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr/local ../
while building UHD.
I also set the CPU Governor and Thread Priority Scheduling according to:
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

Testing USRP Source->Frequency Sink in GRC at 4 MSPS with a B205mini on a h=
eadless RPI (X forwarding to
a NUC7i7BNH PC) over USB3 shows an update rate (spectrum refresh rate on th=
e display) of once per second and at 10 MSPS freezes.

Running benchmark_rate at 20 MSPS will cause ERROR_CODE_TIMEOUT messages.

I also overclocked the RPi4B to 2.2 GHz with the same result.

Any suggestions to get higher sampling rates with the RPi4B-B205mini setup?

Thanks.

Arthur

--_000_DM5PR16MB14511C5C0058E960D82185A7C3320DM5PR16MB1451namp_
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
Hi All:
<div><br>
</div>
<div>I installed UHD 4.0 and GRC 3.9 on a Raspberry Pi 4B following the pro=
cedure at:</div>
<div>https://wiki.gnuradio.org/index.php/InstallingGRFromSource_on_Raspberr=
y_Pi</div>
<div>However I did not specify DNEON_SIMD_ENABLE=3DOFF in the command cmake=
 -DNEON_SIMD_ENABLE=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr/local ../</div>
<div>while building UHD.</div>
<div>I also set the CPU Governor and Thread Priority Scheduling according t=
o:</div>
<div>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</div=
>
<div><br>
</div>
<div>Testing USRP Source-&gt;Frequency Sink in GRC at 4 MSPS with a B205min=
i on a headless RPI (X forwarding to</div>
<div>a NUC7i7BNH PC) over USB3 shows an update rate (spectrum refresh rate =
on the display) of once per second and at 10 MSPS freezes.</div>
<div><br>
</div>
<div>Running benchmark_rate at 20 MSPS will cause ERROR_CODE_TIMEOUT messag=
es.</div>
<div><br>
</div>
<div>I also overclocked the RPi4B to 2.2 GHz with the same result.</div>
<div><br>
</div>
<div>Any suggestions to get higher sampling rates with the RPi4B-B205mini s=
etup?</div>
<div><br>
</div>
Thanks.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
Arthur<br>
</div>
</body>
</html>

--_000_DM5PR16MB14511C5C0058E960D82185A7C3320DM5PR16MB1451namp_--


--===============9093625426835338740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9093625426835338740==--

