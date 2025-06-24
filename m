Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE5BAE6DA8
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 19:36:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B459385BEB
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 13:36:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750786567; bh=srApQOEGSC85LHepLjqBLi+am+DqHcV7hbDZeOEiijY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QeZmQoQRq1Qx69mpjC0LWJJCwnNNQrsIduZdBRzt0z//gad5C/eY8EgBVB/XK/GkF
	 x7iZqiAYNI2iMyMLH0HIs/J3C9AyLvlozBK7dXl3NWj0S9PrcmOwD7wqU04ZCAhsAc
	 JugFOK8VBj2vSVzQ3IJExgvXaSvQJGzoY3YE6doXFPSMQvH2pogRK9107RxW/nmy7o
	 saLuvGHnNna8hHa3RtMYRmTEOtUL8ouY3viQKykkfBMCo028ow3pxU2Yw+u5iRj3d6
	 FxRJbGberJqWtSf/zyy/GMzb0KG4dVBtb9uzuGodH5W1ohRMSveq8JzMRy7rQ21sho
	 BkRTLYeD6lAfw==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 2FD433855F3
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 13:35:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J6ZhX+ky";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7cadd46ea9aso881759185a.1
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 10:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750786499; x=1751391299; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3rdPqPJ6BbumohCMgX59n51verwQfBULG+ZaPceH7Bs=;
        b=J6ZhX+kyE+e8Ir3Ug1quWYMUOWHOYJie0tripB2OnDo70Gmh35tJX9zKeEHeMSNcZA
         SNabqjSS4+POdrj5FlhCvDXnPvVPGD8b4audR4S1Lqs4UGym78MHP0CpEgWWYH5aILN0
         nlQ+C1z6efT6Egmc/sLaKpP/RbksKxAK0WwWyquMTir6dbtPxpdB5OhOPXhmUYH5YYZP
         /RZC9eXr+j0AtXX60h2vlkMsredkvOdwLHwAx+tfi0gURjKe4ICwDNI3KU0ufVkdNJYk
         yyI8OCpH9j+lEt93oHY8l2runE+P2+SW82+ORUJvfvOCjPuSQeAkwi88AHJbrj+qxIKu
         AOrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750786499; x=1751391299;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3rdPqPJ6BbumohCMgX59n51verwQfBULG+ZaPceH7Bs=;
        b=im72sW9kDUZtlXzCgSN9phqNbbRmaycmnFHDdMxWxfqeQIH+KCMY7MliwoweuddxW5
         YOyRWzOXEpPAyzZOieZxRNfOvrJUngEjjw6rDe4prn/fi27+p+fV8QZNdVO92nGhil1y
         7afj6jSEZf/ahzGo3MiN5RAQUICMbnO+HKIywhynsVQBIuWAGsIgWe5Hs1q09BLcE7PH
         5iFy8A4JuhGT8KbFsRveu9X0R+saUZyzZmrVdhCD6IxtP7k2rzbjlns7XOAAVrwbrGQT
         TTk3nD5PbU26/I92ZHyogIW2hcyOR84t3rwfw8+weSZ4MG4Y8n8SMPbZAN/jFnJ/q9Sl
         u/9w==
X-Gm-Message-State: AOJu0YwBzoOKiic7bKM/TlCgyb1o5TxTz78iq4iIlvTJ0aLUmhXTvc3b
	TnS0E54XSECMP3w5+wM5XfFBlVnpb8u1X1paJsrmouWVZ7I/okI7KcQeksfN+A==
X-Gm-Gg: ASbGncsO+FzmepK+BGFDA5YSl4lZ+MZ7huOYRZ27R2f6pkfOzn0rFznr6L+MukGqUgb
	8RE4fRtnSWq5mKYn/4ZmvKpuQVC97TlMkZqhl4HX/XM1gJN3pbcDROp+majGdd36S8J/XCZ7olx
	VdNpzHMetvoLtWjp50JBlG3GVk1RLfB4x4rTiH0OoMuXk6ImJPA1QYfdoHTEbZfii+0Rt2CLIln
	Blk/B9wx7fQpmi8m5VZL+PUKAn+2WrEU/Mib/z/oSI8BDypNcXm28bv7XvT+RwmUK4sSzbt4i8w
	NUYGIZnkfLXiBaTQMz2x7WyW3uwrNB9oMEcHm0uGygrkBHVcghMjTiFaAYnfSVHsPhJltBOYiLN
	VfSK82QHaR5/slFrwx73ipmHZnQjQxjOW20DWowBI3/xP0M6hNJSp02fjj1l2MWlkwbrk
X-Google-Smtp-Source: AGHT+IFcOfQnbnn2gKwOoat4FEMdeqy7vL1oNVpC398UKL0Ui8ceiskQufaMwAHsLcCmOM18Ki0S1w==
X-Received: by 2002:a05:620a:1a0d:b0:7d3:8ca0:65c6 with SMTP id af79cd13be357-7d3f98e6c15mr2333786985a.20.1750786499078;
        Tue, 24 Jun 2025 10:34:59 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-07-174-93-0-120.dsl.bell.ca. [174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7d3f9a04f3asm525573685a.101.2025.06.24.10.34.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 10:34:58 -0700 (PDT)
Message-ID: <ba8ec166-42e6-4a2b-b30b-a1116c8c771c@gmail.com>
Date: Tue, 24 Jun 2025 13:34:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE@lists.ettus.com>
 <CAFOi1A45949cEDtiM8_=BqpLHv1CMHiEwULUKoGUwOXEnax06A@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFOi1A45949cEDtiM8_=BqpLHv1CMHiEwULUKoGUwOXEnax06A@mail.gmail.com>
Message-ID-Hash: FDLCX7C34WALCAGKBROJBV5V2B32JZ43
X-Message-ID-Hash: FDLCX7C34WALCAGKBROJBV5V2B32JZ43
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 UBX Tx issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDLCX7C34WALCAGKBROJBV5V2B32JZ43/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8961389318917086710=="

This is a multi-part message in MIME format.
--===============8961389318917086710==
Content-Type: multipart/alternative;
 boundary="------------Y9umHXANksM6BZno7RIF71E8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Y9umHXANksM6BZno7RIF71E8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-06-24 13:29, Martin Braun wrote:
>
>
> On Thu, Jun 12, 2025 at 9:56=E2=80=AFPM <tommytsui@w5tech.com> wrote:
>
>     Hi Rob,
>
>     Thank you for your reply. Indeed, when I ran UHD probe on another
>     X310 with the old WBX daughter card installed, the old radio
>     daughter card model reported WBX-120, not WBX-40 as I first
>     thought. Your answer on another post explained it all. The max
>     lo_offset depends on the RF bandwidth of the radio card and the
>     signal bandwidth. Is such information available on any Ettus
>     Research Wiki website? I don=E2=80=99t recall I had seen such expla=
nation
>     on internet. Anyway, thank you so much for your explanation!
>
>
> It's one of those things that is not USRP-specific, but a generic RF=20
> thing. We don't always document those (although there are plenty of=20
> cases where we do). Anyway, glad you figured it out!
>
> --M
>
It continues to be the case that there's a large amount of "background=20
knowledge" that we (and, really any OTHER vendor of SDRs) kind of *assume=
*
 =C2=A0 that our users/devs already know.

For many people developing in the SDR space these days, the radio and=20
DSP aspects are kind of "details" that are secondary to the project goals=
.
 =C2=A0 Not sure how ANY vendor can really address this without basically=
=20
offering the equivalent of (part of) an undergraduate EECS degree=20
program....




--------------Y9umHXANksM6BZno7RIF71E8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-06-24 13:29, Martin Braun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A45949cEDtiM8_=3DBqpLHv1CMHiEwULUKoGUwOXEnax06A@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote gmail_quote_container">
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 12, 2025 at
            9:56=E2=80=AFPM &lt;<a href=3D"mailto:tommytsui@w5tech.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">to=
mmytsui@w5tech.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <p>Hi Rob,</p>
            <p>Thank you for your reply. Indeed, when I ran UHD probe on
              another X310 with the old WBX daughter card installed, the
              old radio daughter card model reported WBX-120, not WBX-40
              as I first thought. Your answer on another post explained
              it all. The max lo_offset depends on the RF bandwidth of
              the radio card and the signal bandwidth. Is such
              information available on any Ettus Research Wiki website?
              I don=E2=80=99t recall I had seen such explanation on inter=
net.
              Anyway, thank you so much for your explanation!</p>
          </blockquote>
          <div><br>
          </div>
          It's one of those things that is not USRP-specific, but a
          generic RF thing. We don't always document those (although
          there are plenty of cases where we do). Anyway, glad you
          figured it out!</div>
        <div class=3D"gmail_quote gmail_quote_container"><br>
        </div>
        <div class=3D"gmail_quote gmail_quote_container">--M</div>
      </div>
      <br>
    </blockquote>
    It continues to be the case that there's a large amount of
    "background knowledge" that we (and, really any OTHER vendor of
    SDRs) kind of *assume*<br>
    =C2=A0 that our users/devs already know.<br>
    <br>
    For many people developing in the SDR space these days, the radio
    and DSP aspects are kind of "details" that are secondary to the
    project goals.<br>
    =C2=A0 Not sure how ANY vendor can really address this without basica=
lly
    offering the equivalent of (part of) an undergraduate EECS degree
    program....<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------Y9umHXANksM6BZno7RIF71E8--

--===============8961389318917086710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8961389318917086710==--
