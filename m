Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61938A3A337
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 17:51:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 405DE385AD7
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 11:51:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739897515; bh=UhiodVeqJxQhIx6h9dxR1dsEFBq72W43GSEl5PVTQTo=;
	h=From:To:References:In-Reply-To:Date:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=dHhz1wudvsS8Ggo3kYCyZZwonyyirKMHJx9D0tjHGpJfSZsMmVwkEFfziYEEL44v0
	 YL6fzJJG2HYW7uEpqjbLLhrIbTnC/U+fUiMd3sDcXJ3I+lyKK9qstvs/HxVzTBPOJ3
	 ah3UvhHQ06IUdW450cz9rV5UdrKkhPKjUDcy6gOIX9jTOsleOs1bZLa5hfuvNJad4E
	 ItSctW8Q2u/ZlLtCobzMlHU7+hlGq2/7HPxNpuDXizxfYmXf3x3jmnlZwEkAL64aGw
	 K7Id5a40LXv5LIUVOb03MPOgWHTV2H9xR0ueBfvNFQCXeZStNfRo+qoWWPPw+qrJkp
	 PpeiJIPo4RzyA==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id B90133858C0
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 11:51:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OA/Bbc6o";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aaec61d0f65so1173102966b.1
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 08:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739897508; x=1740502308; darn=lists.ettus.com;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PEkCVtKtLR5j1LSTpkouVXu3HVr/rr3JRkHKoyJLRhw=;
        b=OA/Bbc6oP01fHzLU7z23C9H7o36Jb2pOqOY4ylS0zry+iy3cwdkFOhBrIVdf5I1Ymo
         +cjPOjgubIViqi+eTRodSVKkbuZE0gLeBMG5OvShUi5HWMhpGnCdNmffGuRu5j9r76FZ
         tE0vh0PZGHbsFbts1u+tX0waDBzU/HDlgtMFYu0JA1GFoOOIcCqHgxRIhY22L6J+AIQU
         YkAC/UkuNtd6MDpkkFtQtYcMitLzCui3Jlcc+qs4nBESj2YdPOnHNyWBGSr2Fit6HQAm
         5m0An5ZV2iVcy1uy8YZ7t4fxyI4jUBglpdqjadPuPKI8aq1MSwz8H+hgMeLRxUwpuSZ/
         R77g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739897508; x=1740502308;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PEkCVtKtLR5j1LSTpkouVXu3HVr/rr3JRkHKoyJLRhw=;
        b=RdXGx9RIUUN/ZfG3nctOwU0vgW1SgIVVRLhhmKrEp2/l+ajHe6yTzZlIb8icZ0YXJF
         6qPgKJyh46aPGVFhk6o/+4WlUHrwlrRcVcEkkdJngWGbLIH2shEpULCVSnkuTF5hGgc5
         G198S1xBY7p5i4GpULHaC8SpwyqHVTD0aWyFPrsnp3O5i6L5WmFP5V3IuLT6rqzOJkIN
         jUMlYutwbdie9UzPWhwTy/jSPim9aIoRtQcLNeur6WG36FoQ48UWrXKeaoVWbXROohPw
         QdIcdkydawNhjmh71oJOT1JWF/+xYlbRhTMigj5KrzY0S/G/KtqQhhUMCGdfkpOlXnEv
         +63Q==
X-Gm-Message-State: AOJu0YzpWyLNt11PtNVemb1gPN8e8wGUT0g/HL+/J1dNdzuZrhTnWXPL
	+fKB/NCPCaPSMOGZqzS5amrrnZti5Ypll7iIocZMnDCS4JWlD0D9
X-Gm-Gg: ASbGncuHDdsER2q+hEne7qIvVObssIw9UVv2sNImrQUkW0AmHGeJpq14MNwvJrd25SH
	Oa1wMlyWv9ypcoReoa09QWizmOjpquWXMnhLO/og1wMc75pRyocZmp4k8KMe6Y5BwogCsJk597+
	fbeJQrWcfOMoF2mE3SaFkgpKKqZ14M62x1hUDxPWZ/31IQMoNOJqtiAE07jG76QMjFAY0rRR6N1
	gKema+jk74JUgnMy+0z1tIZyDFK+tlRxevs8IMdPSqZZyCH2Kefl3ZOnKs2658pXxXTcAID6Hgo
	eK2kZLzgltdorPON
X-Google-Smtp-Source: AGHT+IG94Y6xiiHsjmblUUYG1Iq/TnzufZI7oqFB1vYAy0g6cxlsUtLAmTvPZuCRCa7hYxNBWXo/Cg==
X-Received: by 2002:a17:906:c154:b0:ab7:8930:5669 with SMTP id a640c23a62f3a-abb70d2f836mr1402291066b.18.1739897507207;
        Tue, 18 Feb 2025 08:51:47 -0800 (PST)
Received: from DESKTOP5CB5QGU ([2001:638:911:b28::102])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb804fc0b3sm630759666b.11.2025.02.18.08.51.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2025 08:51:46 -0800 (PST)
From: <john.achkar.r404@gmail.com>
To: "'David Raeman'" <david@SynopticEngineering.com>,
	"'Rob Kossler'" <rkossler@nd.edu>,
	"'Stuart Austin'" <SAustin@criticalsoftwaresystems.com>
References: <000801db8152$54ff4b00$fefde100$@gmail.com> <000901db8157$c73f64c0$55be2e40$@com> <CAB__hTRGK3BsOgoaXcQt3zuz9u7WSWWWTYYu3o+kEwdGnC8hTw@mail.gmail.com> <000f01db8209$38712fa0$a9538ee0$@gmail.com> <BN2P110MB174768DF459B70269C7FEE39B7FAA@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN2P110MB174768DF459B70269C7FEE39B7FAA@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Date: Tue, 18 Feb 2025 17:51:44 +0100
Message-ID: <005601db8225$64fc78b0$2ef56a10$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQD+4OHfAQl06GZYq6cKNQUpldEqKQH1JUVDAnUVOZ0CUlUk/wHSUWPDtMIQAIA=
Content-Language: en-gb
Message-ID-Hash: WRQ64WZBJZGDIES75SUSNSHQ7JZXRFLJ
X-Message-ID-Hash: WRQ64WZBJZGDIES75SUSNSHQ7JZXRFLJ
X-MailFrom: john.achkar.r404@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: High power TX/RX same antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WRQ64WZBJZGDIES75SUSNSHQ7JZXRFLJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4119177933919434310=="

This is a multipart message in MIME format.

--===============4119177933919434310==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0057_01DB822D.C6C1F220"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_0057_01DB822D.C6C1F220
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

=20

Thanks a lot for this. I will have a look on the =E2=80=9CATR=E2=80=9D =
GPIO functionality.

Yes 40 dBm after the power amplifier inline and before the switch. I =
need to check if I can find a switch with 55 dB isolation or 2 switches =
in cascade summing the isolation.

=20

Best=20

John

=20

From: David Raeman <david@SynopticEngineering.com>=20
Sent: 18 February 2025 15:41
To: john.achkar.r404@gmail.com; 'Rob Kossler' <rkossler@nd.edu>; 'Stuart =
Austin' <SAustin@criticalsoftwaresystems.com>
Cc: usrp-users@lists.ettus.com
Subject: RE: [USRP-users] Re: High power TX/RX same antenna

=20

Hi John,

=20

You might investigate whether the =E2=80=9CATR=E2=80=9D GPIO =
functionality built into UHD will work for your application. It can =
automatically transition GPIO pins to different states during =
transmission and reception.

=20

If that doesn=E2=80=99t work for your use case, I=E2=80=99ve had success =
using the software GPIO API to directly control an external T/R switch =
using timed commands that were synchronized with my schedule. ATR =
wouldn=E2=80=99t work for my application because I had TX/RX running =
continuously on separate channels, and I was blanking the TX stream in =
software. I was allowing ~15us deadband between timeslots for the =
transition, but I think it could be tightened up by measuring and =
calibrating for the propagation latency and considering your switch =
settling time. My code looked something like this:

        usrp->set_command_time(start_tick - TX_LEADING_GUARD, m_id);

        usrp->set_gpio_attr("FP0", "OUT", m_tx_assert_state, =
m_tx_pin_mask, m_id);

        usrp->set_command_time(end_tick + TX_TRAILING_GUARD, m_id);

        usrp->set_gpio_attr("FP0", "OUT", m_tx_deassert_state, =
m_tx_pin_mask, m_id);

        usrp->clear_command_time(m_id);

=20

However, I strongly suggest looking at ATR as an easier, first-choice =
approach.

=20

You mention transmitting at +40dBm =E2=80=93 is that conducted power =
with a power amplifier inline, or EIRP? 55dB difference is still a lot =
of isolation even for a switch.

=20

-David

=20

From: john.achkar.r404@gmail.com <mailto:john.achkar.r404@gmail.com>  =
<john.achkar.r404@gmail.com <mailto:john.achkar.r404@gmail.com> >=20
Sent: Tuesday, February 18, 2025 8:30 AM
To: 'Rob Kossler' <rkossler@nd.edu <mailto:rkossler@nd.edu> >; 'Stuart =
Austin' <SAustin@criticalsoftwaresystems.com =
<mailto:SAustin@criticalsoftwaresystems.com> >
Cc: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
Subject: [USRP-users] Re: High power TX/RX same antenna

=20

=09
You don't often get email from john.achkar.r404@gmail.com =
<mailto:john.achkar.r404@gmail.com> . Learn why this is important =
<https://aka.ms/LearnAboutSenderIdentification> =20

=09

Attenuators on RX port will decrease the uplink performance, which will =
result lower coverage even with high power transmitted on =
downlink=E2=80=A6
with active T/R switch and TDD, how shall I synchronize the DL/UL slots =
timing with the switch input controller? Without any delay and very =
accurately.

=20

Best,

=20

From: Rob Kossler <rkossler@nd.edu <mailto:rkossler@nd.edu> >=20
Sent: 17 February 2025 17:38
To: Stuart Austin <SAustin@criticalsoftwaresystems.com =
<mailto:SAustin@criticalsoftwaresystems.com> >
Cc: john.achkar.r404@gmail.com <mailto:john.achkar.r404@gmail.com> ; =
usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
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


------=_NextPart_000_0057_01DB822D.C6C1F220
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
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
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
	{mso-style-type:personal;
	font-family:Aptos;
	color:windowtext;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3Den-DE link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
lang=3DEN-US>Hi David,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thanks a lot for this. I will have a look on the =
=E2=80=9CATR=E2=80=9D GPIO functionality.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Yes 40 dBm after the power =
amplifier inline and before the switch. I need to check if I can find a =
switch with 55 dB isolation or 2 switches in cascade summing the =
isolation.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best <o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>John<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> David Raeman =
&lt;david@SynopticEngineering.com&gt; <br><b>Sent:</b> 18 February 2025 =
15:41<br><b>To:</b> john.achkar.r404@gmail.com; 'Rob Kossler' =
&lt;rkossler@nd.edu&gt;; 'Stuart Austin' =
&lt;SAustin@criticalsoftwaresystems.com&gt;<br><b>Cc:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> RE: [USRP-users] Re: High =
power TX/RX same antenna<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-family:Aptos'>Hi =
John,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:Aptos'>You =
might investigate whether the =E2=80=9CATR=E2=80=9D GPIO functionality =
built into UHD will work for your application. It can automatically =
transition GPIO pins to different states during transmission and =
reception.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:Aptos'>If that =
doesn=E2=80=99t work for your use case, I=E2=80=99ve had success using =
the software GPIO API to directly control an external T/R switch using =
timed commands that were synchronized with my schedule. ATR =
wouldn=E2=80=99t work for my application because I had TX/RX running =
continuously on separate channels, and I was blanking the TX stream in =
software. I was allowing ~15us deadband between timeslots for the =
transition, but I think it could be tightened up by measuring and =
calibrating for the propagation latency and considering your switch =
settling time. My code looked something like this:<br><br></span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp; =
&nbsp; &nbsp; &nbsp; usrp-&gt;set_command_time(start_tick - =
TX_LEADING_GUARD, m_id);<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp; =
&nbsp; &nbsp; &nbsp; usrp-&gt;set_gpio_attr(&quot;FP0&quot;, =
&quot;OUT&quot;, m_tx_assert_state, m_tx_pin_mask, =
m_id);<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp; &nbsp; =
&nbsp; &nbsp; usrp-&gt;set_command_time(end_tick + TX_TRAILING_GUARD, =
m_id);<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp; &nbsp; =
&nbsp; &nbsp; usrp-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, =
m_tx_deassert_state, m_tx_pin_mask, m_id);<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp; &nbsp; =
&nbsp; &nbsp; usrp-&gt;clear_command_time(m_id);<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'>However, I strongly suggest looking at ATR =
as an easier, first-choice approach.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:Aptos'>You =
mention transmitting at +40dBm =E2=80=93 is that conducted power with a =
power amplifier inline, or EIRP? 55dB difference is still a lot of =
isolation even for a switch.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'>-David<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:Aptos'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> <a =
href=3D"mailto:john.achkar.r404@gmail.com">john.achkar.r404@gmail.com</a>=
 &lt;<a =
href=3D"mailto:john.achkar.r404@gmail.com">john.achkar.r404@gmail.com</a>=
&gt; <br><b>Sent:</b> Tuesday, February 18, 2025 8:30 AM<br><b>To:</b> =
'Rob Kossler' &lt;<a =
href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;; 'Stuart Austin' =
&lt;<a =
href=3D"mailto:SAustin@criticalsoftwaresystems.com">SAustin@criticalsoftw=
aresystems.com</a>&gt;<br><b>Cc:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br><b>Subject:</b> [USRP-users] Re: High power TX/RX same =
antenna<o:p></o:p></span></p></div></div><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><table class=3DMsoNormalTable =
border=3D0 cellspacing=3D0 cellpadding=3D0 align=3Dleft width=3D"100%" =
style=3D'width:100.0%'><tr><td width=3D0 =
style=3D'width:.3pt;background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt =
1.5pt'></td><td width=3D"100%" =
style=3D'width:100.0%;background:#EAEAEA;padding:5.25pt 3.75pt 5.25pt =
11.25pt;aspect-ratio: revert !important;background:revert =
!important;block-size: revert !important;border:revert =
!important;bottom: revert !important;color:revert =
!important;color-scheme: revert !important;content-visibility: revert =
!important;cursor:revert !important;direction:revert =
!important;display:revert !important;font-size:revert =
!important;height:revert !important;hyphens: revert =
!important;letter-spacing:revert !important;line-height:revert =
!important;margin:revert !important;opacity: revert !important;order: =
revert !important;outline: revert !important;overflow:revert =
!important;padding:revert !important;position:revert !important;resize: =
revert !important;rotate: revert !important;scale: revert =
!important;tab-size: revert !important;table-layout:revert =
!important;text-align:revert !important;text-indent:revert =
!important;text-orientation: revert !important;text-overflow: revert =
!important;text-shadow:revert !important;text-transform:revert =
!important;text-wrap: revert !important;top:revert =
!important;transition: revert !important;user-select: revert =
!important;vertical-align:revert !important;visibility:revert =
!important;white-space:revert !important;width:revert =
!important;word-break:revert !important;word-spacing:revert =
!important;writing-mode:revert !important;zoom: revert =
!important'><div><p class=3DMsoNormal =
style=3D'mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-wr=
ap:around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizo=
ntal:column;mso-height-rule:exactly'><span =
style=3D'font-size:9.0pt;font-family:"Segoe =
UI",sans-serif;color:#212121'>You don't often get email from <a =
href=3D"mailto:john.achkar.r404@gmail.com">john.achkar.r404@gmail.com</a>=
. <a href=3D"https://aka.ms/LearnAboutSenderIdentification">Learn why =
this is important</a> <o:p></o:p></span></p></div></td><td width=3D75 =
style=3D'width:56.25pt;background:#EAEAEA;padding:5.25pt 3.75pt 5.25pt =
3.75pt;aspect-ratio: revert !important;background:revert =
!important;block-size: revert !important;border:revert =
!important;bottom: revert !important;color:revert =
!important;color-scheme: revert !important;content-visibility: revert =
!important;cursor:revert !important;direction:revert =
!important;display:revert !important;font-size:revert =
!important;height:revert !important;hyphens: revert =
!important;letter-spacing:revert !important;line-height:revert =
!important;margin:revert !important;opacity: revert !important;order: =
revert !important;outline: revert !important;overflow:revert =
!important;padding:revert !important;position:revert !important;resize: =
revert !important;rotate: revert !important;scale: revert =
!important;tab-size: revert !important;table-layout:revert =
!important;text-align:revert !important;text-indent:revert =
!important;text-orientation: revert !important;text-overflow: revert =
!important;text-shadow:revert !important;text-transform:revert =
!important;text-wrap: revert !important;top:revert =
!important;transition: revert !important;user-select: revert =
!important;vertical-align:revert !important;visibility:revert =
!important;white-space:revert !important;width:revert =
!important;word-break:revert !important;word-spacing:revert =
!important;writing-mode:revert !important;zoom: revert !important;align: =
left !important'></td></tr></table><p class=3DMsoNormal><span =
lang=3DEN-US>Attenuators on RX port will decrease the uplink =
performance, which will result lower coverage even with high power =
transmitted on downlink=E2=80=A6<br>with active T/R switch</span><span =
lang=3DEN-GB> and TDD, how shall I synchronize the DL/UL slots timing =
with the switch input controller? Without any delay and very =
accurately.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
lang=3DEN-US>From:</span></b><span lang=3DEN-US> Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; <br><b>Sent:</b> =
17 February 2025 17:38<br><b>To:</b> Stuart Austin &lt;<a =
href=3D"mailto:SAustin@criticalsoftwaresystems.com">SAustin@criticalsoftw=
aresystems.com</a>&gt;<br><b>Cc:</b> <a =
href=3D"mailto:john.achkar.r404@gmail.com">john.achkar.r404@gmail.com</a>=
; <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br><b>Subject:</b> Re: [USRP-users] Re: High power TX/RX same =
antenna<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNormal><span =
lang=3DEN-US>If you are using TDD, you may need a T/R switch to switch =
out your receiver during transmission. If you are using FDD, you may =
need a diplexer.<o:p></o:p></span></p><div><p class=3DMsoNormal><span =
lang=3DEN-US>Rob<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><span lang=3DEN-US>On Mon, Feb 17, 2025 at =
11:20=E2=80=AFAM Stuart Austin &lt;<a =
href=3D"mailto:SAustin@criticalsoftwaresystems.com">SAustin@criticalsoftw=
aresystems.com</a>&gt; wrote:<o:p></o:p></span></p></div><div><div><p =
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
class=3DMsoNormal><span =
lang=3DEN-US>_______________________________________________<br>USRP-user=
s mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></span><=
/p></div></body></html>
------=_NextPart_000_0057_01DB822D.C6C1F220--

--===============4119177933919434310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4119177933919434310==--
