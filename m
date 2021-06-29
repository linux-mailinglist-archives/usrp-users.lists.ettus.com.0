Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 794A33B74A5
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 16:48:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 043BB3844F4
	for <lists+usrp-users@lfdr.de>; Tue, 29 Jun 2021 10:48:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fRV+J14i";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id BA247383AB4
	for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 10:47:15 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id d5so16298949qtd.5
        for <usrp-users@lists.ettus.com>; Tue, 29 Jun 2021 07:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=w1bkD6iLHBsDSxQz2He63r7as6tZJ6rcnFsFw2b5nHg=;
        b=fRV+J14iHPxkJuMWCWm75J97KjtmzTsGscftBvUoNricL+HzrhSxX4G8YTU2LKTCr0
         EFxZR+VXoF1dx7dA4+u23aXvRKTh8kNgEhBeQv7z02JqvFXf1Ub3d8rl7UbwDmZz2tYj
         b7fotckPjxSNNZHISWvYE9VaRNUVHwj2JCk0mGgis3AMo9zaXPX6uLFD1/ygFh3MrBqR
         VOb8OWoA6405oyCjPxb3cB3AdKx/h8xyACf0R1+vFZvtiEAN1M99WqkZRfm/lQOAGcOV
         6/hS7L1dTC14UKDGOP7HA0noMcRBDoW5LQ28sZmbhUoVki2LPpi8lwYI4WkQ/b5kYhTd
         wZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=w1bkD6iLHBsDSxQz2He63r7as6tZJ6rcnFsFw2b5nHg=;
        b=EhAWYwpNM/tRui7tZ7Zt2BTC/PeCaX5wa6O7+PaPQt3MoMvrQJTKD3bFUOkGr/DPJP
         oUv2jHl6aHVP83Mqrj7V0vqc6JHUuAFA2R21/X7f1R20Sskiww3voTNtNM42SB0TPSNg
         4R03wMc/YruQ7u0fB9AV3R7+VhI5ualbbVPyLxgVRz3a1qr+VpnN012sKq1RNqEOgnsb
         o6mZ7fRreNRjzMZ/I76yL9b/JE4TbOi6xqR2sJnbeyAiGC13eCrO5kqv/5hgEZbrLDHq
         ZMInRS9ZChTLMcn3OCxaw5Nj3ia5cgWXFv40dqeo37Zxt0nAwd83+sCqQT6itwesxsGO
         LH2A==
X-Gm-Message-State: AOAM533wvRrDqLD7Lku93J4lmcUkZH5xQVxItDS1//sZAYFTrswyZAYb
	VnFKQOjiMig0qdmAYyIvC+0Nk6EhsOx1UA==
X-Google-Smtp-Source: ABdhPJzHymA7Eq88j36B561OCIz5B+tkep5gP8cNbBQoV9wvUMBG6H3hls3PYnsxV9pLnskUJv7bpQ==
X-Received: by 2002:ac8:6781:: with SMTP id b1mr26773762qtp.259.1624978034857;
        Tue, 29 Jun 2021 07:47:14 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g16sm5485916qka.0.2021.06.29.07.47.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Jun 2021 07:47:14 -0700 (PDT)
Message-ID: <60DB3271.4020000@gmail.com>
Date: Tue, 29 Jun 2021 10:47:13 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <9gJ8YGQCerSDcqF04mlmG5UurcBIGwYZhKjgHo3HRLg@lists.ettus.com>
In-Reply-To: <9gJ8YGQCerSDcqF04mlmG5UurcBIGwYZhKjgHo3HRLg@lists.ettus.com>
Message-ID-Hash: ZZQI4WV2DCB2DSJDINP7A7LASXXBIGJI
X-Message-ID-Hash: ZZQI4WV2DCB2DSJDINP7A7LASXXBIGJI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZQI4WV2DCB2DSJDINP7A7LASXXBIGJI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2811042706177543704=="

This is a multi-part message in MIME format.
--===============2811042706177543704==
Content-Type: multipart/alternative;
 boundary="------------000401030503090007020002"

This is a multi-part message in MIME format.
--------------000401030503090007020002
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/29/2021 10:34 AM, rblack@swri.org wrote:
>
> 20 MSamp/sec. So if we, say, gate the signal on/off 10 microsec on/10=20
> microsec off, then we=92d have 200 samples on, 200 samples off.
>
>
> thx rb
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
You could also consider looking at the streaming-control primitives in=20
closer detail:

https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html

For example "num_samples_and_more" mode allows you to send more samples=20
in the future (at a time controlled by the
   time_spec) parameter.

You can also arrange for streaming to be stopped at a particular time as=20
opposed to "now".



--------------000401030503090007020002
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/29/2021 10:34 AM, <a class=3D"mo=
z-txt-link-abbreviated" href=3D"mailto:rblack@swri.org">rblack@swri.org</=
a>
      wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:9gJ8YGQCerSDcqF04mlmG5UurcBIGwYZhKjgHo3HRLg@lists.ettus=
.com"
      type=3D"cite">
      <p>20 MSamp/sec. So if we, say, gate the signal on/off 10 microsec
        on/10 microsec off, then we=92d have 200 samples on, 200 samples
        off.</p>
      <p><br>
      </p>
      <p>thx rb</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    You could also consider looking at the streaming-control primitives
    in closer detail:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/structuhd_1_1stream__cmd__t.html">https://files.ettus.com/manual/str=
uctuhd_1_1stream__cmd__t.html</a><br>
    <br>
    For example "num_samples_and_more" mode allows you to send more
    samples in the future (at a time controlled by the<br>
    =A0 time_spec) parameter.<br>
    <br>
    You can also arrange for streaming to be stopped at a particular
    time as opposed to "now".<br>
    <br>
    <br>
  </body>
</html>

--------------000401030503090007020002--

--===============2811042706177543704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2811042706177543704==--
