Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 436BF424D73
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 08:54:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4F3A384818
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 02:53:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=unifi.it header.i=@unifi.it header.b="Stlmbumq";
	dkim-atps=neutral
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 863EB383E84
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 02:53:14 -0400 (EDT)
Received: by mail-lf1-f54.google.com with SMTP id b20so20945545lfv.3
        for <usrp-users@lists.ettus.com>; Wed, 06 Oct 2021 23:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=unifi.it; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7YpwF1ROQnwA4cWkxe6/y/nrXjiAOExVK3d+tnsjk5U=;
        b=StlmbumqiN3wmCg2NnbNWATNxoqOwi8Vkh2FGOBRDpV7a5nJPtqLfzYdcPu9MuWNI/
         qnQe4ieK/Q3b/n9qwqTSMYlgAuA+mYOv8+jSXXszTmN1WFrttNsnhvjXM12LooK1htBf
         BgCqALbEmGwuYEdA1RddEgM4LmkQS3W2IVZbydti3iQO9wl2Zntwz6NJc000pN/E3N+1
         9nIKlzC6lKBujFz64xvkAVpydMfO6/gb/e+gW1dRmz6hGh0hEu84E3vlIOprlAc2uGYm
         92gC6I3nPsb4uQIKGzPzf7Kqe+KF92l11Hzwk3ZbCwQIZYVvEgUg5ExB9129m0rDRR6s
         pnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7YpwF1ROQnwA4cWkxe6/y/nrXjiAOExVK3d+tnsjk5U=;
        b=bdgLePfaotgCikGenrHb6YWC0OxJGsJXgGWW+TvNTrDgeovO61tgZHEojdaTlEML1z
         26cZfmw6QIjNWRb22pd2CTgajA8aOB7VpjZxz41/4qN02coBLGXDPpFdqXsqhp8Fc7Ea
         4Ua+wMyvh8P7GEV3a7k01N/QlJpopC1bVUzNt5b7ANRKQm/j8mG/pHSeUUwEUJOIuVaY
         nyClfCUzgaIVZcCkKVG6ztBTObG0Ti7HhZusjxutCXOAPXTHo98HkKTpSGRiOsaEm/vO
         l/aPA9hreDws6MHon/2XWQ+wYv0gvGizafg1CGnFTRS8NfZgVXu6ofYSUV4ZHWS3Zc8k
         oL8Q==
X-Gm-Message-State: AOAM530vtM5yGoFjmjkmpnbri070rZhJPT37DE1LqylXwI7xqF1pixly
	JP1jSqSkQ4T9APZaxmRPF+tPdAWqdMhW+E70ejMMrw==
X-Google-Smtp-Source: ABdhPJwomiTuWq+z9WJ2FVK1TXVoPhIgJEvTEf0jYSCJp6VJ3tXGYeEINeB/V4HhUfsyXFp4FnZaBvFW8cwiyDvm1OQ=
X-Received: by 2002:a05:6512:3b9e:: with SMTP id g30mr2654799lfv.546.1633589593052;
 Wed, 06 Oct 2021 23:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com> <d3036862-9b4a-8c37-328b-92c432b6b061@gmail.com>
In-Reply-To: <d3036862-9b4a-8c37-328b-92c432b6b061@gmail.com>
From: Arjan Feta <arjan.feta@unifi.it>
Date: Thu, 7 Oct 2021 08:53:01 +0200
Message-ID: <CADH2tdPbQrwmkhUbnJ1BqfOJBn3LzRoZjN4YM6GR6AAZdhjy5w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: CZHZITRXNUGQ3UFUXPYRPXUAO6JHJ3WS
X-Message-ID-Hash: CZHZITRXNUGQ3UFUXPYRPXUAO6JHJ3WS
X-MailFrom: arjan.feta@unifi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CZHZITRXNUGQ3UFUXPYRPXUAO6JHJ3WS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1147982103606347991=="

--===============1147982103606347991==
Content-Type: multipart/alternative; boundary="0000000000006729e405cdbdb7cb"

--0000000000006729e405cdbdb7cb
Content-Type: text/plain; charset="UTF-8"

Thank you Marcus

Il giorno gio 7 ott 2021 alle ore 06:51 Marcus D. Leech <
patchvonbraun@gmail.com> ha scritto:

> On 2021-10-06 7:15 a.m., arjan.feta@unifi.it wrote:
>
> Hi all,
>
> I am trying to calibrate a twinrx (rx direction) using uhd_power_cal.py.
> This script generates a outputfile.pickle. How is this file passed in order
> to be able to set a power reference level?
>
> I deduce it needs the calibration data for setting the power reference
> level since I get this error:
>
> *radio_block.set_rx_power_reference(-4.0,0)*
>
> *Traceback (most recent call last):*
>
> * File "<ipython-input-5-092ddd34efe0>", line 1, in <module>*
>
> * radio_block.set_rx_power_reference(-4.0,0)*
>
> *RuntimeError: RuntimeError: Attempting to set power for key
> x3xx_pwr_twinrx_rx_rx1, but no cal data available!*
>
> Regards,
>
>
> Arjan
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> The default place in lieu of an explicit setting of either XDG_DATA_HOME
> or UHD_CAL_DATA_PATH  environment variables is:
>
> $HOME/.local/share/uhd/cal
>
> The $HOME/.local/share  seems to be a place where lots of apps under Linux
> store configuration data.  Lots, but not all.
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006729e405cdbdb7cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Marcus<br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Il giorno gio 7 ott 2021 alle ore 06:5=
1 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbr=
aun@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-06 7:15 a.m.,
      <a href=3D"mailto:arjan.feta@unifi.it" target=3D"_blank">arjan.feta@u=
nifi.it</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi all,</p>
      <p>I am trying to calibrate a twinrx (rx direction) using
        uhd_power_cal.py. This script generates a outputfile.pickle. How
        is this file passed in order to be able to set a power reference
        level?</p>
      <p>I deduce it needs the calibration data for setting the power
        reference level since I get this error:</p>
      <p><em><strong>radio_block.set_rx_power_reference(-4.0,0)</strong></e=
m></p>
      <p><em>Traceback (most recent call last):</em></p>
      <p><em> File &quot;&lt;ipython-input-5-092ddd34efe0&gt;&quot;, line 1=
, in
          &lt;module&gt;</em></p>
      <p><em> radio_block.set_rx_power_reference(-4.0,0)</em></p>
      <p><em>RuntimeError: RuntimeError: Attempting to set power for key
          x3xx_pwr_twinrx_rx_rx1, but no cal data available!</em></p>
      <p>Regards,</p>
      <p><br>
      </p>
      <p>Arjan</p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    The default place in lieu of an explicit setting of either
    XDG_DATA_HOME or UHD_CAL_DATA_PATH=C2=A0 environment variables is:<br>
    <br>
    $HOME/.local/share/uhd/cal<br>
    <br>
    The $HOME/.local/share=C2=A0 seems to be a place where lots of apps und=
er
    Linux store configuration data.=C2=A0 Lots, but not all.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006729e405cdbdb7cb--

--===============1147982103606347991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1147982103606347991==--
