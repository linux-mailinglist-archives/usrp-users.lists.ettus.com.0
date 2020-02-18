Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEB0162C4B
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 18:15:48 +0100 (CET)
Received: from [::1] (port=41034 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j46TK-0002ho-0E; Tue, 18 Feb 2020 12:15:46 -0500
Received: from mail-wm1-f42.google.com ([209.85.128.42]:53355)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j46TG-0002Wx-3g
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 12:15:42 -0500
Received: by mail-wm1-f42.google.com with SMTP id s10so3575529wmh.3
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 09:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-language:thread-index;
 bh=oylH9pdRsUr5BGVxZQEpLOILYOvDNukhV43DwGenkNM=;
 b=Tg3/94Om0/u83qxtGiuTs/+KSOpJM+gZ5QLyBJ4VZSDRS5Lnckxk1LFcdoiSNQDEat
 fHtOhisLofaUVKfyD1mGFvKodsMmzs7PuWfocFf7TelesT3oNYQ6iQyWBzUf34JdIrhq
 /zTw1+80suUWMeLaP2AM/OemR40GtPY27ed0YRHyah1/nKqk189CuX2KtQy3Gs+8M17I
 wEz2EZaJAZaW6Nfml5+6iBxfqgzKfGC63Nw8b+S8u4F71M3m7wKLo5PkZv6Hd19nXmMx
 bCe9XHzczZxRHI7tQWiT2JbscuMO/QNwtABuIPpkt8p0gqXO6g3KwNg52tKMdM2PDtq6
 AgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-language:thread-index;
 bh=oylH9pdRsUr5BGVxZQEpLOILYOvDNukhV43DwGenkNM=;
 b=ASgAZ2ZSaM+BabgFUjQJXjBXjW/05QQdsgxbaOeMGCoOHynsXS5BMnY3D+EogdDq9g
 CVjJe9gUa9tWQOqX668EZpXA41jp89/wLhENQHUykDSIoj1NIimi5jTrv1PL7ulWc+Ow
 ZrtRMistWb//OunUbK/t+8lg6a3k1EKa8Zy6afBVqCoFRYaYamC8zWG6joJJSIBn7b6C
 MUQAUw8jIAKl/tpmA6Nja+TF+no89by+qrI8AI9AHPKcIitSguQ008z9xnYkmj4wfqza
 Mfa4uuyaUpZPqFkLKMdph8QTwGm4tQFEGFc7JSmyggJTG5w+iL5FHSjM/dooWWCeHlTr
 P2/g==
X-Gm-Message-State: APjAAAXR7RjmuQ/5OsYN1pchLx0Y+sme5LrnlFxvuEBM3qKrpf1IFeJG
 h2IrXzYE3X+7VtNMd5/hPN+gpQ==
X-Google-Smtp-Source: APXvYqwr7Li2CCKCcj88GDT5nQRbN25e6B4EU3eBAi/8IvvWKpWYa6/I0aMAPOppHOXD8fhxGwtGWA==
X-Received: by 2002:a1c:9c87:: with SMTP id f129mr4387440wme.26.1582046101145; 
 Tue, 18 Feb 2020 09:15:01 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id a9sm7075863wrn.3.2020.02.18.09.14.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Feb 2020 09:15:00 -0800 (PST)
To: "'Sam Reiter'" <sam.reiter@ettus.com>
References: <00ac01d5e317$a13cffa0$e3b6fee0$@sdr-radio.com>
 <CANf970a56gSVUFpCRwwdMdMa1PCRAYAGVHnuUxfdNDKx920WcA@mail.gmail.com>
In-Reply-To: <CANf970a56gSVUFpCRwwdMdMa1PCRAYAGVHnuUxfdNDKx920WcA@mail.gmail.com>
Date: Tue, 18 Feb 2020 17:14:57 -0000
Message-ID: <178901d5e67e$f1d566e0$d58034a0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AQHcVgMmJLGKnmLemiuMsf4yHmR66gGndcrJqAcU2XA=
Subject: Re: [USRP-users] UHD v4 Compiled
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
Content-Type: multipart/mixed; boundary="===============0023481419534592790=="
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

--===============0023481419534592790==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_178A_01D5E67E.F1D5DC10"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_178A_01D5E67E.F1D5DC10
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sam,

=20

This really is confusing for a simple person such as myself. Anyway, all =
is good with v4 except the X310 and E310, maybe I=E2=80=99ll wait for =
the v4 code to catch up.

=20

You suggest 3.15 LTS, why not 3.9 LTS?

=20

The build info is somewhat out of date but I=E2=80=99m happy.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Sam Reiter <sam.reiter@ettus.com>=20
Sent: 18 February 2020 16:04
To: simon@sdr-radio.com
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD v4 Compiled

=20

Simon,

=20

The current UHD 4 on master is not a released version, so be patient if =
you run into any snags. That being said, you should be good to compile =
and run on Windows. I put together a guide a little while ago for =
building on Windows. It will almost certainly need some massaging for =
4.0, but feel free to message me directly at support@ettus.com =
<mailto:support@ettus.com>  if you need build assistance. I'll try to =
roll that into a later version of the build instructions:

=20

https://kb.ettus.com/Building_and_Installing_the_USRP_Open_Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Windows



All that being said, if you want to run on a released version, I'd =
recommend building the 3.15.LTS branch.

=20

Sam Reiter=20

=20

On Fri, Feb 14, 2020 at 3:18 AM Simon G4ELI via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

Hi,

=20

After many years I=E2=80=99ve just got back into the world of Ettus. =
I=E2=80=99ve downloaded and compiled v4 for using boost 1.70 with VS2019 =
for 32 and 64-bit flavours of Windows.

=20

I do understand that Windows is a minority target for UHD users, this is =
confirming that it=E2=80=99s fine with W10.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


------=_NextPart_000_178A_01D5E67E.F1D5DC10
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
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>This really =
is confusing for a simple person such as myself. Anyway, all is good =
with v4 except the X310 and E310, maybe I=E2=80=99ll wait for the v4 =
code to catch up.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>You suggest =
3.15 LTS, why not 3.9 LTS?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>The build =
info is somewhat out of date but I=E2=80=99m =
happy.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Sam Reiter &lt;sam.reiter@ettus.com&gt; <br><b>Sent:</b> =
18 February 2020 16:04<br><b>To:</b> simon@sdr-radio.com<br><b>Cc:</b> =
usrp-users &lt;usrp-users@lists.ettus.com&gt;<br><b>Subject:</b> Re: =
[USRP-users] UHD v4 Compiled<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Simon,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>The current UHD 4 on master is not a released version, =
so be patient if you run into any snags. That being said, you should be =
good to compile and run on Windows. I put together a guide a little =
while ago for building on Windows. It will almost certainly need some =
massaging for 4.0, but feel free to message me directly at <a =
href=3D"mailto:support@ettus.com">support@ettus.com</a> if you need =
build assistance. I'll try to roll that into a later version of the =
build instructions:<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><a =
href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open_Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Windows">https://kb.ettus.com/Building_=
and_Installing_the_USRP_Open_Source_Toolchain_(UHD_and_GNU_Radio)_on_Wind=
ows<br><br></a><o:p></o:p></p></div><div><p class=3DMsoNormal>All that =
being said, if you want to run on a released version, I'd recommend =
building the 3.15.LTS branch.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><div><div><div><di=
v><p class=3DMsoNormal>Sam =
Reiter&nbsp;<o:p></o:p></p></div></div></div></div></div></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Fri, Feb 14, 2020 at 3:18 AM Simon G4ELI via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi,<o:p></o:=
p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>After many =
years I=E2=80=99ve just got back into the world of Ettus. I=E2=80=99ve =
downloaded and compiled v4 for using boost 1.70 with VS2019 for 32 and =
64-bit flavours of Windows.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I do =
understand that Windows is a minority target for UHD users, this is =
confirming that it=E2=80=99s fine with W10.<o:p></o:p></p><p =
class=3DMsoNormal =
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
------=_NextPart_000_178A_01D5E67E.F1D5DC10--



--===============0023481419534592790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0023481419534592790==--


