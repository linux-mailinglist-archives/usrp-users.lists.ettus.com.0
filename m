Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F0278671E
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 07:25:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82D9A384829
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 01:25:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692854747; bh=KyIzULU8a3K+4sjz6Z1SHgHwleIp8hQWz0SnXspnLSI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=a5EWwyL3dJ/L0iVYJGfl55BN8E7MdxIoZ9CfOkvm0VWnaoCtBRQc4X9moZC8a3FUI
	 TYeuvYYDPKAav8qsf5lTCBQ54egQ8FFJtcnPjgDx2CMaE1HXW/57vOrUvNTVUk7AN0
	 Z+r8kcYY50A+/SgirZ9GscrY7gTG1hAfsxDCiW3L+WifdGAxBTtxVdrvLU/m497VlD
	 A8/PMkF3ky4zqJSkVvLcx16FYPSpxs6rNTwgeYED5osL7LUdZ56iuIQh1NSaT+MBu6
	 W96uClVBpjlr+fzFFfm+KQo9csAYPLHC+QNGMo7xM6GRKdueDzafhQ3R+pPvoI+xuv
	 yEcXcANEGucHw==
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 49C87380C11
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 01:25:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JqUo/eyd";
	dkim-atps=neutral
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-48faba23f51so705188e0c.1
        for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 22:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692854714; x=1693459514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=we3KWYceazD9AiKT0q1KIxg4B16blrn1+I87ir0AjEo=;
        b=JqUo/eyd3vnu6OAeZ33EOPPOEWCm2nAN1E4bnyojEQ8Q6KtyKPsO05jCdwupn3pJ0m
         49lop+BjC4AMSC38Pvj3jXct/tQ4nhN0B4NrjuQEhHKBejnzcsqFt1ysvpOjES6o+g29
         TufJveSLYDbZPcNV943TnnCY8b9BLr6S+Tbv+GqFfYNtXv93V4SOTWMUWoRtHnbT1xea
         BXAWhgjCCkmCGueyOFgf4dsv+p8Wpu+vLL/fbP0lG7XMAUNsHa0SF7fLloqvrkhF4XER
         9CtY2ul7h2vdLLkymNuyVo5x8/M4M55Hv+glLAajuW18RuOGm14KEr4AinWfT8KMkNDO
         i+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692854714; x=1693459514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=we3KWYceazD9AiKT0q1KIxg4B16blrn1+I87ir0AjEo=;
        b=I8O3CQhJgfZqF0r9r5rrfkHHo0imR/lHn3U45/9HCeq3uw84Euj14+gpohG6hu5xDw
         3hrDnCtKQyfvoXZaTuHefOrVzuLBamy/vkVfp7BWxisxlbJVSv3OhVSzyM9UUiBurqXe
         Xzrxc/CMED9fhAH+lJAW8/wiy8d41TTfwyedvsGeVeeV6y4JGq9CPHLu4S5G0F7UFBrd
         bOTWqRrAUyYnhKOxzcXMdgij72i21ZuwQfZGBTNvD7Dx/Hj8eGF6kkujEKDJbriZ+8/q
         PiJCe8qLwm5YTN+BskxkB4hPMpsTDeOPzS6fEZOPN5jKjD3VWU1rOpKYfLV1rd1vOQZB
         hFGg==
X-Gm-Message-State: AOJu0YwaXd+mjLcm8fWW8Fld1sIFnaHUKuQ2HPAhdvQNExvzIh6ENVF2
	BECqFLOA4THVvfBp2ejvMz/7qSLGf4QFZIYOHJmqbfKljvI=
X-Google-Smtp-Source: AGHT+IEUTUwcbMH79OZRGT8KE+6msA8Eou2jl/Y9qsrB/AUZAvcFlLbHzx6BN2m5UnB1ihXoYVvpfB/SNGxOAVvGQVs=
X-Received: by 2002:a1f:4f85:0:b0:48f:cb4a:baf0 with SMTP id
 d127-20020a1f4f85000000b0048fcb4abaf0mr2140854vkb.15.1692854714227; Wed, 23
 Aug 2023 22:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PsneXGUR8nuTNCc1-3UbuUBVzo33DQETBL_-JhSXFyMWQ@mail.gmail.com>
 <CAFche=hFoZGbufE37mr_EWq2XMT-ANeH9aJwCO7qs_Yyx+R3sA@mail.gmail.com>
In-Reply-To: <CAFche=hFoZGbufE37mr_EWq2XMT-ANeH9aJwCO7qs_Yyx+R3sA@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Thu, 24 Aug 2023 09:55:03 +0430
Message-ID: <CAA=S3Pujd62_dPk0FS6Z2Q8_+UpUceNhhfD+0wcRY62ZS9APiQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: UIJF3BHMNT5ZTQAPHR6MOAYMWOXE33E7
X-Message-ID-Hash: UIJF3BHMNT5ZTQAPHR6MOAYMWOXE33E7
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fatal: Timeout: Test "Test passing through samples" time limit exceeded
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UIJF3BHMNT5ZTQAPHR6MOAYMWOXE33E7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1368809758867703506=="

--===============1368809758867703506==
Content-Type: multipart/alternative; boundary="000000000000e5e01d0603a473ad"

--000000000000e5e01d0603a473ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback! =E2=80=8CBut to save time I need to launch a simul=
ation
for my custom block, building fpga takes long time, Can anyone guide me fix
my problem in custom rfnoc block?

On Wed, Aug 23, 2023 at 8:25=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> A testbench timeout is intended to prevent the test from waiting forever
> for something that's not working. So if it's timing out, it's either
> because the timeout is too short or because the thing it's waiting for is
> not happening. Try searching for the timeout message text to see where th=
e
> timeout is created and why. You can of course remove the timeout, but tha=
t
> won't necessarily fix the problem.
>
> Wade
>
> On Tue, Aug 22, 2023 at 12:55=E2=80=AFAM sp <stackprogramer@gmail.com> wr=
ote:
>
>> I write a custom block when i run test bench on it i faced with strange
>> error,How can solve it i shared the custom rfnoc blocks
>> Thanks in advance
>>
>> TESTBENCH STARTED: rfnoc_block_gain_tb
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>> [TEST CASE   1] (t =3D         0 ns) BEGIN: Flush block then reset it...
>> [TEST CASE   1] (t =3D      6400 ns) DONE... Passed
>> [TEST CASE   2] (t =3D      6400 ns) BEGIN: Verify Block Info...
>> [TEST CASE   2] (t =3D      6400 ns) DONE... Passed
>> [TEST CASE   3] (t =3D      6400 ns) BEGIN: Verify user register...
>> [TEST CASE   3] (t =3D      7725 ns) DONE... Passed
>> [TEST CASE   4] (t =3D      7725 ns) BEGIN: Test passing through samples=
...
>> Fatal: Timeout: Test "Test passing through samples" time limit exceeded
>> Time: 17725 ns  Iteration: 0  Process:
>> /PkgTestExec/TestExec::start_timeout/Block260_9/timeout  File:
>> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000e5e01d0603a473ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the feedback!=C2=A0=E2=80=8CBut to save time I =
need to launch a simulation for my custom block, building fpga takes long=
=C2=A0time, Can anyone=C2=A0guide me fix my problem in custom rfnoc block?<=
br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Aug 23, 2023 at 8:25=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:=
wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">A testbench timeou=
t is intended to prevent the test from waiting forever for something that&#=
39;s not working. So if it&#39;s timing out, it&#39;s either because=C2=A0t=
he timeout is too short or because the thing it&#39;s waiting for is not ha=
ppening. Try searching for the timeout message text to see where the timeou=
t is created and why. You can of course remove the timeout, but that won&#3=
9;t necessarily=C2=A0fix the problem.<div><br></div><div>Wade</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Aug 22, 2023 at 12:55=E2=80=AFAM sp &lt;<a href=3D"mailto:stackprogramer@gm=
ail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I write=
 a custom block when i run test bench on it i faced with strange error,How =
can solve it i shared the custom rfnoc blocks=C2=A0<div>Thanks in advance<b=
r><div><br></div><div>TESTBENCH STARTED: rfnoc_block_gain_tb<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 ns) =
BEGIN: Flush block then reset it...<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =
=C2=A0 =C2=A06400 ns) DONE... Passed<br>[TEST CASE =C2=A0 2] (t =3D =C2=A0 =
=C2=A0 =C2=A06400 ns) BEGIN: Verify Block Info...<br>[TEST CASE =C2=A0 2] (=
t =3D =C2=A0 =C2=A0 =C2=A06400 ns) DONE... Passed<br>[TEST CASE =C2=A0 3] (=
t =3D =C2=A0 =C2=A0 =C2=A06400 ns) BEGIN: Verify user register...<br>[TEST =
CASE =C2=A0 3] (t =3D =C2=A0 =C2=A0 =C2=A07725 ns) DONE... Passed<br>[TEST =
CASE =C2=A0 4] (t =3D =C2=A0 =C2=A0 =C2=A07725 ns) BEGIN: Test passing thro=
ugh samples...<br>Fatal: Timeout: Test &quot;Test passing through samples&q=
uot; time limit exceeded<br>Time: 17725 ns =C2=A0Iteration: 0 =C2=A0Process=
: /PkgTestExec/TestExec::start_timeout/Block260_9/timeout =C2=A0File: /home=
/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv<br></div></di=
v></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e5e01d0603a473ad--

--===============1368809758867703506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1368809758867703506==--
