Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB4EB13C08
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jul 2025 15:52:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7088B386411
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jul 2025 09:52:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753710767; bh=UhtvIyO9jrBOHn7GKiFIgjdCzFjbA0QC+fnWasNc8vY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Gy9EeIOTgBeZK5Fujm3ZbzweS70juhCAezNYo1r7LYgS3+0cm5olS9VNJ1kFC9VwU
	 OV5GYjB1JC0lvUwdCRpdc0tt3zchZ3kHnT/LPJEFDbux2omQeo9fn6VYgZuUwp23+q
	 FE5AdEVBhx59yGbIM8JzFhPiM+t/cumshC+Q23pqzhDpUpe8vH8LJjtNWbWQZ5CU92
	 Q8Axi7MX2lB/Yv35+4lAWVgUzJmjrHx5CrTRp9VBhgTPByHAPcMb6bKx+Hj8ESK46x
	 FfmE0DCJdFgfUC34mbYuIGiXR7g4RH1JK3F2WoRggLc3R6f2Y9S1AuKrWCQ7fM45FJ
	 Fy41pyQUwpRJg==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 9065B3863AF
	for <usrp-users@lists.ettus.com>; Mon, 28 Jul 2025 09:52:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ykHPK7hY";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-af66d49daffso88595566b.1
        for <usrp-users@lists.ettus.com>; Mon, 28 Jul 2025 06:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753710740; x=1754315540; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RNBdmf8bBM6dIaB0NFvy6Jl1pfh9xMXEL3LnM5/TMKo=;
        b=ykHPK7hYOIgn9YgrrF0Rilzo1QOp/4YzDgnUyv7mze9yNrzDdfYr/F7phHmmaYSd2u
         LbaS1nyTxsENb52VObaCFVaauNOYhGfGCaHzPEQ0x8mHOQK6SPN8NLknT1c+Brpp9BkW
         LFzJ2Rfe8ckEYmGRDJ7StaKdMWaw+31miFSrOB1V6RzpxXAhtjcFXm7+7hT0nRQ6wbxe
         wskJ2svWwD/hnZceWHnjLbDzb0W9GP8gVElra0iKHChqnUUV1zbopPezJ8UybfjHJdHX
         QLEvrZXD42ts9t/udAuYqmpJeoEWacUoXUoBT8j/1dmc7500QzmziItqEiEQ5Nbf/Lqy
         fpOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753710740; x=1754315540;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RNBdmf8bBM6dIaB0NFvy6Jl1pfh9xMXEL3LnM5/TMKo=;
        b=i2hyXtG3/rmI0XThKcFtohtuEj+0t/hTmL1Gz/GxknDtmWVkcLAfv2jd9KAg7T+Isn
         GOcHYLIrAOcbBGQQ3OaybqgjO3mkJiinUOGxmPIwXuQLH3AzqPa8/VUoMCJmWzMCBT6D
         i98b7/ACzpNJmZh46QSO4bNhpDtmaguZDzlBtUnQ1Nluop8uER08XbSWj5UHOmwFpWjG
         UivLHzZgW3vmgnDyPnu1s7ojlRusbCD6sH5nzMAPErHGfT2A40SGgJxZl3yVXK+x7Snm
         R6LtEJ7oCNt7oEa0QJzvl+8abYM3jUYRSremF1PdfXXfHXlSXyqCDr13mQSpXXwtbNx6
         ywuA==
X-Gm-Message-State: AOJu0YzxxUxbVUfDCUPrVSFSWaxoCO9Qr8GLVLHoigFNSQ+ZIhUD9uTG
	GuMVqB/p91ZD4/RvUhIXWdjN6ynosQy0KS1KZHBD3zZfccwOhB6IQe9xTTfBL9Z5WkeO0TfputH
	UtmQVFQ1XXmQnulHNX1TtYTVPOVSxT1bs+uTGhI1HwcSyUjP69GJoiMOYOQ==
X-Gm-Gg: ASbGnctyfrT7gwQrytObfbzAPPxKXJvsp7J9VgBL6L4nTDlHYZ7ip0NjpFr9P5zy/2q
	eQ1Zf9stV+DpJpPHgBYOG10A7+8viA0OjaFQBblNvRtsYkLevUBdfcoG888imxNZ9F0avAKS9Cr
	SUTWA1Y3D29943oFXfD59EAVXnL6SfKZ/BzdpN5nYzMaQgAG0yXzAFYsLofKbhGAV/Xab6UdfWT
	GpY6f0cDfskcHKP568M11ns0plyr6BYlGdG7CA=
X-Google-Smtp-Source: AGHT+IG4AipFcD4/LgaUJ4HJ1jdKFD0c1rnU3GiJZrCITgKg+l2zBXH0788ClxQoYHtMdVmcW4AJqd3Hm8Jsm7FnKnw=
X-Received: by 2002:a17:907:1b09:b0:ae0:6a5a:4cd4 with SMTP id
 a640c23a62f3a-af61740d30amr1349429566b.12.1753710739890; Mon, 28 Jul 2025
 06:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAB-=5jb7Qgr28JyT6wteTkNaZxWB+6TKTwWEfdvFAYrAABYW7w@mail.gmail.com>
In-Reply-To: <CAB-=5jb7Qgr28JyT6wteTkNaZxWB+6TKTwWEfdvFAYrAABYW7w@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 28 Jul 2025 15:52:09 +0200
X-Gm-Features: Ac12FXzVvkoMcm7OAORULAxmYa2SsLcQbzyBeX87iwIEEmBGYYaiqB7lf9vCjv0
Message-ID: <CAFOi1A7kb3W2yswkWcRz+RdTAs1bF9sT3xsrxet4tg7PZ5jKiA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: PYTHOHTIHBQRQSEQVNHUUK2MQKFUUYSR
X-Message-ID-Hash: PYTHOHTIHBQRQSEQVNHUUK2MQKFUUYSR
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding a Clock IP to RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYTHOHTIHBQRQSEQVNHUUK2MQKFUUYSR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6582661773497888350=="

--===============6582661773497888350==
Content-Type: multipart/alternative; boundary="000000000000b0cdee063afd9919"

--000000000000b0cdee063afd9919
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Jons,

if you're generating and using a custom clock within your RFNoC block, then
there is nothing from RFNoC that you need. Unless you're exporting your
clock, you don't need to declare it anywhere.

However, you *do* need to follow all the Vivado/Digital design guidelines
for adding clocks (i.e., stuff that is unrelated to RFNoC specifically). If
you need to inject custom constraints, you can do that from your block
YAML. Just add .xdc files in the same directory where your HDL is, and
refer to them in the YAML like we do here:
https://github.com/EttusResearch/rfnoc-oot-blocks/blob/main/rfnoc/blocks/au=
rora.yml

--M

On Sun, Jul 27, 2025 at 7:28=E2=80=AFPM Jons <jonsdeburn@gmail.com> wrote:

> Hi all,
> I am trying to add a custom RFNoC block and my block runs on different
> clocks(not the default ones). So I followed the instructions from the FAQ
> page in RFNoC wiki of deriving clocks from the available clocks -
> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_a_cloc=
k_with_a_different_frequency.3F
> But when I add the parameters in block YAML, it added new ports to my
> *rfnoc_block_myblock* module, which is not what I expected. My intention
> was to derive 2 clocks from the rfnoc_chdr_clk  and use it inside my bloc=
k.
> For this I added the clock IP module (instantiated) in the
> noc_shell_myblock, because this is where the CDC FIFOs are there. So, wit=
h
> this method the generated clock just stays inside my block and won't be
> available outside to it. Maybe the steps described in the FAQ might not b=
e
> the right way to go about with my requirement? I am not sure.
>
> Also, I tried not adding the YAML parameters of the clocks for my block.
> This worked to the point where the implementation of the entire design
> failed with WNS of -0.8ns on the new derived clock I added. I also got a
> few Critical warnings for the clocks I added, not sure if it is related
> somehow or if I can ignore it -
>
>
>
> *TIMING-4#1 Critical WarningInvalid primary clock redefinition on a clock
> tree  Invalid clock redefinition on a clock tree. The primary clock
> x4xx_core_i/rfnoc_image_core_i/b_myblock_3/noc_shell_myblock_i/clk_wiz_ch=
dr_200_125_inst/inst/clk_in_chdr
> is defined downstream of clock clk200 and overrides its insertion delay
> and/or waveform definition. *
>
> I followed this thread (
> https://www.mail-archive.com/usrp-users%40lists.ettus.com/msg14663.html)
> to add IPs of my clock module that I generated with with Vivado IP catalo=
g
> and copied the *.xci, .v* and other generated files into the
> path/to/module/rfnoc/fpga/myblock/ip/ and changed the Makefile and block
> YAML definitions like the example given in the example Gain block.
>
> I checked the timing summary report and I found that the violation happen=
s
> in the derived clock that connects to one of my blocks. I was able to bui=
ld
> the IP by itself when I was testing it for viability.
>
> Any tips or leads in adding custom derived clocks to the design would be
> super helpful and thank you all for maintaining such a nice community!!
> -J
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b0cdee063afd9919
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Jons,</div><div><br></div><div>if you&#39;re gene=
rating and using a custom clock within your RFNoC block, then there is noth=
ing from RFNoC that you need. Unless you&#39;re exporting your clock, you d=
on&#39;t need to declare it anywhere.</div><div><br></div><div>However, you=
 *do* need to follow all the Vivado/Digital design guidelines for adding cl=
ocks (i.e., stuff that is unrelated to RFNoC specifically). If you need to =
inject custom constraints, you can do that from your block YAML. Just add .=
xdc files in the same directory where your HDL is, and refer to them in the=
 YAML like we do here:=C2=A0<a href=3D"https://github.com/EttusResearch/rfn=
oc-oot-blocks/blob/main/rfnoc/blocks/aurora.yml">https://github.com/EttusRe=
search/rfnoc-oot-blocks/blob/main/rfnoc/blocks/aurora.yml</a></div><div><br=
></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_contai=
ner"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jul 27, 2025 at 7:28=E2=
=80=AFPM Jons &lt;<a href=3D"mailto:jonsdeburn@gmail.com">jonsdeburn@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hi all,</div><div>I am trying to add a custom RFNo=
C block and my=20
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b0cdee063afd9919--

--===============6582661773497888350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6582661773497888350==--
