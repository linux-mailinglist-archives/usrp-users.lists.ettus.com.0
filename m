Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5128F67D3BA
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 19:03:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 120DB3842FA
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 13:03:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674756217; bh=tq4yCXlF7wwV+DOL34CowbjtxwVookMi2nEWpKHPiqY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WRxOwMQOGWE7ZmSq61U9USKWnhTThGC+p+u4OFNcrmpHZlw2SZ3eXmDfhVEdA7XPb
	 yyicXF61sYi2jSH3KKczOVn6CX6nj7tMLnvL9CQ/c/I+XP9OWiUhCA7DTcg69H3RiI
	 M1RgUsa8Zgrli5C1/CzETm6lAxdW3nHNAxke7QwDCvRxxOV1XYJstFodd0/9dL3Ji/
	 /JW12BuanuGXcmt6yUXkFBp3wImIRaWELn3pca6LDVwdKf2GAJRp8xbs2Tu4ImRCjd
	 Yl2b8Wetspt2LFJJEsvdXUzvWI/KmJ0m2m7HbOmtX/fDuXCdGCHEsZGrF1tW4/e7BW
	 phaIrP8tdyAqg==
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A4113842F0
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 13:02:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="kiHop1FP";
	dkim-atps=neutral
Received: by mail-pj1-f44.google.com with SMTP id lp10so2280182pjb.4
        for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 10:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google;
        h=to:subject:message-id:date:thread-index:mime-version:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RatvhhEq95QjQw/3L9l2wpRSv+14ys/J4E/g0herSr0=;
        b=kiHop1FP8bgeVHwyNE4+NnyVo0DZdZIm9wcjXGzhtnZ2VtNpkzscYYcv8wm2u3tjWt
         Nw1NlXSStzfevnASgN+TFoNkg5YOoMc0odGszNar8Swi2VuKTPBm+CIGLzBwK/0kaysN
         OTmHZHoIIrTsZQvQ8vcl9RArU2T49wOSSuneWVdJGQGQfEzBJe+rmunNgMBkHcaWu5KB
         ZWk97lnyvaj4poN+11+itoHrX8a0sLR+wJiN4dhYABw/iQ+V8bhf3e6YdDdLgRETVKxn
         gmpZla91JaJlR+CYpPxmZdAcI7VK7NE9hI4lIzBLIp5ChrdU2MIiXjv0fPQNd1vz6Yrx
         tlbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:thread-index:mime-version:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RatvhhEq95QjQw/3L9l2wpRSv+14ys/J4E/g0herSr0=;
        b=RWTz89QcZf1cerkvOA4IVQLT4j4COAvMIQY4CJwS1uukuR67XrTNA7aIGH8AWoaFuw
         Yp011ii6bGQaKUxZ4seOTRjHWv3wvJarb958rjlM2HT05toUl7LJAtsGRttj3rtepZeK
         dE2iWLrTYEFG8Ukds9YjKrF+NX5z2bSw4tVvVCK0GMF6eyblCV4aDJd1RQvdtGKtMEQC
         9BDTajUNdUiV0IpJfW+F9ZtcbgiAZ+m4OglXMLnMy6N55F+WrPvFAOdtlUumTgor1b8I
         q2UHXrPbfw6AVu6ZdSft+uBriLxE2DMl8UNeJC6h75o4eh/nIpMkRl0e6N3T7hG60CPw
         F55Q==
X-Gm-Message-State: AFqh2kojvndfS/w+voguqe+kYj8lXBI0HSpzJItSvL3trwtQYtpgMuTD
	VhC5zNQ3kayRZPui7wfur5b4im03poLf9N4LwDg2oIrFSXUt7Q==
X-Google-Smtp-Source: AMrXdXvMFkLA7LEXHHzQPIAmdp0+4Shcttu8BwIc1Uw+fhzwq1UzLAx/xI8azPUrX3sUkKNnWhL0TzAy96ggCsN2XOQ=
X-Received: by 2002:a17:90a:6342:b0:229:4c59:3eeb with SMTP id
 v2-20020a17090a634200b002294c593eebmr3397580pjs.51.1674756160040; Thu, 26 Jan
 2023 10:02:40 -0800 (PST)
From: Ryan Retting <ryan@chaosinc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdkxrFyO+/YQXUJkSxaFBUTg+EG5kQ==
Date: Thu, 26 Jan 2023 10:02:37 -0800
Message-ID: <7fcb023d1c798c360ae1a7c1683dad1d@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2X7QLC56Z34G4E2MKRA2LPRTBX3YU4NQ
X-Message-ID-Hash: 2X7QLC56Z34G4E2MKRA2LPRTBX3YU4NQ
X-MailFrom: ryan@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] syncing system clock to gpsdo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2X7QLC56Z34G4E2MKRA2LPRTBX3YU4NQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3094460677624912549=="

--===============3094460677624912549==
Content-Type: multipart/alternative; boundary="0000000000000145b705f32e8ed8"

--0000000000000145b705f32e8ed8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

--0000000000000145b705f32e8ed8
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" s=
tyle=3D"word-wrap:break-word"><div class=3D"WordSection1"><p class=3D"MsoNo=
rmal">Hello,</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">I h=
ave the N320 configured with the gpsdo.</p><p class=3D"MsoNormal">I=E2=80=
=99m SSHed into the N320 and running directly on the N320.</p><p class=3D"M=
soNormal">=C2=A0</p><p class=3D"MsoNormal">I set clock_source &amp; time_so=
urce to gpsdo in /etc/uhd/mpm.conf</p><p class=3D"MsoNormal">=C2=A0</p><p c=
lass=3D"MsoNormal">/usr/lib/uhd/examples/sync_to_gps </p><p class=3D"MsoNor=
mal">Runs successfully:</p><p class=3D"MsoNormal" style=3D"margin-left:.5in=
"><br>Waiting for reference lock...LOCKED</p><p class=3D"MsoNormal" style=
=3D"margin-left:.5in">GPS Locked</p><p class=3D"MsoNormal" style=3D"margin-=
left:.5in">USRP time: 1674755734.000000000</p><p class=3D"MsoNormal" style=
=3D"margin-left:.5in">GPSDO time: 1674755734.000000000</p><p class=3D"MsoNo=
rmal" style=3D"margin-left:.5in">=C2=A0</p><p class=3D"MsoNormal" style=3D"=
margin-left:.5in">SUCCESS: USRP time synchronized to GPS time</p><p class=
=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNo=
rmal">So, everything appears to be syncing correctly on the FPGA side.</p><=
p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">However, =E2=80=9Cda=
te=E2=80=9D returns the wrong UTC time.</p><p class=3D"MsoNormal">=C2=A0</p=
><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">I don=E2=80=99t se=
e anything in the ettus documentation for syncing the system time in the N3=
20 (not an external host).</p><p class=3D"MsoNormal">I don=E2=80=99t see ch=
rony or ntpd installed.</p><p class=3D"MsoNormal">gpsd --help shows Time Se=
rvice features enabled.</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"Mso=
Normal">What=E2=80=99s the recommended approach to syncing the Linux system=
 time from the integrated GPS within the N320?</p><p class=3D"MsoNormal">=
=C2=A0</p><p class=3D"MsoNormal">Thanks,</p><p class=3D"MsoNormal" style=3D=
"text-indent:.5in">-Ryan</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"Ms=
oNormal"> </p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=
=A0</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">=C2=A0</p><p=
 class=3D"MsoNormal"> </p></div></body></html>

--0000000000000145b705f32e8ed8--

--===============3094460677624912549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3094460677624912549==--
