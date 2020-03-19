Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA5418B9A8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 15:44:50 +0100 (CET)
Received: from [::1] (port=54676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEwPd-0000M2-Ex; Thu, 19 Mar 2020 10:44:45 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:32858)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jEwPZ-0000IN-Vz
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 10:44:42 -0400
Received: by mail-oi1-f176.google.com with SMTP id r7so2959700oij.0
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 07:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FAoNmq+p412t5E2HmFG+VDbN6XecOTK6ayavrOsK0Ws=;
 b=Bpo44eWFvYrp/vhWmrAG03HB68zb8dt8DhUO13FQGTy2SroStgeTj5dBrTTH87shpL
 yPPH0+5Zq3jW53FLz/L34xFbdhSYfGN0yQSGnJJjSF+5lGtcHU98jF9MbvcRLrm8uWj2
 05ZEusSA7FpHhR4weUrxK8f9tiHV27oJSYJwFWZtcSi2zUWxoX2I+WemcVBU/pa5iwYE
 fp+gGkJLdrSS0D7A/V/Y20WeZ6HfGZ/miG1PZkiSlV4QAxcXhibok/3034V2JrBdxQ/t
 nqAdVLnOl4A5yPZt1fMJ3opkWeQHQO/J7NWBKNfCCbnRVq+YSzvgiLL5HkrR9tH+Ighd
 8vNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FAoNmq+p412t5E2HmFG+VDbN6XecOTK6ayavrOsK0Ws=;
 b=jNv0o04jBH6458Nz3rWLl/JqhNKANCcFbVfr2N+dkUm4RddnU3ocCyfmG3Focik2F9
 3bkDsNJ24Has65wI9GorD7M4Cpai2HmOgOJoa9VnKltsy0vli82NYb/1LXjkrc3K+gI0
 bHSnsnB9zkZSGzDCOnvRSPHzDdh5/G1gPmcZMzyX19U6oQxNdWoV0IjmJLmvFg0E/vHy
 kmbNA9jF/gpuFvsJTdL7tBJD/wIsLavTmfAZCkExzngxGstUPm3tIc2H0S3MD493wJJI
 XYyeUYpmC6SoPSvo4X6fv3wbrj4zmoPgM+HxhUWNQFawvstmf7B34wY/dbAKGYZvXkig
 7cgg==
X-Gm-Message-State: ANhLgQ12WrWWnN9UsmYMIJ+WO4IYWkVRbNzhD/vOsJ0Bu97wYqWWWKYJ
 BkzINvosgT5o6yTodTD/L22JhCr5dLoYYy6DMbf4JA==
X-Google-Smtp-Source: ADFU+vtmJ0CEkF24R6+7Y9phtcdxAz/dowXW4IdUQAdnKVFtbmTX/4XwGTd2PIGSgDDvwkUmTgLNHj97tpNtXftsQnA=
X-Received: by 2002:aca:ef82:: with SMTP id n124mr2499646oih.73.1584629041001; 
 Thu, 19 Mar 2020 07:44:01 -0700 (PDT)
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
In-Reply-To: <trinity-67ab4cfd-a450-4253-8edf-2d22a808d058-1584575179099@3c-app-gmx-bap69>
Date: Thu, 19 Mar 2020 10:43:48 -0400
Message-ID: <CAB__hTRoRNft0M8VCFGDS0ytLGbq0Fz48Zych-U5UD3jcutNzA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6638449204607439096=="
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

--===============6638449204607439096==
Content-Type: multipart/alternative; boundary="00000000000017365f05a1363398"

--00000000000017365f05a1363398
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukas,
So, the conclusion is that your Rx0-to-Rx1 relative phase is nearly
constant such that it seems that both Rx0/Rx1 are phase coherent and
Tx0/Tx1 are phase coherent.  But, phase from Tx-to-Rx is random.  Please
correct me if that is wrong.

I have a few comments:

   - How do you measure/calculate the relative phase?
   - Can you send me the full Python code to look at?  As I mentioned
   previously, I am not too good at gnuradio/Python, but I might be able to
   spot something.
   - As to your question, I always use synchronous measurements.  And, I'm
   confident that my Rx-to-Rx phase is coherent.  But, I haven't really loo=
ked
   at Tx-to-Rx in a while so I will do so later today.  Here are the steps =
I
   plan to take:
      1. Connect Tx0 to Rx1.  Note that there is a pretty strong leakage
      signal from Tx0 to Rx0 so I don't really need to provide a physical
      connection in order to get a signal on Rx0.  The signal
attenuation in this
      leakage path is approx 40 dB so it is not too much different than the
      signal level I will receive on Rx1 if I use an external 30 dB attenua=
tor.
      2. Set Rx and Tx frequency to freq 1
      3. Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for
      freq 1
      4. Set Rx and Tx frequency to freq 2
      5. Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for
      freq 2
      6. Repeat steps 2-5 a few times to ensure that the measurements are
      repeatable
   - Questions: what should I use for freq 1 and freq 2?  What waveform are
   you transmitting?  What sample rates for Tx and Rx?

Rob



On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> I think the issue is really having two usrp_multi devices with timed
> commands and same timestmap or similar. From your tests below:
>
> 1.) I can *confirm *that the relative phase between two RX in your
> suggested test is always the same! In fact, it is always 4.56 rad, even
> across restarts and for different frequencies! That somewhat makes sense
> because the phase offset is now only dependent on the difference between
> the two channels (fixed) and cable lengths from the splitter (fixed). I
> verified by removing the timed command on usrp source, the phase offset
> becomes random after each retune. Of course, this is independent of TX
> tuning (timed vs. not). For reference, this is the code used:
>
>         tune_req_rx =3D uhd.tune_request()
>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>         tune_req_rx.dsp_freq =3D -dsp_freq
>         tune_req_tx =3D uhd.tune_request()
>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>         tune_req_tx.dsp_freq =3D dsp_freq
>
>         now =3D usrp_sink.get_time_now()
>         when =3D now + uhd.time_spec(1.0)
>
>         usrp_sink.set_command_time(when)
>         usrp_source.set_command_time(when)
>         res1 =3D usrp_sink.set_center_freq(tune_req_tx)          # TX
>         res2 =3D usrp_source.set_center_freq(tune_req_rx, 0)  #RX1
>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 1)  #RX2
>         usrp_sink.clear_command_time()
>         usrp_source.clear_command_time()
>
> 2.) I also tried your second suggestion. Before reading on, you wanna
> guess what the outcome is?
> I connected "TX/RX" to "RX2" on UBX #1 (TX1 --> RX1) and "TX/RX" to "RX2"
> on UBX #2 (TX2 --> RX2). In absence of a second 30dB attenuator I used tw=
o
> antennas closely spaced together. For reference, my code looks now like:
>
>         tune_req_rx =3D uhd.tune_request()
>         tune_req_rx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>         tune_req_rx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>         tune_req_rx.dsp_freq =3D -dsp_freq
>         tune_req_tx =3D uhd.tune_request()
>         tune_req_tx.rf_freq_policy =3D uhd.tune_request.POLICY_NONE
>         tune_req_tx.dsp_freq_policy =3D uhd.tune_request.POLICY_MANUAL
>         tune_req_tx.dsp_freq =3D dsp_freq
>
>         now =3D usrp_sink.get_time_now()
>         when =3D now + uhd.time_spec(1.0)
>
>         usrp_sink.set_command_time(when)
>         usrp_source.set_command_time(when)
>         res1 =3D usrp_sink.set_center_freq(tune_req_tx, 0)     # TX1
>         res2 =3D usrp_sink.set_center_freq(tune_req_tx, 1)     # TX2
>         res3 =3D usrp_source.set_center_freq(tune_req_rx, 0) # RX1
>         res4 =3D usrp_source.set_center_freq(tune_req_rx, 1) # RX2
>         usrp_sink.clear_command_time()
>         usrp_source.clear_command_time()
>
> I again look at the *relative phase* of RX1 and RX2 (obtained by dividing
> the two) and guess what: Also now the relative phase stays constant! (Thi=
s
> time it actually slightly varies from 3.0 rad to 3.7 rad between two
> different frequencies).
> What does that mean? I think it means that TX must be tuned coherently an=
d
> RX must be tuned coherently, i.e., timed commands generally work for
> multiple TX's and multiple RX's *individually*. Do I get that right?
>
> What doesn't seem to work is RX+TX *together*.
>
> I am very desperately asking if you had coherent TX+RX setup working at
> any point or know somebody who did. It would be so much worth to know if
> this is something that never worked to begin with or if I'm just doing
> something wrong. On the other hand I don't want to believe being the only
> person on the planet having tried TX+RX phase coherent operation :-/
>
> Any other further suggestions on how to continue debugging with the above
> in mind would be helpful too.
>
> In my opinion there are two options left:
> 1.) There is still a nondeterministic delay between the TX and RX timed
> commands (to my understanding, even a constant delay would result in
> coherent phase)
> 2.) While the phase accumulators in RX are set to the same values (and in
> TX as well), they may be set to a different, random value.
>
> However, I don't really know how to test these.
>
> Thanks,
> Lukas
>
>
> *Gesendet:* Freitag, 13. M=C3=A4rz 2020 um 12:27 Uhr
> *Von:* "Rob Kossler" <rkossler@nd.edu>
> *An:* "Lukas Haase" <lukashaase@gmx.at>
> *Cc:* "Marcus D Leech" <patchvonbraun@gmail.com>, "
> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> *Betreff:* Re: [USRP-users] USRP X310 ignored DSP retuning on TX when
> using a timed command
> Ok, great.  I am trying to think of ways to now add the phase
> measurement.  Ideas...
>
>    - In order to get consistent phase, you would need to tune Rx and Tx
>    DSP at the same time (rather than below where you are only tuning one =
of
>    them).  So, assuming that this will not produce consistent phase resul=
ts,
>    then maybe try the following idea...
>    - If you want to check just Rx DSP tuning (with fixed Tx DSP tuning),
>    you could try a 2 channel Rx measurement where the Tx is split externa=
lly
>    with 1:2 splitter in order to drive both Rx0 and Rx1.  Then, measure t=
he
>    relative phase Rx0/Rx1 and then tune back and forth between two Rx DSP
>    freqs to see if the relative phase on Rx remains constant.  If so, thi=
s
>    would give you good confidence that Rx DSP tuning is indeed happening
>    synchronously
>    - Assuming that the Rx IS synchronous in the step above (perhaps a bad
>    assumption, but here goes), you could then check TX DSP tuning (with f=
ixed
>    Rx DSP tuning) by using two Tx and two Rx channels with Tx0 connected =
to
>    Rx0 and Tx1 connected to Rx1.  At this point we are confident that Rx =
DSP
>    tuning is synchronous so any synchronous misbehavior would imply a Tx =
sync
>    problem.
>
> Sorry I can't think of better ideas.
> Rob
>
> On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase <lukashaase@gmx.at> wrote:
>
>> Hi Rob,
>>
>> 1.) yes, works(*)
>> 2.) yes, works(*)
>>
>> (*): qualitatively. I set the timed command to "get_current_time() +
>> uhd.time_spec(2.0)" and I see the chance 2 seconds after my click on the
>> screen. I cannot (do not know how) check if it actually happens at
>> sample-precicse location.
>>
>> Great, any ideas to simplify the setup would nice. I just don't know how
>> I could continue to debugging the phase.
>>
>> Best,
>> Luke
>>
>>
>> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr
>> Von: "Rob Kossler" <rkossler@nd.edu>
>> An: "Lukas Haase" <lukashaase@gmx.at>
>> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "
>> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when usin=
g
>> a timed command
>>
>> Thanks Lukas,
>> I wanted to confirm that you did not have an older version of FPGA
>> firmware because there was a DDC/DUC bug fix[
>> https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69=
b1c6798771e6d]
>> related to phase.  However, the version you provided with uhd_usrp_probe
>> confirms that you have the bug fix included.  So, this is not the proble=
m.
>>
>> From what you said, I assume that you can successfully do the following:
>> 1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not
>> change TX RF) and you can see the frequency change at the specified comm=
and
>> time (i.e., if you specify the command time 1 sec in the future, the cha=
nge
>> does not occur until 1 sec in the future).
>> 2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can se=
e
>> the frequency change at the specified command time.
>>
>> I am trying to simplify the issue by removing RF tuning completely and b=
y
>> tuning only 1 of Rx/Tx at a time.  Perhaps this will help lead to the
>> answer.
>> Rob
>>
>>
>>
>> On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase <lukashaase@gmx.at[mailto:
>> lukashaase@gmx.at]> wrote:Hi again Rob,
>>
>> Yes, I confirm:
>>
>> 1.) Finally I get the commands to execute at the same time (TX and RX
>> individually and both at the same time)
>> 2.) Yes, the phase is random after each retune, even when I retune back
>> to the same frequency
>> 3.) (2) is only true if it includes *DSP* retuning. With naalog retuning
>> (+integer-N retuning) I get phase coherence, as expected.
>>
>> I actually expected the PLL retuning much more challenging than the DSP
>> retuning but for some reason it seems to be the opposite...
>>
>> Thanks,
>> Lukas
>>
>>
>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000017365f05a1363398
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Lukas,<div>So, the conclusion is that =
your Rx0-to-Rx1 relative phase is nearly constant such that it seems that b=
oth Rx0/Rx1 are phase coherent and Tx0/Tx1 are phase coherent.=C2=A0 But, p=
hase from Tx-to-Rx is random.=C2=A0 Please correct me if that is wrong.=C2=
=A0=C2=A0</div><div><br></div><div>I have a few comments:</div><div><ul><li=
>How do you measure/calculate the relative phase?</li><li>Can you send me t=
he full Python code to look at?=C2=A0 As I mentioned previously, I am not t=
oo good at gnuradio/Python, but I might be able to spot something.</li><li>=
As to your question, I always use synchronous measurements.=C2=A0 And, I&#3=
9;m confident that my Rx-to-Rx phase is coherent.=C2=A0 But, I haven&#39;t =
really looked at Tx-to-Rx in a while so I will do so later today.=C2=A0 Her=
e are the steps I plan to take:</li><ol><li>Connect Tx0 to Rx1.=C2=A0 Note =
that there is a pretty strong leakage signal from Tx0 to Rx0 so I don&#39;t=
 really need to provide a physical connection in order to get a signal on R=
x0.=C2=A0 The signal attenuation in this leakage path is approx 40 dB so it=
 is not too much different than the signal level I will receive on Rx1 if I=
 use an external 30 dB attenuator.</li><li>Set Rx and Tx frequency to freq =
1</li><li>Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for f=
req 1</li><li>Set Rx and Tx frequency to freq 2</li><li>Measure and note th=
e relative phase for Rx0/Tx0 and Rx1/Tx0 for freq 2</li><li>Repeat steps 2-=
5 a few times to ensure that the measurements are repeatable</li></ol><li>Q=
uestions: what should I use for freq 1 and freq 2?=C2=A0 What waveform are =
you transmitting?=C2=A0 What sample rates for Tx and Rx?</li></ul><div>Rob<=
/div></div><div><br></div></div><div dir=3D"ltr"><div dir=3D"ltr"><br></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Mar 18, 2020 at 7:47 PM Lukas Haase via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv><div style=3D"font-family:Verdana;font-size:12px"><div>Hi Rob,</div>

<div>=C2=A0</div>

<div>I think the issue is really having two usrp_multi devices with timed c=
ommands and same timestmap or similar. From your tests below:</div>

<div>=C2=A0</div>

<div>1.) I can <strong>confirm </strong>that the relative phase between two=
 RX in your suggested test is always the same! In fact, it is always 4.56 r=
ad, even across restarts and for different frequencies! That somewhat makes=
 sense because the phase offset is now only dependent on the difference bet=
ween the two channels (fixed) and cable lengths from the splitter (fixed). =
I verified by removing the timed command on usrp source, the phase offset b=
ecomes random after each retune. Of course, this is independent of TX tunin=
g (timed vs. not). For reference, this is the code used:</div>

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

<div>I again look at the <strong>relative phase</strong> of RX1 and RX2 (ob=
tained by dividing the two) and guess what: Also now the relative phase sta=
ys constant! (This time it actually slightly varies from 3.0 rad to 3.7 rad=
 between two different frequencies).</div>

<div>What does that mean? I think it means that TX must be tuned coherently=
 and RX must be tuned coherently, i.e., timed commands generally work for m=
ultiple TX&#39;s and multiple RX&#39;s <strong>individually</strong>. Do I =
get that right?</div>

<div>=C2=A0</div>

<div>What doesn&#39;t seem to work is RX+TX <strong>together</strong>.</div=
>

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
</div></div></div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</div>

--00000000000017365f05a1363398--


--===============6638449204607439096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6638449204607439096==--

