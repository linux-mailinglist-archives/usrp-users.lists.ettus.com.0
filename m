Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2281D167025
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2020 08:24:03 +0100 (CET)
Received: from [::1] (port=55660 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j52fI-00083P-DX; Fri, 21 Feb 2020 02:24:00 -0500
Received: from mail-wr1-f54.google.com ([209.85.221.54]:37118)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j52fE-0007vp-2H
 for USRP-users@lists.ettus.com; Fri, 21 Feb 2020 02:23:56 -0500
Received: by mail-wr1-f54.google.com with SMTP id w15so782962wru.4
 for <USRP-users@lists.ettus.com>; Thu, 20 Feb 2020 23:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :thread-index:content-language;
 bh=cg9/zjntKd7dBPFOr/a5HloW3r6IAy9+ZNIcGOifeVA=;
 b=crAJGuz7hZBZ829DkGYHK7MIYGELepUDxWxS7ZJuR9hcxoQlSLsrtrpZKNNixD56A5
 QihrcWUNPOeAh/COjT+YXlJGLviK/G5WLogElQMp6SA0y7NdLdSPvDHtA4CjWw3++yis
 5fzQC6NnTkssQyLFtOr0I3SXHVdSIscxqbBQrBJE/l7fcCM9AHJAIGJrLg5RL/8kT7IY
 hgU7FXZenRTV/2Gh5tW89GhjucHWdHKm63YPm+HljIwVGz8u5nXnvWEehMqaQ6ATITQa
 CvnjKDZprlqMkbdWApQeyaS1ZrRrFRUmXsokThO7qZee+6lhVMUHC9V8NJvFO+4tUH90
 VIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language;
 bh=cg9/zjntKd7dBPFOr/a5HloW3r6IAy9+ZNIcGOifeVA=;
 b=amQ/i89TmXZAkAyzGWOpjPkmGDeGjbATVCmQGyUTMZ7CENjlUI/KByU+KTFNXFjH9F
 FRiFYbtzwg5RPQtqouhuvh0I+QERnppIH/lRWpbIl48OynjN/guNd8R77HOkGvzp6OvD
 0VTepf5SggCsXTwmdESb73V2y4UbCBfhEdAtzwrR0iZB3TMiUkqgAohVUZ8Bu0i6qpYD
 P6pMCFvX2fI1F0Rs1WRqy1yELG2JMH3dpVFLJ/0VC3R0L6plF5fOGMrhFOXKQ3MtAMzV
 5spqVB7tYZw+2i+QbxvjVMdjL52o/KU31RR4FciPWLe8V0FujFhsq/rYJJq3KfzAlqPi
 trbA==
X-Gm-Message-State: APjAAAWrovltp3JlIlQhRFGjKA/ajFii/xJTN3wozZLfyjPTUqb8a85T
 2G0w9/F/VckqjhgJIM7wNxcIbS+zzyo=
X-Google-Smtp-Source: APXvYqx0gMFd7NTYri2iCvR4u33EIOOHbBWUrTzVGQDKtvu/yGVPbv9CjHd9aFJXxP6Xwd5YEhpl4A==
X-Received: by 2002:adf:df03:: with SMTP id y3mr47139215wrl.260.1582269794936; 
 Thu, 20 Feb 2020 23:23:14 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id u4sm2874926wrt.37.2020.02.20.23.23.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 23:23:14 -0800 (PST)
To: "'Kyeong Su Shin'" <ksshin@postech.ac.kr>,
	<USRP-users@lists.ettus.com>
References: <CAAZMsC1pUq22iiHVHAvGjETvdYDActPOVOGruR=dKLgbh535Gg@mail.gmail.com>
 <E01AEA46-6030-4BFF-91CE-0535F84D2FF5@gmail.com>
 <CAAZMsC2Do=wLYC-tzKAW8hCezdsZ1zpEtRwN_VtxBgcEXAg8NA@mail.gmail.com>
 <5E4ECFB7.4060504@gmail.com>
 <CAAZMsC3LNfsJir6Dejw7f-jerOvLuJWVLyrb9C2YRs4_dhzL1Q@mail.gmail.com>,
 <5E4ED8EE.4090601@gmail.com>
 <PS2P216MB07061A6D78A0432E8E1D23E693120@PS2P216MB0706.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <PS2P216MB07061A6D78A0432E8E1D23E693120@PS2P216MB0706.KORP216.PROD.OUTLOOK.COM>
Date: Fri, 21 Feb 2020 07:23:10 -0000
Message-ID: <038001d5e887$c5aac5f0$510051d0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFz3ap/GzqisYsJmSz6rs1ey82oYAGJvOAfAWmunEcBnlL/DALK31L0AV5wqioB2C/5saiUuScg
Content-Language: en-gb
Subject: Re: [USRP-users] GNU Radio UHD Blocks Resolution
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
Content-Type: multipart/mixed; boundary="===============1931470916214659588=="
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

--===============1931470916214659588==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0381_01D5E887.C5AB3B20"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_0381_01D5E887.C5AB3B20
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

The ADALM-Pluto uses the AD9363 / AD9364 and is a member of the AD9631 =
family. This has AGC which is set via the in_voltage0_gain_control_mode =
parameter and works very well indeed, making the cheap and cheerful =
Pluto a very usable SDR.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of =
Kyeong Su Shin via USRP-users

=20

-I think AD9361 (used in B200) has a hardware AGC (not turned on by =
default). However, as Marcus mentioned, it is best left to the =
application. Without knowing the signals and the channel conditions, AGC =
designers must make many assumptions which may be incorrect or make the =
performance suboptimal. You can give it a shot, but the best way is to =
roll your own AGC (you can change the gain level of your USRP on the =
fly).

=20


------=_NextPart_000_0381_01D5E887.C5AB3B20
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
span.EmailStyle21
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
style=3D'mso-fareast-language:EN-US'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>The =
ADALM-Pluto uses the AD9363 / AD9364 and is a member of the AD9631 =
family. This has AGC which is set via the in_voltage0_gain_control_mode =
parameter and works very well indeed, making the cheap and cheerful =
Pluto a very usable SDR.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p></div><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><di=
v style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> USRP-users =
&lt;usrp-users-bounces@lists.ettus.com&gt; <b>On Behalf Of </b>Kyeong Su =
Shin via USRP-users</span><span =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div></div>=
<div><div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p></div>=
<div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'>-I think AD9361 (used in B200) =
has a hardware AGC (not turned on by default). However, as Marcus =
mentioned, it is best left to the application. Without knowing the =
signals and the channel conditions, AGC designers must make many =
assumptions which may be incorrect or make the performance suboptimal. =
You can give it a shot, but the best way is to roll your own AGC (you =
can change the gain level of your USRP on the =
fly).<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p></div>=
</div></div></div></body></html>
------=_NextPart_000_0381_01D5E887.C5AB3B20--



--===============1931470916214659588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1931470916214659588==--


