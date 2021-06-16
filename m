Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D36723AA61F
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 23:24:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AFBC9384844
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 17:24:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RiQ9VhDo";
	dkim-atps=neutral
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id B8E2F384450
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 17:23:54 -0400 (EDT)
Received: by mail-lj1-f171.google.com with SMTP id a21so824124ljj.1
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 14:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qkWZAsutT/jyFnH6Cm63SvV7sre7mkng10IV2YBLBaQ=;
        b=RiQ9VhDo8twKv57KYVJTW+R7bJN2fqujlf1ZySLMeUBkMy+L1ZPEgC7Yby0+bUpkxn
         Si9z1RTIo6oHHONP1MqMS9854zo7Ks625yjLivfCcuBdHwMyjPM+z6XPr9SpI5PLm/Ux
         SMPh24nrre87XBpb/7IIH3GKHRxr5RVvzhVMEfXegdrHdfxvXbxWFdfe9CIVssXJdunV
         JZ2o7ycvgetgii7BdhNEsIL5dlRGUo9ZbaQiaxvtOacSXfBlimaa8E8DVTSdLJ1EjCvI
         x5aKzM+h/GK++3mjXvcBTOti8IhAKYLy8pEtyjKKmZAU3WGz9xlXPv8EFEcxz105K1xi
         svtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qkWZAsutT/jyFnH6Cm63SvV7sre7mkng10IV2YBLBaQ=;
        b=JKEZL8ItNJz/W8gx4RSEiZtOAaRoe6J0J/jL10RaSNu2TV0aibjVAjXMfyaBDoUDAz
         Brgjz7FF4k2AoSoVENiGTb5ZJAR7LYqxVigam9V15wv9+tqUyl0zdaSnJ78lugA5KMmJ
         tHp9aryieFDAF0LKXcJwmPVsz2IzP7R7KwC7EhU0reeTtFibryvze7sqKgT9meNvvgMp
         Oas6HBYGxlT73pC5bxj6XSSlVrxaTnnMUJPDebAQwiRt+Pk8KrHLgrVrdoJf0i2OKWBw
         S+KxJrOCXnShpHf39NnhzBOlBWFDhKNo03G1X2mspliqfCMZmzySPQB7yZlBboEZyHjS
         mHWw==
X-Gm-Message-State: AOAM530J51ssc4tHYBCBN4XlYvZZT455FOoGlU8K0378axRmXR5h6c73
	inVGxB4M4RvCgpXpZ1UjMdplAe54F6ZUWsFEuio=
X-Google-Smtp-Source: ABdhPJy4f9DlyfAZSGcIjVduXc4VewDrk0i/MGeoZYS15GWC3rbVj4ZVYSzb9huanWOcKIwzzhT/5nXJkpFjqLNqjNw=
X-Received: by 2002:a2e:8814:: with SMTP id x20mr1643195ljh.394.1623878633388;
 Wed, 16 Jun 2021 14:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <PAENj2GQY2vk2Ain2dloCTYHmgmsIPkBQYMuEy8YQ@lists.ettus.com>
In-Reply-To: <PAENj2GQY2vk2Ain2dloCTYHmgmsIPkBQYMuEy8YQ@lists.ettus.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Wed, 16 Jun 2021 17:23:42 -0400
Message-ID: <CACwKM9J0yXYzqmggD0t9fk+QRGesO3XmCw9577MSxfqV7Ndf7Q@mail.gmail.com>
To: rblack@swri.org
Message-ID-Hash: SSKUVZJ5O66KWMVC65XVQQGV2F2GFAP7
X-Message-ID-Hash: SSKUVZJ5O66KWMVC65XVQQGV2F2GFAP7
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Software Loopback RFNoC TX/RX same flowgraph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SSKUVZJ5O66KWMVC65XVQQGV2F2GFAP7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8571958225150000735=="

--===============8571958225150000735==
Content-Type: multipart/alternative; boundary="0000000000001a00ff05c4e8b5da"

--0000000000001a00ff05c4e8b5da
Content-Type: text/plain; charset="UTF-8"

yes, you are correct about the HA vs XA (although i haven't tried XA yet).
Also, yes the image type shouldn't have any effect on the patch as the
patch is for gr-ettus which  doesn't have anything to do with the image
itself, just how it's initialized. The HA (or in your case XA) image needs
to be synthesized using a vivado license and the rfnoc_image_builder since
Ettus doesn't include that in the UHD source. If you want to build an XA
image, i guess you can just use:
default_target: 'X310_XA'
that should tell the image builder to pull together a 10G links Ethernet
link and an Aurora link.

On Wed, Jun 16, 2021 at 3:57 PM <rblack@swri.org> wrote:

> Sorry I see that the HA just indicates the image built for 1G. We intend
> to use 10G (XA), but I doubt that this has any effect on the patch.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001a00ff05c4e8b5da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>yes, you are correct about the HA vs XA (although i h=
aven&#39;t tried XA yet). Also, yes the image type shouldn&#39;t have any e=
ffect on the patch as the patch is for gr-ettus which=C2=A0 doesn&#39;t hav=
e anything to do with the image itself, just how it&#39;s initialized. The =
HA (or in your case XA) image needs to be synthesized using a vivado licens=
e and the rfnoc_image_builder since Ettus doesn&#39;t include that in the U=
HD source. If you want to build an XA image, i guess you can just use:<br><=
/div><div>default_target: &#39;X310_XA&#39;</div><div>that should tell the =
image builder to pull together a 10G links Ethernet link and an Aurora link=
.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Jun 16, 2021 at 3:57 PM &lt;<a href=3D"mailto:rblack@swr=
i.org">rblack@swri.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>Sorry I see that the HA just indicates the image b=
uilt for 1G.   We intend to use 10G (XA),  but I doubt that this has any ef=
fect on the patch.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001a00ff05c4e8b5da--

--===============8571958225150000735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8571958225150000735==--
