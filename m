Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5BBAE45EC
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 16:06:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3D1D384825
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 10:06:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750687582; bh=ochgqHwy4y9cCvwBLUKIEl2V9o8SmnqGKrANeA2duHM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=W84fT2Jtdn1OpSi+xEw5QcEdcowmw6NKi51FTa0EuZRnrNhSeLNPuP1gpxdlv2sjb
	 xN719gB6R3ipVvn+YkZC5wuBTE4TOGoHBXWySJ8eDPke9FcEbrz/z942gc1qd3x9WG
	 /mfjUHrJmboa9hvSlk/MG8aWk/myjLiiry/rX+Opio2X3CQq7ZQy1TzTZ5aNQHhxPq
	 OiPRd/jKCO71R0GxjlP5GCKEGwzHlrT35SkTjGwrMXM/0Drg0A2weDreHjs5tTBoKK
	 aFjaRjfI7TmzUUozeBF1lqxe1Egb0YqLZlr5Vc6UrK9B3F/gqD4p7Yt7L9ABdRyLmk
	 /fPTxuMx4vkOg==
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 99240381484
	for <usrp-users@lists.ettus.com>; Mon, 23 Jun 2025 10:05:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fi6C5dsn";
	dkim-atps=neutral
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3d948ce7d9dso17916345ab.2
        for <usrp-users@lists.ettus.com>; Mon, 23 Jun 2025 07:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750687521; x=1751292321; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YbO9kNQ39GZwSWt0W0bfifeTlD6AYCAcChlFNNxECXM=;
        b=fi6C5dsnbmCmCnOQGdbxv2ZIhZiBhcRDkEulA+iCgP9KXGQeqURgWDdqRHSpME+oG5
         dYxX0TlWkL3ZRuWf9BpfbnZ+iwXZVoezpiZFirdlIL2dZiVpwlDImBSEee/vwHT53V0g
         eMx5tRGz44LhkbjiW/pgHK0D7Z1kLF07aCRLXPURK+P7m8PmK/x8FDzRfvlTQoz3GeyJ
         Z5wC1hCDm2bB7FuQg0m+sl3HIULYakeYHm5E0dC5tnnxgwh5x/PnuqqQbbF5D/spmFfJ
         lIig2/FNnLQCVr2DbZ7n7t//bpdW8p/Bw4py3u59Nfp0IsSk3ar/kuhvpZH0svuslyEX
         R6Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750687521; x=1751292321;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YbO9kNQ39GZwSWt0W0bfifeTlD6AYCAcChlFNNxECXM=;
        b=SIehn0uY1gj2xvkqH0HzbTOtZrO0TDETb9XZiwmX8HF7VWCGdPP6Nj5QDPyV58bSkN
         2znmeMaVqg9jQXemFdnLt3eUjUUpUF3TXF70xrcFdoOVHGTVkCARjMG8whaMe9WIq2wT
         Y8RPGBOJiKanbaEKtdIAhXd81NHARV4tRDDxXrEt6nZkQCgL56nMwGkEhhnLz2lVlsua
         mJaimqzcHJQZ18PLDIXR8N1FzUkJTwqYAh8B5UTPTgvIJ36gj5bJw8CZqhb0JxOON8q0
         QmTfpPWJwR6P5WU+Y1J9RzTG07WoK4ZpLUHKXE8kF485nFCooccJgftSB4kqzGNRORy6
         CdVw==
X-Gm-Message-State: AOJu0Yy+a/o7/40JZOc83PZI9pA5kAhFyecbweeovbOGna3Y/4UMaySF
	tTDQD9C2PqGs4nbKixM13pxhUT5H/7jJP66Juz+TiPkWDsgK9kHsXu9xLtZqNK9Ev3egnmTyb+r
	7sjCQlDfBCaGl1vYfNczVKLKUwp/ut8o=
X-Gm-Gg: ASbGncuvbXRpI205VgtazkjU9lJfsvMDkb6qTwY0QcfCHgmxW6mFWhBlTlk4Wygi+uy
	7/6owwaEMDPw7M/9N7kJS4ltzoIE3HzHlkDx3IDv3aOuv7ce8/BF+RSESMYN5ndfeCNEq8PIbWh
	nP52MgTg0pHeaTzeMV5WrbDel1CAGF3/SFD+nzC9fstHH3
X-Google-Smtp-Source: AGHT+IEgKaV0rOogmhYmw8qeAxRKkNQcqCOBNc5NS4KGR/CKggF+5B7+LMlpRutUYg6qu8ttRbb53XjBSC+jIkreua8=
X-Received: by 2002:a05:6e02:214d:b0:3dd:b4b5:5c9f with SMTP id
 e9e14a558f8ab-3de38cc4f7amr121972385ab.19.1750687520777; Mon, 23 Jun 2025
 07:05:20 -0700 (PDT)
MIME-Version: 1.0
References: <u68VKtOBVkQImuihTybgnC3MZBSi3dQrpCmIHBqrA@lists.ettus.com>
In-Reply-To: <u68VKtOBVkQImuihTybgnC3MZBSi3dQrpCmIHBqrA@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 23 Jun 2025 17:05:09 +0300
X-Gm-Features: AX0GCFtgE-vO-lCiMt8jXVmK8Zg-6dXIfmeaiKZ9-N3P79Yk4ZBVFtoxNpwjvw8
Message-ID: <CAAxXO2FzKmNDWjUAJrRU-KtXJ3oOhS5xb3BfEJMid91CtUV1iA@mail.gmail.com>
To: zhiwen_zhou@seu.edu.cn
Message-ID-Hash: 2RTX5MJIXL75R7AXLHZRJVB7HQLH5BXT
X-Message-ID-Hash: 2RTX5MJIXL75R7AXLHZRJVB7HQLH5BXT
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2RTX5MJIXL75R7AXLHZRJVB7HQLH5BXT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3094319603705873221=="

--===============3094319603705873221==
Content-Type: multipart/alternative; boundary="000000000000c9ead306383db3da"

--000000000000c9ead306383db3da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zhou,

Not sure about your fft.yml. I don't use RFNOC, just straight fosphor from
the shell:)
Log2(1024) =3D 10. that part is right, have you tried MIN_FFT_SIZE_LOG2 10?
or simple FFT_SIZE_LOG2 10 to see if they work?
Maybe smn else with  more RFNOC experience can help:)

BR
Nikos

On Mon, Jun 23, 2025 at 11:10=E2=80=AFAM <zhiwen_zhou@seu.edu.cn> wrote:

> Hi Nikos,
>
> Thank you for responding!
>
> I think it=E2=80=99s just with Fosphor since streaming from DUC works fin=
e.
> How to ensure that at least 1024 complex samples is fed into the Fosphor
> module? I=E2=80=99ve set the FFT size to 1024, and it still does not work=
.
> Does it have something to do with my FFT set up? Since I=E2=80=99ve chang=
ed the
> old =E2=80=98fft_1x64.yml=E2=80=99 to 'fft.yml', is there any additional =
parameters
> required?
> My current FFT config:
>
>   fft_a:
>
>     block_desc: 'fft.yml'
>
>     parameters:
>
>       MAX_FFT_SIZE_LOG2: 10
>
>
>   fft_b:
>
>     block_desc: 'fft.yml'
>
>     parameters:
>
>       MAX_FFT_SIZE_LOG2: 10
>
>
> Zhouzhiwen
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c9ead306383db3da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
Zhou,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div=
><div class=3D"gmail_default" style=3D"font-size:small">Not sure about your=
 fft.yml. I don&#39;t use RFNOC, just straight fosphor from the shell:)</di=
v><div class=3D"gmail_default" style=3D"font-size:small">Log2(1024) =3D 10.=
 that part is right, have you tried MIN_FFT_SIZE_LOG2 10?</div><div class=
=3D"gmail_default" style=3D"font-size:small">or simple FFT_SIZE_LOG2 10 to =
see if they work?</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">Maybe smn else with=C2=A0 more RFNOC experience can help:)</div><div cla=
ss=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmai=
l_default" style=3D"font-size:small">BR</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail_quote gma=
il_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 23, 2=
025 at 11:10=E2=80=AFAM &lt;<a href=3D"mailto:zhiwen_zhou@seu.edu.cn">zhiwe=
n_zhou@seu.edu.cn</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><p>Hi Nikos,<br><br>Thank you for responding!<br><br>I thi=
nk it=E2=80=99s just with Fosphor since streaming from DUC works fine.<br>H=
ow to ensure that at least 1024 complex samples is fed into the Fosphor mod=
ule? I=E2=80=99ve set the FFT size to 1024, and it still does not work.<br>=
Does it have something to do with my FFT set up? Since I=E2=80=99ve changed=
 the old =E2=80=98fft_1x64.yml=E2=80=99 to &#39;fft.yml&#39;, is there any =
additional parameters required?<br>My current FFT config:<br><br>=C2=A0 fft=
_a:</p><p>=C2=A0 =C2=A0 block_desc: &#39;fft.yml&#39;</p><p>=C2=A0 =C2=A0 p=
arameters:</p><p>=C2=A0 =C2=A0 =C2=A0 MAX_FFT_SIZE_LOG2: 10</p><p><br>=C2=
=A0 fft_b: =C2=A0 =C2=A0 </p><p>=C2=A0 =C2=A0 block_desc: &#39;fft.yml&#39;=
=C2=A0 =C2=A0 </p><p>=C2=A0 =C2=A0 parameters:=C2=A0 =C2=A0 =C2=A0 </p><p>=
=C2=A0 =C2=A0 =C2=A0 MAX_FFT_SIZE_LOG2: 10<br><br><br>Zhouzhiwen</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c9ead306383db3da--

--===============3094319603705873221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3094319603705873221==--
