Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA88418B30
	for <lists+usrp-users@lfdr.de>; Sun, 26 Sep 2021 23:18:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C31563844F6
	for <lists+usrp-users@lfdr.de>; Sun, 26 Sep 2021 17:18:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fRrUQUaq";
	dkim-atps=neutral
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 16DB0383EAB
	for <usrp-users@lists.ettus.com>; Sun, 26 Sep 2021 17:17:31 -0400 (EDT)
Received: by mail-il1-f177.google.com with SMTP id i13so16964287ilm.4
        for <usrp-users@lists.ettus.com>; Sun, 26 Sep 2021 14:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9V9bFABUJZrLZFuDtwOh3EogTeX/h8yh+TKsrS5LouM=;
        b=fRrUQUaqdUInhg/yKnLhndF3/2aiqwSegDrE0/pHUX9L2oRXCXYbNfuGZhzU8Z02+9
         lOLFhjHyeiAMzMkrh1cGxO9XB93QDYM3L3oKuuXevLN4UisuQKoRPi4bq94wCJO1WUut
         RWUDdcE7BCOYzj1cdh6cTTFnCPwVROYVt540De5fevX9ksxK5RZcUM2FFawW6SIYz0XK
         +Q7nV3Rb+vVESk7E0UzhJ2NQ/C9S1D4czkk+GYWUbzabc65kHP2MgonCVZZKpWkcln8g
         b0vtTSIIoQ8udNOmO5PFcYH4EIXeIYS5MxVrMAvlsY7xk7dn/C6jUwtn2BGKJWMwqwYr
         +X+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9V9bFABUJZrLZFuDtwOh3EogTeX/h8yh+TKsrS5LouM=;
        b=1oN7R9uKwb3PCRNd4lxyh7dQpO4i5e02PkZrcFA5DdbJDYrlfJ3HUIuwIiqaTpWmxc
         5uMFhwfddsNW0DOKcuIs6nQ7AFypqW0cyBav+R6MoU00SwRNyJIANz0csKVHfLU3KEY1
         oNcesZLDma4+GzXm+r6t8jFOVDe32mms861KVhVcce/ax0t4Imc2SKAYEjD2hNlvD4+J
         8UScaaX/0dZ+mIMXp5cNCfNVSGT8YxtjxEVmTrOLPUOOhsqjaxpPiptguovG3uopyKtl
         /nbBbzQbyOrCBsbTawggB+mwCLo7VnzPq9OJnFIpShRerFCWam2+jnF2rrtyHPDOOcSA
         sh5A==
X-Gm-Message-State: AOAM5318apVbky9xsgGZjN3HYxsi4X7mktB0XWQovdWdZDzi6L4ZMzOs
	HMaZ2Sv2WMAbVV6Z/0Iz6OIuZ45GKuEzlNilymk=
X-Google-Smtp-Source: ABdhPJxoep4rFtr5k32kH0meEQkIERx+tVVbBdN1xxa1iZ6Wh/IPd+qwUSMUmCfcgrj+HSnZrlfXjuHjsF275wEU7a4=
X-Received: by 2002:a92:650c:: with SMTP id z12mr17694858ilb.87.1632691051265;
 Sun, 26 Sep 2021 14:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
 <c07ce7bd-925c-7bb4-27df-a8b98f79ae7d@gmail.com> <CAPRRyxvi9-jNH72m8UEcbzmLvLkzJWYE0hVoENT1ZFqibVRHGA@mail.gmail.com>
 <b94b5e08-233d-46e2-501d-a18f3f2b3416@gmail.com> <CAL7q81vLuNuq8324djbG4_L7tgXojSDBExUsLxiPpEv_oh8-Jg@mail.gmail.com>
 <CAPRRyxtb__BVZXHUNW-bBwPz+yqLfbeyyq0dJ-BPE7y8MW=Mqw@mail.gmail.com>
 <CAL7q81tnm7_ZTOWVgRtSrOT173wFST4ZeA5CbrxW13mf_ECu5Q@mail.gmail.com>
 <CAPRRyxsLUrpPEtw0gJc7B3AKLSGovRFtoRCxb1+nV+6+HjnR0w@mail.gmail.com>
 <CAPRRyxv+KUkGff8s9x4hZfYBypEPt7vhZo3=nbQoJ8MKG8s4FQ@mail.gmail.com>
 <bcd84a06-1ee6-41eb-e446-6611932b60fa@gmail.com> <CAPRRyxvDfB3XYNovUAXH-trzVYXNNaf1rr_QZC4PqN4iq2hhUw@mail.gmail.com>
 <7ce1eab9-8b18-87fa-d4d1-12dda585a016@gmail.com> <CAPRRyxveESVEJPz9BBNzDNCaBHHSsjcEs+1Q3Bt8+Mv2RKSfig@mail.gmail.com>
 <846aae08-b14a-7b58-662d-d41fd71435c1@gmail.com> <CAB__hTQSENNuR1Hj4jRuUMbGbw1o+3gSKFmK-V9HgbtuLMbU8g@mail.gmail.com>
 <bb4b54bb-9720-da35-5876-57e55e4af4ba@gmail.com>
In-Reply-To: <bb4b54bb-9720-da35-5876-57e55e4af4ba@gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Mon, 27 Sep 2021 00:17:19 +0300
Message-ID: <CAPRRyxu3KvD6KUUAA1QW6GsQjXRKn03ATybc_LsGF47KOWnb5Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: K37JDBH5RNF6FZEF3H7VDQGT2QV23722
X-Message-ID-Hash: K37JDBH5RNF6FZEF3H7VDQGT2QV23722
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K37JDBH5RNF6FZEF3H7VDQGT2QV23722/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6316000048298325786=="

--===============6316000048298325786==
Content-Type: multipart/alternative; boundary="00000000000023818c05ccec8250"

--00000000000023818c05ccec8250
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello. Please tell me how things are with my question? Perhaps I need
some additional information?


=D0=B2=D1=82, 14 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 22:30, Marcu=
s D. Leech <patchvonbraun@gmail.com>:

> On 2021-09-14 10:24 a.m., Rob Kossler wrote:
>
> Hi Ivan,
> If your issues are still the following: streaming works fine for FFT
> length 256, but causes streaming errors at FFT lengths 512 and above, the
> issue is very likely related to the packet length that the FFT block
> produces.
>
> The stock RFNoC FFT block from Ettus asserts TLAST on the final FFT
> sample, which makes the packet length equal to the FFT length.  For a 512
> point FFT, this means that the number of bytes in a packet is
> 2048+header_bytes.  This is a problem if the interface MTU is less than
> that (often at 1500).  So, the answer is to figure out how to get the
> interface MTU set to a larger value.  If that is not possible, then the
> answer is to modify the FFT block so that the packet length is not
> dependent on the FFT size. For example, the FFT block could assert TLAST
> every 256 samples, independent of the actual FFT length.  There are old
> posts about this if you search the archive.
> Rob
>
> Thanks, Rob.
>
> But we've already covered that territory--turns out there IS a bug in
> recent UHD with FFT and FIR (and other vector functions I think) lengths =
>
> 256, and a bug
>   has been raised.
>
>
>
> On Mon, Sep 13, 2021 at 5:30 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:
>>
>> Tell me how to create a yaml file for such a graph correctly? I tried li=
ke this but I get errors. I have not found such examples.
>>
>>
>> Please copy user-users on these e-mails.  Others may have better insight=
s
>> than myself on these things, and bringing in the wider
>>   community is always a good idea.
>>
>> The phrase "but I get errors" isn't terribly useful unless those errors
>> are included in the problem report.  I MAY or MAY NOT be able
>>   to help, since I'm not an RFNOC user or developer.  But without those
>> errors available to the people you're asking for help,
>>   it's pretty tough to do ANYTHING.
>>
>>
>> =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 02:13, Mar=
cus D. Leech <patchvonbraun@gmail.com>:
>>
>>> On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:
>>>
>>> I am setting 256 points FFT with the following parameters:fft_amplitude=
 =3D uhd.libpyuhd.rfnoc.fft_magnitude.MAGNITUDE_SQUAREDfft_direction =3D uh=
d.libpyuhd.rfnoc.fft_direction.FORWARDfft_shift =3D uhd.libpyuhd.rfnoc.fft_=
shift.NORMALAfter that I do abs and display the data. Tell me how to do it =
better? And do I need to set a different type for the array which is passed=
 to the recv function when setting Mag ** 2?
>>>
>>> Actually, there IS a logpwr block in RFNOC.   I don't know exactly what
>>> scaling strategy it uses.
>>>
>>> If I wanted to get power estimates out of an RFNOC FFT, I'd have:
>>>
>>> FFT(with MAG2)--->MOVING_AVG--->KEEP-ONE-IN-N   all inside RFNOC, and
>>> then scale to my hearts content at leisurely rates on the host.
>>>
>>>
>>>
>>> =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:43, Ma=
rcus D. Leech <patchvonbraun@gmail.com>:
>>>
>>>> On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:
>>>>
>>>> Hello. There is any information on my question. I also noticed that if=
 you take the data after the FFT, then the sensitivity drops very much. I s=
ee a -30 dBm signal but -60 dBm is no longer displayed.
>>>>
>>>> How are you scaling and displaying your FFT output?  What options do
>>>> you have set on your FFT?  DO you have it using Mag**2, how do you sca=
le it
>>>>   after that?
>>>>
>>>>
>>>>
>>>> =D1=81=D0=B1, 4 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:04, I=
van Zahartchuk <adray0001@gmail.com>:
>>>>
>>>>> Here is my script. I am trying to read different amounts of data from=
 DDC and from FFT.Are there any new statements on my question?
>>>>>
>>>>>
>>>>> =D1=87=D1=82, 2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 10:06, =
Jonathon Pendlum <
>>>>> jonathon.pendlum@ettus.com>:
>>>>>
>>>>>> Great, thanks. Can you also share your latest python script?
>>>>>>
>>>>>> Jonathon
>>>>>>
>>>>>> On Wed, Sep 1, 2021 at 6:37 PM Ivan Zahartchuk <adray0001@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Yes, I can try it but next week. But I still wanted to do FFT on FP=
GA. And one more question. Is it possible to create two streamers and read =
256 samples one at a time and another 8192 for example? I want to do FFT on=
 one channel and start a stream with DDC for demodulation on the other. Wha=
t is possible?
>>>>>>>
>>>>>>>
>>>>>>> =D1=81=D1=80, 1 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 21:09=
, Jonathon Pendlum <
>>>>>>> jonathon.pendlum@ettus.com>:
>>>>>>>
>>>>>>>> Hi Ivan,
>>>>>>>>
>>>>>>>> Can you try running your script with the SPP set to 512 and withou=
t
>>>>>>>> the FFT block, i.e. Radio -> Rx Streamer? This may be a general is=
sue with
>>>>>>>> SPP unrelated to the FFT. I'm getting the same "Bad CHDR packet" e=
rror on a
>>>>>>>> different device with the FIR filter block, but it goes away when =
I remove
>>>>>>>> the block.
>>>>>>>>
>>>>>>>> Jonathon
>>>>>>>>
>>>>>>>> On Mon, Aug 30, 2021 at 3:46 PM Marcus D. Leech <
>>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> On 2021-08-30 2:30 p.m., Ivan Zahartchuk wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Thanks. Still trying to work this out.  In UHD 4, the interface t=
o
>>>>>>>>> the FPGA changed from a straightforward DMA implementation--done =
by ADI for
>>>>>>>>>   their IIO subsystem, to a driver that makes the FPGA/Radio
>>>>>>>>> "look" like a network device with an MTU of 9000.
>>>>>>>>>
>>>>>>>>> With an MTU that large, you should have no trouble with 512-bin
>>>>>>>>> FFTs.  But clearly, you are.
>>>>>>>>>
>>>>>>>>> The "int0" network interface exists only while there's a session
>>>>>>>>> with the radio, so it won't show up in "ifconfig" unless there's =
a session
>>>>>>>>> active,
>>>>>>>>>   and it indeed has an MTU of 9000.  So MTU isn't your problem.
>>>>>>>>> It's something else, and I'm not sure what at the moment.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> =D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 15:08, M=
arcus D. Leech <
>>>>>>>>> patchvonbraun@gmail.com>:
>>>>>>>>>
>>>>>>>>>> On 2021-08-29 7:17 a.m., Ivan Zahartchuk wrote:
>>>>>>>>>>
>>>>>>>>>> Thanks a lot. Here is my output with uhd_usrp_probe and my code:
>>>>>>>>>>
>>>>>>>>>> Could you share with us the output of:
>>>>>>>>>>
>>>>>>>>>> ip link
>>>>>>>>>>
>>>>>>>>>> or ifconfig
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> =D1=81=D0=B1, 28 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 20:19, =
Marcus D. Leech <
>>>>>>>>>> patchvonbraun@gmail.com>:
>>>>>>>>>>
>>>>>>>>>>> On 2021-08-28 10:49 a.m., Ivan Zahartchuk wrote:
>>>>>>>>>>>
>>>>>>>>>>> Tell me who I can turn to for help or how can I solve the probl=
em with the fact that I cannot set the number of FFT points> 256. I apologi=
ze for my persistence, but this is critical for me. Thank you for understan=
ding.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> Ivan, I've been poking around all morning try to find where
>>>>>>>>>>> there may be a limit.  I can't find it.  I'm hampered by not be=
ing an RFNOC
>>>>>>>>>>> expert.
>>>>>>>>>>>
>>>>>>>>>>> I have a query in to Ettus R&D, but it being the weekend, I
>>>>>>>>>>> don't expect any kind of answer until Monday.
>>>>>>>>>>>
>>>>>>>>>>> Could you share your Python code, and the output of
>>>>>>>>>>> uhd_usrp_probe on your E310?
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--00000000000023818c05ccec8250
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span class=3D"gmail-Y2IQFc" lang=3D"en">Hello. Please tell me =
how things are with my question? Perhaps I need some additional information=
?</span></pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">=D0=B2=D1=82, 14 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=
=B2 22:30, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-09-14 10:24 a.m., Rob Kossler
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Ivan,
        <div>If your issues are still the following: streaming works
          fine for FFT length 256, but causes streaming errors at FFT
          lengths 512 and above, the issue is very likely related to the
          packet length that the FFT block produces.=C2=A0=C2=A0</div>
        <div><br>
        </div>
        <div>The stock RFNoC FFT block from Ettus asserts TLAST on the
          final FFT sample, which makes the packet length equal to the
          FFT length.=C2=A0 For a 512 point FFT, this means that the number
          of bytes in a packet is 2048+header_bytes.=C2=A0 This is a proble=
m
          if the interface MTU is less than that (often at 1500).=C2=A0 So,
          the answer is to figure out how to get the interface MTU set
          to a larger value.=C2=A0 If that is not possible, then the answer
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
    But we&#39;ve already covered that territory--turns out there IS a bug
    in recent UHD with FFT and FIR (and other vector functions I think)
    lengths &gt; 256, and a bug<br>
    =C2=A0 has been raised.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 13, 2021 at 5:30
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div id=3D"gmail-m_-4775302119725055657gmail-m_369290414923=
5757776gmail-tw-target-text-container">
                  <pre id=3D"gmail-m_-4775302119725055657gmail-m_3692904149=
235757776gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span =
lang=3D"en">Tell me how to create a yaml file for such a graph correctly? I=
 tried like this but I get errors. I have not found such examples.</span></=
pre>
                </div>
                <div id=3D"gmail-m_-4775302119725055657gmail-m_369290414923=
5757776gmail-tw-target-rmn-container">
                  <pre id=3D"gmail-m_-4775302119725055657gmail-m_3692904149=
235757776gmail-tw-target-rmn" style=3D"text-align:left" dir=3D"ltr"><span>
</span></pre>
                </div>
              </div>
              <br>
            </blockquote>
            Please copy user-users on these e-mails.=C2=A0 Others may have
            better insights than myself on these things, and bringing in
            the wider<br>
            =C2=A0 community is always a good idea.<br>
            <br>
            The phrase &quot;but I get errors&quot; isn&#39;t terribly usef=
ul unless
            those errors are included in the problem report.=C2=A0 I MAY or
            MAY NOT be able<br>
            =C2=A0 to help, since I&#39;m not an RFNOC user or developer.=
=C2=A0 But
            without those errors available to the people you&#39;re asking
            for help,<br>
            =C2=A0 it&#39;s pretty tough to do ANYTHING.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 8 =D1=
=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2
                  02:13, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:<br=
>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>
                          <div id=3D"gmail-m_-4775302119725055657gmail-m_36=
92904149235757776gmail-m_856925364538229805gmail-tw-target">
                            <div id=3D"gmail-m_-4775302119725055657gmail-m_=
3692904149235757776gmail-m_856925364538229805gmail-kAz1tf">
                              <div id=3D"gmail-m_-4775302119725055657gmail-=
m_3692904149235757776gmail-m_856925364538229805gmail-tw-target-text-contain=
er">
                                <pre id=3D"gmail-m_-4775302119725055657gmai=
l-m_3692904149235757776gmail-m_856925364538229805gmail-tw-target-text" styl=
e=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">I am setting 256 points=
 FFT with the following parameters:
<span style=3D"color:rgb(114,115,122)">fft_amplitude </span>=3D uhd.libpyuh=
d.rfnoc.fft_magnitude.MAGNITUDE_SQUARED
<span style=3D"color:rgb(114,115,122)">fft_direction </span>=3D uhd.libpyuh=
d.rfnoc.fft_direction.FORWARD
<span style=3D"color:rgb(114,115,122)">fft_shift </span>=3D uhd.libpyuhd.rf=
noc.fft_shift.NORMAL
<span lang=3D"en">After that I do abs and display the data. Tell me how to =
do it better? And do I need to set a different type for the array which is =
passed to the recv function when setting Mag ** 2?</span></span></pre>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                    Actually, there IS a logpwr block in RFNOC.=C2=A0=C2=A0=
 I
                    don&#39;t know exactly what scaling strategy it uses.<b=
r>
                    <br>
                    If I wanted to get power estimates out of an RFNOC
                    FFT, I&#39;d have:<br>
                    <br>
                    FFT(with
                    MAG2)---&gt;MOVING_AVG---&gt;KEEP-ONE-IN-N=C2=A0=C2=A0 =
all
                    inside RFNOC, and then scale to my hearts content at
                    leisurely rates on the host.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80,=
 8 =D1=81=D0=B5=D0=BD=D1=82.
                          2021 =D0=B3. =D0=B2 00:43, Marcus D. Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gm=
ail.com</a>&gt;:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 2021-09-07 4:17 p.m., Ivan
                              Zahartchuk wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <pre id=3D"gmail-m_-4775302119725055657gmai=
l-m_3692904149235757776gmail-m_856925364538229805gmail-m_-42772789292026226=
64gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D=
"en">Hello. There is any information on my question. I also noticed that if=
 you take the data after the FFT, then the sensitivity drops very much. I s=
ee a -30 dBm signal but -60 dBm is no longer displayed.</span></pre>
                              </div>
                            </blockquote>
                            How are you scaling and displaying your FFT
                            output?=C2=A0 What options do you have set on
                            your FFT?=C2=A0 DO you have it using Mag**2, ho=
w
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
                                  &lt;<a href=3D"mailto:adray0001@gmail.com=
" target=3D"_blank">adray0001@gmail.com</a>&gt;:<br>
                                </div>
                                <blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
                                  <div dir=3D"ltr">
                                    <pre id=3D"gmail-m_-4775302119725055657=
gmail-m_3692904149235757776gmail-m_856925364538229805gmail-m_-4277278929202=
622664gmail-m_7838577010434833064gmail-tw-target-text" style=3D"text-align:=
left" dir=3D"ltr"><span lang=3D"en">Here is my script. I am trying to read =
different amounts of data from DDC and from FFT.
<span lang=3D"en">Are there any new statements on my question?</span></span=
></pre>
                                  </div>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr">=
=D1=87=D1=82,
                                      2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=
=B3. =D0=B2 10:06, Jonathon
                                      Pendlum &lt;<a href=3D"mailto:jonatho=
n.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;:<=
br>
                                    </div>
                                    <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                      <div dir=3D"ltr">Great, thanks. Can
                                        you also share your latest
                                        python script?
                                        <div><br>
                                        </div>
                                        <div>Jonathon</div>
                                      </div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Sep
                                          1, 2021 at 6:37 PM Ivan
                                          Zahartchuk &lt;<a href=3D"mailto:=
adray0001@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt;
                                          wrote:<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
                                          <div dir=3D"ltr">
                                            <pre id=3D"gmail-m_-47753021197=
25055657gmail-m_3692904149235757776gmail-m_856925364538229805gmail-m_-42772=
78929202622664gmail-m_7838577010434833064gmail-m_6532976554816249605gmail-m=
_5028201748648249325gmail-tw-target-text" style=3D"text-align:left" dir=3D"=
ltr"><span lang=3D"en">Yes, I can try it but next week. But I still wanted =
to do FFT on FPGA. And one more question. Is it possible to create two stre=
amers and read 256 samples one at a time and another 8192 for example? I wa=
nt to do FFT on one channel and start a stream with DDC for demodulation on=
 the other. What is possible?</span></pre>
                                          </div>
                                          <br>
                                          <div class=3D"gmail_quote">
                                            <div dir=3D"ltr" class=3D"gmail=
_attr">=D1=81=D1=80, 1
                                              =D1=81=D0=B5=D0=BD=D1=82. 202=
1 =D0=B3. =D0=B2 21:09,
                                              Jonathon Pendlum &lt;<a href=
=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@e=
ttus.com</a>&gt;:<br>
                                            </div>
                                            <blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
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
                                                  FFT. I&#39;m getting the
                                                  same &quot;Bad CHDR packe=
t&quot;
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
                                                <div dir=3D"ltr" class=3D"g=
mail_attr">On
                                                  Mon, Aug 30, 2021 at
                                                  3:46 PM Marcus D.
                                                  Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&g=
t;
                                                  wrote:<br>
                                                </div>
                                                <blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
                                                  <div>
                                                    <div>On 2021-08-30
                                                      2:30 p.m., Ivan
                                                      Zahartchuk wrote:<br>
                                                    </div>
                                                    <blockquote type=3D"cit=
e">
                                                      <div dir=3D"ltr"><br>
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
                                                    &quot;look&quot; like a
                                                    network device with
                                                    an MTU of 9000.<br>
                                                    <br>
                                                    With an MTU that
                                                    large, you should
                                                    have no trouble with
                                                    512-bin FFTs.=C2=A0 But
                                                    clearly, you are.<br>
                                                    <br>
                                                    The &quot;int0&quot; ne=
twork
                                                    interface exists
                                                    only while there&#39;s =
a
                                                    session with the
                                                    radio, so it won&#39;t
                                                    show up in
                                                    &quot;ifconfig&quot; un=
less
                                                    there&#39;s a session
                                                    active,<br>
                                                    =C2=A0 and it indeed ha=
s
                                                    an MTU of 9000.=C2=A0 S=
o
                                                    MTU isn&#39;t your
                                                    problem.=C2=A0 It&#39;s
                                                    something else, and
                                                    I&#39;m not sure what a=
t
                                                    the moment.<br>
                                                    <br>
                                                    <br>
                                                    <blockquote type=3D"cit=
e">
                                                      <div class=3D"gmail_q=
uote">
                                                        <div dir=3D"ltr" cl=
ass=3D"gmail_attr">=D0=BF=D0=BD,
                                                          30 =D0=B0=D0=B2=
=D0=B3. 2021
                                                          =D0=B3. =D0=B2 15=
:08,
                                                          Marcus D.
                                                          Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;:<br>
                                                        </div>
                                                        <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          2021-08-29
                                                          7:17 a.m.,
                                                          Ivan
                                                          Zahartchuk
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote type=
=3D"cite">
                                                          <div dir=3D"ltr">
                                                          <pre id=3D"gmail-=
m_-4775302119725055657gmail-m_3692904149235757776gmail-m_856925364538229805=
gmail-m_-4277278929202622664gmail-m_7838577010434833064gmail-m_653297655481=
6249605gmail-m_5028201748648249325gmail-m_911825999819262281gmail-m_-335974=
355785571641gmail-m_-2376322789871959447gmail-m_7479178677743032933gmail-tw=
-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Thank=
s a lot. Here is my output with uhd_usrp_probe and my code:</span></pre>
                                                          </div>
                                                          </blockquote>
                                                          Could you
                                                          share with us
                                                          the output of:<br=
>
                                                          <br>
                                                          ip link<br>
                                                          <br>
                                                          or ifconfig<br>
                                                          <br>
                                                          <br>
                                                          <blockquote type=
=3D"cite"><br>
                                                          <div class=3D"gma=
il_quote">
                                                          <div dir=3D"ltr" =
class=3D"gmail_attr">=D1=81=D0=B1, 28 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=
=B2 20:19, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br>
                                                          </div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          2021-08-28
                                                          10:49 a.m.,
                                                          Ivan
                                                          Zahartchuk
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote type=
=3D"cite">
                                                          <div dir=3D"ltr">
                                                          <pre id=3D"gmail-=
m_-4775302119725055657gmail-m_3692904149235757776gmail-m_856925364538229805=
gmail-m_-4277278929202622664gmail-m_7838577010434833064gmail-m_653297655481=
6249605gmail-m_5028201748648249325gmail-m_911825999819262281gmail-m_-335974=
355785571641gmail-m_-2376322789871959447gmail-m_7479178677743032933gmail-m_=
2248216012660293957gmail-tw-target-text" style=3D"text-align:left" dir=3D"l=
tr"><span lang=3D"en">Tell me who I can turn to for help or how can I solve=
 the problem with the fact that I cannot set the number of FFT points&gt; 2=
56. I apologize for my persistence, but this is critical for me. Thank you =
for understanding.</span></pre>
                                                          </div>
                                                          <br>
                                                          </blockquote>
                                                          Ivan, I&#39;ve
                                                          been poking
                                                          around all
                                                          morning try to
                                                          find where
                                                          there may be a
                                                          limit.=C2=A0 I
                                                          can&#39;t find
                                                          it.=C2=A0 I&#39;m
                                                          hampered by
                                                          not being an
                                                          RFNOC expert.<br>
                                                          <br>
                                                          I have a query
                                                          in to Ettus
                                                          R&amp;D, but
                                                          it being the
                                                          weekend, I
                                                          don&#39;t expect
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
                                                          on your E310?<br>
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
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000023818c05ccec8250--

--===============6316000048298325786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6316000048298325786==--
