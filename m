Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3F818C183
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 21:36:04 +0100 (CET)
Received: from [::1] (port=33560 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF1ta-0006Ia-N6; Thu, 19 Mar 2020 16:36:02 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:33328)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jF1tX-0006BY-4i
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 16:35:59 -0400
Received: by mail-ot1-f50.google.com with SMTP id x26so3883678otk.0
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 13:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+ncpcR8lHoiPZmJqIyoaSi/RH2i5LzkG2p5SbD+wkgA=;
 b=XN6u23xX0345MjAg2sTdze0sWExGX9Wx4K2nvgeGbKnPsdNrInk+HUIRNovhcYNTDb
 ov65FrbAwSxbluRN7yqxQyIShNjerhOc0rKenscJNP5NtE3ZOULPh10k9/mzJddgE4ll
 MyoLuWy866ZgbhcBPPwvTA6S4oAvtEARDY/EN/7QGr1TNWXzARzZmAVMmxJrGac3Qq6e
 G94ZX7JtnhPOsj6xwXKiVY8OTaJQhiiGdFq1mp/jXECdBb569X2lacLTKtepPnza8d7e
 KjRaXlYlgGFR/85ZjBGxrD1wcBfehini+PHOtG+5clC/NwDK8CXxIb6V5tpNYa9BJg3g
 XZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+ncpcR8lHoiPZmJqIyoaSi/RH2i5LzkG2p5SbD+wkgA=;
 b=mmrXIqy7QxLwgdsSq88FoWbBl9MAuq+tPa1RqnMieixOgG1qZVCOUpt5Xqn9+JE/yt
 iv9rMCLFtRNxh+dPjz87Fys6BhjxZTZaTof3eL0T/jbPB/fkBx5Z8TeYo8pXs7UlkGC/
 lpByIYxLz/nlfccRR1LVZC+VBuCyvMUv7h4VYB5eEje7VZhowre8iWOv0GQqljCvcVhh
 6ViBxFg3i2U1XTq5NPKny4tlbPcU/VJg2M6x1sEx8ISd/gWu3etQfnzhsWnPzoNHzNKY
 1UFhnVRwcwPFSPHapCu4H4JMOf7ylspcDJO/MxpOhgsLBLF4z54uJq1e0TlQSoKBRieb
 LrAQ==
X-Gm-Message-State: ANhLgQ0MXLGHCYtVlt4xitP++/FSvuxjeLuERkRYvVHh6Rl1VKWDmM7W
 izHVqBff3GTQbH5M+0eb/Iqwcv2C0rrU9aSxAJQf8kGwc5U=
X-Google-Smtp-Source: ADFU+vu/pl0pCH+mfybJDF5vQJierz5d8DOJsXxk7oQmI2xHscXRStaEgbxsNoxhB5s6B2B1ed1UGYSh46AJuaA+oEE=
X-Received: by 2002:a9d:171e:: with SMTP id i30mr3990338ota.327.1584650118123; 
 Thu, 19 Mar 2020 13:35:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
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
In-Reply-To: <trinity-bbe82f54-edda-4533-b4c8-9b1bde054edc-1584649222876@3c-app-gmx-bap79>
Date: Thu, 19 Mar 2020 16:35:06 -0400
Message-ID: <CAB__hTRvq+xojKA0-kB0-JJjOURf9ZLVURcAwyHxtt6_-J1_bg@mail.gmail.com>
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1640887009392694165=="
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

--===============1640887009392694165==
Content-Type: multipart/alternative; boundary="0000000000006284ab05a13b1bcb"

--0000000000006284ab05a13b1bcb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Lukas,
Just before receiving your email, I ran the following with my custom c++ &
matlab software using X310/UBX-160 with the connections I described.  The
following shows the output which is very consistent.  I used a 100 tone
multi-tone waveform spread over 4 MHz bandwidth (using 5 MS/s sample rate
on Tx and Rx).  Note the consistency of results as I toggled between 2
frequencies: 2450 and 2460 MHz.

My method was the following:

   - Tx waveform was 500 points long
   - Rx capture was 5000 points long
   - Compute cross-correlation (using Matlab xcorr) as follows: xcorr(rx0,
   conj(tx)) AND xcorr(rx0,conj(rx1))
   - Find the correlation peak (which was very pronounced) which shows the
   sample delay between the two signals.  Extract the phase at the peak

Oops, I just realized that I used a constant DSP freq (10 MHz) and I
changed the LO freq in my test.  I will try again with moving the DSP freq
instead.
Rob

Test 1: freq =3D 2450.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -121.8
  Rx0/Rx1 xcorr peak at index 115 with phase -95.7
Test 2: freq =3D 2460.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -58.7
  Rx0/Rx1 xcorr peak at index 115 with phase 13.1
Test 3: freq =3D 2450.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -121.7
  Rx0/Rx1 xcorr peak at index 115 with phase -95.8
Test 4: freq =3D 2460.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -58.6
  Rx0/Rx1 xcorr peak at index 115 with phase 13.0
Test 5: freq =3D 2450.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -121.7
  Rx0/Rx1 xcorr peak at index 115 with phase -95.8
Test 6: freq =3D 2460.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -58.8
  Rx0/Rx1 xcorr peak at index 115 with phase 12.7
Test 7: freq =3D 2450.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -121.8
  Rx0/Rx1 xcorr peak at index 115 with phase -95.9
Test 8: freq =3D 2460.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -58.7
  Rx0/Rx1 xcorr peak at index 115 with phase 12.9
Test 9: freq =3D 2450.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -121.8
  Rx0/Rx1 xcorr peak at index 115 with phase -95.8
Test 10: freq =3D 2460.0 MHz
  Rx0/Tx0 xcorr peak at index 108 with phase -58.7
  Rx0/Rx1 xcorr peak at index 115 with phase 12.9
>>


On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase <lukashaase@gmx.at> wrote:

> Hi Rob,
>
> Yes, I confirm your conclusion.
>
>
>    - I calculate the relative phase by dividing the outputs of both
>    receivers. To understand better, note that I have an additional "IF st=
age"
>    in my own signal flow such that I exclude DC offset correction etc. th=
e
>    USRP may perform. This is the block diagram of the transmitter part:
>    https://snipboard.io/YFgIKs.jpg . I send "exp(1j*1MHz*t) . This shows
>    the receiver part: https://snipboard.io/i9jLJg.jpg . I multiply the
>    received signal with exp(-1j*1MHz*t) and filter them. Then I divide bo=
th
>    streams and take the phase part. I take a moving average (for
>    flucatuations), add pi and display the number.
>    - https://snipboard.io/YFgIKs.jpg https://snipboard.io/YFgIKs.jpg
>    https://snipboard.io/YFgIKs.jpg That's so nice, thank you!! My code is
>    here: http://paste.ubuntu.com/p/MbCJfPGzYW/ . I'm not sure if you have
>    gnuradio(and QT) installed but if yes, simply "python2 switch_on_click=
.py"
>    should do. Let me quickly elaborate how it works:
>       - Class "switch_on_click" implements a normal gnuradio flow with
>       USRP transmitter and receiver.
>       - It also uses a custom module together with buttons and a probe
>       block to call functions upon clicking on a button
>       - The callback functions are defined in class "blk"
>       - The most important is "def button_rtx_handler" on line 106 which
>       is executed when user clicks on button "Switch RTX (together)"
>    - Again, thank you for trying this out!! If it works, would you mind
>    sharing this code then? I may be able to check then where it breaks on=
 my
>    system
>    - I use 900 MHz as default center frequency (and "rf_freq"). When
>    clicking, I jump between dsp_freq=3D0 and dsp_freq=3D500e3. As to my w=
aveform,
>    you can infer from my screenshots and code above: I am transmitting an=
d
>    receiving a 1MHz waveform (which acts as an additional "IF stage"). Th=
e
>    received signal is then downconcerted from 1MHz to DC. I use 5 MSsps
>    sampling rate.
>
>
> Again, thank you SO much.
>
> Best,
> Lukas
>
>
> *Gesendet:* Donnerstag, 19. M=C3=A4rz 2020 um 10:43 Uhr
> *Von:* "Rob Kossler" <rkossler@nd.edu>
> *An:* "Lukas Haase" <lukashaase@gmx.at>
> *Cc:* "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
> using a timed command
> Hi Lukas,
> So, the conclusion is that your Rx0-to-Rx1 relative phase is nearly
> constant such that it seems that both Rx0/Rx1 are phase coherent and
> Tx0/Tx1 are phase coherent.  But, phase from Tx-to-Rx is random.  Please
> correct me if that is wrong.
>
> I have a few comments:
>
>    - How do you measure/calculate the relative phase?
>    - Can you send me the full Python code to look at?  As I mentioned
>    previously, I am not too good at gnuradio/Python, but I might be able =
to
>    spot something.
>    - As to your question, I always use synchronous measurements.  And,
>    I'm confident that my Rx-to-Rx phase is coherent.  But, I haven't real=
ly
>    looked at Tx-to-Rx in a while so I will do so later today.  Here are t=
he
>    steps I plan to take:
>       1. Connect Tx0 to Rx1.  Note that there is a pretty strong leakage
>       signal from Tx0 to Rx0 so I don't really need to provide a physical
>       connection in order to get a signal on Rx0.  The signal attenuation=
 in this
>       leakage path is approx 40 dB so it is not too much different than t=
he
>       signal level I will receive on Rx1 if I use an external 30 dB atten=
uator.
>       2. Set Rx and Tx frequency to freq 1
>       3. Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for
>       freq 1
>       4. Set Rx and Tx frequency to freq 2
>       5. Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for
>       freq 2
>       6. Repeat steps 2-5 a few times to ensure that the measurements are
>       repeatable
>    - Questions: what should I use for freq 1 and freq 2?  What waveform
>    are you transmitting?  What sample rates for Tx and Rx?
>
> Rob
>
>
>
> On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Rob,
>>
>> I think the issue is really having two usrp_multi devices with timed
>> commands and same timestmap or similar. From your tests below:
>>
>> 1.) I can *confirm *that the relative phase between two RX in your
>> suggested test is always the same! In fact, it is always 4.56 rad, even
>> across restarts and for different frequencies! That somewhat makes sense
>> because the phase offset is now only dependent on the difference between
>> the two channels (fixed) and cable lengths from the splitter (fixed). I
>> verified by removing the timed command on usrp source, the phase offset
>> becomes random after each retune. Of course, this is independent of TX
>> tuning (timed vs. not). For reference, this is the code used:
>>
>>         tune_req_rx =3D uhd.tune_request()
>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>         tune_req_tx =3D uhd.tune_request()
>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>>         tune_req_tx.dsp_freq =3D dsp_freq
>>
>>         now =3D usrp_sink.get_time_now()
>>         when =3D now + uhd.time_spec(1.0)
>>
>>         usrp_sink.set_command_time(when)
>>         usrp_source.set_command_time(when)
>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx)          # TX
>>         res2 =3D usrp_source.set_center_freq(tune_req_rx, 0)  #RX1
>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 1)  #RX2
>>         usrp_sink.clear_command_time()
>>         usrp_source.clear_command_time()
>>
>> 2.) I also tried your second suggestion. Before reading on, you wanna
>> guess what the outcome is?
>> I connected "TX/RX" to "RX2" on UBX #1 (TX1 --> RX1) and "TX/RX" to "RX2=
"
>> on UBX #2 (TX2 --> RX2). In absence of a second 30dB attenuator I used t=
wo
>> antennas closely spaced together. For reference, my code looks now like:
>>
>>         tune_req_rx =3D uhd.tune_request()
>>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>>         tune_req_rx.dsp_freq =3D -dsp_freq
>>         tune_req_tx =3D uhd.tune_request()
>>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>>         tune_req_tx.dsp_freq =3D dsp_freq
>>
>>         now =3D usrp_sink.get_time_now()
>>         when =3D now + uhd.time_spec(1.0)
>>
>>         usrp_sink.set_command_time(when)
>>         usrp_source.set_command_time(when)
>>         res1 =3D usrp_sink.set_center_freq(tune_req_tx, 0)     # TX1
>>         res2 =3D usrp_sink.set_center_freq(tune_req_tx, 1)     # TX2
>>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 0) # RX1
>>         res4 =3D usrp_source.set_center_freq(tune_req_rx, 1) # RX2
>>         usrp_sink.clear_command_time()
>>         usrp_source.clear_command_time()
>>
>> I again look at the *relative phase* of RX1 and RX2 (obtained by
>> dividing the two) and guess what: Also now the relative phase stays
>> constant! (This time it actually slightly varies from 3.0 rad to 3.7 rad
>> between two different frequencies).
>> What does that mean? I think it means that TX must be tuned coherently
>> and RX must be tuned coherently, i.e., timed commands generally work for
>> multiple TX's and multiple RX's *individually*. Do I get that right?
>>
>> What doesn't seem to work is RX+TX *together*.
>>
>> I am very desperately asking if you had coherent TX+RX setup working at
>> any point or know somebody who did. It would be so much worth to know if
>> this is something that never worked to begin with or if I'm just doing
>> something wrong. On the other hand I don't want to believe being the onl=
y
>> person on the planet having tried TX+RX phase coherent operation :-/
>>
>> Any other further suggestions on how to continue debugging with the abov=
e
>> in mind would be helpful too.
>>
>> In my opinion there are two options left:
>> 1.) There is still a nondeterministic delay between the TX and RX timed
>> commands (to my understanding, even a constant delay would result in
>> coherent phase)
>> 2.) While the phase accumulators in RX are set to the same values (and i=
n
>> TX as well), they may be set to a different, random value.
>>
>> However, I don't really know how to test these.
>>
>> Thanks,
>> Lukas
>>
>>
>> *Gesendet:* Freitag, 13. M=C3=A4rz 2020 um 12:27 Uhr
>> *Von:* "Rob Kossler" <rkossler@nd.edu>
>> *An:* "Lukas Haase" <lukashaase@gmx.at>
>> *Cc:* "Marcus D Leech" <patchvonbraun@gmail.com>, "
>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>> using a timed command
>> Ok, great.  I am trying to think of ways to now add the phase
>> measurement.  Ideas...
>>
>>    - In order to get consistent phase, you would need to tune Rx and Tx
>>    DSP at the same time (rather than below where you are only tuning one=
 of
>>    them).  So, assuming that this will not produce consistent phase resu=
lts,
>>    then maybe try the following idea...
>>    - If you want to check just Rx DSP tuning (with fixed Tx DSP tuning),
>>    you could try a 2 channel Rx measurement where the Tx is split extern=
ally
>>    with 1:2 splitter in order to drive both Rx0 and Rx1.  Then, measure =
the
>>    relative phase Rx0/Rx1 and then tune back and forth between two Rx DS=
P
>>    freqs to see if the relative phase on Rx remains constant.  If so, th=
is
>>    would give you good confidence that Rx DSP tuning is indeed happening
>>    synchronously
>>    - Assuming that the Rx IS synchronous in the step above (perhaps a
>>    bad assumption, but here goes), you could then check TX DSP tuning (w=
ith
>>    fixed Rx DSP tuning) by using two Tx and two Rx channels with Tx0 con=
nected
>>    to Rx0 and Tx1 connected to Rx1.  At this point we are confident that=
 Rx
>>    DSP tuning is synchronous so any synchronous misbehavior would imply =
a Tx
>>    sync problem.
>>
>> Sorry I can't think of better ideas.
>> Rob
>>
>> On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase <lukashaase@gmx.at> wrote:
>>
>>> Hi Rob,
>>>
>>> 1.) yes, works(*)
>>> 2.) yes, works(*)
>>>
>>> (*): qualitatively. I set the timed command to "get_current_time() +
>>> uhd.time_spec(2.0)" and I see the chance 2 seconds after my click on th=
e
>>> screen. I cannot (do not know how) check if it actually happens at
>>> sample-precicse location.
>>>
>>> Great, any ideas to simplify the setup would nice. I just don't know ho=
w
>>> I could continue to debugging the phase.
>>>
>>> Best,
>>> Luke
>>>
>>>
>>> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr
>>> Von: "Rob Kossler" <rkossler@nd.edu>
>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "
>>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
>>> using a timed command
>>>
>>> Thanks Lukas,
>>> I wanted to confirm that you did not have an older version of FPGA
>>> firmware because there was a DDC/DUC bug fix[
>>> https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e6=
9b1c6798771e6d]
>>> related to phase.  However, the version you provided with uhd_usrp_prob=
e
>>> confirms that you have the bug fix included.  So, this is not the probl=
em.
>>>
>>> From what you said, I assume that you can successfully do the following=
:
>>> 1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not
>>> change TX RF) and you can see the frequency change at the specified com=
mand
>>> time (i.e., if you specify the command time 1 sec in the future, the ch=
ange
>>> does not occur until 1 sec in the future).
>>> 2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can
>>> see the frequency change at the specified command time.
>>>
>>> I am trying to simplify the issue by removing RF tuning completely and
>>> by tuning only 1 of Rx/Tx at a time.  Perhaps this will help lead to th=
e
>>> answer.
>>> Rob
>>>
>>>
>>>
>>> On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase <lukashaase@gmx.at[mailto:
>>> lukashaase@gmx.at]> wrote:Hi again Rob,
>>>
>>> Yes, I confirm:
>>>
>>> 1.) Finally I get the commands to execute at the same time (TX and RX
>>> individually and both at the same time)
>>> 2.) Yes, the phase is random after each retune, even when I retune back
>>> to the same frequency
>>> 3.) (2) is only true if it includes *DSP* retuning. With naalog retunin=
g
>>> (+integer-N retuning) I get phase coherence, as expected.
>>>
>>> I actually expected the PLL retuning much more challenging than the DSP
>>> retuning but for some reason it seems to be the opposite...
>>>
>>> Thanks,
>>> Lukas
>>>
>>>
>>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000006284ab05a13b1bcb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Lukas,</div><div>Just before receiving your email, I =
ran the following with my custom c++ &amp; matlab software using X310/UBX-1=
60 with the connections I described.=C2=A0 The following shows the output w=
hich is very consistent.=C2=A0 I used a 100 tone multi-tone waveform spread=
 over 4 MHz bandwidth (using 5 MS/s sample rate on Tx and Rx).=C2=A0 Note t=
he consistency of results as I toggled between 2 frequencies: 2450 and 2460=
 MHz. <br></div><div><br></div><div>My method was the following:</div><div>=
<ul><li>Tx waveform was 500 points long</li><li>Rx capture was 5000 points =
long</li><li>Compute cross-correlation (using Matlab xcorr) as follows: xco=
rr(rx0, conj(tx)) AND xcorr(rx0,conj(rx1))</li><li>Find the correlation pea=
k (which was very pronounced) which shows the sample delay between the two =
signals.=C2=A0 Extract the phase at the peak</li></ul><div>Oops, I just rea=
lized that I used a constant DSP freq (10 MHz) and I changed the LO freq in=
 my test.=C2=A0 I will try again with moving the DSP freq instead.<br></div=
><div>Rob<br></div></div><div><span style=3D"font-family:monospace"><br></s=
pan></div><div><span style=3D"font-family:monospace">Test 1: freq =3D 2450.=
0 MHz<br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br>=C2=A0=
 Rx0/Rx1 xcorr peak at index 115 with phase -95.7<br>Test 2: freq =3D 2460.=
0 MHz<br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br>=C2=A0 =
Rx0/Rx1 xcorr peak at index 115 with phase 13.1<br>Test 3: freq =3D 2450.0 =
MHz<br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.7<br>=C2=A0 R=
x0/Rx1 xcorr peak at index 115 with phase -95.8<br>Test 4: freq =3D 2460.0 =
MHz<br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.6<br>=C2=A0 Rx=
0/Rx1 xcorr peak at index 115 with phase 13.0<br>Test 5: freq =3D 2450.0 MH=
z<br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.7<br>=C2=A0 Rx0=
/Rx1 xcorr peak at index 115 with phase -95.8<br>Test 6: freq =3D 2460.0 MH=
z<br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.8<br>=C2=A0 Rx0/=
Rx1 xcorr peak at index 115 with phase 12.7<br>Test 7: freq =3D 2450.0 MHz<=
br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br>=C2=A0 Rx0/R=
x1 xcorr peak at index 115 with phase -95.9<br>Test 8: freq =3D 2460.0 MHz<=
br>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br>=C2=A0 Rx0/Rx=
1 xcorr peak at index 115 with phase 12.9<br>Test 9: freq =3D 2450.0 MHz<br=
>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -121.8<br>=C2=A0 Rx0/Rx1=
 xcorr peak at index 115 with phase -95.8<br>Test 10: freq =3D 2460.0 MHz<b=
r>=C2=A0 Rx0/Tx0 xcorr peak at index 108 with phase -58.7<br>=C2=A0 Rx0/Rx1=
 xcorr peak at index 115 with phase 12.9<br>&gt;&gt; <br></span></div><div>=
<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Mar 19, 2020 at 4:21 PM Lukas Haase &lt;<a href=3D"mailto:lukas=
haase@gmx.at">lukashaase@gmx.at</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><div style=3D"font-family:Verdana;fon=
t-size:12px"><div>Hi Rob,</div>

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
	<li><span style=3D"background:unset;background-blend-mode:unset;border:uns=
et;border-radius:unset;display:unset;float:unset;clear:unset;vertical-align=
:unset;overflow:unset;isolation:unset;break-after:unset;break-before:unset;=
break-inside:unset;columns:unset;column-fill:unset;column-rule:unset;column=
-span:unset;opacity:unset;mix-blend-mode:unset;font:unset;font-synthesis:un=
set;writing-mode:unset;text-orientation:unset;image-orientation:unset;borde=
r-collapse:unset;empty-cells:unset;caption-side:unset;border-spacing:unset;=
color:unset;text-transform:unset;text-indent:unset;word-break:unset;text-ju=
stify:unset;text-align-last:unset;text-align:unset;letter-spacing:unset;wor=
d-spacing:unset;white-space:pre-wrap;text-emphasis:unset;line-break:unset;t=
ext-combine-upright:unset;text-underline-position:unset;list-style:unset;qu=
otes:unset;margin:unset;outline:unset;padding:unset;width:unset;min-width:u=
nset;max-width:unset;height:unset;min-height:unset;max-height:unset;box-siz=
ing:unset;object-fit:unset;object-position:unset;table-layout:unset;text-ov=
erflow:unset;text-decoration:unset;ime-mode:unset"><a href=3D"https://snipb=
oard.io/YFgIKs.jpg" target=3D"_blank">https://snipboard.io/YFgIKs.jpg</a></=
span> <span style=3D"background:unset;background-blend-mode:unset;border:un=
set;border-radius:unset;display:unset;float:unset;clear:unset;vertical-alig=
n:unset;overflow:unset;isolation:unset;break-after:unset;break-before:unset=
;break-inside:unset;columns:unset;column-fill:unset;column-rule:unset;colum=
n-span:unset;opacity:unset;mix-blend-mode:unset;font:unset;font-synthesis:u=
nset;writing-mode:unset;text-orientation:unset;image-orientation:unset;bord=
er-collapse:unset;empty-cells:unset;caption-side:unset;border-spacing:unset=
;color:unset;text-transform:unset;text-indent:unset;word-break:unset;text-j=
ustify:unset;text-align-last:unset;text-align:unset;letter-spacing:unset;wo=
rd-spacing:unset;white-space:pre-wrap;text-emphasis:unset;line-break:unset;=
text-combine-upright:unset;text-underline-position:unset;list-style:unset;q=
uotes:unset;margin:unset;outline:unset;padding:unset;width:unset;min-width:=
unset;max-width:unset;height:unset;min-height:unset;max-height:unset;box-si=
zing:unset;object-fit:unset;object-position:unset;table-layout:unset;text-o=
verflow:unset;text-decoration:unset;ime-mode:unset"><a href=3D"https://snip=
board.io/YFgIKs.jpg" target=3D"_blank">https://snipboard.io/YFgIKs.jpg</a><=
/span> <span style=3D"background:unset;background-blend-mode:unset;border:u=
nset;border-radius:unset;display:unset;float:unset;clear:unset;vertical-ali=
gn:unset;overflow:unset;isolation:unset;break-after:unset;break-before:unse=
t;break-inside:unset;columns:unset;column-fill:unset;column-rule:unset;colu=
mn-span:unset;opacity:unset;mix-blend-mode:unset;font:unset;font-synthesis:=
unset;writing-mode:unset;text-orientation:unset;image-orientation:unset;bor=
der-collapse:unset;empty-cells:unset;caption-side:unset;border-spacing:unse=
t;color:unset;text-transform:unset;text-indent:unset;word-break:unset;text-=
justify:unset;text-align-last:unset;text-align:unset;letter-spacing:unset;w=
ord-spacing:unset;white-space:pre-wrap;text-emphasis:unset;line-break:unset=
;text-combine-upright:unset;text-underline-position:unset;list-style:unset;=
quotes:unset;margin:unset;outline:unset;padding:unset;width:unset;min-width=
:unset;max-width:unset;height:unset;min-height:unset;max-height:unset;box-s=
izing:unset;object-fit:unset;object-position:unset;table-layout:unset;text-=
overflow:unset;text-decoration:unset;ime-mode:unset"><a href=3D"https://sni=
pboard.io/YFgIKs.jpg" target=3D"_blank">https://snipboard.io/YFgIKs.jpg</a>=
</span> That&#39;s so nice, thank you!! My code is here: <a href=3D"http://=
paste.ubuntu.com/p/MbCJfPGzYW/" target=3D"_blank">http://paste.ubuntu.com/p=
/MbCJfPGzYW/</a> . I&#39;m not sure if you have gnuradio(and QT) installed =
but if yes, simply &quot;python2 switch_on_click.py&quot; should do. Let me=
 quickly elaborate how it works:
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
<div name=3D"quote" style=3D"margin:10px 5px 5px 10px;padding:10px 0px 10px=
 10px;border-left:2px solid rgb(195,217,229)">
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

<div name=3D"quoted-content">
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
</div></div></div>
</blockquote></div></div>

--0000000000006284ab05a13b1bcb--


--===============1640887009392694165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1640887009392694165==--

