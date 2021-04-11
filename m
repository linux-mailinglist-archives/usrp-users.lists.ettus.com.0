Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A1A35B772
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 01:41:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96C26384137
	for <lists+usrp-users@lfdr.de>; Sun, 11 Apr 2021 19:41:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="CnjFh6fx";
	dkim-atps=neutral
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mm2.emwd.com (Postfix) with ESMTPS id A9699383EC0
	for <usrp-users@lists.ettus.com>; Sun, 11 Apr 2021 19:41:13 -0400 (EDT)
Received: by mail-vs1-f43.google.com with SMTP id x123so4922712vsb.10
        for <usrp-users@lists.ettus.com>; Sun, 11 Apr 2021 16:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aUm+QuDaTjfDJsg9Nb9hS3fc0w923/9WDzIHSWnVkeE=;
        b=CnjFh6fxSqPpRvNJBufwhpSuWOr57LduZqOrLuUVS3vIQrM9ZLzrkZSTaX3ZBvo4Vf
         4FhVUhuv4xVpd1s3Zb/S2fleFihoxE1nqEVkW6w5YZ01O7wQPiKN+sHjSROq0M+Lh8bD
         2c+UmxZTJQgnR7MqBEhWM2NBwtH2AJ3tOinDDEzY1FYTaXS2LLe92cZxlmTgA2K77nsH
         3ug6b2aHnZrNWcKJejN9wWdXylsdog8mXks6vTnw/9gRIhgGeEZeVbOIfXkPWaOP4/W6
         N9VQeKRy6pT6rjYy6KDymInTtmo8f9FHNbVxOkfl/ov+NdkPlnmVVMsQcCjL7Hbfs4vS
         WAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aUm+QuDaTjfDJsg9Nb9hS3fc0w923/9WDzIHSWnVkeE=;
        b=l9zX1Yq6xrwE0prHyRF/CDRNLWvNE/6t0NKw0VIyzMEmK/33H5XKwJXBZ+g7/rhMMt
         uWrMqvO5StpwIL0deULimgzrt0mZJaqh/sNjh9y6n8a4nas4yPUUGWyx57UtuGSvZGcg
         V+H40deJa44QpKIJ75dZ9yW1ngHmZTW78jqQrM7TdXqg0xSPM+c5oQVfCDO20t0olrzk
         XKYg4teoiaLSU8wcJRUgj2/13hgLHzvaUV/44BvBrCar6CQy3KUznFsTYoNnrs4G1Zjr
         YRyHcdEn0q3IurhSDb6q4/NOOG/XNgAF+1vm8HmeBMDF++Ds/ywey4qdWsZGKjz56SEO
         YhhQ==
X-Gm-Message-State: AOAM530RGUlkTgK/N2egpaKmJQ3W04uLZZb0ZjjKwf6C1l8vCjptxROL
	KEyOpbep8cidIiQKZ32ytNYd96OWfWG7y0lGVnmlWw==
X-Google-Smtp-Source: ABdhPJzcbYhEvTtWlK5XimOI1AuJENycskeT7hlF0y+87RGXCtSdMpC9BstRaCQcJM3UWR1wi5E1KBdJixGZVpKe7xs=
X-Received: by 2002:a05:6102:124a:: with SMTP id p10mr17754709vsg.17.1618184473241;
 Sun, 11 Apr 2021 16:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM@lists.ettus.com>
In-Reply-To: <VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM@lists.ettus.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Mon, 12 Apr 2021 09:41:02 +1000
Message-ID: <CALNMZ8Xe05G-G74266ENMoPVha-wirT0He5wmkJYUY0hGpe19A@mail.gmail.com>
To: page heller <pageheller@gmail.com>
Message-ID-Hash: HEE3RDLCS4C36RW2GNE2HEPXK3HYTXAK
X-Message-ID-Hash: HEE3RDLCS4C36RW2GNE2HEPXK3HYTXAK
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HEE3RDLCS4C36RW2GNE2HEPXK3HYTXAK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2953551529936272904=="

--===============2953551529936272904==
Content-Type: multipart/alternative; boundary="000000000000b57c8b05bfbaee9a"

--000000000000b57c8b05bfbaee9a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Page,

When you say "I can reliably capture 400-500k samples sized files", do you
actually mean 400-500 *kilo**byte* sized files?

Using tips received from yourself and others, I can now capture around 800
kilobytes of data before I see any overflows.  This is equivalent to:

   - 100 kilosamples on 1 channel at 50 Msps
   - 50 kilosamples on 2 channels at 25 Msps

Regards,
Brendan.



On Sat, Apr 3, 2021 at 11:59 PM <pageheller@gmail.com> wrote:

> Ken and Branden, I have UHD running on a Raspberry Pi 4 B 8Gb. It was a
> quite tedious install. It wasn=E2=80=99t missing 4-5 dependencies, but 20=
-30. It
> took me 2 weeks, 8-hours a day to figure this out. I am operating on the
> Raspberry Pi OS (formerly called Raspian). And, of course, as they upgrad=
e
> the OS, this process will only be good for a short period of time.
>
> One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep up with the=
 B-210
> and I get an overflow when capturing 20MSPS on 2 channels at about 500k
> samples. I don=E2=80=99t know if this is hardware or software, but if any=
one knows
> of a solution, I=E2=80=99m all ears. Having said that, I can consistently=
 and
> reliably capture 400-500k samples sized files.
>
> I=E2=80=99d be happy to share the install instructions. They are lengthy.=
 -page
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b57c8b05bfbaee9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Page,=C2=A0=C2=A0<div><br></div><div>When you say &quot=
;I can reliably capture 400-500k samples sized files&quot;, do you actually=
 mean 400-500 <b><u>kilo</u></b><span style=3D"font-weight:bold"><u>byte</u=
></span>=C2=A0sized files?</div><div><div><br></div><div>Using tips receive=
d from yourself and others, I can now capture around 800 kilobytes of data =
before I see any overflows.=C2=A0 This is equivalent to:</div><div><ul><li>=
100 kilosamples on 1 channel at 50 Msps</li><li>50 kilosamples on 2 channel=
s at 25 Msps</li></ul>Regards,</div></div><div>Brendan.</div><div><br></div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Apr 3, 2021 at 11:59 PM &lt;<a href=3D"mailto:pageh=
eller@gmail.com">pageheller@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><p>Ken and Branden, I have UHD running=
 on a Raspberry Pi 4 B 8Gb. It was a quite tedious install. It wasn=E2=80=
=99t missing 4-5 dependencies, but 20-30. It took me 2 weeks, 8-hours a day=
 to figure this out. I am operating on the Raspberry Pi OS (formerly called=
 Raspian). And, of course, as they upgrade the OS, this process will only b=
e good for a short period of time.</p><p>One caveat; the pi USB 3.0 interfa=
ce can=E2=80=99t quite keep up with the B-210 and I get an overflow when ca=
pturing 20MSPS on 2 channels at about 500k samples. I don=E2=80=99t know if=
 this is hardware or software, but if anyone knows of a solution, I=E2=80=
=99m all ears. Having said that, I can consistently and reliably capture 40=
0-500k samples sized files.</p><p>I=E2=80=99d be happy to share the install=
 instructions. They are lengthy.  -page</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b57c8b05bfbaee9a--

--===============2953551529936272904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2953551529936272904==--
