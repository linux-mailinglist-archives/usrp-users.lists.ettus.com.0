Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47418D79F
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 19:49:17 +0100 (CET)
Received: from [::1] (port=33142 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFMhn-0008Fx-VN; Fri, 20 Mar 2020 14:49:15 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:36252)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jFMhj-00089s-Ve
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 14:49:12 -0400
Received: by mail-oi1-f177.google.com with SMTP id k18so7645048oib.3
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 11:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DUGr4rjJcIF6aR8oUrPvOp3KXAZr5+5HEHrWAwEdSls=;
 b=MC5bP5vW3lP4JZDwCS3AIe+h2ngd1TW0mxdyQS9dJqnLB9uwNIlE0kLurt+dynGDER
 fU3NkAzpi4UVMZ8pkbU8UHzLCQYUTP+8rkV69VOiTOC6TwUW7lW2xrT/53mDdiTx6YbC
 y25HBSADMfeJ79mSvf/WvaHlMbmIn+rSHz0+k0mUo3RnyWWrGjC/U6P8DTk96E5GVS47
 0vvThPn2Gt5gC3PMGQiOKW4glsA3MHwyLWKKQLhdCHgWuM2IVZMdcnoLsf7mKtUb3cyV
 jTOsMhnzOkvOprZZschVoE93Yy+bm4I/9hN+lxxVgNOs89Z87rI1WB9Cb6GaBHBYUy1Z
 V6og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DUGr4rjJcIF6aR8oUrPvOp3KXAZr5+5HEHrWAwEdSls=;
 b=P5p/wJeb7652NxlF40W/LI7EfEKQhMwBT2bgoTAwjc/Oda+xgv7mrKAXOALxkb2Hrs
 3tn7hZPsgdW3I/wjWGHgVh9GW8M6tgSXZ5hOHxGrt2rWcbC/ng3xDSAcuH1SfTYj5N9h
 X0HklMMSquTDpXjLpiscTlbUBE9tjVq/UUIqSXy8fi+X8B37/ZFb+QYStJTKYEBpWG0A
 X0dOpOBr5U4jJJgfU5yS9/mP4PTf60zhNp794m6p90mB5uCIZU33E6YCypKoogCltR47
 sGycMiMk4jTJfMDxmby2kzdBW4mrf0Pv81dKs/SuCrIPPy+K8tbTyeKtK1lImJ9fYxsA
 +0rA==
X-Gm-Message-State: ANhLgQ3RnMziRQIr/WsxbMSc2dCEvhT+E+Ze0DSys8AAl2l+cHXixe0G
 8WyKs4EHWgKvEHysUlhUa7GMF/nKcyxtEuKyoVjU5A==
X-Google-Smtp-Source: ADFU+vs991tY5ZmRxM38mDBBYoqwm3WDzx+2bTy1F/B1xMqH7fJNdXHAryFI8dFzlJZlWQ5MpQYrJ+M3jQMVVlFWqy4=
X-Received: by 2002:aca:ebca:: with SMTP id j193mr7581707oih.124.1584730110735; 
 Fri, 20 Mar 2020 11:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
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
 <CAB__hTSnwqCS4FZ-KeOH-cSN+cSt+ffbqwwzep8k9cuo-8QWRg@mail.gmail.com>
 <trinity-4b23c7f1-48d7-45c1-b686-3a64d6136a81-1584728423677@3c-app-gmx-bs46>
In-Reply-To: <trinity-4b23c7f1-48d7-45c1-b686-3a64d6136a81-1584728423677@3c-app-gmx-bs46>
Date: Fri, 20 Mar 2020 14:48:18 -0400
Message-ID: <CAB__hTRiv_6fvdNZ+3YD2r+vLSi9XOrWRwLzjY-SiAByRZUa6g@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9036966207516473922=="
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

--===============9036966207516473922==
Content-Type: multipart/alternative; boundary="0000000000005107a305a14dbb23"

--0000000000005107a305a14dbb23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukas,
Taking this off the list for a bit...

   - On the LO sync, all I mean is the you will need to use a tune request
   with the RF policy not NONE and use timed commands - just like for the D=
SP
   freq.  Does that make sense?
   - The reason that I think that my original methodology for measuring
   rx-to-tx phase is not valid is that one of the channels, let's say
   Tx1->Rx1, runs continuously (no tuning commands) while the other, Tx0->R=
x0,
   has an abrupt phase change at an arbitrary time when the user clicks the
   button (I'm assuming the phase change is caused by the phase accumulator=
s
   being actually reset to zero). On the other hand, the Tx0->Rx0 path
   actually has two abrupt phase changes (because both accumulators are set=
 to
   zero at the same time) so perhaps it should cancel out. I'm really not
   clear on this.
   - Regarding the phase walk which occurs when I wired the Tx signal
   source to the multiply_conjugate (in place of Rx1), I really don't
   understand what is causing this walk. I realize that the hardware is not
   actually operating at the frequency you specify because of hardware
   limitations (such as 10 MHz ref) and quantizations of both the LO and th=
e
   DSP freq.  But, if the quantization errors are the same in the Rx and Tx
   paths and if they are both disciplined to the 10 MHz ref, I don't
   understand why the errors don't cancel out such that there is no phase w=
alk.

So, even though I'm greatly confused, I still do believe that it is likely
that it is working for you the way you need it to.  I believe the problem
is related to our methodology for measuring the Tx-to-Rx phase.  But can't
be sure.  Is there another way you can know if it's working for you the way
it needs to be?

Rob

On Fri, Mar 20, 2020 at 2:21 PM Lukas Haase <lukashaase@gmx.at> wrote:

> Hi Rob,
>
> That's a good point and I thought about this very early on but figures it
> would not matter because the phase of the "Tx signal source" is just
> constant.
>
> In terms of phase we could think of it as "phase_we_want_to_measure +
> phase_of_tx_source". But since phase_of_tx_source does not change over
> runs, it shouldn't cause any differences. However, it was 2 months ago wh=
en
> I did this. I will have another look at it with your code.
>
> Thanks for pointing out the LO synchronization. When you say "from run to
> run", you mean when I quit/execute again the python script for example,
> right? I was sure that I had to take this as a fact for now. I am not
> familiar with the option of synchronizing the LO settings. In all the doc=
s
> (e.g.
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Device=
s,
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UH=
D)
> I have not read about it. Can you elaborate on this?
>
> Thanks again,
> Lukas
>
>
>
> *Gesendet:* Freitag, 20. M=C3=A4rz 2020 um 13:44 Uhr
> *Von:* "Rob Kossler" <rkossler@nd.edu>
> *An:* "Lukas Haase" <lukashaase@gmx.at>, usrp-users <
> usrp-users@lists.ettus.com>
> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
> using a timed command
> OK.  Thinking about it a little more, I think that perhaps the tx-to-rx
> phase measurement methodology was flawed.  So, maybe this is not any
> issue.  I changed the Python (new version attached) to send the gnuradio =
Tx
> signal source (which also drives Tx0 and Tx1) to one input of the
> multiply_conjugate (replacing Rx1 which previously was the other input).
> When I run, now the phase "walks", but always over the same range of
> values.  When I retune Tx0 and Rx0, the "walk" resets but still walks ove=
r
> the same range.  As to why the phase walks, I don't know the answer right
> off.
>
> On a separate topic, I noticed that your code does not synchronize the LO
> setting.  This means that the RF phase between the channels could vary fr=
om
> run to run.
>
> On Fri, Mar 20, 2020 at 12:04 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Lukas,
>> After looking at this a bit, I think that there is indeed an issue.  I
>> think that it is possible to get consistent tx-to-tx phase results and
>> consistent rx-to-rx phase results, but NOT consistent rx-to-tx phase
>> results.  A few remarks:
>>
>>    - Setup
>>       - 2-channel X310/UBX-160 with two external loopback RF cables
>>       (with attenuation) such that Tx0=3D>Rx0 and Tx1=3D>Rx1 (I likely d=
on't even
>>       need the loopback cables because I could operate on just the leaka=
ge signal
>>       from each channel, but I decided to use external cables).
>>       - UHD 3.15.LTS and gnuradio 3.7.13.5.
>>
>>
>>    - Methodology
>>       - Transmit an identical waveform (1 MHz tone) out of both Tx ports
>>       - Measure relative Rx phase by using a multiply_conjugate block
>>       for the 2 Rx channels (see below for description of why I changed =
what you
>>       sent me) with output connected to a complex_to_mag_phase block and
>>       subsequent moving_average
>>       - Use digital tuning (with timed commands) to toggle between 2 dsp
>>       frequencies while noting the relative phase results
>>    - Test cases
>>       - Case 1: Verify rx-to-rx phase results by sending tune requests
>>       to the 2 Rx channels (but sending nothing to the Tx channels)
>>       - Case 2: Verify tx-to-tx phase results by sending tune requests
>>       to the 2 Tx channels (but sending nothing to the Rx channels)
>>       - Case 3: Verify rx-to-tx phase results by sending tune requests
>>       to channel 0 Rx and Tx (but sending nothing to channel 1 Rx and Tx=
)
>>       - Case 4: Verify rx-to-tx phase results by sending tune requests
>>       to channel 1 Rx and Tx (but sending nothing to channel 0 Rx and Tx=
)
>>
>> Cases 1 and 2 show consistent results, but cases 3 and 4 do not. I canno=
t
>> conceive of what the problem is. It is so perplexing that I hesitate to
>> send this email because it seems I must be doing something wrong.  Perha=
ps
>> there is a problem in the methodology above along with the test cases.
>> But, it seems sound to me.
>>
>> The Rx block diagram you sent me does not match the Python code you
>> sent.  This threw me off for a while.  In your block diagram, the phase
>> measurement is made from the division of the two low pass filter outputs=
.
>> In the Python code you sent, the phase measurement uses only the first l=
ow
>> pass filter output.  The reason this is important is that I suspected ea=
rly
>> on that the problem might be related to your gnuradio signal_source used
>> for IF downconversion.  This signal source is not synchronous with the U=
SRP
>> as you change USRP freqs. However, I figured that it wasn't a problem
>> because it was "divided out".  But, since it is actually not divided out=
,I
>> believe that this was providing misleading results.
>>
>> In the end, I just changed your code to add a "multiply_conjugate_cc"
>> block with the two Rx channels as the two inputs.  This effectively uses
>> one channel to downconvert the other and thus eliminates the need for th=
e
>> signal source in the Rx block diagram.  I then connected this
>> multiply_conjugate directly to the complex_to_mag_phase.  You could
>> simplify the code by removing the other multiply blocks, low pass filter=
s,
>> and divide since these are not used. Also, I put all of the functionalit=
y
>> in the rxtx (together) button callback.  I did not really use the other
>> buttons.  Attached is the modified code.
>>
>> Rob
>>
>> On Fri, Mar 20, 2020 at 2:38 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Lukas,
>>> A few remarks:
>>>
>>>    - The 2nd code you sent works fine.  Thanks.
>>>    - I'm not sure that starting/stopping as I do in my program is
>>>    causing the issue.  The only reason I didn't continuously stream bot=
h Rx
>>>    and Tx like you do in gnuradio is because my software is not setup t=
o do
>>>    that.
>>>    - So, I still think it's possible that UHD can do the job with
>>>    continuous streaming but perhaps there is still something in the gnu=
radio
>>>    config that is not quite right.  But, I don't know what that is righ=
t now.
>>>    I need to think about this a bit....
>>>
>>> Rob
>>>
>>> On Thu, Mar 19, 2020 at 8:17 PM Lukas Haase <lukashaase@gmx.at> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> Sorry I really should have ran the python file before uploading. The
>>>> issue was that I combined to files into one and forgot to remove the
>>>> imported file.
>>>> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/
>>>>
>>>>
>>>> Thanks for reporting your results .... very interesting!
>>>>
>>>> Why do you think second mode makes sense to you? (assuming you are
>>>> using timed commands to to retune TX+RX at the same time)
>>>>
>>>> In general, it seems to me that things are related to streaming
>>>> start/stop. Maybe things are reset when streaming starts/ends but not =
when
>>>> re-tuning?
>>>>
>>>> Maybe this is what Marcus was mentioning: resetting phase accumulator
>>>> vs. "increment register is updated with the new phase increment"?
>>>>
>>>> MAYBE stopping/starting resets the phase accumulator to zero and just
>>>> timed retuning doesn't reset anything. But still, my question is left =
why
>>>> this would result in a random phase offset between DUC and DDC.
>>>>
>>>> Thanks again!!
>>>> Lukas
>>>>
>>>>
>>>> *Gesendet:* Donnerstag, 19. M=C3=A4rz 2020 um 19:16 Uhr
>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>> *Cc:* "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>>>> using a timed command
>>>> Lukas,
>>>> I installed gnuradio and tried to run but encounter the following.  I'=
m
>>>> guessing this is your block.
>>>> Traceback (most recent call last):
>>>>   File "test.py", line 25, in <module>
>>>>     import epy_block_1
>>>> ImportError: No module named epy_block_1
>>>> Rob
>>>>
>>>> On Thu, Mar 19, 2020 at 6:28 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Ok.  False alarm.  I forgot about the dboard clock needing set to
>>>>> 20MHz for RF freq below 1 GHz.  When I made this change, now I get
>>>>> consistent Rx-Tx phase for the first mode where both Tx and Rx start/=
stop
>>>>> at each test.
>>>>> Rob
>>>>>
>>>>> On Thu, Mar 19, 2020 at 6:10 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>>> Ok. I modified my code to be more like yours...
>>>>>>
>>>>>>    - toggling dsp freq rather than LO freq
>>>>>>    - LO at 900 MHz
>>>>>>    - external connections Tx0 =3D> Splitter_1x2 =3D> both Rx0 and Rx=
1
>>>>>>    - Previously, I was starting / stopping both Rx & Tx in between
>>>>>>    each test.  Now, I added a mode where the Tx is on continuously, =
and the Rx
>>>>>>    starts & stops for each test after the dsp freq change
>>>>>>
>>>>>> The results are the following:
>>>>>>
>>>>>>    - In the first mode where both Tx and Rx start/stop at each test,
>>>>>>    I get consistent group delay (as measured by the correlation peak=
 index)
>>>>>>    for both Rx-Rx and Rx-Tx.  But for phase, the Rx-Rx phase is cons=
istent,
>>>>>>    but the Rx-Tx phase seems random
>>>>>>    - In the second mode where Tx is on continuously and I start/stop
>>>>>>    Rx after each dsp freq change, the group delay is constant for Rx=
-Rx but
>>>>>>    random for Rx-Tx.  The phase results are constant for Rx-Rx but r=
andom for
>>>>>>    Rx-Tx.
>>>>>>
>>>>>> Regarding the 2nd mode, this makes sense to me.  But, for the 1st
>>>>>> mode, I don't understand why the Rx-Tx phase seems random. Still thi=
nking
>>>>>> about it....
>>>>>> Rob
>>>>>>
>>>>>> On Thu, Mar 19, 2020 at 4:35 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>>> Lukas,
>>>>>>> Just before receiving your email, I ran the following with my custo=
m
>>>>>>> c++ & matlab software using X310/UBX-160 with the connections I des=
cribed.
>>>>>>> The following shows the output which is very consistent.  I used a =
100 tone
>>>>>>> multi-tone waveform spread over 4 MHz bandwidth (using 5 MS/s sampl=
e rate
>>>>>>> on Tx and Rx).  Note the consistency of results as I toggled betwee=
n 2
>>>>>>> frequencies: 2450 and 2460 MHz.
>>>>>>>
>>>>>>> My method was the following:
>>>>>>>
>>>>>>>    - Tx waveform was 500 points long
>>>>>>>    - Rx capture was 5000 points long
>>>>>>>    - Compute cross-correlation (using Matlab xcorr) as follows:
>>>>>>>    xcorr(rx0, conj(tx)) AND xcorr(rx0,conj(rx1))
>>>>>>>    - Find the correlation peak (which was very pronounced) which
>>>>>>>    shows the sample delay between the two signals.  Extract the pha=
se at the
>>>>>>>    peak
>>>>>>>
>>>>>>> Oops, I just realized that I used a constant DSP freq (10 MHz) and =
I
>>>>>>> changed the LO freq in my test.  I will try again with moving the D=
SP freq
>>>>>>> instead.
>>>>>>> Rob
>>>>>>>
>>>>>>> Test 1: freq =3D 2450.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.7
>>>>>>> Test 2: freq =3D 2460.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.1
>>>>>>> Test 3: freq =3D 2450.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>> Test 4: freq =3D 2460.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.6
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.0
>>>>>>> Test 5: freq =3D 2450.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>> Test 6: freq =3D 2460.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.8
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.7
>>>>>>> Test 7: freq =3D 2450.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.9
>>>>>>> Test 8: freq =3D 2460.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>>> Test 9: freq =3D 2450.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>> Test 10: freq =3D 2460.0 MHz
>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>>> >>
>>>>>>>
>>>>>>>
>>>>>>> On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase <lukashaase@gmx.at>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Rob,
>>>>>>>>
>>>>>>>> Yes, I confirm your conclusion.
>>>>>>>>
>>>>>>>>
>>>>>>>>    - I calculate the relative phase by dividing the outputs of
>>>>>>>>    both receivers. To understand better, note that I have an addit=
ional "IF
>>>>>>>>    stage" in my own signal flow such that I exclude DC offset corr=
ection etc.
>>>>>>>>    the USRP may perform. This is the block diagram of the transmit=
ter part:
>>>>>>>>    https://snipboard.io/YFgIKs.jpg . I send "exp(1j*1MHz*t) . This
>>>>>>>>    shows the receiver part: https://snipboard.io/i9jLJg.jpg . I
>>>>>>>>    multiply the received signal with exp(-1j*1MHz*t) and filter th=
em. Then I
>>>>>>>>    divide both streams and take the phase part. I take a moving av=
erage (for
>>>>>>>>    flucatuations), add pi and display the number.
>>>>>>>>    - https://snipboard.io/YFgIKs.jpg
>>>>>>>>    https://snipboard.io/YFgIKs.jpg https://snipboard.io/YFgIKs.jpg
>>>>>>>>    That's so nice, thank you!! My code is here:
>>>>>>>>    http://paste.ubuntu.com/p/MbCJfPGzYW/ . I'm not sure if you
>>>>>>>>    have gnuradio(and QT) installed but if yes, simply "python2
>>>>>>>>    switch_on_click.py" should do. Let me quickly elaborate how it =
works:
>>>>>>>>       - Class "switch_on_click" implements a normal gnuradio flow
>>>>>>>>       with USRP transmitter and receiver.
>>>>>>>>       - It also uses a custom module together with buttons and a
>>>>>>>>       probe block to call functions upon clicking on a button
>>>>>>>>       - The callback functions are defined in class "blk"
>>>>>>>>       - The most important is "def button_rtx_handler" on line 106
>>>>>>>>       which is executed when user clicks on button "Switch RTX (to=
gether)"
>>>>>>>>    - Again, thank you for trying this out!! If it works, would you
>>>>>>>>    mind sharing this code then? I may be able to check then where =
it breaks on
>>>>>>>>    my system
>>>>>>>>    - I use 900 MHz as default center frequency (and "rf_freq").
>>>>>>>>    When clicking, I jump between dsp_freq=3D0 and dsp_freq=3D500e3=
. As to my
>>>>>>>>    waveform, you can infer from my screenshots and code above: I a=
m
>>>>>>>>    transmitting and receiving a 1MHz waveform (which acts as an ad=
ditional "IF
>>>>>>>>    stage"). The received signal is then downconcerted from 1MHz to=
 DC. I use 5
>>>>>>>>    MSsps sampling rate.
>>>>>>>>
>>>>>>>>
>>>>>>>> Again, thank you SO much.
>>>>>>>>
>>>>>>>> Best,
>>>>>>>> Lukas
>>>>>>>>
>>>>>>>>
>>>>>>>> *Gesendet:* Donnerstag, 19. M=C3=A4rz 2020 um 10:43 Uhr
>>>>>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>>>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>> *Cc:* "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>> when using a timed command
>>>>>>>> Hi Lukas,
>>>>>>>> So, the conclusion is that your Rx0-to-Rx1 relative phase is nearl=
y
>>>>>>>> constant such that it seems that both Rx0/Rx1 are phase coherent a=
nd
>>>>>>>> Tx0/Tx1 are phase coherent.  But, phase from Tx-to-Rx is random.  =
Please
>>>>>>>> correct me if that is wrong.
>>>>>>>>
>>>>>>>> I have a few comments:
>>>>>>>>
>>>>>>>>    - How do you measure/calculate the relative phase?
>>>>>>>>    - Can you send me the full Python code to look at?  As I
>>>>>>>>    mentioned previously, I am not too good at gnuradio/Python, but=
 I might be
>>>>>>>>    able to spot something.
>>>>>>>>    - As to your question, I always use synchronous measurements.
>>>>>>>>    And, I'm confident that my Rx-to-Rx phase is coherent.  But, I =
haven't
>>>>>>>>    really looked at Tx-to-Rx in a while so I will do so later toda=
y.  Here are
>>>>>>>>    the steps I plan to take:
>>>>>>>>       1. Connect Tx0 to Rx1.  Note that there is a pretty strong
>>>>>>>>       leakage signal from Tx0 to Rx0 so I don't really need to pro=
vide a physical
>>>>>>>>       connection in order to get a signal on Rx0.  The signal atte=
nuation in this
>>>>>>>>       leakage path is approx 40 dB so it is not too much different=
 than the
>>>>>>>>       signal level I will receive on Rx1 if I use an external 30 d=
B attenuator.
>>>>>>>>       2. Set Rx and Tx frequency to freq 1
>>>>>>>>       3. Measure and note the relative phase for Rx0/Tx0 and
>>>>>>>>       Rx1/Tx0 for freq 1
>>>>>>>>       4. Set Rx and Tx frequency to freq 2
>>>>>>>>       5. Measure and note the relative phase for Rx0/Tx0 and
>>>>>>>>       Rx1/Tx0 for freq 2
>>>>>>>>       6. Repeat steps 2-5 a few times to ensure that the
>>>>>>>>       measurements are repeatable
>>>>>>>>    - Questions: what should I use for freq 1 and freq 2?  What
>>>>>>>>    waveform are you transmitting?  What sample rates for Tx and Rx=
?
>>>>>>>>
>>>>>>>> Rob
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users <
>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Hi Rob,
>>>>>>>>>
>>>>>>>>> I think the issue is really having two usrp_multi devices with
>>>>>>>>> timed commands and same timestmap or similar. From your tests bel=
ow:
>>>>>>>>>
>>>>>>>>> 1.) I can *confirm *that the relative phase between two RX in
>>>>>>>>> your suggested test is always the same! In fact, it is always 4.5=
6 rad,
>>>>>>>>> even across restarts and for different frequencies! That somewhat=
 makes
>>>>>>>>> sense because the phase offset is now only dependent on the diffe=
rence
>>>>>>>>> between the two channels (fixed) and cable lengths from the split=
ter
>>>>>>>>> (fixed). I verified by removing the timed command on usrp source,=
 the phase
>>>>>>>>> offset becomes random after each retune. Of course, this is indep=
endent of
>>>>>>>>> TX tuning (timed vs. not). For reference, this is the code used:
>>>>>>>>>
>>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NO=
NE
>>>>>>>>>         tune_req_rx.dsp_freq_policy =3D
>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NO=
NE
>>>>>>>>>         tune_req_tx.dsp_freq_policy =3D
>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>>
>>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>>
>>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx)          =
# TX
>>>>>>>>>         res2 =3D usrp_source.set_center_freq(tune_req_rx, 0)  #RX=
1
>>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 1)  #RX=
2
>>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>>
>>>>>>>>> 2.) I also tried your second suggestion. Before reading on, you
>>>>>>>>> wanna guess what the outcome is?
>>>>>>>>> I connected "TX/RX" to "RX2" on UBX #1 (TX1 --> RX1) and "TX/RX"
>>>>>>>>> to "RX2" on UBX #2 (TX2 --> RX2). In absence of a second 30dB att=
enuator I
>>>>>>>>> used two antennas closely spaced together. For reference, my code=
 looks now
>>>>>>>>> like:
>>>>>>>>>
>>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NO=
NE
>>>>>>>>>         tune_req_rx.dsp_freq_policy =3D
>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NO=
NE
>>>>>>>>>         tune_req_tx.dsp_freq_policy =3D
>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>>
>>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>>
>>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx, 0)     # =
TX1
>>>>>>>>>         res2 =3D usrp_sink.set_center_freq(tune_req_tx, 1)     # =
TX2
>>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 0) # RX=
1
>>>>>>>>>         res4 =3D usrp_source.set_center_freq(tune_req_rx, 1) # RX=
2
>>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>>
>>>>>>>>> I again look at the *relative phase* of RX1 and RX2 (obtained by
>>>>>>>>> dividing the two) and guess what: Also now the relative phase sta=
ys
>>>>>>>>> constant! (This time it actually slightly varies from 3.0 rad to =
3.7 rad
>>>>>>>>> between two different frequencies).
>>>>>>>>> What does that mean? I think it means that TX must be tuned
>>>>>>>>> coherently and RX must be tuned coherently, i.e., timed commands =
generally
>>>>>>>>> work for multiple TX's and multiple RX's *individually*. Do I get
>>>>>>>>> that right?
>>>>>>>>>
>>>>>>>>> What doesn't seem to work is RX+TX *together*.
>>>>>>>>>
>>>>>>>>> I am very desperately asking if you had coherent TX+RX setup
>>>>>>>>> working at any point or know somebody who did. It would be so muc=
h worth to
>>>>>>>>> know if this is something that never worked to begin with or if I=
'm just
>>>>>>>>> doing something wrong. On the other hand I don't want to believe =
being the
>>>>>>>>> only person on the planet having tried TX+RX phase coherent opera=
tion :-/
>>>>>>>>>
>>>>>>>>> Any other further suggestions on how to continue debugging with
>>>>>>>>> the above in mind would be helpful too.
>>>>>>>>>
>>>>>>>>> In my opinion there are two options left:
>>>>>>>>> 1.) There is still a nondeterministic delay between the TX and RX
>>>>>>>>> timed commands (to my understanding, even a constant delay would =
result in
>>>>>>>>> coherent phase)
>>>>>>>>> 2.) While the phase accumulators in RX are set to the same values
>>>>>>>>> (and in TX as well), they may be set to a different, random value=
.
>>>>>>>>>
>>>>>>>>> However, I don't really know how to test these.
>>>>>>>>>
>>>>>>>>> Thanks,
>>>>>>>>> Lukas
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> *Gesendet:* Freitag, 13. M=C3=A4rz 2020 um 12:27 Uhr
>>>>>>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>> *Cc:* "Marcus D Leech" <patchvonbraun@gmail.com>, "
>>>>>>>>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>>> when using a timed command
>>>>>>>>> Ok, great.  I am trying to think of ways to now add the phase
>>>>>>>>> measurement.  Ideas...
>>>>>>>>>
>>>>>>>>>    - In order to get consistent phase, you would need to tune Rx
>>>>>>>>>    and Tx DSP at the same time (rather than below where you are o=
nly tuning
>>>>>>>>>    one of them).  So, assuming that this will not produce consist=
ent phase
>>>>>>>>>    results, then maybe try the following idea...
>>>>>>>>>    - If you want to check just Rx DSP tuning (with fixed Tx DSP
>>>>>>>>>    tuning), you could try a 2 channel Rx measurement where the Tx=
 is split
>>>>>>>>>    externally with 1:2 splitter in order to drive both Rx0 and Rx=
1.  Then,
>>>>>>>>>    measure the relative phase Rx0/Rx1 and then tune back and fort=
h between two
>>>>>>>>>    Rx DSP freqs to see if the relative phase on Rx remains consta=
nt.  If so,
>>>>>>>>>    this would give you good confidence that Rx DSP tuning is inde=
ed happening
>>>>>>>>>    synchronously
>>>>>>>>>    - Assuming that the Rx IS synchronous in the step above
>>>>>>>>>    (perhaps a bad assumption, but here goes), you could then chec=
k TX DSP
>>>>>>>>>    tuning (with fixed Rx DSP tuning) by using two Tx and two Rx c=
hannels with
>>>>>>>>>    Tx0 connected to Rx0 and Tx1 connected to Rx1.  At this point =
we are
>>>>>>>>>    confident that Rx DSP tuning is synchronous so any synchronous=
 misbehavior
>>>>>>>>>    would imply a Tx sync problem.
>>>>>>>>>
>>>>>>>>> Sorry I can't think of better ideas.
>>>>>>>>> Rob
>>>>>>>>>
>>>>>>>>> On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase <lukashaase@gmx.at>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi Rob,
>>>>>>>>>>
>>>>>>>>>> 1.) yes, works(*)
>>>>>>>>>> 2.) yes, works(*)
>>>>>>>>>>
>>>>>>>>>> (*): qualitatively. I set the timed command to
>>>>>>>>>> "get_current_time() + uhd.time_spec(2.0)" and I see the chance 2=
 seconds
>>>>>>>>>> after my click on the screen. I cannot (do not know how) check i=
f it
>>>>>>>>>> actually happens at sample-precicse location.
>>>>>>>>>>
>>>>>>>>>> Great, any ideas to simplify the setup would nice. I just don't
>>>>>>>>>> know how I could continue to debugging the phase.
>>>>>>>>>>
>>>>>>>>>> Best,
>>>>>>>>>> Luke
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr
>>>>>>>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>>> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "
>>>>>>>>>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>>>> when using a timed command
>>>>>>>>>>
>>>>>>>>>> Thanks Lukas,
>>>>>>>>>> I wanted to confirm that you did not have an older version of
>>>>>>>>>> FPGA firmware because there was a DDC/DUC bug fix[
>>>>>>>>>> https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5=
dfaa0e69b1c6798771e6d]
>>>>>>>>>> related to phase.  However, the version you provided with uhd_us=
rp_probe
>>>>>>>>>> confirms that you have the bug fix included.  So, this is not th=
e problem.
>>>>>>>>>>
>>>>>>>>>> From what you said, I assume that you can successfully do the
>>>>>>>>>> following:
>>>>>>>>>> 1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only
>>>>>>>>>> (do not change TX RF) and you can see the frequency change at th=
e specified
>>>>>>>>>> command time (i.e., if you specify the command time 1 sec in the=
 future,
>>>>>>>>>> the change does not occur until 1 sec in the future).
>>>>>>>>>> 2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and yo=
u
>>>>>>>>>> can see the frequency change at the specified command time.
>>>>>>>>>>
>>>>>>>>>> I am trying to simplify the issue by removing RF tuning
>>>>>>>>>> completely and by tuning only 1 of Rx/Tx at a time.  Perhaps thi=
s will help
>>>>>>>>>> lead to the answer.
>>>>>>>>>> Rob
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase <lukashaase@gmx.at
>>>>>>>>>> [mailto:lukashaase@gmx.at]> wrote:Hi again Rob,
>>>>>>>>>>
>>>>>>>>>> Yes, I confirm:
>>>>>>>>>>
>>>>>>>>>> 1.) Finally I get the commands to execute at the same time (TX
>>>>>>>>>> and RX individually and both at the same time)
>>>>>>>>>> 2.) Yes, the phase is random after each retune, even when I
>>>>>>>>>> retune back to the same frequency
>>>>>>>>>> 3.) (2) is only true if it includes *DSP* retuning. With naalog
>>>>>>>>>> retuning (+integer-N retuning) I get phase coherence, as expecte=
d.
>>>>>>>>>>
>>>>>>>>>> I actually expected the PLL retuning much more challenging than
>>>>>>>>>> the DSP retuning but for some reason it seems to be the opposite=
...
>>>>>>>>>>
>>>>>>>>>> Thanks,
>>>>>>>>>> Lukas
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list
>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
>>>>>>>>
>>>>>>>>

--0000000000005107a305a14dbb23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Lukas,</div><div>Taking this off =
the list for a bit...</div><div><ul><li>On the LO sync, all I mean is the y=
ou will need to use a tune request with the RF policy not NONE and use time=
d commands - just like for the DSP freq.=C2=A0 Does that make sense?</li><l=
i>The reason that I think that my original methodology for measuring rx-to-=
tx phase is not valid is that one of the channels, let&#39;s say Tx1-&gt;Rx=
1, runs continuously (no tuning commands) while the other, Tx0-&gt;Rx0, has=
 an abrupt phase change at an arbitrary time when the user clicks the butto=
n (I&#39;m assuming the phase change is caused by the phase accumulators be=
ing actually reset to zero). On the other hand, the Tx0-&gt;Rx0 path actual=
ly has two abrupt phase changes (because both accumulators are set to zero =
at the same time) so perhaps it should cancel out. I&#39;m really not clear=
 on this.</li><li>Regarding the phase walk which occurs when I wired the Tx=
 signal source to the multiply_conjugate (in place of Rx1), I really don&#3=
9;t understand what is causing this walk. I realize that the hardware is no=
t actually operating at the frequency you specify because of hardware limit=
ations (such as 10 MHz ref) and quantizations of both the LO and the DSP fr=
eq.=C2=A0 But, if the quantization errors are the same in the Rx and Tx pat=
hs and if they are both disciplined to the 10 MHz ref, I don&#39;t understa=
nd why the errors don&#39;t cancel out such that there is no phase walk.</l=
i></ul><div>So, even though I&#39;m greatly confused, I still do believe th=
at it is likely that it is working for you the way you need it to.=C2=A0 I =
believe the problem is related to our methodology for measuring the Tx-to-R=
x phase.=C2=A0 But can&#39;t be sure.=C2=A0 Is there another way you can kn=
ow if it&#39;s working for you the way it needs to be?</div><div><br></div>=
<div>Rob<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Mar 20, 2020 at 2:21 PM Lukas Haase &lt;<a =
href=3D"mailto:lukashaase@gmx.at">lukashaase@gmx.at</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-=
family:Verdana;font-size:12px"><div>Hi Rob,</div>

<div>=C2=A0</div>

<div>That&#39;s a good point and I thought about this very early on but fig=
ures it would not matter because the phase of the &quot;Tx signal source&qu=
ot; is just constant.</div>

<div>=C2=A0</div>

<div>In terms of phase we could think of it as &quot;phase_we_want_to_measu=
re + phase_of_tx_source&quot;. But since phase_of_tx_source does not change=
 over runs, it shouldn&#39;t cause any differences. However, it was 2 month=
s ago when I did this. I will have another look at it with your code.</div>

<div>=C2=A0</div>

<div>Thanks for pointing out the LO synchronization. When you say &quot;fro=
m run to run&quot;, you mean when I quit/execute again the python script fo=
r example, right? I was sure that I had to take this as a fact for now. I a=
m not familiar with the option of synchronizing the LO settings. In all the=
 docs (e.g. <a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capabi=
lity_with_USRP_Devices" target=3D"_blank">https://kb.ettus.com/Synchronizat=
ion_and_MIMO_Capability_with_USRP_Devices</a>, <a href=3D"https://kb.ettus.=
com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD" target=3D"_blank=
">https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UH=
D</a>) I have not read about it. Can you elaborate on this?</div>

<div>=C2=A0</div>

<div>Thanks again,</div>

<div>Lukas</div>

<div>=C2=A0</div>

<div>=C2=A0
<div>=C2=A0
<div name=3D"quote" style=3D"margin:10px 5px 5px 10px;padding:10px 0px 10px=
 10px;border-left:2px solid rgb(195,217,229)">
<div style=3D"margin:0px 0px 10px"><b>Gesendet:</b>=C2=A0Freitag, 20. M=C3=
=A4rz 2020 um 13:44 Uhr<br>
<b>Von:</b>=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.=
edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>An:</b>=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gm=
x.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;, usrp-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;<br>
<b>Betreff:</b>=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX =
when using a timed command</div>

<div name=3D"quoted-content">
<div>
<div>OK.=C2=A0 Thinking about it a little more, I think that perhaps the tx=
-to-rx phase measurement methodology was flawed.=C2=A0 So, maybe this is no=
t any issue.=C2=A0 I changed the Python (new version attached) to send the =
gnuradio Tx signal source (which also drives Tx0 and Tx1) to one input of t=
he multiply_conjugate (replacing Rx1 which previously was the other input).=
=C2=A0 When I run, now the phase &quot;walks&quot;, but always over the sam=
e range of values.=C2=A0 When I retune Tx0 and Rx0, the &quot;walk&quot; re=
sets but still walks over the same range.=C2=A0 As to why the phase walks, =
I don&#39;t know the answer right off.</div>

<div>=C2=A0</div>

<div>On a separate topic, I noticed that your code does not synchronize the=
 LO setting.=C2=A0 This means that the RF phase between the channels could =
vary from run to run.</div>
</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Fri, Mar 20, 2020 at 12:04 PM Rob Kossler &lt;=
<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt=
; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div>Lukas,</div>

<div>After looking at this a bit, I think that there is indeed an issue.=C2=
=A0 I think that it is possible to get consistent tx-to-tx phase results an=
d consistent rx-to-rx phase results, but NOT consistent rx-to-tx phase resu=
lts.=C2=A0 A few remarks:</div>

<div>
<ul>
	<li>Setup
	<ul>
		<li>2-channel X310/UBX-160 with two external loopback RF cables (with att=
enuation) such that Tx0=3D&gt;Rx0 and Tx1=3D&gt;Rx1 (I likely don&#39;t eve=
n need the loopback cables because I could operate on just the leakage sign=
al from each channel, but I decided to use external cables).=C2=A0</li>
		<li>UHD 3.15.LTS and gnuradio 3.7.13.5.</li>
	</ul>
	</li>
</ul>
</div>

<div>
<ul>
	<li>Methodology
	<ul>
		<li>Transmit an identical waveform (1 MHz tone) out of both Tx ports</li>
		<li>Measure relative Rx phase by using a multiply_conjugate block for the=
 2 Rx channels (see below for description of why I changed what you sent me=
) with output connected to a complex_to_mag_phase block and subsequent movi=
ng_average</li>
		<li>Use digital tuning (with timed commands) to toggle between 2 dsp freq=
uencies while noting the relative phase results</li>
	</ul>
	</li>
	<li>Test cases
	<ul>
		<li>Case 1: Verify rx-to-rx phase results by sending tune requests to the=
 2 Rx channels (but sending nothing to the Tx channels)</li>
		<li>Case 2: Verify tx-to-tx phase results by sending tune requests to the=
 2 Tx channels (but sending nothing to the Rx channels)</li>
		<li>Case 3: Verify rx-to-tx phase results by sending tune requests to cha=
nnel 0 Rx and Tx (but sending nothing to channel 1 Rx and Tx)</li>
		<li>Case 4: Verify rx-to-tx phase results by sending tune requests to cha=
nnel 1 Rx and Tx (but sending nothing to channel 0 Rx and Tx)</li>
	</ul>
	</li>
</ul>

<div>Cases 1 and 2 show consistent results, but cases 3 and 4 do not. I can=
not conceive of what the problem is. It is so perplexing that I hesitate to=
 send this email because it seems I must be doing something wrong.=C2=A0 Pe=
rhaps there is a problem in the methodology above along with the test cases=
.=C2=A0 But, it seems sound to me.</div>

<div>=C2=A0</div>
</div>

<div>The Rx block diagram you sent me does not match the Python code you se=
nt.=C2=A0 This threw me off for a while.=C2=A0 In your block diagram, the p=
hase measurement is made from the division of the two low pass filter outpu=
ts.=C2=A0 In the Python code you sent, the phase measurement uses only the =
first low pass filter output.=C2=A0 The reason this is important is that I =
suspected early on that the problem might be related to your gnuradio signa=
l_source used for IF downconversion.=C2=A0 This signal source is not synchr=
onous with the USRP as you change USRP freqs. However, I figured that it wa=
sn&#39;t a problem because it was &quot;divided out&quot;.=C2=A0 But, since=
 it is actually not divided out,I believe that this was providing misleadin=
g results.</div>

<div>=C2=A0</div>

<div>In the end, I just changed your code to add a &quot;multiply_conjugate=
_cc&quot; block with the two Rx channels as the two inputs.=C2=A0 This effe=
ctively uses one channel to downconvert the other and thus eliminates the n=
eed for the signal source in the Rx block diagram.=C2=A0 I then connected t=
his multiply_conjugate directly to the complex_to_mag_phase.=C2=A0 You coul=
d simplify the code by removing the other multiply blocks, low pass filters=
, and divide since these are not used. Also, I put all of the functionality=
 in the rxtx (together) button callback.=C2=A0 I did not really use the oth=
er buttons.=C2=A0 Attached is the modified code.</div>

<div>=C2=A0</div>

<div>Rob</div>
</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Fri, Mar 20, 2020 at 2:38 AM Rob Kossler &lt;<=
a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;=
 wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div>
<div>Hi Lukas,</div>

<div>A few remarks:</div>

<div>
<ul>
	<li>The 2nd code you sent works fine.=C2=A0 Thanks.</li>
	<li>I&#39;m not sure that starting/stopping as I do in my program is causi=
ng the issue.=C2=A0 The only reason I didn&#39;t continuously stream both R=
x and Tx like you do in gnuradio is because my software is not setup to do =
that.</li>
	<li>So, I still think it&#39;s possible that UHD can do the job with conti=
nuous streaming but perhaps there is still something in the gnuradio config=
 that is not quite right.=C2=A0 But, I don&#39;t know what that is right no=
w.=C2=A0 I need to think about this a bit....</li>
</ul>

<div>Rob</div>
</div>
</div>
=C2=A0

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Thu, Mar 19, 2020 at 8:17 PM Lukas Haase &lt;<=
a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>=
&gt; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div style=3D"font-family:Verdana;font-size:12px">
<div>Hi Rob,</div>

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
<div style=3D"margin:10px 5px 5px 10px;padding:10px 0px 10px 10px;border-le=
ft:2px solid rgb(195,217,229)">
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

<div>
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
</div>
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

--0000000000005107a305a14dbb23--


--===============9036966207516473922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9036966207516473922==--

