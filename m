Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C045DA9B949
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 22:37:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BEE5385F74
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 16:37:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745527020; bh=D4qr4Gqm0wp0Gy/nomDKNxDYAqI0LQBCNejRCdj9jdc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mCBGmtcadcoS42EIh4XcaWilNPViz3upLvVmmXP7k/VqJ0uh0n79qDAp4i6JJffWc
	 A/0Fb2bT1Gj2lcH0Q+pynLwH7IHhCwGVZ2bvfwGRANyY8DLwiavsA/nnbMCRRGTOWX
	 Y2bcEcrKiiuDt2jp45pNt9Xdq96MGcsXww5gRSoicRHLoy2zWqlKT1KEwSXuy+HDEa
	 hV/9mRJpNUrmfxs8EjYpl7rqsN+5s9mio9LSe7AXeBFyPA0vuuBAUxB4gRESFr1VOq
	 6kTWasdopZFy+8QvnKPRr91h6JqmAB/NirYeiYJGdfSQ5bQFIRiy9kr+mq1VIFA4y3
	 uYP/xlHLVVwfg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 2DE54385EFC
	for <usrp-users@lists.ettus.com>; Thu, 24 Apr 2025 16:36:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IKHqhJde";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4774d68c670so24490541cf.0
        for <usrp-users@lists.ettus.com>; Thu, 24 Apr 2025 13:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745526996; x=1746131796; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G0exDZyOkyEW7GcgI3X0AaQ1SFtnucsJXApLHNFv4DU=;
        b=IKHqhJdeafU/y7rDyP7fBMnGhfB75a4H1s77He0vGl8O6bvQunjS5Ra/PveZcqLP3c
         yrIfe/98irfBE1+ErXYwGC238N1oY3vPUK2Wc4+VBxfuJU/emrvc9Xx8SEWOPkKKflfE
         mJ67lEzeALE1Qczh6uAFzis49f/lf7zVp/xa7Ej0HnBoWAMAC3DtiNcczF+hRznCXh8j
         GR48AR2/RWbj5yhJt1uUYLgSerC6qMxGv8lbt5nt9BYLFSU+n6ru9KmPnmzxEChW/9e7
         PHWUb+7cM8TkUDzN1q/UgGCLKMJVKmT4V7OX/U/E1i3mShwAzVEBiS5cG328V8hBwqsQ
         /8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745526996; x=1746131796;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G0exDZyOkyEW7GcgI3X0AaQ1SFtnucsJXApLHNFv4DU=;
        b=el4XS4XjWSPtinxnBXtjQgI3IIWvtQWDYprC/cXooYOCZQ/27SriG7VD9lKJzE6yxf
         +4iVWkQNF7CPyiJcc8de6eIOpKfXLi0ZJbZ2ibuJ7zikeLwcsB8w5ulj7nqVnAnS/PmD
         HIolr/kSzDOSYAtdKhsE25pYbRDepEv5apG0y+HGYclzvSSqgKBvYzKGX5D65ZiySbyA
         SW91gbDDFN9eoLhgfarnCq997SauiHrf75t/J1FP1uDlHXgFMvf0VgN1SSJ4XxlZBFr+
         FG1zv+rkVxvE9quC5AHxG3ccCxbCUL5Yk/yQSNas2py8+BNqhYD8XjRZv/7nQygls5LE
         PjvQ==
X-Gm-Message-State: AOJu0Yw1CllP9EvaRL3NgRhU2DBDlEIOofZhNDNxY1FhKC3zaJ1dgwg7
	s+QAiVdkomqPOjYYUvxZTxyDK9pQHxxJEXFM3ELvefKN4q/7OciTCzGFbQ==
X-Gm-Gg: ASbGncsrFNx7cwcgzOKq5DHghoMwExQ2vJG0OG2Ql+Ym1nlSVILvcVcR7IMBn5FKTV5
	uxGwwQQKNf+61wRTsUZ6g+zW4ap0Kr+SPj5x0Clcnp/Zxl0Hn8VTXblQbjcojB0EkeV+kXdvS1w
	eqShk35ECRCawgNds9usBKORWXHyY53hME+Xgyt8u2Ruo3fSPKlQX0T3EaFhmPG+BFrRYXvF61U
	zrCwyws8485Hv4tfTNxlTZUDNJbnGFIyGmPbIZ63anwxnvZF4ngAB49CIxEm5zV+bCmJI30UM1J
	mkfkhSbzSAEaz4QXxGWE6kuvbfKYdBZyNsRrgZZ+JGf4HxU/pRiGR5BdHEh/
X-Google-Smtp-Source: AGHT+IFqbrsBkrNVd8+iMXknVkkcZKsus5Pw8Ev3aJ7+1eV1zjTL40cUYhku1V9fSNXFGFhFh8s5IA==
X-Received: by 2002:ad4:4ea7:0:b0:6f2:d25e:8cfc with SMTP id 6a1803df08f44-6f4c94bb6c8mr16186726d6.9.1745526996110;
        Thu, 24 Apr 2025 13:36:36 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6f4c096aa99sm13585866d6.66.2025.04.24.13.36.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:36:35 -0700 (PDT)
Message-ID: <a3623d8c-f10a-4b96-acda-ffce28a93007@gmail.com>
Date: Thu, 24 Apr 2025 16:36:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg@lists.ettus.com>
 <CANvw1+SNdgXUbkF6NqzRVvgvWvip_BqfDnW8W1__gjWwcP_XCw@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANvw1+SNdgXUbkF6NqzRVvgvWvip_BqfDnW8W1__gjWwcP_XCw@mail.gmail.com>
Message-ID-Hash: O3YBQWENQB5HSGD55QXTV2T6W2EEKZIQ
X-Message-ID-Hash: O3YBQWENQB5HSGD55QXTV2T6W2EEKZIQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: max input power
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O3YBQWENQB5HSGD55QXTV2T6W2EEKZIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5519199122742135069=="

This is a multi-part message in MIME format.
--===============5519199122742135069==
Content-Type: multipart/alternative;
 boundary="------------MY0MDANKR2GGwndKo02gnk1g"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MY0MDANKR2GGwndKo02gnk1g
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/04/2025 16:29, Anil Gurses via USRP-users wrote:
> Hi,
>
> It's the peak power input, not average. Anything beyond that level=20
> might damage the RF chain.
>
> A.
THIS.

Most of the Ettus/NI radios are designed for use in an "over the air"=20
scenario, where signal levels are expected to be low,
 =C2=A0 and sensitivity is a requirement.=C2=A0 This is very different fr=
om (for=20
example) a laboratory spectrum analyzer or radio
 =C2=A0 protocol analyszer.

In the world of "over the air" signals of -60dBm are actually quite=20
strong, and it's typically the case that such radios
 =C2=A0 have a narrow-band MDS of -130 to -140dBm.=C2=A0=C2=A0 So, in tha=
t context,=20
anything even approaching -10dBm is
 =C2=A0 a very very strong signal, and small-signal, low-noise RF gain st=
ages=20
are generally unhappy with signals that your
 =C2=A0 laboratory spectrum analyzer would be perfectly happy with.=C2=A0=
=C2=A0 The=20
"unhappiness" first starts to manifest as
 =C2=A0 non-linearity, and then moves on to device destruction.=C2=A0 The=
 gate=20
regions in the low-noise transistors are only a
 =C2=A0 few molecules thick, and in larger electric fields internally, th=
ey=20
just kind of evaporate.


>
> On Thu, Apr 24, 2025 at 4:25=E2=80=AFPM <temirkarakurum@gmail.com> wrot=
e:
>
>     I have a quick question regarding the max input power. -15 dBm is
>     the suggested max power rating for B210. Is this average or peak
>     power?
>
>     If I have a +10dBm peak power signal with a duty cycle of 0.1%
>     (30dB), thus an average power of -20 dBm, would this mean that I
>     am safe? Or is there still a chance of damaging the SDR?
>
>     Best,
>     T
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------MY0MDANKR2GGwndKo02gnk1g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/04/2025 16:29, Anil Gurses via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+SNdgXUbkF6NqzRVvgvWvip_BqfDnW8W1__gjWwcP_XCw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,<br>
        <br>
        It's the peak power input, not average. Anything beyond that
        level might damage the RF chain. <br>
        <br>
        A.</div>
    </blockquote>
    THIS.<br>
    <br>
    Most of the Ettus/NI radios are designed for use in an "over the
    air" scenario, where signal levels are expected to be low,<br>
    =C2=A0 and sensitivity is a requirement.=C2=A0 This is very different=
 from
    (for example) a laboratory spectrum analyzer or radio<br>
    =C2=A0 protocol analyszer.<br>
    <br>
    In the world of "over the air" signals of -60dBm are actually quite
    strong, and it's typically the case that such radios<br>
    =C2=A0 have a narrow-band MDS of -130 to -140dBm.=C2=A0=C2=A0 So, in =
that context,
    anything even approaching -10dBm is<br>
    =C2=A0 a very very strong signal, and small-signal, low-noise RF gain
    stages are generally unhappy with signals that your<br>
    =C2=A0 laboratory spectrum analyzer would be perfectly happy with.=C2=
=A0=C2=A0 The
    "unhappiness" first starts to manifest as<br>
    =C2=A0 non-linearity, and then moves on to device destruction.=C2=A0 =
The gate
    regions in the low-noise transistors are only a<br>
    =C2=A0 few molecules thick, and in larger electric fields internally,
    they just kind of evaporate.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+SNdgXUbkF6NqzRVvgvWvip_BqfDnW8W1__gjWwcP_XCw@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 24, 2025 at
          4:25=E2=80=AFPM &lt;<a href=3D"mailto:temirkarakurum@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">temi=
rkarakurum@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <p>I have a quick question regarding the max input power. -15
            dBm is the suggested max power rating for B210. Is this
            average or peak power?<br>
            <br>
            If I have a +10dBm peak power signal with a duty cycle of
            0.1% (30dB), thus an average power of -20 dBm, would this
            mean that I am safe? Or is there still a chance of damaging
            the SDR?<br>
            <br>
            Best,<br>
            T </p>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------MY0MDANKR2GGwndKo02gnk1g--

--===============5519199122742135069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5519199122742135069==--
