Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F49948B04
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 10:15:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FAE9384C8E
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 04:15:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722932125; bh=Db0lV+6gtO6v2WoiPMIfezee4ozXHyc8dtdQaUJk/eI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=a17IplkNKETuiEifDwytybhO8LQ6QJSHK3IIYbBGCdnL6XRIjH5TU82uZxHErDvzi
	 QpPtRlFCCuPKxAu3/3YHZwALtQAbTebnRlEm51OUWTAo6NTkrU63XdS/O/Sch1zw56
	 qX60911bc7Zv5+wUFUIG8HphP0ELPOU959K3CU3VXnp4he/w7BOVgjDv1ZR9xW60dD
	 j3ce3q/hqe+53DL/onyrgD4wBUkG70bm5WkSOmBbX+u4HgH7X8i6sk4n9EFlI5TYV9
	 fjSPfupeaB67DjpVBwj0AZV0jgPSYKEK4yeVPIAl/d8/MZrKAozsaRbhNgDBiExn3e
	 9/4/RtSlT/PhQ==
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	by mm2.emwd.com (Postfix) with ESMTPS id CC1083849E7
	for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2024 04:15:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sibersci.com header.i=@sibersci.com header.b="eIVSYNSg";
	dkim-atps=neutral
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5d5f9d68805so162121eaf.3
        for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2024 01:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sibersci.com; s=google; t=1722932118; x=1723536918; darn=lists.ettus.com;
        h=to:subject:message-id:date:sensitivity:disposition-notification-to
         :importance:thread-index:mime-version:in-reply-to:references:from
         :return-receipt-to:from:to:cc:subject:date:message-id:reply-to;
        bh=iM7oEaiZLkEWFTzOg+DFBjCkxicm6CYRte2i7dV/lBw=;
        b=eIVSYNSgSidhuo/Ah3u1JNcvItgAY7LB1v1DZS/XqJN/WrcCIPKpWtF1DdjBzKC+MP
         ypoXzzYRDQwJFMii0BfOyPqKD8vSvmzfgO7QLwYAn6HySefoSjamFnuMGagsmqJgLlPT
         WN/OyDYpd5p+KqDVhzW5tu07pfLOsWTCNUw/vgLfwwo45Qd+6jC+opM2/8wCmFNnFBwd
         /7qc2qnXpT8ZvSz+0cnldPIYLqygPT8E6qcw6FeVLJSjCsel1sn1Ax23nmMQfXWZz6OH
         /ZFg6AyNrSaBnkn/dt7Vhkg1ZugM4x9CM4RlyAi+JTlPUzw71GtZcaROJ9N/t+cSJ8IT
         6fog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722932118; x=1723536918;
        h=to:subject:message-id:date:sensitivity:disposition-notification-to
         :importance:thread-index:mime-version:in-reply-to:references:from
         :return-receipt-to:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iM7oEaiZLkEWFTzOg+DFBjCkxicm6CYRte2i7dV/lBw=;
        b=mYOeOBRo7vugNWmF+wukHGr0dv303zJgnrFxrZiau9a73MSRyiWcbSK+Ht01AuqAox
         v5/e8kBuziAAGPb0bj701LU9d/0qTVhfudCfdffieskGNRz1HeLFKkLjltg/wcSQojVE
         i50fTIdufcQ+y2vRp+egVV4zZg32CfKHFgQd0mlkUN6nRUuDj231tbTnVgGu9Ms+IEUo
         ZNP7ZWt5ee787Iqx6DSOWzLCzolXrSZS/+gpomSLhHY/kFnvhQxSsbmdcAK8Gpz+5CBU
         mBeINcWFEHOdoyRCAQoMtCZnHTm2eXPMQw+EWywql0jIuJttTOWW06tdRLk1odp/6cS8
         xIkw==
X-Gm-Message-State: AOJu0YzmxJUi4msLZW+Zvqod5Xark3u8NSWiUKJADFIPezAu2Xdjbc0T
	uyMjbpRNojbfiqmtPNPAGjw7APwlHO/ig2qQM8YKlX/AkKZhDkBYBZSlWEhjcX9LWhVFFthP+O7
	uvph7sel1lrHPgBriDTMOVLHIw5m9hqP8bBSFgs8j13cR3HBS
X-Google-Smtp-Source: AGHT+IFIY+Y78jpyo40Go8eTXCWHAs0nrmd6B1nIp3lJ5584Qq8cmbULjzHd3b9LUoHfkbLQL/nwIb5qdTudQDLIgbw=
X-Received: by 2002:a05:6870:b527:b0:261:2072:7b5d with SMTP id
 586e51a60fabf-26891d461b3mr18666320fac.29.1722932118180; Tue, 06 Aug 2024
 01:15:18 -0700 (PDT)
References: 4b789aa26c85cd6dca151e37e62f132e@mail.gmail.com
In-Reply-To: 4b789aa26c85cd6dca151e37e62f132e@mail.gmail.com
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adrn10wOmPzaKIEkTPiZD4zRyO91MQ==
Importance: High
Sensitivity: Personal
Date: Tue, 6 Aug 2024 03:15:15 -0500
Message-ID: <7ff2a1b8f264d3f9d02e3d6fa60df7dc@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: K7JYQNFKKBQU2BZZHU57YMVKXX33D4GB
X-Message-ID-Hash: K7JYQNFKKBQU2BZZHU57YMVKXX33D4GB
X-MailFrom: scott_best@sibersci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Invalid permissions to write images destination on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K7JYQNFKKBQU2BZZHU57YMVKXX33D4GB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Dr. Scott Best via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Dr. Scott Best" <scott_best@sibersci.com>
Content-Type: multipart/mixed; boundary="===============2650261144986308122=="

--===============2650261144986308122==
Content-Type: multipart/alternative; boundary="000000000000e07292061eff648b"

--000000000000e07292061eff648b
Content-Type: text/plain; charset="UTF-8"

Dear USRP-Users Group,



I installed UHD 4.7 on an Ubuntu MiniPC following the online instructions.
It seems to be working OK, so I tried updating the firmware for an N200
that I picked up as a test vehicle for my set of new N320s.  I ran into a
bug that I have not found an answer to, as seen in the following Terminal
script with UHD commands shown in *BOLD TYPE*:



drscott@Ubuntu:~/workarea/uhd/host/utils$ *uhd_find_devices*

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
UHD_4.7.0.0-0-ga5ed1872

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

    serial: E2R16TEUN

    addr: 192.168.10.2

    name:

    type: usrp2





drscott@Ubuntu:~/workarea/uhd/host/utils$ *uhd_usrp_probe*

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
UHD_4.7.0.0-0-ga5ed1872

[INFO] [USRP2] Opening a USRP2/N-Series device...

Error: RuntimeError:

Please update the firmware and FPGA images for your device.

See the application notes for USRP2/N-Series for instructions.

Expected FPGA compatibility number 11, but got 9:

The FPGA build is not compatible with the host code build.

Please run:



"/usr/local/lib/uhd/utils/uhd_images_downloader.py"

"/usr/local/bin/uhd_image_loader" \

    --args="type=usrp2,addr=192.168.10.2"



drscott@Ubuntu:~/workarea/uhd/host/utils$
*/usr/local/lib/uhd/utils/uhd_images_downloader.py*

[INFO] Using base URL: https://files.ettus.com/binaries/cache/

[INFO] Images destination: /usr/local/share/uhd/images

[ERROR] *Invalid permissions to write images destination*

drscott@Ubuntu:~/workarea/uhd/host/utils$



UHD on Ubuntu is able to find the N200, and is able to probe the N200 with
the second UHD command.  However, the third command is
*/usr/local/lib/uhd/utils/uhd_images_downloader.py*, which produces the
following *ERROR MESSAGE* - *Invalid permissions to write images
destination*.  The N200 was not booted in SAFE MODE, so it should be
available for firmware updates.



I have been unable to locate any information online for how to eliminate
this problem so I can write firmware updates to the N200.  Is a document
available for fixing this problem?  If not, can you tell me how to fix this
firmware update problem on the N200?



Thanks in advance for your assistance with fixing this problem.



Respectfully,



Scott

--000000000000e07292061eff648b
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
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" s=
tyle=3D"word-wrap:break-word"><div class=3D"WordSection1"><p class=3D"MsoNo=
rmal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-se=
rif">Dear USRP-Users Group,</span></p><p class=3D"MsoNormal"><span style=3D=
"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">=C2=A0</span></=
p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;=
Arial&quot;,sans-serif">I installed UHD 4.7 on an Ubuntu MiniPC following t=
he online instructions.=C2=A0 It seems to be working OK, so I tried updatin=
g the firmware for an N200 that I picked up as a test vehicle for my set of=
 new N320s.=C2=A0 I ran into a bug that I have not found an answer to, as s=
een in the following Terminal script with UHD commands shown in <b>BOLD TYP=
E</b>:</span></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif">=C2=A0</span></p><p class=3D"MsoNorm=
al"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">drscott@Ubuntu:~/workarea/uhd/host/utils$ <b><span style=3D"background:y=
ellow">uhd_find_devices</span></b></span></p><p class=3D"MsoNormal"><span s=
tyle=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">[INFO] [=
UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0-ga5ed1872</=
span></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family=
:&quot;Arial&quot;,sans-serif">--------------------------------------------=
------</span></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif">-- UHD Device 0</span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot=
;,sans-serif">--------------------------------------------------</span></p>=
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Device Address:</span></p><p class=3D"MsoNormal"><spa=
n style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">=C2=
=A0=C2=A0=C2=A0 serial: E2R16TEUN</span></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">=C2=A0=C2=
=A0=C2=A0 addr: 192.168.10.2</span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">=C2=A0=C2=A0=
=C2=A0 name: </span></p><p class=3D"MsoNormal"><span style=3D"font-size:12.=
0pt;font-family:&quot;Arial&quot;,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0type:=
 usrp2</span></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif">=C2=A0</span></p><p class=3D"MsoNorm=
al"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-seri=
f">=C2=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;=
font-family:&quot;Arial&quot;,sans-serif">drscott@Ubuntu:~/workarea/uhd/hos=
t/utils$ <b><span style=3D"background:yellow">uhd_usrp_probe</span></b></sp=
an></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&=
quot;Arial&quot;,sans-serif">[INFO] [UHD] linux; GNU C++ version 11.4.0; Bo=
ost_107400; UHD_4.7.0.0-0-ga5ed1872</span></p><p class=3D"MsoNormal"><span =
style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">[INFO] =
[USRP2] Opening a USRP2/N-Series device...</span></p><p class=3D"MsoNormal"=
><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">=
Error: RuntimeError: </span></p><p class=3D"MsoNormal"><span style=3D"font-=
size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">Please update the fir=
mware and FPGA images for your device.</span></p><p class=3D"MsoNormal"><sp=
an style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">See =
the application notes for USRP2/N-Series for instructions.</span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&qu=
ot;,sans-serif">Expected FPGA compatibility number 11, but got 9:</span></p=
><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,sans-serif">The FPGA build is not compatible with the host code =
build.</span></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif">Please run:</span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans=
-serif">=C2=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size:12=
.0pt;font-family:&quot;Arial&quot;,sans-serif">&quot;/usr/local/lib/uhd/uti=
ls/uhd_images_downloader.py&quot;</span></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">&quot;/us=
r/local/bin/uhd_image_loader&quot; \</span></p><p class=3D"MsoNormal"><span=
 style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">=C2=A0=
=C2=A0=C2=A0 --args=3D&quot;type=3Dusrp2,addr=3D192.168.10.2&quot;</span></=
p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;=
Arial&quot;,sans-serif">=C2=A0</span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">drscott@Ubun=
tu:~/workarea/uhd/host/utils$ <b><span style=3D"background:yellow">/usr/loc=
al/lib/uhd/utils/uhd_images_downloader.py</span></b></span></p><p class=3D"=
MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif">[INFO] Using base URL: <a href=3D"https://files.ettus.com/binarie=
s/cache/">https://files.ettus.com/binaries/cache/</a></span></p><p class=3D=
"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,s=
ans-serif">[INFO] Images destination: /usr/local/share/uhd/images</span></p=
><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,sans-serif">[ERROR] <b><span style=3D"background:yellow">Invalid=
 permissions to write images destination</span></b></span></p><p class=3D"M=
soNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,san=
s-serif">drscott@Ubuntu:~/workarea/uhd/host/utils$</span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans=
-serif">=C2=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size:12=
.0pt;font-family:&quot;Arial&quot;,sans-serif">UHD on Ubuntu is able to fin=
d the N200, and is able to probe the N200 with the second UHD command.=C2=
=A0 However, the third command is <b>/usr/local/lib/uhd/utils/uhd_images_do=
wnloader.py</b>, which produces the following <b>ERROR MESSAGE</b> - <b><sp=
an style=3D"background:yellow">Invalid permissions to write images destinat=
ion</span></b>.=C2=A0 The N200 was not booted in SAFE MODE, so it should be=
 available for firmware updates.</span></p><p class=3D"MsoNormal"><span sty=
le=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">=C2=A0</sp=
an></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&=
quot;Arial&quot;,sans-serif">I have been unable to locate any information o=
nline for how to eliminate this problem so I can write firmware updates to =
the N200.=C2=A0 Is a document available for fixing this problem?=C2=A0 If n=
ot, can you tell me how to fix this firmware update problem on the N200?</s=
pan></p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:=
&quot;Arial&quot;,sans-serif">=C2=A0</span></p><p class=3D"MsoNormal"><span=
 style=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">Thanks=
 in advance for your assistance with fixing this problem.</span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&quo=
t;,sans-serif">=C2=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-=
size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">Respectfully,</span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot=
;Arial&quot;,sans-serif">=C2=A0</span></p><p class=3D"MsoNormal"><span styl=
e=3D"font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif">Scott</span=
><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"></span></p><p c=
lass=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Arial&=
quot;,sans-serif">=C2=A0</span></p></div></body></html>

--000000000000e07292061eff648b--

--===============2650261144986308122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2650261144986308122==--
