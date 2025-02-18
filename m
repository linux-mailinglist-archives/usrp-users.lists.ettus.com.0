Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9BCA3ACE7
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 00:56:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEE3B3860A8
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 18:55:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739922959; bh=gIWBwtWK4nRGRmmC3jsRxP/scmOuyI/h1yilsoQD8VY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IBxePP6jQAcnPqahG13K7GQzhEO8Lopo4po0PJJXjBvyc3KofAIzKSynPwg69Njf8
	 XtncnUHoH4rkbwrNbnqKA+Z6q7o0OM0j1qe+nYYX04xWpBy211pYu4Ra65QWR+VU/H
	 xR3zKFCo+kgqbTKo5jL2OKwVH5FPWV2TdXvX+05eNW7pT2kFmn+K9RX4X8CkQkD1a4
	 WF6btaEmb8kjAh5JENdDUMe0NWjPquZaRuF9gV2w/twlrcLiMHBHRuoW40ZRrP7w47
	 DBxymjO906IE1UxzLked9ANAw4aBY1+kNIY92QYECGJJyk4+FLW+ifHXKweNCbogVT
	 S2yU1GuL+ZXyA==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 101B7385C23
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 18:55:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WJ69VK3X";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c095b5365eso181168785a.1
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 15:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739922953; x=1740527753; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFpz6+muckOokpjpEyNewjJu14GAmutDRok76QoQN8A=;
        b=WJ69VK3XZ2JzZkb6BV1epwqktzDUG2JHHtvGZprq0CWJZjlqCkyWRk7+TyNWnP9pL3
         Od9OccFW70aTb1xmrDlbtlKWtb80w+r5fX6OBd93dsqyDoZaVSM5uFZwKBa+bu3rlC2S
         RaPqmoNRXa3RFlMm9JYPOazH5cMVQLWNFNaWCs5Pem68Tu9LEfaC8R8w7AoXVon/Flfn
         WicK94a99ATMVWBN9hSS3ZQJC1NgvuXodu+B6KZKIm6V9Oe618nl/xI9fkCd6DHczqyx
         /C8EbUWtVRHwKLMJnwndFfPsbNsLd0YZPdXKCyf2xcvATB6/7WeID/4q0gLjfPKAdF0S
         M1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739922953; x=1740527753;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kFpz6+muckOokpjpEyNewjJu14GAmutDRok76QoQN8A=;
        b=qJLLqeebpqgvlx68tch31KcxdxDjKPnHNL7W6JL0IWKAB7hZZp5DsDeR9480t90jIP
         OHYSQ5ASHwJcX3AyspNF3UAzvkY53AcbhUoN9wG7Nr4PeBAghO7tEIQc8TgvD2hdhG9v
         mLIb6fYdyx52Y/9lG4k8CogzY5sOkNycrhUpxulveibi+frqwARApS7jeIm84GpZH31n
         iEEOlISpYOL3b+CfkK/3hKYZRAbaz8+1VbT15zrmPHdJNzBKYn8+bqQvVyRqa4USXjYa
         qW2IuH1Z7wC5akj23jg3y3Xlcwg73fXOMSRh8+rq35mS18mn00NEVAaMahj0XiGFTYrD
         FQlw==
X-Gm-Message-State: AOJu0Yy7+cTS4hxGPkfJS9+Lfw/Jz7VE3mPy2VEIvXkqny8VRlhQJJw6
	aLLCLZQwngdJTllHZhlVdddSWY6yjfpcKEiVhpge9P1rZSZrH8IJybhcoApl
X-Gm-Gg: ASbGnctvLQbkfu9Mya1iUBz0c0F1z0IMwd48vcZ9MsvqwAsPiHVHg9JIgx+q1w5yCem
	II5jQZjRU0ULI0p76+rtIY3f6w2okvmsaFJyTpeHUEvLHFudBOGTVymrjClleeJvLHGafn9WeU9
	E6/dVAN5WEnrJzQI2b6i7hwc0hec/xaadTWEXyCsBF24zG9CkWq4tVY++4WR+ynrVLsK3FE5x9a
	SgCjaiNH2IQSImMcwb6BrqIBejxO8u1hbrvQftlrvT+vG4/j1Bu7VYPvwu+kDeGWykSYRyhLjkd
	CkgRcgzffYMgOXEW2j220bqkVg==
X-Google-Smtp-Source: AGHT+IEipSjbBPDBs1yrLTEWwgfEb+dNDN4ystBcBmvCOIS6wmVfNmKSZGyBRXBIQfwLi3qTcBOILQ==
X-Received: by 2002:a05:620a:4150:b0:7c0:7f07:a63b with SMTP id af79cd13be357-7c0b5347f47mr211279585a.41.1739922953316;
        Tue, 18 Feb 2025 15:55:53 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c07c6080b0sm714199285a.28.2025.02.18.15.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 15:55:52 -0800 (PST)
Message-ID: <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com>
Date: Tue, 18 Feb 2025 18:55:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com>
 <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
Message-ID-Hash: IUTETQSDQBXVXUVS3ZZMT4P62UICSWJK
X-Message-ID-Hash: IUTETQSDQBXVXUVS3ZZMT4P62UICSWJK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUTETQSDQBXVXUVS3ZZMT4P62UICSWJK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2695354951156848772=="

This is a multi-part message in MIME format.
--===============2695354951156848772==
Content-Type: multipart/alternative;
 boundary="------------QdCxvpWVhe6iemINDTp09t3Q"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QdCxvpWVhe6iemINDTp09t3Q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/02/2025 18:45, Brendan Horsfield wrote:
> Yes, I assumed that was the case.=C2=A0 However, it is not clear from t=
he=20
> X300 documentation how sharp those filters are.=C2=A0 Can you tell me h=
ow=20
> wide the transition band is at the lower sample rates?
>
> To give you some context, I would like to use an X300 (or X310) with a=20
> UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, which=20
> is 83.5 MHz wide.=C2=A0 Ideally I would like to use a sample rate of 10=
0=20
> Msps to minimise the data rate between the USRP and the host PC.=C2=A0=20
> However, before I do this I need to be certain that the usable=20
> bandwidth at this sample rate will be greater than 83.5 MHz.=C2=A0 Is t=
his=20
> information documented somewhere?
>
>
It somewhat depends on the decimation.=C2=A0 If the decimation has a fact=
or=20
of two or 4, the edge roll-off is fairly sharp.=C2=A0 Otherwise,
 =C2=A0 there's a half-band filter in-place that causes a less-desirable=20
pass-band.

But I don't know, precisely, what the transition band is in the "nicer"=20
filter shapes.


If you have an X310+UBX-160, you can always just use a noise source, and=20
measure it yourself to see if it's appropriate for
 =C2=A0 your application.


>
> On Tue, 18 Feb 2025 at 23:11, Marcus D Leech <patchvonbraun@gmail.com>=20
> wrote:
>
>     There will always be some edge roll off. Decimation includes
>     filtering and those filters cannot be infinitely steep.
>     Sent from my iPhone
>
>     > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield
>     <brendan.horsfield@vectalabs.com> wrote:
>     >
>     > =EF=BB=BF
>     > Hi All,
>     >
>     > I have a question about the usable bandwidth of the X300 USRP /
>     UBX-160 daughterboard combo at sampling rates below 200 Msps:
>     >
>     > As I understand it, the UBX-160 receiver has an analog
>     (hardware) filter before the ADC that limits the usable bandwidth
>     to 160 MHz, while the ADC runs at 200 Msps. Therefore the usable
>     bandwidth is around 80% of the sample rate.
>     >
>     > My question is:=C2=A0 What is the usable bandwidth at lower sampl=
ing
>     rates?=C2=A0 Does the 80% factor always apply?
>     >
>     > For example, if I set the decimation factor to 4, so that my
>     sampling rate is 50 Msps, does this mean that the usable bandwidth
>     will be 40 MHz?
>     >
>     > Thanks & Regards,
>     > Brendan.
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------QdCxvpWVhe6iemINDTp09t3Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/02/2025 18:45, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=3DT_Mvxw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Yes, I assumed that was the case.=C2=A0 However, i=
t is
        not clear from the X300 documentation how sharp those filters
        are.=C2=A0 Can you tell me how wide the transition band is at the
        lower sample rates?
        <div><br>
        </div>
        <div>To give you some context, I would like to use an X300 (or
          X310) with a UBX-160 daughterboard to digitise the entire 2.4
          GHz Wi-Fi band, which is 83.5 MHz wide.=C2=A0 Ideally I would l=
ike
          to use a sample rate of 100 Msps to minimise the data rate
          between the USRP and the host PC.=C2=A0 However, before I do th=
is I
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
    factor of two or 4, the edge roll-off is fairly sharp.=C2=A0 Otherwis=
e,<br>
    =C2=A0 there's a half-band filter in-place that causes a less-desirab=
le
    pass-band.<br>
    <br>
    But I don't know, precisely, what the transition band is in the
    "nicer" filter shapes.<br>
    <br>
    <br>
    If you have an X310+UBX-160, you can always just use a noise source,
    and measure it yourself to see if it's appropriate for<br>
    =C2=A0 your application.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=3DT_Mvxw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>=C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2025 at 23:1=
1,
          Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">There
          will always be some edge roll off. Decimation includes
          filtering and those filters cannot be infinitely steep. <br>
          Sent from my iPhone<br>
          <br>
          &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield &lt=
;<a
            href=3D"mailto:brendan.horsfield@vectalabs.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">brendan.horsfield@vectalabs.c=
om</a>&gt;
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
          &gt; My question is:=C2=A0 What is the usable bandwidth at lowe=
r
          sampling rates?=C2=A0 Does the 80% factor always apply?=C2=A0 <=
br>
          &gt; <br>
          &gt; For example, if I set the decimation factor to 4, so that
          my sampling rate is 50 Msps, does this mean that the usable
          bandwidth will be 40 MHz?<br>
          &gt; <br>
          &gt; Thanks &amp; Regards,<br>
          &gt; Brendan.<br>
          &gt; <br>
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
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------QdCxvpWVhe6iemINDTp09t3Q--

--===============2695354951156848772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2695354951156848772==--
