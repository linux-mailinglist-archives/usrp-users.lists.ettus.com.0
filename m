Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B448A3B23B
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 08:22:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABD1E385D7D
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 02:22:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739949766; bh=v9cb/dKrlwQQpFHAYpafXXjijb2qtYW6JobGvwxkPbk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZB9Bd+00C8J3XmUhwGEFRvfOskWtsqRH+2wONT1uPLJ99wfd47ymJHTDzIaXG+Gwc
	 l1uCUIbOHIjsRBJbNZldD0fLy/Ub1QDj7TPvkjAcBAW+yzf1myvBwbgHGPZeqBWfOP
	 jkfpZ1IUABIojbI96SgM5gHGtpIYfDuSW++3REilFf5H+GpXDvf0NjZzgcc/bcjo3t
	 LHXlzMPAOic3vgSWlHQQjiOvAEvsASekMhaYCsGy52D2ChKkgbo7maV6iZ1xav1MEy
	 J8+U3pxsla58Ie7xSfIQmv08gH2n/30q0FGJNLjQxVlAh4740HE0bif0GxAkNPBAKu
	 S3/3rh5EiE9Sw==
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A4F7B385D53
	for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2025 02:22:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vectalabs-com.20230601.gappssmtp.com header.i=@vectalabs-com.20230601.gappssmtp.com header.b="Z9zTppf8";
	dkim-atps=neutral
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-307325f2436so54440821fa.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 23:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20230601.gappssmtp.com; s=20230601; t=1739949759; x=1740554559; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QnWM7Jz6TISmb+ziaTN/R2FxjZUR09Hg/q2H01X7o5k=;
        b=Z9zTppf8SdlY5XWUaR0BQ92kLZozbNokUZEC1Tk6hDWtX+EvWqztJbB5EhudKUgLM9
         pZHk5xxslyosr/HS4Qq8sDx/PniX/Mghks7n50NfLOp62nQPvG0OCoMCIKzoHt9itLJv
         HS6BO6F6GUjsX257AHfZyuDoZF/h7bkZa2dB65NeEP06GSi7Q9P+p4Jl1qR3oCDKANtn
         NbpsLDZN28gq6/WNPvAG1H0IQ79INqvB7miqr0ZgQ3Cz3fdA/FHn7Qcy3cx0wAL7TUly
         01ntNuiNKC+IZ4zKFzTKiXC+nUtdBHnXUT3tNHQG61RrjGtnSDhE+I5d6MeZCs6KySY2
         bCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739949759; x=1740554559;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QnWM7Jz6TISmb+ziaTN/R2FxjZUR09Hg/q2H01X7o5k=;
        b=h1oyKlENueOnXr60bB4EaJW4/vNxoeg+ym0QcJ2mBP5MkATteAJRUr0xD8RrCJawjA
         26H28S99LE/rQLA2ioa9G8Spbc6fufdp0z2QwrZVBIdhtghNEJ7Meu3wGyII8v70idOy
         U8qR3/tqUcgTJ/8roZu3Rls95EL8j4F+DsHzGMo4vQdCAxlE2WA1CY0r3szUD6FGdeDs
         eX4Y/jiHWBJn5QOpS7RUvgVmuktG9+UYMmdKick8eFkbpLLK98kNkoCkvpF9DGvkGQS+
         sukETvCbU+hR/9bhSYbMnhg17auF7bj6g8u4FybIUTTKBD/UAtJSPI7bKFzH+0w8PK/O
         UCXQ==
X-Gm-Message-State: AOJu0Yxdw8/kbQmyIYPei/VcHpIu3RxiBJmshPXfn6e8eawc0Wameu6e
	2yeCByyz1bhy9vGaqudQpIox5ofAdz9XSA97bLCK1lQze1hIdN/3zjufK4GvSw0Zqy0ZEJm02LL
	0dLwFz5Zhb02YXKFhsW0SaR0qLjcVcpbqqZGCZQ==
X-Gm-Gg: ASbGncub2yy+5p6sp8AF+5nLAQYKeSr9MGHbjgKOdu2GNDy3YTx7jj3spEE4+fxcVFY
	4bYy4lI5JGeEetUDOPYEhJHC50rdjjTcTZNxDgStAXpMrerDzapblobvwNFqQCpBoStvT3Ykf
X-Google-Smtp-Source: AGHT+IHNYYjMrJAz6KS3n5ocZwAuUxGQsLqTJzr/8hrwkxo4RI/V7iqvV2iq4vLKJADqerufSOs+VmkI+jUI1cam2aw=
X-Received: by 2002:a2e:99d7:0:b0:309:214a:6b16 with SMTP id
 38308e7fff4ca-30a44ed34bcmr7176861fa.22.1739949758913; Tue, 18 Feb 2025
 23:22:38 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com> <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com> <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
 <d3a8592f-30fb-45b3-870d-95b6d1b64f2e@gmail.com> <CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=A4JGJEDykSq4QvQ@mail.gmail.com>
 <de3fefcd-8095-4537-9efb-8414ec7a24d8@gmail.com> <CALNMZ8U5pY=Rm_b5N_kCmsHBV0utfMx5LgtivK=uW_c7rMbYbg@mail.gmail.com>
 <70756578-f8ab-4ff9-9f88-dbf06a92504d@gmail.com>
In-Reply-To: <70756578-f8ab-4ff9-9f88-dbf06a92504d@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 19 Feb 2025 17:22:27 +1000
X-Gm-Features: AWEUYZklvS61mL_AZKL5xDlsdyw6501V1P4X9m-NTQ6Razgfm2LNjFPd2r55zdA
Message-ID: <CALNMZ8XkmhLH0SpFRCoK+u+9F2ayTBecDvga1aDG651eZ=UBbw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ZMK7UZFIZEIY5UID2TJYIUZBBHKK3TUZ
X-Message-ID-Hash: ZMK7UZFIZEIY5UID2TJYIUZBBHKK3TUZ
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZMK7UZFIZEIY5UID2TJYIUZBBHKK3TUZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1425398716399717615=="

--===============1425398716399717615==
Content-Type: multipart/alternative; boundary="0000000000004eba98062e799f91"

--0000000000004eba98062e799f91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to clarify one point:  How do you define the start of the transition
region?  Do you go from the 3 dB corner frequency, or something else, like
the equiripple bandwidth of the FIR filter?


On Wed, 19 Feb 2025 at 13:11, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 18/02/2025 21:45, Brendan Horsfield wrote:
>
> Point taken.  At this stage we are mainly interested in straight IQ
> recording & playback with minimal processing.  However, in the future it
> would be desirable to be able to display a real-time spectrum trace &
> waterfall plot during recording/playback, using GNU Radio or something li=
ke
> it.
>
> As you suggest, I am assuming our host machine will need a dual-10Gbe
> adaptor card and a high-spec CPU, memory, SSD etc.  This is a complex
> procurement exercise all by itself.
>
> My understanding (and I haven't played with them) is that NVME SSDs are
> among the fastest.   Performance up to a few GByte/Sec
>   on write is possible, although I don't know if it can be sustained  at
> those rates, or whether it's "bursty".
>
> I've been able to produce "real-time" spectral displays on 10yo dual-Xeon
> hardware at 100Msps, but only using the
>   kind of "stuttered" display approach that Gnu Radio FFT displays often
> use, where most of the data is discarded.  Often,
>   that's all that's needed to show a quick summary of the spectrum.
>
> On your other question, about transition bandwidth, I don't have a direct
> answer, but on an N310 I measured the roll-off
>   as a fraction of the overall bandwidth, and it is about 12.5%.  That
> doesn't necessarily translate to the X310, but the
>   DDC implementation is of the same generation.
>
>
>
>
>
> On Wed, 19 Feb 2025 at 10:58, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 18/02/2025 19:26, Brendan Horsfield wrote:
>>
>> I thought your name sounded familiar! =F0=9F=99=82
>>
>> Overall the X310+UBX-160 appears to be a good fit to our requirements.
>> My original question was really about ensuring that our host PC & networ=
k
>> interface have sufficient bandwidth to ingest the IQ data from a pair of
>> UBX-160s.  It would be nice (although not essential) if we could run one
>> channel at 100 Msps, and the other at 200 Msps, to reduce the bandwidth
>> requirements on the backend hardware.
>>
>> You'd need to have separate streamers to support two different sample
>> rates, and two 10Gbe interfaces.
>>
>> But in terms of "what kind of PC hardware do I need?". There's no
>> closed-form answer to that question.  There's no
>>   handy-dandy "engineering worksheet" that tells you how much "grunt" yo=
u
>> need for different DSP "flows" at
>>   a given sample-rate--so very much depends on what you're doing, and ho=
w
>> you're doing it.  Generally, as you scale up
>>   in sample-rate, you have to scale up in:
>>
>>    o CPU base clock rate
>>
>>    o Memory bandwidth
>>
>>    o Number of CPUs
>>
>>
>>
>>
>>
>>
>>
>> On Wed, 19 Feb 2025 at 10:17, Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 18/02/2025 19:13, Brendan Horsfield wrote:
>>>
>>> Thanks for the suggestion about the noise source -- that's what I would
>>> normally do.  Unfortunately I haven't actually purchased the hardware y=
et
>>> -- I was hoping to clarify this issue before raising a purchase order.
>>>
>>> Perhaps I should follow this up with one of the application engineers a=
t
>>> NI?  They might have access to an X310+UBX-160 system that they can use=
 to
>>> answer my question directly.
>>>
>>> Thanks again for your help in this matter.
>>>
>>> Regards,
>>> Brendan.
>>>
>>> I actually do work for NI on USRP devices (on a very very very part-tim=
e
>>> basis).  My X310 is currently elsewhere, and not populated
>>>   with a UBX-160.
>>>
>>>
>>>
>>>
>>> On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech <patchvonbraun@gmail.com>
>>> wrote:
>>>
>>>> On 18/02/2025 18:45, Brendan Horsfield wrote:
>>>>
>>>> Yes, I assumed that was the case.  However, it is not clear from the
>>>> X300 documentation how sharp those filters are.  Can you tell me how w=
ide
>>>> the transition band is at the lower sample rates?
>>>>
>>>> To give you some context, I would like to use an X300 (or X310) with a
>>>> UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, which=
 is
>>>> 83.5 MHz wide.  Ideally I would like to use a sample rate of 100 Msps =
to
>>>> minimise the data rate between the USRP and the host PC.  However, bef=
ore I
>>>> do this I need to be certain that the usable bandwidth at this sample =
rate
>>>> will be greater than 83.5 MHz.  Is this information documented somewhe=
re?
>>>>
>>>>
>>>> It somewhat depends on the decimation.  If the decimation has a factor
>>>> of two or 4, the edge roll-off is fairly sharp.  Otherwise,
>>>>   there's a half-band filter in-place that causes a less-desirable
>>>> pass-band.
>>>>
>>>> But I don't know, precisely, what the transition band is in the "nicer=
"
>>>> filter shapes.
>>>>
>>>>
>>>> If you have an X310+UBX-160, you can always just use a noise source,
>>>> and measure it yourself to see if it's appropriate for
>>>>   your application.
>>>>
>>>>
>>>>
>>>>
>>>> On Tue, 18 Feb 2025 at 23:11, Marcus D Leech <patchvonbraun@gmail.com>
>>>> wrote:
>>>>
>>>>> There will always be some edge roll off. Decimation includes filterin=
g
>>>>> and those filters cannot be infinitely steep.
>>>>> Sent from my iPhone
>>>>>
>>>>> > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield <
>>>>> brendan.horsfield@vectalabs.com> wrote:
>>>>> >
>>>>> > =EF=BB=BF
>>>>> > Hi All,
>>>>> >
>>>>> > I have a question about the usable bandwidth of the X300 USRP /
>>>>> UBX-160 daughterboard combo at sampling rates below 200 Msps:
>>>>> >
>>>>> > As I understand it, the UBX-160 receiver has an analog (hardware)
>>>>> filter before the ADC that limits the usable bandwidth to 160 MHz, wh=
ile
>>>>> the ADC runs at 200 Msps.  Therefore the usable bandwidth is around 8=
0% of
>>>>> the sample rate.
>>>>> >
>>>>> > My question is:  What is the usable bandwidth at lower sampling
>>>>> rates?  Does the 80% factor always apply?
>>>>> >
>>>>> > For example, if I set the decimation factor to 4, so that my
>>>>> sampling rate is 50 Msps, does this mean that the usable bandwidth wi=
ll be
>>>>> 40 MHz?
>>>>> >
>>>>> > Thanks & Regards,
>>>>> > Brendan.
>>>>> >
>>>>> > _______________________________________________
>>>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>
>>>>
>>>
>>
>

--0000000000004eba98062e799f91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just to clarify one point:=C2=A0 How do you define the sta=
rt of the transition region?=C2=A0 Do you go from the 3 dB corner frequency=
, or something else, like the equiripple bandwidth of the FIR filter?<div><=
br></div></div><br><div class=3D"gmail_quote gmail_quote_container"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 13:11, Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u>=
</u>

 =20
   =20
 =20
  <div>
    <div>On 18/02/2025 21:45, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Point taken.=C2=A0 At this stage we are mainly
        interested in straight IQ recording &amp; playback with minimal
        processing.=C2=A0 However, in the future it would be desirable to b=
e
        able to display a real-time spectrum trace &amp; waterfall plot
        during recording/playback, using GNU Radio or something like it.
        <div><br>
        </div>
        <div>As you suggest, I am assuming our=C2=A0host machine will need =
a
          dual-10Gbe adaptor card and a high-spec CPU, memory, SSD etc.=C2=
=A0
          This is a complex procurement exercise all by itself. <br>
        </div>
      </div>
    </blockquote>
    My understanding (and I haven&#39;t played with them) is that NVME SSDs
    are among the fastest.=C2=A0=C2=A0 Performance up to a few GByte/Sec<br=
>
    =C2=A0 on write is possible, although I don&#39;t know if it can be
    sustained=C2=A0 at those rates, or whether it&#39;s &quot;bursty&quot;.=
<br>
    <br>
    I&#39;ve been able to produce &quot;real-time&quot; spectral displays o=
n 10yo
    dual-Xeon hardware at 100Msps, but only using the<br>
    =C2=A0 kind of &quot;stuttered&quot; display approach that Gnu Radio FF=
T displays
    often use, where most of the data is discarded.=C2=A0 Often,<br>
    =C2=A0 that&#39;s all that&#39;s needed to show a quick summary of the =
spectrum.<br>
    <br>
    On your other question, about transition bandwidth, I don&#39;t have a
    direct answer, but on an N310 I measured the roll-off<br>
    =C2=A0 as a fraction of the overall bandwidth, and it is about 12.5%.=
=C2=A0
    That doesn&#39;t necessarily translate to the X310, but the<br>
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 10:58,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 18/02/2025 19:26, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">I thought your name sounded familiar!=C2=A0=
=F0=9F=99=82
                <div><br>
                </div>
                <div>Overall the X310+UBX-160 appears to be a good fit
                  to our requirements.=C2=A0 My original question was reall=
y
                  about ensuring that our host PC &amp; network
                  interface have sufficient bandwidth to ingest the IQ
                  data from a pair of UBX-160s.=C2=A0 It would be nice
                  (although not essential) if we could run one channel
                  at 100 Msps, and the other at 200 Msps, to reduce the
                  bandwidth requirements on the backend hardware.</div>
              </div>
            </blockquote>
            You&#39;d need to have separate streamers to support two
            different sample rates, and two 10Gbe interfaces.<br>
            <br>
            But in terms of &quot;what kind of PC hardware do I need?&quot;=
.
            There&#39;s no closed-form answer to that question.=C2=A0 There=
&#39;s no<br>
            =C2=A0 handy-dandy &quot;engineering worksheet&quot; that tells=
 you how
            much &quot;grunt&quot; you need for different DSP &quot;flows&q=
uot; at<br>
            =C2=A0 a given sample-rate--so very much depends on what you&#3=
9;re
            doing, and how you&#39;re doing it.=C2=A0 Generally, as you sca=
le up<br>
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 a=
t
                  10:17, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 18/02/2025 19:13, Brendan Horsfield wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Thanks for the suggestion about the
                        noise source -- that&#39;s what I would
                        normally=C2=A0do.=C2=A0 Unfortunately I haven&#39;t=
 actually
                        purchased the hardware yet -- I was hoping to
                        clarify this issue before raising a purchase
                        order.
                        <div><br>
                        </div>
                        <div>Perhaps I should follow this up with one of
                          the application engineers at NI?=C2=A0 They might
                          have access to an X310+UBX-160 system that
                          they can use to answer my question directly.</div=
>
                        <div><br>
                        </div>
                        <div>Thanks again for your help in this matter.</di=
v>
                        <div><br>
                        </div>
                        <div>Regards,</div>
                        <div>Brendan.</div>
                      </div>
                    </blockquote>
                    I actually do work for NI on USRP devices (on a very
                    very very part-time basis).=C2=A0 My X310 is currently
                    elsewhere, and not populated<br>
                    =C2=A0 with a UBX-160.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>=C2=A0 =C2=A0</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Fe=
b
                          2025 at 09:55, Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&=
gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 18/02/2025 18:45, Brendan Horsfield
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">Yes, I assumed that was the
                                case.=C2=A0 However, it is not clear from t=
he
                                X300 documentation how sharp those
                                filters are.=C2=A0 Can you tell me how wide
                                the transition band is at the lower
                                sample rates?
                                <div><br>
                                </div>
                                <div>To give you some context, I would
                                  like to use an X300 (or X310) with a
                                  UBX-160 daughterboard to digitise the
                                  entire 2.4 GHz Wi-Fi band, which is
                                  83.5 MHz wide.=C2=A0 Ideally I would like
                                  to use a sample rate of 100 Msps to
                                  minimise the data rate between the
                                  USRP and the host PC.=C2=A0 However, befo=
re
                                  I do this I need to be certain that
                                  the usable bandwidth at this sample
                                  rate will be greater than 83.5 MHz.=C2=A0
                                  Is this information documented
                                  somewhere?=C2=A0=C2=A0</div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                              </div>
                            </blockquote>
                            It somewhat depends on the decimation.=C2=A0 If
                            the decimation has a factor of two or 4, the
                            edge roll-off is fairly sharp.=C2=A0 Otherwise,=
<br>
                            =C2=A0 there&#39;s a half-band filter in-place =
that
                            causes a less-desirable pass-band.<br>
                            <br>
                            But I don&#39;t know, precisely, what the
                            transition band is in the &quot;nicer&quot; fil=
ter
                            shapes.<br>
                            <br>
                            <br>
                            If you have an X310+UBX-160, you can always
                            just use a noise source, and measure it
                            yourself to see if it&#39;s appropriate for<br>
                            =C2=A0 your application.<br>
                            <br>
                            <br>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div>=C2=A0</div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Tue, 18 Feb 2025 at 23:11, Marcus D
                                  Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">There
                                  will always be some edge roll off.
                                  Decimation includes filtering and
                                  those filters cannot be infinitely
                                  steep. <br>
                                  Sent from my iPhone<br>
                                  <br>
                                  &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM,
                                  Brendan Horsfield &lt;<a href=3D"mailto:b=
rendan.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectala=
bs.com</a>&gt;
                                  wrote:<br>
                                  &gt; <br>
                                  &gt; =EF=BB=BF<br>
                                  &gt; Hi All,<br>
                                  &gt; <br>
                                  &gt; I have a question about the
                                  usable bandwidth of the X300 USRP /
                                  UBX-160 daughterboard combo at
                                  sampling rates below 200 Msps:<br>
                                  &gt; <br>
                                  &gt; As I understand it, the UBX-160
                                  receiver has an analog (hardware)
                                  filter before the ADC that limits the
                                  usable bandwidth to 160 MHz, while the
                                  ADC runs at 200 Msps.=C2=A0 Therefore the
                                  usable bandwidth is around 80% of the
                                  sample rate.<br>
                                  &gt; <br>
                                  &gt; My question is:=C2=A0 What is the
                                  usable bandwidth at lower sampling
                                  rates?=C2=A0 Does the 80% factor always
                                  apply?=C2=A0 <br>
                                  &gt; <br>
                                  &gt; For example, if I set the
                                  decimation factor to 4, so that my
                                  sampling rate is 50 Msps, does this
                                  mean that the usable bandwidth will be
                                  40 MHz?<br>
                                  &gt; <br>
                                  &gt; Thanks &amp; Regards,<br>
                                  &gt; Brendan.<br>
                                  &gt; <br>
                                  &gt;
                                  _________________________________________=
______<br>
                                  &gt; USRP-users mailing list -- <a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a><br>
                                  &gt; To unsubscribe send an email to <a h=
ref=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-user=
s-leave@lists.ettus.com</a><br>
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

</blockquote></div>

--0000000000004eba98062e799f91--

--===============1425398716399717615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1425398716399717615==--
