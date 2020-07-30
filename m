Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CB623361C
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jul 2020 17:56:51 +0200 (CEST)
Received: from [::1] (port=50794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k1AvH-0007fZ-66; Thu, 30 Jul 2020 11:56:47 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:45607)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1k1AvC-0007WN-NM
 for usrp-users@lists.ettus.com; Thu, 30 Jul 2020 11:56:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oNkD7XHAsIh9uYLImiDniRZsTE/EsdXHmuTKGN8kzto=; b=qUiOsIgwhfjRzmvv/+mHABG7HP
 0c3HJk97P+uAaZ8bgiSWM495a7I84L5YS8uVPqSl7haDaYnCk/Csd/yTeiNEs8M5eJk9FBhuZwnwd
 Q6h4jFWKjrvbShT6YG5q0DmAU0j2dwYWRSLejwIWGfckJ6cXf557Qzodufkm1U2KtAfA/XiTn7PQY
 w8EBqgEML7LOvxPyaO7q8IpG2qGZReLYKDJ0EmP/flo7pQXiF8zoBP5/0KnkBXE5tL9jgyuwuVDzg
 N3VvjYoMiXM8izP63IOYUIT69hI98stOVcLRJ9/hf3l4+dGpIzXyET3XBKMWk+AVsgIBQGYzVXc0e
 iZ+bia3A==;
Received: from [183.83.141.206] (port=46809 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1k1AuT-007YcY-HX; Thu, 30 Jul 2020 21:25:57 +0530
To: =?iso-8859-1?Q?'Marcus_M=FCller'?= <marcus.mueller@ettus.com>,
 <usrp-users@lists.ettus.com>
Cc: "'Rao Yenamandra'" <yrao@trilcomm.com>
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com> <5F1719EB.6000400@gmail.com>
 <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com> 
In-Reply-To: 
Date: Thu, 30 Jul 2020 21:26:00 +0530
Message-ID: <000001d66689$ec1d8a80$c4589f80$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdZfhaP0JHWKw2IvQ4aszYr2JszFUQAwoWTAAVy2WbAAM7DA0A==
Content-Language: en-us
x-cr-hashedpuzzle: jYs= ASfw CQ11 GAHF JFUo LiGN RBRV R4ER VFvd VG9r WmFG Wp6K
 ctcr eYjM fbyY gkgB; 3;
 bQBhAHIAYwB1AHMALgBtAHUAZQBsAGwAZQByAEAAZQB0AHQAdQBzAC4AYwBvAG0AOwB1AHMAcgBwAC0AdQBzAGUAcgBzAEAAbABpAHMAdABzAC4AZQB0AHQAdQBzAC4AYwBvAG0AOwB5AHIAYQBvAEAAdAByAGkAbABjAG8AbQBtAC4AYwBvAG0A;
 Sosha1_v1; 7; {D8C4EC8D-A37C-4FDE-8C78-DBDD1F9EFD8F};
 awBwAHIAYQBzAEAAdAByAGkAbABjAG8AbQBtAC4AYwBvAG0A;
 Thu, 30 Jul 2020 15:55:55 GMT;
 WwBVAFMAUgBQACAAQgAyADEAMABdACAAVgBlAHIAeQAgAEgAaQBnAGgAIABOAG8AaQBzAGUAIABwAG8AdwBlAHIAIABhAHQAIAByAGUAYwBlAGkAdgBlAHIA
x-cr-puzzleid: {D8C4EC8D-A37C-4FDE-8C78-DBDD1F9EFD8F}
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
Subject: [USRP-users] [USRP B210] Very High Noise power at receiver
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

Soft reminder!.

Thanks!

-----Original Message-----
From: Prasad [mailto:kpras@trilcomm.com] =

Sent: Wednesday, July 29, 2020 8:48 PM
To: 'Prasad'; 'Marcus M=FCller'; 'usrp-users@lists.ettus.com'
Subject: RE: [USRP-users] 1 Ts delay in USRP B210

Hi Muller, =


Just a quick question.
During our 5G-NR integration with USRP B210, we observe very high noise
power at receiver.
Is it expected behavior ?
PBCH rsrp: -13.775554 dBm, SNR: -12.942591 dB, NOISE_POWER: -0.832963 dBm,
rssi: 1.643662dBm.

Applied gain in USRP:
Tx Gain: 45
Rx Gain: 45
Transmit power:- 0dBm.

Regards,
Prasad.

-----Original Message-----
From: Prasad [mailto:kpras@trilcomm.com] =

Sent: Wednesday, July 22, 2020 10:21 PM
To: 'Marcus M=FCller'; 'usrp-users@lists.ettus.com'
Subject: RE: [USRP-users] 1 Ts delay in USRP B210

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
