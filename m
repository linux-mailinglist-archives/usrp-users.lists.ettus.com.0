Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFA099D9CA
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2024 00:29:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E61F385883
	for <lists+usrp-users@lfdr.de>; Mon, 14 Oct 2024 18:29:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728944978; bh=Yzbovn/mDZbALcp0pc7I9TBAMT6aoElkhuD+iW8kLG0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XjR7WRQU7tvkI0n22maLDyVdxHBd0HmyxV3/dTNVa1EwIweHMBiis+qoHF+8ylwOF
	 yZPSTfvzLy93O5fDXsO4Q2lzrTR33LA4doAhbJE3ex6P4OgSMsdfdsUpZbTMeMquC3
	 jszoSobJRCLIFfkxXdwpr3XHbRpMd+EKVmLjbGTexfrf3EAQiCN7kHe1YOrbXWsdXW
	 7uEQam/MJim2PKIwM4OItStEdcA0UHLAyE/EgEuPJzF1ZqNDRvkvGIMWF66NkVfGV6
	 I4LLpuuTokXlhEGBoEuhquFI5SRgbn6+zaVKNOuEhr7X29edDFgv4pAP0Wbg4i7jX3
	 wbd/kq9iJsUJQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F435385696
	for <usrp-users@lists.ettus.com>; Mon, 14 Oct 2024 18:29:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="lzVBpACl";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a9a0084f703so315889466b.3
        for <usrp-users@lists.ettus.com>; Mon, 14 Oct 2024 15:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728944968; x=1729549768; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hJuv+SKcZeVE+tYzEy2NP0UYnaqLVhFvz8EVt6HAYzA=;
        b=lzVBpAClISQYeUXE1grqSSDB84iqLfdfpIQenyOqvj87/zKlihfE5lyrDx1MPMP6hr
         77tG7iru2h+pGMcgy/e+fRNyL7OkBXwUW5mDsGUa6V3H/CiD8xrxGtUWB/4puFiDC49S
         2y9L6NQR4Gszf5JeN8b4yu1CXTRtn14asmFmoWanwqStqjS+OWGrKMw65OGeRzxGeL5G
         sEmWCt0mEeGooVTneSGPSTIcsvIq/lv+Oh2WOFwdFLj+1tWPpKtHDl9UPQvbtOzjaq1S
         T4Rmz9kZN5QMc61Zw0ts4GhfJyF7vC/Ia6lWstgHHlrxFZq6/wBf9A8Kc26FllirGJnA
         SC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728944968; x=1729549768;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hJuv+SKcZeVE+tYzEy2NP0UYnaqLVhFvz8EVt6HAYzA=;
        b=Ve3l7o457fMt+9TfitGJtDZ38lDloikEwzYc2NXnQvL1+GJuJHdmcerTi30XqiwDED
         2Rz1a5Zx5/Y7kbil2o6e6w7bcQij0jF99qffHRTdIAkGLO0NQj5/DYUgvojcFl2K7P2r
         4nS0+Vzj1kF7l4WsxGR6FJskFhoLhOF2Pi37bTzLptYv5r6hmEyM0IVuR8lZBjX+H4MP
         U5yrexsRIb2KUPQJQbp/PS6DCYjsQkCaXa5cZoCgj9HgHAhLXWd3S4w/LV8Tzqlof5EG
         UzOm4JCuFHdpX9QokANcdd3x428HC9F2jqux1H0fbKM2wf8gapNpdtHAiNAWK0nwbAcT
         MJMQ==
X-Gm-Message-State: AOJu0YzqHoKyPoGoJbXJPiJtvNknhnrGA1jRjdFeVuh4N1jDm+g+ZnpJ
	DniosoElg5tnznYTSiGsha54WXk4WEZ1vNkFtrHnygVTx6HvbHQM7Qo0vfOWleQJnnbSZt18yfO
	4JzhzQrnR+ECXeKmOEaYYm73Xp7NyE01tIe6QYhDrpejyl8K124ZInA==
X-Google-Smtp-Source: AGHT+IF7ObNQducPc03VKBuIN55ADWcR+rLI7fyfvTf2QXZpTHXTJsUtFpWlRD6cPm8VATphmIH+S7yhBMaBz4G7Kvo=
X-Received: by 2002:a17:907:3da8:b0:a9a:714:4399 with SMTP id
 a640c23a62f3a-a9a0714454fmr428857566b.51.1728944967999; Mon, 14 Oct 2024
 15:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=K0BEbZY47TP06ujgGf1zjphTaDqQbrb=xMnyFAMK2_PTsTQ@mail.gmail.com>
In-Reply-To: <CAF=K0BEbZY47TP06ujgGf1zjphTaDqQbrb=xMnyFAMK2_PTsTQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 14 Oct 2024 17:29:12 -0500
Message-ID: <CAFche=gpne0TyjavT82gTenCUss2rCp2Q6doHoUpk4tBL4DzYg@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: GYH2Y57RZIAEHLCNFGUV54BYHRBYPGSG
X-Message-ID-Hash: GYH2Y57RZIAEHLCNFGUV54BYHRBYPGSG
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error on adding RFNoC BLOCK - FFT.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYH2Y57RZIAEHLCNFGUV54BYHRBYPGSG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2470174792698202467=="

--===============2470174792698202467==
Content-Type: multipart/alternative; boundary="000000000000a78a5c0624775e92"

--000000000000a78a5c0624775e92
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nidhi,

In the YML file you have the same clock input on the FFT block driven from
three sources.

    - { srcblk: _device_, srcport: ce, dstblk: fft0, dstport: ce }
    - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: fft0, dstport: ce }
    - { srcblk: _device_, srcport: radio, dstblk: fft0, dstport: ce }


You should only have one clock driving it. Most likely you want the first
one (i.e., use the ce clock to drive the ce input of the FFT).

Wade

On Mon, Oct 14, 2024 at 7:46=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Hello,
>
> I am having USRP X300 device with following tool versions:
>
> Vivado 2021.1 - AR76780n,
> GNU radio version - v3.11.0.0git-820-g2adbd4ea
> UHD version - UHD_4.7.0.0-84-gbdada1ed
>
> By using the *"**https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4=
.0
> <https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>**"* guide, I
> am trying to add FFT IP in my design.  THis gives following error:
>
> Starting DRC Task
> INFO: [DRC 23-27] Running DRC with 8 threads
> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4
> has multiple drivers: bus_clk_gen/inst/clkout1_buf/O,
> bus_clk_gen/inst/clkout4_buf/O, and radio_clk_gen/inst/clkout1_buf/O.
> INFO: [Project 1-461] DRC finished with 1 Errors
>
>
> I have attached a .yml script file for your reference. Please guide me
> with the process of adding RFNoC blocks..
>
> Regards,
> NIdhi
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a78a5c0624775e92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nidhi,</div><div><br></div><div>In the YML file yo=
u have the same clock input on the FFT block driven from three sources.</di=
v><div><br></div><div><pre class=3D"gmail-aLF-aPX-K0-aPE">    - { srcblk: _=
device_, srcport: ce, dstblk: fft0, dstport: ce }
    - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: fft0, dstport: ce }
    - { srcblk: _device_, srcport: radio, dstblk: fft0, dstport: ce }</pre>=
</div><div><br></div><div>You should only have one clock driving it. Most l=
ikely you want the first one (i.e., use the ce clock to drive the ce input =
of the FFT).</div><div><br></div><div>Wade<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 14, 2024 at=
 7:46=E2=80=AFAM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com=
">nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><div dir=
=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><p dir=3D"auto">I =
am having USRP X300 device with following tool versions:</p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p></div></div></div></div><pre></pr=
e><div>By using the  <strong>&quot;</strong><b><a href=3D"https://kb.ettus.=
com/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ett=
us.com/Getting_Started_with_RFNoC_in_UHD_4.0</a></b><strong>&quot;</strong>
 guide, I am trying to add FFT IP in my design.=C2=A0 THis gives following =
error:</div><div><br></div><div>Starting DRC Task<br>INFO: [DRC 23-27] Runn=
ing DRC with 8 threads<br>ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus=
_clk_gen/inst/CLK_OUT4 has multiple drivers: bus_clk_gen/inst/clkout1_buf/O=
, bus_clk_gen/inst/clkout4_buf/O, and radio_clk_gen/inst/clkout1_buf/O.<br>=
INFO: [Project 1-461] DRC finished with 1 Errors</div><div><br></div><div><=
br></div><div>I have attached a .yml script file for your reference. Please=
 guide me with the process of adding RFNoC blocks..</div><div><br></div><di=
v>Regards,</div><div>NIdhi<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a78a5c0624775e92--

--===============2470174792698202467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2470174792698202467==--
