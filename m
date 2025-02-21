Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F99A3EEC6
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 09:36:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 218D9385D06
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 03:36:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740126960; bh=cpZCBWko8OGRo2fpPSKj5GlmYQOZ/ti3w1G5ksyI5Bw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ALe+CNHsAR2Q3RUKdVNbrVpxBuFfzpuEWySLbzjop3FoCkr9pP1PK9/gXEurYHl5Q
	 oelVuMWj0fjNYwL1R9eh/eq+khEKjYlu3us9cH/tOgR5xwIfSxHeeVDy26uoWSPS9l
	 bv7Foj7ugjrA/gZTW7IXUGazljZDDQl1OR7qcL3pqpSuwccV5otLVMwtnzUq089XYO
	 lwJr/0txJwLwufzhC1GqnsxGaNctLn+6/bFcQ4rulBrC0JSkfECAf7JAZO8XM6n4r4
	 GNsW+FaJWIHx5o23n8+TU/K0YNTdK4OhuBuv+gPuzP+BbGpD7u1UQ+xPLBgELfVt+b
	 MHS61FYY2JfCg==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 350F4385A18
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 03:35:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="VVOtYx/3";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e04064af07so1784260a12.0
        for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 00:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740126954; x=1740731754; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MWapjUbLleVK/0RAikHaAA1ijbPE4AIgUaLr0W6z3kc=;
        b=VVOtYx/3a5YBtBkp4IM/D/+mhs0fDTJImkfoVAWcz9+FTttgG1CBSuTKKFtcCB3gFf
         TIPVAr9YmDtYG0f2k1Xnm5cQL8C//vAT/m2rmFzfs/IuJrb6ZiVuu7N/b+w7I1tn4LsK
         T0IIsPHAWC78Ez2RZum4eophm6prybI0eOH7+GSySDME2kji6ddu+QOBlDriRGXiE/gR
         mZFpUbQQPavybEDMabz7Dsw9e2ibfdyDvl6PNzgZ16QHCTDr16TWUWemwhQ9rDxs3KNq
         Jd/gAwRwz5C+TTsQcjNtlrIJdmJExgkDk6+0Y4Pi5BQX+saQtyPs+gTm/FtBnbo9osa3
         vziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740126954; x=1740731754;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MWapjUbLleVK/0RAikHaAA1ijbPE4AIgUaLr0W6z3kc=;
        b=MXUfoPu3U4w+daYUkcA6APgDEK+n7JzyVSiiGBQxTybGUH51SPpu3jp//+teckSpnb
         9VncV4Ge26XddF00sThH4wWhqyZx3vR6Fx/3em6Afqjwd2CNM/8g82sU+3NH243COn4A
         Ixpl31dXEvt/3sylzcM+frWJk9PrburZ5IPKbDgw9w4Sh1OKdkz5L2lu2T1td4lUkUR1
         daCXSEhIxAQg2HMrl8ky8EdMMSKtuL0v+C+84o8PDJr12p7q2dgzQsmBJZV1tWeXIJKN
         /GXko+ZSk8e8GHvgDmZ/QLQZkDjhrBOXEsRxw9KYF+GM5VclKASHwUKq8KTaJEWsjPpE
         vO8w==
X-Gm-Message-State: AOJu0YwjOj1eXNYnC997iQXAoOm6uYhWPc+K2Dm8kSpfkiqCAmEZlAJk
	nQycHAZ4MsowcKepatHnUBUjWeNlXh/qknXOFCagFlM5Rd2RVWBdjMgrhgfWYtoPvYJsEqWghgR
	aAdVdh4vj6+rrT4ZeciwfFdeH5oIgqh9AS1VWWXWudmtzbPsebUc=
X-Gm-Gg: ASbGnctuYXyIFEEUAc45uCbmuUvgHhC0szkS3Skr/5irleRVnYwOU2yL/HV48MTCh6g
	Nj7OhFEpdtqjpqITwkQKWhaoVj7XCdSwlEuAWYrGZsSP+ZZURsiWsPSCWWTmPTGbv6LzJ1IN+2m
	XqLU0GRdkJggKSYP9EogSzNyDzUkEqpzuwAcQu
X-Google-Smtp-Source: AGHT+IFIWONhki0GJJr0kMBtN7HVmrxjqPWUYvRHuC6DFU5cS9nOw+/vZZnMWgiGeqlmjwnHazz0e5o8FeAl2VekviU=
X-Received: by 2002:a05:6402:2116:b0:5e0:8ab6:65fa with SMTP id
 4fb4d7f45d1cf-5e0b710d2a9mr1964740a12.19.1740126954050; Fri, 21 Feb 2025
 00:35:54 -0800 (PST)
MIME-Version: 1.0
References: <vBIl8so5zllTJTE6yftT2qIPSseJoZccMjlpodW34@lists.ettus.com>
In-Reply-To: <vBIl8so5zllTJTE6yftT2qIPSseJoZccMjlpodW34@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 21 Feb 2025 09:35:43 +0100
X-Gm-Features: AWEUYZkaStuo_RCKszgs709FVeE3ps7O9l3uYDLHh1m9Gec3Y1paWwsCvbRk1WE
Message-ID: <CAFOi1A6RT4Ak1Kgt8JDyygrNp+tEbws7SZDSjyFELr4FQK_1OA@mail.gmail.com>
To: anjana.krishnan@technosci.com
Message-ID-Hash: EN6545R3K4WQDBBMVWSLN7VUMJ7CLPKQ
X-Message-ID-Hash: EN6545R3K4WQDBBMVWSLN7VUMJ7CLPKQ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build UHD image from GRC file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EN6545R3K4WQDBBMVWSLN7VUMJ7CLPKQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3798857389422811914=="

--===============3798857389422811914==
Content-Type: multipart/alternative; boundary="000000000000f5f6cd062ea2e0e1"

--000000000000f5f6cd062ea2e0e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we did a lot of upgrades to rfnoc_image_builder. You might have to update
to the latest UHD. Problem is, if you update UHD then you also have to
update GNU Radio, which means building both from source. Do you know how to
do that?

--M

On Fri, Feb 21, 2025 at 6:36=E2=80=AFAM <anjana.krishnan@technosci.com> wro=
te:

> Hi,
>
> I have installed UHD v4.1, GNU Radio v3.10 and Vivado v2019.1 in
> Ubuntu22.04.
>
> The rfnoc_image_builder was used to build the UHD image. While building
> the UHD image using the yaml file the process was successful, however
> building using the grc file I encounter the following error:
>
> [INF] Converting GNU Radio Companion file to image builder format
>
> Traceback (most recent call last):
>
> File "/usr/local/bin/rfnoc_image_builder", line 222, in <module>
>
> sys.exit(main())
>
> File "/usr/local/bin/rfnoc_image_builder", line 199, in main
>
> config, source, device, image_core_name, target =3D image_config(args)
>
> File "/usr/local/bin/rfnoc_image_builder", line 128, in image_config
>
> config =3D image_builder.convert_to_image_config(config, args.grc_blocks)
>
> File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 500, in convert_to_image_config
>
> seps =3D {item["name"]: item for item in grc["blocks"] if
> item["parameters"]["type"] =3D=3D 'sep'}
>
> File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 500, in <dictcomp>
>
> seps =3D {item["name"]: item for item in grc["blocks"] if
> item["parameters"]["type"] =3D=3D 'sep'}
>
> KeyError: 'type'
>
> The path directory of GRC block descriptions is set to
> /usr/local/share/gnuradio/grc/blocks. Is this path correct?
>
> What could be the possible reasons for this error? How can it be resolved=
?
> Can you please help.
>
> Thanks in advance.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f5f6cd062ea2e0e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>we did a lot of upgrades=
 to rfnoc_image_builder. You might have to update to the latest UHD. Proble=
m is, if you update UHD then you also have to update GNU Radio, which means=
 building both from source. Do you know how to do that?</div><div><br></div=
><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 21, 2025 at 6:36=E2=80=AFA=
M &lt;<a href=3D"mailto:anjana.krishnan@technosci.com">anjana.krishnan@tech=
nosci.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hi,</p><p>I have installed UHD v4.1, GNU Radio v3.10 and Viva=
do v2019.1 in Ubuntu22.04.</p><p>The rfnoc_image_builder was used to build =
the UHD image. While building the UHD image using the yaml file the process=
 was successful, however building using the grc file I encounter the follow=
ing error:</p><p><code>[INF] Converting GNU Radio Companion file to image b=
uilder format</code></p><p><code>Traceback (most recent call last):</code><=
/p><p><code>  File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 222=
, in &lt;module&gt;</code></p><p><code>    sys.exit(main())</code></p><p><c=
ode>  File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 199, in mai=
n</code></p><p><code>    config, source, device, image_core_name, target =
=3D image_config(args)</code></p><p><code>  File &quot;/usr/local/bin/rfnoc=
_image_builder&quot;, line 128, in image_config</code></p><p><code>    conf=
ig =3D image_builder.convert_to_image_config(config, args.grc_blocks)</code=
></p><p><code>  File &quot;/usr/local/lib/python3/dist-packages/uhd/imgbuil=
der/image_builder.py&quot;, line 500, in convert_to_image_config</code></p>=
<p><code>    seps =3D {item[&quot;name&quot;]: item for item in grc[&quot;b=
locks&quot;] if item[&quot;parameters&quot;][&quot;type&quot;] =3D=3D &#39;=
sep&#39;}</code></p><p><code>  File &quot;/usr/local/lib/python3/dist-packa=
ges/uhd/imgbuilder/image_builder.py&quot;, line 500, in &lt;dictcomp&gt;</c=
ode></p><p><code>    seps =3D {item[&quot;name&quot;]: item for item in grc=
[&quot;blocks&quot;] if item[&quot;parameters&quot;][&quot;type&quot;] =3D=
=3D &#39;sep&#39;}</code></p><p><code>KeyError: &#39;type&#39;</code></p><p=
>The path directory of GRC block descriptions is set to /usr/local/share/gn=
uradio/grc/blocks. Is this path correct?</p><p>What could be the possible r=
easons for this error? How can it be resolved? Can you please help.</p><p>T=
hanks in advance.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f5f6cd062ea2e0e1--

--===============3798857389422811914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3798857389422811914==--
