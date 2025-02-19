Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BE3A3AE1E
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 01:58:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 449CB386182
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 19:58:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739926691; bh=sHbipqu97ozMJAieZc96PY0nEBERC6ouF1gTTkmx3Rs=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=L+hm/mJ5L8koh+MofQtaJd82uAZFIVMnD4yX0XnY+aV0fVzyaXnc30TlauWcTvmkK
	 Nbf84fLSc1UuWqi2625hh+o6K91PHPeCWHDw9c/MR7w9/Kg5Vs9+H8RZCeuizjpvFV
	 BLMP8QJ0Sg/SI2EEjIS3nfPItiTvAXn6IYHbrgMtChOseqRjU7YpK+wKkBVCA235eh
	 1zqLB88ovv1Fpe6x4DdiyOeJLZ2xsgvVLJxx34LA2NwunwPMHiShHWAbYk3YrdYPcl
	 xIhwJ79RVcEMrT8mXibQt857JaXRp8a/m/wMOGFFg3W8k0Wmk/VN5pxY5pypZxhINM
	 vmKIciqXmQRDA==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id F3718385FBB
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 19:58:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gUpPUZk7";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7c0a12eb6c0so119882085a.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 16:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739926685; x=1740531485; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYYN/iNaUf6ea43MsLRYNIkeSg4Pp+u0ECKH59QkXUk=;
        b=gUpPUZk7AcUAvDu0rSbzS/B8qJij3YsmgVpvRnGWJq3ZVucsR/V1xD+34a8eeYEI45
         iUrQBvkhx3LVmDOaglPhc5+wodwOAKa4so492Ox2x38oZBMJejl8h+xwliphSi60O0xc
         COGx50V62HwU1xUzGJ4sz+NFBUuichiPq28AHDVzMHNOHKJVVVqGmlCSsBYS/+wl8KJa
         JccQoRaE/zXMg8wtFe70jpLl+49JSbf7R+MBZ4oESIzHv2TAZG6Kb1477Lnns5UwtB8K
         xvhn6BZMQzTMmxxgajvSbLZZenWTI7dg0a/FYsMuD4y6QIMcTYKKhuGgpwQ5Xp3oB6NS
         TFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739926685; x=1740531485;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EYYN/iNaUf6ea43MsLRYNIkeSg4Pp+u0ECKH59QkXUk=;
        b=pRtkXEVFZb+FR0BhhjsStQDz9q8XvLj8AWGG5WrBU4WrEmZ2dCLIh0vOMD8eE/az5c
         4/3KMsI7HDlvCsB7BaASRP5WdbIRJ3JSFyJlmOxQElvX5b93ENYlDkaFCuy0F4Xq2yne
         beQWOx6LLMFWkf5MOG0qrzN7Wck3Ll37nszpcaBqdP7oFaTRPKHVOpbh/8jWqMrtWIKo
         r9w9sbAHbL5OqPppHjHcqSc7HYGomU5hKaYtskYWEmxEG11ue8+MYthLiYmFy5EzBc/G
         O4DbmO8OVxtJ3ZjqewLw85LRtMVSgHp8qeenDtFrNGIsOrHPBUw+SwunW8eh7xGjLMbb
         71VA==
X-Gm-Message-State: AOJu0YxlDIeGNrrje3eYMViIJL9A1dkFeTHZWr8eUo47ndOUFZoqASKo
	u+6K4olQMBObmFEBzU1OLlfekEm+jI3iP6szXi8dSMjwdmtH32W0qRJGRTxo
X-Gm-Gg: ASbGncsDJTmRuoptdL0LVqOYM4uYHsg7vffDY12AbKYlgB6OEYVVUH80VbRCmwyfB6h
	4lEYqCSb2vwo9fPGujbaWJvtpGyNwBHqlUMOX/8VSBEporvXn4bix87UBQHWj46VRIkaJTc81cZ
	37RnCWOBZ+Z8ZDsiYjb7wsialB4uJWB1FJFwBuK+VnvcEofwDVH1J3DTP3YQG0mTep7D7E1EbCb
	FnBDognI4AMWOJGv7FHssUFgLOyDGnPiyg7WjnTYOssmKBOHUhy89Oc42Sdov4pjj8pIx3rDcq9
	UQ6xaxvbeOKR83nDFXI75jhgAxC1QSiOhdNhv9THNBAbI4AaQSnXci/e0NnjIN3vql7/6Y1DVh2
	pDPkLngdby7Isrg==
X-Google-Smtp-Source: AGHT+IEQn2bi2BLgtGMnx0RvFMfO+1pGXqciix7pKVlh1OWCgOqKpH4RF6zAQATr5Q5MVfqH8DRvjw==
X-Received: by 2002:a05:620a:608c:b0:7c0:a0cc:3464 with SMTP id af79cd13be357-7c0b52837f5mr268557785a.26.1739926685287;
        Tue, 18 Feb 2025 16:58:05 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c0ae75c31esm134374485a.63.2025.02.18.16.58.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 16:58:04 -0800 (PST)
Message-ID: <de3fefcd-8095-4537-9efb-8414ec7a24d8@gmail.com>
Date: Tue, 18 Feb 2025 19:57:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com>
 <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com>
 <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
 <d3a8592f-30fb-45b3-870d-95b6d1b64f2e@gmail.com>
 <CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=A4JGJEDykSq4QvQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=A4JGJEDykSq4QvQ@mail.gmail.com>
Message-ID-Hash: FJKOM6SA4ZBU47JSA5JSTDJM6GUWBVRS
X-Message-ID-Hash: FJKOM6SA4ZBU47JSA5JSTDJM6GUWBVRS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FJKOM6SA4ZBU47JSA5JSTDJM6GUWBVRS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3217605721648090241=="

This is a multi-part message in MIME format.
--===============3217605721648090241==
Content-Type: multipart/alternative;
 boundary="------------0du7r7Gzx1doh4EMJBgg2TVD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0du7r7Gzx1doh4EMJBgg2TVD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/02/2025 19:26, Brendan Horsfield wrote:
> I thought your name sounded familiar!=C2=A0=F0=9F=99=82
>
> Overall the X310+UBX-160 appears to be a good fit to our=20
> requirements.=C2=A0 My original question was really about ensuring that=
 our=20
> host PC & network interface have sufficient bandwidth to ingest the IQ=20
> data from a pair of UBX-160s.=C2=A0 It would be nice (although not=20
> essential) if we could run one channel at 100 Msps, and the other at=20
> 200 Msps, to reduce the bandwidth requirements on the backend hardware.
You'd need to have separate streamers to support two different sample=20
rates, and two 10Gbe interfaces.

But in terms of "what kind of PC hardware do I need?". There's no=20
closed-form answer to that question.=C2=A0 There's no
 =C2=A0 handy-dandy "engineering worksheet" that tells you how much "grun=
t"=20
you need for different DSP "flows" at
 =C2=A0 a given sample-rate--so very much depends on what you're doing, a=
nd=20
how you're doing it.=C2=A0 Generally, as you scale up
 =C2=A0 in sample-rate, you have to scale up in:

 =C2=A0=C2=A0 o CPU base clock rate

 =C2=A0=C2=A0 o Memory bandwidth

 =C2=A0=C2=A0 o Number of CPUs




>
>
> On Wed, 19 Feb 2025 at 10:17, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 18/02/2025 19:13, Brendan Horsfield wrote:
>>     Thanks for the suggestion about the noise source -- that's what I
>>     would normally=C2=A0do. Unfortunately I haven't actually purchased=
 the
>>     hardware yet -- I was hoping to clarify this issue before raising
>>     a purchase order.
>>
>>     Perhaps I should follow this up with one of the application
>>     engineers at NI?=C2=A0 They might have access to an X310+UBX-160
>>     system that they can use to answer my question directly.
>>
>>     Thanks again for your help in this matter.
>>
>>     Regards,
>>     Brendan.
>     I actually do work for NI on USRP devices (on a very very very
>     part-time basis).=C2=A0 My X310 is currently elsewhere, and not pop=
ulated
>     =C2=A0 with a UBX-160.
>
>
>>
>>     On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 18/02/2025 18:45, Brendan Horsfield wrote:
>>>         Yes, I assumed that was the case. However, it is not clear
>>>         from the X300 documentation how sharp those filters are.=C2=A0
>>>         Can you tell me how wide the transition band is at the lower
>>>         sample rates?
>>>
>>>         To give you some context, I would like to use an X300 (or
>>>         X310) with a UBX-160 daughterboard to digitise the entire
>>>         2.4 GHz Wi-Fi band, which is 83.5 MHz wide.=C2=A0 Ideally I w=
ould
>>>         like to use a sample rate of 100 Msps to minimise the data
>>>         rate between the USRP and the host PC.=C2=A0 However, before =
I do
>>>         this I need to be certain that the usable bandwidth at this
>>>         sample rate will be greater than 83.5 MHz.=C2=A0 Is this
>>>         information documented somewhere?
>>>
>>>
>>         It somewhat depends on the decimation.=C2=A0 If the decimation=
 has
>>         a factor of two or 4, the edge roll-off is fairly sharp.=C2=A0
>>         Otherwise,
>>         =C2=A0 there's a half-band filter in-place that causes a
>>         less-desirable pass-band.
>>
>>         But I don't know, precisely, what the transition band is in
>>         the "nicer" filter shapes.
>>
>>
>>         If you have an X310+UBX-160, you can always just use a noise
>>         source, and measure it yourself to see if it's appropriate for
>>         =C2=A0 your application.
>>
>>
>>>
>>>         On Tue, 18 Feb 2025 at 23:11, Marcus D Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             There will always be some edge roll off. Decimation
>>>             includes filtering and those filters cannot be
>>>             infinitely steep.
>>>             Sent from my iPhone
>>>
>>>             > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield
>>>             <brendan.horsfield@vectalabs.com> wrote:
>>>             >
>>>             > =EF=BB=BF
>>>             > Hi All,
>>>             >
>>>             > I have a question about the usable bandwidth of the
>>>             X300 USRP / UBX-160 daughterboard combo at sampling
>>>             rates below 200 Msps:
>>>             >
>>>             > As I understand it, the UBX-160 receiver has an analog
>>>             (hardware) filter before the ADC that limits the usable
>>>             bandwidth to 160 MHz, while the ADC runs at 200 Msps.=C2=A0
>>>             Therefore the usable bandwidth is around 80% of the
>>>             sample rate.
>>>             >
>>>             > My question is:=C2=A0 What is the usable bandwidth at l=
ower
>>>             sampling rates?=C2=A0 Does the 80% factor always apply?
>>>             >
>>>             > For example, if I set the decimation factor to 4, so
>>>             that my sampling rate is 50 Msps, does this mean that
>>>             the usable bandwidth will be 40 MHz?
>>>             >
>>>             > Thanks & Regards,
>>>             > Brendan.
>>>             >
>>>             > _______________________________________________
>>>             > USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             > To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>
>>
>

--------------0du7r7Gzx1doh4EMJBgg2TVD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/02/2025 19:26, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=3DA4JGJEDykSq4QvQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I thought your name sounded familiar!=C2=A0=F0=9F=99=
=82
        <div><br>
        </div>
        <div>Overall the X310+UBX-160 appears to be a good fit to our
          requirements.=C2=A0 My original question was really about ensur=
ing
          that our host PC &amp; network interface have sufficient
          bandwidth to ingest the IQ data from a pair of UBX-160s.=C2=A0 =
It
          would be nice (although not essential) if we could run one
          channel at 100 Msps, and the other at 200 Msps, to reduce the
          bandwidth requirements on the backend hardware.</div>
      </div>
    </blockquote>
    You'd need to have separate streamers to support two different
    sample rates, and two 10Gbe interfaces.<br>
    <br>
    But in terms of "what kind of PC hardware do I need?". There's no
    closed-form answer to that question.=C2=A0 There's no<br>
    =C2=A0 handy-dandy "engineering worksheet" that tells you how much
    "grunt" you need for different DSP "flows" at<br>
    =C2=A0 a given sample-rate--so very much depends on what you're doing=
,
    and how you're doing it.=C2=A0 Generally, as you scale up<br>
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
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=3DA4JGJEDykSq4QvQ@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>=C2=A0=C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 10:1=
7,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 18/02/2025 19:13, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks for the suggestion about the noise
                source -- that's what I would normally=C2=A0do.=C2=A0
                Unfortunately I haven't actually purchased the hardware
                yet -- I was hoping to clarify this issue before raising
                a purchase order.
                <div><br>
                </div>
                <div>Perhaps I should follow this up with one of the
                  application engineers at NI?=C2=A0 They might have acce=
ss
                  to an X310+UBX-160 system that they can use to answer
                  my question directly.</div>
                <div><br>
                </div>
                <div>Thanks again for your help in this matter.</div>
                <div><br>
                </div>
                <div>Regards,</div>
                <div>Brendan.</div>
              </div>
            </blockquote>
            I actually do work for NI on USRP devices (on a very very
            very part-time basis).=C2=A0 My X310 is currently elsewhere, =
and
            not populated<br>
            =C2=A0 with a UBX-160.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>=C2=A0 =C2=A0</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025=
 at
                  09:55, Marcus D. Leech &lt;<a
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
                    <div>On 18/02/2025 18:45, Brendan Horsfield wrote:<br=
>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Yes, I assumed that was the case.=C2=
=A0
                        However, it is not clear from the X300
                        documentation how sharp those filters are.=C2=A0 =
Can
                        you tell me how wide the transition band is at
                        the lower sample rates?
                        <div><br>
                        </div>
                        <div>To give you some context, I would like to
                          use an X300 (or X310) with a UBX-160
                          daughterboard to digitise the entire 2.4 GHz
                          Wi-Fi band, which is 83.5 MHz wide.=C2=A0 Ideal=
ly I
                          would like to use a sample rate of 100 Msps to
                          minimise the data rate between the USRP and
                          the host PC.=C2=A0 However, before I do this I =
need
                          to be certain that the usable bandwidth at
                          this sample rate will be greater than 83.5
                          MHz.=C2=A0 Is this information documented
                          somewhere?=C2=A0=C2=A0</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                    </blockquote>
                    It somewhat depends on the decimation.=C2=A0 If the
                    decimation has a factor of two or 4, the edge
                    roll-off is fairly sharp.=C2=A0 Otherwise,<br>
                    =C2=A0 there's a half-band filter in-place that cause=
s a
                    less-desirable pass-band.<br>
                    <br>
                    But I don't know, precisely, what the transition
                    band is in the "nicer" filter shapes.<br>
                    <br>
                    <br>
                    If you have an X310+UBX-160, you can always just use
                    a noise source, and measure it yourself to see if
                    it's appropriate for<br>
                    =C2=A0 your application.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>=C2=A0</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 =
Feb
                          2025 at 23:11, Marcus D Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">There
                          will always be some edge roll off. Decimation
                          includes filtering and those filters cannot be
                          infinitely steep. <br>
                          Sent from my iPhone<br>
                          <br>
                          &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brend=
an
                          Horsfield &lt;<a
href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank"
                            moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">brendan.horsf=
ield@vectalabs.com</a>&gt;
                          wrote:<br>
                          &gt; <br>
                          &gt; =EF=BB=BF<br>
                          &gt; Hi All,<br>
                          &gt; <br>
                          &gt; I have a question about the usable
                          bandwidth of the X300 USRP / UBX-160
                          daughterboard combo at sampling rates below
                          200 Msps:<br>
                          &gt; <br>
                          &gt; As I understand it, the UBX-160 receiver
                          has an analog (hardware) filter before the ADC
                          that limits the usable bandwidth to 160 MHz,
                          while the ADC runs at 200 Msps.=C2=A0 Therefore=
 the
                          usable bandwidth is around 80% of the sample
                          rate.<br>
                          &gt; <br>
                          &gt; My question is:=C2=A0 What is the usable
                          bandwidth at lower sampling rates?=C2=A0 Does t=
he
                          80% factor always apply?=C2=A0 <br>
                          &gt; <br>
                          &gt; For example, if I set the decimation
                          factor to 4, so that my sampling rate is 50
                          Msps, does this mean that the usable bandwidth
                          will be 40 MHz?<br>
                          &gt; <br>
                          &gt; Thanks &amp; Regards,<br>
                          &gt; Brendan.<br>
                          &gt; <br>
                          &gt;
                          _______________________________________________=
<br>
                          &gt; USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          &gt; To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                            moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><br>
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

--------------0du7r7Gzx1doh4EMJBgg2TVD--

--===============3217605721648090241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3217605721648090241==--
