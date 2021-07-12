Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6123C6219
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 19:42:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0AAB3847B0
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 13:42:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="UmpSrsAA";
	dkim-atps=neutral
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id EC27B3846B0
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:41:19 -0400 (EDT)
Received: by mail-oi1-f171.google.com with SMTP id w188so829002oif.10
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 10:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aWL2o3UZBlIrtQ/smP9OQIso6fFsBPZQTjcQWqmeyg8=;
        b=UmpSrsAAF2E4hzy6UnKfHaOJSuLa6+x5RKgweXmj1Wh1LRqBf3vEUKqitaw7VPYYq2
         ZMj3nBsVaN4PCmgRKaMDKvGkSQHiN1FFBOlXOK1ji4OddfXORPp/OmgMFQq8hIsEv4/8
         zi5JY33folbWRtWvc5U5zX0aGkVjvl/3DkbYxs4EQr/SREGYx0nTSyzRcAFrHXnCBzSJ
         r7LwmqmQwal9DPsg44bK3ITVvJe/AL+XFJYKEtHDonRx89qV5L47dhYEDFMtnbSEczpg
         6kVtiobF2BomTpMdnHNTP07bAN3RV/o24FBmbM4HSmCKyx6uLatAAtCFZu2ddvDEWKmf
         pSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aWL2o3UZBlIrtQ/smP9OQIso6fFsBPZQTjcQWqmeyg8=;
        b=rXD9pppArf9uKnUck6nFhC4sa+zMx7VSxplPlWhMjlhdFlbNKxgJpAHzsnmlDPHnK/
         Rj6Pa0dT6Ae5OVnZLaYUq7es4OhbPpy6Lz+zpohqKGYP6n4oLU1d3BQal63wB1wL/jpQ
         BA+wXjqCfy5szNbAyH8U/Bf/0kQ9TQKdu1bHeuX/vvXNMHKFi1+JCOcPhDzcT9bFktg/
         x4A+AWw10LgjRCN0h0LaqSL3jUIBa/CTuTJDJoI+tWrxrFkz9GYfiTUfuBuRqKfhlZpu
         x36NXeoNnbsZHtg6QKENMaRuhfs8OUXaoYAuEv0Kbkin1GgUuf1xR0YhSREL44K0DNzS
         S9Aw==
X-Gm-Message-State: AOAM532HAGmQYS7ElMmx10h+osVu1hO3PmsoN7qDPWnIApKQtA8YxcgE
	eGiPU4mFfctqfXZYEdtDSGDn2lDl5HxYo71KRflCjdfI
X-Google-Smtp-Source: ABdhPJwlTCIFP9BK+/XklZOqboEUe0ZNS7goGQrS/ZvdXqqTXR5o6Z39Va4UcNidpAqGMgyoxb5k2pedtv/xWljZoXE=
X-Received: by 2002:aca:6046:: with SMTP id u67mr11723005oib.23.1626111679228;
 Mon, 12 Jul 2021 10:41:19 -0700 (PDT)
MIME-Version: 1.0
References: <VE1PR04MB6653DA41666B704DD2D9DC30BA199@VE1PR04MB6653.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB6653DA41666B704DD2D9DC30BA199@VE1PR04MB6653.eurprd04.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 12 Jul 2021 12:41:03 -0500
Message-ID: <CAFche=jYZ6DUGd2hX3GXNmvetJ8Ji-BZyN7VBbKuQVsejE9QJQ@mail.gmail.com>
To: Ming You <M.You@lboro.ac.uk>
Message-ID-Hash: VIJDUHXOD3ZNNGJ75LFT3ATBRTT2RRE4
X-Message-ID-Hash: VIJDUHXOD3ZNNGJ75LFT3ATBRTT2RRE4
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding RFNoC FIR Filter block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VIJDUHXOD3ZNNGJ75LFT3ATBRTT2RRE4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2546341550583799083=="

--===============2546341550583799083==
Content-Type: multipart/alternative; boundary="000000000000017f9205c6f0a1f9"

--000000000000017f9205c6f0a1f9
Content-Type: text/plain; charset="UTF-8"

Hi Ming,

For static coefficients, try setting RELOADABLE_COEFFS = 0 and
USE_EMBEDDED_REGS_COEFFS = 0. I did a quick simulation and it seemed to
work, but I didn't spend much time checking it. Make sure you also set
NUM_COEFFS and COEFFS_VEC correctly where the rfnoc_block_fir_filter is
instantiated. The testbench has examples of how to do this.

Thanks,

Wade

On Thu, Jul 8, 2021 at 5:42 PM Ming You <M.You@lboro.ac.uk> wrote:

> Dear ALL,
>
> I am trying to modify the RFNoC fir filter block to a static coeffs. fir,
> and I've managed to use the Vivado simulator to monitor the simulation
> waveforms generated by the testbench code.
>
> Strange things to me are that:
>
> 1. When enabling the reloadable feature (i.e., RELOADABLE_COEFFS =1), and
> enabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=1),
> everything will work alright and the outputs are expected.
> 2. When enabling the reloadable feature (i.e., RELOADABLE_COEFFS =1), and
> disabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=0), there
> are some outputs but not expected.
> 3. When disabling the reloadable feature (i.e., RELOADABLE_COEFFS =0), and
> disabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=0), there
> are outputs but the outputs are simply XXXX.
>
> Can anyone tell me how to correctly configure the rfnoc_block_fir_filter
> or its sub-modules, so that it can work with static coeffs.? Or this rfnoc
> block is intended to work only under reloadable+embedded setup, while the
> static coeff. was initially ok to use but later not maintained?
>
> Thank you for your time and kind help in advance!
>
> Ming
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000017f9205c6f0a1f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ming,</div><div><br></div><div>For static coeffici=
ents, try setting RELOADABLE_COEFFS =3D 0 and USE_EMBEDDED_REGS_COEFFS =3D =
0. I did a quick simulation and it seemed to work, but I didn&#39;t spend m=
uch time checking it. Make sure you also set NUM_COEFFS and COEFFS_VEC corr=
ectly where the rfnoc_block_fir_filter is instantiated. The testbench has e=
xamples of how to do this.<br></div><div><br></div><div>Thanks,</div><div><=
br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Jul 8, 2021 at 5:42 PM Ming You &lt;<=
a href=3D"mailto:M.You@lboro.ac.uk">M.You@lboro.ac.uk</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Dear ALL,<br>
<br>
I am trying to modify the RFNoC fir filter block to a static coeffs. fir, a=
nd I&#39;ve managed to use the Vivado simulator to monitor the simulation w=
aveforms generated by the testbench code. <br>
<br>
Strange things to me are that:<br>
<br>
1. When enabling the reloadable feature (i.e., RELOADABLE_COEFFS =3D1), and=
 enabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=3D1), ever=
ything will work alright and the outputs are expected.<br>
2. When enabling the reloadable feature (i.e., RELOADABLE_COEFFS =3D1), and=
 disabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=3D0), the=
re are some outputs but not expected.<br>
3. When disabling the reloadable feature (i.e., RELOADABLE_COEFFS =3D0), an=
d disabling the DSP-embedded reg feature (USE_EMBEDDED_REGS_COEFFS=3D0), th=
ere are outputs but the outputs are simply XXXX.<br>
<br>
Can anyone tell me how to correctly configure the rfnoc_block_fir_filter or=
 its sub-modules, so that it can work with static coeffs.? Or this rfnoc bl=
ock is intended to work only under reloadable+embedded setup, while the sta=
tic coeff. was initially ok to use but later not maintained? <br>
<br>
Thank you for your time and kind help in advance!<br>
<br>
Ming<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000017f9205c6f0a1f9--

--===============2546341550583799083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2546341550583799083==--
