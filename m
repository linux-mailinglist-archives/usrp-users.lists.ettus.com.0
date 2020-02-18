Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D305F162B25
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 17:55:26 +0100 (CET)
Received: from [::1] (port=47976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j469b-0005wI-7y; Tue, 18 Feb 2020 11:55:23 -0500
Received: from mail-wm1-f49.google.com ([209.85.128.49]:36428)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j469X-0005pS-84
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 11:55:19 -0500
Received: by mail-wm1-f49.google.com with SMTP id p17so3711928wma.1
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 08:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-language:thread-index;
 bh=N1xb1F1TFXxgnkIC5JIw/KdQw3/NtOxnzapuGJ29DtU=;
 b=m292yk+yKMVPb6FTsfjxN69vnXhvFH6JCgAYf770UvY4o3hLEGP7wTNtETukgiQvSv
 n8+6+eJ7ay/kf8U7GYj3nMu8WmWfqqKwNKjW9VuqUP3ucunlNfv1Ba4mKKFD4c9qMxSk
 ezEGuFchoDSbIL1eP6HZw/YLWYh2fv5F8xuGJt8PdfodTxzFbSYdLrncmaSQNTRF/xLy
 XzbvOmH1eRshFp32/xYzM6BOciZdKg9gC0ZQjqPwHMP/lT3nB5sBtEOieoZ18k/r6uGi
 eBERQDgYtCHp+qVpcCPzxhF7RzSR9jVzKGuSfVncACmOC+KCVV86JuRqMiYIyqZs4pH0
 +zYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-language:thread-index;
 bh=N1xb1F1TFXxgnkIC5JIw/KdQw3/NtOxnzapuGJ29DtU=;
 b=esIy426B/JqfeFnvG5jLPaJpNuemzOlxqxMG+q7LOxdnaJVNIkKHrY6H8hQH9iGV9n
 Sz7q7tbdnZLAzEplvILKWvmfgt3lgmA0ftXH0bScC7wmHFv9Wcw/GzMluF0yaT9p05aj
 dfr2RO5ZPElouaEBM4xp+QaNO1CZaNgo1SPA/BFklKP4KPgR+7x9pJp4k86MBGorUFc+
 ASmEj02mr1tQqdtllhR2EX/XnEusaZgjnAREOY5DuRYoRV39RZ4YiU7pMvwM+SW68Okd
 c8MYg7p35e1MQKNszX6sSpxienPhBAC11c1/Yc8T+IgyujjZn8/Hn8DRqkxrVUfwtMko
 MYQQ==
X-Gm-Message-State: APjAAAV8bXzaktvtXmejf2ljuLrWHkHXLdVczMBiSbDjEoIUxcPZsY8v
 9XwWgZ//5QCVkLhRXKebhchKawWbHeo=
X-Google-Smtp-Source: APXvYqyMGxH6P7qd8KGkPgNyWy6EHysFXpVGgB+vO+eNd1mfdst0G8e/2LyJHHGGZHhRDivAxnH31w==
X-Received: by 2002:a05:600c:2503:: with SMTP id
 d3mr4028761wma.84.1582044878345; 
 Tue, 18 Feb 2020 08:54:38 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id 25sm4243090wmi.32.2020.02.18.08.54.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Feb 2020 08:54:37 -0800 (PST)
To: "'Sam Reiter'" <sam.reiter@ettus.com>
References: <007501d5e316$e8f05d70$bad11850$@sdr-radio.com>
 <CANf970YT7r8mwaEzdQ-pJhHr1xRLobPwMbBsLrE1bgqONMLZGA@mail.gmail.com>
In-Reply-To: <CANf970YT7r8mwaEzdQ-pJhHr1xRLobPwMbBsLrE1bgqONMLZGA@mail.gmail.com>
Date: Tue, 18 Feb 2020 16:54:34 -0000
Message-ID: <164a01d5e67c$193478a0$4b9d69e0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AQI4to+ibUGofaHHTfzYts/9ho6ofwEazu1jp1K0WLA=
Subject: Re: [USRP-users] Clock Source
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
Cc: 'usrp-users' <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1520522160293702364=="
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

--===============1520522160293702364==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_164B_01D5E67C.19353BF0"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_164B_01D5E67C.19353BF0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sam,

=20

Thanks =E2=80=93 that does help.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Sam Reiter <sam.reiter@ettus.com>=20
Sent: 18 February 2020 15:53
To: simon@sdr-radio.com
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Clock Source

=20

Simon,

=20

You should be able to call:

=20

get_clock_source() =
<https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1e7=
f679b2f273f7d38eeb1d92e801796>=20

=20

and verify that the returned value is 'external'.=20

=20

Sam Reiter

=20

On Fri, Feb 14, 2020 at 3:13 AM Simon G4ELI via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

Hi,

=20

If I set the clock source on the B200 to =E2=80=98external=E2=80=99 how =
can I verify that the B200 has indeed locked to the external reference? =
The lo_locked sensor always returns true, even when no external =
reference is connected.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


------=_NextPart_000_164B_01D5E67C.19353BF0
Content-Type: text/html;
	charset="UTF-8"
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Hi Sam,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Thanks =
=E2=80=93 that does help.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Sam Reiter &lt;sam.reiter@ettus.com&gt; <br><b>Sent:</b> =
18 February 2020 15:53<br><b>To:</b> simon@sdr-radio.com<br><b>Cc:</b> =
usrp-users &lt;usrp-users@lists.ettus.com&gt;<br><b>Subject:</b> Re: =
[USRP-users] Clock Source<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Simon,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>You should be able to =
call:<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><a =
href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.ht=
ml#a1e7f679b2f273f7d38eeb1d92e801796">get_clock_source()</a><o:p></o:p></=
p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>and verify that the returned value is 'external'. =
<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><div><div><div><di=
v><p class=3DMsoNormal>Sam =
Reiter<o:p></o:p></p></div></div></div></div></div></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Fri, Feb 14, 2020 at 3:13 AM Simon G4ELI via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi,<o:p></o:=
p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>If I set =
the clock source on the B200 to =E2=80=98external=E2=80=99 how can I =
verify that the B200 has indeed locked to the external reference? The =
lo_locked sensor always returns true, even when no external reference is =
connected.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Simon =
Brown, G4ELI<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><a =
href=3D"https://www.sdr-radio.com" =
target=3D"_blank">https://www.sdr-radio.com</a><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a><br><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a><o:p></o:p></p></blockquote></div></div></body></html>
------=_NextPart_000_164B_01D5E67C.19353BF0--



--===============1520522160293702364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1520522160293702364==--


