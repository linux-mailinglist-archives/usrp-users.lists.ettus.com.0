Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEAA117F0E
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 05:40:20 +0100 (CET)
Received: from [::1] (port=44358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieXJq-0003JN-Q6; Mon, 09 Dec 2019 23:40:18 -0500
Received: from mail-io1-f49.google.com ([209.85.166.49]:37246)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ieXJn-0003Fh-WD
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 23:40:16 -0500
Received: by mail-io1-f49.google.com with SMTP id k24so17368850ioc.4
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 20:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=aPPtwhNyJGBZ/Q9L5ybNXjmQPKYPw4PjWaPizITOQfk=;
 b=k+G2iTSNWTldSW2fWqP+q8fB5vmJmr5t5LZ9UTXp9E5+mUoyHWxkSMn6f/WtaLZ/tN
 cIPvQOgkSIt7zBASCknbK4u0oL0y2QnlmAl3Q1/jZtu5WzP8T+wuPg+ztenBEau+jSzL
 qVNP7esH99mHHH+NtypE4UtAFwZjzx3VuxvPKfOS+TjQ5+HvR5Vg3OgQwoluD3zaQhJ5
 MnYSag6j1GVbohWvpWo1pQWyJxqNEz/a1eXBBE21d49SWHTyq3YcLR5lPgWyKmW32sVM
 UO9qJL1livLBx/4X1i4AIrIPJcVPpVJsEko39SmzLIImyGI9LyR5Z/mdsyNNBPeNOYuP
 9xqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=aPPtwhNyJGBZ/Q9L5ybNXjmQPKYPw4PjWaPizITOQfk=;
 b=Jj5u5txF6xjRmBj3ES4hL8P8YiwELk1yHndl5cMSo2opRcNopW+sYFafk53C2D2RIf
 gc3U1ZYm3sx+WVeC5/WdXUBpgtzQThCq5G3TkCJDm7m2yERwIdsv45n4s5Ad6h0Zdjrn
 or+5fcAwgcJ9hgccYewhwwHxNyAt/hQT9TbEb42IWe0Nlp5tQS5m6lG7KUBZizPzKoTC
 023GiQWzyV9sNKvFmgc2k+/8UcttdWn8DG1/t8NKTOobFnMFBsEemyqIHmFmSDA+eedn
 kFDfPZ2BNGgKHKUjaIArq9yeC9cewQUPF93KDdxU3E7E8pJ+lsuEXWBvD45BXj68k4It
 NR4Q==
X-Gm-Message-State: APjAAAU9P1CrEVznqLm49ROl+DdYy2aIb7j8OgEqkHPEU9YXnWVi7TK6
 lfq79isun9ktokXSLXYRE1A2iByK
X-Google-Smtp-Source: APXvYqzr5H8IjmwsCKN4JrAc1kBKv5Y0uMqsN6q2a9pvxGjDhhEF895t9zvAqHFamlls8L1yh4KR0A==
X-Received: by 2002:a05:6602:235b:: with SMTP id
 r27mr561444iot.51.1575952774967; 
 Mon, 09 Dec 2019 20:39:34 -0800 (PST)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id v7sm404393iom.58.2019.12.09.20.39.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 20:39:34 -0800 (PST)
Message-ID: <5DEF2185.5010308@gmail.com>
Date: Mon, 09 Dec 2019 23:39:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
 <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
 <5DEEAC89.60403@gmail.com>
 <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
 <5DEEB562.4030602@gmail.com>
 <trinity-459dbf7b-f04c-4912-9571-52b962a344fb-1575950607303@3c-app-gmx-bs45>
In-Reply-To: <trinity-459dbf7b-f04c-4912-9571-52b962a344fb-1575950607303@3c-app-gmx-bs45>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

On 12/09/2019 11:03 PM, Lukas Haase wrote:
> Hi Marcus,
>
>> Gesendet: Montag, 09. Dezember 2019 um 15:58 Uhr
>>
>> On 12/09/2019 03:35 PM, Lukas Haase wrote:
>>> Hi Marcus,
>>>
>>>> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>>>
>>>> On 12/09/2019 03:11 PM, Lukas Haase wrote:
>>>>> No, I only have one RX channel at the moment.
>>>>> --> One TX @ f and one RX @ 2f.
>>>>> The phase relation between this TX+RX should stay constant/coherent once both TX+RX tune to a different f and back.
>>>>>
>>>>> Let me know if the setup is clear, otherwise I'll try to draw a block diagram/equations or I can also send the GRC screenshots.
>>>>>
>>>>> Thanks,
>>>>> Luke
>>>>>
>>>>>
>>>> You code shows two RX channels:
>>>>
>>>>            now = self.uhd_usrp_sink_0.get_time_now()
>>>>             self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
>>>>             self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))
>>>>
>>>>             self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
>>>>             self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)
>>>>             self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)
>>>>
>>>>             self.uhd_usrp_source_0.clear_command_time()
>>>>             self.uhd_usrp_sink_0.clear_command_time()
>>> Sorry for the confusion.
>>> You are right, there are 2 RX channels but I only use one of them.
>>>
>>>> So, you're measuring the phase-offset between the TX side and the RX
>>>> side at the 2nd harmonic, and expecting that phase relationship to be
>>>>      the same across re-tunes?
>>> Yes, this is exactly what I want.
>>>
>>>> I'm not sure that's possible.
>>> Why not?
>>>
>>> Conceptually it must be possible: The phase offset is only defined by the *relative* phase between RX/TX-LO.
>>>
>>> Let's assume that both RX + TX mixer are driven by the *same* LO but the RX side has an additional frequency doubler.
>>> Then the phase relationship is ALWAYS constant. By construction.
>> But, that's not the situation we find ourselves in with the hardware
>> (including FPGA) in front of us.
>>> The USRP just makes things complicated because RX and TX are driven by different PLLs and allow their LO to be retuned separately. But ultimately both PLLs are driven by the same reference (to which phase they lock) so there must be a way to have a constant phase relationship.
>> Did you look at the reference I posted about Fractional-N vs Integer-N
>> synthesis?  They behave very differently in this regard--the "phase reset"
>>     feature helps, but in this case, the UBX was never designed to
>> maintain constant phase offsets between RX/TX (because this is a very very
>>     unusual case), PARTICULARLY ACROSS RETUNES.
> Yes, I reviewed it. Thanks for the reference, I did not know this about fractional-N PLLs.
> Do you know by any chance if the phase reset feature is implemented by the USRP or not (initially you suggest it has, above you suggest it may not).
>
>> Quite apart from what the PLL synthesizers are doing, there's the
>> DDC/DUC within the FPGA, and they are driven by what amounts to a
>>     digital oscillator, and THOSE digital oscillators aren't shared,
>> either.   Sharing phase constancy across TX/RX was never a design goal
>>     of the hardware.
> That makes sense too. I am still wondering why phase constancy betwene TX/RX would be such a "weird" goal.
> Yes, in many cases this phase rotation is readily divided out but in particular for fast frequency hopping systems it becomes hard. Or for phase based ranging systems. I mean, they exist, right?
>
> I see that the DDC/DUC are not shared. At least in principle it should be easy to synchronize them ... the beauty of a digital system (their digital clocks are shared).
>
> While I have worked with such systems in the past I am unfortunately new to gnuradio and USRP. Gnuradio is a steep learning curve on its own, these small details add significantly to my confusion.
>
>> Now, having said all that, it may be the case that there are specific
>> configurations in which this can be made to work, and I'm in discussions
>> with R&D about that.   Details like what the management policy is for
>> the phase-accumulators in the DDC/DUC digital oscillators matters,
>> along with hardware details like whether the RX and TX synthesizers
>> shared a control bus or whether it's in parallel really matter, for example.
> Any possible help is greatly appreciated!
>
>> Something that MAY help here is to use integer_n tuning:
>>
>>       treq=uhd.tune_request(my_frequency)
>>       treq.args=uhd.device_addr("mode_n=integer")
>>
>>       ...
>>
>>       ...set_center_freq(treq, 0)
>
> I translated this to gnuradio:
>
>      def set_fcenter(self, fcenter):
>          self.fcenter = fcenter
>
>          tune_resp_tx = self.uhd_usrp_sink_0.set_center_freq(fcenter, 0)
>          tune_resp_rx = self.uhd_usrp_source_0.set_center_freq(2*fcenter, 0)
>
>          tune_req_tx = uhd.tune_request(rf_freq=fcenter, rf_freq_policy=uhd.tune_request.POLICY_MANUAL,
>                 dsp_freq=tune_resp_tx.actual_dsp_freq, dsp_freq_policy=uhd.tune_request.POLICY_MANUAL)
>          tune_req_rx = uhd.tune_request(rf_freq=2*fcenter, rf_freq_policy=uhd.tune_request.POLICY_MANUAL,
>                 dsp_freq=tune_resp_rx.actual_dsp_freq, dsp_freq_policy=uhd.tune_request.POLICY_MANUAL)
>
>          tune_req_tx.args = uhd.device_addr("mode_n=integer")
>          tune_req_rx.args = uhd.device_addr("mode_n=integer")
>
>          now = self.uhd_usrp_sink_0.get_time_now()
>          self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
>          self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))
>
>          self.uhd_usrp_sink_0.set_center_freq(tune_req_tx, 0)
>          self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>          self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 1)
>
>          self.uhd_usrp_source_0.clear_command_time()
>          self.uhd_usrp_sink_0.clear_command_time()
>
>
> Unfortunately with these lines I loose the frequency altogether when retuning (without changing tune_req_tx.args/tune_req_rx.args things work): What I mean, I receive noise only. I do not physically have access to my testbench at the moment to verify where the frequency is tuned to, I just know that instead of receiving my signal I only receive noise.
>
>
> Thanks,
> Luke
>
>
You're using the MANUAL policy for BOTH DSP and RF.  Let the automatic 
"stuff" do its thing, with the only difference being integer-N tuning.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
