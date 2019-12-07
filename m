Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B770115B73
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 08:11:11 +0100 (CET)
Received: from [::1] (port=59578 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idUF7-0002D4-2e; Sat, 07 Dec 2019 02:11:05 -0500
Received: from mout.gmx.net ([212.227.17.22]:45121)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1idUF3-00029Q-UX
 for usrp-users@lists.ettus.com; Sat, 07 Dec 2019 02:11:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575702620;
 bh=vv45b0Yk3rQNIzC/8AzO2tB8zROp5HOrxeLeK1EsH6M=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=jWLxI5Xa/zw2D1FhTIy3bmOjQ2cuH62Y4vCtHMCrOT7XQc/evSAOJSXAvMqfVpdtv
 9k9InS5dzXTbip9PZKz5Osf7XjCfo97f698H1BljxbEwQch057DD3UhkocACcm+1z3
 1+YsowFe1cLD+/HbZCZt1rNxSSc1oYuBxcnGQckw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs13.server.lan [172.19.170.65]) (via HTTP); Sat, 7 Dec 2019
 08:10:20 +0100
MIME-Version: 1.0
Message-ID: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
To: usrp-users@lists.ettus.com
Date: Sat, 7 Dec 2019 08:10:20 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:+143BmAS953lqoYtXHuP/PfFa/ALTxk/GlOoHpw3t82hJWWr37RTFxEIHXjNqQBnPPbtz
 TduR/bvrpf+l0mL2P+t8XtpWTJjbG19GQ6J1QkkF3dYKoTzEoWTrkb/GpAhjTUsEUkdKlbAe7804
 zu93fNtvVGFQ7RdPhhjeKvjX2cFKABeuI1+Ecsajod10BdhoOLPdtE6NTF5hMP3NDkB4Eq0xjHFK
 h3DP782v8/M4KhRRDqKLVN5gXo1Kt5R8PmBLcJC/mhq3t30dkbAaq8vVtgyw7VEKj7d+MfaMAF2D
 +M=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O3hISYf9HCw=:FNF2wnYOLxEO1IxWL+7nDw
 s8vno9ZLZ4xBtvhYOMq2afeiLcoRtSnPDWToqCuiI7d8Bl22CM0SfW4XnU6TgqgriSixCjDCh
 VIXXRjzpPfb/6KwFzaEugbEzbkdXkTgzVXYG6AAUa4nkm/ZmYEk3PScOo2Df/Ll07Bq3InhBB
 fRMVIFJVUQH6Xcc8kPcpISZXsUGfC3LYnRwgui8RoQhXnHRU7iHwOHJn7pBmkM4VhquWNM5cS
 GEyfJ4kv2KHh75mYxScj2hLizt2aPB/c0PEwzYEzrK/1nVztosYK61H75Ou2nz1lwmXK81tRU
 t15TtBVYCr7933jrvLytI+myVTwP+sBLcpOl0+CM8pVgoCSYDb0beyq4fmbMZOAGy2/DJyy5X
 TS/2XCqYBahm643fpd5JdNHl38FsUvs0IQdJTUMJu5qQ0kIebW5Da9ysj6S7i4lTBJ0oQiBK6
 Rno8G0oZ24jniOpLtaESmGiu91R3pRncXLPh7/mPS4jVUP9r0etym3wFgqXKbJsOQlSkQgl3A
 cZ//hYpPdw/p1frKe6bgG+jDAAenO3PYYaZwDOa1QjTw/2lmQeclYL6rR04ogljSWv86IHhRe
 rmnVyB1pXuzw4dNgMwdfVLx9WmI0T3Qegi/MvxIeYjND5owq3pvarUC5O56/LSDiK/LzKfvuy
 nrTLrZj3o5/5HW8C7/Yb44B6FAbaNfX89HqW8EjWmEnrfIQ==
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Marcus,

Marcus wrote:> On 12/06/2019 09:33 PM, Lukas Haase via USRP-users wrote:
>> Hi,
>>
>> I am using the USRP X310+UBX160 with gnuradio to perform very
>> precicse phase measurements: The TX transmits a CW which is
>> reflected by an object and received by the RX.
>>
>> The received phase provides an accurate estimate of the distance
>> to>> the reflected object, once the fixed phase relation (between
>> TX/RX- LO, filters, cables etc.) has been subtracted out.
>>
>> This works nicely so far.
>>
>> However, I need my system to work across power cycles, and more
>> importantly, across different frequencies: The goal is to perform
>> fast frequency hopping and obtain the phase for each frequency.
>>
>> Unfortunately it seems that the phase relationship between TX/RX
>> is>> lost when I tune the USRP to a different center frequency and
>> back. For example, I have the center frequency set to 900 MHz and
>> the phase. I measure (by computing the angle of the I/Q samples)
>> stays constant. But when I set the center frequency to 950 MHz and
>> then back to 900 MHz, the phase has a random value again.
>>
>> Is there any way to avoid this? Or is there any way to lock the LO
>> phase to a particular phase when>> tuning back to the original
>> frequency?
>
> It *might* be possible to phase-synchroniez the RX and TX LOs using
> timed commands combined, possibly with INTEGER_N tuning.
>
> There's an APP Note on phase-synchronization here:
>
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

Thank you, I'm studying this right now.

> My gut tells me this is going to be hard, though, since the
> requirement is to bring a synthesizer back to the same relative phase
> it had when it was previously tuned to the same frequency.

Yes, this is about multiple devices, certainly hard.

Let's take a step back and I am happy when just the TX/RX LO on a single device is synchronized.

This is what I do right now: In gnuradio, I generate a sinudoid (fif=1MHz) at baseband and transmit (UHD: USRP Sink) it with fcenter=900MHz.
Then I receive (UHD: USRP Source) it and multiply it with "-fif" again. This gives me a constant signal in I and Q.

The center frequency is configured via "QT GUI Entry". I enter 900e6 and press enter. Then I plot "Complex to Arg". As long as I do nothing this value is fairly constant (somewhere between -pi and pi).

Now I hit enter again in the QT GUI Entry. Although it's the same center frequency, the USRP retunes and the phase jumps to another value.

Now let's look at the USRP block diagram:

https://kb.ettus.com/images/1/16/2920_simplified_system_diagram.gif

Yes, both TX and RX path have a separate PLL and VCO.
However, the *reference* for this PLL is the same. Hence the PLL should lock to the phase of this reference (after all, it's a *phase* locked loop). And this implies that the *relative* phase between TX and RX, for a given frequency, should be fixed -- at least as long as the USRP is powered.

So, how can it be that this is not the case?!


There is just a single suspicion that I have: DSP on gnuradio (host computer runs a different clock) versus USRP clock. What do I mean by that? Initially I was transmitting a pure CW (in gnuradio, connecting a "Constant Source" to USRP Sink and setting the frequency to fcenter+fif). However, downconversion was performed with fcenter only and multiplying with fif in gnuradio. I could see a slow phase drift. It took me hours to figure out that this is caused by the different clocks. The effect was gone once I also generated the transmitted waveform in gnuradio.
In order to fix this, I would subtract the phase of this generated waveform in gnuradio. But obviously this phase is always zero ...

I hope you understand what I am writing.



Best,
Luke



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
