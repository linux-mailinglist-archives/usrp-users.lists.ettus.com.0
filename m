Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id EDD8A338F36
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 14:56:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E8FE383B2F
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 08:56:11 -0500 (EST)
Received: from mx07-002baa02.pphosted.com (mx07-002baa02.pphosted.com [185.132.183.154])
	by mm2.emwd.com (Postfix) with ESMTPS id 7484B383AD1
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 08:54:58 -0500 (EST)
Received: from pps.filterd (m0205084.ppops.net [127.0.0.1])
	by mx08-002baa02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12CDpeud025877
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 14:54:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmv.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=gmvcom;
 bh=6qlysQeApM4/WJAJbhWTB5rjBn6YSVpP2+1qZpRU6Po=;
 b=QZqbDGPGusFoy7AHPZyoGcY1U1ey7eKzZtFIJR2X2Tfl/FvskoVfY/O2wfGRfHw8/p9X
 lHtLplMHX8wD8b168FaQQvQZLUXqFi9Ka3X9yzOlFEFFAG3lUUhR4yOOoUxHVlyhMFuz
 O7Oox3Qwsu8cbAm+AerZnCLxcFSjPzT8s9Ba5mFf/MgIS0WKxA4FDBZwiloYMY2fSK/h
 Tsx481FClLq0UQhTjlKOEY8l8sBSG//ENnU5slo/r3/17Q8rnU+Wf+Fc8+7U2WY7lV63
 VlGf1E8RkrUqDQePcuJWI78sIgc9sL/Xswh+DSVT7sZQiqQm3NGxk09E8LlN+IxPGi0Y mQ==
From: Oliver Towlson <oliver.towlson@gmvnsl.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Re: [USRP-users] X310 with dual TwinRX set up
Thread-Index: AdcXRy8+pPguC/VvTyKg6T33W9XRdg==
Date: Fri, 12 Mar 2021 13:54:55 +0000
Message-ID: <6ef5d9a0ee0c47018174fec87644c38b@gmvnsl.com>
Accept-Language: en-GB, es-ES, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-kse-serverinfo: PTMEXCH6.gmv.es, 9
x-kse-attachmentfiltering-interceptor-info: protection disabled
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 3/12/2021 8:00:00 AM
MIME-Version: 1.0
X-KSE-ServerInfo: ptmexch1.gmv.es, 9
X-KSE-AttachmentFiltering-Interceptor-Info: protection disabled
X-Proofpoint-Action: Received-Header-Sanitized
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-12_03:2021-03-10,2021-03-12 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
Message-ID-Hash: C5OY6ROCEA6RLKFHAJTCKCA2VFC226W6
X-Message-ID-Hash: C5OY6ROCEA6RLKFHAJTCKCA2VFC226W6
X-MailFrom: oliver.towlson@gmvnsl.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with dual TwinRX set up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C5OY6ROCEA6RLKFHAJTCKCA2VFC226W6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8803491742486345762=="

--===============8803491742486345762==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6ef5d9a0ee0c47018174fec87644c38bgmvnslcom_"

--_000_6ef5d9a0ee0c47018174fec87644c38bgmvnslcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everyone

Thanks so much for your quick responses. Seems like the thing we were missi=
ng was that subdev spec - once that was set it was straightforward to gener=
ate the code.

We tried running it and got the following:

[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.=
0.0-2build5
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1301 MB/s)
[INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[WARNING] [X300] Cannot update master clock rate! X300 Series does not allo=
w changing the clock rate during runtime.
terminate called after throwing an instance of 'uhd::io_error'
  what():  EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no respons=
e packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D long =
unsigned int]
  at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:151

Aborted (core dumped)

Googling didn't result in any answers beyond resetting the whole device. Bu=
t it does seem like a common error. As you say, the 4xRF_in set-up is fairl=
y standard so I'm not sure what is causing the issue. The example rx_sample=
s_to_file script runs fine (although it doesn't seem to write anything, but=
 it does seems to stream data fine)

Let me know if you need any more information.

Thanks very much

Oliver

P Please consider the environment before printing this e-mail.

--_000_6ef5d9a0ee0c47018174fec87644c38bgmvnslcom_
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
<style><!--
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hi everyone
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thanks so much for your quick responses. Seems like=
 the thing we were missing was that subdev spec &#8211; once that was set i=
t was straightforward to generate the code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">We tried running it and got the following:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [UHD] linux; GNU C&#43;&#43; version 9.2.=
1 20200304; Boost_107100; UHD_3.15.0.0-2build5<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [X300] X300 initialization sequence...<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [X300] Maximum frame size: 8000 bytes.<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [X300] Maximum frame size: 8000 bytes.<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [X300] Radio 1x clock: 200 MHz<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [X300] Radio 1x clock: 200 MHz<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/DmaFIFO_0] Initializing block control =
(NOC ID: 0xF1F0D00000000000)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 13=
17 MB/s)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 13=
01 MB/s)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/Radio_0] Initializing block control (N=
OC ID: 0x12AD100000000001)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/Radio_1] Initializing block control (N=
OC ID: 0x12AD100000000001)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/DDC_0] Initializing block control (NOC=
 ID: 0xDDC0000000000000)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/DDC_1] Initializing block control (NOC=
 ID: 0xDDC0000000000000)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/DUC_0] Initializing block control (NOC=
 ID: 0xD0C0000000000000)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[INFO] [1/DUC_1] Initializing block control (NOC=
 ID: 0xD0C0000000000000)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">[WARNING] [X300] Cannot update master clock rate=
! X300 Series does not allow changing the clock rate during runtime.<o:p></=
o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">terminate called after throwing an instance of '=
uhd::io_error'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">&nbsp; what():&nbsp; EnvironmentError: IOError: =
Block ctrl (CE_00_Port_30) no response packet - AssertionError: bool(buff)<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">&nbsp; in uint64_t ctrl_iface_impl&lt;_endiannes=
s&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endianness =3D u=
hd::ENDIANNESS_BIG; uint64_t =3D long unsigned int]<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">&nbsp; at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/li=
b/rfnoc/ctrl_iface.cpp:151<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">Aborted (core dumped)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Googling didn&#8217;t result in any answers beyond =
resetting the whole device. But it does seem like a common error. As you sa=
y, the 4xRF_in set-up is fairly standard so I&#8217;m not
 sure what is causing the issue. The example rx_samples_to_file script runs=
 fine (although it doesn&#8217;t seem to write anything, but it does seems =
to stream data fine)</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Verdana&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Let me know if you need any more information.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thanks very much<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Oliver</span><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Verdana&quot;,sans-serif"><o:p></o:p></span></p>
</div>
<span style=3D""><br>
</span><span style=3D"font-size:18.0pt; line-height:125%; font-family:Webdi=
ngs; color:green">P<span style=3D""></span>
<span style=3D"font-size:7.0pt; line-height:125%; font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;; color:green">
Please consider the environment before printing this e-mail.</span></span><=
span style=3D""></span>
</body>
</html>

--_000_6ef5d9a0ee0c47018174fec87644c38bgmvnslcom_--

--===============8803491742486345762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8803491742486345762==--
