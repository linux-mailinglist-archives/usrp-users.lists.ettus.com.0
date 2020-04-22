Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B38FD1B4FB7
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2020 00:00:56 +0200 (CEST)
Received: from [::1] (port=39166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRNQJ-0000iH-Qk; Wed, 22 Apr 2020 18:00:51 -0400
Received: from mail-oln040092255093.outbound.protection.outlook.com
 ([40.92.255.93]:2196 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1jRNQF-0000Xu-Hy
 for usrp-users@lists.ettus.com; Wed, 22 Apr 2020 18:00:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gcOxgEH3e1MMGAHz0Qz6jh7Nm9O+Cz8tpRAlevQExzyVLzH20Y1MMoc1ruH300fyaijpsX077krt0M+W8M9UAXFucuJwQ4fykGe7/yfDyI1hOR3DByzQUwfbGd4gLDeuHmfbmo6+qB9H05WiSWjyNVfD4zRdbltsWhflZRpRVw4yIHWv9n+h+bCmAXJEUylM/HN4/pjy7Lt6PSyyBBLthvzGu+1KnIMQ3qs7DPnCNyYlF+xnbYASgu8VyNf2a3i40ePIJkIvV6zXuxiRWEKjhlVw8yQNIeuuM6IBQ23523SowNnCeDHXcEm8V12IsJ8kWFl0V4J02g6bLK5Joie2cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JeLcLJrwW0tqK7H8wnLn9Py6fuM5RrBiue9WPlZSsuI=;
 b=LnKVDN5XM0pA/tOmz+Vp7/mz5e7p8amDDcls7FeX58NkE9A4KPtn/L+fWPQ2KfymyEoD7AC5aqpoU8hhN/5PJvUFg/ybVgjrsX20B0QbZMvtrFwe6OxcybxVgstujYvHEMPewELaZiuMuXkUrtZdjohjwaAUTL0i4XpAmETppoLUOjrqOHpTqf7Q64Xl1SC+hx4vP6yPz7llQG7NHRKp0a90mDwi25tDoooum1VpV3F0Qfuf+sJKIcUrzNU0W4jTQXlnYJBjFyE4lF3++gWF3joxEbiunqxVbQYnoeRw1Wj07gwWVE9kZaY2ukm24h9owZWxBMTmlobk0ja09/5FVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JeLcLJrwW0tqK7H8wnLn9Py6fuM5RrBiue9WPlZSsuI=;
 b=YQ6fuQWYMv932+iCl3oWI27gzxbfrzQJjK7UBnk0RrEgqgPjTiuVA5rCIC/QP8YxvQq1oUvZB3ayf78U+n6B652pRtEpWi1+MNRZsMtHIsa6HzUdZd8MqoWdfF63WL03jWA1bkD73uCJKTuzP4Jsix5ChbrOhFjK8eo7SC5Mw6myDnfC9UjbUHJfRsgfYTm9ZqWgZ6nA4uVtc3svIeCkaho3DUcr9pHAGkYoTtcPEZUbQrxAtEXNHNfN/qnkZnx6QPuliqCLaGgK8F3wVEQaaE1epRYwu87VwHamDY4H0o3G1J1L6K4cuTKNJeOJFD1RFMb502ZgcYOwT0/oTJvo1g==
Received: from SG2APC01FT026.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::4a) by
 SG2APC01HT077.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::238)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 22 Apr
 2020 22:00:04 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.250.54) by
 SG2APC01FT026.mail.protection.outlook.com (10.152.250.190) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Wed, 22 Apr 2020 22:00:04 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.012; Wed, 22 Apr 2020
 22:00:03 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Modifying RFNoC ddc block for 16 parallel instances
Thread-Index: AQHWGPFZoDfvbKh70EeqElLjPk33eA==
Date: Wed, 22 Apr 2020 22:00:03 +0000
Message-ID: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:EFE3CC05B7DA74941D74383CEEEE2DC84B9ADE0CCB9B6187BB26CEA7286006B0;
 UpperCasedChecksum:EF61E329127DF53DE72C4FC53D4DFD83D2EC7CC53B6FFEA26646781398462DFD;
 SizeAsReceived:6713; Count:42
x-tmn: [DxFoT6FxwCpyrhIRaecK2WJ8E7gPHtRN]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 1131ee76-38cc-4edb-ed3c-08d7e70882a2
x-ms-traffictypediagnostic: SG2APC01HT077:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: roeee3O7VJ9Hk5SgW8/spdxTqlgwSD9tURRhWZ8PcDYwiVmeJGuyycwS6NtTmoolErDN06BhNL7Cm2Qao+pumlyHijCnKAwf5QrlMbNDmde8i6HRZPZZheuKam/yDDZWt9AuR5GxUw1hJHrLxfDKgnrLZ0pHWFTWOHgJiSm3y58XOBzpTmpZoE911OswFUi+iwHL5LiKfwMhnrq3djSWUUDv8VOrja+MwWqTwcGGBTa8neeLqd7WmvqUFqojHYGw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: vGPwFy6wmNHPsWAdaQej3NK4sUXhLIHUzICk9GKpkYbgYIQ8P441mg+cAH1By8ZrX/U+Pg7mIgT5Csb3CdzCADf0W/voIRaaEOLJu8YTrIGXEXVvP9Nicx6jsGPHODE7/BNjYN4lAmp1rcCFZMY9Lw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1131ee76-38cc-4edb-ed3c-08d7e70882a2
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 22:00:03.3035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT077
Subject: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
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
Content-Type: multipart/mixed; boundary="===============6107658566542964934=="
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

--===============6107658566542964934==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20BM1PR01MB3348INDP_"

--_000_BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20BM1PR01MB3348INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello

I need to have input 16 input and output port from the RFNoC so that I can =
custom sample rate for each channel. Is it possible to modify the RFNoC DDC=
 block and split stream block to achieve this.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20BM1PR01MB3348INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div><span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, =
HelveticaNeue; font-size: 14.666666984558105px; display: inline !important"=
>Hello<span>&nbsp;</span></span><br style=3D"caret-color: rgb(0, 0, 0); fon=
t-family: -apple-system, HelveticaNeue; font-size: 14.666666984558105px">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">I ne=
ed to have input 16 input and output port from the RFNoC so that I can cust=
om sample rate for each channel. Is
 it possible to modify the RFNoC DDC block and split stream block to achiev=
e this.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-s=
ystem, HelveticaNeue; font-size: 14.666666984558105px">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helveti=
caNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Rega=
rds</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-syste=
m, HelveticaNeue; font-size: 14.666666984558105px">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Helve=
ticaNeue; font-size: 14.666666984558105px; display: inline !important">Sneh=
asish</span><br>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20BM1PR01MB3348INDP_--


--===============6107658566542964934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6107658566542964934==--

