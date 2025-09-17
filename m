Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D946B8075D
	for <lists+usrp-users@lfdr.de>; Wed, 17 Sep 2025 17:16:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 338FF385ADC
	for <lists+usrp-users@lfdr.de>; Wed, 17 Sep 2025 11:16:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758122212; bh=5ureG9GSxtxrtdr57x2mTzJ4Mfjr/IWnpt8olxQWsOM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=q0+uL1UXzGnbWEesq0NQBQ5tQpafc1eO832RDYM8EDNqyZffS/RQBGg2cqZzdRDY1
	 ElkJXpgVr6Os3hbDhHibJHTRjSxvfkF/rOSrjOBOLkL7EC7A3OITfLlByIZVTTRMi7
	 t8K8XgtZOfYGccs+v1kyifSV194oK+4PrjLxtOdxVM3YpF+mLZo1JcXZk32CN8nnbd
	 UH1bylKCVeyvMlr6gI2s1jejms1bdG5IA3wJCW+eINAPnCoUqgvFKT8JAbwDDH84Cj
	 HtnqDAXG/ujGFGZTQMgfhrqZYUdgeOGI9hf9kL48hZ5nXUXUv5tDbzNytqB7hiJ88W
	 58mUEhJIJJ/dg==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 723BA385850
	for <usrp-users@lists.ettus.com>; Wed, 17 Sep 2025 11:16:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rQu4nL/Q";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-62ec5f750f7so12393542a12.3
        for <usrp-users@lists.ettus.com>; Wed, 17 Sep 2025 08:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1758122184; x=1758726984; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Av8K6DbrMqMcMcfvKHNC9F9oHRTzK619/G7CPZmAWVA=;
        b=rQu4nL/Q1FWGiJFZbMS1WiA4ucCW82LJQRE6I23HBdbkehS6t0qeOEamRHmr7MY8R3
         HkF42Jw8+P2tqbEcoD0o35ETzajEEV3jP10bFegZoeNVuNrCqBO7jSsRjCEiCod4oaP9
         vqgIEuGLEIoIveGTwwUrKJQWj8O0GT749xRsL88KBJk+khb+JMUAandBV96vomHu/j2x
         ZJkyiVMrR0vDHPc+nAlBfo5qcTEzdg8KOauGWKgSyUt3nFMhpMQGD1UA15dhJVdreh+Y
         Kp9ofiLuKpcjTkDZWMtTfoz3JCgs1ub4opFCF2S9u0vjUBqG9uXbsSzaRVMscSUueeJM
         Dl5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758122184; x=1758726984;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Av8K6DbrMqMcMcfvKHNC9F9oHRTzK619/G7CPZmAWVA=;
        b=iYcrZ34uI9REeC5aY5wWcB8idVJYa5L6DK2r5wb35/Gq+GFLyzhT1uaqovUa8oEPxS
         MPxYRqRCpblvhvHeL4G4dvhWOaBtnnV4iYD+1/RUC5I84BmmKegxo3D+JDA/rj3BIw1n
         F32/1qTuicBmsCo2X3r9VdMISf9pwqYl7TNhlaqqf6n6godEdIiVA3rzMlKohzWypGqn
         +PpHRb6cDdx0/PBpMpqVBov49JuZ7b9vRC/LGS85pfNxEqRHNTkR3mH6I3SA7sbNVNh8
         +9yo4c7ZyEURNUq3fSthUT8cAPnQ9mRNXkEfRMVvsU5IwcgPJO0E8s15rKuPXa9kBz1Q
         ZozQ==
X-Gm-Message-State: AOJu0YzIb5vQkkeknIlHGiyHMffgnpxd3f/kHOL+0T4iG8iWPXGASyg9
	egzPhVJOXq8v7hWSh93YSA38Kf3InmTId7yAUdRU0bkIhmfGCRL70tjMrNvtX5220/QN/rUN/af
	6odK3QLee5tEm8ACrcr/8w0glnCGsPWLODBXuVHLmfC20yjnT1WP/88A=
X-Gm-Gg: ASbGncuZR4fvmnCnsVBPhHtgbIb8OabcHb+yRo+RJeQH/COprIgN8fV/gpLMjQGOYun
	nsanWjOS3fbHuFEgz+DFb8T3aEmNpxSob62+Es2ThnvbPAkWwSjgDJ8lHpAk5SLZmrkgcvHVK3a
	JONqY7r0osEFtp7i79N0Upluym/OSZooAYie6sAsDTEtKXH0QC1OvgOzcq1y6xyPsCBnrY7VbnY
	9i3WqCvLdHqeDafX320kv0/0JMAKD1qBVg3CPY=
X-Google-Smtp-Source: AGHT+IFBYLIA6XtYmU2vDVoM+kdW5KdG65NaMfmBLZzS4uJN2QJS9GTQLgTyGQ7IcQ7vBsd1LEj9DGpqrQmvmD++Dc8=
X-Received: by 2002:a05:6402:847:b0:62f:4b7b:4947 with SMTP id
 4fb4d7f45d1cf-62f84230941mr2396329a12.16.1758122183847; Wed, 17 Sep 2025
 08:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <n1U8QdaJHFBrbIeBbJdrcKxKImYxzcNgQRUkywMeY@lists.ettus.com>
In-Reply-To: <n1U8QdaJHFBrbIeBbJdrcKxKImYxzcNgQRUkywMeY@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 17 Sep 2025 17:16:12 +0200
X-Gm-Features: AS18NWBprU3btVrhzott0otKHjaMd6Vcn2pq7VAGNG5ij_G7sqUDKa8ETe-nvyY
Message-ID: <CAFOi1A62p8-i5pieA1gWfMEsbvH3BZ9+UO0_eLMbJgk7GN-JLQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: QJTEKVXQAWFMRMHFJSLE4ONSXK7L2S2G
X-Message-ID-Hash: QJTEKVXQAWFMRMHFJSLE4ONSXK7L2S2G
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to pin a specific UHD version across machines/devcontainers?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJTEKVXQAWFMRMHFJSLE4ONSXK7L2S2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1042657067711120211=="

--===============1042657067711120211==
Content-Type: multipart/alternative; boundary="0000000000003d85b7063f00b802"

--0000000000003d85b7063f00b802
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In general, we think installing from the PPA/Launchpad is a good idea. It
gives you tested binaries, and you have no hassle of figuring out
dependencies, etc. The only problem is that the way Launchpad works, there
is no guarantee that you will be able to download the same binaries in the
future. That means, if you can't be sure that you can archive the
container, then building from source is more future-proof (but also more
annoying). That's your tradeoff.

Note that if you pin your container distro version (e.g., to Ubuntu 24.04
with a fixed date) and are OK with using the distro version of UHD, then
you also don't have that problem (but you also don't get the latest UHD
necessarily).

We always suggest people use binary installers that we provide (or that the
distro provides) over building from source if they're not super comfortable
doing that. But there are corner cases where it's the wrong approach. I
can't tell exactly where you land.

--M

On Tue, Sep 16, 2025 at 3:49=E2=80=AFPM <ardelgado@gradiant.org> wrote:

> Hi Martin,
>
> The issue about python API was my mistake, srry about that =F0=9F=98=85. =
I was
> experimenting with different installations in a devcontainer and I didn=
=E2=80=99t
> realise I had skipped the previous dependency commands:
>
> sudo apt update && sudo apt install -y \
>
>     git build-essential cmake libboost-all-dev \
>
>     libusb-1.0-0-dev libudev-dev python3-dev \
>
>     python3-mako python3-numpy python3-requests \
>
>     python3-setuptools python3-pip
>
> I understand that, in your opinion, building UHD from source is the bette=
r
> approach. Do you not recommend using the PPA option? I=E2=80=99m really a=
fraid
> about potential version missmatches between devices and USRPs (e.g. N310 =
or
> X410 images).
>
> Thanks for your fast support.
>
> Best regards,
>
> =C3=81lvaro
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003d85b7063f00b802
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In general, we think installing from the PPA/Launchpa=
d is a good idea. It gives you tested binaries, and you have no hassle of f=
iguring out dependencies, etc. The only problem is that the way Launchpad w=
orks, there is no guarantee that you will be able to download=C2=A0the same=
 binaries in the future. That means, if you can&#39;t be sure that you can =
archive the container, then building from source is more future-proof (but =
also more annoying). That&#39;s your tradeoff.</div><div><br></div><div>Not=
e that if you pin your container distro version (e.g., to Ubuntu 24.04 with=
 a fixed date) and are OK with using the distro version of UHD, then you al=
so don&#39;t have that problem (but you also don&#39;t get the latest UHD n=
ecessarily).</div><div><br></div><div>We always suggest people use binary i=
nstallers that we provide (or that the distro provides) over building from =
source if they&#39;re not super comfortable doing that. But there are corne=
r cases where it&#39;s the wrong approach. I can&#39;t tell exactly where y=
ou land.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_qu=
ote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Se=
p 16, 2025 at 3:49=E2=80=AFPM &lt;<a href=3D"mailto:ardelgado@gradiant.org"=
>ardelgado@gradiant.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><p>Hi Martin,</p><p>The issue about python API was m=
y mistake, srry about that =F0=9F=98=85. I was experimenting with different=
 installations in a devcontainer and I didn=E2=80=99t realise I had skipped=
 the previous dependency commands:<br><br>sudo apt update &amp;&amp; sudo a=
pt install -y \</p><p>=C2=A0=C2=A0=C2=A0 git build-essential cmake libboost=
-all-dev \</p><p>=C2=A0=C2=A0=C2=A0 libusb-1.0-0-dev libudev-dev python3-de=
v \</p><p>=C2=A0=C2=A0=C2=A0 python3-mako python3-numpy python3-requests \<=
/p><p>=C2=A0=C2=A0=C2=A0 python3-setuptools python3-pip<br><br>I understand=
 that, in your opinion, building UHD from source is the better approach. Do=
 you not recommend using the PPA option? I=E2=80=99m really afraid about po=
tential version missmatches between devices and USRPs (e.g. N310 or X410 im=
ages). </p><p>Thanks for your fast support.</p><p>Best regards,</p><p>=C3=
=81lvaro</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003d85b7063f00b802--

--===============1042657067711120211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1042657067711120211==--
