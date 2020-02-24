Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7F516B03C
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:27:20 +0100 (CET)
Received: from [::1] (port=48464 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6JNv-000248-QR; Mon, 24 Feb 2020 14:27:19 -0500
Received: from mail-wm1-f44.google.com ([209.85.128.44]:55310)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j6JNq-0001w4-Td
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 14:27:15 -0500
Received: by mail-wm1-f44.google.com with SMTP id q9so470443wmj.5
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 11:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:thread-index:content-language;
 bh=qnKYGDpGQJvWFNab4j35HmSl+V8dtPma2UEmmzeolbQ=;
 b=DQPPqH5D4unFYC7gysd4iG03vf1W2wc8JWtJAO8boMHQbzdV4uVYRbac/mRUp87lXd
 U45JWGk68djUd+zuxWFS5eE+ubeHmx6lbBI741dfAsJbSH5h3kw41plcRK6Kgc+7F0PV
 uOMCM+Y7/qVouvFcb0z7MI8GsR6P6tYpH8bQ7RT24+HPj9BfvpR0BP4T1Ae+BLRhwIMn
 kHb1tUJu/aBSk5bLjXoYi3f3xevTLlJ/DOq0QikcrI87R6b8Hp7QLluDARAn6Y5Q9g5h
 xdtSanGN0dQjQrf57viwru5DNd2RIbldYt4TA0G1enh57Pki6uEp0YHVuhAbAWTDNThT
 e3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language;
 bh=qnKYGDpGQJvWFNab4j35HmSl+V8dtPma2UEmmzeolbQ=;
 b=p+XNE9zuUGwAxQ1carth9I2bGfWXaC/pjOpy2gB+qN0XFrWIKgJnT9EyZ8d49B5aXS
 SpQKHcV2tSWMapKRBYKc5y5ce0mGObcgo3gc9ffyLg7ZchSvYVZCkWb3AD3GPtZ3Gs/V
 rHNOlG/Se8C3qe6+7oB9XQeo3HJj1Yn3z+hoenyhNeHaMDkypgq2wm2bh6IOXaci8Znl
 tinMtmxlv2WulBV9XMpZjbfnrfix4tkbLUJQcx46E5koTdeYNzlFywlRP4UFhsC5IeJm
 CLK0mzeD2Z2KyfrWNMratkUAbWHVpG4h0mKR7PFS5ReuMitUZ61fDxV4GAq6e9DRAuxE
 ADgw==
X-Gm-Message-State: APjAAAVRMf3nlQu1ZypKa7HHSVu6kVn6Cpzu1/ePRcNRebgYBBLHv5bW
 Qln+fSwDFkvkgQaRDkLbkJhg+hhYJdI=
X-Google-Smtp-Source: APXvYqx+fUrddn169D6TrlbIImarJvRsLz3ztrwmmtS+HIGFJjxLhEGM6fA8R2Yz6JHKXF0ajhMZyg==
X-Received: by 2002:a1c:3b09:: with SMTP id i9mr513292wma.31.1582572393845;
 Mon, 24 Feb 2020 11:26:33 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id e8sm14004643wru.7.2020.02.24.11.26.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 11:26:33 -0800 (PST)
To: "'Nate Temple'" <nate.temple@ettus.com>
References: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
 <CAL263izQpcaHdrYUgDF9Zs4c+C6EnUgAib_q=KYnQdE7T4JJkg@mail.gmail.com>
 <22bf01d5eb47$59ad6980$0d083c80$@sdr-radio.com>
 <CAL263izOj68Kj4nZCy7kLzvXdVez1GLyo4W6UjJho9z-=2hFhA@mail.gmail.com>
In-Reply-To: <CAL263izOj68Kj4nZCy7kLzvXdVez1GLyo4W6UjJho9z-=2hFhA@mail.gmail.com>
Date: Mon, 24 Feb 2020 19:26:32 -0000
Message-ID: <23a401d5eb48$525cbe00$f7163a00$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQCsjNsMGs42Jn3BEpYBspwCJHWLfAHc9b52AsIEfOcBiHlTgapMOwuQ
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============1468233135805220826=="
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

--===============1468233135805220826==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_23A5_01D5EB48.525D5A40"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_23A5_01D5EB48.525D5A40
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Nate,

=20

Sorry, using GNU Radio is not an option, the aim is to connect to the =
E310 via a network and stream direct. As this isn=E2=80=99t possible =
with 3.15 LTS I=E2=80=99ll let the user know, thanks.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Nate Temple <nate.temple@ettus.com>=20
Sent: 24 February 2020 19:26
To: simon@sdr-radio.com
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows

=20

Hi Simon,

No, the USB cable will only provide serial access.=20

You could use GNU Radio to stream samples via ZMQ/TCP/UDP sockets. You =
could also use pure C++/UHD API to stream via a UDP interface such as =
with the example program rx_samples_to_udp.

Regards,
Nate Temple

=20

On Mon, Feb 24, 2020 at 11:19 AM <simon@sdr-radio.com =
<mailto:simon@sdr-radio.com> > wrote:

Thanks,

=20

Would the E310 work with the USB cable?

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Nate Temple <nate.temple@ettus.com <mailto:nate.temple@ettus.com> =
>=20
Sent: 24 February 2020 19:11
To: simon@sdr-radio.com <mailto:simon@sdr-radio.com>=20
Cc: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows

=20

Hi Simon,

The E310 network mode was removed from UHD with the switch to the MPM =
based file systems. If you need to use the network mode, you should use =
an older version of UHD.

Regards,
Nate Temple

=20

On Mon, Feb 24, 2020 at 11:05 AM Simon G4ELI via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

Hi All,

=20

A user cannot =E2=80=98see=E2=80=99 his E310 using 3.15 LTS compiled =
from source by me. The E310 is connected by Ethernet GigE.

=20

I=E2=80=99m wondering if there=E2=80=99s something special needed or if =
there=E2=80=99s a magic option I should enable in the source =E2=80=93 =
the ENABLE_E300 option is checked, all looks good to me.

=20

There is a second person who will soon be testing just in case =
it=E2=80=99s finger trouble.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


------=_NextPart_000_23A5_01D5EB48.525D5A40
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
style=3D'mso-fareast-language:EN-US'>Hi Nate,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Sorry, =
using GNU Radio is not an option, the aim is to connect to the E310 via =
a network and stream direct. As this isn=E2=80=99t possible with 3.15 =
LTS I=E2=80=99ll let the user know, thanks.<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Nate Temple &lt;nate.temple@ettus.com&gt; <br><b>Sent:</b> =
24 February 2020 19:26<br><b>To:</b> simon@sdr-radio.com<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] E310, =
3.15 LTS, Windows<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal><span style=3D'font-family:"Arial",sans-serif'>Hi =
Simon,<br><br>No, the USB cable will only provide serial access. =
<br><br>You could use GNU Radio to stream samples via ZMQ/TCP/UDP =
sockets. You could also use pure C++/UHD API to stream via a UDP =
interface such as with the example program =
rx_samples_to_udp.<br><br>Regards,<br>Nate =
Temple<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Mon, Feb 24, 2020 at 11:19 AM &lt;<a =
href=3D"mailto:simon@sdr-radio.com">simon@sdr-radio.com</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Thanks,<o:p>=
</o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Would the =
E310 work with the USB cable?<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Simon =
Brown, G4ELI<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><a =
href=3D"https://www.sdr-radio.com" =
target=3D"_blank">https://www.sdr-radio.com</a><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Nate Temple &lt;<a =
href=3D"mailto:nate.temple@ettus.com" =
target=3D"_blank">nate.temple@ettus.com</a>&gt; <br><b>Sent:</b> 24 =
February 2020 19:11<br><b>To:</b> <a href=3D"mailto:simon@sdr-radio.com" =
target=3D"_blank">simon@sdr-radio.com</a><br><b>Cc:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> Re: =
[USRP-users] E310, 3.15 LTS, Windows</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Arial",sans-serif'>Hi Simon,<br><br>The E310 =
network mode was removed from UHD with the switch to the MPM based file =
systems. If you need to use the network mode, you should use an older =
version of UHD.<br><br>Regards,<br>Nate =
Temple</span><o:p></o:p></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Mon, Feb =
24, 2020 at 11:05 AM Simon G4ELI via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid windowtext 1.0pt;padding:0cm 0cm =
0cm =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt;border-color:currentcolor currentcolor currentcolor =
rgb(204,204,204)'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi =
All,<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>A user =
cannot =E2=80=98see=E2=80=99 his E310 using 3.15 LTS compiled from =
source by me. The E310 is connected by Ethernet GigE.<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I=E2=80=99m =
wondering if there=E2=80=99s something special needed or if =
there=E2=80=99s a magic option I should enable in the source =E2=80=93 =
the ENABLE_E300 option is checked, all looks good to =
me.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>There is a =
second person who will soon be testing just in case it=E2=80=99s finger =
trouble.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Simon =
Brown, G4ELI<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><a =
href=3D"https://www.sdr-radio.com" =
target=3D"_blank">https://www.sdr-radio.com</a><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>____________=
___________________________________<br>USRP-users mailing list<br><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a><br><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a><o:p></o:p></p></blockquote></div></div></div></blockquote=
></div></div></body></html>
------=_NextPart_000_23A5_01D5EB48.525D5A40--



--===============1468233135805220826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1468233135805220826==--


