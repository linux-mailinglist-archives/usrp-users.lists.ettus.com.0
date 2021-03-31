Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1917350799
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 21:48:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3D09383F0B
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 15:48:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="gGAn3FWo";
	dkim-atps=neutral
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam08olkn2079.outbound.protection.outlook.com [40.92.47.79])
	by mm2.emwd.com (Postfix) with ESMTPS id 19991383BFA
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 15:47:34 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMOjSfMMF/iOaUWWVjm9o+eXMzKPnTEgjGLiBsUbbRI4AIC+vrv5rl4GCn+8+fhZlmrXCRwm8Ej4fapU4d0gjLEKmMfjPrtwQXpI6xSs0hCYX1j9v9KDE1gCulVVZEfjP2hu4CInmnFMH1c9AkU6RwxjkFDMuOT+5P+2C0cZgWeAIP+kK3NN9aMpvyluyyqRoHDSsvNAoe0t71jQVDnBbFSUrKLffHc1PppDLcrXw1wZ2UfmBy/q985xzFx1iYEUCbtjR2vA+l7Hd3Y17oKPT2NFrOzitRNJygn6XvlVK35Uh02q3XGYVD4e6FLfBFOkMXPnjuZWsnOVCuEAuwZ7CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lSPdY2Q0okmt0/cz+90UAyEPpTEN5I8Hz9NWIq0UZ2U=;
 b=jFfzRO/McGzSza68+egSsviF3xtWdWk+xnhbS98GQoKFbPPCrvgvgWcJI7g+i+JPWI0r1MmsExYcnzlMUBeLOooTGB4sZFagKL3rXTJHM/e4X2FWsnVnBO7Hj6p+i41xJuxjvzq1lJ8qE8QbXqLYZyjAXg4TbV9RqReYYtBkRaXbm9guiJ2AcGCFFsaL0gcAubCDWTQcL/M6cPoZuiVA5v9uKN1P70bmGcMW5gpF/9sMcPi3vQscP++5GGjX0EizgAzNXO91zCY1Wo+nQqffzVXN0J3nKzH+8hC+8lDQofowVDzv9rMW1RmppuMkO4laPwHWcaTWU5MQvDXae5YE4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lSPdY2Q0okmt0/cz+90UAyEPpTEN5I8Hz9NWIq0UZ2U=;
 b=gGAn3FWohFibl7YL5a4R4HvWr5keolLIpv6QJzCBDAy+ojKn9SSZX8GB7BNeUGDzejQQMTfiXnRV2SyrLqy6zn4FudnR96mfXNGN6AGC209XatE9Io/GnTJ2/V7yHvNACXs5NDFcdyRQKpLZciIbce2Kx46YdeVySJqa1dxhYw/VwsBrse3OhChg/PNkv8/jR3P7isoDreRgrqftwb1oM9Gyv37gvOLALtM/tR869KIIUSAjVktEOMOOSnjnna9ET6V3fOaxBQqLJr+vxclbutRAsIQylqD/Cze4Sn+cvc9hr5vypPOEFAozkTS68XXe9p+kKCUauQ5xfHifRIesaQ==
Received: from DM6NAM04FT031.eop-NAM04.prod.protection.outlook.com
 (2a01:111:e400:7ea3::4b) by
 DM6NAM04HT222.eop-NAM04.prod.protection.outlook.com (2a01:111:e400:7ea3::269)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Wed, 31 Mar
 2021 19:47:33 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 (2a01:111:e400:7ea3::4d) by DM6NAM04FT031.mail.protection.outlook.com
 (2a01:111:e400:7ea3::86) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25 via Frontend
 Transport; Wed, 31 Mar 2021 19:47:33 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::4c49:8b50:ac2c:9385]) by BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::4c49:8b50:ac2c:9385%4]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 19:47:33 +0000
From: Jeff S <e070832@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Debugging with Visual Studio Code in v3.8
Thread-Index: AQHXJmWyycsCntFfLkqxYIinoMsy3Q==
Date: Wed, 31 Mar 2021 19:47:33 +0000
Message-ID: 
 <BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9@BN6PR19MB3138.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:8029BB8FBBB961EDD481BC55C26CB80987EAA982A7E41D9ED248F406EC8C48D8;UpperCasedChecksum:73A511CA1CDA71801B22274ABF86D1FA99488C6055F1916A7A48A0CAC6AA890B;SizeAsReceived:6647;Count:41
x-tmn: [dY5ciu3IYH3KdnjGPoEDW31KzWREU3re]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 12b38030-a192-4263-afe0-08d8f47dd411
x-ms-traffictypediagnostic: DM6NAM04HT222:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 24pLd9/NximXF4T/G8pNFOpgm3jQ9pwnRfRAvDRh5u69nBhEOBa+Hu2mx6MLAur22+MNOk6WKAB5C/vdggfcZzaDszNzYfEUkBcKaYpGBQxm/ljv4eFfNmtlLO+p6eJwzlY0FzUECY0A0Upy//NlhGzrfwqnpA3WbWHHExPOp4VrauWag1NMh+onyEOtUdoz9KFMR0j5zMtesToSRbhQcmgAR3l2BFwUl9/0+BND51gL0DWQY00/8In7LJZOChmarEctghLheMPIz2BQqa4NYsGUmFhxp2UpNLRfv3ngA6rot4/7A1qjU0SMyW6D3m8cQcYRUS2mS+Q7HmFij/HRTAms74+2YpWHj9a0vOI8SZY/9F903WceQDPJzNUcqOr/1hRkrQKXpdNACj6wUuaaylux9GAWTPnXtUK8djRvmAtIv6Peq7VEaHWLqGTJipCC
x-ms-exchange-antispam-messagedata: 
 YNUyruiUHMSpmkfhEv/4DX81WVUfqoyw8MbjkCCp9FShJA3eD6J+RuywO4qzJJm/DbYlMzggntfW1xiCiLTNrzsNJocow7j8xid05d7CzzKkVn8lWXTZKFTQQfyDucSMOm7HWMrczPWkc3POaFpBvg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM04FT031.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b38030-a192-4263-afe0-08d8f47dd411
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 19:47:33.7304
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM04HT222
Message-ID-Hash: GNK7CUVH6WAYYAV3TZUDDT4N4RNVH6QS
X-Message-ID-Hash: GNK7CUVH6WAYYAV3TZUDDT4N4RNVH6QS
X-MailFrom: e070832@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Debugging with Visual Studio Code in v3.8
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/343KLNAGPQJBHJKSXRCUKD2E5HQX7EEB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3487265598243976179=="

--===============3487265598243976179==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9BN6PR19MB3138namp_"

--_000_BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9BN6PR19MB3138namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

While using GNURadio v3.7, I used to be able to perform source-level debugg=
ing with Visual Studio Code (probably more often than I'd like to admit) us=
ing the instructions located at:

https://wiki.gnuradio.org/index.php/UsingVSCode

I have now upgraded to use v3.8 and just tried to do the same thing.  But n=
ow with v3.8, I get "Unknown Source" for my code within the debugger.  I ca=
n start up and run just fine, but can't get to my source or breakpoints.  I=
 built using:

cmake ../ -DCMAKE_BUILD_TYPE=3DDebug -DCMAKE_EXPORT_COMPILE_COMMANDS=3Dtrue

so I could see that I get the "-g" in the compile commands is actually set.=
  Just curious if anyone else is using it or having troubles.  Hopefully it=
's one of those obvious things I have done wrong.

Thanks,
Jeff


--_000_BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9BN6PR19MB3138namp_
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
While using GNURadio v3.7, I used to be able to perform source-level debugg=
ing with Visual Studio Code (probably more often than I'd like to admit) us=
ing the instructions located at:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top:0;margin-bottom:0">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<a href=3D"https://wiki.gnuradio.org/index.php/UsingVSCode" id=3D"LPlnk">ht=
tps://wiki.gnuradio.org/index.php/UsingVSCode</a></div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have now upgraded to use v3.8 and just tried to do the same thing.&nbsp; =
But now with v3.8, I get &quot;Unknown Source&quot; for my code within the =
debugger.&nbsp; I can start up and run just fine, but can't get to my sourc=
e or breakpoints.&nbsp; I built using:<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top:0;margin-bottom:0">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
cmake ../ -DCMAKE_BUILD_TYPE=3DDebug -DCMAKE_EXPORT_COMPILE_COMMANDS=3Dtrue=
</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
so I could see that I get the &quot;-g&quot; in the compile commands is act=
ually set.&nbsp; Just curious if anyone else is using it or having troubles=
.&nbsp; Hopefully it's one of those obvious things I have done wrong.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,<br>
Jeff<br>
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
</body>
</html>

--_000_BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9BN6PR19MB3138namp_--

--===============3487265598243976179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3487265598243976179==--
