Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C841B52C455
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 22:29:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13997384A58
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 16:29:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652905776; bh=GGora5XBz5wcDP0JwDKOGEYWx3uv2J9XbQm5Q0lEwdQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LVQ7H8DHm1+/GQfrnMybY/MWTh/BHe7XZvBQs3rPLjSpmGzWVrZ4A6ZQbMLpu8sOe
	 SrUtXqUNuQQYy6dhk8CM/o0RK49Qe1sFHMeQQoYcDHYEcfampx5Hz2DmJiXCRR5Ds2
	 owmSFxs4darHc0tqTGxR+iyxguewCE+u5AiqvMUuFpSdrls/lDuPNPo0TGV+eB27di
	 LE3iHcLwhyJifr33OOf6ao8nFY7YfkiFW1Pt2sc1mMkVW3tPa55zOByqO6o67H3o4N
	 wA2raXXWbQjuLt5LJHyNgxbfOOjOfgqD+tJMmPARl77p15Gkc8awOIVSuAxIOxdKy0
	 CSzfPBxWwXfCA==
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A4FF3847E2
	for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 16:28:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZHXlzOGM";
	dkim-atps=neutral
Received: by mail-pl1-f177.google.com with SMTP id m12so2854223plb.4
        for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 13:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LlQ5faVr7FqxzFwbSKEaBl2lSjphlGx65CpFJVCRpks=;
        b=ZHXlzOGMP3HWZEQmpvmGQ0TnEZ2/Jgs8UxC+/dvLwmHDSi2nSTkhqsonzoBcQZ1wKW
         Rhus/2xRqmO6X/69MX6Ub5xHhKvgTbM6K6VAvf/2cXGtwhXVpF60VBy14gIIXy2veUNU
         Z4OEasLtGAz0iTlmoT77CQQmN8bzYitK9iKndSbjZ/E9Kdl1PHLjXPEU9v8xmNYwPkFl
         yzfpuSZ8fWC9vbSSfk5xqTCDh83K0jHB0XOm+ye4DaZ5FfgcDx4OE9BH5hTmSVZQhXsD
         3MSvns+z17ylAaP4ina0DQUdGGXy4tmX2oYThLs6oSMqIJfLWzkSVdfd5RorTYjttwqC
         e+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LlQ5faVr7FqxzFwbSKEaBl2lSjphlGx65CpFJVCRpks=;
        b=mkRpjEZ8ArCu6Y7ZVPwDNlBTqyiyUmFBd0R+uK420BrlfuumahYXi9/Vt3BRrrAhiM
         HeID5VkOipfZofFDtn9CnDxRjCbMSh8Cyw5WnmZg69MWPxbiVCxcvK9gaK1Eq+O5cpSa
         SozNFywGeserPmHGZ7KJ7GJxUxTrl8rBIYvC4nDWrX2v07DwhPsqeqbwfpiBZc3jEftp
         gqgjXef0Q2D6Vz+1mrct1Rt7tYM+Oq/363ImYS8Es34Ea6paH5FXxstD9MapgxYoFvOw
         /8P6P4EHgD+TEnK2yNF7L52CxcGCB7Lp+AML76nxVsrImokfUBMZnucx1PIwGFRFwG1+
         I6Lw==
X-Gm-Message-State: AOAM532B+W4mOnt7PjKuZiV/R+3i2i8ldBygU0OLHyPuhZQHu7IqBjMe
	fx6pNUe6NOKy275Qd6uTmbwr1G1xgzHg/qAA874=
X-Google-Smtp-Source: ABdhPJwe2oxm6gcncHw6aB5xjI6gyR8WnjvsLyITMHAF5rSO9tkIJjP963Ee15BMBtDaLRYx8WqnxLLufz1IPY5i7kk=
X-Received: by 2002:a17:90a:cc6:b0:1d2:9a04:d29e with SMTP id
 6-20020a17090a0cc600b001d29a04d29emr1244805pjt.136.1652905717401; Wed, 18 May
 2022 13:28:37 -0700 (PDT)
MIME-Version: 1.0
References: <5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo@lists.ettus.com> <19dbac4c-acc4-3827-83d2-982d0fa83ddf@gmail.com>
In-Reply-To: <19dbac4c-acc4-3827-83d2-982d0fa83ddf@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 18 May 2022 16:28:25 -0400
Message-ID: <CAEXYVK4e6vn5r73UTpfbrdU4A31pKkgM0AuU2y+cEyTyfxQ5bg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ZPCVL5IRBRONX2TVM2JPB4GAYZJNXOJ3
X-Message-ID-Hash: ZPCVL5IRBRONX2TVM2JPB4GAYZJNXOJ3
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: b200 mini LVDS Vs CMOS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZPCVL5IRBRONX2TVM2JPB4GAYZJNXOJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2081244684245655584=="

--===============2081244684245655584==
Content-Type: multipart/alternative; boundary="00000000000022158d05df4f1a70"

--00000000000022158d05df4f1a70
Content-Type: text/plain; charset="UTF-8"

On Wed, May 18, 2022 at 4:20 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-05-18 15:42, ahamza1982@gmail.com wrote:
> >
> > Hi,
> >
> >
> > I have b200 mini and by reading registers I figured out that it is
> > using CMOS for digital interface between ad9361 and BBP.
> >
> > Is there a way to make it use LVDS?
> >
> > For example, an FPGA image that could do this?
> >
> > I am using GNU radio and UHD to program the board, what other
> > modifications in the software I will need to support LVDS if possible?
> >
> >
> > Thanks,
> >
> > Ahmed
> >
> >
> A very similar question was asked on this list about one week ago. The
> basic answer is that this was tried, years ago, and the FPGA couldn't
> meet the S/H
>   timing for the faster LVDS interface. So,the CMOS interface is used.
>

I believe this is a slightly different issue.  The previous issue was the
LVDS interface is already used, but the faster 61.44 Msps was not supported
for dual channel operations.  The FPGA used is a Zynq device on the E320.

The interface here is CMOS and talking to a Spartan 6 device with a bank
voltage of 1.8v.  This inherently makes it impossible to program the FPGA
for those pins to utilize LVDS.

Brian

--00000000000022158d05df4f1a70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 18, 2022 at 4:20 PM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On 2022-05-18 15:42, <a href=3D"mailto:ahamza1=
982@gmail.com" target=3D"_blank">ahamza1982@gmail.com</a> wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; I have b200 mini and by reading registers I figured out that it is <br=
>
&gt; using CMOS for digital interface between ad9361 and BBP.<br>
&gt;<br>
&gt; Is there a way to make it use LVDS?<br>
&gt;<br>
&gt; For example, an FPGA image that could do this?<br>
&gt;<br>
&gt; I am using GNU radio and UHD to program the board, what other <br>
&gt; modifications in the software I will need to support LVDS if possible?=
<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Ahmed<br>
&gt;<br>
&gt;<br>
A very similar question was asked on this list about one week ago. The <br>
basic answer is that this was tried, years ago, and the FPGA couldn&#39;t <=
br>
meet the S/H<br>
=C2=A0=C2=A0timing for the faster LVDS interface. So,the CMOS interface is =
used.<br></blockquote><div><br></div><div>I believe this is a slightly diff=
erent issue.=C2=A0 The previous issue was the LVDS interface is already use=
d, but the faster 61.44 Msps was not supported for dual channel operations.=
=C2=A0 The FPGA used is a Zynq device on the E320.</div><div><br></div><div=
>The interface here is CMOS and talking to a Spartan 6 device with a bank v=
oltage of 1.8v.=C2=A0 This inherently makes it impossible to program the FP=
GA for those pins to utilize LVDS.</div><div><br></div><div>Brian</div></di=
v></div>

--00000000000022158d05df4f1a70--

--===============2081244684245655584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2081244684245655584==--
