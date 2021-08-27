Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC4F3F92FC
	for <lists+usrp-users@lfdr.de>; Fri, 27 Aug 2021 05:39:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4833384184
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 23:38:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="t5ZeTl4p";
	dkim-atps=neutral
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	by mm2.emwd.com (Postfix) with ESMTPS id F313738402A
	for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 23:38:13 -0400 (EDT)
Received: by mail-vk1-f182.google.com with SMTP id ay16so140031vkb.2
        for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 20:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jvhk7i01UEoFAz/rHDrBIwHApMrpk+CP/px68Zqzk3A=;
        b=t5ZeTl4patN+OleZ317Ug7BeeuxeMj4qxWku+VJJed5VDHvI8sDWpP6+CnWeKc1r3g
         mBmrjU3xsX84vHX+xFF33AW+bjX96MuAjCKUZ6ZMpjMIFVNR1YOT8mYEYY5VpYPAjUJP
         t84hTS3U2Q0YYOwELUg6Xr7P+leMGQr1A6uPnC/yBeK/YJWc1Jsm17v4V2dn9ii4eyzq
         soGzKFmNLQJWxuwaq0XeQn72omdSSQZSbg6JX4oJQFH0OPpz7xTOGxYjW/m9aZdzgtTE
         i2ulk5+pqMi8PeZKi5tQMNTY+1ozeYXn7oaIGv548G+aG7EBvXXbwjhLxqtDHR7C4kli
         iE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jvhk7i01UEoFAz/rHDrBIwHApMrpk+CP/px68Zqzk3A=;
        b=hNQSOpfUPknOpm8s+fRw4o1NAPuOeaNXYoZJTjqs3nCnMy59qhQwuhtJghY5R9sJcX
         Fo7j0LhtDOE4iimK025uiZAhgQgWITJ21q+g5TYUc31pHAyQaU4tkyMIVao3E/OVa9TC
         KbRfKZWcKTvTKzRRvlwEHrHzLLEwXqZo2sshIu1v9c+wgdqnuZictPWH6wVelhhFf5Yt
         swz1PL0hfXJyPd2k6GQ5XtFYPR0WFAV3OQzpH+UyGENSiTzuGTn78dF0K1cDh7WyolHv
         JSylZMFon5jCZaxcxoarbvJF46ZFEICeMc7dg1MooE3e7lAefzNaqDFqqp4JPiPkdxT6
         jLFQ==
X-Gm-Message-State: AOAM530BquagUi4y7P07n9GJOjZALJeiTYOXBwq08Xy5ghx3ynE9qrk2
	Dz+7SxhRgGwkBcPcd6oqHgUIFBrlPis4yCXfbFbT9nFwp/5smhKn
X-Google-Smtp-Source: ABdhPJyFvsJvlHuhunpTRIOsyJnl0ZIvD7pObfXWcuc0xilIDHlEImK/0dU+YWXFEbo9qjW6XQWXgZ/6F62AY4SXJFM=
X-Received: by 2002:a1f:b293:: with SMTP id b141mr4958810vkf.3.1630035493291;
 Thu, 26 Aug 2021 20:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <OL1P279MB008360B52DA24BB702B2ADB0A0C69@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <OL1P279MB008322048492BE24B21174A2A0C79@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
In-Reply-To: <OL1P279MB008322048492BE24B21174A2A0C79@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 26 Aug 2021 23:37:37 -0400
Message-ID: <CAL7q81teZZMK5_GfvZugTJiOOGoc5c2w7uGmB5T5y1cqLFh3PQ@mail.gmail.com>
To: =?UTF-8?B?U2tvcnN0YWQsIErDuHJu?= <jsk@nkom.no>
Message-ID-Hash: KLUDCYCNLSTOY4DRPLMP4KMZRL3E5A3U
X-Message-ID-Hash: KLUDCYCNLSTOY4DRPLMP4KMZRL3E5A3U
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Offset tuning on E310 RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KLUDCYCNLSTOY4DRPLMP4KMZRL3E5A3U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8261920206904505012=="

--===============8261920206904505012==
Content-Type: multipart/alternative; boundary="0000000000008c9de205ca8236c1"

--0000000000008c9de205ca8236c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jorn,

The offset frequency is implemented in the DDC block controller, see:
https://github.com/EttusResearch/uhd/blob/UHD-3.14.L/host/lib/rfnoc/ddc_blo=
ck_ctrl_impl.cpp#L194
.

Jonathon

On Thu, Aug 26, 2021 at 2:06 AM Skorstad, J=C3=B8rn <jsk@nkom.no> wrote:

> Hello. I am using the UHD library 3.14.1 and C++ to control an E310 radio=
.
> Without using RFNoC blocks it is possible to tune to an offset frequency,
> using uhd::usrp::multi_usrp::set_rx_freq (const tune_request_t
> &tune_request, size_t chan =3D 0). However, when the software is using RF=
NoC
> blocks, it is only possible to change RX center frequency:
> uhd::rfnoc::rf_control::core_iface::set_rx_frequency(const double *freq*,
> const size_t *chan* ).
>
>
>
> Is it possible to achieve the same offset tuning functionality using RFNo=
C
> blocks? Have tried using set_rx_lo_freq(), but it throws an exception,
> saying it is not supported on this model. I have an RFNoC image with radi=
o,
> DDC, window and FFT blocks on.
>
>
>
> Jorn
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008c9de205ca8236c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jorn,<div><br></div><div>The offset frequency is implem=
ented in the DDC block controller, see:=C2=A0<a href=3D"https://github.com/=
EttusResearch/uhd/blob/UHD-3.14.L/host/lib/rfnoc/ddc_block_ctrl_impl.cpp#L1=
94">https://github.com/EttusResearch/uhd/blob/UHD-3.14.L/host/lib/rfnoc/ddc=
_block_ctrl_impl.cpp#L194</a>.</div><div><br></div><div>Jonathon</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Aug 26, 2021 at 2:06 AM Skorstad, J=C3=B8rn &lt;<a href=3D"mailto:jsk@nk=
om.no">jsk@nkom.no</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">





<div lang=3D"NO-BOK" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-4372868162054029229WordSection1">
<p class=3D"MsoNormal">Hello. I am using the UHD library 3.14.1 and C++ to =
control an E310 radio. Without using RFNoC blocks it is possible to tune to=
 an offset frequency, using uhd::usrp::multi_usrp::set_rx_freq (const tune_=
request_t &amp;tune_request, size_t chan
 =3D 0). However, when the software is using RFNoC blocks, it is only possi=
ble to change RX center frequency: uhd::rfnoc::rf_control::core_iface::set_=
rx_frequency(const double=C2=A0<em><span style=3D"font-family:Calibri,sans-=
serif;font-style:normal">freq</span></em>,
 const size_t=C2=A0<em><span style=3D"font-family:Calibri,sans-serif;font-s=
tyle:normal">chan</span></em>=C2=A0).<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is it possible to achieve the same offset tuning fun=
ctionality using RFNoC blocks? Have tried using set_rx_lo_freq(), but it th=
rows an exception, saying it is not supported on this model. I have an RFNo=
C image with radio, DDC, window and
 FFT blocks on.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jorn<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008c9de205ca8236c1--

--===============8261920206904505012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8261920206904505012==--
