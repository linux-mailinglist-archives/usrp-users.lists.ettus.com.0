Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFE34A8F3E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 21:43:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53C12385D68
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 15:43:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M6dQd2S3";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D6A32385B0A
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 15:42:52 -0500 (EST)
Received: by mail-qk1-f179.google.com with SMTP id b22so3051617qkk.12
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 12:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=bH8Pu1Iz18kbD0HPeQgz2e3WgK+sSFrJMzAVeb7AhUI=;
        b=M6dQd2S3qDilityjZ68TehR6wBV9rUJa8BLY28zha0xwgDIf0velVItf5VZnfL+oBP
         vCz4QTW85wVetehr8acrRs9fGpomRSB5y5KyMikEQ0IsTtcDHYbTNRwdKaW2IZH/iN2/
         LmdywT6b7Bg+HbIcsGwPuRrfTaab7zUIi8KCP9rQ7hJRGUOo9j6wLIsPVE6aC3D9rCVp
         lm1XHQQDXnwl96OWyhtrPfPB45BiNHT5yWTuPwhZIdvt6VOHOTo+lD1JKtlg4qhQUT2W
         +F0ZgyiLVXaGOMlfG2ZH290fogbEp3HoLLg3Me/maStqgYUY+KeHoQ0oa9zud5PO4djG
         FuFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=bH8Pu1Iz18kbD0HPeQgz2e3WgK+sSFrJMzAVeb7AhUI=;
        b=x4x9bOPA/b+84CuSKeBxMOtq6o3D2yy9WAsqOjg7gM38+2fAGzyWohDdeb2zqwvtB2
         rXmfJJcfjK9BrDGZCZObzWiYis/z4LmxmS/FpJNVp7AU+NzXTxydrfJD9YYEVHf+yoLd
         4Y1CZbWnOcF4hzwM1YSaeDSBWmPtZjc0J+15o1bUkToUU1gbBvoXxoQUCa6aynEWB4dt
         gy7V80cGm13HnxXhUXCi9XEWjuINqEK5XTzJVxkInekLilXATsx3HQzifq4LvXxcJCd3
         S+0iPeHwcOmKJe+p3BWjSgjaIawEUFfX8vejYDixAiNocM8+EXAzkJJ2RW8Wr9ymcN5v
         QFwA==
X-Gm-Message-State: AOAM531ddiXuP88V2nBN1ph9/fK2XWjsZTPKhuL7yZOsODbF/bm4DrxN
	lQhBBWBeTcgE52HzBGrEomg=
X-Google-Smtp-Source: ABdhPJw0ZGSQugRtm2+dNjkmFJkZx9KQL7+rfyIgensgAIHBSeOlD8zIwqsxMEJ6bvez7n+j8xj9Uw==
X-Received: by 2002:a05:620a:4f3:: with SMTP id b19mr24708440qkh.387.1643920972051;
        Thu, 03 Feb 2022 12:42:52 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id y15sm14838533qko.133.2022.02.03.12.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 12:42:51 -0800 (PST)
Message-ID: <794e4c78-a3e8-ec9f-7cb1-1635df386ed7@gmail.com>
Date: Thu, 3 Feb 2022 15:42:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: John Hodgins <johnyhodgins@gmail.com>
References: <CAGM_aqyAQ9M-vHC7NrbzrvbPd6_YJQ8vZiQRE9hSoPJZfM6vGg@mail.gmail.com>
 <9b49be1d-f09c-86b8-cdbe-3389243c29b9@gmail.com>
 <CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmail.com>
Message-ID-Hash: I6PGOP6XWJESDH7A4TYG5P6UXLCIWSN7
X-Message-ID-Hash: I6PGOP6XWJESDH7A4TYG5P6UXLCIWSN7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands compatibility between different USRP series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I6PGOP6XWJESDH7A4TYG5P6UXLCIWSN7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4720685421863020600=="

This is a multi-part message in MIME format.
--===============4720685421863020600==
Content-Type: multipart/alternative;
 boundary="------------wBdT5ZPub8xs7J0jwHbGAjgr"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------wBdT5ZPub8xs7J0jwHbGAjgr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-03 15:35, John Hodgins wrote:
> Thanks for the prompt response Marcus. Should the discrepancies=20
> express themselves as a constant offset in cross-correlation or can=20
> the delay measurements also oscillate in a volatile fashion? For=20
> B210-E310 we see a more constant looking offset whereas B210-X310 is=20
> just wild.
Don't forget that the master-clock is quite different between B210 and=20
X310--I assume that you're sharing a common (10MHz) reference?

>
> Also I remembered this discussion=20
> <https://lists.ettus.com/empathy/thread/2H5WCI2MEWWJKXHXGPMK5UWQXETQ4JR=
W?hash=3DL7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C#L7PPGLOU2FJDCA4ELC2TXJZW75WJQX4=
C>=20
> from sometime ago where rising vs falling edges were used for=20
> different USRPs.
Yes, I think the X310 uses falling-edge, which will make it not-align=20
with any of the other units that use rising-edge.=C2=A0 I think R&D
 =C2=A0 is revisiting this decision.


>
> Given your answer, can we say that for timed commands it is not a good=20
> idea to mix and match different USRP series?
Absolutely.=C2=A0 Realistically, it has never been a design goal to provi=
de=20
precise alignment among different types of USRPs.

>
> Best,
> John
>
> On Thu, Feb 3, 2022 at 11:27 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-02-03 15:17, John Hodgins wrote:
>     > Hi there,
>     >
>     > We have a simple set up where we collect iq snippets from 3
>     usrp's at
>     > the same rx-times via timed commands. We introduce delays
>     between the
>     > usrp's via a reference delay box and try to recover the introduce=
d
>     > delays via cross-correlation.
>     >
>     > Things work great when=C2=A0all the rx's belong to the same USRP =
family.
>     > For instance we have been able to recover the correct delay for a=
ll
>     > B210 (with GPSDO/TCXO) or all=C2=A0E310 (with GPS antenna) scenar=
ios.
>     > However, when we mix different USRP's, the delays computed via
>     > cross-correlation no longer make sense.
>     >
>     > For instance, when we use 1 B210 and 2 E310's the delays between
>     B210
>     > and E310's just oscillate wildly but the relative difference
>     between
>     > E310 remains relatively stable. We tested 2 B210's with a single
>     X310
>     > (with GPSDO/OCXO) as well and we see the same problem as well. Th=
e
>     > interesting thing is though visualizing the spectrum of collected
>     > snippets from different USRPs show pretty much the spectrum of th=
e
>     > known applied signal.
>     >
>     > Is there some fundamental discrepancy between different USRP
>     families?
>     > Or maybe UHD somehow interprets samples differently for different
>     > USRP's=C2=A0(flipping i and.q, different rx-time, pps implementat=
ions,
>     > some precision issues maybe)?
>     >
>     > In any case I would be grateful if anyone=C2=A0can shed some ligh=
t onto
>     > this behavior.
>     >
>     > Best,
>     > John
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     The group delays between USRP families will be different due to
>     different FPGA implementations, the exact "placement" of time-of-da=
y
>     registers, etc.
>
>     It would be very difficult to guarantee phase-coherence across
>     different
>     USRP device types, because the implementations are different--not
>     just
>     the FPGA bits and
>     =C2=A0=C2=A0 pieces (DUCs, DDCs, etc), but also the analog stages w=
ill be
>     different.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------wBdT5ZPub8xs7J0jwHbGAjgr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-03 15:35, John Hodgins
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks for the prompt response Marcus. Should the
        discrepancies express themselves as a constant offset in
        cross-correlation or can the delay measurements also oscillate
        in a volatile fashion? For B210-E310 we see a more constant
        looking offset whereas B210-X310 is just wild.<br>
      </div>
    </blockquote>
    Don't forget that the master-clock is quite different between B210
    and X310--I assume that you're sharing a common (10MHz) reference?<br=
>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmai=
l.com">
      <div dir=3D"ltr"><br>
        Also I remembered this <a
href=3D"https://lists.ettus.com/empathy/thread/2H5WCI2MEWWJKXHXGPMK5UWQXE=
TQ4JRW?hash=3DL7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C#L7PPGLOU2FJDCA4ELC2TXJZW75=
WJQX4C"
          moz-do-not-send=3D"true">discussion</a> from sometime ago where
        rising vs falling edges were used for different USRPs. <br>
      </div>
    </blockquote>
    Yes, I think the X310 uses falling-edge, which will make it
    not-align with any of the other units that use rising-edge.=C2=A0 I t=
hink
    R&amp;D<br>
    =C2=A0 is revisiting this decision.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Given your answer, can we say that for timed commands it is
          not a good idea to mix and match different USRP series?<br>
        </div>
      </div>
    </blockquote>
    Absolutely.=C2=A0 Realistically, it has never been a design goal to
    provide precise alignment among different types of USRPs.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>
          <div><br>
          </div>
          <div>Best,</div>
          <div>John</div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 3, 2022 at 11:2=
7
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2022-02-03 15:17, John Hodgins wrote:<br>
          &gt; Hi there,<br>
          &gt;<br>
          &gt; We have a simple set up where we collect iq snippets from
          3 usrp's at <br>
          &gt; the same rx-times via timed commands. We introduce delays
          between the <br>
          &gt; usrp's via a reference delay box and try to recover the
          introduced <br>
          &gt; delays via cross-correlation.<br>
          &gt;<br>
          &gt; Things work great when=C2=A0all the rx's belong to the sam=
e
          USRP family. <br>
          &gt; For instance we have been able to recover the correct
          delay for all <br>
          &gt; B210 (with GPSDO/TCXO) or all=C2=A0E310 (with GPS antenna)
          scenarios. <br>
          &gt; However, when we mix different USRP's, the delays
          computed via <br>
          &gt; cross-correlation no longer make sense.<br>
          &gt;<br>
          &gt; For instance, when we use 1 B210 and 2 E310's the delays
          between B210 <br>
          &gt; and E310's just oscillate wildly but the relative
          difference between <br>
          &gt; E310 remains relatively stable. We tested 2 B210's with a
          single X310 <br>
          &gt; (with GPSDO/OCXO) as well and we see the same problem as
          well. The <br>
          &gt; interesting thing is though visualizing the spectrum of
          collected <br>
          &gt; snippets from different USRPs show pretty much the
          spectrum of the <br>
          &gt; known applied signal.<br>
          &gt;<br>
          &gt; Is there some fundamental discrepancy between different
          USRP families? <br>
          &gt; Or maybe UHD somehow interprets samples differently for
          different <br>
          &gt; USRP's=C2=A0(flipping i and.q, different rx-time, pps
          implementations,=C2=A0 <br>
          &gt; some precision issues maybe)?<br>
          &gt;<br>
          &gt; In any case I would be grateful if anyone=C2=A0can shed so=
me
          light onto <br>
          &gt; this behavior.<br>
          &gt;<br>
          &gt; Best,<br>
          &gt; John<br>
          &gt;<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
          The group delays between USRP families will be different due
          to <br>
          different FPGA implementations, the exact "placement" of
          time-of-day <br>
          registers, etc.<br>
          <br>
          It would be very difficult to guarantee phase-coherence across
          different <br>
          USRP device types, because the implementations are
          different--not just <br>
          the FPGA bits and<br>
          =C2=A0=C2=A0 pieces (DUCs, DDCs, etc), but also the analog stag=
es will
          be different.<br>
          <br>
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
    </blockquote>
    <br>
  </body>
</html>

--------------wBdT5ZPub8xs7J0jwHbGAjgr--

--===============4720685421863020600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4720685421863020600==--
