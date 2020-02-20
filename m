Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF1216608F
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2020 16:12:03 +0100 (CET)
Received: from [::1] (port=44686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4nUa-00062U-Og; Thu, 20 Feb 2020 10:11:56 -0500
Received: from mail-wr1-f45.google.com ([209.85.221.45]:42844)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j4nUX-0005x1-CX
 for usrp-users@lists.ettus.com; Thu, 20 Feb 2020 10:11:53 -0500
Received: by mail-wr1-f45.google.com with SMTP id k11so4994546wrd.9
 for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2020 07:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version:thread-index
 :content-language;
 bh=Dya1LFSvF9I89wQuZM4b8FrNNdE+dhfMOcFbAL3RoXw=;
 b=P45PypNkgFQPDmQGr79qXEo+DmGHOVcne0b8BuaDhHO5z/1RdG1c16ukkJNaRAkOBE
 ffbrhbyZqtfJO1+4QwGiYxT8B0YHycPoz2jH9tc4Sb+Q8EwpoUmofnt3HusRuth7Ghr9
 aZeJ+0w+SyjEzMyz0tM8jxDQWJtmE0RgeWFG4mgiUU+cgqKmvSDhxyxgnaFxS3Gni6wG
 J0QGm93EasmdYw6l34EMcli+UzKd6yRFlT4oFw2qBIHgNNqvhmc1fZScBOdQNeCIMI/m
 SajOVzJP0tjgXPWLIGW+42mOWuE4va0o02EntJhViM+FTLRfEz06+tpM3+OWkSg5gA+k
 NjUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=Dya1LFSvF9I89wQuZM4b8FrNNdE+dhfMOcFbAL3RoXw=;
 b=FcE3962zH5dgWNukGnwJ1VKF02U0zf3lW8xo4zK/w8WF3DC0jqOcuZqjHSY67tEL1u
 U4hn6VIYh3/iT7++OBOJQgGOyk/oHrZ7sGxA+ng6BwTzOeThREI2jdsVTasluQqvv03B
 YRqRdmVU1w1g3zcb4chl2dli/umuGpSQq/EinxH8D39ILxMfjEcivPkC6lGDWduGu7la
 1HLDGuBeCdBYjhJEP0gwLCTOEX4YFF0ckA/jmbV7hJpMcx1FQTJJp+SXG2+qJx8qf1K4
 S2wRkJJtz3yb7bI5I7/R6fo8ocODgvBFAQ8AgDcaWhlwQuh8Fs964DfXmfreXGTU9N8e
 kRUw==
X-Gm-Message-State: APjAAAWAIs50f26l7KvQQ0o+LtTlxVN9EwDYeItgzF+jiQimNcXGMGYX
 0YBQ1Ax1YUzFzL/Np0ElUwGHiLfcQRo=
X-Google-Smtp-Source: APXvYqxNZNwWbQVDOqWnKQt7CloSga9qbous297SclacJE0YaArfh/OcxNkNi+pvu6Oocm/ps4SAGw==
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr42162396wrw.126.1582211471894; 
 Thu, 20 Feb 2020 07:11:11 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id y8sm4597495wma.10.2020.02.20.07.11.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 07:11:05 -0800 (PST)
To: <usrp-users@lists.ettus.com>
Date: Thu, 20 Feb 2020 15:11:01 -0000
Message-ID: <105801d5e7ff$f7f2aa10$e7d7fe30$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdXn/rPxloAjIPzCTbut1kmicd8QyQ==
Content-Language: en-gb
Subject: [USRP-users] UHD 3.15 LTS, X310 performance
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
From: Simon G4ELI via USRP-users <usrp-users@lists.ettus.com>
Reply-To: simon@sdr-radio.com
Content-Type: multipart/mixed; boundary="===============2176021630122239952=="
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

This is a multipart message in MIME format.

--===============2176021630122239952==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1059_01D5E7FF.F7F36D60"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_1059_01D5E7FF.F7F36D60
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

Now using UDB 3.15 LTZ instead of UHD 4.0 and a user's X310 works but
performance is not great:

 

*	CPU load high,
*	MTU size results in only 364 samples per buffer which I believe to
indirectly cause the high CPU.

 

I've not found much on the Ettus site apart from ensuring the MTU size is
correct, so the question is: how on earth do I get better streaming from the
X310?

 

As I'm compiling 3.15 LTS from source making changes is easy.

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 


------=_NextPart_000_1059_01D5E7FF.F7F36D60
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:90590279;
	mso-list-type:hybrid;
	mso-list-template-ids:1871505132 -1025472376 134807555 134807557 =
134807553 134807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Now using =
UDB 3.15 LTZ instead of UHD 4.0 and a user&#8217;s X310 works but =
performance is not great:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><ul style=3D'margin-top:0cm' =
type=3Ddisc><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo1'>CPU load =
high,<o:p></o:p></li><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo1'>MTU size results in =
only 364 samples per buffer which I believe to indirectly cause the high =
CPU.<o:p></o:p></li></ul><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I&#8217;ve not found much on the Ettus site apart from =
ensuring the MTU size is correct, so the question is: how on earth do I =
get better streaming from the X310?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>As I&#8217;m =
compiling 3.15 LTS from source making changes is easy.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>Simon Brown, =
G4ELI<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>https://www.sdr-radio.com<o:p></o:p>=
</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_1059_01D5E7FF.F7F36D60--



--===============2176021630122239952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2176021630122239952==--


