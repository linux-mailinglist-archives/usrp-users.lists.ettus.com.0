Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A3F47C7C3
	for <lists+usrp-users@lfdr.de>; Tue, 21 Dec 2021 20:49:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E0793852A6
	for <lists+usrp-users@lfdr.de>; Tue, 21 Dec 2021 14:49:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="owq0JStk";
	dkim-atps=neutral
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id DF145384B2C
	for <usrp-users@lists.ettus.com>; Tue, 21 Dec 2021 14:48:11 -0500 (EST)
Received: by mail-io1-f42.google.com with SMTP id q72so19109061iod.12
        for <usrp-users@lists.ettus.com>; Tue, 21 Dec 2021 11:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dZj/MaYMjtyIUH6RCt9KewfkMDRoqzJu/1hUh5Lise8=;
        b=owq0JStk9G6lz6ZM+ZugUrCZ1pQeIqXl/C1UWmANsBfDs2bavBUQWhcNIa72J4noB6
         LBNJCPVX0VcsxUVzuU29C5wo8zZISBwMH37M2+Jk0Y9JPrXaQ6GinP9TyW/FhdGLWLgI
         hPNN+0/yg0Y3x7eqCITTcQe5PY6WiPEhWO6qtcq13sd6UYTUFFmUHbHuF4GRU4Kinjr5
         yE2NQ2HtNStXjEM4x0RPzNdMSIRqhyTgcBkdQeEFh4uFTDfva+2o8aj0L8H8CNw+Clya
         TjeMP3TSdCqnpz97uKXm8teO8M/I3HJtdJQEnjgexKNvGrphuHaSUhC2P1FIBsyXmznF
         qvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dZj/MaYMjtyIUH6RCt9KewfkMDRoqzJu/1hUh5Lise8=;
        b=AaEE5kUTKswkBXjYHdYUx7rqwu03fHALzcA2mjisuYiZX2seLjnkDoWUDyWG1+15Xd
         K7tLRqygRTOZPJAeSuSKGmaS9uAvPyNxhyAEfEB+9BKwCQ79Aag5YMqbbp58N4f2aukZ
         T3kH6kK7yOiqmPVUMdkvU3c02pTvzITXk/Tkqi3uk3X8J0O+S3azoOUBS0OHWW8ZRXhd
         r654//QxZf0y8EhqcxlDt1taY1rZ2HyGd0YufXpMI7tKVXsw7lTEFk9+wF0POuL/m6aS
         s8AycPnpr71ilJLPxbAlTEUBo5YsEMwGAX/E3ZvRORfyxYn/V+w966p88sfyIPGZdzGy
         YeWQ==
X-Gm-Message-State: AOAM530rJge8jkZECp2yLU9WuXzUyDVetiteZZ+Z9eAayDl4H5oglFXi
	gY9f+BaoBCrulHQOWwbsvr6crv/0cYdASv96vMb3LGJ9
X-Google-Smtp-Source: ABdhPJyoz5OTmra3aYFSNrtXw+0MJSzl5ZpR7QVDZXxRygeF+p/c+FfkqaLoqHAo4pTjWQ2CdEXlfUqZIOX4CzPYkWg=
X-Received: by 2002:a05:6602:26d0:: with SMTP id g16mr2494045ioo.70.1640116091216;
 Tue, 21 Dec 2021 11:48:11 -0800 (PST)
MIME-Version: 1.0
References: <15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134@lists.ettus.com>
In-Reply-To: <15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 21 Dec 2021 20:48:00 +0100
Message-ID: <CAFOi1A5313n6pUWCZYLFABvFg=anD+z8wkFiY33=xqP+4CFG-Q@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: 4Q5NTYNVFYUFGI2YBOBJKPW47Z5VA47D
X-Message-ID-Hash: 4Q5NTYNVFYUFGI2YBOBJKPW47Z5VA47D
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPIO on E320 not quite working as expected
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4Q5NTYNVFYUFGI2YBOBJKPW47Z5VA47D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8889922769968911535=="

--===============8889922769968911535==
Content-Type: multipart/alternative; boundary="00000000000001fbca05d3ad4946"

--00000000000001fbca05d3ad4946
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 20, 2021 at 8:29 PM <thebouleoffools@gmail.com> wrote:

> To caveat this, I am attempting to modify the gr-ettus library to expose
> the gpio commands from the UHD driver. I am recently aware that gr-ettus
> doesn=E2=80=99t appear to be updated anymore, and the updates are going i=
nto
> gr-uhd. However, all of my code is using gr-ettus at the moment, so I
> thought this might have been a quicker process. Maybe not.
>
> My question is just, are there any known issues with GPIO on E320s in UHD
> 4.0.0.0? I haven=E2=80=99t updated because the newer versions don=E2=80=
=99t appear to work
> on my radios.
>
> In any case, I=E2=80=99m following the information here to configure the =
GPIO:
> https://files.ettus.com/manual/page_gpio_api.html
>
> First thing I notice is that get_gpio_banks() returns only =E2=80=9CFP0=
=E2=80=9D for me.
> (Guide says E3x0 should return =E2=80=9CINT0=E2=80=9D)
>
Whoops, that's a typo. "INT0" is correct for E31x.

--00000000000001fbca05d3ad4946
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Dec 20, 2021 at 8:29 PM &lt;<a href=3D"mailto:thebouleoffool=
s@gmail.com">thebouleoffools@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><p>To caveat this, I am attempting to=
 modify the gr-ettus library to expose the gpio commands from the UHD drive=
r. I am recently aware that gr-ettus doesn=E2=80=99t appear to be updated a=
nymore, and the updates are going into gr-uhd. However, all of my code is u=
sing gr-ettus at the moment, so I thought this might have been a quicker pr=
ocess. Maybe not.</p><p>My question is just, are there any known issues wit=
h GPIO on E320s in UHD 4.0.0.0? I haven=E2=80=99t updated because the newer=
 versions don=E2=80=99t appear to work on my radios.</p><p>In any case, I=
=E2=80=99m following the information here to configure the GPIO: <a href=3D=
"https://files.ettus.com/manual/page_gpio_api.html" target=3D"_blank">https=
://files.ettus.com/manual/page_gpio_api.html</a></p><p>First thing I notice=
 is that get_gpio_banks() returns only =E2=80=9CFP0=E2=80=9D for me. (Guide=
 says E3x0 should return =E2=80=9CINT0=E2=80=9D)</p></blockquote><div>Whoop=
s, that&#39;s a typo. &quot;INT0&quot; is correct for E31x.</div><br></div>=
</div>

--00000000000001fbca05d3ad4946--

--===============8889922769968911535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8889922769968911535==--
