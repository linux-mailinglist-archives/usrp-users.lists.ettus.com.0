Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D49295084
	for <lists+usrp-users@lfdr.de>; Wed, 21 Oct 2020 18:13:34 +0200 (CEST)
Received: from [::1] (port=46282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kVGjz-0005xs-N3; Wed, 21 Oct 2020 12:13:31 -0400
Received: from mail-eopbgr30132.outbound.protection.outlook.com
 ([40.107.3.132]:49765 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <rpblanco@indra.es>) id 1kVGjv-0005nC-Md
 for usrp-users@lists.ettus.com; Wed, 21 Oct 2020 12:13:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MSMnCrtgDnA5Df21/s5QLo/78kynJp130EB3N7HBSiBZOxCt0G6rTCqry26N9WqpZtpuQ00vwX5tRlt9QIsljYoVQ4rD1yxtdkE6u/cHB/YRbq69J0NWFol5VF9JC5xzGMRSSH+bMddoJI25JUKUlrpN1hf1LtAVlPvOtPsmIHN8zHcrnzHv+YB2KVYXnAmlbpr/oe39quCLBm86WNyk1iEkycj8Li/YSCGE93hMtiuwB4mi+5MNBF4czsMZkV4hU3cpanVn+1PDJPZqYafFD+qvGENC/6lOKxulXOlx15aAVaHzj+5lrnunywYfwuoMTq5UszSAvDE1qOvxEqIAow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SRyFof2v3f9VR9IOTEOUCaqbmEatZ7exVz/DoWren7g=;
 b=TR07aAZbouhYtbUm455MEcBclOATssn2EF1uhBDcsop0gR1AjycwA6std+1S/P/GxKittHrcWqylM/pWvtMwjc1qJCFMav8HHpxjhojW8yS/01kDCf1kM+/1gj8OPs9czAqG7ZWnt6H4guUfaF5kA2fJ+MHQPGVWD3X2eiqYx5P+yRZnLUeW75njuDxpQSiGZlrgtQCMcPFaZDNS0OjhVrY9jw/0WrkgPMJkQcT9EzGdq3OO7qyU2iLahZwj0byj2B3u20n0bkEvD1jl+m7W1aIk7wlc7xKh4iukCDq5ZTo0IQF9k9+1Qaf/Eir4Rq8gbPOEM1OWI0+jggliZUYIcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=indra.es; dmarc=pass action=none header.from=indra.es;
 dkim=pass header.d=indra.es; arc=none
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM (2603:10a6:208:60::13)
 by AM9P193MB0871.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:1fe::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 21 Oct
 2020 16:12:45 +0000
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2113:6a9a:961a:8b7d]) by AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2113:6a9a:961a:8b7d%5]) with mapi id 15.20.3477.029; Wed, 21 Oct 2020
 16:12:45 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Building an Image using the image builder script
Thread-Index: Adanw3Q0rLquLs0CQq+QiBhZY6Rk1g==
Date: Wed, 21 Oct 2020 16:12:45 +0000
Message-ID: <AM0P193MB03086EE5B29894E691E338F3BD1C0@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=indra.es;
x-originating-ip: [213.97.118.235]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2c9f7c0-9a0a-45aa-3979-08d875dc2595
x-ms-traffictypediagnostic: AM9P193MB0871:
x-microsoft-antispam-prvs: <AM9P193MB087115A1F0091B9E3635B70ABD1C0@AM9P193MB0871.EURP193.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W8xXP+pXaRex/tkenCS/gulRtzvmvG7qwBo8FP9A25Gaa6AwVxcRflwn2NeeSpMyrI4ZR/M+ZiOJaUjqbKODFfQy2ixMatnHda7O7LR/s+TAtTkN/tDXb0Z+Y0BoOxhkI5QLbCF8pTv6C2VhZ+W85o0gteg67MWwASV+OEz/a2H+xoSihP6sEEnjcC0K0DQu5oMBmQ8uAHNIRl5mWy3MhBIYemJCVgdJcaKdel9zudTN7PgiJ49c4U2FLH9k6d3GjS4SSiXGtmTCzWTyKuKQS6Zmp6u8o24T1tFvNLXGINIivc6FoYRxvlEMNMR19/TUpwZnkFMWlwt+zqKp3yL4UCcHVLLiag8RVgXYNmJGAiLjqmUz5T9g96/kPQp/S5R94IQf5V/8b22USJg5bOrsJA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0P193MB0308.EURP193.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(136003)(396003)(346002)(39860400002)(66556008)(66476007)(66446008)(55016002)(83380400001)(9686003)(64756008)(26005)(166002)(6506007)(33656002)(478600001)(19627235002)(66946007)(966005)(186003)(76116006)(6916009)(5660300002)(86362001)(8936002)(8676002)(7696005)(71200400001)(316002)(52536014)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 7w3gizv9QhknymDy2CyAme0YX670dcfCHEXyGwYwjJ8k3K1szpP2axWWOMsGC0JLHvE+NqMhj5kRGbCFvDztCkcoQ1mYp+0EsPUWeu3uGgLpX7UNBeqM/8ViMTmU5n2r17U/RTqtSYJMKlkU4XCPn36UCsPEKiwJ/HcHJwSO9s21UVibCd/0AvmR7K/nsrfJsVatiOyrBjzUZAwwx8EHNf1nsOE2foFrWJSy43QU13eV8Y0Nj3FHOiy6VnEIpEBzEMYfYhI11g7Lz5mJ01J4Flo9rMVaoUxb3s1pn+kZMC44FEktm7da0UUc4e31cgtTWysHJ+r39OXcUT/yUfBjx7duBOC2jQxMcylZqstsReHUXpt3z85GxaNdtuUFuGM3GDOrG0NG0vyf/2iA/O/2jnNK5XNk2WDEi4B9WpkdOkDV9QoK6ri8zu+Mtmx7f69NQOBwfGbXaW/WHGSEyhU7AlZmynEzd53XPcAYQvdERuZ/DThd0cNCn669TLf+rFXN7aDwdvZCVXkBeVrUT0LmdckvuOOo614mOhzlJZIi0aRCx6E+pyc7ZBAOJijVV7j9c4ox+n/xQwBas7MnenIoZZxer9lY1leNv0fNwSBDC1Zd1quAm22DOSACTEi9+Nw/UBExUeSI6l7WkNLn/klolw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: indra.es
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f2c9f7c0-9a0a-45aa-3979-08d875dc2595
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2020 16:12:45.6067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7808e005-1489-4374-954b-d3b08f193920
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 80VmfWlcA0v0MLEQ5c14oev7Kb4gZ/Y/sktAB52WBfuzeeyeNOlPb0NEmz9FPN31n3BIngqN+khRFzCeAVDDZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P193MB0871
Subject: [USRP-users] Building an Image using the image builder script
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
From: "Puertas Blanco, Roberto via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Puertas Blanco, Roberto" <rpblanco@indra.es>
Content-Type: multipart/mixed; boundary="===============8818166677871301875=="
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

--===============8818166677871301875==
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0P193MB03086EE5B29894E691E338F3BD1C0AM0P193MB0308EURP_"

--_000_AM0P193MB03086EE5B29894E691E338F3BD1C0AM0P193MB0308EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I=B4m trying to build an image following the commands described in https://=
github.com/EttusResearch/meta-ettus.


Executing the repo command:



repo init -u git://github.com/EttusResearch/oe-manifests.git -b v3.14.1.1



I get the following errors:



Downloading Repo source from https://gerrit.googlesource.com/git-repo

Downloading manifest from git://github.com/EttusResearch/oe-manifests.git

fatal: Couldn't find remote ref refs/heads/v3.14.1.1

manifests:

fatal: Couldn't find remote ref refs/heads/v3.14.1.1



Otherwise, if I execute the repo command:



repo init -u git://github.com/EttusResearch/oe-manifests.git -b thud



and:



repo sync



The repository seems to be downloaded and synced but I get the following er=
rors after executing:



./meta-ettus/contrib/build_imgs_package.sh n3xx thud .



Scripts seems to be executed but the process stops returning:



Creating ./build/conf/auto.conf...

meta-ettus/contrib/setup_build_env.sh: l=EDnea 181: ./build/conf/auto.conf:=
 No existe el fichero o el directorio

You can now run 'bitbake <image>'

where <image> is e.g. developer-image or gnuradio-image.

Launching build (gnuradio-image)...

Loading cache: 100% |######################################################=
################################################################| Time: 0:0=
0:00

Loaded 1262 entries from dependency cache.

ERROR: Nothing PROVIDES 'gnuradio-image'



Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Build was not successful, stopping script



Regards,

Roberto






________________________________

Este correo electr=F3nico y, en su caso, cualquier fichero anexo al mismo, =
contiene informaci=F3n de car=E1cter confidencial exclusivamente dirigida a=
 su destinatario o destinatarios. Si no es vd. el destinatario indicado, qu=
eda notificado que la lectura, utilizaci=F3n, divulgaci=F3n y/o copia sin a=
utorizaci=F3n est=E1 prohibida en virtud de la legislaci=F3n vigente. En el=
 caso de haber recibido este correo electr=F3nico por error, se ruega notif=
icar inmediatamente esta circunstancia mediante reenv=EDo a la direcci=F3n =
electr=F3nica del remitente.
Evite imprimir este mensaje si no es estrictamente necesario.

This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without authorisation is forbidden in accordan=
ce with the legislation in effect. If you have received this email by mista=
ke, please immediately notify the sender of the situation by resending it t=
o their email address.
Avoid printing this message if it is not absolutely necessary.

--_000_AM0P193MB03086EE5B29894E691E338F3BD1C0AM0P193MB0308EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML con formato previo Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLconformatoprevioCar
	{mso-style-name:"HTML con formato previo Car";
	mso-style-priority:99;
	mso-style-link:"HTML con formato previo";
	font-family:"Courier New";
	mso-fareast-language:ES;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello, <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=B4m trying to build an image =
following the commands described in
<a href=3D"https://github.com/EttusResearch/meta-ettus">https://github.com/=
EttusResearch/meta-ettus</a>.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">Executing the repo command:=
<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p=
re>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E;borde=
r:none windowtext 1.0pt;padding:0cm">repo init -u git://github.com/EttusRes=
earch/oe-manifests.git -b v3.14.1.1<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E;borde=
r:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">I get the following errors:=
<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></p=
re>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">Downloading Repo source fro=
m https://gerrit.googlesource.com/git-repo<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">Downloading manifest from g=
it://github.com/EttusResearch/oe-manifests.git<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">fatal: Couldn't find remote=
 ref refs/heads/v3.14.1.1<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">manifests:<o:p></o:p></span=
></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">fatal: Couldn't find remote=
 ref refs/heads/v3.14.1.1<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E;borde=
r:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calib=
ri&quot;,sans-serif;mso-fareast-language:EN-US">Otherwise, if I execute the=
 repo command:<o:p></o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E;borde=
r:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">repo init -u git://github.com/Et=
tusResearch/oe-manifests.git -b thud<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">and:<o:p></o:p></span></code></p=
re>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">repo sync<o:p></o:p></span></cod=
e></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;mso-fareast-language:EN-US">The repository seems to be downloaded and =
synced but I get the following errors after executing:<o:p></o:p></span></p=
re>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">./meta-ettus/contrib/build_imgs_=
package.sh n3xx thud .<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;mso-fareast-language:EN-US">Scripts seems to be executed but the proce=
ss stops returning:<o:p></o:p></span></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Creating ./build/conf/auto.conf.=
..<o:p></o:p></span></code></pre>
<pre><code><span style=3D"font-family:Consolas;color:#24292E;border:none wi=
ndowtext 1.0pt;padding:0cm">meta-ettus/contrib/setup_build_env.sh: l=EDnea =
181: ./build/conf/auto.conf: No existe el fichero o el directorio<o:p></o:p=
></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">You can now run 'bitbake &lt;ima=
ge&gt;'<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">where &lt;image&gt; is e.g. deve=
loper-image or gnuradio-image.<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Launching build (gnuradio-image)=
...<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Loading cache: 100% |###########=
###########################################################################=
################################| Time: 0:00:00<o:p></o:p></span></code></p=
re>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Loaded 1262 entries from depende=
ncy cache.<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:red;bor=
der:none windowtext 1.0pt;padding:0cm">ERROR: Nothing PROVIDES 'gnuradio-im=
age'<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Summary: There was 1 ERROR messa=
ge shown, returning a non-zero exit code.<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Build was not successful, stoppi=
ng script<o:p></o:p></span></code></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm"><o:p>&nbsp;</o:p></span></code><=
/pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Regards, <o:p></o:p></span></cod=
e></pre>
<pre><code><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E=
;border:none windowtext 1.0pt;padding:0cm">Roberto<o:p></o:p></span></code>=
</pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E"><o:p=
>&nbsp;</o:p></span></pre>
<pre><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#24292E"><o:p=
>&nbsp;</o:p></span></pre>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
Este correo electr=F3nico y, en su caso, cualquier fichero anexo al mismo, =
contiene informaci=F3n de car=E1cter confidencial exclusivamente dirigida a=
 su destinatario o destinatarios. Si no es vd. el destinatario indicado, qu=
eda notificado que la lectura, utilizaci=F3n,
 divulgaci=F3n y/o copia sin autorizaci=F3n est=E1 prohibida en virtud de l=
a legislaci=F3n vigente. En el caso de haber recibido este correo electr=F3=
nico por error, se ruega notificar inmediatamente esta circunstancia median=
te reenv=EDo a la direcci=F3n electr=F3nica del
 remitente.<br>
Evite imprimir este mensaje si no es estrictamente necesario.<br>
<br>
This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without
 authorisation is forbidden in accordance with the legislation in effect. I=
f you have received this email by mistake, please immediately notify the se=
nder of the situation by resending it to their email address.<br>
Avoid printing this message if it is not absolutely necessary.<br>
</font>
</body>
</html>

--_000_AM0P193MB03086EE5B29894E691E338F3BD1C0AM0P193MB0308EURP_--


--===============8818166677871301875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8818166677871301875==--

