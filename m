Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECA2A39D6F
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 14:30:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A993385817
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 08:30:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739885413; bh=fHOYUtbatT+bFXIRsZfgcpFuxnwyMqxuSZGtQU0b3KE=;
	h=From:To:References:In-Reply-To:Date:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Q0F34VQvMP2f9TZh5ThdkOTZL5AwZJORmr4dxw+6dSd7lbwmtvnhBTsSMYIf/5aXG
	 CtOt+e7gc4pwSrdMM9wiTgIxESZBnUNJsOmyR83UpjAtyKzdQPMQXAmlkXFLTEVj1e
	 0ABLm3OqTgMEG9sLVTHnN2xv701/W0PfYG9hJVnb+dVFeTV7VEF4R9j+ZFlc0PxCEN
	 6cSl5J8wythF9JLNLE4ZEx0F6cIXrjmSxusXgoWmn4cZRsYH+fnKsyR3bKwB4zbvjJ
	 ezVo+sd7sL/iHcBqlUAq4Ikx3A5965lAmISzW6+z+YWd/mV2p4As3N1HTtWsz/mAmt
	 C7Rqxlnla+mig==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 210D0385778
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 08:30:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kfe4941B";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so1096248466b.3
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 05:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739885408; x=1740490208; darn=lists.ettus.com;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ymhw8piiArhW52YZRGS9tWQlxCfyPfnz7S+i9YejMIw=;
        b=kfe4941BqgPnDLzGblcf7CPwEVBmwiuuOmk44eBNk0MnPIpE0g4HhzAPffI7ak/Brj
         uEr8231/wqW2ea8Wq1XCaE1jQmN5dxz0HpyBFJg0TlIRSrePccQzCo0Njz1DWsZua3JM
         ni9CdIQjg3r7E3AJMVop+bFpzggennh1CvtKf8MU9xilcwKtfiFF4HNqTBadn6an8eZ3
         WM3o9STAFNFr8MXOy01RwgM5WMxcBwqZ2zFdLlSxU+GvnoFK5SGn+aW6TUDyP7RQg/mN
         gEex0n8rcUl0J874WocE9DeFBpH8Vk9MXK6luExXNKxsYn0npCq+0K61QpKi1mgwv1Kc
         Gnsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739885408; x=1740490208;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ymhw8piiArhW52YZRGS9tWQlxCfyPfnz7S+i9YejMIw=;
        b=KFit+FL3BBF+jL9vkyNvXhW/F5QCjJySFXouHy3Vw3COULad92XYFZo3YYK5PDCUY+
         GsEXYr8mZZ8pD28L9JEwSe4UTYgKYxcSwg/+uX8vVDa0vwhZWaMeP39p9SifGMWSN4AB
         8ajYeQO1+Uzw8mYe5qXk65DaiDHPIpOlS7DBKPHhJylrzRgp/5576tY+ez1dZBE5OzSZ
         70B3SyDFlfdzY2iFwR4V2ShUVnoSEYqdRrfevG4uO9jVWZNW8SfnrIhU9wYALaeMLZVv
         /KwOGX5poIRs5I5Eufgyd6JuC5Jz9KCjTXDqaLvjowt/ArZ3ICsa6jqxKkfIXL8n9FH+
         PKvw==
X-Gm-Message-State: AOJu0YxGo01WfUB3Nb7IWWDeLcWP/ufw6ruL5lA5Vge/ltMcfvxVIkRM
	J3Fb4M3HLOgoIGtgRatlx8X+fXzVnYausyhCWPWkvNl50f8i2JSUmGBlw7os
X-Gm-Gg: ASbGncufmV4xo78s1m3keyxvHOz7h1PxTbuU9KwtBie4LwbjGHdXQtNMcG5TUHieTwM
	JqphLBerEFeQURKibUG/5vyJU/PBJZ2+9D2VKs2j71PoEHDGWQot9zFmmbtCg+Heg2AZu2rP6mJ
	ALeG9h7LMKFpLAe178adQXGQ8UAmOzQfrClGDTuFRoZA8dkJbjVewOa7FT2kxegL9fpG3hCq4CB
	7TYWmwRfXQ+frvGHuO1Tpc2IXerj2GobPIDm+tRRE6jSdvbPzVU43R4hyOu1EzmmhDIJJu1SIoU
	q8EHsKzvxY1qLKmA
X-Google-Smtp-Source: AGHT+IFKAz99h9746CMZwIh9GNzBuQW/I4ULyE7LJ1uPcq6ClnndWEYHQg26jz8o5htjUtlE6Iq0eQ==
X-Received: by 2002:a17:906:f6d7:b0:abb:b092:dae0 with SMTP id a640c23a62f3a-abbb092dee6mr395928266b.11.1739885406407;
        Tue, 18 Feb 2025 05:30:06 -0800 (PST)
Received: from DESKTOP5CB5QGU ([2001:638:911:b28::102])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb945da4a1sm447470166b.132.2025.02.18.05.30.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2025 05:30:06 -0800 (PST)
From: <john.achkar.r404@gmail.com>
To: "'Rob Kossler'" <rkossler@nd.edu>,
	"'Stuart Austin'" <SAustin@criticalsoftwaresystems.com>
References: <000801db8152$54ff4b00$fefde100$@gmail.com> <000901db8157$c73f64c0$55be2e40$@com> <CAB__hTRGK3BsOgoaXcQt3zuz9u7WSWWWTYYu3o+kEwdGnC8hTw@mail.gmail.com>
In-Reply-To: <CAB__hTRGK3BsOgoaXcQt3zuz9u7WSWWWTYYu3o+kEwdGnC8hTw@mail.gmail.com>
Date: Tue, 18 Feb 2025 14:30:04 +0100
Message-ID: <000f01db8209$38712fa0$a9538ee0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQD+4OHfAQl06GZYq6cKNQUpldEqKQH1JUVDAnUVOZ204v1S8A==
Content-Language: en-gb
Message-ID-Hash: SC65ZLTB4HMFMQGWI62D7Q6JHKR376YS
X-Message-ID-Hash: SC65ZLTB4HMFMQGWI62D7Q6JHKR376YS
X-MailFrom: john.achkar.r404@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: High power TX/RX same antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SC65ZLTB4HMFMQGWI62D7Q6JHKR376YS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3193896444955207103=="

This is a multipart message in MIME format.

--===============3193896444955207103==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0010_01DB8211.9A360CD0"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_0010_01DB8211.9A360CD0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Attenuators on RX port will decrease the uplink performance, which will =
result lower coverage even with high power transmitted on =
downlink=E2=80=A6
with active T/R switch and TDD, how shall I synchronize the DL/UL slots =
timing with the switch input controller? Without any delay and very =
accurately.

=20

Best,

=20

From: Rob Kossler <rkossler@nd.edu>=20
Sent: 17 February 2025 17:38
To: Stuart Austin <SAustin@criticalsoftwaresystems.com>
Cc: john.achkar.r404@gmail.com; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: High power TX/RX same antenna

=20

If you are using TDD, you may need a T/R switch to switch out your =
receiver during transmission. If you are using FDD, you may need a =
diplexer.

Rob

=20

On Mon, Feb 17, 2025 at 11:20=E2=80=AFAM Stuart Austin =
<SAustin@criticalsoftwaresystems.com =
<mailto:SAustin@criticalsoftwaresystems.com> > wrote:

Can you just add more attenuation between the output of the circulator =
port that goes to the RX port on the N310?=20

=20

From: john.achkar.r404@gmail.com <mailto:john.achkar.r404@gmail.com>  =
[mailto:john.achkar.r404@gmail.com <mailto:john.achkar.r404@gmail.com> ] =

Sent: Monday, February 17, 2025 10:41 AM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
Subject: [USRP-users] High power TX/RX same antenna

=20

Hi,

=20

I am using a N310, with OAI to transmit 5G signal. I want to transmit 40 =
dBm using one antenna connected on both TX and RX ports. The best =
circulator I found has 18 dB isolation, which isn=E2=80=99t sufficient =
considering -15 dBm USRP max input power.

What is the best approach to consider?

Thanks a lot.

=20

Best regards,

Charbel

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_000_0010_01DB8211.9A360CD0
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3Den-DE link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>Attenuators on RX port will decrease the uplink =
performance, which will result lower coverage even with high power =
transmitted on downlink=E2=80=A6<br>with active </span>T/R switch<span =
lang=3DEN-GB> and TDD, how shall I synchronize the DL/UL slots timing =
with the switch input controller? Without any delay and very =
accurately.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Rob Kossler =
&lt;rkossler@nd.edu&gt; <br><b>Sent:</b> 17 February 2025 =
17:38<br><b>To:</b> Stuart Austin =
&lt;SAustin@criticalsoftwaresystems.com&gt;<br><b>Cc:</b> =
john.achkar.r404@gmail.com; =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] Re: High =
power TX/RX same antenna<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>If you =
are using TDD, you may need a T/R switch to switch out your receiver =
during transmission. If you are using FDD, you may need a =
diplexer.<o:p></o:p></p><div><p =
class=3DMsoNormal>Rob<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Mon, Feb 17, 2025 at 11:20=E2=80=AFAM Stuart Austin &lt;<a =
href=3D"mailto:SAustin@criticalsoftwaresystems.com">SAustin@criticalsoftw=
aresystems.com</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:#1F497D'>Can you just add more attenuation =
between the output of the circulator port that goes to the RX port on =
the N310? </span><span lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:#1F497D'>&nbsp;</span><span =
lang=3DEN-US><o:p></o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma",sans-serif'>From:</span></=
b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Tahoma",sans-serif'> <a =
href=3D"mailto:john.achkar.r404@gmail.com" =
target=3D"_blank">john.achkar.r404@gmail.com</a> [mailto:<a =
href=3D"mailto:john.achkar.r404@gmail.com" =
target=3D"_blank">john.achkar.r404@gmail.com</a>] <br><b>Sent:</b> =
Monday, February 17, 2025 10:41 AM<br><b>To:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> =
[USRP-users] High power TX/RX same antenna</span><span =
lang=3DEN-US><o:p></o:p></span></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>Hi,</span><span lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>&nbsp;</span><span lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>I am using a N310, with OAI to transmit 5G signal. I want =
to transmit 40 dBm using one antenna connected on both TX and RX ports. =
The best circulator I found has 18 dB isolation, which isn=E2=80=99t =
sufficient considering -15 dBm USRP max input power.</span><span =
lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>What is the best approach to consider?</span><span =
lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>Thanks a lot.</span><span =
lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>&nbsp;</span><span lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>Best regards,</span><span =
lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-GB>Charbel</span><span =
lang=3DEN-US><o:p></o:p></span></p></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></di=
v></blockquote></div></div></body></html>
------=_NextPart_000_0010_01DB8211.9A360CD0--

--===============3193896444955207103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3193896444955207103==--
