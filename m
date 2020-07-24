Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D261522CC90
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 19:47:58 +0200 (CEST)
Received: from [::1] (port=46370 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz1nZ-0005RR-Kb; Fri, 24 Jul 2020 13:47:57 -0400
Received: from mail-eopbgr1390131.outbound.protection.outlook.com
 ([40.107.139.131]:48998 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jz1nV-0005JY-19
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 13:47:53 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xg8o0CHYWWT+6jhgW6hI1XKWAwi4+zKvywlf/XLxP33BR/6NLoaMiNcyswO1SpH43ZrthjgCTjzvHAAJ1GO80op70vFW/bDUvitEiIqvrCyNOto9cl8od7ojleXiFrdjVLU3dHEanrlipoW162qjzcMCzF1dGH+1jR8WyWiBq+DZOD5NtHRpDeJSht92Km1Qn7KKfbR+E2muGKqsVkNLNfam45P19Y4MZKK7UPUeJAXnNk9Edd144kB/8OIIYUEggTSQ9KEB3z3sT2gaCn1idYhez0sESP3XWhjcjHILKzjTxi2LWtEo5L+Hj+Bqbc8kEkbuJNpxdCRdtENs/IFsWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IIV4o4clgTlkHJ72VtODaX58U4cM6M+LBQRHiHPyHBQ=;
 b=EJ09GAIKRLfsNkGuqj3QL5+xIG2Y8LHck5jMVu8RV4DWFuBTOPTApsWl0IyATmRkwhJZjGeSwZCUox06VXp0PpZFO98eWJk5zqdE05eoIpab38/MUsqXMuofela4rUyirUXjv5ruPGsLPq6jInRpSDrchlGHansi4m66a9yYIZJ7zs7Ez56vGYFOKnNTZYc09zhA7xeUOzQXlnOG+Pqex6VJDa+pjL1+6h5+D7j8ZviBaQTqamh5Slv433Yp+eGoD2X0hlCvudmtHu+QNqb3Pw+aAQcPIcTnAgtTL6w3lpnHxtrEYhBBr2c9iYUDzz7K8+VhA3RJ8L5wHmFRqiYdKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IIV4o4clgTlkHJ72VtODaX58U4cM6M+LBQRHiHPyHBQ=;
 b=cxmtr1ujDqofmJfG1unKcQMIIu4rF8PFQtWd/0tmpBlbQZ+ZXW3UYKJaHVwDUOqz2XijLMfJpsRLaWB1DIQ9T1HV8We6uc47A6wX75uz4mBvFxGCEcaXK4zIFfzUdgaxlY0iarQ+vwm3uDqtNW6MgCO6Y+/J3M+UCLP81BJRlU0=
Received: from BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:47::23)
 by BM1PR01MB3314.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:79::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.26; Fri, 24 Jul
 2020 17:47:09 +0000
Received: from BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c50a:f9e6:f794:ccdc]) by BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c50a:f9e6:f794:ccdc%6]) with mapi id 15.20.3216.022; Fri, 24 Jul 2020
 17:47:09 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Error in grc but running on terminal
Thread-Index: AQHWYd5eh7OS4YWp7kiQ26S4zNqnLKkW/BsAgAAE5uY=
Date: Fri, 24 Jul 2020 17:47:09 +0000
Message-ID: <BM1PR01MB257762B83EC75D576A91922A90770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB257714D4AD3404AE8779C8E990770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>,
 <5F1B1A5E.4050000@gmail.com>
In-Reply-To: <5F1B1A5E.4050000@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50e1dc0d-5db2-457c-5252-08d82ff996e6
x-ms-traffictypediagnostic: BM1PR01MB3314:
x-microsoft-antispam-prvs: <BM1PR01MB3314E5F685BC561A58FE4B1E90770@BM1PR01MB3314.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wiOgRXbQQs7jMxBg90JgL62tT7ytboarMs9X5RUgB4lIYNsNDVrmtRV+VHyLJVg6dysC7UgEJyB+B6GR7ifff9AvpfPV+jzZwXlIzp1sqXaNNXvS/iSj1ddE1rfhh9EUeOA91ki27T/7/1tCLXqdctdCCSWF7TehUNhkPGoiWl0wHatHOWrRKBa6Ib3e/xqyO4zHG3OgW3cySd/3gqq2LUdcVS7yMpxLUjtDPJN3E30i3xbuLY94xa00PTurwBlh6pV9DyAwQgsxCBZpflq1I6/w/JMylHdAb+/6oyCJc8EALtFq0hSeLuZh0IGxktkELP1LD1SXocygECEbJze4eVuJUmnx8nkSCih6uGDyy/CewI6BYfFSPbfeIwby7AEtztXlXjUUk8V/SeQURAdUDg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(396003)(136003)(366004)(39840400004)(26005)(55016002)(33656002)(508600001)(9686003)(966005)(71200400001)(166002)(83380400001)(110136005)(316002)(2906002)(86362001)(5660300002)(64756008)(66476007)(66556008)(66446008)(8936002)(76116006)(66946007)(7696005)(186003)(8676002)(53546011)(52536014)(6506007)(45080400002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2OTW7EC4llEH8NmtDNqbLt2az6LEfcC1AP+JL5U//soRTdo6I5xOZyfDRgetDnkdvuOE4YDHRmVZXmDinfzE18GkVKfhYsOTzZoUSqfhGNm1xnHsWgY4oYm7KMXOsPwllOH7bxSiHLs34UrOdfwZD9tLpBQswZn4bKZZvRCO/nHz1mAmqJvFYw+eh9ZXSqBSvFs7rE6B+9vfAwnvMRDVd4JVPRbPWRHjKk5Jrq19CGspTUb/KxAd+Cnf1hOgffpwKdwiWicocbrXYG15AcKdphgEJTroNCzkoBa5SEuI6hj2/QhqeyMaG+sRdfwhV3vRsibFgZbqWVn6FH/V+ZYIaB5FIqvc0rdStudhbS2PQXkobRE562zBtXnTK80NHn0OX5Cp6R1CcuKn5VqY2TJM2az5vR8EecAGa/6KcVLXJtCGThGLlHTw1TGXUEUfyixvtOGy9nVD4GJz8ZTGx7iwTarqWWfe/i4a6KhlzYqA9AEV31WTjiYpmFBmsdcO/2F8
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e1dc0d-5db2-457c-5252-08d82ff996e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 17:47:09.7114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C/+7vz3pWbhA46T/xPKUz0sx54e04lP5dKFHG3IvmcOrVYKAQqIXXxEy9OfV/l+rHVwbG7zkQjDY0xXllXnJQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB3314
Subject: Re: [USRP-users] Error in grc but running on terminal
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
Content-Type: multipart/mixed; boundary="===============0753543070313634557=="
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

--===============0753543070313634557==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB257762B83EC75D576A91922A90770BM1PR01MB2577INDP_"

--_000_BM1PR01MB257762B83EC75D576A91922A90770BM1PR01MB2577INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

This is the code:

https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_t=
o_file.cpp

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, July 24, 2020 10:59:02 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Error in grc but running on terminal

On 07/24/2020 01:22 PM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

I am using USRP 2955. I am using the code in c++ given in github to acquire=
 data. I don=92t know data is correct or not but the green light below one =
antenna is glowing. However, when I run a grc flowgraph I get fpga image in=
compatibility error. Why this different behaviour while running from termin=
al and while running using grc?

Regards,
Koyel


My guess is that your C++ code is linked against a version of UHD that is c=
ompatible with the FPGA, and your Gnu Radio environment is linked
  against some *other* version.

You haven't said *which* C++ code you're using, and given that GitHub hosts=
 10s-of-thousands of different applications and codebases, it's
  impossible for us to guess which you might be talking about. Please help =
us help you...


--_000_BM1PR01MB257762B83EC75D576A91922A90770BM1PR01MB2577INDP_
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
<div>Hi Marcus,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">This is the code:</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><a href=3D"https://github.com/EttusResearch/uhd/blob/maste=
r/host/examples/rx_samples_to_file.cpp">https://github.com/EttusResearch/uh=
d/blob/master/host/examples/rx_samples_to_file.cpp</a><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, July 24, 2020 10:59:02 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Error in grc but running on terminal</font=
>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 07/24/2020 01:22 PM, Koyel Das (Vehere)=
 via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am using USRP 2955. I am using the code in c++&nbsp;give=
n in github to acquire data. I don=92t know data is correct or not but the =
green light below one antenna is glowing. However, when I run a grc flowgra=
ph I get fpga image incompatibility error.
 Why this different behaviour while running from terminal and while running=
 using grc?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<br>
</div>
</div>
</blockquote>
My guess is that your C++ code is linked against a version of UHD that is c=
ompatible with the FPGA, and your Gnu Radio environment is linked<br>
&nbsp; against some *other* version.<br>
<br>
You haven't said *which* C++ code you're using, and given that GitHub hosts=
 10s-of-thousands of different applications and codebases, it's<br>
&nbsp; impossible for us to guess which you might be talking about. Please =
help us help you...<br>
<br>
</div>
</body>
</html>

--_000_BM1PR01MB257762B83EC75D576A91922A90770BM1PR01MB2577INDP_--


--===============0753543070313634557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0753543070313634557==--

