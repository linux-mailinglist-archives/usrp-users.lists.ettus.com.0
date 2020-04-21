Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 174001B1B11
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 03:08:21 +0200 (CEST)
Received: from [::1] (port=33930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQhOa-0005xV-Dj; Mon, 20 Apr 2020 21:08:16 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:37177)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jQhOW-0005rE-2L
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 21:08:12 -0400
Received: by mail-qk1-f173.google.com with SMTP id s63so12950916qke.4
 for <usrp-users@lists.ettus.com>; Mon, 20 Apr 2020 18:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=mZv5eQt1SJ4VjJxoKvoFv/K5OGboo01Dqn9G+Uy8/5k=;
 b=Tivu+/JqWspm9CkdGVqcwjjV98YulemwOgGiBeUEiwc4vaLJYBvIeELV+PbgS2hWul
 IZwldsYN5SC0gQ6fGsnIwoZ0JMZ+hLZtHwZVA36bMYGD6koAGPWdgC08Hjj9dUFI0pib
 Q61PkyC8eLa7EBiNpc5PxJZXpi47DhSwI2emUZEJBtDmWyoGnS6uDHf26hPf2NYzkZWZ
 XeflC+DyjRYKw0A3lKwuQ0OP4LA7dHaKYaYct4VRmKBKNRFsBi0Hr1tJCgyvb3PKALqK
 2IcUYfTbXYKXfOsMDTh5RG93XzRmcIpStIiAoHdxlNITdq6nqhkXPzJ7GzXOh71U6C/F
 ycLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=mZv5eQt1SJ4VjJxoKvoFv/K5OGboo01Dqn9G+Uy8/5k=;
 b=XwxCOSez4W1esGLWzcpo9Qkg5h92DSKgERSncSi18RCWscwt0FtymDPLOYykhNf7Zs
 RCBrnSX973E6cNOc7TGSDc5YtzZnei3gkW3y/OHFB2ogOmxBFY0GZ/llXc26sZ+2gEPO
 o7LBIqgav+IJ8AT39uRfJD2rE4BZFv1hToTXQFZIcBXpV6BDlZtEiq+q17sY7BbtsqEn
 R6jvjlEMbZo8DfUqYE92sScyTRckauprpKcUho7yJXbn6faqCUIvmQXByVW9wTWPovf0
 2OZZF4AvYjg9oShLAoAIqn3XFRZ3qoMVul2rjx7YQNooUa/85GxAFooxpmb8cOABlo5U
 RHKA==
X-Gm-Message-State: AGi0PuYzdz+LgBb2Wdt1cDyhvK7od08pxrP7mj2EO/C32Hq10GZjgpjk
 h+gGPGIA/FFps4SrMc8DT0iukX3Pcl4=
X-Google-Smtp-Source: APiQypIyqXp8mlqoomkaM50zy5FzQuFuvn4uSisio93EiNtfHFvpVq0Ncyu5lSgQ60y8L3RUpbPWcw==
X-Received: by 2002:a37:58a:: with SMTP id 132mr17936887qkf.303.1587431250518; 
 Mon, 20 Apr 2020 18:07:30 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.googlemail.com with ESMTPSA id q27sm886068qkn.7.2020.04.20.18.07.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 Apr 2020 18:07:30 -0700 (PDT)
Message-ID: <5E9E4751.1090606@gmail.com>
Date: Mon, 20 Apr 2020 21:07:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>, usrp-users@lists.ettus.com
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
In-Reply-To: <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 04/20/2020 12:33 PM, Lukas Haase wrote:
> Hi Marcus,
>
>> On 04/19/2020 09:26 PM, Lukas Haase via USRP-users wrote:
>>> Hi,
>>>
>>> https://kb.ettus.com/UBX#Noise_Figure lists 2-3dB noise figure, UBX_Data_Sheet.pdf 2-4dB for UBX-160 (at 915 MHz).
>>>
>>> I connect a 50 Ohm load to RX and create a simple gnuradio application with USRP Source that calculates the RMS value of the sampled data (and plots the noise in time domain).
>>> samp_rate = 5 MHz.
>>> RX Gain = 0 dB.
>>>
>>> The value is 0.000113 RMS.
>>> The time domain waveforms look a bit like quantization noise.
>>>
>>> I repeat the experiment, this time with RX Gain value set to 37.5dB.
>>> The value is 0.000841 RMS.
>>>
>>> According to https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf, NF=2-3dB for 37.5dB gain and ~23dB for 0dB gain. The high gain value coincides with the values from the datasheet above.
>>>
>>> Question 1: Is the reason that for 0dB it looks like quantization noise, that the noise is smaller than LSB so I am effecively seeing the ADC noise?
>>>
>>> Question 2: Is the ADC quantixation noise the main reason for the difference in NF? (Note: I am familiar with Friis' equation)
>>>
>>> Question 3: The noise difference for both cases is 20*log10(0.000841/0.000113)=17.43dB. According to the measurement PDF it should be ca. 23-3=20dB. The difference is ~2-4dB. Is this just measurement uncertainty/part-to-part mismatch or is something wrong with my approach?
>>>
>>> Question 4: I repeat the last experiment by setting the "Ch0 Bandwidth [Hz]" to 0 (default), 5e6 and 1e6. I would expect that my rms value decreases by a factor of sqrt(2) for each halfing of bandwidth. However, the value always stays around 0.000841 RMS, regardless of the bandwidth value. Why?
>>>
>>> Question 5: According to theory, my captured signal is -174 + NF + 10*log10(BW) = -174+3+10*log10(5e6)=-104dBm. Is it correct that my 0.000841 corresponds to -104dBm input power? (If not, why not?). Or differently, -104dBm input power corresponds to 20*log10(0.000841 / 1) = -61.5dBFS ?
>>>
>>> Thank you,
>>> Lukas
>>>
>> There'll be quantization noise, certainly.
>>
>> But RF systems with variable gain use variable attenuators, and that
>> attenuation value is directly added to the noise figure of the stage that
>>     follows it.
>>
>> Now the magnitude of this effect obviously depends on where that
>> attenuator is placed in the gain chain.    A 40dB attenuator after a 20dB
>>     gain means that the 40dB of hoise is only "washed out" by the 20dB of
>> the previous stage(s).
> Yes, that makes sense.
>
> According to the schematics (UBX160 for 10MHz-1.5 GHz), there is one LNA (MGA-62563), one 6-bit attenuator and another gain (NBB-400). These three can be lumped together having a programmable gain of 0...37.5dB and a certain NF (as a function of gain).
>
> It follows from Friis':
>
> Ftot = 1 + (Flumped - 1) + (Fadc-1)/(Glumped)
>
> I think what is in UBX-without-UHD-corrections.pdf would be Ftot (total measured noise figure).
>
> With 0dB RX gain: Ftot=Flumped+Fadc-1. Now since the noise looks like quantization noise it looks like Ftot~Fadc=23dB. That would make sense (generally ADCs have huge noise figures).
>
> With 37.5dB gain: Ftot = 1 + (Flumped - 1) + (Fadc-1)/(5600) ~ 1 + (Flumped - 1) = Flumped = 2dB. Since the noise looks less like quantization noise it seems that the actual thermal noise is amplified now beyond the ADC quantization noise and I am actually seeing thermal noise (as opposed to the 0dB case). Note that an ADC noise figure includes quantization noise!
>
> My question was if this is correct or if I am missing something (Questions 1-3).
>
>> It is entirely normal and conventional to quite noise figures at
>> different gains settings precisely because of this architectural necessity.
> Yes.
>
>> Using a purely-analytic and numerical approach to determining the
>> magnitude of an input signal, given and intervening chain of
>>     RF bits and pieces, whose noise figure and gain have uncertainties,
>> is what we call a "state of sin".  You MUST calibrate with a known
>>     signal source over your expected run-time parameter space.  It's the
>> only way.  It's the way laboratory instruments are routinely calibrated.
>>     Using "datasheet analysis" which is basically what you're doing
>> above, leads to results that cannot be trusted to any degree of certainty.
> Unfortunately I do not have a signal generator at hand or anything with which I could create a known input signal.
> But that again was not really my question. If number are off by a few dB *because* of uncertainty/part-to-part mismatch (as I wrote) that's OK.
It is precisely because of accumulated uncertainty that a "datasheet RF 
chain analysis" for deriving precision estimates is doomed to failure.
    A well-matched resistor at ambient produces -174dBm/Hz at 25C. At 
higher gain settings, you should be able to see changes in the
   temperature of the resistor based on this.
> My question is if my approach/understanding is right.
>
> In particular I do not understand Question 4 (why does noise not reduce if I reduce bandwidth).
If you're varying *analog* bandwidth, rather than sampling rate, be 
aware that UBX doesn't have variable analog bandwidth.  It's always fixed.


>
> Furthermore, I'd be interested if Question 5 is conceptually correct.
Conceptually, I don't see any problem with it, but it very-squarely 
enters  "consider a spherical cow" territory.  You CANNOT use a purely
   arithmetic analysis, due to uncertainties.   I would, in fact, 
encourage you to acquire a decent broad-band, calibrated, noise source for
   you lab so that you can do Y-factor analysis, if for no other reason 
than to satisfy yourself that the noise equations work.


>
> Lukas
>
>
>
>
>
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
