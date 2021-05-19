Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DA83897B2
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 22:16:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F46D386B3C
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 16:16:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="wAe4S7B8";
	dkim-atps=neutral
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B8191386633
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 16:15:34 -0400 (EDT)
Received: by mail-vk1-f176.google.com with SMTP id 15so2810508vkn.11
        for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 13:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lWBAWXlKPWvYIZV3LA5h6mULixe6w6wsq4WupL9K2ow=;
        b=wAe4S7B87SpZWA9jxea8kp4mjEzZhTijE3t0eh/G4of84Ww1zGj+O7ZWi2zDjEqrT9
         3H+HfisREkK8IEBPcoSaBI7VUqAKBc+feJ2XK9vDE5yZOZtZfqrw3vAvJnR+hXH1d/8/
         /kGhpsi9loBCD+kwzGfqY2h6pXHayjwCwP+ugmJgIWoOhXpo6et22+xaypNMQXfyxqaI
         CHMtlqZN1G4JyJ8j+a/Y5c+pSwmgOxdB0cHVAUINQetYAzBnwcSivQx2/IXEVYMK+Ygk
         6fzVYF4SW47s89wpL1s/YHlHIQCiN/88X6uXA/C3RrnP9NazqGk519fY1QaI4pziksnn
         IX2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lWBAWXlKPWvYIZV3LA5h6mULixe6w6wsq4WupL9K2ow=;
        b=N+dMnEY2uIhSVdtBaa40JGT8BU31H204rDqVI0/uBlfZ+wDTEGqzVCl8zwWhP4CQGP
         UY5UX9SHBxOFBSCHDAidK/RESVeFsX/MKAaiT4UXa0Q1CCKbCAM+IoIf438WSMXLibm3
         5RS77eLEgYKhfJxcy7J6j0lxvKymDXGNDIW0enFoEcSqsV4/JaQIEAdcVFUdyqPI1RaE
         RpFkTuzYpts2bnHqqjh5KFa5z980/Q9SeiQXGn0bPMs7aNMDmfDgx6iE1o9yAV3P37Fg
         Dd9uZS7zbqetgZYSwkfmOsMCGuu70xtCUB+sJcrGFrbVnxZa3J0TnSlaRO8lhioLAvPH
         60Jw==
X-Gm-Message-State: AOAM532wML59ppNoOvXJcjjd71/ywdwLEgEJAt7eO/tqtSCkgzXaxf1h
	CnU4PkA89sOdUmUYoc9nId1XrVhntI/2uqQEMyJkE8sP
X-Google-Smtp-Source: ABdhPJxvqqL6OjrayhdD29CGCJiTKsHJ1N/W72uA1lr5gp8FyKHa5K1foKcN6TDC60wWu2ol/0lR2iuHPSA3taLz8i4=
X-Received: by 2002:a1f:1f81:: with SMTP id f123mr1515144vkf.6.1621455334103;
 Wed, 19 May 2021 13:15:34 -0700 (PDT)
MIME-Version: 1.0
References: <mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA@lists.ettus.com>
In-Reply-To: <mD9dgYeu5Fq8eYmqKpRsiCcw3lYPJI5Cibpzm8HdoA@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 19 May 2021 16:14:58 -0400
Message-ID: <CAL7q81vnp4zTY9+TooSiJNDyDtipWaCtuvVA_xfF6HO2qbQ0Xg@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: ZQ4CHL5N3FT24CM5LGDK4YO6S2YHLTGU
X-Message-ID-Hash: ZQ4CHL5N3FT24CM5LGDK4YO6S2YHLTGU
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting network configuration (MTU) on the N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZQ4CHL5N3FT24CM5LGDK4YO6S2YHLTGU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0921982813080730147=="

--===============0921982813080730147==
Content-Type: multipart/alternative; boundary="0000000000003574f405c2b47dca"

--0000000000003574f405c2b47dca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The configuration files for the network interfaces are on the data
partition in the network directory.

Jonathon

On Wed, May 19, 2021 at 4:02 PM <thebouleoffools@gmail.com> wrote:

> Did you ever get a solution to this? I ran into this issue today, and the
> solutions I found after a search were somewhat convoluted. As a quick
> workaround, I connected to the radio over a serial connection, brought do=
wn
> the network iface, then brought it back up with my desired MTU. This isn=
=E2=80=99t
> ideal in any way, but I can=E2=80=99t get the MTU settings to stick eithe=
r in the
> systemd config.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003574f405c2b47dca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The configuration files for the network interfaces are on =
the data partition in the network directory.<div><br></div><div>Jonathon</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, May 19, 2021 at 4:02 PM &lt;<a href=3D"mailto:thebouleoffools@gm=
ail.com">thebouleoffools@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><p>Did you ever get a solution to this? I=
 ran into this issue today, and the solutions I found after a search were s=
omewhat convoluted. As a quick workaround, I connected to the radio over a =
serial connection, brought down the network iface, then brought it back up =
with my desired MTU. This isn=E2=80=99t ideal in any way, but I can=E2=80=
=99t get the MTU settings to stick either in the systemd config.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003574f405c2b47dca--

--===============0921982813080730147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0921982813080730147==--
