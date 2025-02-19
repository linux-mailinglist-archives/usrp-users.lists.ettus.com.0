Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4EDA3AFEF
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 04:11:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61D0D385846
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 22:11:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739934668; bh=CUPBAu2vZBmeOUYN5cUVMHzVFh/xjVqKpFT1E2ybTkk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZLJttlmVaGY4pel4XfCHF5OKvDXI4LQZQoEfc1gTTGTJSk2eqBgd7qYLbUzrIWtiO
	 1UJ+9CR6zRrLcPYzXDQospFZxqmc3IRcclvfrHNG+hJZbnkW6yPzY3cfeCfSIrqEx2
	 FufjCzXmEaW8xTV4aV768cfzLcQAfRdsHb6G3dczAv0Vb/RuxOHKw7ITCShBBAcWEp
	 AAVhtqnxT2zNMF4y7wFe+GeLHLJY93w2VpR+LU4pZdKJ8epiX+qnKCD6N8RgHICCM8
	 cVxflCko70veguSYUAvFeGv4JmqykygIiUmAysfEqQ2hEUT0kM4ETt6g4o266RJSFw
	 LW13O2IYzA33w==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id AC3D1385846
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 22:11:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kkl45v1G";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6e67ce516efso22930556d6.3
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 19:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739934662; x=1740539462; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iYiYLvNa/Iq0RN4qJ1dJz+gZsuWi/eXglKbWESBicFw=;
        b=kkl45v1Gf+vUuhabFI9QtEfc9VCQrWggXkfH0/jq/kyl30A2bPK5I4ZxQhEREyRAJw
         +ncP8czvonXlSKULdt2rgRzKA7PS5IVUyf/7QPC+p7PpykyQWfnvJTtmcS/4nrT7ZkzZ
         ATiXSOyuYM3biykbW16KgCJdq7uP8LCLox9Xg2npUQC83/7SRg3S8rc3cvRvLkUz8jAA
         X1Xc/QqdqHV3P4mrnWSa3STJXiLYT+KrQuh7oHGb4Ckn1uUIcf3Pa4Y+Cpg0qpfMFl8a
         N6hYShrhoVUksFUH+UE+Kqu17vEsI53hi4Nh59/jDoEaT2OzuVEM1ESpuNX/ZfDjHukD
         aoug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739934662; x=1740539462;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iYiYLvNa/Iq0RN4qJ1dJz+gZsuWi/eXglKbWESBicFw=;
        b=d966mN7xe/QVovN6jk2jCPVxEIB9Z7xKbEDZJv9JILHnqWS6rveZtGV9JpvGsaAK/d
         eS3dhuF+1QLDUvTshZJvLz11m09dxOZ3sn8Ni6ko6Fuz0AbVq9Dkx9xv/5OA3IsBLMOm
         OoWigxVaZmUnXhCBZbV2P2X1pH3W4cF1X9umeb6QlPwynUyXAffsABtIJGTA4XdMRviU
         WqEH+NH5sNlOEc9cEMSq8hkSmRe5ZWdp3Qfy2xXHmO/KVGxokCzznxjT1eSYQlkf+Thr
         fC4CzBlUaJioyxu5wdUZM3oas7A9L4yPDHww5wxiC8UN6n1nGikT3TCu2VremRKKdQrK
         3jzg==
X-Gm-Message-State: AOJu0YxGshAJ8vy6IcSbtQHBfDRl36fF+sE1SBH+sZhfFBsqsnnujlD4
	k4pCypl/xfCrFFqtd2W8ZO233Tlipdw8/WQEJv+i4MUe5v+TVSd2
X-Gm-Gg: ASbGnctk0kCExQvmnPA1nt/f/L9pFidALmmdPQrb7zSNR5gWSVwfg6ABHYGGL2eYmv3
	OBX+BKn3E1UBDPCkEap+jQTiznE2Cs4TOyi1JwdIsk7K2kznUufsPert8r/9OyNtIzVAFPJHxqh
	1EsjMrPGz9mPLQWJmeRXqVGwBZ9mMFpNu1893qAxd7PZis3yCXP5EgBSm+Y9bjrpLLleftn2Iiy
	N4QOaFsO8CitjTL7g6lHdT0BX47cjJ3XXf5AkJ+0GOO0Y3Y+uNT/znMoRiWsesE2ka27olx0CYs
	Ai/thcQuPlYGM9SQI0MYX1sV3EnMst/cADY+VuOTALtvXO5T52ff6AsrNRHVbDEiFm5VzbIikzZ
	vqOjCAaSEwrj/wA==
X-Google-Smtp-Source: AGHT+IEz5Jx33AZlBrQK/+D4oU88Kug7ZJH1UWo9vGoxjFomYj5zVIo3+gU3hfynqltlaeu/LIM+uw==
X-Received: by 2002:a05:6214:d64:b0:6e6:5d9a:9db4 with SMTP id 6a1803df08f44-6e697573436mr27353956d6.41.1739934661963;
        Tue, 18 Feb 2025 19:11:01 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e65dcf9645sm70716616d6.123.2025.02.18.19.11.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 19:11:01 -0800 (PST)
Message-ID: <70756578-f8ab-4ff9-9f88-dbf06a92504d@gmail.com>
Date: Tue, 18 Feb 2025 22:11:00 -0500
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
 <de3fefcd-8095-4537-9efb-8414ec7a24d8@gmail.com>
 <CALNMZ8U5pY=Rm_b5N_kCmsHBV0utfMx5LgtivK=uW_c7rMbYbg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALNMZ8U5pY=Rm_b5N_kCmsHBV0utfMx5LgtivK=uW_c7rMbYbg@mail.gmail.com>
Message-ID-Hash: QAOS42HIMVUSMY6POHOUKLCQ3X7KMLMY
X-Message-ID-Hash: QAOS42HIMVUSMY6POHOUKLCQ3X7KMLMY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QAOS42HIMVUSMY6POHOUKLCQ3X7KMLMY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1567866212972818259=="

This is a multi-part message in MIME format.
--===============1567866212972818259==
Content-Type: multipart/alternative;
 boundary="------------pQtH0X7qF9PaY2xpouwS5s81"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pQtH0X7qF9PaY2xpouwS5s81
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/02/2025 21:45, Brendan Horsfield wrote:
> Point taken.=C2=A0 At this stage we are mainly interested in straight I=
Q=20
> recording & playback with minimal processing.=C2=A0 However, in the fut=
ure=20
> it would be desirable to be able to display a real-time spectrum trace=20
> & waterfall plot during recording/playback, using GNU Radio or=20
> something like it.
>
> As you suggest, I am assuming our=C2=A0host machine will need a dual-10=
Gbe=20
> adaptor card and a high-spec CPU, memory, SSD etc. This is a complex=20
> procurement exercise all by itself.
My understanding (and I haven't played with them) is that NVME SSDs are=20
among the fastest.=C2=A0=C2=A0 Performance up to a few GByte/Sec
 =C2=A0 on write is possible, although I don't know if it can be sustaine=
d=C2=A0=20
at those rates, or whether it's "bursty".

I've been able to produce "real-time" spectral displays on 10yo=20
dual-Xeon hardware at 100Msps, but only using the
 =C2=A0 kind of "stuttered" display approach that Gnu Radio FFT displays=20
often use, where most of the data is discarded.=C2=A0 Often,
 =C2=A0 that's all that's needed to show a quick summary of the spectrum.

On your other question, about transition bandwidth, I don't have a=20
direct answer, but on an N310 I measured the roll-off
 =C2=A0 as a fraction of the overall bandwidth, and it is about 12.5%. Th=
at=20
doesn't necessarily translate to the X310, but the
 =C2=A0 DDC implementation is of the same generation.


>
>
>
> On Wed, 19 Feb 2025 at 10:58, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 18/02/2025 19:26, Brendan Horsfield wrote:
>>     I thought your name sounded familiar!=C2=A0=F0=9F=99=82
>>
>>     Overall the X310+UBX-160 appears to be a good fit to our
>>     requirements.=C2=A0 My original question was really about ensuring
>>     that our host PC & network interface have sufficient bandwidth to
>>     ingest the IQ data from a pair of UBX-160s.=C2=A0 It would be nice
>>     (although not essential) if we could run one channel at 100 Msps,
>>     and the other at 200 Msps, to reduce the bandwidth requirements
>>     on the backend hardware.
>     You'd need to have separate streamers to support two different
>     sample rates, and two 10Gbe interfaces.
>
>     But in terms of "what kind of PC hardware do I need?". There's no
>     closed-form answer to that question.=C2=A0 There's no
>     =C2=A0 handy-dandy "engineering worksheet" that tells you how much
>     "grunt" you need for different DSP "flows" at
>     =C2=A0 a given sample-rate--so very much depends on what you're doi=
ng,
>     and how you're doing it.=C2=A0 Generally, as you scale up
>     =C2=A0 in sample-rate, you have to scale up in:
>
>     =C2=A0=C2=A0 o CPU base clock rate
>
>     =C2=A0=C2=A0 o Memory bandwidth
>
>     =C2=A0=C2=A0 o Number of CPUs
>
>
>
>
>>
>>
>>     On Wed, 19 Feb 2025 at 10:17, Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 18/02/2025 19:13, Brendan Horsfield wrote:
>>>         Thanks for the suggestion about the noise source -- that's
>>>         what I would normally=C2=A0do.=C2=A0 Unfortunately I haven't =
actually
>>>         purchased the hardware yet -- I was hoping to clarify this
>>>         issue before raising a purchase order.
>>>
>>>         Perhaps I should follow this up with one of the application
>>>         engineers at NI?=C2=A0 They might have access to an X310+UBX-=
160
>>>         system that they can use to answer my question directly.
>>>
>>>         Thanks again for your help in this matter.
>>>
>>>         Regards,
>>>         Brendan.
>>         I actually do work for NI on USRP devices (on a very very
>>         very part-time basis).=C2=A0 My X310 is currently elsewhere, a=
nd
>>         not populated
>>         =C2=A0 with a UBX-160.
>>
>>
>>>
>>>         On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             On 18/02/2025 18:45, Brendan Horsfield wrote:
>>>>             Yes, I assumed that was the case.=C2=A0 However, it is n=
ot
>>>>             clear from the X300 documentation how sharp those
>>>>             filters are.=C2=A0 Can you tell me how wide the transiti=
on
>>>>             band is at the lower sample rates?
>>>>
>>>>             To give you some context, I would like to use an X300
>>>>             (or X310) with a UBX-160 daughterboard to digitise the
>>>>             entire 2.4 GHz Wi-Fi band, which is 83.5 MHz wide.=C2=A0
>>>>             Ideally I would like to use a sample rate of 100 Msps
>>>>             to minimise the data rate between the USRP and the host
>>>>             PC.=C2=A0 However, before I do this I need to be certain
>>>>             that the usable bandwidth at this sample rate will be
>>>>             greater than 83.5 MHz. Is this information documented
>>>>             somewhere?
>>>>
>>>>
>>>             It somewhat depends on the decimation.=C2=A0 If the
>>>             decimation has a factor of two or 4, the edge roll-off
>>>             is fairly sharp.=C2=A0 Otherwise,
>>>             =C2=A0 there's a half-band filter in-place that causes a
>>>             less-desirable pass-band.
>>>
>>>             But I don't know, precisely, what the transition band is
>>>             in the "nicer" filter shapes.
>>>
>>>
>>>             If you have an X310+UBX-160, you can always just use a
>>>             noise source, and measure it yourself to see if it's
>>>             appropriate for
>>>             =C2=A0 your application.
>>>
>>>
>>>>
>>>>             On Tue, 18 Feb 2025 at 23:11, Marcus D Leech
>>>>             <patchvonbraun@gmail.com> wrote:
>>>>
>>>>                 There will always be some edge roll off. Decimation
>>>>                 includes filtering and those filters cannot be
>>>>                 infinitely steep.
>>>>                 Sent from my iPhone
>>>>
>>>>                 > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsf=
ield
>>>>                 <brendan.horsfield@vectalabs.com> wrote:
>>>>                 >
>>>>                 > =EF=BB=BF
>>>>                 > Hi All,
>>>>                 >
>>>>                 > I have a question about the usable bandwidth of
>>>>                 the X300 USRP / UBX-160 daughterboard combo at
>>>>                 sampling rates below 200 Msps:
>>>>                 >
>>>>                 > As I understand it, the UBX-160 receiver has an
>>>>                 analog (hardware) filter before the ADC that limits
>>>>                 the usable bandwidth to 160 MHz, while the ADC runs
>>>>                 at 200 Msps.=C2=A0 Therefore the usable bandwidth is
>>>>                 around 80% of the sample rate.
>>>>                 >
>>>>                 > My question is:=C2=A0 What is the usable bandwidth=
 at
>>>>                 lower sampling rates?=C2=A0 Does the 80% factor alwa=
ys
>>>>                 apply?
>>>>                 >
>>>>                 > For example, if I set the decimation factor to 4,
>>>>                 so that my sampling rate is 50 Msps, does this mean
>>>>                 that the usable bandwidth will be 40 MHz?
>>>>                 >
>>>>                 > Thanks & Regards,
>>>>                 > Brendan.
>>>>                 >
>>>>                 > _______________________________________________
>>>>                 > USRP-users mailing list -- usrp-users@lists.ettus.=
com
>>>>                 > To unsubscribe send an email to
>>>>                 usrp-users-leave@lists.ettus.com
>>>>
>>>
>>
>

--------------pQtH0X7qF9PaY2xpouwS5s81
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/02/2025 21:45, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8U5pY=3DRm_b5N_kCmsHBV0utfMx5LgtivK=3DuW_c7rMbYbg@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Point taken.=C2=A0 At this stage we are mainly
        interested in straight IQ recording &amp; playback with minimal
        processing.=C2=A0 However, in the future it would be desirable to=
 be
        able to display a real-time spectrum trace &amp; waterfall plot
        during recording/playback, using GNU Radio or something like it.
        <div><br>
        </div>
        <div>As you suggest, I am assuming our=C2=A0host machine will nee=
d a
          dual-10Gbe adaptor card and a high-spec CPU, memory, SSD etc.=C2=
=A0
          This is a complex procurement exercise all by itself. <br>
        </div>
      </div>
    </blockquote>
    My understanding (and I haven't played with them) is that NVME SSDs
    are among the fastest.=C2=A0=C2=A0 Performance up to a few GByte/Sec<=
br>
    =C2=A0 on write is possible, although I don't know if it can be
    sustained=C2=A0 at those rates, or whether it's "bursty".<br>
    <br>
    I've been able to produce "real-time" spectral displays on 10yo
    dual-Xeon hardware at 100Msps, but only using the<br>
    =C2=A0 kind of "stuttered" display approach that Gnu Radio FFT displa=
ys
    often use, where most of the data is discarded.=C2=A0 Often,<br>
    =C2=A0 that's all that's needed to show a quick summary of the spectr=
um.<br>
    <br>
    On your other question, about transition bandwidth, I don't have a
    direct answer, but on an N310 I measured the roll-off<br>
    =C2=A0 as a fraction of the overall bandwidth, and it is about 12.5%.=
=C2=A0
    That doesn't necessarily translate to the X310, but the<br>
    =C2=A0 DDC implementation is of the same generation.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8U5pY=3DRm_b5N_kCmsHBV0utfMx5LgtivK=3DuW_c7rMbYbg@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div>
          <div><br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 10:5=
8,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 18/02/2025 19:26, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">I thought your name sounded familiar!=C2=A0=
=F0=9F=99=82
                <div><br>
                </div>
                <div>Overall the X310+UBX-160 appears to be a good fit
                  to our requirements.=C2=A0 My original question was rea=
lly
                  about ensuring that our host PC &amp; network
                  interface have sufficient bandwidth to ingest the IQ
                  data from a pair of UBX-160s.=C2=A0 It would be nice
                  (although not essential) if we could run one channel
                  at 100 Msps, and the other at 200 Msps, to reduce the
                  bandwidth requirements on the backend hardware.</div>
              </div>
            </blockquote>
            You'd need to have separate streamers to support two
            different sample rates, and two 10Gbe interfaces.<br>
            <br>
            But in terms of "what kind of PC hardware do I need?".
            There's no closed-form answer to that question.=C2=A0 There's=
 no<br>
            =C2=A0 handy-dandy "engineering worksheet" that tells you how
            much "grunt" you need for different DSP "flows" at<br>
            =C2=A0 a given sample-rate--so very much depends on what you'=
re
            doing, and how you're doing it.=C2=A0 Generally, as you scale=
 up<br>
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025=
 at
                  10:17, Marcus D. Leech &lt;<a
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
                    <div>On 18/02/2025 19:13, Brendan Horsfield wrote:<br=
>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Thanks for the suggestion about th=
e
                        noise source -- that's what I would
                        normally=C2=A0do.=C2=A0 Unfortunately I haven't a=
ctually
                        purchased the hardware yet -- I was hoping to
                        clarify this issue before raising a purchase
                        order.
                        <div><br>
                        </div>
                        <div>Perhaps I should follow this up with one of
                          the application engineers at NI?=C2=A0 They mig=
ht
                          have access to an X310+UBX-160 system that
                          they can use to answer my question directly.</d=
iv>
                        <div><br>
                        </div>
                        <div>Thanks again for your help in this matter.</=
div>
                        <div><br>
                        </div>
                        <div>Regards,</div>
                        <div>Brendan.</div>
                      </div>
                    </blockquote>
                    I actually do work for NI on USRP devices (on a very
                    very very part-time basis).=C2=A0 My X310 is currentl=
y
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
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 =
Feb
                          2025 at 09:55, Marcus D. Leech &lt;<a
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
                            <div>On 18/02/2025 18:45, Brendan Horsfield
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">Yes, I assumed that was th=
e
                                case.=C2=A0 However, it is not clear from=
 the
                                X300 documentation how sharp those
                                filters are.=C2=A0 Can you tell me how wi=
de
                                the transition band is at the lower
                                sample rates?
                                <div><br>
                                </div>
                                <div>To give you some context, I would
                                  like to use an X300 (or X310) with a
                                  UBX-160 daughterboard to digitise the
                                  entire 2.4 GHz Wi-Fi band, which is
                                  83.5 MHz wide.=C2=A0 Ideally I would li=
ke
                                  to use a sample rate of 100 Msps to
                                  minimise the data rate between the
                                  USRP and the host PC.=C2=A0 However, be=
fore
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
                            It somewhat depends on the decimation.=C2=A0 =
If
                            the decimation has a factor of two or 4, the
                            edge roll-off is fairly sharp.=C2=A0 Otherwis=
e,<br>
                            =C2=A0 there's a half-band filter in-place th=
at
                            causes a less-desirable pass-band.<br>
                            <br>
                            But I don't know, precisely, what the
                            transition band is in the "nicer" filter
                            shapes.<br>
                            <br>
                            <br>
                            If you have an X310+UBX-160, you can always
                            just use a noise source, and measure it
                            yourself to see if it's appropriate for<br>
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
                                  Leech &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">patch=
vonbraun@gmail.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">There
                                  will always be some edge roll off.
                                  Decimation includes filtering and
                                  those filters cannot be infinitely
                                  steep. <br>
                                  Sent from my iPhone<br>
                                  <br>
                                  &gt; On Feb 18, 2025, at 2:12=E2=80=AFA=
M,
                                  Brendan Horsfield &lt;<a
href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">brend=
an.horsfield@vectalabs.com</a>&gt;
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
                                  ADC runs at 200 Msps.=C2=A0 Therefore t=
he
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
                                  _______________________________________=
________<br>
                                  &gt; USRP-users mailing list -- <a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">usrp-=
users@lists.ettus.com</a><br>
                                  &gt; To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">usrp-=
users-leave@lists.ettus.com</a><br>
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

--------------pQtH0X7qF9PaY2xpouwS5s81--

--===============1567866212972818259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1567866212972818259==--
