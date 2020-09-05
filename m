Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A1D25E88D
	for <lists+usrp-users@lfdr.de>; Sat,  5 Sep 2020 17:00:10 +0200 (CEST)
Received: from [::1] (port=47366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kEZfl-0004Xo-IK; Sat, 05 Sep 2020 11:00:09 -0400
Received: from mail-eopbgr1390134.outbound.protection.outlook.com
 ([40.107.139.134]:20256 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1kEZfh-0004PT-2J
 for usrp-users@lists.ettus.com; Sat, 05 Sep 2020 11:00:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RVb3vuKp0VbQdXHNyuV9U7bzhoAWBTWq5Svz9ohwRkG6QOqdoeFxtHexZofnZn1i0DEqUmvMTYc8848y287VU5pEX71BWu8kaGUBlB3w2BtFqCf96hmi9dcryoiDflAwL0YBZdUho0ct6yROLOkqe73oN3by1ToaiLktudjqEPDDwF0ozltlZHGuWKeIws6ljJ2ETgkZsVlK5GGh35SaIoLtGlmo50W/l6BTSU1lwL1Svu1ZzWDL4qOLLbIkEGJ5Og3ZVNgQxJFRmSZySO8tLDb09bvmtGh+HSkeq0/8+jd8aW2ZZqqc8Qbf2jbLdPQHvKD3NrPYQ5CfIWW9fWMAMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5D1VAKpfpu1umbvO8t2EhAuEmpcHxU6hSUThPJkkRgw=;
 b=PQ0h+QWDs9RxKwfKFcTJQJANICT6nRnS8zd275fec+zabEomUChz0Wt8KxxxOHHdRRy9kw5+soLkIvvgDyVGajCfSoxD2sup4kFHHwv4wEoQlIY/7OZYr+d6Sci3MnfVyEzScJuBRAjTZcRXA6x3Zg5wcuo6tATVsZEZpV2Rfw25twTTnAoKRW/vlkG85Rf29ptp6j4LLncByuIXbIoW+x599EyEMu6EzD/OpgrxNUECi21dCrpT9/Hjdtecf5kAyIS5n32naOa5KLJCWU2tJaSppcyG7ZLKRVxo7D2Ebj4cqY3q7aTKtJTBDLjII4KHTcTmGb3hPXFBTsyz+FxpGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5D1VAKpfpu1umbvO8t2EhAuEmpcHxU6hSUThPJkkRgw=;
 b=WqX7Umeod0PDTVJczC0NSnIKzkZSy8+lx5y58vIWYpuQ4SPvu+R2CvOgaSxbDPuI2lEQCeg3BQZPA1v5M1x1xcCdCsoORhKUnaYAhmczXHQ/pF+wM5Nxi4P+hRHch2Fkr0CuB+1buNweQZRkRGejUy8VjKj5FaxxjU0KLtHbW44=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB3630.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:64::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Sat, 5 Sep
 2020 14:59:22 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::5d37:8959:e500:82fe%5]) with mapi id 15.20.3348.017; Sat, 5 Sep 2020
 14:59:22 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
CC: "Naveen Jaiswal (Vehere)" <naveen.jaiswal@vehere.com>
Thread-Topic: USRP sensitivity
Thread-Index: AQHWg5OMJebIind1hUCTMMLlf4n416laIvEL
Date: Sat, 5 Sep 2020 14:59:21 +0000
Message-ID: <MA1PR01MB25885B58121EBCF0777551D1902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.138.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac9e8869-8f0d-4077-359d-08d851ac45d7
x-ms-traffictypediagnostic: MAXPR01MB3630:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MAXPR01MB3630F2C0E60D7F0E1F935562902A0@MAXPR01MB3630.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P/Ry1z8rEr2AqegBKgndJnG3QsUKJHdfa/gAXDFkEeLWnqQlQ818GJZDqAhOWNT6xuGI1SaXbU+/xp9prAk0GddflbPCHJgM7uOVd0MktHLuzh/cNv8c0CDTtq6ULbYYrfeeXwGeybMiSEnvZcdjrnkT9lRKiIUkzYe+OxR2IchDz+NTE637WCDBBPPZv3ZMPB0RhFXF+l6tUNbPAIpOhX9cAQv78UF25yxsT/wefMbVk47hJGYK4PJeI5xCtm2+ZdFcAFh9nnsH+s1ERQ5BkhUE6IQUEKTGaY2Lgq+GFPJ6oq+GVtAOJEN/ApKNrB9UAE5wAl2Yg9ZuV0DSb34iusxMobcUwC+hBIdOS2HQ0L50Yu/m1tdjJdGXOlMxUTKX2hCuztZiqVw6DOo5JNeEYqedDnlS0zizuLmsZk6iabMXIsLAKq6Rf9/hHlLI7dutOkWnIeknQkghtKt9BDSLGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(346002)(396003)(39830400003)(376002)(136003)(8936002)(166002)(7116003)(2906002)(53546011)(6916009)(6506007)(478600001)(8676002)(86362001)(186003)(76116006)(107886003)(45080400002)(2940100002)(26005)(66946007)(66446008)(66556008)(66476007)(64756008)(5660300002)(71200400001)(3480700007)(9686003)(316002)(4326008)(52536014)(7696005)(33656002)(55016002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5Vee/S30BvJCQxOdWZKZS6Q9xWG+m9rPJng76PTqNmwOtjFD7A4UFuXy3f+EW47BZpj5rAfGi6v2PScH8T9tqMwD3A9PN10NgIGI0S1HKxC/QDecbGBt1QS1FqM4uxC+1qAfQqgxXPrQg99C/E9D7wxcywgEe1+hsTU96W2pKbiMYmDO8HMJijZmaaPvHlHUt+Gf63hqEV8kwW+zbGeHeIMCFe44V77lWJ3XwAP06TRRIv73J3PINJL7x1lFsVW/zALVzUFfwHsd6FutzD5/d5NcZs7PGhHi9q+C0WIHsVQ++OBHwlbh9K1qIjDCth7Uq8P/CvHrz4GF9ZPn5ai+wm6e/h/IIRlDzrHYedveCbY5i5fIJ1V91EsRqxA+klSm33MwHs17FpoYH42l6diODNvqM2TF37OheqH/1Ct/bJNAVn3AEAFfTy0QeTiwmoMGjOtlyvCfeKJ4jHjPiJ9ft0yik0GwLbqJgEA5JVDKWmaLLx3SwWXOhrwqX2aUQqWcctuasJ2zmq4bseQ2gXEegwfaNtNgpqSn4XIlDP/yb4PAOIAQ4yYNVfddKrYblveFFZyhTJ9Umrdn/4HVjdeem7r+OdSzTKl+SOdRkZUrcui+M2R8dy6KlHjX6iFQy4IGiorg5Fazp4yi6bKzJEUOQw==
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ac9e8869-8f0d-4077-359d-08d851ac45d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 14:59:21.9632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NObVRLWG1/YKCuL5oRFhWNdMEZJ0gKD0AayGFEINngbQ60Y2G3PmB0Qe78bk87+WL+24M4OLhZHhmyufif8aow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3630
Subject: Re: [USRP-users] USRP sensitivity
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
Content-Type: multipart/mixed; boundary="===============6618123074217355684=="
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

--===============6618123074217355684==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25885B58121EBCF0777551D1902A0MA1PR01MB2588INDP_"

--_000_MA1PR01MB25885B58121EBCF0777551D1902A0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

One info this is usrp 2955
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Koyel Da=
s (Vehere) via USRP-users <usrp-users@lists.ettus.com>
Sent: Saturday, September 5, 2020 8:28 PM
To: 'USRP-users@lists.ettus.com'
Cc: Naveen Jaiswal (Vehere)
Subject: [USRP-users] USRP sensitivity

Hi,

NI told me magnitude of IQ samples received in usrp is the voltage in volts=
.

Info: Office wifi 10 m distant USRP 70 dB (power) gain gives 10^-3 (volts? =
ie magnitude of IQ samples)

Assume wifi transmits +20 dBm, isotropic radiator, isotropic receiving ante=
nna

Voltage expected at receiving antenna terminals in 50 ohm:

Effective area receiving antenna: lambda^2 / (4 pi) =3D (0.125 m)^2 / (4 pi=
) =3D 1.2e-3 m^2
Power per area at 10 m distance =3D 0.01 W / (4 pi * (10 m)^2) =3D 8e-6 W/m=
^2
Received power =3D power per area * effective area =3D 8e-6 W/m^2 * 1.2e-3 =
m^2 =3D 9.5e-9 W
P =3D V^2/R 9.5e-9 W =3D V^2 / 50 ohm V =3D 7e-4 V is voltage across antenn=
a terminals

Voltage at ADC:

Power gain =3D 70 dB -> voltage gain =3D 45 dB.
7e-4 V at antenna terminal is amplified by factor 10^4.5, gives 22 V

Actually see 10^-3 (magnitude of IQ samples)

That's a big difference between expected and observed. If the unit of IQ sa=
mples is really volts and 10^-3 is in volts then 70 dB gain of usrp is actu=
ally much much lesser value than real 70 dB.

Further I see in wifi analyser app the power ratings are -30 dbm to -60 dbm=
. Those values agree with my calculated expected receive power above. I exp=
ected at 10 m range to receive 9.5e-9 W, which is -50 dBm. That's nicely in=
 the -30 dBm to -60 dBm receive power range that the analyzer app reports.

So what=92s wrong with usrp?

Regards,
Koyel
Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB25885B58121EBCF0777551D1902A0MA1PR01MB2588INDP_
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
<div dir=3D"ltr">One info this is usrp 2955</div>
</div>
<div id=3D"id-b9d25ecb-c906-48cf-9130-2bc02c27d52c" class=3D"ms-outlook-mob=
ile-reference-message">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
>From:</b> USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt; on behalf =
of Koyel Das (Vehere) via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Saturday, September 5, 2020 8:28 PM<br>
<b>To:</b> 'USRP-users@lists.ettus.com'<br>
<b>Cc:</b> Naveen Jaiswal (Vehere)<br>
<b>Subject:</b> [USRP-users] USRP sensitivity
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">NI told me magnitude of IQ samples received in usrp is the=
 voltage in volts.</div>
<div dir=3D"ltr"><br>
</div>
<div><span style=3D"font-size:14.666666984558105px; display:inline!importan=
t">Info: Office wifi 10 m distant USRP 70 dB (power) gain gives 10^-3 (volt=
s? ie magnitude of IQ samples)</span><br style=3D"font-size:14.666666984558=
105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">As=
sume wifi transmits +20 dBm, isotropic radiator, isotropic receiving antenn=
a</span><br style=3D"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Vo=
ltage expected at receiving antenna terminals in 50 ohm:</span><br style=3D=
"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Ef=
fective area receiving antenna: lambda^2 / (4 pi) =3D (0.125 m)^2 / (4 pi) =
=3D 1.2e-3 m^2</span><br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Po=
wer per area at 10 m distance =3D 0.01 W / (4 pi * (10 m)^2) =3D 8e-6 W/m^2=
</span><br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Re=
ceived power =3D power per area * effective area =3D 8e-6 W/m^2 * 1.2e-3 m^=
2 =3D 9.5e-9 W</span><br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">P =
=3D V^2/R 9.5e-9 W =3D V^2 / 50 ohm V =3D 7e-4 V is voltage across antenna =
terminals</span><br style=3D"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Vo=
ltage at ADC:</span><br style=3D"font-size:14.666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Po=
wer gain =3D 70 dB -&gt; voltage gain =3D 45 dB.</span><br style=3D"font-si=
ze:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">7e=
-4 V at antenna terminal is amplified by factor 10^4.5, gives 22 V</span></=
div>
<div><br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Ac=
tually see 10^-3 (magnitude of IQ samples)</span><br style=3D"font-size:14.=
666666984558105px">
<br style=3D"font-size:14.666666984558105px">
<span style=3D"font-size:14.666666984558105px; display:inline!important">Th=
at's a big difference between expected and observed. If the unit of IQ samp=
les is really volts and 10^-3 is in volts then 70 dB gain of usrp is actual=
ly much much lesser value than real
 70 dB.</span><br>
</div>
<div dir=3D"ltr"><span style=3D"font-size:14.666666984558105px; display:inl=
ine!important"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size:14.666666984558105px; display:inl=
ine!important">Further I see in wifi analyser app the power ratings are -30=
 dbm to -60 dbm.&nbsp;</span><span style=3D"font-size:14.666666984558105px"=
>Those values agree with my calculated expected
 receive power above. I expected at 10 m range to receive 9.5e-9 W, which i=
s -50 dBm. That's nicely in the -30 dBm to -60 dBm receive power range that=
 the analyzer app reports.</span></div>
<div dir=3D"ltr"><span style=3D"font-size:14.666666984558105px"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size:14.666666984558105px">So what=92s=
 wrong with usrp?</span></div>
<div dir=3D"ltr"><span style=3D"font-size:14.666666984558105px"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size:14.666666984558105px">Regards,</s=
pan></div>
<div dir=3D"ltr"><span style=3D"font-size:14.666666984558105px">Koyel&nbsp;=
</span></div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25885B58121EBCF0777551D1902A0MA1PR01MB2588INDP_--


--===============6618123074217355684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6618123074217355684==--

