Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C43653AA79
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 17:49:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10B7D384740
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 11:49:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654098584; bh=D+/xe/QNe7orOQRem7YqGwCD7+ZKN0+rU1ojRmrfDP0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HWYWH1eKOVz+oykSUn0bkdMs7XDpOwYCMOiszodwMnzBBJ90beCuxnJxFgbHytQUy
	 fBXlbeXddnuMnivxFy+l2kBzXNdjzvJelcxukFy2mVRPAt78BSRa36th4HSiM2sQbA
	 bd06hCVCPc5nM4KXYYwCw0PgO+lPTFUH1uoq8HhscMi7vCnWGeLeOW2++i3fb2vE0h
	 0cSi7AZeCGnzDlxOrbdwRNmyf/fQT5Wedp/NRWUeRaOtC98fenvCDH6wAiid8fcBHP
	 R3GylcyAzUfIPThIV32bBClVATw+SXJ1GtLNzaoeNyBVWtCS/+fcvYBqHBHZT/vxaI
	 c6rDPlOh7tUQg==
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 083433846F4
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 11:48:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NbHKcbJW";
	dkim-atps=neutral
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-30c2f288f13so23171187b3.7
        for <usrp-users@lists.ettus.com>; Wed, 01 Jun 2022 08:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OMW9eipwiJd0irDejHUbG6WbT5WAMszBGK1XzMD3WbE=;
        b=NbHKcbJWhSqgU+d1c3iauKI0IUQs5dHYztMZmm2ZhTTZO5fv/4/MoY/kNO/FclaJZA
         VVgfn2cvks8zNStB1pHz6htZq2MaOftb1bwIJu7oMQpTvHLOupmFXLDeML6KoVFAgcPJ
         he5htJQfcrv4tG3i7pButN/e3/Z93NvDxFt5NG4CX3tg2iUeYXpqXUo74Qy+TV+DjDzf
         Ij6JK4EACNPDYPMh/tYFddFLJogrqyGVZlVzqx1/tKdOc39AQhu8trQlI70bhliNMK33
         x29PL6W08fgmQ07Y0D2maye5yflNeJFyLHeTQ8YQ022VTtZ6TCVviLdaBbwBrP3h0iGO
         PQPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OMW9eipwiJd0irDejHUbG6WbT5WAMszBGK1XzMD3WbE=;
        b=0hH/i/NAtg+uJewAvtJgRLbNbXssFUadlY7NUu0HdCL4BA879K+inymO8Ly9VKB2Jq
         wD1J7iRwRbIO4UuSnFrvOR2p073yRpmxfI9XyqzEfVetYRnWHOPTtCnqn0XU/LngZbjq
         oxduSy8UDSlb2dKqV6QhI3FGEpxQDk+WBFhLckSyCsxJgc9/XQ9GgjQ1uJGkt55Ka8qK
         nbyVo11miDA/3pt/u++JIw5JUhDgV8ewQAUPtIyWzjBMBL3nu8m5DxiVv7cIaGkhbtVK
         HCEz+hoyTst6TfFSmA0PQ81s/G/eI3NORlSz9ZXiiy8gs8z43gk+iUxTVJnLPkI2IhO3
         QHWw==
X-Gm-Message-State: AOAM531/ExrXMo1B+cy7WZGVhLK3I3uWGYzxqjyyiJ9zX4sFHWzIQfZL
	KDJNpmeNCa6+6fqVlDItoDVVEDSaX2iSBTLuLv7gCmEmM44=
X-Google-Smtp-Source: ABdhPJzUPkYVjrBZoNw4aRVOLA7mbrjrKYvAKGM6jlPWvMp0+fLeUKuEonlBASyIkHRo5cV/wGR2Vk65Xq+kat0KxZE=
X-Received: by 2002:a81:5d03:0:b0:300:9004:6098 with SMTP id
 r3-20020a815d03000000b0030090046098mr114183ywb.82.1654098521214; Wed, 01 Jun
 2022 08:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
In-Reply-To: <CAG16vQXYKCytT_8vzQwrJw=mRpNOfEyP93iHBVMfU59VtHEUZQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 1 Jun 2022 11:48:30 -0400
Message-ID: <CAB__hTSXdzfq2CDVJQOeEFoej_oPr6L=2H7Qr8n6PYX4f6fnTw@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: KVUXHQFGYNER4YQI2OKG3JZHS2A7MU73
X-Message-ID-Hash: KVUXHQFGYNER4YQI2OKG3JZHS2A7MU73
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to add an ip core to rfnoc OOT block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KVUXHQFGYNER4YQI2OKG3JZHS2A7MU73/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3965450273117405525=="

--===============3965450273117405525==
Content-Type: multipart/alternative; boundary="000000000000c8063005e064d218"

--000000000000c8063005e064d218
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,
The rfnoc-example folder within the UHD tree shows an example of how to add
an out-of-tree IP block. Did you look at this yet?
Rob

On Wed, Jun 1, 2022 at 5:12 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote:

> Hi all,
>
> I'm trying to synthesize a design that includes a vivado ip core inside.
> Normally, I add my .vhd/.v source files to the Makefile.srcs inside my
> block like this:
>
> RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspath $(lastword
> $(MAKEFILE_LIST)))), \
> source1.vhd \
> source2.v \
> source3.v \
> )
>
> But adding the .xci file of my IP core does not work.
>
> What is the process to include this file in the makefile chain to compile
> it?
>
> Kind Regards,
>
> Maria.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c8063005e064d218
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Maria,</div><div>The rfnoc-example folder within t=
he UHD tree shows an example of how to add an out-of-tree IP block. Did you=
 look at this yet?</div><div>Rob<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 1, 2022 at 5:12 AM Ma=
ria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m trying to synthesiz=
e a design that includes a vivado ip core inside.=C2=A0</div><div>Normally,=
 I add my .vhd/.v source files to the Makefile.srcs inside my block like th=
is:</div><div><br></div><div>RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspat=
h $(lastword $(MAKEFILE_LIST)))), \<br>source1.vhd \<br></div><div>source2.=
v \<br>source3.v \<br>)<br></div><div><br></div><div>But adding the .xci fi=
le of my IP core does not work.</div><div><br></div><div>What is the proces=
s to include this file in the makefile chain to compile it?</div><div><br><=
/div><div>Kind Regards,</div><div><br></div><div>Maria.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c8063005e064d218--

--===============3965450273117405525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3965450273117405525==--
