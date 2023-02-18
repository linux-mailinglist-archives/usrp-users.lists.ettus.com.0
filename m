Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A85C69B78E
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 02:46:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 087B3384861
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 20:46:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676684772; bh=Ndqf1e8LeoaIStymDw8mKyO/TDTlyhtHxjkJOiE4aUQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=q/MpAIqd9wSa8eA3RmydtoxGUyTN7JYlZ6lyW6rZj9gHkvWi9AK1GZgupgIspZ1U7
	 m1Zve6MFzkp+F3up9YVwM9UoLupoXHpGqLcb4gYWyhbzfaeDW75UFCFnNAlCcxZA7U
	 Q/3tAslnAye96vssH4TxaqgYgTKwYE7eWO5g6UAo1XgBzbEYyoDPWLXdvDim+Vu8Yt
	 p6GuLnfUldxPq9AsmD7qemLecXs4fknZoGDEEqPxIS9csnnsDtMF1BoyAEiXz+hCwP
	 D5sbd2yR4KNhP6SX/lW06LBoEbNZV41BH3EXRpIBKe2cI8ds+ejX3zwn1lPq7Mt3C4
	 PbiAl4Yo6IEhg==
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2DDAF384861
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 20:45:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="YCZugliv";
	dkim-atps=neutral
Received: by mail-oo1-f45.google.com with SMTP id d29-20020a4a3c1d000000b0051762fdf955so267009ooa.3
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 17:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SQ3qIT82WEZhwqp/oatw74nTp3c3uRD6fGaJAe9psL4=;
        b=YCZuglivnzy6JLMI5RPqnmnHV3KnN0CB0D1wdVYfYh6jxm0qLLfIzjbvMNC4OwvQ6S
         fS2g6wEAE3TyS4WDQwmWK+/ZPdfcHjM7MlIXhT7aNd6gLzYl6oZwMFGsnM9+qeMdBd4+
         3xo9/DnQH5IlPyGN8DNqY/voEURJPzC1u1SM7BvVf5wj9DEW7Dvhxb3R0H1ZIwenuIke
         upieOOtUwibmO/lj1G6J78Y1piw5a1M0Nn0PcPkpEhH3c5WY0fYcZiTSjqH8BeUii85x
         XVu7JP1C09sriw1F6be3kM4DJHhA6f+iyC1T9jUcv7L86lRt3kOTfhgBHyo7nDWdfuJO
         oFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SQ3qIT82WEZhwqp/oatw74nTp3c3uRD6fGaJAe9psL4=;
        b=DLBHxvkZmSt+8l9QzWBkkKwwFZxLRNWf09ptk+aN6DT7v13/kgKB7lN77zkyXvRnFH
         7banyb+VwC945ood9/fLhXjxNMCt5sjt0pIefSryfcLYbxXblwMP1M/i0yrZLPyNYvOd
         UUCQmm/Ht980jTQcNF8ln15F4hxwSbJubDpjImmRD1Q00PQILK+AT0BUKe57OVHeHCPy
         qwXOQ4yMGSd+4ySQBcfmjoI/YzlaZZaRKPO7cWQUx4hFpI2NrMVvGhCYos4iREAPnPw4
         IpcxW+IiiwEXAmQ/7OeTEGHUC/SbHNdjOLM4rc6jdMNuPXg74/Z0ifzB8ir7MAJJKHVU
         YhuQ==
X-Gm-Message-State: AO0yUKVJZWi8sYqbUxv1ipIsT2fHDU3nv6OdEzYVGgS8KBjOGjpOfol6
	61ZCxgYoauaSIyz8EMSNI73thTw3QwzhJZiUcMWzzk9bDL1ihQ==
X-Google-Smtp-Source: AK7set/+tWkjIrZsuPmghVcfzysyDpZ9wxlczLukEVJtwugPwhN28/Dt4AK/J5Vfp/D3z0urFnUJLQYwZ+0qRB86W1s=
X-Received: by 2002:a05:6820:447:b0:517:b092:5393 with SMTP id
 p7-20020a056820044700b00517b0925393mr267482oou.1.1676684738128; Fri, 17 Feb
 2023 17:45:38 -0800 (PST)
MIME-Version: 1.0
References: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
 <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com> <CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmail.com>
 <2ce67fb3-d776-534c-1f38-4421da3c5d3a@gmail.com> <CANvw1+Rqk-sMaiswCL4=iggm04mrMYgXt50aTEjuuzMq9yYrTA@mail.gmail.com>
 <ed769f5d-1e33-c9b6-2210-73e6b00d7ca0@gmail.com>
In-Reply-To: <ed769f5d-1e33-c9b6-2210-73e6b00d7ca0@gmail.com>
Date: Fri, 17 Feb 2023 20:45:27 -0500
Message-ID: <CANvw1+TR6bVdWruSL42iyPgmpP3854c=T_SNxjVHZ8dtszWuwA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6RLTIOWJ6CXPKQHJWZAQO52WTW4O3CJM
X-Message-ID-Hash: 6RLTIOWJ6CXPKQHJWZAQO52WTW4O3CJM
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6RLTIOWJ6CXPKQHJWZAQO52WTW4O3CJM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============7495487259537148474=="

--===============7495487259537148474==
Content-Type: multipart/alternative; boundary="000000000000379fa705f4ef96fe"

--000000000000379fa705f4ef96fe
Content-Type: text/plain; charset="UTF-8"

I think I found the answer. In this document
<https://files.ettus.com/manual/page_stream.html>, it states that "*As soon
as streaming starts, the uhd::rx_streamer::recv() call needs to be called
regularly to accept the incoming data. If recv() is not called often
enough, the device can overrun and stop streaming.*". Since I am putting
delays between recv calls(just for testing), the stream gets stopped. When
the RX stream stops, there won't be any lights.

Thanks again for your help!


A.


On Fri, Feb 17, 2023 at 2:19 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 17/02/2023 14:14, Anil Gurses wrote:
>
> Do you know any documentation about USRP continuous streaming? It might be
> more useful if I check those documents. I couldn't find anything about it
> in the UHD/USRP manual.
>
>
> A.
>
> When you create a streamer, you tell it what type of streaming you wish to
> do:
>
> https://files.ettus.com/manual/classuhd_1_1rx__streamer.html
> https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html
>
>
>
> The most-normal mode is to stream continuously.  That's what 99% of the
> applications out there use because they're
>   doing things like demodulating wireless protocols, etc.
>
> If, however, you want to kind of "sniff" the spectrum in discrete time
> chunks, there are other streaming modes, like
>   NUM_SAMPS_AND_DONE.  The "rx_samples_to_file" example code uses this
> when you specify a specific number of
>   samples to be captured.
>
>
>
>
>
> On Fri, Feb 17, 2023 at 2:06 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 17/02/2023 14:00, Anil Gurses wrote:
>>
>>
>> Thanks for your quick response!
>>
>> In general, your application absolutely, positively, needs to call
>>> recv() to consume samples as fast as they're produced, on average.
>>>    Short-term shortfalls are "soaked up" by buffers, but if your
>>> application cannot "keep up", no amount of buffering will save it.
>>>
>>
>> This is why we have overflows. Then, my interpretation of continuous
>> streaming is correct.
>>
>> To test this, I created a simple python script by putting delays(sleep)
>> between consecutive recv calls for b205 mini. The lights turned on only at
>> recv calls and not during delays. I checked the metadata time and USRP time
>> to see if the packets are buffered. There was a difference between them and
>> it proves that packets are buffered.  However, I still don't understand how
>> RX light is triggered on continuous streaming.
>>
>> A.
>>
>> The light may turn off when over-runs are happening.  I don't know the
>> detailed logic behind the lights.
>>
>> Ah:
>>
>> https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_ref_leds
>>
>> I'll point out that using Python to do DSP at anything other than
>> "trivial" rates is a near-guarantee of overruns.  Even if you're
>>    using high-performance underlying libraries like Numpy, the
>> data-marshalling costs in Python make it unsuitable for anything
>>    but low-sample-rate experiments.
>>
>> Gnu Radio does much better in this regard.  While it does use Python as a
>> kind of "control plane", the "sample plane" is
>>   all handled in C++ land, and nearly-ALL of the packaged DSP blocks are
>> written in C++ using SIMD optimizations wherever
>>   possible.
>>
>>
>>
>>
>> On Fri, Feb 17, 2023 at 1:43 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 17/02/2023 13:34, Anil Gurses via USRP-users wrote:
>>> > Hi all,
>>> >
>>> > I have a simple question about the continuous stream. As you all know,
>>> > USRP RX lights indicate whether it's receiving samples or not. On
>>> > continuous streaming, these lights are turned on if the recv function
>>> > is called from the host computer(stay on until the end of recv
>>> > function call). In theory, the continuous streaming mode should
>>> > receive and buffer these samples. So, shouldn't the lights be on until
>>> > the continuous streaming stop(not until the end of recv function call)?
>>> >
>>> > If this is how it should be, then my understanding of continuous
>>> > stream is wrong. If I don't call recv function, doesn't USRP receive
>>> > samples and buffer them(on continuous streaming mode)?
>>> The light is turned on when a receive streamer is created, as far as I
>>> know.
>>>
>>> If your application doesn't call recv(), some number of samples will be
>>> buffered in various parts of the library and OS drivers, and
>>>    then they'll just start getting dropped.
>>>
>>> In general, your application absolutely, positively, needs to call
>>> recv() to consume samples as fast as they're produced, on average.
>>>    Short-term shortfalls are "soaked up" by buffers, but if your
>>> application cannot "keep up", no amount of buffering will save it.
>>>
>>>
>>>
>>>
>>> >
>>> >
>>> > Thanks,
>>> > A.
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>
>

--000000000000379fa705f4ef96fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think I found the answer. In this <a href=3D"https:=
//files.ettus.com/manual/page_stream.html" target=3D"_blank">document</a>, =
it states that &quot;<i>As soon as streaming starts, the uhd::rx_streamer::=
recv() call needs to be called regularly to accept the incoming data. If re=
cv() is not called often enough, the device can overrun and stop streaming.=
</i>&quot;. Since I am putting delays between recv calls(just for testing),=
 the stream gets stopped. When the RX stream stops, there won&#39;t be any =
lights. <br></div><div><br></div><div>Thanks again for your help! <br></div=
><div><br></div><div><br></div><div>A.<br></div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb =
17, 2023 at 2:19 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 17/02/2023 14:14, Anil Gurses wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Do you know any documentation about USRP continuous
          streaming? It might be more useful if I check those documents.
          I couldn&#39;t find anything about it in the UHD/USRP manual. <br=
>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>A.<br>
        </div>
      </div>
    </blockquote>
    When you create a streamer, you tell it what type of streaming you
    wish to do:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/classuhd_1_1rx__streamer.html=
" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1rx__streamer=
.html</a><br>
    <a href=3D"https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.h=
tml" target=3D"_blank">https://files.ettus.com/manual/structuhd_1_1stream__=
cmd__t.html</a><br>
    <br>
    <br>
    <br>
    The most-normal mode is to stream continuously.=C2=A0 That&#39;s what 9=
9% of
    the applications out there use because they&#39;re<br>
    =C2=A0 doing things like demodulating wireless protocols, etc.<br>
    <br>
    If, however, you want to kind of &quot;sniff&quot; the spectrum in disc=
rete
    time chunks, there are other streaming modes, like<br>
    =C2=A0 NUM_SAMPS_AND_DONE.=C2=A0 The &quot;rx_samples_to_file&quot; exa=
mple code uses
    this when you specify a specific number of<br>
    =C2=A0 samples to be captured.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 2:06
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 17/02/2023 14:00, Anil Gurses wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
                <div>Thanks for your quick response! <br>
                </div>
                <div><br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"> In gener=
al, your
                  application absolutely, positively, needs to call <br>
                  recv() to consume samples as fast as they&#39;re produced=
,
                  on average.<br>
                  =C2=A0=C2=A0 Short-term shortfalls are &quot;soaked up&qu=
ot; by buffers,
                  but if your <br>
                  <div> application cannot &quot;keep up&quot;, no amount o=
f
                    buffering will save it.</div>
                </blockquote>
                <div><br>
                </div>
                <div>This is why we have overflows. Then, my
                  interpretation of continuous streaming is correct. <br>
                </div>
                <div><br>
                </div>
                <div>To test this, I created a simple python script by
                  putting delays(sleep) between consecutive recv calls
                  for b205 mini. The lights turned on only at recv calls
                  and not during delays. I checked the metadata time and
                  USRP time to see if the packets are buffered. There
                  was a difference between them and it proves that
                  packets are buffered.=C2=A0 However, I still don&#39;t
                  understand how RX light is triggered on continuous
                  streaming. <br>
                </div>
                <div><br>
                </div>
                <div>A. <br>
                </div>
              </div>
            </blockquote>
            The light may turn off when over-runs are happening.=C2=A0 I
            don&#39;t know the detailed logic behind the lights.=C2=A0 <br>
            <br>
            Ah:<br>
            <br>
            <a href=3D"https://files.ettus.com/manual/page_usrp_b200.html#b=
200_hw_ref_leds" target=3D"_blank">https://files.ettus.com/manual/page_usrp=
_b200.html#b200_hw_ref_leds</a><br>
            <br>
            I&#39;ll point out that using Python to do DSP at anything othe=
r
            than &quot;trivial&quot; rates is a near-guarantee of overruns.=
=C2=A0 Even
            if you&#39;re<br>
            =C2=A0=C2=A0 using high-performance underlying libraries like N=
umpy,
            the data-marshalling costs in Python make it unsuitable for
            anything<br>
            =C2=A0=C2=A0 but low-sample-rate experiments.<br>
            <br>
            Gnu Radio does much better in this regard.=C2=A0 While it does
            use Python as a kind of &quot;control plane&quot;, the &quot;sa=
mple plane&quot;
            is<br>
            =C2=A0 all handled in C++ land, and nearly-ALL of the packaged
            DSP blocks are written in C++ using SIMD optimizations
            wherever<br>
            =C2=A0 possible.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023
                  at 1:43 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 17/02/=
2023
                  13:34, Anil Gurses via USRP-users wrote:<br>
                  &gt; Hi all,<br>
                  &gt;<br>
                  &gt; I have a simple question about the continuous
                  stream. As you all know, <br>
                  &gt; USRP RX lights indicate whether it&#39;s receiving
                  samples or not. On <br>
                  &gt; continuous streaming, these lights are turned on
                  if the recv function <br>
                  &gt; is called from the host computer(stay on until
                  the end of recv <br>
                  &gt; function call). In theory, the continuous
                  streaming mode should <br>
                  &gt; receive and buffer these samples. So, shouldn&#39;t
                  the lights be on until <br>
                  &gt; the continuous streaming stop(not until the end
                  of recv function call)?<br>
                  &gt;<br>
                  &gt; If this is how it should be, then my
                  understanding of continuous <br>
                  &gt; stream is wrong. If I don&#39;t call recv function,
                  doesn&#39;t USRP receive <br>
                  &gt; samples and buffer them(on continuous streaming
                  mode)?<br>
                  The light is turned on when a receive streamer is
                  created, as far as I know.<br>
                  <br>
                  If your application doesn&#39;t call recv(), some number
                  of samples will be <br>
                  buffered in various parts of the library and OS
                  drivers, and<br>
                  =C2=A0=C2=A0 then they&#39;ll just start getting dropped.=
<br>
                  <br>
                  In general, your application absolutely, positively,
                  needs to call <br>
                  recv() to consume samples as fast as they&#39;re produced=
,
                  on average.<br>
                  =C2=A0=C2=A0 Short-term shortfalls are &quot;soaked up&qu=
ot; by buffers,
                  but if your <br>
                  application cannot &quot;keep up&quot;, no amount of buff=
ering
                  will save it.<br>
                  <br>
                  <br>
                  <br>
                  <br>
                  &gt;<br>
                  &gt;<br>
                  &gt; Thanks,<br>
                  &gt; A.<br>
                  &gt;<br>
                  &gt; _______________________________________________<br>
                  &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  &gt; To unsubscribe send an email to <a href=3D"mailto:us=
rp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.et=
tus.com</a><br>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
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

--000000000000379fa705f4ef96fe--

--===============7495487259537148474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7495487259537148474==--
