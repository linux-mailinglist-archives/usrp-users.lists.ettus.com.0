Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6859288D007
	for <lists+usrp-users@lfdr.de>; Tue, 26 Mar 2024 22:29:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 606B03869DC
	for <lists+usrp-users@lfdr.de>; Tue, 26 Mar 2024 17:29:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711488581; bh=TAFEkBInw6UV8nJxKjCEQBB61PMgYNu/lUo404Bik0Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gLRZfnNqNjyXi2OHWSZXB9Z8ghuDER20rvE/V874UM5XPBPnyXuGgorsbkpYhEdcX
	 d8vWPERyvuC3lgG9aPgKZHBWWJwYQQPPpRe4XXNwgJN3VdF/uhAitwtEajNeL/qNbZ
	 nBqVyJaxEcy5vyVWOHGTnDID6/YZ0iupWNEA00/+vdedNFOfdny/jJel0N3+SxPCSl
	 4HHqUUAZ4LNSMB+SXze0tmoeQhr9GSzU+IcgyYNoO/7+MY4wmqbfBmV6IrVkigLpFd
	 jmk2R3O4a1RUVokR6D7WBMIC12QcfbImE+kNn8zGv02yugmmfEmdbfVCcilGt9+ccD
	 iNQrE5YiIPF9w==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 981933869B3
	for <usrp-users@lists.ettus.com>; Tue, 26 Mar 2024 17:29:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="exXHZx6S";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-568c714a9c7so7061355a12.2
        for <usrp-users@lists.ettus.com>; Tue, 26 Mar 2024 14:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1711488544; x=1712093344; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E7tCpERbDyi6rnc382xPog2oIvqMgv2B7bc8VZTB08o=;
        b=exXHZx6Sw++BZX2rGWO5R7XKme4+O5C6B9Y+5aGQ+RAbpXwZ8icta5dTSJXgaU1KqP
         sWZLItaHII8Fyrk9eito76KyoXrd9U+Nl2KPASQhHy+FQ3F/VnsSNach9ZFT5z2oXZXK
         h6BMT2GbZ1JMN9PMgAG/bw8FdyINPPs/YszV5HILzlHLTCGDuxTMqtli0dI4ITeS6X4x
         R4Oj+nezxL0DGO8rrpNyHZRbmnTnW15TG71kbpQ/5vwEG11SoOhJ2vm6xW+2GWzqw2V1
         IVA76StxNUaACrPUAR9pr6REJxws+7oVmYEOnC6kduAqU1xnkPMvGkbr60XsSDbcvENu
         Egmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711488544; x=1712093344;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E7tCpERbDyi6rnc382xPog2oIvqMgv2B7bc8VZTB08o=;
        b=B2RWtpgLKFwMbkggf+gsfgXunp2GsSsExkKoq1g2nFb+1wfQoPV2hrpJIydxuC5q8g
         9OCCq6qYEEfaCM77wIO5xjchgfb2zn/8zbh5jGTE7k1OOm40JC03v43G/OWU4DS8VJOi
         jQsRcrMGf/GIKTy9FpE9dxL15rDdSvGzwzInQP/VwrE/wA9OlQ4SxWo0QqVTChhsFhxV
         gdf5gbLnTbyRozajElXW+DOg/bJBlA8uL7/lojt68d3Rt0RNw0AiIAH/Sz6L+c9gsoB7
         afBojxhaVm9RWrkzyOnw1cXjAOZCXcV6y3WI4KIUOrvKuAzNM3oi5a3c8yIjtY4LXxno
         KIpg==
X-Gm-Message-State: AOJu0YwXZlRHgsp0bdIKa25aj60Mok5RdG2Bx2GhZuWICUSS2lN7DJbz
	QUQqLA1oymuFj+eg1g3aCQaBKBZcxm7I9uN1nUaZXLanMtbNaEHHHMSoGEnBP8UEBqoqEb3gD1K
	8d+vmWJSimZmMQWUGQ8N6adg27A3tI+GjsxdU6nqk
X-Google-Smtp-Source: AGHT+IGy7SOoSiR6moOm45uMkxSET7w9lkwQj1LwUbb8pkDUC9vlXINpIKetS9Cr+oenJQdcEFV62EXBZOkU1TJT3+s=
X-Received: by 2002:a17:906:52ca:b0:a46:94c7:49a5 with SMTP id
 w10-20020a17090652ca00b00a4694c749a5mr687877ejn.40.1711488544073; Tue, 26 Mar
 2024 14:29:04 -0700 (PDT)
MIME-Version: 1.0
References: <h0L6dBAQPTvnhglyeFh4MRuX89g5HynNE6Dsxxfmymc@lists.ettus.com>
In-Reply-To: <h0L6dBAQPTvnhglyeFh4MRuX89g5HynNE6Dsxxfmymc@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 26 Mar 2024 16:28:47 -0500
Message-ID: <CAFche=jmRU_XgKFn5S-37xfsn_9PyCmQbOYG1TjBtLgjUnd+og@mail.gmail.com>
To: chris.pineda@chaosinc.com
Message-ID-Hash: NQKLKUCW7YHQQYYE5OMBEUDIHYRPHDC4
X-Message-ID-Hash: NQKLKUCW7YHQQYYE5OMBEUDIHYRPHDC4
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to Simulate RFNoC FFT Module in Questa/Modelsim
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NQKLKUCW7YHQQYYE5OMBEUDIHYRPHDC4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6492389094081565515=="

--===============6492389094081565515==
Content-Type: multipart/alternative; boundary="000000000000b508ed061496fa65"

--000000000000b508ed061496fa65
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did you look through the simulation libraries that you built to see if
xfft_v9_1_6 is in there? I'm wondering if it's not there or if ModelSim
just can't find it.

Take a look at the manual page if you haven't already:
https://files.ettus.com/manual/md_usrp3_sim_running_testbenches.html

Let's assume it can't find it. When you run "source setupenv.sh" to setup
your environment, there's a --modelsim-path option to say where modelsim is
located. It'll tell you if it successfully found modelsim and if it found
the compilation libraries. If it can't find the simulation libraries, I
think you can try setting the environment variable MSIM_VIV_COMPLIBDIR to
point to the directory where they are located. If setupenv.sh can find
modelsim and the libraries then "make vsim" should work, assuming you did
indeed compile all the required libraries.

If that doesn't work, and you confirmed the library is there, here are some
other options. When you compile the simulation libraries using Vivado, it
generates a modelsim.ini with the required library mappings. Make sure the
library is listed in there and that the path is correct. You can set the
environment variable MSIM_MODELSIM_INI to point to the generated
modelsim.ini file. Or, you can also open the generated modelsim.ini and
copy the library references manually to your main modelsim.ini (this is
what I typically do).

Wade

On Tue, Mar 26, 2024 at 1:18=E2=80=AFPM chris.pineda--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I=E2=80=99ve been trying to integrate the Questa into the simulation envi=
ronment,
> and have had success simulating all the provided modules, with the
> exception of the FFT. Whenever I would run make vsim, it would generate
> the IP, and then I would run into the following error.
> vcom -32 -93 -work xil_defaultlib
> ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.vhd
> -- Loading package STANDARD
> -- Loading package TEXTIO
> -- Loading package std_logic_1164
> -- Loading package NUMERIC_STD
> ** Error:
> ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.vhd(56):
> (vcom-1598) Library "xfft_v9_1_6" not found.
> ** Error:
> ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.vhd(57):
> (vcom-1136) Unknown identifier "xfft_v9_1_6".
> ** Note:
> ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.vhd(59):
>
> I have done several steps in trying to resolve this. Originally I compile=
d
> the sim library through Vivado, so I tried to compile it through the
> build_simlibs command (which I know just does the same thing, but I
> thought I=E2=80=99d try it). I=E2=80=99ve tried adding in the MODELSIM_LI=
BS=3D"secureip xpm"
> argument when calling the make file, I=E2=80=99ve tried downgrading to Mo=
delsim DE,
> and regenerating the library with the exact version that matches the
> desired version for Vivado 2021.1 (2020.4). No matter what, it seems like
> it can=E2=80=99t resolve this issue. When I check the generated IP files,=
 I see a
> xfft_v9_1_vh_rfs.vhd file (which is encrypted), so I=E2=80=99m unclear wh=
y it=E2=80=99s
> unable to find it. Has anyone had any trouble simulating this module? And
> any steps to try to resolve? Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b508ed061496fa65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>Did you look through the simulation librar=
ies that you built to see if xfft_v9_1_6 is in there? I&#39;m wondering if =
it&#39;s not there or if ModelSim just can&#39;t find it.<br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">Take a look at the manual page if you h=
aven&#39;t already:<br><a href=3D"https://files.ettus.com/manual/md_usrp3_s=
im_running_testbenches.html">https://files.ettus.com/manual/md_usrp3_sim_ru=
nning_testbenches.html</a></div><div dir=3D"ltr"><br></div><div>Let&#39;s a=
ssume it can&#39;t find it. When you run &quot;source setupenv.sh&quot; to =
setup your environment, there&#39;s a --modelsim-path option to say where m=
odelsim is located. It&#39;ll tell you if it successfully found modelsim an=
d if it found the compilation libraries. If it can&#39;t find the simulatio=
n libraries, I think you can try setting the environment variable MSIM_VIV_=
COMPLIBDIR to point to the directory where they are located. If setupenv.sh=
 can find modelsim and the libraries then &quot;make vsim&quot; should work=
, assuming you did indeed compile all the required libraries.<br></div><div=
 dir=3D"ltr"><br></div><div dir=3D"ltr">If that doesn&#39;t work, and you c=
onfirmed the library is there, here are some other options. When you compil=
e the simulation libraries using Vivado, it generates a modelsim.ini with t=
he required library mappings. Make sure the library is listed in there and =
that the path is correct. You can set the environment variable MSIM_MODELSI=
M_INI to point to the generated modelsim.ini file. Or, you can also open th=
e generated modelsim.ini and copy the library references manually to your m=
ain modelsim.ini (this is what I typically do).</div><div><br></div><div>Wa=
de<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Mar 26, 2024 at 1:18=E2=80=AFPM chris.pineda--- via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>I=E2=80=99ve been trying to integrate the Questa into the simulation =
environment, and have had success simulating all the provided modules, with=
 the exception of the FFT. Whenever I would run <code>make vsim</code>, it =
would generate the IP, and then I would run into the following error. <br><=
code>vcom -32 -93 -work xil_defaultlib ../../../../../build-ip/xc7z100ffg90=
0-2/axi_fft/synth/axi_fft.vhd <br>-- Loading package STANDARD<br>-- Loading=
 package TEXTIO<br>-- Loading package std_logic_1164<br>-- Loading package =
NUMERIC_STD<br>** Error: ../../../../../build-ip/xc7z100ffg900-2/axi_fft/sy=
nth/axi_fft.vhd(56): (vcom-1598) Library &quot;xfft_v9_1_6&quot; not found.=
<br>** Error: ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft=
.vhd(57): (vcom-1136) Unknown identifier &quot;xfft_v9_1_6&quot;.<br>** Not=
e: ../../../../../build-ip/xc7z100ffg900-2/axi_fft/synth/axi_fft.vhd(59):</=
code></p><p>I have done several steps in trying to resolve this. Originally=
 I compiled the sim library through Vivado, so I tried to compile it throug=
h the <code>build_simlibs</code> command (which I know just does the same t=
hing, but I thought I=E2=80=99d try it). I=E2=80=99ve tried adding in the <=
code>MODELSIM_LIBS=3D&quot;secureip xpm&quot;</code>  argument when calling=
 the make file, I=E2=80=99ve tried downgrading to Modelsim DE, and regenera=
ting the library with the exact version that matches the desired version fo=
r Vivado 2021.1 (2020.4). No matter what, it seems like it can=E2=80=99t re=
solve this issue. When I check the generated IP files, I see a xfft_v9_1_vh=
_rfs.vhd file (which is encrypted), so I=E2=80=99m unclear why it=E2=80=99s=
 unable to find it. Has anyone had any trouble simulating this module? And =
any steps to try to resolve? Thank you. </p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b508ed061496fa65--

--===============6492389094081565515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6492389094081565515==--
