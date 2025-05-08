Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 774D3AAFBF4
	for <lists+usrp-users@lfdr.de>; Thu,  8 May 2025 15:47:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BD7F385EEE
	for <lists+usrp-users@lfdr.de>; Thu,  8 May 2025 09:47:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746712048; bh=YpWiry1Vz5liYEDnT1tLwT89iNqDoU2HTMEP2kKjAbI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AvGAxHyjYMh2L1L0kROu3H8dZNJU/2pyCdeHQ6KlHP0+WcakCLwFSFVWUkpuRLqOb
	 OF7HkM6xSIKSA+jyqGZzj9YhG6xkdAgVQSquT1CenaindWsWcJNtAxTRAq7ZSDM3J8
	 a0GzIHr3l87G76ypMzFsaheIJ2MzbQoSoTfNF1E8kobUo57RGnFJgK0qmYFxiRjjE+
	 mVs2XlzwJKszjmmFrRHSvqhmBg1zK6ubRqD/11gafuNMSd8YW+MnI5VaA7O5cyqdet
	 On117UBZIO1pp+H/Oy8RxIugDS5KHaQ+Jn3TL8Z4GXIJAq/8gN7iFxNc9YRU0Sxepm
	 xPzoxkrG7zGhw==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C340385E8B
	for <usrp-users@lists.ettus.com>; Thu,  8 May 2025 09:46:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="W4MLid35";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ad1a87d93f7so191336866b.0
        for <usrp-users@lists.ettus.com>; Thu, 08 May 2025 06:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1746711995; x=1747316795; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qdOJg/evBpe2T4QAmygwyi3LhymsEeCBwTqH2D4dlq8=;
        b=W4MLid3534QB6DOzuD8+jpt6irPp1bhAMtGZL9HtnmG6EBgG9LFxZvyrLokSNUZ5dd
         oMeH3TBhDv0KyadnHmfsSGj29BKkMdw6kU8bJAOfIIS0EdWizWUD39/jcyVj2JuaG1AQ
         83Djk6Y3cex4yPlMMr+7oSF4Grgrol+7xRQ2dDCOJhzdD7FBUfBxZmqgq2i3uAZLQ0UY
         Gp9sjILB8SZXj6T7XeDgjFJGF7ErgPtU9MnKcOJiM/jvISL9KrOWVgICJf32H2bbionk
         HDb5X4lJVb9tytNXqE7C4FdqUgv0WeppgdFqXOrpXMAi/KM5Q5tKzZetWlH79oskbLr/
         yKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746711995; x=1747316795;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qdOJg/evBpe2T4QAmygwyi3LhymsEeCBwTqH2D4dlq8=;
        b=nu1zPXogFJm7Ggw22CWNZOwewWEzIUu/W/urD1KdS87E+1atNaWifIVJRxF4deZiIJ
         QNRsVRGanGq3Gh8qlBT63xDlpRL4Ovjjn106uRhNgEXFVXxqFIdkHLPd9wVOeRmKZ2xb
         k7MZRrztlAW7rEiG+veIpAIDPNSmDYeqMzSjJvxn1opIN1D6h/iV/2HgKgrzWMxb1QxH
         mO9m107onnuWJby/8kP2WwszKgQTJTgpHCx86TFiUT4Aacknwrtnz0vOgvpu+ficIEZo
         9n1O2TxDtneljQmq3zZZS+clSYWiITLL0KtUuXqP6O67jBX70RtDMXYnvDfQ/LBGNJ7B
         9sDA==
X-Gm-Message-State: AOJu0YzrBWo02f83DcpiSY6ushllSzeSyVhJ+6N53VDh5YrYJoheRoUC
	cKAS+AB9tFZf2J5xrFh47vBNMDKY7wf3nzQbwxjdDupLtbriJjme2mTI6At7sFMhyrqDcsDbciH
	fzkTa64QNccIqPrrz7eHlSt0VhF4qQ0fac+R0m0I8wDMe8N587fvphw==
X-Gm-Gg: ASbGncuOpVG2FgaONu71VUj9fJgh0seuTedWwnGRMFiqoRbWXG1vpmjMz9A5px8+fZN
	D7uIs5QIBklnn2gC5SVv3P/jAd8d5BkD/Z9BxCqZ1iSgPSy7y0SDOiJdPDEv2OahROc/Lt77Eqc
	asIe1aqaCfx/CYdWfssTFjTV3uDf+YL3l+UzdQ4r6vuonjKUNgE+KEbA==
X-Google-Smtp-Source: AGHT+IGs/NAFntcpvoTzQprPVTXFvqvIxyrgl6RA4JavuNcurXoqY4SR32QqGkGhIHgn8wAphTp0P1cvYtlDVsowv2s=
X-Received: by 2002:a17:907:7da5:b0:ac3:48e4:f8bc with SMTP id
 a640c23a62f3a-ad1e8d54c0dmr794437266b.48.1746711994721; Thu, 08 May 2025
 06:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <694c73bfc1e04633878cd2bec2e45340@vastech.co.za>
In-Reply-To: <694c73bfc1e04633878cd2bec2e45340@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 8 May 2025 15:46:22 +0200
X-Gm-Features: ATxdqUHBFzHeppen33ls4ERXK7IbEEw4f92s-AcfUiRod3n9SnAe9Yct2cD1Oj0
Message-ID: <CAFOi1A4bYA7qE9tPmmVXpQDiHbE+CVKc8Ky-3dcwtzUzYK-Qaw@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: ITA5DOBONHDRNDMIZMSMEPLWMLRGX662
X-Message-ID-Hash: ITA5DOBONHDRNDMIZMSMEPLWMLRGX662
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: reading registers in python
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ITA5DOBONHDRNDMIZMSMEPLWMLRGX662/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2818136279990380296=="

--===============2818136279990380296==
Content-Type: multipart/alternative; boundary="000000000000f87bbf0634a01314"

--000000000000f87bbf0634a01314
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yikes Kevin,

you always seem to find the tricky issues. As you say, the Python API is
just a wrapper of the C++ API, so I can't think of a good reason why it
would behave differently. Is it possible that the Python app does a
different setup of the block than the C++ app, leading to a state where
zero is expected?

If you're really pulling at straws, you could capture a session with
Wireshark, install this dissector:
https://github.com/EttusResearch/uhd/blob/master/tools/dissectors/lua/rfnoc=
.lua,
and then see if the response packet to the peek is really carrying a zero
payload or not. But I admit it's a bit of an elaborate setup.

--M

On Thu, May 8, 2025 at 11:30=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi,
>
>
>
> I=E2=80=99ve got a strange issue reading rfnoc block registers in python.
>
>
>
> I have a register populated by windowed statistics in my rfnoc block.
>
>
>
> In my C++ app I can read this register and see it is being updated at
> exactly the right time intervals, but in python this register is mostly
> read back (using my block driver methods =E2=80=93 i.e. the same C++ meth=
ods but
> now automatically wrapped for python by the normal compile) as just zero.
>
>
>
> The update interval is relatively long at 200 ms.
>
>
>
> Is there any possible reason why this might be?
>
>
>
> Kind regards, Kevin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f87bbf0634a01314
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yikes Kevin,</div><div><br></div><div>you always seem=
 to find the tricky issues. As you say, the Python API is just a wrapper of=
 the C++ API, so I can&#39;t think of a good reason why it would behave dif=
ferently. Is it possible that the Python app does a different setup of the =
block than the C++ app, leading to a state where zero is expected?</div><di=
v><br></div><div>If you&#39;re really pulling at straws, you could capture =
a session with Wireshark, install this dissector: <a href=3D"https://github=
.com/EttusResearch/uhd/blob/master/tools/dissectors/lua/rfnoc.lua">https://=
github.com/EttusResearch/uhd/blob/master/tools/dissectors/lua/rfnoc.lua</a>=
, and then see if the response packet to the peek is really carrying a zero=
 payload or not. But I admit it&#39;s a bit of an elaborate setup.</div><di=
v><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_c=
ontainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 8, 2025 at 11:3=
0=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:kevin.williams@vastech.co=
.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div class=3D"msg-9060327787827190071"><di=
v lang=3D"EN-ZA"><div class=3D"m_-9060327787827190071WordSection1"><p class=
=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">I=E2=80=99ve got a strange issue reading r=
fnoc block registers in python.<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">I have a register populated by windowed statistics=
 in my rfnoc block.<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">In my C++ app I can read this register and see it is being upd=
ated at exactly the right time intervals, but in python this register is mo=
stly read back (using my block driver methods =E2=80=93 i.e. the same C++ m=
ethods but now automatically wrapped for python by the normal compile) as j=
ust zero.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">The update interval is relatively long at 200 ms.<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">Is there any possible reason =
why this might be?<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">Kind regards, Kevin<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div></div>_______=
________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000f87bbf0634a01314--

--===============2818136279990380296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2818136279990380296==--
