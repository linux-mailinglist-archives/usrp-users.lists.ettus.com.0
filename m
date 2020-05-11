Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F751CD12F
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 07:05:29 +0200 (CEST)
Received: from [::1] (port=38768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jY0d4-0003wm-20; Mon, 11 May 2020 01:05:26 -0400
Received: from mail-oln040092070045.outbound.protection.outlook.com
 ([40.92.70.45]:47751 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <johnan636@outlook.com>)
 id 1jY0d0-0003qA-BT; Mon, 11 May 2020 01:05:22 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TO1NASEHcbGtYzxfQAVC3D88xGD+tQK34j5X373xuI9TtVkwdwq32h1E71VZ/WkwUoxZSuzltVuuYNxafPuu9EYdroGFll6RU60sI0mqFiprP6VJoHxrjBjozlDSyPp6ReYAstvHljgIwps2E6MRkVBq2AAl+fxdQ+6QjqwaEmfNY/G0ZNj7kXGZfEgfq4PJk3WonOVFSLu/x9bvfnRVesRLTYIWVUOXLVtJujzAfEhIKMssg0PsHwVYBa3gnvW2XowIwy4TWiRUigR8gHJp+2k1FgBwlkEEfyfzUeG8pIq4bSKn2bBIUWY9hyl0rcpZM6qJ5j0YqkuuotqE9xmLgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKZUly/dnbhfoA7d0I5hQsRD3bSAO8g2VrlleUmSpkY=;
 b=P8QyscaHmgil+TfnlBgozavTgMBW5cWn7zH1GvCoZSIHPtTrfyZdJWW3zNbK9PAE+ha5yFc2fUL3k5Ljoz211VUwALU7cLlKIHfSdkQlqQNwvMdKwmxXOcRhuEsNwQV9T+VZiSnWiosiCh5qE+RU47FziEXa8j/arVeHRMQVx/OAkPug6DoOMXLH2z4TcoC2I7+MOfaWhDsrDtaCOBw+kK8rK6c4Fyoxz/ntuQVxZqT37twRI7/iG+B4h04NhYnigD1uoZjpTgXUKdQvl6kHJO7q9f2m+plBXXtlgBRCpjw0aem7f2J3fUHEug+7j84c3eVKZEUaTjM6WxDvpg6d0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKZUly/dnbhfoA7d0I5hQsRD3bSAO8g2VrlleUmSpkY=;
 b=WwY9chfqhOhxahm9hVl29MTCwc9F0RGWnSfhhIdNQ0WZ3f/VSYEQSYq2IuEOfBHWdGv3MHDvl9ZpsLoNavnDZQ1xOBLLZXej5SaLpFFybIEMJrHmaNjYlf2HvKO2gEph1DuZgjTSlIBiE5HAUHGIx/NgWjS1cYjpu8y2ZC/gttjVILdXEA+Sql1OdUZw+YVbuMvm/rbJLh2S3NjeFRIX4odPYrnBob8IN3xJJqnGF0r6YUFf1bWVS6WnmrNoiqzNYw4rnxH0S8jpDUZIzInir2Pyk6n419H0dDJjAoacE5C47DRJv/uJrp6f4STC1Kqp4SBpNnQtH7EEsBWoRsL6Ng==
Received: from AM5EUR03FT060.eop-EUR03.prod.protection.outlook.com
 (2a01:111:e400:7e08::4f) by
 AM5EUR03HT118.eop-EUR03.prod.protection.outlook.com (2a01:111:e400:7e08::196)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Mon, 11 May
 2020 05:04:20 +0000
Received: from AM7P190MB0584.EURP190.PROD.OUTLOOK.COM (2a01:111:e400:7e08::41)
 by AM5EUR03FT060.mail.protection.outlook.com
 (2a01:111:e400:7e08::160) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27 via Frontend
 Transport; Mon, 11 May 2020 05:04:20 +0000
Received: from AM7P190MB0584.EURP190.PROD.OUTLOOK.COM
 ([fe80::948f:a802:67db:dad8]) by AM7P190MB0584.EURP190.PROD.OUTLOOK.COM
 ([fe80::948f:a802:67db:dad8%3]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 05:04:20 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>
Thread-Topic: USRP N310 environment
Thread-Index: AQHWJ0jQO9Tic3WswkSS4Sh0p/3TIA==
Date: Mon, 11 May 2020 05:04:20 +0000
Message-ID: <AM7P190MB0584A82FAA0EB12CBCEDC093E3A10@AM7P190MB0584.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:73833552ED0998D9B5586A6CD244B3DF6D99396B7C847C68B2C93F2471DB1B3A;
 UpperCasedChecksum:E33D653EEAFE6E53D382815D01F689E923C0AFD972FABEB06039882076BC8A1B;
 SizeAsReceived:6733; Count:42
x-tmn: [ulg2glQjM8Ipiw6McGZGvCPCJA7/mDHb]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: a207e3d3-cd93-4f01-0e6d-08d7f568c3e3
x-ms-traffictypediagnostic: AM5EUR03HT118:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dl8vewdEtpE5k42CjOMdHsxXBTR0HjVPylw8zUKow2APaZLm8Qke8HU0gSC5Tni44JxRO1O9RAIv3DVjauq8iVXBwayVAKQ4L+zJM/00A8qN/9s3Z1WY1m/4vBrDZaSSZ1vDdkjAQwShphdC3tcn2Rg8muFGgIMoTPX2ZwPjZp1z40Klm70pdYTVNm2wXQSMdNMmBGgeTtY1gnw/DksTIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0584.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: TFoVG4tX+ytaCADBXR1eqevPyJChFflPLsfNi+ZyqDZc5rDjt86ygtXLgyqScw8xRme7BiCneR/InElkLmPfTCaTUNj6iN9TQn9//KnSPGO1K40FEmEKUsK5wtEf1EApuvMi4GtDOtVfDX6DFoM85g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a207e3d3-cd93-4f01-0e6d-08d7f568c3e3
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 05:04:20.7518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT118
Subject: [USRP-users] USRP N310 environment
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
From: Anthony Johnson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anthony Johnson <johnan636@outlook.com>
Content-Type: multipart/mixed; boundary="===============8861055525346479002=="
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

--===============8861055525346479002==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM7P190MB0584A82FAA0EB12CBCEDC093E3A10AM7P190MB0584EURP_"

--_000_AM7P190MB0584A82FAA0EB12CBCEDC093E3A10AM7P190MB0584EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey, I'm trying to install UHD 3.13.0.2 gnuradio and gr-ettus for USRP N310=
 sdk.
When I installed the uhd, the Python API was disabled and if I enabled it o=
n cmake it would fail (I'm not sure if the environment supports python api)=
. I wasn't sure if this was a big deal so I tried to install gnu radio and =
gr-ettus to the sdk. gnu-radio installation worked a with cmake output:

########################
Gnuradio diabled components:
########################
*testing-support
*doxygen
*gr-atsc
*gr-comedi
*gr-qtgui
*gr-video-sdl
*gr-vocoder
*gr-zeromq

(disabled manually: gr-atsc, gr-dtv, doxygen, gr-vocoder)
and when I tried to cmake gr-ettus it failed with the output: "QTCore could=
 not be found there. QT is not installed correctly for the target build env=
ironment"

I believe that this problem is due to the disabled Python API in the UHD. b=
ut it seems like it was a problem of the environment because I have all the=
 dependencies for python api and on my computer I had no problem to install=
 the same uhd with python api on my computer.
Maybe the problem isn't the Python API... It's just my guess.

P.S
On the usrp e310 I didn't have this problem, and I even managed to run gnur=
adio with the qt gui. So it's a bit weird that on the N310 the python API i=
s not supported.

thanks,
Anthony.


--_000_AM7P190MB0584A82FAA0EB12CBCEDC093E3A10AM7P190MB0584EURP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
Hey, I'm trying to install UHD 3.13.0.2 gnuradio and gr-ettus for USRP N310=
 sdk.</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
When I installed the uhd, the Python API was disabled and if I enabled it o=
n cmake it would fail (I'm not sure if the environment supports python api)=
. I wasn't sure if this was a big deal so I tried to install gnu radio and =
gr-ettus to the sdk. gnu-radio installation
 worked a with cmake output:&nbsp;</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
########################</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
Gnuradio diabled components:</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
########################</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*testing-support</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*doxygen</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*gr-atsc</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*gr-comedi</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*gr-qtgui</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*gr-video-sdl</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*gr-vocoder</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
*gr-zeromq&nbsp;</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
(disabled manually: gr-atsc, gr-dtv, doxygen, gr-vocoder)</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
and when I tried to cmake gr-ettus it failed with the output: &quot;QTCore =
could not be found there. QT is not installed correctly for the target buil=
d environment&quot;</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
I believe that this problem is due to the disabled Python API in the UHD. b=
ut it seems like it was a problem of the environment because I have all the=
 dependencies for python api and on my computer I had no problem to install=
 the same uhd with python api on
 my computer.&nbsp;</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
Maybe the problem isn't the Python API... It's just my guess.</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
P.S</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
On the usrp e310 I didn't have this problem, and I even managed to run gnur=
adio with the qt gui. So it's a bit weird that on the N310 the python API i=
s not supported.&nbsp;</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
thanks,</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; color: black; background-color: rgb(255, 255, 255)">
Anthony.</div>
<br>
</div>
</body>
</html>

--_000_AM7P190MB0584A82FAA0EB12CBCEDC093E3A10AM7P190MB0584EURP_--


--===============8861055525346479002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8861055525346479002==--

