Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A33F922877E
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 19:37:44 +0200 (CEST)
Received: from [::1] (port=42400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxwD0-0007jU-Ad; Tue, 21 Jul 2020 13:37:42 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:40398)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jxwCv-0007bL-QV
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 13:37:37 -0400
Received: by mail-ej1-f50.google.com with SMTP id o18so22451411eje.7
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 10:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=QQR0IALRptsNcJCKIcA9A48la+0duxNHjPgGn2KOHQw=;
 b=eiFhfn0yp6e1RWxbhhUkLBDSb5Lyl0YuY5CW8xq+L9FMgrurc3sdRRP+cawrgh7fz/
 TFrRFWjnX6j45Rsz0TvW4J6oM1GmM62uTF1+/SLQtwTJE1yczydJaIRPTu4IcKjIAlX4
 rNzyM4mHD7vWYIwzrJFbNQGxUTfRsELHEnCM69ShOBY6z7vg0Vay0Pf89eG18W3pVzPt
 ZVLGuLkH7nU/VWDbZfZ75ZLKcNsgjTj1zwqUcZlXz0ryPvpkJ/ItxehPGUQtclu6OT/h
 AmYnRxR7cV4tfB1kbZFaFjh3zqAHZBUr17Pc8sxtCiKMgTakbjfS5ofQdvhcVBm0WZrH
 O8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QQR0IALRptsNcJCKIcA9A48la+0duxNHjPgGn2KOHQw=;
 b=CCqkuNxwwic1hDti0b/dyzJUekVuEqRq5CK3z2vKJII7OdX/laRnRc0keSSrcHLb6S
 5tOE/1/e7Iuj3lLEOxHze6aXkqc3BrTIK3or5jZz3SYGjftTT9KLBf8nJxFtgKXHqKcc
 PS7bjAFqcVdcaxPS3j1m9H5N0CEBau21PutH9TMKVZJ+dCL2HBHLl/Or9OeDE7VNw6kn
 0L/ZYh9z3CfpFxneIHN173OgqgfrAxgfPiGv8dDTDJoXThvl1Qwn3VC3Fggz/bX+5EzQ
 MhC80tVATmDm/zVrSWM6MI0vP9E102csHR76fGgw9GrXXgtBvLIaGNzkw+gzsNftaPQj
 /CYA==
X-Gm-Message-State: AOAM532x05cCDbFeCCfWtc4SuH3y6bG5IoKVvZ9IfrRESmtpNZKezz4N
 k/eLWVcxBwh+Odl7/D9YdeU+/KffySXFrA==
X-Google-Smtp-Source: ABdhPJzmyymMqAlRx8NNfR7F7Pn67Q1Y5OCLRu7Ux6eyENag7LeMssImX9Uzf/GvfypMLdL86bE2/A==
X-Received: by 2002:a17:906:4b16:: with SMTP id
 y22mr26609143eju.4.1595353016595; 
 Tue, 21 Jul 2020 10:36:56 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id z22sm17987082edx.72.2020.07.21.10.36.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jul 2020 10:36:54 -0700 (PDT)
To: usrp-users@lists.ettus.com, Prasad <kpras@trilcomm.com>
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com> <5F1719EB.6000400@gmail.com>
Message-ID: <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com>
Date: Tue, 21 Jul 2020 19:36:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <5F1719EB.6000400@gmail.com>
Content-Language: en-US
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
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
