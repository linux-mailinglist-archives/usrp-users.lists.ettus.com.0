Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BD91095ED
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2019 00:09:42 +0100 (CET)
Received: from [::1] (port=50718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iZNUA-0006c2-T5; Mon, 25 Nov 2019 18:09:38 -0500
Received: from mail-eopbgr690087.outbound.protection.outlook.com
 ([40.107.69.87]:4845 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <mbassi@srcaus.com>) id 1iZNU7-0006Wq-Pc
 for usrp-users@lists.ettus.com; Mon, 25 Nov 2019 18:09:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SVi7yzqfQU19Cp3cszihN8nCLHc2dRNQcKwxdDtPrdJQ2H5UAF0nB5i3Vw0bjBZp9OVnBH24A9Y8CtNkptfp87u9nX/nSQk1j0wuV83q/0BXhQLxoYO1Z6oU2YlEqX3R+bZ68Y28eUocRJuzee3juhIMaOUYmj3HxzP/Hi//eV3kUf0DIaRNCGpCb3xm2TAyladIDGIBgMcFQPzvgTF9CsB4jLdzF8Pg5Pyiv8Gf1xkt8dF+D1zFsjBE8g+UzO0sm0pd+QVt7DZ9Bq3WJ33SCeQqGbl65G45YlTDiEIjMHhSg9wSn121Bp3rIuVus7qb1AfkKPfmTKcFn70Pikz3gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTzjq0bvVpt7yRi/vGdNiwMTmSLFuhlGATHh9DGXwlI=;
 b=TnuQXLAvdsVc+p1ygfqkC0r4tV8ia1wbrw2KsDTB58d71/Na4jfG35T326Hma5ksiartilFHGnx90LqSfr3NQQxewmegqVC3t6saBFtNnNEzAUIFueVnd8YVQYPSyyqydrI2fmRBOwQUiPJes1cPwfnNdduPNFLx8LZzZhWhKyjjZfStDIU3J+4m0LiDASC1D/4ohzZ8ERa/7f40NHI23Nk/8rv+jolFQx26NRV3hJw7eHbaRLM4DQeF9eRk30UYsWRrngiDMfD4p8emPTWH3U/anvMa+wMW4nw1q66hu5+0w/HoYhraEP9D2qlEV+6tPVTm4f177a0beOPSm0rmoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTzjq0bvVpt7yRi/vGdNiwMTmSLFuhlGATHh9DGXwlI=;
 b=EAPMHmGTLjcOtWFT0v2csKqBqqy6lazU9M8Kqt2Yijb4OrY3xFalhl4PZxOeuP93+xPM7Pgx2LIzhiWIzHFINJI3RLkICc+I4qq6Qe3k6Ef2UP/q/0SsseFVHZhgIVbDqRsvmlGz/5SljBiDntqKxdM6iTUJ5C5aoiK7FCcSc9s=
Received: from MN2PR16MB3485.namprd16.prod.outlook.com (10.255.237.91) by
 MN2PR16MB2814.namprd16.prod.outlook.com (20.178.247.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Mon, 25 Nov 2019 23:08:52 +0000
Received: from MN2PR16MB3485.namprd16.prod.outlook.com
 ([fe80::697e:79f7:349e:af74]) by MN2PR16MB3485.namprd16.prod.outlook.com
 ([fe80::697e:79f7:349e:af74%7]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 23:08:51 +0000
To: USRP list <usrp-users@lists.ettus.com>
Thread-Topic: Custom OOT C++ on USRP
Thread-Index: AQHVo1LjN3yEL/gmL0i+HcDiqIGYUg==
Date: Mon, 25 Nov 2019 23:08:51 +0000
Message-ID: <MN2PR16MB3485E9A8D33B3EF1F7700E9AB74A0@MN2PR16MB3485.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mbassi@srcaus.com; 
x-originating-ip: [49.255.44.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 407040d7-2cac-44c9-846e-08d771fc6fed
x-ms-traffictypediagnostic: MN2PR16MB2814:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MN2PR16MB2814B068698612C5441F0F90B74A0@MN2PR16MB2814.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39830400003)(396003)(376002)(136003)(53754006)(199004)(189003)(43544003)(174864002)(86362001)(5660300002)(606006)(6436002)(966005)(508600001)(6116002)(66066001)(55016002)(3846002)(16799955002)(2906002)(33656002)(52536014)(6306002)(54896002)(7736002)(347745004)(8936002)(8676002)(19627405001)(186003)(81156014)(14454004)(81166006)(26005)(102836004)(6506007)(256004)(105004)(74316002)(66556008)(66446008)(236005)(25786009)(66476007)(91956017)(76116006)(9686003)(316002)(64756008)(6916009)(71190400001)(66946007)(71200400001)(7696005)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR16MB2814;
 H:MN2PR16MB3485.namprd16.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: srcaus.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eS2wLsbqLaryA+XXf5znynug4FCH47ArMdGNx7SjaJAZGMbCnXacICZXrTp7FTAGyskhXTgl3c+aXMnvN/SvsCIfmRq8TwbiyqALJxq5dqOMXkVl7PmPRe4w4MPQnwv4YEE0x3FIvgvAlfO5xTO48GM14f4Dp+ww/HEdmtwPLVJ57rQkIUlMYUkR4/8OQOumOMbeEG/Kj426J2AiNUzTMsvyC/Gn6opCwOFFU9iaWyyKS+QCAVj+NC2fS9fDCd7ITXQRl3JSwzqNWCOY5D5uBkiQwlr0P8Y7/F0OY1212xiCAb2fVxRj9cBhfb8sKwYEhbiagujEpjNimm+EnWsjvM4hSqWxW1bNsqjmcajyJkJUNc+gIameE8XnvcoPGAE+aooUiUbcZjeAOspo+6Tl7guhWwMbfB/fzCdVcSOsqaXbOp7aHN6F3sbKFaj1UM8ITJDyjvtBw6PnCSJpTw2C7KskKXIk/FJhVSo9hxolwPw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 407040d7-2cac-44c9-846e-08d771fc6fed
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 23:08:51.7270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oTto6MPOJWrcF0vp1qJNLMvTVy4FLfTIT5kFR8GHl7/HvUpkyAytUNO0GDSZHMBhvn1emEJh4VqB4Vpat4OEAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2814
Subject: [USRP-users] Custom OOT C++ on USRP
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
From: Michael Bassi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Bassi <mbassi@srcaus.com>
Content-Type: multipart/mixed; boundary="===============0798619284435927788=="
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

--===============0798619284435927788==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MN2PR16MB3485E9A8D33B3EF1F7700E9AB74A0MN2PR16MB3485namp_"

--_000_MN2PR16MB3485E9A8D33B3EF1F7700E9AB74A0MN2PR16MB3485namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I have created my first GNU Radio Out of Tree (OOT) module in C++

I have tested it in GNU Radio Companion (GRC) and it works as expected.
I would now like to run it from my USRP device (E312).
Currently my USRP does not recognize my custom module. Which makes sense! I=
t is not a part of the GNU library....
I have tried copying my gr-custom_module across to the device root director=
y, but obviously the dependencies are not setup.
I have then tried running the standard cmake commands from the build direct=
ory (on the USRP), but these don't work.

I got some tips on stack-overflow:
https://stackoverflow.com/questions/58794210/running-a-gnu-radio-custom-out=
-of-tree-oot-module-on-a-usrp-device/58808077?noredirect=3D1#comment1039065=
11_58808077

I was told to:

  *   Set up a cross-compilation tool-chain on my PC,
  *   Cross-compile my module, and
  *   install it to the correct directory structure, finally
  *   copying over the thus generated filesystem tree to your device

How do I do this?

I'm currently reading this wiki https://wiki.gnuradio.org/index.php/Cross_c=
ompile_GNU_Radio_and_install_on_target. It says:
We have our environment set up such that we've run the environment script p=
rovided by the SDK and we can talk to the device. To build the program, we =
just need to follow standard instructions for our build system to make sure=
 it uses the right tools from the SDK. The environmental variables take car=
e of a great many of these issues. For CMake-based projects like GNU Radio =
and GNU Radio out-of-tree modules, we also provide a toolchain file. Settin=
g up the project is then as simple as: (and then some special cmake command=
s)

What is this "environment script provided by the SDK"?
I can currently connect to my device via ssh. Though I'm assuming this is s=
omething different?
"we just need to follow standard instructions..." - what standard instructi=
ons"
what toolchain file?

Thanks again for any help!
Mike



--_000_MN2PR16MB3485E9A8D33B3EF1F7700E9AB74A0MN2PR16MB3485namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<div>
<p>Hi all, <br>
</p>
<p><br>
</p>
<p>I have created my first GNU Radio Out of Tree (OOT) module in C&#43;&#43=
;</p>
I have tested it in GNU Radio Companion (GRC) and it works as expected. <br=
>
</div>
<div>I would now like to run it from my USRP device (E312). <br>
</div>
<div>Currently my USRP does not recognize my custom module. Which makes sen=
se! It is not a part of the GNU library....</div>
<div>I have tried copying my gr-custom_module across to the device root dir=
ectory, but obviously the dependencies are not setup.</div>
<div>I have then tried running the standard cmake commands from the build d=
irectory (on the USRP), but these don't work.
<br>
</div>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
<div><span style=3D"color: rgb(0, 0, 0);">I got some tips on stack-overflow=
:</span><span style=3D"color: rgb(12, 100, 192);"><br>
</span></div>
<div><span style=3D"color: rgb(12, 100, 192);"></span><a href=3D"https://st=
ackoverflow.com/questions/58794210/running-a-gnu-radio-custom-out-of-tree-o=
ot-module-on-a-usrp-device/58808077?noredirect=3D1#comment103906511_5880807=
7" id=3D"LPlnk235043">https://stackoverflow.com/questions/58794210/running-=
a-gnu-radio-custom-out-of-tree-oot-module-on-a-usrp-device/58808077?noredir=
ect=3D1#comment103906511_58808077</a></div>
<div><br>
</div>
<div>I was told to:<br>
<ul>
<li>Set up a cross-compilation tool-chain on my PC,</li><li>Cross-compile m=
y module, and </li><li>install it to the correct directory structure, final=
ly</li><li>copying over the thus generated filesystem tree to your device</=
li></ul>
</div>
How do I do this? <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
I'm currently reading this wiki <a href=3D"https://wiki.gnuradio.org/index.=
php/Cross_compile_GNU_Radio_and_install_on_target" id=3D"LPNoLP831107">
https://wiki.gnuradio.org/index.php/Cross_compile_GNU_Radio_and_install_on_=
target</a>. It says:<br>
</div>
<div><span style=3D"color: rgb(12, 100, 192);">We have our environment set =
up such that we've run the environment script provided by the SDK and we ca=
n talk to the device. To build the program, we just need to follow standard=
 instructions for our build system
 to make sure it uses the right tools from the SDK. The environmental varia=
bles take care of a great many of these issues. For CMake-based projects li=
ke GNU Radio and GNU Radio out-of-tree modules, we also provide a toolchain=
 file. Setting up the project is
 then as simple as:</span><span style=3D"color: rgb(0, 0, 0);"></span><span=
 style=3D"color: rgb(0, 0, 0);"> (and then some special cmake commands)</sp=
an></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
What is this &quot;<span style=3D"color: rgb(12, 100, 192);">environment sc=
ript provided by the SDK</span>&quot;?
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
I can currently connect to my device via ssh. Though I'm assuming this is s=
omething different?
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0);">&quot;</span><span style=3D"color: rgb=
(12, 100, 192);">we just need to follow standard instructions..</span>.&quo=
t; - what standard instructions&quot;
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
what <span style=3D"color: rgb(12, 100, 192);">toolchain file</span>? <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
Thanks again for any help!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
Mike<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_MN2PR16MB3485E9A8D33B3EF1F7700E9AB74A0MN2PR16MB3485namp_--


--===============0798619284435927788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0798619284435927788==--

