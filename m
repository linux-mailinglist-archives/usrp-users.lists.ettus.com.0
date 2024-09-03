Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 335A996A9CD
	for <lists+usrp-users@lfdr.de>; Tue,  3 Sep 2024 23:12:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42D8538538F
	for <lists+usrp-users@lfdr.de>; Tue,  3 Sep 2024 17:12:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1725397931; bh=ok0xim/aAzVaJ7AsLlfwgHJ1A9dQx2ydDuiqm4f4IjM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JzDXpFLxb8y3r2/t1T4g7Q2hYarhu0ouj5/a1EqePxxQ6Dh2xFhjgsSWv9fKTkXcB
	 FYU3qZGDAitMAYpVppfQ48AQ0bR+f1KcuRHw3Xm0tYC4r5K3n/PxWhLsi+xVKuRPuk
	 NqGj9U1g/KFqxmfI/sRRd6dGx8ukYEyMduHs6/NW9xA1GIwt5VwEIzZASLQrXrh04q
	 ORI3wq8f5mTfJgPfI/F5fROR1QmcAo7JUVRaz0Odr4zWvoIHWc6oZAHY9j/R3Gg2pR
	 lMn+4fjRl/gC5UG4Rw4PZ9ezyoO08id2n9a1+rAJ9Fm8X/D9VefM6xppbHfjwPhfIN
	 jB3KBJHS2pLfg==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 697D9385145
	for <usrp-users@lists.ettus.com>; Tue,  3 Sep 2024 17:11:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CZqHkmfD";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7a812b64d1cso307742385a.0
        for <usrp-users@lists.ettus.com>; Tue, 03 Sep 2024 14:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725397909; x=1726002709; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sW66FP/lz283n+Miaet3jw+oCLDe2Ul+h307pypelQo=;
        b=CZqHkmfDAn3zstYCE0FC67Mg5ipdcTkIrn78A2t7UQoSnv8nM47YWTZhG0lQwstTyd
         awW0n51v+oXaPB2XLWLtNK/NvQkQUGde+otRdHn0mlcw5YAq1I8YeUHcgFVrPXjktuoo
         hOxG6/Y29H3KMa2+uwB8a16AOkteAlRRtoapZbl2+xz6RjRbGTci3ZZDP0wkl0oFMfIA
         NMmrYW8EZAnNdlciUdCHX3psZNUkjqpbd3jlR1No2kme/PqDqLP/8mnaaclmQc1Y2YPB
         9SRnRQ711g79FCG1N9W+LXWKHFsW1YIA34sUO2mqIj21gxNBa9RBW9R22E8lD54+5Ji2
         rQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725397909; x=1726002709;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sW66FP/lz283n+Miaet3jw+oCLDe2Ul+h307pypelQo=;
        b=RiuHZzoPn6pho1AXHvQbNvMfBVnA/1gFF2pFwsg66bVSsI4q4G+Xt3LOszF3gDqOG9
         m1+G3m84w2q46jgDXnFK0SA/hCht+Ett6Z+jlb5liFhCEBz4v/Z0VZfzwbLjElPq11fa
         WtrFEIvNuX3pi/EZfHKi8eOfKVRrtYxvAhuSsIqUlXGQrybLInCmUxU7tZEuVblwdH/N
         6edMyf0mwk/wSBCXKNLTTZOb0UgfY+P08qGpz7F6xpvVpvazmOdOoYfOuD8MVAV5hi1q
         /tbanny+E/kRqZIK1WQmy9F833C80k4AxcSkguj8dKzcqbrjN5rB1Reo2l449XgZ5bYU
         8JaQ==
X-Gm-Message-State: AOJu0YwyCPVr+nhcyitl65Bbp0NNPNOT87/xqLWoO/VzAr819gKe68gC
	hZKA+RTaha5sd981q6/+FgoLEFsWXbGVoQ3bxm8yf0zrgVq34RaDFxDZyVS1
X-Google-Smtp-Source: AGHT+IEmQ8NyuxZhimSum2bqP+gwxQVOyQyeFcFKXF6e6j0/h2EbJw6xS3rYbYq4hMvLP/oEYY302g==
X-Received: by 2002:a05:620a:2551:b0:79e:f9c8:a22a with SMTP id af79cd13be357-7a804186b8bmr2000169585a.12.1725397908280;
        Tue, 03 Sep 2024 14:11:48 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a806bf7011sm567603685a.16.2024.09.03.14.11.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 14:11:47 -0700 (PDT)
Message-ID: <f5826b39-62b6-42f8-8114-cc0f6ec13b2b@gmail.com>
Date: Tue, 3 Sep 2024 17:11:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
 <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com>
 <CAB__hTTO=N08nac2wwg9H4X6X1KWufAr+8jm5xXjd0QXnsiLow@mail.gmail.com>
 <ZzKYZGhnR2PvIUOunRGDW3GffGey_JjDV2v-c_tCLY9R66l3Yt-R4dt-wV9uzw5PYEbIEYAPGndZjkFQCRw_cRP-j8MUC7jxZ7-2ak2MNto=@protonmail.com>
 <a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=@protonmail.com>
 <CAFOi1A60ZQuotHVZ59Em8hLsT+kzmSLE_hRp-a8_yUpE2kkd6g@mail.gmail.com>
 <BN8PR05MB5971E1C0A7138208EC2D0C6C8C932@BN8PR05MB5971.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN8PR05MB5971E1C0A7138208EC2D0C6C8C932@BN8PR05MB5971.namprd05.prod.outlook.com>
Message-ID-Hash: 2BCI74EHJZP4M6T23DJCM6OPJ5IYR74J
X-Message-ID-Hash: 2BCI74EHJZP4M6T23DJCM6OPJ5IYR74J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Block diagram / architecture details
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2BCI74EHJZP4M6T23DJCM6OPJ5IYR74J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8408902835523137037=="

This is a multi-part message in MIME format.
--===============8408902835523137037==
Content-Type: multipart/alternative;
 boundary="------------xsmj5g20FEOYrWTDOGjs9dd3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xsmj5g20FEOYrWTDOGjs9dd3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/09/2024 15:57, Arnaldo Sans wrote:
> Hello,
>
> I am looking for a detailed block diagram of an X440 radio... There is=20
> very little=C2=A0content available on the web... I am to create a "digi=
tal=20
> twin of the radio.
>
> Thank you in advance and I look forward to hearing from you soon.
>
> Regards,
> AJ
>
Most of the "interesting" bits of the X440 are in the RFSOC, which is=20
linked here:

https://docs.amd.com/r/en-US/pg269-rf-data-converter/Conventions

There's Martin Brauns GRCON talk here:

https://events.gnuradio.org/event/21/contributions/392/attachments/123/28=
5/Lo%20and%20behold,%20no%20LO.pdf

There's an extensive treatise on selecting sample rates here:

https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_=
USRP_X440

There's schematics for X4x0 family here:

https://files.ettus.com/schematics/x4x0/

And of course, all the FPGA code is published in the GIT repo that you=20
get UHD source code from.


> -----------------------------------------------------------------------=
-
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Tuesday, August 27, 2024 3:45 AM
> *To:* Olo <olo1618@protonmail.com>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Assistance with RFNoC and TwinRX=20
> Configuration in Custom FPGA Image
>
> Note: This message originated from outside the FIU Faculty/Staff email=20
> system.
>
>
> If you had a polyphase channelizer on the FPGA, that would be an=20
> efficient solution to your problem, but there's no such block as part=20
> of UHD itself. There have been channelizer blocks written in the wild,=20
> but that would be something you'd have to figure out.
>
> --M
>
> On Tue, Aug 27, 2024 at 7:17=E2=80=AFAM Olo via USRP-users=20
> <usrp-users@lists.ettus.com> wrote:
>
>     I have an additional question related to my current project
>     involving RFNoC. Specifically, I need to implement as many
>     narrowband channels (DDC) as possible to record various parts of
>     the spectrum as required.
>
>     I=E2=80=99m wondering if it would be more efficient to handle this =
through
>     RFNoC or directly on a GPU? Additionally, how many narrowband
>     channels of specific bandwidths could I implement using RFNoC,
>     considering I primarily intend to store (record) the data into
>     memory? I have a clear understanding of the memory and network
>     interface requirements, but I am uncertain about the implications
>     for CPU usage and RAM.
>
>     Could you provide some guidance on this aspect?
>
>     Olo.
>
>     On Monday, August 26th, 2024 at 7:13 PM, Olo via USRP-users
>     <usrp-users@lists.ettus.com> wrote:
>>     Thank you for your detailed responses to my previous questions. I
>>     appreciate the information provided about the limitations and
>>     potential issues related to FFT size and TwinRX configuration.
>>
>>     However, I noticed that there was no feedback regarding the YAML
>>     file I attached in my original email. Could you please review it
>>     and let me know if the configuration I've set up is correct?
>>
>>     Additionally, based on your recommendations, I plan to use a
>>     window function (Window block) with a size of 1024, along with an
>>     FFT block of the same size for the scanner (sweep spectrum)
>>     functionality. Would this approach be correct given the current
>>     limitations and your suggestions?
>>
>>     Your confirmation on these points would be invaluable to ensure
>>     that I am on the right track with my project.
>>
>>     Thank you once again for your time and assistance. I look forward
>>     to your response.
>>
>>     Best regards,
>>     Olo.
>>     On Monday, August 26th, 2024 at 18:04, Rob Kossler via USRP-users
>>     <usrp-users@lists.ettus.com> wrote:
>>>
>>>
>>>     On Mon, Aug 26, 2024 at 10:24=E2=80=AFAM Marcus D. Leech
>>>     <patchvonbraun@gmail.com> wrote:
>>>
>>>         On 26/08/2024 10:21, Rob Kossler via USRP-users wrote:
>>>>         Hi Olo,
>>>>         On one point regarding an FFT length of 8192, there is
>>>>         likely an issue with using the Ettus FFT block. In the past
>>>>         (I haven't checked recently), this block was limited to a
>>>>         maximum FFT size of 1024 because the entire FFT had to fit
>>>>         in one packet where the maximum packet payload was about
>>>>         2000 samples. It is possible to use larger FFTs, but this
>>>>         requires some custom code that divorces the FFT size from
>>>>         the packet size.
>>>>         Rob
>>>         My understanding is that in recent RFNoC, the limit has been
>>>         raised to 2048:
>>>
>>>         https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__bloc=
k__control.html
>>>
>>>     The xci file
>>>     <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/=
ip/axi_fft/axi_fft.xci>
>>>     still shows a transform length of 1024. Also, I think that the
>>>     X300 MTU size is 10 which implies 2^10=3D1024 x 64bit is the max
>>>     payload. This implies 2048 32-bit words in the payload. But,
>>>     because of a few bytes of header, it is not possible to use an
>>>     FFT of length 2048 unless the FFT length is divorced from the
>>>     packet length.
>>>     Rob
>>>
>>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------xsmj5g20FEOYrWTDOGjs9dd3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/09/2024 15:57, Arnaldo Sans
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN8PR05MB5971E1C0A7138208EC2D0C6C8C932@BN8PR05MB5971.namprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        I am looking for a detailed block diagram of an X440 radio...
        There is very little=C2=A0content available on the web... I am to
        create a "digital twin of the radio.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        Thank you in advance and I look forward to hearing from you
        soon.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        Regards,<br>
        AJ</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
    </blockquote>
    Most of the "interesting" bits of the X440 are in the RFSOC, which
    is linked here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://docs.amd.com/r/en-=
US/pg269-rf-data-converter/Conventions">https://docs.amd.com/r/en-US/pg26=
9-rf-data-converter/Conventions</a><br>
    <br>
    There's Martin Brauns GRCON talk here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://events.gnuradio.org/ev=
ent/21/contributions/392/attachments/123/285/Lo%20and%20behold,%20no%20LO=
.pdf">https://events.gnuradio.org/event/21/contributions/392/attachments/=
123/285/Lo%20and%20behold,%20no%20LO.pdf</a><br>
    <br>
    There's an extensive treatise on selecting sample rates here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/About_Sam=
pling_Rates_and_Master_Clock_Rates_for_the_USRP_X440">https://kb.ettus.co=
m/About_Sampling_Rates_and_Master_Clock_Rates_for_the_USRP_X440</a><br>
    <br>
    There's schematics for X4x0 family here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/sc=
hematics/x4x0/">https://files.ettus.com/schematics/x4x0/</a><br>
    <br>
    And of course, all the FPGA code is published in the GIT repo that
    you get UHD source code from.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN8PR05MB5971E1C0A7138208EC2D0C6C8C932@BN8PR05MB5971.namprd05=
.prod.outlook.com">
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
tin
          Braun <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:martin.=
braun@ettus.com">&lt;martin.braun@ettus.com&gt;</a><br>
          <b>Sent:</b> Tuesday, August 27, 2024 3:45 AM<br>
          <b>To:</b> Olo <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:olo1618@protonmail.com">&lt;olo1618@protonmail.com&gt;</a><br>
          <b>Cc:</b> usrp-users <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a=
><br>
          <b>Subject:</b> [USRP-users] Re: Assistance with RFNoC and
          TwinRX Configuration in Custom FPGA Image</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <p
style=3D"color:red; font-weight:bold; border:1px solid black; padding:5px=
; width:65%; text-align:center; margin-left:auto; margin-right:auto">
          Note: This message originated from outside the FIU
          Faculty/Staff email system.</p>
        <br>
        <div>
          <div dir=3D"ltr">
            <div>If you had a polyphase channelizer on the FPGA, that
              would be an efficient solution to your problem, but
              there's no such block as part of UHD itself. There have
              been channelizer blocks written in the wild, but that
              would be something you'd have to figure out.</div>
            <div><br>
            </div>
            <div>--M<br>
            </div>
          </div>
          <br>
          <div class=3D"x_gmail_quote">
            <div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Aug 27, 2024 =
at
              7:17=E2=80=AFAM Olo via USRP-users &lt;<a
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"x_gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204)=
; padding-left:1ex">
              <p>I have an additional question related to my current
                project involving RFNoC. Specifically, I need to
                implement as many narrowband channels (DDC) as possible
                to record various parts of the spectrum as required.</p>
              <p>I=E2=80=99m wondering if it would be more efficient to h=
andle
                this through RFNoC or directly on a GPU? Additionally,
                how many narrowband channels of specific bandwidths
                could I implement using RFNoC, considering I primarily
                intend to store (record) the data into memory? I have a
                clear understanding of the memory and network interface
                requirements, but I am uncertain about the implications
                for CPU usage and RAM.</p>
              <p>Could you provide some guidance on this aspect?</p>
              <div
style=3D"font-family:Arial,sans-serif; font-size:14px; color:rgb(0,0,0); =
background-color:rgb(255,255,255)">
                Olo.<br>
              </div>
              <div style=3D"font-family:Arial,sans-serif; font-size:14px"=
><br>
              </div>
              <div>On Monday, August 26th, 2024 at 7:13 PM, Olo via
                USRP-users &lt;<a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a>&gt;
                wrote:<br>
                <blockquote type=3D"cite">
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
">Thank
                    you for your detailed responses to my previous
                    questions. I appreciate the information provided
                    about the limitations and potential issues related
                    to FFT size and TwinRX configuration.</div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
"><br>
                  </div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
">However,
                    I noticed that there was no feedback regarding the
                    YAML file I attached in my original email. Could you
                    please review it and let me know if the
                    configuration I've set up is correct?</div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
"><br>
                  </div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
">Additionally,
                    based on your recommendations, I plan to use a
                    window function (Window block) with a size of 1024,
                    along with an FFT block of the same size for the
                    scanner (sweep spectrum) functionality. Would this
                    approach be correct given the current limitations
                    and your suggestions?</div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
"><br>
                  </div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
">Your
                    confirmation on these points would be invaluable to
                    ensure that I am on the right track with my project.<=
/div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
"><br>
                  </div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
">Thank
                    you once again for your time and assistance. I look
                    forward to your response.</div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
"><br>
                  </div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
">Best
                    regards,</div>
                  <div
                    style=3D"font-family:Arial,sans-serif; font-size:14px=
">Olo.</div>
                  <div>On Monday, August 26th, 2024 at 18:04, Rob
                    Kossler via USRP-users &lt;<a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>&gt;
                    wrote:<br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr"><br>
                        </div>
                        <br>
                        <div class=3D"x_gmail_quote">
                          <div dir=3D"ltr" class=3D"x_gmail_attr">On Mon,
                            Aug 26, 2024 at 10:24=E2=80=AFAM Marcus D. Le=
ech
                            &lt;<a rel=3D"noreferrer nofollow noopener"
                              href=3D"mailto:patchvonbraun@gmail.com"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">patchvonbra=
un@gmail.com</a>&gt;
                            wrote:<br>
                          </div>
                          <blockquote class=3D"x_gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204)=
; padding-left:1ex">
                            <div>
                              <div>On 26/08/2024 10:21, Rob Kossler via
                                USRP-users wrote:<br>
                              </div>
                              <blockquote type=3D"cite">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div>Hi Olo,</div>
                                    <div>On one point regarding an FFT
                                      length of 8192, there is likely an
                                      issue with using the Ettus FFT
                                      block. In the past (I haven't
                                      checked recently), this block was
                                      limited to a maximum FFT size of
                                      1024 because the entire FFT had to
                                      fit in one packet where the
                                      maximum packet payload was about
                                      2000 samples. It is possible to
                                      use larger FFTs, but this requires
                                      some custom code that divorces the
                                      FFT size from the packet size.</div=
>
                                    <div>Rob<br>
                                    </div>
                                  </div>
                                </div>
                              </blockquote>
                              My understanding is that in recent RFNoC,
                              the limit has been raised to 2048:<br>
                              <br>
                              <a rel=3D"noreferrer nofollow noopener"
href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__c=
ontrol.html"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">https://f=
iles.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.html</a><b=
r>
                              <br>
                            </div>
                          </blockquote>
                          <div>The <a
                              rel=3D"noreferrer nofollow noopener"
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/i=
p/axi_fft/axi_fft.xci"
                              target=3D"_blank" moz-do-not-send=3D"true">
                              xci file</a> still shows a transform
                            length of 1024. Also, I think that the X300
                            MTU size is 10 which implies 2^10=3D1024 x
                            64bit is the max payload. This implies 2048
                            32-bit words in the payload. But, because of
                            a few bytes of header, it is not possible to
                            use an FFT of length 2048 unless the FFT
                            length is divorced from the packet length.</d=
iv>
                          <div>Rob<br>
                          </div>
                          <br>
                        </div>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
                <br>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
                usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">
                usrp-users-leave@lists.ettus.com</a><br>
            </blockquote>
          </div>
        </div>
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

--------------xsmj5g20FEOYrWTDOGjs9dd3--

--===============8408902835523137037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8408902835523137037==--
