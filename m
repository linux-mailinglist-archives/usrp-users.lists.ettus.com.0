Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 690FEA3ACFC
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 01:13:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6939738614E
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 19:13:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739924029; bh=vO8WzfANpHX7njGDulk4zFtF89qnuYnYV8w/fabav2g=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fpjPfY8mfO5VHBJZ27a7bRbrT1xAZd+6ATYE/0aXiww8nB308bLuz0/ezG2M78sdH
	 YGbbfSrXP0GSBN42zQlogV7GzWLrHPYBuJIYopfSCt8lOb0CT160YVmJLb8vcdkKBw
	 h64kDwHQGKe+FR/QxlmQW4rGIS8yykEo7ekN2Ct1l4l4qPxdtaCGVlkZAiC+BihMDn
	 vcH0k30C0fi0SCEjH+3Z/iqDjxEE9Ot6ov3rPvTp/tYZXPa0VM+Opk8WsCpl5LYhQA
	 XXY7+8xV9PR+joA6TfOKBLlWhCqZngyE0yCy38D2wxYsWs819LQS+GcG+XABmX2xzh
	 hzgaCTz+goK4w==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 596EE385E2F
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 19:13:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vectalabs-com.20230601.gappssmtp.com header.i=@vectalabs-com.20230601.gappssmtp.com header.b="rDlAovhA";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30a440effcfso3621931fa.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 16:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20230601.gappssmtp.com; s=20230601; t=1739924022; x=1740528822; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PIIwXX2HemUJJ/6XnOt+Lf1FctPxo0Uzi5adcn0alkY=;
        b=rDlAovhA/wsWxGJbSeQ/dpnXJ6B24tUQvz+niNJJQL9PH1sT6oE1Qd1hV5nT9LLyNc
         0sqQXB1z7wQwOnGdo9xA0KX6e9bDPPWzLC+IRN91N1Su0E1baJENmryMtsc7w4sRdTwz
         Wa7D4DZjmA8OTup2TKST+sbd/ss3c4urs4Zex9f3/KZnNNXHNXKke0ZKz6uNGX8qaCTG
         Ky3no54uYnE/ZXIRHwA+0BMMK6XemeFfsj4awcd4QaeDhbECR2WVE5xYXG/xs13nOa6B
         hHWZRhE1US84PH+fFEwiBHQH8mBM+n99IY5TXWXUH+sT0o1zmJsbpkdPrzKn5lZYclQl
         5Slg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739924022; x=1740528822;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PIIwXX2HemUJJ/6XnOt+Lf1FctPxo0Uzi5adcn0alkY=;
        b=hwn37v3PyM9KdkKKWPq9Pgzg5y5pXt0tGNS5ULTiufNa+RJheOobQnAFzY9/++Xocg
         SuB+9uB43RJDqZPdc/OwesdV6aYh8CuPbfuLdcbApLanKfhxXHPU4/OwEFL2OOs8GLiT
         2T17X82yvA8ZCIX3f9Badxhu0RCU46D1DAHz1nCuncF8ofD9aO35dIv9DNrJQoUf7HDY
         w9dg61WLsMrF6MNysdQYdVggJyWO45t5z77toaFzkAydOUw5i1Z68PvYBU3YzBl9kV5H
         EByPQbS9A3nxvHpfqfoBUT2hfXDlvCygobv3/EC/F9YnW/6GTwV/0RxbfvPxC2sKnWvj
         tqDg==
X-Gm-Message-State: AOJu0Yx13xBZLS7pQWFypkFZNquIlK3UguZeubR4SwkpqVwmsLli1qye
	DnbnDNn+hMLscr14yvk0jQyJAXDmrd7Ym4f+NWVLuEJ0+A3r9UwszYjsfKcIEcyNe1KDQYkN2rR
	TecnPrxrbKqvlMzFvUeAs50VjvqeamADBiKZLhw==
X-Gm-Gg: ASbGncuX1/C86/jySZkT1FT6qPCxHPe00d6EK+WeyR/sQHxTDfjzV0q3kBxgN9ePpaQ
	t+tu+0tyfDvTokeT9f81yUZLKYZXrXKK2rUB7csTFd8Kzc40sVdELRn1fyqyZzdxzs1GpiwZi
X-Google-Smtp-Source: AGHT+IFfjyHalkFE6RErNoVDd/QBXBxovkkyDw8gDYDd4WeeABZb6qChoXsym3pY6Go3ll1KSmCkEZhw2i+3mDwqw5U=
X-Received: by 2002:a2e:8018:0:b0:308:eabd:297b with SMTP id
 38308e7fff4ca-30a440f900bmr6754731fa.4.1739924021969; Tue, 18 Feb 2025
 16:13:41 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com> <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com>
In-Reply-To: <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 19 Feb 2025 10:13:30 +1000
X-Gm-Features: AWEUYZnohLKiw9TgWj1zn6MlozPXoVxQCCPpTUnPdixciT8HhPcoGCg5oP8o2pM
Message-ID: <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WZOUC65LR7OFW6XNUFFUQEBVQW5OEBT6
X-Message-ID-Hash: WZOUC65LR7OFW6XNUFFUQEBVQW5OEBT6
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZOUC65LR7OFW6XNUFFUQEBVQW5OEBT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1989140918247719186=="

--===============1989140918247719186==
Content-Type: multipart/alternative; boundary="000000000000441e72062e73a1f3"

--000000000000441e72062e73a1f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the suggestion about the noise source -- that's what I would
normally do.  Unfortunately I haven't actually purchased the hardware yet
-- I was hoping to clarify this issue before raising a purchase order.

Perhaps I should follow this up with one of the application engineers at
NI?  They might have access to an X310+UBX-160 system that they can use to
answer my question directly.

Thanks again for your help in this matter.

Regards,
Brendan.


On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 18/02/2025 18:45, Brendan Horsfield wrote:
>
> Yes, I assumed that was the case.  However, it is not clear from the X300
> documentation how sharp those filters are.  Can you tell me how wide the
> transition band is at the lower sample rates?
>
> To give you some context, I would like to use an X300 (or X310) with a
> UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, which is
> 83.5 MHz wide.  Ideally I would like to use a sample rate of 100 Msps to
> minimise the data rate between the USRP and the host PC.  However, before=
 I
> do this I need to be certain that the usable bandwidth at this sample rat=
e
> will be greater than 83.5 MHz.  Is this information documented somewhere?
>
>
> It somewhat depends on the decimation.  If the decimation has a factor of
> two or 4, the edge roll-off is fairly sharp.  Otherwise,
>   there's a half-band filter in-place that causes a less-desirable
> pass-band.
>
> But I don't know, precisely, what the transition band is in the "nicer"
> filter shapes.
>
>
> If you have an X310+UBX-160, you can always just use a noise source, and
> measure it yourself to see if it's appropriate for
>   your application.
>
>
>
>
> On Tue, 18 Feb 2025 at 23:11, Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> There will always be some edge roll off. Decimation includes filtering
>> and those filters cannot be infinitely steep.
>> Sent from my iPhone
>>
>> > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield <
>> brendan.horsfield@vectalabs.com> wrote:
>> >
>> > =EF=BB=BF
>> > Hi All,
>> >
>> > I have a question about the usable bandwidth of the X300 USRP / UBX-16=
0
>> daughterboard combo at sampling rates below 200 Msps:
>> >
>> > As I understand it, the UBX-160 receiver has an analog (hardware)
>> filter before the ADC that limits the usable bandwidth to 160 MHz, while
>> the ADC runs at 200 Msps.  Therefore the usable bandwidth is around 80% =
of
>> the sample rate.
>> >
>> > My question is:  What is the usable bandwidth at lower sampling rates?
>> Does the 80% factor always apply?
>> >
>> > For example, if I set the decimation factor to 4, so that my sampling
>> rate is 50 Msps, does this mean that the usable bandwidth will be 40 MHz=
?
>> >
>> > Thanks & Regards,
>> > Brendan.
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000441e72062e73a1f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the suggestion about the noise source -- that&#=
39;s what I would normally=C2=A0do.=C2=A0 Unfortunately I haven&#39;t actua=
lly purchased the hardware yet -- I was hoping to clarify this issue before=
 raising a purchase order.<div><br></div><div>Perhaps I should follow this =
up with one of the application engineers at NI?=C2=A0 They might have acces=
s to an X310+UBX-160 system that they can use to answer my question directl=
y.</div><div><br></div><div>Thanks again for your help in this matter.</div=
><div><br></div><div>Regards,</div><div>Brendan.</div><div>=C2=A0 =C2=A0</d=
iv></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech &lt;=
<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 18/02/2025 18:45, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Yes, I assumed that was the case.=C2=A0 However, it =
is
        not clear from the X300 documentation how sharp those filters
        are.=C2=A0 Can you tell me how wide the transition band is at the
        lower sample rates?
        <div><br>
        </div>
        <div>To give you some context, I would like to use an X300 (or
          X310) with a UBX-160 daughterboard to digitise the entire 2.4
          GHz Wi-Fi band, which is 83.5 MHz wide.=C2=A0 Ideally I would lik=
e
          to use a sample rate of 100 Msps to minimise the data rate
          between the USRP and the host PC.=C2=A0 However, before I do this=
 I
          need to be certain that the usable bandwidth at this sample
          rate will be greater than 83.5 MHz.=C2=A0 Is this information
          documented somewhere?=C2=A0=C2=A0</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    It somewhat depends on the decimation.=C2=A0 If the decimation has a
    factor of two or 4, the edge roll-off is fairly sharp.=C2=A0 Otherwise,=
<br>
    =C2=A0 there&#39;s a half-band filter in-place that causes a less-desir=
able
    pass-band.<br>
    <br>
    But I don&#39;t know, precisely, what the transition band is in the
    &quot;nicer&quot; filter shapes.<br>
    <br>
    <br>
    If you have an X310+UBX-160, you can always just use a noise source,
    and measure it yourself to see if it&#39;s appropriate for<br>
    =C2=A0 your application.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>=C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2025 at 23:11,
          Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">There
          will always be some edge roll off. Decimation includes
          filtering and those filters cannot be infinitely steep. <br>
          Sent from my iPhone<br>
          <br>
          &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield &lt;<=
a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">brendan=
.horsfield@vectalabs.com</a>&gt;
          wrote:<br>
          &gt; <br>
          &gt; =EF=BB=BF<br>
          &gt; Hi All,<br>
          &gt; <br>
          &gt; I have a question about the usable bandwidth of the X300
          USRP / UBX-160 daughterboard combo at sampling rates below 200
          Msps:<br>
          &gt; <br>
          &gt; As I understand it, the UBX-160 receiver has an analog
          (hardware) filter before the ADC that limits the usable
          bandwidth to 160 MHz, while the ADC runs at 200 Msps.=C2=A0
          Therefore the usable bandwidth is around 80% of the sample
          rate.<br>
          &gt; <br>
          &gt; My question is:=C2=A0 What is the usable bandwidth at lower
          sampling rates?=C2=A0 Does the 80% factor always apply?=C2=A0 <br=
>
          &gt; <br>
          &gt; For example, if I set the decimation factor to 4, so that
          my sampling rate is 50 Msps, does this mean that the usable
          bandwidth will be 40 MHz?<br>
          &gt; <br>
          &gt; Thanks &amp; Regards,<br>
          &gt; Brendan.<br>
          &gt; <br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000441e72062e73a1f3--

--===============1989140918247719186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1989140918247719186==--
