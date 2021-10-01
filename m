Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC3041EB00
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 12:33:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CBE3384704
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 06:33:28 -0400 (EDT)
Received: from mail2.swro.de (mail2.swro.de [88.133.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 48D1D38427F
	for <usrp-users@lists.ettus.com>; Fri,  1 Oct 2021 06:32:38 -0400 (EDT)
IronPort-SDR: UfcEy5P7mdi9lHLDDxhhD82P1OsRQIK+utt3uiASVqi27UnZkISUwgCbSG06ePujFXMG24+rD4
 AyBlCQZnYWUWwYXgscc1r7w3hUW1yLj6GhbN70rfyRbGnr8cwZMLMskIfcfsWv7mwRy17IZirR
 fVrhJTDomqEnTmZqsp8z6RVV6yCW05ZFd6HiXlyk26IRAS2JqMO6lJ2TtpG5N61ouqkFYadY2h
 Eg7m5M1RNC6jH00FK+V4qW8LvJCnSFPxHYIAxcQgNvLsNSf7vgZZulnBFj8wxK5rrZ76W9YWMQ
 grM+4pQ/f4W8F38lrSGtB5Fh
X-IronPort-AV: E=Sophos;i="5.85,337,1624312800";
   d="jpg'145?scan'145,208,217,145";a="274341"
Received: from unknown (HELO mail.office.komro.net) ([10.2.38.40])
  by mail2.swro.de with ESMTP; 01 Oct 2021 12:32:35 +0200
Received: from EX01.komro.local (10.2.38.40) by EX01.komro.local (10.2.38.40)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Fri, 1 Oct 2021
 12:32:35 +0200
Received: from EX01.komro.local ([fe80::c096:6704:88ee:70e]) by
 EX01.komro.local ([fe80::c096:6704:88ee:70e%4]) with mapi id 15.01.2375.007;
 Fri, 1 Oct 2021 12:32:35 +0200
From: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: Help_Window Type Error after upgrading GNU Radio v3.10
Thread-Index: Ade2r5sBnL5xint9TiigGKowgsWx6A==
Date: Fri, 1 Oct 2021 10:32:35 +0000
Message-ID: <bbbff2d09aa64a85b4f821610712d80a@komro.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.35.84]
MIME-Version: 1.0
Message-ID-Hash: 427XLTCGFRUHVO4G3E6AFZYXLTDLQL3H
X-Message-ID-Hash: 427XLTCGFRUHVO4G3E6AFZYXLTDLQL3H
X-MailFrom: thangaraj@komro.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help_Window Type Error after upgrading GNU Radio v3.10
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/427XLTCGFRUHVO4G3E6AFZYXLTDLQL3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6044430238645830669=="

--===============6044430238645830669==
Content-Language: de-DE
Content-Type: multipart/related;
	boundary="_004_bbbff2d09aa64a85b4f821610712d80akomronet_";
	type="multipart/alternative"

--_004_bbbff2d09aa64a85b4f821610712d80akomronet_
Content-Type: multipart/alternative;
	boundary="_000_bbbff2d09aa64a85b4f821610712d80akomronet_"

--_000_bbbff2d09aa64a85b4f821610712d80akomronet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

My system config:
Host OS: Windows 10
Guest OS: VirtualBox Ubuntu 20.04.3 LTS
UHD version: 3.15.0.0
GNU Radio version: 3.10.0.0
SDR Device : Ettus USRP N320

I have installed the gnuradio v3.10 recently, after the installation I got =
the below error in a simple QT GUI sink block > Window Type:
[cid:image003.jpg@01D7B6C0.68A15AA0]

The error is gone if I enter some integer value in the window type menu. Bu=
t when I tried to build this flowgraph, I am getting the following catch ex=
ception error:

Console logs:

Generating: '/home/thangz/Desktop/gnuradio/rtlsdr_fm_spectrum_simple.py'
Generate Error: 'catch_exceptions'
>>> Failure
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/gnuradio/grc/gui/Application.py", li=
ne 720, in _handle_action
    generator.write()
  File "/usr/lib/python3/dist-packages/gnuradio/grc/core/generator/top_bloc=
k.py", line 83, in write
    for filename, data in self._build_python_code_from_template():
  File "/usr/lib/python3/dist-packages/gnuradio/grc/core/generator/top_bloc=
k.py", line 123, in _build_python_code_from_template
    'catch_exceptions': fg.get_option('catch_exceptions')
  File "/usr/lib/python3/dist-packages/gnuradio/grc/core/FlowGraph.py", lin=
e 182, in get_option
    return self.options_block.params[key].get_evaluated()
KeyError: 'catch_exceptions'
^CTraceback (most recent call last):
  File "/usr/bin/gnuradio-companion", line 92, in <module>
    run_main()
  File "/usr/bin/gnuradio-companion", line 85, in run_main
    exit(main())
  File "/usr/lib/python3/dist-packages/gnuradio/grc/main.py", line 85, in m=
ain
    sys.exit(app.run())
  File "/usr/lib/python3/dist-packages/gi/overrides/Gio.py", line 44, in ru=
n
    return Gio.Application.run(self, *args, **kwargs)
  File "/usr/lib/python3.8/contextlib.py", line 120, in __exit__
    next(self.gen)
  File "/usr/lib/python3/dist-packages/gi/_ossighelper.py", line 251, in re=
gister_sigint_fallback
    signal.default_int_handler(signal.SIGINT, None)
KeyboardInterrupt

Is there any fix/solution for this error?


Regard,
Thangaraj


--_000_bbbff2d09aa64a85b4f821610712d80akomronet_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hello everyone,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif">My system config:<o:p></o:p></span></u></b></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Host OS: Windows 10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Guest OS: VirtualBox Ubuntu 20.04.3 LTS<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">UHD version: 3.15.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">GNU Radio version: 3.10.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">SDR Device : Ettus USRP N320<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">I have installed the gnuradio v3.10 recently, after=
 the installation I got the below error in a simple
<b><span style=3D"background:yellow;mso-highlight:yellow">QT</span></b><spa=
n style=3D"background:yellow;mso-highlight:yellow">
<b>GUI sink block &gt; Window Type:</b></span><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE"><img width=
=3D"799" height=3D"498" style=3D"width:8.3229in;height:5.1875in" id=3D"Graf=
ik_x0020_1" src=3D"cid:image003.jpg@01D7B6C0.68A15AA0"></span><span style=
=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">The error is gone if I enter some integer value in =
the window type menu. But when I tried to build this flowgraph, I am gettin=
g the following
<b><span style=3D"background:yellow;mso-highlight:yellow">catch exception</=
span></b> error<b><u>:<o:p></o:p></u></b></span></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif"><o:p><span style=3D"text-decoration:none">&nb=
sp;</span></o:p></span></u></b></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif">Console logs:<o:p></o:p></span></u></b></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif"><o:p><span style=3D"text-decoration:none">&nb=
sp;</span></o:p></span></u></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Generating: '/home/thangz/Desktop/gnuradio/rtlsdr_f=
m_spectrum_simple.py'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Generate Error: 'catch_exceptions'<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&gt;&gt;&gt; Failure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Traceback (most recent call last):<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/gui/Application.py&quot;, line 720, in _handle_action<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; generator.write()<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/core/generator/top_block.py&quot;, line 83, in write<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; for filename, data in self._buil=
d_python_code_from_template():<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/core/generator/top_block.py&quot;, line 123, in _build_python_co=
de_from_template<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; 'catch_exceptions': fg.get_optio=
n('catch_exceptions')<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/core/FlowGraph.py&quot;, line 182, in get_option<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; return self.options_block.params=
[key].get_evaluated()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">KeyError: 'catch_exceptions'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">^CTraceback (most recent call last):<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/bin/gnuradio-companion&quot;=
, line 92, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; run_main()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/bin/gnuradio-companion&quot;=
, line 85, in run_main<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; exit(main())<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/main.py&quot;, line 85, in main<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; sys.exit(app.run())<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gi=
/overrides/Gio.py&quot;, line 44, in run<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; return Gio.Application.run(self,=
 *args, **kwargs)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3.8/contextlib.py&=
quot;, line 120, in __exit__<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; next(self.gen)<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gi=
/_ossighelper.py&quot;, line 251, in register_sigint_fallback<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; signal.default_int_handler(signa=
l.SIGINT, None)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">KeyboardInterrupt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif"><o:p><span style=3D"text-decoration:none">&nb=
sp;</span></o:p></span></u></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Is there any fix/solution for this error?<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Regard,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thangaraj<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_bbbff2d09aa64a85b4f821610712d80akomronet_--

--_004_bbbff2d09aa64a85b4f821610712d80akomronet_
Content-Type: image/jpeg; name="image003.jpg"
Content-Description: image003.jpg
Content-Disposition: inline; filename="image003.jpg"; size=53068;
	creation-date="Fri, 01 Oct 2021 10:32:34 GMT";
	modification-date="Fri, 01 Oct 2021 10:32:34 GMT"
Content-ID: <image003.jpg@01D7B6C0.68A15AA0>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIoOzs7Ozs7
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAARCAHyAx8DASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDVl03S
YYmllsLJEQZZjAmAPyqBYtCkQvHZWkijOStqOMDPp6Vb1KGS40y5hiGXkjKqM45qvPYzYt1SSWYK
JNzSvkjKYH4ZoAki03SpoUlTTbTa6hhm3Tofwp39k6Z/0DbP/vwn+FZkem3bXdu8yTKqpEFKFD5Z
Ucg55wT6dc1v0wM24tdDtNv2izsY9+dubdecde1LJZaPHFHKdPtCkjKqkW68k9O1JqcE73dpNElw
yxhwxt3VWGQMdarSWU8t6sr2buzTxSJMzgmNBjKnnr16dc0gLUdlo8jhF0+0DkEhWtlBwDgnketS
/wBk6Z/0DbP/AL8J/hVK3sZorq2lmtPN2CRc5BMZL5Dc+3pWzQBR/s7SPO8n7BZeZt3bPITOOmel
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
c2QtLUPHP5olVpAChQgZB6Ec/jUum+IbbVL1raGJwNrMkmchgpwcj+H2z1qZNEtI/KKPcCSKRpBK
JjvYt97J7g4HFTWmnQWLubd5lRs4iMhMaZOTtXtzQBYYHacDJxwM4zWGmpX8saQ+Vbx3ct69svVk
QKCcnoTwPat6qUmkWksTxnzF3Tm4DpIQyue6ntQBljU76S2tJ40ti0svktb4Yu7BirFTngADPNR3
PiNY7u4WAQSQRQyFPn+d3VgOnZcn68GtNdBs45YZIZLmBoY/LXy5iAVzk59cnr61NPpFhcSmWS2Q
s0bRHAxlW6/jx1oAyv7R1H7cNJ22v20v/rdreXt2bvu5znt196hi1+6nhN2kMKwQeUJ0OSzFzg7T
6D361q/2BY+Vs3XG/fv8/wA4+bnG373pjjFL/YOneZEyxOgiCDy1chH2/d3DvigC6YsGjy6kooAj
8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6k
ooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8u
jy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6kooAj8ujy6koo
Aj8ulCU+igBAMUtFFAGYNFAu5r77R/pUilFIiARQfVR98+5qIeHIFsms0nYRyvvmLIrFuP4RjCfg
K2KKAMy602ZE04aeYz9hckC4djuG0r94ZOeaqf2Hex3DXyTW0t3MZPOWVSIwHAHy9+Ao+tb1FAGE
PD0iW0kCTIwMVvGjMDkGM5J/HtT9I0JtNujJJ5cgQOIpfNcthmyQVPyj8K2qKACiiigAooooAKKK
KACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACmJ/rJPqP5U+mJ/rJPqP5UAPoo
ooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiii
gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKA
CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK
KKKACiiigAooooAKKKKACiiigAooooAKYn+sk+o/lRRQA+iiigAooooAKKKKACiiigAooooAKKKK
ACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA
KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD/
2Q==

--_004_bbbff2d09aa64a85b4f821610712d80akomronet_--

--===============6044430238645830669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6044430238645830669==--
