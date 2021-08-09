Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 769E53E4AA7
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 19:17:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA8B83849D4
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 13:17:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="emUT2OsL";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D37738552F
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 13:15:39 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id y9so2786213qtv.7
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 10:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=DwbU3nEi0UAJNFhjYN3SvRsDp+Ksf54mQaGkHJRqiSk=;
        b=emUT2OsLfQSx3m3uX7A/2dWg/KQckO3IcRNHsE8Iz+QTZ5MXtCex3hMLPg7GTG101S
         /mqpEed9Zx2bMWM+2Kger6+b1Df5PVboxkA65SZp32F0mkpHqBDYNGqRLAPwEcHtof2g
         O0m0OwZe7FwuOM+NQGGAKdy12zIBVRxj+IT1hwxI5zMyoru0SqDAN32e9Cufg77bmaIS
         uQDchPhctMdnDVO4vveHeqxtak1mVBPZru/Hgxy4IuB5u3DXmgkyZcYYEAVhTljTH+q4
         xrEwRYXUE2KYcDwy4/19Dep/XogJdg0PHBUObFZ4L/XPJ0irhRZIVa3qoaNpuFNoz+ST
         XuvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=DwbU3nEi0UAJNFhjYN3SvRsDp+Ksf54mQaGkHJRqiSk=;
        b=MMJWQHH9otsGiWNaEb7W59SGMhC1mILoiWtgqjud8FunIcgzMUi9yiN/BpoU1yTiDW
         KaeVZc5nNoUcAKl71DFrV1xR/Bz/kMgmTDJEbcr+Q8b+5D/ck+90q6FqscisEyV1DswB
         Csd04y2a/6GYKDrKae41nAOYycD5y+pb502feevF7RO2qojCQXV7jh1GYMbUY+nir7fr
         S4qo2mH0VP2+2APcTihfiyzhhosfvmSsMzJ07t1jurmTTTvlpZ5WA/9BT/hgKGamZ+WC
         SOSo1VBKCGHd1gAk3KGdMIX5pLEnCHvmaQNVGB0RlJrtpAARoQ9U12gU3nouGK/YLsJz
         r1lA==
X-Gm-Message-State: AOAM533xyvgZKPCz0xumT0a1hh3izrWIRLGaThD+HjgFIdo3mzyoM99H
	0FQLqgknWxgOuGefo8wFM6noa8MXgbVhNQ==
X-Google-Smtp-Source: ABdhPJx1OFgaeyMF1RB/W86HRAFvLnczwfi+XksLSqA9gyjtykd3ErbqRJzEg25hWrcdEOtTkyWl8Q==
X-Received: by 2002:ac8:7eea:: with SMTP id r10mr20608360qtc.349.1628529338622;
        Mon, 09 Aug 2021 10:15:38 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id j7sm6896518qtx.39.2021.08.09.10.15.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 10:15:38 -0700 (PDT)
Message-ID: <611162B8.3050908@gmail.com>
Date: Mon, 09 Aug 2021 13:15:36 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com>
In-Reply-To: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com>
Message-ID-Hash: 7LHKDFNHZ64P2ISVS23XK3BBGAROK6R7
X-Message-ID-Hash: 7LHKDFNHZ64P2ISVS23XK3BBGAROK6R7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 RFNoc radio block question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7LHKDFNHZ64P2ISVS23XK3BBGAROK6R7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1620609475460074390=="

This is a multi-part message in MIME format.
--===============1620609475460074390==
Content-Type: multipart/alternative;
 boundary="------------000704040905010606070003"

This is a multi-part message in MIME format.
--------------000704040905010606070003
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/09/2021 12:45 PM, rblack@swri.org wrote:
>
> Ettus documentation suggests the radio can be configured for a 25 MS=20
> sampling rate (The master 200M / 8). I=92m wondering if it is possible=20
> to get the RFNoc RX *Radio block *to do this without the DDC block. Is=20
> that possible? Entering anything other than 200M in the =93Sample Rate=20
> (Hz)=94 field causes errors.
>
No.  The architecture is that the radio operates at the ADC rate, and in=20
many cases (X310) the ADC rate is mostly fixed (or selectable from
   a small number of discrete values).

The entire role of the DDC is to do both rate conversion and final=20
frequency tuning (because many synthesizers aren't able to tune to
   very-fine frequency increments).
>
> In these Radio blocks, what is the Bandwidth(Hz) entry used for?
>
The bandwidth setting sets the *ANALOG* bandwidth ahead of the ADC. In=20
many cases, it's  "do nothing" because the radio complex-baseband filters
   are fixed, to match the ADC rates.


>
> Is there any reason that you cannot use a Radio block *without* the=20
> DDC block, sampling rates aside?
>
Conceptually, no.  But the DDC exists for very good reasons.


>
> thanks- rb
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------000704040905010606070003
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/09/2021 12:45 PM, <a class=3D"mo=
z-txt-link-abbreviated" href=3D"mailto:rblack@swri.org">rblack@swri.org</=
a>
      wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.co=
m"
      type=3D"cite">
      <p>Ettus documentation suggests the radio can be configured for a
        25 MS sampling rate (The master 200M / 8). I=92m wondering if it
        is possible to get the RFNoc RX *Radio block *to do this without
        the DDC block. Is that possible? Entering anything other than
        200M in the =93Sample Rate (Hz)=94 field causes errors.</p>
    </blockquote>
    No.=A0 The architecture is that the radio operates at the ADC rate,
    and in many cases (X310) the ADC rate is mostly fixed (or selectable
    from<br>
    =A0 a small number of discrete values).<br>
    <br>
    The entire role of the DDC is to do both rate conversion and final
    frequency tuning (because many synthesizers aren't able to tune to<br=
>
    =A0 very-fine frequency increments).<br>
    <blockquote
      cite=3D"mid:A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.co=
m"
      type=3D"cite">
      <p>In these Radio blocks, what is the Bandwidth(Hz) entry used
        for?</p>
    </blockquote>
    The bandwidth setting sets the *ANALOG* bandwidth ahead of the ADC.=A0
    In many cases, it's=A0 "do nothing" because the radio complex-baseban=
d
    filters<br>
    =A0 are fixed, to match the ADC rates.<br>
    <br>
    <br>
    <blockquote
      cite=3D"mid:A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.co=
m"
      type=3D"cite">
      <p><br>
      </p>
      <p>Is there any reason that you cannot use a Radio block *without*
        the DDC block, sampling rates aside?</p>
    </blockquote>
    Conceptually, no.=A0 But the DDC exists for very good reasons.=A0 <br=
>
    <br>
    <br>
    <blockquote
      cite=3D"mid:A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.co=
m"
      type=3D"cite">
      <p><br>
      </p>
      <p>thanks- rb</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
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

--------------000704040905010606070003--

--===============1620609475460074390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1620609475460074390==--
