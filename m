Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EE1A32740
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 14:38:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6175A385F8A
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 08:38:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739367536; bh=NvrqepdTI7u7H3qpG8l/itx5wKAkbD6aNNSJBXT5NT0=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HGx/wFuICnj/VfCVyLnbRRAS8gl35QP94jMuZGTui+huZ/B1jC+Iqv0WlofddAHnn
	 Nt1hvPjpfKaFWJU/YuNB7DLcjr+WrzoH+cfUr8jYQohlwi+O/EfO9uKELSSvqCYqzq
	 M57fHiPwBxiR6dXYFeJCHJsveHVtcck7Z50fCiJEC8FHgtweIUoKGvzYXqqSYscEmm
	 /jDcmoFYP/tyZbAfiqfo6537dWtDTYyT5uflW15KWlUqY6O9TB+/SdcbHYzouKEzmS
	 TcJMNfsL5D2RhxsH0rf84OX3kR05ePz3XDzAdIqbFuFk19U5v3Yi2w76M4bBM0pRI7
	 L1ZGK7nCZt8ag==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 91EF2385EB1
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 08:38:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="a8l3U9+Z";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5dcdb56c9d3so10808614a12.0
        for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 05:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739367485; x=1739972285; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h4X91McN6Mq+jm0w8Ep5qdTmUtsl4bxS0eIL2gVBuSs=;
        b=a8l3U9+Zy7QTII4CpaJ7ddFi6KLQWk5VPHqdJeRovOv66W4iQC9NpENv/dlcZE6dTB
         xy0WKv1uccgPZniLkyX+fozUs7dXcYhqhAewDM2G/ffGuzI5z4TnbEZhKf5ps5z8y0vo
         vRI+WDuJbfTEY198fAiMH6nrJV6e+8DRqSg2aB72dc2huo1R5XQBwAapWi6O8t79GoYl
         zPloHry8OEjMphgDKOKl1cPlmS9mOtoyfyRVsJzxCvsv+njAdO7rCrRvtl+OXrJagwdr
         ew5Cgfs9uQu5svWRSCBQBxCATMX0MWe8k7LGom5kRlg9hXCIvhP6FKS/gArv86vYZoK7
         6JOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739367485; x=1739972285;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h4X91McN6Mq+jm0w8Ep5qdTmUtsl4bxS0eIL2gVBuSs=;
        b=r+/Rh+89Ph5hJTV/ouCnyBTm9/2iJHZfS/EGtMWJUjd6HgmyqNa4hdi4rl/xgtXa64
         DHu4smurfzK+FPU8FcBFbmwxBE/x5e5kuTD7aQgcOSNHzoqCN4rDdT53lRy9T37TlJTR
         TkzXwznOSQWjM/XM4KkM/H6y5a5yFJ5gVy1/ihzkdSYu8R3wuCvhTv9ki0+yjiSDU0V+
         sf1ZOAPxt77dn++uaZSVIB1TmvbDoYBpn/l3kOcdSnxtEAm+OuwDBaKBxU54t6r4udKz
         PuwUTxOaJToq6wg9x6kgOVuDXWc0c7l1wGwdJGE8m01hKrfH4+6qWbsRp7cqBgzQCbxU
         wgPQ==
X-Gm-Message-State: AOJu0YxipWxhl4oG0FAcmqzA1t1fuYDvC6oeWHHGyXoB+Zm1Q5v8n3om
	97Y2lQI4rmhjOh28C+YFn/sGbhhT8NVbYvTr9ueASksm+r/i4LB+2Em2ruFashSAIwohGSih4hz
	Zb5q9vspBiRTEEpXzYW01FAjYeCVAduKs55mxWLCCTT5/GpFuha0=
X-Gm-Gg: ASbGncsUACQJJQoTO5FEPYVEkY+HAX9oyzD4u9n49hRFdfLiEjLFzb09NtRP4MIW2rU
	AHQyoDFx+OaEBxjDJZ806qIucczpz9w3KZYMi0oJ6nsCPlF8Moi6YoqQemHvfu0OBIO2jNAIIbU
	8suT7hpXe6qLBgDLBzhoXAfmBo/hZC
X-Google-Smtp-Source: AGHT+IFwzUhhWbH8isE8yr9DHzI4Mh/0QYiy3qDm6v0Fkx4oeRQjo+KJ+7YQfb4gFAtcomvrZkH3SP9q/dWOpmW3zSQ=
X-Received: by 2002:a05:6402:13cc:b0:5dc:caab:9447 with SMTP id
 4fb4d7f45d1cf-5deadd9d336mr8130656a12.18.1739367485178; Wed, 12 Feb 2025
 05:38:05 -0800 (PST)
MIME-Version: 1.0
References: <4e95c77a811c4299832c8b67977488d3@vastech.co.za>
In-Reply-To: <4e95c77a811c4299832c8b67977488d3@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 12 Feb 2025 14:37:54 +0100
X-Gm-Features: AWEUYZnccMNAAgaYJzn6kw676q_ia_2FcdP5wAjD-pe9ID3bGI-6hre95SbLiu4
Message-ID: <CAFOi1A793Noync8fHr0L3EpNZCwPSuVpS84Khv-QWYC9rcjuAA@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: MG5FS7C6HNRFNPFNABPEJWGIPK7QKA2S
X-Message-ID-Hash: MG5FS7C6HNRFNPFNABPEJWGIPK7QKA2S
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N300 HG image being built instead of XG
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MG5FS7C6HNRFNPFNABPEJWGIPK7QKA2S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3488046698990007171=="

--===============3488046698990007171==
Content-Type: multipart/alternative; boundary="000000000000169dc3062df20d7e"

--000000000000169dc3062df20d7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kevin,

confirm this is a bug. You can force the correct target by specifying

rfnoc_image_builder -t N310_XG [...your other arguments...]

...which we confirm works. We'll have a fix for this on the way.

--M

On Wed, Feb 12, 2025 at 9:26=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Everyone,
>
> The header of my N300 yaml file is shown below, but this results in an HG
> image being built, not the XG. (I am building this with UHD-4.8.)
>
> The HG image does contain my new RFNoC block, with the right endpoints
> etc.,
> so I believe the yaml config should be (mostly) correct?
>
> I find it strange because the bit file that is generated also has the nam=
e
> "usrp_n300_fpga_XG.bit".
>
> When loaded, "usrp_find_devices" returns:
>
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: XXXXXXX
>     claimed: False
>     fpga: HG
>     mgmt_addr: 127.0.0.1
>     name: ni-n3xx-XXXXXXX
>     product: n300
>     type: n3xx
>
> Is there something I might be missing somewhere?
>
> Many thanks, Kevin
>
> schema: rfnoc_imagebuilder_args         # Identifier for the schema used =
to
> validate this file
> copyright: >-                           # Copyright information used in
> file
> headers
>   Copyright 2023 Ettus Research, a National Instruments Brand
> license: >-                             # License information used in fil=
e
> headers
>   SPDX-License-Identifier: LGPL-3.0-or-later
> version: '1.0'                          # File version
> chdr_width: 64                          # Bit width of the CHDR bus for
> this
> image
> device: 'n300'
> default_target: 'N300_XG'
> image_core_name: 'usrp_n300_fpga_XG'
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000169dc3062df20d7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kevin,</div><div><br></div><div>confirm this is a =
bug. You can force the correct target by specifying=C2=A0</div><div><br></d=
iv><div>rfnoc_image_builder -t N310_XG [...your other arguments...]</div><d=
iv><br></div><div>...which we confirm works. We&#39;ll have a fix for this =
on the way.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail=
_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Feb 12, 2025 at 9:26=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:kevin=
.williams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Everyone,<br>
<br>
The header of my N300 yaml file is shown below, but this results in an HG<b=
r>
image being built, not the XG. (I am building this with UHD-4.8.)<br>
<br>
The HG image does contain my new RFNoC block, with the right endpoints etc.=
,<br>
so I believe the yaml config should be (mostly) correct?<br>
<br>
I find it strange because the bit file that is generated also has the name<=
br>
&quot;usrp_n300_fpga_XG.bit&quot;.<br>
<br>
When loaded, &quot;usrp_find_devices&quot; returns:<br>
<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 serial: XXXXXXX<br>
=C2=A0 =C2=A0 claimed: False<br>
=C2=A0 =C2=A0 fpga: HG<br>
=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>
=C2=A0 =C2=A0 name: ni-n3xx-XXXXXXX<br>
=C2=A0 =C2=A0 product: n300<br>
=C2=A0 =C2=A0 type: n3xx<br>
<br>
Is there something I might be missing somewhere?<br>
<br>
Many thanks, Kevin<br>
<br>
schema: rfnoc_imagebuilder_args=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Identifi=
er for the schema used to<br>
validate this file<br>
copyright: &gt;-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright information used in file<=
br>
headers<br>
=C2=A0 Copyright 2023 Ettus Research, a National Instruments Brand<br>
license: &gt;-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# License information used in =
file<br>
headers<br>
=C2=A0 SPDX-License-Identifier: LGPL-3.0-or-later<br>
version: &#39;1.0&#39;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # File version<br>
chdr_width: 64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Bit width of the CHDR bus for this<br>
image<br>
device: &#39;n300&#39;<br>
default_target: &#39;N300_XG&#39;<br>
image_core_name: &#39;usrp_n300_fpga_XG&#39;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000169dc3062df20d7e--

--===============3488046698990007171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3488046698990007171==--
