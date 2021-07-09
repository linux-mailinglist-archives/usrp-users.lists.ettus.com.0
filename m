Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6D53C2307
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 13:41:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA5A8384207
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 07:41:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cttc.es header.i=@cttc.es header.b="psKxg4nx";
	dkim-atps=neutral
Received: from mx01.puc.rediris.es (outbound3mad.lav.puc.rediris.es [130.206.19.142])
	by mm2.emwd.com (Postfix) with ESMTPS id AA4D23840C7
	for <usrp-users@lists.ettus.com>; Fri,  9 Jul 2021 07:40:36 -0400 (EDT)
Received: from leo.cttc.es (leo.cttc.es [84.88.62.208])
	by mx01.puc.rediris.es  with ESMTP id 169BeYFX019411-169BeYFZ019411
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <usrp-users@lists.ettus.com>; Fri, 9 Jul 2021 13:40:34 +0200
Received: from localhost (localhost [127.0.0.1])
To: usrp-users@lists.ettus.com
From: Armin Ghani <aghani@cttc.es>
Message-ID: <0f01b8f9-0390-462f-f650-3e108ced0508@cttc.es>
Date: Fri, 9 Jul 2021 13:40:33 +0200
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------D7DCB12A20BA5C2C6315F382"
Content-Language: en-US
X-FE-Attachment-Name: eklpdenfmmfcjmmi.jpeg, octoclock_test.pdf
X-FE-Policy-ID: 2:6:0:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=cttc.es; s=DKIM; c=relaxed/relaxed;
 h=to:from:subject:message-id:date:mime-version:content-type;
 bh=9K0NUb04wGoDUa8yrRCz+XRDg7Ws84Z40GSXLVEJ0t0=;
 b=psKxg4nxc/TfZ0ePN1FFQzbTSlGIG5nzUkpsgW65sHD3nbRuU9dqoH+K8bKJOvQc8GvxqNlEXJoC
	Vy/HRQ8NhdzS3K7ihz+1DFNo7dx+zNdsR0vXFNRt6PpBSYE2JoDq07WKaYXxgYOrKk7zw4rAyF7b
	Rqo4w4V4hflpuGJBPCMdIUIyUhT/1oUv2JGYvE71i2hmFGBf6FFzDjzae8MD/OF+a5Ccwx0yejTb
	xs7+LpcYbVH4/mPIERQZOKVUr5pa6n6N3zs1bkg6DMuxfWMg0eiPkrDFjq3Yl2PfXRpcxAJB0DB7
	0gKt41kDPfl0pHdC56jadnnMsWde/AiFBHLAew==
Message-ID-Hash: DM63TWH4LVX27JF7ZQKHGR4D4NV7Y4OY
X-Message-ID-Hash: DM63TWH4LVX27JF7ZQKHGR4D4NV7Y4OY
X-MailFrom: prvs=1820b229c1=aghani@cttc.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Multi USRP TX configuration in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DM63TWH4LVX27JF7ZQKHGR4D4NV7Y4OY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.
--------------D7DCB12A20BA5C2C6315F382
Content-Type: multipart/alternative;
 boundary="------------97DF17D8D96EE777C614D471"


--------------97DF17D8D96EE777C614D471
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear community

I've been trying to make a fully synchronous multi USRP transmitter in=20
GNURadio v3.8.2.0 and UHD v3.15.0.0.

In order to have a common clock and time between 2 USRPs, an octoclock=20
is also used.

when trying to run a flowgraph which consists one multi_usrp sink block=20
that is connected to a signal source in GNURadio and running the=20
flowgrapth I get this error:

Executing: /usr/bin/python3 -u=20
/home/.../Documents/gnuradio-tests/octoclock_test.py

[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;=20
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 7972 bytes.
[WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a=20
receive frame size of at least 8000 for best
performance, but your configuration will only allow 7972.This may=20
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the recv_frame_size argument.
[INFO] [X300] Maximum frame size: 7972 bytes.
[WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a=20
receive frame size of at least 8000 for best
performance, but your configuration will only allow 7972.This may=20
negatively impact your maximum achievable sample rate.
Check the MTU on the interface and/or the recv_frame_size argument.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000000=
00)
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1308 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)
[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000000=
00)
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1316 MB/s)
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
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
[INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transition at p=
ps edge
[INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pps (synchr=
onously)
thread[thread-per-block[6]: <block usrp_sink(1)>]: RuntimeError:=20
Multiple sampling rates downstream of TX Terminator 0: RuntimeError:=20
Node 0/DUC_0 specifies 1e+06, node 0/DUC_1 specifies 390625.

I've seen this error as an unresolved bug in the UHD git repo where you=20
can find details about it in the following link:

https://github.com/EttusResearch/uhd/issues/367

But I really wonder how other manage to do so????? since this is a very=20
basic and common configuration for make a multi USRP MIMO setup and I=20
cant believe if there is no other solution to do so.

Attached you can find the flowgraph that I run.

Best regards.

--=20

Armin Ghani

Research Engineer | Communication Systems Division (CSD)

aghani@cttc.es <mailto:aghani@cttc.es>| +34 93 645 29 08 (2143)

Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)

Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT

08860 - Castelldefels (Barcelona, Spain)

www.cttc.cat


--------------97DF17D8D96EE777C614D471
Content-Type: multipart/related;
 boundary="------------4DE43CDE7A12AFDEFD056E7D"


--------------4DE43CDE7A12AFDEFD056E7D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Dear community</p>
    <p>I've been trying to make a fully synchronous multi USRP
      transmitter in GNURadio v3.8.2.0 and UHD v3.15.0.0.</p>
    <p>In order to have a common clock and time between 2 USRPs, an
      octoclock is also used.</p>
    <p>when trying to run a flowgraph which consists one multi_usrp sink
      block that is connected to a signal source in GNURadio and running
      the flowgrapth I get this error:</p>
    <p>Executing: /usr/bin/python3 -u
      /home/.../Documents/gnuradio-tests/octoclock_test.py<br>
      <br>
      [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
      UHD_3.15.0.HEAD-0-gaea0e2de<br>
      [INFO] [X300] X300 initialization sequence...<br>
      [INFO] [X300] Maximum frame size: 7972 bytes.<br>
      [WARNING] [X300] For the 192.168.30.2 connection, UHD recommends a
      receive frame size of at least 8000 for best<br>
      performance, but your configuration will only allow 7972.This may
      negatively impact your maximum achievable sample rate.<br>
      Check the MTU on the interface and/or the recv_frame_size
      argument.<br>
      [INFO] [X300] Maximum frame size: 7972 bytes.<br>
      [WARNING] [X300] For the 192.168.50.2 connection, UHD recommends a
      receive frame size of at least 8000 for best<br>
      performance, but your configuration will only allow 7972.This may
      negatively impact your maximum achievable sample rate.<br>
      Check the MTU on the interface and/or the recv_frame_size
      argument.<br>
      [INFO] [X300] Radio 1x clock: 200 MHz<br>
      [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
      0xF1F0D00000000000)<br>
      [INFO] [X300] Radio 1x clock: 200 MHz<br>
      [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1308 MB/s)<br>
      [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)<br>
      [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:
      0xF1F0D00000000000)<br>
      [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1316 MB/s)<br>
      [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)<br>
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
      [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transitio=
n at pps edge<br>
      [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pps (=
synchronously)<br>
      thread[thread-per-block[6]: &lt;block usrp_sink(1)&gt;]:
      RuntimeError: Multiple sampling rates downstream of TX Terminator
      0: RuntimeError: Node 0/DUC_0 specifies 1e+06, node 0/DUC_1
      specifies 390625.<br>
    </p>
    <p>I've seen this error as an unresolved bug in the UHD git repo
      where you can find details about it in the following link:</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://github.com/Ettu=
sResearch/uhd/issues/367">https://github.com/EttusResearch/uhd/issues/367=
</a><br>
    </p>
    <p>But I really wonder how other manage to do so????? since this is
      a very basic and common configuration for make a multi USRP MIMO
      setup and I cant believe if there is no other solution to do so.</p=
>
    <p>Attached you can find the flowgraph that I run.</p>
    <p>Best regards.<br>
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
          src=3D"cid:part1.BABFCE96.E413FFD5@cttc.es" width=3D"151"
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

--------------4DE43CDE7A12AFDEFD056E7D
Content-Type: image/jpeg;
 name="eklpdenfmmfcjmmi.jpeg"
Content-Transfer-Encoding: base64
Content-ID: <part1.BABFCE96.E413FFD5@cttc.es>
Content-Disposition: inline;
 filename="eklpdenfmmfcjmmi.jpeg"

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
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
--------------4DE43CDE7A12AFDEFD056E7D--

--------------97DF17D8D96EE777C614D471--

--------------D7DCB12A20BA5C2C6315F382
Content-Type: application/pdf;
 name="octoclock_test.pdf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="octoclock_test.pdf"

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
9X46wJuYl5bSpwN0MLjBRB1YlJXhplSEleKyEH9CbZ7hooSLzdmeJRQcZ6ttijxeQgdXTpXV
mlF753rDQqkJQhkdDxSqd+UBQhmzs8NjofRDSqm2dLqnIyWXUn6TnXCv55QrQ2+n9xKF7Ssu
S5/D0R63R3yZkzs9VNbvCSPeu/CV6kiVikvnu60rPmp+iWhct4qf1+t7qz+Q1lHucPrvlBLJ
uWfyTkYfy3aeM2GxIx/i4eGstl4+5lws5zyBj8DRkziOMOEZQh2YSy7dsx6hnp6OPru9lMtz
ajve4TXjev2s9afcoMsTYCS1OryAHe2+xEQFVMRB9RiqwsX5FRcOKYvg6B3uZldXkTpPocYs
yVKRsdKuJ5YvOLt+WL/J4cJwKW9y1oqOr6bz23lbRbnrWP1ImroOq+C0WNt+UNEDrGaNH8oq
+AEnr9ee2HXdFilfwRa5NI24xGfoPB+Lz+3Hkf7EjK0/HWPrv4mxe/trUBx+y07VzxVaABid
X7SRFl31c43hfZ5Oh/h5Kj8VIGVsZprOY/vWqQZYX9YJv0ZYq+j3tSyZ36+Y/n/gGbtYdYyK
ZtruPiv0Mv2s1Wz7sISZnldns+L5wFemiRygyZdictP9iUQx6k6vuaTdSqBrk39S8r7GT11W
4QB0VrdWUgKfEOgK1vdk/qUWX3OA3SGHdFzgev0rj2GV4bcSPxF9Xz1ic77g6PtpTz42c98n
4X76/+5+e3HwN3Y//T9xP+rCfyj+C28q1DkKZW5kc3RyZWFtCmVuZG9iago1IDAgb2JqCiAg
IDIzMjgKZW5kb2JqCjMgMCBvYmoKPDwKICAgL0V4dEdTdGF0ZSA8PAogICAgICAvYTAgPDwg
L0NBIDEgL2NhIDEgPj4KICAgICAgL2ExIDw8IC9DQSAwLjcgL2NhIDAuNyA+PgogICA+Pgog
ICAvRm9udCA8PAogICAgICAvZi0wLTAgNiAwIFIKICAgICAgL2YtMS0wIDcgMCBSCiAgID4+
Cj4+CmVuZG9iagoyIDAgb2JqCjw8IC9UeXBlIC9QYWdlICUgMQogICAvUGFyZW50IDEgMCBS
CiAgIC9NZWRpYUJveCBbIDAgMCAxNjE1IDM0OSBdCiAgIC9Db250ZW50cyA0IDAgUgogICAv
R3JvdXAgPDwKICAgICAgL1R5cGUgL0dyb3VwCiAgICAgIC9TIC9UcmFuc3BhcmVuY3kKICAg
ICAgL0kgdHJ1ZQogICAgICAvQ1MgL0RldmljZVJHQgogICA+PgogICAvUmVzb3VyY2VzIDMg
MCBSCj4+CmVuZG9iago4IDAgb2JqCjw8IC9MZW5ndGggOSAwIFIKICAgL0ZpbHRlciAvRmxh
dGVEZWNvZGUKICAgL0xlbmd0aDEgMTE3NjAKPj4Kc3RyZWFtCnic5Xp7fBRF9m9Vna6e7p73
ZGaSSTIvwiRGHgmBAOEhI/IMiBFZNgiR8AoPRaKAyEIkrKsiyoIiECIaXouIiDGwyEsMGBV5
SFTQVWTRn7CyGpCfFxGGpPid7kkAvbv3d/+5n/v53JuiH1XVU33q1Pec8z3VEEoI0Ug5ARIa
N3VM6clQ1ThCAhcJYfeOe2RG6LadHRRCwgVYH1ZSOnHqSHb/BULS1uOvNk98YHbJV+VL1+j3
+JsBkyaMGW+L9F9JSGt8nnSehA22N0yrsb4A660nTZ3xaOyTxNl4i8+TPQ9MGzeGsLe3ERKZ
hPXaqWMeLZVnyO0ISb8F66HShyeUzh2z9jusDyDE9AphpEQsl0r4epTWRIJ7iETT8UGZpm+n
Cn+aSSSr7lhDB+I41nCsITvBGXZGws5wiUQap0NK4xmx3GS7/NPDcib+Rh/r2rdyCb9AzCSR
5EQT5C0ussWyylWRpLazd4F2njZJjsaGRn240xcbHOezo2biS0xw+LJ8vXycFtFWzON2dcxx
5XZiECJOBwkbZyip3r+/+s39+9+kk2iFmCQqxEoxka6UvhCNDT+IRir90EAlmijGi2ViuRhP
V9Ep9H66ypBpsxjO75PmEAdJJd2j/sQ1pN7mXMPrlYO2Cvp32OpP7m2OuiViZQ4/SpeTc9GQ
7/Tpi6cbHKfPZ2+7K1AcYLQognMPe26jHXN0kdJapSe0kj1ub8eczrmd0plLVNKS/G0zj1JN
XDo6c9v66XPmTJ8+e/bapm2ytn5skXhLNGF5qwi6vFpV9erG1as3EkpSCIH1/GWSQKZGk21c
scMaJ92qrCGaYlaZikI5XLZhbkfjoGr7sEHVjmEjB1U79ZNr2MjCncRGol1H9Khr7FFX58rL
64BL1XCxR0OOMy8vm0aTepFeCQwVAHaH3VnACqDAU8yKQS0iRVSfi9Pt7Y43rdJznWnOjk7W
kT4kFt82aoc4cuzNmhr+sth/jYjIkC7XyJvH6AlK6G1xfeLJJbsNvGRGbfJJslVaxzi1SsSh
OBrx/ShIw8WG7KhaoBarpWq5KtGihLDxyvBmWqJrSlRKxVdXy27xlTFm4bVveQaukY6bdoib
NS6yxnJQx01v+2Do7en+G9xs75LQy9c/AXTI3FiEmyHD9s0qK5s1c+7cmTRM+4rd4pT4u9hJ
+8Oc19aseU0/KBEHRAOWA7QrdWPpqmOY6vPjLpQlkeRGk3BSVDvhqvccdGy1UWYl/Z1Wq92h
i2PgJKuHDhNUeF72tmJfuQ9xgirNdXZKz2hP01C266DxcpeosDo8A9qXlusauHv7g/s/ZJua
hk+jLz73YHJaxusrm76QihEq5+NyTLn2rTQW5cggX0WjVguzmTsHggEumxSVS1rnYDAQ0cyB
oOQhh+kxyX3YcyypyilVRQ46K24JaOZgionckzLU5jYVtLrzFpQXzfi0E2GiA8VQo/j5vOPn
867EvOxB9xSaHLZzzsS85suIVjWKmdKi6H2qqmqq2WwxW1U7T0u2JFuTbUn2tkp7tb3W3tze
0t6aGcpTuqvdte7mbpZu1kFqvpZvzrcMsM6yzLLuUnapu7Rd5l2WXdaITbaZbIpNtWlWcxdr
r8zRmXEoxhXl9gap5PW4JQRkhjNA40uaRdvT3E6dUX1S4vTPRpeMGzSmF03YKy6L2LRzZfd/
M2PylIFTe/1Ye7Fx3JdST3EhO7tjbpv2ZjVt9Wtbt6WlUUenTt3ysrOsSmDtX2o2B3S9ari+
U/hxRG9HRC+rJYsk2hW8pCtXHMcGVWtoZzbDurhuXQbqsi425GTTmqh6A8caLxZOMU84+HFx
8uoQqaYFO822EXiLrGPUShySwxjBMAdezEt5OW82B8MUZPeVBnLdBjRcbzd6hTuiYeL5G1UP
K8d4lYV+nlTlOmipSE3xMMVjJX2Y1d49Fce92FCHKxpfztMOcfG84zziMMvfy6/j0BM2tNjF
aaNpLZbBO6Wjsk1ca9xtXfXsQ+fK5uEc6sUbdBBtRRXaUyyZVTzpjw7WseSxx+7oIxqyO9Bc
mkhdtJvYv7SkbOaDcVnP4GmIVGz4gNSojW1EH7BR5hTDRcKvfECLus7QyWKFfkjFokxsEGXx
cXAt5AxjLTQiolHil7nJL8tc8ysal7mq3zO/BBQPxQ8SaH5VkySIaBLZokiLZKapiolLjBJV
BrPjWE0QfUJdYp5hmccaXM3YVs6ZHPycKf5Pv7vRMqIVjZYnaVnacK1Em0fm0XnKPHWGtlCr
0t7BchTLKc3hUlLVoCWi3KqGLAOlfry/MkAthBHScP57eRJMxgA6US62zCBz6B+kmXyOMkN9
WnqSP6k8ra6UlvNlSqW6XdmpHiLv0ffYIdN+5Yj6BfmMfsa+MB1XvlSzdDsIQ5gaBaR+TRtG
izKWSQ+xTFHWtJGuPEwd4gI/HmvDImxo3D+sRrzIuAY+jGopdiDUcsJdn1jhoFtdMiMJdquz
P/orR7KBkxwDJ1mnc254q5TyFEQJRnSPG6OuNzFucvpi5SJgWqWvppOYzentj/5KB+rdf526
/xDdxjaXjhTn2j81KyUtffNKlnl19VrDYzX7TcT+b/3mun/tNxv+e7/p/G/85sqlLX5Tdjdt
jDtOQw5oQDtyki5Rr9OmyiYCteYXbAfVrSZNthLF4dLjacIwNHHlWm3XEXUGWtGPN9Y581BP
2fS3rjsRGrKKshYu09/fd2uZ69ZbIMvrefMvTY1S8Y4HJwDX37uHEOkbxDIniVFz3K14gYDs
aKzTJ3y6xRj20Pls/dUT/PjVIeJk3O6l91BejUTIS9FbVZn4gmbySeJRucpW7wwdDh5KrUpD
p24haYmQZFWt5p5BsLq7p+s+HVdWD/fG2l5sRKf+j/OXzue5jGlEB2dl9Az1DPfKuDN0Z7go
VBR+MPRg+LHQY+HSjGdDz4ZfCr0Ufj30evjt0NthT04gO3hHIBq8J1AQHBcoDj4RKA8uDSwJ
rg2sDtYEqoOOoptibU8aaUFJbqfW4Y65ca+ir1dIYmtLHxp594SFurUP2DZ/yxfUTlt9+uSf
p7//u+lnZ9AsaqWXB+f3ufO5qZlPNc3fUFJ0aO17O1J/d1f79tSZ6v/R8AujRD9uk2YjY7uF
DIqmpyK8PYe9x3xVLv8aS7160Lo1bY3rS1IP6RZitUU9od5y98wWfei6ON1g0DcMcXrIQw53
a/GtOofTZSa5nYi+qLlh3SfeiDZwM5XYkF8z84i4SC1HZtbk00niNbFnct24+7aNrF7fMG3u
o9NL587dO3YUvSN2ld4+atyGRqf4SXwbCtPEzrmV60Fev7yyav2y5esRF8iJeQw5sR9nEvEl
ey0OlXjB6kjemerdAo4t6iqoSA2k+DpYOpKshHZym4BusQhG9Ot1Bt3B8p7TWFN9WWtGBzEy
R2Sp2annSIlGCI1TZ3T3ac4wjy0RB/8inhGD6R76x2XUObvsl7n/uHLhZI+JmT+wwmn9+tE1
dAKdTF/u2kUc6t9PXPvxnBB2BwYB1hwjDb8sk8ejGeCX0MP6KeP6hTAZswM/PhBhQPahlwZG
uURMjmPbFpMgYc3utyGn2fe2eNu4x9XdbVvCHCzEqplkogok0iRIkhJ5UAkp/Ul/OgAGSH15
vvx7WgiLFSe6xoSwqvtFjT5On6XP0MebPhe5aD410pBYm3gc2Yw6vg99jxkR0zWaIiNI7GSN
p8J+MGVdUr0PeruiSRbVmnwTw8/SIaLbyw2Cb6x8nIvATTw/w4NWCwTJ/HQk9XNuIvn5ukP4
TufyOqdnx2+i+WPXojik2S+wnqhLIG3fIvsY9RKQbiL06IWIQTQMkkC3O3iUF3AwGAK6CjFP
9/qGTeAcbTioIz7HG3lMhe0gXQdGBhPFXKa7P+7xjRD82ySGXvfv+uTQCuDmSW9AoFcg8I+K
S1Q7OmPrWn3OD8+eDXtY4ZWGteNG0YEUsAwsavxQn7WRxZBmjI9CjOuxKLkF4L7r8E5OaGch
chsMRXU5LSRe1LWAGhlLyuiUZutsxrT315jmo6b8o8yA8zY6s+wfU+6vn/5RQ8NH0+vvH9ql
qwHlErpGh/LAPuLy2e/E5T4DDbmWolztUK4M8kr0VhKR3EnOOGem70qed5O2OKUtkVU3+HKK
D+myr9Utjq90tlz3a7Z8xnEGmXGzyNFhpZk0z58XyAvmhfID+cH8UKFW5B8VuC94X+je8JTU
af5pgWnBSaFp6HJnmGdYZljnBueG5oaXm1dYXgxUBleFKsMbzBssG6yb/JsCm4KbQpvCt+g+
9iY6HKAGHW6d4fRKN9Ph1mjz0qE5309a+KcRM9df+UScEJ/+WfzH4sXUPPexJ0cuWPb1URqi
tjlU4htEXZeugwt63JEUzjm855f/7JxL+w6+c9iQfoMD4exPak5diBh60mNQLsYgH8bMZCOf
sB22HtPWOKU1iRh6kk29rcTd/dfrd1HPHrK3jU6Zl8JulvvXlBOJe+7ApXctf+WV5cNWRIe9
/nvxsdhEh9OswteQr3+Vk/3GSy+9kdNBnAgGaRfqwdIlGLdptBuZoN0oiPenojkpySzV5/cm
epP8iYneiM+rJZAtqrzFsihR8yYkgSPVJxPJagJvokM1ec1gmPqxOiQZuGpxRnix4VhDnh4P
rjsm3pztJKXq2U4wJSnFl5yckpKc2tnT2dvX09c73DPcWxCY4JngLQ7Yi6ixCm2oj6EZhSSP
WzYFaGJCGHDy7NTsyZNnrxXz2GCaQRMWL7mrLPqxKNne5aH7oNe9E0sKxXxxqekQP/7+Zy/s
beeaN18U0umlQw39byLEtA31HyGTo5kpHpcqmUhINiXZT4Tq0+BgYGtqgom4XRbFKg9wW10D
gilWvyM97kXQgfh1B9LYQ0+R8+JErwfmpT1O61sBTn3y2TRqD2ZkZxRklGaUZyzJeCPDVEQN
auMxaFZLAA87477gBvWRdvXZXbrvoKigtN+QkmlMVESHTizF6qTer02cUQMbJk09/23TcDbA
mpo86/6NVU1fsgG77n/1JSOXHV1cet0HmvJwLS3ko2hH6GxSTKwzZYp+AYYJJu2saWpEM2FE
UTComLmq6FFFkztIWgeCvqQRV655ERty6pyJ/ya21NhBX8cSldkVuxpkHlNQCaoerQ3rxQaw
u9hg02Dt92yEaYQ2iU0zTdOWsSXKEvVVVm2q1pIlKgGxeakPHLZbaQS60Vy4i0ahvzJcGaEW
2CbRiTBBmaIW255QFqorlKSW0ITaomlUd9ff02GI7X+KF8TGi2KjWMqPN34DwVgbqU/jCYhc
3aPrAuGNeV4xMdPZ0X6a30zMql9RiX7RkKzKit9kkiW/Hlj9DGT9gnJRghGYkgimOUSS6CnN
ZNxRbqJmS0veam/eGhpU7TYCi1nHRd2xuuua+9d6+1cx+ksCdtUBQTUEWWpH6KHeAYPVoTBK
HQsPqNPhD+p8KIdF6mJ1BVkCS2CFvEqtUlfDG2o16OUdVS+1UAtH1aNqPdTDKfWU+jV8DT+q
P6q/kAvwi3xNzQFmkSwKaAksVUpVErSgtTVrI7VRWmudWHepu9JJy7b2YYOkQUofbZr1SVLO
FktPy4uVcm0FWcYqpZVypbJce0WuZu9I7yjVWi07Kh1VarXPST07Jf1NPqXUa9+Rr9mP0ln5
R+Vr7Qq5JHfDZcNFS6H60pmRWHwgHqBzzpylc/C6UTzReEU8wXqyNLGNDm461bSPjhUvN2OY
X0IMq2Ru1G9C+FLWGZcrooN2n8JlamIdJBOiVYujNa9Z5y3uRjqnHzpGTZQURTtpMjH75K60
P82Xh9MRcoF5Ip0kF5t30e2yzceSTbexjqaBCNqo6XfsXlMJm2wyF+k7B0YMN+C2hQXpVDG0
6RsDaUQiiDTSSK7bnHTIkLdN1CnVynv1nEThFD1kXEZ0jsbWBqbp2x3mAnOpGW7sb+Dwkr3p
YTaxaaVOQcRJ8b042fQUjutDbu5C/Npp5+gddj+xc8lssYLNj/Tw11QRmB2fQqpoj9g05uBE
q1K+BLLVYbeZVUXnjapEHC3gvQm3BiEyaKQDM1ZUJQbdf4vcxDyTYkB2PQYNJJY6tYyyAjaB
zWBPsnL2AlvCVrNtSDf1UovlGKtnX2NJkqgKnKOlmbjipR7ukT2m1ry13NqUS3JpV+gsdzbl
2fLsfUlfmg/5SEv7yhPZBPlJhrm9vMC6wLaCLefL5ZXWlbaNbBNskl61vWr/K90DO6RqtVp7
x7zTutN2gB2yHrJ9aP+MnWF51+msjbahuRgre1Efkpd2lGCSndn/7RePlo68JxH9Q5PCLl/t
vHvZD90GBePriVzmXVxPJ+kYTXSaFSYRXmurUMkil+LV8nRe6bq+S6prDY19ezShNKEqIb6u
8dzGGW7eI0VyOfvphbORYu4Xu8RusR8hNH9nVdVOmNc4X7wrDtLOtOdNuDeT26IJrFbZK5FF
mowo4qr+TouBJCOF7nGxh77t67GDXbJzu2w32ZUCa7G11Fpl1W6GVjwJ7qqz26YDOryaPmB5
sTZsNgLseuzPM2J/Imkf9ZBadRGt9SrMqxHeztGeeFWI7wg74wzN2GuqKfBRnYjEqVIaxQCd
6HV53AzdaSZlPRc2XLl8rulnuhyd9J2zJpeUTH5UVGOZItU0PvT9qb+fpWljZkwQl195Vfwy
YcaYZjn40yiHRhJIh6jXssVk3kIWqQlWTFwc7SSzggpwxxXQIonOMbJriIfqE9YpghRO0821
Wao9bB710w7iqPhWiHl0/vHSP/yhFBXw/Q9NTTFprxg9dfz4B67vQ89Gvq+RZ6NuhTOArWSd
KnMqyYq+sWiOm7Az7mZO42pHi33gk3zcJ3c3DYSBpnuhSC40jTZNg4l8HjwiPSLPMS2AJ6Sn
+DOmKliGwH3RtBOSvczLuyl9WH+erwxnRcpEVswm8FmslD3C5ypPsQX8GeV5toK/qHgM/+M0
PCc1NjDpKrq66SQbIoaIQfpmZuOb9EVMgNbST0W75ljnQ18hk09/m0fCr/LIU7/KI6v+9/LI
uTcMPhtNfjgrQXPXjb36JmOvbzb2r9kFLD5OGLWCJnlIAk2FZCmdtKZtIFPqTDrRPMiTspV+
pB9F7UnFyqPyU3QBPMUXyMvJcroSVkrLeKW8EbbTndD6Rl4aRDUkUi+dKPqLWVJxYwzkq6vj
OB6LNpvV/D0sLZqgbrbDZs8qe0US8VoSZa/L/ZvvGtSh0y+nQ7dU2vIpA8+wZfLcuVOmzJ0z
BW2mVnwpvhC1NIo0M51GWQNNOnNGnBVnzp6lSWKRmEqX0ul0Bl0qpuo4+g7XQDIwfEvUA1sk
toUvMiF1VpLkZCBJnJodyJLr4rvUOQZ8cY258Z3PGb5Ah4l1dCR9kA672kA1eG8AlQdczRWX
DIxWi59Akl3ESoJRO1lvWmczUUkhZqfksDkaMVswPkvhHLNpOJ3ldnJ1Cct6TgeS+Hzl80sr
aGZ5+Tzx0y/07RMn6L6fz4nuJ0+KbvH4tV78xC4bY6dGrWS9vM5mNWlOmYAN5c1paBk4obP+
tTAjHLf09eX4RzMrlj6/Uvx0nr5/8iR979zPoteJE+KOX0jz3tJwY2/JHP8e2LxXkFTvOejb
mvJ3e4Xf2CmIQm/XTZl0y/fAm7YLbv7ylHBTRq3vK4XZLkybH8b0efb1dDq+j1QBs1oy56Y2
1xPq/qPGbbhyKT7vURi3+6HNqOTpaLKCFJCBHwlzRFlDtsIaruisj8gamklQtstoJodznNd9
4E2JjW4hfUaw4abJrMQ0mz1i+pNpqUlBWqc4KBoNOCQHd5jTIVPJMucpvcz5ymjzn5WXlTfh
bQVpm4KUTfkWGhSfgXSPTnNzaXgmfNxUw4Y0etmQpkNScayp8hqJsRJDcp2lEuT4EhuC1wBx
YIuNzCPX6D10DH2UPkafZ++zr0LpoexQt9DmcKtr1/Rv0mQ1HUqLsb+suT8B+/Ou9//7P4rv
+IpWog96Gcvq5vI+lgP0APY7fvN8G9L2V/VMcuv/NKb5VzULHj6i58hh4iat0Yr1Pye+N4Rv
1z+Up5JkjFJpxPMvJXQRL0khSfp+GkYQGzI0QjJwZf16aotYbEfsxIRashL963yQtCLt/5cz
/v/yD91rR1qCsfifeN+TrCUxCOqen5Rgq37dTIeRBuwfi0/Ol57A8F5Cp0pIB7F/nnQEh2C0
IxlLHsK7iLSe7iG7yBn89Xy6iA/g9+pPGy/Sx7rE36UXeB7LI4XSVKmnVCPNl2rwiZlSiTSf
VOM5j30srZLmSEcxXy/UJaOD9cP4Ml5J82kaqWSVtA/Suj7sCNlnyN8LUdqdH+KHyHFynBbg
k5vJLKbRD+hPNIsW0hr81SVyiQaxlsty6Xn6HUpcQT6GQq6RSrKYurC2hxxBuc+Qn8h0CUcl
i/lx1gY9+7vkG/K5/k2OTNG3b4kf2vHjWC6QjWQKauYbDLnHZbcpLJWwy6SBPs42sMuYsWIG
Q100iNq8D45IxdIH0tPYi9qhDDpCEHrjeZT+BD9OK1GKb+QSOhuf08scfE8De5ftwDnuJSdx
Xvh2NorNYZXkJN1Cd6HEhDxBt0jFprFSCqmUK6VCcl7XDfmYHUF9FBj6eIY8I3cglyQZU8LB
tFjaqGuMRPg+JMRhUz76/+U03/Q4zoRAF6J/HSXkQ0r4vnjBpxTZT5ZLGfAyys5YWYve6Gxy
hOXBWLLKKEvpDrKU7CDTCQ4B6W+ZZMxWGCVtQ45qFhk4vjp6d2HowIhwu7a/qYYcplA1Kai2
zg7tuHatoFBK4SOqeWo1RJRqKZL2zb/r/KZd20EFhaEd9Ja+fZqH7VvcBxvvKcRbvYbN2N63
j9Gnv7WaR/DfwOLq0LhJoYWOhWndFjomdGtneFV23463N9UHRtt7/EyCigHXT78Ycrbl+svD
jVvsR9QJ+KzeSeOGQ4hpqkCK5Qj/8vCVHPuR5vYbf1loHSUyHnwX2QyfkhS2l2zm80ghryGb
pXfJFD6TaEbbVFIIHckZXCsN+1br/fAT2cw+1Bke2cNL8De7yCj5ORxPfwbHYzFsxzZ+Csd/
lyyV9pJCOZPsUYaTTaZL2JdJgnINXmfh0YX45Hlkj16X12P9JB5D8b1dSJA/R8bi8R1sJNV4
rNfHRJyMap7DYDy+xsnORSVl4/EnRAp6fqjAOHoBpcN+vgBpZic88BnTDkKUAXjUE6IOaD7K
CdFeQOdfjC4fEWapI8SK91ZEna0PHl+hDtF3O3BMJ47vGo/uvJQQD3ptz98I8eJ7E/HZpBAe
OI4vFQ98NhllTNEPlC+1Bx7Ylooy+Zfo/7fLWI0sGIJx6VGMNAzjVVRfPX6OhfEq3f4nVk7T
iSBAIxhzgLamYdKNcNqaxLCWhrEFaKvmtlbGc/o90JDRHyS78Rwg4/HsN3pTMZYBTcHoBTTZ
aPEZ5yTjnGicvcbZQ90YrTj1GDX9HmiCce8yznZqI2XYbzdq+j1QK7WQZ7HNarRZSS3yFAs1
kxHYpvcAnsuxzUw1jJzc6AE8R7FNbwGqGr9UjLMJNaKf9V/INSva89sTqGzMixtnyXgKjBkx
o4UaZxK9VgbXbgMhoPFqW94o4GpbiAm4crk/v1IGl/vDLzG4JOBnARcF/I/d8JOA/xRwQcCP
ATgv4FyDxs8JaNCgISr98L3Gf8iB7zX4ZwzOPuflZwV8F4N/xOAMVs4IOC3gWwH/IeAbAV8L
OCXg7zE4+VUSPzkevkqCE6sD/MR4+PKLCP8yBl9E4G8fR/jfYvD5Z27+uRc+O+7gn7nhuAOO
fWrmx0LwqRk+wSc+icHHOP7HEah/wcLr0+DoR25+NB0+OuLiH7nhiAsOY/dhPxxyw8EPd/OD
Aj48UMQ/3A0flksHotc+iPADRXAgKn0QgfcFvDce6pY4eJ2Ad1Nhv4B9Amrf6cZrY/DO6yn8
nW6w9+1kvjcH3t7j5G8nw57ddr7HCbt3WfhuO+yywE582U4BOwS85YHtLvirgG0CtgqoSYQ3
fVDthTdwnDdisAUvW2LwOj7/egpsxsvmMnhNwKZ0eFXARgGvCNgg4C8arBewbq2NrxOw1gZr
o9IaVNSaGKzGn6wOQBVeqmLwMk7+5VR4ScCqF3fzVQJerCziL+6GF8ulysURXlkElVFppYAK
REeFgBXtYTn+cHkgeg2W4U+XheAFCyzFpqWD4Hm8PC/gOdTDc15Y4oDFEfizgEUCnhXwjICF
Ap4WsOCpCF8g4KkIPCngCQF/yoHHl8MfBcwXUO6DeRo8JqBMwFwBc2LwhxjMFjDrkQ18loBH
NsDMGSl8ZgxmpMD0GDxcBg8JKJ3Wlk9rCw/GYGoMHojB/QKmCJgsYNI4C5+UAxMFlOTAhPEa
nyBgvAbjo9K4sRofZ4GxGowp9vAxy6GYOnmxB0ZrcJ+AIoER2clHCRh5bwofKeBerN2bAiME
FMbg9wKGYz16bbiA3wkYFoB73DD0bh8fGoO7seNuHxTc5eMFMbhriJPf5YMhTrgzAIMHuflg
DwzKd/JBbsgfaOP5ThhogwEx6N/Pzft7oJ8b+sagzx023scOd9ig9+0R3jsGt+OYt0cg2svO
owJ63Wbjvexwmw169rDynl7oYYXu46GbgDw3dBXQJQE65ybzzhHI7eTmucmQWyt10qy8kxs6
lUsdcyy8oxs6RqUcC3TI3sA7CMjG8bM3QJYF2idAu7bdeLsYtPVEeNtu0GY83DoeMgXc4oGM
RCfPCEB6CCIBaJ2GCmjTOgBpTmhFrLxVDMJ2CEelkBuCGgQC4E/1cX8EUu0JPNUHqTvQZzwn
pVgh2TeIJ5eBD1/qGwRJAhKd4MW3eWPgwTZPBNzjIcEJLgFOrDsFOMaD3ebg9gSw10o2B9jK
JSv2WGNgyQEzTs3sBXO5pFlBi0qqAEWASYDMNS4L4BrwqCTFAMYjEXFyJtB7WTl1YjoAdAcd
/8Qi2ub/jT/yf1uA/4N/fvJfk27XSwplbmRzdHJlYW0KZW5kb2JqCjkgMCBvYmoKICAgODE5
MwplbmRvYmoKMTAgMCBvYmoKPDwgL0xlbmd0aCAxMSAwIFIKICAgL0ZpbHRlciAvRmxhdGVE
ZWNvZGUKPj4Kc3RyZWFtCnicXVPLjtswDLzrK3TcHhZ2ZEraAkaAYnvJoQ807QfYEp0aaGxD
cQ75+5KaxRboIeGYGo6GNN28nj6flnm3zfeypjPvdpqXXPi23ktiO/JlXszB2Tyn/e2p/qfr
sJlGis+P287X0zKtpu9t80MOb3t52KdPeR35g7HWNt9K5jIvF/v06/WM1Pm+bX/4ystuW3M8
2syTyH0Ztq/DlW1Ti59PWc7n/fEsZf8YPx8bW1efD7CU1sy3bUhchuXCpm/bo+2n6Wh4yf+d
UUDJOKXfQzE9TUJtWwmmj23FEgQTMAkOHyuWIBj8oPzAwKz8DvxOsEetr7UJnKTYA3vB3VCx
BPFwgIeD6oATlRNewH/RvEPeCXbw6dQnQZ+qPnSC6oQIHJUDTIp9gLegHGgG1ST0SLVH+A/q
n9AX1b6AveIAHGoeOl51QkY+ay0wKY7oJWovhLmRzo3gh9RPhIeoHjzm4HUOhFqqtfBG6s1j
Dl7nEEbcO6oONKNqduB0yukwn07n46DpVNPhXqf3RnBifRd4RxJ0kd42RldKd/99V9O9FFnT
+oHU/dTNnBd+/4a2ddOq+vsLCQDbbQplbmRzdHJlYW0KZW5kb2JqCjExIDAgb2JqCiAgIDQz
OAplbmRvYmoKMTIgMCBvYmoKPDwgL1R5cGUgL0ZvbnREZXNjcmlwdG9yCiAgIC9Gb250TmFt
ZSAvR1ZYWENCK0RlamFWdVNhbnMtQm9sZAogICAvRm9udEZhbWlseSAoRGVqYVZ1IFNhbnMp
CiAgIC9GbGFncyAzMgogICAvRm9udEJCb3ggWyAtMTA2OSAtNDE1IDE5NzUgMTE3NCBdCiAg
IC9JdGFsaWNBbmdsZSAwCiAgIC9Bc2NlbnQgOTI4CiAgIC9EZXNjZW50IC0yMzUKICAgL0Nh
cEhlaWdodCAxMTc0CiAgIC9TdGVtViA4MAogICAvU3RlbUggODAKICAgL0ZvbnRGaWxlMiA4
IDAgUgo+PgplbmRvYmoKNiAwIG9iago8PCAvVHlwZSAvRm9udAogICAvU3VidHlwZSAvVHJ1
ZVR5cGUKICAgL0Jhc2VGb250IC9HVlhYQ0IrRGVqYVZ1U2Fucy1Cb2xkCiAgIC9GaXJzdENo
YXIgMzIKICAgL0xhc3RDaGFyIDEyMgogICAvRm9udERlc2NyaXB0b3IgMTIgMCBSCiAgIC9F
bmNvZGluZyAvV2luQW5zaUVuY29kaW5nCiAgIC9XaWR0aHMgWyAzNDggMCAwIDAgMCAwIDAg
MCA0NTcgNDU3IDAgMCAwIDAgMCAwIDY5NSA2OTUgMCAwIDAgMCAwIDAgMCAwIDM5OSAwIDAg
MCAwIDAgMCA3NzMgMCA3MzMgODMwIDAgNjgzIDgyMCA4MzYgMzcyIDAgMCA2MzcgOTk1IDgz
NiA4NTAgNzMyIDAgNzcwIDcyMCA2ODIgODEyIDc3MyAwIDAgMCAwIDAgMCAwIDAgMCAwIDY3
NCA3MTUgNTkyIDcxNSA2NzggMCA3MTUgNzExIDM0MiAwIDY2NSAzNDIgMTA0MSA3MTEgNjg3
IDcxNSA3MTUgNDkzIDU5NSA0NzggNzExIDY1MSAwIDY0NSA2NTEgNTgyIF0KICAgIC9Ub1Vu
aWNvZGUgMTAgMCBSCj4+CmVuZG9iagoxMyAwIG9iago8PCAvTGVuZ3RoIDE0IDAgUgogICAv
RmlsdGVyIC9GbGF0ZURlY29kZQogICAvTGVuZ3RoMSAxMjYwNAo+PgpzdHJlYW0KeJzlenl8
FFW2/7331K3qql6r0521k+6k0wkhLDEhQACljYAsDgZZBBQNGiLiQhBZA4ZlICBg2BIUESIE
RECMyGCCcSWyGFBnAJ+M+FAB0TFixoeDE5Kbd6o7QfTNvN+fv8/v8+vq27XXvfcs3/M9p5pQ
QohGFhAgvgcfm1j0xabKgYQkbyKEjX9w5pM+8nB8DiEpvxBCRWHRQ49N6zFzCiGdcJ/sfujR
OYVaSe1juL2HEH/T5EkTC6yu248TklaFx3pOxgPWLco23D+L+8mTH3tydrPP8yQhnXGXfPbo
1AcnEtjzCe5/hvtnH5s4u0jaJk8jJH0/7vuKnphU1Ff5O26mnyKETyaMFIoKqZBX4WgVEhu0
SNeIfI2aeAmTSPf6U403EcepxlONGRF6oh5I1BMLJdIyHeJaLooKxfbLT0/IaYSSY/isLH6a
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
8GBY16Cu0/SgoR+oHxCnvqv67NfWfhXjqmDNuhp1DXNNzWUth1qaOho6mrkauZYeLDwozkph
Voo6CjqavWj0oqmp6wxH+hwRp38N/7oj7sBhvENccW4Kc9Ocp8Y8Hefj6nzIt+Ab1jKo5ch3
4Bv2a9CvHqgzoBb76tCXIl9VPuOmxtmvQr+WHAuO4mwVZmvJLweW82sLsaZ4T9/77685l9Wv
j67uPLZ9TvH7Xa7Liqz6+wsBB+xDCmVuZHN0cmVhbQplbmRvYmoKMTYgMCBvYmoKICAgNDY3
CmVuZG9iagoxNyAwIG9iago8PCAvVHlwZSAvRm9udERlc2NyaXB0b3IKICAgL0ZvbnROYW1l
IC9TTVZGU0crRGVqYVZ1U2FucwogICAvRm9udEZhbWlseSAoRGVqYVZ1IFNhbnMpCiAgIC9G
bGFncyAzMgogICAvRm9udEJCb3ggWyAtMTAyMCAtNDYyIDE3OTMgMTIzMiBdCiAgIC9JdGFs
aWNBbmdsZSAwCiAgIC9Bc2NlbnQgOTI4CiAgIC9EZXNjZW50IC0yMzUKICAgL0NhcEhlaWdo
dCAxMjMyCiAgIC9TdGVtViA4MAogICAvU3RlbUggODAKICAgL0ZvbnRGaWxlMiAxMyAwIFIK
Pj4KZW5kb2JqCjcgMCBvYmoKPDwgL1R5cGUgL0ZvbnQKICAgL1N1YnR5cGUgL1RydWVUeXBl
CiAgIC9CYXNlRm9udCAvU01WRlNHK0RlamFWdVNhbnMKICAgL0ZpcnN0Q2hhciAzMgogICAv
TGFzdENoYXIgMTIxCiAgIC9Gb250RGVzY3JpcHRvciAxNyAwIFIKICAgL0VuY29kaW5nIC9X
aW5BbnNpRW5jb2RpbmcKICAgL1dpZHRocyBbIDMxNyAwIDAgMCAwIDAgMCAwIDM5MCAzOTAg
MCAwIDMxNyAzNjAgMzE3IDMzNiA2MzYgNjM2IDYzNiA2MzYgNjM2IDYzNiA2MzYgMCA2MzYg
MCAzMzYgMCAwIDAgMCAwIDAgNjg0IDY4NiAwIDAgNjMxIDAgNzc0IDAgMjk0IDAgMCAwIDg2
MiA3NDggMCA2MDMgNzg3IDY5NCA2MzQgNjEwIDczMSAwIDAgNjg1IDYxMCAwIDAgMCAwIDAg
NTAwIDAgNjEyIDYzNCA1NDkgNjM0IDYxNSAwIDYzNCA2MzMgMjc3IDAgNTc5IDI3NyA5NzQg
NjMzIDYxMSA2MzQgMCA0MTEgNTIwIDM5MiA2MzMgMCA4MTcgNTkxIDU5MSBdCiAgICAvVG9V
bmljb2RlIDE1IDAgUgo+PgplbmRvYmoKMSAwIG9iago8PCAvVHlwZSAvUGFnZXMKICAgL0tp
ZHMgWyAyIDAgUiBdCiAgIC9Db3VudCAxCj4+CmVuZG9iagoxOCAwIG9iago8PCAvUHJvZHVj
ZXIgKGNhaXJvIDEuMTYuMCAoaHR0cHM6Ly9jYWlyb2dyYXBoaWNzLm9yZykpCiAgIC9DcmVh
dGlvbkRhdGUgKEQ6MjAyMTA3MDkxMzM1MzgrMDInMDApCj4+CmVuZG9iagoxOSAwIG9iago8
PCAvVHlwZSAvQ2F0YWxvZwogICAvUGFnZXMgMSAwIFIKPj4KZW5kb2JqCnhyZWYKMCAyMAow
MDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAwMjMwMjggMDAwMDAgbiAKMDAwMDAwMjYwMyAwMDAw
MCBuIAowMDAwMDAyNDQzIDAwMDAwIG4gCjAwMDAwMDAwMTUgMDAwMDAgbiAKMDAwMDAwMjQy
MCAwMDAwMCBuIAowMDAwMDExOTQ5IDAwMDAwIG4gCjAwMDAwMjI1MjggMDAwMDAgbiAKMDAw
MDAwMjgyMiAwMDAwMCBuIAowMDAwMDExMTEwIDAwMDAwIG4gCjAwMDAwMTExMzMgMDAwMDAg
biAKMDAwMDAxMTY1MCAwMDAwMCBuIAowMDAwMDExNjczIDAwMDAwIG4gCjAwMDAwMTI0NDMg
MDAwMDAgbiAKMDAwMDAyMTY2MyAwMDAwMCBuIAowMDAwMDIxNjg3IDAwMDAwIG4gCjAwMDAw
MjIyMzMgMDAwMDAgbiAKMDAwMDAyMjI1NiAwMDAwMCBuIAowMDAwMDIzMDkzIDAwMDAwIG4g
CjAwMDAwMjMyMTAgMDAwMDAgbiAKdHJhaWxlcgo8PCAvU2l6ZSAyMAogICAvUm9vdCAxOSAw
IFIKICAgL0luZm8gMTggMCBSCj4+CnN0YXJ0eHJlZgoyMzI2MwolJUVPRgo=
--------------D7DCB12A20BA5C2C6315F382
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------D7DCB12A20BA5C2C6315F382--
