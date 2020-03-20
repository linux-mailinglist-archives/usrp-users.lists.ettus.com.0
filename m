Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6576A18D851
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 20:22:14 +0100 (CET)
Received: from [::1] (port=37006 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFNDh-0006mo-EU; Fri, 20 Mar 2020 15:22:13 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:41033)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jFNDd-0006eb-Hz
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 15:22:09 -0400
Received: by mail-qt1-f177.google.com with SMTP id i3so2115174qtv.8
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 12:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=FfXlq0X1ILbIXGmflxSUHLSOEUwArUFjjFmdoPWqR9c=;
 b=IicMyNtZoecMDayDQ8dVBXjnAkqVan4unszrTaXQnbz28JuLJ0oV3RnM44AXr/oT3c
 YzzQNyNz80nMS5zoAUJU4uIC4nOr+9MjBBBbLhc+KuFPrCxPVpHqCF3RrefkVVgvSr7V
 hLHEcbaQ+fiOpnnXS6qg0GugYRTYxbvLSBJwr1VcgnrRdTsnCAniMfNd+nL08WTu3jHx
 Zf7r7jpREpZR/ahNvHj0pAIkE0yF8TD69rxZP0qYF74FjOdmPKMQOf9CoaDCISh9tBmj
 Ev3mQ04vedsV+A61Ivl9X8kzsM1xXL+1saDLEYRlvINNJ3QWsn65xuDTRnXjQesKRGQA
 kxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=FfXlq0X1ILbIXGmflxSUHLSOEUwArUFjjFmdoPWqR9c=;
 b=T+uvE1CABo5dU3ZNqCJdVjys/Kz1GgrU6gcWpJgW1byawsAgpZGibDvAVqDMF+VU34
 ExXSqTmKS5CPtDM+xTs9l136br8+qFhwzb2gG1qudpDbTznlxjmAhjXbF99NLZo6H90a
 uTXbkHt7vBDW0wOwT6ggHJ1T0cA7oasJyUNkJsOm7bpWlRDA2G5FjdP0Evmb9OF8b2wp
 s6V1Y8j4l3z40pRl4JVQPe00Aa2od6MVAOuhRncgMMSb/hldORPRvwtaRbjUp1VsA79c
 kBzmZBOW84jIjxp+9NPZYt59MOU6Sxv5H+qUjrKgEdGb6kcSVZHqTjFx7dkzeNXJ50vs
 gVrw==
X-Gm-Message-State: ANhLgQ08++FtmGcAMM3MGOszh60oHxmdbNJukj8/JjocSXPuQOrm+0t5
 kCZSd5sPD+3dhMFMZgQS+yqGxQyy
X-Google-Smtp-Source: ADFU+vse3aw7SLKqfOFFQRrW+iE288qlQfmYIPD4RADztJ6WT6tv5RP70WDi3R3bffRp9hWIzPIgqw==
X-Received: by 2002:ac8:6bcb:: with SMTP id b11mr10077755qtt.319.1584732088512; 
 Fri, 20 Mar 2020 12:21:28 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.gmail.com with ESMTPSA id x37sm5564428qtc.90.2020.03.20.12.21.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 12:21:27 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 20 Mar 2020 15:21:26 -0400
Message-Id: <622DA55F-978F-4F71-85C1-E92100AF5E6E@gmail.com>
References: <CAB__hTSYoXFw-8wOaEKSxmO=Bd6PDjpPX0-Qnj6PGcwfuLHXaw@mail.gmail.com>
In-Reply-To: <CAB__hTSYoXFw-8wOaEKSxmO=Bd6PDjpPX0-Qnj6PGcwfuLHXaw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (17D50)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6116096189885585569=="
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


--===============6116096189885585569==
Content-Type: multipart/alternative; boundary=Apple-Mail-4E818A98-4100-4597-907F-C425878C4705
Content-Transfer-Encoding: 7bit


--Apple-Mail-4E818A98-4100-4597-907F-C425878C4705
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob:

What is the magnitude of the apparent frequency error?

The GR signal generator has finite precision  but I agree that if the quanti=
zing error is reciprocal, there should be zero frequency error on the USRP.=20=



Sent from my iPhone

> On Mar 20, 2020, at 3:13 PM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Thanks Marcus,
> Yes, I did see this last night.  The setup is dealing with only a single X=
310, but two UBX.
>=20
> It appears to me that everything is happening at the same time for both Rx=
 and Tx.  I think the issue is related to the difficulty in measuring the re=
lative phase of tx-to-rx, where the tx is on the host (unaffected by hardwar=
e) and the rx is the the received signal which started on the host as Tx but=
 then went through DUC->Radio->RFcable->Radio->DDC.  On the one hand, it see=
ms to me that as long as all of the LO and DSP frequency quantization errors=
 are "reciprocal" between Rx and Tx and if Rx and Tx discipline their LOs to=
 the same 10 MHz ref, then there should be no phase "walk" (or equivalently,=
 freq shift).  But, I'm seeing that and don't understand why.
>=20
> Rob
>=20
>> On Fri, Mar 20, 2020 at 2:56 PM Marcus D. Leech via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>> On 03/20/2020 02:48 PM, Rob Kossler via USRP-users wrote:
>>> Hi Lukas,
>>> Taking this off the list for a bit...
>>> On the LO sync, all I mean is the you will need to use a tune request wi=
th the RF policy not NONE and use timed commands - just like for the DSP fre=
q.  Does that make sense?
>>> The reason that I think that my original methodology for measuring rx-to=
-tx phase is not valid is that one of the channels, let's say Tx1->Rx1, runs=
 continuously (no tuning commands) while the other, Tx0->Rx0, has an abrupt p=
hase change at an arbitrary time when the user clicks the button (I'm assumi=
ng the phase change is caused by the phase accumulators being actually reset=
 to zero). On the other hand, the Tx0->Rx0 path actually has two abrupt phas=
e changes (because both accumulators are set to zero at the same time) so pe=
rhaps it should cancel out. I'm really not clear on this.
>>> Regarding the phase walk which occurs when I wired the Tx signal source t=
o the multiply_conjugate (in place of Rx1), I really don't understand what i=
s causing this walk. I realize that the hardware is not actually operating a=
t the frequency you specify because of hardware limitations (such as 10 MHz r=
ef) and quantizations of both the LO and the DSP freq.  But, if the quantiza=
tion errors are the same in the Rx and Tx paths and if they are both discipl=
ined to the 10 MHz ref, I don't understand why the errors don't cancel out s=
uch that there is no phase walk.
>>> So, even though I'm greatly confused, I still do believe that it is like=
ly that it is working for you the way you need it to.  I believe the problem=
 is related to our methodology for measuring the Tx-to-Rx phase.  But can't b=
e sure.  Is there another way you can know if it's working for you the way i=
t needs to be?
>>>=20
>>> Rob
>>>=20
>> So, I don't see that this made it to the list last night:
>>=20
>> On 03/19/2020 08:16 PM, Lukas Haase via USRP-users wrote:
>>> Hi Rob,
>>> =20
>>> Sorry I really should have ran the python file before uploading. The iss=
ue was that I combined to files into one and forgot to remove the imported f=
ile.
>>> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/
>>> =20
>>> =20
>>> Thanks for reporting your results .... very interesting!
>>> =20
>>> Why do you think second mode makes sense to you? (assuming you are using=
 timed commands to to retune TX+RX at the same time)
>>> =20
>>> In general, it seems to me that things are related to streaming start/st=
op. Maybe things are reset when streaming starts/ends but not when re-tuning=
?
>>> =20
>>> Maybe this is what Marcus was mentioning: resetting phase accumulator vs=
. "increment register is updated with the new phase increment"?
>>> =20
>>> MAYBE stopping/starting resets the phase accumulator to zero and just ti=
med retuning doesn't reset anything. But still, my question is left why this=
 would result in a random phase offset between DUC and DDC.
>>> =20
>>> Thanks again!!
>>> Lukas
>>>  =20
>> So, having spent a couple of hours snooping around the X3xx FPGA code, wh=
ere Verilog is not one of my native languages, I have come to
>>   a bit of a conclusion about the ways things work.  Now, keep in mind, t=
his is like me reading War and Peace in the original Russian, and as
>>   an English speaker, coming the vague conclusion that "It was about Russ=
ia".
>>=20
>> There's a "settings bus" within the FPGA that is implemented with AXI FIFO=
 modules.  If your command (which results, most often in
>>   having to "set" one or more registers via the settings bus) is not a ti=
med command, it enters the FIFO, and then is "executed" one
>>   clock later.  If it has a time associated with it, then it is withdrawn=
 when that time has been reached in "vita_time".  Note that since this
>>   is a FIFO, commands that are to be executed "at the same time" will be s=
erialized by the inherent FIFO nature of execution.
>>=20
>> So, with two DDC settings and two DUC settings all sitting in the FIFO, t=
heir actual execution times will be 'spread' over (as far as I can tell)
>>   4 clocks cycles of the FIFO, or about 20nsec.  Now in the case where mu=
ltiple X3xx are involved, the FIFO will look identical across all
>>   the units, and will execute at the same time, but still be serialized. =
 But if you have two DDC settings across a pair of X3xx, the settings
>>   will execute at exactly the same time, since they will in effect be exe=
cuting in parallel.   Put another way, with shared clocks, and a common
>>   "view" of system time, parallel FIFOs will get drained in the same orde=
r and at the same rate.
>>=20
>> Someone with a better understanding of the FPGA really should comment.   =
 But this is my (albeit incomplete) understanding of the
>>   settings-bus logic the FPGA.
>>=20
>> Now, even having said THIS, since you'd expect the FIFO to be determinist=
ic.  So, you'd not expect there to be large random
>>   phase offsets that differ from run to run, I think.
>>=20
>>=20
>>=20
>>> On Fri, Mar 20, 2020 at 2:21 PM Lukas Haase <lukashaase@gmx.at> wrote:
>>>> Hi Rob,
>>>> =20
>>>> That's a good point and I thought about this very early on but figures i=
t would not matter because the phase of the "Tx signal source" is just const=
ant.
>>>> =20
>>>> In terms of phase we could think of it as "phase_we_want_to_measure + p=
hase_of_tx_source". But since phase_of_tx_source does not change over runs, i=
t shouldn't cause any differences. However, it was 2 months ago when I did t=
his. I will have another look at it with your code.
>>>> =20
>>>> Thanks for pointing out the LO synchronization. When you say "from run t=
o run", you mean when I quit/execute again the python script for example, ri=
ght? I was sure that I had to take this as a fact for now. I am not familiar=
 with the option of synchronizing the LO settings. In all the docs (e.g. htt=
ps://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices, htt=
ps://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD) I h=
ave not read about it. Can you elaborate on this?
>>>> =20
>>>> Thanks again,
>>>> Lukas
>>>> =20
>>>> =20
>>>> =20
>>>> Gesendet: Freitag, 20. M=C3=A4rz 2020 um 13:44 Uhr
>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>> An: "Lukas Haase" <lukashaase@gmx.at>, usrp-users <usrp-users@lists.ett=
us.com>
>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usi=
ng a timed command
>>>> OK.  Thinking about it a little more, I think that perhaps the tx-to-rx=
 phase measurement methodology was flawed.  So, maybe this is not any issue.=
  I changed the Python (new version attached) to send the gnuradio Tx signal=
 source (which also drives Tx0 and Tx1) to one input of the multiply_conjuga=
te (replacing Rx1 which previously was the other input).  When I run, now th=
e phase "walks", but always over the same range of values.  When I retune Tx=
0 and Rx0, the "walk" resets but still walks over the same range.  As to why=
 the phase walks, I don't know the answer right off.
>>>> =20
>>>> On a separate topic, I noticed that your code does not synchronize the L=
O setting.  This means that the RF phase between the channels could vary fro=
m run to run.
>>>> =20
>>>> On Fri, Mar 20, 2020 at 12:04 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>> Lukas,
>>>>> After looking at this a bit, I think that there is indeed an issue.  I=
 think that it is possible to get consistent tx-to-tx phase results and cons=
istent rx-to-rx phase results, but NOT consistent rx-to-tx phase results.  A=
 few remarks:
>>>>> Setup
>>>>> 2-channel X310/UBX-160 with two external loopback RF cables (with atte=
nuation) such that Tx0=3D>Rx0 and Tx1=3D>Rx1 (I likely don't even need the l=
oopback cables because I could operate on just the leakage signal from each c=
hannel, but I decided to use external cables).=20
>>>>> UHD 3.15.LTS and gnuradio 3.7.13.5.
>>>>> Methodology
>>>>> Transmit an identical waveform (1 MHz tone) out of both Tx ports
>>>>> Measure relative Rx phase by using a multiply_conjugate block for the 2=
 Rx channels (see below for description of why I changed what you sent me) w=
ith output connected to a complex_to_mag_phase block and subsequent moving_a=
verage
>>>>> Use digital tuning (with timed commands) to toggle between 2 dsp frequ=
encies while noting the relative phase results
>>>>> Test cases
>>>>> Case 1: Verify rx-to-rx phase results by sending tune requests to the 2=
 Rx channels (but sending nothing to the Tx channels)
>>>>> Case 2: Verify tx-to-tx phase results by sending tune requests to the 2=
 Tx channels (but sending nothing to the Rx channels)
>>>>> Case 3: Verify rx-to-tx phase results by sending tune requests to chan=
nel 0 Rx and Tx (but sending nothing to channel 1 Rx and Tx)
>>>>> Case 4: Verify rx-to-tx phase results by sending tune requests to chan=
nel 1 Rx and Tx (but sending nothing to channel 0 Rx and Tx)
>>>>> Cases 1 and 2 show consistent results, but cases 3 and 4 do not. I can=
not conceive of what the problem is. It is so perplexing that I hesitate to s=
end this email because it seems I must be doing something wrong.  Perhaps th=
ere is a problem in the methodology above along with the test cases.  But, i=
t seems sound to me.
>>>>> =20
>>>>> The Rx block diagram you sent me does not match the Python code you se=
nt.  This threw me off for a while.  In your block diagram, the phase measur=
ement is made from the division of the two low pass filter outputs.  In the P=
ython code you sent, the phase measurement uses only the first low pass filt=
er output.  The reason this is important is that I suspected early on that t=
he problem might be related to your gnuradio signal_source used for IF downc=
onversion.  This signal source is not synchronous with the USRP as you chang=
e USRP freqs. However, I figured that it wasn't a problem because it was "di=
vided out".  But, since it is actually not divided out,I believe that this w=
as providing misleading results.
>>>>> =20
>>>>> In the end, I just changed your code to add a "multiply_conjugate_cc" b=
lock with the two Rx channels as the two inputs.  This effectively uses one c=
hannel to downconvert the other and thus eliminates the need for the signal s=
ource in the Rx block diagram.  I then connected this multiply_conjugate dir=
ectly to the complex_to_mag_phase.  You could simplify the code by removing t=
he other multiply blocks, low pass filters, and divide since these are not u=
sed. Also, I put all of the functionality in the rxtx (together) button call=
back.  I did not really use the other buttons.  Attached is the modified cod=
e.
>>>>> =20
>>>>> Rob
>>>>> =20
>>>>>> On Fri, Mar 20, 2020 at 2:38 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>> Hi Lukas,
>>>>>> A few remarks:
>>>>>> The 2nd code you sent works fine.  Thanks.
>>>>>> I'm not sure that starting/stopping as I do in my program is causing t=
he issue.  The only reason I didn't continuously stream both Rx and Tx like y=
ou do in gnuradio is because my software is not setup to do that.
>>>>>> So, I still think it's possible that UHD can do the job with continuo=
us streaming but perhaps there is still something in the gnuradio config tha=
t is not quite right.  But, I don't know what that is right now.  I need to t=
hink about this a bit....
>>>>>> Rob
>>>>>> =20
>>>>>>> On Thu, Mar 19, 2020 at 8:17 PM Lukas Haase <lukashaase@gmx.at> wrot=
e:
>>>>>>> Hi Rob,
>>>>>>> =20
>>>>>>> Sorry I really should have ran the python file before uploading. The=
 issue was that I combined to files into one and forgot to remove the import=
ed file.
>>>>>>> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/
>>>>>>> =20
>>>>>>> =20
>>>>>>> Thanks for reporting your results .... very interesting!
>>>>>>> =20
>>>>>>> Why do you think second mode makes sense to you? (assuming you are u=
sing timed commands to to retune TX+RX at the same time)
>>>>>>> =20
>>>>>>> In general, it seems to me that things are related to streaming star=
t/stop. Maybe things are reset when streaming starts/ends but not when re-tu=
ning?
>>>>>>> =20
>>>>>>> Maybe this is what Marcus was mentioning: resetting phase accumulato=
r vs. "increment register is updated with the new phase increment"?
>>>>>>> =20
>>>>>>> MAYBE stopping/starting resets the phase accumulator to zero and jus=
t timed retuning doesn't reset anything. But still, my question is left why t=
his would result in a random phase offset between DUC and DDC.
>>>>>>> =20
>>>>>>> Thanks again!!
>>>>>>> Lukas
>>>>>>> =20
>>>>>>> =20
>>>>>>> Gesendet: Donnerstag, 19. M=C3=A4rz 2020 um 19:16 Uhr
>>>>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>>>> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when u=
sing a timed command
>>>>>>> Lukas,
>>>>>>> I installed gnuradio and tried to run but encounter the following.  I=
'm guessing this is your block.
>>>>>>> Traceback (most recent call last):
>>>>>>>   File "test.py", line 25, in <module>
>>>>>>>     import epy_block_1
>>>>>>> ImportError: No module named epy_block_1
>>>>>>> Rob
>>>>>>> =20
>>>>>>>> On Thu, Mar 19, 2020 at 6:28 PM Rob Kossler <rkossler@nd.edu> wrote=
:
>>>>>>>> Ok.  False alarm.  I forgot about the dboard clock needing set to 2=
0MHz for RF freq below 1 GHz.  When I made this change, now I get consistent=
 Rx-Tx phase for the first mode where both Tx and Rx start/stop at each test=
.
>>>>>>>> Rob
>>>>>>>> =20
>>>>>>>>> On Thu, Mar 19, 2020 at 6:10 PM Rob Kossler <rkossler@nd.edu> wrot=
e:
>>>>>>>>> Ok. I modified my code to be more like yours...
>>>>>>>>> toggling dsp freq rather than LO freq
>>>>>>>>> LO at 900 MHz
>>>>>>>>> external connections Tx0 =3D> Splitter_1x2 =3D> both Rx0 and Rx1
>>>>>>>>> Previously, I was starting / stopping both Rx & Tx in between each=
 test.  Now, I added a mode where the Tx is on continuously, and the Rx star=
ts & stops for each test after the dsp freq change
>>>>>>>>> The results are the following:
>>>>>>>>> In the first mode where both Tx and Rx start/stop at each test, I g=
et consistent group delay (as measured by the correlation peak index) for bo=
th Rx-Rx and Rx-Tx.  But for phase, the Rx-Rx phase is consistent, but the R=
x-Tx phase seems random
>>>>>>>>> In the second mode where Tx is on continuously and I start/stop Rx=
 after each dsp freq change, the group delay is constant for Rx-Rx but rando=
m for Rx-Tx.  The phase results are constant for Rx-Rx but random for Rx-Tx.=

>>>>>>>>> Regarding the 2nd mode, this makes sense to me.  But, for the 1st m=
ode, I don't understand why the Rx-Tx phase seems random. Still thinking abo=
ut it....
>>>>>>>>> Rob
>>>>>>>>> =20
>>>>>>>>>> On Thu, Mar 19, 2020 at 4:35 PM Rob Kossler <rkossler@nd.edu> wro=
te:
>>>>>>>>>> Lukas,
>>>>>>>>>> Just before receiving your email, I ran the following with my cus=
tom c++ & matlab software using X310/UBX-160 with the connections I describe=
d.  The following shows the output which is very consistent.  I used a 100 t=
one multi-tone waveform spread over 4 MHz bandwidth (using 5 MS/s sample rat=
e on Tx and Rx).  Note the consistency of results as I toggled between 2 fre=
quencies: 2450 and 2460 MHz.
>>>>>>>>>> =20
>>>>>>>>>> My method was the following:
>>>>>>>>>> Tx waveform was 500 points long
>>>>>>>>>> Rx capture was 5000 points long
>>>>>>>>>> Compute cross-correlation (using Matlab xcorr) as follows: xcorr(=
rx0, conj(tx)) AND xcorr(rx0,conj(rx1))
>>>>>>>>>> Find the correlation peak (which was very pronounced) which shows=
 the sample delay between the two signals.  Extract the phase at the peak
>>>>>>>>>> Oops, I just realized that I used a constant DSP freq (10 MHz) an=
d I changed the LO freq in my test.  I will try again with moving the DSP fr=
eq instead.
>>>>>>>>>> Rob
>>>>>>>>>> =20
>>>>>>>>>> Test 1: freq =3D 2450.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.7
>>>>>>>>>> Test 2: freq =3D 2460.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.1
>>>>>>>>>> Test 3: freq =3D 2450.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>>>>> Test 4: freq =3D 2460.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.6
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 13.0
>>>>>>>>>> Test 5: freq =3D 2450.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.7
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>>>>> Test 6: freq =3D 2460.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.8
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.7
>>>>>>>>>> Test 7: freq =3D 2450.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.9
>>>>>>>>>> Test 8: freq =3D 2460.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>>>>>> Test 9: freq =3D 2450.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -121.8
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase -95.8
>>>>>>>>>> Test 10: freq =3D 2460.0 MHz
>>>>>>>>>>   Rx0/Tx0 xcorr peak at index 108 with phase -58.7
>>>>>>>>>>   Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>>>>>>>>> >>
>>>>>>>>>> =20
>>>>>>>>>> =20
>>>>>>>>>>> On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase <lukashaase@gmx.at> w=
rote:
>>>>>>>>>>> Hi Rob,
>>>>>>>>>>> =20
>>>>>>>>>>> Yes, I confirm your conclusion.
>>>>>>>>>>> =20
>>>>>>>>>>> I calculate the relative phase by dividing the outputs of both r=
eceivers. To understand better, note that I have an additional "IF stage" in=
 my own signal flow such that I exclude DC offset correction etc. the USRP m=
ay perform. This is the block diagram of the transmitter part: https://snipb=
oard.io/YFgIKs.jpg . I send "exp(1j*1MHz*t) . This shows the receiver part: h=
ttps://snipboard.io/i9jLJg.jpg . I multiply the received signal with exp(-1j=
*1MHz*t) and filter them. Then I divide both streams and take the phase part=
. I take a moving average (for flucatuations), add pi and display the number=
.
>>>>>>>>>>> https://snipboard.io/YFgIKs.jpg https://snipboard.io/YFgIKs.jpg h=
ttps://snipboard.io/YFgIKs.jpg That's so nice, thank you!! My code is here: h=
ttp://paste.ubuntu.com/p/MbCJfPGzYW/ . I'm not sure if you have gnuradio(and=
 QT) installed but if yes, simply "python2 switch_on_click.py" should do. Le=
t me quickly elaborate how it works:
>>>>>>>>>>> Class "switch_on_click" implements a normal gnuradio flow with U=
SRP transmitter and receiver.
>>>>>>>>>>> It also uses a custom module together with buttons and a probe b=
lock to call functions upon clicking on a button
>>>>>>>>>>> The callback functions are defined in class "blk"
>>>>>>>>>>> The most important is "def button_rtx_handler" on line 106 which=
 is executed when user clicks on button "Switch RTX (together)"
>>>>>>>>>>> Again, thank you for trying this out!! If it works, would you mi=
nd sharing this code then? I may be able to check then where it breaks on my=
 system
>>>>>>>>>>> I use 900 MHz as default center frequency (and "rf_freq"). When c=
licking, I jump between dsp_freq=3D0 and dsp_freq=3D500e3. As to my waveform=
, you can infer from my screenshots and code above: I am transmitting and re=
ceiving a 1MHz waveform (which acts as an additional "IF stage"). The receiv=
ed signal is then downconcerted from 1MHz to DC. I use 5 MSsps sampling rate=
.
>>>>>>>>>>> =20
>>>>>>>>>>> Again, thank you SO much.
>>>>>>>>>>> =20
>>>>>>>>>>> Best,
>>>>>>>>>>> Lukas
>>>>>>>>>>> =20
>>>>>>>>>>> =20
>>>>>>>>>>> Gesendet: Donnerstag, 19. M=C3=A4rz 2020 um 10:43 Uhr
>>>>>>>>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>>>> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX w=
hen using a timed command
>>>>>>>>>>> Hi Lukas,
>>>>>>>>>>> So, the conclusion is that your Rx0-to-Rx1 relative phase is nea=
rly constant such that it seems that both Rx0/Rx1 are phase coherent and Tx0=
/Tx1 are phase coherent.  But, phase from Tx-to-Rx is random.  Please correc=
t me if that is wrong. =20
>>>>>>>>>>> =20
>>>>>>>>>>> I have a few comments:
>>>>>>>>>>> How do you measure/calculate the relative phase?
>>>>>>>>>>> Can you send me the full Python code to look at?  As I mentioned=
 previously, I am not too good at gnuradio/Python, but I might be able to sp=
ot something.
>>>>>>>>>>> As to your question, I always use synchronous measurements.  And=
, I'm confident that my Rx-to-Rx phase is coherent.  But, I haven't really l=
ooked at Tx-to-Rx in a while so I will do so later today.  Here are the step=
s I plan to take:
>>>>>>>>>>> Connect Tx0 to Rx1.  Note that there is a pretty strong leakage s=
ignal from Tx0 to Rx0 so I don't really need to provide a physical connectio=
n in order to get a signal on Rx0.  The signal attenuation in this leakage p=
ath is approx 40 dB so it is not too much different than the signal level I w=
ill receive on Rx1 if I use an external 30 dB attenuator.
>>>>>>>>>>> Set Rx and Tx frequency to freq 1
>>>>>>>>>>> Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for f=
req 1
>>>>>>>>>>> Set Rx and Tx frequency to freq 2
>>>>>>>>>>> Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for f=
req 2
>>>>>>>>>>> Repeat steps 2-5 a few times to ensure that the measurements are=
 repeatable
>>>>>>>>>>> Questions: what should I use for freq 1 and freq 2?  What wavefo=
rm are you transmitting?  What sample rates for Tx and Rx?
>>>>>>>>>>> Rob
>>>>>>>>>>> =20
>>>>>>>>>>> =20
>>>>>>>>>>> =20
>>>>>>>>>>>> On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users <usr=
p-users@lists.ettus.com> wrote:
>>>>>>>>>>>> Hi Rob,
>>>>>>>>>>>> =20
>>>>>>>>>>>> I think the issue is really having two usrp_multi devices with t=
imed commands and same timestmap or similar. =46rom your tests below:
>>>>>>>>>>>> =20
>>>>>>>>>>>> 1.) I can confirm that the relative phase between two RX in you=
r suggested test is always the same! In fact, it is always 4.56 rad, even ac=
ross restarts and for different frequencies! That somewhat makes sense becau=
se the phase offset is now only dependent on the difference between the two c=
hannels (fixed) and cable lengths from the splitter (fixed). I verified by r=
emoving the timed command on usrp source, the phase offset becomes random af=
ter each retune. Of course, this is independent of TX tuning (timed vs. not)=
. For reference, this is the code used:
>>>>>>>>>>>> =20
>>>>>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_=
NONE
>>>>>>>>>>>>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY=
_MANUAL
>>>>>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_=
NONE
>>>>>>>>>>>>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY=
_MANUAL
>>>>>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>>>>> =20
>>>>>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>>>>> =20
>>>>>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx)        =
  # TX
>>>>>>>>>>>>         res2 =3D usrp_source.set_center_freq(tune_req_rx, 0)  #=
RX1
>>>>>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 1)  #=
RX2
>>>>>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>>>>> =20
>>>>>>>>>>>> 2.) I also tried your second suggestion. Before reading on, you=
 wanna guess what the outcome is?
>>>>>>>>>>>> I connected "TX/RX" to "RX2" on UBX #1 (TX1 --> RX1) and "TX/RX=
" to "RX2" on UBX #2 (TX2 --> RX2). In absence of a second 30dB attenuator I=
 used two antennas closely spaced together. For reference, my code looks now=
 like:
>>>>>>>>>>>> =20
>>>>>>>>>>>>         tune_req_rx =3D uhd.tune_request()
>>>>>>>>>>>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_=
NONE
>>>>>>>>>>>>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY=
_MANUAL
>>>>>>>>>>>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>>>>>>>>>>>         tune_req_tx =3D uhd.tune_request()
>>>>>>>>>>>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_=
NONE
>>>>>>>>>>>>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY=
_MANUAL
>>>>>>>>>>>>         tune_req_tx.dsp_freq =3D dsp_freq
>>>>>>>>>>>> =20
>>>>>>>>>>>>         now =3D usrp_sink.get_time_now()
>>>>>>>>>>>>         when =3D now + uhd.time_spec(1.0)
>>>>>>>>>>>> =20
>>>>>>>>>>>>         usrp_sink.set_command_time(when)
>>>>>>>>>>>>         usrp_source.set_command_time(when)
>>>>>>>>>>>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx, 0)     #=
 TX1
>>>>>>>>>>>>         res2 =3D usrp_sink.set_center_freq(tune_req_tx, 1)     #=
 TX2
>>>>>>>>>>>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 0) # R=
X1
>>>>>>>>>>>>         res4 =3D usrp_source.set_center_freq(tune_req_rx, 1) # R=
X2
>>>>>>>>>>>>         usrp_sink.clear_command_time()
>>>>>>>>>>>>         usrp_source.clear_command_time()
>>>>>>>>>>>> =20
>>>>>>>>>>>> I again look at the relative phase of RX1 and RX2 (obtained by d=
ividing the two) and guess what: Also now the relative phase stays constant!=
 (This time it actually slightly varies from 3.0 rad to 3.7 rad between two d=
ifferent frequencies).
>>>>>>>>>>>> What does that mean? I think it means that TX must be tuned coh=
erently and RX must be tuned coherently, i.e., timed commands generally work=
 for multiple TX's and multiple RX's individually. Do I get that right?
>>>>>>>>>>>> =20
>>>>>>>>>>>> What doesn't seem to work is RX+TX together.
>>>>>>>>>>>> =20
>>>>>>>>>>>> I am very desperately asking if you had coherent TX+RX setup wo=
rking at any point or know somebody who did. It would be so much worth to kn=
ow if this is something that never worked to begin with or if I'm just doing=
 something wrong. On the other hand I don't want to believe being the only p=
erson on the planet having tried TX+RX phase coherent operation :-/
>>>>>>>>>>>> =20
>>>>>>>>>>>> Any other further suggestions on how to continue debugging with=
 the above in mind would be helpful too.
>>>>>>>>>>>> =20
>>>>>>>>>>>> In my opinion there are two options left:
>>>>>>>>>>>> 1.) There is still a nondeterministic delay between the TX and R=
X timed commands (to my understanding, even a constant delay would result in=
 coherent phase)
>>>>>>>>>>>> 2.) While the phase accumulators in RX are set to the same valu=
es (and in TX as well), they may be set to a different, random value.
>>>>>>>>>>>> =20
>>>>>>>>>>>> However, I don't really know how to test these.
>>>>>>>>>>>> =20
>>>>>>>>>>>> Thanks,
>>>>>>>>>>>> Lukas
>>>>>>>>>>>> =20
>>>>>>>>>>>> =20
>>>>>>>>>>>> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 12:27 Uhr
>>>>>>>>>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>>>>> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "USRP-users@lis=
ts.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX w=
hen using a timed command
>>>>>>>>>>>> Ok, great.  I am trying to think of ways to now add the phase m=
easurement.  Ideas...
>>>>>>>>>>>> In order to get consistent phase, you would need to tune Rx and=
 Tx DSP at the same time (rather than below where you are only tuning one of=
 them).  So, assuming that this will not produce consistent phase results, t=
hen maybe try the following idea...
>>>>>>>>>>>> If you want to check just Rx DSP tuning (with fixed Tx DSP tuni=
ng), you could try a 2 channel Rx measurement where the Tx is split external=
ly with 1:2 splitter in order to drive both Rx0 and Rx1.  Then, measure the r=
elative phase Rx0/Rx1 and then tune back and forth between two Rx DSP freqs t=
o see if the relative phase on Rx remains constant.  If so, this would give y=
ou good confidence that Rx DSP tuning is indeed happening synchronously
>>>>>>>>>>>> Assuming that the Rx IS synchronous in the step above (perhaps a=
 bad assumption, but here goes), you could then check TX DSP tuning (with fi=
xed Rx DSP tuning) by using two Tx and two Rx channels with Tx0 connected to=
 Rx0 and Tx1 connected to Rx1.  At this point we are confident that Rx DSP t=
uning is synchronous so any synchronous misbehavior would imply a Tx sync pr=
oblem.
>>>>>>>>>>>> Sorry I can't think of better ideas. =20
>>>>>>>>>>>> Rob
>>>>>>>>>>>> =20
>>>>>>>>>>>>> On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase <lukashaase@gmx.a=
t> wrote:
>>>>>>>>>>>>> Hi Rob,
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> 1.) yes, works(*)
>>>>>>>>>>>>> 2.) yes, works(*)
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> (*): qualitatively. I set the timed command to "get_current_ti=
me() + uhd.time_spec(2.0)" and I see the chance 2 seconds after my click on t=
he screen. I cannot (do not know how) check if it actually happens at sample=
-precicse location.
>>>>>>>>>>>>> On 03/19/2020 08:16 PM, Lukas Haase via USRP-users wrote:
>>>>>>>>>>>>>> Hi Rob,
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> Sorry I really should have ran the python file before uploadi=
ng. The issue was that I combined to files into one and forgot to remove the=
 imported file.
>>>>>>>>>>>>>> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsb=
ZQ5/
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> Thanks for reporting your results .... very interesting!
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> Why do you think second mode makes sense to you? (assuming yo=
u are using timed commands to to retune TX+RX at the same time)
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> In general, it seems to me that things are related to streami=
ng start/stop. Maybe things are reset when streaming starts/ends but not whe=
n re-tuning?
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> Maybe this is what Marcus was mentioning: resetting phase acc=
umulator vs. "increment register is updated with the new phase increment"?
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> MAYBE stopping/starting resets the phase accumulator to zero a=
nd just timed retuning doesn't reset anything. But still, my question is lef=
t why this would result in a random phase offset between DUC and DDC.
>>>>>>>>>>>>>> =20
>>>>>>>>>>>>>> Thanks again!!
>>>>>>>>>>>>>> Lukas
>>>>>>>>>>>>>>  =20
>>>>>>>>>>>>> So, having spent a couple of hours snooping around the X3xx FP=
GA code, where Verilog is not one of my native languages, I have come to
>>>>>>>>>>>>>   a bit of a conclusion about the ways things work.  Now, keep=
 in mind, this is like me reading War and Peace in the original Russian, and=
 as
>>>>>>>>>>>>>   an English speaker, coming the vague conclusion that "It was=
 about Russia".
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> There's a "settings bus" within the FPGA that is implemented w=
ith AXI FIFO modules.  If your command (which results, most often in
>>>>>>>>>>>>>   having to "set" one or more registers via the settings bus) i=
s not a timed command, it enters the FIFO, and then is "executed" one
>>>>>>>>>>>>>   clock later.  If it has a time associated with it, then it i=
s withdrawn when that time has been reached in "vita_time".  Note that since=
 this
>>>>>>>>>>>>>   is a FIFO, commands that are to be executed "at the same tim=
e" will be serialized by the inherent FIFO nature of execution.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> So, with two DDC settings and two DUC settings all sitting in t=
he FIFO, their actual execution times will be 'spread' over (as far as I can=
 tell)
>>>>>>>>>>>>>   4 clocks cycles of the FIFO, or about 20nsec.  Now in the ca=
se where multiple X3xx are involved, the FIFO will look identical across all=

>>>>>>>>>>>>>   the units, and will execute at the same time, but still be s=
erialized.  But if you have two DDC settings across a pair of X3xx, the sett=
ings
>>>>>>>>>>>>>   will execute at exactly the same time, since they will in ef=
fect be executing in parallel.   Put another way, with shared clocks, and a c=
ommon
>>>>>>>>>>>>>   "view" of system time, parallel FIFOs will get drained in th=
e same order and at the same rate.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Someone with a better understanding of the FPGA really should c=
omment.    But this is my (albeit incomplete) understanding of the
>>>>>>>>>>>>>   settings-bus logic the FPGA.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Now, even having said THIS, since you'd expect the FIFO to be d=
eterministic.  So, you'd not expect there to be large random
>>>>>>>>>>>>>   phase offsets that differ from run to run, I think.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Great, any ideas to simplify the setup would nice. I just don'=
t know how I could continue to debugging the phase.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Best,
>>>>>>>>>>>>> Luke
>>>>>>>>>>>>>=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr
>>>>>>>>>>>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>>>>>>>>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>>>>>>>>>> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "USRP-users@li=
sts.ettus.com" <usrp-users@lists.ettus.com>
>>>>>>>>>>>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX=
 when using a timed command
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Thanks Lukas,
>>>>>>>>>>>>> I wanted to confirm that you did not have an older version of =
FPGA firmware because there was a DDC/DUC bug fix[https://github.com/EttusRe=
search/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d] related to phas=
e.  However, the version you provided with uhd_usrp_probe confirms that you h=
ave the bug fix included.  So, this is not the problem.=20
>>>>>>>>>>>>> =20
>>>>>>>>>>>>> =46rom what you said, I assume that you can successfully do th=
e following:
>>>>>>>>>>>>> 1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP onl=
y (do not change TX RF) and you can see the frequency change at the specifie=
d command time (i.e., if you specify the command time 1 sec in the future, t=
he change does not occur until 1 sec in the future).
>>>>>>>>>>>>> 2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and y=
ou can see the frequency change at the specified command time.
>>>>>>>>>>>>> =20
>>>>>>>>>>>>> I am trying to simplify the issue by removing RF tuning comple=
tely and by tuning only 1 of Rx/Tx at a time.  Perhaps this will help lead t=
o the answer.
>>>>>>>>>>>>> Rob
>>>>>>>>>>>>> =20
>>>>>>>>>>>>>  =20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase <lukashaase@gmx.a=
t[mailto:lukashaase@gmx.at]> wrote:Hi again Rob,
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Yes, I confirm:
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> 1.) Finally I get the commands to execute at the same time (TX=
 and RX individually and both at the same time)
>>>>>>>>>>>>> 2.) Yes, the phase is random after each retune, even when I re=
tune back to the same frequency
>>>>>>>>>>>>> 3.) (2) is only true if it includes *DSP* retuning. With naalo=
g retuning (+integer-N retuning) I get phase coherence, as expected.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> I actually expected the PLL retuning much more challenging tha=
n the DSP retuning but for some reason it seems to be the opposite...
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Thanks,
>>>>>>>>>>>>> Lukas
>>>>>>>>>>>>> =20
>>>>>>>>>>>>>  =20
>>>>>>>>>>>>> =20
>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-4E818A98-4100-4597-907F-C425878C4705
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Rob:<div><br></div><div>What is the magnitu=
de of the apparent frequency error?</div><div><br></div><div>The GR signal g=
enerator has finite precision &nbsp;but I agree that if the quantizing error=
 is reciprocal, there should be zero frequency error on the USRP.&nbsp;</div=
><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br=
><blockquote type=3D"cite">On Mar 20, 2020, at 3:13 PM, Rob Kossler &lt;rkos=
sler@nd.edu&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><=
div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Thanks Marcus,</div><div>Yes,=
 I did see this last night.&nbsp; The setup is dealing with only a single X3=
10, but two UBX.<br></div><div><br></div><div>It appears to me that everythi=
ng is happening at the same time for both Rx and Tx.&nbsp; I think the issue=
 is related to the difficulty in measuring the relative phase of tx-to-rx, w=
here the tx is on the host (unaffected by hardware) and the rx is the the re=
ceived signal which started on the host as Tx but then went through DUC-&gt;=
Radio-&gt;RFcable-&gt;Radio-&gt;DDC.&nbsp; On the one hand, it seems to me t=
hat as long as all of the LO and DSP frequency quantization errors are "reci=
procal" between Rx and Tx and if Rx and Tx discipline their LOs to the same 1=
0 MHz ref, then there should be no phase "walk" (or equivalently, freq shift=
).&nbsp; But, I'm seeing that and don't understand why.<br></div><div><br></=
div><div>Rob<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Mar 20, 2020 at 2:56 PM Marcus D. Leech via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
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
                commands - just like for the DSP freq.&nbsp; Does that make
                sense?</li>
              <li>The reason that I think that my original methodology
                for measuring rx-to-tx phase is not valid is that one of
                the channels, let's say Tx1-&gt;Rx1, runs continuously
                (no tuning commands) while the other, Tx0-&gt;Rx0, has
                an abrupt phase change at an arbitrary time when the
                user clicks the button (I'm assuming the phase change is
                caused by the phase accumulators being actually reset to
                zero). On the other hand, the Tx0-&gt;Rx0 path actually
                has two abrupt phase changes (because both accumulators
                are set to zero at the same time) so perhaps it should
                cancel out. I'm really not clear on this.</li>
              <li>Regarding the phase walk which occurs when I wired the
                Tx signal source to the multiply_conjugate (in place of
                Rx1), I really don't understand what is causing this
                walk. I realize that the hardware is not actually
                operating at the frequency you specify because of
                hardware limitations (such as 10 MHz ref) and
                quantizations of both the LO and the DSP freq.&nbsp; But, if=

                the quantization errors are the same in the Rx and Tx
                paths and if they are both disciplined to the 10 MHz
                ref, I don't understand why the errors don't cancel out
                such that there is no phase walk.</li>
            </ul>
            <div>So, even though I'm greatly confused, I still do
              believe that it is likely that it is working for you the
              way you need it to.&nbsp; I believe the problem is related to
              our methodology for measuring the Tx-to-Rx phase.&nbsp; But
              can't be sure.&nbsp; Is there another way you can know if it's=

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
    So, I don't see that this made it to the list last night:<br>
    <br>
    <div>On 03/19/2020 08:16 PM, Lukas Haase via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Verdana;font-size:12px">
        <div>Hi Rob,</div>
        <div>&nbsp;</div>
        <div>Sorry I really should have ran the python file before
          uploading. The issue was that I combined to files into one and
          forgot to remove the imported file.</div>
        <div>Here is a new one (tested): <a href=3D"http://paste.ubuntu.com/=
p/VsGRmsbZQ5/" target=3D"_blank">http://paste.ubuntu.com/p/VsGRmsbZQ5/</a></=
div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>Thanks for reporting your results .... very interesting!</div>
        <div>&nbsp;</div>
        <div>Why do you think second mode makes sense to you? (assuming
          you are using timed commands to to retune TX+RX at the same
          time)</div>
        <div>&nbsp;</div>
        <div>In general, it seems to me that things are related to
          streaming start/stop. Maybe things are reset when streaming
          starts/ends but not when re-tuning?</div>
        <div>&nbsp;</div>
        <div>Maybe this is what Marcus was mentioning: resetting phase
          accumulator vs. "increment register is updated with the new
          phase increment"?</div>
        <div>&nbsp;</div>
        <div>MAYBE stopping/starting resets the phase accumulator to
          zero and just timed retuning doesn't reset anything. But
          still, my question is left why this would result in a random
          phase offset between DUC and DDC.</div>
        <div>&nbsp;</div>
        <div>Thanks again!!</div>
        <div>Lukas</div>
        <div>&nbsp; <br>
        </div>
      </div>
    </blockquote>
    So, having spent a couple of hours snooping around the X3xx FPGA
    code, where Verilog is not one of my native languages, I have come
    to<br>
    &nbsp; a bit of a conclusion about the ways things work.&nbsp; Now, keep=
 in
    mind, this is like me reading War and Peace in the original Russian,
    and as<br>
    &nbsp; an English speaker, coming the vague conclusion that "It was abou=
t
    Russia".<br>
    <br>
    There's a "settings bus" within the FPGA that is implemented with
    AXI FIFO modules.&nbsp; If your command (which results, most often in<br=
>
    &nbsp; having to "set" one or more registers via the settings bus) is no=
t
    a timed command, it enters the FIFO, and then is "executed" one<br>
    &nbsp; clock later.&nbsp; If it has a time associated with it, then it i=
s
    withdrawn when that time has been reached in "vita_time".&nbsp; Note tha=
t
    since this<br>
    &nbsp; is a FIFO, commands that are to be executed "at the same time"
    will be serialized by the inherent FIFO nature of execution.<br>
    <br>
    So, with two DDC settings and two DUC settings all sitting in the
    FIFO, their actual execution times will be 'spread' over (as far as
    I can tell)<br>
    &nbsp; 4 clocks cycles of the FIFO, or about 20nsec.&nbsp; Now in the ca=
se
    where multiple X3xx are involved, the FIFO will look identical
    across all<br>
    &nbsp; the units, and will execute at the same time, but still be
    serialized.&nbsp; But if you have two DDC settings across a pair of X3xx=
,
    the settings<br>
    &nbsp; will execute at exactly the same time, since they will in effect
    be executing in parallel.&nbsp;&nbsp; Put another way, with shared clock=
s, and
    a common<br>
    &nbsp; "view" of system time, parallel FIFOs will get drained in the sam=
e
    order and at the same rate.<br>
    <br>
    Someone with a better understanding of the FPGA really should
    comment.&nbsp;&nbsp;&nbsp; But this is my (albeit incomplete) understand=
ing of the<br>
    &nbsp; settings-bus logic the FPGA.<br>
    <br>
    Now, even having said THIS, since you'd expect the FIFO to be
    deterministic.&nbsp; So, you'd not expect there to be large random<br>
    &nbsp; phase offsets that differ from run to run, I think.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020 at 2:21=

            PM Lukas Haase &lt;<a href=3D"mailto:lukashaase@gmx.at" target=3D=
"_blank">lukashaase@gmx.at</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div>
              <div style=3D"font-family:Verdana;font-size:12px">
                <div>Hi Rob,</div>
                <div>&nbsp;</div>
                <div>That's a good point and I thought about this very
                  early on but figures it would not matter because the
                  phase of the "Tx signal source" is just constant.</div>
                <div>&nbsp;</div>
                <div>In terms of phase we could think of it as
                  "phase_we_want_to_measure + phase_of_tx_source". But
                  since phase_of_tx_source does not change over runs, it
                  shouldn't cause any differences. However, it was 2
                  months ago when I did this. I will have another look
                  at it with your code.</div>
                <div>&nbsp;</div>
                <div>Thanks for pointing out the LO synchronization.
                  When you say "from run to run", you mean when I
                  quit/execute again the python script for example,
                  right? I was sure that I had to take this as a fact
                  for now. I am not familiar with the option of
                  synchronizing the LO settings. In all the docs (e.g. <a hr=
ef=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Dev=
ices" target=3D"_blank">https://kb.ettus.com/Synchronization_and_MIMO_Capabi=
lity_with_USRP_Devices</a>,
                  <a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_=
Using_Timed_Commands_in_UHD" target=3D"_blank">https://kb.ettus.com/Synchron=
izing_USRP_Events_Using_Timed_Commands_in_UHD</a>)
                  I have not read about it. Can you elaborate on this?</div>=

                <div>&nbsp;</div>
                <div>Thanks again,</div>
                <div>Lukas</div>
                <div>&nbsp;</div>
                <div>&nbsp;
                  <div>&nbsp;
                    <div name=3D"quote" style=3D"margin:10px 5px 5px 10px;pa=
dding:10px 0px 10px 10px;border-left:2px solid rgb(195,217,229)">
                      <div style=3D"margin:0px 0px 10px"><b>Gesendet:</b>&nb=
sp;Freitag,
                        20. M=C3=A4rz 2020 um 13:44 Uhr<br>
                        <b>Von:</b>&nbsp;"Rob Kossler" &lt;<a href=3D"mailto=
:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
                        <b>An:</b>&nbsp;"Lukas Haase" &lt;<a href=3D"mailto:=
lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;,
                        usrp-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                        <b>Betreff:</b>&nbsp;Re: [USRP-users] USRP X310
                        ignored DSP retuning on TX when using a timed
                        command</div>
                      <div name=3D"quoted-content">
                        <div>
                          <div>OK.&nbsp; Thinking about it a little more, I
                            think that perhaps the tx-to-rx phase
                            measurement methodology was flawed.&nbsp; So,
                            maybe this is not any issue.&nbsp; I changed the=

                            Python (new version attached) to send the
                            gnuradio Tx signal source (which also drives
                            Tx0 and Tx1) to one input of the
                            multiply_conjugate (replacing Rx1 which
                            previously was the other input).&nbsp; When I
                            run, now the phase "walks", but always over
                            the same range of values.&nbsp; When I retune Tx=
0
                            and Rx0, the "walk" resets but still walks
                            over the same range.&nbsp; As to why the phase
                            walks, I don't know the answer right off.</div>
                          <div>&nbsp;</div>
                          <div>On a separate topic, I noticed that your
                            code does not synchronize the LO setting.&nbsp;
                            This means that the RF phase between the
                            channels could vary from run to run.</div>
                        </div>
                        &nbsp;
                        <div class=3D"gmail_quote">
                          <div class=3D"gmail_attr">On Fri, Mar 20, 2020
                            at 12:04 PM Rob Kossler &lt;<a href=3D"mailto:rk=
ossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                            wrote:</div>
                          <blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                            <div>
                              <div>Lukas,</div>
                              <div>After looking at this a bit, I think
                                that there is indeed an issue.&nbsp; I think=

                                that it is possible to get consistent
                                tx-to-tx phase results and consistent
                                rx-to-rx phase results, but NOT
                                consistent rx-to-tx phase results.&nbsp; A
                                few remarks:</div>
                              <div>
                                <ul>
                                  <li>Setup
                                    <ul>
                                      <li>2-channel X310/UBX-160 with
                                        two external loopback RF cables
                                        (with attenuation) such that
                                        Tx0=3D&gt;Rx0 and Tx1=3D&gt;Rx1 (I
                                        likely don't even need the
                                        loopback cables because I could
                                        operate on just the leakage
                                        signal from each channel, but I
                                        decided to use external
                                        cables).&nbsp;</li>
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
                                  wrong.&nbsp; Perhaps there is a problem in=

                                  the methodology above along with the
                                  test cases.&nbsp; But, it seems sound to
                                  me.</div>
                                <div>&nbsp;</div>
                              </div>
                              <div>The Rx block diagram you sent me does
                                not match the Python code you sent.&nbsp;
                                This threw me off for a while.&nbsp; In your=

                                block diagram, the phase measurement is
                                made from the division of the two low
                                pass filter outputs.&nbsp; In the Python cod=
e
                                you sent, the phase measurement uses
                                only the first low pass filter output.&nbsp;=

                                The reason this is important is that I
                                suspected early on that the problem
                                might be related to your gnuradio
                                signal_source used for IF
                                downconversion.&nbsp; This signal source is
                                not synchronous with the USRP as you
                                change USRP freqs. However, I figured
                                that it wasn't a problem because it was
                                "divided out".&nbsp; But, since it is
                                actually not divided out,I believe that
                                this was providing misleading results.</div>=

                              <div>&nbsp;</div>
                              <div>In the end, I just changed your code
                                to add a "multiply_conjugate_cc" block
                                with the two Rx channels as the two
                                inputs.&nbsp; This effectively uses one
                                channel to downconvert the other and
                                thus eliminates the need for the signal
                                source in the Rx block diagram.&nbsp; I then=

                                connected this multiply_conjugate
                                directly to the complex_to_mag_phase.&nbsp;
                                You could simplify the code by removing
                                the other multiply blocks, low pass
                                filters, and divide since these are not
                                used. Also, I put all of the
                                functionality in the rxtx (together)
                                button callback.&nbsp; I did not really use
                                the other buttons.&nbsp; Attached is the
                                modified code.</div>
                              <div>&nbsp;</div>
                              <div>Rob</div>
                            </div>
                            &nbsp;
                            <div class=3D"gmail_quote">
                              <div class=3D"gmail_attr">On Fri, Mar 20,
                                2020 at 2:38 AM Rob Kossler &lt;<a href=3D"m=
ailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                wrote:</div>
                              <blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
                                <div>
                                  <div>
                                    <div>Hi Lukas,</div>
                                    <div>A few remarks:</div>
                                    <div>
                                      <ul>
                                        <li>The 2nd code you sent works
                                          fine.&nbsp; Thanks.</li>
                                        <li>I'm not sure that
                                          starting/stopping as I do in
                                          my program is causing the
                                          issue.&nbsp; The only reason I
                                          didn't continuously stream
                                          both Rx and Tx like you do in
                                          gnuradio is because my
                                          software is not setup to do
                                          that.</li>
                                        <li>So, I still think it's
                                          possible that UHD can do the
                                          job with continuous streaming
                                          but perhaps there is still
                                          something in the gnuradio
                                          config that is not quite
                                          right.&nbsp; But, I don't know wha=
t
                                          that is right now.&nbsp; I need to=

                                          think about this a bit....</li>
                                      </ul>
                                      <div>Rob</div>
                                    </div>
                                  </div>
                                  &nbsp;
                                  <div class=3D"gmail_quote">
                                    <div class=3D"gmail_attr">On Thu, Mar
                                      19, 2020 at 8:17 PM Lukas Haase
                                      &lt;<a href=3D"mailto:lukashaase@gmx.a=
t" target=3D"_blank">lukashaase@gmx.at</a>&gt;
                                      wrote:</div>
                                    <blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
                                      <div>
                                        <div style=3D"font-family:Verdana;fo=
nt-size:12px">
                                          <div>Hi Rob,</div>
                                          <div>&nbsp;</div>
                                          <div>Sorry I really should
                                            have ran the python file
                                            before uploading. The issue
                                            was that I combined to files
                                            into one and forgot to
                                            remove the imported file.</div>
                                          <div>Here is a new one
                                            (tested): <a href=3D"http://past=
e.ubuntu.com/p/VsGRmsbZQ5/" target=3D"_blank">http://paste.ubuntu.com/p/VsGR=
msbZQ5/</a></div>
                                          <div>&nbsp;</div>
                                          <div>&nbsp;</div>
                                          <div>Thanks for reporting your
                                            results .... very
                                            interesting!</div>
                                          <div>&nbsp;</div>
                                          <div>Why do you think second
                                            mode makes sense to you?
                                            (assuming you are using
                                            timed commands to to retune
                                            TX+RX at the same time)</div>
                                          <div>&nbsp;</div>
                                          <div>In general, it seems to
                                            me that things are related
                                            to streaming start/stop.
                                            Maybe things are reset when
                                            streaming starts/ends but
                                            not when re-tuning?</div>
                                          <div>&nbsp;</div>
                                          <div>Maybe this is what Marcus
                                            was mentioning: resetting
                                            phase accumulator vs.
                                            "increment register is
                                            updated with the new phase
                                            increment"?</div>
                                          <div>&nbsp;</div>
                                          <div>MAYBE stopping/starting
                                            resets the phase accumulator
                                            to zero and just timed
                                            retuning doesn't reset
                                            anything. But still, my
                                            question is left why this
                                            would result in a random
                                            phase offset between DUC and
                                            DDC.</div>
                                          <div>&nbsp;</div>
                                          <div>Thanks again!!</div>
                                          <div>Lukas</div>
                                          <div>&nbsp;
                                            <div>&nbsp;
                                              <div style=3D"margin:10px 5px 5=
px 10px;padding:10px 0px 10px 10px;border-left:2px solid rgb(195,217,229)">
                                                <div style=3D"margin:0px 0px=
 10px"><b>Gesendet:</b>&nbsp;Donnerstag,
                                                  19. M=C3=A4rz 2020 um 19:1=
6
                                                  Uhr<br>
                                                  <b>Von:</b>&nbsp;"Rob
                                                  Kossler" &lt;<a href=3D"ma=
ilto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
                                                  <b>An:</b>&nbsp;"Lukas
                                                  Haase" &lt;<a href=3D"mail=
to:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
                                                  <b>Cc:</b>&nbsp;"<a href=3D=
"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a>"
                                                  &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
<br>
                                                  <b>Betreff:</b>&nbsp;Re:
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
                                                      following.&nbsp; I'm
                                                      guessing this is
                                                      your block.</div>
                                                    <div>Traceback (most
                                                      recent call last):<br>=

                                                      &nbsp; File "test.py",=

                                                      line 25, in
                                                      &lt;module&gt;<br>
                                                      &nbsp; &nbsp; import
                                                      epy_block_1<br>
                                                      ImportError: No
                                                      module named
                                                      epy_block_1</div>
                                                    <div>Rob</div>
                                                  </div>
                                                  &nbsp;
                                                  <div class=3D"gmail_quote"=
>
                                                    <div class=3D"gmail_attr=
">On
                                                      Thu, Mar 19, 2020
                                                      at 6:28 PM Rob
                                                      Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                                      wrote:</div>
                                                    <blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
                                                      <div>
                                                        <div>Ok.&nbsp; False=

                                                          alarm.&nbsp; I
                                                          forgot about
                                                          the dboard
                                                          clock needing
                                                          set to 20MHz
                                                          for RF freq
                                                          below 1 GHz.&nbsp;=

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
                                                      &nbsp;
                                                      <div class=3D"gmail_qu=
ote">
                                                        <div class=3D"gmail_=
attr">On
                                                          Thu, Mar 19,
                                                          2020 at 6:10
                                                          PM Rob Kossler
                                                          &lt;<a href=3D"mai=
lto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                                          wrote:</div>
                                                        <blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
                                                          <div>
                                                          <div>
                                                          <div><span style=3D=
"font-family:arial,sans-serif">Ok.
                                                          I modified my
                                                          code to be
                                                          more like
                                                          yours...</span></d=
iv>
                                                          <div>
                                                          <ul>
                                                          <li><span style=3D=
"font-family:arial,sans-serif">toggling
                                                          dsp freq
                                                          rather than LO
                                                          freq</span></li>
                                                          <li><span style=3D=
"font-family:arial,sans-serif">LO
                                                          at 900 MHz</span><=
/li>
                                                          <li><span style=3D=
"font-family:arial,sans-serif">external
                                                          connections
                                                          Tx0 =3D&gt;
                                                          Splitter_1x2
                                                          =3D&gt; both Rx0
                                                          and Rx1</span></li=
>
                                                          <li><span style=3D=
"font-family:arial,sans-serif">Previously,
                                                          I was starting
                                                          / stopping
                                                          both Rx &amp;
                                                          Tx in between
                                                          each test.&nbsp;
                                                          Now, I added a
                                                          mode where the
                                                          Tx is on
                                                          continuously,
                                                          and the Rx
                                                          starts &amp;
                                                          stops for each
                                                          test after the
                                                          dsp freq
                                                          change</span></li>=

                                                          </ul>
                                                          <div>The
                                                          results are
                                                          the following:</di=
v>
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
                                                          and Rx-Tx.&nbsp;
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
                                                          Rx-Tx.&nbsp; The
                                                          phase results
                                                          are constant
                                                          for Rx-Rx but
                                                          random for
                                                          Rx-Tx.</li>
                                                          </ul>
                                                          <div>Regarding
                                                          the 2nd mode,
                                                          this makes
                                                          sense to me.&nbsp;=

                                                          But, for the
                                                          1st mode, I
                                                          don't
                                                          understand&nbsp;wh=
y
                                                          the Rx-Tx
                                                          phase seems
                                                          random. Still
                                                          thinking about
                                                          it....</div>
                                                          <div>Rob</div>
                                                          </div>
                                                          </div>
                                                          &nbsp;
                                                          <div class=3D"gmai=
l_quote">
                                                          <div class=3D"gmai=
l_attr">On
                                                          Thu, Mar 19,
                                                          2020 at 4:35
                                                          PM Rob Kossler
                                                          &lt;<a href=3D"mai=
lto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
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
                                                          described.&nbsp;
                                                          The following
                                                          shows the
                                                          output which
                                                          is very
                                                          consistent.&nbsp; I=

                                                          used a 100
                                                          tone
                                                          multi-tone
                                                          waveform
                                                          spread over 4
                                                          MHz bandwidth
                                                          (using 5 MS/s
                                                          sample rate on
                                                          Tx and Rx).&nbsp;
                                                          Note the
                                                          consistency of
                                                          results as I
                                                          toggled
                                                          between 2
                                                          frequencies:
                                                          2450 and 2460
                                                          MHz.</div>
                                                          <div>&nbsp;</div>
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
                                                          signals.&nbsp;
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
                                                          my test.&nbsp; I
                                                          will try again
                                                          with moving
                                                          the DSP freq
                                                          instead.</div>
                                                          <div>Rob</div>
                                                          </div>
                                                          <div>&nbsp;</div>
                                                          <div><span style=3D=
"font-family:monospace">Test
                                                          1: freq =3D
                                                          2450.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.8<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.7<br>
                                                          Test 2: freq =3D
                                                          2460.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.7<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 13.1<br>
                                                          Test 3: freq =3D
                                                          2450.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.7<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.8<br>
                                                          Test 4: freq =3D
                                                          2460.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.6<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 13.0<br>
                                                          Test 5: freq =3D
                                                          2450.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.7<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.8<br>
                                                          Test 6: freq =3D
                                                          2460.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.8<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 12.7<br>
                                                          Test 7: freq =3D
                                                          2450.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.8<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.9<br>
                                                          Test 8: freq =3D
                                                          2460.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.7<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 12.9<br>
                                                          Test 9: freq =3D
                                                          2450.0 MHz<br>
                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -121.8<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase -95.8<br>
                                                          Test 10: freq
                                                          =3D 2460.0 MHz<br>=

                                                          &nbsp; Rx0/Tx0
                                                          xcorr peak at
                                                          index 108 with
                                                          phase -58.7<br>
                                                          &nbsp; Rx0/Rx1
                                                          xcorr peak at
                                                          index 115 with
                                                          phase 12.9<br>
                                                          &gt;&gt; </span></=
div>
                                                          <div>&nbsp;</div>
                                                          &nbsp;
                                                          <div class=3D"gmai=
l_quote">
                                                          <div class=3D"gmai=
l_attr">On
                                                          Thu, Mar 19,
                                                          2020 at 4:21
                                                          PM Lukas Haase
                                                          &lt;<a href=3D"mai=
lto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
                                                          <div>
                                                          <div style=3D"font=
-family:Verdana;font-size:12px">
                                                          <div>Hi Rob,</div>=

                                                          <div>&nbsp;</div>
                                                          <div>Yes, I
                                                          confirm your
                                                          conclusion.</div>
                                                          <div>&nbsp;</div>
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
                                                          additional "IF
                                                          stage" in my
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
                                                          part: <a href=3D"h=
ttps://snipboard.io/YFgIKs.jpg" target=3D"_blank">https://snipboard.io/YFgIK=
s.jpg</a>
                                                          . I send
                                                          "exp(1j*1MHz*t)
                                                          . This shows
                                                          the receiver
                                                          part: <a href=3D"h=
ttps://snipboard.io/i9jLJg.jpg" target=3D"_blank">https://snipboard.io/i9jLJ=
g.jpg</a>
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
                                                          <li><span style=3D=
"font:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blank">h=
ttps://snipboard.io/YFgIKs.jpg</a></span>
                                                          <span style=3D"fon=
t:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blank">https=
://snipboard.io/YFgIKs.jpg</a></span>
                                                          <span style=3D"fon=
t:unset"><a href=3D"https://snipboard.io/YFgIKs.jpg" target=3D"_blank">https=
://snipboard.io/YFgIKs.jpg</a></span>
                                                          That's so
                                                          nice, thank
                                                          you!! My code
                                                          is here: <a href=3D=
"http://paste.ubuntu.com/p/MbCJfPGzYW/" target=3D"_blank">http://paste.ubunt=
u.com/p/MbCJfPGzYW/</a>
                                                          . I'm not sure
                                                          if you have
                                                          gnuradio(and
                                                          QT) installed
                                                          but if yes,
                                                          simply
                                                          "python2
                                                          switch_on_click.py=
"
                                                          should do. Let
                                                          me quickly
                                                          elaborate how
                                                          it works:
                                                          <ul>
                                                          <li>Class
                                                          "switch_on_click"
                                                          implements a
                                                          normal
                                                          gnuradio flow
                                                          with USRP
                                                          transmitter
                                                          and receiver.</li>=

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
                                                          class "blk"</li>
                                                          <li>The most
                                                          important is
                                                          "def
                                                          button_rtx_handler=
"
                                                          on line 106
                                                          which is
                                                          executed when
                                                          user clicks on
                                                          button "Switch
                                                          RTX
                                                          (together)"</li>
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
                                                          "rf_freq").
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
                                                          "IF stage").
                                                          The received
                                                          signal is then
                                                          downconcerted
                                                          from 1MHz to
                                                          DC. I use 5
                                                          MSsps sampling
                                                          rate.</li>
                                                          </ul>
                                                          <div>
                                                          <div>&nbsp;</div>
                                                          <div>Again,
                                                          thank you SO
                                                          much.</div>
                                                          <div>&nbsp;</div>
                                                          <div>Best,</div>
                                                          <div>Lukas</div>
                                                          <div>&nbsp;</div>
                                                          <div>&nbsp;
                                                          <div style=3D"marg=
in:10px 5px 5px 10px;padding:10px 0px 10px 10px;border-left:2px solid rgb(19=
5,217,229)">
                                                          <div style=3D"marg=
in:0px 0px 10px"><b>Gesendet:</b>&nbsp;Donnerstag,
                                                          19. M=C3=A4rz 2020=

                                                          um 10:43 Uhr<br>
                                                          <b>Von:</b>&nbsp;"=
Rob
                                                          Kossler" &lt;<a hr=
ef=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
                                                          <b>An:</b>&nbsp;"L=
ukas
                                                          Haase" &lt;<a href=
=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br=
>
                                                          <b>Cc:</b>&nbsp;"<=
a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@li=
sts.ettus.com</a>"
                                                          &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt;<br>
                                                          <b>Betreff:</b>&nb=
sp;Re:
                                                          [USRP-users]
                                                          USRP X310
                                                          ignored DSP
                                                          retuning on TX
                                                          when using a
                                                          timed command</div=
>
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
                                                          coherent.&nbsp;
                                                          But, phase
                                                          from Tx-to-Rx
                                                          is random.&nbsp;
                                                          Please correct
                                                          me if that is
                                                          wrong.&nbsp;&nbsp;=
</div>
                                                          <div>&nbsp;</div>
                                                          <div>I have a
                                                          few comments:</div=
>
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
                                                          at?&nbsp; As I
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
                                                          measurements.&nbsp=
;
                                                          And, I'm
                                                          confident that
                                                          my Rx-to-Rx
                                                          phase is
                                                          coherent.&nbsp;
                                                          But, I haven't
                                                          really looked
                                                          at Tx-to-Rx in
                                                          a while so I
                                                          will do so
                                                          later today.&nbsp;=

                                                          Here are the
                                                          steps I plan
                                                          to take:
                                                          <ol>
                                                          <li>Connect
                                                          Tx0 to Rx1.&nbsp;
                                                          Note that
                                                          there is a
                                                          pretty strong
                                                          leakage signal
                                                          from Tx0 to
                                                          Rx0 so I don't
                                                          really need to
                                                          provide a
                                                          physical
                                                          connection in
                                                          order to get a
                                                          signal on
                                                          Rx0.&nbsp; The
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
                                                          are repeatable</li=
>
                                                          </ol>
                                                          </li>
                                                          <li>Questions:
                                                          what should I
                                                          use for freq 1
                                                          and freq 2?&nbsp;
                                                          What waveform
                                                          are you
                                                          transmitting?&nbsp=
;
                                                          What sample
                                                          rates for Tx
                                                          and Rx?</li>
                                                          </ul>
                                                          <div>Rob</div>
                                                          </div>
                                                          <div>&nbsp;</div>
                                                          </div>
                                                          <div>
                                                          <div>&nbsp;</div>
                                                          &nbsp;
                                                          <div class=3D"gmai=
l_quote">
                                                          <div class=3D"gmai=
l_attr">On
                                                          Wed, Mar 18,
                                                          2020 at 7:47
                                                          PM Lukas Haase
                                                          via USRP-users
                                                          &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
                                                          <div>
                                                          <div style=3D"font=
-family:Verdana;font-size:12px">
                                                          <div>Hi Rob,</div>=

                                                          <div>&nbsp;</div>
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
                                                          <div>&nbsp;</div>
                                                          <div>1.) I can
                                                          <b>confirm </b>tha=
t
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
                                                          <div>&nbsp;</div>
                                                          <div>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx =3D
uhd.tune_request()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx.rf_fre=
q_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_NONE<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx.dsp_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_MANUAL<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx.dsp_fr=
eq
                                                          =3D -dsp_freq</div=
>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx =3D
uhd.tune_request()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx.rf_fre=
q_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_NONE<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx.dsp_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_MANUAL<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx.dsp_fr=
eq
                                                          =3D dsp_freq</div>=

                                                          <div>&nbsp;</div>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          now =3D
                                                          usrp_sink.get_time=
_now()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; when =3D
                                                          now +
                                                          uhd.time_spec(1.0)=
</div>
                                                          &nbsp;
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_sink.set_comm=
and_time(when)<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_source.set_co=
mmand_time(when)</div>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          res1 =3D
                                                          usrp_sink.set_cent=
er_freq(tune_req_tx)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          # TX<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; res2 =3D
                                                          usrp_source.set_ce=
nter_freq(tune_req_rx,
                                                          0)&nbsp; #RX1<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; res3 =3D
                                                          usrp_source.set_ce=
nter_freq(tune_req_rx,
                                                          1)&nbsp; #RX2</div=
>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_sink.clear_co=
mmand_time()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_source.clear_=
command_time()</div>
                                                          </div>
                                                          <div>&nbsp;
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
                                                          "TX/RX" to
                                                          "RX2" on UBX
                                                          #1 (TX1 --&gt;
                                                          RX1) and
                                                          "TX/RX" to
                                                          "RX2" on UBX
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
                                                          <div>&nbsp;</div>
                                                          <div>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx =3D
uhd.tune_request()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx.rf_fre=
q_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_NONE<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx.dsp_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_MANUAL<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_rx.dsp_fr=
eq
                                                          =3D -dsp_freq</div=
>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx =3D
uhd.tune_request()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx.rf_fre=
q_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_NONE<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx.dsp_fr=
eq_policy
                                                          =3D
                                                          uhd.tune_request.P=
OLICY_MANUAL<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          tune_req_tx.dsp_fr=
eq
                                                          =3D dsp_freq</div>=

                                                          <div>&nbsp;</div>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          now =3D
                                                          usrp_sink.get_time=
_now()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; when =3D
                                                          now +
                                                          uhd.time_spec(1.0)=
</div>
                                                          &nbsp;
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_sink.set_comm=
and_time(when)<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_source.set_co=
mmand_time(when)</div>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          res1 =3D
                                                          usrp_sink.set_cent=
er_freq(tune_req_tx,
                                                          0)&nbsp; &nbsp;&nb=
sp; # TX1<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; res2 =3D
                                                          usrp_sink.set_cent=
er_freq(tune_req_tx,
                                                          1)&nbsp;&nbsp;&nbs=
p;&nbsp; # TX2<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; res3 =3D
                                                          usrp_source.set_ce=
nter_freq(tune_req_rx,
                                                          0) # RX1<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; res4 =3D
                                                          usrp_source.set_ce=
nter_freq(tune_req_rx,
                                                          1) # RX2</div>
                                                          <div>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_sink.clear_co=
mmand_time()<br>
                                                          &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;
                                                          usrp_source.clear_=
command_time()</div>
                                                          </div>
                                                          <div>&nbsp;</div>
                                                          <div>I again
                                                          look at the <b>rel=
ative
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
                                                          frequencies).</div=
>
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
                                                          TX's and
                                                          multiple RX's
                                                          <b>individually</b=
>.
                                                          Do I get that
                                                          right?</div>
                                                          <div>&nbsp;</div>
                                                          <div>What
                                                          doesn't seem
                                                          to work is
                                                          RX+TX <b>together<=
/b>.</div>
                                                          <div>&nbsp;</div>
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
                                                          or if I'm just
                                                          doing
                                                          something
                                                          wrong. On the
                                                          other hand I
                                                          don't want to
                                                          believe being
                                                          the only
                                                          person on the
                                                          planet having
                                                          tried TX+RX
                                                          phase coherent
                                                          operation :-/</div=
>
                                                          <div>&nbsp;</div>
                                                          Any other
                                                          further
                                                          suggestions on
                                                          how to
                                                          continue
                                                          debugging with
                                                          the above in
                                                          mind would be
                                                          helpful too.
                                                          <div>&nbsp;</div>
                                                          <div>In my
                                                          opinion there
                                                          are two
                                                          options left:</div=
>
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
                                                          random value.</div=
>
                                                          <div>&nbsp;</div>
                                                          <div>However,
                                                          I don't really
                                                          know how to
                                                          test these.</div>
                                                          <div>&nbsp;</div>
                                                          <div>Thanks,</div>=

                                                          <div>Lukas</div>
                                                          <div>&nbsp;</div>
                                                          <div>&nbsp;</div>
                                                          <div style=3D"marg=
in:10px 5px 5px 10px;padding:10px 0px 10px 10px;border-left:2px solid rgb(19=
5,217,229)">
                                                          <div style=3D"marg=
in:0px 0px 10px"><b>Gesendet:</b>&nbsp;Freitag,
                                                          13. M=C3=A4rz 2020=

                                                          um 12:27 Uhr<br>
                                                          <b>Von:</b>&nbsp;"=
Rob
                                                          Kossler" &lt;<a hr=
ef=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
                                                          <b>An:</b>&nbsp;"L=
ukas
                                                          Haase" &lt;<a href=
=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br=
>
                                                          <b>Cc:</b>&nbsp;"M=
arcus
                                                          D Leech" &lt;<a hr=
ef=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.=
com</a>&gt;,
                                                          "<a href=3D"mailto=
:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a=
>"
                                                          &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt;<br>
                                                          <b>Betreff:</b>&nb=
sp;Re:
                                                          [USRP-users]
                                                          USRP X310
                                                          ignored DSP
                                                          retuning on TX
                                                          when using a
                                                          timed command</div=
>
                                                          <div>
                                                          <div>
                                                          <div>Ok,
                                                          great.&nbsp; I am
                                                          trying to
                                                          think of ways
                                                          to now add the
                                                          phase
                                                          measurement.&nbsp;=

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
                                                          them).&nbsp; So,
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
                                                          Rx1.&nbsp; Then,
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
                                                          constant.&nbsp; If=

                                                          so, this would
                                                          give you good
                                                          confidence
                                                          that Rx DSP
                                                          tuning is
                                                          indeed
                                                          happening
                                                          synchronously</li>=

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
                                                          Rx1.&nbsp; At this=

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
                                                          can't think of
                                                          better
                                                          ideas.&nbsp;&nbsp;=
</div>
                                                          <div>Rob</div>
                                                          </div>
                                                          &nbsp;
                                                          <div class=3D"gmai=
l_quote">
                                                          <div class=3D"gmai=
l_attr">On
                                                          Fri, Mar 13,
                                                          2020 at 12:12
                                                          PM Lukas Haase
                                                          &lt;<a href=3D"mai=
lto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;
                                                          wrote:</div>
                                                          <blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi
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
                                                          "get_current_time(=
)
                                                          +
                                                          uhd.time_spec(2.0)=
"
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
                                                          <blockquote type=3D=
"cite">
                                                          <div style=3D"font=
-family:Verdana;font-size:12px">
                                                          <div>Hi Rob,</div>=

                                                          <div>&nbsp;</div>
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
                                                          imported file.</di=
v>
                                                          <div>Here is a
                                                          new one
                                                          (tested): <a href=3D=
"http://paste.ubuntu.com/p/VsGRmsbZQ5/" target=3D"_blank">http://paste.ubunt=
u.com/p/VsGRmsbZQ5/</a></div>
                                                          <div>&nbsp;</div>
                                                          <div>&nbsp;</div>
                                                          <div>Thanks
                                                          for reporting
                                                          your results
                                                          .... very
                                                          interesting!</div>=

                                                          <div>&nbsp;</div>
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
                                                          <div>&nbsp;</div>
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
                                                          <div>&nbsp;</div>
                                                          <div>Maybe
                                                          this is what
                                                          Marcus was
                                                          mentioning:
                                                          resetting
                                                          phase
                                                          accumulator
                                                          vs. "increment
                                                          register is
                                                          updated with
                                                          the new phase
                                                          increment"?</div>
                                                          <div>&nbsp;</div>
                                                          <div>MAYBE
                                                          stopping/starting
                                                          resets the
                                                          phase
                                                          accumulator to
                                                          zero and just
                                                          timed retuning
                                                          doesn't reset
                                                          anything. But
                                                          still, my
                                                          question is
                                                          left why this
                                                          would result
                                                          in a random
                                                          phase offset
                                                          between DUC
                                                          and DDC.</div>
                                                          <div>&nbsp;</div>
                                                          <div>Thanks
                                                          again!!</div>
                                                          <div>Lukas</div>
                                                          <div>&nbsp; <br>
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
                                                          &nbsp; a bit of a
                                                          conclusion
                                                          about the ways
                                                          things work.&nbsp;=

                                                          Now, keep in
                                                          mind, this is
                                                          like me
                                                          reading War
                                                          and Peace in
                                                          the original
                                                          Russian, and
                                                          as<br>
                                                          &nbsp; an English
                                                          speaker,
                                                          coming the
                                                          vague
                                                          conclusion
                                                          that "It was
                                                          about Russia".<br>=

                                                          <br>
                                                          There's a
                                                          "settings bus"
                                                          within the
                                                          FPGA that is
                                                          implemented
                                                          with AXI FIFO
                                                          modules.&nbsp; If
                                                          your command
                                                          (which
                                                          results, most
                                                          often in<br>
                                                          &nbsp; having to
                                                          "set" one or
                                                          more registers
                                                          via the
                                                          settings bus)
                                                          is not a timed
                                                          command, it
                                                          enters the
                                                          FIFO, and then
                                                          is "executed"
                                                          one<br>
                                                          &nbsp; clock
                                                          later.&nbsp; If it=

                                                          has a time
                                                          associated
                                                          with it, then
                                                          it is
                                                          withdrawn when
                                                          that time has
                                                          been reached
                                                          in
                                                          "vita_time".&nbsp;=

                                                          Note that
                                                          since this<br>
                                                          &nbsp; is a FIFO,
                                                          commands that
                                                          are to be
                                                          executed "at
                                                          the same time"
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
                                                          'spread' over
                                                          (as far as I
                                                          can tell)<br>
                                                          &nbsp; 4 clocks
                                                          cycles of the
                                                          FIFO, or about
                                                          20nsec.&nbsp; Now
                                                          in the case
                                                          where multiple
                                                          X3xx are
                                                          involved, the
                                                          FIFO will look
                                                          identical
                                                          across all<br>
                                                          &nbsp; the units,
                                                          and will
                                                          execute at the
                                                          same time, but
                                                          still be
                                                          serialized.&nbsp;
                                                          But if you
                                                          have two DDC
                                                          settings
                                                          across a pair
                                                          of X3xx, the
                                                          settings<br>
                                                          &nbsp; will execut=
e
                                                          at exactly the
                                                          same time,
                                                          since they
                                                          will in effect
                                                          be executing
                                                          in parallel.&nbsp;=
&nbsp;
                                                          Put another
                                                          way, with
                                                          shared clocks,
                                                          and a common<br>
                                                          &nbsp; "view" of
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
                                                          comment.&nbsp;&nbs=
p;&nbsp;
                                                          But this is my
                                                          (albeit
                                                          incomplete)
                                                          understanding
                                                          of the<br>
                                                          &nbsp; settings-bu=
s
                                                          logic the
                                                          FPGA.<br>
                                                          <br>
                                                          Now, even
                                                          having said
                                                          THIS, since
                                                          you'd expect
                                                          the FIFO to be
                                                          deterministic.&nbs=
p;
                                                          So, you'd not
                                                          expect there
                                                          to be large
                                                          random<br>
                                                          &nbsp; phase
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
                                                          don't know how
                                                          I could
                                                          continue to
                                                          debugging the
                                                          phase.<br>
                                                          <br>
                                                          Best,<br>
                                                          Luke<br>
                                                          <br>
                                                          <br>
                                                          Gesendet:&nbsp;Fre=
itag,
                                                          13. M=C3=A4rz 2020=

                                                          um 11:08 Uhr<br>
                                                          Von:&nbsp;"Rob
                                                          Kossler" &lt;<a hr=
ef=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
                                                          An:&nbsp;"Lukas
                                                          Haase" &lt;<a href=
=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br=
>
                                                          Cc:&nbsp;"Marcus D=

                                                          Leech" &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.co=
m</a>&gt;,
                                                          "<a href=3D"mailto=
:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a=
>"
                                                          &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt;<br>
                                                          Betreff:&nbsp;Re:
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
                                                          bug fix[<a href=3D=
"https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c=
6798771e6d" target=3D"_blank">https://github.com/EttusResearch/fpga/commit/0=
b2364653405612a6d5dfaa0e69b1c6798771e6d</a>]
                                                          related to
                                                          phase.&nbsp;
                                                          However, the
                                                          version you
                                                          provided with
                                                          uhd_usrp_probe
                                                          confirms that
                                                          you have the
                                                          bug fix
                                                          included.&nbsp; So=
,
                                                          this is not
                                                          the problem.&nbsp;=
<br>
                                                          &nbsp;<br>
                                                          =46rom what you
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
                                                          &nbsp;<br>
                                                          I am trying to
                                                          simplify the
                                                          issue by
                                                          removing RF
                                                          tuning
                                                          completely and
                                                          by tuning only
                                                          1 of Rx/Tx at
                                                          a time.&nbsp;
                                                          Perhaps this
                                                          will help lead
                                                          to the answer.<br>=

                                                          Rob<br>
                                                          &nbsp;<br>
                                                          &nbsp;&nbsp;<br>
                                                          <br>
                                                          On Fri, Mar
                                                          13, 2020 at
                                                          10:53 AM Lukas
                                                          Haase &lt;<a href=3D=
"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a=
 href=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&=
gt;
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
                                                          the same time)<br>=

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
                                                          &nbsp;<br>
                                                          &nbsp;&nbsp;<br>
                                                          &nbsp;</blockquote=
>
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
                                                          <a href=3D"mailto:=
USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>=
<br>
                                                          <a href=3D"http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blan=
k">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></b=
lockquote>
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
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-4E818A98-4100-4597-907F-C425878C4705--


--===============6116096189885585569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6116096189885585569==--

