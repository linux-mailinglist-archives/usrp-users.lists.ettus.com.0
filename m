Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB3640591F
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 16:35:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B3CE384839
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 10:35:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="yE5Zf/2B";
	dkim-atps=neutral
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id B8C6138424F
	for <usrp-users@lists.ettus.com>; Thu,  9 Sep 2021 10:34:51 -0400 (EDT)
Received: by mail-ej1-f48.google.com with SMTP id h9so4047698ejs.4
        for <usrp-users@lists.ettus.com>; Thu, 09 Sep 2021 07:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hps8wVBnYDaud+rZxnNAE5BF3xqb0K0Xa6hmXKy9N78=;
        b=yE5Zf/2BxrRZv2UQsLvQ4t8KhxgE6BNB/jSBoQ3gK9DqxdtBMKAC8CajbkZ5Yz0xfv
         OujtQWzV1nmr2/Hqb6JZ4ATPXVfmQsHbnOjEwdspjbCSkwY+7ZigZRvLshHDp+Vj2sb5
         KgMjmsAB673aLOmqEgc5PK2csnricwrfHdPyOFopqQeZGLKaSMlshgcgepGhk2FLBqPk
         vbBIAJwxwx+oPIXqLyA7voZSg9io/6ttjFqtTOjUWeiPbzBTF1LYO+PKbrnEDzbj7yzR
         wdC3CToGpDgBs8X3vyK7RH7Q2OF0noa0lvk3Xho+ReiedyKxBYi3CTg1Ois8o0xf3Ugw
         OO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hps8wVBnYDaud+rZxnNAE5BF3xqb0K0Xa6hmXKy9N78=;
        b=xvFB2BjIW+/cwZF3Lo3dMIJGpcNjtVxoha5JSq/6rl42UKr732tVTUn6gcL6b43fQC
         fygA4qMTDGkvZ+OEH73nFKcCszVo5j2qA7Cg3XpAq+od032qizeO5h+FunL7POP9/8BB
         2Bej+NTCythNG3qCRXrTAyfN4s0/Bz1+RRpgnMke8smh7zAjUbSundQ0FUspaj8Vlm1P
         yBxDAt2pwjWvyiLM8n8JoqwY/gdXbVo4dhM4WHUTCZm0FqzsnYM/fpvIDg729FUr02Xg
         /dbvpouKezXmx7/r2LFVTOclaCnVoS4+6r+MxJMApkEw8ZIsMEgFlXOMg02N3LfgYkr9
         u8jQ==
X-Gm-Message-State: AOAM5332xbZu35IN5d7TLHsHOu6tJpKON/Q1QGQp+KWCzRoHqvP+bq2o
	58vlReZX8juhmidlzosthusmpu8Pv2F86gXIDwJGvpSsAU411A==
X-Google-Smtp-Source: ABdhPJyuxx+uLP+QNWo+0+OepzoIEz48ZWmobwMItQgmdDEH9cf9tG7awj5GzlHdCSQzUwnQw/9+a76X++9U6DNO3io=
X-Received: by 2002:a17:906:2dcf:: with SMTP id h15mr3767729eji.320.1631198090717;
 Thu, 09 Sep 2021 07:34:50 -0700 (PDT)
MIME-Version: 1.0
References: <NIVukW9BNAShpy3QzWzdY19rGujDeEdWf1WWgrJS9Y@lists.ettus.com>
In-Reply-To: <NIVukW9BNAShpy3QzWzdY19rGujDeEdWf1WWgrJS9Y@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 9 Sep 2021 16:34:39 +0200
Message-ID: <CAFOi1A5UyuKzLKfedzuUnfSHcm=Bm_+7YpZmRK3j2ovBhaoxPg@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: U6XNFF7WKS2V3MDFLCCWJ7AFX35A7VCV
X-Message-ID-Hash: U6XNFF7WKS2V3MDFLCCWJ7AFX35A7VCV
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building custom OE sdimg for E310 / can't find radio module
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U6XNFF7WKS2V3MDFLCCWJ7AFX35A7VCV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7576495616618934570=="

--===============7576495616618934570==
Content-Type: multipart/alternative; boundary="000000000000c185d305cb90e60b"

--000000000000c185d305cb90e60b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe incorrect CMake flags? You need to build MPM with -DMPM_DEVICE=3De31x
and UHD needs to -DENABLE_E300=3DOn (although that's the default).

On Fri, Sep 3, 2021 at 1:06 AM <thebouleoffools@gmail.com> wrote:

> I decided to tackle building an image from scratch, so I could pull in
> software packages with complicated dependencies a little easier. Everythi=
ng
> basically worked, except the radio daughterboard. I did use the meta-ettu=
s
> layer and correct machine, following the instructions at
> https://github.com/EttusResearch/ettus-docker/tree/master/oe-build . If I
> load the official sdimg from ettus the radio is detected and works fine.
>
> Looking through lsmod and dmesg on the working image, I don=E2=80=99t see=
 anything
> obviously related to a radio or daughterboard. Does anyone know what kern=
el
> config or software package might be missing from my yocto build?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c185d305cb90e60b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Maybe incorrect CMake flags? You need to build MPM with -D=
MPM_DEVICE=3De31x and UHD needs to -DENABLE_E300=3DOn (although that&#39;s =
the default).<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, Sep 3, 2021 at 1:06 AM &lt;<a href=3D"mailto:thebo=
uleoffools@gmail.com">thebouleoffools@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><p>I decided to tackle build=
ing an image from scratch, so I could pull in software packages with compli=
cated dependencies a little easier. Everything basically worked, except the=
 radio daughterboard. I did use the meta-ettus layer and correct machine, f=
ollowing the instructions at <a href=3D"https://github.com/EttusResearch/et=
tus-docker/tree/master/oe-build" target=3D"_blank">https://github.com/Ettus=
Research/ettus-docker/tree/master/oe-build</a> .  If I load the official sd=
img from ettus the radio is detected and works fine.</p><p>Looking through =
lsmod and dmesg on the working image, I don=E2=80=99t see anything obviousl=
y related to a radio or daughterboard. Does anyone know what kernel config =
or software package might be missing from my yocto build?</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c185d305cb90e60b--

--===============7576495616618934570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7576495616618934570==--
