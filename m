Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E17640309D
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 00:00:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FE6A384B13
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 18:00:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gKW5FFpX";
	dkim-atps=neutral
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 59C053848A3
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 17:59:35 -0400 (EDT)
Received: by mail-io1-f41.google.com with SMTP id q3so493813iot.3
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 14:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=lekf+NOObPrLsCX/XNAjWefcCUW09kglOfp2PC6S5kc=;
        b=gKW5FFpXN+WQ31VuMpyA2/57LzH2dJXDd5qPTJgIejFcAdPNgOQo0UgS/pll0dQ9XT
         6YZwnC8sB6Vx7aggiBCh9AuZJboEprg9NgbdmuTyt5uhoEWweoCdZ34k/cUhjagfWAWr
         awj+2BY8U02cCYD1rG2Iw9KQgN3G6MDFMEr8uTxPQ0qxk2e9f4fTWWGKE11NVvH+fYCP
         4NkgtsXQSORuafmK7m2Qhy/G6cZ+hzYuUIagjFQ/u0jp4tFtefbTxl+JTJKajccp+twd
         J2SBpDk+kVL2a1QkycWJqTHYZ2KUh2XOCv16U4cg+ISXE/n81B/bmBdyViF+YKnW479s
         7+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=lekf+NOObPrLsCX/XNAjWefcCUW09kglOfp2PC6S5kc=;
        b=MO+IhkTDyQnrs5E/xbTGJwj1s3ZQd3IGGpOUCjbWIoBwFllcNPXMnSIacKk6rNIyXB
         hHXrzyK7gIBn+s1ae6srlNDUJ15IGWbF7L5JGMdY0tGtiTvIDoygnm73KrKy4DQYjhs7
         kBmqwtBjiKKpJFc4NTcK/auC964CYzNrqNKjccjvFDC3MgLV108DQfdwS1hziQ6QmEcI
         dcu/tAu1V0+kNRFGZ68wrLhbO0qjKPnEbg1B/t9dNYQceGozUe/RnJ8n6Pejs8qClbI3
         qprkx89jcOkgXE3QG1GYcc5yFkpP/idlCMy6+fdSjooyBVqVvkcl2csUrKYvkvFS5e0Q
         O2PA==
X-Gm-Message-State: AOAM530tp3Akgmw3MbZhWJ9bzPauFxs21RE5wju/9ba3wbed0QS6eOIM
	U+9tdmSV++hPuOXI2gvLayzQaagnBCAWMg==
X-Google-Smtp-Source: ABdhPJzN+n1qVxIW5yhnPYhaE7CjN4dwmyfg/gBuVF84SdlMxqM1PCIfPl/oePGqcxNsKxH6aAI8CQ==
X-Received: by 2002:a05:6638:d43:: with SMTP id d3mr466494jak.138.1631051974398;
        Tue, 07 Sep 2021 14:59:34 -0700 (PDT)
Received: from [192.168.2.242] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s12sm202948ilo.0.2021.09.07.14.59.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 14:59:34 -0700 (PDT)
To: Ivan Zahartchuk <adray0001@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
 <CAPRRyxuyvEkVv7bVjg0bY9fs=hw0qqSNS1WcEUym+==y6zVE9Q@mail.gmail.com>
 <CAPRRyxuM+PgYWxUBCQBAtLUr0EYvDRZ9JyMuJ8+9AXNgMpLZDw@mail.gmail.com>
 <a26f9e54-6a37-b0c2-690e-851be59dd7aa@gmail.com>
 <CAPRRyxu39Syg3qzWMqmSCLwwaJnwfBM+-eQj8Ccx+KjdH2GUdg@mail.gmail.com>
 <c07ce7bd-925c-7bb4-27df-a8b98f79ae7d@gmail.com>
 <CAPRRyxvi9-jNH72m8UEcbzmLvLkzJWYE0hVoENT1ZFqibVRHGA@mail.gmail.com>
 <b94b5e08-233d-46e2-501d-a18f3f2b3416@gmail.com>
 <CAL7q81vLuNuq8324djbG4_L7tgXojSDBExUsLxiPpEv_oh8-Jg@mail.gmail.com>
 <CAPRRyxtb__BVZXHUNW-bBwPz+yqLfbeyyq0dJ-BPE7y8MW=Mqw@mail.gmail.com>
 <CAL7q81tnm7_ZTOWVgRtSrOT173wFST4ZeA5CbrxW13mf_ECu5Q@mail.gmail.com>
 <CAPRRyxsLUrpPEtw0gJc7B3AKLSGovRFtoRCxb1+nV+6+HjnR0w@mail.gmail.com>
 <CAPRRyxv+KUkGff8s9x4hZfYBypEPt7vhZo3=nbQoJ8MKG8s4FQ@mail.gmail.com>
 <bcd84a06-1ee6-41eb-e446-6611932b60fa@gmail.com>
 <CAPRRyxvDfB3XYNovUAXH-trzVYXNNaf1rr_QZC4PqN4iq2hhUw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <85d13f30-a205-120c-455b-9d6ce04adaef@gmail.com>
Date: Tue, 7 Sep 2021 17:59:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPRRyxvDfB3XYNovUAXH-trzVYXNNaf1rr_QZC4PqN4iq2hhUw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: OKYLCY2AFMEOYPKPJ4HUJRW42P6PSE4F
X-Message-ID-Hash: OKYLCY2AFMEOYPKPJ4HUJRW42P6PSE4F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OKYLCY2AFMEOYPKPJ4HUJRW42P6PSE4F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5398911237377347798=="

This is a multi-part message in MIME format.
--===============5398911237377347798==
Content-Type: multipart/alternative;
 boundary="------------67B1932536EF87413133CEB0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------67B1932536EF87413133CEB0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:
> I am setting 256 points FFT with the following parameters:=20
> fft_amplitude =3D uhd.libpyuhd.rfnoc.fft_magnitude.MAGNITUDE_SQUARED=20
> fft_direction =3D uhd.libpyuhd.rfnoc.fft_direction.FORWARD fft_shift =3D=
=20
> uhd.libpyuhd.rfnoc.fft_shift.NORMAL After that I do abs and display=20
> the data. Tell me how to do it better? And do I need to set a=20
> different type for the array which is passed to the recv function when=20
> setting Mag ** 2?
YOu're already setting Mag**2, so there's no need to ABS. Typically,=20
after that you'll use a 10*log10 function which is then itself scaled by
 =C2=A0 the FFT length and a few other factors.=C2=A0 I'd suggest looking=
 at the=20
Gnu Radio FFT code to see how it scales the FFT output.=C2=A0 There are
 =C2=A0 MANY ways to scale an FFT (and even the MAG**2 output of an FFT)-=
-the=20
RFNOC FFT produces a linear-form output, so if you
 =C2=A0 want to see it in dB units you have to do that yourself from what=
 I=20
understand.=C2=A0 Implementing a 10*log10 in the FPGA would likely
 =C2=A0 be prohibitive, and usually you do that after you've done some=20
averaging and frame-rate reduction.


>
> =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:43, Ma=
rcus D. Leech <patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>>:
>
>     On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:
>>     Hello. There is any information on my question. I also noticed
>>     that if you take the data after the FFT, then the sensitivity
>>     drops very much. I see a -30 dBm signal but -60 dBm is no longer
>>     displayed.
>     How are you scaling and displaying your FFT output?=C2=A0 What opti=
ons
>     do you have set on your FFT?=C2=A0 DO you have it using Mag**2, how=
 do
>     you scale it
>     =C2=A0 after that?
>
>
>>
>>     =D1=81=D0=B1, 4 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:0=
4, Ivan Zahartchuk <adray0001@gmail.com
>>     <mailto:adray0001@gmail.com>>:
>>
>>         Here is my script. I am trying to read different amounts of
>>         data from DDC and from FFT. Are there any new statements on
>>         my question?
>>
>>
>>         =D1=87=D1=82, 2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 =
10:06, Jonathon Pendlum
>>         <jonathon.pendlum@ettus.com <mailto:jonathon.pendlum@ettus.com=
>>:
>>
>>             Great, thanks. Can you also share your latest python scrip=
t?
>>
>>             Jonathon
>>
>>             On Wed, Sep 1, 2021 at 6:37 PM Ivan Zahartchuk
>>             <adray0001@gmail.com <mailto:adray0001@gmail.com>> wrote:
>>
>>                 Yes, I can try it but next week. But I still wanted
>>                 to do FFT on FPGA. And one more question. Is it
>>                 possible to create two streamers and read 256 samples
>>                 one at a time and another 8192 for example? I want to
>>                 do FFT on one channel and start a stream with DDC for
>>                 demodulation on the other. What is possible?
>>
>>
>>                 =D1=81=D1=80, 1 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3.=
 =D0=B2 21:09, Jonathon Pendlum
>>                 <jonathon.pendlum@ettus.com
>>                 <mailto:jonathon.pendlum@ettus.com>>:
>>
>>                     Hi Ivan,
>>
>>                     Can you try running your script with the SPP set
>>                     to 512 and without the FFT block, i.e. Radio ->
>>                     Rx Streamer? This may be a general issue with SPP
>>                     unrelated to the FFT. I'm getting the same "Bad
>>                     CHDR packet" error on a different device with the
>>                     FIR filter block, but it goes away when I remove
>>                     the block.
>>
>>                     Jonathon
>>
>>                     On Mon, Aug 30, 2021 at 3:46 PM Marcus D. Leech
>>                     <patchvonbraun@gmail.com
>>                     <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>                         On 2021-08-30 2:30 p.m., Ivan Zahartchuk wrote=
:
>>>
>>>
>>
>>                         Thanks. Still trying to work this out.=C2=A0 I=
n
>>                         UHD 4, the interface to the FPGA changed from
>>                         a straightforward DMA implementation--done by
>>                         ADI for
>>                         =C2=A0 their IIO subsystem, to a driver that m=
akes
>>                         the FPGA/Radio "look" like a network device
>>                         with an MTU of 9000.
>>
>>                         With an MTU that large, you should have no
>>                         trouble with 512-bin FFTs. But clearly, you ar=
e.
>>
>>                         The "int0" network interface exists only
>>                         while there's a session with the radio, so it
>>                         won't show up in "ifconfig" unless there's a
>>                         session active,
>>                         =C2=A0 and it indeed has an MTU of 9000. So MT=
U
>>                         isn't your problem.=C2=A0 It's something else,=
 and
>>                         I'm not sure what at the moment.
>>
>>
>>>                         =D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=B3. 2021 =D0=
=B3. =D0=B2 15:08, Marcus D. Leech
>>>                         <patchvonbraun@gmail.com
>>>                         <mailto:patchvonbraun@gmail.com>>:
>>>
>>>                             On 2021-08-29 7:17 a.m., Ivan Zahartchuk
>>>                             wrote:
>>>>                             Thanks a lot. Here is my output with
>>>>                             uhd_usrp_probe and my code:
>>>                             Could you share with us the output of:
>>>
>>>                             ip link
>>>
>>>                             or ifconfig
>>>
>>>
>>>>
>>>>                             =D1=81=D0=B1, 28 =D0=B0=D0=B2=D0=B3. 202=
1 =D0=B3. =D0=B2 20:19, Marcus D.
>>>>                             Leech <patchvonbraun@gmail.com
>>>>                             <mailto:patchvonbraun@gmail.com>>:
>>>>
>>>>                                 On 2021-08-28 10:49 a.m., Ivan
>>>>                                 Zahartchuk wrote:
>>>>>                                 Tell me who I can turn to for help
>>>>>                                 or how can I solve the problem
>>>>>                                 with the fact that I cannot set
>>>>>                                 the number of FFT points> 256. I
>>>>>                                 apologize for my persistence, but
>>>>>                                 this is critical for me. Thank you
>>>>>                                 for understanding.
>>>>>
>>>>                                 Ivan, I've been poking around all
>>>>                                 morning try to find where there may
>>>>                                 be a limit.=C2=A0 I can't find it.=C2=
=A0 I'm
>>>>                                 hampered by not being an RFNOC exper=
t.
>>>>
>>>>                                 I have a query in to Ettus R&D, but
>>>>                                 it being the weekend, I don't
>>>>                                 expect any kind of answer until Mond=
ay.
>>>>
>>>>                                 Could you share your Python code,
>>>>                                 and the output of uhd_usrp_probe on
>>>>                                 your E310?
>>>>
>>>>
>>>
>>
>


--------------67B1932536EF87413133CEB0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-07 5:55 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxvDfB3XYNovUAXH-trzVYXNNaf1rr_QZC4PqN4iq2hhUw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail-oSioSc">
          <div id=3D"gmail-tw-target">
            <div id=3D"gmail-kAz1tf" class=3D"gmail-g9WsWb">
              <div class=3D"gmail-tw-ta-container gmail-F0azHf
                gmail-tw-nfl" id=3D"gmail-tw-target-text-container"
                tabindex=3D"0">
                <pre class=3D"gmail-tw-data-text gmail-tw-text-large gmai=
l-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:lef=
t" dir=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">I am setting 256 =
points FFT with the following parameters:
<span style=3D"color:rgb(114,115,122)">fft_amplitude </span>=3D uhd.libpy=
uhd.rfnoc.fft_magnitude.MAGNITUDE_SQUARED
<span style=3D"color:rgb(114,115,122)">fft_direction </span>=3D uhd.libpy=
uhd.rfnoc.fft_direction.FORWARD
<span style=3D"color:rgb(114,115,122)">fft_shift </span>=3D uhd.libpyuhd.=
rfnoc.fft_shift.NORMAL
<span class=3D"gmail-Y2IQFc" lang=3D"en">After that I do abs and display =
the data. Tell me how to do it better? And do I need to set a different t=
ype for the array which is passed to the recv function when setting Mag *=
* 2?</span></span></pre>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    YOu're already setting Mag**2, so there's no need to ABS.=C2=A0=C2=A0
    Typically, after that you'll use a 10*log10 function which is then
    itself scaled by<br>
    =C2=A0 the FFT length and a few other factors.=C2=A0 I'd suggest look=
ing at
    the Gnu Radio FFT code to see how it scales the FFT output.=C2=A0 The=
re
    are<br>
    =C2=A0 MANY ways to scale an FFT (and even the MAG**2 output of an
    FFT)--the RFNOC FFT produces a linear-form output, so if you<br>
    =C2=A0 want to see it in dB units you have to do that yourself from w=
hat
    I understand.=C2=A0 Implementing a 10*log10 in the FPGA would likely<=
br>
    =C2=A0 be prohibitive, and usually you do that after you've done some
    averaging and frame-rate reduction.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxvDfB3XYNovUAXH-trzVYXNNaf1rr_QZC4PqN4iq2hhUw@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 8 =D1=81=D0=B5=
=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:43,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <pre id=3D"gmail-m_-4277278929202622664gmail-tw-target-te=
xt" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Hello. There =
is any information on my question. I also noticed that if you take the da=
ta after the FFT, then the sensitivity drops very much. I see a -30 dBm s=
ignal but -60 dBm is no longer displayed.</span></pre>
              </div>
            </blockquote>
            How are you scaling and displaying your FFT output?=C2=A0 Wha=
t
            options do you have set on your FFT?=C2=A0 DO you have it usi=
ng
            Mag**2, how do you scale it<br>
            =C2=A0 after that?<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D0=B1, 4 =D1=
=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2
                  00:04, Ivan Zahartchuk &lt;<a
                    href=3D"mailto:adray0001@gmail.com" target=3D"_blank"
                    moz-do-not-send=3D"true">adray0001@gmail.com</a>&gt;:=
<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <pre id=3D"gmail-m_-4277278929202622664gmail-m_783857=
7010434833064gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr">=
<span lang=3D"en">Here is my script. I am trying to read different amount=
s of data from DDC and from FFT.
<span lang=3D"en">Are there any new statements on my question?</span></sp=
an></pre>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">=D1=87=D1=82, 2=
 =D1=81=D0=B5=D0=BD=D1=82. 2021
                      =D0=B3. =D0=B2 10:06, Jonathon Pendlum &lt;<a
                        href=3D"mailto:jonathon.pendlum@ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true">jonath=
on.pendlum@ettus.com</a>&gt;:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"ltr">Great, thanks. Can you also share
                        your latest python script?
                        <div><br>
                        </div>
                        <div>Jonathon</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep=
 1,
                          2021 at 6:37 PM Ivan Zahartchuk &lt;<a
                            href=3D"mailto:adray0001@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true">ad=
ray0001@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <pre id=3D"gmail-m_-4277278929202622664gmail-=
m_7838577010434833064gmail-m_6532976554816249605gmail-m_50282017486482493=
25gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D=
"en">Yes, I can try it but next week. But I still wanted to do FFT on FPG=
A. And one more question. Is it possible to create two streamers and read=
 256 samples one at a time and another 8192 for example? I want to do FFT=
 on one channel and start a stream with DDC for demodulation on the other=
. What is possible?</span></pre>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=
=80, 1
                              =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2=
 21:09, Jonathon Pendlum
                              &lt;<a
                                href=3D"mailto:jonathon.pendlum@ettus.com=
"
                                target=3D"_blank" moz-do-not-send=3D"true=
">jonathon.pendlum@ettus.com</a>&gt;:<br>
                            </div>
                            <blockquote class=3D"gmail_quote"
                              style=3D"margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div dir=3D"ltr">Hi Ivan,
                                <div><br>
                                </div>
                                <div>Can you try running your script
                                  with the SPP set to 512 and without
                                  the FFT block, i.e. Radio -&gt; Rx
                                  Streamer? This may be a general issue
                                  with SPP unrelated to the FFT. I'm
                                  getting the same "Bad CHDR packet"
                                  error on a different device with the
                                  FIR filter block, but it goes away
                                  when I remove the block.</div>
                                <div><br>
                                </div>
                                <div>Jonathon</div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Mon, Aug 30, 2021 at 3:46 PM Marcus D.
                                  Leech &lt;<a
                                    href=3D"mailto:patchvonbraun@gmail.co=
m"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true">patchvonbrau=
n@gmail.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
                                  style=3D"margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div>
                                    <div>On 2021-08-30 2:30 p.m., Ivan
                                      Zahartchuk wrote:<br>
                                    </div>
                                    <blockquote type=3D"cite">
                                      <div dir=3D"ltr"><br>
                                      </div>
                                      <br>
                                    </blockquote>
                                    <br>
                                    Thanks. Still trying to work this
                                    out.=C2=A0 In UHD 4, the interface to=
 the
                                    FPGA changed from a straightforward
                                    DMA implementation--done by ADI for<b=
r>
                                    =C2=A0 their IIO subsystem, to a driv=
er
                                    that makes the FPGA/Radio "look"
                                    like a network device with an MTU of
                                    9000.<br>
                                    <br>
                                    With an MTU that large, you should
                                    have no trouble with 512-bin FFTs.=C2=
=A0
                                    But clearly, you are.<br>
                                    <br>
                                    The "int0" network interface exists
                                    only while there's a session with
                                    the radio, so it won't show up in
                                    "ifconfig" unless there's a session
                                    active,<br>
                                    =C2=A0 and it indeed has an MTU of 90=
00.=C2=A0
                                    So MTU isn't your problem.=C2=A0 It's
                                    something else, and I'm not sure
                                    what at the moment.<br>
                                    <br>
                                    <br>
                                    <blockquote type=3D"cite">
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"ltr"
                                          class=3D"gmail_attr">=D0=BF=D0=BD=
, 30 =D0=B0=D0=B2=D0=B3.
                                          2021 =D0=B3. =D0=B2 15:08, Marc=
us D.
                                          Leech &lt;<a
                                            href=3D"mailto:patchvonbraun@=
gmail.com"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true">patc=
hvonbraun@gmail.com</a>&gt;:<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote"
                                          style=3D"margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1=
ex">
                                          <div>
                                            <div>On 2021-08-29 7:17
                                              a.m., Ivan Zahartchuk
                                              wrote:<br>
                                            </div>
                                            <blockquote type=3D"cite">
                                              <div dir=3D"ltr">
                                                <pre id=3D"gmail-m_-42772=
78929202622664gmail-m_7838577010434833064gmail-m_6532976554816249605gmail=
-m_5028201748648249325gmail-m_911825999819262281gmail-m_-3359743557855716=
41gmail-m_-2376322789871959447gmail-m_7479178677743032933gmail-tw-target-=
text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Thanks a lo=
t. Here is my output with uhd_usrp_probe and my code:</span></pre>
                                              </div>
                                            </blockquote>
                                            Could you share with us the
                                            output of:<br>
                                            <br>
                                            ip link<br>
                                            <br>
                                            or ifconfig<br>
                                            <br>
                                            <br>
                                            <blockquote type=3D"cite"><br=
>
                                              <div class=3D"gmail_quote">
                                                <div dir=3D"ltr"
                                                  class=3D"gmail_attr">=D1=
=81=D0=B1,
                                                  28 =D0=B0=D0=B2=D0=B3. =
2021 =D0=B3. =D0=B2
                                                  20:19, Marcus D. Leech
                                                  &lt;<a
                                                    href=3D"mailto:patchv=
onbraun@gmail.com"
                                                    target=3D"_blank"
                                                    moz-do-not-send=3D"tr=
ue">patchvonbraun@gmail.com</a>&gt;:<br>
                                                </div>
                                                <blockquote
                                                  class=3D"gmail_quote"
                                                  style=3D"margin:0px 0px
                                                  0px
                                                  0.8ex;border-left:1px
                                                  solid
                                                  rgb(204,204,204);paddin=
g-left:1ex">
                                                  <div>
                                                    <div>On 2021-08-28
                                                      10:49 a.m., Ivan
                                                      Zahartchuk wrote:<b=
r>
                                                    </div>
                                                    <blockquote
                                                      type=3D"cite">
                                                      <div dir=3D"ltr">
                                                        <pre id=3D"gmail-=
m_-4277278929202622664gmail-m_7838577010434833064gmail-m_6532976554816249=
605gmail-m_5028201748648249325gmail-m_911825999819262281gmail-m_-33597435=
5785571641gmail-m_-2376322789871959447gmail-m_7479178677743032933gmail-m_=
2248216012660293957gmail-tw-target-text" style=3D"text-align:left" dir=3D=
"ltr"><span lang=3D"en">Tell me who I can turn to for help or how can I s=
olve the problem with the fact that I cannot set the number of FFT points=
&gt; 256. I apologize for my persistence, but this is critical for me. Th=
ank you for understanding.</span></pre>
                                                      </div>
                                                      <br>
                                                    </blockquote>
                                                    Ivan, I've been
                                                    poking around all
                                                    morning try to find
                                                    where there may be a
                                                    limit.=C2=A0 I can't =
find
                                                    it.=C2=A0 I'm hampere=
d by
                                                    not being an RFNOC
                                                    expert.<br>
                                                    <br>
                                                    I have a query in to
                                                    Ettus R&amp;D, but
                                                    it being the
                                                    weekend, I don't
                                                    expect any kind of
                                                    answer until Monday.<=
br>
                                                    <br>
                                                    Could you share your
                                                    Python code, and the
                                                    output of
                                                    uhd_usrp_probe on
                                                    your E310?<br>
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
  </body>
</html>

--------------67B1932536EF87413133CEB0--

--===============5398911237377347798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5398911237377347798==--
