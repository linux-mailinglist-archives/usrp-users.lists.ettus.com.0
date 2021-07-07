Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F633BE8E4
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 15:37:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 945BC383D29
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 09:37:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cttc.es header.i=@cttc.es header.b="UgbwvdXS";
	dkim-atps=neutral
Received: from mx02.puc.rediris.es (outbound3sev.lav.puc.rediris.es [130.206.19.174])
	by mm2.emwd.com (Postfix) with ESMTPS id F3F6A383CCB
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 09:36:32 -0400 (EDT)
Received: from leo.cttc.es (leo.cttc.es [84.88.62.208])
	by mx02.puc.rediris.es  with ESMTP id 167DaT6j018974-167DaT6l018974
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <usrp-users@lists.ettus.com>; Wed, 7 Jul 2021 15:36:30 +0200
Received: from localhost (localhost [127.0.0.1])
To: usrp-users@lists.ettus.com
From: Armin Ghani <aghani@cttc.es>
Message-ID: <2547566f-fdc2-8dfc-6ef0-198de1a1f578@cttc.es>
Date: Wed, 7 Jul 2021 15:36:28 +0200
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------FEC5753F547FD20DC27427FA"
Content-Language: en-US
X-FE-Attachment-Name: iphiemmdknpoheml.jpeg, octoclock_test.pdf
X-FE-Policy-ID: 2:6:0:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=cttc.es; s=DKIM; c=relaxed/relaxed;
 h=to:from:subject:message-id:date:mime-version:content-type;
 bh=uZ/9F0ExyibjjiK542ZE/3IdTYP0HqDZAirNHlCwOk8=;
 b=UgbwvdXS1ukrQXdnMN5Uu+M7Gfd7JlLfv6G/yygQ4Q+Mbugm/LRlSo919vbgi0eWpmqMl45lacLE
	HmQraV7BfBLminkV8trLO59Xy7pcTU/iFQu1oR5DIRUTWCwqiGB5NaUjNNl8wMGQQQVhoEjde5WI
	WSt5acFesCl1Sj8eoVWpTKDi/xf6K9ZeFA1guPfwC2mlb3RwQGplWwg5BRQwmADO6M0stvBEd1Wx
	nTWbq6q/HjUPasoMvh6KfrlFZxTqGW2p/EnX2H14AV/+xotHES/OTAhnNYQOHxI6KXeEwQAbdcOD
	BNY+yI7W11aP7QCRBc7XGwyzsw6kThTxf0hrog==
Message-ID-Hash: PSH6JU6XDKE43EQJX556Q3XYPVAPRHES
X-Message-ID-Hash: PSH6JU6XDKE43EQJX556Q3XYPVAPRHES
X-MailFrom: prvs=1818a61fe1=aghani@cttc.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RuntimeError: Reference Clock PLL failed to lock to external source, when trying to synch 3 USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PSH6JU6XDKE43EQJX556Q3XYPVAPRHES/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.
--------------FEC5753F547FD20DC27427FA
Content-Type: multipart/alternative;
 boundary="------------2808D6801750B5F3F9CD19EF"


--------------2808D6801750B5F3F9CD19EF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear USRP and GNURadio Community

I have 3 USRP X310 with two SBX-120 daughterboards installed. each of=20
USRPs has two dedicated 10GB Interface with host server.

I'm trying to build a synchronouse system which has 2 receiver and one=20
transmitter and Octoclock CDA-2990 is used to synch both clock and time=20
of all USRPs.

Since the octoclock doesnt provide reference source, I used one of the=20
USRPs clock source external output as octoclock input rerefence and=20
three distributed output references (both 10MHz and PPS) are fed to the=20
three USRPs (including the USRP which provide reference source to the=20
octoclock)

Attached you can find the flowgraph in GNURadio to run a very simple=20
system in order to evaluate the results. You can find more details of=20
how UHD source and sink blocks are configured. In summary, for the UHD=20
sink block, clock and time references are set to internal and default=20
respectively. And UHD source block are configured as multi-usrp config=20
with clock and time sources for both motherboards to the external.

GNURadio v3.8.2.0 and UHD v3.15.0.0 are used.

When I run the flowgraph, after UHD initialization for all USRPs, the=20
running system ends up with the folowing output in console:

Executing: /usr/bin/python3 -u=20
/home/.../Documents/gnuradio-tests/octoclock_test.py

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;=20
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a send=20
frame size of at least 4000 for best
performance, but your configuration will only allow 1472.This may=20
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the send_frame_size argument.
[WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a=20
receive frame size of at least 8000 for best
performance, but your configuration will only allow 1472.This may=20
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the recv_frame_size argument.
[INFO] [X300] Maximum frame size: 1472 bytes.
[WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a send=20
frame size of at least 4000 for best
performance, but your configuration will only allow 1472.This may=20
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the send_frame_size argument.
[WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a=20
receive frame size of at least 8000 for best
performance, but your configuration will only allow 1472.This may=20
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the recv_frame_size argument.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000000=
00)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)
[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000000=
00)
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
[INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
[INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Traceback (most recent call last):
 =C2=A0 File "/home/.../Documents/gnuradio-tests/octoclock_test.py", line=
=20
334, in <module>
 =C2=A0=C2=A0=C2=A0 main()
 =C2=A0 File "/home/.../Documents/gnuradio-tests/octoclock_test.py", line=
=20
310, in main
 =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls()
 =C2=A0 File "/home/.../Documents/gnuradio-tests/octoclock_test.py", line=
 91,=20
in __init__
 =C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_clock_source('external', 0=
)
 =C2=A0 File "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.=
py",=20
line 3793, in set_clock_source
 =C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_sptr_set_clock_source(se=
lf, source,=20
mboard)

RuntimeError: RuntimeError: Reference Clock PLL failed to lock to=20
external source.


--=20

Armin Ghani

Research Engineer | Communication Systems Division (CSD)

aghani@cttc.es <mailto:aghani@cttc.es>| +34 93 645 29 08 (2143)

Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)

Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT

08860 - Castelldefels (Barcelona, Spain)

www.cttc.cat


--------------2808D6801750B5F3F9CD19EF
Content-Type: multipart/related;
 boundary="------------C22D823DFC97AEA06CFCD00B"


--------------C22D823DFC97AEA06CFCD00B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Dear USRP and GNURadio Community</p>
    <p>I have 3 USRP X310 with two SBX-120 daughterboards installed.
      each of USRPs has two dedicated 10GB Interface with host server.</p=
>
    <p>I'm trying to build a synchronouse system which has 2 receiver
      and one transmitter and Octoclock CDA-2990 is used to synch both
      clock and time of all USRPs.</p>
    <p>Since the octoclock doesnt provide reference source, I used one
      of the USRPs clock source external output as octoclock input
      rerefence and three distributed output references (both 10MHz and
      PPS) are fed to the three USRPs (including the USRP which provide
      reference source to the octoclock)</p>
    <p>Attached you can find the flowgraph in GNURadio to run a very
      simple system in order to evaluate the results. You can find more
      details of how UHD source and sink blocks are configured. In
      summary, for the UHD sink block, clock and time references are set
      to internal and default respectively. And UHD source block are
      configured as multi-usrp config with clock and time sources for
      both motherboards to the external.<br>
    </p>
    <p>GNURadio v3.8.2.0 and UHD v3.15.0.0 are used.</p>
    <p>When I run the flowgraph, after UHD initialization for all USRPs,
      the running system ends up with the folowing output in console:</p>
    Executing: /usr/bin/python3 -u
    /home/.../Documents/gnuradio-tests/octoclock_test.py<br>
    <br>
    [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
    UHD_3.15.0.HEAD-0-gaea0e2de<br>
    [INFO] [X300] X300 initialization sequence...<br>
    [INFO] [X300] Maximum frame size: 1472 bytes.<br>
    [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a
    send frame size of at least 4000 for best<br>
    performance, but your configuration will only allow 1472.This may
    negatively impact your maximum achievable sample rate.<br>
    Check the MTU on the interface and/or the send_frame_size argument.<b=
r>
    [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a
    receive frame size of at least 8000 for best<br>
    performance, but your configuration will only allow 1472.This may
    negatively impact your maximum achievable sample rate.<br>
    Check the MTU on the interface and/or the recv_frame_size argument.<b=
r>
    [INFO] [X300] Maximum frame size: 1472 bytes.<br>
    [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a
    send frame size of at least 4000 for best<br>
    performance, but your configuration will only allow 1472.This may
    negatively impact your maximum achievable sample rate.<br>
    Check the MTU on the interface and/or the send_frame_size argument.<b=
r>
    [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a
    receive frame size of at least 8000 for best<br>
    performance, but your configuration will only allow 1472.This may
    negatively impact your maximum achievable sample rate.<br>
    Check the MTU on the interface and/or the recv_frame_size argument.<b=
r>
    [INFO] [X300] Radio 1x clock: 200 MHz<br>
    [INFO] [X300] Radio 1x clock: 200 MHz<br>
    [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
    0xF1F0D00000000000)<br>
    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)<br>
    [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:
    0xF1F0D00000000000)<br>
    [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)<br>
    [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)<br>
    [INFO] [0/Radio_0] Initializing block control (NOC ID:
    0x12AD100000000001)<br>
    [INFO] [1/Radio_0] Initializing block control (NOC ID:
    0x12AD100000000001)<br>
    [INFO] [0/Radio_1] Initializing block control (NOC ID:
    0x12AD100000000001)<br>
    [INFO] [1/Radio_1] Initializing block control (NOC ID:
    0x12AD100000000001)<br>
    [INFO] [0/DDC_0] Initializing block control (NOC ID:
    0xDDC0000000000000)<br>
    [INFO] [1/DDC_0] Initializing block control (NOC ID:
    0xDDC0000000000000)<br>
    [INFO] [0/DDC_1] Initializing block control (NOC ID:
    0xDDC0000000000000)<br>
    [INFO] [1/DDC_1] Initializing block control (NOC ID:
    0xDDC0000000000000)<br>
    [INFO] [0/DUC_0] Initializing block control (NOC ID:
    0xD0C0000000000000)<br>
    [INFO] [1/DUC_0] Initializing block control (NOC ID:
    0xD0C0000000000000)<br>
    [INFO] [0/DUC_1] Initializing block control (NOC ID:
    0xD0C0000000000000)<br>
    [INFO] [1/DUC_1] Initializing block control (NOC ID:
    0xD0C0000000000000)<br>
    Traceback (most recent call last):<br>
    =C2=A0 File "/home/.../Documents/gnuradio-tests/octoclock_test.py", l=
ine
    334, in &lt;module&gt;<br>
    =C2=A0=C2=A0=C2=A0 main()<br>
    =C2=A0 File "/home/.../Documents/gnuradio-tests/octoclock_test.py", l=
ine
    310, in main<br>
    =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls()<br>
    =C2=A0 File "/home/.../Documents/gnuradio-tests/octoclock_test.py", l=
ine
    91, in __init__<br>
    =C2=A0=C2=A0=C2=A0 self.uhd_usrp_source_0.set_clock_source('external'=
, 0)<br>
    =C2=A0 File
    "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py",
    line 3793, in set_clock_source<br>
    =C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_sptr_set_clock_source=
(self, source,
    mboard)<br>
    <p> RuntimeError: RuntimeError: Reference Clock PLL failed to lock
      to external source.</p>
    <p><br>
    </p>
    <div class=3D"moz-signature">-- <br>
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <title></title>
      <p> </p>
      <p>
        <meta name=3D"ProgId" content=3D"Word.Document">
        <meta name=3D"Generator" content=3D"Microsoft Word 15">
        <meta name=3D"Originator" content=3D"Microsoft Word 15">
        <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:3 0 0 0 1 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}@font-face
	{font-family:"Arial Black";
	panose-1:2 11 10 4 2 1 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610612049 1073772795 0 0 159 0;}@font-face
	{font-family:Aharoni;
	mso-font-charset:177;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.MsoNo=
rmal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	mso-themecolor:hyperlink;
	text-decoration:underline;
	text-underline:single;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}div.WordSection1
	{page:WordSection1;}</style> </p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norma=
l"><img
          src=3D"cid:part1.5673FE45.B380BA96@cttc.es" width=3D"151"
          hspace=3D"12" height=3D"100" align=3D"left"><span
          style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
          Ghani</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norma=
l"><span
          style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Research
          Engineer | Communication Systems Division (CSD)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norma=
l"><a
          href=3D"mailto:aghani@cttc.es"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif; mso-bidi-font-family:Aharoni">aghani@=
cttc.es</span></a><span
          style=3D"font-size: 9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> | +34 93
          645 29 08 (2143)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norma=
l"><span
          style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Centre
          Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)</span>=
</p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norma=
l"><span
          style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av. Carl
          Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norma=
l"><span
          style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">08860 -
          Castelldefels (Barcelona, Spain)</span></p>
      <p class=3D"MsoNormal" style=3D"margin-bottom:0in;line-height:norma=
l"><a><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;
            mso-bidi-font-family:Aharoni;mso-ansi-language:ES" lang=3D"ES=
">www.cttc.cat</span></a><span
          style=3D"font-size:9.0pt;font-family:&quot;Arial
          Black&quot;,sans-serif;mso-bidi-font-family:
          Aharoni;mso-ansi-language:ES" lang=3D"ES"></span></p>
    </div>
  </body>
</html>

--------------C22D823DFC97AEA06CFCD00B
Content-Type: image/jpeg;
 name="iphiemmdknpoheml.jpeg"
Content-Transfer-Encoding: base64
Content-ID: <part1.5673FE45.B380BA96@cttc.es>
Content-Disposition: inline;
 filename="iphiemmdknpoheml.jpeg"

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAm
JSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMp
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAAR
CAC7ARoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKSlqjqeq2mkW5ub2ZY0HC
jqzH0A6k+woAu1l6r4i0vRsi+vY45O0YOW/If1rJb+3vEg+Uvo1gw4PWeQZ/8d6fXmrum+Dd
H0071tRNPnJlnO9ifXJp2S3AxpviPFMrDSNJ1C9wPvrEdufQ4BqJPGniR0DL4WmwemSR/Su5
VFQYRQo9AMU6nzLsB57N4/16BiJPDNwpHX5HI/MDFQW/xa/ekXemEL6Rvzn8RXpNU7zSrG/j
Md1aQyqf7yCnzR6oWpg6f8Q9CviFkna2kPaVcD866S3uoLyIS200csZ6NGwYH8RXHat8MdMu
wW0+R7OXsPvJ+RrirvQfEPg+4+0R+dHEn/Le3JKn6gf1quWMvhYXZ7YKK8z0L4osu2PW4ty9
p4B0+q/4V6DYalaanbi4sp454T/Eh6fUdqiUHHcZbpaQdKWpAKKKKACiiigAooooAKKKKACi
iigAooooAKKKKACiiigAooooAKKKKACiiqeoX0en2j3ExO1cAKvLMx6KB6mgCLVtUj02BcIZ
7mU7YIE+9K3p9PU9qpWGhs12NT1kx3F+PuD/AJZwD0Uf1qLz4dEtZtb16RUuXGMdTGp6RoO5
6Zx1NYr2uv8AjZ907yaTox+7Gv8ArZh7+gppAauq+P8ARNJdozc/aZ1OCkI3YPoT0rnZfiy2
9vI0olM/LvfBx711OmeCdD0tFENijsMfPJ8xPvWyLG1AA+zQ8f8ATMVV4roLU86/4W3KAN+l
oOeR5la9h8T9IunEd4k1n6u4yoP1FdJd6Dpl9xc2Fu5xjJQAiuQ1v4XW0wMujzG3lHPlSHKH
6HqKpOm9LWDU7axv7XUbcTWc8c8R6MjZq1XgzR6z4P1LB860nzkEHKSf0Ir0Pwt8Q7fVCtrq
ey2ujwrfwOfr2PtSlSa1WqBM7YU11VwUYAqRgg9DSg5xTqzGcN4m+HFnqCtPpIW1uhzs/gf/
AArzyCfVvCWqkAyWlwn30Jyrj37Ee9e9kc1k6/4dsvENkbe8TDfwSrwyH2NaQqW0YmjG8M+P
LPXiltcEWl9jhGPyyf7p/pXXDpXg+veHr7w5feVdjKE5hnTgNj09DXXeD/iCwMWn65JlThY7
k9vQN/jVTp6c0QTPSxS01WDgMpBB5BHenViMKKKKACiiigAooooAKKKKACiiigAooooAKKKK
ACiiigAoopKADjHtXP3NxBLcSapeSBNO0/dsznBcdXPrjoPetDVp3SBLeD/j4uW8tMfwju34
CsFrePWdWWwRgNG0nBmB6TTDkKT6L1PvTSANN0yXX71dd11CsKfNZWkgwIl/vsP7xFU9c+J1
lYSNBpkX2yVeC+dqD6dzVTVb/UPHWpyaVorGHS4GxPc9n9vcegrpNG8F6Ro0KiO2WaUcmWYB
jn+gq9F8QHn0/wARfEUzmWJkhQ8bVhyo/E1NY/FDV7Zwt3FBcgHnja36V6oLK2CbPs8Oz0CD
FYWueB9J1oFhH9mn7SwgDH1HQ1SnB7oWoeHvHGm6/iJWNvd/88ZeM/7p6Gul614Lr3h6+8N3
/lXXK/einTgN9PQ13Hgbxy928ematIPNIxDMeN/+yfelKnpzR2EmdpqukWesWjW17CskZ6E9
VPqDXjXifwtdeGr3bITJaOf3Uw/kfQ17kOlVNS0621Wyls7tA0UgwR6H1HvShNx9BtHn3gbx
2Ymi0vV5sqcJBO3Y9lY+noa9MU5FeC+IdBn8PapJaXALRHJhkI4kX1+vrXefDzxeb2NdJv5C
Z0X9w5/jX0+oq6kLrmiJM7+lpq/dp1YFFDV9KtdZsntL2IPG/wCan1B9a8W8TeGrjw5qJglG
+3ckxSkcMPQ+9e71na7otrr2myWd4vytyrDqh7EVpCbixNHnfgrxzJYyR6bqche2YhYpW6x+
x9q9UQhgCDkHkGvANa0e50LUXsrtfnHKsOki+ors/AHjQxGPSdTc7OlvMx6f7J/pWlSndc0R
Jnp1FNHSlrnKFooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKguphbWssxP3FLYNAGFq
uo/Zvtl8o3SQKLa2X+9K3p+P8qxNZjntbKx8K6dIft1/l7ufnIXq7E+9aiwh9SsludvlWETX
lwWHHmN0Ofbk1j2GpLp2mal4v1BM3F4/l2iHkiPOFA+vWrSEy5q/iDT/AAJpcOl6bCkt0FwF
BwFP95/f2rz+813XdYkM8k94w6/uQyqB7YrqvCXhI61JJrviHDrKxdIm4Df7Te3oK7aDWdEj
ZLaC9slP3VRXX8qtNR6XYvU8csfE2s6XPuhvpwwOWSUlgfqDXpvhDxrD4hT7PchYL5Rnbn5Z
B6r/AIVZ8TeELLxDbblRIbscxzIOp9D6ivH5YrzQtVZG3QXVs+cj1/wq/dqLzDY901XSrXWb
CS0vIw8bDg91PqK8P1jSrjQdXktZgVkjO5HHdexBr2bwxrieItDhveFk+7Ko/hcdaxviLoK6
nopvoYwbq0Gc92TuKzpycXysGifwF4lbXNK8m6cG9t/lftvXs1dUBketeDeHNbk0LWre8Vj5
e7bMP7yHr+Ve8RuskaujBlYAgjoRSqQsxpmF4x8PDxDorxRgC6i+eFj6+n414pFLPZXazIXi
uIXyD0KsK+iT615N8SdB+waqNRgX9zd/fwPuuP8AGqoz+yxSR6B4W19PEGjRXIIEo+WZB/C1
bVeKeBvEP9g66qytizuiI5R/dP8AC1e1L04ORUVI8rGmOpCM0tFQM5zxj4Zj8R6YQoC3cILQ
uOuf7p9jXiskUkEzJIpSWNsMvQhhX0WeteafEvwz5b/23argNhblR0Ho39K3oztoyWrmt4A8
XNrFqbC9fN7APlb/AJ6J6/Wu2Br53sryfT76K7tWKzRtlD0B9jXuXhzXYfEOkRXkPyt92WPP
KOOopVafK7jTNeikHTrmlrEYUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVm6qPP8As9pjInlG
4f7K/MT+YH51pVjapceTczzK3NrZySL/ALx//UKAOb1m4aTQ7+SF9s2sXgtYmUk5TO3I/AGq
2v2Sap4m0bwxbkC1tIxJLtOcADv+H86urbB/EHhrTsnFrA15Io/vY4/Mk1R0C7WObxT4lcP8
haOPAzwP/ritI6LQDO+IHiZ5Ls6NYSeVaW4CSeWcbzj7v0FcQYWiALRMmTlSykZ+ldz8N9AX
VbufV79RKIX2qrDIaQ8k/hXoGu6Faa9pj2lzGOR+7cDlD2IrRTUPdJtc4v4ceKZZJv7HvpSy
kf6MzdR6qT/KpfilooeC31eIYaM+VNjup+7+tcDDLNoutJIx2yWs/wAxx6HB/MZr2vW7ZdX8
MXUW3Imt9yg+uMilP3ZKSBao89+F+qm21uWwZ/3VyhYD/aH/ANavVpI1ljZHGUYFSPavn/R7
ttO1izuAf9TMu788GvoJSGUMOhGaVZWlcInz/rWnnTNavLJxjyJSBnup5H6EV6r8OtUN/wCG
Y4ZHDy2jeUR/s/w/p/KuW+KtgIdatrxQwFxD5bN2yp4/Qn8qZ8Lr8w63cWbYCzx7gM4+Zf8A
9dXL3qdxdT1isbxXpA1rw9dWqrmULvi/3h0/wrZpDXMnbUs+ciCPvZVgcEe//wCuvbPBGsf2
x4bgZj+9h/dSDPOR0/SvMfG2lrpXim6RF/dSnzkH+91Fanwz1f7Frz2MrkR3iYXPTeOn6cV1
VFzxuQtz1wUtIOlLXKWJUN1axXdrLbzoHilUqynuDU1BoA8D8RaLJoGsz2UmfLU7om7snY/0
q/4K8Rf8I/rKeYxFrcEJKCeF9GruviRoH9p6N9vgTN1Zjdx/Encf1ryPBcD35rsg1ONmQ9D6
NRgyhlOVPII6GnVxPw38QnUNLbTrh83FoMIxPLp2/LpXbCuRx5XYsWiiikAUUUUAFFFFABRR
RQAUUUUAFFFFABWNq2kT39tfRJIgNwI1Xj7oBBOfyNbNJgUAYY0e4XxFd6gHjCNZi3h45U5z
k1hxeDNQj8EXGkpcxrdXE/mu3O0gtkj8a7jFGKfMwMTwnor6BoEVnMUMwZmdl6Ek1t4FGKMU
gPONd+G17qmr3V3DdQqk0hYKwPGa7uxtZIdLhtp2DyJEEZh0JxirlGKpyb3A8sn+FV+7yNHe
26qWJUEHivTbKJ4LGCKQ7nSNVY+pAwamxRihzctwOb8Z+GJPE9lbwwzLC8Mm7cwyMEYrB0X4
d32ja1aX/wBugkED5ZQhGRjB/nXoWKKFNpWAQdKXFFLUgcj4y8GP4mubeaC4igeJSrFlJ3Cs
Gy+GGoWV5b3MepQh4ZA4IU54r0vFFWqkkrAIvI7fhTqQcUtQAUUUUAMkQOhVlDKwwQfSvNbr
4UTveTNbahCkDOWRGQ5UHtXplFVGTjsB59ofw91LQ9Xgvo9SgOxvnUIfmXuK9AXv60uKWk5X
3AKKKKQBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRSGkyaAHUlHOaQnFIBaWkHSlpgJS03PN
LmgBaKTPsaM+xoAWikz7GjPsaAFopKSkA6ikB+tGfY0wFopM+xoz7GgApaTPsaM+xoAWikzz
QDmgBaKKaT6cmgBaKQHNBzQAtLTQaWgAooNIeKAFopM0Z96VwFopAfejd7UwHU0mlrn/ABh4
g/4R/Q3lj5uZcxwj3I6/hTSu7CZV8V+OLbw8DbwKtxfEZ8vdwnux/pXDrqPi/wAXSE2zTiHP
SL91GB9ak8EeFW8RXkuoapuktUfnceZn9z6CvWoYY4IliiQIiDAVeAK0bUNBas8j/wCEA8VD
97vPmen2s5pjan4u8ISr9refyieBL+8jP49q9i2imT28VxA8M0ayRuMMrDIIpe07oZzPhTxz
beIj9nmUW96BnYTw49VNdUOleO+NfDjeFtVhvdNLRW8jboivWJx2+lel+GNZGu6BbXnSRhtk
How4NE46cyBHD+OfFOsaX4pmtbG9MMKxIQoUdSOa5/8A4TnxF/0Em/75FWPiTj/hNJ+nMMf8
q5fK+o/Ot6cE4ktm/wD8Jz4i/wCgk3/fIo/4TnxF/wBBJv8AvkVgZB4U8+lLV8kewrs3v+E5
8Rf9BJv++RR/wnPiL/oJN/3yKwR34pMj1H50csew7nQf8Jz4i4/4mR/75FeleFtSu7/wYl9d
TGS5KSMXx3GcV4plSfvDivYvBP8AyTyP08qTn86yqxikrDTPPI/HfiJo1b+0WGRn7opf+E58
Rf8AQSb/AL5Fc7ER5S8joO/tTsj1HsM1tyRFdnQf8Jz4i/6CTf8AfIo/4TnxF/0Em/75FYHB
HFFHJHsK7Og/4TnxF/0Em/75FH/Cc+Iv+gk3/fIrnzgDP6UEjPUfnRyRHc6rSvGmvT6zYwzX
5eOSdFYbRyCcGvYydv418/6GR/wkGmjPW5j/APQhXuur6jFpOmT3s/3IUJx6nsK560VdJDTK
niDxNZeHLXzbx8yN/q4k5Zj/AIV5nq3xF1nUGYWzrZRZOPK+/j/ern9U1O51jUJb27ctLIen
ZR2Aqoen0rSnSS3FcmlvbqdzJLdXDuerGVsn9aRLq4RwyXNwrKcgiVuP1qMAsQEVmbHRRk0p
Vk/1iOhPTcpH860shHRaZ4913TpAWujeR90uPmJ+h6ivSfDXjOx8QqIwwgux1gc8keqnv1rx
LqORkGnxSvb3Ec8TlJI2DIw/hNRKkpDTPosHNUtZnkttLmmhbbIgyDVHwlro8QaHHdMNsyny
5V9GH+PWrXiHjRLn6D+dcFa6hI1p6zRzdvqer3WfId5COuAKle516MZkEgXudtTeEv8Aj4uR
/sitqGW7N5OtxGi2y/cfua8ujSlUgm5M761WMJuKijlP7e1EEg3ByPVa6u3nkktonZzuZAT+
Vchq0sUupStDgoSMEeveuttP+POD/rmv8qihKalKLexWJjHljJK1zTryL4j30moeKUsIwxEA
CKB/eb/9Yr12vFvKN/8AE5o2JOdRI69lJI/lXv0t2zy2etaPp8el6TbWcSgLFGAcever+KMU
tZDCkpaKAOc8c6a+p+FbqGGFpZlw8aquWyD2/DNYvwxttQsba+tr6yuLZDIsiGaMrnIwQM/S
u8wM5owKfN7tgM298OaVqNybi8sYZpiAC7DkgdKg/wCEO0H/AKBdv+VbVFF2Fjzj4i6Dpml6
HFLY2cUEhmClkHOK82r1n4qf8i7B/wBdxXk1ddFtx1IluT2CLJqVqjjcrzIrA9wWGRXt/wDw
h2g/9Au3/I14jp/GqWZ/6eI//QhX0OOlZ1200OJjf8IfoIz/AMSu359q0bXTrWysxa20Kx24
BHlr0561ZorC7ZRif8IdoAAH9l2/HsaD4O0Ef8wu3/I1t0ho5mB4b40s7ew8UXNvaRLFCuMI
vQcVhV0nxA/5HG7+i/yrm67ofCjN7nafDXSrLVb6/W/to51jjUqHHQ5r0EeDtB/6Bdv+VcT8
Jf8AkIal/wBcl/ma9QHQVy1W+ZlpaGRH4T0SCVJYtNgV0YMrAcgjoa5H4r6kUis9PRz85Msg
HoOma9FNePfE2US+LSo/gt0Qj3yT/Wil70kDORI5p8UUk8yQwrukkYIg9zwKZW/4HtftXjDT
17RuZT+A/wDr11ydoshHqvhvw1aeH7COKONTcbR5kpHJbvzV3VdGstZs3t72FZFYYDEfMv0N
XQME0uK8+7vc0PnzWNPbSNWubGVstC5UE9x2P5VTDDnkV71eeGNI1C5ae7sIppWHLt1NQ/8A
CGaB/wBAu3/KuhV1Ylo4j4TXuzUb6zLnEkayKueMg4J/Iiu/8Qf8gS447D+dLY+HdK0u5+0W
NlFBNtK7kHOD2/SrGo2hvbGSANtLDrXNiH7SL5TSm+WSbOc8KyIk85ZgpKjqa0LHUnk1W7t5
nUxLypP8qoDwjN3uVHTPFU9S0V9MiWV51fLYAAwa8dOtRpq8dEelKNGtUfK9WRa3EkWpSiLG
xiGGK6i0z9jg/wCua/yriCcnPU13tvFttol9EA/SssNJSlKVtysWuSMYvoX68YspRb/FIyOe
BqUgP45H9a9nrxXxfA+keOpplRgvmpcof7wyCf1Br6Ol1R5DPaqWobe4S5t45o2BWRQyke9T
VkMKKKKAEz1pM98jFZniLVf7E0O5vuC0a/IG6FjwK5/wP4r1HxLdXK3kcKRQIDmNepJ6U1Ft
XFc7QUtIOlLSGcR8VP8AkXYP+u4ryavWfip/yLsH/XcV5NXXR+AiW5Y0/wD5Cdn/ANfEf/oQ
r6HHQV88af8A8hOz/wCviP8A9CFfQ46Cs8RuhxFooorAoKQ0tIaAPFPiB/yON39F/lXN10nx
A/5HG7+i/wAq5uu+n8KM3ud/8Jf+QhqX/XJf5mvUB0FeX/CX/kIal/1yX+Zr1AdBXJV+JlrY
DxivGviRGU8YzE/xxIw+mMf0r2U15Z8VrIx6rZ3nO2SIxn0G05A/U0UXaQM4Oum+Hkwh8Z2u
f40dB9SP/rVzR61Y069fTdStryPO+CQPx6Dr+ma65q8SEfQopc4qvY3sOo2cV1bOHilUMpBq
WWRIomklYKiAszHoBXBY0DzEBwWUH3NL5qf31/OvCfE+r/2z4huruN28otsj5Iyo71k73H8b
/wDfRreNBtE8x9GCRGOFdSfrTsV5L8LLWWXxJcT7maOG3KtlieWIx/6Ca9aHFZTjyuw07la/
ulsbVp2VmC9lHNcRqOpy6nNvk4UfdVTxXfSIHQqwyCMEetc8/hON7wuJdsHUIByDXnY2lVqJ
KnsduEq0qbvMxdI09769QY/dqcsa7oKgAHpUdraRWcQjhQKo9KmwPQVphsKqMbdSMTiHWlfo
LXB/E7Q3vNPi1GAEtbAiQD+4e/4V3lNeNZEZHUMrDBBGQRXZGXK7nMcF8N/E8c9kukXcgWeH
iAseHX0HuPSu+3Z6V5X4q+H9zYXBvtDRmgB3eUh+eI+o9qj034manpiiDVbZbkKcFmPlyD+h
rRwUtYiues0mTmuA/wCFt2OP+QZd9P76f41h6n8Q9X1vNpptuLdZPl/d5aRvx7VKpyC5Z+Jn
iNLy5j0q1fdFbtvnI6F+w/AZrqPh9ob6R4fDzgie7PmuCOVGMAflWB4P8ATrdpqOtqBg7o4G
5Jb1avSQOB2qpNJcqBCjpS0lLWQziPip/wAi7B/13FeTdq9Y+Kn/ACLsOAT+/HQV5Rg/3W/7
5NddF+6Q0T6f/wAhOz/6+I//AEIV9DjoK+eNPVv7Ts/lb/j4j/hP94V9DKQQCORUYjdFIdRR
RXOMKQ0UH6UAeKfED/kcbv6L/KubrpPH/PjC7wG7fwn0rnMH+63/AHya7qb91EPc774S/wDI
Q1L/AK5L/M16gOgry/4Sg/2jqPBH7peox3r1AVy1fjZS2A1geM9EOueH5YYl3XEf7yL/AHh2
/LNb5oIzUJ2dxnziysjFZAVdTggjBHsaT6da9V8ZeARqszX+lbI7tzmWNjhZPf2NeY3ljdad
M0V7byQODjDrjNdkKkZIhou6R4k1TQ9wsLlkRjkowyv4DtU+q+L9Z1iEw3V0RC33kjG0N9ax
OvTmg8Dmq5I72FdhxQeh5xnipba3lvJ1htonmlfhVQZJr0Lwh8OnhuI7/WsBk+aO26jPq3+F
KVRRQ1qbvw70N9H0DzbhdtxdnzGB6qMYUflXWU0DFOribu7loQ0YpaKQCUtFFABSUtFADdtU
7zRdOv23XdlbynGAXjBI/Gr1FFwMD/hB/D27P9mRZznqf8a07TSbGwz9jtIIM944wDVyii7Y
DdtLilooAKKKKAGPEkn31Vv94Zpv2aE/8sY/++RUtFAEJtIDg+TFkcg7BUuKWigAooooAKQ0
tFAETQRM2WjQk9yoo+zQ/wDPGP8A74FSUUAMSCONtyIinGMqoBp4GKWigBKKWigBMVDc2cF3
GY7qGOZD1V1BFT0hoA5+fwL4euW3SabED/sEqPyBpsXgDw5FIsi6am5TkbnYj8ia6Klp8z7g
VbXTbOyTbaW0MAByBGgWrAGKdSUgClpKWgAooooAKKKKAP/Z
--------------C22D823DFC97AEA06CFCD00B--

--------------2808D6801750B5F3F9CD19EF--

--------------FEC5753F547FD20DC27427FA
Content-Type: application/pdf;
 name="octoclock_test.pdf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="octoclock_test.pdf"

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
JH5/Rvr/0huwVaxaXGrQ4c3q5L2U6d1as6l2UUl7S14K6DnPKxox/xMHwyLqFKGnzSZb1ulO
HzA0zzl6lE5v/C6b4eB4OaobykXClUcwtBnquzf/DHAzDLALCsyGC8yql3DtKqNXWW+Avss3
0ZwvMfrerHmlUNhQitxsL/vcKdo29rxUKA8pTK75YqXqL64nl5M3lGvZxhvI5dsbddfkUusV
cSZG0Je9cRHXur+feKaEysO2N1J6FXH9Cx8gLXTgqsfoPpWPhepTl0vft35j6UP/mnDJlQ+9
sE2vXxZqIOuwx2NkeXeLIHdfBIEWnuBd65/q/xkI9c8Ykr+hCGr8X8p0fsfVjdLnCqvEaVYZ
ulWrLawq1uoPWa/VHKkfzNjqxzG2uiPGvi/Ov1dxzmmDCmSab7XVY8ph5EwTMjg50iUHHMrR
/X9t9zeDO3kzSDcBvBl0Z/Ga+iLc/hAer27T49Wte/xaHNxhj79mvv/R4+GG8SL7DyYb08UK
ZW5kc3RyZWFtCmVuZG9iago1IDAgb2JqCiAgIDIxMzkKZW5kb2JqCjMgMCBvYmoKPDwKICAg
L0V4dEdTdGF0ZSA8PAogICAgICAvYTAgPDwgL0NBIDEgL2NhIDEgPj4KICAgICAgL2ExIDw8
IC9DQSAwLjcgL2NhIDAuNyA+PgogICA+PgogICAvRm9udCA8PAogICAgICAvZi0wLTAgNiAw
IFIKICAgICAgL2YtMS0wIDcgMCBSCiAgICAgIC9mLTAtMSA4IDAgUgogICA+Pgo+PgplbmRv
YmoKMiAwIG9iago8PCAvVHlwZSAvUGFnZSAlIDEKICAgL1BhcmVudCAxIDAgUgogICAvTWVk
aWFCb3ggWyAwIDAgMTE3NiA2MTQgXQogICAvQ29udGVudHMgNCAwIFIKICAgL0dyb3VwIDw8
CiAgICAgIC9UeXBlIC9Hcm91cAogICAgICAvUyAvVHJhbnNwYXJlbmN5CiAgICAgIC9JIHRy
dWUKICAgICAgL0NTIC9EZXZpY2VSR0IKICAgPj4KICAgL1Jlc291cmNlcyAzIDAgUgo+Pgpl
bmRvYmoKOSAwIG9iago8PCAvTGVuZ3RoIDEwIDAgUgogICAvRmlsdGVyIC9GbGF0ZURlY29k
ZQogICAvTGVuZ3RoMSAxMjEyNAo+PgpzdHJlYW0KeJzlenl8FFXa7jnnrVNb753uTjpJb4RO
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
dGofhAwXtCM23i4OEQdEYlLYAyEdgkEIpPt5IArpjiSe7of0HcgZz0hpNkj1D+OpleDHh/qH
QYqAZBf48Gm+OHixzBsFz1RIcoFbgAvzLgHOqeCwO7kjCRz7JLsT7FWSDWtscbDmggWHZvGB
pUrSbaDHJE2AKkARIHOdywK4DjwmSXGAqShMXJwJZC8bpy4MD4DuoFMfXko7/b/xIf+3O/B/
8BMg/wVacSEUCmVuZHN0cmVhbQplbmRvYmoKMTAgMCBvYmoKICAgODQ1NwplbmRvYmoKMTEg
MCBvYmoKPDwgL0xlbmd0aCAxMiAwIFIKICAgL0ZpbHRlciAvRmxhdGVEZWNvZGUKPj4Kc3Ry
ZWFtCnicXVPBbtswDL37K3TsDoUdmZIywAgwtJccthXN9gG2RGcGGttQnEP+fqRe0QI9JHqW
Hh/5KKp+Oj4f52kz9Ute4ok3M05zynxdbjmyGfg8zdXOmjTF7f2r/MdLv1a1BJ/u140vx3lc
qq4z9ascXrd8Nw8/0jLwt8oYU//OifM0n83D36cTtk63dX3jC8+baarDwSQeRe5nv/7qL2zq
Evx4THI+bfdHCftk/LmvbGz53qGkuCS+rn3k3M9nrrqmOZhuHA8Vz+nLGe0RMozxX5+rjkah
No0sVReagmURTMAk2H8vWBbB4HvlewZm5bfgt4IdYl2JjeBExQ7YCW77gmWRGnaoYac64ATl
+D34e9232LeCLeq0WidBn4o+dLzq+AAclANMip1HbV450PSqSfBIxSPq91q/gy+nvjywLzgB
J+VAx6mOQy6nuQJyhZIL2CsmYFIcUHMo3lFD0BocPDr1aNEHq32w4NjCQazTWIe+udK3AbkG
zYU7Ir0jgg6pDsEjqUeCF1IvLfK2pbfwS+o34L6C3leLvLLogL1Pko6avomPGY63nGV8y8Mp
c6sTO8388bbWZdWo8vsPX77gCQplbmRzdHJlYW0KZW5kb2JqCjEyIDAgb2JqCiAgIDQ0Nwpl
bmRvYmoKMTMgMCBvYmoKPDwgL1R5cGUgL0ZvbnREZXNjcmlwdG9yCiAgIC9Gb250TmFtZSAv
WFlTQVNEK0RlamFWdVNhbnMtQm9sZAogICAvRm9udEZhbWlseSAoRGVqYVZ1IFNhbnMpCiAg
IC9GbGFncyAzMgogICAvRm9udEJCb3ggWyAtMTA2OSAtNDE1IDE5NzUgMTE3NCBdCiAgIC9J
dGFsaWNBbmdsZSAwCiAgIC9Bc2NlbnQgOTI4CiAgIC9EZXNjZW50IC0yMzUKICAgL0NhcEhl
aWdodCAxMTc0CiAgIC9TdGVtViA4MAogICAvU3RlbUggODAKICAgL0ZvbnRGaWxlMiA5IDAg
Ugo+PgplbmRvYmoKNiAwIG9iago8PCAvVHlwZSAvRm9udAogICAvU3VidHlwZSAvVHJ1ZVR5
cGUKICAgL0Jhc2VGb250IC9YWVNBU0QrRGVqYVZ1U2Fucy1Cb2xkCiAgIC9GaXJzdENoYXIg
MzIKICAgL0xhc3RDaGFyIDEyMgogICAvRm9udERlc2NyaXB0b3IgMTMgMCBSCiAgIC9FbmNv
ZGluZyAvV2luQW5zaUVuY29kaW5nCiAgIC9XaWR0aHMgWyAzNDggMCAwIDAgMCAwIDAgMCA0
NTcgNDU3IDAgMCAwIDAgMCAwIDY5NSA2OTUgMCAwIDAgMCAwIDAgMCAwIDM5OSAwIDAgMCAw
IDAgMCA3NzMgMCA3MzMgODMwIDAgNjgzIDgyMCA4MzYgMzcyIDAgMCA2MzcgOTk1IDgzNiA4
NTAgNzMyIDg1MCA3NzAgNzIwIDY4MiA4MTIgNzczIDExMDMgMCAwIDAgMCAwIDAgMCAwIDAg
Njc0IDcxNSA1OTIgNzE1IDY3OCA0MzUgNzE1IDcxMSAzNDIgMCA2NjUgMzQyIDEwNDEgNzEx
IDY4NyA3MTUgNzE1IDQ5MyA1OTUgNDc4IDcxMSA2NTEgMCAwIDY1MSA1ODIgXQogICAgL1Rv
VW5pY29kZSAxMSAwIFIKPj4KZW5kb2JqCjE0IDAgb2JqCjw8IC9MZW5ndGggMTUgMCBSCiAg
IC9GaWx0ZXIgL0ZsYXRlRGVjb2RlCiAgIC9MZW5ndGgxIDMyOTIKPj4Kc3RyZWFtCnic3VV9
dFTFFb/zfjO7YbOfyW5g87HZJWzQkghsCJYYYNEgQigGpRpQNMCyUjUVAT8wpoYqVVGKiEZd
qCJStC1iGluNJCgUK6AERQl+0pZW6le0FBXwmTPxvqecntNz+mdPz+mb7G/m97t3Zu69eTOP
BBENoBYC+eddvyQ67rmRWURiI5ExI73wisZLjKuOEuEke22+4uql6W2f39TJ43Xsk7Vg/pyU
Nz7pISLJ/jR6AQvep5yLmb/HfMiCxiU3Zp9HK4kUU8q6+pp5c3jeDOa8B7kb59y40DHJUc48
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
VRiWwvdSOF3jtBCGDgyooRGURhGPYEgJF2DYkAhKAhhMHjXYRMyHWFJGgyh2IRJBUWFYFcVR
6MtVhWEUdvCdsVoWeJAfrlX5zQjzpuFaDNIYGEAe75ZnIsRaKI5gCrkB5GgEmAc0/Cn4vH7l
y4Vvu/T64W2RHrZ4TLgTyObUsvOQ3SJdHriScoBGloZTw6FcyqGhXFBJKU0gxR/IgDI0314e
JQIgD0SHSC1fKYb9fzz0vw7gv/gU0TcrkTZiCmVuZHN0cmVhbQplbmRvYmoKMTUgMCBvYmoK
ICAgMjI0NgplbmRvYmoKMTYgMCBvYmoKPDwgL0xlbmd0aCAxNyAwIFIKICAgL0ZpbHRlciAv
RmxhdGVEZWNvZGUKPj4Kc3RyZWFtCnicXZDPasMwDMbvfgod20Nx03MIjO6Sw/7QbA/g2HJm
aGSjOIe8/WQ3dDCBDdL3/cxn6Wv/2lPIoD852gEz+ECOcYkrW4QRp0CquYALNu9dve1sktIC
D9uSce7JR9W2oG8iLpk3OLy4OOJRAYD+YIccaILD93V4jIY1pTvOSBnOquvAoZfn3kx6NzOC
rvCpd6KHvJ0E+3N8bQnhUvvmEclGh0syFtnQhKo9S3XQeqlOIbl/+k6N3v4Yru6muEeBinuf
F6588hnKrsySp26iBikRAuFzWSmmQtXzC1NGcMcKZW5kc3RyZWFtCmVuZG9iagoxNyAwIG9i
agogICAyMjMKZW5kb2JqCjE4IDAgb2JqCjw8IC9UeXBlIC9Gb250RGVzY3JpcHRvcgogICAv
Rm9udE5hbWUgL1FaSkdQTStEZWphVnVTYW5zLUJvbGQKICAgL0ZvbnRGYW1pbHkgKERlamFW
dSBTYW5zKQogICAvRmxhZ3MgNAogICAvRm9udEJCb3ggWyAtMTA2OSAtNDE1IDE5NzUgMTE3
NCBdCiAgIC9JdGFsaWNBbmdsZSAwCiAgIC9Bc2NlbnQgOTI4CiAgIC9EZXNjZW50IC0yMzUK
ICAgL0NhcEhlaWdodCAxMTc0CiAgIC9TdGVtViA4MAogICAvU3RlbUggODAKICAgL0ZvbnRG
aWxlMiAxNCAwIFIKPj4KZW5kb2JqCjE5IDAgb2JqCjw8IC9UeXBlIC9Gb250CiAgIC9TdWJ0
eXBlIC9DSURGb250VHlwZTIKICAgL0Jhc2VGb250IC9RWkpHUE0rRGVqYVZ1U2Fucy1Cb2xk
CiAgIC9DSURTeXN0ZW1JbmZvCiAgIDw8IC9SZWdpc3RyeSAoQWRvYmUpCiAgICAgIC9PcmRl
cmluZyAoSWRlbnRpdHkpCiAgICAgIC9TdXBwbGVtZW50IDAKICAgPj4KICAgL0ZvbnREZXNj
cmlwdG9yIDE4IDAgUgogICAvVyBbMCBbIDYwMCA4MTAgXV0KPj4KZW5kb2JqCjggMCBvYmoK
PDwgL1R5cGUgL0ZvbnQKICAgL1N1YnR5cGUgL1R5cGUwCiAgIC9CYXNlRm9udCAvUVpKR1BN
K0RlamFWdVNhbnMtQm9sZAogICAvRW5jb2RpbmcgL0lkZW50aXR5LUgKICAgL0Rlc2NlbmRh
bnRGb250cyBbIDE5IDAgUl0KICAgL1RvVW5pY29kZSAxNiAwIFIKPj4KZW5kb2JqCjIwIDAg
b2JqCjw8IC9MZW5ndGggMjEgMCBSCiAgIC9GaWx0ZXIgL0ZsYXRlRGVjb2RlCiAgIC9MZW5n
dGgxIDEyNTAwCj4+CnN0cmVhbQp4nOV6e1xU1dr/WvvZa++ZPdc9zHAdmIFhQESFQFTUcqK8
e4zSTCwNFcluR4y8ooF6BEkNb2CZKXnL1IzMY2BkF8lLaJej9B5P9lppWScyTq9lB2HxPnsP
KHXO+/7+/H1+n99s1sy+rstz+T7f59kQSghRSAkB4p3++NSCz09XjyIkvhchwqTpc5/0koej
MwlJWEEI5fkFDz0+u+/cRwjpgcdk70OPLcg/v214Ee7vI8RXMnPG1DyLc/gpQpL64rl+M/GE
Zau8A48fw+P4mY8/OZ/yaO14DR6ff2zW9KkE6mcS0lO7/sXjU+cXiDuk2YQkj8Fjb8ETMwoG
yf/A3WS8zmYSgeTzKjGf7cDZyiQyYBavE+k6NbBiQSQpDWebbyH2s81nm1ND1FjVH6vG5ouk
rRCi2r7mVbL115+ekJIIJSexr3TWRIxkQSBGVqlABVWSpSxZAPKqgUlUFtxiP9lNRMXe1tzW
rGZm3kJSBjenZWamjh43UbaLP2gtJ+6Ax0Tp5EBqP2GAPEIYLj8s5MslgixRo+SikdIwOlK6
j06UZtCHpQXScvq0VEk3SVtN9slkckgsVdNV/PKdpHahqoG3tD/SwJque8QvW5PFL697cK2z
Oy6Kc8QiYiJhZFQgRKpzkDpzrWNVuNFhuxscrqHhOL2r2povXW22X0kN+IZEFJEiqVguNhQb
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
FkgxQZ/eRtbHDr2N0CsNknv6WXIe9ExysJ5+SHJAj0Q/63E7JPohwW9iCTbwmyCeg49DnA1i
cZ2xDvDmgacVYnAJMXkQbQE3StDNIaoVIrMgAg8iOITnQRhKKoxDKD4UGgEuDk4OIRwceIOD
Y67Tm6lZYF8MtjywcrCYQ5mFgxnvNoeCiYNiByMHA95m4CA7QcoDES+KaAEuwLPAMdrZmdAb
qB0IB1pL85avpsn/L3zI/+0J/K+f6P8GFGA8RAplbmRzdHJlYW0KZW5kb2JqCjIxIDAgb2Jq
CiAgIDg5NzIKZW5kb2JqCjIyIDAgb2JqCjw8IC9MZW5ndGggMjMgMCBSCiAgIC9GaWx0ZXIg
L0ZsYXRlRGVjb2RlCj4+CnN0cmVhbQp4nF1Ty27bMBC88yt4TA+BbD7EBBAMFMnFhz5Qtx8g
kZQjIJYEWj7478vZCVKgB4mj5ezs7IpsXo6vx3nadPOzLPGUNz1Ocyr5utxKzHrI52lWe6PT
FLePL3nHS7+qpiaf7tctX47zuKiu082vunndyl0/fE3LkL8orXXzo6RcpvmsH/68nBg63db1
PV/yvOmdOhx0ymOV+9av3/tL1o0kPx5T3Z+2+2NN+8f4fV+zNvK9p6W4pHxd+5hLP5+z6na7
g+7G8aDynP7b844pwxjf+qI6A+puVxfVuSy4LqprR8F1UV1wgutS48+MPwNH4gjsiT0w+S34
gfwg/D3je+BAHICfiJ+A6aGFB09vHt48cz1yPfU99B11HHQ8PXh4cKzrUDdYerDQT9RPiFM/
iD779dKvYdxUbFnXoq5jrpNc1grSL/Vb0W+JW3CYGySXHCecgZwB+vRg4cGwd4PeLT1Y8cB+
Lfq11LfQt5ybxdws52BlDqzlUcvRg4MH25PTA5NjxQ9rtahlqGmg6Rh3Euc8DebpyfHgGM7N
YG6efC+eOR8r/4LYAQfmBtFnX3XBQf04kTiyuFufdyHeSqnXQC6gnH+c/GnOn3d0XVZkyfMX
06btzgplbmRzdHJlYW0KZW5kb2JqCjIzIDAgb2JqCiAgIDQ2NwplbmRvYmoKMjQgMCBvYmoK
PDwgL1R5cGUgL0ZvbnREZXNjcmlwdG9yCiAgIC9Gb250TmFtZSAvTVJHTUtKK0RlamFWdVNh
bnMKICAgL0ZvbnRGYW1pbHkgKERlamFWdSBTYW5zKQogICAvRmxhZ3MgMzIKICAgL0ZvbnRC
Qm94IFsgLTEwMjAgLTQ2MiAxNzkzIDEyMzIgXQogICAvSXRhbGljQW5nbGUgMAogICAvQXNj
ZW50IDkyOAogICAvRGVzY2VudCAtMjM1CiAgIC9DYXBIZWlnaHQgMTIzMgogICAvU3RlbVYg
ODAKICAgL1N0ZW1IIDgwCiAgIC9Gb250RmlsZTIgMjAgMCBSCj4+CmVuZG9iago3IDAgb2Jq
Cjw8IC9UeXBlIC9Gb250CiAgIC9TdWJ0eXBlIC9UcnVlVHlwZQogICAvQmFzZUZvbnQgL01S
R01LSitEZWphVnVTYW5zCiAgIC9GaXJzdENoYXIgMzIKICAgL0xhc3RDaGFyIDEyMQogICAv
Rm9udERlc2NyaXB0b3IgMjQgMCBSCiAgIC9FbmNvZGluZyAvV2luQW5zaUVuY29kaW5nCiAg
IC9XaWR0aHMgWyAzMTcgMCAwIDAgMCAwIDAgMCAzOTAgMzkwIDAgMCAwIDAgMzE3IDMzNiA2
MzYgNjM2IDYzNiA2MzYgNjM2IDYzNiA2MzYgNjM2IDYzNiAwIDMzNiAwIDAgMCAwIDAgMCA2
ODQgNjg2IDY5OCA3NzAgNjMxIDAgNzc0IDAgMjk0IDAgMCAwIDg2MiA3NDggMCA2MDMgNzg3
IDY5NCA2MzQgNjEwIDczMSAwIDAgNjg1IDAgMCAwIDAgMCAwIDUwMCAwIDYxMiA2MzQgNTQ5
IDYzNCA2MTUgMzUyIDYzNCA2MzMgMjc3IDAgNTc5IDI3NyA5NzQgNjMzIDYxMSA2MzQgNjM0
IDQxMSA1MjAgMzkyIDYzMyAwIDAgNTkxIDU5MSBdCiAgICAvVG9Vbmljb2RlIDIyIDAgUgo+
PgplbmRvYmoKMSAwIG9iago8PCAvVHlwZSAvUGFnZXMKICAgL0tpZHMgWyAyIDAgUiBdCiAg
IC9Db3VudCAxCj4+CmVuZG9iagoyNSAwIG9iago8PCAvUHJvZHVjZXIgKGNhaXJvIDEuMTYu
MCAoaHR0cHM6Ly9jYWlyb2dyYXBoaWNzLm9yZykpCiAgIC9DcmVhdGlvbkRhdGUgKEQ6MjAy
MTA3MDcxMjUxMzYrMDInMDApCj4+CmVuZG9iagoyNiAwIG9iago8PCAvVHlwZSAvQ2F0YWxv
ZwogICAvUGFnZXMgMSAwIFIKPj4KZW5kb2JqCnhyZWYKMCAyNwowMDAwMDAwMDAwIDY1NTM1
IGYgCjAwMDAwMjYzNjEgMDAwMDAgbiAKMDAwMDAwMjQzMyAwMDAwMCBuIAowMDAwMDAyMjU0
IDAwMDAwIG4gCjAwMDAwMDAwMTUgMDAwMDAgbiAKMDAwMDAwMjIzMSAwMDAwMCBuIAowMDAw
MDEyMDU0IDAwMDAwIG4gCjAwMDAwMjU4NTkgMDAwMDAgbiAKMDAwMDAxNTc2MCAwMDAwMCBu
IAowMDAwMDAyNjUyIDAwMDAwIG4gCjAwMDAwMTEyMDUgMDAwMDAgbiAKMDAwMDAxMTIyOSAw
MDAwMCBuIAowMDAwMDExNzU1IDAwMDAwIG4gCjAwMDAwMTE3NzggMDAwMDAgbiAKMDAwMDAx
MjU1MyAwMDAwMCBuIAowMDAwMDE0ODk1IDAwMDAwIG4gCjAwMDAwMTQ5MTkgMDAwMDAgbiAK
MDAwMDAxNTIyMSAwMDAwMCBuIAowMDAwMDE1MjQ0IDAwMDAwIG4gCjAwMDAwMTU1MjAgMDAw
MDAgbiAKMDAwMDAxNTkyNSAwMDAwMCBuIAowMDAwMDI0OTk0IDAwMDAwIG4gCjAwMDAwMjUw
MTggMDAwMDAgbiAKMDAwMDAyNTU2NCAwMDAwMCBuIAowMDAwMDI1NTg3IDAwMDAwIG4gCjAw
MDAwMjY0MjYgMDAwMDAgbiAKMDAwMDAyNjU0MyAwMDAwMCBuIAp0cmFpbGVyCjw8IC9TaXpl
IDI3CiAgIC9Sb290IDI2IDAgUgogICAvSW5mbyAyNSAwIFIKPj4Kc3RhcnR4cmVmCjI2NTk2
CiUlRU9GCg==
--------------FEC5753F547FD20DC27427FA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------FEC5753F547FD20DC27427FA--
