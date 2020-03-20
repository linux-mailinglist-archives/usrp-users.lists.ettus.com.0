Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5044718D833
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 20:14:23 +0100 (CET)
Received: from [::1] (port=55912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFN65-0004vw-QL; Fri, 20 Mar 2020 15:14:21 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:38612)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jFN60-0004aK-Em
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 15:14:16 -0400
Received: by mail-ot1-f43.google.com with SMTP id t28so7098284ott.5
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 12:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q8HPi1gwVBZFZLyumclEs9HUlO+mwHCAGEr9NAOUhMc=;
 b=WhoCxCtjgiCoSnvZX8lfKCYUvy2ukgHTs3b9RSQfuZeEPM/bZsVoZ6He/aUQeuY5hU
 bs2pIFzbpfL+/y/t8G6teLrPhYqddMMotu65RTHYwRDiUMvW+BL5XDIsXfF04CaUnfFP
 sdf6lUfGT+Il3w33AL61N3KcLjA37F3emQ+7RSrR+YVrYSzx0njPq4sw+u+Zt7IiNWXk
 P1Qd0Np6FgawUu/AEMDQnqzKfMN1BWJrYxXiKC+9vn0lkQH5iSejcXnLZ6ve05ZSrxiC
 YFheUC5fkYGsEyEiuRETM4SPoTM2BpHd6zN7Q7H9Uxt/NbNXsAqRlKFSAa4PcaVy8LgY
 ySVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q8HPi1gwVBZFZLyumclEs9HUlO+mwHCAGEr9NAOUhMc=;
 b=GQ6wud5DkWFBS26j8w3lX8Yq9rgHs6cTUX9TZMpPWMI1msf0hJ0xxZo2y5C1KhUde9
 47VRGAsaDs5ihu7Q2lnB8NgTuWk8RKsiX+m/V0rCQCF0GFAUUy+VqMB7+Mzf9RtBUGgv
 IZ6VFWTUnpNsLewjAFhWBUDLFyU3Xf8dUG4Dfey6CemzXpbFchIurxszqIXoPL+TuAMv
 xfx3DzPWI6dZp4Hi5iqlJNq/pE120MINgbeB1KKAznDUDolC/IvvWeFhIUZKZFvagbzI
 869ShDwqOAwuLyBkP3I9I/J9L912rszWWsdj9gMzVPRgex/2S/iCfdR1ZIeUH/KrMiHo
 PJtA==
X-Gm-Message-State: ANhLgQ3S3HmFGCLwKBoNvZ6rPQxFyfMF5mbhC3oTDFzkKROZOh+0ib6E
 Br276mKQkzrDf85sKc4bEXdV9vSJ3MmuWrdJbXPyeQ==
X-Google-Smtp-Source: ADFU+vtGgap5OjFY3l+YjpABTQTB6/DZt2KPyCLiisUfjSa/cvznGlDbTSm8bMuVLRlFMTHcNK9WlbGZGdqlWyASj0k=
X-Received: by 2002:a05:6830:3090:: with SMTP id
 f16mr7869281ots.211.1584731615049; 
 Fri, 20 Mar 2020 12:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
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
 <CAB__hTRiv_6fvdNZ+3YD2r+vLSi9XOrWRwLzjY-SiAByRZUa6g@mail.gmail.com>
 <5E751194.5010007@gmail.com>
In-Reply-To: <5E751194.5010007@gmail.com>
Date: Fri, 20 Mar 2020 15:13:21 -0400
Message-ID: <CAB__hTSYoXFw-8wOaEKSxmO=Bd6PDjpPX0-Qnj6PGcwfuLHXaw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7870585204491272419=="
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

--===============7870585204491272419==
Content-Type: multipart/alternative; boundary="000000000000fadfea05a14e1409"

--000000000000fadfea05a14e1409
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus,
Yes, I did see this last night.  The setup is dealing with only a single
X310, but two UBX.

It appears to me that everything is happening at the same time for both Rx
and Tx.  I think the issue is related to the difficulty in measuring the
relative phase of tx-to-rx, where the tx is on the host (unaffected by
hardware) and the rx is the the received signal which started on the host
as Tx but then went through DUC->Radio->RFcable->Radio->DDC.  On the one
hand, it seems to me that as long as all of the LO and DSP frequency
quantization errors are "reciprocal" between Rx and Tx and if Rx and Tx
discipline their LOs to the same 10 MHz ref, then there should be no phase
"walk" (or equivalently, freq shift).  But, I'm seeing that and don't
understand why.

Rob

On Fri, Mar 20, 2020 at 2:56 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 03/20/2020 02:48 PM, Rob Kossler via USRP-users wrote:
>
> Hi Lukas,
> Taking this off the list for a bit...
>
>    - On the LO sync, all I mean is the you will need to use a tune
>    request with the RF policy not NONE and use timed commands - just like=
 for
>    the DSP freq.  Does that make sense?
>    - The reason that I think that my original methodology for measuring
>    rx-to-tx phase is not valid is that one of the channels, let's say
>    Tx1->Rx1, runs continuously (no tuning commands) while the other, Tx0-=
>Rx0,
>    has an abrupt phase change at an arbitrary time when the user clicks t=
he
>    button (I'm assuming the phase change is caused by the phase accumulat=
ors
>    being actually reset to zero). On the other hand, the Tx0->Rx0 path
>    actually has two abrupt phase changes (because both accumulators are s=
et to
>    zero at the same time) so perhaps it should cancel out. I'm really not
>    clear on this.
>    - Regarding the phase walk which occurs when I wired the Tx signal
>    source to the multiply_conjugate (in place of Rx1), I really don't
>    understand what is causing this walk. I realize that the hardware is n=
ot
>    actually operating at the frequency you specify because of hardware
>    limitations (such as 10 MHz ref) and quantizations of both the LO and =
the
>    DSP freq.  But, if the quantization errors are the same in the Rx and =
Tx
>    paths and if they are both disciplined to the 10 MHz ref, I don't
>    understand why the errors don't cancel out such that there is no phase=
 walk.
>
> So, even though I'm greatly confused, I still do believe that it is likel=
y
> that it is working for you the way you need it to.  I believe the problem
> is related to our methodology for measuring the Tx-to-Rx phase.  But can'=
t
> be sure.  Is there another way you can know if it's working for you the w=
ay
> it needs to be?
>
> Rob
>
> So, I don't see that this made it to the list last night:
>
> On 03/19/2020 08:16 PM, Lukas Haase via USRP-users wrote:
>
> Hi Rob,
>
> Sorry I really should have ran the python file before uploading. The issu=
e
> was that I combined to files into one and forgot to remove the imported
> file.
> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/
>
>
> Thanks for reporting your results .... very interesting!
>
> Why do you think second mode makes sense to you? (assuming you are using
> timed commands to to retune TX+RX at the same time)
>
> In general, it seems to me that things are related to streaming
> start/stop. Maybe things are reset when streaming starts/ends but not whe=
n
> re-tuning?
>
> Maybe this is what Marcus was mentioning: resetting phase accumulator vs.
> "increment register is updated with the new phase increment"?
>
> MAYBE stopping/starting resets the phase accumulator to zero and just
> timed retuning doesn't reset anything. But still, my question is left why
> this would result in a random phase offset between DUC and DDC.
>
> Thanks again!!
> Lukas
>
>
> So, having spent a couple of hours snooping around the X3xx FPGA code,
> where Verilog is not one of my native languages, I have come to
>   a bit of a conclusion about the ways things work.  Now, keep in mind,
> this is like me reading War and Peace in the original Russian, and as
>   an English speaker, coming the vague conclusion that "It was about
> Russia".
>
> There's a "settings bus" within the FPGA that is implemented with AXI FIF=
O
> modules.  If your command (which results, most often in
>   having to "set" one or more registers via the settings bus) is not a
> timed command, it enters the FIFO, and then is "executed" one
>   clock later.  If it has a time associated with it, then it is withdrawn
> when that time has been reached in "vita_time".  Note that since this
>   is a FIFO, commands that are to be executed "at the same time" will be
> serialized by the inherent FIFO nature of execution.
>
> So, with two DDC settings and two DUC settings all sitting in the FIFO,
> their actual execution times will be 'spread' over (as far as I can tell)
>   4 clocks cycles of the FIFO, or about 20nsec.  Now in the case where
> multiple X3xx are involved, the FIFO will look identical across all
>   the units, and will execute at the same time, but still be serialized.
> But if you have two DDC settings across a pair of X3xx, the settings
>   will execute at exactly the same time, since they will in effect be
> executing in parallel.   Put another way, with shared clocks, and a commo=
n
>   "view" of system time, parallel FIFOs will get drained in the same orde=
r
> and at the same rate.
>
> Someone with a better understanding of the FPGA really should comment.
> But this is my (albeit incomplete) understanding of the
>   settings-bus logic the FPGA.
>
> Now, even having said THIS, since you'd expect the FIFO to be
> deterministic.  So, you'd not expect there to be large random
>   phase offsets that differ from run to run, I think.
>
>
>
> On Fri, Mar 20, 2020 at 2:21 PM Lukas Haase <lukashaase@gmx.at> wrote:
>
>> Hi Rob,
>>
>> That's a good point and I thought about this very early on but figures i=
t
>> would not matter because the phase of the "Tx signal source" is just
>> constant.
>>
>> In terms of phase we could think of it as "phase_we_want_to_measure +
>> phase_of_tx_source". But since phase_of_tx_source does not change over
>> runs, it shouldn't cause any differences. However, it was 2 months ago w=
hen
>> I did this. I will have another look at it with your code.
>>
>> Thanks for pointing out the LO synchronization. When you say "from run t=
o
>> run", you mean when I quit/execute again the python script for example,
>> right? I was sure that I had to take this as a fact for now. I am not
>> familiar with the option of synchronizing the LO settings. In all the do=
cs
>> (e.g.
>> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devic=
es,
>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_U=
HD)
>> I have not read about it. Can you elaborate on this?
>>
>> Thanks again,
>> Lukas
>>
>>
>>
>> *Gesendet:* Freitag, 20. M=C3=A4rz 2020 um 13:44 Uhr
>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>> *An:* "Lukas Haase" <lukashaase@gmx.at>, usrp-users <
>> usrp-users@lists.ettus.com>
>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>> using a timed command
>> OK.  Thinking about it a little more, I think that perhaps the tx-to-rx
>> phase measurement methodology was flawed.  So, maybe this is not any
>> issue.  I changed the Python (new version attached) to send the gnuradio=
 Tx
>> signal source (which also drives Tx0 and Tx1) to one input of the
>> multiply_conjugate (replacing Rx1 which previously was the other input).
>> When I run, now the phase "walks", but always over the same range of
>> values.  When I retune Tx0 and Rx0, the "walk" resets but still walks ov=
er
>> the same range.  As to why the phase walks, I don't know the answer righ=
t
>> off.
>>
>> On a separate topic, I noticed that your code does not synchronize the L=
O
>> setting.  This means that the RF phase between the channels could vary f=
rom
>> run to run.
>>
>> On Fri, Mar 20, 2020 at 12:04 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Lukas,
>>> After looking at this a bit, I think that there is indeed an issue.  I
>>> think that it is possible to get consistent tx-to-tx phase results and
>>> consistent rx-to-rx phase results, but NOT consistent rx-to-tx phase
>>> results.  A few remarks:
>>>
>>>    - Setup
>>>       - 2-channel X310/UBX-160 with two external loopback RF cables
>>>       (with attenuation) such that Tx0=3D>Rx0 and Tx1=3D>Rx1 (I likely =
don't even
>>>       need the loopback cables because I could operate on just the leak=
age signal
>>>       from each channel, but I decided to use external cables).
>>>       - UHD 3.15.LTS and gnuradio 3.7.13.5.
>>>
>>>
>>>    - Methodology
>>>       - Transmit an identical waveform (1 MHz tone) out of both Tx port=
s
>>>       - Measure relative Rx phase by using a multiply_conjugate block
>>>       for the 2 Rx channels (see below for description of why I changed=
 what you
>>>       sent me) with output connected to a complex_to_mag_phase block an=
d
>>>       subsequent moving_average
>>>       - Use digital tuning (with timed commands) to toggle between 2
>>>       dsp frequencies while noting the relative phase results
>>>    - Test cases
>>>       - Case 1: Verify rx-to-rx phase results by sending tune requests
>>>       to the 2 Rx channels (but sending nothing to the Tx channels)
>>>       - Case 2: Verify tx-to-tx phase results by sending tune requests
>>>       to the 2 Tx channels (but sending nothing to the Rx channels)
>>>       - Case 3: Verify rx-to-tx phase results by sending tune requests
>>>       to channel 0 Rx and Tx (but sending nothing to channel 1 Rx and T=
x)
>>>       - Case 4: Verify rx-to-tx phase results by sending tune requests
>>>       to channel 1 Rx and Tx (but sending nothing to channel 0 Rx and T=
x)
>>>
>>> Cases 1 and 2 show consistent results, but cases 3 and 4 do not. I
>>> cannot conceive of what the problem is. It is so perplexing that I hesi=
tate
>>> to send this email because it seems I must be doing something wrong.
>>> Perhaps there is a problem in the methodology above along with the test
>>> cases.  But, it seems sound to me.
>>>
>>> The Rx block diagram you sent me does not match the Python code you
>>> sent.  This threw me off for a while.  In your block diagram, the phase
>>> measurement is made from the division of the two low pass filter output=
s.
>>> In the Python code you sent, the phase measurement uses only the first =
low
>>> pass filter output.  The reason this is important is that I suspected e=
arly
>>> on that the problem might be related to your gnuradio signal_source use=
d
>>> for IF downconversion.  This signal source is not synchronous with the =
USRP
>>> as you change USRP freqs. However, I figured that it wasn't a problem
>>> because it was "divided out".  But, since it is actually not divided ou=
t,I
>>> believe that this was providing misleading results.
>>>
>>> In the end, I just changed your code to add a "multiply_conjugate_cc"
>>> block with the two Rx channels as the two inputs.  This effectively use=
s
>>> one channel to downconvert the other and thus eliminates the need for t=
he
>>> signal source in the Rx block diagram.  I then connected this
>>> multiply_conjugate directly to the complex_to_mag_phase.  You could
>>> simplify the code by removing the other multiply blocks, low pass filte=
rs,
>>> and divide since these are not used. Also, I put all of the functionali=
ty
>>> in the rxtx (together) button callback.  I did not really use the other
>>> buttons.  Attached is the modified code.
>>>
>>> Rob
>>>
>>> On Fri, Mar 20, 2020 at 2:38 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi Lukas,
>>>> A few remarks:
>>>>
>>>>    - The 2nd code you sent works fine.  Thanks.
>>>>    - I'm not sure that starting/stopping as I do in my program is
>>>>    causing the issue.  The only reason I didn't continuously stream bo=
th Rx
>>>>    and Tx like you do in gnuradio is because my software is not setup =
to do
>>>>    that.
>>>>    - So, I still think it's possible that UHD can do the job with
>>>>    continuous streaming but perhaps there is still something in the gn=
uradio
>>>>    config that is not quite right.  But, I don't know what that is rig=
ht now.
>>>>    I need to think about this a bit....
>>>>
>>>> Rob
>>>>
>>>> On Thu, Mar 19, 2020 at 8:17 PM Lukas Haase <lukashaase@gmx.at> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> Sorry I really should have ran the python file before uploading. The
>>>>> issue was that I combined to files into one and forgot to remove the
>>>>> imported file.
>>>>> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/
>>>>>
>>>>>
>>>>> Thanks for reporting your results .... very interesting!
>>>>>
>>>>> Why do you think second mode makes sense to you? (assuming you are
>>>>> using timed commands to to retune TX+RX at the same time)
>>>>>
>>>>> In general, it seems to me that things are related to streaming
>>>>> start/stop. Maybe things are reset when streaming starts/ends but not=
 when
>>>>> re-tuning?
>>>>>
>>>>> Maybe this is what Marcus was mentioning: resetting phase accumulator
>>>>> vs. "increment register is updated with the new phase increment"?
>>>>>
>>>>> MAYBE stopping/starting resets the phase accumulator to zero and just
>>>>> timed retuning doesn't reset anything. But still, my question is left=
 why
>>>>> this would result in a random phase offset between DUC and DDC.
>>>>>
>>>>> Thanks again!!
>>>>> Lukas
>>>>>
>>>>>
>>>>> *Gesendet:* Donnerstag, 19. M=C3=A4rz 2020 um 19:16 Uhr
>>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>>> *Cc:* "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>>>>> using a timed command
>>>>> Lukas,
>>>>> I installed gnuradio and tried to run but encounter the following.
>>>>> I'm guessing this is your block.
>>>>> Traceback (most recent call last):
>>>>>   File "test.py", line 25, in <module>
>>>>>     import epy_block_1
>>>>> ImportError: No module named epy_block_1
>>>>> Rob
>>>>>
>>>>> On Thu, Mar 19, 2020 at 6:28 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>>> Ok.  False alarm.  I forgot about the dboard clock needing set to
>>>>>> 20MHz for RF freq below 1 GHz.  When I made this change, now I get
>>>>>> consistent Rx-Tx phase for the first mode where both Tx and Rx start=
/stop
>>>>>> at each test.
>>>>>> Rob
>>>>>>
>>>>>> On Thu, Mar 19, 2020 at 6:10 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>>> Ok. I modified my code to be more like yours...
>>>>>>>
>>>>>>>    - toggling dsp freq rather than LO freq
>>>>>>>    - LO at 900 MHz
>>>>>>>    - external connections Tx0 =3D> Splitter_1x2 =3D> both Rx0 and R=
x1
>>>>>>>    - Previously, I was starting / stopping both Rx & Tx in between
>>>>>>>    each test.  Now, I added a mode where the Tx is on continuously,=
 and the Rx
>>>>>>>    starts & stops for each test after the dsp freq change
>>>>>>>
>>>>>>> The results are the following:
>>>>>>>
>>>>>>>    - In the first mode where both Tx and Rx start/stop at each
>>>>>>>    test, I get consistent group delay (as measured by the correlati=
on peak
>>>>>>>    index) for both Rx-Rx and Rx-Tx.  But for phase, the Rx-Rx phase=
 is
>>>>>>>    consistent, but the Rx-Tx phase seems random
>>>>>>>    - In the second mode where Tx is on continuously and I
>>>>>>>    start/stop Rx after each dsp freq change, the group delay is con=
stant for
>>>>>>>    Rx-Rx but random for Rx-Tx.  The phase results are constant for =
Rx-Rx but
>>>>>>>    random for Rx-Tx.
>>>>>>>
>>>>>>> Regarding the 2nd mode, this makes sense to me.  But, for the 1st
>>>>>>> mode, I don't understand why the Rx-Tx phase seems random. Still th=
inking
>>>>>>> about it....
>>>>>>> Rob
>>>>>>>
>>>>>>> On Thu, Mar 19, 2020 at 4:35 PM Rob Kossler <rkossler@nd.edu> wrote=
:
>>>>>>>
>>>>>>>> Lukas,
>>>>>>>> Just before receiving your email, I ran the following with my
>>>>>>>> custom c++ & matlab software using X310/UBX-160 with the connectio=
ns I
>>>>>>>> described.  The following shows the output which is very consisten=
t.  I
>>>>>>>> used a 100 tone multi-tone waveform spread over 4 MHz bandwidth (u=
sing 5
>>>>>>>> MS/s sample rate on Tx and Rx).  Note the consistency of results a=
s I
>>>>>>>> toggled between 2 frequencies: 2450 and 2460 MHz.
>>>>>>>>
>>>>>>>> My method was the following:
>>>>>>>>
>>>>>>>>    - Tx waveform was 500 points long
>>>>>>>>    - Rx capture was 5000 points long
>>>>>>>>    - Compute cross-correlation (using Matlab xcorr) as follows:
>>>>>>>>    xcorr(rx0, conj(tx)) AND xcorr(rx0,conj(rx1))
>>>>>>>>    - Find the correlation peak (which was very pronounced) which
>>>>>>>>    shows the sample delay between the two signals.  Extract the ph=
ase at the
>>>>>>>>    peak
>>>>>>>>
>>>>>>>> Oops, I just realized that I used a constant DSP freq (10 MHz) and
>>>>>>>> I changed the LO freq in my test.  I will try again with moving th=
e DSP
>>>>>>>> freq instead.
>>>>>>>> Rob
>>>>>>>>
>>>>>>>> Test 1: freq =3D 2450.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.7
>>>>>>>> Test 2: freq =3D 2460.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.1
>>>>>>>> Test 3: freq =3D 2450.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>>> Test 4: freq =3D 2460.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.6
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.0
>>>>>>>> Test 5: freq =3D 2450.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>>> Test 6: freq =3D 2460.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.8
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.7
>>>>>>>> Test 7: freq =3D 2450.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.9
>>>>>>>> Test 8: freq =3D 2460.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>>>> Test 9: freq =3D 2450.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>>> Test 10: freq =3D 2460.0 MHz
>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>>>> >>
>>>>>>>>
>>>>>>>>
>>>>>>>> On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase <lukashaase@gmx.at>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi Rob,
>>>>>>>>>
>>>>>>>>> Yes, I confirm your conclusion.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    - I calculate the relative phase by dividing the outputs of
>>>>>>>>>    both receivers. To understand better, note that I have an addi=
tional "IF
>>>>>>>>>    stage" in my own signal flow such that I exclude DC offset cor=
rection etc.
>>>>>>>>>    the USRP may perform. This is the block diagram of the transmi=
tter part:
>>>>>>>>>    https://snipboard.io/YFgIKs.jpg . I send "exp(1j*1MHz*t) .
>>>>>>>>>    This shows the receiver part: https://snipboard.io/i9jLJg.jpg
>>>>>>>>>    . I multiply the received signal with exp(-1j*1MHz*t) and filt=
er them. Then
>>>>>>>>>    I divide both streams and take the phase part. I take a moving=
 average (for
>>>>>>>>>    flucatuations), add pi and display the number.
>>>>>>>>>    - https://snipboard.io/YFgIKs.jpg
>>>>>>>>>    https://snipboard.io/YFgIKs.jpg https://snipboard.io/YFgIKs.jp=
g
>>>>>>>>>    That's so nice, thank you!! My code is here:
>>>>>>>>>    http://paste.ubuntu.com/p/MbCJfPGzYW/ . I'm not sure if you
>>>>>>>>>    have gnuradio(and QT) installed but if yes, simply "python2
>>>>>>>>>    switch_on_click.py" should do. Let me quickly elaborate how it=
 works:
>>>>>>>>>       - Class "switch_on_click" implements a normal gnuradio flow
>>>>>>>>>       with USRP transmitter and receiver.
>>>>>>>>>       - It also uses a custom module together with buttons and a
>>>>>>>>>       probe block to call functions upon clicking on a button
>>>>>>>>>       - The callback functions are defined in class "blk"
>>>>>>>>>       - The most important is "def button_rtx_handler" on line
>>>>>>>>>       106 which is executed when user clicks on button "Switch RT=
X (together)"
>>>>>>>>>    - Again, thank you for trying this out!! If it works, would
>>>>>>>>>    you mind sharing this code then? I may be able to check then w=
here it
>>>>>>>>>    breaks on my system
>>>>>>>>>    - I use 900 MHz as default center frequency (and "rf_freq").
>>>>>>>>>    When clicking, I jump between dsp_freq=3D0 and dsp_freq=3D500e=
3. As to my
>>>>>>>>>    waveform, you can infer from my screenshots and code above: I =
am
>>>>>>>>>    transmitting and receiving a 1MHz waveform (which acts as an a=
dditional "IF
>>>>>>>>>    stage"). The received signal is then downconcerted from 1MHz t=
o DC. I use 5
>>>>>>>>>    MSsps sampling rate.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Again, thank you SO much.
>>>>>>>>>
>>>>>>>>> Best,
>>>>>>>>> Lukas
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> *Gesendet:* Donnerstag, 19. M=C3=A4rz 2020 um 10:43 Uhr
>>>>>>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>> *Cc:* "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>>> when using a timed command
>>>>>>>>> Hi Lukas,
>>>>>>>>> So, the conclusion is that your Rx0-to-Rx1 relative phase is
>>>>>>>>> nearly constant such that it seems that both Rx0/Rx1 are phase co=
herent and
>>>>>>>>> Tx0/Tx1 are phase coherent.  But, phase from Tx-to-Rx is random. =
 Please
>>>>>>>>> correct me if that is wrong.
>>>>>>>>>
>>>>>>>>> I have a few comments:
>>>>>>>>>
>>>>>>>>>    - How do you measure/calculate the relative phase?
>>>>>>>>>    - Can you send me the full Python code to look at?  As I
>>>>>>>>>    mentioned previously, I am not too good at gnuradio/Python, bu=
t I might be
>>>>>>>>>    able to spot something.
>>>>>>>>>    - As to your question, I always use synchronous measurements.
>>>>>>>>>    And, I'm confident that my Rx-to-Rx phase is coherent.  But, I=
 haven't
>>>>>>>>>    really looked at Tx-to-Rx in a while so I will do so later tod=
ay.  Here are
>>>>>>>>>    the steps I plan to take:
>>>>>>>>>       1. Connect Tx0 to Rx1.  Note that there is a pretty strong
>>>>>>>>>       leakage signal from Tx0 to Rx0 so I don't really need to pr=
ovide a physical
>>>>>>>>>       connection in order to get a signal on Rx0.  The signal att=
enuation in this
>>>>>>>>>       leakage path is approx 40 dB so it is not too much differen=
t than the
>>>>>>>>>       signal level I will receive on Rx1 if I use an external 30 =
dB attenuator.
>>>>>>>>>       2. Set Rx and Tx frequency to freq 1
>>>>>>>>>       3. Measure and note the relative phase for Rx0/Tx0 and
>>>>>>>>>       Rx1/Tx0 for freq 1
>>>>>>>>>       4. Set Rx and Tx frequency to freq 2
>>>>>>>>>       5. Measure and note the relative phase for Rx0/Tx0 and
>>>>>>>>>       Rx1/Tx0 for freq 2
>>>>>>>>>       6. Repeat steps 2-5 a few times to ensure that the
>>>>>>>>>       measurements are repeatable
>>>>>>>>>    - Questions: what should I use for freq 1 and freq 2?  What
>>>>>>>>>    waveform are you transmitting?  What sample rates for Tx and R=
x?
>>>>>>>>>
>>>>>>>>> Rob
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users <
>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>
>>>>>>>>>> Hi Rob,
>>>>>>>>>>
>>>>>>>>>> I think the issue is really having two usrp_multi devices with
>>>>>>>>>> timed commands and same timestmap or similar. From your tests be=
low:
>>>>>>>>>>
>>>>>>>>>> 1.) I can *confirm *that the relative phase between two RX in
>>>>>>>>>> your suggested test is always the same! In fact, it is always 4.=
56 rad,
>>>>>>>>>> even across restarts and for different frequencies! That somewha=
t makes
>>>>>>>>>> sense because the phase offset is now only dependent on the diff=
erence
>>>>>>>>>> between the two channels (fixed) and cable lengths from the spli=
tter
>>>>>>>>>> (fixed). I verified by removing the timed command on usrp source=
, the phase
>>>>>>>>>> offset becomes random after each retune. Of course, this is inde=
pendent of
>>>>>>>>>> TX tuning (timed vs. not). For reference, this is the code used:
>>>>>>>>>>
>>>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_N=
ONE
>>>>>>>>>>         tune_req_rx.dsp_freq_policy =3D
>>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_N=
ONE
>>>>>>>>>>         tune_req_tx.dsp_freq_policy =3D
>>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>>>
>>>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>>>
>>>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx)         =
 #
>>>>>>>>>> TX
>>>>>>>>>>         res2 =3D usrp_source.set_center_freq(tune_req_rx, 0)  #R=
X1
>>>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 1)  #R=
X2
>>>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>>>
>>>>>>>>>> 2.) I also tried your second suggestion. Before reading on, you
>>>>>>>>>> wanna guess what the outcome is?
>>>>>>>>>> I connected "TX/RX" to "RX2" on UBX #1 (TX1 --> RX1) and "TX/RX"
>>>>>>>>>> to "RX2" on UBX #2 (TX2 --> RX2). In absence of a second 30dB at=
tenuator I
>>>>>>>>>> used two antennas closely spaced together. For reference, my cod=
e looks now
>>>>>>>>>> like:
>>>>>>>>>>
>>>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_N=
ONE
>>>>>>>>>>         tune_req_rx.dsp_freq_policy =3D
>>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_N=
ONE
>>>>>>>>>>         tune_req_tx.dsp_freq_policy =3D
>>>>>>>>>> uhd.tune_request.POLICY_MANUAL
>>>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>>>
>>>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>>>
>>>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx, 0)     #=
 TX1
>>>>>>>>>>         res2 =3D usrp_sink.set_center_freq(tune_req_tx, 1)     #=
 TX2
>>>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 0) # R=
X1
>>>>>>>>>>         res4 =3D usrp_source.set_center_freq(tune_req_rx, 1) # R=
X2
>>>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>>>
>>>>>>>>>> I again look at the *relative phase* of RX1 and RX2 (obtained by
>>>>>>>>>> dividing the two) and guess what: Also now the relative phase st=
ays
>>>>>>>>>> constant! (This time it actually slightly varies from 3.0 rad to=
 3.7 rad
>>>>>>>>>> between two different frequencies).
>>>>>>>>>> What does that mean? I think it means that TX must be tuned
>>>>>>>>>> coherently and RX must be tuned coherently, i.e., timed commands=
 generally
>>>>>>>>>> work for multiple TX's and multiple RX's *individually*. Do I
>>>>>>>>>> get that right?
>>>>>>>>>>
>>>>>>>>>> What doesn't seem to work is RX+TX *together*.
>>>>>>>>>>
>>>>>>>>>> I am very desperately asking if you had coherent TX+RX setup
>>>>>>>>>> working at any point or know somebody who did. It would be so mu=
ch worth to
>>>>>>>>>> know if this is something that never worked to begin with or if =
I'm just
>>>>>>>>>> doing something wrong. On the other hand I don't want to believe=
 being the
>>>>>>>>>> only person on the planet having tried TX+RX phase coherent oper=
ation :-/
>>>>>>>>>>
>>>>>>>>>> Any other further suggestions on how to continue debugging with
>>>>>>>>>> the above in mind would be helpful too.
>>>>>>>>>>
>>>>>>>>>> In my opinion there are two options left:
>>>>>>>>>> 1.) There is still a nondeterministic delay between the TX and R=
X
>>>>>>>>>> timed commands (to my understanding, even a constant delay would=
 result in
>>>>>>>>>> coherent phase)
>>>>>>>>>> 2.) While the phase accumulators in RX are set to the same value=
s
>>>>>>>>>> (and in TX as well), they may be set to a different, random valu=
e.
>>>>>>>>>>
>>>>>>>>>> However, I don't really know how to test these.
>>>>>>>>>>
>>>>>>>>>> Thanks,
>>>>>>>>>> Lukas
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> *Gesendet:* Freitag, 13. M=C3=A4rz 2020 um 12:27 Uhr
>>>>>>>>>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>>> *Cc:* "Marcus D Leech" <patchvonbraun@gmail.com>, "
>>>>>>>>>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>>>> when using a timed command
>>>>>>>>>> Ok, great.  I am trying to think of ways to now add the phase
>>>>>>>>>> measurement.  Ideas...
>>>>>>>>>>
>>>>>>>>>>    - In order to get consistent phase, you would need to tune Rx
>>>>>>>>>>    and Tx DSP at the same time (rather than below where you are =
only tuning
>>>>>>>>>>    one of them).  So, assuming that this will not produce consis=
tent phase
>>>>>>>>>>    results, then maybe try the following idea...
>>>>>>>>>>    - If you want to check just Rx DSP tuning (with fixed Tx DSP
>>>>>>>>>>    tuning), you could try a 2 channel Rx measurement where the T=
x is split
>>>>>>>>>>    externally with 1:2 splitter in order to drive both Rx0 and R=
x1.  Then,
>>>>>>>>>>    measure the relative phase Rx0/Rx1 and then tune back and for=
th between two
>>>>>>>>>>    Rx DSP freqs to see if the relative phase on Rx remains const=
ant.  If so,
>>>>>>>>>>    this would give you good confidence that Rx DSP tuning is ind=
eed happening
>>>>>>>>>>    synchronously
>>>>>>>>>>    - Assuming that the Rx IS synchronous in the step above
>>>>>>>>>>    (perhaps a bad assumption, but here goes), you could then che=
ck TX DSP
>>>>>>>>>>    tuning (with fixed Rx DSP tuning) by using two Tx and two Rx =
channels with
>>>>>>>>>>    Tx0 connected to Rx0 and Tx1 connected to Rx1.  At this point=
 we are
>>>>>>>>>>    confident that Rx DSP tuning is synchronous so any synchronou=
s misbehavior
>>>>>>>>>>    would imply a Tx sync problem.
>>>>>>>>>>
>>>>>>>>>> Sorry I can't think of better ideas.
>>>>>>>>>> Rob
>>>>>>>>>>
>>>>>>>>>> On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase <lukashaase@gmx.at>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>>> Hi Rob,
>>>>>>>>>>>
>>>>>>>>>>> 1.) yes, works(*)
>>>>>>>>>>> 2.) yes, works(*)
>>>>>>>>>>>
>>>>>>>>>>> (*): qualitatively. I set the timed command to
>>>>>>>>>>> "get_current_time() + uhd.time_spec(2.0)" and I see the chance =
2 seconds
>>>>>>>>>>> after my click on the screen. I cannot (do not know how) check =
if it
>>>>>>>>>>> actually happens at sample-precicse location.
>>>>>>>>>>> On 03/19/2020 08:16 PM, Lukas Haase via USRP-users wrote:
>>>>>>>>>>>
>>>>>>>>>>> Hi Rob,
>>>>>>>>>>>
>>>>>>>>>>> Sorry I really should have ran the python file before uploading=
.
>>>>>>>>>>> The issue was that I combined to files into one and forgot to r=
emove the
>>>>>>>>>>> imported file.
>>>>>>>>>>> Here is a new one (tested):
>>>>>>>>>>> http://paste.ubuntu.com/p/VsGRmsbZQ5/
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> Thanks for reporting your results .... very interesting!
>>>>>>>>>>>
>>>>>>>>>>> Why do you think second mode makes sense to you? (assuming you
>>>>>>>>>>> are using timed commands to to retune TX+RX at the same time)
>>>>>>>>>>>
>>>>>>>>>>> In general, it seems to me that things are related to streaming
>>>>>>>>>>> start/stop. Maybe things are reset when streaming starts/ends b=
ut not when
>>>>>>>>>>> re-tuning?
>>>>>>>>>>>
>>>>>>>>>>> Maybe this is what Marcus was mentioning: resetting phase
>>>>>>>>>>> accumulator vs. "increment register is updated with the new pha=
se
>>>>>>>>>>> increment"?
>>>>>>>>>>>
>>>>>>>>>>> MAYBE stopping/starting resets the phase accumulator to zero an=
d
>>>>>>>>>>> just timed retuning doesn't reset anything. But still, my quest=
ion is left
>>>>>>>>>>> why this would result in a random phase offset between DUC and =
DDC.
>>>>>>>>>>>
>>>>>>>>>>> Thanks again!!
>>>>>>>>>>> Lukas
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> So, having spent a couple of hours snooping around the X3xx FPG=
A
>>>>>>>>>>> code, where Verilog is not one of my native languages, I have c=
ome to
>>>>>>>>>>>   a bit of a conclusion about the ways things work.  Now, keep
>>>>>>>>>>> in mind, this is like me reading War and Peace in the original =
Russian, and
>>>>>>>>>>> as
>>>>>>>>>>>   an English speaker, coming the vague conclusion that "It was
>>>>>>>>>>> about Russia".
>>>>>>>>>>>
>>>>>>>>>>> There's a "settings bus" within the FPGA that is implemented
>>>>>>>>>>> with AXI FIFO modules.  If your command (which results, most of=
ten in
>>>>>>>>>>>   having to "set" one or more registers via the settings bus) i=
s
>>>>>>>>>>> not a timed command, it enters the FIFO, and then is "executed"=
 one
>>>>>>>>>>>   clock later.  If it has a time associated with it, then it is
>>>>>>>>>>> withdrawn when that time has been reached in "vita_time".  Note=
 that since
>>>>>>>>>>> this
>>>>>>>>>>>   is a FIFO, commands that are to be executed "at the same time=
"
>>>>>>>>>>> will be serialized by the inherent FIFO nature of execution.
>>>>>>>>>>>
>>>>>>>>>>> So, with two DDC settings and two DUC settings all sitting in
>>>>>>>>>>> the FIFO, their actual execution times will be 'spread' over (a=
s far as I
>>>>>>>>>>> can tell)
>>>>>>>>>>>   4 clocks cycles of the FIFO, or about 20nsec.  Now in the cas=
e
>>>>>>>>>>> where multiple X3xx are involved, the FIFO will look identical =
across all
>>>>>>>>>>>   the units, and will execute at the same time, but still be
>>>>>>>>>>> serialized.  But if you have two DDC settings across a pair of =
X3xx, the
>>>>>>>>>>> settings
>>>>>>>>>>>   will execute at exactly the same time, since they will in
>>>>>>>>>>> effect be executing in parallel.   Put another way, with shared=
 clocks, and
>>>>>>>>>>> a common
>>>>>>>>>>>   "view" of system time, parallel FIFOs will get drained in the
>>>>>>>>>>> same order and at the same rate.
>>>>>>>>>>>
>>>>>>>>>>> Someone with a better understanding of the FPGA really should
>>>>>>>>>>> comment.    But this is my (albeit incomplete) understanding of=
 the
>>>>>>>>>>>   settings-bus logic the FPGA.
>>>>>>>>>>>
>>>>>>>>>>> Now, even having said THIS, since you'd expect the FIFO to be
>>>>>>>>>>> deterministic.  So, you'd not expect there to be large random
>>>>>>>>>>>   phase offsets that differ from run to run, I think.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> Great, any ideas to simplify the setup would nice. I just don't
>>>>>>>>>>> know how I could continue to debugging the phase.
>>>>>>>>>>>
>>>>>>>>>>> Best,
>>>>>>>>>>> Luke
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr
>>>>>>>>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>>>> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "
>>>>>>>>>>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX
>>>>>>>>>>> when using a timed command
>>>>>>>>>>>
>>>>>>>>>>> Thanks Lukas,
>>>>>>>>>>> I wanted to confirm that you did not have an older version of
>>>>>>>>>>> FPGA firmware because there was a DDC/DUC bug fix[
>>>>>>>>>>> https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d=
5dfaa0e69b1c6798771e6d]
>>>>>>>>>>> related to phase.  However, the version you provided with uhd_u=
srp_probe
>>>>>>>>>>> confirms that you have the bug fix included.  So, this is not t=
he problem.
>>>>>>>>>>>
>>>>>>>>>>> From what you said, I assume that you can successfully do the
>>>>>>>>>>> following:
>>>>>>>>>>> 1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only
>>>>>>>>>>> (do not change TX RF) and you can see the frequency change at t=
he specified
>>>>>>>>>>> command time (i.e., if you specify the command time 1 sec in th=
e future,
>>>>>>>>>>> the change does not occur until 1 sec in the future).
>>>>>>>>>>> 2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and
>>>>>>>>>>> you can see the frequency change at the specified command time.
>>>>>>>>>>>
>>>>>>>>>>> I am trying to simplify the issue by removing RF tuning
>>>>>>>>>>> completely and by tuning only 1 of Rx/Tx at a time.  Perhaps th=
is will help
>>>>>>>>>>> lead to the answer.
>>>>>>>>>>> Rob
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase <lukashaase@gmx.at
>>>>>>>>>>> [mailto:lukashaase@gmx.at]> wrote:Hi again Rob,
>>>>>>>>>>>
>>>>>>>>>>> Yes, I confirm:
>>>>>>>>>>>
>>>>>>>>>>> 1.) Finally I get the commands to execute at the same time (TX
>>>>>>>>>>> and RX individually and both at the same time)
>>>>>>>>>>> 2.) Yes, the phase is random after each retune, even when I
>>>>>>>>>>> retune back to the same frequency
>>>>>>>>>>> 3.) (2) is only true if it includes *DSP* retuning. With naalog
>>>>>>>>>>> retuning (+integer-N retuning) I get phase coherence, as expect=
ed.
>>>>>>>>>>>
>>>>>>>>>>> I actually expected the PLL retuning much more challenging than
>>>>>>>>>>> the DSP retuning but for some reason it seems to be the opposit=
e...
>>>>>>>>>>>
>>>>>>>>>>> Thanks,
>>>>>>>>>>> Lukas
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om
>>>>>>>>>
>>>>>>>>>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fadfea05a14e1409
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Marcus,</div><div>Yes, I did see this last nig=
ht.=C2=A0 The setup is dealing with only a single X310, but two UBX.<br></d=
iv><div><br></div><div>It appears to me that everything is happening at the=
 same time for both Rx and Tx.=C2=A0 I think the issue is related to the di=
fficulty in measuring the relative phase of tx-to-rx, where the tx is on th=
e host (unaffected by hardware) and the rx is the the received signal which=
 started on the host as Tx but then went through DUC-&gt;Radio-&gt;RFcable-=
&gt;Radio-&gt;DDC.=C2=A0 On the one hand, it seems to me that as long as al=
l of the LO and DSP frequency quantization errors are &quot;reciprocal&quot=
; between Rx and Tx and if Rx and Tx discipline their LOs to the same 10 MH=
z ref, then there should be no phase &quot;walk&quot; (or equivalently, fre=
q shift).=C2=A0 But, I&#39;m seeing that and don&#39;t understand why.<br><=
/div><div><br></div><div>Rob<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020 at 2:56 PM Marcu=
s D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 03/20/2020 02:48 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>Hi Lukas,</div>
          <div>Taking this off the list for a bit...</div>
          <div>
            <ul>
              <li>On the LO sync, all I mean is the you will need to use
                a tune request with the RF policy not NONE and use timed
                commands - just like for the DSP freq.=C2=A0 Does that make
                sense?</li>
              <li>The reason that I think that my original methodology
                for measuring rx-to-tx phase is not valid is that one of
                the channels, let&#39;s say Tx1-&gt;Rx1, runs continuously
                (no tuning commands) while the other, Tx0-&gt;Rx0, has
                an abrupt phase change at an arbitrary time when the
                user clicks the button (I&#39;m assuming the phase change i=
s
                caused by the phase accumulators being actually reset to
                zero). On the other hand, the Tx0-&gt;Rx0 path actually
                has two abrupt phase changes (because both accumulators
                are set to zero at the same time) so perhaps it should
                cancel out. I&#39;m really not clear on this.</li>
              <li>Regarding the phase walk which occurs when I wired the
                Tx signal source to the multiply_conjugate (in place of
                Rx1), I really don&#39;t understand what is causing this
                walk. I realize that the hardware is not actually
                operating at the frequency you specify because of
                hardware limitations (such as 10 MHz ref) and
                quantizations of both the LO and the DSP freq.=C2=A0 But, i=
f
                the quantization errors are the same in the Rx and Tx
                paths and if they are both disciplined to the 10 MHz
                ref, I don&#39;t understand why the errors don&#39;t cancel=
 out
                such that there is no phase walk.</li>
            </ul>
            <div>So, even though I&#39;m greatly confused, I still do
              believe that it is likely that it is working for you the
              way you need it to.=C2=A0 I believe the problem is related to
              our methodology for measuring the Tx-to-Rx phase.=C2=A0 But
              can&#39;t be sure.=C2=A0 Is there another way you can know if=
 it&#39;s
              working for you the way it needs to be?</div>
            <div><br>
            </div>
            <div>Rob<br>
            </div>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    So, I don&#39;t see that this made it to the list last night:<br>
    <br>
    <div>On 03/19/2020 08:16 PM, Lukas Haase via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Verdana;font-size:12px">
        <div>Hi Rob,</div>
        <div>=C2=A0</div>
        <div>Sorry I really should have ran the python file before
          uploading. The issue was that I combined to files into one and
          forgot to remove the imported file.</div>
        <div>Here is a new one (tested): <a href=3D"http://paste.ubuntu.com=
/p/VsGRmsbZQ5/" target=3D"_blank">http://paste.ubuntu.com/p/VsGRmsbZQ5/</a>=
</div>
        <div>=C2=A0</div>
        <div>=C2=A0</div>
        <div>Thanks for reporting your results .... very interesting!</div>
        <div>=C2=A0</div>
        <div>Why do you think second mode makes sense to you? (assuming
          you are using timed commands to to retune TX+RX at the same
          time)</div>
        <div>=C2=A0</div>
        <div>In general, it seems to me that things are related to
          streaming start/stop. Maybe things are reset when streaming
          starts/ends but not when re-tuning?</div>
        <div>=C2=A0</div>
        <div>Maybe this is what Marcus was mentioning: resetting phase
          accumulator vs. &quot;increment register is updated with the new
          phase increment&quot;?</div>
        <div>=C2=A0</div>
        <div>MAYBE stopping/starting resets the phase accumulator to
          zero and just timed retuning doesn&#39;t reset anything. But
          still, my question is left why this would result in a random
          phase offset between DUC and DDC.</div>
        <div>=C2=A0</div>
        <div>Thanks again!!</div>
        <div>Lukas</div>
        <div>=C2=A0 <br>
        </div>
      </div>
    </blockquote>
    So, having spent a couple of hours snooping around the X3xx FPGA
    code, where Verilog is not one of my native languages, I have come
    to<br>
    =C2=A0 a bit of a conclusion about the ways things work.=C2=A0 Now, kee=
p in
    mind, this is like me reading War and Peace in the original Russian,
    and as<br>
    =C2=A0 an English speaker, coming the vague conclusion that &quot;It wa=
s about
    Russia&quot;.<br>
    <br>
    There&#39;s a &quot;settings bus&quot; within the FPGA that is implemen=
ted with
    AXI FIFO modules.=C2=A0 If your command (which results, most often in<b=
r>
    =C2=A0 having to &quot;set&quot; one or more registers via the settings=
 bus) is not
    a timed command, it enters the FIFO, and then is &quot;executed&quot; o=
ne<br>
    =C2=A0 clock later.=C2=A0 If it has a time associated with it, then it =
is
    withdrawn when that time has been reached in &quot;vita_time&quot;.=C2=
=A0 Note that
    since this<br>
    =C2=A0 is a FIFO, commands that are to be executed &quot;at the same ti=
me&quot;
    will be serialized by the inherent FIFO nature of execution.<br>
    <br>
    So, with two DDC settings and two DUC settings all sitting in the
    FIFO, their actual execution times will be &#39;spread&#39; over (as fa=
r as
    I can tell)<br>
    =C2=A0 4 clocks cycles of the FIFO, or about 20nsec.=C2=A0 Now in the c=
ase
    where multiple X3xx are involved, the FIFO will look identical
    across all<br>
    =C2=A0 the units, and will execute at the same time, but still be
    serialized.=C2=A0 But if you have two DDC settings across a pair of X3x=
x,
    the settings<br>
    =C2=A0 will execute at exactly the same time, since they will in effect
    be executing in parallel.=C2=A0=C2=A0 Put another way, with shared cloc=
ks, and
    a common<br>
    =C2=A0 &quot;view&quot; of system time, parallel FIFOs will get drained=
 in the same
    order and at the same rate.<br>
    <br>
    Someone with a better understanding of the FPGA really should
    comment.=C2=A0=C2=A0=C2=A0 But this is my (albeit incomplete) understan=
ding of the<br>
    =C2=A0 settings-bus logic the FPGA.<br>
    <br>
    Now, even having said THIS, since you&#39;d expect the FIFO to be
    deterministic.=C2=A0 So, you&#39;d not expect there to be large random<=
br>
    =C2=A0 phase offsets that differ from run to run, I think.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020 at 2:2=
1
            PM Lukas Haase &lt;<a href=3D"mailto:lukashaase@gmx.at" target=
=3D"_blank">lukashaase@gmx.at</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <div style=3D"font-family:Verdana;font-size:12px">
                <div>Hi Rob,</div>
                <div>=C2=A0</div>
                <div>That&#39;s a good point and I thought about this very
                  early on but figures it would not matter because the
                  phase of the &quot;Tx signal source&quot; is just constan=
t.</div>
                <div>=C2=A0</div>
                <div>In terms of phase we could think of it as
                  &quot;phase_we_want_to_measure + phase_of_tx_source&quot;=
. But
                  since phase_of_tx_source does not change over runs, it
                  shouldn&#39;t cause any differences. However, it was 2
                  months ago when I did this. I will have another look
                  at it with your code.</div>
                <div>=C2=A0</div>
                <div>Thanks for pointing out the LO synchronization.
                  When you say &quot;from run to run&quot;, you mean when I
                  quit/execute again the python script for example,
                  right? I was sure that I had to take this as a fact
                  for now. I am not familiar with the option of
                  synchronizing the LO settings. In all the docs (e.g. <a h=
ref=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_D=
evices" target=3D"_blank">https://kb.ettus.com/Synchronization_and_MIMO_Cap=
ability_with_USRP_Devices</a>,
                  <a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events=
_Using_Timed_Commands_in_UHD" target=3D"_blank">https://kb.ettus.com/Synchr=
onizing_USRP_Events_Using_Timed_Commands_in_UHD</a>)
                  I have not read about it. Can you elaborate on this?</div=
>
                <div>=C2=A0</div>
                <div>Thanks again,</div>
                <div>Lukas</div>
                <div>=C2=A0</div>
                <div>=C2=A0
                  <div>=C2=A0
                    <div name=3D"quote" style=3D"margin:10px 5px 5px 10px;p=
adding:10px 0px 10px 10px;border-left:2px solid rgb(195,217,229)">
                      <div style=3D"margin:0px 0px 10px"><b>Gesendet:</b>=
=C2=A0Freitag,
                        20. M=C3=A4rz 2020 um 13:44 Uhr<br>
                        <b>Von:</b>=C2=A0&quot;Rob Kossler&quot; &lt;<a hre=
f=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
                        <b>An:</b>=C2=A0&quot;Lukas Haase&quot; &lt;<a href=
=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;,
                        usrp-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                        <b>Betreff:</b>=C2=A0Re: [USRP-users] USRP X310
                        ignored DSP retuning on TX when using a timed
                        command</div>
                      <div name=3D"quoted-content">
                        <div>
                          <div>OK.=C2=A0 Thinking about it a little more, I
                            think that perhaps the tx-to-rx phase
                            measurement methodology was flawed.=C2=A0 So,
                            maybe this is not any issue.=C2=A0 I changed th=
e
                            Python (new version attached) to send the
                            gnuradio Tx signal source (which also drives
                            Tx0 and Tx1) to one input of the
                            multiply_conjugate (replacing Rx1 which
                            previously was the other input).=C2=A0 When I
                            run, now the phase &quot;walks&quot;, but alway=
s over
                            the same range of values.=C2=A0 When I retune T=
x0
                            and Rx0, the &quot;walk&quot; resets but still =
walks
                            over the same range.=C2=A0 As to why the phase
                            walks, I don&#39;t know the answer right off.</=
div>
                          <div>=C2=A0</div>
                          <div>On a separate topic, I noticed that your
                            code does not synchronize the LO setting.=C2=A0
                            This means that the RF phase between the
                            channels could vary from run to run.</div>
                        </div>
                        =C2=A0
                        <div class=3D"gmail_quote">
                          <div class=3D"gmail_attr">On Fri, Mar 20, 2020
                            at 12:04 PM Rob Kossler &lt;<a href=3D"mailto:r=
kossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                            wrote:</div>
                          <blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
                            <div>
                              <div>Lukas,</div>
                              <div>After looking at this a bit, I think
                                that there is indeed an issue.=C2=A0 I thin=
k
                                that it is possible to get consistent
                                tx-to-tx phase results and consistent
                                rx-to-rx phase results, but NOT
                                consistent rx-to-tx phase results.=C2=A0 A
                                few remarks:</div>
                              <div>
                                <ul>
                                  <li>Setup
                                    <ul>
                                      <li>2-channel X310/UBX-160 with
                                        two external loopback RF cables
                                        (with attenuation) such that
                                        Tx0=3D&gt;Rx0 and Tx1=3D&gt;Rx1 (I
                                        likely don&#39;t even need the
                                        loopback cables because I could
                                        operate on just the leakage
                                        signal from each channel, but I
                                        decided to use external
                                        cables).=C2=A0</li>
                                      <li>UHD 3.15.LTS and gnuradio
                                        3.7.13.5.</li>
                                    </ul>
                                  </li>
                                </ul>
                              </div>
                              <div>
                                <ul>
                                  <li>Methodology
                                    <ul>
                                      <li>Transmit an identical waveform
                                        (1 MHz tone) out of both Tx
                                        ports</li>
                                      <li>Measure relative Rx phase by
                                        using a multiply_conjugate block
                                        for the 2 Rx channels (see below
                                        for description of why I changed
                                        what you sent me) with output
                                        connected to a
                                        complex_to_mag_phase block and
                                        subsequent moving_average</li>
                                      <li>Use digital tuning (with timed
                                        commands) to toggle between 2
                                        dsp frequencies while noting the
                                        relative phase results</li>
                                    </ul>
                                  </li>
                                  <li>Test cases
                                    <ul>
                                      <li>Case 1: Verify rx-to-rx phase
                                        results by sending tune requests
                                        to the 2 Rx channels (but
                                        sending nothing to the Tx
                                        channels)</li>
                                      <li>Case 2: Verify tx-to-tx phase
                                        results by sending tune requests
                                        to the 2 Tx channels (but
                                        sending nothing to the Rx
                                        channels)</li>
                                      <li>Case 3: Verify rx-to-tx phase
                                        results by sending tune requests
                                        to channel 0 Rx and Tx (but
                                        sending nothing to channel 1 Rx
                                        and Tx)</li>
                                      <li>Case 4: Verify rx-to-tx phase
                                        results by sending tune requests
                                        to channel 1 Rx and Tx (but
                                        sending nothing to channel 0 Rx
                                        and Tx)</li>
                                    </ul>
                                  </li>
                                </ul>
                                <div>Cases 1 and 2 show consistent
                                  results, but cases 3 and 4 do not. I
                                  cannot conceive of what the problem
                                  is. It is so perplexing that I
                                  hesitate to send this email because it
                                  seems I must be doing something
                                  wrong.=C2=A0 Perhaps there is a problem i=
n
                                  the methodology above along with the
                                  test cases.=C2=A0 But, it seems sound to
                                  me.</div>
                                <div>=C2=A0</div>
                              </div>
                              <div>The Rx block diagram you sent me does
                                not match the Python code you sent.=C2=A0
                                This threw me off for a while.=C2=A0 In you=
r
                                block diagram, the phase measurement is
                                made from the division of the two low
                                pass filter outputs.=C2=A0 In the Python co=
de
                                you sent, the phase measurement uses
                                only the first low pass filter output.=C2=
=A0
                                The reason this is important is that I
                                suspected early on that the problem
                                might be related to your gnuradio
                                signal_source used for IF
                                downconversion.=C2=A0 This signal source is
                                not synchronous with the USRP as you
                                change USRP freqs. However, I figured
                                that it wasn&#39;t a problem because it was
                                &quot;divided out&quot;.=C2=A0 But, since i=
t is
                                actually not divided out,I believe that
                                this was providing misleading results.</div=
>
                              <div>=C2=A0</div>
                              <div>In the end, I just changed your code
                                to add a &quot;multiply_conjugate_cc&quot; =
block
                                with the two Rx channels as the two
                                inputs.=C2=A0 This effectively uses one
                                channel to downconvert the other and
                                thus eliminates the need for the signal
                                source in the Rx block diagram.=C2=A0 I the=
n
                                connected this multiply_conjugate
                                directly to the complex_to_mag_phase.=C2=A0
                                You could simplify the code by removing
                                the other multiply blocks, low pass
                                filters, and divide since these are not
                                used. Also, I put all of the
                                functionality in the rxtx (together)
                                button callback.=C2=A0 I did not really use
                                the other buttons.=C2=A0 Attached is the
                                modified code.</div>
                              <div>=C2=A0</div>
                              <div>Rob</div>
                            </div>
                            =C2=A0
                            <div class=3D"gmail_quote">
                              <div class=3D"gmail_attr">On Fri, Mar 20,
                                2020 at 2:38 AM Rob Kossler &lt;<a href=3D"=
mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                wrote:</div>
                              <blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
                                <div>
                                  <div>
                                    <div>Hi Lukas,</div>
                                    <div>A few remarks:</div>
                                    <div>
                                      <ul>
                                        <li>The 2nd code you sent works
                                          fine.=C2=A0 Thanks.</li>
                                        <li>I&#39;m not sure that
                                          starting/stopping as I do in
                                          my program is causing the
                                          issue.=C2=A0 The only reason I
                                          didn&#39;t continuously stream
                                          both Rx and Tx like you do in
                                          gnuradio is because my
                                          software is not setup to do
                                          that.</li>
                                        <li>So, I still think it&#39;s
                                          possible that UHD can do the
                                          job with continuous streaming
                                          but perhaps there is still
                                          something in the gnuradio
                                          config that is not quite
                                          right.=C2=A0 But, I don&#39;t kno=
w what
                                          that is right now.=C2=A0 I need t=
o
                                          think about this a bit....</li>
                                      </ul>
                                      <div>Rob</div>
                                    </div>
                                  </div>
                                  =C2=A0
                                  <div class=3D"gmail_quote">
                                    <div class=3D"gmail_attr">On Thu, Mar
                                      19, 2020 at 8:17 PM Lukas Haase
                                      &lt;<a href=3D"mailto:lukashaase@gmx.=
at" target=3D"_blank">lukashaase@gmx.at</a>&gt;
                                      wrote:</div>
                                    <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                      <div>
                                        <div style=3D"font-family:Verdana;f=
ont-size:12px">
                                          <div>Hi Rob,</div>
                                          <div>=C2=A0</div>
                                          <div>Sorry I really should
                                            have ran the python file
                                            before uploading. The issue
                                            was that I combined to files
                                            into one and forgot to
                                            remove the imported file.</div>
                                          <div>Here is a new one
                                            (tested): <a href=3D"http://pas=
te.ubuntu.com/p/VsGRmsbZQ5/" target=3D"_blank">http://paste.ubuntu.com/p/Vs=
GRmsbZQ5/</a></div>
                                          <div>=C2=A0</div>
                                          <div>=C2=A0</div>
                                          <div>Thanks for reporting your
                                            results .... very
                                            interesting!</div>
                                          <div>=C2=A0</div>
                                          <div>Why do you think second
                                            mode makes sense to you?
                                            (assuming you are using
                                            timed commands to to retune
                                            TX+RX at the same time)</div>
                                          <div>=C2=A0</div>
                                          <div>In general, it seems to
                                            me that things are related
                                            to streaming start/stop.
                                            Maybe things are reset when
                                            streaming starts/ends but
                                            not when re-tuning?</div>
                                          <div>=C2=A0</div>
                                          <div>Maybe this is what Marcus
                                            was mentioning: resetting
                                            phase accumulator vs.
                                            &quot;increment register is
                                            updated with the new phase
                                            increment&quot;?</div>
                                          <div>=C2=A0</div>
                                          <div>MAYBE stopping/starting
                                            resets the phase accumulator
                                            to zero and just timed
                                            retuning doesn&#39;t reset
                                            anything. But still, my
                                            question is left why this
                                            would result in a random
                                            phase offset between DUC and
                                            DDC.</div>
                                          <div>=C2=A0</div>
                                          <div>Thanks again!!</div>
                                          <div>Lukas</div>
                                          <div>=C2=A0
                                            <div>=C2=A0
                                              <div style=3D"margin:10px 5px=
 5px 10px;padding:10px 0px 10px 10px;border-left:2px solid rgb(195,217,229)=
">
                                                <div style=3D"margin:0px 0p=
x 10px"><b>Gesendet:</b>=C2=A0Donnerstag,
                                                  19. M=C3=A4rz 2020 um 19:=
16
                                                  Uhr<br>
                                                  <b>Von:</b>=C2=A0&quot;Ro=
b
                                                  Kossler&quot; &lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
                                                  <b>An:</b>=C2=A0&quot;Luk=
as
                                                  Haase&quot; &lt;<a href=
=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<b=
r>
                                                  <b>Cc:</b>=C2=A0&quot;<a =
href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lis=
ts.ettus.com</a>&quot;
                                                  &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t;<br>
                                                  <b>Betreff:</b>=C2=A0Re:
                                                  [USRP-users] USRP X310
                                                  ignored DSP retuning
                                                  on TX when using a
                                                  timed command</div>
                                                <div>
                                                  <div>
                                                    <div>Lukas,</div>
                                                    <div>I installed
                                                      gnuradio and tried
                                                      to run but
                                                      encounter the
                                                      following.=C2=A0 I&#3=
9;m
                                                      guessing this is
                                                      your block.</div>
                                                    <div>Traceback (most
                                                      recent call last):<br=
>
                                                      =C2=A0 File &quot;tes=
t.py&quot;,
                                                      line 25, in
                                                      &lt;module&gt;<br>
                                                      =C2=A0 =C2=A0 import
                                                      epy_block_1<br>
                                                      ImportError: No
                                                      module named
                                                      epy_block_1</div>
                                                    <div>Rob</div>
                                                  </div>
                                                  =C2=A0
                                                  <div class=3D"gmail_quote=
">
                                                    <div class=3D"gmail_att=
r">On
                                                      Thu, Mar 19, 2020
                                                      at 6:28 PM Rob
                                                      Kossler &lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                                      wrote:</div>
                                                    <blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
                                                      <div>
                                                        <div>Ok.=C2=A0 Fals=
e
                                                          alarm.=C2=A0 I
                                                          forgot about
                                                          the dboard
                                                          clock needing
                                                          set to 20MHz
                                                          for RF freq
                                                          below 1 GHz.=C2=
=A0
                                                          When I made
                                                          this change,
                                                          now I get
                                                          consistent
                                                          Rx-Tx phase
                                                          for the first
                                                          mode where
                                                          both Tx and Rx
                                                          start/stop at
                                                          each test.</div>
                                                        <div>Rob</div>
                                                      </div>
                                                      =C2=A0
                                                      <div class=3D"gmail_q=
uote">
                                                        <div class=3D"gmail=
_attr">On
                                                          Thu, Mar 19,
                                                          2020 at 6:10
                                                          PM Rob Kossler
                                                          &lt;<a href=3D"ma=
ilto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                                          wrote:</div>
                                                        <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <div>
                                                          <div><span style=
=3D"font-family:arial,sans-serif">Ok.
                                                          I modified my
                                                          code to be
                                                          more like
                                                          yours...</span></=
div>
                                                          <div>
                                                          <ul>
                                                          <li><span style=
=3D"font-family:arial,sans-serif">toggling
                                                          dsp freq
                                                          rather than LO
                                                          freq</span></li>
                                                          <li><span style=
=3D"font-family:arial,sans-serif">LO
                                                          at 900 MHz</span>=
</li>
                                                          <li><span style=
=3D"font-family:arial,sans-serif">external
                                                          connections
                                                          Tx0 =3D&gt;
                                                          Splitter_1x2
                                                          =3D&gt; both Rx0
                                                          and Rx1</span></l=
i>
                                                          <li><span style=
=3D"font-family:arial,sans-serif">Previously,
                                                          I was starting
                                                          / stopping
                                                          both Rx &amp;
                                                          Tx in between
                                                          each test.=C2=A0
                                                          Now, I added a
                                                          mode where the
                                                          Tx is on
                                                          continuously,
                                                          and the Rx
                                                          starts &amp;
                                                          stops for each
                                                          test after the
                                                          dsp freq
                                                          change</span></li=
>
                                                          </ul>
                                                          <div>The
                                                          results are
                                                          the following:</d=
iv>
                                                          <ul>
                                                          <li>In the
                                                          first mode
                                                          where both Tx
                                                          and Rx
                                                          start/stop at
                                                          each test, I
                                                          get consistent
                                                          group delay
                                                          (as measured
                                                          by the
                                                          correlation
                                                          peak index)
                                                          for both Rx-Rx
                                                          and Rx-Tx.=C2=A0
                                                          But for phase,
                                                          the Rx-Rx
                                                          phase is
                                                          consistent,
                                                          but the Rx-Tx
                                                          phase seems
                                                          random</li>
                                                          <li>In the
                                                          second mode
                                                          where Tx is on
                                                          continuously
                                                          and I
                                                          start/stop Rx
                                                          after each dsp
                                                          freq change,
                                                          the group
                                                          delay is
                                                          constant for
                                                          Rx-Rx but
                                                          random for
                                                          Rx-Tx.=C2=A0 The
                                                          phase results
                                                          are constant
                                                          for Rx-Rx but
                                                          random for
                                                          Rx-Tx.</li>
                                                          </ul>
                                                          <div>Regarding
                                                          the 2nd mode,
                                                          this makes
                                                          sense to me.=C2=
=A0
                                                          But, for the
                                                          1st mode, I
                                                          don&#39;t
                                                          understand=C2=A0w=
hy
                                                          the Rx-Tx
                                                          phase seems
                                                          random. Still
                                                          thinking about
                                                          it....</div>
                                                          <div>Rob</div>
                                                          </div>
                                                          </div>
                                                          =C2=A0
                                                          <div class=3D"gma=
il_quote">
                                                          <div class=3D"gma=
il_attr">On
                                                          Thu, Mar 19,
                                                          2020 at 4:35
                                                          PM Rob Kossler
                                                          &lt;<a href=3D"ma=
ilto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <div>Lukas,</div>
                                                          <div>Just
                                                          before
                                                          receiving your
                                                          email, I ran
                                                          the following
                                                          with my custom
                                                          c++ &amp;
                                                          matlab
                                                          software using
                                                          X310/UBX-160
                                                          with the
                                                          connections I
                                                          described.=C2=A0
                                                          The following
                                                          shows the
                                                          output which
                                                          is very
                                                          consistent.=C2=A0=
 I
                                                          used a 100
                                                          tone
                                                          multi-tone
                                                          waveform
                                                          spread over 4
                                                          MHz bandwidth
                                                          (using 5 MS/s
                                                          sample rate on
                                                          Tx and Rx).=C2=A0
                                                          Note the
                                                          consistency of
                                                          results as I
                                                          toggled
                                                          between 2
                                                          frequencies:
                                                          2450 and 2460
                                                          MHz.</div>
                                                          <div>=C2=A0</div>
                                                          <div>My method
                                                          was the
                                                          following:</div>
                                                          <div>
                                                          <ul>
                                                          <li>Tx
                                                          waveform was
                                                          500 points
                                                          long</li>
                                                          <li>Rx capture
                                                          was 5000
                                                          points long</li>
                                                          <li>Compute
                                                          cross-correlation
                                                          (using Matlab
                                                          xcorr) as
                                                          follows:
                                                          xcorr(rx0,
                                                          conj(tx)) AND
xcorr(rx0,conj(rx1))</li>
                                                          <li>Find the
                                                          correlation
                                                          peak (which
                                                          was very
                                                          pronounced)
                                                          which shows
                                                          the sample
                                                          delay between
                                                          the two
                                                          signals.=C2=A0
                                                          Extract the
                                                          phase at the
                                                          peak</li>
                                                          </ul>
                                                          <div>Oops, I
                                                          just realized
                                                          that I used a
                                                          constant DSP
                                                          freq (10 MHz)
                                                          and I changed
                                                          the LO freq in
                                                          my test.=C2=A0 I
                                                          will try again
                                                          with moving
                                                          the DSP freq
                                                          instead.</div>
                                                          <div>Rob</div>
                                                          </div>
                                                          <div>=C2=A0</div>
                                                          <div><span style=
=3D"font-family:monospace">Test
                                                          1: freq =3D
                                                          2450.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.8<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.7<br>
                                                          Test 2: freq =3D
                                                          2460.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.7<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 13.1<br>
                                                          Test 3: freq =3D
                                                          2450.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.7<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.8<br>
                                                          Test 4: freq =3D
                                                          2460.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.6<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 13.0<br>
                                                          Test 5: freq =3D
                                                          2450.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.7<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.8<br>
                                                          Test 6: freq =3D
                                                          2460.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.8<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 12.7<br>
                                                          Test 7: freq =3D
                                                          2450.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.8<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.9<br>
                                                          Test 8: freq =3D
                                                          2460.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.7<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 12.9<br>
                                                          Test 9: freq =3D
                                                          2450.0 MHz<br>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.8<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.8<br>
                                                          Test 10: freq
                                                          =3D 2460.0 MHz<br=
>
                                                          =C2=A0 Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.7<br>
                                                          =C2=A0 Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 12.9<br>
                                                          &gt;&gt; </span><=
/div>
                                                          <div>=C2=A0</div>
                                                          =C2=A0
                                                          <div class=3D"gma=
il_quote">
                                                          <div class=3D"gma=
il_attr">On
                                                          Thu, Mar 19,
                                                          2020 at 4:21
                                                          PM Lukas Haase
                                                          &lt;<a href=3D"ma=
ilto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <div style=3D"fon=
t-family:Verdana;font-size:12px">
                                                          <div>Hi Rob,</div=
>
                                                          <div>=C2=A0</div>
                                                          <div>Yes, I
                                                          confirm your
                                                          conclusion.</div>
                                                          <div>=C2=A0</div>
                                                          <ul>
                                                          <li>I
                                                          calculate the
                                                          relative phase
                                                          by dividing
                                                          the outputs of
                                                          both
                                                          receivers. To
                                                          understand
                                                          better, note
                                                          that I have an
                                                          additional &quot;=
IF
                                                          stage&quot; in my
                                                          own signal
                                                          flow such that
                                                          I exclude DC
                                                          offset
                                                          correction
                                                          etc. the USRP
                                                          may perform.
                                                          This is the
                                                          block diagram
                                                          of the
                                                          transmitter
                                                          part: <a href=3D"=
https://snipboard.io/YFgIKs.jpg" target=3D"_blank">https://snipboard.io/YFg=
IKs.jpg</a>
                                                          . I send
                                                          &quot;exp(1j*1MHz=
*t)
                                                          . This shows
                                                          the receiver
                                                          part: <a href=3D"=
https://snipboard.io/i9jLJg.jpg" target=3D"_blank">https://snipboard.io/i9j=
LJg.jpg</a>
                                                          . I multiply
                                                          the received
                                                          signal with
                                                          exp(-1j*1MHz*t)
                                                          and filter
                                                          them. Then I
                                                          divide both
                                                          streams and
                                                          take the phase
                                                          part. I take a
                                                          moving average
                                                          (for
                                                          flucatuations),
                                                          add pi and
                                                          display the
                                                          number.</li>
                                                          <li><span style=
=3D"font:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blan=
k">https://snipboard.io/YFgIKs.jpg</a></span>
                                                          <span style=3D"fo=
nt:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blank">htt=
ps://snipboard.io/YFgIKs.jpg</a></span>
                                                          <span style=3D"fo=
nt:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blank">htt=
ps://snipboard.io/YFgIKs.jpg</a></span>
                                                          That&#39;s so
                                                          nice, thank
                                                          you!! My code
                                                          is here: <a href=
=3D"http://paste.ubuntu.com/p/MbCJfPGzYW/" target=3D"_blank">http://paste.u=
buntu.com/p/MbCJfPGzYW/</a>
                                                          . I&#39;m not sur=
e
                                                          if you have
                                                          gnuradio(and
                                                          QT) installed
                                                          but if yes,
                                                          simply
                                                          &quot;python2
                                                          switch_on_click.p=
y&quot;
                                                          should do. Let
                                                          me quickly
                                                          elaborate how
                                                          it works:
                                                          <ul>
                                                          <li>Class
                                                          &quot;switch_on_c=
lick&quot;
                                                          implements a
                                                          normal
                                                          gnuradio flow
                                                          with USRP
                                                          transmitter
                                                          and receiver.</li=
>
                                                          <li>It also
                                                          uses a custom
                                                          module
                                                          together with
                                                          buttons and a
                                                          probe block to
                                                          call functions
                                                          upon clicking
                                                          on a button</li>
                                                          <li>The
                                                          callback
                                                          functions are
                                                          defined in
                                                          class &quot;blk&q=
uot;</li>
                                                          <li>The most
                                                          important is
                                                          &quot;def
                                                          button_rtx_handle=
r&quot;
                                                          on line 106
                                                          which is
                                                          executed when
                                                          user clicks on
                                                          button &quot;Swit=
ch
                                                          RTX
                                                          (together)&quot;<=
/li>
                                                          </ul>
                                                          </li>
                                                          <li>Again,
                                                          thank you for
                                                          trying this
                                                          out!! If it
                                                          works, would
                                                          you mind
                                                          sharing this
                                                          code then? I
                                                          may be able to
                                                          check then
                                                          where it
                                                          breaks on my
                                                          system</li>
                                                          <li>I use 900
                                                          MHz as default
                                                          center
                                                          frequency (and
                                                          &quot;rf_freq&quo=
t;).
                                                          When clicking,
                                                          I jump between
                                                          dsp_freq=3D0 and
                                                          dsp_freq=3D500e3.
                                                          As to my
                                                          waveform, you
                                                          can infer from
                                                          my screenshots
                                                          and code
                                                          above: I am
                                                          transmitting
                                                          and receiving
                                                          a 1MHz
                                                          waveform
                                                          (which acts as
                                                          an additional
                                                          &quot;IF stage&qu=
ot;).
                                                          The received
                                                          signal is then
                                                          downconcerted
                                                          from 1MHz to
                                                          DC. I use 5
                                                          MSsps sampling
                                                          rate.</li>
                                                          </ul>
                                                          <div>
                                                          <div>=C2=A0</div>
                                                          <div>Again,
                                                          thank you SO
                                                          much.</div>
                                                          <div>=C2=A0</div>
                                                          <div>Best,</div>
                                                          <div>Lukas</div>
                                                          <div>=C2=A0</div>
                                                          <div>=C2=A0
                                                          <div style=3D"mar=
gin:10px 5px 5px 10px;padding:10px 0px 10px 10px;border-left:2px solid rgb(=
195,217,229)">
                                                          <div style=3D"mar=
gin:0px 0px 10px"><b>Gesendet:</b>=C2=A0Donnerstag,
                                                          19. M=C3=A4rz 202=
0
                                                          um 10:43 Uhr<br>
                                                          <b>Von:</b>=C2=A0=
&quot;Rob
                                                          Kossler&quot; &lt=
;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&g=
t;<br>
                                                          <b>An:</b>=C2=A0&=
quot;Lukas
                                                          Haase&quot; &lt;<=
a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>=
&gt;<br>
                                                          <b>Cc:</b>=C2=A0&=
quot;<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a>&quot;
                                                          &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt;<br>
                                                          <b>Betreff:</b>=
=C2=A0Re:
                                                          [USRP-users]
                                                          USRP X310
                                                          ignored DSP
                                                          retuning on TX
                                                          when using a
                                                          timed command</di=
v>
                                                          <div>
                                                          <div>
                                                          <div>Hi Lukas,
                                                          <div>So, the
                                                          conclusion is
                                                          that your
                                                          Rx0-to-Rx1
                                                          relative phase
                                                          is nearly
                                                          constant such
                                                          that it seems
                                                          that both
                                                          Rx0/Rx1 are
                                                          phase coherent
                                                          and Tx0/Tx1
                                                          are phase
                                                          coherent.=C2=A0
                                                          But, phase
                                                          from Tx-to-Rx
                                                          is random.=C2=A0
                                                          Please correct
                                                          me if that is
                                                          wrong.=C2=A0=C2=
=A0</div>
                                                          <div>=C2=A0</div>
                                                          <div>I have a
                                                          few comments:</di=
v>
                                                          <div>
                                                          <ul>
                                                          <li>How do you
                                                          measure/calculate
                                                          the relative
                                                          phase?</li>
                                                          <li>Can you
                                                          send me the
                                                          full Python
                                                          code to look
                                                          at?=C2=A0 As I
                                                          mentioned
                                                          previously, I
                                                          am not too
                                                          good at
                                                          gnuradio/Python,
                                                          but I might be
                                                          able to spot
                                                          something.</li>
                                                          <li>As to your
                                                          question, I
                                                          always use
                                                          synchronous
                                                          measurements.=C2=
=A0
                                                          And, I&#39;m
                                                          confident that
                                                          my Rx-to-Rx
                                                          phase is
                                                          coherent.=C2=A0
                                                          But, I haven&#39;=
t
                                                          really looked
                                                          at Tx-to-Rx in
                                                          a while so I
                                                          will do so
                                                          later today.=C2=
=A0
                                                          Here are the
                                                          steps I plan
                                                          to take:
                                                          <ol>
                                                          <li>Connect
                                                          Tx0 to Rx1.=C2=A0
                                                          Note that
                                                          there is a
                                                          pretty strong
                                                          leakage signal
                                                          from Tx0 to
                                                          Rx0 so I don&#39;=
t
                                                          really need to
                                                          provide a
                                                          physical
                                                          connection in
                                                          order to get a
                                                          signal on
                                                          Rx0.=C2=A0 The
                                                          signal
                                                          attenuation in
                                                          this leakage
                                                          path is approx
                                                          40 dB so it is
                                                          not too much
                                                          different than
                                                          the signal
                                                          level I will
                                                          receive on Rx1
                                                          if I use an
                                                          external 30 dB
                                                          attenuator.</li>
                                                          <li>Set Rx and
                                                          Tx frequency
                                                          to freq 1</li>
                                                          <li>Measure
                                                          and note the
                                                          relative phase
                                                          for Rx0/Tx0
                                                          and Rx1/Tx0
                                                          for freq 1</li>
                                                          <li>Set Rx and
                                                          Tx frequency
                                                          to freq 2</li>
                                                          <li>Measure
                                                          and note the
                                                          relative phase
                                                          for Rx0/Tx0
                                                          and Rx1/Tx0
                                                          for freq 2</li>
                                                          <li>Repeat
                                                          steps 2-5 a
                                                          few times to
                                                          ensure that
                                                          the
                                                          measurements
                                                          are repeatable</l=
i>
                                                          </ol>
                                                          </li>
                                                          <li>Questions:
                                                          what should I
                                                          use for freq 1
                                                          and freq 2?=C2=A0
                                                          What waveform
                                                          are you
                                                          transmitting?=C2=
=A0
                                                          What sample
                                                          rates for Tx
                                                          and Rx?</li>
                                                          </ul>
                                                          <div>Rob</div>
                                                          </div>
                                                          <div>=C2=A0</div>
                                                          </div>
                                                          <div>
                                                          <div>=C2=A0</div>
                                                          =C2=A0
                                                          <div class=3D"gma=
il_quote">
                                                          <div class=3D"gma=
il_attr">On
                                                          Wed, Mar 18,
                                                          2020 at 7:47
                                                          PM Lukas Haase
                                                          via USRP-users
                                                          &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <div style=3D"fon=
t-family:Verdana;font-size:12px">
                                                          <div>Hi Rob,</div=
>
                                                          <div>=C2=A0</div>
                                                          <div>I think
                                                          the issue is
                                                          really having
                                                          two usrp_multi
                                                          devices with
                                                          timed commands
                                                          and same
                                                          timestmap or
                                                          similar. From
                                                          your tests
                                                          below:</div>
                                                          <div>=C2=A0</div>
                                                          <div>1.) I can
                                                          <b>confirm </b>th=
at
                                                          the relative
                                                          phase between
                                                          two RX in your
                                                          suggested test
                                                          is always the
                                                          same! In fact,
                                                          it is always
                                                          4.56 rad, even
                                                          across
                                                          restarts and
                                                          for different
                                                          frequencies!
                                                          That somewhat
                                                          makes sense
                                                          because the
                                                          phase offset
                                                          is now only
                                                          dependent on
                                                          the difference
                                                          between the
                                                          two channels
                                                          (fixed) and
                                                          cable lengths
                                                          from the
                                                          splitter
                                                          (fixed). I
                                                          verified by
                                                          removing the
                                                          timed command
                                                          on usrp
                                                          source, the
                                                          phase offset
                                                          becomes random
                                                          after each
                                                          retune. Of
                                                          course, this
                                                          is independent
                                                          of TX tuning
                                                          (timed vs.
                                                          not). For
                                                          reference,
                                                          this is the
                                                          code used:</div>
                                                          <div>=C2=A0</div>
                                                          <div>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx =3D
uhd.tune_request()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx.rf_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_NONE<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx.dsp_f=
req_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_MANUAL<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx.dsp_f=
req
                                                          =3D -dsp_freq</di=
v>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx =3D
uhd.tune_request()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx.rf_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_NONE<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx.dsp_f=
req_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_MANUAL<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx.dsp_f=
req
                                                          =3D dsp_freq</div=
>
                                                          <div>=C2=A0</div>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          now =3D
                                                          usrp_sink.get_tim=
e_now()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 when =3D
                                                          now +
                                                          uhd.time_spec(1.0=
)</div>
                                                          =C2=A0
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_sink.set_com=
mand_time(when)<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_source.set_c=
ommand_time(when)</div>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          res1 =3D
                                                          usrp_sink.set_cen=
ter_freq(tune_req_tx)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          # TX<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 res2 =3D
                                                          usrp_source.set_c=
enter_freq(tune_req_rx,
                                                          0)=C2=A0 #RX1<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 res3 =3D
                                                          usrp_source.set_c=
enter_freq(tune_req_rx,
                                                          1)=C2=A0 #RX2</di=
v>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_sink.clear_c=
ommand_time()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_source.clear=
_command_time()</div>
                                                          </div>
                                                          <div>=C2=A0
                                                          <div>
                                                          <div>2.) I
                                                          also tried
                                                          your second
                                                          suggestion.
                                                          Before reading
                                                          on, you wanna
                                                          guess what the
                                                          outcome is?</div>
                                                          <div>I
                                                          connected
                                                          &quot;TX/RX&quot;=
 to
                                                          &quot;RX2&quot; o=
n UBX
                                                          #1 (TX1 --&gt;
                                                          RX1) and
                                                          &quot;TX/RX&quot;=
 to
                                                          &quot;RX2&quot; o=
n UBX
                                                          #2 (TX2 --&gt;
                                                          RX2). In
                                                          absence of a
                                                          second 30dB
                                                          attenuator I
                                                          used two
                                                          antennas
                                                          closely spaced
                                                          together. For
                                                          reference, my
                                                          code looks now
                                                          like:</div>
                                                          <div>=C2=A0</div>
                                                          <div>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx =3D
uhd.tune_request()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx.rf_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_NONE<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx.dsp_f=
req_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_MANUAL<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_rx.dsp_f=
req
                                                          =3D -dsp_freq</di=
v>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx =3D
uhd.tune_request()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx.rf_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_NONE<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx.dsp_f=
req_policy
                                                          =3D
                                                          uhd.tune_request.=
POLICY_MANUAL<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          tune_req_tx.dsp_f=
req
                                                          =3D dsp_freq</div=
>
                                                          <div>=C2=A0</div>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          now =3D
                                                          usrp_sink.get_tim=
e_now()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 when =3D
                                                          now +
                                                          uhd.time_spec(1.0=
)</div>
                                                          =C2=A0
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_sink.set_com=
mand_time(when)<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_source.set_c=
ommand_time(when)</div>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          res1 =3D
                                                          usrp_sink.set_cen=
ter_freq(tune_req_tx,
                                                          0)=C2=A0 =C2=A0=
=C2=A0 # TX1<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 res2 =3D
                                                          usrp_sink.set_cen=
ter_freq(tune_req_tx,
                                                          1)=C2=A0=C2=A0=C2=
=A0=C2=A0 # TX2<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 res3 =3D
                                                          usrp_source.set_c=
enter_freq(tune_req_rx,
                                                          0) # RX1<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 res4 =3D
                                                          usrp_source.set_c=
enter_freq(tune_req_rx,
                                                          1) # RX2</div>
                                                          <div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_sink.clear_c=
ommand_time()<br>
                                                          =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                                          usrp_source.clear=
_command_time()</div>
                                                          </div>
                                                          <div>=C2=A0</div>
                                                          <div>I again
                                                          look at the <b>re=
lative
                                                          phase</b> of
                                                          RX1 and RX2
                                                          (obtained by
                                                          dividing the
                                                          two) and guess
                                                          what: Also now
                                                          the relative
                                                          phase stays
                                                          constant!
                                                          (This time it
                                                          actually
                                                          slightly
                                                          varies from
                                                          3.0 rad to 3.7
                                                          rad between
                                                          two different
                                                          frequencies).</di=
v>
                                                          <div>What does
                                                          that mean? I
                                                          think it means
                                                          that TX must
                                                          be tuned
                                                          coherently and
                                                          RX must be
                                                          tuned
                                                          coherently,
                                                          i.e., timed
                                                          commands
                                                          generally work
                                                          for multiple
                                                          TX&#39;s and
                                                          multiple RX&#39;s
                                                          <b>individually</=
b>.
                                                          Do I get that
                                                          right?</div>
                                                          <div>=C2=A0</div>
                                                          <div>What
                                                          doesn&#39;t seem
                                                          to work is
                                                          RX+TX <b>together=
</b>.</div>
                                                          <div>=C2=A0</div>
                                                          <div>I am very
                                                          desperately
                                                          asking if you
                                                          had coherent
                                                          TX+RX setup
                                                          working at any
                                                          point or know
                                                          somebody who
                                                          did. It would
                                                          be so much
                                                          worth to know
                                                          if this is
                                                          something that
                                                          never worked
                                                          to begin with
                                                          or if I&#39;m jus=
t
                                                          doing
                                                          something
                                                          wrong. On the
                                                          other hand I
                                                          don&#39;t want to
                                                          believe being
                                                          the only
                                                          person on the
                                                          planet having
                                                          tried TX+RX
                                                          phase coherent
                                                          operation :-/</di=
v>
                                                          <div>=C2=A0</div>
                                                          Any other
                                                          further
                                                          suggestions on
                                                          how to
                                                          continue
                                                          debugging with
                                                          the above in
                                                          mind would be
                                                          helpful too.
                                                          <div>=C2=A0</div>
                                                          <div>In my
                                                          opinion there
                                                          are two
                                                          options left:</di=
v>
                                                          <div>1.) There
                                                          is still a
                                                          nondeterministic
                                                          delay between
                                                          the TX and RX
                                                          timed commands
                                                          (to my
                                                          understanding,
                                                          even a
                                                          constant delay
                                                          would result
                                                          in coherent
                                                          phase)</div>
                                                          <div>2.) While
                                                          the phase
                                                          accumulators
                                                          in RX are set
                                                          to the same
                                                          values (and in
                                                          TX as well),
                                                          they may be
                                                          set to a
                                                          different,
                                                          random value.</di=
v>
                                                          <div>=C2=A0</div>
                                                          <div>However,
                                                          I don&#39;t reall=
y
                                                          know how to
                                                          test these.</div>
                                                          <div>=C2=A0</div>
                                                          <div>Thanks,</div=
>
                                                          <div>Lukas</div>
                                                          <div>=C2=A0</div>
                                                          <div>=C2=A0</div>
                                                          <div style=3D"mar=
gin:10px 5px 5px 10px;padding:10px 0px 10px 10px;border-left:2px solid rgb(=
195,217,229)">
                                                          <div style=3D"mar=
gin:0px 0px 10px"><b>Gesendet:</b>=C2=A0Freitag,
                                                          13. M=C3=A4rz 202=
0
                                                          um 12:27 Uhr<br>
                                                          <b>Von:</b>=C2=A0=
&quot;Rob
                                                          Kossler&quot; &lt=
;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&g=
t;<br>
                                                          <b>An:</b>=C2=A0&=
quot;Lukas
                                                          Haase&quot; &lt;<=
a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>=
&gt;<br>
                                                          <b>Cc:</b>=C2=A0&=
quot;Marcus
                                                          D Leech&quot; &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun=
@gmail.com</a>&gt;,
                                                          &quot;<a href=3D"=
mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a>&quot;
                                                          &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt;<br>
                                                          <b>Betreff:</b>=
=C2=A0Re:
                                                          [USRP-users]
                                                          USRP X310
                                                          ignored DSP
                                                          retuning on TX
                                                          when using a
                                                          timed command</di=
v>
                                                          <div>
                                                          <div>
                                                          <div>Ok,
                                                          great.=C2=A0 I am
                                                          trying to
                                                          think of ways
                                                          to now add the
                                                          phase
                                                          measurement.=C2=
=A0
                                                          Ideas...</div>
                                                          <div>
                                                          <ul>
                                                          <li>In order
                                                          to get
                                                          consistent
                                                          phase, you
                                                          would need to
                                                          tune Rx and Tx
                                                          DSP at the
                                                          same time
                                                          (rather than
                                                          below where
                                                          you are only
                                                          tuning one of
                                                          them).=C2=A0 So,
                                                          assuming that
                                                          this will not
                                                          produce
                                                          consistent
                                                          phase results,
                                                          then maybe try
                                                          the following
                                                          idea...</li>
                                                          <li>If you
                                                          want to check
                                                          just Rx DSP
                                                          tuning (with
                                                          fixed Tx DSP
                                                          tuning), you
                                                          could try a 2
                                                          channel Rx
                                                          measurement
                                                          where the Tx
                                                          is split
                                                          externally
                                                          with 1:2
                                                          splitter in
                                                          order to drive
                                                          both Rx0 and
                                                          Rx1.=C2=A0 Then,
                                                          measure the
                                                          relative phase
                                                          Rx0/Rx1 and
                                                          then tune back
                                                          and forth
                                                          between two Rx
                                                          DSP freqs to
                                                          see if the
                                                          relative phase
                                                          on Rx remains
                                                          constant.=C2=A0 I=
f
                                                          so, this would
                                                          give you good
                                                          confidence
                                                          that Rx DSP
                                                          tuning is
                                                          indeed
                                                          happening
                                                          synchronously</li=
>
                                                          <li>Assuming
                                                          that the Rx IS
                                                          synchronous in
                                                          the step above
                                                          (perhaps a bad
                                                          assumption,
                                                          but here
                                                          goes), you
                                                          could then
                                                          check TX DSP
                                                          tuning (with
                                                          fixed Rx DSP
                                                          tuning) by
                                                          using two Tx
                                                          and two Rx
                                                          channels with
                                                          Tx0 connected
                                                          to Rx0 and Tx1
                                                          connected to
                                                          Rx1.=C2=A0 At thi=
s
                                                          point we are
                                                          confident that
                                                          Rx DSP tuning
                                                          is synchronous
                                                          so any
                                                          synchronous
                                                          misbehavior
                                                          would imply a
                                                          Tx sync
                                                          problem.</li>
                                                          </ul>
                                                          <div>Sorry I
                                                          can&#39;t think o=
f
                                                          better
                                                          ideas.=C2=A0=C2=
=A0</div>
                                                          <div>Rob</div>
                                                          </div>
                                                          =C2=A0
                                                          <div class=3D"gma=
il_quote">
                                                          <div class=3D"gma=
il_attr">On
                                                          Fri, Mar 13,
                                                          2020 at 12:12
                                                          PM Lukas Haase
                                                          &lt;<a href=3D"ma=
ilto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi
                                                          Rob,<br>
                                                          <br>
                                                          1.) yes,
                                                          works(*)<br>
                                                          2.) yes,
                                                          works(*)<br>
                                                          <br>
                                                          (*):
                                                          qualitatively.
                                                          I set the
                                                          timed command
                                                          to
                                                          &quot;get_current=
_time()
                                                          +
                                                          uhd.time_spec(2.0=
)&quot;
                                                          and I see the
                                                          chance 2
                                                          seconds after
                                                          my click on
                                                          the screen. I
                                                          cannot (do not
                                                          know how)
                                                          check if it
                                                          actually
                                                          happens at
                                                          sample-precicse
                                                          location.<br>
                                                          <div>On
                                                          03/19/2020
                                                          08:16 PM,
                                                          Lukas Haase
                                                          via USRP-users
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote type=
=3D"cite">
                                                          <div style=3D"fon=
t-family:Verdana;font-size:12px">
                                                          <div>Hi Rob,</div=
>
                                                          <div>=C2=A0</div>
                                                          <div>Sorry I
                                                          really should
                                                          have ran the
                                                          python file
                                                          before
                                                          uploading. The
                                                          issue was that
                                                          I combined to
                                                          files into one
                                                          and forgot to
                                                          remove the
                                                          imported file.</d=
iv>
                                                          <div>Here is a
                                                          new one
                                                          (tested): <a href=
=3D"http://paste.ubuntu.com/p/VsGRmsbZQ5/" target=3D"_blank">http://paste.u=
buntu.com/p/VsGRmsbZQ5/</a></div>
                                                          <div>=C2=A0</div>
                                                          <div>=C2=A0</div>
                                                          <div>Thanks
                                                          for reporting
                                                          your results
                                                          .... very
                                                          interesting!</div=
>
                                                          <div>=C2=A0</div>
                                                          <div>Why do
                                                          you think
                                                          second mode
                                                          makes sense to
                                                          you? (assuming
                                                          you are using
                                                          timed commands
                                                          to to retune
                                                          TX+RX at the
                                                          same time)</div>
                                                          <div>=C2=A0</div>
                                                          <div>In
                                                          general, it
                                                          seems to me
                                                          that things
                                                          are related to
                                                          streaming
                                                          start/stop.
                                                          Maybe things
                                                          are reset when
                                                          streaming
                                                          starts/ends
                                                          but not when
                                                          re-tuning?</div>
                                                          <div>=C2=A0</div>
                                                          <div>Maybe
                                                          this is what
                                                          Marcus was
                                                          mentioning:
                                                          resetting
                                                          phase
                                                          accumulator
                                                          vs. &quot;increme=
nt
                                                          register is
                                                          updated with
                                                          the new phase
                                                          increment&quot;?<=
/div>
                                                          <div>=C2=A0</div>
                                                          <div>MAYBE
                                                          stopping/starting
                                                          resets the
                                                          phase
                                                          accumulator to
                                                          zero and just
                                                          timed retuning
                                                          doesn&#39;t reset
                                                          anything. But
                                                          still, my
                                                          question is
                                                          left why this
                                                          would result
                                                          in a random
                                                          phase offset
                                                          between DUC
                                                          and DDC.</div>
                                                          <div>=C2=A0</div>
                                                          <div>Thanks
                                                          again!!</div>
                                                          <div>Lukas</div>
                                                          <div>=C2=A0 <br>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          So, having
                                                          spent a couple
                                                          of hours
                                                          snooping
                                                          around the
                                                          X3xx FPGA
                                                          code, where
                                                          Verilog is not
                                                          one of my
                                                          native
                                                          languages, I
                                                          have come to<br>
                                                          =C2=A0 a bit of a
                                                          conclusion
                                                          about the ways
                                                          things work.=C2=
=A0
                                                          Now, keep in
                                                          mind, this is
                                                          like me
                                                          reading War
                                                          and Peace in
                                                          the original
                                                          Russian, and
                                                          as<br>
                                                          =C2=A0 an English
                                                          speaker,
                                                          coming the
                                                          vague
                                                          conclusion
                                                          that &quot;It was
                                                          about Russia&quot=
;.<br>
                                                          <br>
                                                          There&#39;s a
                                                          &quot;settings bu=
s&quot;
                                                          within the
                                                          FPGA that is
                                                          implemented
                                                          with AXI FIFO
                                                          modules.=C2=A0 If
                                                          your command
                                                          (which
                                                          results, most
                                                          often in<br>
                                                          =C2=A0 having to
                                                          &quot;set&quot; o=
ne or
                                                          more registers
                                                          via the
                                                          settings bus)
                                                          is not a timed
                                                          command, it
                                                          enters the
                                                          FIFO, and then
                                                          is &quot;executed=
&quot;
                                                          one<br>
                                                          =C2=A0 clock
                                                          later.=C2=A0 If i=
t
                                                          has a time
                                                          associated
                                                          with it, then
                                                          it is
                                                          withdrawn when
                                                          that time has
                                                          been reached
                                                          in
                                                          &quot;vita_time&q=
uot;.=C2=A0
                                                          Note that
                                                          since this<br>
                                                          =C2=A0 is a FIFO,
                                                          commands that
                                                          are to be
                                                          executed &quot;at
                                                          the same time&quo=
t;
                                                          will be
                                                          serialized by
                                                          the inherent
                                                          FIFO nature of
                                                          execution.<br>
                                                          <br>
                                                          So, with two
                                                          DDC settings
                                                          and two DUC
                                                          settings all
                                                          sitting in the
                                                          FIFO, their
                                                          actual
                                                          execution
                                                          times will be
                                                          &#39;spread&#39; =
over
                                                          (as far as I
                                                          can tell)<br>
                                                          =C2=A0 4 clocks
                                                          cycles of the
                                                          FIFO, or about
                                                          20nsec.=C2=A0 Now
                                                          in the case
                                                          where multiple
                                                          X3xx are
                                                          involved, the
                                                          FIFO will look
                                                          identical
                                                          across all<br>
                                                          =C2=A0 the units,
                                                          and will
                                                          execute at the
                                                          same time, but
                                                          still be
                                                          serialized.=C2=A0
                                                          But if you
                                                          have two DDC
                                                          settings
                                                          across a pair
                                                          of X3xx, the
                                                          settings<br>
                                                          =C2=A0 will execu=
te
                                                          at exactly the
                                                          same time,
                                                          since they
                                                          will in effect
                                                          be executing
                                                          in parallel.=C2=
=A0=C2=A0
                                                          Put another
                                                          way, with
                                                          shared clocks,
                                                          and a common<br>
                                                          =C2=A0 &quot;view=
&quot; of
                                                          system time,
                                                          parallel FIFOs
                                                          will get
                                                          drained in the
                                                          same order and
                                                          at the same
                                                          rate.<br>
                                                          <br>
                                                          Someone with a
                                                          better
                                                          understanding
                                                          of the FPGA
                                                          really should
                                                          comment.=C2=A0=C2=
=A0=C2=A0
                                                          But this is my
                                                          (albeit
                                                          incomplete)
                                                          understanding
                                                          of the<br>
                                                          =C2=A0 settings-b=
us
                                                          logic the
                                                          FPGA.<br>
                                                          <br>
                                                          Now, even
                                                          having said
                                                          THIS, since
                                                          you&#39;d expect
                                                          the FIFO to be
                                                          deterministic.=C2=
=A0
                                                          So, you&#39;d not
                                                          expect there
                                                          to be large
                                                          random<br>
                                                          =C2=A0 phase
                                                          offsets that
                                                          differ from
                                                          run to run, I
                                                          think.<br>
                                                          <br>
                                                          <br>
                                                          <br>
                                                          Great, any
                                                          ideas to
                                                          simplify the
                                                          setup would
                                                          nice. I just
                                                          don&#39;t know ho=
w
                                                          I could
                                                          continue to
                                                          debugging the
                                                          phase.<br>
                                                          <br>
                                                          Best,<br>
                                                          Luke<br>
                                                          <br>
                                                          <br>
                                                          Gesendet:=C2=A0Fr=
eitag,
                                                          13. M=C3=A4rz 202=
0
                                                          um 11:08 Uhr<br>
                                                          Von:=C2=A0&quot;R=
ob
                                                          Kossler&quot; &lt=
;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&g=
t;<br>
                                                          An:=C2=A0&quot;Lu=
kas
                                                          Haase&quot; &lt;<=
a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>=
&gt;<br>
                                                          Cc:=C2=A0&quot;Ma=
rcus D
                                                          Leech&quot; &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;,
                                                          &quot;<a href=3D"=
mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a>&quot;
                                                          &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt;<br>
                                                          Betreff:=C2=A0Re:
                                                          [USRP-users]
                                                          USRP X310
                                                          ignored DSP
                                                          retuning on TX
                                                          when using a
                                                          timed command<br>
                                                          <br>
                                                          Thanks Lukas,<br>
                                                          I wanted to
                                                          confirm that
                                                          you did not
                                                          have an older
                                                          version of
                                                          FPGA firmware
                                                          because there
                                                          was a DDC/DUC
                                                          bug fix[<a href=
=3D"https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e6=
9b1c6798771e6d" target=3D"_blank">https://github.com/EttusResearch/fpga/com=
mit/0b2364653405612a6d5dfaa0e69b1c6798771e6d</a>]
                                                          related to
                                                          phase.=C2=A0
                                                          However, the
                                                          version you
                                                          provided with
                                                          uhd_usrp_probe
                                                          confirms that
                                                          you have the
                                                          bug fix
                                                          included.=C2=A0 S=
o,
                                                          this is not
                                                          the problem.=C2=
=A0<br>
                                                          =C2=A0<br>
                                                          From what you
                                                          said, I assume
                                                          that you can
                                                          successfully
                                                          do the
                                                          following:<br>
                                                          1) with Rx
                                                          tuning fixed
                                                          (no re-tuning
                                                          at all), tune
                                                          Tx DSP only
                                                          (do not change
                                                          TX RF) and you
                                                          can see the
                                                          frequency
                                                          change at the
                                                          specified
                                                          command time
                                                          (i.e., if you
                                                          specify the
                                                          command time 1
                                                          sec in the
                                                          future, the
                                                          change does
                                                          not occur
                                                          until 1 sec in
                                                          the future).<br>
                                                          2) opposite of
                                                          #1: with Tx
                                                          tuning fixed,
                                                          tune Rx DSP
                                                          only and you
                                                          can see the
                                                          frequency
                                                          change at the
                                                          specified
                                                          command time.<br>
                                                          =C2=A0<br>
                                                          I am trying to
                                                          simplify the
                                                          issue by
                                                          removing RF
                                                          tuning
                                                          completely and
                                                          by tuning only
                                                          1 of Rx/Tx at
                                                          a time.=C2=A0
                                                          Perhaps this
                                                          will help lead
                                                          to the answer.<br=
>
                                                          Rob<br>
                                                          =C2=A0<br>
                                                          =C2=A0=C2=A0<br>
                                                          <br>
                                                          On Fri, Mar
                                                          13, 2020 at
                                                          10:53 AM Lukas
                                                          Haase &lt;<a href=
=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailt=
o:<a href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at<=
/a>]&gt;
                                                          wrote:Hi again
                                                          Rob,<br>
                                                          <br>
                                                          Yes, I
                                                          confirm:<br>
                                                          <br>
                                                          1.) Finally I
                                                          get the
                                                          commands to
                                                          execute at the
                                                          same time (TX
                                                          and RX
                                                          individually
                                                          and both at
                                                          the same time)<br=
>
                                                          2.) Yes, the
                                                          phase is
                                                          random after
                                                          each retune,
                                                          even when I
                                                          retune back to
                                                          the same
                                                          frequency<br>
                                                          3.) (2) is
                                                          only true if
                                                          it includes
                                                          *DSP*
                                                          retuning. With
                                                          naalog
                                                          retuning
                                                          (+integer-N
                                                          retuning) I
                                                          get phase
                                                          coherence, as
                                                          expected.<br>
                                                          <br>
                                                          I actually
                                                          expected the
                                                          PLL retuning
                                                          much more
                                                          challenging
                                                          than the DSP
                                                          retuning but
                                                          for some
                                                          reason it
                                                          seems to be
                                                          the
                                                          opposite...<br>
                                                          <br>
                                                          Thanks,<br>
                                                          Lukas<br>
                                                          =C2=A0<br>
                                                          =C2=A0=C2=A0<br>
                                                          =C2=A0</blockquot=
e>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
_______________________________________________<br>
                                                          USRP-users
                                                          mailing list<br>
                                                          <a href=3D"mailto=
:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</=
a><br>
                                                          <a href=3D"http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_bl=
ank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>=
</blockquote>
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
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000fadfea05a14e1409--


--===============7870585204491272419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7870585204491272419==--

