Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D21169687
	for <lists+usrp-users@lfdr.de>; Sun, 23 Feb 2020 08:24:07 +0100 (CET)
Received: from [::1] (port=59830 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j5lcN-0004Vm-6x; Sun, 23 Feb 2020 02:23:59 -0500
Received: from mail-wm1-f42.google.com ([209.85.128.42]:35969)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j5lcJ-0004R3-P0
 for usrp-users@lists.ettus.com; Sun, 23 Feb 2020 02:23:55 -0500
Received: by mail-wm1-f42.google.com with SMTP id p17so6098739wma.1
 for <usrp-users@lists.ettus.com>; Sat, 22 Feb 2020 23:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-language:thread-index;
 bh=bfHT+reCHOcqifpAvT2xTA89H4gn5SzQE5nasmm1YKE=;
 b=hb81gSQkH0pWEfLjLUfN8qox0OnDYD7gqNxipakgrsN7d8WjkpE5tRAoEVU/4rOEQu
 xOwO93Yd2/w7Ui/u/o2F/kymExswdJTJg+4MPj7icz7UkWOwcQC3P8nxBcx1FOUrX6dH
 yTBCG4YxJctRi/YlnNcM0pbN9r6JC7CWg1YWPMcjVR4B7WL1PeHmtXMudmDamAIyZIq4
 UoPdU0JJzymAuMy8sqgODOXY1r5aqfwJl8LKrlAepYZZOLFJUO+rjMAnHaUO6HXb+Ze6
 2xGdw5gnRdFLc3AKxU6PjYosGqCELVsl1R3POBl9zoZC7XzoDc4cWXYz0LpZBPaAXW3I
 APTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-language:thread-index;
 bh=bfHT+reCHOcqifpAvT2xTA89H4gn5SzQE5nasmm1YKE=;
 b=d9iLjzhS++xExC7dKEWexBVLPh1MaqWYLjgY+hu9F9FhptRTMp+a6GwP50GWmVlWlt
 kAgNe2e+5y2DPS6zabXZncw0Ukphd/9T5Y7Kt9KQyxf7FsqaVEoIZHW5tqEhOqtKTjcq
 IcBwvKGwvaMe+EgyupvfptI6u8PnspDz3RtNc4niRZ2++aRHrR0TGIi4DFLaY3b+uaKn
 jTwVIveaLZ2yUrtsMYLFmbThxsRF3+8RvF4YCvJnud97q+823wZNn2+nO8kRPE/uRAzw
 Tx+AGSHLoeQrrpNKoljgn7Y5T/zvF4W/Iu7jVb0F4rxL5TXn17Of/UvhN88/k/FKYVqV
 Y9VQ==
X-Gm-Message-State: APjAAAVzhzTf01Fb65Ghbt7AH0BaBgasa4Em000KrjYogWLO5C0F3Vn/
 a3rihBeNEEwfzZX1IUwdzD/M9lnWHqM=
X-Google-Smtp-Source: APXvYqwq1sB5atAy+am2u9fXnc3PoXlROwh/co6GjbhZWU9L2FNWyUHYrtuK5wqDMXuYBoONuIjWRg==
X-Received: by 2002:a7b:c750:: with SMTP id w16mr14259094wmk.46.1582442594465; 
 Sat, 22 Feb 2020 23:23:14 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id l17sm12007009wro.77.2020.02.22.23.23.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Feb 2020 23:23:13 -0800 (PST)
To: "'Michael Dickens'" <michael.dickens@ettus.com>
References: <105801d5e7ff$f7f2aa10$e7d7fe30$@sdr-radio.com>
 <CAGNhwTPXJP3j6xNmpjwom-+BEKf11Vv=EmYHxLK+Wd=o6YpCTw@mail.gmail.com>
In-Reply-To: <CAGNhwTPXJP3j6xNmpjwom-+BEKf11Vv=EmYHxLK+Wd=o6YpCTw@mail.gmail.com>
Date: Sun, 23 Feb 2020 07:23:11 -0000
Message-ID: <04d301d5ea1a$1adf0390$509d0ab0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AQDk0sAzSrXrVBWYNNDpVaYUXmmmUAJVzJxyqfffeNA=
Subject: Re: [USRP-users] UHD 3.15 LTS, X310 performance
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
Cc: 'USRP list' <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7397378164363351195=="
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

--===============7397378164363351195==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04D4_01D5EA1A.1ADFC6E0"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_04D4_01D5EA1A.1ADFC6E0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

Some feedback: I=E2=80=99ve been reading the UHD code and now have the =
X310 running well albeit at 20Msps as the user has only GigE, but =
he=E2=80=99s buying a 10 GigE card  and does have a =
=E2=80=98stonking=E2=80=99 Windows PC so I=E2=80=99ll document the =
experience. I expect we=E2=80=99ll stream sustained at 50 Msps, quite =
possibly much more.

=20

My B200 is streaming superbly at 28 Msps on a mid-range PC.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Michael Dickens <michael.dickens@ettus.com>=20

=20

Hi Simon - When you say "but performance is not great" ... beyond CPU =
load: do you get good Tx and Rx rates (e.g., if you run =
"benchmark_rate") without underruns / overflows / late packets (etc)? =
What is the MTU set to for this ENET link? 1 GbE or 10 GbE? Can you =
provide a little more detail for us to work with here? Thx! - MLD


------=_NextPart_000_04D4_01D5EA1A.1ADFC6E0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
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
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
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
	{mso-list-id:317422409;
	mso-list-template-ids:-383384836;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Some =
feedback: I=E2=80=99ve been reading the UHD code and now have the X310 =
running well albeit at 20Msps as the user has only GigE, but =
he=E2=80=99s buying a 10 GigE card=C2=A0 and does have a =
=E2=80=98stonking=E2=80=99 Windows PC so I=E2=80=99ll document the =
experience. I expect we=E2=80=99ll stream sustained at 50 Msps, quite =
possibly much more.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>My B200 is =
streaming superbly at 28 Msps on a mid-range PC.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Michael Dickens &lt;michael.dickens@ettus.com&gt; =
<o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>Hi Simon - When you say &quot;but performance is not =
great&quot; ... beyond CPU load: do you get good Tx and Rx rates (e.g., =
if you run &quot;benchmark_rate&quot;) without underruns / overflows / =
late packets (etc)? What is the MTU set to for this ENET link? 1 GbE or =
10 GbE? Can you provide a little more detail for us to work with here? =
Thx! - MLD<o:p></o:p></p></div></div></body></html>
------=_NextPart_000_04D4_01D5EA1A.1ADFC6E0--



--===============7397378164363351195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7397378164363351195==--


