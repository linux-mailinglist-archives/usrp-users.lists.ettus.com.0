Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DBC18D628
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 18:45:53 +0100 (CET)
Received: from [::1] (port=50534 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFLiM-0007dj-J1; Fri, 20 Mar 2020 13:45:46 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41760)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jFLiJ-0007Rl-2Q
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 13:45:43 -0400
Received: by mail-oi1-f179.google.com with SMTP id b17so7360060oic.8
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 10:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=IMxit/ALysiYC9JMymEyrpgXIk6UI6e6ht4r1g/YzFA=;
 b=dXnEf5530M+Krzq4AyxfEdl6ffFqCfAHfCodcuB8Ce8U7jXTqtpy/uaLl5Pme8VmUy
 qZgYvx+To+X2AmUn3zYV9BWUM/8UWKAZmSmebV8dfaKQVRr/najHLPxE1+vs9r1XysWo
 e8xjM/3gLbdKrXyIBMdfBw9JwPyte3LbHdNFXW5wRTnhfgK0dUXliD58STz906Cen4lL
 QMl0+3Kr+YT/Z+mxyTb6JRVqCAxeTYCUa5VUDWEL+5McjOB+qcbYYNk8WrF7PPzNeKXq
 v7tkqG8G9sZ/B1jUTTI0RsKYrSk0z4cDE56vv8ZslftgRbCKUtMCKNDR7Sx+uaKndktF
 1Ssg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=IMxit/ALysiYC9JMymEyrpgXIk6UI6e6ht4r1g/YzFA=;
 b=k2HZzFo/wVXUM7d11S+UMIpH5g0DLj+EGZiE/3eZHvyr1+oIgHr5UTuPKg5V01PpR1
 DzF2itt5B40YewxBTLDjT8E/aBjjd3nyh9rpG1c09x+xhSZhYQir4MAQlhbx45rxhMmu
 T081E0MZ6sJz0fNOQavVxPaAKSBfl/MZp+Xw3SACR2puS6YTQT1M97J7qjkrghg1sWfB
 0i7qrNsTh+Z1N21MYo3K3Xk/6kTuboApuYtTMFuo3WD+QRiE+sMnTsElig0KB5/NTBbT
 lTFD2kxkJuQneSujjb03ZQuIFtU71hdl2GosmLGYUzhgcBP1wJmGhlyL9vWVjplbA8fo
 AuvA==
X-Gm-Message-State: ANhLgQ0vOsa8dwtn2CFQWQWc9ddzIS9Wpv/o8L9/FuAPx9Z0tmcIWS4z
 20XkovMzZpAFD0gCNGd52wIJlgPyRZtoahoNG8/dnQ==
X-Google-Smtp-Source: ADFU+vv6ysmqEfbkMBCC0caLDOE2WqsxlkdI8qqWS5C0mc/ViShVGk+6daiU5aTL/Kr2nkYQ+hjFyqfzv1xVR4GwPRQ=
X-Received: by 2002:aca:ef82:: with SMTP id n124mr7245135oih.73.1584726301723; 
 Fri, 20 Mar 2020 10:45:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <CAB__hTSCG9vJDyfos8Vo51uun6+GVO0z2MKiAnwB5RxbQroHug@mail.gmail.com>
 <trinity-25b958ae-2910-49fd-a252-cca35e698948-1584115895450@3c-app-gmx-bs64>
 <CAB__hTRpVTqng7XcOgrCe5yCYUNZf8ZJVwj-nu8ScZJuf9ctvw@mail.gmail.com>
 <trinity-67ab4cfd-a450-4253-8edf-2d22a808d058-1584575179099@3c-app-gmx-bap69>
 <CAB__hTRoRNft0M8VCFGDS0ytLGbq0Fz48Zych-U5UD3jcutNzA@mail.gmail.com>
 <trinity-bbe82f54-edda-4533-b4c8-9b1bde054edc-1584649222876@3c-app-gmx-bap79>
 <CAB__hTRvq+xojKA0-kB0-JJjOURf9ZLVURcAwyHxtt6_-J1_bg@mail.gmail.com>
 <CAB__hTRZCez=FerC_MUiyDMXoEb4LH+cgHqAUfoE859UUO0POg@mail.gmail.com>
 <CAB__hTTfEYVEQAZvVLfR1GJHyWfz_uwCTDREX+4vsHWHi1MpOw@mail.gmail.com>
 <CAB__hTSojeJRcHo899zVCqXQPA=f+DamUq06TA88xNVWE3SRyg@mail.gmail.com>
 <trinity-b354461c-be4f-4e66-9954-c96301c941ae-1584663388615@3c-app-gmx-bs55>
 <CAB__hTRA0w1PtReqjDwTRnmo8vF+hD1KUZkt1XdA_xmiFD635g@mail.gmail.com>
 <CAB__hTRBmcCMPmBDF2yOdShYDcd4r=xM6gzLWwkGRT0baRsRHg@mail.gmail.com>
In-Reply-To: <CAB__hTRBmcCMPmBDF2yOdShYDcd4r=xM6gzLWwkGRT0baRsRHg@mail.gmail.com>
Date: Fri, 20 Mar 2020 13:44:50 -0400
Message-ID: <CAB__hTSnwqCS4FZ-KeOH-cSN+cSt+ffbqwwzep8k9cuo-8QWRg@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>, usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="00000000000048416c05a14cd8a8"
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--00000000000048416c05a14cd8a8
Content-Type: multipart/alternative; boundary="00000000000048416805a14cd8a6"

--00000000000048416805a14cd8a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK.  Thinking about it a little more, I think that perhaps the tx-to-rx
phase measurement methodology was flawed.  So, maybe this is not any
issue.  I changed the Python (new version attached) to send the gnuradio Tx
signal source (which also drives Tx0 and Tx1) to one input of the
multiply_conjugate (replacing Rx1 which previously was the other input).
When I run, now the phase "walks", but always over the same range of
values.  When I retune Tx0 and Rx0, the "walk" resets but still walks over
the same range.  As to why the phase walks, I don't know the answer right
off.

On a separate topic, I noticed that your code does not synchronize the LO
setting.  This means that the RF phase between the channels could vary from
run to run.

On Fri, Mar 20, 2020 at 12:04 PM Rob Kossler <rkossler@nd.edu> wrote:

> Lukas,
> After looking at this a bit, I think that there is indeed an issue.  I
> think that it is possible to get consistent tx-to-tx phase results and
> consistent rx-to-rx phase results, but NOT consistent rx-to-tx phase
> results.  A few remarks:
>
>    - Setup
>    - 2-channel X310/UBX-160 with two external loopback RF cables (with
>       attenuation) such that Tx0=3D>Rx0 and Tx1=3D>Rx1 (I likely don't ev=
en need the
>       loopback cables because I could operate on just the leakage signal =
from
>       each channel, but I decided to use external cables).
>       - UHD 3.15.LTS and gnuradio 3.7.13.5.
>
>
>    - Methodology
>    - Transmit an identical waveform (1 MHz tone) out of both Tx ports
>       - Measure relative Rx phase by using a multiply_conjugate block for
>       the 2 Rx channels (see below for description of why I changed what =
you sent
>       me) with output connected to a complex_to_mag_phase block and subse=
quent
>       moving_average
>       - Use digital tuning (with timed commands) to toggle between 2 dsp
>       frequencies while noting the relative phase results
>       - Test cases
>    - Case 1: Verify rx-to-rx phase results by sending tune requests to
>       the 2 Rx channels (but sending nothing to the Tx channels)
>       - Case 2: Verify tx-to-tx phase results by sending tune requests to
>       the 2 Tx channels (but sending nothing to the Rx channels)
>       - Case 3: Verify rx-to-tx phase results by sending tune requests to
>       channel 0 Rx and Tx (but sending nothing to channel 1 Rx and Tx)
>       - Case 4: Verify rx-to-tx phase results by sending tune requests to
>       channel 1 Rx and Tx (but sending nothing to channel 0 Rx and Tx)
>
> Cases 1 and 2 show consistent results, but cases 3 and 4 do not. I cannot
> conceive of what the problem is. It is so perplexing that I hesitate to
> send this email because it seems I must be doing something wrong.  Perhap=
s
> there is a problem in the methodology above along with the test cases.
> But, it seems sound to me.
>
> The Rx block diagram you sent me does not match the Python code you sent.
> This threw me off for a while.  In your block diagram, the phase
> measurement is made from the division of the two low pass filter outputs.
> In the Python code you sent, the phase measurement uses only the first lo=
w
> pass filter output.  The reason this is important is that I suspected ear=
ly
> on that the problem might be related to your gnuradio signal_source used
> for IF downconversion.  This signal source is not synchronous with the US=
RP
> as you change USRP freqs. However, I figured that it wasn't a problem
> because it was "divided out".  But, since it is actually not divided out,=
I
> believe that this was providing misleading results.
>
> In the end, I just changed your code to add a "multiply_conjugate_cc"
> block with the two Rx channels as the two inputs.  This effectively uses
> one channel to downconvert the other and thus eliminates the need for the
> signal source in the Rx block diagram.  I then connected this
> multiply_conjugate directly to the complex_to_mag_phase.  You could
> simplify the code by removing the other multiply blocks, low pass filters=
,
> and divide since these are not used. Also, I put all of the functionality
> in the rxtx (together) button callback.  I did not really use the other
> buttons.  Attached is the modified code.
>
> Rob
>
> On Fri, Mar 20, 2020 at 2:38 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Lukas,
>> A few remarks:
>>
>>    - The 2nd code you sent works fine.  Thanks.
>>    - I'm not sure that starting/stopping as I do in my program is
>>    causing the issue.  The only reason I didn't continuously stream both=
 Rx
>>    and Tx like you do in gnuradio is because my software is not setup to=
 do
>>    that.
>>    - So, I still think it's possible that UHD can do the job with
>>    continuous streaming but perhaps there is still something in the gnur=
adio
>>    config that is not quite right.  But, I don't know what that is right=
 now.
>>    I need to think about this a bit....
>>
>> Rob
>>
>> On Thu, Mar 19, 2020 at 8:17 PM Lukas Haase <lukashaase@gmx.at> wrote:
>>
>>> Hi Rob,
>>>
>>> Sorry I really should have ran the python file before uploading. The
>>> issue was that I combined to files into one and forgot to remove the
>>> imported file.
>>> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/
>>>
>>>
>>> Thanks for reporting your results .... very interesting!
>>>
>>> Why do you think second mode makes sense to you? (assuming you are usin=
g
>>> timed commands to to retune TX+RX at the same time)
>>>
>>> In general, it seems to me that things are related to streaming
>>> start/stop. Maybe things are reset when streaming starts/ends but not w=
hen
>>> re-tuning?
>>>
>>> Maybe this is what Marcus was mentioning: resetting phase accumulator
>>> vs. "increment register is updated with the new phase increment"?
>>>
>>> MAYBE stopping/starting resets the phase accumulator to zero and just
>>> timed retuning doesn't reset anything. But still, my question is left w=
hy
>>> this would result in a random phase offset between DUC and DDC.
>>>
>>> Thanks again!!
>>> Lukas
>>>
>>>
>>> *Gesendet:* Donnerstag, 19. M=C3=A4rz 2020 um 19:16 Uhr
>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>> *Cc:* "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>>> using a timed command
>>> Lukas,
>>> I installed gnuradio and tried to run but encounter the following.  I'm
>>> guessing this is your block.
>>> Traceback (most recent call last):
>>>   File "test.py", line 25, in <module>
>>>     import epy_block_1
>>> ImportError: No module named epy_block_1
>>> Rob
>>>
>>> On Thu, Mar 19, 2020 at 6:28 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Ok.  False alarm.  I forgot about the dboard clock needing set to 20MH=
z
>>>> for RF freq below 1 GHz.  When I made this change, now I get consisten=
t
>>>> Rx-Tx phase for the first mode where both Tx and Rx start/stop at each=
 test.
>>>> Rob
>>>>
>>>> On Thu, Mar 19, 2020 at 6:10 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Ok. I modified my code to be more like yours...
>>>>>
>>>>>    - toggling dsp freq rather than LO freq
>>>>>    - LO at 900 MHz
>>>>>    - external connections Tx0 =3D> Splitter_1x2 =3D> both Rx0 and Rx1
>>>>>    - Previously, I was starting / stopping both Rx & Tx in between
>>>>>    each test.  Now, I added a mode where the Tx is on continuously, a=
nd the Rx
>>>>>    starts & stops for each test after the dsp freq change
>>>>>
>>>>> The results are the following:
>>>>>
>>>>>    - In the first mode where both Tx and Rx start/stop at each test,
>>>>>    I get consistent group delay (as measured by the correlation peak =
index)
>>>>>    for both Rx-Rx and Rx-Tx.  But for phase, the Rx-Rx phase is consi=
stent,
>>>>>    but the Rx-Tx phase seems random
>>>>>    - In the second mode where Tx is on continuously and I start/stop
>>>>>    Rx after each dsp freq change, the group delay is constant for Rx-=
Rx but
>>>>>    random for Rx-Tx.  The phase results are constant for Rx-Rx but ra=
ndom for
>>>>>    Rx-Tx.
>>>>>
>>>>> Regarding the 2nd mode, this makes sense to me.  But, for the 1st
>>>>> mode, I don't understand why the Rx-Tx phase seems random. Still thin=
king
>>>>> about it....
>>>>> Rob
>>>>>
>>>>> On Thu, Mar 19, 2020 at 4:35 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>>> Lukas,
>>>>>> Just before receiving your email, I ran the following with my custom
>>>>>> c++ & matlab software using X310/UBX-160 with the connections I desc=
ribed.
>>>>>> The following shows the output which is very consistent.  I used a 1=
00 tone
>>>>>> multi-tone waveform spread over 4 MHz bandwidth (using 5 MS/s sample=
 rate
>>>>>> on Tx and Rx).  Note the consistency of results as I toggled between=
 2
>>>>>> frequencies: 2450 and 2460 MHz.
>>>>>>
>>>>>> My method was the following:
>>>>>>
>>>>>>    - Tx waveform was 500 points long
>>>>>>    - Rx capture was 5000 points long
>>>>>>    - Compute cross-correlation (using Matlab xcorr) as follows:
>>>>>>    xcorr(rx0, conj(tx)) AND xcorr(rx0,conj(rx1))
>>>>>>    - Find the correlation peak (which was very pronounced) which
>>>>>>    shows the sample delay between the two signals.  Extract the phas=
e at the
>>>>>>    peak
>>>>>>
>>>>>> Oops, I just realized that I used a constant DSP freq (10 MHz) and I
>>>>>> changed the LO freq in my test.  I will try again with moving the DS=
P freq
>>>>>> instead.
>>>>>> Rob
>>>>>>
>>>>>> Test 1: freq =3D 2450.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.7
>>>>>> Test 2: freq =3D 2460.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.1
>>>>>> Test 3: freq =3D 2450.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>> Test 4: freq =3D 2460.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.6
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.0
>>>>>> Test 5: freq =3D 2450.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>> Test 6: freq =3D 2460.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.8
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.7
>>>>>> Test 7: freq =3D 2450.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.9
>>>>>> Test 8: freq =3D 2460.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>> Test 9: freq =3D 2450.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>> Test 10: freq =3D 2460.0 MHz
>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>> >>
>>>>>>
>>>>>>
>>>>>> On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase <lukashaase@gmx.at>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Rob,
>>>>>>>
>>>>>>> Yes, I confirm your conclusion.
>>>>>>>
>>>>>>>
>>>>>>>    - I calculate the relative phase by dividing the outputs of both
>>>>>>>    receivers. To understand better, note that I have an additional =
"IF stage"
>>>>>>>    in my own signal flow such that I exclude DC offset correction e=
tc. the
>>>>>>>    USRP may perform. This is the block diagram of the transmitter p=
art:
>>>>>>>    https://snipboard.io/YFgIKs.jpg . I send "exp(1j*1MHz*t) . This
>>>>>>>    shows the receiver part: https://snipboard.io/i9jLJg.jpg . I
>>>>>>>    multiply the received signal with exp(-1j*1MHz*t) and filter the=
m. Then I
>>>>>>>    divide both streams and take the phase part. I take a moving ave=
rage (for
>>>>>>>    flucatuations), add pi and display the number.
>>>>>>>    - https://snipboard.io/YFgIKs.jpg https://snipboard.io/YFgIKs.jp=
g
>>>>>>>    https://snipboard.io/YFgIKs.jpg That's so nice, thank you!! My
>>>>>>>    code is here: http://paste.ubuntu.com/p/MbCJfPGzYW/ . I'm not
>>>>>>>    sure if you have gnuradio(and QT) installed but if yes, simply "=
python2
>>>>>>>    switch_on_click.py" should do. Let me quickly elaborate how it w=
orks:
>>>>>>>       - Class "switch_on_click" implements a normal gnuradio flow
>>>>>>>       with USRP transmitter and receiver.
>>>>>>>       - It also uses a custom module together with buttons and a
>>>>>>>       probe block to call functions upon clicking on a button
>>>>>>>       - The callback functions are defined in class "blk"
>>>>>>>       - The most important is "def button_rtx_handler" on line 106
>>>>>>>       which is executed when user clicks on button "Switch RTX (tog=
ether)"
>>>>>>>    - Again, thank you for trying this out!! If it works, would you
>>>>>>>    mind sharing this code then? I may be able to check then where i=
t breaks on
>>>>>>>    my system
>>>>>>>    - I use 900 MHz as default center frequency (and "rf_freq").
>>>>>>>    When clicking, I jump between dsp_freq=3D0 and dsp_freq=3D500e3.=
 As to my
>>>>>>>    waveform, you can infer from my screenshots and code above: I am
>>>>>>>    transmitting and receiving a 1MHz waveform (which acts as an add=
itional "IF
>>>>>>>    stage"). The received signal is then downconcerted from 1MHz to =
DC. I use 5
>>>>>>>    MSsps sampling rate.
>>>>>>>
>>>>>>>
>>>>>>> Again, thank you SO much.
>>>>>>>
>>>>>>> Best,
>>>>>>> Lukas
>>>>>>>
>>>>>>>
>>>>>>> *Gesendet:* Donnerstag, 19. M=C3=A4rz 2020 um 10:43 Uhr
>>>>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>>>>> *Cc:* "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>> when using a timed command
>>>>>>> Hi Lukas,
>>>>>>> So, the conclusion is that your Rx0-to-Rx1 relative phase is nearly
>>>>>>> constant such that it seems that both Rx0/Rx1 are phase coherent an=
d
>>>>>>> Tx0/Tx1 are phase coherent.  But, phase from Tx-to-Rx is random.  P=
lease
>>>>>>> correct me if that is wrong.
>>>>>>>
>>>>>>> I have a few comments:
>>>>>>>
>>>>>>>    - How do you measure/calculate the relative phase?
>>>>>>>    - Can you send me the full Python code to look at?  As I
>>>>>>>    mentioned previously, I am not too good at gnuradio/Python, but =
I might be
>>>>>>>    able to spot something.
>>>>>>>    - As to your question, I always use synchronous measurements.
>>>>>>>    And, I'm confident that my Rx-to-Rx phase is coherent.  But, I h=
aven't
>>>>>>>    really looked at Tx-to-Rx in a while so I will do so later today=
.  Here are
>>>>>>>    the steps I plan to take:
>>>>>>>       1. Connect Tx0 to Rx1.  Note that there is a pretty strong
>>>>>>>       leakage signal from Tx0 to Rx0 so I don't really need to prov=
ide a physical
>>>>>>>       connection in order to get a signal on Rx0.  The signal atten=
uation in this
>>>>>>>       leakage path is approx 40 dB so it is not too much different =
than the
>>>>>>>       signal level I will receive on Rx1 if I use an external 30 dB=
 attenuator.
>>>>>>>       2. Set Rx and Tx frequency to freq 1
>>>>>>>       3. Measure and note the relative phase for Rx0/Tx0 and
>>>>>>>       Rx1/Tx0 for freq 1
>>>>>>>       4. Set Rx and Tx frequency to freq 2
>>>>>>>       5. Measure and note the relative phase for Rx0/Tx0 and
>>>>>>>       Rx1/Tx0 for freq 2
>>>>>>>       6. Repeat steps 2-5 a few times to ensure that the
>>>>>>>       measurements are repeatable
>>>>>>>    - Questions: what should I use for freq 1 and freq 2?  What
>>>>>>>    waveform are you transmitting?  What sample rates for Tx and Rx?
>>>>>>>
>>>>>>> Rob
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users <
>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>
>>>>>>>> Hi Rob,
>>>>>>>>
>>>>>>>> I think the issue is really having two usrp_multi devices with
>>>>>>>> timed commands and same timestmap or similar. From your tests belo=
w:
>>>>>>>>
>>>>>>>> 1.) I can *confirm *that the relative phase between two RX in your
>>>>>>>> suggested test is always the same! In fact, it is always 4.56 rad,=
 even
>>>>>>>> across restarts and for different frequencies! That somewhat makes=
 sense
>>>>>>>> because the phase offset is now only dependent on the difference b=
etween
>>>>>>>> the two channels (fixed) and cable lengths from the splitter (fixe=
d). I
>>>>>>>> verified by removing the timed command on usrp source, the phase o=
ffset
>>>>>>>> becomes random after each retune. Of course, this is independent o=
f TX
>>>>>>>> tuning (timed vs. not). For reference, this is the code used:
>>>>>>>>
>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NON=
E
>>>>>>>>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY_MA=
NUAL
>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NON=
E
>>>>>>>>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY_MA=
NUAL
>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>
>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>
>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx)          #=
 TX
>>>>>>>>         res2 =3D usrp_source.set_center_freq(tune_req_rx, 0)  #RX1
>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 1)  #RX2
>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>
>>>>>>>> 2.) I also tried your second suggestion. Before reading on, you
>>>>>>>> wanna guess what the outcome is?
>>>>>>>> I connected "TX/RX" to "RX2" on UBX #1 (TX1 --> RX1) and "TX/RX" t=
o
>>>>>>>> "RX2" on UBX #2 (TX2 --> RX2). In absence of a second 30dB attenua=
tor I
>>>>>>>> used two antennas closely spaced together. For reference, my code =
looks now
>>>>>>>> like:
>>>>>>>>
>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NON=
E
>>>>>>>>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY_MA=
NUAL
>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NON=
E
>>>>>>>>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY_MA=
NUAL
>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>
>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>
>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx, 0)     # T=
X1
>>>>>>>>         res2 =3D usrp_sink.set_center_freq(tune_req_tx, 1)     # T=
X2
>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 0) # RX1
>>>>>>>>         res4 =3D usrp_source.set_center_freq(tune_req_rx, 1) # RX2
>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>
>>>>>>>> I again look at the *relative phase* of RX1 and RX2 (obtained by
>>>>>>>> dividing the two) and guess what: Also now the relative phase stay=
s
>>>>>>>> constant! (This time it actually slightly varies from 3.0 rad to 3=
.7 rad
>>>>>>>> between two different frequencies).
>>>>>>>> What does that mean? I think it means that TX must be tuned
>>>>>>>> coherently and RX must be tuned coherently, i.e., timed commands g=
enerally
>>>>>>>> work for multiple TX's and multiple RX's *individually*. Do I get
>>>>>>>> that right?
>>>>>>>>
>>>>>>>> What doesn't seem to work is RX+TX *together*.
>>>>>>>>
>>>>>>>> I am very desperately asking if you had coherent TX+RX setup
>>>>>>>> working at any point or know somebody who did. It would be so much=
 worth to
>>>>>>>> know if this is something that never worked to begin with or if I'=
m just
>>>>>>>> doing something wrong. On the other hand I don't want to believe b=
eing the
>>>>>>>> only person on the planet having tried TX+RX phase coherent operat=
ion :-/
>>>>>>>>
>>>>>>>> Any other further suggestions on how to continue debugging with th=
e
>>>>>>>> above in mind would be helpful too.
>>>>>>>>
>>>>>>>> In my opinion there are two options left:
>>>>>>>> 1.) There is still a nondeterministic delay between the TX and RX
>>>>>>>> timed commands (to my understanding, even a constant delay would r=
esult in
>>>>>>>> coherent phase)
>>>>>>>> 2.) While the phase accumulators in RX are set to the same values
>>>>>>>> (and in TX as well), they may be set to a different, random value.
>>>>>>>>
>>>>>>>> However, I don't really know how to test these.
>>>>>>>>
>>>>>>>> Thanks,
>>>>>>>> Lukas
>>>>>>>>
>>>>>>>>
>>>>>>>> *Gesendet:* Freitag, 13. M=C3=A4rz 2020 um 12:27 Uhr
>>>>>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>>>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>> *Cc:* "Marcus D Leech" <patchvonbraun@gmail.com>, "
>>>>>>>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>> when using a timed command
>>>>>>>> Ok, great.  I am trying to think of ways to now add the phase
>>>>>>>> measurement.  Ideas...
>>>>>>>>
>>>>>>>>    - In order to get consistent phase, you would need to tune Rx
>>>>>>>>    and Tx DSP at the same time (rather than below where you are on=
ly tuning
>>>>>>>>    one of them).  So, assuming that this will not produce consiste=
nt phase
>>>>>>>>    results, then maybe try the following idea...
>>>>>>>>    - If you want to check just Rx DSP tuning (with fixed Tx DSP
>>>>>>>>    tuning), you could try a 2 channel Rx measurement where the Tx =
is split
>>>>>>>>    externally with 1:2 splitter in order to drive both Rx0 and Rx1=
.  Then,
>>>>>>>>    measure the relative phase Rx0/Rx1 and then tune back and forth=
 between two
>>>>>>>>    Rx DSP freqs to see if the relative phase on Rx remains constan=
t.  If so,
>>>>>>>>    this would give you good confidence that Rx DSP tuning is indee=
d happening
>>>>>>>>    synchronously
>>>>>>>>    - Assuming that the Rx IS synchronous in the step above
>>>>>>>>    (perhaps a bad assumption, but here goes), you could then check=
 TX DSP
>>>>>>>>    tuning (with fixed Rx DSP tuning) by using two Tx and two Rx ch=
annels with
>>>>>>>>    Tx0 connected to Rx0 and Tx1 connected to Rx1.  At this point w=
e are
>>>>>>>>    confident that Rx DSP tuning is synchronous so any synchronous =
misbehavior
>>>>>>>>    would imply a Tx sync problem.
>>>>>>>>
>>>>>>>> Sorry I can't think of better ideas.
>>>>>>>> Rob
>>>>>>>>
>>>>>>>> On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase <lukashaase@gmx.at>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi Rob,
>>>>>>>>>
>>>>>>>>> 1.) yes, works(*)
>>>>>>>>> 2.) yes, works(*)
>>>>>>>>>
>>>>>>>>> (*): qualitatively. I set the timed command to "get_current_time(=
)
>>>>>>>>> + uhd.time_spec(2.0)" and I see the chance 2 seconds after my cli=
ck on the
>>>>>>>>> screen. I cannot (do not know how) check if it actually happens a=
t
>>>>>>>>> sample-precicse location.
>>>>>>>>>
>>>>>>>>> Great, any ideas to simplify the setup would nice. I just don't
>>>>>>>>> know how I could continue to debugging the phase.
>>>>>>>>>
>>>>>>>>> Best,
>>>>>>>>> Luke
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr
>>>>>>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "
>>>>>>>>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>>> when using a timed command
>>>>>>>>>
>>>>>>>>> Thanks Lukas,
>>>>>>>>> I wanted to confirm that you did not have an older version of FPG=
A
>>>>>>>>> firmware because there was a DDC/DUC bug fix[
>>>>>>>>> https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5d=
faa0e69b1c6798771e6d]
>>>>>>>>> related to phase.  However, the version you provided with uhd_usr=
p_probe
>>>>>>>>> confirms that you have the bug fix included.  So, this is not the=
 problem.
>>>>>>>>>
>>>>>>>>> From what you said, I assume that you can successfully do the
>>>>>>>>> following:
>>>>>>>>> 1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only
>>>>>>>>> (do not change TX RF) and you can see the frequency change at the=
 specified
>>>>>>>>> command time (i.e., if you specify the command time 1 sec in the =
future,
>>>>>>>>> the change does not occur until 1 sec in the future).
>>>>>>>>> 2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you
>>>>>>>>> can see the frequency change at the specified command time.
>>>>>>>>>
>>>>>>>>> I am trying to simplify the issue by removing RF tuning completel=
y
>>>>>>>>> and by tuning only 1 of Rx/Tx at a time.  Perhaps this will help =
lead to
>>>>>>>>> the answer.
>>>>>>>>> Rob
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase <lukashaase@gmx.at
>>>>>>>>> [mailto:lukashaase@gmx.at]> wrote:Hi again Rob,
>>>>>>>>>
>>>>>>>>> Yes, I confirm:
>>>>>>>>>
>>>>>>>>> 1.) Finally I get the commands to execute at the same time (TX an=
d
>>>>>>>>> RX individually and both at the same time)
>>>>>>>>> 2.) Yes, the phase is random after each retune, even when I retun=
e
>>>>>>>>> back to the same frequency
>>>>>>>>> 3.) (2) is only true if it includes *DSP* retuning. With naalog
>>>>>>>>> retuning (+integer-N retuning) I get phase coherence, as expected=
.
>>>>>>>>>
>>>>>>>>> I actually expected the PLL retuning much more challenging than
>>>>>>>>> the DSP retuning but for some reason it seems to be the opposite.=
..
>>>>>>>>>
>>>>>>>>> Thanks,
>>>>>>>>> Lukas
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list
>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>>

--00000000000048416805a14cd8a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>OK.=C2=A0 Thinking about it a little more, I think th=
at perhaps the tx-to-rx phase measurement methodology was flawed.=C2=A0 So,=
 maybe this is not any issue.=C2=A0 I changed the Python (new version attac=
hed) to send the gnuradio Tx signal source (which also drives Tx0 and Tx1) =
to one input of the multiply_conjugate (replacing Rx1 which previously was =
the other input).=C2=A0 When I run, now the phase &quot;walks&quot;, but al=
ways over the same range of values.=C2=A0 When I retune Tx0 and Rx0, the &q=
uot;walk&quot; resets but still walks over the same range.=C2=A0 As to why =
the phase walks, I don&#39;t know the answer right off.</div><div><br></div=
><div>On a separate topic, I noticed that your code does not synchronize th=
e LO setting.=C2=A0 This means that the RF phase between the channels could=
 vary from run to run.<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020 at 12:04 PM Rob Kossle=
r &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Lukas,</div><div>After looking at this a bit, I think that there is inde=
ed an issue.=C2=A0 I think that it is possible to get consistent tx-to-tx p=
hase results and consistent rx-to-rx phase results, but NOT consistent rx-t=
o-tx phase results.=C2=A0 A few remarks:<br></div><div><ul><li>Setup<br></l=
i><ul><li>2-channel X310/UBX-160 with two external loopback RF cables (with=
 attenuation) such that Tx0=3D&gt;Rx0 and Tx1=3D&gt;Rx1 (I likely don&#39;t=
 even need the loopback cables because I could operate on just the leakage =
signal from each channel, but I decided to use external cables).=C2=A0 <br>=
</li><li>UHD 3.15.LTS and gnuradio 3.7.13.5. <br></li></ul></ul></div><div>=
<ul><li>Methodology<br></li><ul><li>Transmit an identical waveform (1 MHz t=
one) out of both Tx ports<br></li><li>Measure relative Rx phase by using a =
multiply_conjugate block for the 2 Rx channels (see below for description o=
f why I changed what you sent me) with output connected to a complex_to_mag=
_phase block and subsequent moving_average</li><li>Use digital tuning (with=
 timed commands) to toggle between 2 dsp frequencies while noting the relat=
ive phase results<br></li></ul><li>Test cases<br></li><ul><li>Case 1: Verif=
y rx-to-rx phase results by sending tune requests to the 2 Rx channels (but=
 sending nothing to the Tx channels)</li><li>Case 2: Verify tx-to-tx phase =
results by sending tune requests to the 2 Tx channels (but sending nothing =
to the Rx channels)</li><li>Case 3: Verify rx-to-tx phase results by sendin=
g tune requests to channel 0 Rx and Tx (but sending nothing to channel 1 Rx=
 and Tx)</li><li>Case 4: Verify rx-to-tx phase results by sending tune requ=
ests to channel 1 Rx and Tx (but sending nothing to channel 0 Rx and Tx)</l=
i></ul></ul><div>Cases 1 and 2 show consistent results, but cases 3 and 4 d=
o not. I cannot conceive of what the problem is. It is so perplexing that I=
 hesitate to send this email because it seems I must be doing something wro=
ng.=C2=A0 Perhaps there is a problem in the methodology above along with th=
e test cases.=C2=A0 But, it seems sound to me.<br></div><div><br></div></di=
v><div>The Rx block diagram you sent me does not match the Python code you =
sent.=C2=A0 This threw me off for a while.=C2=A0 In your block diagram, the=
 phase measurement is made from the division of the two low pass filter out=
puts.=C2=A0 In the Python code you sent, the phase measurement uses only th=
e first low pass filter output.=C2=A0 The reason this is important is that =
I suspected early on that the problem might be related to your gnuradio sig=
nal_source used for IF downconversion.=C2=A0 This signal source is not sync=
hronous with the USRP as you change USRP freqs. However, I figured that it =
wasn&#39;t a problem because it was &quot;divided out&quot;.=C2=A0 But, sin=
ce it is actually not divided out,I believe that this was providing mislead=
ing results.</div><div><br></div><div>In the end, I just changed your code =
to add a &quot;multiply_conjugate_cc&quot; block with the two Rx channels a=
s the two inputs.=C2=A0 This effectively uses one channel to downconvert th=
e other and thus eliminates the need for the signal source in the Rx block =
diagram.=C2=A0 I then connected this multiply_conjugate directly to the com=
plex_to_mag_phase.=C2=A0 You could simplify the code by removing the other =
multiply blocks, low pass filters, and divide since these are not used. Als=
o, I put all of the functionality in the rxtx (together) button callback.=
=C2=A0 I did not really use the other buttons.=C2=A0 Attached is the modifi=
ed code.<br></div><div><br></div><div>Rob<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020 at =
2:38 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank=
">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Lukas,</div><div=
>A few remarks:</div><div><ul><li>The 2nd code you sent works fine.=C2=A0 T=
hanks.</li><li>I&#39;m not sure that starting/stopping as I do in my progra=
m is causing the issue.=C2=A0 The only reason I didn&#39;t continuously str=
eam both Rx and Tx like you do in gnuradio is because my software is not se=
tup to do that.</li><li>So, I still think it&#39;s possible that UHD can do=
 the job with continuous streaming but perhaps there is still something in =
the gnuradio config that is not quite right.=C2=A0 But, I don&#39;t know wh=
at that is right now.=C2=A0 I need to think about this a bit....<br></li></=
ul><div>Rob<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Mar 19, 2020 at 8:17 PM Lukas Haase &lt;=
<a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v><div style=3D"font-family:Verdana;font-size:12px"><div>Hi Rob,</div>

<div>=C2=A0</div>

<div>Sorry I really should have ran the python file before uploading. The i=
ssue was that I combined to files into one and forgot to remove the importe=
d file.</div>

<div>Here is a new one (tested): <a href=3D"http://paste.ubuntu.com/p/VsGRm=
sbZQ5/" target=3D"_blank">http://paste.ubuntu.com/p/VsGRmsbZQ5/</a></div>

<div>=C2=A0</div>

<div>=C2=A0</div>

<div>Thanks for reporting your results .... very interesting!</div>

<div>=C2=A0</div>

<div>Why do you think second mode makes sense to you? (assuming you are usi=
ng timed commands to to retune TX+RX at the same time)</div>

<div>=C2=A0</div>

<div>In general, it seems to me that things are related to streaming start/=
stop. Maybe things are reset when streaming starts/ends but not when re-tun=
ing?</div>

<div>=C2=A0</div>

<div>Maybe this is what Marcus was mentioning: resetting phase accumulator =
vs. &quot;increment register is updated with the new phase increment&quot;?=
</div>

<div>=C2=A0</div>

<div>MAYBE stopping/starting resets the phase accumulator to zero and just =
timed retuning doesn&#39;t reset anything. But still, my question is left w=
hy this would result in a random phase offset between DUC and DDC.</div>

<div>=C2=A0</div>

<div>Thanks again!!</div>

<div>Lukas</div>

<div>=C2=A0
<div>=C2=A0
<div name=3D"quote" style=3D"margin:10px 5px 5px 10px;padding:10px 0px 10px=
 10px;border-left:2px solid rgb(195,217,229)">
<div style=3D"margin:0px 0px 10px"><b>Gesendet:</b>=C2=A0Donnerstag, 19. M=
=C3=A4rz 2020 um 19:16 Uhr<br>
<b>Von:</b>=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.=
edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>An:</b>=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gm=
x.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
<b>Cc:</b>=C2=A0&quot;<a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
;<br>
<b>Betreff:</b>=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX =
when using a timed command</div>

<div name=3D"quoted-content">
<div>
<div>Lukas,</div>

<div>I installed gnuradio and tried to run but encounter the following.=C2=
=A0 I&#39;m guessing this is your block.</div>

<div>Traceback (most recent call last):<br>
=C2=A0 File &quot;test.py&quot;, line 25, in &lt;module&gt;<br>
=C2=A0 =C2=A0 import epy_block_1<br>
ImportError: No module named epy_block_1</div>

<div>Rob</div>
</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Thu, Mar 19, 2020 at 6:28 PM Rob Kossler &lt;<=
a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;=
 wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div>Ok.=C2=A0 False alarm.=C2=A0 I forgot about the dboard clock needing s=
et to 20MHz for RF freq below 1 GHz.=C2=A0 When I made this change, now I g=
et consistent Rx-Tx phase for the first mode where both Tx and Rx start/sto=
p at each test.</div>

<div>Rob</div>
</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Thu, Mar 19, 2020 at 6:10 PM Rob Kossler &lt;<=
a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;=
 wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div>
<div><span style=3D"font-family:arial,sans-serif">Ok. I modified my code to=
 be more like yours...</span></div>

<div>
<ul>
	<li><span style=3D"font-family:arial,sans-serif">toggling dsp freq rather =
than LO freq</span></li>
	<li><span style=3D"font-family:arial,sans-serif">LO at 900 MHz</span></li>
	<li><span style=3D"font-family:arial,sans-serif">external connections Tx0 =
=3D&gt; Splitter_1x2 =3D&gt; both Rx0 and Rx1</span></li>
	<li><span style=3D"font-family:arial,sans-serif">Previously, I was startin=
g / stopping both Rx &amp; Tx in between each test.=C2=A0 Now, I added a mo=
de where the Tx is on continuously, and the Rx starts &amp; stops for each =
test after the dsp freq change</span></li>
</ul>

<div>The results are the following:</div>

<ul>
	<li>In the first mode where both Tx and Rx start/stop at each test, I get =
consistent group delay (as measured by the correlation peak index) for both=
 Rx-Rx and Rx-Tx.=C2=A0 But for phase, the Rx-Rx phase is consistent, but t=
he Rx-Tx phase seems random</li>
	<li>In the second mode where Tx is on continuously and I start/stop Rx aft=
er each dsp freq change, the group delay is constant for Rx-Rx but random f=
or Rx-Tx.=C2=A0 The phase results are constant for Rx-Rx but random for Rx-=
Tx.</li>
</ul>

<div>Regarding the 2nd mode, this makes sense to me.=C2=A0 But, for the 1st=
 mode, I don&#39;t understand=C2=A0why the Rx-Tx phase seems random. Still =
thinking about it....</div>

<div>Rob</div>
</div>
</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Thu, Mar 19, 2020 at 4:35 PM Rob Kossler &lt;<=
a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;=
 wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div>Lukas,</div>

<div>Just before receiving your email, I ran the following with my custom c=
++ &amp; matlab software using X310/UBX-160 with the connections I describe=
d.=C2=A0 The following shows the output which is very consistent.=C2=A0 I u=
sed a 100 tone multi-tone waveform spread over 4 MHz bandwidth (using 5 MS/=
s sample rate on Tx and Rx).=C2=A0 Note the consistency of results as I tog=
gled between 2 frequencies: 2450 and 2460 MHz.</div>

<div>=C2=A0</div>

<div>My method was the following:</div>

<div>
<ul>
	<li>Tx waveform was 500 points long</li>
	<li>Rx capture was 5000 points long</li>
	<li>Compute cross-correlation (using Matlab xcorr) as follows: xcorr(rx0, =
conj(tx)) AND xcorr(rx0,conj(rx1))</li>
	<li>Find the correlation peak (which was very pronounced) which shows the =
sample delay between the two signals.=C2=A0 Extract the phase at the peak</=
li>
</ul>

<div>Oops, I just realized that I used a constant DSP freq (10 MHz) and I c=
hanged the LO freq in my test.=C2=A0 I will try again with moving the DSP f=
req instead.</div>

<div>Rob</div>
</div>

<div>=C2=A0</div>

<div><span style=3D"font-family:monospace">Test 1: freq =3D 2450.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase -95.7<br>
Test 2: freq =3D 2460.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase 13.1<br>
Test 3: freq =3D 2450.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.7<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase -95.8<br>
Test 4: freq =3D 2460.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.6<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase 13.0<br>
Test 5: freq =3D 2450.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.7<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase -95.8<br>
Test 6: freq =3D 2460.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.8<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase 12.7<br>
Test 7: freq =3D 2450.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase -95.9<br>
Test 8: freq =3D 2460.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase 12.9<br>
Test 9: freq =3D 2450.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase -95.8<br>
Test 10: freq =3D 2460.0 MHz<br>
=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br>
=C2=A0 Rx0/Rx1 xcorr peak at index 115 with phase 12.9<br>
&gt;&gt; </span></div>

<div>=C2=A0</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase &lt;<=
a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>=
&gt; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div style=3D"font-family:Verdana;font-size:12px">
<div>Hi Rob,</div>

<div>=C2=A0</div>

<div>Yes, I confirm your conclusion.</div>

<div>=C2=A0</div>

<ul>
	<li>I calculate the relative phase by dividing the outputs of both receive=
rs. To understand better, note that I have an additional &quot;IF stage&quo=
t; in my own signal flow such that I exclude DC offset correction etc. the =
USRP may perform. This is the block diagram of the transmitter part: <a hre=
f=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blank">https://snipboard.i=
o/YFgIKs.jpg</a> . I send &quot;exp(1j*1MHz*t) . This shows the receiver pa=
rt: <a href=3D"https://snipboard.io/i9jLJg.jpg" target=3D"_blank">https://s=
nipboard.io/i9jLJg.jpg</a> . I multiply the received signal with exp(-1j*1M=
Hz*t) and filter them. Then I divide both streams and take the phase part. =
I take a moving average (for flucatuations), add pi and display the number.=
</li>
	<li><span style=3D"font:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg"=
 target=3D"_blank">https://snipboard.io/YFgIKs.jpg</a></span> <span style=
=3D"font:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blan=
k">https://snipboard.io/YFgIKs.jpg</a></span> <span style=3D"font:unset"><a=
 href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blank">https://snipboa=
rd.io/YFgIKs.jpg</a></span> That&#39;s so nice, thank you!! My code is here=
: <a href=3D"http://paste.ubuntu.com/p/MbCJfPGzYW/" target=3D"_blank">http:=
//paste.ubuntu.com/p/MbCJfPGzYW/</a> . I&#39;m not sure if you have gnuradi=
o(and QT) installed but if yes, simply &quot;python2 switch_on_click.py&quo=
t; should do. Let me quickly elaborate how it works:
	<ul>
		<li>Class &quot;switch_on_click&quot; implements a normal gnuradio flow w=
ith USRP transmitter and receiver.</li>
		<li>It also uses a custom module together with buttons and a probe block =
to call functions upon clicking on a button</li>
		<li>The callback functions are defined in class &quot;blk&quot;</li>
		<li>The most important is &quot;def button_rtx_handler&quot; on line 106 =
which is executed when user clicks on button &quot;Switch RTX (together)&qu=
ot;</li>
	</ul>
	</li>
	<li>Again, thank you for trying this out!! If it works, would you mind sha=
ring this code then? I may be able to check then where it breaks on my syst=
em</li>
	<li>I use 900 MHz as default center frequency (and &quot;rf_freq&quot;). W=
hen clicking, I jump between dsp_freq=3D0 and dsp_freq=3D500e3. As to my wa=
veform, you can infer from my screenshots and code above: I am transmitting=
 and receiving a 1MHz waveform (which acts as an additional &quot;IF stage&=
quot;). The received signal is then downconcerted from 1MHz to DC. I use 5 =
MSsps sampling rate.</li>
</ul>

<div>
<div>=C2=A0</div>

<div>Again, thank you SO much.</div>

<div>=C2=A0</div>

<div>Best,</div>

<div>Lukas</div>

<div>=C2=A0</div>

<div>=C2=A0
<div style=3D"margin:10px 5px 5px 10px;padding:10px 0px 10px 10px;border-le=
ft:2px solid rgb(195,217,229)">
<div style=3D"margin:0px 0px 10px"><b>Gesendet:</b>=C2=A0Donnerstag, 19. M=
=C3=A4rz 2020 um 10:43 Uhr<br>
<b>Von:</b>=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.=
edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>An:</b>=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gm=
x.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
<b>Cc:</b>=C2=A0&quot;<a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
;<br>
<b>Betreff:</b>=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX =
when using a timed command</div>

<div>
<div>
<div>Hi Lukas,
<div>So, the conclusion is that your Rx0-to-Rx1 relative phase is nearly co=
nstant such that it seems that both Rx0/Rx1 are phase coherent and Tx0/Tx1 =
are phase coherent.=C2=A0 But, phase from Tx-to-Rx is random.=C2=A0 Please =
correct me if that is wrong.=C2=A0=C2=A0</div>

<div>=C2=A0</div>

<div>I have a few comments:</div>

<div>
<ul>
	<li>How do you measure/calculate the relative phase?</li>
	<li>Can you send me the full Python code to look at?=C2=A0 As I mentioned =
previously, I am not too good at gnuradio/Python, but I might be able to sp=
ot something.</li>
	<li>As to your question, I always use synchronous measurements.=C2=A0 And,=
 I&#39;m confident that my Rx-to-Rx phase is coherent.=C2=A0 But, I haven&#=
39;t really looked at Tx-to-Rx in a while so I will do so later today.=C2=
=A0 Here are the steps I plan to take:
	<ol>
		<li>Connect Tx0 to Rx1.=C2=A0 Note that there is a pretty strong leakage =
signal from Tx0 to Rx0 so I don&#39;t really need to provide a physical con=
nection in order to get a signal on Rx0.=C2=A0 The signal attenuation in th=
is leakage path is approx 40 dB so it is not too much different than the si=
gnal level I will receive on Rx1 if I use an external 30 dB attenuator.</li=
>
		<li>Set Rx and Tx frequency to freq 1</li>
		<li>Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for freq =
1</li>
		<li>Set Rx and Tx frequency to freq 2</li>
		<li>Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for freq =
2</li>
		<li>Repeat steps 2-5 a few times to ensure that the measurements are repe=
atable</li>
	</ol>
	</li>
	<li>Questions: what should I use for freq 1 and freq 2?=C2=A0 What wavefor=
m are you transmitting?=C2=A0 What sample rates for Tx and Rx?</li>
</ul>

<div>Rob</div>
</div>

<div>=C2=A0</div>
</div>

<div>
<div>=C2=A0</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div style=3D"font-family:Verdana;font-size:12px">
<div>Hi Rob,</div>

<div>=C2=A0</div>

<div>I think the issue is really having two usrp_multi devices with timed c=
ommands and same timestmap or similar. From your tests below:</div>

<div>=C2=A0</div>

<div>1.) I can <b>confirm </b>that the relative phase between two RX in you=
r suggested test is always the same! In fact, it is always 4.56 rad, even a=
cross restarts and for different frequencies! That somewhat makes sense bec=
ause the phase offset is now only dependent on the difference between the t=
wo channels (fixed) and cable lengths from the splitter (fixed). I verified=
 by removing the timed command on usrp source, the phase offset becomes ran=
dom after each retune. Of course, this is independent of TX tuning (timed v=
s. not). For reference, this is the code used:</div>

<div>=C2=A0</div>

<div>
<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx =3D uhd.tune_re=
quest()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx.rf_freq_policy =3D u=
hd.tune_request.POLICY_NONE<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx.dsp_freq_policy =3D =
uhd.tune_request.POLICY_MANUAL<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx.dsp_freq =3D -dsp_fr=
eq</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx =3D uhd.tune_re=
quest()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx.rf_freq_policy =3D u=
hd.tune_request.POLICY_NONE<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx.dsp_freq_policy =3D =
uhd.tune_request.POLICY_MANUAL<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx.dsp_freq =3D dsp_fre=
q</div>

<div>=C2=A0</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 now =3D usrp_sink.get_time_=
now()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 when =3D now + uhd.time_spec(1.0=
)</div>
=C2=A0

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_sink.set_command_time(=
when)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_source.set_command_time(whe=
n)</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 res1 =3D usrp_sink.set_cent=
er_freq(tune_req_tx)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
# TX<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 res2 =3D usrp_source.set_center_=
freq(tune_req_rx, 0)=C2=A0 #RX1<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 res3 =3D usrp_source.set_center_=
freq(tune_req_rx, 1)=C2=A0 #RX2</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_sink.clear_command_tim=
e()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_source.clear_command_time()=
</div>
</div>

<div>=C2=A0
<div>
<div>2.) I also tried your second suggestion. Before reading on, you wanna =
guess what the outcome is?</div>

<div>I connected &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #1 (TX1 --&gt;=
 RX1) and &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #2 (TX2 --&gt; RX2). =
In absence of a second 30dB attenuator I used two antennas closely spaced t=
ogether. For reference, my code looks now like:</div>

<div>=C2=A0</div>

<div>
<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx =3D uhd.tune_re=
quest()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx.rf_freq_policy =3D u=
hd.tune_request.POLICY_NONE<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx.dsp_freq_policy =3D =
uhd.tune_request.POLICY_MANUAL<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_rx.dsp_freq =3D -dsp_fr=
eq</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx =3D uhd.tune_re=
quest()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx.rf_freq_policy =3D u=
hd.tune_request.POLICY_NONE<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx.dsp_freq_policy =3D =
uhd.tune_request.POLICY_MANUAL<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune_req_tx.dsp_freq =3D dsp_fre=
q</div>

<div>=C2=A0</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 now =3D usrp_sink.get_time_=
now()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 when =3D now + uhd.time_spec(1.0=
)</div>
=C2=A0

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_sink.set_command_time(=
when)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_source.set_command_time(whe=
n)</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 res1 =3D usrp_sink.set_cent=
er_freq(tune_req_tx, 0)=C2=A0 =C2=A0=C2=A0 # TX1<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 res2 =3D usrp_sink.set_center_fr=
eq(tune_req_tx, 1)=C2=A0=C2=A0=C2=A0=C2=A0 # TX2<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 res3 =3D usrp_source.set_center_=
freq(tune_req_rx, 0) # RX1<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 res4 =3D usrp_source.set_center_=
freq(tune_req_rx, 1) # RX2</div>

<div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_sink.clear_command_tim=
e()<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp_source.clear_command_time()=
</div>
</div>

<div>=C2=A0</div>

<div>I again look at the <b>relative phase</b> of RX1 and RX2 (obtained by =
dividing the two) and guess what: Also now the relative phase stays constan=
t! (This time it actually slightly varies from 3.0 rad to 3.7 rad between t=
wo different frequencies).</div>

<div>What does that mean? I think it means that TX must be tuned coherently=
 and RX must be tuned coherently, i.e., timed commands generally work for m=
ultiple TX&#39;s and multiple RX&#39;s <b>individually</b>. Do I get that r=
ight?</div>

<div>=C2=A0</div>

<div>What doesn&#39;t seem to work is RX+TX <b>together</b>.</div>

<div>=C2=A0</div>

<div>I am very desperately asking if you had coherent TX+RX setup working a=
t any point or know somebody who did. It would be so much worth to know if =
this is something that never worked to begin with or if I&#39;m just doing =
something wrong. On the other hand I don&#39;t want to believe being the on=
ly person on the planet having tried TX+RX phase coherent operation :-/</di=
v>

<div>=C2=A0</div>
Any other further suggestions on how to continue debugging with the above i=
n mind would be helpful too.

<div>=C2=A0</div>

<div>In my opinion there are two options left:</div>

<div>1.) There is still a nondeterministic delay between the TX and RX time=
d commands (to my understanding, even a constant delay would result in cohe=
rent phase)</div>

<div>2.) While the phase accumulators in RX are set to the same values (and=
 in TX as well), they may be set to a different, random value.</div>

<div>=C2=A0</div>

<div>However, I don&#39;t really know how to test these.</div>

<div>=C2=A0</div>

<div>Thanks,</div>

<div>Lukas</div>

<div>=C2=A0</div>

<div>=C2=A0</div>

<div style=3D"margin:10px 5px 5px 10px;padding:10px 0px 10px 10px;border-le=
ft:2px solid rgb(195,217,229)">
<div style=3D"margin:0px 0px 10px"><b>Gesendet:</b>=C2=A0Freitag, 13. M=C3=
=A4rz 2020 um 12:27 Uhr<br>
<b>Von:</b>=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.=
edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>An:</b>=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gm=
x.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
<b>Cc:</b>=C2=A0&quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;, &quot;<a =
href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lis=
ts.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Betreff:</b>=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX =
when using a timed command</div>

<div>
<div>
<div>Ok, great.=C2=A0 I am trying to think of ways to now add the phase mea=
surement.=C2=A0 Ideas...</div>

<div>
<ul>
	<li>In order to get consistent phase, you would need to tune Rx and Tx DSP=
 at the same time (rather than below where you are only tuning one of them)=
.=C2=A0 So, assuming that this will not produce consistent phase results, t=
hen maybe try the following idea...</li>
	<li>If you want to check just Rx DSP tuning (with fixed Tx DSP tuning), yo=
u could try a 2 channel Rx measurement where the Tx is split externally wit=
h 1:2 splitter in order to drive both Rx0 and Rx1.=C2=A0 Then, measure the =
relative phase Rx0/Rx1 and then tune back and forth between two Rx DSP freq=
s to see if the relative phase on Rx remains constant.=C2=A0 If so, this wo=
uld give you good confidence that Rx DSP tuning is indeed happening synchro=
nously</li>
	<li>Assuming that the Rx IS synchronous in the step above (perhaps a bad a=
ssumption, but here goes), you could then check TX DSP tuning (with fixed R=
x DSP tuning) by using two Tx and two Rx channels with Tx0 connected to Rx0=
 and Tx1 connected to Rx1.=C2=A0 At this point we are confident that Rx DSP=
 tuning is synchronous so any synchronous misbehavior would imply a Tx sync=
 problem.</li>
</ul>

<div>Sorry I can&#39;t think of better ideas.=C2=A0=C2=A0</div>

<div>Rob</div>
</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase &lt;=
<a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a=
>&gt; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi Rob,<br>
<br>
1.) yes, works(*)<br>
2.) yes, works(*)<br>
<br>
(*): qualitatively. I set the timed command to &quot;get_current_time() + u=
hd.time_spec(2.0)&quot; and I see the chance 2 seconds after my click on th=
e screen. I cannot (do not know how) check if it actually happens at sample=
-precicse location.<br>
<br>
Great, any ideas to simplify the setup would nice. I just don&#39;t know ho=
w I could continue to debugging the phase.<br>
<br>
Best,<br>
Luke<br>
<br>
<br>
Gesendet:=C2=A0Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr<br>
Von:=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.edu" ta=
rget=3D"_blank">rkossler@nd.edu</a>&gt;<br>
An:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
Cc:=C2=A0&quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;, &quot;<a href=3D=
"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettu=
s.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX when us=
ing a timed command<br>
<br>
Thanks Lukas,<br>
I wanted to confirm that you did not have an older version of FPGA firmware=
 because there was a DDC/DUC bug fix[<a href=3D"https://github.com/EttusRes=
earch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d" target=3D"_blan=
k">https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69=
b1c6798771e6d</a>] related to phase.=C2=A0 However, the version you provide=
d with uhd_usrp_probe confirms that you have the bug fix included.=C2=A0 So=
, this is not the problem.=C2=A0<br>
=C2=A0<br>
From what you said, I assume that you can successfully do the following:<br=
>
1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not cha=
nge TX RF) and you can see the frequency change at the specified command ti=
me (i.e., if you specify the command time 1 sec in the future, the change d=
oes not occur until 1 sec in the future).<br>
2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can see t=
he frequency change at the specified command time.<br>
=C2=A0<br>
I am trying to simplify the issue by removing RF tuning completely and by t=
uning only 1 of Rx/Tx at a time.=C2=A0 Perhaps this will help lead to the a=
nswer.<br>
Rob<br>
=C2=A0<br>
=C2=A0=C2=A0<br>
<br>
On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase &lt;<a href=3D"mailto:lukashaa=
se@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto=
:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt; wrote:Hi a=
gain Rob,<br>
<br>
Yes, I confirm:<br>
<br>
1.) Finally I get the commands to execute at the same time (TX and RX indiv=
idually and both at the same time)<br>
2.) Yes, the phase is random after each retune, even when I retune back to =
the same frequency<br>
3.) (2) is only true if it includes *DSP* retuning. With naalog retuning (+=
integer-N retuning) I get phase coherence, as expected.<br>
<br>
I actually expected the PLL retuning much more challenging than the DSP ret=
uning but for some reason it seems to be the opposite...<br>
<br>
Thanks,<br>
Lukas<br>
=C2=A0<br>
=C2=A0=C2=A0<br>
=C2=A0</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a></blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div></div></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--00000000000048416805a14cd8a6--
--00000000000048416c05a14cd8a8
Content-Type: text/x-python; charset="US-ASCII"; name="test2.py"
Content-Disposition: attachment; filename="test2.py"
Content-Transfer-Encoding: base64
Content-ID: <f_k80gzs4q0>
X-Attachment-Id: f_k80gzs4q0

IyEvdXNyL2Jpbi9lbnYgcHl0aG9uMgojIC0qLSBjb2Rpbmc6IHV0Zi04IC0qLQoKaWYgX19uYW1l
X18gPT0gJ19fbWFpbl9fJzoKICAgIGltcG9ydCBjdHlwZXMKICAgIGltcG9ydCBzeXMKICAgIGlm
IHN5cy5wbGF0Zm9ybS5zdGFydHN3aXRoKCdsaW51eCcpOgogICAgICAgIHRyeToKICAgICAgICAg
ICAgeDExID0gY3R5cGVzLmNkbGwuTG9hZExpYnJhcnkoJ2xpYlgxMS5zbycpCiAgICAgICAgICAg
IHgxMS5YSW5pdFRocmVhZHMoKQogICAgICAgIGV4Y2VwdDoKICAgICAgICAgICAgcHJpbnQgIldh
cm5pbmc6IGZhaWxlZCB0byBYSW5pdFRocmVhZHMoKSIKCmZyb20gUHlRdDQgaW1wb3J0IFF0CmZy
b20gZ251cmFkaW8gaW1wb3J0IGFuYWxvZwpmcm9tIGdudXJhZGlvIGltcG9ydCBibG9ja3MKZnJv
bSBnbnVyYWRpbyBpbXBvcnQgZW5nX25vdGF0aW9uCmZyb20gZ251cmFkaW8gaW1wb3J0IGZpbHRl
cgpmcm9tIGdudXJhZGlvIGltcG9ydCBncgpmcm9tIGdudXJhZGlvIGltcG9ydCBxdGd1aQpmcm9t
IGdudXJhZGlvIGltcG9ydCB1aGQKZnJvbSBnbnVyYWRpby5lbmdfb3B0aW9uIGltcG9ydCBlbmdf
b3B0aW9uCmZyb20gZ251cmFkaW8uZmlsdGVyIGltcG9ydCBmaXJkZXMKZnJvbSBvcHRwYXJzZSBp
bXBvcnQgT3B0aW9uUGFyc2VyCmltcG9ydCBzaXAKaW1wb3J0IHN5cwppbXBvcnQgdGhyZWFkaW5n
CmltcG9ydCB0aW1lCmZyb20gZ251cmFkaW8gaW1wb3J0IHF0Z3VpCgoKY2xhc3MgZXB5X2Jsb2Nr
XzEoZ3Iuc3luY19ibG9jayk6ICAjIG90aGVyIGJhc2UgY2xhc3NlcyBhcmUgYmFzaWNfYmxvY2ss
IGRlY2ltX2Jsb2NrLCBpbnRlcnBfYmxvY2sKICAgICIiIkVtYmVkZGVkIFB5dGhvbiBCbG9jayBl
eGFtcGxlIC0gYSBzaW1wbGUgbXVsdGlwbHkgY29uc3QiIiIKCiAgICBkZWYgX19pbml0X18oc2Vs
Zik6ICAjIG9ubHkgZGVmYXVsdCBhcmd1bWVudHMgaGVyZQogICAgICAgICIiImFyZ3VtZW50cyB0
byB0aGlzIGZ1bmN0aW9uIHNob3cgdXAgYXMgcGFyYW1ldGVycyBpbiBHUkMiIiIKICAgICAgICBn
ci5zeW5jX2Jsb2NrLl9faW5pdF9fKAogICAgICAgICAgICBzZWxmLAogICAgICAgICAgICBuYW1l
PSdCdXR0b25zIENhbGxiYWNrJywgICAjIHdpbGwgc2hvdyB1cCBpbiBHUkMKICAgICAgICAgICAg
aW5fc2lnPU5vbmUsCiAgICAgICAgICAgIG91dF9zaWc9Tm9uZQogICAgICAgICkKCiAgICAgICAg
c2VsZi5sYXN0X3N0YXRlMSA9IEZhbHNlCiAgICAgICAgc2VsZi5sYXN0X3N0YXRlMiA9IEZhbHNl
CiAgICAgICAgc2VsZi5sYXN0X3N0YXRlMyA9IEZhbHNlCiAgICAgICAgc2VsZi5sYXN0X3N0YXRl
NCA9IEZhbHNlCiAgICAgICAgc2VsZi5sYXN0X3N0YXRlNSA9IEZhbHNlCgogICAgICAgIHNlbGYu
cmZfZnJlcXMgPSBbIDkwMGU2ICwgOTAzZTYgXQogICAgICAgIHNlbGYuZHNwX2ZyZXFzID0gWyA1
MDBlMywgMCBdCiAgICAgICAgc2VsZi5sYXN0X2ZyZXExID0gMAogICAgICAgIHNlbGYubGFzdF9m
cmVxMiA9IDAKICAgICAgICBzZWxmLmxhc3RfZnJlcTMgPSAwICMgUlRYCgogICAgICAgICMgaHR0
cHM6Ly9saXN0cy5nbnUub3JnL2FyY2hpdmUvaHRtbC9kaXNjdXNzLWdudXJhZGlvLzIwMTItMTAv
bXNnMDAyNjMuaHRtbAogICAgICAgICMgaHR0cHM6Ly9naXRodWIuY29tL2dudXJhZGlvL2dudXJh
ZGlvL2lzc3Vlcy8xMTk5CiAgICAgICAgIyBodHRwczovL2dudXJhZGlvLmJsb2dzcG90LmNvbS8y
MDE1LzA2L3JlLWRpc2N1c3MtZ251cmFkaW8tcHJvYmxlbS13aXRoLXNlbmRfNC5odG1sCiAgICAg
ICAgIyBodHRwczovL3ByZXRhbHguc3lzbW9jb20uZGUvbWVkaWEvRnJlcXVlbmN5X2hvcHBpbmdf
Zm9yX1NEUl9iYXNlZF9HU01fbW9iaWxlX3N0YXRpb24ucGRmCiAgICAgICAgIyBodHRwczovL2xp
c3RzLmdudS5vcmcvYXJjaGl2ZS9odG1sL2Rpc2N1c3MtZ251cmFkaW8vMjAxNi0wNi9tc2cwMDE5
Ny5odG1sCiAgICAgICAgIyBodHRwOi8vZXR0dXMuODA5OTcueDYubmFiYmxlLmNvbS9VU1JQLXVz
ZXJzLURpc2FibGluZy1DT1JESUMtdGQ2NTkyLmh0bWwjYTY1OTUKICAgICAgICAjIGh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vcGlwZXJtYWlsL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tLzIwMTct
SnVuZS8wNTMyMDguaHRtbAoKICAgIGRlZiBidXR0b25zX2NhbGxiYWNrKHNlbGYsIHN0YXRlMSwg
c3RhdGUyLCBzdGF0ZTMsIHN0YXRlNCwgc3RhdGU1LCB1c3JwX3NvdXJjZSwgdXNycF9zaW5rKToK
ICAgICAgICBpZiBzdGF0ZTEgaXMgbm90IHNlbGYubGFzdF9zdGF0ZTEgYW5kIHN0YXRlMSA9PSBU
cnVlOgogICAgICAgICAgICBzZWxmLmJ1dHRvbl90eF9oYW5kbGVyKHVzcnBfc291cmNlLCB1c3Jw
X3NpbmspCiAgICAgICAgaWYgc3RhdGUyIGlzIG5vdCBzZWxmLmxhc3Rfc3RhdGUyIGFuZCBzdGF0
ZTIgPT0gVHJ1ZToKICAgICAgICAgICAgc2VsZi5idXR0b25fcnhfaGFuZGxlcih1c3JwX3NvdXJj
ZSwgdXNycF9zaW5rKQogICAgICAgIGlmIHN0YXRlMyBpcyBub3Qgc2VsZi5sYXN0X3N0YXRlMyBh
bmQgc3RhdGUzID09IFRydWU6CiAgICAgICAgICAgIHNlbGYuYnV0dG9uX3N0YXJ0X2hhbmRsZXIo
dXNycF9zb3VyY2UsIHVzcnBfc2luaykKICAgICAgICBpZiBzdGF0ZTQgaXMgbm90IHNlbGYubGFz
dF9zdGF0ZTQgYW5kIHN0YXRlNCA9PSBUcnVlOgogICAgICAgICAgICBzZWxmLmJ1dHRvbl90eF9o
YW5kbGVyKHVzcnBfc291cmNlLCB1c3JwX3NpbmspCiAgICAgICAgICAgIHNlbGYuYnV0dG9uX3J4
X2hhbmRsZXIodXNycF9zb3VyY2UsIHVzcnBfc2luaykKICAgICAgICBpZiBzdGF0ZTUgaXMgbm90
IHNlbGYubGFzdF9zdGF0ZTUgYW5kIHN0YXRlNSA9PSBUcnVlOgogICAgICAgICAgICBzZWxmLmJ1
dHRvbl9ydHhfaGFuZGxlcih1c3JwX3NvdXJjZSwgdXNycF9zaW5rKQoKICAgICAgICBzZWxmLmxh
c3Rfc3RhdGUxID0gc3RhdGUxCiAgICAgICAgc2VsZi5sYXN0X3N0YXRlMiA9IHN0YXRlMgogICAg
ICAgIHNlbGYubGFzdF9zdGF0ZTMgPSBzdGF0ZTMKICAgICAgICBzZWxmLmxhc3Rfc3RhdGU0ID0g
c3RhdGU0CiAgICAgICAgc2VsZi5sYXN0X3N0YXRlNSA9IHN0YXRlNQoKICAgIGRlZiBidXR0b25f
c3RhcnRfaGFuZGxlcihzZWxmLCB1c3JwX3NvdXJjZSwgdXNycF9zaW5rKToKICAgICAgICB0dW5l
X3JlcSA9IHVoZC50dW5lX3JlcXVlc3QoKQogICAgICAgIHR1bmVfcmVxLnJmX2ZyZXFfcG9saWN5
ID0gdWhkLnR1bmVfcmVxdWVzdC5QT0xJQ1lfTUFOVUFMCiAgICAgICAgdHVuZV9yZXEuZHNwX2Zy
ZXFfcG9saWN5ID0gdWhkLnR1bmVfcmVxdWVzdC5QT0xJQ1lfTUFOVUFMCiAgICAgICAgdHVuZV9y
ZXEucmZfZnJlcSA9IDkwMGU2CiAgICAgICAgdHVuZV9yZXEuZHNwX2ZyZXEgPSAwCgogICAgICAg
IHByaW50KCJDbGlja2VkIDMuIFJlc2V0IikKCiAgICAgICAgZXhlY190aW1lID0gdXNycF9zb3Vy
Y2UuZ2V0X3RpbWVfbm93KCkgKyB1aGQudGltZV9zcGVjKDEpCiAgICAgICAgdXNycF9zb3VyY2Uu
c2V0X2NvbW1hbmRfdGltZShleGVjX3RpbWUpCiAgICAgICAgdXNycF9zaW5rLnNldF9jb21tYW5k
X3RpbWUoZXhlY190aW1lKQoKICAgICAgICByZXMxID0gdXNycF9zb3VyY2Uuc2V0X2NlbnRlcl9m
cmVxKCAgdHVuZV9yZXEsIDEpCiAgICAgICAgcmVzMiA9IHVzcnBfc2luay5zZXRfY2VudGVyX2Zy
ZXEoICB0dW5lX3JlcSkKCiAgICAgICAgdXNycF9zb3VyY2UuY2xlYXJfY29tbWFuZF90aW1lKCkK
ICAgICAgICB1c3JwX3NpbmsuY2xlYXJfY29tbWFuZF90aW1lKCkKCiAgICAgICAgcHJpbnQgcmVz
MQogICAgICAgIHByaW50IHJlczIKCiAgICBkZWYgYnV0dG9uX3J0eF9oYW5kbGVyKHNlbGYsIHVz
cnBfc291cmNlLCB1c3JwX3NpbmspOgogICAgICAgIHJmX2ZyZXEgPSA5MDBlNiAjc2VsZi5yZl9m
cmVxc1tzZWxmLmxhc3RfZnJlcTNdCiAgICAgICAgZHNwX2ZyZXEgPSBzZWxmLmRzcF9mcmVxc1tz
ZWxmLmxhc3RfZnJlcTNdCiAgICAgICAgc2VsZi5sYXN0X2ZyZXEzID0gKHNlbGYubGFzdF9mcmVx
MyArIDEpICUgbGVuKHNlbGYucmZfZnJlcXMpCiAgICAgICAgCiAgICAgICAgdHVuZV9yZXFfcngg
PSB1aGQudHVuZV9yZXF1ZXN0KCkKICAgICAgICB0dW5lX3JlcV9yeC5yZl9mcmVxX3BvbGljeSA9
IHVoZC50dW5lX3JlcXVlc3QuUE9MSUNZX05PTkUKICAgICAgICB0dW5lX3JlcV9yeC5kc3BfZnJl
cV9wb2xpY3kgPSB1aGQudHVuZV9yZXF1ZXN0LlBPTElDWV9NQU5VQUwKICAgICAgICAjdHVuZV9y
ZXFfcngucmZfZnJlcSA9IHJmX2ZyZXEKICAgICAgICB0dW5lX3JlcV9yeC5kc3BfZnJlcSA9IC1k
c3BfZnJlcQogICAgICAgICN0dW5lX3JlcV9yeC5hcmdzPXVoZC5kZXZpY2VfYWRkcignLCcuam9p
bihbIm1vZGVfbj1pbnRlZ2VyIiwgImludF9uX3N0ZXA9MTAwMGUzIixdKSkKCiAgICAgICAgdHVu
ZV9yZXFfdHggPSB1aGQudHVuZV9yZXF1ZXN0KCkKICAgICAgICB0dW5lX3JlcV90eC5yZl9mcmVx
X3BvbGljeSA9IHVoZC50dW5lX3JlcXVlc3QuUE9MSUNZX05PTkUKICAgICAgICB0dW5lX3JlcV90
eC5kc3BfZnJlcV9wb2xpY3kgPSB1aGQudHVuZV9yZXF1ZXN0LlBPTElDWV9NQU5VQUwKICAgICAg
ICAjdHVuZV9yZXFfdHgucmZfZnJlcSA9IHJmX2ZyZXEKICAgICAgICB0dW5lX3JlcV90eC5kc3Bf
ZnJlcSA9IGRzcF9mcmVxCiAgICAgICAgI3R1bmVfcmVxX3R4LmFyZ3M9dWhkLmRldmljZV9hZGRy
KCcsJy5qb2luKFsibW9kZV9uPWludGVnZXIiLCAiaW50X25fc3RlcD0xMDAwZTMiLF0pKQoKICAg
ICAgICBub3cgPSB1c3JwX3NpbmsuZ2V0X3RpbWVfbm93KCkKICAgICAgICB3aGVuID0gbm93ICsg
dWhkLnRpbWVfc3BlYygxLjApCgogICAgICAgIHByaW50KCJDbGlja2VkIHRvIHN3aXRjaCBSLVQt
WCBmcmY9IiArIHN0cihyZl9mcmVxKSArICIsIGZkc3A9IiArIHN0cihkc3BfZnJlcSkgKyAiIGF0
ICIgKyBzdHIobm93LmdldF9mdWxsX3NlY3MoKSkgKyAiOiIgKyBzdHIobm93LmdldF9mcmFjX3Nl
Y3MoKSkgKyAiIGZvciAiICsgc3RyKHdoZW4uZ2V0X2Z1bGxfc2VjcygpKSArICI6IiArIHN0cih3
aGVuLmdldF9mcmFjX3NlY3MoKSkpCgogICAgICAgICNSSyBub3RlOiBzZXQgYWxsIDQgdHJ1ZSBv
ciAxIG9mIHRoZSA0IHRvIGZhbHNlCiAgICAgICAgIyAgICBjYXNlIDA6IGFsbCA0IHRydWUKICAg
ICAgICAjICAgIGNhc2UgMTogb25seSB0dW5lX3R4IGZhbHNlOyBzaG93cyByeC10by1yeCBwaGFz
ZSBjb25zaXN0ZW50CiAgICAgICAgIyAgICBjYXNlIDI6IG9ubHkgdHVuZV9yeCBmYWxzZTsgc2hv
d3MgdHgtdG8tdHggcGhhc2UgY29uc2lzdGVudAogICAgICAgICMgICAgY2FzZSAzOiBvbmx5IHR1
bmVfY2gwIGZhbHNlOyBzaG93cyB0aGF0IHJ4LXRvLXR4IHBoYXNlIGlzIE5PVCBjb25zaXN0ZW50
CiAgICAgICAgIyAgICBjYXNlIDQ6IG9ubHkgdHVuZV9jaDEgZmFsc2U7IGFsc28gc2hvd3MgdGhh
dCByeC10by10eCBwaGFzZSBpcyBOT1QgY29uc2lzdGVudAogICAgICAgIHR1bmVfdHggPSBUcnVl
CiAgICAgICAgdHVuZV9yeCA9IFRydWUKICAgICAgICB0dW5lX2NoMCA9IFRydWUKICAgICAgICB0
dW5lX2NoMSA9IEZhbHNlCgogICAgICAgICNSSyBub3RlOiBteSB0aG91Z2h0IGlzIHRoYXQgeW91
IG9ubHkgbmVlZCBvbmUgb2YgdGhlc2Ugc2luY2UgdGhlcmUgaXMgCiAgICAgICAgIyAgIG9ubHkg
MSBtb3RoZXJib2FyZC4gIEJ1dCwgaXQgcHJvYmFibHkgZG9lc24ndCBodXJ0IHRvIHNlbmQgdHdp
Y2UKICAgICAgICB1c3JwX3Npbmsuc2V0X2NvbW1hbmRfdGltZSh3aGVuKQogICAgICAgIHVzcnBf
c291cmNlLnNldF9jb21tYW5kX3RpbWUod2hlbikKCiAgICAgICAgaWYgdHVuZV90eDoKICAgICAg
ICAgICAgaWYgdHVuZV9jaDA6CiAgICAgICAgICAgICAgICB1c3JwX3Npbmsuc2V0X2NlbnRlcl9m
cmVxKHR1bmVfcmVxX3R4LCAwKQogICAgICAgICAgICBpZiB0dW5lX2NoMToKICAgICAgICAgICAg
ICAgIHVzcnBfc2luay5zZXRfY2VudGVyX2ZyZXEodHVuZV9yZXFfdHgsIDEpCiAgICAgICAgaWYg
dHVuZV9yeDoKICAgICAgICAgICAgaWYgdHVuZV9jaDA6CiAgICAgICAgICAgICAgICB1c3JwX3Nv
dXJjZS5zZXRfY2VudGVyX2ZyZXEodHVuZV9yZXFfcngsIDApCiAgICAgICAgICAgIGlmIHR1bmVf
Y2gxOgogICAgICAgICAgICAgICAgdXNycF9zb3VyY2Uuc2V0X2NlbnRlcl9mcmVxKHR1bmVfcmVx
X3J4LCAxKQoKICAgICAgICB1c3JwX3NpbmsuY2xlYXJfY29tbWFuZF90aW1lKCkKICAgICAgICB1
c3JwX3NvdXJjZS5jbGVhcl9jb21tYW5kX3RpbWUoKQoKICAgICAgICAjcHJpbnQgcmVzMQogICAg
ICAgICNwcmludCByZXMyCiAgICAgICAgI3ByaW50IHJlczMKICAgICAgICAjcHJpbnQgcmVzNAoK
ICAgIGRlZiBidXR0b25fcnhfaGFuZGxlcihzZWxmLCB1c3JwX3NvdXJjZSwgdXNycF9zaW5rKToK
ICAgICAgICByZl9mcmVxID0gc2VsZi5yZl9mcmVxc1tzZWxmLmxhc3RfZnJlcTJdCiAgICAgICAg
ZHNwX2ZyZXEgPSBzZWxmLmRzcF9mcmVxc1tzZWxmLmxhc3RfZnJlcTJdCiAgICAgICAgc2VsZi5s
YXN0X2ZyZXEyID0gKHNlbGYubGFzdF9mcmVxMiArIDEpICUgbGVuKHNlbGYucmZfZnJlcXMpCiAg
ICAgICAgcHJpbnQoIkNsaWNrZWQgMjogU3dpdGNoaW5nIFJYIGZyZj0iICsgc3RyKHJmX2ZyZXEp
ICsgIiwgZmRzcD0iICsgc3RyKGRzcF9mcmVxKSkKICAgICAgICAKICAgICAgICB0dW5lX3JlcV9y
eCA9IHVoZC50dW5lX3JlcXVlc3QoKQogICAgICAgIHR1bmVfcmVxX3J4LnJmX2ZyZXFfcG9saWN5
ID0gdWhkLnR1bmVfcmVxdWVzdC5QT0xJQ1lfTk9ORQogICAgICAgIHR1bmVfcmVxX3J4LmRzcF9m
cmVxX3BvbGljeSA9IHVoZC50dW5lX3JlcXVlc3QuUE9MSUNZX01BTlVBTAogICAgICAgICN0dW5l
X3JlcV9yeC5yZl9mcmVxID0gOTAwZTYKICAgICAgICB0dW5lX3JlcV9yeC5kc3BfZnJlcSA9IC1k
c3BfZnJlcQoKICAgICAgICBub3cgPSB1c3JwX3NvdXJjZS5nZXRfdGltZV9ub3coKQogICAgICAg
IHVzcnBfc291cmNlLnNldF9jb21tYW5kX3RpbWUobm93ICsgdWhkLnRpbWVfc3BlYygxKSkKICAg
ICAgICByZXMxID0gdXNycF9zb3VyY2Uuc2V0X2NlbnRlcl9mcmVxKCAgdHVuZV9yZXFfcngsIDEp
CiAgICAgICAgdXNycF9zb3VyY2UuY2xlYXJfY29tbWFuZF90aW1lKCkKICAgICAgICBwcmludCBy
ZXMxCgoKICAgIGRlZiBidXR0b25fdHhfaGFuZGxlcihzZWxmLCB1c3JwX3NvdXJjZSwgdXNycF9z
aW5rKToKICAgICAgICByZl9mcmVxID0gc2VsZi5yZl9mcmVxc1tzZWxmLmxhc3RfZnJlcTFdCiAg
ICAgICAgZHNwX2ZyZXEgPSBzZWxmLmRzcF9mcmVxc1tzZWxmLmxhc3RfZnJlcTFdCiAgICAgICAg
c2VsZi5sYXN0X2ZyZXExID0gKHNlbGYubGFzdF9mcmVxMSArIDEpICUgbGVuKHNlbGYucmZfZnJl
cXMpCiAgICAgICAgcHJpbnQoIkNsaWNrZWQgMiBTd2l0Y2hpbmcgVFggZnJmPSIgKyBzdHIocmZf
ZnJlcSkgKyAiLCBmZHNwPSIgKyBzdHIoZHNwX2ZyZXEpKQoKICAgICAgICB0dW5lX3JlcV90eCA9
IHVoZC50dW5lX3JlcXVlc3QoKQogICAgICAgIHR1bmVfcmVxX3R4LnJmX2ZyZXFfcG9saWN5ID0g
dWhkLnR1bmVfcmVxdWVzdC5QT0xJQ1lfTk9ORQogICAgICAgIHR1bmVfcmVxX3R4LmRzcF9mcmVx
X3BvbGljeSA9IHVoZC50dW5lX3JlcXVlc3QuUE9MSUNZX01BTlVBTAogICAgICAgICN0dW5lX3Jl
cV90eC5yZl9mcmVxID0gcmZfZnJlcQogICAgICAgIHR1bmVfcmVxX3R4LmRzcF9mcmVxID0gZHNw
X2ZyZXEKCiAgICAgICAgbm93ID0gdXNycF9zaW5rLmdldF90aW1lX25vdygpCiAgICAgICAgdXNy
cF9zaW5rLnNldF9jb21tYW5kX3RpbWUobm93ICsgdWhkLnRpbWVfc3BlYygwLjEpKQogICAgICAg
IHJlczEgPSB1c3JwX3Npbmsuc2V0X2NlbnRlcl9mcmVxKCAgdHVuZV9yZXFfdHgpCiAgICAgICAg
dXNycF9zaW5rLmNsZWFyX2NvbW1hbmRfdGltZSgpCiAgICAgICAgcHJpbnQgcmVzMQoKICAgIGRl
ZiB3b3JrKHNlbGYsIGlucHV0X2l0ZW1zLCBvdXRwdXRfaXRlbXMpOgogICAgICAgICIiImV4YW1w
bGU6IG11bHRpcGx5IHdpdGggY29uc3RhbnQiIiIKICAgICAgICBvdXRwdXRfaXRlbXNbMF1bOl0g
PSBpbnB1dF9pdGVtc1swXSAqIHNlbGYuZXhhbXBsZV9wYXJhbQogICAgICAgIHJldHVybiBsZW4o
b3V0cHV0X2l0ZW1zWzBdKQoKY2xhc3Mgc3dpdGNoX29uX2NsaWNrKGdyLnRvcF9ibG9jaywgUXQu
UVdpZGdldCk6CgogICAgZGVmIF9faW5pdF9fKHNlbGYpOgogICAgICAgIGdyLnRvcF9ibG9jay5f
X2luaXRfXyhzZWxmLCAiU3dpdGNoIE9uIENsaWNrIikKICAgICAgICBRdC5RV2lkZ2V0Ll9faW5p
dF9fKHNlbGYpCiAgICAgICAgc2VsZi5zZXRXaW5kb3dUaXRsZSgiU3dpdGNoIE9uIENsaWNrIikK
ICAgICAgICBxdGd1aS51dGlsLmNoZWNrX3NldF9xc3MoKQogICAgICAgIHRyeToKICAgICAgICAg
ICAgc2VsZi5zZXRXaW5kb3dJY29uKFF0LlFJY29uLmZyb21UaGVtZSgnZ251cmFkaW8tZ3JjJykp
CiAgICAgICAgZXhjZXB0OgogICAgICAgICAgICBwYXNzCiAgICAgICAgc2VsZi50b3Bfc2Nyb2xs
X2xheW91dCA9IFF0LlFWQm94TGF5b3V0KCkKICAgICAgICBzZWxmLnNldExheW91dChzZWxmLnRv
cF9zY3JvbGxfbGF5b3V0KQogICAgICAgIHNlbGYudG9wX3Njcm9sbCA9IFF0LlFTY3JvbGxBcmVh
KCkKICAgICAgICBzZWxmLnRvcF9zY3JvbGwuc2V0RnJhbWVTdHlsZShRdC5RRnJhbWUuTm9GcmFt
ZSkKICAgICAgICBzZWxmLnRvcF9zY3JvbGxfbGF5b3V0LmFkZFdpZGdldChzZWxmLnRvcF9zY3Jv
bGwpCiAgICAgICAgc2VsZi50b3Bfc2Nyb2xsLnNldFdpZGdldFJlc2l6YWJsZShUcnVlKQogICAg
ICAgIHNlbGYudG9wX3dpZGdldCA9IFF0LlFXaWRnZXQoKQogICAgICAgIHNlbGYudG9wX3Njcm9s
bC5zZXRXaWRnZXQoc2VsZi50b3Bfd2lkZ2V0KQogICAgICAgIHNlbGYudG9wX2xheW91dCA9IFF0
LlFWQm94TGF5b3V0KHNlbGYudG9wX3dpZGdldCkKICAgICAgICBzZWxmLnRvcF9ncmlkX2xheW91
dCA9IFF0LlFHcmlkTGF5b3V0KCkKICAgICAgICBzZWxmLnRvcF9sYXlvdXQuYWRkTGF5b3V0KHNl
bGYudG9wX2dyaWRfbGF5b3V0KQoKICAgICAgICBzZWxmLnNldHRpbmdzID0gUXQuUVNldHRpbmdz
KCJHTlUgUmFkaW8iLCAic3dpdGNoX29uX2NsaWNrIikKICAgICAgICBzZWxmLnJlc3RvcmVHZW9t
ZXRyeShzZWxmLnNldHRpbmdzLnZhbHVlKCJnZW9tZXRyeSIpLnRvQnl0ZUFycmF5KCkpCgoKICAg
ICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwog
ICAgICAgICMgVmFyaWFibGVzCiAgICAgICAgIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMKICAgICAgICBzZWxmLnZhcmlhYmxlX2Z1bmN0aW9uX3Byb2Jl
XzFfMCA9IHZhcmlhYmxlX2Z1bmN0aW9uX3Byb2JlXzFfMCA9IDAKICAgICAgICBzZWxmLnN0YXJ0
X2RlbGF5ID0gc3RhcnRfZGVsYXkgPSAzCiAgICAgICAgc2VsZi5zYW1wX3JhdGUgPSBzYW1wX3Jh
dGUgPSA1ZTYKICAgICAgICBzZWxmLmZpZiA9IGZpZiA9IDFlNgogICAgICAgIHNlbGYuZmNlbnRl
ciA9IGZjZW50ZXIgPSA5MDBlNgogICAgICAgIHNlbGYuYnV0dG9uNSA9IGJ1dHRvbjUgPSBGYWxz
ZQogICAgICAgIHNlbGYuYnV0dG9uNCA9IGJ1dHRvbjQgPSBGYWxzZQogICAgICAgIHNlbGYuYnV0
dG9uMyA9IGJ1dHRvbjMgPSBGYWxzZQogICAgICAgIHNlbGYuYnV0dG9uMiA9IGJ1dHRvbjIgPSBG
YWxzZQogICAgICAgIHNlbGYuYnV0dG9uMSA9IGJ1dHRvbjEgPSBGYWxzZQoKICAgICAgICAjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwogICAgICAgICMg
QmxvY2tzCiAgICAgICAgIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMKICAgICAgICBzZWxmLnVoZF91c3JwX3NvdXJjZV8wID0gdWhkLnVzcnBfc291cmNl
KAogICAgICAgIAkiLCIuam9pbigoIiIsICdkYm9hcmRfY2xvY2tfcmF0ZT0yMGU2LGFkZHI9MTky
LjE2OC40My4yJykpLAogICAgICAgIAl1aGQuc3RyZWFtX2FyZ3MoCiAgICAgICAgCQljcHVfZm9y
bWF0PSJmYzMyIiwKICAgICAgICAJCWNoYW5uZWxzPXJhbmdlKDIpLAogICAgICAgIAkpLAogICAg
ICAgICkKICAgICAgICBzZWxmLnVoZF91c3JwX3NvdXJjZV8wLnNldF9jbG9ja19yYXRlKDIwMGU2
LCB1aGQuQUxMX01CT0FSRFMpCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2VfMC5zZXRfY2xv
Y2tfc291cmNlKCdpbnRlcm5hbCcsIDApCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2VfMC5z
ZXRfc3ViZGV2X3NwZWMoJ0E6MCBCOjAnLCAwKQogICAgICAgIHNlbGYudWhkX3VzcnBfc291cmNl
XzAuc2V0X3NhbXBfcmF0ZShzYW1wX3JhdGUpCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2Vf
MC5zZXRfdGltZV91bmtub3duX3Bwcyh1aGQudGltZV9zcGVjKCkpCiAgICAgICAgc2VsZi51aGRf
dXNycF9zb3VyY2VfMC5zZXRfY2VudGVyX2ZyZXEoZmNlbnRlciwgMCkKICAgICAgICBzZWxmLnVo
ZF91c3JwX3NvdXJjZV8wLnNldF9nYWluKDAsIDApCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3Vy
Y2VfMC5zZXRfYW50ZW5uYSgnUlgyJywgMCkKICAgICAgICBzZWxmLnVoZF91c3JwX3NvdXJjZV8w
LnNldF9hdXRvX2RjX29mZnNldChUcnVlLCAwKQogICAgICAgIHNlbGYudWhkX3VzcnBfc291cmNl
XzAuc2V0X2F1dG9faXFfYmFsYW5jZShUcnVlLCAwKQogICAgICAgIHNlbGYudWhkX3VzcnBfc291
cmNlXzAuc2V0X2NlbnRlcl9mcmVxKGZjZW50ZXIsIDEpCiAgICAgICAgc2VsZi51aGRfdXNycF9z
b3VyY2VfMC5zZXRfZ2FpbigwLCAxKQogICAgICAgIHNlbGYudWhkX3VzcnBfc291cmNlXzAuc2V0
X2FudGVubmEoJ1JYMicsIDEpCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2VfMC5zZXRfYXV0
b19kY19vZmZzZXQoVHJ1ZSwgMSkKICAgICAgICBzZWxmLnVoZF91c3JwX3NvdXJjZV8wLnNldF9h
dXRvX2lxX2JhbGFuY2UoVHJ1ZSwgMSkKICAgICAgICBzZWxmLnVoZF91c3JwX3NpbmtfMCA9IHVo
ZC51c3JwX3NpbmsoCiAgICAgICAgCSIsIi5qb2luKCgiIiwgJ2Rib2FyZF9jbG9ja19yYXRlPTIw
ZTYsYWRkcj0xOTIuMTY4LjQzLjInKSksCiAgICAgICAgCXVoZC5zdHJlYW1fYXJncygKICAgICAg
ICAJCWNwdV9mb3JtYXQ9ImZjMzIiLAogICAgICAgIAkJY2hhbm5lbHM9cmFuZ2UoMiksCiAgICAg
ICAgCSksCiAgICAgICAgKQogICAgICAgIHNlbGYudWhkX3VzcnBfc2lua18wLnNldF9jbG9ja19y
YXRlKDIwMGU2LCB1aGQuQUxMX01CT0FSRFMpCiAgICAgICAgc2VsZi51aGRfdXNycF9zaW5rXzAu
c2V0X2Nsb2NrX3NvdXJjZSgnaW50ZXJuYWwnLCAwKQogICAgICAgIHNlbGYudWhkX3VzcnBfc2lu
a18wLnNldF9zdWJkZXZfc3BlYygnQTowIEI6MCcsIDApCiAgICAgICAgc2VsZi51aGRfdXNycF9z
aW5rXzAuc2V0X3NhbXBfcmF0ZShzYW1wX3JhdGUpCiAgICAgICAgI1JLIE5vdGU6IG15IHRob3Vn
aHQgaXMgdGhhdCBvbmx5ICJzZXRfdGltZV91bmtvbnduX3BwcyIgaXMgbmVlZGVkIChhYm92ZSkg
c2luY2UgMSBtb3RoZXJib2FyZAogICAgICAgICMgICBidXQgaXQgcHJvYmFibHkgZG9lc24ndCBo
dXJ0IHRvIHNlbmQgYWdhaW4KICAgICAgICBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfdGltZV91
bmtub3duX3Bwcyh1aGQudGltZV9zcGVjKCkpCiAgICAgICAgc2VsZi51aGRfdXNycF9zaW5rXzAu
c2V0X2NlbnRlcl9mcmVxKGZjZW50ZXIsIDApCiAgICAgICAgc2VsZi51aGRfdXNycF9zaW5rXzAu
c2V0X2dhaW4oMCwgMCkKICAgICAgICBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfYW50ZW5uYSgn
VFgvUlgnLCAwKQogICAgICAgIHNlbGYudWhkX3VzcnBfc2lua18wLnNldF9jZW50ZXJfZnJlcShm
Y2VudGVyLCAxKQogICAgICAgIHNlbGYudWhkX3VzcnBfc2lua18wLnNldF9nYWluKDAsIDEpCiAg
ICAgICAgc2VsZi51aGRfdXNycF9zaW5rXzAuc2V0X2FudGVubmEoJ1RYL1JYJywgMSkKICAgICAg
ICBzZWxmLmVweV9ibG9ja18xID0gZXB5X2Jsb2NrXzEoKQogICAgICAgIF9idXR0b241X3B1c2hf
YnV0dG9uID0gUXQuUVB1c2hCdXR0b24oJ1N3aXRjaCBSVFggKHRvZ2V0aGVyKScpCiAgICAgICAg
c2VsZi5fYnV0dG9uNV9jaG9pY2VzID0geydQcmVzc2VkJzogVHJ1ZSwgJ1JlbGVhc2VkJzogRmFs
c2V9CiAgICAgICAgX2J1dHRvbjVfcHVzaF9idXR0b24ucHJlc3NlZC5jb25uZWN0KGxhbWJkYTog
c2VsZi5zZXRfYnV0dG9uNShzZWxmLl9idXR0b241X2Nob2ljZXNbJ1ByZXNzZWQnXSkpCiAgICAg
ICAgX2J1dHRvbjVfcHVzaF9idXR0b24ucmVsZWFzZWQuY29ubmVjdChsYW1iZGE6IHNlbGYuc2V0
X2J1dHRvbjUoc2VsZi5fYnV0dG9uNV9jaG9pY2VzWydSZWxlYXNlZCddKSkKICAgICAgICBzZWxm
LnRvcF9ncmlkX2xheW91dC5hZGRXaWRnZXQoX2J1dHRvbjVfcHVzaF9idXR0b24pCiAgICAgICAg
X2J1dHRvbjRfcHVzaF9idXR0b24gPSBRdC5RUHVzaEJ1dHRvbignU3dpdGNoIFJUWCcpCiAgICAg
ICAgc2VsZi5fYnV0dG9uNF9jaG9pY2VzID0geydQcmVzc2VkJzogVHJ1ZSwgJ1JlbGVhc2VkJzog
RmFsc2V9CiAgICAgICAgX2J1dHRvbjRfcHVzaF9idXR0b24ucHJlc3NlZC5jb25uZWN0KGxhbWJk
YTogc2VsZi5zZXRfYnV0dG9uNChzZWxmLl9idXR0b240X2Nob2ljZXNbJ1ByZXNzZWQnXSkpCiAg
ICAgICAgX2J1dHRvbjRfcHVzaF9idXR0b24ucmVsZWFzZWQuY29ubmVjdChsYW1iZGE6IHNlbGYu
c2V0X2J1dHRvbjQoc2VsZi5fYnV0dG9uNF9jaG9pY2VzWydSZWxlYXNlZCddKSkKICAgICAgICBz
ZWxmLnRvcF9ncmlkX2xheW91dC5hZGRXaWRnZXQoX2J1dHRvbjRfcHVzaF9idXR0b24pCiAgICAg
ICAgX2J1dHRvbjNfcHVzaF9idXR0b24gPSBRdC5RUHVzaEJ1dHRvbignU3RhcnQvUmVzZXQnKQog
ICAgICAgIHNlbGYuX2J1dHRvbjNfY2hvaWNlcyA9IHsnUHJlc3NlZCc6IFRydWUsICdSZWxlYXNl
ZCc6IEZhbHNlfQogICAgICAgIF9idXR0b24zX3B1c2hfYnV0dG9uLnByZXNzZWQuY29ubmVjdChs
YW1iZGE6IHNlbGYuc2V0X2J1dHRvbjMoc2VsZi5fYnV0dG9uM19jaG9pY2VzWydQcmVzc2VkJ10p
KQogICAgICAgIF9idXR0b24zX3B1c2hfYnV0dG9uLnJlbGVhc2VkLmNvbm5lY3QobGFtYmRhOiBz
ZWxmLnNldF9idXR0b24zKHNlbGYuX2J1dHRvbjNfY2hvaWNlc1snUmVsZWFzZWQnXSkpCiAgICAg
ICAgc2VsZi50b3BfZ3JpZF9sYXlvdXQuYWRkV2lkZ2V0KF9idXR0b24zX3B1c2hfYnV0dG9uKQog
ICAgICAgIF9idXR0b24yX3B1c2hfYnV0dG9uID0gUXQuUVB1c2hCdXR0b24oJ1N3aXRjaCBSWCcp
CiAgICAgICAgc2VsZi5fYnV0dG9uMl9jaG9pY2VzID0geydQcmVzc2VkJzogVHJ1ZSwgJ1JlbGVh
c2VkJzogRmFsc2V9CiAgICAgICAgX2J1dHRvbjJfcHVzaF9idXR0b24ucHJlc3NlZC5jb25uZWN0
KGxhbWJkYTogc2VsZi5zZXRfYnV0dG9uMihzZWxmLl9idXR0b24yX2Nob2ljZXNbJ1ByZXNzZWQn
XSkpCiAgICAgICAgX2J1dHRvbjJfcHVzaF9idXR0b24ucmVsZWFzZWQuY29ubmVjdChsYW1iZGE6
IHNlbGYuc2V0X2J1dHRvbjIoc2VsZi5fYnV0dG9uMl9jaG9pY2VzWydSZWxlYXNlZCddKSkKICAg
ICAgICBzZWxmLnRvcF9ncmlkX2xheW91dC5hZGRXaWRnZXQoX2J1dHRvbjJfcHVzaF9idXR0b24p
CiAgICAgICAgX2J1dHRvbjFfcHVzaF9idXR0b24gPSBRdC5RUHVzaEJ1dHRvbignU3dpdGNoIFRY
JykKICAgICAgICBzZWxmLl9idXR0b24xX2Nob2ljZXMgPSB7J1ByZXNzZWQnOiBUcnVlLCAnUmVs
ZWFzZWQnOiBGYWxzZX0KICAgICAgICBfYnV0dG9uMV9wdXNoX2J1dHRvbi5wcmVzc2VkLmNvbm5l
Y3QobGFtYmRhOiBzZWxmLnNldF9idXR0b24xKHNlbGYuX2J1dHRvbjFfY2hvaWNlc1snUHJlc3Nl
ZCddKSkKICAgICAgICBfYnV0dG9uMV9wdXNoX2J1dHRvbi5yZWxlYXNlZC5jb25uZWN0KGxhbWJk
YTogc2VsZi5zZXRfYnV0dG9uMShzZWxmLl9idXR0b24xX2Nob2ljZXNbJ1JlbGVhc2VkJ10pKQog
ICAgICAgIHNlbGYudG9wX2dyaWRfbGF5b3V0LmFkZFdpZGdldChfYnV0dG9uMV9wdXNoX2J1dHRv
bikKCiAgICAgICAgZGVmIF92YXJpYWJsZV9mdW5jdGlvbl9wcm9iZV8xXzBfcHJvYmUoKToKICAg
ICAgICAgICAgd2hpbGUgVHJ1ZToKICAgICAgICAgICAgICAgIHZhbCA9IHNlbGYuZXB5X2Jsb2Nr
XzEuYnV0dG9uc19jYWxsYmFjayhzZWxmLmJ1dHRvbjEsIHNlbGYuYnV0dG9uMiwgc2VsZi5idXR0
b24zLCBzZWxmLmJ1dHRvbjQsIHNlbGYuYnV0dG9uNSwgc2VsZi51aGRfdXNycF9zb3VyY2VfMCwg
c2VsZi51aGRfdXNycF9zaW5rXzApCiAgICAgICAgICAgICAgICB0cnk6CiAgICAgICAgICAgICAg
ICAgICAgc2VsZi5zZXRfdmFyaWFibGVfZnVuY3Rpb25fcHJvYmVfMV8wKHZhbCkKICAgICAgICAg
ICAgICAgIGV4Y2VwdCBBdHRyaWJ1dGVFcnJvcjoKICAgICAgICAgICAgICAgICAgICBwYXNzCiAg
ICAgICAgICAgICAgICB0aW1lLnNsZWVwKDEuMCAvICgxMCkpCiAgICAgICAgX3ZhcmlhYmxlX2Z1
bmN0aW9uX3Byb2JlXzFfMF90aHJlYWQgPSB0aHJlYWRpbmcuVGhyZWFkKHRhcmdldD1fdmFyaWFi
bGVfZnVuY3Rpb25fcHJvYmVfMV8wX3Byb2JlKQogICAgICAgIF92YXJpYWJsZV9mdW5jdGlvbl9w
cm9iZV8xXzBfdGhyZWFkLmRhZW1vbiA9IFRydWUKICAgICAgICBfdmFyaWFibGVfZnVuY3Rpb25f
cHJvYmVfMV8wX3RocmVhZC5zdGFydCgpCgogICAgICAgIHNlbGYucXRndWlfbnVtYmVyX3Npbmtf
MCA9IHF0Z3VpLm51bWJlcl9zaW5rKAogICAgICAgICAgICBnci5zaXplb2ZfZmxvYXQsCiAgICAg
ICAgICAgIDAsCiAgICAgICAgICAgIHF0Z3VpLk5VTV9HUkFQSF9IT1JJWiwKICAgICAgICAgICAg
MQogICAgICAgICkKICAgICAgICBzZWxmLnF0Z3VpX251bWJlcl9zaW5rXzAuc2V0X3VwZGF0ZV90
aW1lKDAuMTApCiAgICAgICAgc2VsZi5xdGd1aV9udW1iZXJfc2lua18wLnNldF90aXRsZSgiUGhh
c2UiKQoKICAgICAgICBsYWJlbHMgPSBbJ1BoYXNlJywgJycsICcnLCAnJywgJycsCiAgICAgICAg
ICAgICAgICAgICcnLCAnJywgJycsICcnLCAnJ10KICAgICAgICB1bml0cyA9IFsncmFkJywgJycs
ICcnLCAnJywgJycsCiAgICAgICAgICAgICAgICAgJycsICcnLCAnJywgJycsICcnXQogICAgICAg
IGNvbG9ycyA9IFsoImJsYWNrIiwgIndoaXRlIiksICgiYmxhY2siLCAiYmxhY2siKSwgKCJibGFj
ayIsICJibGFjayIpLCAoImJsYWNrIiwgImJsYWNrIiksICgiYmxhY2siLCAiYmxhY2siKSwKICAg
ICAgICAgICAgICAgICAgKCJibGFjayIsICJibGFjayIpLCAoImJsYWNrIiwgImJsYWNrIiksICgi
YmxhY2siLCAiYmxhY2siKSwgKCJibGFjayIsICJibGFjayIpLCAoImJsYWNrIiwgImJsYWNrIild
CiAgICAgICAgZmFjdG9yID0gWzEsIDEsIDEsIDEsIDEsCiAgICAgICAgICAgICAgICAgIDEsIDEs
IDEsIDEsIDFdCiAgICAgICAgZm9yIGkgaW4geHJhbmdlKDEpOgogICAgICAgICAgICBzZWxmLnF0
Z3VpX251bWJlcl9zaW5rXzAuc2V0X21pbihpLCAwKQogICAgICAgICAgICBzZWxmLnF0Z3VpX251
bWJlcl9zaW5rXzAuc2V0X21heChpLCA2LjQpCiAgICAgICAgICAgIHNlbGYucXRndWlfbnVtYmVy
X3NpbmtfMC5zZXRfY29sb3IoaSwgY29sb3JzW2ldWzBdLCBjb2xvcnNbaV1bMV0pCiAgICAgICAg
ICAgIGlmIGxlbihsYWJlbHNbaV0pID09IDA6CiAgICAgICAgICAgICAgICBzZWxmLnF0Z3VpX251
bWJlcl9zaW5rXzAuc2V0X2xhYmVsKGksICJEYXRhIHswfSIuZm9ybWF0KGkpKQogICAgICAgICAg
ICBlbHNlOgogICAgICAgICAgICAgICAgc2VsZi5xdGd1aV9udW1iZXJfc2lua18wLnNldF9sYWJl
bChpLCBsYWJlbHNbaV0pCiAgICAgICAgICAgIHNlbGYucXRndWlfbnVtYmVyX3NpbmtfMC5zZXRf
dW5pdChpLCB1bml0c1tpXSkKICAgICAgICAgICAgc2VsZi5xdGd1aV9udW1iZXJfc2lua18wLnNl
dF9mYWN0b3IoaSwgZmFjdG9yW2ldKQoKICAgICAgICBzZWxmLnF0Z3VpX251bWJlcl9zaW5rXzAu
ZW5hYmxlX2F1dG9zY2FsZShGYWxzZSkKICAgICAgICBzZWxmLl9xdGd1aV9udW1iZXJfc2lua18w
X3dpbiA9IHNpcC53cmFwaW5zdGFuY2Uoc2VsZi5xdGd1aV9udW1iZXJfc2lua18wLnB5cXdpZGdl
dCgpLCBRdC5RV2lkZ2V0KQogICAgICAgIHNlbGYudG9wX2dyaWRfbGF5b3V0LmFkZFdpZGdldChz
ZWxmLl9xdGd1aV9udW1iZXJfc2lua18wX3dpbikKICAgICAgICBzZWxmLnF0Z3VpX2ZyZXFfc2lu
a194XzAgPSBxdGd1aS5mcmVxX3NpbmtfYygKICAgICAgICAJMTAyNCwgI3NpemUKICAgICAgICAJ
ZmlyZGVzLldJTl9CTEFDS01BTl9oQVJSSVMsICN3aW50eXBlCiAgICAgICAgCTAsICNmYwogICAg
ICAgIAlzYW1wX3JhdGUsICNidwogICAgICAgIAkiIiwgI25hbWUKICAgICAgICAJMiAjbnVtYmVy
IG9mIGlucHV0cwogICAgICAgICkKICAgICAgICBzZWxmLnF0Z3VpX2ZyZXFfc2lua194XzAuc2V0
X3VwZGF0ZV90aW1lKDAuMTApCiAgICAgICAgc2VsZi5xdGd1aV9mcmVxX3NpbmtfeF8wLnNldF95
X2F4aXMoLTE0MCwgMTApCiAgICAgICAgc2VsZi5xdGd1aV9mcmVxX3NpbmtfeF8wLnNldF95X2xh
YmVsKCdSZWxhdGl2ZSBHYWluJywgJ2RCJykKICAgICAgICBzZWxmLnF0Z3VpX2ZyZXFfc2lua194
XzAuc2V0X3RyaWdnZXJfbW9kZShxdGd1aS5UUklHX01PREVfRlJFRSwgMC4wLCAwLCAiIikKICAg
ICAgICBzZWxmLnF0Z3VpX2ZyZXFfc2lua194XzAuZW5hYmxlX2F1dG9zY2FsZShUcnVlKQogICAg
ICAgIHNlbGYucXRndWlfZnJlcV9zaW5rX3hfMC5lbmFibGVfZ3JpZChUcnVlKQogICAgICAgIHNl
bGYucXRndWlfZnJlcV9zaW5rX3hfMC5zZXRfZmZ0X2F2ZXJhZ2UoMS4wKQogICAgICAgIHNlbGYu
cXRndWlfZnJlcV9zaW5rX3hfMC5lbmFibGVfYXhpc19sYWJlbHMoVHJ1ZSkKICAgICAgICBzZWxm
LnF0Z3VpX2ZyZXFfc2lua194XzAuZW5hYmxlX2NvbnRyb2xfcGFuZWwoVHJ1ZSkKCiAgICAgICAg
aWYgbm90IFRydWU6CiAgICAgICAgICBzZWxmLnF0Z3VpX2ZyZXFfc2lua194XzAuZGlzYWJsZV9s
ZWdlbmQoKQoKICAgICAgICBpZiAiY29tcGxleCIgPT0gImZsb2F0IiBvciAiY29tcGxleCIgPT0g
Im1zZ19mbG9hdCI6CiAgICAgICAgICBzZWxmLnF0Z3VpX2ZyZXFfc2lua194XzAuc2V0X3Bsb3Rf
cG9zX2hhbGYobm90IFRydWUpCgogICAgICAgIGxhYmVscyA9IFsnJywgJycsICcnLCAnJywgJycs
CiAgICAgICAgICAgICAgICAgICcnLCAnJywgJycsICcnLCAnJ10KICAgICAgICB3aWR0aHMgPSBb
MSwgMSwgMSwgMSwgMSwKICAgICAgICAgICAgICAgICAgMSwgMSwgMSwgMSwgMV0KICAgICAgICBj
b2xvcnMgPSBbImJsdWUiLCAicmVkIiwgImdyZWVuIiwgImJsYWNrIiwgImN5YW4iLAogICAgICAg
ICAgICAgICAgICAibWFnZW50YSIsICJ5ZWxsb3ciLCAiZGFyayByZWQiLCAiZGFyayBncmVlbiIs
ICJkYXJrIGJsdWUiXQogICAgICAgIGFscGhhcyA9IFsxLjAsIDEuMCwgMS4wLCAxLjAsIDEuMCwK
ICAgICAgICAgICAgICAgICAgMS4wLCAxLjAsIDEuMCwgMS4wLCAxLjBdCiAgICAgICAgZm9yIGkg
aW4geHJhbmdlKDIpOgogICAgICAgICAgICBpZiBsZW4obGFiZWxzW2ldKSA9PSAwOgogICAgICAg
ICAgICAgICAgc2VsZi5xdGd1aV9mcmVxX3NpbmtfeF8wLnNldF9saW5lX2xhYmVsKGksICJEYXRh
IHswfSIuZm9ybWF0KGkpKQogICAgICAgICAgICBlbHNlOgogICAgICAgICAgICAgICAgc2VsZi5x
dGd1aV9mcmVxX3NpbmtfeF8wLnNldF9saW5lX2xhYmVsKGksIGxhYmVsc1tpXSkKICAgICAgICAg
ICAgc2VsZi5xdGd1aV9mcmVxX3NpbmtfeF8wLnNldF9saW5lX3dpZHRoKGksIHdpZHRoc1tpXSkK
ICAgICAgICAgICAgc2VsZi5xdGd1aV9mcmVxX3NpbmtfeF8wLnNldF9saW5lX2NvbG9yKGksIGNv
bG9yc1tpXSkKICAgICAgICAgICAgc2VsZi5xdGd1aV9mcmVxX3NpbmtfeF8wLnNldF9saW5lX2Fs
cGhhKGksIGFscGhhc1tpXSkKCiAgICAgICAgc2VsZi5fcXRndWlfZnJlcV9zaW5rX3hfMF93aW4g
PSBzaXAud3JhcGluc3RhbmNlKHNlbGYucXRndWlfZnJlcV9zaW5rX3hfMC5weXF3aWRnZXQoKSwg
UXQuUVdpZGdldCkKICAgICAgICBzZWxmLnRvcF9ncmlkX2xheW91dC5hZGRXaWRnZXQoc2VsZi5f
cXRndWlfZnJlcV9zaW5rX3hfMF93aW4pCiAgICAgICAgc2VsZi5sb3dfcGFzc19maWx0ZXJfMF8w
ID0gZmlsdGVyLmZpcl9maWx0ZXJfY2NmKDEsIGZpcmRlcy5sb3dfcGFzcygKICAgICAgICAJMSwg
c2FtcF9yYXRlLCA1MDBlMywgMTAwZTMsIGZpcmRlcy5XSU5fSEFNTUlORywgNi43NikpCiAgICAg
ICAgc2VsZi5sb3dfcGFzc19maWx0ZXJfMCA9IGZpbHRlci5maXJfZmlsdGVyX2NjZigxLCBmaXJk
ZXMubG93X3Bhc3MoCiAgICAgICAgCTEsIHNhbXBfcmF0ZSwgNTAwZTMsIDEwMGUzLCBmaXJkZXMu
V0lOX0hBTU1JTkcsIDYuNzYpKQogICAgICAgIHNlbGYuYmxvY2tzX251bGxfc2lua18xID0gYmxv
Y2tzLm51bGxfc2luayhnci5zaXplb2ZfZ3JfY29tcGxleCoxKQogICAgICAgIHNlbGYuYmxvY2tz
X251bGxfc2lua18wID0gYmxvY2tzLm51bGxfc2luayhnci5zaXplb2ZfZmxvYXQqMSkKICAgICAg
ICBzZWxmLmJsb2Nrc19tdWx0aXBseV94eF8wXzAgPSBibG9ja3MubXVsdGlwbHlfdmNjKDEpCiAg
ICAgICAgc2VsZi5ibG9ja3NfbXVsdGlwbHlfeHhfMCA9IGJsb2Nrcy5tdWx0aXBseV92Y2MoMSkK
ICAgICAgICBzZWxmLmJsb2Nrc19tb3ZpbmdfYXZlcmFnZV94eF8wID0gYmxvY2tzLm1vdmluZ19h
dmVyYWdlX2ZmKDEwMDAsIDEuMC8xMDAwLjAsIDQwMDAsIDEpCiAgICAgICAgc2VsZi5ibG9ja3Nf
ZGl2aWRlX3h4XzAgPSBibG9ja3MuZGl2aWRlX2NjKDEpCiAgICAgICAgc2VsZi5ibG9ja3NfY29t
cGxleF90b19tYWdwaGFzZV8wID0gYmxvY2tzLmNvbXBsZXhfdG9fbWFncGhhc2UoMSkKICAgICAg
ICBzZWxmLmJsb2Nrc19hZGRfY29uc3Rfdnh4XzAgPSBibG9ja3MuYWRkX2NvbnN0X3ZmZigoMy4x
NDE1OTI2NTQsICkpCiAgICAgICAgc2VsZi5hbmFsb2dfc2lnX3NvdXJjZV94XzFfMCA9IGFuYWxv
Zy5zaWdfc291cmNlX2Moc2FtcF9yYXRlLCBhbmFsb2cuR1JfQ09TX1dBVkUsIC1maWYsIDEsIDAp
CiAgICAgICAgc2VsZi5hbmFsb2dfc2lnX3NvdXJjZV94XzEgPSBhbmFsb2cuc2lnX3NvdXJjZV9j
KHNhbXBfcmF0ZSwgYW5hbG9nLkdSX0NPU19XQVZFLCBmaWYsIDEsIDApCgogICAgICAgIHNlbGYu
YmxvY2tzX211bHRpcGx5X2NvbmogPSBibG9ja3MubXVsdGlwbHlfY29uanVnYXRlX2NjKDEpCgoK
ICAgICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IwogICAgICAgICMgQ29ubmVjdGlvbnMKICAgICAgICAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwogICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5hbmFs
b2dfc2lnX3NvdXJjZV94XzEsIDApLCAoc2VsZi51aGRfdXNycF9zaW5rXzAsIDApKQogICAgICAg
IHNlbGYuY29ubmVjdCgoc2VsZi5hbmFsb2dfc2lnX3NvdXJjZV94XzEsIDApLCAoc2VsZi51aGRf
dXNycF9zaW5rXzAsIDEpKQogICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5hbmFsb2dfc2lnX3Nv
dXJjZV94XzFfMCwgMCksIChzZWxmLmJsb2Nrc19tdWx0aXBseV94eF8wLCAwKSkKICAgICAgICBz
ZWxmLmNvbm5lY3QoKHNlbGYuYW5hbG9nX3NpZ19zb3VyY2VfeF8xXzAsIDApLCAoc2VsZi5ibG9j
a3NfbXVsdGlwbHlfeHhfMF8wLCAwKSkKICAgICAgICBzZWxmLmNvbm5lY3QoKHNlbGYuYmxvY2tz
X2FkZF9jb25zdF92eHhfMCwgMCksIChzZWxmLnF0Z3VpX251bWJlcl9zaW5rXzAsIDApKQogICAg
ICAgIHNlbGYuY29ubmVjdCgoc2VsZi5ibG9ja3NfY29tcGxleF90b19tYWdwaGFzZV8wLCAxKSwg
KHNlbGYuYmxvY2tzX21vdmluZ19hdmVyYWdlX3h4XzAsIDApKQogICAgICAgIHNlbGYuY29ubmVj
dCgoc2VsZi5ibG9ja3NfY29tcGxleF90b19tYWdwaGFzZV8wLCAwKSwgKHNlbGYuYmxvY2tzX251
bGxfc2lua18wLCAwKSkKICAgICAgICBzZWxmLmNvbm5lY3QoKHNlbGYuYmxvY2tzX2RpdmlkZV94
eF8wLCAwKSwgKHNlbGYuYmxvY2tzX251bGxfc2lua18xLCAwKSkKICAgICAgICBzZWxmLmNvbm5l
Y3QoKHNlbGYuYmxvY2tzX21vdmluZ19hdmVyYWdlX3h4XzAsIDApLCAoc2VsZi5ibG9ja3NfYWRk
X2NvbnN0X3Z4eF8wLCAwKSkKICAgICAgICBzZWxmLmNvbm5lY3QoKHNlbGYuYmxvY2tzX211bHRp
cGx5X3h4XzAsIDApLCAoc2VsZi5sb3dfcGFzc19maWx0ZXJfMCwgMCkpCiAgICAgICAgc2VsZi5j
b25uZWN0KChzZWxmLmJsb2Nrc19tdWx0aXBseV94eF8wXzAsIDApLCAoc2VsZi5sb3dfcGFzc19m
aWx0ZXJfMF8wLCAwKSkKICAgICAgICBzZWxmLmNvbm5lY3QoKHNlbGYubG93X3Bhc3NfZmlsdGVy
XzAsIDApLCAoc2VsZi5ibG9ja3NfZGl2aWRlX3h4XzAsIDApKQogICAgICAgICNzZWxmLmNvbm5l
Y3QoKHNlbGYubG93X3Bhc3NfZmlsdGVyXzBfMCwgMCksIChzZWxmLmJsb2Nrc19jb21wbGV4X3Rv
X21hZ3BoYXNlXzAsIDApKQogICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5sb3dfcGFzc19maWx0
ZXJfMF8wLCAwKSwgKHNlbGYuYmxvY2tzX2RpdmlkZV94eF8wLCAxKSkKICAgICAgICBzZWxmLmNv
bm5lY3QoKHNlbGYudWhkX3VzcnBfc291cmNlXzAsIDEpLCAoc2VsZi5ibG9ja3NfbXVsdGlwbHlf
eHhfMCwgMSkpCiAgICAgICAgc2VsZi5jb25uZWN0KChzZWxmLnVoZF91c3JwX3NvdXJjZV8wLCAw
KSwgKHNlbGYuYmxvY2tzX211bHRpcGx5X3h4XzBfMCwgMSkpCiAgICAgICAgc2VsZi5jb25uZWN0
KChzZWxmLnVoZF91c3JwX3NvdXJjZV8wLCAwKSwgKHNlbGYucXRndWlfZnJlcV9zaW5rX3hfMCwg
MCkpCiAgICAgICAgc2VsZi5jb25uZWN0KChzZWxmLnVoZF91c3JwX3NvdXJjZV8wLCAxKSwgKHNl
bGYucXRndWlfZnJlcV9zaW5rX3hfMCwgMSkpCgogICAgICAgICNzZWxmLmNvbm5lY3QoKHNlbGYu
dWhkX3VzcnBfc291cmNlXzAsIDEpLCAoc2VsZi5ibG9ja3NfbXVsdGlwbHlfY29uaiwgMCkpCiAg
ICAgICAgc2VsZi5jb25uZWN0KChzZWxmLmFuYWxvZ19zaWdfc291cmNlX3hfMV8wLCAwKSwgKHNl
bGYuYmxvY2tzX211bHRpcGx5X2NvbmosIDApKQogICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi51
aGRfdXNycF9zb3VyY2VfMCwgMCksIChzZWxmLmJsb2Nrc19tdWx0aXBseV9jb25qLCAxKSkKICAg
ICAgICBzZWxmLmNvbm5lY3QoKHNlbGYuYmxvY2tzX211bHRpcGx5X2NvbmosMCksIChzZWxmLmJs
b2Nrc19jb21wbGV4X3RvX21hZ3BoYXNlXzAsMCkpCgogICAgZGVmIGNsb3NlRXZlbnQoc2VsZiwg
ZXZlbnQpOgogICAgICAgIHNlbGYuc2V0dGluZ3MgPSBRdC5RU2V0dGluZ3MoIkdOVSBSYWRpbyIs
ICJzd2l0Y2hfb25fY2xpY2siKQogICAgICAgIHNlbGYuc2V0dGluZ3Muc2V0VmFsdWUoImdlb21l
dHJ5Iiwgc2VsZi5zYXZlR2VvbWV0cnkoKSkKICAgICAgICBldmVudC5hY2NlcHQoKQoKICAgIGRl
ZiBnZXRfdmFyaWFibGVfZnVuY3Rpb25fcHJvYmVfMV8wKHNlbGYpOgogICAgICAgIHJldHVybiBz
ZWxmLnZhcmlhYmxlX2Z1bmN0aW9uX3Byb2JlXzFfMAoKICAgIGRlZiBzZXRfdmFyaWFibGVfZnVu
Y3Rpb25fcHJvYmVfMV8wKHNlbGYsIHZhcmlhYmxlX2Z1bmN0aW9uX3Byb2JlXzFfMCk6CiAgICAg
ICAgc2VsZi52YXJpYWJsZV9mdW5jdGlvbl9wcm9iZV8xXzAgPSB2YXJpYWJsZV9mdW5jdGlvbl9w
cm9iZV8xXzAKCiAgICBkZWYgZ2V0X3N0YXJ0X2RlbGF5KHNlbGYpOgogICAgICAgIHJldHVybiBz
ZWxmLnN0YXJ0X2RlbGF5CgogICAgZGVmIHNldF9zdGFydF9kZWxheShzZWxmLCBzdGFydF9kZWxh
eSk6CiAgICAgICAgc2VsZi5zdGFydF9kZWxheSA9IHN0YXJ0X2RlbGF5CgogICAgZGVmIGdldF9z
YW1wX3JhdGUoc2VsZik6CiAgICAgICAgcmV0dXJuIHNlbGYuc2FtcF9yYXRlCgogICAgZGVmIHNl
dF9zYW1wX3JhdGUoc2VsZiwgc2FtcF9yYXRlKToKICAgICAgICBzZWxmLnNhbXBfcmF0ZSA9IHNh
bXBfcmF0ZQogICAgICAgIHNlbGYudWhkX3VzcnBfc291cmNlXzAuc2V0X3NhbXBfcmF0ZShzZWxm
LnNhbXBfcmF0ZSkKICAgICAgICBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfc2FtcF9yYXRlKHNl
bGYuc2FtcF9yYXRlKQogICAgICAgIHNlbGYucXRndWlfZnJlcV9zaW5rX3hfMC5zZXRfZnJlcXVl
bmN5X3JhbmdlKDAsIHNlbGYuc2FtcF9yYXRlKQogICAgICAgIHNlbGYubG93X3Bhc3NfZmlsdGVy
XzBfMC5zZXRfdGFwcyhmaXJkZXMubG93X3Bhc3MoMSwgc2VsZi5zYW1wX3JhdGUsIDUwMGUzLCAx
MDBlMywgZmlyZGVzLldJTl9IQU1NSU5HLCA2Ljc2KSkKICAgICAgICBzZWxmLmxvd19wYXNzX2Zp
bHRlcl8wLnNldF90YXBzKGZpcmRlcy5sb3dfcGFzcygxLCBzZWxmLnNhbXBfcmF0ZSwgNTAwZTMs
IDEwMGUzLCBmaXJkZXMuV0lOX0hBTU1JTkcsIDYuNzYpKQogICAgICAgIHNlbGYuYW5hbG9nX3Np
Z19zb3VyY2VfeF8xXzAuc2V0X3NhbXBsaW5nX2ZyZXEoc2VsZi5zYW1wX3JhdGUpCiAgICAgICAg
c2VsZi5hbmFsb2dfc2lnX3NvdXJjZV94XzEuc2V0X3NhbXBsaW5nX2ZyZXEoc2VsZi5zYW1wX3Jh
dGUpCgogICAgZGVmIGdldF9maWYoc2VsZik6CiAgICAgICAgcmV0dXJuIHNlbGYuZmlmCgogICAg
ZGVmIHNldF9maWYoc2VsZiwgZmlmKToKICAgICAgICBzZWxmLmZpZiA9IGZpZgogICAgICAgIHNl
bGYuYW5hbG9nX3NpZ19zb3VyY2VfeF8xXzAuc2V0X2ZyZXF1ZW5jeSgtc2VsZi5maWYpCiAgICAg
ICAgc2VsZi5hbmFsb2dfc2lnX3NvdXJjZV94XzEuc2V0X2ZyZXF1ZW5jeShzZWxmLmZpZikKCiAg
ICBkZWYgZ2V0X2ZjZW50ZXIoc2VsZik6CiAgICAgICAgcmV0dXJuIHNlbGYuZmNlbnRlcgoKICAg
IGRlZiBzZXRfZmNlbnRlcihzZWxmLCBmY2VudGVyKToKICAgICAgICBzZWxmLmZjZW50ZXIgPSBm
Y2VudGVyCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2VfMC5zZXRfY2VudGVyX2ZyZXEoc2Vs
Zi5mY2VudGVyLCAwKQogICAgICAgIHNlbGYudWhkX3VzcnBfc291cmNlXzAuc2V0X2NlbnRlcl9m
cmVxKHNlbGYuZmNlbnRlciwgMSkKICAgICAgICBzZWxmLnVoZF91c3JwX3NpbmtfMC5zZXRfY2Vu
dGVyX2ZyZXEoc2VsZi5mY2VudGVyLCAwKQogICAgICAgIHNlbGYudWhkX3VzcnBfc2lua18wLnNl
dF9jZW50ZXJfZnJlcShzZWxmLmZjZW50ZXIsIDEpCgogICAgZGVmIGdldF9idXR0b241KHNlbGYp
OgogICAgICAgIHJldHVybiBzZWxmLmJ1dHRvbjUKCiAgICBkZWYgc2V0X2J1dHRvbjUoc2VsZiwg
YnV0dG9uNSk6CiAgICAgICAgc2VsZi5idXR0b241ID0gYnV0dG9uNQoKICAgIGRlZiBnZXRfYnV0
dG9uNChzZWxmKToKICAgICAgICByZXR1cm4gc2VsZi5idXR0b240CgogICAgZGVmIHNldF9idXR0
b240KHNlbGYsIGJ1dHRvbjQpOgogICAgICAgIHNlbGYuYnV0dG9uNCA9IGJ1dHRvbjQKCiAgICBk
ZWYgZ2V0X2J1dHRvbjMoc2VsZik6CiAgICAgICAgcmV0dXJuIHNlbGYuYnV0dG9uMwoKICAgIGRl
ZiBzZXRfYnV0dG9uMyhzZWxmLCBidXR0b24zKToKICAgICAgICBzZWxmLmJ1dHRvbjMgPSBidXR0
b24zCgogICAgZGVmIGdldF9idXR0b24yKHNlbGYpOgogICAgICAgIHJldHVybiBzZWxmLmJ1dHRv
bjIKCiAgICBkZWYgc2V0X2J1dHRvbjIoc2VsZiwgYnV0dG9uMik6CiAgICAgICAgc2VsZi5idXR0
b24yID0gYnV0dG9uMgoKICAgIGRlZiBnZXRfYnV0dG9uMShzZWxmKToKICAgICAgICByZXR1cm4g
c2VsZi5idXR0b24xCgogICAgZGVmIHNldF9idXR0b24xKHNlbGYsIGJ1dHRvbjEpOgogICAgICAg
IHNlbGYuYnV0dG9uMSA9IGJ1dHRvbjEKCgpkZWYgbWFpbih0b3BfYmxvY2tfY2xzPXN3aXRjaF9v
bl9jbGljaywgb3B0aW9ucz1Ob25lKToKCiAgICBmcm9tIGRpc3R1dGlscy52ZXJzaW9uIGltcG9y
dCBTdHJpY3RWZXJzaW9uCiAgICBpZiBTdHJpY3RWZXJzaW9uKFF0LnFWZXJzaW9uKCkpID49IFN0
cmljdFZlcnNpb24oIjQuNS4wIik6CiAgICAgICAgc3R5bGUgPSBnci5wcmVmcygpLmdldF9zdHJp
bmcoJ3F0Z3VpJywgJ3N0eWxlJywgJ3Jhc3RlcicpCiAgICAgICAgUXQuUUFwcGxpY2F0aW9uLnNl
dEdyYXBoaWNzU3lzdGVtKHN0eWxlKQogICAgcWFwcCA9IFF0LlFBcHBsaWNhdGlvbihzeXMuYXJn
dikKCiAgICB0YiA9IHRvcF9ibG9ja19jbHMoKQogICAgdGIuc3RhcnQoKQogICAgdGIuc2hvdygp
CgogICAgZGVmIHF1aXR0aW5nKCk6CiAgICAgICAgdGIuc3RvcCgpCiAgICAgICAgdGIud2FpdCgp
CiAgICBxYXBwLmNvbm5lY3QocWFwcCwgUXQuU0lHTkFMKCJhYm91dFRvUXVpdCgpIiksIHF1aXR0
aW5nKQogICAgcWFwcC5leGVjXygpCgoKaWYgX19uYW1lX18gPT0gJ19fbWFpbl9fJzoKICAgIG1h
aW4oKQo=
--00000000000048416c05a14cd8a8
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--00000000000048416c05a14cd8a8--

