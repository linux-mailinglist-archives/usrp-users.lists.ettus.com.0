Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4037274EA
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 04:20:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B58173849E7
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 22:20:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686190813; bh=g1HoO2m0st2MjUN347pHxvYdkux/EpOssdxGoDDIjg0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Gi+6Ynh104tG8vvAre/iv0izdon/RMi+T2dROLfODZsUmXOOPGLRvBilhMMAPG5u1
	 UytY7flo/ATAgAv8xWSImokDyzVxAyZ7mq4UyHFieEwttFCFMwax+sg0YtV0pdkMiz
	 3BZFiQXEU6JvjuTcmvY5DBiURXIVK/0E7kujWUAsiea3JMbM/catE8X7GyVXS3xKhJ
	 uKNvi3hTkJpRtNOPGq1zIgufeAfzaFQbuDvg3NPNwR5LORLalKY1mLUs/l3QvOmM4V
	 InAm3trVPLzjCP2IsjWeRJIn9YfBokIsQ+T8RB6q7QWcy1JgQg5YmMmLuZ5Rt0pG8E
	 AsDBOuGWJNKUA==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 21B173849C2
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 22:19:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="aImvWboO";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-516af4a6d65so156172a12.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 19:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1686190758; x=1688782758;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8zaH7Du1Na0go5wyuRWk18KtSoLGMjE7UAic5g2M5ms=;
        b=aImvWboOKTaWcFSwU7m/1LoHEL+y6o6YrZC+zhTkuIIZ8dICXmJQzykvirj4kZoYOT
         GYZi0FIvawZXSMDmjeknWA+60FfbwsQtiX85NcInpfmILTE6G7DSB+WeL591kznZiVvW
         0lXG7aJRm1EeoyzkAW8Jv/DdiyH+4YBRxfYqG8AsPu6nwO2l/Vpn91F0chPbcIGL4B6v
         +/BQcHEsV81rkvNzR+J8X3tI/OtYUHApYflsnMvu3x2TUyFLGQMyb11XS//HjJW4aK1T
         amgnoTimIbJ/ZMlF6CMj7AbFAc015UzdclLDtgO5OMFE2bFvnUV9tfSSJSMBzxmQxYg5
         7wfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686190758; x=1688782758;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8zaH7Du1Na0go5wyuRWk18KtSoLGMjE7UAic5g2M5ms=;
        b=YYnYGnGzPvKA6xehl5H9Lx1BbnwNvDG/R5oEkOD2H1GkePB/FugUpZGBmqhj8UxJ7o
         6GJMyO/PM0LxuuA5fsy2YN/qAUILUopjYm/gTMG1FPTynqdNrrqB7xpYDstsYlZelc4K
         59+zlGUjyVrRYiA2EF1YGI9QzMhJBfD7xfY1z40JpcUgt/YVn5ZSRL4miNhdHnCtfhOW
         ZrU/kq67PatskyaGFUbwOI4swpBi32dRtSeWAwOW/gNfR7GFI5xqWlzof/GlMu1ksogH
         WC60fdcVJRhpzSnjtLLLhUE/Qesp14VRcIHHtHQQUmezxaGBCZL/J4+7HbZH1aqk5Wgi
         KJpA==
X-Gm-Message-State: AC+VfDyeyqJoa2LvpFIlGE8AinmSXDJrWUPeC8aObn7/pyQUdNX8OQVH
	poYZS8kdcFTE2E6d4gU08Nfjahpgbd9ktZx+CoC9/7l9hXgG5IKREMk=
X-Google-Smtp-Source: ACHHUZ7TGuil7nHKaRQRiJqhlUvPLDmvcdckQLXk/buXyda6+dFaJXajDMONdV5qsEP9dL66zrY/w5S8pe9BPlVXpLo=
X-Received: by 2002:a17:907:86a9:b0:978:8a30:a8b with SMTP id
 qa41-20020a17090786a900b009788a300a8bmr823709ejc.27.1686190758009; Wed, 07
 Jun 2023 19:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6db=5EY9e6GTgm6VB-omxn1GTD=iFF3QYasa7S=ekjNuA@mail.gmail.com>
In-Reply-To: <CAJhOL6db=5EY9e6GTgm6VB-omxn1GTD=iFF3QYasa7S=ekjNuA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 7 Jun 2023 21:19:02 -0500
Message-ID: <CAFche=j4ujg+fksakEfsmY+5fL_=+qGRrq4vTH8UgkDmTybCHQ@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: XQV5KNMDQSZZZTQUSMPL3VJQV3QR5J7O
X-Message-ID-Hash: XQV5KNMDQSZZZTQUSMPL3VJQV3QR5J7O
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: vivado 2021.2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQV5KNMDQSZZZTQUSMPL3VJQV3QR5J7O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5198407352030575731=="

--===============5198407352030575731==
Content-Type: multipart/alternative; boundary="00000000000027af2105fd94e136"

--00000000000027af2105fd94e136
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kevin,

You could upgrade Vivado. It would take some work to update all the IP, and
there's a chance that something might break. That error is pretty random,
so even the slightest change can make it go away. If you're using UHD-4.4
then you can change the build seed. For example:

make <target> BUILD_SEED=3D1

Each seed value will give unique build results. The default seed is 0.

Wade

On Wed, Jun 7, 2023 at 3:03=E2=80=AFAM Kevin Williams <zs1kwa@gmail.com> wr=
ote:

> Hi,
>
> Is it at all possible to use Vivado 2021.2 to compile the USRP projects?
>
> I am getting an error "[Route 35-9] Router encountered a fatal exception
> of type iN2rt13HDRTExceptionE" - apparently an internal Vivado error fixe=
d
> in 2021.2.
>
> I've changed the initial version checks to 2021.2, but there is some IP
> that needs to be regenerated.
>
> Perhaps if I could just get the project file created I could do this
> regeneration manually?
>
> Thanks
>
> --
> Kevin Williams, Ph.D.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000027af2105fd94e136
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kevin,</div><div><br></div><div>You could upgrade =
Vivado. It would take some work to update all the IP, and there&#39;s a cha=
nce that something might break. That error is pretty random, so even the sl=
ightest change can make it go away. If you&#39;re using UHD-4.4 then you ca=
n change the build seed. For example:</div><div><br></div><div>make &lt;tar=
get&gt; BUILD_SEED=3D1</div><div><br></div><div>Each seed value will give u=
nique build results. The default seed is 0.</div><div><br></div><div>Wade<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Jun 7, 2023 at 3:03=E2=80=AFAM Kevin Williams &lt;<a href=
=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"l=
tr">Hi,<div><br></div><div>Is it at all possible to use Vivado 2021.2 to co=
mpile the USRP projects?</div><div><br></div><div>I am getting an error &qu=
ot;[Route 35-9] Router encountered a fatal exception of type iN2rt13HDRTExc=
eptionE&quot; - apparently an internal Vivado error fixed in 2021.2.</div><=
div><br></div><div>I&#39;ve changed the initial version checks to 2021.2, b=
ut there is some IP that needs to be regenerated.</div><div><br></div><div>=
Perhaps if I could just get the project file created I could do this regene=
ration manually?</div><div><br></div><div>Thanks<br clear=3D"all"><div><br>=
</div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr"=
 class=3D"gmail_signature">Kevin Williams, Ph.D.</div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000027af2105fd94e136--

--===============5198407352030575731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5198407352030575731==--
