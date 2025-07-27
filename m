Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD0EB130E8
	for <lists+usrp-users@lfdr.de>; Sun, 27 Jul 2025 19:27:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA3C0385E8B
	for <lists+usrp-users@lfdr.de>; Sun, 27 Jul 2025 13:27:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753637259; bh=6YXk12LkbOMhDn2vb4ioQaunQIbXY7h+0hFNljGowsg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kAj9n4JB6uzWdkG/l1Va3JKISq2d2PmrfmDeJo080rtLLsdpenzuezBnvgSP1hH6h
	 +PEmIDMUQUD2s/VnTaSIzLKg1UCA5eA7gLuJv7uYJxBSU+2grAm/g8gSnkPGa2tN2j
	 FC1cSHJ9k12NM0Urv2gm3AAsoFzJ2M2tZLLnIjRZD9WeDWM17T5vuGYzfwCW7hH7U5
	 3skzdeOycQ8Izv2d1pEz1vtpUUiHap01BI4/XbXsNcBNQU4ibpl8wY9Dzb46i5aKf0
	 YbrHNUXpOep7keUSCrBrc3c0mBBn4T4n4j1eSVjowcYTuYTL9juBB7emjB7jUJpLS3
	 CYNAmkmuaLc0Q==
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 479DA385338
	for <usrp-users@lists.ettus.com>; Sun, 27 Jul 2025 13:27:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g++4sRDy";
	dkim-atps=neutral
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-32b5226e6beso31573181fa.2
        for <usrp-users@lists.ettus.com>; Sun, 27 Jul 2025 10:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753637221; x=1754242021; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gL3nDyr2X9BLwQ6es+vpZF21bi0MJNDaW+bWjegk8+g=;
        b=g++4sRDy9ZZE3buLi+XPFReZOm9rGsZ85+5RuV71tP/mKXU4W54ASwOYgzcziPmcVB
         hXq0N1auy3X+T2xlRB9M5IUgJOohDrKM6cMA+NjEyt4JX8+w76XwFrJ0yxkR7mSNPDgO
         XA1oNEl/s9RvMdAhBMr1hG/A2cgjPKmjEa1wPxQTIm5fFgry4cNskN1Ud5iEqfBA/EPl
         UB9+brB+k7Daygtqh0LrF0LCaKbzAf1RU3wWOZLv2QJncdutFVWQWAFwVeNQDFItU9KJ
         ljlYJhGfa8yn9mmAD1KwjZ2Y0AtBZfNaM6Hkm+yEIZLdNuCzI2Iq5qrBcfcJhVsEoNCT
         jeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753637221; x=1754242021;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gL3nDyr2X9BLwQ6es+vpZF21bi0MJNDaW+bWjegk8+g=;
        b=uRyd1GLJ8rIKomUpXBHDPguI4r+tadmN/Fm73m3FqHVhlk0fY0d2476Clou2tGl5G7
         qIvLZEroaXRNRJWmAOQ4Oxqp9wNH9EvkY8xEBV2uhZf65bRrcLBNLZvrDv57nRU16z4c
         dOgeUoJMXWuEArAoeAbYlqFUZcXgr3FqGQOxYla0KADVOSfdk/51i3eo2Cu8Zr+O9TLK
         3jIHgqknY0T6sNVBhwOWUiSW6aItsvhO+jLcMiU02mh8vLs22CEKhKL3zcibovVG/piD
         ughnBULDfvvGtLgduye8UxU+I2wfd0HWMTC10Tyy5STB8+k87Izi7w6VDGGwDINtKkeG
         p73Q==
X-Gm-Message-State: AOJu0YyoYnHZUuYQSEbEcPgl5G5d0CT0nHttJnQkVCAX+Gm+hRNqi5ie
	qHJEf5OLL02HFz4esS9nM0CLsnX54dumcpZS7evdOLmZBuXmQkKrMGnGaAEEGg3htP2aLgcFygJ
	q8Er+/JXuRPEAlHDwz3NHcNGmXWKvAAuw6I2Tzyg=
X-Gm-Gg: ASbGncv4kj1yVaQzRoNn5hKxKP1W1Fe92gHKOP/illUrL56QIsZ/LKyW2c91EHHMsTE
	rX20HsFj+p/o8Fu6OF6asq7CYHASs8EheIF1aiqIIGFYyyONtCjFEyHNKOeGLtJgS1bP6tFu5gL
	Kdx9ygs8IJ1+zl9+CVVitAH5xIPl1nj7s4yQx2P/Ct0RRYUpdtYyzJmWELgJJojSYxGv5ZDb189
	CJI3tDfqA==
X-Google-Smtp-Source: AGHT+IGpC436vJ0SWyEIlz0+WrP2G8nYWvY2brRr53/oE7x54rw2uQtWKM5Fw+Bc9ZY63vprwZPzvk7i0rHtytQIKqs=
X-Received: by 2002:a05:651c:1116:20b0:32a:5fe2:81b2 with SMTP id
 38308e7fff4ca-331ee7e8d2amr19751841fa.23.1753637221254; Sun, 27 Jul 2025
 10:27:01 -0700 (PDT)
MIME-Version: 1.0
From: Jons <jonsdeburn@gmail.com>
Date: Sun, 27 Jul 2025 19:26:49 +0200
X-Gm-Features: Ac12FXzDp4bdMFxjCpWi1mQ-m-A71QSpXPvqCM68TlnFL-HJqmq2CNNqA8Ssm2c
Message-ID: <CAB-=5jb7Qgr28JyT6wteTkNaZxWB+6TKTwWEfdvFAYrAABYW7w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CFUIH6S2DOQG322E6GZF4L3CS4FMGGXL
X-Message-ID-Hash: CFUIH6S2DOQG322E6GZF4L3CS4FMGGXL
X-MailFrom: jonsdeburn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding a Clock IP to RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CFUIH6S2DOQG322E6GZF4L3CS4FMGGXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5848507423171072778=="

--===============5848507423171072778==
Content-Type: multipart/alternative; boundary="000000000000a34a1b063aec7b4d"

--000000000000a34a1b063aec7b4d
Content-Type: text/plain; charset="UTF-8"

Hi all,
I am trying to add a custom RFNoC block and my block runs on different
clocks(not the default ones). So I followed the instructions from the FAQ
page in RFNoC wiki of deriving clocks from the available clocks -
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_a_clock_with_a_different_frequency.3F
But when I add the parameters in block YAML, it added new ports to my
*rfnoc_block_myblock* module, which is not what I expected. My intention
was to derive 2 clocks from the rfnoc_chdr_clk  and use it inside my block.
For this I added the clock IP module (instantiated) in the
noc_shell_myblock, because this is where the CDC FIFOs are there. So, with
this method the generated clock just stays inside my block and won't be
available outside to it. Maybe the steps described in the FAQ might not be
the right way to go about with my requirement? I am not sure.

Also, I tried not adding the YAML parameters of the clocks for my block.
This worked to the point where the implementation of the entire design
failed with WNS of -0.8ns on the new derived clock I added. I also got a
few Critical warnings for the clocks I added, not sure if it is related
somehow or if I can ignore it -



*TIMING-4#1 Critical WarningInvalid primary clock redefinition on a clock
tree  Invalid clock redefinition on a clock tree. The primary clock
x4xx_core_i/rfnoc_image_core_i/b_myblock_3/noc_shell_myblock_i/clk_wiz_chdr_200_125_inst/inst/clk_in_chdr
is defined downstream of clock clk200 and overrides its insertion delay
and/or waveform definition. *

I followed this thread (
https://www.mail-archive.com/usrp-users%40lists.ettus.com/msg14663.html) to
add IPs of my clock module that I generated with with Vivado IP catalog and
copied the *.xci, .v* and other generated files into the
path/to/module/rfnoc/fpga/myblock/ip/ and changed the Makefile and block
YAML definitions like the example given in the example Gain block.

I checked the timing summary report and I found that the violation happens
in the derived clock that connects to one of my blocks. I was able to build
the IP by itself when I was testing it for viability.

Any tips or leads in adding custom derived clocks to the design would be
super helpful and thank you all for maintaining such a nice community!!
-J

--000000000000a34a1b063aec7b4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div>I am trying to add a custom RFNoC b=
lock and my=20
block runs on different clocks(not the default ones). So I followed the=20
instructions from the FAQ page in RFNoC wiki of deriving clocks from the
 available clocks - <a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_=
Questions#How_do_I_add_a_clock_with_a_different_frequency.3F" target=3D"_bl=
ank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_a_c=
lock_with_a_different_frequency.3F</a> But when I add the parameters in blo=
ck YAML, it added new ports to my <b>rfnoc_block_myblock</b>
 module, which is not what I expected. My intention was to derive 2=20
clocks from the rfnoc_chdr_clk=C2=A0 and use it inside my block. For this I=
=20
added the clock IP module (instantiated) in the noc_shell_myblock,=20
because this is where the CDC FIFOs are there. So, with this method the=20
generated clock just stays inside my block and won&#39;t be available=20
outside to it. Maybe the steps described in the FAQ might not be the=20
right way to go about with my requirement? I am not sure.</div><div><br></d=
iv><div>Also,
 I tried not adding the YAML parameters of the clocks for my block. This
 worked to the point where the implementation of the entire design=20
failed with WNS of -0.8ns on the new derived clock I added. I also got a
 few Critical warnings for the clocks I added, not sure if it is related
 somehow or if I can ignore it -</div><div><i>TIMING-4#1 Critical Warning<b=
r>Invalid primary clock redefinition on a clock tree =C2=A0<br>Invalid cloc=
k redefinition on a clock tree. The primary clock x4xx_core_i/rfnoc_image_c=
ore_i/b_myblock_3/noc_shell_myblock_i/clk_wiz_chdr_200_125_inst/inst/clk_in=
_chdr is defined downstream of clock clk200 and overrides its insertion del=
ay and/or waveform definition. <br></i></div><div><i><br></i></div><div>I f=
ollowed this thread (<a href=3D"https://www.mail-archive.com/usrp-users%40l=
ists.ettus.com/msg14663.html" target=3D"_blank">https://www.mail-archive.co=
m/usrp-users%40lists.ettus.com/msg14663.html</a>) to add IPs of my clock mo=
dule that I generated with with Vivado IP catalog and copied the <b>.xci, .=
v</b> and other generated files into the path/to/module/rfnoc/fpga/myblock/=
ip/ and changed the Makefile and block YAML definitions like the example gi=
ven in the example Gain block.</div><div><br></div><div>I checked the timin=
g summary report and I found that the violation happens in the derived cloc=
k that connects to one of my blocks. I was able to build the IP by itself w=
hen I was testing it for viability.<br><br></div><div>Any
 tips or leads in adding custom derived clocks to the design would be=20
super helpful and thank you all for maintaining such a nice community!!</di=
v><div>-J</div><font color=3D"#888888"></font><br></div>

--000000000000a34a1b063aec7b4d--

--===============5848507423171072778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5848507423171072778==--
