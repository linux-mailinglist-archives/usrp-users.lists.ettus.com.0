Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B1B418B35
	for <lists+usrp-users@lfdr.de>; Sun, 26 Sep 2021 23:25:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E15C3848CF
	for <lists+usrp-users@lfdr.de>; Sun, 26 Sep 2021 17:25:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="np7CXNfv";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id C10E238421B
	for <usrp-users@lists.ettus.com>; Sun, 26 Sep 2021 17:24:16 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id a12so9987841qvz.4
        for <usrp-users@lists.ettus.com>; Sun, 26 Sep 2021 14:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=aUimxyCvTgNohyL57vq79t9syva/c+Iydj8LCJhV31s=;
        b=np7CXNfv9g/jkIG7Ro4cTBC1/CwHFtwyHFAY/7X7DqWtFKTBOEcZP7VWP9DvAKge9I
         DrOxq3mM3Ms2czY6KAOhpTEeh34E+2LLm0ehby7EgjmU8u9vJsCDlpAFkk2CMNeOIq+Y
         NHC6qyiPouyyHfV978CNlbS0aY+o8dAFGgWeoGUIzwOQICbRagpn3bXrpDYPL6a4DRJs
         XCRF8+iJyK0/QM8Bqgza/OPoBN2G3gE7dJEUO5Dein/OnhzhkvAPJF51xzkUbvR/d8S2
         PsA3uZDj0f9t5+dm8cLwk1J8w8k47F4HjPR1HmwlTZNPABvrhK58chZQJ4dh3lUV+6qI
         q+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=aUimxyCvTgNohyL57vq79t9syva/c+Iydj8LCJhV31s=;
        b=q7xN3hELgwpq0mTK9bPsGZsoIn2YdZpIdw+KvqstST6ApRJmNAOKfvP58sRIOR/VLr
         XptmwmLbdyQ6gcJgaKzaJJxF1NhT0Wb1hZqILcu2auB/IlJmZNlHfmH4/etjKD9kgHdK
         ZhzLU+ZRx/Ljeu7BkUR57XDpJvg0jnBZm+WmT7NUroos8HKCrdvjnze014+ou3tuyslM
         BbLPSIOTYZjoujmEbhc0QD5dUUPLcS7f7yo9fHnXsdE7jVMi6EliW1RP3MAPGtAFe2Wj
         IhvUSHckZGmEROyPZF8L6nfJxHdj+2zpntbywlcdWJk25bg3ePW95r19NOTIcl584Nhc
         sp/g==
X-Gm-Message-State: AOAM530ya5aAhhmdxeS9jxMXQ7sNpKRX0bSZ1oj/7Sag4LVIo/1giixC
	tBxLFjU4Ugd+apUHeFtzT34oPj337cfIeg==
X-Google-Smtp-Source: ABdhPJzVzm7xxWFny6k7rXMNxZYL1+zL1N+JrD+VaRaHqIA2aGWejq9QYtEesvz4GS+pDlKIFFoMfw==
X-Received: by 2002:a05:6214:12ec:: with SMTP id w12mr20862899qvv.48.1632691455735;
        Sun, 26 Sep 2021 14:24:15 -0700 (PDT)
Received: from [192.168.2.243] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v3sm11131425qkd.20.2021.09.26.14.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Sep 2021 14:24:15 -0700 (PDT)
To: Ivan Zahartchuk <adray0001@gmail.com>
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
 <b94b5e08-233d-46e2-501d-a18f3f2b3416@gmail.com>
 <CAL7q81vLuNuq8324djbG4_L7tgXojSDBExUsLxiPpEv_oh8-Jg@mail.gmail.com>
 <CAPRRyxtb__BVZXHUNW-bBwPz+yqLfbeyyq0dJ-BPE7y8MW=Mqw@mail.gmail.com>
 <CAL7q81tnm7_ZTOWVgRtSrOT173wFST4ZeA5CbrxW13mf_ECu5Q@mail.gmail.com>
 <CAPRRyxsLUrpPEtw0gJc7B3AKLSGovRFtoRCxb1+nV+6+HjnR0w@mail.gmail.com>
 <CAPRRyxv+KUkGff8s9x4hZfYBypEPt7vhZo3=nbQoJ8MKG8s4FQ@mail.gmail.com>
 <bcd84a06-1ee6-41eb-e446-6611932b60fa@gmail.com>
 <CAPRRyxvDfB3XYNovUAXH-trzVYXNNaf1rr_QZC4PqN4iq2hhUw@mail.gmail.com>
 <7ce1eab9-8b18-87fa-d4d1-12dda585a016@gmail.com>
 <CAPRRyxveESVEJPz9BBNzDNCaBHHSsjcEs+1Q3Bt8+Mv2RKSfig@mail.gmail.com>
 <846aae08-b14a-7b58-662d-d41fd71435c1@gmail.com>
 <CAB__hTQSENNuR1Hj4jRuUMbGbw1o+3gSKFmK-V9HgbtuLMbU8g@mail.gmail.com>
 <bb4b54bb-9720-da35-5876-57e55e4af4ba@gmail.com>
 <CAPRRyxu3KvD6KUUAA1QW6GsQjXRKn03ATybc_LsGF47KOWnb5Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1cf68c07-7839-8386-e368-c08b30006e75@gmail.com>
Date: Sun, 26 Sep 2021 17:24:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPRRyxu3KvD6KUUAA1QW6GsQjXRKn03ATybc_LsGF47KOWnb5Q@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: PZI2L2H6QWTPMCUWLTF326O4NWCPJFFV
X-Message-ID-Hash: PZI2L2H6QWTPMCUWLTF326O4NWCPJFFV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PZI2L2H6QWTPMCUWLTF326O4NWCPJFFV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1605332739114302380=="

This is a multi-part message in MIME format.
--===============1605332739114302380==
Content-Type: multipart/alternative;
 boundary="------------842F97E0F5C0984DDECF313C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------842F97E0F5C0984DDECF313C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-26 5:17 p.m., Ivan Zahartchuk wrote:
> Hello. Please tell me how things are with my question? Perhaps I need=20
> some additional information?
Jonathan Pendlum submitted a bug report.=C2=A0 I have no way of knowing w=
hen=20
it will be addressed by the R&D team.


>
> =D0=B2=D1=82, 14 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 22:30, M=
arcus D. Leech <patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>>:
>
>     On 2021-09-14 10:24 a.m., Rob Kossler wrote:
>>     Hi Ivan,
>>     If your issues are still the following: streaming works fine for
>>     FFT length 256, but causes streaming errors at FFT lengths 512
>>     and above, the issue is very likely related to the packet length
>>     that the FFT block produces.
>>
>>     The stock RFNoC FFT block from Ettus asserts TLAST on the final
>>     FFT sample, which makes the packet length equal to the FFT
>>     length.=C2=A0 For a 512 point FFT, this means that the number of b=
ytes
>>     in a packet is 2048+header_bytes.=C2=A0 This is a problem if the
>>     interface MTU is less than that (often at 1500).=C2=A0 So, the ans=
wer
>>     is to figure out how to get the interface MTU set to a larger
>>     value.=C2=A0 If that is not possible, then the answer is to modify=
 the
>>     FFT block so that the packet length is not dependent on the FFT
>>     size. For example, the FFT block could assert TLAST every 256
>>     samples, independent of the actual FFT length.=C2=A0 There are old
>>     posts about this if you search the archive.
>>     Rob
>>
>     Thanks, Rob.
>
>     But we've already covered that territory--turns out there IS a bug
>     in recent UHD with FFT and FIR (and other vector functions I
>     think) lengths > 256, and a bug
>     =C2=A0 has been raised.
>
>
>>
>>     On Mon, Sep 13, 2021 at 5:30 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:
>>>         Tell me how to create a yaml file for such a graph
>>>         correctly? I tried like this but I get errors. I have not
>>>         found such examples.
>>>
>>         Please copy user-users on these e-mails.=C2=A0 Others may have
>>         better insights than myself on these things, and bringing in
>>         the wider
>>         =C2=A0 community is always a good idea.
>>
>>         The phrase "but I get errors" isn't terribly useful unless
>>         those errors are included in the problem report.=C2=A0 I MAY o=
r
>>         MAY NOT be able
>>         =C2=A0 to help, since I'm not an RFNOC user or developer.=C2=A0=
 But
>>         without those errors available to the people you're asking
>>         for help,
>>         =C2=A0 it's pretty tough to do ANYTHING.
>>
>>
>>>         =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2=
 02:13, Marcus D. Leech
>>>         <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>:
>>>
>>>             On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:
>>>>             I am setting 256 points FFT with the following
>>>>             parameters: fft_amplitude =3D
>>>>             uhd.libpyuhd.rfnoc.fft_magnitude.MAGNITUDE_SQUARED
>>>>             fft_direction =3D
>>>>             uhd.libpyuhd.rfnoc.fft_direction.FORWARD fft_shift =3D
>>>>             uhd.libpyuhd.rfnoc.fft_shift.NORMAL After that I do abs
>>>>             and display the data. Tell me how to do it better? And
>>>>             do I need to set a different type for the array which
>>>>             is passed to the recv function when setting Mag ** 2?
>>>             Actually, there IS a logpwr block in RFNOC.=C2=A0=C2=A0 I=
 don't
>>>             know exactly what scaling strategy it uses.
>>>
>>>             If I wanted to get power estimates out of an RFNOC FFT,
>>>             I'd have:
>>>
>>>             FFT(with MAG2)--->MOVING_AVG--->KEEP-ONE-IN-N all inside
>>>             RFNOC, and then scale to my hearts content at leisurely
>>>             rates on the host.
>>>
>>>
>>>>
>>>>             =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=
=B2 00:43, Marcus D. Leech
>>>>             <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com=
>>:
>>>>
>>>>                 On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:
>>>>>                 Hello. There is any information on my question. I
>>>>>                 also noticed that if you take the data after the
>>>>>                 FFT, then the sensitivity drops very much. I see a
>>>>>                 -30 dBm signal but -60 dBm is no longer displayed.
>>>>                 How are you scaling and displaying your FFT
>>>>                 output?=C2=A0 What options do you have set on your F=
FT?=C2=A0
>>>>                 DO you have it using Mag**2, how do you scale it
>>>>                 =C2=A0 after that?
>>>>
>>>>
>>>>>
>>>>>                 =D1=81=D0=B1, 4 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3=
. =D0=B2 00:04, Ivan Zahartchuk
>>>>>                 <adray0001@gmail.com <mailto:adray0001@gmail.com>>:
>>>>>
>>>>>                     Here is my script. I am trying to read
>>>>>                     different amounts of data from DDC and from
>>>>>                     FFT. Are there any new statements on my questio=
n?
>>>>>
>>>>>
>>>>>                     =D1=87=D1=82, 2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =
=D0=B3. =D0=B2 10:06, Jonathon Pendlum
>>>>>                     <jonathon.pendlum@ettus.com
>>>>>                     <mailto:jonathon.pendlum@ettus.com>>:
>>>>>
>>>>>                         Great, thanks. Can you also share your
>>>>>                         latest python script?
>>>>>
>>>>>                         Jonathon
>>>>>
>>>>>                         On Wed, Sep 1, 2021 at 6:37 PM Ivan
>>>>>                         Zahartchuk <adray0001@gmail.com
>>>>>                         <mailto:adray0001@gmail.com>> wrote:
>>>>>
>>>>>                             Yes, I can try it but next week. But I
>>>>>                             still wanted to do FFT on FPGA. And
>>>>>                             one more question. Is it possible to
>>>>>                             create two streamers and read 256
>>>>>                             samples one at a time and another 8192
>>>>>                             for example? I want to do FFT on one
>>>>>                             channel and start a stream with DDC
>>>>>                             for demodulation on the other. What is
>>>>>                             possible?
>>>>>
>>>>>
>>>>>                             =D1=81=D1=80, 1 =D1=81=D0=B5=D0=BD=D1=82=
. 2021 =D0=B3. =D0=B2 21:09, Jonathon
>>>>>                             Pendlum <jonathon.pendlum@ettus.com
>>>>>                             <mailto:jonathon.pendlum@ettus.com>>:
>>>>>
>>>>>                                 Hi Ivan,
>>>>>
>>>>>                                 Can you try running your script
>>>>>                                 with the SPP set to 512 and
>>>>>                                 without the FFT block, i.e. Radio
>>>>>                                 -> Rx Streamer? This may be a
>>>>>                                 general issue with SPP unrelated
>>>>>                                 to the FFT. I'm getting the same
>>>>>                                 "Bad CHDR packet" error on a
>>>>>                                 different device with the FIR
>>>>>                                 filter block, but it goes away
>>>>>                                 when I remove the block.
>>>>>
>>>>>                                 Jonathon
>>>>>
>>>>>                                 On Mon, Aug 30, 2021 at 3:46 PM
>>>>>                                 Marcus D. Leech
>>>>>                                 <patchvonbraun@gmail.com
>>>>>                                 <mailto:patchvonbraun@gmail.com>>
>>>>>                                 wrote:
>>>>>
>>>>>                                     On 2021-08-30 2:30 p.m., Ivan
>>>>>                                     Zahartchuk wrote:
>>>>>>
>>>>>>
>>>>>
>>>>>                                     Thanks. Still trying to work
>>>>>                                     this out.=C2=A0 In UHD 4, the
>>>>>                                     interface to the FPGA changed
>>>>>                                     from a straightforward DMA
>>>>>                                     implementation--done by ADI for
>>>>>                                     =C2=A0 their IIO subsystem, to =
a
>>>>>                                     driver that makes the
>>>>>                                     FPGA/Radio "look" like a
>>>>>                                     network device with an MTU of
>>>>>                                     9000.
>>>>>
>>>>>                                     With an MTU that large, you
>>>>>                                     should have no trouble with
>>>>>                                     512-bin FFTs. But clearly, you
>>>>>                                     are.
>>>>>
>>>>>                                     The "int0" network interface
>>>>>                                     exists only while there's a
>>>>>                                     session with the radio, so it
>>>>>                                     won't show up in "ifconfig"
>>>>>                                     unless there's a session active=
,
>>>>>                                     =C2=A0 and it indeed has an MTU=
 of
>>>>>                                     9000. So MTU isn't your
>>>>>                                     problem. It's something else,
>>>>>                                     and I'm not sure what at the
>>>>>                                     moment.
>>>>>
>>>>>
>>>>>>                                     =D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=
=B3. 2021 =D0=B3. =D0=B2 15:08,
>>>>>>                                     Marcus D. Leech
>>>>>>                                     <patchvonbraun@gmail.com
>>>>>>                                     <mailto:patchvonbraun@gmail.co=
m>>:
>>>>>>
>>>>>>                                         On 2021-08-29 7:17 a.m.,
>>>>>>                                         Ivan Zahartchuk wrote:
>>>>>>>                                         Thanks a lot. Here is my
>>>>>>>                                         output with
>>>>>>>                                         uhd_usrp_probe and my cod=
e:
>>>>>>                                         Could you share with us
>>>>>>                                         the output of:
>>>>>>
>>>>>>                                         ip link
>>>>>>
>>>>>>                                         or ifconfig
>>>>>>
>>>>>>
>>>>>>>
>>>>>>>                                         =D1=81=D0=B1, 28 =D0=B0=D0=
=B2=D0=B3. 2021 =D0=B3. =D0=B2
>>>>>>>                                         20:19, Marcus D. Leech
>>>>>>>                                         <patchvonbraun@gmail.com
>>>>>>>                                         <mailto:patchvonbraun@gma=
il.com>>:
>>>>>>>
>>>>>>>                                             On 2021-08-28 10:49
>>>>>>>                                             a.m., Ivan
>>>>>>>                                             Zahartchuk wrote:
>>>>>>>>                                             Tell me who I can
>>>>>>>>                                             turn to for help or
>>>>>>>>                                             how can I solve the
>>>>>>>>                                             problem with the
>>>>>>>>                                             fact that I cannot
>>>>>>>>                                             set the number of
>>>>>>>>                                             FFT points> 256. I
>>>>>>>>                                             apologize for my
>>>>>>>>                                             persistence, but
>>>>>>>>                                             this is critical
>>>>>>>>                                             for me. Thank you
>>>>>>>>                                             for understanding.
>>>>>>>>
>>>>>>>                                             Ivan, I've been
>>>>>>>                                             poking around all
>>>>>>>                                             morning try to find
>>>>>>>                                             where there may be a
>>>>>>>                                             limit.=C2=A0 I can't =
find
>>>>>>>                                             it.=C2=A0 I'm hampere=
d by
>>>>>>>                                             not being an RFNOC
>>>>>>>                                             expert.
>>>>>>>
>>>>>>>                                             I have a query in to
>>>>>>>                                             Ettus R&D, but it
>>>>>>>                                             being the weekend, I
>>>>>>>                                             don't expect any
>>>>>>>                                             kind of answer until
>>>>>>>                                             Monday.
>>>>>>>
>>>>>>>                                             Could you share your
>>>>>>>                                             Python code, and the
>>>>>>>                                             output of
>>>>>>>                                             uhd_usrp_probe on
>>>>>>>                                             your E310?
>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>
>>         To unsubscribe send an email to
>>         usrp-users-leave@lists.ettus.com
>>         <mailto:usrp-users-leave@lists.ettus.com>
>>
>


--------------842F97E0F5C0984DDECF313C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-26 5:17 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxu3KvD6KUUAA1QW6GsQjXRKn03ATybc_LsGF47KOWnb5Q@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-XcVN5d=
 gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" dir=3D=
"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">Hello. Please tell me how =
things are with my question? Perhaps I need some additional information?<=
/span></pre>
      </div>
    </blockquote>
    Jonathan Pendlum submitted a bug report.=C2=A0 I have no way of knowi=
ng
    when it will be addressed by the R&amp;D team.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxu3KvD6KUUAA1QW6GsQjXRKn03ATybc_LsGF47KOWnb5Q@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 14 =D1=81=D0=B5=
=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 22:30,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-14 10:24 a.m., Rob Kossler wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi Ivan,
                <div>If your issues are still the following: streaming
                  works fine for FFT length 256, but causes streaming
                  errors at FFT lengths 512 and above, the issue is very
                  likely related to the packet length that the FFT block
                  produces.=C2=A0=C2=A0</div>
                <div><br>
                </div>
                <div>The stock RFNoC FFT block from Ettus asserts TLAST
                  on the final FFT sample, which makes the packet length
                  equal to the FFT length.=C2=A0 For a 512 point FFT, thi=
s
                  means that the number of bytes in a packet is
                  2048+header_bytes.=C2=A0 This is a problem if the inter=
face
                  MTU is less than that (often at 1500).=C2=A0 So, the an=
swer
                  is to figure out how to get the interface MTU set to a
                  larger value.=C2=A0 If that is not possible, then the
                  answer is to modify the FFT block so that the packet
                  length is not dependent on the FFT size. For example,
                  the FFT block could assert TLAST every 256 samples,
                  independent of the actual FFT length.=C2=A0 There are o=
ld
                  posts about this if you search the archive.</div>
                <div>Rob</div>
                <div><br>
                </div>
              </div>
            </blockquote>
            Thanks, Rob.<br>
            <br>
            But we've already covered that territory--turns out there IS
            a bug in recent UHD with FFT and FIR (and other vector
            functions I think) lengths &gt; 256, and a bug<br>
            =C2=A0 has been raised.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 13, 202=
1
                  at 5:30 PM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">patchvonbr=
aun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:<=
br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div
id=3D"gmail-m_-4775302119725055657gmail-m_3692904149235757776gmail-tw-tar=
get-text-container">
                          <pre id=3D"gmail-m_-4775302119725055657gmail-m_=
3692904149235757776gmail-tw-target-text" style=3D"text-align:left" dir=3D=
"ltr"><span lang=3D"en">Tell me how to create a yaml file for such a grap=
h correctly? I tried like this but I get errors. I have not found such ex=
amples.</span></pre>
                        </div>
                        <div
id=3D"gmail-m_-4775302119725055657gmail-m_3692904149235757776gmail-tw-tar=
get-rmn-container">
                          <pre id=3D"gmail-m_-4775302119725055657gmail-m_=
3692904149235757776gmail-tw-target-rmn" style=3D"text-align:left" dir=3D"=
ltr"><span>
</span></pre>
                        </div>
                      </div>
                      <br>
                    </blockquote>
                    Please copy user-users on these e-mails.=C2=A0 Others=
 may
                    have better insights than myself on these things,
                    and bringing in the wider<br>
                    =C2=A0 community is always a good idea.<br>
                    <br>
                    The phrase "but I get errors" isn't terribly useful
                    unless those errors are included in the problem
                    report.=C2=A0 I MAY or MAY NOT be able<br>
                    =C2=A0 to help, since I'm not an RFNOC user or
                    developer.=C2=A0 But without those errors available t=
o
                    the people you're asking for help,<br>
                    =C2=A0 it's pretty tough to do ANYTHING.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80=
, 8 =D1=81=D0=B5=D0=BD=D1=82.
                          2021 =D0=B3. =D0=B2 02:13, Marcus D. Leech &lt;=
<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true">pa=
tchvonbraun@gmail.com</a>&gt;:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 2021-09-07 5:55 p.m., Ivan
                              Zahartchuk wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div>
                                  <div
id=3D"gmail-m_-4775302119725055657gmail-m_3692904149235757776gmail-m_8569=
25364538229805gmail-tw-target">
                                    <div
id=3D"gmail-m_-4775302119725055657gmail-m_3692904149235757776gmail-m_8569=
25364538229805gmail-kAz1tf">
                                      <div
id=3D"gmail-m_-4775302119725055657gmail-m_3692904149235757776gmail-m_8569=
25364538229805gmail-tw-target-text-container">
                                        <pre id=3D"gmail-m_-4775302119725=
055657gmail-m_3692904149235757776gmail-m_856925364538229805gmail-tw-targe=
t-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">I am sett=
ing 256 points FFT with the following parameters:
<span style=3D"color:rgb(114,115,122)">fft_amplitude </span>=3D uhd.libpy=
uhd.rfnoc.fft_magnitude.MAGNITUDE_SQUARED
<span style=3D"color:rgb(114,115,122)">fft_direction </span>=3D uhd.libpy=
uhd.rfnoc.fft_direction.FORWARD
<span style=3D"color:rgb(114,115,122)">fft_shift </span>=3D uhd.libpyuhd.=
rfnoc.fft_shift.NORMAL
<span lang=3D"en">After that I do abs and display the data. Tell me how t=
o do it better? And do I need to set a different type for the array which=
 is passed to the recv function when setting Mag ** 2?</span></span></pre=
>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            Actually, there IS a logpwr block in
                            RFNOC.=C2=A0=C2=A0 I don't know exactly what =
scaling
                            strategy it uses.<br>
                            <br>
                            If I wanted to get power estimates out of an
                            RFNOC FFT, I'd have:<br>
                            <br>
                            FFT(with
                            MAG2)---&gt;MOVING_AVG---&gt;KEEP-ONE-IN-N=C2=
=A0=C2=A0
                            all inside RFNOC, and then scale to my
                            hearts content at leisurely rates on the
                            host.<br>
                            <br>
                            <br>
                            <blockquote type=3D"cite"><br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">=D1=
=81=D1=80, 8
                                  =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =
=D0=B2 00:43, Marcus D. Leech
                                  &lt;<a
                                    href=3D"mailto:patchvonbraun@gmail.co=
m"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true">patchvonbrau=
n@gmail.com</a>&gt;:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
                                  style=3D"margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div>
                                    <div>On 2021-09-07 4:17 p.m., Ivan
                                      Zahartchuk wrote:<br>
                                    </div>
                                    <blockquote type=3D"cite">
                                      <div dir=3D"ltr">
                                        <pre id=3D"gmail-m_-4775302119725=
055657gmail-m_3692904149235757776gmail-m_856925364538229805gmail-m_-42772=
78929202622664gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"=
><span lang=3D"en">Hello. There is any information on my question. I also=
 noticed that if you take the data after the FFT, then the sensitivity dr=
ops very much. I see a -30 dBm signal but -60 dBm is no longer displayed.=
</span></pre>
                                      </div>
                                    </blockquote>
                                    How are you scaling and displaying
                                    your FFT output?=C2=A0 What options d=
o
                                    you have set on your FFT?=C2=A0 DO yo=
u
                                    have it using Mag**2, how do you
                                    scale it<br>
                                    =C2=A0 after that?<br>
                                    <br>
                                    <br>
                                    <blockquote type=3D"cite"><br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"ltr"
                                          class=3D"gmail_attr">=D1=81=D0=B1=
, 4 =D1=81=D0=B5=D0=BD=D1=82.
                                          2021 =D0=B3. =D0=B2 00:04, Ivan
                                          Zahartchuk &lt;<a
                                            href=3D"mailto:adray0001@gmai=
l.com"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true">adra=
y0001@gmail.com</a>&gt;:<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote"
                                          style=3D"margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1=
ex">
                                          <div dir=3D"ltr">
                                            <pre id=3D"gmail-m_-477530211=
9725055657gmail-m_3692904149235757776gmail-m_856925364538229805gmail-m_-4=
277278929202622664gmail-m_7838577010434833064gmail-tw-target-text" style=3D=
"text-align:left" dir=3D"ltr"><span lang=3D"en">Here is my script. I am t=
rying to read different amounts of data from DDC and from FFT.
<span lang=3D"en">Are there any new statements on my question?</span></sp=
an></pre>
                                          </div>
                                          <br>
                                          <div class=3D"gmail_quote">
                                            <div dir=3D"ltr"
                                              class=3D"gmail_attr">=D1=87=
=D1=82, 2
                                              =D1=81=D0=B5=D0=BD=D1=82. 2=
021 =D0=B3. =D0=B2 10:06,
                                              Jonathon Pendlum &lt;<a
                                                href=3D"mailto:jonathon.p=
endlum@ettus.com"
                                                target=3D"_blank"
                                                moz-do-not-send=3D"true">=
jonathon.pendlum@ettus.com</a>&gt;:<br>
                                            </div>
                                            <blockquote
                                              class=3D"gmail_quote"
                                              style=3D"margin:0px 0px 0px
                                              0.8ex;border-left:1px
                                              solid
                                              rgb(204,204,204);padding-le=
ft:1ex">
                                              <div dir=3D"ltr">Great,
                                                thanks. Can you also
                                                share your latest python
                                                script?
                                                <div><br>
                                                </div>
                                                <div>Jonathon</div>
                                              </div>
                                              <br>
                                              <div class=3D"gmail_quote">
                                                <div dir=3D"ltr"
                                                  class=3D"gmail_attr">On
                                                  Wed, Sep 1, 2021 at
                                                  6:37 PM Ivan
                                                  Zahartchuk &lt;<a
                                                    href=3D"mailto:adray0=
001@gmail.com"
                                                    target=3D"_blank"
                                                    moz-do-not-send=3D"tr=
ue">adray0001@gmail.com</a>&gt;
                                                  wrote:<br>
                                                </div>
                                                <blockquote
                                                  class=3D"gmail_quote"
                                                  style=3D"margin:0px 0px
                                                  0px
                                                  0.8ex;border-left:1px
                                                  solid
                                                  rgb(204,204,204);paddin=
g-left:1ex">
                                                  <div dir=3D"ltr">
                                                    <pre id=3D"gmail-m_-4=
775302119725055657gmail-m_3692904149235757776gmail-m_856925364538229805gm=
ail-m_-4277278929202622664gmail-m_7838577010434833064gmail-m_653297655481=
6249605gmail-m_5028201748648249325gmail-tw-target-text" style=3D"text-ali=
gn:left" dir=3D"ltr"><span lang=3D"en">Yes, I can try it but next week. B=
ut I still wanted to do FFT on FPGA. And one more question. Is it possibl=
e to create two streamers and read 256 samples one at a time and another =
8192 for example? I want to do FFT on one channel and start a stream with=
 DDC for demodulation on the other. What is possible?</span></pre>
                                                  </div>
                                                  <br>
                                                  <div
                                                    class=3D"gmail_quote"=
>
                                                    <div dir=3D"ltr"
                                                      class=3D"gmail_attr=
">=D1=81=D1=80,
                                                      1 =D1=81=D0=B5=D0=BD=
=D1=82. 2021 =D0=B3. =D0=B2
                                                      21:09, Jonathon
                                                      Pendlum &lt;<a
                                                        href=3D"mailto:jo=
nathon.pendlum@ettus.com"
                                                        target=3D"_blank"
moz-do-not-send=3D"true">jonathon.pendlum@ettus.com</a>&gt;:<br>
                                                    </div>
                                                    <blockquote
                                                      class=3D"gmail_quot=
e"
                                                      style=3D"margin:0px
                                                      0px 0px
                                                      0.8ex;border-left:1=
px
                                                      solid
                                                      rgb(204,204,204);pa=
dding-left:1ex">
                                                      <div dir=3D"ltr">Hi
                                                        Ivan,
                                                        <div><br>
                                                        </div>
                                                        <div>Can you try
                                                          running your
                                                          script with
                                                          the SPP set to
                                                          512 and
                                                          without the
                                                          FFT block,
                                                          i.e. Radio
                                                          -&gt; Rx
                                                          Streamer? This
                                                          may be a
                                                          general issue
                                                          with SPP
                                                          unrelated to
                                                          the FFT. I'm
                                                          getting the
                                                          same "Bad CHDR
                                                          packet" error
                                                          on a different
                                                          device with
                                                          the FIR filter
                                                          block, but it
                                                          goes away when
                                                          I remove the
                                                          block.</div>
                                                        <div><br>
                                                        </div>
                                                        <div>Jonathon</di=
v>
                                                      </div>
                                                      <br>
                                                      <div
                                                        class=3D"gmail_qu=
ote">
                                                        <div dir=3D"ltr"
                                                          class=3D"gmail_=
attr">On
                                                          Mon, Aug 30,
                                                          2021 at 3:46
                                                          PM Marcus D.
                                                          Leech &lt;<a
                                                          href=3D"mailto:=
patchvonbraun@gmail.com"
target=3D"_blank" moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt=
;
                                                          wrote:<br>
                                                        </div>
                                                        <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          2021-08-30
                                                          2:30 p.m.,
                                                          Ivan
                                                          Zahartchuk
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"ltr=
"><br>
                                                          </div>
                                                          <br>
                                                          </blockquote>
                                                          <br>
                                                          Thanks. Still
                                                          trying to work
                                                          this out.=C2=A0=
 In
                                                          UHD 4, the
                                                          interface to
                                                          the FPGA
                                                          changed from a
straightforward DMA implementation--done by ADI for<br>
                                                          =C2=A0 their II=
O
                                                          subsystem, to
                                                          a driver that
                                                          makes the
                                                          FPGA/Radio
                                                          "look" like a
                                                          network device
                                                          with an MTU of
                                                          9000.<br>
                                                          <br>
                                                          With an MTU
                                                          that large,
                                                          you should
                                                          have no
                                                          trouble with
                                                          512-bin FFTs.=C2=
=A0
                                                          But clearly,
                                                          you are.<br>
                                                          <br>
                                                          The "int0"
                                                          network
                                                          interface
                                                          exists only
                                                          while there's
                                                          a session with
                                                          the radio, so
                                                          it won't show
                                                          up in
                                                          "ifconfig"
                                                          unless there's
                                                          a session
                                                          active,<br>
                                                          =C2=A0 and it
                                                          indeed has an
                                                          MTU of 9000.=C2=
=A0
                                                          So MTU isn't
                                                          your problem.=C2=
=A0
                                                          It's something
                                                          else, and I'm
                                                          not sure what
                                                          at the moment.<=
br>
                                                          <br>
                                                          <br>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"ltr=
"
class=3D"gmail_attr">=D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=
=B2 15:08, Marcus D. Leech &lt;<a
                                                          href=3D"mailto:=
patchvonbraun@gmail.com"
target=3D"_blank" moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt=
;:<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          2021-08-29
                                                          7:17 a.m.,
                                                          Ivan
                                                          Zahartchuk
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"ltr=
">
                                                          <pre id=3D"gmai=
l-m_-4775302119725055657gmail-m_3692904149235757776gmail-m_85692536453822=
9805gmail-m_-4277278929202622664gmail-m_7838577010434833064gmail-m_653297=
6554816249605gmail-m_5028201748648249325gmail-m_911825999819262281gmail-m=
_-335974355785571641gmail-m_-2376322789871959447gmail-m_74791786777430329=
33gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D=
"en">Thanks a lot. Here is my output with uhd_usrp_probe and my code:</sp=
an></pre>
                                                          </div>
                                                          </blockquote>
                                                          Could you
                                                          share with us
                                                          the output of:<=
br>
                                                          <br>
                                                          ip link<br>
                                                          <br>
                                                          or ifconfig<br>
                                                          <br>
                                                          <br>
                                                          <blockquote
                                                          type=3D"cite"><=
br>
                                                          <div
                                                          class=3D"gmail_=
quote">
                                                          <div dir=3D"ltr=
"
class=3D"gmail_attr">=D1=81=D0=B1, 28 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=
=B2 20:19, Marcus D. Leech &lt;<a
                                                          href=3D"mailto:=
patchvonbraun@gmail.com"
target=3D"_blank" moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt=
;:<br>
                                                          </div>
                                                          <blockquote
                                                          class=3D"gmail_=
quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid
                                                          rgb(204,204,204=
);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          2021-08-28
                                                          10:49 a.m.,
                                                          Ivan
                                                          Zahartchuk
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          type=3D"cite">
                                                          <div dir=3D"ltr=
">
                                                          <pre id=3D"gmai=
l-m_-4775302119725055657gmail-m_3692904149235757776gmail-m_85692536453822=
9805gmail-m_-4277278929202622664gmail-m_7838577010434833064gmail-m_653297=
6554816249605gmail-m_5028201748648249325gmail-m_911825999819262281gmail-m=
_-335974355785571641gmail-m_-2376322789871959447gmail-m_74791786777430329=
33gmail-m_2248216012660293957gmail-tw-target-text" style=3D"text-align:le=
ft" dir=3D"ltr"><span lang=3D"en">Tell me who I can turn to for help or h=
ow can I solve the problem with the fact that I cannot set the number of =
FFT points&gt; 256. I apologize for my persistence, but this is critical =
for me. Thank you for understanding.</span></pre>
                                                          </div>
                                                          <br>
                                                          </blockquote>
                                                          Ivan, I've
                                                          been poking
                                                          around all
                                                          morning try to
                                                          find where
                                                          there may be a
                                                          limit.=C2=A0 I
                                                          can't find
                                                          it.=C2=A0 I'm
                                                          hampered by
                                                          not being an
                                                          RFNOC expert.<b=
r>
                                                          <br>
                                                          I have a query
                                                          in to Ettus
                                                          R&amp;D, but
                                                          it being the
                                                          weekend, I
                                                          don't expect
                                                          any kind of
                                                          answer until
                                                          Monday.<br>
                                                          <br>
                                                          Could you
                                                          share your
                                                          Python code,
                                                          and the output
                                                          of
                                                          uhd_usrp_probe
                                                          on your E310?<b=
r>
                                                          <br>
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
                                                  </div>
                                                </blockquote>
                                              </div>
                                            </blockquote>
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
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true">usrp-users=
@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true">usrp-users=
-leave@lists.ettus.com</a><br>
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

--------------842F97E0F5C0984DDECF313C--

--===============1605332739114302380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1605332739114302380==--
