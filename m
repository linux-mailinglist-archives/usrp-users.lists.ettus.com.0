Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 864741AD2E6
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2020 00:35:51 +0200 (CEST)
Received: from [::1] (port=43626 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPD6o-00036c-5d; Thu, 16 Apr 2020 18:35:46 -0400
Received: from mail-oln040092254040.outbound.protection.outlook.com
 ([40.92.254.40]:39616 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1jPD6k-00032o-DT
 for usrp-users@lists.ettus.com; Thu, 16 Apr 2020 18:35:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DejyMEr8FwGB/7jsZu6NvB8k8iDMzWqB5UmJ3cVFS0HWD941a9xHYQjZOJdNZykBDQOpgga17YCGShM8oaD+elD7323vzGZWhzYR0PhMhVSgfI+NMlYTnYgRcCulfkFr3yKH56h+hYV/Mh58y7DcwbAQBan6RYelbr1Y8y5IJXyweBdlUBu3pEi0WBtY91yJCgLrj1QO+iL9T9Y38kMnQOmLT++3/lncSH3Lmw+bLFGjsA9LAB0LSC0db8Z1G2zcnldA9vIWunlAgobihZEyS++DmWb21uf/KNHJSBucoBfXUYfRxZLM0GmEccR4ArRXOS4EatLxWzrYCLRNJ4Ky/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0TpyLDtuAwNJu11UxluBlK8I4G5gO9Os3+ARhauQLxY=;
 b=KXejnYpChfVjQgzS71BrcbQMbdhMr8gMdO+YFbwFYdEqAyL3qdc/roQFcHgHzCE2GHaPwKGrFnYUBOX0iJ/Tb+WNmUHJA0C1qkJQgONpgHo3lj/mVVH0I5b3lqUwu6zor8Bku9cPMATMKsAD4GBeMSw5Y7+L9PhqUIwsvwu5y29hAvCmXNsvOpQcUhSt/+DnTtRU5OTbJgDlhp9lN+qDbEjvASO+IX/OPh2cp9Qf5KQSROh3VtbRAGp6S1XUX/kiSdYe3BELVfsphFQ5gg8qzxtaZ9wuldit9TtouRUMZZCmT5r7iL/fBwwFwkBpPgOk/f+WKp6aXH3sHKcYVRfGqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0TpyLDtuAwNJu11UxluBlK8I4G5gO9Os3+ARhauQLxY=;
 b=c9+fnfgIC2bWRo1b5OCMFd4gNGZls3Vjhd8Lc+NcS4dzoV+IA15Ipp1IVTaTlQpacPWcfRS1uvdKikjBlEdwDRGXGjHeySB3dax+PAzStCuApSvBvDamIKmU7YWQ2d1/d5KQgAgzrS2YLTaY7ouT9khBLzFUpbcmBZe9CGpP14pf6CI0mkWzbL3tacaIr4JqwLbcuN8o204zwefSSzDY7Ls4vU1EmjYA+Ftj7yzvI7c3VrXdYdCFajuWhoZsws87iAlunzLKgOo4EbiHHv5gKve2tOIPocPUCXLYup3Eh20U0okGIj55oXMGPDKt5Ik5qNI/R/ib8nDS0MSNn4Qazw==
Received: from PU1APC01FT049.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::44) by
 PU1APC01HT182.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::252)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Thu, 16 Apr
 2020 22:34:59 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.252.54) by
 PU1APC01FT049.mail.protection.outlook.com (10.152.253.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Thu, 16 Apr 2020 22:34:59 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2900.028; Thu, 16 Apr 2020
 22:34:58 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Fractional downsampling in rfnoc
Thread-Index: AQHWFD4S3p9nAtH5HEib5hstP8Q0qw==
Date: Thu, 16 Apr 2020 22:34:57 +0000
Message-ID: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:9ED7703EBAF22F2D16AD4E627B862F67E85232E9460CFE230BEB641671144F0E;
 UpperCasedChecksum:D4BEAF02FD6FF0099690503BA8229B8E3A0D57DDDC1DD078667FDAD27DC49E03;
 SizeAsReceived:6683; Count:42
x-tmn: [U2wsozjO8sXS61N8SycFlOuw1XsZ2wRe]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 81f26d8e-9e37-435b-9b55-08d7e25664b6
x-ms-traffictypediagnostic: PU1APC01HT182:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dEDXqWpb2uvyO29VU5m+1mKXgMrZzIZiMmTekz4SYVnGkBDuS7aRRdKzvx1RXaek/4s7Cn+m8pUAt0uJadL55Anx42EeHZGH8VrMl17H8+5R9zVq7LFKC0kmfHChdiKnsddQPSoI1BdacsRoNCuwi7VdnXEhbc6EdXqe1gKgYUbjaV4xaGxU+LatNHQ9RqbkUnhwT4TEZ6UsCBGpew3yPT7KnxrroOSjFRbFZs8lerk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: LKVjwAMuWGBjhLMMMJ0r470AQWkXxFRm+3zNvrmk+upeQ+G0isW9p0V3TC8OIbiSmX+DdzNLYZOkC35GnTTqEqdZuR8V0VPs3V+PhsJ/ig+jHO0HPVI2395XClW77qNWqnyoTCAACivRLchZz46b6Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 81f26d8e-9e37-435b-9b55-08d7e25664b6
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2020 22:34:58.0158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT182
Subject: [USRP-users] Fractional downsampling in rfnoc
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@LIVE.COM>
Content-Type: multipart/mixed; boundary="===============3072129579279283389=="
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

--===============3072129579279283389==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB33485647B95F4EB1A185B53E88D80BM1PR01MB3348INDP_"

--_000_BM1PR01MB33485647B95F4EB1A185B53E88D80BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello

I am trying to use the RFNOC based M/2 channelizer from https://github.com/=
theseus-cores/theseus-cores/releases/tag/v1.1.0 . I am trying to divide 25 =
MHz spectrum into 124 subchannels each of bandwidth 200KHz. I am capturing =
the signal at 200msps and I need to decimate it to 25.6msps(25MHz/128 chann=
els). Please help me in understanding how this can be achieved using RFNoC,=
 is there=92s any block already defined for fractional downsampling.

Thanks & Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_BM1PR01MB33485647B95F4EB1A185B53E88D80BM1PR01MB3348INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am trying to use the RFNOC based M/2 channelizer from&nb=
sp;<a href=3D"https://github.com/theseus-cores/theseus-cores/releases/tag/v=
1.1.0">https://github.com/theseus-cores/theseus-cores/releases/tag/v1.1.0</=
a>&nbsp;. I am trying to divide 25 MHz spectrum
 into 124 subchannels each of bandwidth 200KHz. I am capturing the signal a=
t 200msps and I need to decimate it to 25.6msps(25MHz/128 channels).&nbsp;P=
lease help me in understanding how this can be achieved using RFNoC, is the=
re=92s any block already defined for fractional
 downsampling.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks &amp; Regards&nbsp;</div>
<div dir=3D"ltr">Snehasish&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB33485647B95F4EB1A185B53E88D80BM1PR01MB3348INDP_--


--===============3072129579279283389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3072129579279283389==--

