Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DF450933C
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 00:57:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 73E89381435
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 18:57:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650495451; bh=UyQsFgUJ7MI3BDpXKEPDtyfcjerkghHfv3VEVCV2hl0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Zs2qiLY25B1Zmd50IpWBWaFeCTb80bvhcprtkbToS+gYr/DbRY5Mc/skWW/SqDEGR
	 6FdBPhbGEj3Rb1Io17ZCObG5ykTB/po7atsroSpNh72q3KI1SByCDKvAsg7/7DNtMH
	 lTQpGJtBYJfpwQZbh6kJQXFnYGhmQpqrlejsOnSaapzk5KOwKapbMbUQT36xAbQLOz
	 NbYvqG0jeLavKIpjIOJuPl7OlK2ZZXR1cUMSpO3hQmC8mPs7EjM3OhH9yaFhN6Vem2
	 xsnVCSoGKObQVWqs8GAM1a2MRZZ/T6Z7okVUS/bbmVV/BrxYpNU7dSG/MNm4oAPMRI
	 TGsqQa2Wrb4mg==
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AAED38445E
	for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 18:56:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eMUmscc6";
	dkim-atps=neutral
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-e5bdd14b59so3581630fac.11
        for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 15:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cOLMbaCzvbH4359znt8HwrL/xI7DtaDNiw5SC1eE5iw=;
        b=eMUmscc6zDS/kZR/+THZqnny4MhFPLN+ih4dHPaktyhLCvh3RX2MTdD9nQ+wgbzvks
         eAt5/U8i3oYBilYYKoS6RL9mwrB6ypxmKHqANGIzX62Tmn5mHSz6ExUdogcQ4f3Ua8BF
         K6lxW/E5h8qV3reDgfe9GO+QgZomz6UoHZ77svoqq9bCxs12nL3lv3tvv5K5ps0348Vt
         1rmg6bTKygWcXncdSifys487FdR0oebc2txf4WqYQfjQ5MNnImBk6Hpbg81MLVh7GOT/
         Xg/Cphstt982bmEG94OMqYS1nBo3hU5RnYGZziZhs/r6fi3wrgQBIrMkW8eQp/1wQxkM
         P5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cOLMbaCzvbH4359znt8HwrL/xI7DtaDNiw5SC1eE5iw=;
        b=gjkFIdukdJAuBKehQNpf8UifjCT8wWPw3vi5fgDhYPsd9NKtR48Vsmv5cVlF7ecDVJ
         dltz4oagp7mBqiNtlFAtt98tGUhabrljrE2U1tlbkZEHsXum0w5ccjK2MsWHh7VjgD2j
         G1UWY/xyua+VE1ASupfeZ+tAN0dbcGKdOARsTsNaKRhcht6CHE/gKmdPh29/+tJXo6CG
         nziAkq9WPndMmuRtSGPMCsTVfJ6qBlsE2RHJQC7bn30PPpYreRJxP1QdLJ46PPiOUyQ0
         PTxcwm4SVRKIeCorNszMlPTUapBbYPl40511JEwm6OmMz0Z2uIcRHfWkHlXoJY/sc9Xu
         F1fQ==
X-Gm-Message-State: AOAM531fGQsx6P0PlFCc6wM1FX9A2cGFInY7+k5sfZQtrzvtSMZCszu4
	dutU0Gg0QgdiKOSX2Q508Uog1RB+q+DTkLNejkryP8SEGA8=
X-Google-Smtp-Source: ABdhPJxtwqT4igZzOSgCSI9tGBHSWsPwpR6S0apeV5RuK6rWb9DOUA39WkzcHU2ygKB782ZxCkNbm3auI2JbkQawZ3U=
X-Received: by 2002:a05:6870:11cd:b0:e5:e565:9185 with SMTP id
 13-20020a05687011cd00b000e5e5659185mr2585696oav.251.1650495382770; Wed, 20
 Apr 2022 15:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAJGEdAiB2THbMiYaTDvFTeAcE-n_yf5ga5AA71kdwQXx5Ejw4w@mail.gmail.com>
In-Reply-To: <CAJGEdAiB2THbMiYaTDvFTeAcE-n_yf5ga5AA71kdwQXx5Ejw4w@mail.gmail.com>
From: Dario Fertonani <dario.fertonani@gmail.com>
Date: Wed, 20 Apr 2022 15:56:11 -0700
Message-ID: <CAJGEdAi8=EMDur4tFwk+D4sCiCFNdRGoXzbHJxJEZ6cc90iqAg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: DJPDMCSMQCDYECC2XEJANZIQTA5LZDB6
X-Message-ID-Hash: DJPDMCSMQCDYECC2XEJANZIQTA5LZDB6
X-MailFrom: dario.fertonani@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 broken on UHD versions newer than 3.15.0?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJPDMCSMQCDYECC2XEJANZIQTA5LZDB6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0203019255278602361=="

--===============0203019255278602361==
Content-Type: multipart/alternative; boundary="000000000000fe584205dd1de657"

--000000000000fe584205dd1de657
Content-Type: text/plain; charset="UTF-8"

Any feedback? This is very easy to reproduce and happens on every single
x86 machine, with tens of B210 devices around the world. The command line
in my original message gives problems even when 25% of the USB throughput
is removed by forcing "sc12" format over the default "sc16" format.

The hope is always that newer drivers don't break the existing systems,
which did fail us here.

Thanks,
Dario


On Wed, Apr 13, 2022 at 3:54 PM Dario Fertonani <dario.fertonani@gmail.com>
wrote:

> Hi,
>
> I'm here to report that the "golden standard" for benchmarking the B210
> streaming performance is giving us issues with the latest UHD versions.
>
> The following command
>
> ./benchmark_rate --rx_channels "0,1" --rx_rate 30720000 --tx_channels
> "0,1" --tx_rate 30720000 --duration 120
>
> gives flawless output with UHD 3.10.3 and 3.15.0, but orrible output with
> UHD 4.1+, with everything else being equal. These results hold on several
> x86 machines (Intel i7, i9, Xeon, and AMD Ryzen and Epyc) and with at least
> five different B210 devices. In each case, for a given host machine, USB
> cable, and B210 device, we compiled UHD from source and saw the results
> degrade sharply simply by running the command from the newer folders.
>
> We typically run UHD from Ubuntu packages (3.10.3 for Ubuntu 18, 3.15.0
> for Ubuntu 20, or whatever is in the latest Ubuntu PPA) rather than
> building it from source code. We went through the source code route because
> we saw issues and wanted to reproduce them with the official
> "benchmark_rate" utility, which unfortunately comes only with the source
> code version. However, I want to point out that the poor results seen
> with "benchmark_rate" are consistent with the poor results of our own code
> when built with newer UHD versions.
>
> Thanks,
> Dario
>
>
>
>

--000000000000fe584205dd1de657
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Any feedback? This is very easy to reproduce and happens o=
n every single x86 machine, with tens of B210 devices around the world. The=
 command line in my original message gives problems even when 25% of the US=
B throughput is removed by forcing &quot;sc12&quot; format over the default=
 &quot;sc16&quot; format.<div><br></div><div>The hope is always that newer =
drivers don&#39;t break the existing systems, which did fail us here.</div>=
<div><br></div><div>Thanks,</div><div>Dario</div><div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr=
 13, 2022 at 3:54 PM Dario Fertonani &lt;<a href=3D"mailto:dario.fertonani@=
gmail.com">dario.fertonani@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div=
>I&#39;m here to report that the &quot;golden standard&quot; for benchmarki=
ng the B210 streaming performance is giving us issues with the latest UHD v=
ersions.</div><div><br></div><div>The following command</div><blockquote st=
yle=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><font face=3D"=
monospace">./benchmark_rate --rx_channels &quot;0,1&quot; --rx_rate 3072000=
0 --tx_channels &quot;0,1&quot; --tx_rate 30720000 --duration 120</font></d=
iv></blockquote><div>gives flawless output with UHD 3.10.3 and 3.15.0, but =
orrible output with UHD 4.1+, with everything else being equal. These resul=
ts hold on several x86 machines (Intel i7, i9, Xeon, and AMD Ryzen and Epyc=
) and with at least five different B210 devices. In each case, for a given =
host machine, USB cable, and B210 device, we compiled UHD from source and s=
aw the results degrade sharply simply by running the command from the newer=
 folders.</div><div><br></div><div>We typically run UHD from Ubuntu package=
s (3.10.3 for Ubuntu 18, 3.15.0 for Ubuntu 20, or whatever is in the latest=
 Ubuntu PPA) rather than building it from source code. We went through the =
source code route because we saw issues and wanted to reproduce them with t=
he official &quot;benchmark_rate&quot; utility, which unfortunately comes o=
nly with the source code version. However, I want to point out that the poo=
r results seen with=C2=A0&quot;benchmark_rate&quot; are consistent with the=
 poor results of our own code when built with newer UHD versions.</div><div=
><br></div><div>Thanks,</div><div>Dario</div><div><br></div><div><br></div>=
<div><br></div></div>
</blockquote></div>

--000000000000fe584205dd1de657--

--===============0203019255278602361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0203019255278602361==--
