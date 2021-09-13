Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E92409F20
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 23:31:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC48F385324
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 17:31:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="akgUZWdq";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id DB8B0384DEB
	for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 17:30:27 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id t35so9487397qtc.6
        for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 14:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=P+eBnFBSV14Wg8I0zQaUGCmM7pBA5NhEKeHR7yrWn3Q=;
        b=akgUZWdqS/hE3Q4CFbGCsXRlmPrJioi3jAnHqdPYuig7CCiljM8Iegs5OxMeK8rlnx
         5w4e2wh4HJRwShSj+g+NpVHZG9uC55JEenGW9jC91vtw8+qZL3K+yr6qvpZvQsIn26uK
         OVFtuLBlF67sIKw8W3Z4AOcYTQw0vHiJJLfLGHFWQEPv9eFr0sxpxt0K5vYj0ZlUj4ED
         D5wk4iRVEyvGPDl/EpdKnNWI+SzzyVY38b21wV7NAYHggNS58jcYClj/nnHyEYMOwZK7
         szgtDAuvFgYCpaKOGEmxHUVKPQNYeGcDKLzkGNa+Y+y6Z5HrXMNLyJwQztw7CzOz22M7
         QlWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=P+eBnFBSV14Wg8I0zQaUGCmM7pBA5NhEKeHR7yrWn3Q=;
        b=CpMl//puizKzs/0kqdADEnWBh3r1eWnW4kzeE1c/wigRmKrNvW/twmnGP99v1tH323
         e0ZfhypsCdWpTCDZdJd4IPj5pMcpzBf4ySjB2rUptDHeEx9NWunrzEHQaBH2JLuLKQVw
         aGoh6hC9cupbcsczRcLKhUDeUTUWSJgbFuNqcFT6NZhUe6nhJqz/iiSF1yOD83FxLBma
         oFX5HbTijXqx8BLifv8ssumffN7mkkn3SX6lERI8U/pqIDGlTojiPfWP3hmjf6TwXvXE
         BAaNtF6UDVBz+/gLnkSItgxVL0KRo+JyUlXnJgam0IEcxNOcNwSFSisPyDg+CYV5H/+h
         GdxQ==
X-Gm-Message-State: AOAM532cWs7klvTC+/HxGzuYKxM4Xir+T4T0iFdBXIoINqsMWX6ur6V4
	31XvHKTUJ2HEDDL/oi8IkbDax8vDEuBnAg==
X-Google-Smtp-Source: ABdhPJzL/Vc5BPvdYvihoj/SbmCcglgtL1ahb6jpI11ldR8ufalJsttAYxB/gJSMzQTCILpVGphqVg==
X-Received: by 2002:ac8:5905:: with SMTP id 5mr1572076qty.286.1631568627078;
        Mon, 13 Sep 2021 14:30:27 -0700 (PDT)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d20sm4765015qtw.53.2021.09.13.14.30.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 14:30:26 -0700 (PDT)
To: Ivan Zahartchuk <adray0001@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
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
 <7ce1eab9-8b18-87fa-d4d1-12dda585a016@gmail.com>
 <CAPRRyxveESVEJPz9BBNzDNCaBHHSsjcEs+1Q3Bt8+Mv2RKSfig@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <846aae08-b14a-7b58-662d-d41fd71435c1@gmail.com>
Date: Mon, 13 Sep 2021 17:30:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPRRyxveESVEJPz9BBNzDNCaBHHSsjcEs+1Q3Bt8+Mv2RKSfig@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 4PSWC5C244N2MHE6ENCSF5IZGLO46DNE
X-Message-ID-Hash: 4PSWC5C244N2MHE6ENCSF5IZGLO46DNE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4PSWC5C244N2MHE6ENCSF5IZGLO46DNE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3807029234666364842=="

This is a multi-part message in MIME format.
--===============3807029234666364842==
Content-Type: multipart/alternative;
 boundary="------------341AA93064BC9F94016821F0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------341AA93064BC9F94016821F0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:
> Tell me how to create a yaml file for such a graph correctly? I tried=20
> like this but I get errors. I have not found such examples.
>
Please copy user-users on these e-mails.=C2=A0 Others may have better=20
insights than myself on these things, and bringing in the wider
 =C2=A0 community is always a good idea.

The phrase "but I get errors" isn't terribly useful unless those errors=20
are included in the problem report.=C2=A0 I MAY or MAY NOT be able
 =C2=A0 to help, since I'm not an RFNOC user or developer.=C2=A0 But with=
out those=20
errors available to the people you're asking for help,
 =C2=A0 it's pretty tough to do ANYTHING.


> =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 02:13, Ma=
rcus D. Leech <patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>>:
>
>     On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:
>>     I am setting 256 points FFT with the following parameters:
>>     fft_amplitude =3D
>>     uhd.libpyuhd.rfnoc.fft_magnitude.MAGNITUDE_SQUARED fft_direction
>>     =3D uhd.libpyuhd.rfnoc.fft_direction.FORWARD fft_shift =3D
>>     uhd.libpyuhd.rfnoc.fft_shift.NORMAL After that I do abs and
>>     display the data. Tell me how to do it better? And do I need to
>>     set a different type for the array which is passed to the recv
>>     function when setting Mag ** 2?
>     Actually, there IS a logpwr block in RFNOC.=C2=A0=C2=A0 I don't kno=
w exactly
>     what scaling strategy it uses.
>
>     If I wanted to get power estimates out of an RFNOC FFT, I'd have:
>
>     FFT(with MAG2)--->MOVING_AVG--->KEEP-ONE-IN-N=C2=A0=C2=A0 all insid=
e RFNOC,
>     and then scale to my hearts content at leisurely rates on the host.
>
>
>>
>>     =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:4=
3, Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>:
>>
>>         On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:
>>>         Hello. There is any information on my question. I also
>>>         noticed that if you take the data after the FFT, then the
>>>         sensitivity drops very much. I see a -30 dBm signal but -60
>>>         dBm is no longer displayed.
>>         How are you scaling and displaying your FFT output? What
>>         options do you have set on your FFT?=C2=A0 DO you have it usin=
g
>>         Mag**2, how do you scale it
>>         =C2=A0 after that?
>>
>>
>>>
>>>         =D1=81=D0=B1, 4 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2=
 00:04, Ivan Zahartchuk
>>>         <adray0001@gmail.com <mailto:adray0001@gmail.com>>:
>>>
>>>             Here is my script. I am trying to read different amounts
>>>             of data from DDC and from FFT. Are there any new
>>>             statements on my question?
>>>
>>>
>>>             =D1=87=D1=82, 2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=
=B2 10:06, Jonathon Pendlum
>>>             <jonathon.pendlum@ettus.com
>>>             <mailto:jonathon.pendlum@ettus.com>>:
>>>
>>>                 Great, thanks. Can you also share your latest python
>>>                 script?
>>>
>>>                 Jonathon
>>>
>>>                 On Wed, Sep 1, 2021 at 6:37 PM Ivan Zahartchuk
>>>                 <adray0001@gmail.com <mailto:adray0001@gmail.com>>
>>>                 wrote:
>>>
>>>                     Yes, I can try it but next week. But I still
>>>                     wanted to do FFT on FPGA. And one more question.
>>>                     Is it possible to create two streamers and read
>>>                     256 samples one at a time and another 8192 for
>>>                     example? I want to do FFT on one channel and
>>>                     start a stream with DDC for demodulation on the
>>>                     other. What is possible?
>>>
>>>
>>>                     =D1=81=D1=80, 1 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=
=B3. =D0=B2 21:09, Jonathon Pendlum
>>>                     <jonathon.pendlum@ettus.com
>>>                     <mailto:jonathon.pendlum@ettus.com>>:
>>>
>>>                         Hi Ivan,
>>>
>>>                         Can you try running your script with the SPP
>>>                         set to 512 and without the FFT block, i.e.
>>>                         Radio -> Rx Streamer? This may be a general
>>>                         issue with SPP unrelated to the FFT. I'm
>>>                         getting the same "Bad CHDR packet" error on
>>>                         a different device with the FIR filter
>>>                         block, but it goes away when I remove the blo=
ck.
>>>
>>>                         Jonathon
>>>
>>>                         On Mon, Aug 30, 2021 at 3:46 PM Marcus D.
>>>                         Leech <patchvonbraun@gmail.com
>>>                         <mailto:patchvonbraun@gmail.com>> wrote:
>>>
>>>                             On 2021-08-30 2:30 p.m., Ivan Zahartchuk
>>>                             wrote:
>>>>
>>>>
>>>
>>>                             Thanks. Still trying to work this out.=C2=
=A0
>>>                             In UHD 4, the interface to the FPGA
>>>                             changed from a straightforward DMA
>>>                             implementation--done by ADI for
>>>                             =C2=A0 their IIO subsystem, to a driver t=
hat
>>>                             makes the FPGA/Radio "look" like a
>>>                             network device with an MTU of 9000.
>>>
>>>                             With an MTU that large, you should have
>>>                             no trouble with 512-bin FFTs.=C2=A0 But
>>>                             clearly, you are.
>>>
>>>                             The "int0" network interface exists only
>>>                             while there's a session with the radio,
>>>                             so it won't show up in "ifconfig" unless
>>>                             there's a session active,
>>>                             =C2=A0 and it indeed has an MTU of 9000.=C2=
=A0 So
>>>                             MTU isn't your problem.=C2=A0 It's someth=
ing
>>>                             else, and I'm not sure what at the moment=
.
>>>
>>>
>>>>                             =D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=B3. 202=
1 =D0=B3. =D0=B2 15:08, Marcus D.
>>>>                             Leech <patchvonbraun@gmail.com
>>>>                             <mailto:patchvonbraun@gmail.com>>:
>>>>
>>>>                                 On 2021-08-29 7:17 a.m., Ivan
>>>>                                 Zahartchuk wrote:
>>>>>                                 Thanks a lot. Here is my output
>>>>>                                 with uhd_usrp_probe and my code:
>>>>                                 Could you share with us the output o=
f:
>>>>
>>>>                                 ip link
>>>>
>>>>                                 or ifconfig
>>>>
>>>>
>>>>>
>>>>>                                 =D1=81=D0=B1, 28 =D0=B0=D0=B2=D0=B3=
. 2021 =D0=B3. =D0=B2 20:19,
>>>>>                                 Marcus D. Leech
>>>>>                                 <patchvonbraun@gmail.com
>>>>>                                 <mailto:patchvonbraun@gmail.com>>:
>>>>>
>>>>>                                     On 2021-08-28 10:49 a.m., Ivan
>>>>>                                     Zahartchuk wrote:
>>>>>>                                     Tell me who I can turn to for
>>>>>>                                     help or how can I solve the
>>>>>>                                     problem with the fact that I
>>>>>>                                     cannot set the number of FFT
>>>>>>                                     points> 256. I apologize for
>>>>>>                                     my persistence, but this is
>>>>>>                                     critical for me. Thank you
>>>>>>                                     for understanding.
>>>>>>
>>>>>                                     Ivan, I've been poking around
>>>>>                                     all morning try to find where
>>>>>                                     there may be a limit.=C2=A0 I c=
an't
>>>>>                                     find it.=C2=A0 I'm hampered by =
not
>>>>>                                     being an RFNOC expert.
>>>>>
>>>>>                                     I have a query in to Ettus
>>>>>                                     R&D, but it being the weekend,
>>>>>                                     I don't expect any kind of
>>>>>                                     answer until Monday.
>>>>>
>>>>>                                     Could you share your Python
>>>>>                                     code, and the output of
>>>>>                                     uhd_usrp_probe on your E310?
>>>>>
>>>>>
>>>>
>>>
>>
>


--------------341AA93064BC9F94016821F0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-13 2:29 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxveESVEJPz9BBNzDNCaBHHSsjcEs+1Q3Bt8+Mv2RKSfig@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail-tw-ta-container gmail-F0azHf gmail-tw-nfl"
          id=3D"gmail-tw-target-text-container" tabindex=3D"0">
          <pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-XcVN=
5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" dir=
=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">Tell me how to create a=
 yaml file for such a graph correctly? I tried like this but I get errors=
. I have not found such examples.</span></pre>
        </div>
        <div class=3D"gmail-tw-target-rmn gmail-tw-ta-container
          gmail-F0azHf gmail-tw-nfl" id=3D"gmail-tw-target-rmn-container"=
>
          <pre class=3D"gmail-tw-data-placeholder gmail-tw-text-small gma=
il-tw-ta" id=3D"gmail-tw-target-rmn" style=3D"text-align:left" dir=3D"ltr=
"><span class=3D"gmail-Y2IQFc">
</span></pre>
        </div>
      </div>
      <br>
    </blockquote>
    Please copy user-users on these e-mails.=C2=A0 Others may have better
    insights than myself on these things, and bringing in the wider<br>
    =C2=A0 community is always a good idea.<br>
    <br>
    The phrase "but I get errors" isn't terribly useful unless those
    errors are included in the problem report.=C2=A0 I MAY or MAY NOT be =
able<br>
    =C2=A0 to help, since I'm not an RFNOC user or developer.=C2=A0 But w=
ithout
    those errors available to the people you're asking for help,<br>
    =C2=A0 it's pretty tough to do ANYTHING.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxveESVEJPz9BBNzDNCaBHHSsjcEs+1Q3Bt8+Mv2RKSfig@mail.gmai=
l.com">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 8 =D1=81=D0=B5=
=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 02:13,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div id=3D"gmail-m_856925364538229805gmail-tw-target">
                    <div id=3D"gmail-m_856925364538229805gmail-kAz1tf">
                      <div
                        id=3D"gmail-m_856925364538229805gmail-tw-target-t=
ext-container">
                        <pre id=3D"gmail-m_856925364538229805gmail-tw-tar=
get-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">I am se=
tting 256 points FFT with the following parameters:
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
            Actually, there IS a logpwr block in RFNOC.=C2=A0=C2=A0 I don=
't know
            exactly what scaling strategy it uses.<br>
            <br>
            If I wanted to get power estimates out of an RFNOC FFT, I'd
            have:<br>
            <br>
            FFT(with MAG2)---&gt;MOVING_AVG---&gt;KEEP-ONE-IN-N=C2=A0=C2=A0=
 all
            inside RFNOC, and then scale to my hearts content at
            leisurely rates on the host.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 8 =D1=
=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2
                  00:43, Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">patchvonbr=
aun@gmail.com</a>&gt;:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:<=
br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <pre id=3D"gmail-m_856925364538229805gmail-m_-427=
7278929202622664gmail-tw-target-text" style=3D"text-align:left" dir=3D"lt=
r"><span lang=3D"en">Hello. There is any information on my question. I al=
so noticed that if you take the data after the FFT, then the sensitivity =
drops very much. I see a -30 dBm signal but -60 dBm is no longer displaye=
d.</span></pre>
                      </div>
                    </blockquote>
                    How are you scaling and displaying your FFT output?=C2=
=A0
                    What options do you have set on your FFT?=C2=A0 DO yo=
u
                    have it using Mag**2, how do you scale it<br>
                    =C2=A0 after that?<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D0=B1=
, 4 =D1=81=D0=B5=D0=BD=D1=82.
                          2021 =D0=B3. =D0=B2 00:04, Ivan Zahartchuk &lt;=
<a
                            href=3D"mailto:adray0001@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true">ad=
ray0001@gmail.com</a>&gt;:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <pre id=3D"gmail-m_856925364538229805gmail-m_=
-4277278929202622664gmail-m_7838577010434833064gmail-tw-target-text" styl=
e=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Here is my script. I =
am trying to read different amounts of data from DDC and from FFT.
<span lang=3D"en">Are there any new statements on my question?</span></sp=
an></pre>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">=D1=87=D1=
=82, 2
                              =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2=
 10:06, Jonathon Pendlum
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
                              <div dir=3D"ltr">Great, thanks. Can you als=
o
                                share your latest python script?
                                <div><br>
                                </div>
                                <div>Jonathon</div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Wed, Sep 1, 2021 at 6:37 PM Ivan
                                  Zahartchuk &lt;<a
                                    href=3D"mailto:adray0001@gmail.com"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true">adray0001@gm=
ail.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
                                  style=3D"margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div dir=3D"ltr">
                                    <pre id=3D"gmail-m_856925364538229805=
gmail-m_-4277278929202622664gmail-m_7838577010434833064gmail-m_6532976554=
816249605gmail-m_5028201748648249325gmail-tw-target-text" style=3D"text-a=
lign:left" dir=3D"ltr"><span lang=3D"en">Yes, I can try it but next week.=
 But I still wanted to do FFT on FPGA. And one more question. Is it possi=
ble to create two streamers and read 256 samples one at a time and anothe=
r 8192 for example? I want to do FFT on one channel and start a stream wi=
th DDC for demodulation on the other. What is possible?</span></pre>
                                  </div>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr"=
>=D1=81=D1=80,
                                      1 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=
=B3. =D0=B2 21:09, Jonathon
                                      Pendlum &lt;<a
                                        href=3D"mailto:jonathon.pendlum@e=
ttus.com"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">jonathon=
.pendlum@ettus.com</a>&gt;:<br>
                                    </div>
                                    <blockquote class=3D"gmail_quote"
                                      style=3D"margin:0px 0px 0px
                                      0.8ex;border-left:1px solid
                                      rgb(204,204,204);padding-left:1ex">
                                      <div dir=3D"ltr">Hi Ivan,
                                        <div><br>
                                        </div>
                                        <div>Can you try running your
                                          script with the SPP set to 512
                                          and without the FFT block,
                                          i.e. Radio -&gt; Rx Streamer?
                                          This may be a general issue
                                          with SPP unrelated to the FFT.
                                          I'm getting the same "Bad CHDR
                                          packet" error on a different
                                          device with the FIR filter
                                          block, but it goes away when I
                                          remove the block.</div>
                                        <div><br>
                                        </div>
                                        <div>Jonathon</div>
                                      </div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"ltr"
                                          class=3D"gmail_attr">On Mon, Au=
g
                                          30, 2021 at 3:46 PM Marcus D.
                                          Leech &lt;<a
                                            href=3D"mailto:patchvonbraun@=
gmail.com"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true">patc=
hvonbraun@gmail.com</a>&gt;
                                          wrote:<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote"
                                          style=3D"margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1=
ex">
                                          <div>
                                            <div>On 2021-08-30 2:30
                                              p.m., Ivan Zahartchuk
                                              wrote:<br>
                                            </div>
                                            <blockquote type=3D"cite">
                                              <div dir=3D"ltr"><br>
                                              </div>
                                              <br>
                                            </blockquote>
                                            <br>
                                            Thanks. Still trying to work
                                            this out.=C2=A0 In UHD 4, the
                                            interface to the FPGA
                                            changed from a
                                            straightforward DMA
                                            implementation--done by ADI
                                            for<br>
                                            =C2=A0 their IIO subsystem, t=
o a
                                            driver that makes the
                                            FPGA/Radio "look" like a
                                            network device with an MTU
                                            of 9000.<br>
                                            <br>
                                            With an MTU that large, you
                                            should have no trouble with
                                            512-bin FFTs.=C2=A0 But clear=
ly,
                                            you are.<br>
                                            <br>
                                            The "int0" network interface
                                            exists only while there's a
                                            session with the radio, so
                                            it won't show up in
                                            "ifconfig" unless there's a
                                            session active,<br>
                                            =C2=A0 and it indeed has an M=
TU
                                            of 9000.=C2=A0 So MTU isn't y=
our
                                            problem.=C2=A0 It's something
                                            else, and I'm not sure what
                                            at the moment.<br>
                                            <br>
                                            <br>
                                            <blockquote type=3D"cite">
                                              <div class=3D"gmail_quote">
                                                <div dir=3D"ltr"
                                                  class=3D"gmail_attr">=D0=
=BF=D0=BD,
                                                  30 =D0=B0=D0=B2=D0=B3. =
2021 =D0=B3. =D0=B2
                                                  15:08, Marcus D. Leech
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
                                                    <div>On 2021-08-29
                                                      7:17 a.m., Ivan
                                                      Zahartchuk wrote:<b=
r>
                                                    </div>
                                                    <blockquote
                                                      type=3D"cite">
                                                      <div dir=3D"ltr">
                                                        <pre id=3D"gmail-=
m_856925364538229805gmail-m_-4277278929202622664gmail-m_78385770104348330=
64gmail-m_6532976554816249605gmail-m_5028201748648249325gmail-m_911825999=
819262281gmail-m_-335974355785571641gmail-m_-2376322789871959447gmail-m_7=
479178677743032933gmail-tw-target-text" style=3D"text-align:left" dir=3D"=
ltr"><span lang=3D"en">Thanks a lot. Here is my output with uhd_usrp_prob=
e and my code:</span></pre>
                                                      </div>
                                                    </blockquote>
                                                    Could you share with
                                                    us the output of:<br>
                                                    <br>
                                                    ip link<br>
                                                    <br>
                                                    or ifconfig<br>
                                                    <br>
                                                    <br>
                                                    <blockquote
                                                      type=3D"cite"><br>
                                                      <div
                                                        class=3D"gmail_qu=
ote">
                                                        <div dir=3D"ltr"
                                                          class=3D"gmail_=
attr">=D1=81=D0=B1,
                                                          28 =D0=B0=D0=B2=
=D0=B3. 2021
                                                          =D0=B3. =D0=B2 =
20:19,
                                                          Marcus D.
                                                          Leech &lt;<a
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
l-m_856925364538229805gmail-m_-4277278929202622664gmail-m_783857701043483=
3064gmail-m_6532976554816249605gmail-m_5028201748648249325gmail-m_9118259=
99819262281gmail-m_-335974355785571641gmail-m_-2376322789871959447gmail-m=
_7479178677743032933gmail-m_2248216012660293957gmail-tw-target-text" styl=
e=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Tell me who I can tur=
n to for help or how can I solve the problem with the fact that I cannot =
set the number of FFT points&gt; 256. I apologize for my persistence, but=
 this is critical for me. Thank you for understanding.</span></pre>
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
  </body>
</html>

--------------341AA93064BC9F94016821F0--

--===============3807029234666364842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3807029234666364842==--
