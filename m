Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4827778FF92
	for <lists+usrp-users@lfdr.de>; Fri,  1 Sep 2023 16:58:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5105B384EE9
	for <lists+usrp-users@lfdr.de>; Fri,  1 Sep 2023 10:58:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693580329; bh=asuWzFX9m3CUkBBg9lM806m3jF0wAnZWmjY3vZuHARw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WI3eC0FQGOBiO1iyOQ51lcK+SYYDbcM9rLlL9/Oz6BPxhFM3B4OwZdQeHkXTCKHFe
	 tWpIq5Ete7lUBlXWakBxpGzduzgETN1CvIZHyN8GHTvdNx7AInZJQggJr1L+GP9MHC
	 /C8VH6t21JcmXZq4629rjvxrmR4RveBokJz1xoqm96eQEJb7FT+9zmyKZ6WL4rLiaY
	 xTEO3aMWevuEcMvXQ6RR2QTbe0BmwfqRJa8ZfL0SJSzGThHtsrKfM9r+mzn7ZekcEY
	 VNPC6cl314hCPJnqYyztnyubnbp6WPQwuNEzaVNRz7D5exy75Iy3H1peh+edCC+U9q
	 Mrv5jTnqMdU7w==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D1B6384EE3
	for <usrp-users@lists.ettus.com>; Fri,  1 Sep 2023 10:57:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rhvnas1J";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76dbe1866ecso123064785a.0
        for <usrp-users@lists.ettus.com>; Fri, 01 Sep 2023 07:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693580276; x=1694185076; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sN0MA5qefohNUF1wfBpga8j1+osVmVTiufQXSOfsKeY=;
        b=Rhvnas1J5vUV0W+6pE3vnJLSKa8t2u7f9p0WUrEO02bOVYxpWfBvsbQKB6AhMEwJo5
         PXIF+aiEDO/1GRD69/vcWwWVtTJeljQFRoZk4HPROCGWp5qZjM9F1ZE7vDqzAgQSQVYt
         x7ZPQDfcKc6WYIJYNVNgu8QBqyHZVV5o/EoN9No/ThdmCu/l2cbd8NelFWtCXzNJa3Gi
         I9MSPJb39EAGeEbWRke3Hs02n0gEcQsE5iZrptXEr+hIuusqxiSsiy3s2HkkJu0Wa0u+
         qao1/ZTNDOxwNDMP2an5K602hw+ERRMj9QZOyU62f0rnAh/tES/pS0RgnVILLrNGpbBr
         v3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693580276; x=1694185076;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sN0MA5qefohNUF1wfBpga8j1+osVmVTiufQXSOfsKeY=;
        b=Yjh//TMQdAQ/6H+B08kMcIHTo9klRfIk2i7haOIJrwiR89mYkjzlI0TaiviNYzS1uz
         Rls85YzESfq1fH+KPxwUMEHQ5xQuIu75/7inHlSnw3PojblATEZM3UCi8lDws58mVwWD
         1Xh+1aS4Nerm2ABthX4qXZzBX56pUgXxrfHHCacpzMb6XomQdIq48pkC5eS7pOaIyOr1
         HBswkPoeGf+9d/LUL3jp4Z1GYgw41ApvhDWeSC3Fnh+uQ+yBxBqeylI+nrS6zdnmtwtZ
         Oo2ZmR//rBXuBihKuef439ovbhRfM/m1Axj1rqat5+RTRmcdVDMXdhXgEfH+rnEztcvO
         AX6w==
X-Gm-Message-State: AOJu0Yxb/PtH5kmhKSRVvBpOkJQJADNsJCVOaCfI2rp5QaEU+p47R1QF
	laebaMSWQ9PdscrRRIYodzSe5AaGOHsvyQ==
X-Google-Smtp-Source: AGHT+IHQhg7cj/XRNugJVjx6JciQ6sFp59u6s1HR+fnjbXbTjoDqMWgeCMupvF1T+yttgnGX5mkHAg==
X-Received: by 2002:a05:620a:1356:b0:767:8373:a890 with SMTP id c22-20020a05620a135600b007678373a890mr2329924qkl.45.1693580276280;
        Fri, 01 Sep 2023 07:57:56 -0700 (PDT)
Received: from [192.168.2.166] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id i3-20020a05620a144300b0076639dfca8dsm1438795qkl.80.2023.09.01.07.57.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Sep 2023 07:57:55 -0700 (PDT)
Message-ID: <485975fb-17cb-ded7-5216-9810c80cf356@gmail.com>
Date: Fri, 1 Sep 2023 10:57:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <bicWs4ePNOM2GhiBysnRkx3JUvc4PY1GXalyIJPGoA@lists.ettus.com>
 <CAEXYVK60AyP2jZCyPJ=t7upa9zQ9v44nuSvQuOe3rQLq8RQwQw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK60AyP2jZCyPJ=t7upa9zQ9v44nuSvQuOe3rQLq8RQwQw@mail.gmail.com>
Message-ID-Hash: N47CJCZWI4TOLT3C3L7APECQTPTLPKFO
X-Message-ID-Hash: N47CJCZWI4TOLT3C3L7APECQTPTLPKFO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Pulse distortion of N320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N47CJCZWI4TOLT3C3L7APECQTPTLPKFO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4499137132632114025=="

This is a multi-part message in MIME format.
--===============4499137132632114025==
Content-Type: multipart/alternative;
 boundary="------------j2y0G5LobnaJuKk8PksNUdMW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------j2y0G5LobnaJuKk8PksNUdMW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/09/2023 10:40, Brian Padalino wrote:
> On Fri, Sep 1, 2023 at 8:58=E2=80=AFAM <seckinoncu8070@gmail.com> wrote=
:
>
>     I have an N320 that I am using. Currently UHD 4.4 is installed.
>     When I send a pulsed signal and choose the pulse amplitude between
>     0.9 and 1, the beginning and end of the pulses are distorted with
>     the same pattern.
>
>
> This is most likely due to the digital filtering happening before=20
> hitting the DAC.
>
> What sample rate are you running your N320 application at?=C2=A0 In oth=
er=20
> words, what input sample rate are you giving the N320 that it then has=20
> to interpolate up to the master clock rate it runs out to the DAC?
>
> Brian
>
Could be a number of things.=C2=A0 Any time you run a signal processing=20
system very close to its limits, you can expect distortion
 =C2=A0 of some sort.=C2=A0 This could be:


 =C2=A0=C2=A0=C2=A0 o Inadequate bit-growth management in the (digital) f=
ilter chain=20
leading up to the DAC
 =C2=A0=C2=A0=C2=A0 o Distortion in the DAC at high output levels
 =C2=A0=C2=A0=C2=A0 o Distortion in the analog mixer at high baseband lev=
els
 =C2=A0=C2=A0=C2=A0 o Distortion further along in the analog signal chain

I suspect Brian is correct, and this is a digital filter artifact. It=20
can be hard to design filters to deal with bit-growth issues in a way
 =C2=A0 that preserves maximum dynamic range and then scales as appropria=
te=20
for the DAC the filter is feeding--at least from what
 =C2=A0 I understand.=C2=A0 That doesn't mean there isn't a residual scal=
ing or=20
bit-growth issue in the filters, but I'd say reduce the
 =C2=A0 baseband magnitude a bit.



--------------j2y0G5LobnaJuKk8PksNUdMW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/09/2023 10:40, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK60AyP2jZCyPJ=3Dt7upa9zQ9v44nuSvQuOe3rQLq8RQwQw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Fri, Sep 1, 2023 at 8:58=E2=80=AFAM &lt;<a
            href=3D"mailto:seckinoncu8070@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">seck=
inoncu8070@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <p>I have an N320 that I am using. Currently UHD 4.4 is
              installed. When I send a pulsed signal and choose the
              pulse amplitude between 0.9 and 1, the beginning and end
              of the pulses are distorted with the same pattern.</p>
          </blockquote>
          <div><br>
          </div>
          <div>This is most likely due to the digital filtering
            happening before hitting the DAC.</div>
          <div><br>
          </div>
          <div>What sample rate are you running your N320 application
            at?=C2=A0 In other words, what input sample rate are you givi=
ng
            the N320 that it then has to interpolate up to the master
            clock rate it runs out to the DAC?</div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
      <br>
    </blockquote>
    Could be a number of things.=C2=A0 Any time you run a signal processi=
ng
    system very close to its limits, you can expect distortion<br>
    =C2=A0 of some sort.=C2=A0 This could be:<br>
    <br>
    <br>
    =C2=A0=C2=A0=C2=A0 o Inadequate bit-growth management in the (digital=
) filter chain
    leading up to the DAC<br>
    =C2=A0=C2=A0=C2=A0 o Distortion in the DAC at high output levels<br>
    =C2=A0=C2=A0=C2=A0 o Distortion in the analog mixer at high baseband =
levels<br>
    =C2=A0=C2=A0=C2=A0 o Distortion further along in the analog signal ch=
ain<br>
    <br>
    I suspect Brian is correct, and this is a digital filter artifact.=C2=
=A0
    It can be hard to design filters to deal with bit-growth issues in a
    way<br>
    =C2=A0 that preserves maximum dynamic range and then scales as
    appropriate for the DAC the filter is feeding--at least from what<br>
    =C2=A0 I understand.=C2=A0 That doesn't mean there isn't a residual s=
caling or
    bit-growth issue in the filters, but I'd say reduce the<br>
    =C2=A0 baseband magnitude a bit.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------j2y0G5LobnaJuKk8PksNUdMW--

--===============4499137132632114025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4499137132632114025==--
