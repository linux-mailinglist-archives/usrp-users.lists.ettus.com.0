Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 510C08B9B06
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 14:41:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DFDC3855F9
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 08:41:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714653669; bh=ak0U1lFIGbiNQmP+gXicQyLEYs5Y6sBZBYR8UlY3Pt4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=K44QczmK3AlkTC4u2dOkbr+Q10xeWF6gVFr12xA2afuqba6HAObHxVecIFOCBhK7n
	 xsb9dmgSxsXanisTdoguqL1yd9wBFRsYdi9Vwz8SnnYRxo3R4M4UyVlbL/C9z6PhmN
	 Wd27BzN58qn1ALPrm5ISKucSj254CYgzvd4EDoB1cDPpXRnA9gJtOzTI1zj3eUnFBf
	 cap+/fUTjDI5hoE/nAUFGM8xthTsd30ro4wCekOPx/EurHYpygCv0N4kq3jLciM2IO
	 gWwj2r0Pq8cPTuBWKstVqZiMRb56SLKBphDVz3wmR4EtnO0UwIwGF+lGlP5eyKjCem
	 ADSm6K6gDKZdQ==
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C4F97384C23
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 08:40:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kVayVVn3";
	dkim-atps=neutral
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-23d46c97394so839937fac.2
        for <usrp-users@lists.ettus.com>; Thu, 02 May 2024 05:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714653657; x=1715258457; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=db2tpNFFnGl4Awg5CNTwQTH7UKrnUUA97pCzC+jKT7Y=;
        b=kVayVVn3YaUHTEXz5L10/+M4gUshqx2yqYq6U+kcBez8C6+aqtOkG8FiQ1uIoeiNg3
         O0cahdLBkEfXWcBW8lfmuoPtM1NQjOFXSaE9TTWANUmHEq3c5az1msvVzhTGyCmEJLSU
         OCGgy8TnXWK7ytX2T+jarKty6U2A34nDJZmrnAwZvGePjYjqCZAlqrzFkTwGZxyceZZb
         +Aik/WxJs3lC/Vi9TzSv8kdoJpkRLr2/QGDxK9uaiY7Y3am6WQabbd2MZFholG7QaMVb
         Ktqpmep2L8cTbJ8JYgRWA2Lza7l9THr1z/RUfmxhl82Rkas54xARwGg/60T0rjYBah79
         WCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714653657; x=1715258457;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=db2tpNFFnGl4Awg5CNTwQTH7UKrnUUA97pCzC+jKT7Y=;
        b=Z4ltxj40L5hR7avaTY3wTCxhNbb70UTulDSV/+2nmj8GK4tX9Iwr3pYwF/8fTbQEcf
         wEczrzl3gu2LpsDOUTdBmugUQyxjwzgvhwJ1ckSbsSa74xRt+ynHpboMxGe7SejTgffy
         NvYiLhNpBNc9MU1AthAfRAo+PPlb2c5Etv+mDNtL6OceoSEkR5bQSyffvfN6mth7uuiR
         +AE1yVfOVeHn37zAd4gp3JMdU+zxjl5QwQkUM8aGB/IIY7K8aVctXsz0Y8EivQPTDC/F
         G2Jezfk5KSnS31CBCQet3wAzqFqGNyoHO+dt+RnRJ059E9iIXcoQELYNt1YeLUD39gzO
         hSXQ==
X-Gm-Message-State: AOJu0YwzmKNbtcZ05+jX7CrbjwVG8uR8LWrKVA/Hq7M9crORr8y6iMIL
	bTi3dy44Nzgm3o1Iq9kj0g8YAlPtYRdjgSTTtkntNpXx2tu15sIiEkJHUA==
X-Google-Smtp-Source: AGHT+IEXvOVfCG0sGBqkqVCzU9s9nVnsCxhWPGMlfdruhEqGEDlmcK3OCBNht2dXtWCKvHJEN5N1Zw==
X-Received: by 2002:a05:6870:95a5:b0:23b:1dd5:3df3 with SMTP id k37-20020a05687095a500b0023b1dd53df3mr6247375oao.37.1714653656481;
        Thu, 02 May 2024 05:40:56 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id w23-20020ae9e517000000b007883184574esm330355qkf.98.2024.05.02.05.40.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 May 2024 05:40:56 -0700 (PDT)
Message-ID: <a1e07aa1-99fe-4a58-b9e8-3dd4a7395804@gmail.com>
Date: Thu, 2 May 2024 08:40:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
 <rg_135JfFMqvTtC5sE6K7yKUL6MJLKmhinWi5RjjNnYPSMfbYjt6Pt9bgzpDhSC-ttGO7BYYZj4YH3y3luA5uROyruafHIjJSIoxmoOfteE=@protonmail.com>
 <ofLvyt2nUzIzOye0wyTDlEWxcMd4xU3GqdEfVySaSjs1BUu-XXU6PUa2FU8FInF_dHB9-lP07Yy42TkHr6U9Knl-6eB-alZSfgEFkwK267s=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ofLvyt2nUzIzOye0wyTDlEWxcMd4xU3GqdEfVySaSjs1BUu-XXU6PUa2FU8FInF_dHB9-lP07Yy42TkHr6U9Knl-6eB-alZSfgEFkwK267s=@protonmail.com>
Message-ID-Hash: FDX4TTNQA5TOZEULSQJKVE5UOT7B4JQ2
X-Message-ID-Hash: FDX4TTNQA5TOZEULSQJKVE5UOT7B4JQ2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Quick question about tuning USRP B210 for sweep spectrum
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDX4TTNQA5TOZEULSQJKVE5UOT7B4JQ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0145001244174635689=="

This is a multi-part message in MIME format.
--===============0145001244174635689==
Content-Type: multipart/alternative;
 boundary="------------jffu4z3hyfs6FFCcOqP0TTCs"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jffu4z3hyfs6FFCcOqP0TTCs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/05/2024 08:25, Olo via USRP-users wrote:
> I got 8GHz info from:
> https://www.rtl-sdr.com/hackrf-sweep-spectrum-analyzer-windows/
>
> I want to express my gratitude for your prompt responses and=20
> assistance thus far. Your support has been valuable.
>
> However, I have a specific query regarding optimizing performance for=20
> a particular goal. In the GitHub repository under=20
> *uhd/host/examples/twinrx_freq_hopping.cpp*, you mentioned the=20
> importance of directly setting the LO frequency for better=20
> performance. Additionally, you described a method of accessing the LO=20
> wherein one LO is set for transmission while another operates for=20
> reception simultaneously. Is this recommended=C2=A0way to make sweep=20
> spectrum (with x310)?
>
I didn't write twinrx_freq_hopping.cpp, and furthermore, it has no=20
transmit capability at all.

> I'm curious if there are more such techniques or tricks to achieve=20
> optimal performance.
> Thank you once again for your attention to this matter.
>
Given that the X310 supports 2 TwinRX cards, that could give you up to=20
200MHz of instantaneous bandwidth if each channel
 =C2=A0 (2 channels per TwinRX) is delivering 50Mhz of bandwidth.=C2=A0 W=
ith=20
5msec/hop (as shown in twinrx_freq_hopping), that's
 =C2=A0 40GHz/second.


>
> Olo
>
>
> On Wednesday, May 1st, 2024 at 20:42, Olo via USRP-users=20
> <usrp-users@lists.ettus.com> wrote:
>> Would it be possible, with the USRP X310 with TwinRX (or two TwinRX=20
>> units), to achieve the mentioned goal? If so, could you please=20
>> explain the approach to accomplish this? Thank you.
>>
>> On Tuesday, April 30th, 2024 at 9:20, Olo <olo1618@protonmail.com> wro=
te:
>>>
>>> Hi there,
>>>
>>> I'm USRP B210 for a project. I'm trying to make a sweep spectrum=20
>>> analyzer that scans frequencies quickly. Currently, I'm tuning=20
>>> frequencies like this (which is I think the main issue):
>>>
>>> tune_request =3D uhd.types.TuneRequest(self.steps[self.i], 1.0)
>>> result =3D self.usrp_device.set_rx_freq(tune_request, self.rx_info.ch=
)=20
>>> I'm programming it in PyQt, and I've created a stream like this:
>>> self.stream_cmd_start =3D=20
>>> uhd.types.StreamCMD(uhd.types.StreamMode.num_done).
>>> (Because I've noticed that for a continuous stream, it takes=20
>>> eternity to retune.)
>>> Do you have any tips on how to do this faster? Any advice or code=20
>>> examples would be really helpful.
>>>
>>> Thanks a lot,
>>>
>>> Olo.
>>>
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------jffu4z3hyfs6FFCcOqP0TTCs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/05/2024 08:25, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:ofLvyt2nUzIzOye0wyTDlEWxcMd4xU3GqdEfVySaSjs1BUu-XXU6PUa2FU8FI=
nF_dHB9-lP07Yy42TkHr6U9Knl-6eB-alZSfgEFkwK267s=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><sp=
an>I
          got 8GHz info from:<br>
          <a target=3D"_blank" rel=3D"noreferrer nofollow noopener"
href=3D"https://www.rtl-sdr.com/hackrf-sweep-spectrum-analyzer-windows/"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://www.rtl-sdr.com/hackrf-sweep-spectrum-analyzer-windows/</a></span><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div class=3D"protonmail_signature_block"
        style=3D"font-family: Arial, sans-serif; font-size: 14px;">
      </div>
      <div style=3D""><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;">I
          want to express my gratitude for your prompt responses and
          assistance thus far. Your support has been valuable.
        </span><br>
        <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">However,
            I have a specific query regarding optimizing performance for
            a particular goal. In the GitHub repository under </span><fon=
t
face=3D"S=C3=B6hne Mono, Monaco, Andale Mono, Ubuntu Mono, monospace"><sp=
an
style=3D"border-style: solid; border-color: rgb(227, 227, 227); border-im=
age: initial; box-sizing: border-box; font-family: Arial, sans-serif; fon=
t-size: 14px; line-height: normal; font-weight: 400;"><b
                style=3D"line-height: normal; font-weight: 400;">uhd/host=
/examples/twinrx_freq_hopping.cpp</b></span></font><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">,
            you mentioned the importance of directly setting the LO
            frequency for better performance. Additionally, you
            described a method of accessing the LO wherein one LO is set
            for transmission while another operates for reception
            simultaneously.=C2=A0<span>Is this recommended</span>=C2=A0wa=
y to make
            sweep spectrum (with x310)? <br>
          </span></p>
      </div>
    </blockquote>
    I didn't write twinrx_freq_hopping.cpp, and furthermore, it has no
    transmit capability at all.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:ofLvyt2nUzIzOye0wyTDlEWxcMd4xU3GqdEfVySaSjs1BUu-XXU6PUa2FU8FI=
nF_dHB9-lP07Yy42TkHr6U9Knl-6eB-alZSfgEFkwK267s=3D@protonmail.com">
      <div style=3D"">
        <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
            style=3D"line-height: normal;"><font face=3D"Arial, sans-seri=
f">I'm
              curious if there are more such techniques or tricks to
              achieve optimal performance.</font><br>
            <span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">Thank
              you once again for your attention to this matter.<br>
            </span></span></p>
      </div>
    </blockquote>
    Given that the X310 supports 2 TwinRX cards, that could give you up
    to 200MHz of instantaneous bandwidth if each channel<br>
    =C2=A0 (2 channels per TwinRX) is delivering 50Mhz of bandwidth.=C2=A0=
 With
    5msec/hop (as shown in twinrx_freq_hopping), that's<br>
    =C2=A0 40GHz/second.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:ofLvyt2nUzIzOye0wyTDlEWxcMd4xU3GqdEfVySaSjs1BUu-XXU6PUa2FU8FI=
nF_dHB9-lP07Yy42TkHr6U9Knl-6eB-alZSfgEFkwK267s=3D@protonmail.com">
      <div style=3D"">
        <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
            style=3D"line-height: normal;"><br>
            Olo</span></p>
        <br>
      </div>
      <div class=3D"protonmail_quote"> On Wednesday, May 1st, 2024 at
        20:42, Olo via USRP-users <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;=
</a>
        wrote:<br>
        <blockquote class=3D"protonmail_quote" type=3D"cite">
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><span>Would
              it be possible, with the USRP X310 with TwinRX (or two
              TwinRX units), to achieve the mentioned goal? If so, could
              you please explain the approach to accomplish this? Thank
              you.</span><br>
          </div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><br>
          </div>
          <div class=3D"protonmail_quote"> On Tuesday, April 30th, 2024 a=
t
            9:20, Olo <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:o=
lo1618@protonmail.com">&lt;olo1618@protonmail.com&gt;</a> wrote:<br>
            <blockquote type=3D"cite" class=3D"protonmail_quote">
              <div style=3D"">
                <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Hi
                    there,</span></p>
                <p
style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: border-box; ma=
rgin: 1.25em 0px;"><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I'm
                    USRP B210 for a project. I'm trying to make a sweep
                    spectrum analyzer that scans frequencies quickly.
                    Currently, I'm tuning frequencies like this (which
                    is I think the main issue):</span></p>
                <div style=3D"">
                  <pre style=3D""><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">tune_request </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">=3D </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">uhd.types.</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">TuneRequest</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">(</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.steps</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">[</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.i</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">]</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">, </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">1.0</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">)</span>
<span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">result </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">=3D </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.usrp_device.</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">set_rx_freq</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">(</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">tune_request</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">, </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">self</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">.rx_info.ch</span><span
                  style=3D"line-height: normal;"><font
                  face=3D"Arial, sans-serif">)

</font><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">I'm programming it in PyQt, and I've crea=
ted a stream like this: </span></span></pre>
                  <pre style=3D""><span style=3D"line-height: normal;"><s=
pan
style=3D"border-style: solid; border-color: rgb(227, 227, 227); border-im=
age: initial; box-sizing: border-box; font-family: Arial, sans-serif; fon=
t-size: 14px; font-weight: 400;">self.stream_cmd_start =3D uhd.types.Stre=
amCMD(uhd.types.StreamMode.num_done)</span><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">. </span></span></pre>
                  <pre style=3D""><span style=3D"line-height: normal;"><s=
pan
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">(Because <span>I've noticed that for a co=
ntinuous stream, it takes eternity to retune.)</span></span></span></pre>
                  <pre style=3D""><span style=3D"line-height: normal;"><s=
pan
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; font-weight: 400;">Do you have any tips on how to do this fa=
ster? Any advice or code examples would be really helpful.</span>
</span></pre>
                </div>
                <span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;">
                  <div style=3D""><span
style=3D"display: inline !important; font-family: Arial, sans-serif; font=
-size: 14px; line-height: normal; font-weight: 400;"><br>
                    </span></div>
                  Thanks a lot,<br>
                </span><br>
                Olo.</div>
              <div
                style=3D"font-family: Arial, sans-serif; font-size: 14px;=
"><br>
              </div>
              <div class=3D"protonmail_signature_block"
                style=3D"font-family: Arial, sans-serif; font-size: 14px;=
">
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
        <br>
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

--------------jffu4z3hyfs6FFCcOqP0TTCs--

--===============0145001244174635689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0145001244174635689==--
