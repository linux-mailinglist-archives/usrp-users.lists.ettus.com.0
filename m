Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 137E6789064
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 23:30:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CD66384D78
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 17:30:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692999033; bh=MuT8jMlK/KsPlew5xW38pEHucWNoLjfU+LF///rEq8Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=r4pdMWDt366Icg9VC6i0htR/rARo2c0Kkv4XosMIp4/IK6GjrA1MqTGEwpzV2Xd3s
	 VCn4s15SYQe3wFZIt1dk2AdHrB9yvSqfx2mphoGNUa2hx/dyqCQpw99ItDtfVG8e4J
	 T7L5lp6lK8uWdKGf6IYrxwDi7S5QAs9GPnG7YoUd0QMDMe6wt0jUYO3rZfYogQpwIi
	 ckBk6xe99zKTlooVQfbGOAdae1GKwoSd2sXoQVupG2hIn9xq7i+ILyM84oBZMz7VKl
	 mn/tBc1/zGbDEtD96AWaBSWg8/RSxmMqwJziaMnpVM+3Q7Jk/D6okszfo/TAebKuI0
	 rExFjXkqyYIBA==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id E033B384D57
	for <usrp-users@lists.ettus.com>; Fri, 25 Aug 2023 17:30:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="ypCeAc4p";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-99bf1f632b8so175967766b.1
        for <usrp-users@lists.ettus.com>; Fri, 25 Aug 2023 14:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692999001; x=1693603801;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VE6+sHF2Um/xx4YBLwLiAsGtnlJiOQUL1k5xDIlQAIE=;
        b=ypCeAc4pExIzqSLlP38Vp2U88rZKsFLQHd9/nA+kfZDs8KJpLIeP30GuJMY8WHC3bE
         OMMsJdZWX7CDwbNrfL8l2TihFVNargYQX5Tn+hWOc8sZOYmTBi94K4SHjtF+FoXpElga
         Aa13Jv4RgtkAUU7C4ne/l3emH54NVmHjCTyG4Ss6NdhX88PZlhjKLQB5VfTq7crv3d14
         FaKxjAGLYo1srV8Olc5/e1J0HqXj5FZ+r78teOvyJ3J1iwofOUKoG7ydUV2B/Q0SUHmH
         I7ac/tgqQRkpadRd5qsErQu3ukM+3uyL5F6raioSm287nK5Kh2Jx2rOqytnda8hZ1Sd3
         Lv2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692999001; x=1693603801;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VE6+sHF2Um/xx4YBLwLiAsGtnlJiOQUL1k5xDIlQAIE=;
        b=gSr5ky0scDCDxyGuoOF43NCBXoz7XSa9f4veCILpGofxK6SO9XFAQ1YDD0QXd9oggh
         S2hAzr+G84JuHUxoWg71+1a02fFqG/thpp/tX39qJxXvEikHw/RYOuSW+52At+oe+nQK
         ExdaCsZtwn//CYMEDBrwfa/NUrv6jrVWavhKxzGyuwrrX4sM2oYXai+qFRqP93+BiYKb
         kWqLyBdIu/niSktMUA2vKQqR99A0nYso2lLdhmPJsNOeAG+oEO+vMS4ksQ+ng+CAvyML
         25EYCaXR0sk648ugBAh7dFzhEcnWCqAF5/oEAZehNXGhV63PDPaMH4NDKHTS4N9RqA8B
         cisQ==
X-Gm-Message-State: AOJu0YxoBLOi+5VRbOpbmBahEzG+yLeTbqTr659vFceY7vJsy4Qytxy4
	rAH8MY6rM32+yHfDg2Hh38yqyZv4nRrIpdbkwpmOL2EKLx7MlTvcngI=
X-Google-Smtp-Source: AGHT+IHLbxEngkkhVYZW567nLUivSsQoC0jbMn/vPFC7KU8RNwTrs47zXedXYfcXUDaeSow19iLm6IVBdWEDTFgZexA=
X-Received: by 2002:a17:906:7493:b0:9a1:ca55:b668 with SMTP id
 e19-20020a170906749300b009a1ca55b668mr9008086ejl.59.1692999000582; Fri, 25
 Aug 2023 14:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU@lists.ettus.com>
In-Reply-To: <dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 25 Aug 2023 16:29:44 -0500
Message-ID: <CAFche=g=dox4p3UxbA+4As-cJCTrZtdkVvtQp70ZRqzmD_fh2A@mail.gmail.com>
To: perper@o2.pl
Message-ID-Hash: DHYJG3QDURLJBH3YULWUICZNCX7O6DXV
X-Message-ID-Hash: DHYJG3QDURLJBH3YULWUICZNCX7O6DXV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 FPGA build failure with UHD-4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHYJG3QDURLJBH3YULWUICZNCX7O6DXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6820525368959354190=="

--===============6820525368959354190==
Content-Type: multipart/alternative; boundary="000000000000090e590603c60c1f"

--000000000000090e590603c60c1f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh, interesting. I'd like to understand why it doesn't work for some
people. This FPGA gets built quite regularly by myself and others without
this issue.

Wade

On Fri, Aug 25, 2023 at 9:53=E2=80=AFAM <perper@o2.pl> wrote:

> Hello,
>
> The undefined *RFNOC_EDGE_TBL_FILE* macro is a typical error when you try
> to build a Vivado project generated for X410.
>
> The reason is that the macro is not passed correctly when synthesizing th=
e
> Vivado project. My workaround was to use synth_design command generated b=
y
> UHD X410 Makefile. An example:
>
> synth_design -top x4xx -part xczu28dr-ffvg1517-2-e -verilog_define
> QSFP0_0=3D2 -verilog_define QSFP0_1=3D2 -verilog_define QSFP0_2=3D2
> -verilog_define QSFP0_3=3D2 -verilog_define RFBW_200M=3D1 -verilog_define
> X410=3D1 -verilog_define GIT_HASH=3D32'hfbf186b7 -verilog_define
> RFNOC_EDGE_TBL_FILE=3D/home/user/RFSoC/uhd/fpga/usrp3/top/x400/x410_200_s=
tatic_router.hex
> -verilog_define RFNOC_IMAGE_CORE_HDR=3Dx410_200_rfnoc_image_core.vh
> -verilog_define UHD_FPGA_DIR=3D/home/user/RFSoC/uhd/fpga/usrp3/top/../.
>
> I don=E2=80=99t remember exactly how I obtained it.
>
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000090e590603c60c1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Oh, interesting. I&#39;d like to understand why it do=
esn&#39;t work for some people. This FPGA gets built quite regularly by mys=
elf and others without this issue.<br></div><div><br></div><div>Wade<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Aug 25, 2023 at 9:53=E2=80=AFAM &lt;<a href=3D"mailto:perper@o2.=
pl">perper@o2.pl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><p>Hello,</p><p>The undefined <strong>RFNOC_EDGE_TBL_FILE</=
strong> macro is a typical error when you try to build a Vivado project gen=
erated for X410.</p><p>The reason is that the macro is not passed correctly=
 when synthesizing the Vivado project. My workaround was to use synth_desig=
n command generated by UHD X410 Makefile. An example:</p><p>synth_design -t=
op x4xx -part xczu28dr-ffvg1517-2-e -verilog_define QSFP0_0=3D2 -verilog_de=
fine QSFP0_1=3D2 -verilog_define QSFP0_2=3D2 -verilog_define QSFP0_3=3D2 -v=
erilog_define RFBW_200M=3D1 -verilog_define X410=3D1 -verilog_define GIT_HA=
SH=3D32&#39;hfbf186b7 -verilog_define RFNOC_EDGE_TBL_FILE=3D/home/user/RFSo=
C/uhd/fpga/usrp3/top/x400/x410_200_static_router.hex -verilog_define RFNOC_=
IMAGE_CORE_HDR=3Dx410_200_rfnoc_image_core.vh -verilog_define UHD_FPGA_DIR=
=3D/home/user/RFSoC/uhd/fpga/usrp3/top/../.</p><p>I don=E2=80=99t remember =
exactly how I obtained it.</p><p>Best Regards,<br>Piotr Krysik</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000090e590603c60c1f--

--===============6820525368959354190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6820525368959354190==--
