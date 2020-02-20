Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0C51665A9
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2020 19:00:39 +0100 (CET)
Received: from [::1] (port=48210 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4q7o-0005Nw-Dj; Thu, 20 Feb 2020 13:00:36 -0500
Received: from mail-wm1-f54.google.com ([209.85.128.54]:51951)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <simon@sdr-radio.com>) id 1j4q7k-0005Cs-Cj
 for usrp-users@lists.ettus.com; Thu, 20 Feb 2020 13:00:32 -0500
Received: by mail-wm1-f54.google.com with SMTP id t23so3001852wmi.1
 for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2020 10:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sdr-radio-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:thread-index:content-language;
 bh=isNvFXBl/jCc14D58L8SR7mT4Obl/Urc+K25j0F5s6M=;
 b=y1bcZPeeZyo14xfgMyq1Z2GJLqgLEUPyn2cWJ+kfIMX0gobEk+0FliEKksxVpL8qkR
 PD7abyNtJiqSFzJvchUCo/Of/JtWkzcAic3R8Sm6XDxXiZf4F7QJ12p56bI4gblFuQEt
 UbXZAbmajWgd5VoYVEVQPo+1kg1FV9/EvPNtkttdCGLnEEc0zAn2dQ+eXTNHWBBmRLBU
 Y/AdwegRPgH+4z0NSur0BKz325wfSNtXFrBjlxG6xct+1Gn2xcvBcmPczd0QjMaRX++v
 X7O5grcEbXv1N1WkF14N/XLY7vRaGJX1z9BAwBKnY67Dqxbqp40M2BB0NAGrH6CZopQk
 n17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language;
 bh=isNvFXBl/jCc14D58L8SR7mT4Obl/Urc+K25j0F5s6M=;
 b=oZipaO5BWn+S9SgpONoEZwlZpMgtP7wM+Mqz7NxlxGJrJT9P4LcPUifJqmSPPgXfHn
 Ik2RW6x8wIXR/48Y9cAIowgIkaSpjnsefRMecNHleOlPXowB3VHBHZcaY1+kNtF4fF/I
 drSNvQyjQ9tKZiqvJro9keqI4tIYTbTbZGfSkDxv1FrJF9H2M6n1/X2q9QKgSYl3+mD8
 TYdFIfELafm5aMj6i34P6JEw0tweZVbNvKQZ94aQ6NLmk8KTFSs2ozfi58nHPmuc72kL
 MJuSKoJN1TRG6enZbG9X7mnkV6vQcTbABqWrxFEa5/OX7hLzQ8oJhnZFplIpriwbkk/Y
 X3kg==
X-Gm-Message-State: APjAAAWhcKCYFIp9EE+P2NLhroPRW1Xxi67qwvd4hLLd7RXERXomrm1O
 /eC5kXSp+JQZz2ui0n8GPJsgB+P1cFM=
X-Google-Smtp-Source: APXvYqzjCtVyd0YRMqBXJLK9APcRkOLJgGjzVxeZI8SOON5QJgzJxq3BEyu5UjF7YXeY8Bz0kY/ZnA==
X-Received: by 2002:a1c:6389:: with SMTP id x131mr5954811wmb.155.1582221591304; 
 Thu, 20 Feb 2020 09:59:51 -0800 (PST)
Received: from Beasty (blackbeauty.sdr-radio.com. [81.174.138.141])
 by smtp.gmail.com with ESMTPSA id d9sm344365wrx.94.2020.02.20.09.59.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 09:59:50 -0800 (PST)
To: "'Michael Dickens'" <michael.dickens@ettus.com>
References: <105801d5e7ff$f7f2aa10$e7d7fe30$@sdr-radio.com>
 <CAGNhwTPXJP3j6xNmpjwom-+BEKf11Vv=EmYHxLK+Wd=o6YpCTw@mail.gmail.com>
In-Reply-To: <CAGNhwTPXJP3j6xNmpjwom-+BEKf11Vv=EmYHxLK+Wd=o6YpCTw@mail.gmail.com>
Date: Thu, 20 Feb 2020 17:59:48 -0000
Message-ID: <179001d5e817$8b17eaf0$a147c0d0$@sdr-radio.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQDk0sAzSrXrVBWYNNDpVaYUXmmmUAJVzJxyqfPY4gA=
Content-Language: en-gb
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
Content-Type: multipart/mixed; boundary="===============2562127625220650388=="
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

--===============2562127625220650388==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1791_01D5E817.8B188730"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_1791_01D5E817.8B188730
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

=20

User now using a better PC, on Windows he=E2=80=99s streaming 20 Msps =
and is a happy bunny. As he doesn=E2=80=99t have 10GigE he can=E2=80=99t =
really do much more (20Msps =3D 675Mbps he says).

=20

My =E2=80=98bitching=E2=80=99 is really the way UHD.dll handles frames =
=E2=80=93 ideally I should be able to have the software group frames =
together, for example with the B200 were I to run 4 or 8 frames in a =
group I am convinced the CPU load would be lower and I would get the =
full 56MHz of bandwidth. For example I can run 60MHz with ease from the =
bladeRF.

=20

Back to the X310 =E2=80=93 with 10GigE what=E2=80=99s the maximum =
sustained bandwidth that you get on Linux? Obviously frames will be =
bigger due to bigger 10GigE MTUs.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

From: Michael Dickens <michael.dickens@ettus.com>=20
Sent: 20 February 2020 17:00
To: simon@sdr-radio.com
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 3.15 LTS, X310 performance

=20

Hi Simon - When you say "but performance is not great" ... beyond CPU =
load: do you get good Tx and Rx rates (e.g., if you run =
"benchmark_rate") without underruns / overflows / late packets (etc)? =
What is the MTU set to for this ENET link? 1 GbE or 10 GbE? Can you =
provide a little more detail for us to work with here? Thx! - MLD

=20

On Thu, Feb 20, 2020 at 10:11 AM Simon G4ELI via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

Hi,

=20

Now using UDB 3.15 LTZ instead of UHD 4.0 and a user=E2=80=99s X310 =
works but performance is not great:

=20

*	CPU load high,
*	MTU size results in only 364 samples per buffer which I believe to =
indirectly cause the high CPU.

=20

I=E2=80=99ve not found much on the Ettus site apart from ensuring the =
MTU size is correct, so the question is: how on earth do I get better =
streaming from the X310?

=20

As I=E2=80=99m compiling 3.15 LTS from source making changes is easy.

=20

Simon Brown, G4ELI

https://www.sdr-radio.com

=20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com




=20

--=20

Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com <mailto:support@ettus.com>=20
Web: https://ettus.com/


------=_NextPart_000_1791_01D5E817.8B188730
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
p.gmail-m-1039429921645581786msolistparagraph, =
li.gmail-m-1039429921645581786msolistparagraph, =
div.gmail-m-1039429921645581786msolistparagraph
	{mso-style-name:gmail-m_-1039429921645581786msolistparagraph;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
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
	{mso-list-id:1243103958;
	mso-list-template-ids:-1220508174;}
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
style=3D'mso-fareast-language:EN-US'>Hi Michael,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>User now =
using a better PC, on Windows he=E2=80=99s streaming 20 Msps and is a =
happy bunny. As he doesn=E2=80=99t have 10GigE he can=E2=80=99t really =
do much more (20Msps =3D 675Mbps he says).<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>My =
=E2=80=98bitching=E2=80=99 is really the way UHD.dll handles frames =
=E2=80=93 ideally I should be able to have the software group frames =
together, for example with the B200 were I to run 4 or 8 frames in a =
group I am convinced the CPU load would be lower and I would get the =
full 56MHz of bandwidth. For example I can run 60MHz with ease from the =
bladeRF.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>Back to the =
X310 =E2=80=93 with 10GigE what=E2=80=99s the maximum sustained =
bandwidth that you get on Linux? Obviously frames will be bigger due to =
bigger 10GigE MTUs.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Simon Brown, G4ELI<o:p></o:p></p><p =
class=3DMsoNormal>https://www.sdr-radio.com<o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Michael Dickens &lt;michael.dickens@ettus.com&gt; =
<br><b>Sent:</b> 20 February 2020 17:00<br><b>To:</b> =
simon@sdr-radio.com<br><b>Cc:</b> USRP list =
&lt;usrp-users@lists.ettus.com&gt;<br><b>Subject:</b> Re: [USRP-users] =
UHD 3.15 LTS, X310 performance<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Hi =
Simon - When you say &quot;but performance is not great&quot; ... beyond =
CPU load: do you get good Tx and Rx rates (e.g., if you run =
&quot;benchmark_rate&quot;) without underruns / overflows / late packets =
(etc)? What is the MTU set to for this ENET link? 1 GbE or 10 GbE? Can =
you provide a little more detail for us to work with here? Thx! - =
MLD<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Thu, Feb 20, 2020 at 10:11 AM Simon G4ELI via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi,<o:p></o:=
p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Now using =
UDB 3.15 LTZ instead of UHD 4.0 and a user=E2=80=99s X310 works but =
performance is not great:<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><ul type=3Ddisc><li =
class=3Dgmail-m-1039429921645581786msolistparagraph style=3D'mso-list:l0 =
level1 lfo1'>CPU load high,<o:p></o:p></li><li =
class=3Dgmail-m-1039429921645581786msolistparagraph style=3D'mso-list:l0 =
level1 lfo1'>MTU size results in only 364 samples per buffer which I =
believe to indirectly cause the high CPU.<o:p></o:p></li></ul><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I=E2=80=99ve=
 not found much on the Ettus site apart from ensuring the MTU size is =
correct, so the question is: how on earth do I get better streaming from =
the X310?<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>As =
I=E2=80=99m compiling 3.15 LTS from source making changes is =
easy.<o:p></o:p></p><p class=3DMsoNormal =
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
s.ettus.com</a><o:p></o:p></p></blockquote></div><p =
class=3DMsoNormal><br clear=3Dall><o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p class=3DMsoNormal>-- =
<o:p></o:p></p><div><div><div><div><p class=3DMsoNormal>Michael =
Dickens<br>Ettus Research Technical Support<br>Email: <a =
href=3D"mailto:support@ettus.com" =
target=3D"_blank">support@ettus.com</a><br>Web: <a =
href=3D"https://ettus.com/" =
target=3D"_blank">https://ettus.com/</a><o:p></o:p></p></div></div></div>=
</div></div></body></html>
------=_NextPart_000_1791_01D5E817.8B188730--



--===============2562127625220650388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2562127625220650388==--


