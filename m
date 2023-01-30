Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F0668174B
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 18:10:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCF53383CE7
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 12:09:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675098598; bh=XyuFyPZyWcaJyyOCgKWQff4CX2P+XxPg41y4X3rbh8I=;
	h=From:References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=d8iQ7fP8XFvPTLNkPRStAux+jSKm560LQ1n+8wUhr0Q8hpNkwn2GxVGHMoD8gyJ2B
	 kQGOAd1NMWCEWKG8yU7O1O/TspFvll9h4OFiR36DucGBJLbQzLddpfdzYVVjPxJtZz
	 o7KBkFt9fMGbNOlOkzCQu+ShCIIz7CqSC22izjdGmTAatx8nDqqa6klI1gx3OG0met
	 kufVvmIbOtvrP4OAIL1ZqrIUS//XTKjZhivTLWkWm7vTTtF+Jpk5b+zARJ5bEnadT3
	 x+gBzgVryDfSDAgO0FB8bEAfZJapyJTCR97bsjPNoBe2JfdvETLkMfAgjuUtaZYCyg
	 2IgMyLEPL2wUg==
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E276381011
	for <usrp-users@lists.ettus.com>; Mon, 30 Jan 2023 12:08:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="ANSlVlYP";
	dkim-atps=neutral
Received: by mail-pj1-f54.google.com with SMTP id cl23-20020a17090af69700b0022c745bfdc3so5124931pjb.3
        for <usrp-users@lists.ettus.com>; Mon, 30 Jan 2023 09:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google;
        h=to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KjyEMMCuP3Fn+l8WBo1v4ixl/SBM9EGfzhnVNOhDJWI=;
        b=ANSlVlYPsxWurcO9N7y7UHH6/+eAkenKrSkfPvq67h7yW6Ak71QP4jNd2vn9iHN0wG
         mpw9Yn6RsiGSahVp1dQLCDdkT1mvQFkUnpQ8iLCq/T41VLr9BIwCoIfgkRvIRrGzRfRX
         0tCdLtSWAh9TqVzqkux7n1xK5sn7+s4V/f8gSk2xScUkcbYJlA/EZ1pdKF1qiQifwyCc
         TrLyEU/rTG71NvuyYsrLKadfvaPrDipK5MOnMu7YyXF/mfEP3W2+J++eSr5kE62O3VCq
         7DfMp3g6z8ijIz6X/f+vJb9UvAS/S+TdvratpUrg5RM+kllAPJ0idqgxl6n7Ea9qLJ/g
         amTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KjyEMMCuP3Fn+l8WBo1v4ixl/SBM9EGfzhnVNOhDJWI=;
        b=qfoPo/IwGaaY3JoCdEwg/3cfG5muveHOa6Yy5Qr0MJqbCUOyo/L8URhMEgNA8XYpuZ
         upBLnPwt++hlWXv730ySKbD9R9/BitDIfRPWtzcyFVcNIK8l9pT5Obdt7drxjGa9Z++y
         7EZiDQiEfINJhUty1BP+VoNIkc9ckA3r4lQQT8az+f1K1HuwgcH3vxMjTv854bbqXmAl
         whGyLvTZQTgDtcxO8K/bUAMnoiT5SSR4JxHoDo83qWvIgm1LtzNYhGCVCY8/HazHE7U4
         dcniYXQhq8z4RNaHjR2x7cCwv6zw0b5oZnwU/3FG/XziLS5UcSIT+esGJ07SA8S6zx/2
         0gUw==
X-Gm-Message-State: AFqh2krDnBRxAAmZ95J4whz3CX6Yi6WADSzCW9TCeqN5cf/J/rlSRJ2l
	PHneXUVwyoAnlZf/HiLpSNkLn2/gg0AvGcu/h3mXRMtbZNnjDQ==
X-Google-Smtp-Source: AMrXdXvDHSrgvTetjQlW4Bok3qD0z6OSK8ORj1jR+hm1hCeBmuC2r3DF7VvQFnDOoo59fPhgZsUWKzLVP0SrCUFojiY=
X-Received: by 2002:a17:90a:b791:b0:226:2a7c:9ba9 with SMTP id
 m17-20020a17090ab79100b002262a7c9ba9mr6620795pjr.128.1675098517043; Mon, 30
 Jan 2023 09:08:37 -0800 (PST)
From: Ryan Retting <ryan@chaosinc.com>
References: 7fcb023d1c798c360ae1a7c1683dad1d@mail.gmail.com
In-Reply-To: 7fcb023d1c798c360ae1a7c1683dad1d@mail.gmail.com
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdkxrFyO+/YQXUJkSxaFBUTg+EG5kQDIQykw
Date: Mon, 30 Jan 2023 09:08:35 -0800
Message-ID: <dfc469eb206ff1215b4c729a728f9c09@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CQMPVFZBLEJOHLD35SKEJRMLHFF4G4C4
X-Message-ID-Hash: CQMPVFZBLEJOHLD35SKEJRMLHFF4G4C4
X-MailFrom: ryan@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: syncing system clock to gpsdo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CQMPVFZBLEJOHLD35SKEJRMLHFF4G4C4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2694762703877421496=="

--===============2694762703877421496==
Content-Type: multipart/alternative; boundary="000000000000129a4205f37e44ec"

--000000000000129a4205f37e44ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Any advise?

Thanks!

              -Ryan





*From:* Ryan Retting <ryan@chaosinc.com>
*Sent:* Thursday, January 26, 2023 10:03 AM
*To:* 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
*Subject:* syncing system clock to gpsdo



Hello,



I have the N320 configured with the gpsdo.

I=E2=80=99m SSHed into the N320 and running directly on the N320.



I set clock_source & time_source to gpsdo in /etc/uhd/mpm.conf



/usr/lib/uhd/examples/sync_to_gps

Runs successfully:


Waiting for reference lock...LOCKED

GPS Locked

USRP time: 1674755734.000000000

GPSDO time: 1674755734.000000000



SUCCESS: USRP time synchronized to GPS time





So, everything appears to be syncing correctly on the FPGA side.



However, =E2=80=9Cdate=E2=80=9D returns the wrong UTC time.





I don=E2=80=99t see anything in the ettus documentation for syncing the sys=
tem time
in the N320 (not an external host).

I don=E2=80=99t see chrony or ntpd installed.

gpsd --help shows Time Service features enabled.



What=E2=80=99s the recommended approach to syncing the Linux system time fr=
om the
integrated GPS within the N320?



Thanks,

-Ryan

--000000000000129a4205f37e44ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dus-ascii"><meta name=3D"Generator" content=3D"Microsoft Word 15 (filtere=
d medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" s=
tyle=3D"word-wrap:break-word"><div class=3D"WordSection1"><p class=3D"MsoNo=
rmal">Any advise?</p><p class=3D"MsoNormal">Thanks!</p><p class=3D"MsoNorma=
l">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 -Ryan</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=
=A0</p><div><div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;paddin=
g:3.0pt 0in 0in 0in"><p class=3D"MsoNormal"><b>From:</b> Ryan Retting &lt;<=
a href=3D"mailto:ryan@chaosinc.com">ryan@chaosinc.com</a>&gt; <br><b>Sent:<=
/b> Thursday, January 26, 2023 10:03 AM<br><b>To:</b> &#39;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&#39; &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
<br><b>Subject:</b> syncing system clock to gpsdo</p></div></div><p class=
=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Hello,</p><p class=3D"MsoNo=
rmal">=C2=A0</p><p class=3D"MsoNormal">I have the N320 configured with the =
gpsdo.</p><p class=3D"MsoNormal">I=E2=80=99m SSHed into the N320 and runnin=
g directly on the N320.</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"Mso=
Normal">I set clock_source &amp; time_source to gpsdo in /etc/uhd/mpm.conf<=
/p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">/usr/lib/uhd/exa=
mples/sync_to_gps </p><p class=3D"MsoNormal">Runs successfully:</p><p class=
=3D"MsoNormal" style=3D"margin-left:.5in"><br>Waiting for reference lock...=
LOCKED</p><p class=3D"MsoNormal" style=3D"margin-left:.5in">GPS Locked</p><=
p class=3D"MsoNormal" style=3D"margin-left:.5in">USRP time: 1674755734.0000=
00000</p><p class=3D"MsoNormal" style=3D"margin-left:.5in">GPSDO time: 1674=
755734.000000000</p><p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=
=A0</p><p class=3D"MsoNormal" style=3D"margin-left:.5in">SUCCESS: USRP time=
 synchronized to GPS time</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"M=
soNormal">=C2=A0</p><p class=3D"MsoNormal">So, everything appears to be syn=
cing correctly on the FPGA side.</p><p class=3D"MsoNormal">=C2=A0</p><p cla=
ss=3D"MsoNormal">However, =E2=80=9Cdate=E2=80=9D returns the wrong UTC time=
.</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p c=
lass=3D"MsoNormal">I don=E2=80=99t see anything in the ettus documentation =
for syncing the system time in the N320 (not an external host).</p><p class=
=3D"MsoNormal">I don=E2=80=99t see chrony or ntpd installed.</p><p class=3D=
"MsoNormal">gpsd --help shows Time Service features enabled.</p><p class=3D=
"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">What=E2=80=99s the recommended=
 approach to syncing the Linux system time from the integrated GPS within t=
he N320?</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Thanks,=
</p><p class=3D"MsoNormal" style=3D"text-indent:.5in">-Ryan</p><p class=3D"=
MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal=
">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0<=
/p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p></div>=
</body></html>

--000000000000129a4205f37e44ec--

--===============2694762703877421496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2694762703877421496==--
