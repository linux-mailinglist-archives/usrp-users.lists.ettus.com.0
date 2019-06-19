Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4064C064
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 19:57:39 +0200 (CEST)
Received: from [::1] (port=57754 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdepz-0006Ov-TS; Wed, 19 Jun 2019 13:57:35 -0400
Received: from mail-eopbgr800105.outbound.protection.outlook.com
 ([40.107.80.105]:62592 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <robertomk@inatel.br>) id 1hdepv-0006CL-Dy
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 13:57:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inatel.br; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O4tNGO0dKkiWgv7yNM3S6Eq4LISDrSN+XpgHx0dN0Mk=;
 b=cOfQCc/hpIPcFi3kNCEIvvOWg+1cTS9dgGdcArM2PUeZvS6jMkP+FK0IaPJeGe4UphTw0Ge7WSILXigBdBIuaA91cTaOflHFQf3h0kv4kzjjl50yIw2hzbvRRlEwntM3DIW+2znVBH/kL1T95t26PkQM+3q65+VlHr1+3Vepptg=
Received: from BY5PR02MB6019.namprd02.prod.outlook.com (10.255.245.12) by
 BY5PR02MB6146.namprd02.prod.outlook.com (52.133.255.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Wed, 19 Jun 2019 17:56:48 +0000
Received: from BY5PR02MB6019.namprd02.prod.outlook.com
 ([fe80::51f7:e86f:a34b:5116]) by BY5PR02MB6019.namprd02.prod.outlook.com
 ([fe80::51f7:e86f:a34b:5116%6]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 17:56:48 +0000
To: Mitch Davis <mitch@silverblocksystems.net>
Thread-Topic: [USRP-users] RFNoC multi-driven nets
Thread-Index: AQHVJV5KzGuRFTk4+UC7RuC0lVu8B6ajNPpBgAAFBQCAAAlGgg==
Date: Wed, 19 Jun 2019 17:56:48 +0000
Message-ID: <BY5PR02MB6019B8459D7FAAC62880BBF5AAE50@BY5PR02MB6019.namprd02.prod.outlook.com>
References: <4ae5b15d06564dc5d1df676f52c389a2b5c9a8ac.camel@silverblocksystems.net>
 <BY5PR02MB60191C8CE67A2BE9C0AAFAC5AAE50@BY5PR02MB6019.namprd02.prod.outlook.com>,
 <861fdd8b6fef8a1f7af3efa3784be59a47e4c882.camel@silverblocksystems.net>
In-Reply-To: <861fdd8b6fef8a1f7af3efa3784be59a47e4c882.camel@silverblocksystems.net>
Accept-Language: pt-BR, en-US
Content-Language: pt-BR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=robertomk@inatel.br; 
x-originating-ip: [131.221.240.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e418622f-8fa4-4adb-95c0-08d6f4df803a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR02MB6146; 
x-ms-traffictypediagnostic: BY5PR02MB6146:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BY5PR02MB6146345024B1A4035ED051DEAAE50@BY5PR02MB6146.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(39850400004)(136003)(376002)(396003)(199004)(189003)(7736002)(2906002)(14444005)(91956017)(256004)(86362001)(8936002)(14454004)(6246003)(71200400001)(19627405001)(786003)(6436002)(6116002)(3846002)(21615005)(66946007)(6506007)(66446008)(316002)(71190400001)(76116006)(6306002)(76176011)(236005)(54896002)(55016002)(486006)(9686003)(53936002)(478600001)(81166006)(99286004)(606006)(446003)(476003)(8676002)(229853002)(66476007)(74316002)(64756008)(73956011)(7696005)(66556008)(186003)(74482002)(81156014)(68736007)(6916009)(966005)(102836004)(26005)(33656002)(66066001)(25786009)(52536014)(4326008)(11346002)(6606003)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR02MB6146;
 H:BY5PR02MB6019.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: inatel.br does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WBi6atR9kl5k6Iny4YsDqmOckmeorOPQcwNLXcyLAM88R993KP89DeBS8ekaXU2/IX9KweNaja7DEdNnzID8tjUEGlhY80am5Dpxp12OaN+tYR61wSbDHaQ7y67zylatpjyx6KhgXcvYZwfwHjhNqog59n8wGHJMqf0UzrqdKBemGZoIAQirLqWA7sQyAQCC2P1naXZzi4LRWpK3Qum/4/izoTJgwtnZRIxe1TOdou8UxwNUGFFPcxN3FoktaDDZrfzvZJwhKk2+5c2vYn6mfmDnNZoVUHLF4+dDyiWUsqz+YvXfFiVueWdNLzU2jvynMA6bcClQjmu7ti5p/4TOCbi2uwhIodwfBhhfOzSPjPKBP7MWK5Xsoy89GcKkWfBR81cjeB7OqruB1VNmYmuEiJcR1ZmZ0w/UaOgxYsv+qo8=
MIME-Version: 1.0
X-OriginatorOrg: inatel.br
X-MS-Exchange-CrossTenant-Network-Message-Id: e418622f-8fa4-4adb-95c0-08d6f4df803a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 17:56:48.4292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7e9e2c51-9fcf-4f2e-a79b-097e52a424cd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: robertomk@inatel.br
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6146
Subject: Re: [USRP-users] RFNoC multi-driven nets
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Roberto Michio Marques Kagami via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Roberto Michio Marques Kagami <robertomk@inatel.br>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2737369562867526255=="
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

--===============2737369562867526255==
Content-Language: pt-BR
Content-Type: multipart/alternative;
	boundary="_000_BY5PR02MB6019B8459D7FAAC62880BBF5AAE50BY5PR02MB6019namp_"

--_000_BY5PR02MB6019B8459D7FAAC62880BBF5AAE50BY5PR02MB6019namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Mitch


I've tested the 118a45d63. Failed (multiple-drivers).

The f6890f22 is good, but only for XG build.

HG option generates another type of error (4 missing pin LOC constraints).

My OS is Ubuntu 16.04.


Regards,

Roberto

________________________________
De: Mitch Davis <mitch@silverblocksystems.net>
Enviado: quarta-feira, 19 de junho de 2019 10:13:52
Para: Roberto Michio Marques Kagami
Cc: usrp-users@lists.ettus.com
Assunto: Re: [USRP-users] RFNoC multi-driven nets

Roberto,

Just to clarify, the commit that I used that resulted in successful
build is f6890f227b40687b356c1e6c10d9eec2184691d0

This requires Vivado 2017.4

Did you try f6890f22 or 118a45d63?

I don't have the bandwidth to spare with any bisection to determine
what the actual fault may be.  I've found f6890f22 to yield
satisfactory results.

This is built in a CentOS 7 native install (with EPEL and some other
extra repos enabled).

Regards,

Mitch

On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:
> Hello, Mitch!
>
> I've faced the same problem.
> I've tried the first commit after f6890f22 including Vivado version
> 2018.3 and the error is the same.
> Did you received any reply for this failure?
> I would appreciate any information.
> Thanks!
>
> Regards,
> Roberto Kagami
> De: USRP-users <usrp-users-bounces@lists.ettus.com> em nome de Mitch
> Davis via USRP-users <usrp-users@lists.ettus.com>
> Enviado: segunda-feira, 17 de junho de 2019 15:44:07
> Para: usrp-users@lists.ettus.com
> Assunto: Re: [USRP-users] RFNoC multi-driven nets
>
> My apologies for not connecting this message to the OP, I didn't
> register this email account to the list until after the post.
> However,
> Peter had posted that he was having issues building the latest X310
> RFNOC image (with an RFNOC block) with an error of multiple-drivers
> on
> two nets (ce_clk and ce_rst):
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060=
013.html
>
> I too encountered this same error.
>
> On a hunch, I reverted the repo to the commit just before the Vivado
> 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0
>
> I was able to build the X310 RFNOC image with an RFNOC block using
> that
> commit without failure.
>
> I haven't attempted a bisection yet.  Is there anyone else that has
> observed similar build failures?
>
>
> Regards,
>
> Mitch Davis
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--_000_BY5PR02MB6019B8459D7FAAC62880BBF5AAE50BY5PR02MB6019namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi, Mitch</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I've tested the&nbsp;<span>118a45=
d63. Failed (multiple-drivers).</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>The&nbsp;<span>f6890f22 is =
good, but only for XG build.</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>HG option generates a=
nother type of error (4 missing&nbsp;pin LOC&nbsp;constraints).</span></spa=
n></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>My OS is Ubuntu 16.04=
.</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>Regards,</span></span=
></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>Roberto</span></span>=
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>De:</b> Mitch Davis &lt;mitch@s=
ilverblocksystems.net&gt;<br>
<b>Enviado:</b> quarta-feira, 19 de junho de 2019 10:13:52<br>
<b>Para:</b> Roberto Michio Marques Kagami<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Assunto:</b> Re: [USRP-users] RFNoC multi-driven nets</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Roberto,<br>
<br>
Just to clarify, the commit that I used that resulted in successful<br>
build is f6890f227b40687b356c1e6c10d9eec2184691d0<br>
<br>
This requires Vivado 2017.4<br>
<br>
Did you try f6890f22 or 118a45d63?<br>
<br>
I don't have the bandwidth to spare with any bisection to determine<br>
what the actual fault may be.&nbsp; I've found f6890f22 to yield<br>
satisfactory results.<br>
<br>
This is built in a CentOS 7 native install (with EPEL and some other<br>
extra repos enabled).<br>
<br>
Regards,<br>
<br>
Mitch<br>
<br>
On Wed, 2019-06-19 at 17:08 &#43;0000, Roberto Michio Marques Kagami wrote:=
<br>
&gt; Hello, Mitch!<br>
&gt; <br>
&gt; I've faced the same problem.<br>
&gt; I've tried the first commit after f6890f22 including Vivado version<br=
>
&gt; 2018.3 and the error is the same.<br>
&gt; Did you received any reply for this failure?<br>
&gt; I would appreciate any information.<br>
&gt; Thanks!<br>
&gt; <br>
&gt; Regards,<br>
&gt; Roberto Kagami<br>
&gt; De: USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt; em nome de M=
itch<br>
&gt; Davis via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
&gt; Enviado: segunda-feira, 17 de junho de 2019 15:44:07<br>
&gt; Para: usrp-users@lists.ettus.com<br>
&gt; Assunto: Re: [USRP-users] RFNoC multi-driven nets<br>
&gt;&nbsp; <br>
&gt; My apologies for not connecting this message to the OP, I didn't<br>
&gt; register this email account to the list until after the post. <br>
&gt; However,<br>
&gt; Peter had posted that he was having issues building the latest X310<br=
>
&gt; RFNOC image (with an RFNOC block) with an error of multiple-drivers<br=
>
&gt; on<br>
&gt; two nets (ce_clk and ce_rst):<br>
&gt; <br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2019-June/060013.html">
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/06001=
3.html</a><br>
&gt; <br>
&gt; I too encountered this same error.<br>
&gt; <br>
&gt; On a hunch, I reverted the repo to the commit just before the Vivado<b=
r>
&gt; 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0<br>
&gt; <br>
&gt; I was able to build the X310 RFNOC image with an RFNOC block using<br>
&gt; that<br>
&gt; commit without failure.<br>
&gt; <br>
&gt; I haven't attempted a bisection yet.&nbsp; Is there anyone else that h=
as<br>
&gt; observed similar build failures?<br>
&gt; <br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; Mitch Davis<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_BY5PR02MB6019B8459D7FAAC62880BBF5AAE50BY5PR02MB6019namp_--


--===============2737369562867526255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2737369562867526255==--

