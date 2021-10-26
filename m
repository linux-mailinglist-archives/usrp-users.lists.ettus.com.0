Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B94F43A986
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 03:00:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59E56383C73
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 20:59:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="TSHpot8z";
	dkim-atps=neutral
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	by mm2.emwd.com (Postfix) with ESMTPS id B72A5383BB2
	for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 20:59:15 -0400 (EDT)
Received: by mail-ua1-f49.google.com with SMTP id h4so25902903uaw.1
        for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 17:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Nju+sjqvhkXMFpcvdddyfOGmVkt/3TEWvG8MFy8Q/V0=;
        b=TSHpot8zN1Qe1jFL+WM2b78athVp1PwJ8rIqfQ1xRsM92jPMJkig1X/SRgan4kMu8q
         xis/flYMqnC1Gy/boThemkXMAI1EYC8VMFhXymIdv7GyZ7JlD1XweN64F8pbgWTjgYuY
         MueF6xopYLGv0qMLOwxwfuUuE4Y8vVcGM9rQS9Zw1ERgFbsfZsGBguYNvUzlfXHLAbNL
         rmMw9PflVzaLOAijNNi+2Ke3Gbrt27LYyid2aXscg5uKZSzOiKJHIM4a4c3EC0jXpe60
         Ninoyr+izHUOyyFivEi6orysdn3/nJpv5rynsW5lY2CaxjuE6qZQ5CIUmjgBFE4zvDD/
         ZyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Nju+sjqvhkXMFpcvdddyfOGmVkt/3TEWvG8MFy8Q/V0=;
        b=zK/tYzsd8O3A81kHScw/3xNcKhnj4jVr5Nn3Dp1jmTIs+q5cWcyQdXTphcpgDrrBDd
         fgaL2bTyMwEASR+Fc1Fck5f0VaaS96jZXA+3kW3QARLFM7ey3Cn2wvovLfCdrhIt8Xmi
         cBJp/r4ULg3W9hMhVEFRjqQ9HdR/yMvxYKicaAj/RfmzKGROj1CiQVVVLzlvkpKIh0or
         X0kp7rQjLtiuYMy7xYyOgbK9dQ/kF2eBFVVxQ8BW3QVBR7BFAXaER1T+CyxJp38e6td2
         UtrGz13OZVjZ0QuqOouU31UhC2dfaWB4OMYmEF23+dhhlVnGzwxG2eQmHiiCATDeg3gM
         E8qw==
X-Gm-Message-State: AOAM530jrTH2gRZg3m+xSWjHxtipgnJYU+r0Xhwa8n1OdzWVqbVeWQ8B
	gAECpf4yzX6XWKebToGXr5eFtg212q5jhKoVEd+oEi/q
X-Google-Smtp-Source: ABdhPJzNs/Wnmw1LuDTUrc4Acsb0Mw54yICh0OpMTyiZ1QUYAqbJXSyQVzy3ehwv77Saju464IXaPlQUXxfeZleqZ0Y=
X-Received: by 2002:a05:6102:954:: with SMTP id a20mr19259550vsi.40.1635209955115;
 Mon, 25 Oct 2021 17:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <2102437284.1242411.1635140673062.ref@mail.yahoo.com> <2102437284.1242411.1635140673062@mail.yahoo.com>
In-Reply-To: <2102437284.1242411.1635140673062@mail.yahoo.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 25 Oct 2021 20:58:39 -0400
Message-ID: <CAL7q81tdQpkuV=qVMvucy0a0WVYjexwwHVuKuB2GL_DAuGbk8w@mail.gmail.com>
To: "M.H.Parsafar" <parsafarmh@yahoo.com>
Message-ID-Hash: SGRPAIBU6WAM6YNEY5HHZ5UDBD7O6TUA
X-Message-ID-Hash: SGRPAIBU6WAM6YNEY5HHZ5UDBD7O6TUA
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: cross-compiling uhd 4.0 and gnuradio for e31x
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SGRPAIBU6WAM6YNEY5HHZ5UDBD7O6TUA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3267507510744400886=="

--===============3267507510744400886==
Content-Type: multipart/alternative; boundary="0000000000008215dd05cf36fc8d"

--0000000000008215dd05cf36fc8d
Content-Type: text/plain; charset="UTF-8"

Hello,

UHD 4.0 is not compatible with the release 4 SDK. I suggest using the SDK
and SD card image from the latest E310 release here:
https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.1.0.4/. If you
are using the E310 cross-compilation instructions from the knowledge base,
you'll want to replace any instances referencing
"armv7ahf-vfp-neon-oe-linux-gnueabi" with
"cortexa9t2hf-neon-oe-linux-gnueabi".

Jonathon

On Mon, Oct 25, 2021 at 1:47 AM M.H.Parsafar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I'm trying to cross-compile uhd/gnuradio/gr-ettus for e31x with release4
> e31x file system on ubuntu 20.04, but apparently the cmake,g++,python,etc
> libraries installed on the oe sysroot are not up-to-date resulting into
> errors during cmake / make processes for uhd/gnuradio/gr-ettus. how can i
> work around this issue? Specifically, would you please tell me with details
> how i install required versions of libraries or compilers needed for
> cross-compiling uhd 4.0 and related gnuradio and gr-ettus libraries, in the
> release 4 oe cross-compiler sysroot?
> thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008215dd05cf36fc8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>UHD 4.0 is not compatible=C2=A0w=
ith the release 4 SDK. I suggest using the SDK and SD card image from the l=
atest E310 release here: <a href=3D"https://files.ettus.com/binaries/cache/=
e3xx/meta-ettus-v4.1.0.4/">https://files.ettus.com/binaries/cache/e3xx/meta=
-ettus-v4.1.0.4/</a>. If you are using the E310 cross-compilation instructi=
ons from the knowledge base, you&#39;ll want to replace any instances refer=
encing &quot;armv7ahf-vfp-neon-oe-linux-gnueabi&quot; with &quot;cortexa9t2=
hf-neon-oe-linux-gnueabi&quot;.</div><div><br></div><div>Jonathon</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Oct 25, 2021 at 1:47 AM M.H.Parsafar via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D=
"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-siz=
e:13px"><div dir=3D"ltr">Hi,</div><div dir=3D"ltr">I&#39;m trying to cross-=
compile uhd/gnuradio/gr-ettus for e31x with release4 e31x file system on ub=
untu 20.04, but apparently the cmake,g++,python,etc libraries installed on =
the oe sysroot are not up-to-date resulting into errors during cmake / make=
 processes for uhd/gnuradio/gr-ettus. how can i work around this issue? Spe=
cifically, would you please tell me with details how i install required ver=
sions of libraries or compilers needed for cross-compiling uhd 4.0 and rela=
ted gnuradio and gr-ettus libraries, in the release 4 oe cross-compiler sys=
root?</div><div dir=3D"ltr">thanks<br></div></div></div>___________________=
____________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008215dd05cf36fc8d--

--===============3267507510744400886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3267507510744400886==--
