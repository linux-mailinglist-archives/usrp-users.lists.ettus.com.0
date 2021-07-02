Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF223BA0E0
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 15:04:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A2FF384646
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 09:04:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="Aadv7/nO";
	dkim-atps=neutral
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-oln040092253094.outbound.protection.outlook.com [40.92.253.94])
	by mm2.emwd.com (Postfix) with ESMTPS id A73D13845ED
	for <USRP-users@lists.ettus.com>; Fri,  2 Jul 2021 09:03:40 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i9+LCA48xBJJWEQd7dEkA6/Vk2PXGR9f5p2ToZRaZVvIITthx1ljn8koV7cVkuro05ElrirfcA/mqm8lgfbe4wz3ao8wh3U9a+bAe1t7Spitm5Dd3EO8oJ890RoejoqKZ4H8j0mQbrC+IsGL/BxNX2C/OpND5hizOdrpdIbJXG2Fhh14nOEHRIWo5xItd8lLY7MoDZjpipEzpZADoa7jdogYru5jpsZgfKxdsil6n765YELoXv3vgOd3o/jFQJl2kbCx5jOt2A3F3LzXxfN9ACjot1ZnJguT4f56IjUQKoTlmQGeWqtgZGXFvVSkXggvWCRJtJZtFhXLMn3BAgUBFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nJUgajEyCYYyPDjBdDMwjyjSl2aIqbLmpN2Ja5aPsl8=;
 b=JEaZQcYeIOW4RKao00aY2iainn04WfIFIjoPNAEY9ft8CD3bz+sNNqOqpduYy1cx0U3EcNHh3rXQROVTOOJlBbDnttpEOSnzyPww200eaZfjxfXO/RPLIFvbGtxHGdOAGCv8WDEtFW5ks0tf9BEv+3rfO008e/8gnax1BlzGW4RUdlnbaoc9tXor3lKDxSYYJltNmB7lxt1zVp06O3w6qegFCRTH2ZmO0N6rcIzmlK9LbwkAlv2o3+paaqKe15ud+EmcxthrS7nc0TkYTFUP5/ieHmjrZ7hPPu9umbBzERUzxW7CZ6EhoDtB5RPuClCwHdreeG0G8nrwUB8P7iJLAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nJUgajEyCYYyPDjBdDMwjyjSl2aIqbLmpN2Ja5aPsl8=;
 b=Aadv7/nOG4oCxugbAao3zcgCXWbSvorNK5Ne7JVnCwYNv4OV7v/vVsyF53/O09aqVJznxwKFoXwf554NLdeZReTRbxoQaNSI3j7Qa8kRbmgjiRZWeqKokyilOT2bmHj2xRoerFtSZrnilOWhRdtyc45WGxlPuCuV3d7ns/CrOSEwQ9aMabJlBk1vqwQRgcxW52fWBJzuso5T9aGwFAbDsXMCUNjD7No8Nrl/R3Wq9pP/tuJGwyjQprhzPd/26IrnlxHg+ukKJZzvngqYTwpvNB5LU+Yp8slXgldBAKyDiGsrSSDG4UrJhakqpy83Plmu/HMRV/yDt1/QQYzFU07Duw==
Received: from SL2PR04CA0006.apcprd04.prod.outlook.com (2603:1096:100:2d::18)
 by PS1PR03MB4972.apcprd03.prod.outlook.com (2603:1096:300:82::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.8; Fri, 2 Jul
 2021 13:03:37 +0000
Received: from PU1APC01FT049.eop-APC01.prod.protection.outlook.com
 (2603:1096:100:2d:cafe::b1) by SL2PR04CA0006.outlook.office365.com
 (2603:1096:100:2d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Fri, 2 Jul 2021 13:03:37 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM (2a01:111:e400:7ebe::4f)
 by PU1APC01FT049.mail.protection.outlook.com (2a01:111:e400:7ebe::265) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Fri, 2 Jul 2021 13:03:37 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941]) by TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941%4]) with mapi id 15.20.4287.026; Fri, 2 Jul 2021
 13:03:37 +0000
From: Oscar Pablo <oscar_pabloo@outlook.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: how to use pps to sync different usrp in gnuradio
Thread-Index: AQHXb0JUzwV1gVvG8U2KJSmu6RTBmA==
Date: Fri, 2 Jul 2021 13:03:37 +0000
Message-ID: 
 <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:8CD74C2941A34F314CF414781759DB3679B01F61006CEFC4297B0300B8811B95;UpperCasedChecksum:0A69AC71A6AD51BE5F3D517AD3D41B0D028935CD88ED3F9DA3D0FC56B9D05516;SizeAsReceived:6662;Count:41
x-tmn: [wNSqJHS3zqmiITpardY1av8S6M7qKWoc]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: de6ef13c-65d2-4ef5-83d7-08d93d59ce94
x-ms-traffictypediagnostic: PS1PR03MB4972:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OaYYVSIcK8E/bdT7beqkUyexc6PKRcF7scRPAJZ4aIiq3aapj8T59z62HMzqhagczmZHpDmoSQr/DoJ/pXN1aTyB7ThyhM0XkVJGF1zLiOqKc+8j/BPb2Hb2142lf1rPg3C2QnUUOsGevUlqSmLpQ4eFHRQSnPOw477vAc0xhkrXZeGeyEOBcXV3L62swgeVz3XTYeXWiTgqBbSN23MC4FDU4nqi69yEj/4JBJ6KJ3sT3NVoPtxTeV5tJDuYFV6POfBOLn+3eFXrNZdh4euYfuGIixejL0z+UE9NPIRE0NKM5XcHO2DOM5mT+/X5Um6bgiFXrzWrm/26l5cBw7QNWNuenxi0R6y8H4qg9aGK+4qpQVO3yYr81vt4jWsB9AfUK/oHCMaPoh+qXRMkZgNb+sd5ThaB9MuP9gO7KvnNVpwemMLHYqkP52nZAu1vj2Hq
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 2uPKMcgJTZ1HIKRBCeY5gqzGq7o3Ij1/GaTSuYzs2eNY9rp4X6dPtl7etCjmWIBYQqRlC3A75dYUs1pnRKAmwURnmJDLM+L0dsIvNwx18arw9B/4MKAK8YSPZJgl301M7gn2GK5yuQR95w0QdnOiNQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT049.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: de6ef13c-65d2-4ef5-83d7-08d93d59ce94
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2021 13:03:37.5963
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR03MB4972
Message-ID-Hash: M5DLIEWIYWKGGLRUDUQFOFS5IU2Y3BNT
X-Message-ID-Hash: M5DLIEWIYWKGGLRUDUQFOFS5IU2Y3BNT
X-MailFrom: oscar_pabloo@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] how to use pps to sync different usrp in gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2SBOVYBUE3KDV6RLTUZXQTKWGAIBPFYD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4807789157673510500=="

--===============4807789157673510500==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYYP286MB1407D3F10F883B963086DA60F01F9TYYP286MB1407JPNP_"

--_000_TYYP286MB1407D3F10F883B963086DA60F01F9TYYP286MB1407JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

HI,
i know how to use pps to sync more than one usrps in c++. but how to do thi=
s in gnuradio. i find there is a sync option in the usrp block which contai=
ns "unknown pps", "pc time" what is unknown pps?

--_000_TYYP286MB1407D3F10F883B963086DA60F01F9TYYP286MB1407JPNP_
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
HI, <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
i know how to use pps to sync more than one usrps in c++. but how to do thi=
s in gnuradio. i find there is a sync option in the usrp block which contai=
ns &quot;unknown pps&quot;, &quot;pc time&quot; what is unknown pps?<br>
</div>
</body>
</html>

--_000_TYYP286MB1407D3F10F883B963086DA60F01F9TYYP286MB1407JPNP_--

--===============4807789157673510500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4807789157673510500==--
