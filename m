Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB24AA3C068
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 14:47:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ACBF6386218
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 08:47:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739972842; bh=qYtO0QITa9Wcww9xac2OK+2oMd6wndyS0QewQQG6oM8=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ol2rHXmKIs2unK2ej4p6Dm+BEr0iFx0BT6EjKwE+iDSiD0Fs1HFowfhKrZjxkmJtR
	 MtWLY6hv8agMaYIO9DoSMXSTWZpVCb/AT2NGAtZPi0NzaAw3ilAS33rs2Byup5YFun
	 iQnp42SziRx1I2crhYtbZne8AVXzS08Hd0yfo19lziNBPmdBlBmPHJ/yBcLmi4senX
	 3XXWT+7gJ3ztVP/RPvdUanruOXu0mBomSES/LHZpxZ/k93n8k2AAY+P9nGO/Vqa0kG
	 rXY0w1wnkt1zCQ9kZ8WonGZLCyW0lxsxekBURYfw46XlZhDMzeA/kmuIQLevM1uxAX
	 phuAjJ6ZjKsvg==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 78129386218
	for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2025 08:47:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OEhv25RD";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7be49f6b331so659084485a.1
        for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2025 05:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739972836; x=1740577636; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7F0ALCQ0j5zlEEjaSbEqTjBnG37PTyxayPfW3UtgcRQ=;
        b=OEhv25RDcfTGyp9HAitxjKWw9/nSv1BCJ2HD1lrzZ/p+EKTDN5hs94gV6yfqvi4hKR
         ni9JyOUDMMbf5ySR2tSXxORlptAQKbLnv+CZe+lZxbO/FkE7iNc6mpGp7QikAMRE4QQO
         VSnZW9M7LWxpuXZctS25OW3KCzabAo3pPXG8qSYtpQf+Y9aE9zRGEP/DsffpzTqLOyem
         ZWgGdVDc7TxBoMa9sdVQY/eZjOlyt4sqrvRCKw9JqTsmphI2VtfdPb/1CZTu9viqvPKB
         RgJtKOfjmviSPMVkjpBVah3U/sMrT8eBlfQmMqcJB5Z4VkMt57VDic4rUrHmicMnYom4
         0q5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739972836; x=1740577636;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7F0ALCQ0j5zlEEjaSbEqTjBnG37PTyxayPfW3UtgcRQ=;
        b=sUVBuRkcQA3JoMFsx42IratQKa+jKkm7VnHdZ2ApwoTnC+XBcSWhPPRxVYbKKzMv5j
         4JpGgqyI6LJXMM5vfVhtno7sXn5dI0wc0MHc/ZKVow3z3nS87hbT3+FVkwA71wgFBnJT
         mMEYHJWHMTAGQ51Ph6sweH9y8YAofs1BWU/JvoZc5oL7szQ2JUc2tB0RTHGzN8tvD++E
         cMdwqWmXY4E2nRTWo8t6u15iY1vpiY+Wgcu2LndbppEZn/q9Yxz0oUC0E+30Y5IrFwSR
         D8CFTIEdv4JsfU/Njn136C6VUKaQ/2rqW2MAfMbSjhBUh36XVutESLK2aGOfr6q+bp29
         Ylcw==
X-Gm-Message-State: AOJu0Ywx5Gu2tlnEAW2+dhSlhPPmuO16taBwLTNQHZzpIxIYee/HJYk/
	xKHkdttG1U5W8YQifsLRpvkNsk5UoCQeoQO02P2dk+2Via+rNIn8MJnlosbN
X-Gm-Gg: ASbGncsagtAzfVnOlqReqsrw/KpDhW5x8JsX6rhHRqvVkt1F3SH1eIhYln4SR0o3Kfw
	GNja8S81+NJ2t09Nc63QoR6D/s5vjRhWn4bAWeAyeEw6SjmOqAvv6X0zCXN+wF6YybaCA+VtRVu
	muQqtH+mB5yotaZdiAtyt0Ud4ino/30l37SeDCSiHtRU8WsoRLPqPT7cnZiwMTDrQfeQfgt7WB7
	aOCo4m3tBNV9qFyIakjRKzmywuf+bBtlAW+CkRdCxuiT9dK+PaUnwD3TuR1+MTwtFyKkMbIKQIA
	6p5jrXg/v0PX8vf8FavPmBG8Qw==
X-Google-Smtp-Source: AGHT+IGan+lRhDHXhbBJWK7wXV4zkCIu0MiOB7FtfnnApHxz0/ni1vTlWJlHPifn6tIHf9bX1Rqw9w==
X-Received: by 2002:a05:620a:a48f:b0:7c0:a16e:e83f with SMTP id af79cd13be357-7c0a16eeaa5mr1148221685a.52.1739972835604;
        Wed, 19 Feb 2025 05:47:15 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c0b609b558sm95065985a.68.2025.02.19.05.47.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 05:47:15 -0800 (PST)
Message-ID: <ec4bf843-94e9-4c65-9871-18b1da287212@gmail.com>
Date: Wed, 19 Feb 2025 08:47:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com>
 <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com>
 <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
 <d3a8592f-30fb-45b3-870d-95b6d1b64f2e@gmail.com>
 <CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=A4JGJEDykSq4QvQ@mail.gmail.com>
 <de3fefcd-8095-4537-9efb-8414ec7a24d8@gmail.com>
 <CALNMZ8U5pY=Rm_b5N_kCmsHBV0utfMx5LgtivK=uW_c7rMbYbg@mail.gmail.com>
 <70756578-f8ab-4ff9-9f88-dbf06a92504d@gmail.com>
 <CALNMZ8XkmhLH0SpFRCoK+u+9F2ayTBecDvga1aDG651eZ=UBbw@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALNMZ8XkmhLH0SpFRCoK+u+9F2ayTBecDvga1aDG651eZ=UBbw@mail.gmail.com>
Message-ID-Hash: DZDVL4OE3UM3EFQEIN7XD4QP2NLCCNDN
X-Message-ID-Hash: DZDVL4OE3UM3EFQEIN7XD4QP2NLCCNDN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZDVL4OE3UM3EFQEIN7XD4QP2NLCCNDN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7038506802105437093=="

This is a multi-part message in MIME format.
--===============7038506802105437093==
Content-Type: multipart/alternative;
 boundary="------------u41hjWnfI8ThsIb66KcDZnfY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------u41hjWnfI8ThsIb66KcDZnfY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 19/02/2025 02:22, Brendan Horsfield wrote:
> Just to clarify one point:=C2=A0 How do you define the start of the=20
> transition region?=C2=A0 Do you go from the 3 dB corner frequency, or=20
> something else, like the equiripple bandwidth of the FIR filter?
I just did it visually on an FFT display from the 3dB corner.


>
>
> On Wed, 19 Feb 2025 at 13:11, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 18/02/2025 21:45, Brendan Horsfield wrote:
>>     Point taken.=C2=A0 At this stage we are mainly interested in strai=
ght
>>     IQ recording & playback with minimal processing.=C2=A0 However, in=
 the
>>     future it would be desirable to be able to display a real-time
>>     spectrum trace & waterfall plot during recording/playback, using
>>     GNU Radio or something like it.
>>
>>     As you suggest, I am assuming our=C2=A0host machine will need a
>>     dual-10Gbe adaptor card and a high-spec CPU, memory, SSD etc.=C2=A0
>>     This is a complex procurement exercise all by itself.
>     My understanding (and I haven't played with them) is that NVME
>     SSDs are among the fastest.=C2=A0=C2=A0 Performance up to a few GBy=
te/Sec
>     =C2=A0 on write is possible, although I don't know if it can be
>     sustained=C2=A0 at those rates, or whether it's "bursty".
>
>     I've been able to produce "real-time" spectral displays on 10yo
>     dual-Xeon hardware at 100Msps, but only using the
>     =C2=A0 kind of "stuttered" display approach that Gnu Radio FFT disp=
lays
>     often use, where most of the data is discarded. Often,
>     =C2=A0 that's all that's needed to show a quick summary of the spec=
trum.
>
>     On your other question, about transition bandwidth, I don't have a
>     direct answer, but on an N310 I measured the roll-off
>     =C2=A0 as a fraction of the overall bandwidth, and it is about 12.5=
%.=C2=A0
>     That doesn't necessarily translate to the X310, but the
>     =C2=A0 DDC implementation is of the same generation.
>
>
>>
>>
>>
>>     On Wed, 19 Feb 2025 at 10:58, Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 18/02/2025 19:26, Brendan Horsfield wrote:
>>>         I thought your name sounded familiar!=C2=A0=F0=9F=99=82
>>>
>>>         Overall the X310+UBX-160 appears to be a good fit to our
>>>         requirements.=C2=A0 My original question was really about
>>>         ensuring that our host PC & network interface have
>>>         sufficient bandwidth to ingest the IQ data from a pair of
>>>         UBX-160s.=C2=A0 It would be nice (although not essential) if =
we
>>>         could run one channel at 100 Msps, and the other at 200
>>>         Msps, to reduce the bandwidth requirements on the backend
>>>         hardware.
>>         You'd need to have separate streamers to support two
>>         different sample rates, and two 10Gbe interfaces.
>>
>>         But in terms of "what kind of PC hardware do I need?".
>>         There's no closed-form answer to that question.=C2=A0 There's =
no
>>         =C2=A0 handy-dandy "engineering worksheet" that tells you how =
much
>>         "grunt" you need for different DSP "flows" at
>>         =C2=A0 a given sample-rate--so very much depends on what you'r=
e
>>         doing, and how you're doing it.=C2=A0 Generally, as you scale =
up
>>         =C2=A0 in sample-rate, you have to scale up in:
>>
>>         =C2=A0=C2=A0 o CPU base clock rate
>>
>>         =C2=A0=C2=A0 o Memory bandwidth
>>
>>         =C2=A0=C2=A0 o Number of CPUs
>>
>>
>>
>>
>>>
>>>
>>>         On Wed, 19 Feb 2025 at 10:17, Marcus D. Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             On 18/02/2025 19:13, Brendan Horsfield wrote:
>>>>             Thanks for the suggestion about the noise source --
>>>>             that's what I would normally=C2=A0do.=C2=A0 Unfortunatel=
y I
>>>>             haven't actually purchased the hardware yet -- I was
>>>>             hoping to clarify this issue before raising a purchase
>>>>             order.
>>>>
>>>>             Perhaps I should follow this up with one of the
>>>>             application engineers at NI?=C2=A0 They might have acces=
s to
>>>>             an X310+UBX-160 system that they can use to answer my
>>>>             question directly.
>>>>
>>>>             Thanks again for your help in this matter.
>>>>
>>>>             Regards,
>>>>             Brendan.
>>>             I actually do work for NI on USRP devices (on a very
>>>             very very part-time basis).=C2=A0 My X310 is currently
>>>             elsewhere, and not populated
>>>             =C2=A0 with a UBX-160.
>>>
>>>
>>>>
>>>>             On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech
>>>>             <patchvonbraun@gmail.com> wrote:
>>>>
>>>>                 On 18/02/2025 18:45, Brendan Horsfield wrote:
>>>>>                 Yes, I assumed that was the case.=C2=A0 However, it=
 is
>>>>>                 not clear from the X300 documentation how sharp
>>>>>                 those filters are.=C2=A0 Can you tell me how wide t=
he
>>>>>                 transition band is at the lower sample rates?
>>>>>
>>>>>                 To give you some context, I would like to use an
>>>>>                 X300 (or X310) with a UBX-160 daughterboard to
>>>>>                 digitise the entire 2.4 GHz Wi-Fi band, which is
>>>>>                 83.5 MHz wide. Ideally I would like to use a
>>>>>                 sample rate of 100 Msps to minimise the data rate
>>>>>                 between the USRP and the host PC. However, before
>>>>>                 I do this I need to be certain that the usable
>>>>>                 bandwidth at this sample rate will be greater than
>>>>>                 83.5 MHz.=C2=A0 Is this information documented some=
where?
>>>>>
>>>>>
>>>>                 It somewhat depends on the decimation.=C2=A0 If the
>>>>                 decimation has a factor of two or 4, the edge
>>>>                 roll-off is fairly sharp. Otherwise,
>>>>                 =C2=A0 there's a half-band filter in-place that caus=
es a
>>>>                 less-desirable pass-band.
>>>>
>>>>                 But I don't know, precisely, what the transition
>>>>                 band is in the "nicer" filter shapes.
>>>>
>>>>
>>>>                 If you have an X310+UBX-160, you can always just
>>>>                 use a noise source, and measure it yourself to see
>>>>                 if it's appropriate for
>>>>                 =C2=A0 your application.
>>>>
>>>>
>>>>>
>>>>>                 On Tue, 18 Feb 2025 at 23:11, Marcus D Leech
>>>>>                 <patchvonbraun@gmail.com> wrote:
>>>>>
>>>>>                     There will always be some edge roll off.
>>>>>                     Decimation includes filtering and those
>>>>>                     filters cannot be infinitely steep.
>>>>>                     Sent from my iPhone
>>>>>
>>>>>                     > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan
>>>>>                     Horsfield <brendan.horsfield@vectalabs.com> wro=
te:
>>>>>                     >
>>>>>                     > =EF=BB=BF
>>>>>                     > Hi All,
>>>>>                     >
>>>>>                     > I have a question about the usable bandwidth
>>>>>                     of the X300 USRP / UBX-160 daughterboard combo
>>>>>                     at sampling rates below 200 Msps:
>>>>>                     >
>>>>>                     > As I understand it, the UBX-160 receiver has
>>>>>                     an analog (hardware) filter before the ADC
>>>>>                     that limits the usable bandwidth to 160 MHz,
>>>>>                     while the ADC runs at 200 Msps. Therefore the
>>>>>                     usable bandwidth is around 80% of the sample ra=
te.
>>>>>                     >
>>>>>                     > My question is:=C2=A0 What is the usable
>>>>>                     bandwidth at lower sampling rates?=C2=A0 Does t=
he
>>>>>                     80% factor always apply?
>>>>>                     >
>>>>>                     > For example, if I set the decimation factor
>>>>>                     to 4, so that my sampling rate is 50 Msps,
>>>>>                     does this mean that the usable bandwidth will
>>>>>                     be 40 MHz?
>>>>>                     >
>>>>>                     > Thanks & Regards,
>>>>>                     > Brendan.
>>>>>                     >
>>>>>                     > _____________________________________________=
__
>>>>>                     > USRP-users mailing list --
>>>>>                     usrp-users@lists.ettus.com
>>>>>                     > To unsubscribe send an email to
>>>>>                     usrp-users-leave@lists.ettus.com
>>>>>
>>>>
>>>
>>
>

--------------u41hjWnfI8ThsIb66KcDZnfY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 19/02/2025 02:22, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8XkmhLH0SpFRCoK+u+9F2ayTBecDvga1aDG651eZ=3DUBbw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Just to clarify one point:=C2=A0 How do you define=
 the
        start of the transition region?=C2=A0 Do you go from the 3 dB cor=
ner
        frequency, or something else, like the equiripple bandwidth of
        the FIR filter?</div>
    </blockquote>
    I just did it visually on an FFT display from the 3dB corner.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8XkmhLH0SpFRCoK+u+9F2ayTBecDvga1aDG651eZ=3DUBbw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 13:1=
1,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 18/02/2025 21:45, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Point taken.=C2=A0 At this stage we are ma=
inly
                interested in straight IQ recording &amp; playback with
                minimal processing.=C2=A0 However, in the future it would=
 be
                desirable to be able to display a real-time spectrum
                trace &amp; waterfall plot during recording/playback,
                using GNU Radio or something like it.
                <div><br>
                </div>
                <div>As you suggest, I am assuming our=C2=A0host machine =
will
                  need a dual-10Gbe adaptor card and a high-spec CPU,
                  memory, SSD etc.=C2=A0 This is a complex procurement
                  exercise all by itself. <br>
                </div>
              </div>
            </blockquote>
            My understanding (and I haven't played with them) is that
            NVME SSDs are among the fastest.=C2=A0=C2=A0 Performance up t=
o a few
            GByte/Sec<br>
            =C2=A0 on write is possible, although I don't know if it can =
be
            sustained=C2=A0 at those rates, or whether it's "bursty".<br>
            <br>
            I've been able to produce "real-time" spectral displays on
            10yo dual-Xeon hardware at 100Msps, but only using the<br>
            =C2=A0 kind of "stuttered" display approach that Gnu Radio FF=
T
            displays often use, where most of the data is discarded.=C2=A0
            Often,<br>
            =C2=A0 that's all that's needed to show a quick summary of th=
e
            spectrum.<br>
            <br>
            On your other question, about transition bandwidth, I don't
            have a direct answer, but on an N310 I measured the roll-off<=
br>
            =C2=A0 as a fraction of the overall bandwidth, and it is abou=
t
            12.5%.=C2=A0 That doesn't necessarily translate to the X310, =
but
            the<br>
            =C2=A0 DDC implementation is of the same generation.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div><br>
                  </div>
                  <div><br>
                  </div>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025=
 at
                  10:58, Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div>
                    <div>On 18/02/2025 19:26, Brendan Horsfield wrote:<br=
>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">I thought your name sounded
                        familiar!=C2=A0=F0=9F=99=82
                        <div><br>
                        </div>
                        <div>Overall the X310+UBX-160 appears to be a
                          good fit to our requirements.=C2=A0 My original
                          question was really about ensuring that our
                          host PC &amp; network interface have
                          sufficient bandwidth to ingest the IQ data
                          from a pair of UBX-160s.=C2=A0 It would be nice
                          (although not essential) if we could run one
                          channel at 100 Msps, and the other at 200
                          Msps, to reduce the bandwidth requirements on
                          the backend hardware.</div>
                      </div>
                    </blockquote>
                    You'd need to have separate streamers to support two
                    different sample rates, and two 10Gbe interfaces.<br>
                    <br>
                    But in terms of "what kind of PC hardware do I
                    need?". There's no closed-form answer to that
                    question.=C2=A0 There's no<br>
                    =C2=A0 handy-dandy "engineering worksheet" that tells=
 you
                    how much "grunt" you need for different DSP "flows"
                    at<br>
                    =C2=A0 a given sample-rate--so very much depends on w=
hat
                    you're doing, and how you're doing it.=C2=A0 Generall=
y,
                    as you scale up<br>
                    =C2=A0 in sample-rate, you have to scale up in:<br>
                    <br>
                    =C2=A0=C2=A0 o CPU base clock rate<br>
                    <br>
                    =C2=A0=C2=A0 o Memory bandwidth<br>
                    <br>
                    =C2=A0=C2=A0 o Number of CPUs<br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div><br>
                        </div>
                        <div>=C2=A0=C2=A0</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 =
Feb
                          2025 at 10:17, Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                          <div>
                            <div>On 18/02/2025 19:13, Brendan Horsfield
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">Thanks for the suggestion
                                about the noise source -- that's what I
                                would normally=C2=A0do.=C2=A0 Unfortunate=
ly I
                                haven't actually purchased the hardware
                                yet -- I was hoping to clarify this
                                issue before raising a purchase order.
                                <div><br>
                                </div>
                                <div>Perhaps I should follow this up
                                  with one of the application engineers
                                  at NI?=C2=A0 They might have access to =
an
                                  X310+UBX-160 system that they can use
                                  to answer my question directly.</div>
                                <div><br>
                                </div>
                                <div>Thanks again for your help in this
                                  matter.</div>
                                <div><br>
                                </div>
                                <div>Regards,</div>
                                <div>Brendan.</div>
                              </div>
                            </blockquote>
                            I actually do work for NI on USRP devices
                            (on a very very very part-time basis).=C2=A0 =
My
                            X310 is currently elsewhere, and not
                            populated<br>
                            =C2=A0 with a UBX-160.<br>
                            <br>
                            <br>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div>=C2=A0 =C2=A0</div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Wed, 19 Feb 2025 at 09:55, Marcus D.
                                  Leech &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">patch=
vonbraun@gmail.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                  <div>
                                    <div>On 18/02/2025 18:45, Brendan
                                      Horsfield wrote:<br>
                                    </div>
                                    <blockquote type=3D"cite">
                                      <div dir=3D"ltr">Yes, I assumed tha=
t
                                        was the case.=C2=A0 However, it i=
s
                                        not clear from the X300
                                        documentation how sharp those
                                        filters are.=C2=A0 Can you tell m=
e
                                        how wide the transition band is
                                        at the lower sample rates?
                                        <div><br>
                                        </div>
                                        <div>To give you some context, I
                                          would like to use an X300 (or
                                          X310) with a UBX-160
                                          daughterboard to digitise the
                                          entire 2.4 GHz Wi-Fi band,
                                          which is 83.5 MHz wide.=C2=A0
                                          Ideally I would like to use a
                                          sample rate of 100 Msps to
                                          minimise the data rate between
                                          the USRP and the host PC.=C2=A0
                                          However, before I do this I
                                          need to be certain that the
                                          usable bandwidth at this
                                          sample rate will be greater
                                          than 83.5 MHz.=C2=A0 Is this
                                          information documented
                                          somewhere?=C2=A0=C2=A0</div>
                                        <div><br>
                                        </div>
                                        <div><br>
                                        </div>
                                      </div>
                                    </blockquote>
                                    It somewhat depends on the
                                    decimation.=C2=A0 If the decimation h=
as a
                                    factor of two or 4, the edge
                                    roll-off is fairly sharp.=C2=A0
                                    Otherwise,<br>
                                    =C2=A0 there's a half-band filter
                                    in-place that causes a
                                    less-desirable pass-band.<br>
                                    <br>
                                    But I don't know, precisely, what
                                    the transition band is in the
                                    "nicer" filter shapes.<br>
                                    <br>
                                    <br>
                                    If you have an X310+UBX-160, you can
                                    always just use a noise source, and
                                    measure it yourself to see if it's
                                    appropriate for<br>
                                    =C2=A0 your application.<br>
                                    <br>
                                    <br>
                                    <blockquote type=3D"cite">
                                      <div dir=3D"ltr">
                                        <div>=C2=A0</div>
                                      </div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"ltr"
                                          class=3D"gmail_attr">On Tue, 18
                                          Feb 2025 at 23:11, Marcus D
                                          Leech &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                                            moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&gt; wrote:<br=
>
                                        </div>
                                        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">There
                                          will always be some edge roll
                                          off. Decimation includes
                                          filtering and those filters
                                          cannot be infinitely steep. <br=
>
                                          Sent from my iPhone<br>
                                          <br>
                                          &gt; On Feb 18, 2025, at
                                          2:12=E2=80=AFAM, Brendan Horsfi=
eld
                                          &lt;<a
href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank"
                                            moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">brendan.horsfield@vectalabs.com</a>&gt;
                                          wrote:<br>
                                          &gt; <br>
                                          &gt; =EF=BB=BF<br>
                                          &gt; Hi All,<br>
                                          &gt; <br>
                                          &gt; I have a question about
                                          the usable bandwidth of the
                                          X300 USRP / UBX-160
                                          daughterboard combo at
                                          sampling rates below 200 Msps:<=
br>
                                          &gt; <br>
                                          &gt; As I understand it, the
                                          UBX-160 receiver has an analog
                                          (hardware) filter before the
                                          ADC that limits the usable
                                          bandwidth to 160 MHz, while
                                          the ADC runs at 200 Msps.=C2=A0
                                          Therefore the usable bandwidth
                                          is around 80% of the sample
                                          rate.<br>
                                          &gt; <br>
                                          &gt; My question is:=C2=A0 What=
 is
                                          the usable bandwidth at lower
                                          sampling rates?=C2=A0 Does the =
80%
                                          factor always apply?=C2=A0 <br>
                                          &gt; <br>
                                          &gt; For example, if I set the
                                          decimation factor to 4, so
                                          that my sampling rate is 50
                                          Msps, does this mean that the
                                          usable bandwidth will be 40
                                          MHz?<br>
                                          &gt; <br>
                                          &gt; Thanks &amp; Regards,<br>
                                          &gt; Brendan.<br>
                                          &gt; <br>
                                          &gt;
                                          _______________________________=
________________<br>
                                          &gt; USRP-users mailing list
                                          -- <a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                            moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a><br>
                                          &gt; To unsubscribe send an
                                          email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                            moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a><br>
                                        </blockquote>
                                      </div>
                                    </blockquote>
                                    <br>
                                  </div>
                                </blockquote>
                              </div>
                            </blockquote>
                            <br>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------u41hjWnfI8ThsIb66KcDZnfY--

--===============7038506802105437093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7038506802105437093==--
