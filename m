Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D51D0474934
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 18:23:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B53BE385291
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 12:23:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ctCaqBuP";
	dkim-atps=neutral
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 35FC4384727
	for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 12:22:39 -0500 (EST)
Received: by mail-oi1-f177.google.com with SMTP id bj13so28089107oib.4
        for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 09:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UaBOzyG8WD+0lDH79hAxS9swdVTkT5LX3srXVsqIdAg=;
        b=ctCaqBuPdwAV7dI4gMb9+ziUpOqWYBbcXCky5fnbBIIO8XdOyQVHpFYGnObuD+xrUm
         NDC+z8yMAiIuHZ3iKJbdgvK7BsEuAERmztoruTvahtruAFdCZeuGRZlYhEQBbgDGkGgd
         kPVhecg0pdRmq5Ov8gDWrAx4LufgRD3oZ/jFWCSfG6U3OApOTrHN04v3C51oa09NADWg
         z9DFMw3ElOvPX+G+4sFXXYAqvGB43I6M8FWuvqGPYOEPMEAIW2BQBedGrN+16mp73D9a
         zW+Uz4wXMcOzhouV6v/IMNXhgi1YUo9jZnQk+U5XbpS17+ohkZc1g/f+zfH7XyEbmc7B
         2UUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UaBOzyG8WD+0lDH79hAxS9swdVTkT5LX3srXVsqIdAg=;
        b=i3ccnYiNJUG3x8nwTUSyGIvy9uEsPBrWMtmMam/Nq1lfGJ9chu98eUu/aB4DpnEUoC
         oZSq83gnxZ7EIjgx30Cq7jXBxdkP2sz6Fn+4tNwLQFfkxI0vLjXF2i45HLX711oVXwQ6
         HN8dFqKwPBQ+RiA87DzPIgaJN+I9/okRQoVQNPokC1NlfxVahKUirIqXJFx5KJuE5Exc
         t0r7+6Fisy9b9XjNCQsltD3p5JeGxBKMKD42eQDlYnmhwDGOxrBot5OdAEvNhsCgA53K
         hiuAXi4WoGC9eNxjHTjoImY0h1sK0EwmctANrilWzTqSB/gZAYbHmkmbtUpGWQRkwW14
         5zJA==
X-Gm-Message-State: AOAM531RldqT6H1TeU+hvGnCnaq9QqHf0QqF0OZ7TaRnT0qzFdPKOkZW
	dlFQP4htcv48fi2qIkusj1Ms4mudHmqVUfprcsUkfUn4
X-Google-Smtp-Source: ABdhPJz4xwzi63nLxH9iFh5HeIQHa845TeuFrciRpqhTUfMCV06Z/RbTTASLSA3GUpN+geFd3pwxPdVzY4M23SNnv6s=
X-Received: by 2002:a05:6808:dc5:: with SMTP id g5mr5351361oic.58.1639502558492;
 Tue, 14 Dec 2021 09:22:38 -0800 (PST)
MIME-Version: 1.0
References: <CANP_axJMj3YB+vubEr0iTi5PLjwqGUoi7KnD3PfiJCqZOusG2g@mail.gmail.com>
 <bc67749c-2f81-9c2a-7498-6d4fe29e64a6@gmail.com>
In-Reply-To: <bc67749c-2f81-9c2a-7498-6d4fe29e64a6@gmail.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Tue, 14 Dec 2021 20:22:27 +0300
Message-ID: <CANP_axKSJZokaZmg=22Zcqi0Q0myAPM2p=z-csgqgChxmfB1Mg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UMTJMOSZO7XIOVBNTGIPCJMQC7ODVN4T
X-Message-ID-Hash: UMTJMOSZO7XIOVBNTGIPCJMQC7ODVN4T
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP and GPS antennas
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UMTJMOSZO7XIOVBNTGIPCJMQC7ODVN4T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1436073176483662577=="

--===============1436073176483662577==
Content-Type: multipart/alternative; boundary="0000000000009b7b5b05d31e6f6e"

--0000000000009b7b5b05d31e6f6e
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thanks for the quick reply! Is the bias-tee available only for the GPS port?
Can you similarly provide DC power to an LNA through the RF ports?

Best,
Temir

On Tue, Dec 14, 2021 at 8:17 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-12-14 12:12, Temir Karakurum wrote:
>
> Hi there,
>
> A few months ago I ended up with a pair of USRP E312's and u-blox
> ANN-MB-00 GPS antennas. I was able to synchronize both devices and acquire
> properly aligned samples and things are looking good.
>
> However, today I realized that the u-blox antenna I have is an active
> antenna and checking its datasheet it looks like it requires 15 mA/3-5 V DC
> supply for the integrated LNA. Does this mean that the GPS port of 312 has
> a bias-tee that supplies the necessary currents? If there is a bias-tee,
> where can I find information about it?
>
> Also checking the Ettus store, it looks like different antennas are
> compatible with different USRP models. For instance "3V Active GPS Antenna
> for N series" is apparently compatible with E310 both not compatible with X
> and B series. Which factor determines the compatibility?
>
> Best regards,
> Temir
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> I think the bias-T on both X and B series puts out +5V.  MOST GPS antennas
> are perfectly happy to deal with anywhere between 3-5V.
>
> Nearly all GPS antennas these days are *active* antennas and MOST are 3-5V
> happy.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009b7b5b05d31e6f6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thanks for the quick reply! =
Is the bias-tee available only for the GPS port?</div><div>Can you similarl=
y provide DC power to an LNA through the RF ports?</div><div><br></div><div=
>Best,</div><div>Temir</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Dec 14, 2021 at 8:17 PM Marcus D. Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-12-14 12:12, Temir Karakurum
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi there,
        <div><br>
        </div>
        <div>A few months ago I ended up with a pair of USRP E312&#39;s and
          u-blox ANN-MB-00 GPS antennas. I was able to synchronize both
          devices and acquire properly=C2=A0aligned samples and things are
          looking=C2=A0good.=C2=A0</div>
        <div><br>
        </div>
        <div>However, today I realized that the u-blox antenna I have is
          an active antenna and checking=C2=A0its datasheet=C2=A0it looks l=
ike it
          requires 15 mA/3-5 V DC supply for the integrated LNA. Does
          this mean that the GPS port of 312 has a bias-tee that
          supplies the necessary currents? If there is a bias-tee, where
          can I find information about it?</div>
        <div><br>
        </div>
        <div>Also checking the Ettus store, it looks like different
          antennas are compatible with different USRP models. For
          instance &quot;3V Active GPS Antenna for N series&quot; is appare=
ntly
          compatible with E310 both not compatible with X and B series.
          Which factor determines the compatibility?</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Temir</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    I think the bias-T on both X and B series puts out +5V.=C2=A0 MOST GPS
    antennas are perfectly happy to deal with anywhere between 3-5V.<br>
    <br>
    Nearly all GPS antennas these days are *active* antennas and MOST
    are 3-5V happy.<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009b7b5b05d31e6f6e--

--===============1436073176483662577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1436073176483662577==--
