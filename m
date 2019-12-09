Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 764251177D9
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 21:59:01 +0100 (CET)
Received: from [::1] (port=46196 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieQ7M-0001WU-BE; Mon, 09 Dec 2019 15:58:56 -0500
Received: from mail-qt1-f174.google.com ([209.85.160.174]:35930)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ieQ7I-0001PZ-Qh
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 15:58:52 -0500
Received: by mail-qt1-f174.google.com with SMTP id k11so564607qtm.3
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 12:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=eniGAPXyOSan4ES52iGdrVHr9qQVepOz7ev0FAtgTwA=;
 b=jKqFL5ZJVwwcBqjpP6JVn0U31ZAR6FgT5pxN8hjYgQNRMJtimsHc623+k75AebsByD
 MeJ7SoGhKgZwoZgKLn5Ts7ZE1LQulhzPd4OihqlfHVWTAh6g12qgYJNO6okIJE42nMnF
 P4s7cNbcrgWfFXU80O4bn9YKGVTVriJ6weGIzD6FDBkVXVYL+7e3tkHYsNs10bPYZnT9
 aU+Wp9wa2HlJ/msHvIgPpoSL3UDyEQdp5q5M1+G8O8SIJyVuRmvypqUQucG0wG599Ovu
 mRs373FJWjxbtM88/+XT9hzrCYHXizz/hVs+zvbSmWf30iXTBT3rt+6hexbRc7goANXZ
 AUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=eniGAPXyOSan4ES52iGdrVHr9qQVepOz7ev0FAtgTwA=;
 b=TaRYFfA0Sjl7lTEGGDJtfNlWJuy+URoRAswQn4K+akWbr8gT640Wwr58SC51+75rS/
 yH4J0gQCR5glly/kmxEdEiompng/FyL+YkJQCxMqSDSms9jbRJrXGP5o013LAUkzPL3B
 bvaQqHb90rco23tsB63sNNmLb151FLLUsQSBbB8q8xApSC+t3cqv3nE3DwuKrlcu0l7Z
 /blGBEJZrjf5wm9xlhuXZ8L+u3nbBJVx9XhQG0Y3SOdp0oyjmb4DKnBtqmGJkIpRoFil
 vIa+yYNZUlC0LUWEc4ae20lzr3MoiUuNXPo3r9vvJ6hH8+pUaQiGpek6LGVykQRupxHX
 za7Q==
X-Gm-Message-State: APjAAAVdex7OenzVAQsIbIPG/zwop7DWDVF7/AxtxYz4Gqn+ikDKTk2L
 t6J9GAYd55vnXYTsltxE3eGHctE3
X-Google-Smtp-Source: APXvYqwTPyLLtAKRC45b9bMK71E998H+t5QyfRNC/Df2M3BxG9fdnP4Mvc/MEXx37mzqXQEt7Vvc+w==
X-Received: by 2002:aed:20e5:: with SMTP id 92mr12961045qtb.294.1575925092190; 
 Mon, 09 Dec 2019 12:58:12 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id p35sm267333qtd.12.2019.12.09.12.58.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 12:58:11 -0800 (PST)
Message-ID: <5DEEB562.4030602@gmail.com>
Date: Mon, 09 Dec 2019 15:58:10 -0500
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
In-Reply-To: <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
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

On 12/09/2019 03:35 PM, Lukas Haase wrote:
> Hi Marcus,
>
>> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>
>> On 12/09/2019 03:11 PM, Lukas Haase wrote:
>>> No, I only have one RX channel at the moment.
>>> --> One TX @ f and one RX @ 2f.
>>> The phase relation between this TX+RX should stay constant/coherent once both TX+RX tune to a different f and back.
>>>
>>> Let me know if the setup is clear, otherwise I'll try to draw a block diagram/equations or I can also send the GRC screenshots.
>>>
>>> Thanks,
>>> Luke
>>>
>>>
>> You code shows two RX channels:
>>
>>           now = self.uhd_usrp_sink_0.get_time_now()
>>            self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
>>            self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))
>>
>>            self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
>>            self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)
>>            self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)
>>
>>            self.uhd_usrp_source_0.clear_command_time()
>>            self.uhd_usrp_sink_0.clear_command_time()
> Sorry for the confusion.
> You are right, there are 2 RX channels but I only use one of them.
>
>> So, you're measuring the phase-offset between the TX side and the RX
>> side at the 2nd harmonic, and expecting that phase relationship to be
>>     the same across re-tunes?
> Yes, this is exactly what I want.
>
>> I'm not sure that's possible.
> Why not?
>
> Conceptually it must be possible: The phase offset is only defined by the *relative* phase between RX/TX-LO.
>
> Let's assume that both RX + TX mixer are driven by the *same* LO but the RX side has an additional frequency doubler.
> Then the phase relationship is ALWAYS constant. By construction.
But, that's not the situation we find ourselves in with the hardware 
(including FPGA) in front of us.
>
> The USRP just makes things complicated because RX and TX are driven by different PLLs and allow their LO to be retuned separately. But ultimately both PLLs are driven by the same reference (to which phase they lock) so there must be a way to have a constant phase relationship.
Did you look at the reference I posted about Fractional-N vs Integer-N 
synthesis?  They behave very differently in this regard--the "phase reset"
   feature helps, but in this case, the UBX was never designed to 
maintain constant phase offsets between RX/TX (because this is a very very
   unusual case), PARTICULARLY ACROSS RETUNES.

Quite apart from what the PLL synthesizers are doing, there's the 
DDC/DUC within the FPGA, and they are driven by what amounts to a
   digital oscillator, and THOSE digital oscillators aren't shared, 
either.   Sharing phase constancy across TX/RX was never a design goal
   of the hardware.

Now, having said all that, it may be the case that there are specific 
configurations in which this can be made to work, and I'm in discussions
   with R&D about that.   Details like what the management policy is for 
the phase-accumulators in the DDC/DUC digital oscillators matters,
   along with hardware details like whether the RX and TX synthesizers 
shared a control bus or whether it's in parallel really matter, for example.


>
> Thanks,
> Luke
>
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
