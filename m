Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53828ABEC9F
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 09:02:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32B11384BA6
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 03:02:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747810935; bh=bVzOcjKGO/KN+0YJ9qC7xulAv1j51gQm/lVp50LbuXQ=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yRlTuFTh9kYvm5kIrYXmVCQ1DS/aKJjBHZXu60g2pGqXfnBYeZymR2cKooobfNyII
	 DLTDwpjGGYD3DYkKdIvuEL9q5a/jq3A/AePF1cccboWv84ONnxHxl5cvE8Gq3tjkQL
	 9Hqf+AH77EbAdUZbhUmNaLZHskzL6Vg/Fr7VJ7cHz4eh8fjDpl16tkvOYc765Li6t+
	 UsNNU0i084xw2VLcAUlMNBNdXpst26YMvMedWUAs5lEsRBEBkMjwAUxZpDMBGfLFQd
	 fzWcv2H8Mvpifyevgs5u8zyjCIgnvASytSl/LtijEK0DCCY31ngdYaUe3cYAUiP1yA
	 FJqOJWo7VDTzA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 27E4C3818F4
	for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 03:01:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="g6zWzS4O";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-601f278369bso5638305a12.1
        for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 00:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747810900; x=1748415700; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OM73HheTFWfhNoDrfd7UaTLWyRqYzaB2I5VExbd0deg=;
        b=g6zWzS4OD8HxT9z4aL/MuFHM6eWhsN4JeatIIXKruiY2HWnPyFaaV+XALY2ECAGZeP
         PeR6XD8uAkEL4mwch5rQ7pfLHN9HCFujEBDX3AZJa0WlA8EQ3c8w30Gss6jeg1d3K4HD
         A8IYU/7i6teRLA01GW5aX0v3pueQNLylcCnNjc1Da7m/PGaHu+CJmdzMJsIL+hBs9S57
         A/Bcu8LQvE7P8wiNTd7aDATHx9i8eKYyLpCggOT32HUnlZP5Mf+fa+BrQDpEve6ae8qi
         8tuERaf/FWJh2hmpdvtWyPlLMuZRFipMciGY5mFSwdZmUTJVZD5I2b1Yfb9ZNhqyIhPN
         aLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747810900; x=1748415700;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OM73HheTFWfhNoDrfd7UaTLWyRqYzaB2I5VExbd0deg=;
        b=uRHYf6KAUanBza56aXWGNaq0gij/ouD4h0Yg6VqYRiAy87jbAiSJJZ2/UWXLQVkdH/
         foFMfUXXVt0aYHFZ0ZFKI/qAGkOqopz0MVWum46ylJsBpxy7B34Lc2y+/L9Ns3ivAZUu
         UUQb5n4tbmLFWOUvkiEdheUnPkc5WD6P8Z8+YXbLdSz6yDEEf7AuDB3lgKV0Ftw03gIy
         BnifcJcPhYVxiZXk9zApq2mf/n/TvMurswN4UfdzgHle7F4PzAD9V410jHGAb9NVeC7R
         H1F25cu7nQ/u5Q4yfp+nkS6qXvmM9eFs15Cavl0AwM/BuYrRAQ6atgvq0ireuYH+e1qM
         6NZA==
X-Gm-Message-State: AOJu0Yy5EWt8w/WIhWAxWDfP+aFXCP0Hrlsza/tutvpljwA7HgyHNh6t
	jObwkf+XkhwUSATyKkfiDewzi9PuC/q9BKO0SLf+qw0VVhfkq6E+C7Mafx//8lWyQbM/5CtlUYp
	tGQZDXy+Ibl4H5Z7SiJAjnoW6XQjAk4coE2UINfjbPI74kVt1U6QssAdr7g==
X-Gm-Gg: ASbGncsSSbOYRb+JzeJutE3d3VHezQNzsX345owS54A2Mskahgq/18zKYX0D+5MEDb9
	FDz6/quWItxp2248Ul0G+LWZQcrRhSbrdH1dllCKk5K8qRmd7NJbh6rojsNWEBil+wnLe9diNLU
	QKxo5MVEAKSiaWcnNC9R6L3ycRfQaozMyAuom36Hnymml+rNtwfYHObCGi/6yOvZOqGl+4Sylbq
	Ao=
X-Google-Smtp-Source: AGHT+IG6Uc79qJHcFBdvetlAHgY56YFvsAbMdEVGvdh3N06VfeWlp3gKj5oqrQm+v+i2aEq7LQPTxAywWQj+oHB6zeQ=
X-Received: by 2002:a17:907:7e95:b0:ad2:532e:abdf with SMTP id
 a640c23a62f3a-ad52d45ada4mr1419146066b.9.1747810899782; Wed, 21 May 2025
 00:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg@lists.ettus.com>
In-Reply-To: <a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 21 May 2025 09:01:28 +0200
X-Gm-Features: AX0GCFvdxDtdCJNYiovUPIBRheAx5NNq4nj_DGdxlLfBd8c4w2BZfCmJUbz4zs8
Message-ID: <CAFOi1A5N+27bWMHUoUNgzdBtd2Ya8L7f=1Xo8cZwAyKrHQ1Mkg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: OCI4FOJ4Z7ZAAMXXYWF7STQSMP34JINH
X-Message-ID-Hash: OCI4FOJ4Z7ZAAMXXYWF7STQSMP34JINH
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OCI4FOJ4Z7ZAAMXXYWF7STQSMP34JINH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8362866036656701521=="

--===============8362866036656701521==
Content-Type: multipart/alternative; boundary="000000000000d10baa06359fefda"

--000000000000d10baa06359fefda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There's not much to it, really. If you have a multichannel DUC setup, my
guess is you have a single LO frequency?

In that case, the only thing you need is the set_freq() API call:
https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1duc__block__contr=
ol.html#a0b5f86857c24d0b162fec528272c2024

...it has a built-in command-time argument, so it saves you the additional
call to set_command_time().

--M

On Tue, May 20, 2025 at 11:10=E2=80=AFPM <carmixdev@gmail.com> wrote:

> Where can I find more info about the fine frequency tuning?
>
> In a more complex example where I need to set offset frequencies in a
> multichannel DUC what is the correct sequence to keep the fine tuning?
>
> Ty
>
>
> C
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d10baa06359fefda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There&#39;s not much to it, really. If you have a mul=
tichannel DUC setup, my guess is you have a single LO frequency?</div><div>=
<br></div><div>In that case, the only thing you need is the set_freq() API =
call: <a href=3D"https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1=
duc__block__control.html#a0b5f86857c24d0b162fec528272c2024">https://uhd.rea=
dthedocs.io/en/latest/classuhd_1_1rfnoc_1_1duc__block__control.html#a0b5f86=
857c24d0b162fec528272c2024</a></div><div><br></div><div>...it has a built-i=
n command-time argument, so it saves you the additional call to set_command=
_time().</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_qu=
ote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ma=
y 20, 2025 at 11:10=E2=80=AFPM &lt;<a href=3D"mailto:carmixdev@gmail.com">c=
armixdev@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><p>Where can I find more info about the fine frequency tu=
ning?</p><p>In a more complex example where I need to set offset frequencie=
s in a multichannel DUC what is the correct sequence to keep the fine tunin=
g?</p><p>Ty</p><p><br></p><p>C</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d10baa06359fefda--

--===============8362866036656701521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8362866036656701521==--
