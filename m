Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6E7BE1F1E
	for <lists+usrp-users@lfdr.de>; Thu, 16 Oct 2025 09:36:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F302F3860ED
	for <lists+usrp-users@lfdr.de>; Thu, 16 Oct 2025 03:36:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760600204; bh=CBw2KUoq3T35v0lCawIvUrgO0f1MVy6P9OPfHCA3Dgc=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HG0r8DnaC+ztunsJaIP+gb4Eg/O64mzEHjIsszH+INJFUntTdin0OM8W2vEs1LW3z
	 2LUFU1HGJigsRtLMIC9VLqt+Y9R7YwBAiGlROsmwM63T86C2x+2Se0+TsfN5tIibrL
	 7HOhak9zfUF5Asu0C4Ybm5TSPpA4GjmBVfsW4J2lDlqQLRqUKESmhjHncgOpLfAND/
	 xiJmt6Hic9f7DPsIKLBEAPxX90LRYzGzbOJK2CFOW7palZv6uEPhESkqLStok4C4IS
	 E3SXtA2jgLyDuONuxpzqfGEPNQKpa3Zrbh0SbrG+zo3ahL2qxLV5LpUn4juj8KvEPT
	 ils6F3eSetm8w==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D9626385E08
	for <usrp-users@lists.ettus.com>; Thu, 16 Oct 2025 03:36:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2X29Q+Nz";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-63963066fb0so811965a12.3
        for <usrp-users@lists.ettus.com>; Thu, 16 Oct 2025 00:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1760600173; x=1761204973; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o0WwJtu9cAupVCkXs4jpASu0MoTG1w+k/slK8jbJpAk=;
        b=2X29Q+NzlrP4mK0A72wFv3Zc/ErdgbvNypLw2FDLNDVLiyR2NtcKb59kxBsVgdyPXu
         A606/6i2bcTdIXo1TO7p2sFgTtRz12RhtWERjnyBnkQ/VCgZUSDERrQs15mh7pjcu4Oj
         5mzqISh4nuOeeG8x4UWHDnrpJ0D74JqwXaZzMcj8jlMwNzYe2TH/vZzJMh3wyCov4acp
         pOE9BBlJOFzsiCX3TWb8ZXOhIhl6HKQB/aP2gYSQICK/DASDlwXFUG87d+x+7FzRroSU
         L0dGOxkMEIaV8+acYqtAfxSaqKe5xcJnQ/ECXw+jfcHftwJhdCLZFQTLbNvxFliIQZ2T
         +GoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760600173; x=1761204973;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o0WwJtu9cAupVCkXs4jpASu0MoTG1w+k/slK8jbJpAk=;
        b=bcoi90lNdk2Yi+/Jkz3WIDKoNGIuY+FfuD6wcsRVs2UwlKyhcmJshh6wj5rrDY4wyD
         W8TJYc85Ks7mVqIGy/xqErSp4anMH271292g35fXc9ZLgJRF2y5SuB3vPlX97dENXkdz
         ZBi2BjM2gHf8tC+Wr6mgAKnRp4UM/LK95XTABChN/J3GN3sMPJcZqt2qajl9kGXA6yXm
         eVm4gDJVYrxPjbpeEQeW4NNT4QwDyfSufQEi09vBkQvHR06dSGijuUMJZG/juIO/55jp
         sFeMOwHbqT69eYlurX3ih6dC4VxGBWp25vLG+8MCJ1UdlEi3glXab3zO7rNCiihX5U9s
         Zq8Q==
X-Gm-Message-State: AOJu0Yyzze5w+6LzIatLwV11OOVQ5FPee9Bn9/58e7xS4LgdgDNWt16l
	TiDlO4wC3+vvsj4PNC+BLDFZkMclPTy7xKRR3nGObnICqgFIx6ExRZ0kvuEb9IDrDJA08Jtd6Pn
	aZQy1wRmdhoOKkV+v4E1HPLb4XPuLxuHlyCafkAokH9H5XHwa77aslqJxAw==
X-Gm-Gg: ASbGnctorq1YY2ExiW7E+cV1cRYvDd/9vOZyAEdLE1laB94lHhlryH7hh4JsIkoLh5c
	z2pROm39QqGaCwwvRyU7sM7ILDjsFH8bgM/MeqWcIrIbxaRFX9j9gnLvpjFWKQWbvcZGYtnnJJJ
	Mt1xv8jobQvIePzqYxjC2hiGT7e9AW2z1+NFEqe5EN2SfAoDni2WpMXJpr5JOe4GhNvagC0/dCG
	450YjQAiVwCHlq8G8N/WrJNYBuTX3n0S982+nqhtGnYSzaJ2+TPyg621ffBIpG82Hics6YJfAMV
	fT9/Wy/0YTP3gvG0Xl+hP7ErOQ==
X-Google-Smtp-Source: AGHT+IEwHVpBQ6/CS4wn3+dq4kLVcCRssMjUlyUfI3miw5rskDp3zmOBLyxw2AMIKTKy5vjhRD+TNBKM3vEotqQB3yM=
X-Received: by 2002:a17:907:d86:b0:b40:8954:a8a9 with SMTP id
 a640c23a62f3a-b50ac0cc32amr3283786766b.34.1760600173204; Thu, 16 Oct 2025
 00:36:13 -0700 (PDT)
MIME-Version: 1.0
References: <lfcxVqCQU7aXNUjOutxoSdaYYohLoAYQUuvZ3W28JKQ@lists.ettus.com> <CAFOi1A5S3gx3d3yQNE0E7g2QVrjgoNW5E4ODfZNWG2ah4KOtoQ@mail.gmail.com>
In-Reply-To: <CAFOi1A5S3gx3d3yQNE0E7g2QVrjgoNW5E4ODfZNWG2ah4KOtoQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 16 Oct 2025 09:36:02 +0200
X-Gm-Features: AS18NWAGgOGmxQv4tBFuQzXuT-UhFOT0cM96GJA7Ivn-wJJbDlszow-3JjNBUuc
Message-ID: <CAFOi1A6PDoseq_j367U1E3td4U+-qn9xUHOYxzMOh7_LBTxtWg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: G276QS773E27SERNCAEGG7PUEVNV7UOX
X-Message-ID-Hash: G276QS773E27SERNCAEGG7PUEVNV7UOX
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDR within OOT RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G276QS773E27SERNCAEGG7PUEVNV7UOX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8980480524957794412=="

--===============8980480524957794412==
Content-Type: multipart/alternative; boundary="000000000000ea64e2064141abff"

--000000000000ea64e2064141abff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

...if you're on an earlier version, you'll need to manually put the IO port
HDL into the RFNoC block. You can use the replay block as reference.

--M

On Thu, Oct 16, 2025 at 9:35=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:

> Hey Ryan,
>
> I don't recognize that commit hash. The commit you need is at least:
> "509dfffc1b rfnoc_modtool: Render IO ports for new blocks". That's fairly
> recent, but it is in 4.9.
>
> --M
>
> On Wed, Oct 15, 2025 at 10:15=E2=80=AFPM <ryan.a.wolfarth@gmail.com> wrot=
e:
>
>> Hi Martin,
>>
>> I think I=E2=80=99ve done as you asked, but I still don=E2=80=99t see th=
e memory mapped
>> interface in the HDL. I=E2=80=99ve attached both files for reference.
>>
>> Because I=E2=80=99m not confident I created the YAML properly, I tried a=
gain with
>> the contents of the replay definition copied into my OOT block. That try
>> gave a similar result as the first. The associated files are attached an=
d
>> appended with =E2=80=9Cv2.=E2=80=9D
>>
>> Could this be a UHD version issue? We=E2=80=99re using 4.8.0.HEAD-0-g308=
126a4.
>>
>> Thank you,
>>
>> Ryan
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000ea64e2064141abff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>...if you&#39;re on an earlier version, you&#39;ll ne=
ed to manually put the IO port HDL into the RFNoC block. You can use the re=
play block as reference.</div><div><br></div><div>--M</div></div><br><div c=
lass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Oct 16, 2025 at 9:35=E2=80=AFAM Martin Braun &lt;<a href=3D"m=
ailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
ey Ryan,</div><div><br></div><div>I don&#39;t recognize that commit hash. T=
he commit you need is at least: &quot;509dfffc1b rfnoc_modtool: Render IO p=
orts for new blocks&quot;. That&#39;s fairly recent, but it is in 4.9.</div=
><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 15, 2025 at 10:15=E2=80=AFPM &lt;=
<a href=3D"mailto:ryan.a.wolfarth@gmail.com" target=3D"_blank">ryan.a.wolfa=
rth@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><p>Hi Martin,</p><p>I think I=E2=80=99ve done as you asked, bu=
t I still don=E2=80=99t see the memory mapped interface in the HDL. I=E2=80=
=99ve attached both files for reference. </p><p>Because I=E2=80=99m not con=
fident I created the YAML properly, I tried again with the contents of the =
replay definition copied into my OOT block. That try gave a similar result =
as the first. The associated files are attached and appended with =E2=80=9C=
v2.=E2=80=9D</p><p>Could this be a UHD version issue? We=E2=80=99re using 4=
.8.0.HEAD-0-g308126a4.</p><p>Thank you,</p><p>Ryan</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000ea64e2064141abff--

--===============8980480524957794412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8980480524957794412==--
