Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B40D37B353
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 03:11:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74707384AB7
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 21:11:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=quanttux-com.20150623.gappssmtp.com header.i=@quanttux-com.20150623.gappssmtp.com header.b="nJXSKS2B";
	dkim-atps=neutral
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D38D3847FC
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 21:10:58 -0400 (EDT)
Received: by mail-lj1-f182.google.com with SMTP id b7so27519782ljr.4
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 18:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanttux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=COJmpJvIXzChXCof0R/zyFdob0gsRDNHWOJK01yiy2o=;
        b=nJXSKS2BVdr/LuscRIjea2qacKzwBAM7wenwyUjTCyPS0PTLVGi4TMLQh0Pf+ifJso
         /TMErbPai8kfdlcfBOx6bWafYBdm5RX3xteZ4LZW4mcTzCQxA8SS2nbo7n1bo1UUThpQ
         SJd7xYVH+DyCvi5A7trnLh4iXUreXKj89jj/qUJd2DtcG1a2zSU57OuhEz8QjnranfDC
         IoiExAocZBE1Ek8pBzmzFBbvTdwEz4XK3sXjXbvzJZGAymoLwUqUWS2sFgp+GMDEFM1T
         pNI+Ti7LERtG/JiM2tWQYYm8M6xp36Ns07eg42msh3Buv/MmPRR4TeK43B61iT0AbizN
         AfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=COJmpJvIXzChXCof0R/zyFdob0gsRDNHWOJK01yiy2o=;
        b=MtYdOeND7tIWdy+4mEtuV54nqbSV1W80Ac23vQLFXq79P1aTKA6vYVaRj8DkT6UlTG
         mdUXzudcJnBrfL6w2QE7jPA+VzHZI76abmSHL/pd7GY+NvKW4ckOdSl3lQ/Vh4Emv7RX
         Ug0K24paxPQp9JFe7tKOAoBlPXWhO/+fCn7S8uvjXk50L0FtauEZrK6op02i+nLKR3fB
         ZPQD3HutlSiMYdg6HORGSqbeSSCalyWJSaQnr09SsqfVmFY9g4vKTLW+VVlViCLtPSaH
         E0pZFSmwLb5iNfVr3nJCDMbRFmxnx+7T2MrZmOues0uHSZZkttvLyjewsq0qc+qvStQ5
         /CdA==
X-Gm-Message-State: AOAM532otxlxqEy8Y+eEVvIJhPaeiq+4W63mnjitGF557GL3EEZzM+TP
	n6DKR6bRTj1zIZ45vG0J+5jo/vM1GkMuKoIZ4pCqjA==
X-Google-Smtp-Source: ABdhPJy1/TGyxMB/WIeCGIXzJ/MiKwlClv8W0unYpspeNZQ5uUnqkTlGZiodK3CFnuiRFYTMf9X53EQR6Rd0HtW1AFA=
X-Received: by 2002:a05:651c:2cd:: with SMTP id f13mr15559335ljo.76.1620781856964;
 Tue, 11 May 2021 18:10:56 -0700 (PDT)
MIME-Version: 1.0
References: <CABNzRJnCfSzBdzV5BrcrtUrGFqUj7D88g_=ZtF9c=3ZvmtJdfg@mail.gmail.com>
In-Reply-To: <CABNzRJnCfSzBdzV5BrcrtUrGFqUj7D88g_=ZtF9c=3ZvmtJdfg@mail.gmail.com>
From: Robin Coxe <coxe@quanttux.com>
Date: Tue, 11 May 2021 18:10:46 -0700
Message-ID: <CAKJyDk+DvRrPokbQM01BjWPwWcJcSyW-fYEPnr2wK6RC3Ojqew@mail.gmail.com>
To: wan <liuwsdr@gmail.com>
Message-ID-Hash: 5HN3NFKFOYDHDZF3J2V2WQSUTT6YKJUH
X-Message-ID-Hash: 5HN3NFKFOYDHDZF3J2V2WQSUTT6YKJUH
X-MailFrom: coxe@close-haul.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with thunderbolt 3 laptop
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5HN3NFKFOYDHDZF3J2V2WQSUTT6YKJUH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8042877439091431343=="

--===============8042877439091431343==
Content-Type: multipart/alternative; boundary="000000000000d7d49e05c217ae02"

--000000000000d7d49e05c217ae02
Content-Type: text/plain; charset="UTF-8"

This one works:
https://www.amazon.com/gp/product/B07KTLP44W/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1

On Tue, May 11, 2021 at 4:35 PM wan <liuwsdr@gmail.com> wrote:

> Hello,
>
> I would like to use the X310 with a thunderbolt 3 laptop (running Ubuntu)
> to get as much throughput as possible. I recall from a few years ago, the
> recommended solution is to install the 10 GbE network card accessory
> <https://www.ettus.com/all-products/10GIGE-KIT/> into the Akitio Node
> Lite <https://www.akitio.com/expansion/node-lite>expansion chassis.
> However, the Node Lite is EOL.
>
> Have you tested other Akitio chassis like the Node
> <https://www.akitio.com/expansion/node>, Node Titan
> <https://www.akitio.com/expansion/node-titan>, Node Duo
> <https://www.akitio.com/expansion/node-duo>, or expansion chassis from
> other brands?
>
> Have you also tested any 10 GbE to Thunderbolt adapters such as ones from
> OWC
> <https://www.owcdigital.com/products/thunderbolt-3-10g-ethernet-adapter>
> and Sonnettech
> <https://www.sonnettech.com/product/solo10g-tb3/overview.html>?
>
> Regards,
>
> Wan L
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d7d49e05c217ae02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This one works:=C2=A0=C2=A0<a href=3D"https://www.amazon.c=
om/gp/product/B07KTLP44W/ref=3Dppx_yo_dt_b_search_asin_title?ie=3DUTF8&amp;=
psc=3D1">https://www.amazon.com/gp/product/B07KTLP44W/ref=3Dppx_yo_dt_b_sea=
rch_asin_title?ie=3DUTF8&amp;psc=3D1</a></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 11, 2021 at 4:35 PM wan=
 &lt;<a href=3D"mailto:liuwsdr@gmail.com">liuwsdr@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div><div><div><div><div>Hello, <br><br></div>I would like to use the X310=
 with a thunderbolt 3 laptop (running Ubuntu) to get as much throughput as =
possible. I recall from a few years ago, the recommended solution is to ins=
tall the <a href=3D"https://www.ettus.com/all-products/10GIGE-KIT/" target=
=3D"_blank">10 GbE network card accessory</a> into the <a href=3D"https://w=
ww.akitio.com/expansion/node-lite" target=3D"_blank">Akitio Node Lite </a>e=
xpansion chassis. However, the Node Lite is EOL. <br><br></div>Have you tes=
ted other Akitio chassis like the <a href=3D"https://www.akitio.com/expansi=
on/node" target=3D"_blank">Node</a>, <a href=3D"https://www.akitio.com/expa=
nsion/node-titan" target=3D"_blank">Node Titan</a>, <a href=3D"https://www.=
akitio.com/expansion/node-duo" target=3D"_blank">Node Duo</a>, or expansion=
 chassis from other brands?<br><br></div>Have you also tested any 10 GbE to=
 Thunderbolt adapters such as ones from <a href=3D"https://www.owcdigital.c=
om/products/thunderbolt-3-10g-ethernet-adapter" target=3D"_blank">OWC</a> a=
nd <a href=3D"https://www.sonnettech.com/product/solo10g-tb3/overview.html"=
 target=3D"_blank">Sonnettech</a>?<br><br></div>Regards,<br><br></div>Wan L=
<br><div><div><div><br><br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d7d49e05c217ae02--

--===============8042877439091431343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8042877439091431343==--
