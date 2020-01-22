Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7595145D28
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2020 21:33:01 +0100 (CET)
Received: from [::1] (port=35688 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuMgL-0001F1-EB; Wed, 22 Jan 2020 15:32:57 -0500
Received: from mailhub4.oit.umass.edu ([128.119.9.232]:50472)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <xingjian@umass.edu>)
 id 1iuMgH-0001AB-GD; Wed, 22 Jan 2020 15:32:53 -0500
Received: from mailhub4.oit.umass.edu (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 1ABE7C02386E;
 Wed, 22 Jan 2020 15:31:53 -0500 (EST)
Received: from exchange.umass.edu (it-ex2016-srv4.campus.ads.umass.edu
 [128.119.228.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (Client CN "exchange.umass.edu", Issuer "InCommon RSA Server CA" (verified OK))
 by mailhub4.oit.umass.edu (Postfix) with ESMTPS id 0B833C023846;
 Wed, 22 Jan 2020 15:31:53 -0500 (EST)
Received: from it-ex2016-srv2.campus.ads.umass.edu (128.119.228.43) by
 it-ex2016-srv4.campus.ads.umass.edu (128.119.228.45) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1779.2; Wed, 22 Jan 2020 15:31:52 -0500
Received: from it-ex2016-srv2.campus.ads.umass.edu ([128.119.228.43]) by
 it-ex2016-srv2.campus.ads.umass.edu ([128.119.228.43]) with mapi id
 15.01.1779.004; Wed, 22 Jan 2020 15:31:52 -0500
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>,
 "usrp-users-bounces@lists.ettus.com" <usrp-users-bounces@lists.ettus.com>
Thread-Topic: E312 RFNOC timed command for setup gain
Thread-Index: AQHV0WLg1yTs5IkxZ0W//iiOWyibug==
Date: Wed, 22 Jan 2020 20:31:52 +0000
Message-ID: <2dc6ba577fbc40a293a79f46616d930f@umass.edu>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.119.8.133]
MIME-Version: 1.0
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
 HTML_70_90 0.1, HTML_NO_HTTP 0.1, BODYTEXTH_SIZE_10000_LESS 0,
 BODYTEXTP_SIZE_3000_LESS 0, BODYTEXTP_SIZE_400_LESS 0, BODY_SIZE_2000_2999 0,
 BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, FROM_EDU_TLD 0, NO_CTA_FOUND 0,
 NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, WEBMAIL_SOURCE 0,
 WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __BODY_TEXT_X4 0, __CT 0,
 __CTYPE_HAS_BOUNDARY 0, __CTYPE_MULTIPART 0, __CTYPE_MULTIPART_ALT 0,
 __HAS_FROM 0, __HAS_HTML 0, __HAS_MSGID 0, __HAS_XOIP 0, __MIME_HTML 0,
 __MIME_TEXT_H 0, __MIME_TEXT_H1 0, __MIME_TEXT_H2 0, __MIME_TEXT_P 0,
 __MIME_TEXT_P1 0, __MIME_TEXT_P2 0, __MIME_VERSION 0, __MSGID_32HEX 0,
 __SANE_MSGID 0, __STYLE_RATWARE_NEG 0, __SUBJ_ALPHA_END 0, __TAG_EXISTS_HTML 0,
 __TO_MALFORMED_2 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
X-WhitelistedRCPT-nohdrfromcallback: Yes
Subject: [USRP-users] E312 RFNOC timed command for setup gain
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
From: Xingjian Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xingjian Chen <xingjian@umass.edu>
Content-Type: multipart/mixed; boundary="===============4092305112450295727=="
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

--===============4092305112450295727==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2dc6ba577fbc40a293a79f46616d930fumassedu_"

--_000_2dc6ba577fbc40a293a79f46616d930fumassedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
Is there a way to use timed command for E312 rfnoc siggen module for setup =
gain?
I am trying something like below. Is this the right way? Thank you.

            uhd::time_spec_t cmd_time =3D time_ref + uhd::time_spec_t(i*256=
/28e6*10*2000*10);
            ctrl_siggen_ch0->set_command_time(cmd_time);
            ctrl_siggen_ch0->set_arg<int>("gain", 3086) ;


James

--_000_2dc6ba577fbc40a293a79f46616d930fumassedu_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div>Hi,</div>
<div>Is there a way to use timed command for E312 rfnoc siggen module&nbsp;=
for setup gain?&nbsp;</div>
<div>I am trying something like below. Is this the right way?&nbsp;Thank yo=
u.&nbsp;</div>
<div><br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; uhd::time_spec_t cmd_time =
=3D time_ref &#43; uhd::time_spec_t(i*256/28e6*10*2000*10);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ctrl_siggen_ch0-&gt;set_comm=
and_time(cmd_time);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ctrl_siggen_ch0-&gt;set_arg&=
lt;int&gt;(&quot;gain&quot;, 3086) ;&nbsp;</div>
<br>
<p></p>
<p>James</p>
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
=3D"color:rgb(0,0,0)"><span style=3D"color:rgb(0,0,0)"></span></span></span=
></p>
</span></div>
</font></div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_2dc6ba577fbc40a293a79f46616d930fumassedu_--


--===============4092305112450295727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4092305112450295727==--

