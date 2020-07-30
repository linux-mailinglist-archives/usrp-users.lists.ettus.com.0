Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BE0233754
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jul 2020 19:06:51 +0200 (CEST)
Received: from [::1] (port=51642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k1C12-0000uB-Ha; Thu, 30 Jul 2020 13:06:48 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:35031)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k1C0y-0000jN-6c
 for usrp-users@lists.ettus.com; Thu, 30 Jul 2020 13:06:44 -0400
Received: by mail-qk1-f176.google.com with SMTP id 11so26306318qkn.2
 for <usrp-users@lists.ettus.com>; Thu, 30 Jul 2020 10:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=biNFyRUDdAWju90yvTvIKk3HlPp4OWLzBEjbVaZ+fDE=;
 b=nXXSX02Z+foRZN18nonnmbJMbVgsdfTio3jbie70EeKwR0iTxAyt3nvkHBJQLOZDS+
 VkS4TBERAYEpBBpVl4tPKFmB7zPwq8F7zYzI9a24RZajcm8cqN1RpE6FcLKj1hmtegT2
 L37wD+SeFnuK9bcMHhcYKMt3cPfbLME/XZIaiv5Up31HLp4+HyA0J0RXPn4BL0TCxh0y
 OsCXUIpnlf/MmR9725sF96hIqQKr1g7lAYYNCsp1y6pkvwYoUmZAxdmGGjeBYm6E4DMt
 GuLznMJLKV5qGyxNdkOfLXbZWG/rYKAuKdUUCfJnAiqeF/AlyPFOShrBUnikZqG+GJiR
 dTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=biNFyRUDdAWju90yvTvIKk3HlPp4OWLzBEjbVaZ+fDE=;
 b=Her3Utjo0+wxW1auD5UUZ8A1j/aX2MVYeIGB+nLXip/GQrFS6qANsoCU4OM2fVa1wL
 Gp52PX8Pi32tesYf3ZK02awtlIrawrH8jYCBwwHQK3f0XpwpinmcUr8fmZW8RxwDVrfJ
 ePWBSzwsO/SvnPCPwqWbhvQQQgH1MElw+mW5TCKfTxW69SDuaqPaMyy4JKeZetCXhJC8
 hXT9R8qzkOCRdBxeOyt1dntcVuQltlerhdivsF3PoLS2yABpr1foeUhj0mg6cp/3qILm
 9NUiTjqUwKAsF1wMjnct9fv/j05F2oGKd1/WBG2OR3FcCiY5pWj2uH+ve6TaGicVUkCu
 fhYQ==
X-Gm-Message-State: AOAM531uqWIm4BR2aeJ3yMFQDj6q99XJdgMGueyIEjsKm2I/Sz6FSO7M
 7KkQJk2ZOjfApSX9UrMBdFbx0Dswqlg=
X-Google-Smtp-Source: ABdhPJx9Zs+RgkCPOHRqAgRQKpgC+infLK+P3fNMg5/CN+u8F6rGWZls4fwfvNPv+8yutoYFZhZPmQ==
X-Received: by 2002:ae9:ef8d:: with SMTP id d135mr117234qkg.477.1596128763247; 
 Thu, 30 Jul 2020 10:06:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id d46sm5060066qtk.37.2020.07.30.10.06.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jul 2020 10:06:02 -0700 (PDT)
Message-ID: <5F22FDF9.7000604@gmail.com>
Date: Thu, 30 Jul 2020 13:06:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com> <5F1719EB.6000400@gmail.com>
 <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com>
 <000001d66689$ec1d8a80$c4589f80$@com>
In-Reply-To: <000001d66689$ec1d8a80$c4589f80$@com>
Subject: Re: [USRP-users] [USRP B210] Very High Noise power at receiver
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

On 07/30/2020 11:56 AM, Prasad via USRP-users wrote:
> Soft reminder!.
>
> Thanks!
>
> -----Original Message-----
> From: Prasad [mailto:kpras@trilcomm.com]
> Sent: Wednesday, July 29, 2020 8:48 PM
> To: 'Prasad'; 'Marcus M=FCller'; 'usrp-users@lists.ettus.com'
> Subject: RE: [USRP-users] 1 Ts delay in USRP B210
>
> Hi Muller,
>
> Just a quick question.
> During our 5G-NR integration with USRP B210, we observe very high noise
> power at receiver.
> Is it expected behavior ?
> PBCH rsrp: -13.775554 dBm, SNR: -12.942591 dB, NOISE_POWER: -0.832963 dBm,
> rssi: 1.643662dBm.
>
> Applied gain in USRP:
> Tx Gain: 45
> Rx Gain: 45
> Transmit power:- 0dBm.
There's no way with a B210 with a TX gain of 45, you're getting 0dBm out =

the antenna.  The device can produce a maximum of about 10dBm, and
   with the TX gain range topping out at something like 80dB, your 35dB =

below the 10dBm point.   Similarly, the RX gain range is almost 80dB, so
   you've got the gain set for about 30dB of attenuation in the RX =

path.  You're using antennae or a direct connection?


>
> Regards,
> Prasad.
>
> -----Original Message-----
> From: Prasad [mailto:kpras@trilcomm.com]
> Sent: Wednesday, July 22, 2020 10:21 PM
> To: 'Marcus M=FCller'; 'usrp-users@lists.ettus.com'
> Subject: RE: [USRP-users] 1 Ts delay in USRP B210
>
> Thanks! a lot Marcus M and Marcus D for your valuable information.
>
> Thanks,
>
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
