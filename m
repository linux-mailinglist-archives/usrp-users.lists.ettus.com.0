Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F39A01C99CF
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 20:50:59 +0200 (CEST)
Received: from [::1] (port=53486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWlbk-0007mr-NA; Thu, 07 May 2020 14:50:56 -0400
Received: from mout.web.de ([212.227.17.11]:54533)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hex98@email.de>) id 1jWlbg-0007h9-Fp
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 14:50:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588877411;
 bh=WFLoKWDv5yFjRaprwA39qTvigoxx/1DmEUvu+IvVvHs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=XccUD5ayRjGN7uhRAzfh33QRKcmn0kknWTd2kGu0ba2oxWrVn48BJGcXrL929AQcT
 ReuVurfUSt6xJ4n4RlpHo3GnPwvI68ggKU4HRIVL5gs7SfHQVy1EHQptPsfwtu5TcL
 9Op9bns8ma2Y2Im3PrnW4Ro6aR1MLHrn84C2EIrU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.14] ([87.150.154.203]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Lrb3x-1j7qLm0eQ1-013L6D; Thu, 07
 May 2020 20:50:11 +0200
To: Rob Kossler <rkossler@nd.edu>
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAB__hTTGOFicX7JY+RA22OUf1zXLWfAzYQoneiRGa-1zZM5gSQ@mail.gmail.com>
Message-ID: <7852f292-9cb0-3761-9dae-15eeaf9993dc@email.de>
Date: Thu, 7 May 2020 20:50:09 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTTGOFicX7JY+RA22OUf1zXLWfAzYQoneiRGa-1zZM5gSQ@mail.gmail.com>
X-Provags-ID: V03:K1:euZvNj5ptMTXLdvg6LfzLZCfC1IITxuP5B4hxXi+dOuM3yMeRIw
 3zx63Ds3AwU8tt3pWkMfCwCEsiO1MJLNyb+YiXL2NF6A6AgG2oE5xBnDT2Je2TTYQwkczF5
 wf0BwmD0t3b/J2ocYsax6HZvuh6FJ9Xir6m0K6JZmeyJ1krHZCUUT+MJC3N9lhGYBuVkX1V
 YR4pqfXeoG1v7IE5uSTuA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ckDFQvgxXXE=:IC0cOGyV0WcA4xCRR/6ae8
 zqIxOnmLvbFiQbmxlyQ6UjSdE2N7yTsoN3PWDnkcHFVVzwdlUITxX4imVaJsB46ZzxeSzGLWh
 D8ZVVpw4/3ljECZD3vj2u762UDyciAtp0WBsI09aTa69l2jxogOMXhm7HMDGCf1yODSvCjjTn
 F2n3CIbpJW0OOXVIkWGyirgZAVYjCEBFlYJkY6j2paU3Ghb4E15w7/0b9LFRkY9GtISiEfmRh
 q+2/BftjgEjnsnF5iBE0TeRHezj1HRPkzZVGmAx3rccxdJmNPtre9dSKPUEZ/NvgA9mvQpupk
 Wt+T5lTShnHx/DFrM+dyH9O4CjyjGlfDUhc0aUcYa/k4AiDhG1b1utstTfagIyr4tHuoDWPRh
 mm8E+6m7Hw+Ya4HudT6BLLACCVStcegzgHL3MNH64aqA+U3WhS3sSQ/VcJaCGMhvOCgz377TR
 Du3DZde2ADLrOjZxNOIaQrp7oqCcqFhbx1Q7J0cuv4662eEYZcFvpWnzpEbeb3E9HJSPaHt46
 GuEXkHWxQAx3KagUUxYFViM0V2lT3Lr01QXNOgPKBjRyqkmzyfu2kN6aNjnonx5wsIJXiBZG8
 P2pj/gR3cUshWmFqGpdCYq5lc6TIuivAx8ObEwfeZPKKSlweT6XLe6weI/vlBwG0/kc2SejLX
 GBcSanIZIInwsn2nn4YEXjOsjYwGbupZzCMozepcaA6dthXTaty5Jop7HKIWpPSZyvZU6V0l/
 CQDt2um8/FmzyPY1Y6MxBN68OKfh49AIHtpLwBRBpGrJX554H39Qv+xe24QwyGCEvEgLH2xft
 UvyaBMNPiSypsbyhPZrxrKdzPCfsA3BF6YQKA4Mh4tTqlSeKuQrKDZvDr3dMAWcFkuVop8Xq6
 4S/ahoGf/+M75WGnxL7mNAU5k8U7zXR5yUzUy6HXqg0MLinv0JfZgtu+pOfj2TEHaOQ4gMD/S
 GqijgmaPdWc7qbhMDHUi7SM1ZVEbSjZVSIAc1ONrG0e66o17pWUjfF93FxVYtVBQVtMw2JmBp
 101xaYISn7OWTZA8rKng6xefibaaWzMnQvmiJDXGMAEwplX8KhgKl7k/C0QdalOREt4kZiCup
 JoBze7Q6EkSy4PnbBCEpeTg3XT/w0Zg5T56OtRLGJ6Zr0TBF64ftgoAxiIeTYuy69gy1bXAKw
 oUcZ9j1/h0vMw+X4xsxW0lWvzwGLt0/dCm1wr79J93Lkh1K/PF02FY7GfgYWNJgTFmT5yFYo0
 j47dUfpcFm7nZfxc9
Subject: Re: [USRP-users] TX underflows when using multi_usrp vs. two
 independent tx_streamers
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
From: Max via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Max <hex98@email.de>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

>> More important, about your two questions:
>> Using the Replay block is not an option,
> Bummer.  Because if you truly need to stream at 200e6 from CPU to
> host, that is pretty tough to make it work over long intervals with no
> underruns - even with only 1 device.
I was honestly suprised how smooth it worked with a single USRP. I
usually see two or three underflows per hour, but that's something we
can handle.


> Also, wanted to let you know that I just happen to have two X310/UBX
> devices by my side, so I tried your experiment and got identical
> results:
> * Rx 2x200 works fine (channels 0,2 for me) with single instance of
> benchmark_rate
> * Tx 1x200 works fine for individual channel 0 or 2
> * Tx 2x200 FAILS when running single instance of benchmark_rate
> * Tx 2x200 works fine when running separate instances of
> benchmark_rate for the 2 channels
Thank you for reproducing the behavior. I will now rework my
implementation to use two tx_streamers and afterwards report about the
results.
I could well imagine that keeping multiple channels synchronized, in
combination with the general challenge to not let FPGA FIFOs run out of
data, messes things up.

Max

> Rob
>>
>> Regards,
>> Max
>>
>>
>>>> I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs are synchronized with 10MHz.
>>>>
>>>> I can receive data without any overflows at 200 MHz (one channel per USRP), but transmitting results in massive underflows for 184.32 and 200 MHz.
>>>>
>>>> benchmark_rate shows the same behavior when transmitting on both USRPs at the same time; sampling rates <= 100 MHz or using just one USRP however works without underflows.
>>>>
>>>>
>>>>
>>>> But I also tried running two benchmark_rate processes in parallel, one for each of the USRPs, and this works flawlessly.
>>>>
>>>> Is there any explanation, why using uhd::usrp::multi_usrp results in massive underflows, while operating two devices in parallel in general seems to work?
>>>>
>>>>
>>>>
>>>> I assume using two uhd::device objects with independent tx_streamers could be a workaround for me. But using multi_usrp nevertheless seems more convenient.
>>>
>>> Hi Max,
>>> I don't know the direct answer to your issue, but I have a few comments:
>>> 1) Tx Underruns have always been a much bigger issue than Rx Overruns.
>>> It is always harder to get this solved.
>>> 2) Even with multi_usrp, you can have 2 threads running. So, you don't
>>> need to have 2 device objects.  I do this in my software. You can get
>>> a streamer for channel 0 and a separate streamer for channel 1 and
>>> then run them in different threads. Not quite as convenient as having
>>> a single streamer though.  And, not certain if it will solve the issue
>>> for you.
>>> 3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.
>>> It is a pain to get configured, but it does stream much better once
>>> properly configured
>>> 4) With UHD 4.0, I've heard that streaming is improved overall such
>>> that it might work fine without DPDK.  But, that is a big question
>>> mark and there are always reasons to be cautious  when jumping on to
>>> the next best thing...
>>>
>>> Two questions:
>>> 1) When it fails with benchmark rate, are you setting PPS to external
>>> so that both device clocks are set to the same time?
>>> 2) Is your Tx waveform dynamically changing or is it a fixed length
>>> sequence that is repeated?  If the latter, perhaps you could transmit
>>> directly from the FPGA using the Replay block.
>>> Rob
>>> Rob
>>>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
