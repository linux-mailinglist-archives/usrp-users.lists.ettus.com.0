Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B9C951BC9
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 15:26:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 910DC3854CB
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 09:26:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723641964; bh=1ra7V5CDkIE6QPid6nksoKjjRBwooZGNUsxSIRbgTDU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Pwvy4B41HIqM+5BjnDggX/nz17W0IhL/Jy5xfrEWRxjfKg279LASzDJowK7KnoqCi
	 lG9FaLhgF/xycL525QFcIW7DKKCv4qpnUxxnW2T9gMfUT+c6qL5jXGIfgbLJKF90n2
	 G4b4CU+wW/AXR9w9iWAnJsvEaY51KaG+E/d4JXiMPYgAId5YlqZE6gCIKUJa2Qxu9e
	 5Tndmcn5kJJzNXhaIyXDTW6wp7pQsxpFTfWvty/wxtekhaEMp19Yj27VKRDZL19wxD
	 Hnyc32QESBx89tN3cCD5oJJ0po63gTyug+lZbcs6vrQrxlQowFAH/A4fzBlYBbs9pb
	 d8JGxhHbI9ojg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id A68DE384179
	for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 09:25:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z/kAipR8";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7a1dd2004e1so414209785a.3
        for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 06:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723641950; x=1724246750; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pmEFanD3DV2TtsG6fMlVXPPyfTaR41LM9t7DSp3wZzg=;
        b=Z/kAipR8YfVCGW5u0IGHdYZfyNhuiNABZb8Sz98nxGfgWsxtWkHqWhW/Iw1s4Mdk4R
         KAN8i/AWwDtNvRW4dQFnkIK+N5k839aeGDu4uDccS9SCfgI0XVenkozqKLcIzY5hWRgR
         oBW30p1I2TeE7wK7mFgHwDEI5Wsls7rQyvgKofcNROPLalRN0H5P7ZfXbrKCdlBf/177
         0DRqEp9tvd8P/f39UPtoddGa0jA06y4O9Eo5xYLvi7SH3+UPkaadRsncBLgatXzsqdY8
         rwc7+JKof1CNROJXofb99sZm9JZFhHu2D/O9UexxcsZ4HfQY7aUp4phVqh0nP1b+19kN
         fnsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723641950; x=1724246750;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pmEFanD3DV2TtsG6fMlVXPPyfTaR41LM9t7DSp3wZzg=;
        b=RH/gV+CiZ0L5VUhLMRQK1PkbtmoNN56YX+2j+6FzaTfvtyP35D4hVTPOd6LqILNr8t
         zeBnUFV/NgTv5YhHnlO3ZpnNfAvUsl6cQ3ehhHwFivlerk9yAowJuJpxOLik35jfcELt
         xvMrWgoQDhXewUlrdkXm35468jdWHON2N9GosAC6Xo8+QK6p+MsycCPH9NY8yKzUT0Ji
         O7aJw8PKGmefNC1VDTOe+FtjLkGKQeSPk6pO+1dZVkZpPwxZjEa/ol+PMUsxG9Yat82X
         UAWROCAWmMQSXbHTg40YaZ80XO0IOd952DneSozslANNVMlgUf/uX/Y2dfCfhVBt7ZDX
         tV4w==
X-Gm-Message-State: AOJu0Yz7cJexrey7ImzdtJgX45CJqzfa5vkvoW9i3ldUSoyoia1AZEwk
	H//5rvummSIb/bnwm7/eWw0FL56YaSxrQwDUiW5Bs2vSTS8LCTOQyBrH7A==
X-Google-Smtp-Source: AGHT+IHWF+r/DG4UkvAlF7Evw4AmROJ0hLkE8tTOrNzlJ2vKYg7qp4TMS+yy0ee+BIqu+23YexeIaQ==
X-Received: by 2002:a05:620a:4414:b0:79d:6bba:4a61 with SMTP id af79cd13be357-7a4ee26bc52mr333169885a.0.1723641949540;
        Wed, 14 Aug 2024 06:25:49 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a4c7d71bddsm436956385a.38.2024.08.14.06.25.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 06:25:49 -0700 (PDT)
Message-ID: <b10991d1-c787-406b-8ff9-e8d010744ad5@gmail.com>
Date: Wed, 14 Aug 2024 09:25:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <XbpcZvaMMXT6CtwRg8IyAm_D2T57dOfmrN5Tjze8-OitQI63xUXP7Iz7dQKf7Z15YiSgFNB5CiBc5htCR1LFxrkVuo_pk0mDDm-_3hxSHEw=@protonmail.com>
 <46409b81-0e7e-4c71-bb77-536efad5f90a@gmail.com>
 <MGO60O5lFGsXTagndMxl2DUjN99zdlj-pecPAYnMBmjk48p9i5eFK66JE9Z82bhO-k26-NQqcYNTIDuoFpK8GDrpZMw-SNHEMf-2aaXE2xo=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MGO60O5lFGsXTagndMxl2DUjN99zdlj-pecPAYnMBmjk48p9i5eFK66JE9Z82bhO-k26-NQqcYNTIDuoFpK8GDrpZMw-SNHEMf-2aaXE2xo=@protonmail.com>
Message-ID-Hash: HMHBAOUEIUPH6GUOZYJYYYOVEGDMAHGC
X-Message-ID-Hash: HMHBAOUEIUPH6GUOZYJYYYOVEGDMAHGC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receiving on All Channels with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMHBAOUEIUPH6GUOZYJYYYOVEGDMAHGC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6925231748053535735=="

This is a multi-part message in MIME format.
--===============6925231748053535735==
Content-Type: multipart/alternative;
 boundary="------------XKmhhGtWiEulSJBQFxe4bLTz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------XKmhhGtWiEulSJBQFxe4bLTz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/08/2024 02:57, Olo via USRP-users wrote:
>
> Dear Ettus Support,
>
> Thank you for your prompt and detailed response. I appreciate the=20
> clarification regarding the use of RFNoC and UHD multi_usrpstreamers.
>
> To answer your question, my goal is to display the Power Spectral=20
> Density (PSD) from the four channels. I plan to use a window function,=20
> perform an FFT, and apply the log power block to calculate the PSD.
>
> Could you please advise on the best way to combine all four channels=20
> into one for this purpose? Specifically, I'm interested in=20
> understanding how to properly aggregate the data streams so that I can=20
> calculate the PSD effectively.
>
> Thank you again for your support.
>
> Best regards,
> Olo
>
That's probably a question for the discuss-gnuradio mailing list,=20
assuming you're using GNu Radio.

UHD isn't a signal-processing framework -- it's a driver interface to=20
the hardware.=C2=A0 RFNoC augments this with
 =C2=A0 DSP blocks that can run on the hardware.=C2=A0 I don't *think* th=
at=20
there's enough resources on the X310 FPGA to run
 =C2=A0 FFTs on all 4 channels, but I could be wrong.=C2=A0=C2=A0 Maybe t=
here's someone=20
on here who has done this with RFNoC.

In terms of "spectral merging".=C2=A0 If all 4 channels share a common ph=
ase=20
reference, then I *think* that you can
 =C2=A0 rotate-and-add prior to computing a single FFT over the aggregate=
d=20
stream.=C2=A0 But that's, again, a DSP question, and
 =C2=A0 the discuss-gnuradio mailing list might be a better venue for tha=
t=20
type of question.


>
> On Tuesday, August 13th, 2024 at 16:48, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>> On 13/08/2024 10:36, Olo via USRP-users wrote:
>>> Dear Ettus Support Team,
>>>
>>> I hope this message finds you well.
>>>
>>> I am currently working with an X310 SDR equipped with two TwinRX=20
>>> daughterboards, and I am looking to receive data simultaneously=20
>>> across all four channels. My goal is to maximize the available=20
>>> bandwidth by configuring the system to receive on all channels in=20
>>> parallel.
>>>
>>> Could you please advise on the best approach to achieve this?=20
>>> Specifically, I would like to know if it is necessary to use a=20
>>> specialized RFNoC graph for this setup, or if the uhd::multi_usrp=20
>>> class in the UHD library, along with a corresponding rx_streamer,=20
>>> would be sufficient to accomplish this task.
>>>
>>> I appreciate any guidance or recommendations you can provide.
>>>
>>> Thank you for your support.
>>>
>>> Best regards,
>>> Olo.
>>>
>>>
>> Assuming that all the streams terminate on your computer, then the=20
>> limiting factor is always going to be your computer. RFNoC
>> is only helpful if you want to do some of the computing on the radio.=20
>> But if the goal is to have 4 streams going to your computer,
>> at full rate, then RFNoC doesn't bring anything to the table--and in=20
>> fact, internally these days, an application that uses UHD
>> multi-usrp streamers actually sets up a standardized RFNoC flow on=20
>> the radio anyway.
>>
>> This document can be helpful:
>>
>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>>
>> The ultimate question becomes "what do I want to do with those=20
>> streams?". That will determine whether your computer
>> can handle the aggregate data rates.
>>
>>
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------XKmhhGtWiEulSJBQFxe4bLTz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/08/2024 02:57, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MGO60O5lFGsXTagndMxl2DUjN99zdlj-pecPAYnMBmjk48p9i5eFK66JE9Z82=
bhO-k26-NQqcYNTIDuoFpK8GDrpZMw-SNHEMf-2aaXE2xo=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Dear
          Ettus Support,</span></p>
      <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Thank
          you for your prompt and detailed response. I appreciate the
          clarification regarding the use of RFNoC and UHD </span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">multi_usrp</span><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">
          streamers.</span></p>
      <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">To
          answer your question, my goal is to display the Power Spectral
          Density (PSD) from the four channels. I plan to use a window
          function, perform an FFT, and apply the log power block to
          calculate the PSD.</span></p>
      <p><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Could
          you please advise on the best way to combine all four channels
          into one for this purpose? Specifically, I'm interested in
          understanding how to properly aggregate the data streams so
          that I can calculate the PSD effectively.</span></p>
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
    That's probably a question for the discuss-gnuradio mailing list,
    assuming you're using GNu Radio.<br>
    <br>
    UHD isn't a signal-processing framework -- it's a driver interface
    to the hardware.=C2=A0 RFNoC augments this with<br>
    =C2=A0 DSP blocks that can run on the hardware.=C2=A0 I don't *think*=
 that
    there's enough resources on the X310 FPGA to run<br>
    =C2=A0 FFTs on all 4 channels, but I could be wrong.=C2=A0=C2=A0 Mayb=
e there's
    someone on here who has done this with RFNoC.<br>
    <br>
    In terms of "spectral merging".=C2=A0 If all 4 channels share a commo=
n
    phase reference, then I *think* that you can<br>
    =C2=A0 rotate-and-add prior to computing a single FFT over the aggreg=
ated
    stream.=C2=A0 But that's, again, a DSP question, and<br>
    =C2=A0 the discuss-gnuradio mailing list might be a better venue for =
that
    type of question.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MGO60O5lFGsXTagndMxl2DUjN99zdlj-pecPAYnMBmjk48p9i5eFK66JE9Z82=
bhO-k26-NQqcYNTIDuoFpK8GDrpZMw-SNHEMf-2aaXE2xo=3D@protonmail.com">
      <div style=3D""><br>
      </div>
      <div class=3D"protonmail_quote"> On Tuesday, August 13th, 2024 at
        16:48, Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrot=
e:<br>
        <blockquote class=3D"protonmail_quote" type=3D"cite">
          <div class=3D"moz-cite-prefix">On 13/08/2024 10:36, Olo via
            USRP-users wrote:<br>
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
                am currently working with an X310 SDR equipped with two
                TwinRX daughterboards, and I am looking to receive data
                simultaneously across all four channels. My goal is to
                maximize the available bandwidth by configuring the
                system to receive on all channels in parallel.</span></di=
v>
            <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;"><br>
              </span></div>
            <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;">Could
                you please advise on the best approach to achieve this?
                Specifically, I would like to know if it is necessary to
                use a specialized RFNoC graph for this setup, or if the
                uhd::multi_usrp class in the UHD library, along with a
                corresponding rx_streamer, would be sufficient to
                accomplish this task.</span></div>
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
          Assuming that all the streams terminate on your computer, then
          the limiting factor is always going to be your computer. RFNoC<=
br>
          is only helpful if you want to do some of the computing on the
          radio. But if the goal is to have 4 streams going to your
          computer,<br>
          at full rate, then RFNoC doesn't bring anything to the
          table--and in fact, internally these days, an application that
          uses UHD<br>
          multi-usrp streamers actually sets up a standardized RFNoC
          flow on the radio anyway.<br>
          <br>
          This document can be helpful:<br>
          <br>
          <a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
            class=3D"moz-txt-link-freetext" target=3D"_blank"
            rel=3D"noreferrer nofollow noopener" moz-do-not-send=3D"true"=
>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a><br=
>
          <br>
          The ultimate question becomes "what do I want to do with those
          streams?". That will determine whether your computer<br>
          can handle the aggregate data rates.<br>
          <br>
          <br>
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

--------------XKmhhGtWiEulSJBQFxe4bLTz--

--===============6925231748053535735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6925231748053535735==--
