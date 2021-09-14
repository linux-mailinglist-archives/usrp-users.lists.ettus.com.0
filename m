Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E1440B094
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 16:25:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45C58384F7E
	for <lists+usrp-users@lfdr.de>; Tue, 14 Sep 2021 10:25:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WeZM7Xrs";
	dkim-atps=neutral
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mm2.emwd.com (Postfix) with ESMTPS id DF266384844
	for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 10:24:21 -0400 (EDT)
Received: by mail-ot1-f49.google.com with SMTP id c42-20020a05683034aa00b0051f4b99c40cso18673441otu.0
        for <usrp-users@lists.ettus.com>; Tue, 14 Sep 2021 07:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nIn1zmiq2lQUb2xjZEf5Wq3S4VlIY4CPiedS8NTpOhY=;
        b=WeZM7XrsRzCM4W69lGryyb5UohwsLjiROgcZ7CmCwwazhyRmfRZien+JMRmZYS5N0W
         QW/cTtCf3+KIOPDdp7FHwShaClAYB9oKDk3NWC9uOGQKiI6CX68Y8vCRwz5S93vIXYoc
         XtFb/nkvdkaTupoHE5x/vjWnclZ1UyRZ8uC4Seqb86HjgFxq5hJHnuxyJDV7M1EoG1oY
         8m+myesh3B2ibIlBTnICGBL1doLwYSxTHEUJj5UQcKS1wJiWCFJfQltQPRqb3z/clqVx
         eK/Tug3BG9XZLA4rzoi0/y7fyzWdSwLggn4YlPBeZqgM3/QjbGvU+UID7KxFpp4FM7tv
         1qHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nIn1zmiq2lQUb2xjZEf5Wq3S4VlIY4CPiedS8NTpOhY=;
        b=t1qWuXpYbKFP8nChLTTngPr6297ZGTIvIdiQ/IuuzC9pET8SBivb5rtgiBuFBxbagC
         yraZnUGbvxXskEUhJTWpf20I/PQg5JxLAO8cFGkqws7kdf8pQ6i8lGhnyz9J1GxWfmG/
         JokaAq+aoeXJLp+aKBxe+br69u9pQkaRryANydnq7regvJDdjmxrm7x1p0ggrVYSxJ0X
         S7MZ06Sv1UckitYC8M+iz7RY+ytyRLMV++pc84lOID8VUNZlVMm4EJfPNUrrqH5Du+Vi
         C5ltAL66iEi1yRs6oLGfnqHssx2QNxcYcm9p52lHyWENud1metxFKU8gZh13fEA+XFh7
         3CGQ==
X-Gm-Message-State: AOAM531PD8YN1R7c4Xo+Ts5Xhe8pYUgob92SYbzP95YiqwKJL+bEuyNv
	UmwqQuiP0J/TqOVjTQOhPnYuhCbWZbmQ2T7aBfyTcb3bFpY=
X-Google-Smtp-Source: ABdhPJwz0BhKNOn2nSZZqkU0pzHq5q1qGgK+Bxp0t2JTA0oxe4DcGjK5bp/l1Bjz4RNyRJ/EtLTnAvA7+lLSlQr8610=
X-Received: by 2002:a05:6830:788:: with SMTP id w8mr15783368ots.235.1631629460821;
 Tue, 14 Sep 2021 07:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
 <a26f9e54-6a37-b0c2-690e-851be59dd7aa@gmail.com> <CAPRRyxu39Syg3qzWMqmSCLwwaJnwfBM+-eQj8Ccx+KjdH2GUdg@mail.gmail.com>
 <c07ce7bd-925c-7bb4-27df-a8b98f79ae7d@gmail.com> <CAPRRyxvi9-jNH72m8UEcbzmLvLkzJWYE0hVoENT1ZFqibVRHGA@mail.gmail.com>
 <b94b5e08-233d-46e2-501d-a18f3f2b3416@gmail.com> <CAL7q81vLuNuq8324djbG4_L7tgXojSDBExUsLxiPpEv_oh8-Jg@mail.gmail.com>
 <CAPRRyxtb__BVZXHUNW-bBwPz+yqLfbeyyq0dJ-BPE7y8MW=Mqw@mail.gmail.com>
 <CAL7q81tnm7_ZTOWVgRtSrOT173wFST4ZeA5CbrxW13mf_ECu5Q@mail.gmail.com>
 <CAPRRyxsLUrpPEtw0gJc7B3AKLSGovRFtoRCxb1+nV+6+HjnR0w@mail.gmail.com>
 <CAPRRyxv+KUkGff8s9x4hZfYBypEPt7vhZo3=nbQoJ8MKG8s4FQ@mail.gmail.com>
 <bcd84a06-1ee6-41eb-e446-6611932b60fa@gmail.com> <CAPRRyxvDfB3XYNovUAXH-trzVYXNNaf1rr_QZC4PqN4iq2hhUw@mail.gmail.com>
 <7ce1eab9-8b18-87fa-d4d1-12dda585a016@gmail.com> <CAPRRyxveESVEJPz9BBNzDNCaBHHSsjcEs+1Q3Bt8+Mv2RKSfig@mail.gmail.com>
 <846aae08-b14a-7b58-662d-d41fd71435c1@gmail.com>
In-Reply-To: <846aae08-b14a-7b58-662d-d41fd71435c1@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 14 Sep 2021 10:24:10 -0400
Message-ID: <CAB__hTQSENNuR1Hj4jRuUMbGbw1o+3gSKFmK-V9HgbtuLMbU8g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 74AOJNPUIQVURWHUTCTNDKR2WXWM25U3
X-Message-ID-Hash: 74AOJNPUIQVURWHUTCTNDKR2WXWM25U3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/74AOJNPUIQVURWHUTCTNDKR2WXWM25U3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4252609887611462251=="

--===============4252609887611462251==
Content-Type: multipart/alternative; boundary="0000000000006b244205cbf556c6"

--0000000000006b244205cbf556c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ivan,
If your issues are still the following: streaming works fine for FFT length
256, but causes streaming errors at FFT lengths 512 and above, the issue is
very likely related to the packet length that the FFT block produces.

The stock RFNoC FFT block from Ettus asserts TLAST on the final FFT sample,
which makes the packet length equal to the FFT length.  For a 512 point
FFT, this means that the number of bytes in a packet is 2048+header_bytes.
This is a problem if the interface MTU is less than that (often at 1500).
So, the answer is to figure out how to get the interface MTU set to a
larger value.  If that is not possible, then the answer is to modify the
FFT block so that the packet length is not dependent on the FFT size. For
example, the FFT block could assert TLAST every 256 samples, independent of
the actual FFT length.  There are old posts about this if you search the
archive.
Rob


On Mon, Sep 13, 2021 at 5:30 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-13 2:29 p.m., Ivan Zahartchuk wrote:
>
> Tell me how to create a yaml file for such a graph correctly? I tried lik=
e this but I get errors. I have not found such examples.
>
>
> Please copy user-users on these e-mails.  Others may have better insights
> than myself on these things, and bringing in the wider
>   community is always a good idea.
>
> The phrase "but I get errors" isn't terribly useful unless those errors
> are included in the problem report.  I MAY or MAY NOT be able
>   to help, since I'm not an RFNOC user or developer.  But without those
> errors available to the people you're asking for help,
>   it's pretty tough to do ANYTHING.
>
>
> =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 02:13, Marc=
us D. Leech <patchvonbraun@gmail.com>:
>
>> On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:
>>
>> I am setting 256 points FFT with the following parameters:fft_amplitude =
=3D uhd.libpyuhd.rfnoc.fft_magnitude.MAGNITUDE_SQUAREDfft_direction =3D uhd=
.libpyuhd.rfnoc.fft_direction.FORWARDfft_shift =3D uhd.libpyuhd.rfnoc.fft_s=
hift.NORMALAfter that I do abs and display the data. Tell me how to do it b=
etter? And do I need to set a different type for the array which is passed =
to the recv function when setting Mag ** 2?
>>
>> Actually, there IS a logpwr block in RFNOC.   I don't know exactly what
>> scaling strategy it uses.
>>
>> If I wanted to get power estimates out of an RFNOC FFT, I'd have:
>>
>> FFT(with MAG2)--->MOVING_AVG--->KEEP-ONE-IN-N   all inside RFNOC, and
>> then scale to my hearts content at leisurely rates on the host.
>>
>>
>>
>> =D1=81=D1=80, 8 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:43, Mar=
cus D. Leech <patchvonbraun@gmail.com>:
>>
>>> On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:
>>>
>>> Hello. There is any information on my question. I also noticed that if =
you take the data after the FFT, then the sensitivity drops very much. I se=
e a -30 dBm signal but -60 dBm is no longer displayed.
>>>
>>> How are you scaling and displaying your FFT output?  What options do yo=
u
>>> have set on your FFT?  DO you have it using Mag**2, how do you scale it
>>>   after that?
>>>
>>>
>>>
>>> =D1=81=D0=B1, 4 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 00:04, Iv=
an Zahartchuk <adray0001@gmail.com>:
>>>
>>>> Here is my script. I am trying to read different amounts of data from =
DDC and from FFT.Are there any new statements on my question?
>>>>
>>>>
>>>> =D1=87=D1=82, 2 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 10:06, J=
onathon Pendlum <
>>>> jonathon.pendlum@ettus.com>:
>>>>
>>>>> Great, thanks. Can you also share your latest python script?
>>>>>
>>>>> Jonathon
>>>>>
>>>>> On Wed, Sep 1, 2021 at 6:37 PM Ivan Zahartchuk <adray0001@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Yes, I can try it but next week. But I still wanted to do FFT on FPG=
A. And one more question. Is it possible to create two streamers and read 2=
56 samples one at a time and another 8192 for example? I want to do FFT on =
one channel and start a stream with DDC for demodulation on the other. What=
 is possible?
>>>>>>
>>>>>>
>>>>>> =D1=81=D1=80, 1 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 21:09,=
 Jonathon Pendlum <
>>>>>> jonathon.pendlum@ettus.com>:
>>>>>>
>>>>>>> Hi Ivan,
>>>>>>>
>>>>>>> Can you try running your script with the SPP set to 512 and without
>>>>>>> the FFT block, i.e. Radio -> Rx Streamer? This may be a general iss=
ue with
>>>>>>> SPP unrelated to the FFT. I'm getting the same "Bad CHDR packet" er=
ror on a
>>>>>>> different device with the FIR filter block, but it goes away when I=
 remove
>>>>>>> the block.
>>>>>>>
>>>>>>> Jonathon
>>>>>>>
>>>>>>> On Mon, Aug 30, 2021 at 3:46 PM Marcus D. Leech <
>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>
>>>>>>>> On 2021-08-30 2:30 p.m., Ivan Zahartchuk wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> Thanks. Still trying to work this out.  In UHD 4, the interface to
>>>>>>>> the FPGA changed from a straightforward DMA implementation--done b=
y ADI for
>>>>>>>>   their IIO subsystem, to a driver that makes the FPGA/Radio "look=
"
>>>>>>>> like a network device with an MTU of 9000.
>>>>>>>>
>>>>>>>> With an MTU that large, you should have no trouble with 512-bin
>>>>>>>> FFTs.  But clearly, you are.
>>>>>>>>
>>>>>>>> The "int0" network interface exists only while there's a session
>>>>>>>> with the radio, so it won't show up in "ifconfig" unless there's a=
 session
>>>>>>>> active,
>>>>>>>>   and it indeed has an MTU of 9000.  So MTU isn't your problem.
>>>>>>>> It's something else, and I'm not sure what at the moment.
>>>>>>>>
>>>>>>>>
>>>>>>>> =D0=BF=D0=BD, 30 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 15:08, Ma=
rcus D. Leech <
>>>>>>>> patchvonbraun@gmail.com>:
>>>>>>>>
>>>>>>>>> On 2021-08-29 7:17 a.m., Ivan Zahartchuk wrote:
>>>>>>>>>
>>>>>>>>> Thanks a lot. Here is my output with uhd_usrp_probe and my code:
>>>>>>>>>
>>>>>>>>> Could you share with us the output of:
>>>>>>>>>
>>>>>>>>> ip link
>>>>>>>>>
>>>>>>>>> or ifconfig
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> =D1=81=D0=B1, 28 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 20:19, M=
arcus D. Leech <
>>>>>>>>> patchvonbraun@gmail.com>:
>>>>>>>>>
>>>>>>>>>> On 2021-08-28 10:49 a.m., Ivan Zahartchuk wrote:
>>>>>>>>>>
>>>>>>>>>> Tell me who I can turn to for help or how can I solve the proble=
m with the fact that I cannot set the number of FFT points> 256. I apologiz=
e for my persistence, but this is critical for me. Thank you for understand=
ing.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Ivan, I've been poking around all morning try to find where ther=
e
>>>>>>>>>> may be a limit.  I can't find it.  I'm hampered by not being an =
RFNOC
>>>>>>>>>> expert.
>>>>>>>>>>
>>>>>>>>>> I have a query in to Ettus R&D, but it being the weekend, I don'=
t
>>>>>>>>>> expect any kind of answer until Monday.
>>>>>>>>>>
>>>>>>>>>> Could you share your Python code, and the output of
>>>>>>>>>> uhd_usrp_probe on your E310?
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006b244205cbf556c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ivan,<div>If your issues are still the following: strea=
ming works fine for FFT length 256, but causes streaming errors at FFT leng=
ths 512 and above, the issue is very likely related to the packet length th=
at the FFT block produces.=C2=A0=C2=A0</div><div><br></div><div>The stock R=
FNoC FFT block from Ettus asserts TLAST on the final FFT sample, which make=
s the packet length equal to the FFT length.=C2=A0 For a 512 point FFT, thi=
s means that the number of bytes in a packet is 2048+header_bytes.=C2=A0 Th=
is is a problem if the interface MTU is less than that (often at 1500).=C2=
=A0 So, the answer is to figure out how to get the interface MTU set to a l=
arger value.=C2=A0 If that is not possible, then the answer is to modify th=
e FFT block so that the packet length is not dependent on the FFT size. For=
 example, the FFT block could assert TLAST every 256 samples, independent o=
f the actual FFT length.=C2=A0 There are old posts about this if you search=
 the archive.</div><div>Rob</div><div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 13, 2021 at 5:3=
0 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-09-13 2:29 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div id=3D"gmail-m_3692904149235757776gmail-tw-target-text-containe=
r">
          <pre id=3D"gmail-m_3692904149235757776gmail-tw-target-text" style=
=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Tell me how to create a =
yaml file for such a graph correctly? I tried like this but I get errors. I=
 have not found such examples.</span></pre>
        </div>
        <div id=3D"gmail-m_3692904149235757776gmail-tw-target-rmn-container=
">
          <pre id=3D"gmail-m_3692904149235757776gmail-tw-target-rmn" style=
=3D"text-align:left" dir=3D"ltr"><span>
</span></pre>
        </div>
      </div>
      <br>
    </blockquote>
    Please copy user-users on these e-mails.=C2=A0 Others may have better
    insights than myself on these things, and bringing in the wider<br>
    =C2=A0 community is always a good idea.<br>
    <br>
    The phrase &quot;but I get errors&quot; isn&#39;t terribly useful unles=
s those
    errors are included in the problem report.=C2=A0 I MAY or MAY NOT be ab=
le<br>
    =C2=A0 to help, since I&#39;m not an RFNOC user or developer.=C2=A0 But=
 without
    those errors available to the people you&#39;re asking for help,<br>
    =C2=A0 it&#39;s pretty tough to do ANYTHING.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 8 =D1=81=D0=B5=
=D0=BD=D1=82. 2021 =D0=B3. =D0=B2 02:13,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-09-07 5:55 p.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div id=3D"gmail-m_3692904149235757776gmail-m_85692536453=
8229805gmail-tw-target">
                    <div id=3D"gmail-m_3692904149235757776gmail-m_856925364=
538229805gmail-kAz1tf">
                      <div id=3D"gmail-m_3692904149235757776gmail-m_8569253=
64538229805gmail-tw-target-text-container">
                        <pre id=3D"gmail-m_3692904149235757776gmail-m_85692=
5364538229805gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><s=
pan lang=3D"en">I am setting 256 points FFT with the following parameters:
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
            Actually, there IS a logpwr block in RFNOC.=C2=A0=C2=A0 I don&#=
39;t know
            exactly what scaling strategy it uses.<br>
            <br>
            If I wanted to get power estimates out of an RFNOC FFT, I&#39;d
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
                  00:43, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-09-07 4:17 p.m., Ivan Zahartchuk wrote:<br=
>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <pre id=3D"gmail-m_3692904149235757776gmail-m_85692=
5364538229805gmail-m_-4277278929202622664gmail-tw-target-text" style=3D"tex=
t-align:left" dir=3D"ltr"><span lang=3D"en">Hello. There is any information=
 on my question. I also noticed that if you take the data after the FFT, th=
en the sensitivity drops very much. I see a -30 dBm signal but -60 dBm is n=
o longer displayed.</span></pre>
                      </div>
                    </blockquote>
                    How are you scaling and displaying your FFT output?=C2=
=A0
                    What options do you have set on your FFT?=C2=A0 DO you
                    have it using Mag**2, how do you scale it<br>
                    =C2=A0 after that?<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite"><br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D0=B1,=
 4 =D1=81=D0=B5=D0=BD=D1=82.
                          2021 =D0=B3. =D0=B2 00:04, Ivan Zahartchuk &lt;<a=
 href=3D"mailto:adray0001@gmail.com" target=3D"_blank">adray0001@gmail.com<=
/a>&gt;:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <pre id=3D"gmail-m_3692904149235757776gmail-m_8=
56925364538229805gmail-m_-4277278929202622664gmail-m_7838577010434833064gma=
il-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">=
Here is my script. I am trying to read different amounts of data from DDC a=
nd from FFT.
<span lang=3D"en">Are there any new statements on my question?</span></span=
></pre>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">=D1=87=D1=
=82, 2
                              =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=B3. =D0=B2=
 10:06, Jonathon Pendlum
                              &lt;<a href=3D"mailto:jonathon.pendlum@ettus.=
com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;:<br>
                            </div>
                            <blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
                              <div dir=3D"ltr">Great, thanks. Can you also
                                share your latest python script?
                                <div><br>
                                </div>
                                <div>Jonathon</div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Wed, Sep 1, 2021 at 6:37 PM Ivan
                                  Zahartchuk &lt;<a href=3D"mailto:adray000=
1@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
                                  <div dir=3D"ltr">
                                    <pre id=3D"gmail-m_3692904149235757776g=
mail-m_856925364538229805gmail-m_-4277278929202622664gmail-m_78385770104348=
33064gmail-m_6532976554816249605gmail-m_5028201748648249325gmail-tw-target-=
text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Yes, I can tr=
y it but next week. But I still wanted to do FFT on FPGA. And one more ques=
tion. Is it possible to create two streamers and read 256 samples one at a =
time and another 8192 for example? I want to do FFT on one channel and star=
t a stream with DDC for demodulation on the other. What is possible?</span>=
</pre>
                                  </div>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr">=
=D1=81=D1=80,
                                      1 =D1=81=D0=B5=D0=BD=D1=82. 2021 =D0=
=B3. =D0=B2 21:09, Jonathon
                                      Pendlum &lt;<a href=3D"mailto:jonatho=
n.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;:<=
br>
                                    </div>
                                    <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                      <div dir=3D"ltr">Hi Ivan,
                                        <div><br>
                                        </div>
                                        <div>Can you try running your
                                          script with the SPP set to 512
                                          and without the FFT block,
                                          i.e. Radio -&gt; Rx Streamer?
                                          This may be a general issue
                                          with SPP unrelated to the FFT.
                                          I&#39;m getting the same &quot;Ba=
d CHDR
                                          packet&quot; error on a different
                                          device with the FIR filter
                                          block, but it goes away when I
                                          remove the block.</div>
                                        <div><br>
                                        </div>
                                        <div>Jonathon</div>
                                      </div>
                                      <br>
                                      <div class=3D"gmail_quote">
                                        <div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Aug
                                          30, 2021 at 3:46 PM Marcus D.
                                          Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                                          wrote:<br>
                                        </div>
                                        <blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
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
                                            =C2=A0 their IIO subsystem, to =
a
                                            driver that makes the
                                            FPGA/Radio &quot;look&quot; lik=
e a
                                            network device with an MTU
                                            of 9000.<br>
                                            <br>
                                            With an MTU that large, you
                                            should have no trouble with
                                            512-bin FFTs.=C2=A0 But clearly=
,
                                            you are.<br>
                                            <br>
                                            The &quot;int0&quot; network in=
terface
                                            exists only while there&#39;s a
                                            session with the radio, so
                                            it won&#39;t show up in
                                            &quot;ifconfig&quot; unless the=
re&#39;s a
                                            session active,<br>
                                            =C2=A0 and it indeed has an MTU
                                            of 9000.=C2=A0 So MTU isn&#39;t=
 your
                                            problem.=C2=A0 It&#39;s somethi=
ng
                                            else, and I&#39;m not sure what
                                            at the moment.<br>
                                            <br>
                                            <br>
                                            <blockquote type=3D"cite">
                                              <div class=3D"gmail_quote">
                                                <div dir=3D"ltr" class=3D"g=
mail_attr">=D0=BF=D0=BD,
                                                  30 =D0=B0=D0=B2=D0=B3. 20=
21 =D0=B3. =D0=B2
                                                  15:08, Marcus D. Leech
                                                  &lt;<a href=3D"mailto:pat=
chvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;:<br=
>
                                                </div>
                                                <blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
                                                  <div>
                                                    <div>On 2021-08-29
                                                      7:17 a.m., Ivan
                                                      Zahartchuk wrote:<br>
                                                    </div>
                                                    <blockquote type=3D"cit=
e">
                                                      <div dir=3D"ltr">
                                                        <pre id=3D"gmail-m_=
3692904149235757776gmail-m_856925364538229805gmail-m_-4277278929202622664gm=
ail-m_7838577010434833064gmail-m_6532976554816249605gmail-m_502820174864824=
9325gmail-m_911825999819262281gmail-m_-335974355785571641gmail-m_-237632278=
9871959447gmail-m_7479178677743032933gmail-tw-target-text" style=3D"text-al=
ign:left" dir=3D"ltr"><span lang=3D"en">Thanks a lot. Here is my output wit=
h uhd_usrp_probe and my code:</span></pre>
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
                                                    <blockquote type=3D"cit=
e"><br>
                                                      <div class=3D"gmail_q=
uote">
                                                        <div dir=3D"ltr" cl=
ass=3D"gmail_attr">=D1=81=D0=B1,
                                                          28 =D0=B0=D0=B2=
=D0=B3. 2021
                                                          =D0=B3. =D0=B2 20=
:19,
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
m_3692904149235757776gmail-m_856925364538229805gmail-m_-4277278929202622664=
gmail-m_7838577010434833064gmail-m_6532976554816249605gmail-m_5028201748648=
249325gmail-m_911825999819262281gmail-m_-335974355785571641gmail-m_-2376322=
789871959447gmail-m_7479178677743032933gmail-m_2248216012660293957gmail-tw-=
target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Tell m=
e who I can turn to for help or how can I solve the problem with the fact t=
hat I cannot set the number of FFT points&gt; 256. I apologize for my persi=
stence, but this is critical for me. Thank you for understanding.</span></p=
re>
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006b244205cbf556c6--

--===============4252609887611462251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4252609887611462251==--
