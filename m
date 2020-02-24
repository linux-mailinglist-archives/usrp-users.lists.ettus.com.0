Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 903BA16B08E
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:48:07 +0100 (CET)
Received: from [::1] (port=54086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6Ji2-0003pG-Il; Mon, 24 Feb 2020 14:48:06 -0500
Received: from mail-wr1-f52.google.com ([209.85.221.52]:43625)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j6Jhz-0003gf-49
 for USRP-users@lists.ettus.com; Mon, 24 Feb 2020 14:48:03 -0500
Received: by mail-wr1-f52.google.com with SMTP id r11so11843902wrq.10
 for <USRP-users@lists.ettus.com>; Mon, 24 Feb 2020 11:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:thread-index:content-language;
 bh=71t2FbOWDTRpnOmqQ271l53bgghykmQlOTvz+ABEXGM=;
 b=mgduwKgFCfYZJvrhpTi33ln8t/GuJPQhRJWfdUe+M09KXJi5SLvsxcqlUGXarNrs6r
 tyR82Wv48+PhyLbgbdChsxShO5imF67DBJmoV5h1rCJ++kn+K7XOa70oA8BKEHUsnaqF
 abzhe4XDC8DFzHfPMb+JXkDzqkmfCVPXRT6kerNxgMGJ6rblnzs84LM+diFqrA+a9qx+
 EY8pgRMlQYBrvYkFSACvODdd4bk4Eobj5pD3QXVk7HV4NZ7cbp94fS7/8jXusInFp2a+
 KeIXfhwFTYxiZGgEp1F7+1PDvAIr4Oqc7J3br8myGlJerLi0WBfEAjJbOIQ/mZVk8QFB
 40Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language;
 bh=71t2FbOWDTRpnOmqQ271l53bgghykmQlOTvz+ABEXGM=;
 b=hR8J5BrKCoabs5HOUfLxzeo2ZSBIgFDexDDoWsNz1weQmU0lewj6zuqa4lYBbsjkoo
 j9Ywqx/6wuf0AaSKx8zP+QreTENAHH60wuIh0kgrI8NhlNPRfGaIsAMTpQEutz2xLj5D
 QLPyDn1rNjR0pXUp/Ko4Lb9PizRBbOxrlw6cf8lEnGHWD1AyKKva1tXu1mfpuvoZ026t
 dl7leS2p4ope89MGiDdIRzDqnnBBw6UYVmr3L3pwyP1Iki0LsZ574jXnmdlRqwjYL8II
 6C7dW+KWonrm6YxmANEPtSCYHMDuRaCIzMuiRfACzJhAVGyvMIBwVYwfJHav+B9L88V+
 EY+Q==
X-Gm-Message-State: APjAAAXvGdv4ZYiJIQs5tN906E824MIoeUQEDTI+8ecbP0+h7t72Rbbg
 qkfj78cnd/s0LwUova0BMKOMIw==
X-Google-Smtp-Source: APXvYqwCY15rAzGNTHyA+HWNBccIaSjcrSP+wXir3uXlFBoPNlOJ/XbJGXXDp1ibmfpMvoYyfKejuw==
X-Received: by 2002:adf:8084:: with SMTP id 4mr16705588wrl.201.1582573642133; 
 Mon, 24 Feb 2020 11:47:22 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id c15sm20142755wrt.1.2020.02.24.11.47.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 11:47:21 -0800 (PST)
To: "'Marcus D Leech'" <patchvonbraun@gmail.com>
References: <23a401d5eb48$525cbe00$f7163a00$@sdr-radio.com>
 <E3FDE3B3-FCC0-4B33-BE61-2C5F58B94319@gmail.com>
In-Reply-To: <E3FDE3B3-FCC0-4B33-BE61-2C5F58B94319@gmail.com>
Date: Mon, 24 Feb 2020 19:47:20 -0000
Message-ID: <262401d5eb4b$3a6b1af0$af4150d0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKPk45kdDLxuAMSmCTGjILz1Ay6jwLilCHtpqBaYAA=
Content-Language: en-gb
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows
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
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7472454801737338918=="
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

--===============7472454801737338918==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_2625_01D5EB4B.3A6BDE40"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_2625_01D5EB4B.3A6BDE40
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Marcus,

=20

Fine =E2=80=93 not a problem. Looks like the user is buying the X310 =
with all the extras and will use 10 GigE.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Marcus D Leech <patchvonbraun@gmail.com>=20
Sent: 24 February 2020 19:39
To: simon@sdr-radio.com
Cc: Nate Temple <nate.temple@ettus.com>; USRP-users@lists.ettus.com
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows

=20

Just to emphasize, the Network Mode for the E310 was never really =
encouraged. The performance is poor due to hardware architecture issues. =
The E310 was only ever intended to be used as a stand-alone embedded =
radio platform, and not like a =E2=80=9Cconnect to a beefy =
computer=E2=80=9D USRP like the N and X and B series.=20

=20

Sent from my iPhone=20


------=_NextPart_000_2625_01D5EB4B.3A6BDE40
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
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
style=3D'mso-fareast-language:EN-US'>Marcus,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Fine =
=E2=80=93 not a problem. Looks like the user is buying the X310 with all =
the extras and will use 10 GigE.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p></div><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><di=
v style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Marcus D Leech =
&lt;patchvonbraun@gmail.com&gt; <br><b>Sent:</b> 24 February 2020 =
19:39<br><b>To:</b> simon@sdr-radio.com<br><b>Cc:</b> Nate Temple =
&lt;nate.temple@ettus.com&gt;; =
USRP-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] E310, =
3.15 LTS, Windows<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Just to =
emphasize, the Network Mode for the E310 was never really encouraged. =
The performance is poor due to hardware architecture issues. The E310 =
was only ever intended to be used as a stand-alone embedded radio =
platform, and not like a =E2=80=9Cconnect to a beefy computer=E2=80=9D =
USRP like the N and X and B series.&nbsp;<o:p></o:p></p><div><p =
class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>Sent from my iPhone =
<o:p></o:p></p></div></div></div></body></html>
------=_NextPart_000_2625_01D5EB4B.3A6BDE40--



--===============7472454801737338918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7472454801737338918==--


