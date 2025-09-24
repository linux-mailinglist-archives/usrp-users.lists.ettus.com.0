Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD72B9AD30
	for <lists+usrp-users@lfdr.de>; Wed, 24 Sep 2025 18:15:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49F4C3861C8
	for <lists+usrp-users@lfdr.de>; Wed, 24 Sep 2025 12:15:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758730543; bh=VO2gE0mYbeQzXa2rvmuLgN4PMXZToJeaDbjcGx6iP3w=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=r3tkSdPJKWqzeUtiKbBZA7RMDtkuRvXM7UMHv1Wjq2Mef73b9Lf7jB2+6H05KzSZn
	 Wx5pCgSaWrGkBuP6govF5R6N6Agjz2H+T0Y7OSTgNVp34oawZ1eNak6UMkOCiVCGG3
	 2MB0LeYc5Y3GoH/UuGVTNGzWPUI0Uwlq0RXZnMR432Q8WTOGmhgEiYEjSoeYvRvBif
	 p5FOODJz9WimlOd+n+8rWXvp2SVCLu6Oq6s0xMwiHIuLjw5EDmnkr04jC8Cytf9Dm9
	 wSFFMQIH28qYxGVPzoJzyf2ftk8WGdSCiTcBBDP3V8870ybO3WCq73VWjC1hJHkEuL
	 lXeKveWX64ArA==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 0145A385E44
	for <usrp-users@lists.ettus.com>; Wed, 24 Sep 2025 12:14:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="mEJTV0N0";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-631df7b2dffso2644469a12.1
        for <usrp-users@lists.ettus.com>; Wed, 24 Sep 2025 09:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1758730499; x=1759335299; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=deLVPTtQRgSCgrGoIUVToJTF3ZmcbcnPF9HajpXqf1E=;
        b=mEJTV0N0aCFaODvGVyv7kmcRH9QZ65JnsDv070D427mTzKCfVbclrW9DJ1WIMjw5XC
         OhWM8apcWqINxftuTnMWQp4xU2GOGws/wg/sGVb3FgkcbSzapX2ZXgGAMONVaG85W798
         N7CHzTVAgI4BA70hGq3oI4MhzQ95KCaj2WYBfrXXV3KtqZrn6alfa7uwoUk7tTeuusHW
         Db4HiRGWopov30FmT1RFoZcyDEH7OEh+UWfXwc+ZX+KQv9u+ydf9r3y6Kj6wJZ4LP/wS
         eLD9MhQ0zaF4bSyhk8rdvPhEDPdcIWv2kA7f1T3niwrxJRqccVVr0ywoyqnJyKzCAseA
         0jSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758730499; x=1759335299;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=deLVPTtQRgSCgrGoIUVToJTF3ZmcbcnPF9HajpXqf1E=;
        b=Df7qbI1LVdftb4icvTpkVOKG1hl4lVGWLfmOpOFp3b9svlPDD35+BiDVZ2bPwkZe6c
         5tQnGqSvgFUljicmZOuAd3LZhTXKSOUzPLzDQKPc5W6dVtBz6/ttHMBGMVpJabKW1gpt
         0v48Bvr3Hz8yKht9tV6DBwSpB9Xp5vPPLVlzGAxpISKhrZIkV/dsXcrciTONmMZbJL8M
         BIJJImSvyI9JPSSHB2s0bH47MM6xgTRJhML9vHhRNJIqUD6knsMFZxWrKy3RWv5k5yT6
         pFCCWdP0Y1llSqp0WKJd9OiLpdrfm6B9RWZuyhQlz9baP9/1ljcAIkBQEW1ndOil3egK
         VgAA==
X-Gm-Message-State: AOJu0YwtjgpNr/RLc2k3MI1dm9CM8ZQYiU0fxf4IsrnnvXYiGsgEQv+J
	xJCGiaa9gjZaqMC34L3+pkehcfL4MWWGWkaQo9ObRNJaFHb5n4EeoYimCEN5vjmpSwBlTn6WyJU
	PSRWbxdm0MlnysJ3Rbd/g6WGBKPjENsydorT2ddhKAMI5GpoYHVHLOgr9Aw==
X-Gm-Gg: ASbGnctiExaLqvjMEjs9Nbz1LLU0Dq+m4Ra3fQ/KqGDskLNB68QVysdGrvYWldmWFBJ
	5TOGBmg66qKxiaKjGmkKcMdfNP5aAFf0n8dAHPv8Kth/Ehjg/Zqjoxga0O3dl8VWDjqXRXx5Ofa
	HgE5E3nLxaAdAbgTFxU7y1nU7FSZQRS4NUVC8oCsm42NwLdZEXuQuKU5pRqXT96jsRIJ+a5JZ04
	8kTZ65/soYn7Q1eydxzOVMa3QenPCmzqMq6Teg=
X-Google-Smtp-Source: AGHT+IH+33qhKgNUBA4lwXcpjypyOZdL3wirFsCB0TiwgTtu05G9yELh3Tlb8Pv1z70UoX1zKrV+44H56fFSsn5R1hg=
X-Received: by 2002:a05:6402:90c:b0:62f:4bf5:2b1 with SMTP id
 4fb4d7f45d1cf-6349f604f2fmr126455a12.14.1758730498513; Wed, 24 Sep 2025
 09:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <RO4GkomSLaKbZpeoikLQHxPnUE2fQBGFsQg7nTzyXk@lists.ettus.com>
In-Reply-To: <RO4GkomSLaKbZpeoikLQHxPnUE2fQBGFsQg7nTzyXk@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 24 Sep 2025 18:14:47 +0200
X-Gm-Features: AS18NWClcEr7IGjB2375o_3lnFheNxE5VTxiQj_PmV1CeJpWdsG8QhuzmMHS2Gs
Message-ID: <CAFOi1A48Lcd3pkS2ZVAzY6hsbWCH7CYO5a-hyAGQR9P8vwJkBg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: TYR7V23ICI4NYCSH7WE7B7LIT7X6QDGN
X-Message-ID-Hash: TYR7V23ICI4NYCSH7WE7B7LIT7X6QDGN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TYR7V23ICI4NYCSH7WE7B7LIT7X6QDGN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7027638587153109856=="

--===============7027638587153109856==
Content-Type: multipart/alternative; boundary="0000000000009eaced063f8e5aa9"

--0000000000009eaced063f8e5aa9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

- Not sure on the .grc file, maybe you can provide a timestamp? But all of
our example .grc files are in current GNU Radio in the gr-uhd directory (
https://github.com/gnuradio/gnuradio/tree/main/gr-uhd/examples/grc).
- We're still catching up with the docs, so I'm afraid we don't have good
docs for rfnoc_modtool outside the man page. If you want to add GNU Radio
bindings and are using UHD 4.8, then you can use a combination of
gr_modtool to generate a GNU Radio OOT within your RFNoC OOT, and perusal
of the rfnoc-gain example OOT that we provide to see what the end result
should look like.
- We're slowly standardizing on SystemVerilog over Verilog, because it just
has so many good features. For that reason, new files generated from
rfnoc_modtool simply are all .sv files, even though the code didn't' change
(a bit like C/C++, Verilog is a subset of SystemVerilog so it will still
compile to the same RTL).

--M

On Wed, Sep 24, 2025 at 5:39=E2=80=AFPM Peter Gu via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Martin,
>
>
> thanks for the fast reply! I managed to build the image with three SEPs
> and just one replay block. However I have three more questions:
>
> 1) I was not able to find a .grc template which was given in <UHD4.6, e.g=
.
> shown in this video https://www.youtube.com/watch?v=3DM9ntwQie9vs Are the=
re
> any examples available from your team?
>
> 2)
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Example_RFNoC_=
Image
> states that the rfnoc_modtool should be used. However according to
> https://man.archlinux.org/man/extra/libuhd/rfnoc_modtool.1.en there are
> way more instructions, e.g. add-gr-oot. I know this instruction is for
> UHD4.9.0.0, but I wasn=E2=80=99t able to find it for UHD4.8.0.0, which i =
am
> currently using. In UHD4.8.0.0, it seems that rfnoc_modtool only supports
> create and add.
>
> Further, it seems to me that there are no instructions available how to
> use rfnoc_modtool, did i just missed them and if yes, can you please send
> me the link?
>
> 3) I saw that you moved from .v to .sv files. What are the reasons?
>
> Thanks!
>
>
> Best,
>
> Peter
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009eaced063f8e5aa9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>- Not sure on the .grc file, maybe you can provide a =
timestamp? But all of our example .grc files are in current GNU Radio in th=
e gr-uhd directory (<a href=3D"https://github.com/gnuradio/gnuradio/tree/ma=
in/gr-uhd/examples/grc">https://github.com/gnuradio/gnuradio/tree/main/gr-u=
hd/examples/grc</a>).</div><div>- We&#39;re still catching up with the docs=
, so I&#39;m afraid we don&#39;t have good docs for rfnoc_modtool outside t=
he man page. If you want to add GNU Radio bindings and are using UHD 4.8, t=
hen you can use a combination=C2=A0of gr_modtool to generate=C2=A0a GNU Rad=
io OOT within your RFNoC OOT, and perusal of the rfnoc-gain example OOT tha=
t we provide to see what the end result should look like.</div><div>- We&#3=
9;re slowly standardizing on SystemVerilog over Verilog, because it just ha=
s so many good features. For that=C2=A0reason, new files generated from rfn=
oc_modtool simply=C2=A0are all .sv files, even though the code didn&#39;t&#=
39; change (a bit like C/C++, Verilog is a subset of SystemVerilog so it wi=
ll still compile to the same RTL).</div><div><br></div><div>--M</div></div>=
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Sep 24, 2025 at 5:39=E2=80=AFPM Peter Gu via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>Hello Martin,</p><p><br></p><p>thanks for the fast reply! I manage=
d to build the image with three SEPs and just one replay block. However I h=
ave three more questions:</p><p>1) I was not able to find a .grc template w=
hich was given in &lt;UHD4.6, e.g. shown in this video <a href=3D"https://w=
ww.youtube.com/watch?v=3DM9ntwQie9vs" target=3D"_blank">https://www.youtube=
.com/watch?v=3DM9ntwQie9vs</a> Are there any examples available from your t=
eam?</p><p>2) <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in=
_UHD_4.0#Example_RFNoC_Image" target=3D"_blank">https://kb.ettus.com/Gettin=
g_Started_with_RFNoC_in_UHD_4.0#Example_RFNoC_Image</a> states that the rfn=
oc_modtool should be used. However according to <a href=3D"https://man.arch=
linux.org/man/extra/libuhd/rfnoc_modtool.1.en" target=3D"_blank">https://ma=
n.archlinux.org/man/extra/libuhd/rfnoc_modtool.1.en</a> there are way more =
instructions, e.g. add-gr-oot. I know this instruction is for UHD4.9.0.0, b=
ut I wasn=E2=80=99t able to find it for UHD4.8.0.0, which i am currently us=
ing. In UHD4.8.0.0, it seems that rfnoc_modtool only supports create and ad=
d.</p><p>Further, it seems to me that there are no instructions available h=
ow to use rfnoc_modtool, did i just missed them and if yes, can you please =
send me the link?</p><p>3) I saw that you moved from .v to .sv files. What =
are the reasons?</p><p>Thanks!</p><p><br></p><p>Best,</p><p>Peter</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009eaced063f8e5aa9--

--===============7027638587153109856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7027638587153109856==--
