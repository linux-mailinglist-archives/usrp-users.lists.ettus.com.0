Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DB5817C3E
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 21:49:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F6CF385E9A
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 15:49:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702932552; bh=gomBIE4wDAujUiRWkUoRCbBUT8pgs0Jw5ruPk/mGZkI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=v49b2YBudEbSCc9tmSwh+D0m+qMiGAITUMRGpTfqLgDUOHZ1cLUXT5Vq/NrJzjeEC
	 5Y5aFfs94q0f3dFlCH1Y7MMsHqTmjc2IjmkdRsUHYry5/Mr7+Bvsrc/N5uwlnTqIHG
	 suXzhv24MNezu32R3tOqVoiWI75fiY6z1xKxNYT7Im92wm+43cGg4vVZiDNJ0RYBTE
	 Fik1HYR5DBiNZte8QCZpN2Jd6uE7qCuVxqE0OB0izosfUvI5SkCXn1Op4bHJWc/G2M
	 hUM9+ncih5bBA7cllKsPjRm90j5Szqxa6waU1iIW2AQJcjveo9r4GBnmoRJUqgga3U
	 705fX3fp/59DA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id EA5F6385D38
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 15:48:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="kfQ/PgeQ";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-54c5d041c23so4347908a12.2
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 12:48:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702932520; x=1703537320; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vgWUefj9C8wWbYoWEoUjnPktQxAb6XHXL6hjbZnUWSg=;
        b=kfQ/PgeQOxdcCz7lndb5fSc89qgYYfDqtswuBEJINq57XdoC2gmiCnCfrd3FjzBV2L
         Bh9Ymi5uf6HHIaFbruyhIVIS/0PvmmXUfQyUNgppmRwj24PPkTUGKZV89xpsioYGvn87
         WwHfnfGE/AIvISNyvqgsleWpV2V5OLyAYpnG/X3j9ucQhpa0q90cvLYI8UlfGYNDNyVf
         i8jamy8bsl1ELoGXW5HbPE6t0tetd7DjUCr4a96kSpp2XEkbGK/I6dbWMeXtPM44VxlX
         7WC0oC9sV47q41ug3KLNf2bEioncZ5HK54OvxC66/QbfrF3K4ypHJfp5M9gwuV9YxDuQ
         Rbkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702932520; x=1703537320;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgWUefj9C8wWbYoWEoUjnPktQxAb6XHXL6hjbZnUWSg=;
        b=HuNcNc4xafvfiSPCfw2xNRPyOi9RguYxpuNLO7/9Zeksy/l2R9nCCNdTOVDrgdGiQG
         AA4oKYhV1avnp45XHidmyrJxJaSMgCjLAi+qxDd18iqokQtIsUs0B5XrVLLAikH4lM7j
         NJqdW1M3ILfWIhtrD/ySOMHpKRYqXmy0EbMOjkKN1Pw+cBZmsh09aC9fCQpgYY+8YpfO
         Ld/SFdgOg16/bcZrQ76IPbWoO0WrcQdC1Ka+KTOskqccdybuRFR/1hq6bmYmgVhpe4QM
         TbVq3GNULysOhINZnIdXy+f8j+f73Qe4ccZUicaN0MdtdDSCBlDrY2Y9wYH5w+vEJOJl
         2zWw==
X-Gm-Message-State: AOJu0YxNhv2gtaowfZshuTbrtkTZmOhXl1pHZDd/LfsvSHIfi7prQiq4
	+7ejW1XlWpIVR2XPLE8cXyURy5Oc6398vvdPu5b2nw==
X-Google-Smtp-Source: AGHT+IFDb5Ee68X2UiB0u6RtJhe/JCb9GDDkpALmL7sxGvesisa+DA28tkQx6tAkC+1WOfXmNqWnU6FBmUUjYc+tT9c=
X-Received: by 2002:a50:d71c:0:b0:54b:2894:d1d8 with SMTP id
 t28-20020a50d71c000000b0054b2894d1d8mr2335547edi.27.1702932519551; Mon, 18
 Dec 2023 12:48:39 -0800 (PST)
MIME-Version: 1.0
References: <3jJQVyb91CYSPn8GBPkmvkJyjsKEJDKpTEPzIqF9hE@lists.ettus.com>
In-Reply-To: <3jJQVyb91CYSPn8GBPkmvkJyjsKEJDKpTEPzIqF9hE@lists.ettus.com>
Date: Mon, 18 Dec 2023 14:48:28 -0600
Message-ID: <CAB__hTTTB5Ew-3BW9u=-3c-gLxJmy6ZRDG9CsdpjLXxFs2JdOg@mail.gmail.com>
To: engr.muhd.hassan@gmail.com
Message-ID-Hash: HDK6GEWXNGO3T3ITZYEU62XNLCNEMCUQ
X-Message-ID-Hash: HDK6GEWXNGO3T3ITZYEU62XNLCNEMCUQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDK6GEWXNGO3T3ITZYEU62XNLCNEMCUQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0992006628424124506=="

--===============0992006628424124506==
Content-Type: multipart/alternative; boundary="000000000000e7e455060ccedf13"

--000000000000e7e455060ccedf13
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Muhammad,
Originally, you had some build errors such that the design "didn't fit" on
the FPGA.  How did you fix these?  From previous experience, I discovered
that it was necessary to use the option DRAM=3D1 when building the E31x wit=
h
the Replay block.  I see that in your YML, this option is included in the
"default target" but I am wondering if it was not used on your specific
build because you specified the option "-t E310_SG3".  Perhaps if you
rebuild without specifying the target option it will use the default which
will include DRAM=3D1.

But, even if you successfully attempt the build with the DRAM=3D1 option,
there is a reasonable chance that the build will fail because the design
may be too big for the FPGA. In this case, you may want to build with
"static linking" as in the YML file that I previously sent.
Rob


On Mon, Dec 18, 2023 at 1:13=E2=80=AFPM <engr.muhd.hassan@gmail.com> wrote:

> Dear Rob,
>
>
> I have following bit files generated at the same time.
>
>    1.
>
>    named =E2=80=9Cusrp_e310_sg3_fpga.bit=E2=80=9D. this file is in build =
folder
>    2.
>
>    named =E2=80=9Ce31x.bit=E2=80=9D. which is in =E2=80=9Cbuild-E310_SG3=
=E2=80=9D
>
> build-E310_SG3 folder and build folder, both are in e31x folder.
>
>
> I tried to run both these files and get same error.
>
> the commands are. 1. uhd_image_loader --args type=3De3xx,adr=3D192.168.10=
.2
> --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/e31x.b=
it
>
>
>
>    1.
>
>    uhd_image_loader --args type=3De3xx,adr=3D192.168.10.2
>    --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build/usrp_e310_sg=
3_fpga.bit
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e7e455060ccedf13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Muhammad,</div><div>Originally, you had some build=
 errors such that the design &quot;didn&#39;t fit&quot; on the FPGA.=C2=A0 =
How did you fix these?=C2=A0 From previous experience, I discovered that it=
 was necessary to use the option DRAM=3D1 when building the E31x with the R=
eplay block.=C2=A0 I see that in your YML, this option is included in the &=
quot;default target&quot; but I am wondering if it was not used on your spe=
cific build because you specified the option &quot;-t E310_SG3&quot;.=C2=A0=
 Perhaps=C2=A0if you rebuild without specifying the target option it will u=
se the default which will include DRAM=3D1.</div><div><br></div><div>But, e=
ven if you successfully=C2=A0attempt the build with the=C2=A0DRAM=3D1 optio=
n, there is a reasonable chance that the build will fail because the design=
 may be too big for the FPGA. In this case, you may want to build with &quo=
t;static linking&quot; as in the YML file that I previously sent.</div><div=
>Rob</div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, Dec 18, 2023 at 1:13=E2=80=AFPM &lt;<a href=3D"m=
ailto:engr.muhd.hassan@gmail.com" target=3D"_blank">engr.muhd.hassan@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>Dear Rob,</p><p><br></p><p>I have following bit files generated at th=
e same time.</p><ol><li><p>named =E2=80=9Cusrp_e310_sg3_fpga.bit=E2=80=9D. =
this file is in build folder</p></li><li><p>named =E2=80=9Ce31x.bit=E2=80=
=9D. which is in =E2=80=9Cbuild-E310_SG3=E2=80=9D</p></li></ol><p>build-E31=
0_SG3 folder and build folder, both are in e31x folder.</p><p><br></p><p>I =
tried to run both these files and get same error. </p><p>the commands are. =
1. uhd_image_loader --args type=3De3xx,adr=3D192.168.10.2 --fpga-path=3D/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/e31x.bit</p><p><br></p><o=
l start=3D"2"><li><p>uhd_image_loader --args type=3De3xx,adr=3D192.168.10.2=
 --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build/usrp_e310_sg3_fp=
ga.bit</p></li></ol>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000e7e455060ccedf13--

--===============0992006628424124506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0992006628424124506==--
