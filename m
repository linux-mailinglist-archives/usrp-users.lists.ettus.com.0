Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EED40B80C
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 21:31:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B32F33849E0
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 15:31:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W8KEaqdx";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 66EEC38478F
	for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 15:30:52 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id p4so710839qki.3
        for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 12:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=YjWoZJAoYHB2X7F0E1z11oGFhsiOaBbEun6+g3SIXg4=;
        b=W8KEaqdxupoBr+/NIrfFZuzGQvopQ9bfL8KFC2PAubEW0USwButP7H0XFsGiBaF24m
         WJ8/gk9UsRu/87g9LuZROdVf2YqU1Y4jHG8PgpGukTEMrgmL3F9KaqFTxL0NrPPQaXZW
         x5EJS/2ZNQTJi/wchiX3nWh0YANhWEoVTOCoT05Pl1vdv89IfcbHuAqxRqjpp5wl057p
         w8irK6nx7o6g6BEqDkganMeQpQ+bZlpWfF/ff53ueKNKJH2b7pp8NlYq6XRmvntlOApK
         Os9lbgCSCowEqcE1ixuOLUBJj28/8YgoycAORtF+RAeXQfZPrNPUFPjrtOAeceq3izY6
         vOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=YjWoZJAoYHB2X7F0E1z11oGFhsiOaBbEun6+g3SIXg4=;
        b=x/Hr6Zk4TAZ3Gd9sW8jJVyttg6sJMp9ctHxHRFxVhOyioe5dNEpkhAZSAnRmXLw/uw
         xt4tqKHTyHsI71dgypU+ahrYF0TU+PfHrG6z+7X/CurB7iChRPaUsU69l8G/lU6O3nFW
         f6Bcqh73WPwIEqXb5qsduFj7VS6GoHnsVKklcOnK4IPNbRXxEaQNwZN/zsXkgKPXW6Aw
         LCxbov8JNImUS6RK8FahAv937ORUsLX0/TuAwezG9xYWp31P01kJaHYbRgRxP4Sqvcpk
         VRhenmyPXMilzrPmZ95GqgqGcffGGYqYg0Qkx3ZVq7ERHW0spXZystO8+wxhZMKn495q
         ujOw==
X-Gm-Message-State: AOAM531GAeUm1nPmnJqe9SO9P9p3nUSDe0FiTbhSrFhSBBppiAssMB9O
	CtMedwkvjB+32wcbrcPxbPfZb82MysNLgg==
X-Google-Smtp-Source: ABdhPJzAL76pniEyg78TQSu8J1sR5Qm7em6YmJ5HzlVl0ThT/krgSUWC0rtdSXZlgoh5AKVhFdmTkQ==
X-Received: by 2002:a37:9e8c:: with SMTP id h134mr6599001qke.366.1631647851570;
        Tue, 14 Sep 2021 12:30:51 -0700 (PDT)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id y12sm6447589qtj.3.2021.09.14.12.30.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:30:51 -0700 (PDT)
To: Rob Kossler <rkossler@nd.edu>
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
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
 <846aae08-b14a-7b58-662d-d41fd71435c1@gmail.com>
 <CAB__hTQSENNuR1Hj4jRuUMbGbw1o+3gSKFmK-V9HgbtuLMbU8g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <bb4b54bb-9720-da35-5876-57e55e4af4ba@gmail.com>
Date: Tue, 14 Sep 2021 15:30:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTQSENNuR1Hj4jRuUMbGbw1o+3gSKFmK-V9HgbtuLMbU8g@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: DTHGGXFNSIHUHHLCFZPPX2OTTWDORVGD
X-Message-ID-Hash: DTHGGXFNSIHUHHLCFZPPX2OTTWDORVGD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DTHGGXFNSIHUHHLCFZPPX2OTTWDORVGD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4758360742131220849=="

This is a multi-part message in MIME format.
--===============4758360742131220849==
Content-Type: multipart/alternative;
 boundary="------------E19203CBFFB3BE23BB33B59B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E19203CBFFB3BE23BB33B59B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-14 10:24 a.m., Rob Kossler wrote:
> Hi Ivan,
> If your issues are still the following: streaming works fine for FFT=20
> length 256, but causes streaming errors at FFT lengths 512 and above,=20
> the issue is very likely related to the packet length that the FFT=20
> block produces.
>
> The stock RFNoC FFT block from Ettus asserts TLAST on the final FFT=20
> sample, which makes the packet length equal to the FFT length.=C2=A0 Fo=
r a=20
> 512 point FFT, this means that the number of bytes in a packet is=20
> 2048+header_bytes.=C2=A0 This is a problem if the interface MTU is less=
=20
> than that (often at 1500).=C2=A0 So, the answer is to figure out how to=
 get=20
> the interface MTU set to a larger value.=C2=A0 If that is not possible,=
=20
> then the answer is to modify the FFT block so that the packet length=20
> is not dependent on the FFT size. For example, the FFT block could=20
> assert TLAST every 256 samples, independent of the actual FFT length.=C2=
=A0=20
> There are old posts about this if you search the archive.
> Rob
>
Thanks, Rob.

But we've already covered that territory--turns out there IS a bug in=20
recent UHD with FFT and FIR (and other vector functions I think) lengths=20
 > 256, and a bug
 =C2=A0 has been raised.


>
> On Mon, Sep 13, 2021 at 5:30 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:
>>     Tell me how to create a yaml file for such a graph correctly? I
>>     tried like this but I get errors. I have not found such examples.
>>
>     Please copy user-users on these e-mails.=C2=A0 Others may have bett=
er
>     insights than myself on these things, and bringing in the wider
>     =C2=A0 community is always a good idea.
>
>     The phrase "but I get errors" isn't terribly useful unless those
>     errors are included in the problem report.=C2=A0 I MAY or MAY NOT b=
e able
>     =C2=A0 to help, since I'm not an RFNOC user or developer.=C2=A0 But=
 without
>     those errors available to the people you're asking for help,
>     =C2=A0 it's pretty tough to do ANYTHING.
>
>
>>     =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 02:1=
3, Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>:
>>
>>         On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:
>>>         I am setting 256 points FFT with the following parameters:
>>>         fft_amplitude =3D
>>>         uhd.libpyuhd.rfnoc.fft_magnitude.MAGNITUDE_SQUARED
>>>         fft_direction =3D uhd.libpyuhd.rfnoc.fft_direction.FORWARD
>>>         fft_shift =3D uhd.libpyuhd.rfnoc.fft_shift.NORMAL After that =
I
>>>         do abs and display the data. Tell me how to do it better?
>>>         And do I need to set a different type for the array which is
>>>         passed to the recv function when setting Mag ** 2?
>>         Actually, there IS a logpwr block in RFNOC.=C2=A0=C2=A0 I don'=
t know
>>         exactly what scaling strategy it uses.
>>
>>         If I wanted to get power estimates out of an RFNOC FFT, I'd ha=
ve:
>>
>>         FFT(with MAG2)--->MOVING_AVG--->KEEP-ONE-IN-N=C2=A0=C2=A0 all =
inside
>>         RFNOC, and then scale to my hearts content at leisurely rates
>>         on the host.
>>
>>
>>>
>>>         =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2=
 00:43, Marcus D. Leech
>>>         <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>:
>>>
>>>             On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:
>>>>             Hello. There is any information on my question. I also
>>>>             noticed that if you take the data after the FFT, then
>>>>             the sensitivity drops very much. I see a -30 dBm signal
>>>>             but -60 dBm is no longer displayed.
>>>             How are you scaling and displaying your FFT output?=C2=A0
>>>             What options do you have set on your FFT?=C2=A0 DO you ha=
ve
>>>             it using Mag**2, how do you scale it
>>>             =C2=A0 after that?
>>>
>>>
>>>>
>>>>             =D1=81=D0=B1, 4 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=
=B2 00:04, Ivan Zahartchuk
>>>>             <adray0001@gmail.com <mailto:adray0001@gmail.com>>:
>>>>
>>>>                 Here is my script. I am trying to read different
>>>>                 amounts of data from DDC and from FFT. Are there
>>>>                 any new statements on my question?
>>>>
>>>>
>>>>                 =D1=87=D1=82, 2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3=
. =D0=B2 10:06, Jonathon Pendlum
>>>>                 <jonathon.pendlum@ettus.com
>>>>                 <mailto:jonathon.pendlum@ettus.com>>:
>>>>
>>>>                     Great, thanks. Can you also share your latest
>>>>                     python script?
>>>>
>>>>                     Jonathon
>>>>
>>>>                     On Wed, Sep 1, 2021 at 6:37 PM Ivan Zahartchuk
>>>>                     <adray0001@gmail.com
>>>>                     <mailto:adray0001@gmail.com>> wrote:
>>>>
>>>>                         Yes, I can try it but next week. But I
>>>>                         still wanted to do FFT on FPGA. And one
>>>>                         more question. Is it possible to create two
>>>>                         streamers and read 256 samples one at a
>>>>                         time and another 8192 for example? I want
>>>>                         to do FFT on one channel and start a stream
>>>>                         with DDC for demodulation on the other.
>>>>                         What is possible?
>>>>
>>>>
>>>>                         =D1=81=D1=80, 1 =D1=81=D0=B5=D0=BD=D1=82. 20=
21 =D0=B3. =D0=B2 21:09, Jonathon
>>>>                         Pendlum <jonathon.pendlum@ettus.com
>>>>                         <mailto:jonathon.pendlum@ettus.com>>:
>>>>
>>>>                             Hi Ivan,
>>>>
>>>>                             Can you try running your script with
>>>>                             the SPP set to 512 and without the FFT
>>>>                             block, i.e. Radio -> Rx Streamer? This
>>>>                             may be a general issue with SPP
>>>>                             unrelated to the FFT. I'm getting the
>>>>                             same "Bad CHDR packet" error on a
>>>>                             different device with the FIR filter
>>>>                             block, but it goes away when I remove
>>>>                             the block.
>>>>
>>>>                             Jonathon
>>>>
>>>>                             On Mon, Aug 30, 2021 at 3:46 PM Marcus
>>>>                             D. Leech <patchvonbraun@gmail.com
>>>>                             <mailto:patchvonbraun@gmail.com>> wrote:
>>>>
>>>>                                 On 2021-08-30 2:30 p.m., Ivan
>>>>                                 Zahartchuk wrote:
>>>>>
>>>>>
>>>>
>>>>                                 Thanks. Still trying to work this
>>>>                                 out. In UHD 4, the interface to the
>>>>                                 FPGA changed from a straightforward
>>>>                                 DMA implementation--done by ADI for
>>>>                                 =C2=A0 their IIO subsystem, to a dri=
ver
>>>>                                 that makes the FPGA/Radio "look"
>>>>                                 like a network device with an MTU
>>>>                                 of 9000.
>>>>
>>>>                                 With an MTU that large, you should
>>>>                                 have no trouble with 512-bin FFTs.=C2=
=A0
>>>>                                 But clearly, you are.
>>>>
>>>>                                 The "int0" network interface exists
>>>>                                 only while there's a session with
>>>>                                 the radio, so it won't show up in
>>>>                                 "ifconfig" unless there's a session
>>>>                                 active,
>>>>                                 =C2=A0 and it indeed has an MTU of
>>>>                                 9000.=C2=A0 So MTU isn't your proble=
m.=C2=A0
>>>>                                 It's something else, and I'm not
>>>>                                 sure what at the moment.
>>>>
>>>>
>>>>>                                 =D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=B3=
. 2021 =D0=B3. =D0=B2 15:08,
>>>>>                                 Marcus D. Leech
>>>>>                                 <patchvonbraun@gmail.com
>>>>>                                 <mailto:patchvonbraun@gmail.com>>:
>>>>>
>>>>>                                     On 2021-08-29 7:17 a.m., Ivan
>>>>>                                     Zahartchuk wrote:
>>>>>>                                     Thanks a lot. Here is my
>>>>>>                                     output with uhd_usrp_probe
>>>>>>                                     and my code:
>>>>>                                     Could you share with us the
>>>>>                                     output of:
>>>>>
>>>>>                                     ip link
>>>>>
>>>>>                                     or ifconfig
>>>>>
>>>>>
>>>>>>
>>>>>>                                     =D1=81=D0=B1, 28 =D0=B0=D0=B2=D0=
=B3. 2021 =D0=B3. =D0=B2 20:19,
>>>>>>                                     Marcus D. Leech
>>>>>>                                     <patchvonbraun@gmail.com
>>>>>>                                     <mailto:patchvonbraun@gmail.co=
m>>:
>>>>>>
>>>>>>                                         On 2021-08-28 10:49 a.m.,
>>>>>>                                         Ivan Zahartchuk wrote:
>>>>>>>                                         Tell me who I can turn
>>>>>>>                                         to for help or how can I
>>>>>>>                                         solve the problem with
>>>>>>>                                         the fact that I cannot
>>>>>>>                                         set the number of FFT
>>>>>>>                                         points> 256. I apologize
>>>>>>>                                         for my persistence, but
>>>>>>>                                         this is critical for me.
>>>>>>>                                         Thank you for understandi=
ng.
>>>>>>>
>>>>>>                                         Ivan, I've been poking
>>>>>>                                         around all morning try to
>>>>>>                                         find where there may be a
>>>>>>                                         limit.=C2=A0 I can't find =
it.=C2=A0
>>>>>>                                         I'm hampered by not being
>>>>>>                                         an RFNOC expert.
>>>>>>
>>>>>>                                         I have a query in to
>>>>>>                                         Ettus R&D, but it being
>>>>>>                                         the weekend, I don't
>>>>>>                                         expect any kind of answer
>>>>>>                                         until Monday.
>>>>>>
>>>>>>                                         Could you share your
>>>>>>                                         Python code, and the
>>>>>>                                         output of uhd_usrp_probe
>>>>>>                                         on your E310?
>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------E19203CBFFB3BE23BB33B59B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-14 10:24 a.m., Rob Kossler
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQSENNuR1Hj4jRuUMbGbw1o+3gSKFmK-V9HgbtuLMbU8g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Ivan,
        <div>If your issues are still the following: streaming works
          fine for FFT length 256, but causes streaming errors at FFT
          lengths 512 and above, the issue is very likely related to the
          packet length that the FFT block produces.=C2=A0=C2=A0</div>
        <div><br>
        </div>
        <div>The stock RFNoC FFT block from Ettus asserts TLAST on the
          final FFT sample, which makes the packet length equal to the
          FFT length.=C2=A0 For a 512 point FFT, this means that the numb=
er
          of bytes in a packet is 2048+header_bytes.=C2=A0 This is a prob=
lem
          if the interface MTU is less than that (often at 1500).=C2=A0 S=
o,
          the answer is to figure out how to get the interface MTU set
          to a larger value.=C2=A0 If that is not possible, then the answ=
er
          is to modify the FFT block so that the packet length is not
          dependent on the FFT size. For example, the FFT block could
          assert TLAST every 256 samples, independent of the actual FFT
          length.=C2=A0 There are old posts about this if you search the
          archive.</div>
        <div>Rob</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    Thanks, Rob.<br>
    <br>
    But we've already covered that territory--turns out there IS a bug
    in recent UHD with FFT and FIR (and other vector functions I think)
    lengths &gt; 256, and a bug<br>
    =C2=A0 has been raised.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQSENNuR1Hj4jRuUMbGbw1o+3gSKFmK-V9HgbtuLMbU8g@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 13, 2021 at 5:3=
0
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div
                  id=3D"gmail-m_3692904149235757776gmail-tw-target-text-c=
ontainer">
                  <pre id=3D"gmail-m_3692904149235757776gmail-tw-target-t=
ext" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Tell me how =
to create a yaml file for such a graph correctly? I tried like this but I=
 get errors. I have not found such examples.</span></pre>
                </div>
                <div
                  id=3D"gmail-m_3692904149235757776gmail-tw-target-rmn-co=
ntainer">
                  <pre id=3D"gmail-m_3692904149235757776gmail-tw-target-r=
mn" style=3D"text-align:left" dir=3D"ltr"><span>
</span></pre>
                </div>
              </div>
              <br>
            </blockquote>
            Please copy user-users on these e-mails.=C2=A0 Others may hav=
e
            better insights than myself on these things, and bringing in
            the wider<br>
            =C2=A0 community is always a good idea.<br>
            <br>
            The phrase "but I get errors" isn't terribly useful unless
            those errors are included in the problem report.=C2=A0 I MAY =
or
            MAY NOT be able<br>
            =C2=A0 to help, since I'm not an RFNOC user or developer.=C2=A0=
 But
            without those errors available to the people you're asking
            for help,<br>
            =C2=A0 it's pretty tough to do ANYTHING.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 8 =D1=
=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2
                  02:13, Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">patchvonbr=
aun@gmail.com</a>&gt;:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:<=
br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>
                          <div
id=3D"gmail-m_3692904149235757776gmail-m_856925364538229805gmail-tw-targe=
t">
                            <div
                              id=3D"gmail-m_3692904149235757776gmail-m_85=
6925364538229805gmail-kAz1tf">
                              <div
id=3D"gmail-m_3692904149235757776gmail-m_856925364538229805gmail-tw-targe=
t-text-container">
                                <pre id=3D"gmail-m_3692904149235757776gma=
il-m_856925364538229805gmail-tw-target-text" style=3D"text-align:left" di=
r=3D"ltr"><span lang=3D"en">I am setting 256 points FFT with the followin=
g parameters:
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
                    Actually, there IS a logpwr block in RFNOC.=C2=A0=C2=A0=
 I
                    don't know exactly what scaling strategy it uses.<br>
                    <br>
                    If I wanted to get power estimates out of an RFNOC
                    FFT, I'd have:<br>
                    <br>
                    FFT(with
                    MAG2)---&gt;MOVING_AVG---&gt;KEEP-ONE-IN-N=C2=A0=C2=A0=
 all
                    inside RFNOC, and then scale to my hearts content at
                    leisurely rates on the host.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80=
, 8 =D1=81=D0=B5=D0=BD=D1=82.
                          2021 =D0=B3. =D0=B2 00:43, Marcus D. Leech &lt;=
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
                            <div>On 2021-09-07 4:17 p.m., Ivan
                              Zahartchuk wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <pre id=3D"gmail-m_3692904149235757776gma=
il-m_856925364538229805gmail-m_-4277278929202622664gmail-tw-target-text" =
style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Hello. There is a=
ny information on my question. I also noticed that if you take the data a=
fter the FFT, then the sensitivity drops very much. I see a -30 dBm signa=
l but -60 dBm is no longer displayed.</span></pre>
                              </div>
                            </blockquote>
                            How are you scaling and displaying your FFT
                            output?=C2=A0 What options do you have set on
                            your FFT?=C2=A0 DO you have it using Mag**2, =
how
                            do you scale it<br>
                            =C2=A0 after that?<br>
                            <br>
                            <br>
                            <blockquote type=3D"cite"><br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">=D1=
=81=D0=B1, 4
                                  =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =
=D0=B2 00:04, Ivan Zahartchuk
                                  &lt;<a
                                    href=3D"mailto:adray0001@gmail.com"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true">adray0001@gm=
ail.com</a>&gt;:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
                                  style=3D"margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div dir=3D"ltr">
                                    <pre id=3D"gmail-m_369290414923575777=
6gmail-m_856925364538229805gmail-m_-4277278929202622664gmail-m_7838577010=
434833064gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><spa=
n lang=3D"en">Here is my script. I am trying to read different amounts of=
 data from DDC and from FFT.
<span lang=3D"en">Are there any new statements on my question?</span></sp=
an></pre>
                                  </div>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr"=
>=D1=87=D1=82,
                                      2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=
=B3. =D0=B2 10:06, Jonathon
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
                                      <div dir=3D"ltr">Great, thanks. Can
                                        you also share your latest
                                        python script?
                                        <div><br>
                                        </div>
                                        <div>Jonathon</div>
                                      </div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"ltr"
                                          class=3D"gmail_attr">On Wed, Se=
p
                                          1, 2021 at 6:37 PM Ivan
                                          Zahartchuk &lt;<a
                                            href=3D"mailto:adray0001@gmai=
l.com"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true">adra=
y0001@gmail.com</a>&gt;
                                          wrote:<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote"
                                          style=3D"margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1=
ex">
                                          <div dir=3D"ltr">
                                            <pre id=3D"gmail-m_3692904149=
235757776gmail-m_856925364538229805gmail-m_-4277278929202622664gmail-m_78=
38577010434833064gmail-m_6532976554816249605gmail-m_5028201748648249325gm=
ail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"e=
n">Yes, I can try it but next week. But I still wanted to do FFT on FPGA.=
 And one more question. Is it possible to create two streamers and read 2=
56 samples one at a time and another 8192 for example? I want to do FFT o=
n one channel and start a stream with DDC for demodulation on the other. =
What is possible?</span></pre>
                                          </div>
                                          <br>
                                          <div class=3D"gmail_quote">
                                            <div dir=3D"ltr"
                                              class=3D"gmail_attr">=D1=81=
=D1=80, 1
                                              =D1=81=D0=B5=D0=BD=D1=82. 2=
021 =D0=B3. =D0=B2 21:09,
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
                                              <div dir=3D"ltr">Hi Ivan,
                                                <div><br>
                                                </div>
                                                <div>Can you try running
                                                  your script with the
                                                  SPP set to 512 and
                                                  without the FFT block,
                                                  i.e. Radio -&gt; Rx
                                                  Streamer? This may be
                                                  a general issue with
                                                  SPP unrelated to the
                                                  FFT. I'm getting the
                                                  same "Bad CHDR packet"
                                                  error on a different
                                                  device with the FIR
                                                  filter block, but it
                                                  goes away when I
                                                  remove the block.</div>
                                                <div><br>
                                                </div>
                                                <div>Jonathon</div>
                                              </div>
                                              <br>
                                              <div class=3D"gmail_quote">
                                                <div dir=3D"ltr"
                                                  class=3D"gmail_attr">On
                                                  Mon, Aug 30, 2021 at
                                                  3:46 PM Marcus D.
                                                  Leech &lt;<a
                                                    href=3D"mailto:patchv=
onbraun@gmail.com"
                                                    target=3D"_blank"
                                                    moz-do-not-send=3D"tr=
ue">patchvonbraun@gmail.com</a>&gt;
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
                                                  <div>
                                                    <div>On 2021-08-30
                                                      2:30 p.m., Ivan
                                                      Zahartchuk wrote:<b=
r>
                                                    </div>
                                                    <blockquote
                                                      type=3D"cite">
                                                      <div dir=3D"ltr"><b=
r>
                                                      </div>
                                                      <br>
                                                    </blockquote>
                                                    <br>
                                                    Thanks. Still trying
                                                    to work this out.=C2=A0
                                                    In UHD 4, the
                                                    interface to the
                                                    FPGA changed from a
                                                    straightforward DMA
                                                    implementation--done
                                                    by ADI for<br>
                                                    =C2=A0 their IIO
                                                    subsystem, to a
                                                    driver that makes
                                                    the FPGA/Radio
                                                    "look" like a
                                                    network device with
                                                    an MTU of 9000.<br>
                                                    <br>
                                                    With an MTU that
                                                    large, you should
                                                    have no trouble with
                                                    512-bin FFTs.=C2=A0 B=
ut
                                                    clearly, you are.<br>
                                                    <br>
                                                    The "int0" network
                                                    interface exists
                                                    only while there's a
                                                    session with the
                                                    radio, so it won't
                                                    show up in
                                                    "ifconfig" unless
                                                    there's a session
                                                    active,<br>
                                                    =C2=A0 and it indeed =
has
                                                    an MTU of 9000.=C2=A0=
 So
                                                    MTU isn't your
                                                    problem.=C2=A0 It's
                                                    something else, and
                                                    I'm not sure what at
                                                    the moment.<br>
                                                    <br>
                                                    <br>
                                                    <blockquote
                                                      type=3D"cite">
                                                      <div
                                                        class=3D"gmail_qu=
ote">
                                                        <div dir=3D"ltr"
                                                          class=3D"gmail_=
attr">=D0=BF=D0=BD,
                                                          30 =D0=B0=D0=B2=
=D0=B3. 2021
                                                          =D0=B3. =D0=B2 =
15:08,
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
l-m_3692904149235757776gmail-m_856925364538229805gmail-m_-427727892920262=
2664gmail-m_7838577010434833064gmail-m_6532976554816249605gmail-m_5028201=
748648249325gmail-m_911825999819262281gmail-m_-335974355785571641gmail-m_=
-2376322789871959447gmail-m_7479178677743032933gmail-tw-target-text" styl=
e=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Thanks a lot. Here is=
 my output with uhd_usrp_probe and my code:</span></pre>
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
l-m_3692904149235757776gmail-m_856925364538229805gmail-m_-427727892920262=
2664gmail-m_7838577010434833064gmail-m_6532976554816249605gmail-m_5028201=
748648249325gmail-m_911825999819262281gmail-m_-335974355785571641gmail-m_=
-2376322789871959447gmail-m_7479178677743032933gmail-m_224821601266029395=
7gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D=
"en">Tell me who I can turn to for help or how can I solve the problem wi=
th the fact that I cannot set the number of FFT points&gt; 256. I apologi=
ze for my persistence, but this is critical for me. Thank you for underst=
anding.</span></pre>
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
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------E19203CBFFB3BE23BB33B59B--

--===============4758360742131220849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4758360742131220849==--
