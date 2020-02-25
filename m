Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BC416F0C7
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 22:00:48 +0100 (CET)
Received: from [::1] (port=52506 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6hJt-0007KI-62; Tue, 25 Feb 2020 16:00:45 -0500
Received: from mail-wr1-f46.google.com ([209.85.221.46]:39215)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <simon@sdr-radio.com>) id 1j6hJo-0007E2-Pk
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 16:00:40 -0500
Received: by mail-wr1-f46.google.com with SMTP id y17so337734wrn.6
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 13:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version:content-language
 :thread-index; bh=eC3NzQ2HzrQ4/isFMLEiWyac+ONTVWZVhSjLWhB+g7E=;
 b=1BnckbnZrXU0kSFZrJXRMqVzShmlddJLWqfU4RtopS6flOtv/SX/chv2vsVRUuy7xV
 jQs0ZuTGzGBtvWmg7cVXr2xxSyuNiEjBBjnIExtUDqY3slo19pMLRe+KSpszW9KoVX04
 y0TYLw0+9agWNdCbrA+wgb48QWSoqFTJJSTm9NUahY8z5bo7+Ds9TWiezl44IA2OA2c4
 CsA6pOwhViFZ/+c9/RFXQKp9w6GGWo6l/fGg5BLtu9GfG0inZ+VRAhYYL4cmu2oqpZiN
 pO12/v5iZPuwHuSmrnlt3VZnBtqBVvp/z/RSDTPWfSOxJkfMLhrUeLEwXZg2nYFqm6EN
 GwpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-language:thread-index;
 bh=eC3NzQ2HzrQ4/isFMLEiWyac+ONTVWZVhSjLWhB+g7E=;
 b=NLnW3HMS/zGlymcs3j5n7q339TAj1Ar2qD9VBLTJEj2OErRda+Q1ti1QX8IrZs16ab
 BaVb42YvsLaenwna0L+DyMXkD4mZ3HFBDtxDSb+CUEBgkSmk2Oyr/EgrBLGJMfTUU1dK
 upRzUmYyVc2N2C0zOmA48zhf9y/o3Ka2BdScsfz0o8xOpjqjwvwvugWONUG4JMGgSwSO
 J9UELxB/HEOq2X4LTm+NLBxTtgiEVmbuEGghXqgGO6JtIMdupKwUQR4TU0bHZC6lkLCT
 TwDcInyvj7EmJwXnBprUS+rZex79KDjUPg6axXJ0dTvw6PCL2GZN3hQnT+FyGP0UPFP3
 qGGg==
X-Gm-Message-State: APjAAAXeMhIaJoeLxfN3UoBMVOgEhn9X2jzhqr2s8dZuaVo3df/4xMIf
 pLakGGErZHJLS4OkPJddg5vusFpYtOM=
X-Google-Smtp-Source: APXvYqzlnre0PYxPFhicKAqRefbyokhz3+dGQhYO/cUcH9LvForBdw3ZqjTZpV4X9BNY+PM0/N0PEg==
X-Received: by 2002:a5d:4252:: with SMTP id s18mr920364wrr.380.1582664399229; 
 Tue, 25 Feb 2020 12:59:59 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id 133sm5873704wme.32.2020.02.25.12.59.58
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 12:59:58 -0800 (PST)
To: <usrp-users@lists.ettus.com>
Date: Tue, 25 Feb 2020 20:59:55 -0000
Message-ID: <245301d5ec1e$8889e490$999dadb0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AdXsHVqu+y5Fz5WGQUStmB3YewVigg==
Subject: [USRP-users] Closing Connection, X310 Problem
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
Content-Type: multipart/mixed; boundary="===============1681616399306390245=="
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

--===============1681616399306390245==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_2454_01D5EC1E.888C0770"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_2454_01D5EC1E.888C0770
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

Question is in two related parts.

 

 

1 Closing Connection

 

In 3.10.0 when I was finished streaming data I would call

 

1.	m_usrp->reset() and 
2.	m_rx_stream->reset()

 

but in 3.15 LTS I don't see a way to reset / discard the pointers returned
from uhd::usrp::multi_usrp::make and m_usrp->get_rx_stream. The reset calls
no longer exist.

 

So, how do I correctly do this? 

 

 

 

2 X310

 

[Note - only a problem with the X310, B200 works well]

 

When I want to change the sample rate, for example from 1 Msps to 10 Msps:

 

1.	Close (see above)
2.	Create new m_usrp via uhd::usrp::multi_usrp::make
3.	Set new sample rate
4.	Call m_usrp->get_rs_stream but I get an exception: exception
0000054F (1359), RuntimeError: On node 0/DDC_0, output port 0 is already
connected 

 

So this refers back to 1 - how do I get the connection to the X310 fully
closed?

 

 

TIA

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 


------=_NextPart_000_2454_01D5EC1E.888C0770
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
	{mso-list-id:1163278703;
	mso-list-type:hybrid;
	mso-list-template-ids:1368578720 134807567 134807577 134807579 =
134807567 134807577 134807579 134807567 134807577 134807579;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1467039996;
	mso-list-type:hybrid;
	mso-list-template-ids:-1858019480 134807553 134807555 134807557 =
134807553 134807555 134807557 134807553 134807555 134807557;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:2074110930;
	mso-list-type:hybrid;
	mso-list-template-ids:1733442374 134807567 134807555 134807557 =
134807553 134807555 134807557 134807553 134807555 134807557;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level9
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
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Question is =
in two related parts.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>1 Closing =
Connection<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>In 3.10.0 when I was finished streaming data I would =
call<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><ol =
style=3D'margin-top:0cm' start=3D1 type=3D1><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l2 level1 lfo3'>m_usrp-&gt;reset() and =
<o:p></o:p></li><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l2 level1 =
lfo3'>m_rx_stream-&gt;reset()<o:p></o:p></li></ol><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>but in 3.15 =
LTS I don&#8217;t see a way to reset / discard the pointers returned =
from uhd::usrp::multi_usrp::make and m_usrp-&gt;get_rx_stream. The reset =
calls no longer exist.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>So, how do I =
correctly do this? <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>2 =
X310<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>[Note &#8211; only a problem with the X310, B200 works =
well]<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>When I want to change the sample rate, for example =
from 1 Msps to 10 Msps:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><ol style=3D'margin-top:0cm' =
start=3D1 type=3D1><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo2'>Close (see =
above)<o:p></o:p></li><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo2'>Create new m_usrp via =
uhd::usrp::multi_usrp::make<o:p></o:p></li><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo2'>Set new sample =
rate<o:p></o:p></li><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo2'>Call =
m_usrp-&gt;get_rs_stream but I get an exception: exception 0000054F =
(1359), RuntimeError: On node 0/DDC_0, output port 0 is already =
connected <o:p></o:p></li></ol><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>So this =
refers back to 1 &#8211; how do I get the connection to the X310 fully =
closed?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>TIA<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>Simon Brown, =
G4ELI<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'>https://www.sdr-radio.com<o:p></o:p>=
</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_2454_01D5EC1E.888C0770--



--===============1681616399306390245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1681616399306390245==--


