Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C27EA860385
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 21:12:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC650380D2E
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 15:12:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708632727; bh=7iL+B/N8r/Js38S1Dv/n5r0E/ZpuW/a/0R+/ORgkOHg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FYqxkGP2oWDRyFJROc7IyhsiK1e9JaVmu0CgReQPpu/lchpO87OnFtmW/UlGSges9
	 eI/7pZL8SwCnbtRnwQU+GFG0cBwJumfFD6nvlvZrJGLlm9tA4mHN+AGM2dtHeD53tP
	 5JBaO3QuqMpwNHQD/2hgpCXyNORsYpvoX6wWZOq4YGUIL9oRSYgzE795zQdb24Teee
	 t15+ntxL5RsKtBqNZp4VUUcIPt13Ar/LLwks6wISm1jo3qQuTKh6rPAlTY40YA74Ha
	 XaLkq/VKGF1R2xP/woO4EN5YHH+1vtJ/iTwyc0clCWKcsqw/8lOYGqHGTYiTaO2JTk
	 JtKlgOYJXLo2Q==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id E6B34384E67
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 15:11:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jpMl8GyI";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a3566c0309fso16020266b.1
        for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 12:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708632665; x=1709237465; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0g8BdH+xmlKs0S4boghP7AzwnF5jzaQD59KRxDCvtaY=;
        b=jpMl8GyIkzbXBlNhJ9S2YPV8gGhUlzXry68gr5ByXj2J2VojV++4RFBYREvi5DAv+W
         1bNztYMSrrxycupBmCgYOKdvGD6IYYchHXVxetmSBKmCCjgwQvrI63sbYtR21kQB9Qj7
         bPp+cQcJ45WaPe4SKcGt5qODkZ1ge/J5GO3RMQOVHpU7xHVhYrYfSDjtJYSZ4DeoiFDP
         5DiMJ3yMgHsU4y8x8UkJZ2Yk2zPVBOPdoXttCwx2oviUGHY8vabgK+1DlnYKtRjQ/QAl
         1K7VNGgcc25vh7A/02bHVArUuhYF/mUjEqYBv2UoGDxjMdn19LIMY/8h6YuD6967OLc1
         N1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708632665; x=1709237465;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0g8BdH+xmlKs0S4boghP7AzwnF5jzaQD59KRxDCvtaY=;
        b=ZMI1FHrSk6MH1hDmBO9Pz+8L+HBUn8gEXEKVcNSjSGt/tXazMNHFMdF6Aq506vf7JQ
         rQo8/rU0kkqHPLQZiOU+bXTSHQ7UCc3FeEtTnjloGOSRhuUjKSBsdCyVxYjNvbXYWPrG
         W3Kp0dCiigqh4roq5cWmFDrgE08M8KeqQOXk0+gfko6/fwWrObqXjFd42bYP7B44CXxM
         WIrcldOKDs/wm6ZTAEozWKdlYCJrdOx4zmtprtloSAKZsoM5kPXK3gWpugF4yQHu/vpF
         KOpuTwlY+/+iwQLRM0COUrPDCeNSOlMFwRtWjJVT6hDXPH28h1Us6Z4PJZoGqPy7XF4t
         s3kw==
X-Gm-Message-State: AOJu0Yy3XAuXiDFqTaCxDQl3xtggGK6rIAXzb2uwdyiDTCvQxPLuwV8C
	Vj6kxBe+7MgMMLdWoBLOEvc3DebtXHCilUfeFb160AUaEDt4SpJ3vEc8bRNuo70odOd7xLIlKtc
	DzaPHHl7LTJkz0VokBqSBhQ7dVOAJRvgh
X-Google-Smtp-Source: AGHT+IEUwBIcaunCXv3QqBRkV9eB5VWB0ZFdH/GdvA7N/wzeGWgGrf1kyTI/MAQ+AtgbrsyBzZYC6fgRQAcWHP7qcaU=
X-Received: by 2002:a17:906:dda:b0:a3f:9929:194 with SMTP id
 p26-20020a1709060dda00b00a3f99290194mr1578786eji.65.1708632664579; Thu, 22
 Feb 2024 12:11:04 -0800 (PST)
MIME-Version: 1.0
References: <dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM@lists.ettus.com>
In-Reply-To: <dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 22 Feb 2024 15:10:52 -0500
Message-ID: <CAEXYVK53v3xSZNhW14kQM8iSb7sp9k-Fk8vqe+7H1XbuSTeV=Q@mail.gmail.com>
To: yguruprasad@umass.edu
Message-ID-Hash: N7ECAX2VALVRWVDRIPMZNP4IVNLGVK25
X-Message-ID-Hash: N7ECAX2VALVRWVDRIPMZNP4IVNLGVK25
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting started with RFNoc block (adding an additional RFnoc block )
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N7ECAX2VALVRWVDRIPMZNP4IVNLGVK25/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7835888860308840974=="

--===============7835888860308840974==
Content-Type: multipart/alternative; boundary="0000000000000622cf0611fe0b79"

--0000000000000622cf0611fe0b79
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2024 at 3:02=E2=80=AFPM <yguruprasad@umass.edu> wrote:

> CRITICAL WARNING: [Route 35-39] The design did not meet timing
> requirements. Please run report_timing_summary for detailed reports.
>
> [01:09:55] Current task: Routing +++ Current Phase: 22 Post Router Timing
>
> [01:09:55] Current task: Routing +++ Current Phase: Finished
>
> [01:09:55] Executing Tcl: phys_opt_design -directive Explore
>
> [01:09:55] Starting Physical Synthesis Command
>
> [01:10:32] Current task: Physical Synthesis +++ Current Phase: Starting
>
> [01:10:32] Starting Physical Synthesis Task
>
> [01:10:32] Current task: Physical Synthesis +++ Current Phase: Starting
>
> [01:12:11] Current task: Physical Synthesis +++ Current Phase: 1 Physical
> Synthesis Initialization
>
> CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
> u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
> period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
> u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u=
_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte=
_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[2].iserdes_dq_.idelay_dq.i=
delaye2
> has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
> REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
>

It looks like a precision issue in Vivado.  You can safely ignore this
warning.

Brian

--0000000000000622cf0611fe0b79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Feb 22, 2024 at 3:02=E2=80=AFPM &lt;<=
a href=3D"mailto:yguruprasad@umass.edu">yguruprasad@umass.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>CRITICAL WA=
RNING: [Route 35-39] The design did not meet timing requirements. Please ru=
n report_timing_summary for detailed reports.</p><p>[01:09:55] Current task=
: Routing +++ Current Phase: 22 Post Router Timing</p><p>[01:09:55] Current=
 task: Routing +++ Current Phase: Finished</p><p>[01:09:55] Executing Tcl: =
phys_opt_design -directive Explore</p><p>[01:09:55] Starting Physical Synth=
esis Command</p><p>[01:10:32] Current task: Physical Synthesis +++ Current =
Phase: Starting</p><p>[01:10:32] Starting Physical Synthesis Task</p><p>[01=
:10:32] Current task: Physical Synthesis +++ Current Phase: Starting</p><p>=
[01:12:11] Current task: Physical Synthesis +++ Current Phase: 1 Physical S=
ynthesis Initialization</p><p>CRITICAL WARNING: [Timing 38-469] The REFCLK =
pin of IDELAYCTRL u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl=
_200 has a clock period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2 u_=
ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr=
_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lan=
e_C.ddr_byte_lane_C/ddr_byte_group_io/input_[2].iserdes_dq_.idelay_dq.idela=
ye2 has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL R=
EFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.</p><=
/blockquote><div><br></div><div>It looks like a precision issue in Vivado.=
=C2=A0 You can safely ignore this warning.</div><div><br>Brian</div></div><=
/div>

--0000000000000622cf0611fe0b79--

--===============7835888860308840974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7835888860308840974==--
