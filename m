Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE106229D88
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 18:52:07 +0200 (CEST)
Received: from [::1] (port=52596 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyHyO-0003Zf-4q; Wed, 22 Jul 2020 12:52:04 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:55684)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1jyHyJ-0003Se-UN
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 12:52:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WN931mlEy20wQ6pybvhBrNI2JLpc+wwbwy1YKzcGFMI=; b=MqQYQAalbepAzbROphaZYZDxZi
 87Lxnkb4VLPeOsvx8vGLHjGsbLBpn3aJLp/29+1dTwZ+nnnhE53rDl1f/vQNBEzwXidYEiulkndQS
 UVoBWJcYJbQ8nq6QT7GLd4uZE4VkS58akyBe04mCuJQLQO+tffVck5yN84YqL0+wn/n9Ni6ZFQ984
 7GQH6JKalzfLgqm3vC5/NNOchd5pcZbbtLRRA71kW+GRzGhztr9t/Q7VXO/mKD12rx//sv61+aiXq
 Zmof9xC52/gsUpX/F5fKpyOoxH1o772aa2902qRe9a7AeCOjJnJ1vjCKXesxve+MP5pxCb/YgWvyO
 5G9fzGPA==;
Received: from [183.83.140.209] (port=23827 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1jyHxW-007hYx-53; Wed, 22 Jul 2020 22:21:10 +0530
To: =?iso-8859-1?Q?'Marcus_M=FCller'?= <marcus.mueller@ettus.com>,
 <usrp-users@lists.ettus.com>
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com> <5F1719EB.6000400@gmail.com>
 <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com>
In-Reply-To: <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com>
Date: Wed, 22 Jul 2020 22:21:10 +0530
Message-ID: <006001d66048$4ea13d70$ebe3b850$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Content-Language: en-us
Thread-Index: AdZfhaP0JHWKw2IvQ4aszYr2JszFUQAwoWTA
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - ns13-777.999servers.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - trilcomm.com
X-Get-Message-Sender-Via: ns13-777.999servers.com: authenticated_id:
 kpras@trilcomm.com
X-Authenticated-Sender: ns13-777.999servers.com: kpras@trilcomm.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [USRP-users] 1 Ts delay in USRP B210
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
From: Prasad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Prasad <kpras@trilcomm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

Thanks! a lot Marcus M and Marcus D for your valuable information.

Thanks,

-----Original Message-----
From: Marcus M=FCller [mailto:marcus.mueller@ettus.com] =

Sent: Tuesday, July 21, 2020 11:07 PM
To: usrp-users@lists.ettus.com; Prasad
Subject: Re: [USRP-users] 1 Ts delay in USRP B210

Hello Prasad,

I second everything Marcus L said, and will add:

In your first email you said this is about the UE.

UE (user equipment) are normally things like phones. These don't have
any great clocks of their own. They derive their clocks from that of the
network.

Sure, for prototyping, reducing the frequency error makes sense, but
even if both your basestation (gNodeB in 5G jargon) and your UE have
atomic clocks, they will be unsynchronized if either moves. Doppler!

So, in the end, if you're not in the business of evaluating
synchronization algorithms, you're probably requesting the wrong thing:
Make your UE implementation extract frequency information from the
received downlink signal (there's plenty of implicit and explicit info
in LTE/5G for exactly that), and live with the oscillator you have - it
only needs to be stable for short times. I'm almost certain that any
smartphone will have a worse oscillator than your B210 has.

Best regards,
Marcus M

On 21.07.20 18:38, Marcus D. Leech via USRP-users wrote:
> On 07/21/2020 12:31 PM, Prasad wrote:
>>
>> Then how we can handle this drift in our 5G-NR stack by using
>> /uhd_rx_streamer_issue_stream_cmd/?
>>
>> Or we should go with GPSDO/external clock?
>>
>> Thanks,
>>
> Well, since most users on here aren't experts on 5G stacks, me included,
> I can't tell you what to do to your stack to handle
> =A0 clock drift.=A0 But I WILL say that clock drift is an inevitable issu=
e,
> and as you get better clocks, the scale of that issue becomes
> =A0 smaller as you spend more money on better clocks.
> =

> A built-in GPSDO would not be a bad investment if clock drift at a scale
> of 0.8PPM is an issue for your implementation.
> =

> Many digital demodulators implement algorithms for dealing with
> clock-drift and imprecision on the rx side using PLLs and the like.
> =A0 But for 5G I have no idea how that would play out.
> =

> =

>> *From:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
>> *Sent:* Tuesday, July 21, 2020 9:56 PM
>> *To:* Prasad; usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] 1 Ts delay in USRP B210
>>
>> On 07/21/2020 12:25 PM, Prasad wrote:
>>
>> =A0=A0=A0 We are using internal clock, don=92t use any GPSDO or external=
 clock.
>>
>> =A0=A0=A0 So for internal clock is this expected?
>>
>> =A0=A0=A0 Thanks,
>>
>> The internal clock is specced to +/- 2PPM.=A0=A0 You're seeing much less
>> than that, so it's within spec.
>>
>>
>>
>> *From:*USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On
>> Behalf Of *Marcus D. Leech via USRP-users
>> *Sent:* Tuesday, July 21, 2020 9:49 PM
>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>> *Subject:* Re: [USRP-users] 1 Ts delay in USRP B210
>>
>> On 07/21/2020 12:13 PM, Prasad via USRP-users wrote:
>>
>> =A0=A0=A0 Soft reminder!
>>
>> =A0=A0=A0 Thanks,
>>
>> =A0=A0=A0 *From:*Prasad [mailto:kpras@trilcomm.com]
>> =A0=A0=A0 *Sent:* Monday, July 20, 2020 7:58 PM
>> =A0=A0=A0 *To:* 'usrp-users@lists.ettus.com
>> <mailto:usrp-users@lists.ettus.com>'
>> =A0=A0=A0 *Cc:* 'Rao Yenamandra'
>> =A0=A0=A0 *Subject:* 1 Ts delay in USRP B210
>>
>> =A0=A0=A0 Dear Team.
>>
>> =A0=A0=A0 Hope you are doing well and safe.
>>
>> =A0=A0=A0 We are bringing up our NR-5G UE stack with USRP B210.
>>
>> =A0=A0=A0 If time permits, would you pls. reply to below concern with yo=
ur
>> =A0=A0=A0 valuable information.
>>
>> =A0=A0=A0 During the synchronization procedure, we observe atleast /=B1/1
>> =A0=A0=A0 /Ts/ (Sampling Time) drift in rx streamer in every=A0 ~40ms ti=
me
>> period.
>>
>> =A0=A0=A0 Are we missing any time_spec during /uhd_rx_streamer_recv/ api=
 or
>> =A0=A0=A0 in /uhd_tx_streamer_send/ ?
>>
>> =A0=A0=A0 Master clock rate: 30.72e6
>>
>> =A0=A0=A0 Sampling rate: 30.72e6
>>
>> =A0=A0=A0 Carrier frequency: 3.8e9
>>
>> =A0=A0=A0 We use one B210 to transmit time domain samples back to back a=
nd
>> =A0=A0=A0 others to receive.
>>
>> =A0=A0=A0 Log snippet:
>>
>> =A0=A0=A0 Init PSS detected with lag: /4469/ (/PSS detection offset from=
 the
>> =A0=A0=A0 slot boundary/ )
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4469
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4469
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4469
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4470 =E01 Ts drift
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4470
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4470
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4471 =E01 Ts drift.
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4472=E01 Ts drift
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4472
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4472
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Init PSS detected with lag: 4484 =E012 Ts drift
>>
>> =A0=A0=A0 sss has been detected
>>
>> =A0=A0=A0 Thanks! in advance.
>>
>> =A0=A0=A0 Regards,
>>
>> =A0=A0=A0 Prasad.
>>
>> Are you just using the on-board reference clock, or using something
>> like a GPS module?
>>
>> The drift you show is roughly 0.8PPM (if I've done my math correctly),
>> which is well within spec for this board without a better reference
>> clock.
>>
>>
>>
> =

> =

> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
