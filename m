Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA3ECCD75
	for <lists+usrp-users@lfdr.de>; Sun,  6 Oct 2019 02:22:55 +0200 (CEST)
Received: from [::1] (port=58316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iGuK1-00052S-KK; Sat, 05 Oct 2019 20:22:49 -0400
Received: from mailhub3.oit.umass.edu ([128.119.9.231]:59946)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <xingjian@umass.edu>) id 1iGuJx-0004xk-Gp
 for USRP-users@lists.ettus.com; Sat, 05 Oct 2019 20:22:45 -0400
Received: from mailhub3.oit.umass.edu (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 2EA00C021D68
 for <USRP-users@lists.ettus.com>; Sat,  5 Oct 2019 20:22:05 -0400 (EDT)
Received: from exchange.umass.edu (it-ex2016-srv3.campus.ads.umass.edu
 [128.119.228.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client CN "exchange.umass.edu", Issuer "InCommon RSA Server CA" (verified OK))
 by mailhub3.oit.umass.edu (Postfix) with ESMTPS id 0F8FFC01FF02
 for <USRP-users@lists.ettus.com>; Sat,  5 Oct 2019 20:22:05 -0400 (EDT)
Received: from it-ex2016-srv2.campus.ads.umass.edu (128.119.228.43) by
 it-ex2016-srv3.campus.ads.umass.edu (128.119.228.44) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1779.2; Sat, 5 Oct 2019 20:22:04 -0400
Received: from it-ex2016-srv2.campus.ads.umass.edu ([128.119.228.43]) by
 it-ex2016-srv2.campus.ads.umass.edu ([128.119.228.43]) with mapi id
 15.01.1779.004; Sat, 5 Oct 2019 20:22:04 -0400
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: How to add gcc compile argument in Makefile for UHD CPP for E312?
Thread-Index: AQHVbO7hz8jmKlFf40aDxfB9hJs51adM3Oxl
Date: Sun, 6 Oct 2019 00:22:04 +0000
Message-ID: <11df2df0e4a940b08bf5f3e0f83712b8@umass.edu>
References: <24461_1568680669_5D802ADD_24461_6085_1_5e7d1cd915ac4adcad6d521f2372f749@umass.edu>
In-Reply-To: <24461_1568680669_5D802ADD_24461_6085_1_5e7d1cd915ac4adcad6d521f2372f749@umass.edu>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.119.8.133]
MIME-Version: 1.0
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_50_70 0.1, HTML_NO_HTTP 0.1, BODYTEXTH_SIZE_10000_LESS 0,
 BODYTEXTH_SIZE_3000_MORE 0, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_6000_6999 0,
 BODY_SIZE_7000_LESS 0, FROM_EDU_TLD 0, IN_REP_TO 0, MSG_THREAD 0,
 NO_URI_HTTPS 0, REFERENCES 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0,
 WEBMAIL_X_IP_HDR 0, __ANY_URI 0, __BODY_TEXT_X4 0, __BOUNCE_CHALLENGE_SUBJ 0,
 __BOUNCE_NDR_SUBJ_EXEMPT 0, __CT 0, __CTYPE_HAS_BOUNDARY 0,
 __CTYPE_MULTIPART 0, __CTYPE_MULTIPART_ALT 0, __FRAUD_MONEY_CURRENCY 0,
 __FRAUD_MONEY_CURRENCY_DOLLAR 0, __HAS_FROM 0, __HAS_HTML 0, __HAS_MSGID 0,
 __HAS_REFERENCES 0, __HAS_XOIP 0, __IN_REP_TO 0, __MAIL_CHAIN 0, __MIME_HTML 0,
 __MIME_TEXT_H 0, __MIME_TEXT_H1 0, __MIME_TEXT_H2 0, __MIME_TEXT_P 0,
 __MIME_TEXT_P1 0, __MIME_TEXT_P2 0, __MIME_VERSION 0, __MSGID_32HEX 0,
 __REFERENCES 0, __SANE_MSGID 0, __STYLE_RATWARE_NEG 0, __SUBJ_ALPHA_NEGATE 0,
 __TAG_EXISTS_HTML 0, __TO_MALFORMED_2 0, 
 __TO_NO_NAME 0, __URI_NO_WWW 0'
Subject: Re: [USRP-users] How to add gcc compile argument in Makefile for
 UHD CPP for E312?
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
From: Xingjian Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xingjian Chen <xingjian@umass.edu>
Content-Type: multipart/mixed; boundary="===============4331269585269851508=="
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

--===============4331269585269851508==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_11df2df0e4a940b08bf5f3e0f83712b8umassedu_"

--_000_11df2df0e4a940b08bf5f3e0f83712b8umassedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Boost.python and python.h can be added in cmake file.

In uhd/host/example/CMakeLists.txt, add and python library as below solved =
the question.
#for each source: build an executable and install
FOREACH(example_source ${example_sources})
    find_package(PythonLibs REQUIRED) # Added
    include_directories(${PYTHON_INCLUDE_DIRS}) # Added
    GET_FILENAME_COMPONENT(example_name ${example_source} NAME_WE)
    ADD_EXECUTABLE(${example_name} ${example_source})
    TARGET_LINK_LIBRARIES(${example_name} uhd ${Boost_LIBRARIES})
    target_link_libraries(${example_name} ${PYTHON_LIBRARIES} ) # Added
    UHD_INSTALL(TARGETS ${example_name} RUNTIME DESTINATION ${PKG_LIB_DIR}/=
examples COMPONENT examples)
ENDFOREACH(example_source)

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Xingjian=
 Chen via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, September 16, 2019 8:36:45 PM
To: USRP-users@lists.ettus.com; usrp-users-bounces@lists.ettus.com
Subject: [USRP-users] How to add gcc compile argument in Makefile for UHD C=
PP for E312?


Hi there,

Good evening. I have a special need to embed python code in CPP for my E312=
 because I want to do some data processing and generate a waveform. In orde=
r to do so, <Python.h> must be included as header, however it requires chan=
ging the gcc compiler argument. Could someone point me in which file I can =
add the gcc arguments? The argument needed to be added should be something =
like below. Thank you in advance.

gcc mycode.cpp -o mycode -lpython2.7 -lm -L/usr/lib/python2.7/config/ -I/us=
r/include/python2.7/


Best

James

--_000_11df2df0e4a940b08bf5f3e0f83712b8umassedu_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div><span style=3D"font-size: 12pt;">Boost.python and python.h can be adde=
d in cmake file.&nbsp;</span></div>
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
<div><span style=3D"font-size: 12pt;">In uhd/host/example/CMakeLists.txt, a=
dd and&nbsp;python library as below solved the question.</span><br>
</div>
<div>
<div>#for each source: build an executable and install</div>
<div>FOREACH(example_source ${example_sources})</div>
<div><b>&nbsp; &nbsp; find_package(PythonLibs REQUIRED) # Added&nbsp;</b></=
div>
<div><b>&nbsp; &nbsp; include_directories(${PYTHON_INCLUDE_DIRS}) # Added&n=
bsp;</b></div>
<div>&nbsp; &nbsp; GET_FILENAME_COMPONENT(example_name ${example_source} NA=
ME_WE)</div>
<div>&nbsp; &nbsp; ADD_EXECUTABLE(${example_name} ${example_source})</div>
<div>&nbsp; &nbsp; TARGET_LINK_LIBRARIES(${example_name} uhd ${Boost_LIBRAR=
IES})</div>
<div>&nbsp; &nbsp; <b>target_link_libraries(${example_name} ${PYTHON_LIBRAR=
IES} ) # Added&nbsp;</b></div>
<div>&nbsp; &nbsp; UHD_INSTALL(TARGETS ${example_name} RUNTIME DESTINATION =
${PKG_LIB_DIR}/examples COMPONENT examples)</div>
<div>ENDFOREACH(example_source)</div>
<br>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Xingjian Chen via USRP-users =
&lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, September 16, 2019 8:36:45 PM<br>
<b>To:</b> USRP-users@lists.ettus.com; usrp-users-bounces@lists.ettus.com<b=
r>
<b>Subject:</b> [USRP-users] How to add gcc compile argument in Makefile fo=
r UHD CPP for E312?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p>Hi there,</p>
<p>Good evening.&nbsp;I have a special need to embed python code in CPP for=
&nbsp;my E312 because I want to do some data processing and generate a wave=
form. In order to do so,&nbsp;&lt;Python.h&gt; must be included as header, =
however it&nbsp;requires changing the gcc&nbsp;compiler argument.
 Could someone point me in which file I can add the gcc arguments? The argu=
ment needed to be added should be something like below. Thank you in advanc=
e.&nbsp;</p>
<p><span>gcc mycode.cpp -o <span style=3D"font-family: Calibri, Helvetica, =
sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&=
quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quo=
t;, EmojiSymbols; font-size: 16px;">
mycode</span> <b style=3D"">-lpython2.7 -lm -L/usr/lib/python2.7/config/ -I=
/usr/include/python2.7/</b></span><br>
</p>
<p><span><b style=3D""><br>
</b></span></p>
<p><span>Best</span></p>
<p><span>James</span></p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif, EmojiF=
ont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEm=
oji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"=
>
<div style=3D"font-size:12pt; color:#000000; background-color:#FFFFFF; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"BodyFragment"><font size=3D"2" style=3D"font-size:10pt">
<div class=3D"PlainText"><span style=3D"font-size:9pt; color:rgb(0,0,0)">
<p style=3D""><span style=3D"font-size:9pt; color:rgb(0,0,0)"><span style=
=3D"font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"><span=
 style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; color:rgb(0,0,0)"=
><span style=3D"color:rgb(0,0,0)"></span></span></span></span></p>
<p style=3D""><span style=3D"font-size:9pt; color:rgb(0,0,0)"><span style=
=3D"color:rgb(0,0,0)"><span style=3D"color:rgb(0,0,0)"></span></span></span=
></p>
</span></div>
</font></div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_11df2df0e4a940b08bf5f3e0f83712b8umassedu_--


--===============4331269585269851508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4331269585269851508==--

