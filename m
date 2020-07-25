Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AAA22D5DF
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jul 2020 09:44:37 +0200 (CEST)
Received: from [::1] (port=51880 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzEr9-0000kj-PH; Sat, 25 Jul 2020 03:44:31 -0400
Received: from mail-eopbgr1390101.outbound.protection.outlook.com
 ([40.107.139.101]:49184 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jzEr5-0000fE-HT
 for usrp-users@lists.ettus.com; Sat, 25 Jul 2020 03:44:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=be/cOTgOuCUcQmDjmN2s9x5vG4xOnRdhKq4+il+4tQ8lQFHztgqebdw8EGqsZtVhF/ydnwXV0bkqkrrJcNkx+T0ALRnQOcfGQS295ydEQpH3TZBIlo/yH66vRdbX2EX5WD4ptzDkFdJS8HK1YDgfVOp2uK1czNBcpOUsrMgcsaxmMLwuiVRNLEsKr3RnKn4WNpEMEUyQXTC96XMmRW0BIL3vOTJxOLin/ix9sbWdmoWslwJ4+pePV/AA9JRQKpVuAeuwlbPbccFdhtT1TyeWC0Ggm2G8POunoC5TQjCCF+HfhXNTQlVj+pvYhF/DeTn/W/jOlno5G9xh+PKfnXrIVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zd2/dXo1vAdOqaOfWPDEECgbmxcpjn7Hu0RtLw4oUAI=;
 b=lXK6kTuWUSoXr9jhazYzxJKZjReRdlgc51YFnItxVs/6W5ECljDHWSTZlfPsxKeUdfmfoQUgT2RgKeNJMr9P3QHA4o2WQBO9S0nRyqIYxMkcDVCgqCoJwsqXUX/Z9SjvlB5BI+pVDTNWlcBLJzdM5QyXElJpxgxziowcYLHyh+hCQaBbWMxbMb0ktOGOR/cFVhtYflKjlPVW3lcRBB/bwb9yd4fW0cLovms+ydhKoErunrlNGT8NTyEEw7S1ikk4/O66+to5dPKiULKSwnZIgE3mJ6455lFusBhI9Q0TnXW0pz5160kQR9hXYB3Gm5cPVlmMPjxq4NEFZH/VW+OpKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zd2/dXo1vAdOqaOfWPDEECgbmxcpjn7Hu0RtLw4oUAI=;
 b=VKghihn97TO1ifBGhMX5Qyi221cBPijRI2KL338KakYfaa8sRrqgwer7jnEFX5GFHhErRlz9GO+qtGKJ5GLh8oUC/+iG1WBAUeWTGv7hU1y8MuMEwYpwXPyW7X3MW5G/9EkW+ZlG1KTxxBH2JNdYOYNmbHsy4gopUl0F+y4NrHQ=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB2860.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Sat, 25 Jul
 2020 07:43:42 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.027; Sat, 25 Jul 2020
 07:43:42 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Data rate using usrp and grc
Thread-Index: AQHWYlbbHjnwDUz39U+Gftus+wZMPQ==
Date: Sat, 25 Jul 2020 07:43:42 +0000
Message-ID: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.138.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c090ae14-fd30-46a9-f8f2-08d8306e73d4
x-ms-traffictypediagnostic: MA1PR01MB2860:
x-microsoft-antispam-prvs: <MA1PR01MB2860FB1341F570E71C939EF390740@MA1PR01MB2860.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Un6cNoraAw6sZT0d1Y4+yv9CxRIwxqCBTlg7s4hXmT8E8OLJN28w7BukjfRdtVOtiP07Td05vNzDxnTorNPubnyqLATjWCCHADaxVncatCpQM/zgYoWYaDOFcrq7UGJb0/2RWB3rBM2z7gG1XqBQgpPHHt4E/SHo8gRhGI3o4jvoL26v7yitR1xS0JCniu8PbHw+s4XMsEWwxQRcfaKohvRbj5m0/PmOTxiv1pJUVC3yEHTjQqqzFhlvCT2YEd2edcFMO8QOYlUVq9/75TAaUEEoUO0fkdff9WkugBeE8vW1VolOjvQBKcuEra7DL40yDcFrFFTEE+nQdk3LeIttciDajZFsjo1eZ4xIdV+lOKEn+ANxzJHsucHbMDwwV+fjiCAnmJ5G5gl7F4rz5jZHfGT0AcLmzBDjdolOORDclexXia6xVST8BDWjnuSTH1Y49T6pqNrfmrZj6bll+RB7CA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(2906002)(71200400001)(86362001)(76116006)(4744005)(55016002)(6506007)(64756008)(66446008)(9686003)(66556008)(66476007)(66946007)(8936002)(83380400001)(7696005)(186003)(8676002)(5660300002)(26005)(52536014)(6916009)(45080400002)(508600001)(33656002)(166002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /P50YP/R9KjcG83OPVpYhwyVnZurIly8TSOGuKWVRkqDNicBvxijG/VcGKks4Tq9+pF5E+jQV9oaYCE+paaHuy8S+YgV6OjXra2tPerEufkXYH7kg2nJyPx9rfgKKmdY1zU3yrSp0HqHEWXeLdTcQiXiMveStB8Q1FwQLt5I0BJS8V4TyqruPyJER8vBe/gzXy9qvKjjPF8NAzZSbSLZh6M9w4/Cyyg5GBZY4SB+r3JeSwG+mJhSuwSLexwoB0w/kM9Y6g3CFLCLJxOdzWry7mOsnuShFus+n90ryJ9UWpJ9kFPlR1Hnd99dbMIMrhOaQQBvwkTDvg/HcLPHvsq4YcJ0St6uyPI02JZfgr1e0+ngAC9OM7xufwGMSpoFWBvGjr51u3MkLYkOplodrG5dKdAqXLr3pOREvNvYfBgO0HbcteRxkN6AYUzLhpK5FkPEjAxgOhRUBFvjQWehYtraHH2r1hQIWOnqA9BYXTjo0eh5Qcmygb2WIoM7N++BJf86
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c090ae14-fd30-46a9-f8f2-08d8306e73d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2020 07:43:42.0288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VXfzhkgbJKSnAIqcUuOFWJBvEKmK9J/thjJkei+dmidzPTfrvTbfwkUhdfHwvAnPVcLzO0pftaIlIQF1fVKCUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2860
Subject: [USRP-users] Data rate using usrp and grc
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
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============3396729628798482406=="
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

--===============3396729628798482406==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25884DB85773F1978595CD6890740MA1PR01MB2588INDP_"

--_000_MA1PR01MB25884DB85773F1978595CD6890740MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to capture data from usrp 2955 using USRP Source block of grc and wr=
ite to file using file sink block of grc. Will there be packet drops if USR=
P source is set at 32 bit complex float in grc when receiving at 100 MSPS e=
ach from two channels? That makes 2*100e6*64 (32 bit I and 32 bit Q) =3D 12=
800e6 or 12.8 gbps. I am unable to set usrp source block in grc to 16 bit c=
omplex as then the usrp source block is not compatible with file sink which=
 doesn=92t have option for 16 bit complex. Please help

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB25884DB85773F1978595CD6890740MA1PR01MB2588INDP_
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
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; display: inline !important">I want to capture da=
ta from usrp 2955 using USRP Source block of grc&nbsp;and write to file usi=
ng file sink block of grc.&nbsp;Will there be
 packet drops if USRP source is set at 32 bit complex float in grc when rec=
eiving at 100 MSPS each from two channels? That makes 2*100e6*64 (32 bit I =
and 32 bit Q) =3D 12800e6 or 12.8 gbps. I am unable to set usrp source bloc=
k in grc to 16 bit complex as then
 the usrp source block is not&nbsp;compatible with file sink which doesn=92=
t have option for 16 bit complex. Please help</span><br>
</div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; display: inline !important"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; display: inline !important">Regards,</span></div=
>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; display: inline !important">Koyel&nbsp;</span></=
div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25884DB85773F1978595CD6890740MA1PR01MB2588INDP_--


--===============3396729628798482406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3396729628798482406==--

