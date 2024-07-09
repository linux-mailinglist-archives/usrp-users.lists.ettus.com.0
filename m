Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B36B92B055
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 08:40:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 328EB384A22
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 02:40:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720507200; bh=Is+HlJRgr642xzyCj1ilPcQpeDw+xEgGnUikPsbmaww=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=umXba8J0p0UjgtiIj1pYEuWWqjK9UruKsjuVPLuxLJtnP/xx0fGX5zIFv+jz6335R
	 TS9jjvrPl1onmO9LAvwVaIoz2Lb6WbaAjkkr0biMdrRCU+uASDTzruRBKQS7mkPHdu
	 6VUwKAXn6zxw1itzrlMhnybWSLlG7P/Cz+MFTefdBWvxqR0mF65YmgOrSvGylxL+YV
	 vG+0hpI3/eRTCzc/NjjvZm/k5yY3hep+8eYjc6IQUUxlJ4xrCx5Ff9Gngz1dvDw9yY
	 aWCAL+koj7bhuEz9yzzuB5CLzZnKCGXJlqPdfxGFGRpec8Y/7BivNfpFWFp3raaA0t
	 H6A9q9I+rutQg==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id E07513830EC
	for <usrp-users@lists.ettus.com>; Tue,  9 Jul 2024 02:39:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="OA55Ox/R";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a7527afa23cso590007066b.2
        for <usrp-users@lists.ettus.com>; Mon, 08 Jul 2024 23:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1720507168; x=1721111968; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AWj6PiofLlNfxi8ZylJI5q33RhQEoNRbGiRmF8gngHI=;
        b=OA55Ox/RljiK2X9ZRUfFAcvOcBhY0oWrpiwHH3X2WgFFbY3UH2tqDIQjavvyUJ1p2C
         45thu3xD7hkVnVGJQ0Er+VJidCLgdVztnlbDAf8gljbCKFBYICH1jyRxnXAhXAFaUfo7
         H/LBvF2zf5AXmIWKJs4s13RBarLO+ECo9NjrTb8YcuJPqsf/YIdfbXyfJ4hX0v99uic3
         dS0EQC6CTtGb4Yr+1RC4AelYIvqvJJ8VS0MF8sKe2PW97vE1avJTutRXsug4ZR5yppRq
         XPjtZfft4SN6PvG0g4oR7Sx7o5Y38Z74irHObBV2BDt9El4eIzBZBnc0HLMNEnDcJzJs
         yfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720507168; x=1721111968;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AWj6PiofLlNfxi8ZylJI5q33RhQEoNRbGiRmF8gngHI=;
        b=o0Axj7YSr3GK2NCDq8/RvSBRqQUGJu+xkiA1c3rNX8YcGmmnsVEcmnAKZdWJsM+GYo
         FBHtKnInve77pIUWHjApPg8DgHEeUbtpcEyQ5oQI1wUSc2tMceDf3K3UCbX4ZV+3d7L+
         b5SX2V2nuKhgPcyFpxfQu6qOH4+/BLN7UC/6hr3qsVaXcbtZqVecLarmsFQcCTWIfQug
         QjTAlSSPkRz7K4za/ixCwAd0rUrwqWKtjL4jEYDI0yJBeC7KhvvNYnWPyEzeHfBhTimp
         JUszzdn6vds3u5zOgR6N3FD0s+oEeEhPkuBdlxibhtjmW9VMNznbCTpSPdoZr+6MQDT0
         Kb9Q==
X-Gm-Message-State: AOJu0YwhLpOry2GLVUKRQfCezacKMjUKQenknSmbEGfAunw5L/iuaj81
	ZDfPGMBkXpxDLzM2H1pmhWphHE8agu4UxRXMM1RHc8jT4zZNbJXyTk0remAKV+ZG8g9PZ96lL9l
	dcG6pp9fkPCzeRW3fD0TWVSMMmBzJCDCFva1ydZR70z9PrarBCPm2rmnG
X-Google-Smtp-Source: AGHT+IEOtmAS6kKjuDrk/J4jnD+vA4Me6ky6vYH8RbLoVjXA9j4Vqdl3HLjUx7ozMJxedgqNyA7MdQpe0GLShACEsug=
X-Received: by 2002:a17:907:6d26:b0:a77:e0ed:8b8 with SMTP id
 a640c23a62f3a-a780b6891c0mr162755466b.9.1720507168453; Mon, 08 Jul 2024
 23:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY@lists.ettus.com>
In-Reply-To: <xqIC7aEKKiDPcdLOmK3qYoGQK2jB7jFEHpc9mUh7WKY@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 9 Jul 2024 08:39:18 +0200
Message-ID: <CAFOi1A55ptFUQ3ym=m31=0-65DQCa0LafW=n9z5UiuE92LU60g@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 7AHUMSONUAROLRNZFLPHVEF24O7XXCMB
X-Message-ID-Hash: 7AHUMSONUAROLRNZFLPHVEF24O7XXCMB
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: device tree and GPIO pin for x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AHUMSONUAROLRNZFLPHVEF24O7XXCMB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7153310905848532770=="

--===============7153310905848532770==
Content-Type: multipart/alternative; boundary="0000000000009c11f1061ccacadc"

--0000000000009c11f1061ccacadc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Check this out:
https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/top/x400/dts

The .dts files in there are no longer used with the most recent released
(and we might delete them); they get auto-generated by the RFNoC image
builder. But they're still accurate.

Most GPIOs that map into the FPGA space are exposed using the uio driver.

--M

On Tue, Jul 9, 2024 at 12:41=E2=80=AFAM hiroki_iwata--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am trying to understand the device tree and pin configuration of x4xx.
>
> Especially, =E2=80=9CRFDC_POWERD=E2=80=9C GPIO pin.
>
>
> Now, I am searching the python
> script(mpm/python/usrp_mpm/periph_manager/x4xx.py) and I found that
> =E2=80=9CRFDC_POWERED=E2=80=9C pin is GPIO pin.
>
> But, I cannot identify its corresponding device tree description.
>
> self._rfdc_powered =3D Gpio('RFDC_POWERED', Gpio.INPUT)
>
> Where is the device tree definition for x4xx?
>
>
> BR,
>
> Hiroki
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009c11f1061ccacadc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Check this out: <a href=3D"https://github.com/EttusRe=
search/uhd/tree/master/fpga/usrp3/top/x400/dts">https://github.com/EttusRes=
earch/uhd/tree/master/fpga/usrp3/top/x400/dts</a></div><div><br></div><div>=
The .dts files in there are no longer used with the most recent released (a=
nd we might delete them); they get auto-generated by the RFNoC image builde=
r. But they&#39;re still accurate.</div><div><br></div><div>Most GPIOs that=
 map into the FPGA space are exposed using the uio driver.</div><div><br></=
div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Jul 9, 2024 at 12:41=E2=80=AFAM hiroki_iwata-=
-- via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><p>I am trying to understand the device tree and pin con=
figuration of x4xx.</p><p>Especially, =E2=80=9CRFDC_POWERD=E2=80=9C GPIO pi=
n.</p><p><br></p><p>Now, I am searching the python script(mpm/python/usrp_m=
pm/periph_manager/x4xx.py) and I found that =E2=80=9CRFDC_POWERED=E2=80=9C =
pin is GPIO pin. </p><p>But, I cannot identify its corresponding device tre=
e description. </p><p>self._rfdc_powered =3D Gpio(&#39;RFDC_POWERED&#39;, G=
pio.INPUT)</p><p>Where is the device tree definition for x4xx?  </p><p><br>=
</p><p>BR,</p><p>Hiroki</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009c11f1061ccacadc--

--===============7153310905848532770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7153310905848532770==--
