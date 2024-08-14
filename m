Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59979951CF5
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 16:22:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A18338465E
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 10:22:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723645340; bh=mNzwkRsIGO1ztJbku0SuKGLAlK+Ocn+e7FtVXH+gyw0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zRqlamKtwShrQOYUjRKoZeX/bYdg0eOTxBe4+ZcUGJgWNJ6bQ3yQoSOlyeYjXAdtB
	 N62d6uo9A5P9adNiCpY/w57UTYsDhOeYTKJ7rZtF+fJdsefjSNlfgVedsgSOZD7B31
	 j85ENQyory8WsmvmFRA1ZbtmtYaLrfb52nHuQ/8yvwPXsYjoWcS8nYbE8xkJ/ZDUI4
	 x0cpdoMYdwX5J3Nn7FUiUy4p6OtUV7ZdP0GhL9l1+WxupbJ2zaUgiODxdCt8572LfH
	 oDtaNjn6iTfJKWyXJc1jo/fR7Pg6hqdt5WafIgwPZ3KuQYtpqCvA58s35tKo/YZQ+Q
	 xqcTXV4BBLVeA==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 4629C38465E
	for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 10:22:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i7Tfk07z";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7a1d7bc07b7so448418185a.0
        for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 07:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723645325; x=1724250125; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8oTaH+ql/YpMVel8bqT96Jj1X0/EZ7xLPKk9MRgw7ow=;
        b=i7Tfk07zg5X/rm44Tsfm8tSQviF7zl/3Ob9u9jOZJNs0QWqvKj8h4AdGuVXuQ70/uQ
         aDcRVyTxWZJ16QSulOzIHd6KG1MFFPfG++nygSJCm28Rv7XNkwQnfcGFGjAGFXSsea2H
         WbHjJO7TBui4qiY9vJva6O4bhJBM76Y3W1n/2Gm6i7O7xcn2LSDPxbk1S2MgNMg9I1vu
         1ArO77lLjRSVQJ5qXFEHlxiTQVM+EqTnBfTGeiB5aBbs84PN6sUYG+zqZAuzTo8hPyNf
         ATBwZAhKE9YjJSEyZpCZOe+YI1clR6R224AVsmhmdsFHRFkhhmSKB05yQ6tJRiok7v+M
         11oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723645325; x=1724250125;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8oTaH+ql/YpMVel8bqT96Jj1X0/EZ7xLPKk9MRgw7ow=;
        b=erSbD5TJ/Ump2r0qkfuf5xp2D0ABrXEYR1rjCjfQkM6SdYq7HQFUYfCUBPcBNKFSga
         b2Ue8QbSuH8UE3z5XRbueKU2Eqs6CVCwKN0c5KD4qx5IJa5Rm7xYyDDT160PlzYwrL5J
         wcqDIlk/aLi59VaqF+7+4I5oTQLyKO0cmtn5QTXKcOXv9YTbW/HetfLP4SkhrROLiARm
         tFYkus6yr3WJpjYzaSKRPUR9NXRUX2wR+PHdkf4Gf4qCp/xZ2KRFrsWxiv7feGvQZHEg
         NgQFk+ESBhe5TiDWJ0u4l5eZBvlXv0Lwo3qySn7g8ommzubznqQoPL/Y6LWWA8je6cAw
         TF1Q==
X-Gm-Message-State: AOJu0YzNx7Hq7hG2pR1Dadl0K6zz7t2txH5nHaR3IC23ujWLKb/iLdoE
	gfMPz3KUZUrf2DOAWqjIGKBcQz12y+EDouZAvB1U9LtSCJSeBE4K9fK+5g==
X-Google-Smtp-Source: AGHT+IEVD6UM064txI5OZTh6knnmMdsEgkcUJK9hwuJaeN5AD4HZg+OTUroYd9VHrBIKfGcqxBMLww==
X-Received: by 2002:a05:620a:d8b:b0:79b:efe1:1222 with SMTP id af79cd13be357-7a4ee3e6763mr271786485a.63.1723645325055;
        Wed, 14 Aug 2024 07:22:05 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a4c7dee007sm442497685a.97.2024.08.14.07.22.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 07:22:04 -0700 (PDT)
Message-ID: <b5b9ee1a-d3ce-43d1-9a8e-0b40f99c2024@gmail.com>
Date: Wed, 14 Aug 2024 10:22:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <XbpcZvaMMXT6CtwRg8IyAm_D2T57dOfmrN5Tjze8-OitQI63xUXP7Iz7dQKf7Z15YiSgFNB5CiBc5htCR1LFxrkVuo_pk0mDDm-_3hxSHEw=@protonmail.com>
 <46409b81-0e7e-4c71-bb77-536efad5f90a@gmail.com>
 <MGO60O5lFGsXTagndMxl2DUjN99zdlj-pecPAYnMBmjk48p9i5eFK66JE9Z82bhO-k26-NQqcYNTIDuoFpK8GDrpZMw-SNHEMf-2aaXE2xo=@protonmail.com>
 <b10991d1-c787-406b-8ff9-e8d010744ad5@gmail.com>
 <x_QaVKXGmknlfRkvuULzZoelaQQvh19qK4xF8Mus_M5EGC7YIbvD3rZy8Hut7PAr61IqVrpiCReU0I_36wHBH_7QwGisB77DT7Y_jSkY_zs=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <x_QaVKXGmknlfRkvuULzZoelaQQvh19qK4xF8Mus_M5EGC7YIbvD3rZy8Hut7PAr61IqVrpiCReU0I_36wHBH_7QwGisB77DT7Y_jSkY_zs=@protonmail.com>
Message-ID-Hash: BTAR2ZVAYBWVHLMXT32FMD4E6XLN72OP
X-Message-ID-Hash: BTAR2ZVAYBWVHLMXT32FMD4E6XLN72OP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receiving on All Channels with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BTAR2ZVAYBWVHLMXT32FMD4E6XLN72OP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7947857159750740893=="

This is a multi-part message in MIME format.
--===============7947857159750740893==
Content-Type: multipart/alternative;
 boundary="------------AiNhzBd03eFd0LII6dyzVUIF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AiNhzBd03eFd0LII6dyzVUIF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/08/2024 10:16, Olo via USRP-users wrote:
>
> Thank you for your response and the helpful information.
>
> I have a follow-up question regarding the common phase reference. I am=20
> using two TwinRX daughterboards, which should share a common local=20
> oscillator. Does this setup qualify as having a common phase reference=20
> across all four channels?
>
> Additionally, my interest in RFNoC stems from the documentation, which=20
> states that the Channels parameter in uhd::stream_args_t is not used=20
> for RFNoC devices. Instead, to create a streamer with multiple=20
> channels, the API calls uhd::rfnoc::rfnoc_graph::create_tx_streamer()=20
> and uhd::rfnoc::rfnoc_graph::create_rx_streamer() include a num_ports=20
> argument.
>
> Given this, is it possible to receive data from all four channels=20
> simultaneously, even if not at full bandwidth, by simply connecting=20
> each last block from the channels to create_rx_streamer()? Also, what=20
> should the final block be if I want to receive raw IQ data?
>
> Finally, I am currently using the standard XG image for the X310 due=20
> to my dual 10GbE setup. Would this image be able to stream everything=20
> simultaneously, or would I need to create a custom one?
>
> I appreciate your guidance on this matter.
The standard images can stream from all 4 channels with a multi_usrp=20
object.=C2=A0 I do this with Gnu Radio all the time, and the
 =C2=A0 'rx_multi_samples' example UHD code can also stream from multiple=
=20
channels.

If you're just streaming the I/Q, you don't need to explicitly do=20
anything with RFNoC, the multi_usrp UHD API is all you need.
 =C2=A0 You can configure the streams for any valid sample rate you want.

I'd encourage you to look at the 'rx_multi_samples' example code.




> On Wednesday, August 14th, 2024 at 15:25, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>> On 14/08/2024 02:57, Olo via USRP-users wrote:
>>>
>>> Dear Ettus Support,
>>>
>>> Thank you for your prompt and detailed response. I appreciate the=20
>>> clarification regarding the use of RFNoC and UHD multi_usrpstreamers.
>>>
>>> To answer your question, my goal is to display the Power Spectral=20
>>> Density (PSD) from the four channels. I plan to use a window=20
>>> function, perform an FFT, and apply the log power block to calculate=20
>>> the PSD.
>>>
>>> Could you please advise on the best way to combine all four channels=20
>>> into one for this purpose? Specifically, I'm interested in=20
>>> understanding how to properly aggregate the data streams so that I=20
>>> can calculate the PSD effectively.
>>>
>>> Thank you again for your support.
>>>
>>> Best regards,
>>> Olo
>>>
>> That's probably a question for the discuss-gnuradio mailing list,=20
>> assuming you're using GNu Radio.
>>
>> UHD isn't a signal-processing framework -- it's a driver interface to=20
>> the hardware. RFNoC augments this with
>> DSP blocks that can run on the hardware. I don't *think* that there's=20
>> enough resources on the X310 FPGA to run
>> FFTs on all 4 channels, but I could be wrong. Maybe there's someone=20
>> on here who has done this with RFNoC.
>>
>> In terms of "spectral merging". If all 4 channels share a common=20
>> phase reference, then I *think* that you can
>> rotate-and-add prior to computing a single FFT over the aggregated=20
>> stream. But that's, again, a DSP question, and
>> the discuss-gnuradio mailing list might be a better venue for that=20
>> type of question.
>>
>>
>>>
>>> On Tuesday, August 13th, 2024 at 16:48, Marcus D. Leech=20
>>> <patchvonbraun@gmail.com> wrote:
>>>> On 13/08/2024 10:36, Olo via USRP-users wrote:
>>>>> Dear Ettus Support Team,
>>>>>
>>>>> I hope this message finds you well.
>>>>>
>>>>> I am currently working with an X310 SDR equipped with two TwinRX=20
>>>>> daughterboards, and I am looking to receive data simultaneously=20
>>>>> across all four channels. My goal is to maximize the available=20
>>>>> bandwidth by configuring the system to receive on all channels in=20
>>>>> parallel.
>>>>>
>>>>> Could you please advise on the best approach to achieve this?=20
>>>>> Specifically, I would like to know if it is necessary to use a=20
>>>>> specialized RFNoC graph for this setup, or if the uhd::multi_usrp=20
>>>>> class in the UHD library, along with a corresponding rx_streamer,=20
>>>>> would be sufficient to accomplish this task.
>>>>>
>>>>> I appreciate any guidance or recommendations you can provide.
>>>>>
>>>>> Thank you for your support.
>>>>>
>>>>> Best regards,
>>>>> Olo.
>>>>>
>>>>>
>>>> Assuming that all the streams terminate on your computer, then the=20
>>>> limiting factor is always going to be your computer. RFNoC
>>>> is only helpful if you want to do some of the computing on the=20
>>>> radio. But if the goal is to have 4 streams going to your computer,
>>>> at full rate, then RFNoC doesn't bring anything to the table--and=20
>>>> in fact, internally these days, an application that uses UHD
>>>> multi-usrp streamers actually sets up a standardized RFNoC flow on=20
>>>> the radio anyway.
>>>>
>>>> This document can be helpful:
>>>>
>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>>>>
>>>> The ultimate question becomes "what do I want to do with those=20
>>>> streams?". That will determine whether your computer
>>>> can handle the aggregate data rates.
>>>>
>>>>
>>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list --usrp-users@lists.ettus.com
>>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------AiNhzBd03eFd0LII6dyzVUIF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/08/2024 10:16, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:x_QaVKXGmknlfRkvuULzZoelaQQvh19qK4xF8Mus_M5EGC7YIbvD3rZy8Hut7=
PAr61IqVrpiCReU0I_36wHBH_7QwGisB77DT7Y_jSkY_zs=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div><br>
      </div>
      <div>Thank you for your response and the helpful information.</div>
      <div><br>
      </div>
      <div>I have a follow-up question regarding the common phase
        reference. I am using two TwinRX daughterboards, which should
        share a common local oscillator. Does this setup qualify as
        having a common phase reference across all four channels?</div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);"><br>
      </div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);">Additionally,
        my interest in RFNoC stems from the documentation, which states
        that the Channels parameter in uhd::stream_args_t is not used
        for RFNoC devices. Instead, to create a streamer with multiple
        channels, the API calls
        uhd::rfnoc::rfnoc_graph::create_tx_streamer() and
        uhd::rfnoc::rfnoc_graph::create_rx_streamer() include a
        num_ports argument.</div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);"><br>
      </div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);">Given
        this, is it possible to receive data from all four channels
        simultaneously, even if not at full bandwidth, by simply
        connecting each last block from the channels to
        create_rx_streamer()? Also, what should the final block be if I
        want to receive raw IQ data?</div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);"><br>
      </div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);">Finally,
        I am currently using the standard XG image for the X310 due to
        my dual 10GbE setup. Would this image be able to stream
        everything simultaneously, or would I need to create a custom
        one?</div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);"><br>
      </div>
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);">I
        appreciate your guidance on this matter.</div>
    </blockquote>
    The standard images can stream from all 4 channels with a multi_usrp
    object.=C2=A0 I do this with Gnu Radio all the time, and the<br>
    =C2=A0 'rx_multi_samples' example UHD code can also stream from multi=
ple
    channels.<br>
    <br>
    If you're just streaming the I/Q, you don't need to explicitly do
    anything with RFNoC, the multi_usrp UHD API is all you need.<br>
    =C2=A0 You can configure the streams for any valid sample rate you wa=
nt.<br>
    <br>
    I'd encourage you to look at the 'rx_multi_samples' example code.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:x_QaVKXGmknlfRkvuULzZoelaQQvh19qK4xF8Mus_M5EGC7YIbvD3rZy8Hut7=
PAr61IqVrpiCReU0I_36wHBH_7QwGisB77DT7Y_jSkY_zs=3D@protonmail.com">
      <div class=3D"protonmail_quote"> On Wednesday, August 14th, 2024 at
        15:25, Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrot=
e:<br>
        <blockquote class=3D"protonmail_quote" type=3D"cite">
          <div class=3D"moz-cite-prefix">On 14/08/2024 02:57, Olo via
            USRP-users wrote:<br>
          </div>
          <blockquote type=3D"cite">
            <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Dear
                Ettus Support,</span></p>
            <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Thank
                you for your prompt and detailed response. I appreciate
                the clarification regarding the use of RFNoC and UHD </sp=
an><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">multi_usrp</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">
                streamers.</span></p>
            <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">To
                answer your question, my goal is to display the Power
                Spectral Density (PSD) from the four channels. I plan to
                use a window function, perform an FFT, and apply the log
                power block to calculate the PSD.</span></p>
            <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Could
                you please advise on the best way to combine all four
                channels into one for this purpose? Specifically, I'm
                interested in understanding how to properly aggregate
                the data streams so that I can calculate the PSD
                effectively.</span></p>
            <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Thank
                you again for your support.</span></p>
            <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Best
                regards,</span><br>
              <span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Olo</span></p>
          </blockquote>
          That's probably a question for the discuss-gnuradio mailing
          list, assuming you're using GNu Radio.<br>
          <br>
          UHD isn't a signal-processing framework -- it's a driver
          interface to the hardware. RFNoC augments this with<br>
          DSP blocks that can run on the hardware. I don't *think* that
          there's enough resources on the X310 FPGA to run<br>
          FFTs on all 4 channels, but I could be wrong. Maybe there's
          someone on here who has done this with RFNoC.<br>
          <br>
          In terms of "spectral merging". If all 4 channels share a
          common phase reference, then I *think* that you can<br>
          rotate-and-add prior to computing a single FFT over the
          aggregated stream. But that's, again, a DSP question, and<br>
          the discuss-gnuradio mailing list might be a better venue for
          that type of question.<br>
          <br>
          <br>
          <blockquote type=3D"cite">
            <div style=3D""><br>
            </div>
            <div class=3D"protonmail_quote"> On Tuesday, August 13th, 202=
4
              at 16:48, Marcus D. Leech <a
                href=3D"mailto:patchvonbraun@gmail.com"
                class=3D"moz-txt-link-rfc2396E"
                rel=3D"noreferrer nofollow noopener"
                moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&gt;<=
/a>
              wrote:<br>
              <blockquote type=3D"cite" class=3D"protonmail_quote">
                <div class=3D"moz-cite-prefix">On 13/08/2024 10:36, Olo
                  via USRP-users wrote:<br>
                </div>
                <blockquote type=3D"cite"> <span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Dear
                    Ettus Support Team,</span>
                  <div><br>
                  </div>
                  <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I
                      hope this message finds you well.</span></div>
                  <div><br>
                  </div>
                  <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I
                      am currently working with an X310 SDR equipped
                      with two TwinRX daughterboards, and I am looking
                      to receive data simultaneously across all four
                      channels. My goal is to maximize the available
                      bandwidth by configuring the system to receive on
                      all channels in parallel.</span></div>
                  <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;"><br>
                    </span></div>
                  <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;">Could
                      you please advise on the best approach to achieve
                      this? Specifically, I would like to know if it is
                      necessary to use a specialized RFNoC graph for
                      this setup, or if the uhd::multi_usrp class in the
                      UHD library, along with a corresponding
                      rx_streamer, would be sufficient to accomplish
                      this task.</span></div>
                  <div><span style=3D""><br>
                    </span></div>
                  <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I
                      appreciate any guidance or recommendations you can
                      provide.</span></div>
                  <div><span style=3D""><br>
                    </span></div>
                  <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Thank
                      you for your support.</span></div>
                  <div><span style=3D""><br>
                    </span></div>
                  <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;">Best
                      regards,</span></div>
                  <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;">Olo.</span></div>
                  <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;"><br>
                    </span></div>
                  <br>
                </blockquote>
                Assuming that all the streams terminate on your
                computer, then the limiting factor is always going to be
                your computer. RFNoC<br>
                is only helpful if you want to do some of the computing
                on the radio. But if the goal is to have 4 streams going
                to your computer,<br>
                at full rate, then RFNoC doesn't bring anything to the
                table--and in fact, internally these days, an
                application that uses UHD<br>
                multi-usrp streamers actually sets up a standardized
                RFNoC flow on the radio anyway.<br>
                <br>
                This document can be helpful:<br>
                <br>
                <a rel=3D"noreferrer nofollow noopener" target=3D"_blank"
                  class=3D"moz-txt-link-freetext"
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
                  moz-do-not-send=3D"true">https://kb.ettus.com/USRP_Host=
_Performance_Tuning_Tips_and_Tricks</a><br>
                <br>
                The ultimate question becomes "what do I want to do with
                those streams?". That will determine whether your
                computer<br>
                can handle the aggregate data rates.<br>
                <br>
                <br>
                <br>
              </blockquote>
              <br>
            </div>
            <br>
            <fieldset class=3D"moz-mime-attachment-header"></fieldset>
            <pre class=3D"moz-quote-pre" wrap=3D"">______________________=
_________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
            class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
            rel=3D"noreferrer nofollow noopener" moz-do-not-send=3D"true"=
>usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
            rel=3D"noreferrer nofollow noopener" moz-do-not-send=3D"true"=
>usrp-users-leave@lists.ettus.com</a>
</pre>
          </blockquote>
          <br>
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

--------------AiNhzBd03eFd0LII6dyzVUIF--

--===============7947857159750740893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7947857159750740893==--
