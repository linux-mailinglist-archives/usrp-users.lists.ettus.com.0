Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 838C616AFFC
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:11:57 +0100 (CET)
Received: from [::1] (port=40930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6J92-0008Ei-Ki; Mon, 24 Feb 2020 14:11:56 -0500
Received: from mail-wm1-f49.google.com ([209.85.128.49]:40517)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j6J8y-0007sS-Cf
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 14:11:52 -0500
Received: by mail-wm1-f49.google.com with SMTP id t14so469441wmi.5
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 11:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=uKMbjj1UdRfxcyEHJE9lNexOa4EkRFmTjKVnaIwH4wg=;
 b=VKH1Tu6vvSgEv9kuRJGlTbQZjUJOrc99GLMTYz2dAPz5JOrMR/d7W0w8MRCK7IOKot
 m7ldNoVuCizxRX87tVV+r05Am7+SpSeGP1hc58J0mXmjLGF/xi3a5LLvYGPirTVfxpzs
 JDbfmI9SnzjJGpdd/WIriM72z7rR9UE/Ah/u5tNA7g9+ts1o2OUCns/xDSlqsA0enzYU
 O7+F8llqDC5ufLw0+Ot2VKA+wjNoAgexRmKAoGofU2xY0F1Xtttx4iwlze0Y5mnsAEBt
 Ra0yZdEXqSrWA4adiNQtyChv2VoYGhRQS9AGtNCnJ5tIxUrzOsivI56MNa8axddKzAlY
 Viug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language;
 bh=uKMbjj1UdRfxcyEHJE9lNexOa4EkRFmTjKVnaIwH4wg=;
 b=o51P4h8X12v6oIKl08MkBUp2QrOc74YdirqToDaJxwsw+6N8xriC+A0vmZpwyYiajI
 oV/dJewjZE+KJcBj4YU76MUMwBlvb90kOduvz6I+2vNDUP2c64o38mKhgDobpNgD1ryf
 z72/Ot4VubB0k4I6H1N/epXMe38uy1hXo+M4d4++5FmtSvHLG6frc3XpL8s61IsDVikk
 nd5Ix6qKtC8YlJ/taWwa6beRmTetvK1VN1b/IT2DBl7tdaOaShrbBO0KNYoUCm+3trT9
 Wmem6JLkU0fbQVvu9hTER8aSxvsOhfvKcsECfZSD30skS0sDpxgPFMgZOgxeLbYoJhom
 UjGA==
X-Gm-Message-State: APjAAAWT34ubnUqyA5vp5LEnHgcnhLF7ZWB3B/Mu74dfetac953gFDkk
 kR0YgRw0NIiCfLlB8lThXkvK6Tc9RtA=
X-Google-Smtp-Source: APXvYqwtgHII2J+br7AfHxSHTap075P8ODho6WHdmZXIEi818KBD3vSdNX9YQpNlvSktTLCQe5KPxg==
X-Received: by 2002:a1c:5684:: with SMTP id k126mr451548wmb.181.1582571471097; 
 Mon, 24 Feb 2020 11:11:11 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id u23sm468275wmu.14.2020.02.24.11.11.09
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 11:11:09 -0800 (PST)
To: <usrp-users@lists.ettus.com>
References: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
 <5E541EC4.4080305@gmail.com>
In-Reply-To: <5E541EC4.4080305@gmail.com>
Date: Mon, 24 Feb 2020 19:11:09 -0000
Message-ID: <224901d5eb46$2bfa9c20$83efd460$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQCsjNsMGs42Jn3BEpYBspwCJHWLfAJL7Nf+qmsSeJA=
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
Content-Type: multipart/mixed; boundary="===============3456281788692705220=="
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

--===============3456281788692705220==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_224A_01D5EB46.2BFB1150"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_224A_01D5EB46.2BFB1150
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

This is the sort of info I need so I can pass it on. Do you have a link to
this please - found
https://kb.ettus.com/E310/E312_Getting_Started_Guides#Network_Connectivity
but am not sure whether another program must be started?

 

FWIW he says it's running on Linux but I'm not at all sure how he's using it
on Linux.

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D.
Leech via USRP-users
Sent: 24 February 2020 19:07
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows

 

On 02/24/2020 02:04 PM, Simon G4ELI via USRP-users wrote:

Hi All,

 

A user cannot 'see' his E310 using 3.15 LTS compiled from source by me. The
E310 is connected by Ethernet GigE.

 

I'm wondering if there's something special needed or if there's a magic
option I should enable in the source - the ENABLE_E300 option is checked,
all looks good to me.

 

There is a second person who will soon be testing just in case it's finger
trouble.

 

Simon Brown, G4ELI

https://www.sdr-radio.com

 

Are you running the network mode program on the E310 while doing this?




------=_NextPart_000_224A_01D5EB46.2BFB1150
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
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
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
</o:shapelayout></xml><![endif]--></head><body bgcolor=3Dwhite =
lang=3DEN-GB link=3Dblue vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal><span =
style=3D'color:windowtext'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:windowtext'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:windowtext'>This is the sort of =
info I need so I can pass it on. Do you have a link to this please =
&#8211; found </span><a =
href=3D"https://kb.ettus.com/E310/E312_Getting_Started_Guides#Network_Con=
nectivity">https://kb.ettus.com/E310/E312_Getting_Started_Guides#Network_=
Connectivity</a> but am not sure whether another program must be =
started<span style=3D'color:windowtext'>?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:windowtext'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:windowtext'>FWIW he says =
it&#8217;s running on Linux but I&#8217;m not at all sure how he&#8217;s =
using it on Linux.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:windowtext'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span =
style=3D'color:windowtext;mso-fareast-language:EN-GB'>Simon Brown, =
G4ELI<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:windowtext;mso-fareast-language:EN-GB'>https://www.sdr-rad=
io.com<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'color:windowtext'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'color:windowtext;mso-fareast-language:EN-GB'>From:</span></b><sp=
an lang=3DEN-US style=3D'color:windowtext;mso-fareast-language:EN-GB'> =
USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt; <b>On Behalf Of =
</b>Marcus D. Leech via USRP-users<br><b>Sent:</b> 24 February 2020 =
19:07<br><b>To:</b> usrp-users@lists.ettus.com<br><b>Subject:</b> Re: =
[USRP-users] E310, 3.15 LTS, Windows<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On =
02/24/2020 02:04 PM, Simon G4ELI via USRP-users wrote:<span =
style=3D'mso-fareast-language:EN-GB'><o:p></o:p></span></p></div><blockqu=
ote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>Hi All,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>A user =
cannot &#8216;see&#8217; his E310 using 3.15 LTS compiled from source by =
me. The E310 is connected by Ethernet GigE.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>I&#8217;m =
wondering if there&#8217;s something special needed or if there&#8217;s =
a magic option I should enable in the source &#8211; the ENABLE_E300 =
option is checked, all looks good to me.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>There is a =
second person who will soon be testing just in case it&#8217;s finger =
trouble.<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-GB'>Simon =
Brown, G4ELI</span><o:p></o:p></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'><a =
href=3D"https://www.sdr-radio.com">https://www.sdr-radio.com</a></span><o=
:p></o:p></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-GB'><o:p>&nbsp;</o:p></span></p></blockq=
uote><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span =
style=3D'mso-fareast-language:EN-GB'>Are you running the network mode =
program on the E310 while doing =
this?<br><br><o:p></o:p></span></p></div></body></html>
------=_NextPart_000_224A_01D5EB46.2BFB1150--



--===============3456281788692705220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3456281788692705220==--


