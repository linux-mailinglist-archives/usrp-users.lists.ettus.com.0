Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 284E377CD5D
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 15:38:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA61D384B08
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 09:38:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692106725; bh=V1m2PsZDQUAOA9IJq8wbua48AU+byJ5r4jedENloBZ8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XkL9FwIcRB+fTYniGf8SIR/NeryporJNTuEL+uxxchYvrHOPCqcaaJ1XLJ9sAchgv
	 2MMK773TF+O9/wtdTEFaUQBfUXIQYu+mx8jyYRGoyqEm72Oj048O9H7VBMbs95bv3m
	 2hd9g2nAJR2NdOBJR65SzOi/59nwE/mgAJABzrmvmrSscLZKs/4QWH/xq5g2XtbOoX
	 yYmdcEtigBXuWP/sH0s4ZZQaIG9WjEMjTW4c2cmYJIcVP6W6zLqAwbG3EqpaWOxLaS
	 KlMgpGHAWCdukuOG5FhD9USbslMA2TApIGIrhCgfE4bhIxR2ic/h/h1JePcDc6swD5
	 kchLtMyGKcRnw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CB88380F86
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 09:38:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="vbkOgrSO";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-99c1f6f3884so739628866b.0
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 06:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692106693; x=1692711493;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PGOgOkq0mdp40qodrMA48v/iT7xRxUi72VAoXGmifM4=;
        b=vbkOgrSONLj2yqlk0u8HfkCE+EwQxbVDL37e75Mp/GSXzVfIytY1KGbVb0RiIr62rG
         jd7s04a2Zmef0XNpIA0IMUppJQQ/El84Stc4KEzgd86usIsYtFzK9d5supi5zxgM7Otu
         /6KsJaVnVr5vaFkn+IyGZO1lzIz4ykvB5YsE6Y5ib77vmMUblpXcolFAYMH2CDHdhfuS
         9vgXPEVzRBJDZMxEAIJjVyLBF9qqocOzPNgp+wQ1spVOZgCVr2e7IgwUawwixmsW1v27
         vSi6EPVXTuyRJ8XKk0/3JuFHq3Ux5tAaAKrYzDuaRgrgg0P0Aarrt4H/zUkXdnuNpBkd
         DuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692106693; x=1692711493;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PGOgOkq0mdp40qodrMA48v/iT7xRxUi72VAoXGmifM4=;
        b=eJJzJpgelH1iFiLZwnCyJs7bwsYTHlCL7ECdYNoNaEbW1cIWr5JZzhEcdLIaT/Z1/C
         r1rslPkFVGQI1KW8zsx/VQIKqlRoYre8tWFn3DdZWjigfK/sSz4bCfRsZ5LGyTbPS0vg
         gZmWT2+Iu0ZaFAOmESN1+YmYfeSaUEfJ1lVZR2igY3Mg52Wc+zQaPUwjoC767Dtfh69a
         eLz40ZE3S4NVelp7gNNAKyOkBDEHZj9ugt4jzNcaMhbzFSy9nDZ9JfmhtX2OJmUBIFKv
         StANk+kJ4UUKCPmPtIvKgEcHxHeQlL549YEK9nT3tuS8k4q2Z071FF/xLT3LR2BwuvtF
         +KFA==
X-Gm-Message-State: AOJu0YwPq3B41X1MtggpGnBBH7b+AEjPZQ24+/cNntJnC1uVEwk9zTIj
	bR8rf4oLgh5Jxhr/ILm12TEqctAlWAnzxa8MvRXnAacV
X-Google-Smtp-Source: AGHT+IE1YQtA9MQsXfxBnJv+GdcTuWbfK1hv6I56ftG11Gq+D8Zs1DNLdaRPzqOLGCpZsMT3knot+6DZoOn8czJ8Jmo=
X-Received: by 2002:a17:906:518c:b0:99d:6a8a:6010 with SMTP id
 y12-20020a170906518c00b0099d6a8a6010mr10198369ejk.18.1692106693107; Tue, 15
 Aug 2023 06:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <6c8167b2c5804f74be1fbeb1c9dd9df3@verusresearch.net> <f7232a6a-0780-4f82-917e-94101483ced4@gmail.com>
In-Reply-To: <f7232a6a-0780-4f82-917e-94101483ced4@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 15 Aug 2023 08:37:56 -0500
Message-ID: <CAFche=gZ8_d9fJPE6nnM0hHSbCfoSFTm+THx7ZvTRNFEXO_eOg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: AGLZJVG7UQO7YKTDH27664GDELZVGF7B
X-Message-ID-Hash: AGLZJVG7UQO7YKTDH27664GDELZVGF7B
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Xilinx Zynq 7020 SoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AGLZJVG7UQO7YKTDH27664GDELZVGF7B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0985784209204395305=="

--===============0985784209204395305==
Content-Type: multipart/alternative; boundary="0000000000005d7e160602f64a34"

--0000000000005d7e160602f64a34
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The Zynq SoC on the E3xx/N3xx USRPs is a 7-Series Xilinx device, so you'll
find it with the other Xilinx 7-Series documentation. Maybe this is what
you're looking for?

https://docs.xilinx.com/v/u/en-US/ug479_7Series_DSP48E1

Wade

On Mon, Aug 14, 2023 at 6:34=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 14/08/2023 18:30, Mushtaq A. Syed, Ph.D. via USRP-users wrote:
>
> Hi:
>
> Where can I find documentation for the DSP modules that are present on th=
e
> xilinx Zynq SOC?
>
> Thanks a lot!
>
> Cheers,
>
> Mushtaq
>
>
>
> You are presumably talking about the Zynq on the E31x series of devices.
> Took me a second to look up the mapping
>   between USRP devices and the Xilinx FPGAs they use.
>
> To whatever extent Xilinx IP is used on USRP devices, the documentation
> for that IP can be sourced through Xilinx, but
>   for other bits and pieces (including "home grown" DSP machinery), for
> the most part, the source code is the documentation.
>   There's no separate "structured walk-through" of the FPGA
> code--partially because it changes, often considerably, between
>   FPGA releases, and partially because resources have never been committe=
d
> to create such a set of documentation.
>
> There are documents like this:
>
> https://files.ettus.com/manual/page_usrp_e3xx.html
> https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Getting_Started_Guid=
es
> https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Resources
>
> But no high-level structured walk-through of the FPGA code.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005d7e160602f64a34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The Zynq SoC on the E3xx/N3xx USRPs is a 7-Series Xil=
inx device, so you&#39;ll find it with the other Xilinx 7-Series documentat=
ion. Maybe this is what you&#39;re looking for?</div><div><br></div><div>
<a rel=3D"nofollow" target=3D"_blank" href=3D"https://docs.xilinx.com/v/u/e=
n-US/ug479_7Series_DSP48E1">https://docs.xilinx.com/v/u/en-US/ug479_7Series=
_DSP48E1</a> <br></div><div><br></div><div>Wade<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 14, 20=
23 at 6:34=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@g=
mail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 14/08/2023 18:30, Mushtaq A. Syed,
      Ph.D. via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Hi:<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-indent:0.5in">Where can I find
          documentation for the DSP modules that are present on the
          xilinx Zynq SOC?<u></u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-indent:0.5in">Thanks a lot!<u>=
</u><u></u></p>
        <p class=3D"MsoNormal" style=3D"text-indent:0.5in">Cheers,<u></u><u=
></u></p>
        <p class=3D"MsoNormal" style=3D"text-indent:0.5in">Mushtaq<span sty=
le=3D"font-size:13.5pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb(5=
1,51,51)"><u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:=
&quot;Arial&quot;,sans-serif;color:rgb(51,51,51)">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          </span><u></u><u></u></p>
      </div>
      <br>
    </blockquote>
    <font face=3D"Exo 2">You are presumably talking about the Zynq on the
      E31x series of devices.=C2=A0 Took me a second to look up the mapping=
<br>
      =C2=A0 between USRP devices and the Xilinx FPGAs they use.<br>
      <br>
      To whatever extent Xilinx IP is used on USRP devices, the
      documentation for that IP can be sourced through Xilinx, but<br>
      =C2=A0 for other bits and pieces (including &quot;home grown&quot; DS=
P
      machinery), for the most part, the source code is the
      documentation.<br>
      =C2=A0 There&#39;s no separate &quot;structured walk-through&quot; of=
 the FPGA
      code--partially because it changes, often considerably, between<br>
      =C2=A0 FPGA releases, and partially because resources have never been
      committed to create such a set of documentation.<br>
      <br>
      There are documents like this:<br>
      <br>
      <a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html" target=
=3D"_blank">https://files.ettus.com/manual/page_usrp_e3xx.html</a><br>
<a href=3D"https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Getting_Sta=
rted_Guides" target=3D"_blank">https://kb.ettus.com/Ettus_USRP_E300_Embedde=
d_Family_Getting_Started_Guides</a><br>
<a href=3D"https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Re=
sources" target=3D"_blank">https://kb.ettus.com/Ettus_USRP_E300_Embedded_Fa=
mily_Hardware_Resources</a><br>
      <br>
      But no high-level structured walk-through of the FPGA code.<br>
      <br>
      <br>
    </font>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005d7e160602f64a34--

--===============0985784209204395305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0985784209204395305==--
