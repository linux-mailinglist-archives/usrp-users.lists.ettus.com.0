Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC23B24E938
	for <lists+usrp-users@lfdr.de>; Sat, 22 Aug 2020 20:09:42 +0200 (CEST)
Received: from [::1] (port=35912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9XxS-0003ux-3c; Sat, 22 Aug 2020 14:09:38 -0400
Received: from mail-qv1-f46.google.com ([209.85.219.46]:37100)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k9XxO-0003o0-GD
 for usrp-users@lists.ettus.com; Sat, 22 Aug 2020 14:09:34 -0400
Received: by mail-qv1-f46.google.com with SMTP id y11so2058886qvl.4
 for <usrp-users@lists.ettus.com>; Sat, 22 Aug 2020 11:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=qIq/1M6PiLLMzApWkIEtRS5gjR0ioH/92h+q88J6hPE=;
 b=vh0SqYTIXwzVcPswlWKS8UyuSqWDHsQplfPCZ+LN3J02yxY186TakcTvzVIh7fFoIr
 367t1E8QqRMh5fsSlA1LaSaKxfayvkIOKaOsUrSKUbCwn17dJZvcHrDZ1LSqKIOPuAxt
 PBgJhMrJKhBMppFA2Ek4weeAl/89JBKG2gpETI75KKybC9ckVGVBKczzOjZ1WQ/GXYmX
 /imzDqQri6fgzvTLTLOmX0eU6AqK+Bmp/rYENI4yzwTR6foGbprmvyblDVugjUp3HPRB
 O1+nCoDb4AF2ZfR/qKIGIa0mRIX9OlK/wiNwmECnVn86u+5WgH0C0oUPsdWa6OS8xfBH
 33ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=qIq/1M6PiLLMzApWkIEtRS5gjR0ioH/92h+q88J6hPE=;
 b=EngUHK/b5jD2www0AKZS0PCsxwDKxXBzRdCsaNJVTZXnVEirUJKAtfokyGZeNoP0Wv
 VK0SwWYYkwo+/2dZs/KpWPrpfHRjddOL6dzQy/2ro4AIGnN96VZ04vjiCDiV2UHjIwBw
 iH8UFsQ92q6upahM69OC3vCryn16Sch8ssc7Y/8IZ+VQ0VdIjA5YPohKvWnlGSHeJaWA
 laxPdwVuBEC0bvcLBNu69UomUdc84dYnWqPPTqok+0N+Jq284ButfV91FzuIWaISAmmF
 BPnr/ptTNw160aSABV92Ws00jOLoiKEmTSHMWVcPCNY2uFn7Yn4IWa3A1f4B5wb8Myhg
 Rogw==
X-Gm-Message-State: AOAM533H7jeuFr6DJxTf1HsOv4wtJk7sUaeGOiUfWXSUd+UVED8JV2hg
 rTxDxvaupy+docsM0+W9RNMfI6Lp6o+h1A==
X-Google-Smtp-Source: ABdhPJyJcJiazKPoDN6e/Oj+ayrTpcEI5JP6Yyy/NDmujy4OUQI9HADbjcqJhOgahlsh5/IhkyZL3A==
X-Received: by 2002:ad4:518b:: with SMTP id b11mr7440179qvp.139.1598119733658; 
 Sat, 22 Aug 2020 11:08:53 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id o17sm6017272qtr.13.2020.08.22.11.08.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Aug 2020 11:08:53 -0700 (PDT)
Message-ID: <5F415F34.6020706@gmail.com>
Date: Sat, 22 Aug 2020 14:08:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com> <5F1719EB.6000400@gmail.com>
 <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com>
 <000901d67898$c6bf8290$543e87b0$@com>
In-Reply-To: <000901d67898$c6bf8290$543e87b0$@com>
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually
 increase delay
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
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

On 08/22/2020 11:27 AM, Prasad via USRP-users wrote:
> Hi Marcus,
>
> This delay is gradually increased and sometimes it goes beyond 0.5
> milliseconds.
> I think it is not like frequency error but the delay in receiving packet.
> So are we missing anything during the UHD API ?
>
> Thanks,
> Prasad.
Delay *as measured where?*  Relative delay between samples in the same =

buffer?  Please be more specific...


> -----Original Message-----
> From: Marcus M=FCller [mailto:marcus.mueller@ettus.com]
> Sent: Tuesday, July 21, 2020 11:07 PM
> To: usrp-users@lists.ettus.com; Prasad
> Subject: Re: [USRP-users] 1 Ts delay in USRP B210
>
> Hello Prasad,
>
> I second everything Marcus L said, and will add:
>
> In your first email you said this is about the UE.
>
> UE (user equipment) are normally things like phones. These don't have
> any great clocks of their own. They derive their clocks from that of the
> network.
>
> Sure, for prototyping, reducing the frequency error makes sense, but
> even if both your basestation (gNodeB in 5G jargon) and your UE have
> atomic clocks, they will be unsynchronized if either moves. Doppler!
>
> So, in the end, if you're not in the business of evaluating
> synchronization algorithms, you're probably requesting the wrong thing:
> Make your UE implementation extract frequency information from the
> received downlink signal (there's plenty of implicit and explicit info
> in LTE/5G for exactly that), and live with the oscillator you have - it
> only needs to be stable for short times. I'm almost certain that any
> smartphone will have a worse oscillator than your B210 has.
>
> Best regards,
> Marcus M
>
> On 21.07.20 18:38, Marcus D. Leech via USRP-users wrote:
>> On 07/21/2020 12:31 PM, Prasad wrote:
>>> Then how we can handle this drift in our 5G-NR stack by using
>>> /uhd_rx_streamer_issue_stream_cmd/?
>>>
>>> Or we should go with GPSDO/external clock?
>>>
>>> Thanks,
>>>
>> Well, since most users on here aren't experts on 5G stacks, me included,
>> I can't tell you what to do to your stack to handle
>>    clock drift.  But I WILL say that clock drift is an inevitable issue,
>> and as you get better clocks, the scale of that issue becomes
>>    smaller as you spend more money on better clocks.
>>
>> A built-in GPSDO would not be a bad investment if clock drift at a scale
>> of 0.8PPM is an issue for your implementation.
>>
>> Many digital demodulators implement algorithms for dealing with
>> clock-drift and imprecision on the rx side using PLLs and the like.
>>    But for 5G I have no idea how that would play out.
>>
>>
>>> *From:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
>>> *Sent:* Tuesday, July 21, 2020 9:56 PM
>>> *To:* Prasad; usrp-users@lists.ettus.com
>>> *Subject:* Re: [USRP-users] 1 Ts delay in USRP B210
>>>
>>> On 07/21/2020 12:25 PM, Prasad wrote:
>>>
>>>      We are using internal clock, don=92t use any GPSDO or external clo=
ck.
>>>
>>>      So for internal clock is this expected?
>>>
>>>      Thanks,
>>>
>>> The internal clock is specced to +/- 2PPM.   You're seeing much less
>>> than that, so it's within spec.
>>>
>>>
>>>
>>> *From:*USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On
>>> Behalf Of *Marcus D. Leech via USRP-users
>>> *Sent:* Tuesday, July 21, 2020 9:49 PM
>>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>>> *Subject:* Re: [USRP-users] 1 Ts delay in USRP B210
>>>
>>> On 07/21/2020 12:13 PM, Prasad via USRP-users wrote:
>>>
>>>      Soft reminder!
>>>
>>>      Thanks,
>>>
>>>      *From:*Prasad [mailto:kpras@trilcomm.com]
>>>      *Sent:* Monday, July 20, 2020 7:58 PM
>>>      *To:* 'usrp-users@lists.ettus.com
>>> <mailto:usrp-users@lists.ettus.com>'
>>>      *Cc:* 'Rao Yenamandra'
>>>      *Subject:* 1 Ts delay in USRP B210
>>>
>>>      Dear Team.
>>>
>>>      Hope you are doing well and safe.
>>>
>>>      We are bringing up our NR-5G UE stack with USRP B210.
>>>
>>>      If time permits, would you pls. reply to below concern with your
>>>      valuable information.
>>>
>>>      During the synchronization procedure, we observe atleast /=B1/1
>>>      /Ts/ (Sampling Time) drift in rx streamer in every  ~40ms time
>>> period.
>>>
>>>      Are we missing any time_spec during /uhd_rx_streamer_recv/ api or
>>>      in /uhd_tx_streamer_send/ ?
>>>
>>>      Master clock rate: 30.72e6
>>>
>>>      Sampling rate: 30.72e6
>>>
>>>      Carrier frequency: 3.8e9
>>>
>>>      We use one B210 to transmit time domain samples back to back and
>>>      others to receive.
>>>
>>>      Log snippet:
>>>
>>>      Init PSS detected with lag: /4469/ (/PSS detection offset from the
>>>      slot boundary/ )
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4469
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4469
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4469
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4470 =E01 Ts drift
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4470
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4470
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4471 =E01 Ts drift.
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4472=E01 Ts drift
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4472
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4472
>>>
>>>      sss has been detected
>>>
>>>      Init PSS detected with lag: 4484 =E012 Ts drift
>>>
>>>      sss has been detected
>>>
>>>      Thanks! in advance.
>>>
>>>      Regards,
>>>
>>>      Prasad.
>>>
>>> Are you just using the on-board reference clock, or using something
>>> like a GPS module?
>>>
>>> The drift you show is roughly 0.8PPM (if I've done my math correctly),
>>> which is well within spec for this board without a better reference
>>> clock.
>>>
>>>
>>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
