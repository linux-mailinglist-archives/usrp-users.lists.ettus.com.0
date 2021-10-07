Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D26C424D93
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 08:56:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F9A7384B5D
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 02:56:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="7pDjPL5M";
	dkim-atps=neutral
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5909E3848AD
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 02:56:11 -0400 (EDT)
Received: by mail-io1-f43.google.com with SMTP id n71so5661767iod.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Oct 2021 23:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eAxvMmLnMj5SOfcgoJ1DWtOXNkHkUBiNzn0hzx0IRf8=;
        b=7pDjPL5MS7seiD25Kvc4WtU3SEwdUsXurpiIEpKqHU/6facxR4zdQuzh9/tmnxbdCB
         F0ImBFDCJ06Pt5btSxhejqD127BoHeExKcXWfz1qXUl12Bcv1/wCrxmGsp1noGdgqLwr
         4u6BxQzFLRrL69+MRncerfGPiBZZaLYAt7P/wRsZBBUrEyzaF1oK4tSiNh88UKxLLpuS
         kRXUlismsUiqr57O3VUYnGmpc6P+EWsbj4pVfF7WkoRKEPUaB7qKpA20cSR2e/b4LCUf
         alFhsAcinInsXQmcf+EK4zv1l7AGIbTBrGvBxqzQwTMBaheWET8hp/sbcRwpGGmslYIQ
         a5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eAxvMmLnMj5SOfcgoJ1DWtOXNkHkUBiNzn0hzx0IRf8=;
        b=VjWrQC4U4pvNyLZMC5QlxhxLW3Pk8aIyOjAA4EpSvd9K7GxTjMrI5lomCw2Ts9uCJJ
         WMlU357D/dUcAEYXjNzgTudjESGVvKxFSblV30xfKYC07l6QRMcYuLUqDnrtQp1YFsFq
         LeeS81ZCBknmZ4MP3Fo6WRdgZeU/EpghnjpYMGYutzHSDCwyQrTBkBduR8AW5JGbKJ4i
         ZwjfIIT36TRyY6zbVYrhuuxT8Cw5u79EoifZiT9JBWGsiPqm4+iw+Mb31zwfEpRPkIQl
         ddf6s8gKxOsDhx+r6PBhSKhrH3pQQxVD26n/CMDXqS+RDe4NblxfNB6zuz66L/s8XFrh
         maVA==
X-Gm-Message-State: AOAM5302iMku1QqBENlhUuGKsLORs8h+sIqHUxyU3mFZKWfWUIcwL0HG
	OccCzZU1OPSYeg3IHk3AHTTwm2Tso+lkQogHbk1V2WsdD50QRw==
X-Google-Smtp-Source: ABdhPJzW+Fs2q4qee/+L6eBoe74WPY6QU0zKcdLhvw8ltBlcAE5GJAS95BOXNSDpQQX43xysIZLLabMZ/qTT0tSHt04=
X-Received: by 2002:a05:6602:345:: with SMTP id w5mr1945396iou.49.1633589770603;
 Wed, 06 Oct 2021 23:56:10 -0700 (PDT)
MIME-Version: 1.0
References: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com>
In-Reply-To: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 7 Oct 2021 08:55:59 +0200
Message-ID: <CAFOi1A6So6xbGVfk8NPRo7Sk3VSQV1hLcE7WXnd3q3_pwasyVw@mail.gmail.com>
To: arjan.feta@unifi.it
Message-ID-Hash: R5OUF3ELLKPXJG7P622SHAIZGJY2336Z
X-Message-ID-Hash: R5OUF3ELLKPXJG7P622SHAIZGJY2336Z
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R5OUF3ELLKPXJG7P622SHAIZGJY2336Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7328245798314534430=="

--===============7328245798314534430==
Content-Type: multipart/alternative; boundary="000000000000fc651305cdbdc136"

--000000000000fc651305cdbdc136
Content-Type: text/plain; charset="UTF-8"

Hey Arjan,

the pickle file is generated if you run the power cal tool with --store,
but it is not required. You can use it as debugging output, or for
generating graphs.

When you run the tool, it will store the cal data into UHD_CAL_DATA_PATH
itself. If you increase the logging level to DEBUG, you will see something
like "[DEBUG] [CAL::DATABASE] Writing to ~/.local/share/uhd/cal/xxxxx.cal".

Check the contents of that directory. Does it have any files?



On Wed, Oct 6, 2021 at 1:15 PM <arjan.feta@unifi.it> wrote:

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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fc651305cdbdc136
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Arjan,</div><div><br></div><div>the pickle file i=
s generated if you run the power cal tool with --store, but it is not requi=
red. You can use it as debugging output, or for generating graphs.</div><di=
v><br></div><div>When you run the tool, it will store the cal data into UHD=
_CAL_DATA_PATH itself. If you increase the logging level to DEBUG, you will=
 see something like &quot;[DEBUG] [CAL::DATABASE] Writing to ~/.local/share=
/uhd/cal/xxxxx.cal&quot;.</div><div><br></div><div>Check the contents of th=
at directory. Does it have any files?</div><div><br></div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Oct 6, 2021 at 1:15 PM &lt;<a href=3D"mailto:arjan.feta@unifi.it">arj=
an.feta@unifi.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><p>Hi all,</p><p>I am trying to calibrate a twinrx (rx dire=
ction) using uhd_power_cal.py. This script generates a outputfile.pickle. H=
ow is this file passed in order to be able to set a power reference level?<=
/p><p>I deduce it needs the calibration data for setting the power referenc=
e level since I get this error:</p><p><em><strong>radio_block.set_rx_power_=
reference(-4.0,0)</strong></em></p><p><em>Traceback (most recent call last)=
:</em></p><p><em>  File &quot;&lt;ipython-input-5-092ddd34efe0&gt;&quot;, l=
ine 1, in &lt;module&gt;</em></p><p><em>    radio_block.set_rx_power_refere=
nce(-4.0,0)</em></p><p><em>RuntimeError: RuntimeError: Attempting to set po=
wer for key x3xx_pwr_twinrx_rx_rx1, but no cal data available!</em></p><p>R=
egards,</p><p><br></p><p>Arjan</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fc651305cdbdc136--

--===============7328245798314534430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7328245798314534430==--
