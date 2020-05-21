Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B78C1DC564
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 04:55:25 +0200 (CEST)
Received: from [::1] (port=54500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbbMe-0006gM-5v; Wed, 20 May 2020 22:55:20 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:42094)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jbbMa-0006bI-3s
 for usrp-users@lists.ettus.com; Wed, 20 May 2020 22:55:16 -0400
Received: by mail-ot1-f42.google.com with SMTP id z3so4390495otp.9
 for <usrp-users@lists.ettus.com>; Wed, 20 May 2020 19:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EJo3BjNhjIGeEha/E+CAh14nR568x8tf+UU8pv8qF4o=;
 b=RG0/y4RsB54jdp+LQb/UwLdFpocEX9emyszUPwViD7WEVk9A5xDpq8kkCexbcZjCOs
 9smk4ZO0M3/2gcrq/GbTEqDAEMVK1XIPf0FxBmRWJJwr4l4Qesuh8Ruy7YzlOlBS2Odi
 zaePprim/ZBP9XkUL9UQ29kJCjnMpt9fAJZ9COm1wq3w2ojgSHBZoFoMIa5eTEz+ctgQ
 zESqD7ExgW750KnLvD8jcvpy6OrfUMDepC14pjFcdiC02UxAfUlp/GfrFXMsz9Ffc/Ej
 cPFU38506afN/H+vEOj3B+AdjqpNpIxnrnrKG8Gpkj7PU93msb+TcV5xmDSkixywXmAT
 D+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EJo3BjNhjIGeEha/E+CAh14nR568x8tf+UU8pv8qF4o=;
 b=ljBY/tg4CyEC05qktJRM9d3BvNpUegw0YuYgp+UZBGSaTEflR5x8Gd+2AnPgkDIv2A
 6x6zJ4RtpRI2M79rCJFEqUhzmPKeJ+H78BLmT7y6Sjoc7BHpOoLZ959Z8pd5OLyQ7dwK
 9t33kds5Fqvy9yWN89xcK6wmCyUMMJY8PCkAejGwh2CvWr4RI0DtsoeuLN0f0pCpligl
 hRcWmBEwjp9rxTmkuCQSAd1xy+N5dPelB8W+fHdq4Hwf/+o6/fTEY216R/AOQy5VrQVr
 uAeQ2LZBDKL7zACyZq7O3Ad5eqdeZBcYz2LNUKtgjbTTIcyWSlaAG7gRjRUXp2/zi5Vm
 GLHQ==
X-Gm-Message-State: AOAM532eEEwHaCLr9lSszn4Gk9/zH+8tQCfUDMB2wRWKasmMXs5cTABD
 vb9xjCKty+tu44Vc8LI+8z0IjA23zxIVa+IGk1s=
X-Google-Smtp-Source: ABdhPJyQ6V3ZGHoCpVgHbnPhGpCHKBpMx4u0sJKHvgtRtDTK1vvjLBlfJFmU/ZvWPEhX9M9ZJQBQ74o6tiwppLEJOTc=
X-Received: by 2002:a05:6830:2155:: with SMTP id
 r21mr5857689otd.187.1590029675270; 
 Wed, 20 May 2020 19:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <2f10393db6b447e9925d3da9fd110467@gtri.gatech.edu>
In-Reply-To: <2f10393db6b447e9925d3da9fd110467@gtri.gatech.edu>
Date: Wed, 20 May 2020 22:54:24 -0400
Message-ID: <CAEXYVK5gRddscqEBZ36CHjNkv-=PFvBaA1jxwTy9UhdEgq-UTA@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Subject: Re: [USRP-users] rfnoc build standard image x310 failing
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Prado,
 Ron" <Ron.Prado@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============8645479491331379758=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8645479491331379758==
Content-Type: multipart/alternative; boundary="000000000000fa187805a61fa1d1"

--000000000000fa187805a61fa1d1
Content-Type: text/plain; charset="UTF-8"

On Wed, May 20, 2020 at 8:35 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Can someone please tell me what version of uhd and rfnoc are compatible
> for building an image on Ubuntu 18.04?
>
>
>
> I cannot get any of the UHD releases to properly build a standard rfnoc
> image.
>
>
>
> sudo ./uhd_image_builder.py fft ddc duc -g -t X310_RFNOC_HG -c -d X310
> --fill-with-fifos
>
>
>
> I installed vivado 2018.3 with uhd 3.15.0.0 and get the error:
>
>
>
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4
> has multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and
> bus_clk_gen/inst/clkout4_buf/O.
>
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
> radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has
> multiple drivers:
> radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q,
> and
> ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q.
>

This looks like the problem with uhd_image_builder.py assigning clocks.  It
should have been fixed most likely here with this commit for the generated
code:


https://github.com/EttusResearch/fpga/commit/9fb84a15ab8f31e3c056845d2d063a9cc745443e#diff-4ec1b7f14325d1af5ce8a749d9274b29

Can you check to see if your rfnoc generated files have ce_clk = radio_clk
in them?

Brian

--000000000000fa187805a61fa1d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 20, 2020 at 8:35 PM Hodges, J=
eff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_7011778936979535436WordSection1">
<p class=3D"MsoNormal">Can someone please tell me what version of uhd and r=
fnoc are compatible for building an image on Ubuntu 18.04?<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I cannot get any of the UHD releases to properly bui=
ld a standard rfnoc image.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">sudo ./uhd_image_builder.py fft ddc duc -g -t X310_R=
FNOC_HG -c -d X310 --fill-with-fifos<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I installed vivado 2018.3 with uhd 3.15.0.0 and get =
the error:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_cl=
k_gen/inst/CLK_OUT4 has multiple drivers: radio_clk_gen/inst/clkout1_buf/O,=
 and bus_clk_gen/inst/clkout4_buf/O.<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_=
reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has multipl=
e drivers: radio_reset_sync/reset_double_sync/synchronizer_false_path/stage=
s[9].value_reg[9][0]/Q, and ce_reset_sync/reset_double_sync/synchronizer_fa=
lse_path/stages[9].value_reg[9][0]/Q.</p></div></div></blockquote><div><br>=
</div><div>This looks like the problem with uhd_image_builder.py assigning =
clocks.=C2=A0 It should have been fixed most likely here with this commit f=
or the generated code:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"http=
s://github.com/EttusResearch/fpga/commit/9fb84a15ab8f31e3c056845d2d063a9cc7=
45443e#diff-4ec1b7f14325d1af5ce8a749d9274b29">https://github.com/EttusResea=
rch/fpga/commit/9fb84a15ab8f31e3c056845d2d063a9cc745443e#diff-4ec1b7f14325d=
1af5ce8a749d9274b29</a></div><div><br></div><div>Can you check to see if yo=
ur rfnoc generated files have ce_clk =3D radio_clk in them?</div><div><br><=
/div><div>Brian</div></div></div>

--000000000000fa187805a61fa1d1--


--===============8645479491331379758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8645479491331379758==--

