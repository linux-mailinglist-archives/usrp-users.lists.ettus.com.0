Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6911039496C
	for <lists+usrp-users@lfdr.de>; Sat, 29 May 2021 02:06:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28EE1383F76
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 20:06:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="GwK2BUOH";
	dkim-atps=neutral
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by mm2.emwd.com (Postfix) with ESMTPS id EDFDB383DD8
	for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 20:05:28 -0400 (EDT)
Received: by mail-il1-f176.google.com with SMTP id f16so2891609ilj.10
        for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 17:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JKpasy2QpI7rpslviV4Tt9ebvthZFkP95v5ky/8C0Ng=;
        b=GwK2BUOHinrTlw254H7D0n/+LM2ZU3C71ukssku+lFOatPxH8UR8d4QawSQ0xtKy7M
         DVPO14EAmoZMRHDzaCuzlnjPebT2EJMYLJLUeeik5IG1qcWZchUVGO+KjL+ptVxcyTru
         cRIhvahcNzbSZ+vMIU0+xW2HzweVn1KOiul+EuEqk8b94S7VWqBsTidnbNW/OPTxl2yU
         7avmhRbRMx0hsB+O4bWVpZvASY5kRd8gZwMgshumeuhKBybGFx3oqiH0w0MEh6O+zTcA
         +IU4L7uJT7JjPSdbYNdP7OVd91Oni5gGe4lYQ6TuqvsunmNIHCfJLL0da9GOZV2jaVz+
         4haQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JKpasy2QpI7rpslviV4Tt9ebvthZFkP95v5ky/8C0Ng=;
        b=HsyQsYpWPsNIGphh2/qK4MPn8Z8rax1BlTidm+0Qos6oIXz7tplpw9Bzo4asbNW4Jx
         tC5hEG9GPzG2bMttfhdk/qM1bZPYoHZ442/51HRldIOb3asmT46NeM4Yx4E3jAER/hUV
         HGcRq+GVBN+a1HbLdwHMY42YOav7b2SuNXWCAjxKb4CdI31x1ba0gmWC0IzmZ88H5f3Q
         ki3P0LyV2zuPyN1zbTVWeRQKh3kJzwbFeaVy7TqqFKS7rx7qhrC4yrb7Zp/L0W+HHpDV
         R84D7bRlnhJkIWSchJL6mMw3IipPm8a+1PnQFMcZkktQ6AeBvtMVAHw0fO4F7GYTCeO7
         e3Tw==
X-Gm-Message-State: AOAM530kUVTBIJj4/Rjmw7CUZRxeELuv3ZvUEPPYOKjfjK6wQpJT0Aa4
	0VkdXguD/YJgRYIpJq4+lg8E8YKCFQcU7quH6z58yA==
X-Google-Smtp-Source: ABdhPJygrC0Qf01zmM4+yn36JP/DRgByj4KmI3mzc07rp9DEvu7CLwb47TwU0bKSPOICCgwSKl4EJCrbjtOgbusT2Ps=
X-Received: by 2002:a92:c04b:: with SMTP id o11mr3478027ilf.147.1622246728421;
 Fri, 28 May 2021 17:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <DZ837mjLHyTLgau1Sg53TVSzGLDa5QddIlAl3ouY@lists.ettus.com>
In-Reply-To: <DZ837mjLHyTLgau1Sg53TVSzGLDa5QddIlAl3ouY@lists.ettus.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Date: Fri, 28 May 2021 20:05:17 -0400
Message-ID: <CAAv0A=NsDZj+g+cvivwemRF-i1t_vGJ3+u8SZ86uMqavhTo0Jg@mail.gmail.com>
To: andrew4010@rambler.ru
Message-ID-Hash: M7YW6SSH4PFGVEDJL7HONEO6BVKXREHA
X-Message-ID-Hash: M7YW6SSH4PFGVEDJL7HONEO6BVKXREHA
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M7YW6SSH4PFGVEDJL7HONEO6BVKXREHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8729858771585245710=="

--===============8729858771585245710==
Content-Type: multipart/alternative; boundary="000000000000fc69ab05c36cbfc1"

--000000000000fc69ab05c36cbfc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

If tuning speed is critical, then you could sleep for a fixed amount of
time instead. How long is up to you and your applications needs.

Dustin

On Fri, May 28, 2021, 1:22 PM andrew4010 via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
>
>
> =E2=80=9Cyou cannot use this approach=E2=80=9D.
>
> OK.
>
> What approach is suitable if tuning speed is critical?
>
>
> Thank you
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fc69ab05c36cbfc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hello,=C2=A0</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">If tuning speed is critical, then you could sleep for a fixed a=
mount of time instead. How long is up to you and your applications needs.=
=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Dustin<br><br><di=
v class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, May 28, 2021, 1:22 PM andrew4010 via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><p>Hello</p><p><br></p><p>=E2=80=9Cyo=
u cannot use this approach=E2=80=9D. </p><p>OK.</p><p>What approach is suit=
able if tuning speed is critical?</p><p><br></p><p>Thank you</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000fc69ab05c36cbfc1--

--===============8729858771585245710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8729858771585245710==--
