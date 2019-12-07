Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2C9115E46
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 20:46:25 +0100 (CET)
Received: from [::1] (port=50358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idg23-0002Fo-5b; Sat, 07 Dec 2019 14:46:23 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:45713)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1idg1z-00027F-Dx
 for usrp-users@lists.ettus.com; Sat, 07 Dec 2019 14:46:19 -0500
Received: by mail-qt1-f178.google.com with SMTP id p5so10938053qtq.12
 for <usrp-users@lists.ettus.com>; Sat, 07 Dec 2019 11:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=9YVwTj8qf6de2fMIH25tiYiWsfsLwWXW34UPXU/qWtE=;
 b=TqGBCbbM53E5jjq0H5qS2xhLbBXTktT3kqAI401cpXui42OgdI7wOgT9zY5oZuC9wT
 xhTQly8bPUeeyk0Rw1B2pEMz9dNTOEACAOHev3eXZni5Kh9VGpVXLh7lxz22Qd62qDgX
 Wmn9ri4/b80fcLNWYt13785biJfWmVEOngWFEPQYYZ4pD7tWSDBSBAY+QGoIeojQ81Wm
 HZ3LE7Fm+r8tQJcBxl8HUmsnFL1neq5kImQ4dDJ+Z/1/tG07JWlrcXa3tBukVgjPRNEK
 I134sIZKor9umLyQVu3HOKw52MZB1EDBcmvY2PfwOUEgia2lz+0S9uNdg6XXIKSpBft0
 BBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=9YVwTj8qf6de2fMIH25tiYiWsfsLwWXW34UPXU/qWtE=;
 b=KNJiBAvEiQ9u/Cvr0gCbTZYK5iM8xx9kPYIdQe8OHCwU977ONSaTxeuSzMzdVyxnNw
 CRu3Nrv+hUsKut3jKjq2q5m86k1lGV1clubTL5X4WUz+LDwgcLATKxYvmK5vqNDZsV8i
 ZqwVZGuHinA5UsOnqVzcXaDMwXs+uYdcOvWanBgdj0ZVZ7L9XVCPCp7qnl0pU1skuYjf
 Svz89qo3pKCBYQL4elJ0f5e3g7tadD9C6qqICU82HzNWviVIjjanGJ3yf/XyadW8Lq50
 hMT9f1zRC7cCFR6ym+FxRLA4ml+9FlQ6eT2sYIRymaXF1pguB6PbGbxN8x9YOiRX7ur+
 BsWQ==
X-Gm-Message-State: APjAAAV53iDokRIx0DCBMXX9nJUZb3HNQHebXMkltDMIfSq99pRlAe+B
 1JZxEJ/vkA/Mw44VaitVA9cS5mqm
X-Google-Smtp-Source: APXvYqzI6RqKLoCLIV516HVyZvN3dccPSMBJE2qC7pXi3MDwdOZ5cs+g8Eh+IWISqDqEVjB1GkyW7Q==
X-Received: by 2002:ac8:6ce:: with SMTP id j14mr18925327qth.231.1575747938581; 
 Sat, 07 Dec 2019 11:45:38 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id z62sm7846333qtd.83.2019.12.07.11.45.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Dec 2019 11:45:38 -0800 (PST)
Message-ID: <5DEC0161.5080003@gmail.com>
Date: Sat, 07 Dec 2019 14:45:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
In-Reply-To: <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
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

On 12/07/2019 02:35 PM, Lukas Haase via USRP-users wrote:
>
> Also: Why wouldn't such an approach cause issues due to the clock differences between the host computer and the USRP?
The CPU clock plays no role here at all.  Samples are timed by the USRP, 
NOT the host.  Further, in a "timed command"
   example, the specified time is from the point-of-view of the USRP.

You'll need to look at the API here:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a191b78b00d051d3d51c2f719361c1fb5

and here:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a607aee766d21228a7aaabde2771eb46f

Basically, GRC will generate python code where it calls the 
set_rx_freq() method (or set_tx_freq() method), and you need to modify this
   code to have set_command_time() and clear_command_time() wrapped 
around those operations.


>
> And if you are able to dig up any more information about the additional caveats you were mentioning, that would be truly amazing.
>
> Thanks a lot,
> Luke
>
>   
>   
>   
>
> Gesendet: Samstag, 07. Dezember 2019 um 12:05 Uhr
> Von: "Nate Temple" <nate.temple@ettus.com>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Betreff: Re: [USRP-users] Phase relation between RX/TX LO
>
> Hi Luke,
>
> What version of UHD are you using?
>
> There was an issue with the DUC/DDC phase accumulator's resolution, but it was fixed with UHD 3.14.1.0.
>
> The threads below are were this was identified:
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059914.html
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html
>
> As recommended from the thread:
>
> Phase may change each time streamers are created, but the phase between TX
> and RX should remain consistent during streaming.  Tuning must be done with
> timed commands and a consistent time delta between the tune time of TX and
> RX must be maintained that is greater than 500us to maintain the coherence
> across re-tunes.
>
>
>
> If you're using the QT widget without any modifications, it will not be using timed commands, you'll need to generate the python file and manually add in the timed commands to the set_freq calls.
>   
> Also, if I remember correctly, even with the phase accumulator fix, there was some caveats to which frequencies would stay coherent. I need to go back and look at some notes on it.
> Regards,
> Nate Temple
>
> On Fri, Dec 6, 2019 at 11:11 PM Lukas Haase via USRP-users <usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:Hi Marcus,
>
> Marcus wrote:> On 12/06/2019 09:33 PM, Lukas Haase via USRP-users wrote:
>>> Hi,
>>>
>>> I am using the USRP X310+UBX160 with gnuradio to perform very
>>> precicse phase measurements: The TX transmits a CW which is
>>> reflected by an object and received by the RX.
>>>
>>> The received phase provides an accurate estimate of the distance
>>> to>> the reflected object, once the fixed phase relation (between
>>> TX/RX- LO, filters, cables etc.) has been subtracted out.
>>>
>>> This works nicely so far.
>>>
>>> However, I need my system to work across power cycles, and more
>>> importantly, across different frequencies: The goal is to perform
>>> fast frequency hopping and obtain the phase for each frequency.
>>>
>>> Unfortunately it seems that the phase relationship between TX/RX
>>> is>> lost when I tune the USRP to a different center frequency and
>>> back. For example, I have the center frequency set to 900 MHz and
>>> the phase. I measure (by computing the angle of the I/Q samples)
>>> stays constant. But when I set the center frequency to 950 MHz and
>>> then back to 900 MHz, the phase has a random value again.
>>>
>>> Is there any way to avoid this? Or is there any way to lock the LO
>>> phase to a particular phase when>> tuning back to the original
>>> frequency?
>> It *might* be possible to phase-synchroniez the RX and TX LOs using
>> timed commands combined, possibly with INTEGER_N tuning.
>>
>> There's an APP Note on phase-synchronization here:
>>
>> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices[https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices]
> Thank you, I'm studying this right now.
>
>> My gut tells me this is going to be hard, though, since the
>> requirement is to bring a synthesizer back to the same relative phase
>> it had when it was previously tuned to the same frequency.
> Yes, this is about multiple devices, certainly hard.
>
> Let's take a step back and I am happy when just the TX/RX LO on a single device is synchronized.
>
> This is what I do right now: In gnuradio, I generate a sinudoid (fif=1MHz) at baseband and transmit (UHD: USRP Sink) it with fcenter=900MHz.
> Then I receive (UHD: USRP Source) it and multiply it with "-fif" again. This gives me a constant signal in I and Q.
>
> The center frequency is configured via "QT GUI Entry". I enter 900e6 and press enter. Then I plot "Complex to Arg". As long as I do nothing this value is fairly constant (somewhere between -pi and pi).
>
> Now I hit enter again in the QT GUI Entry. Although it's the same center frequency, the USRP retunes and the phase jumps to another value.
>
> Now let's look at the USRP block diagram:
>
> https://kb.ettus.com/images/1/16/2920_simplified_system_diagram.gif[https://kb.ettus.com/images/1/16/2920_simplified_system_diagram.gif]
>
> Yes, both TX and RX path have a separate PLL and VCO.
> However, the *reference* for this PLL is the same. Hence the PLL should lock to the phase of this reference (after all, it's a *phase* locked loop). And this implies that the *relative* phase between TX and RX, for a given frequency, should be fixed -- at least as long as the USRP is powered.
>
> So, how can it be that this is not the case?!
>
>
> There is just a single suspicion that I have: DSP on gnuradio (host computer runs a different clock) versus USRP clock. What do I mean by that? Initially I was transmitting a pure CW (in gnuradio, connecting a "Constant Source" to USRP Sink and setting the frequency to fcenter+fif). However, downconversion was performed with fcenter only and multiplying with fif in gnuradio. I could see a slow phase drift. It took me hours to figure out that this is caused by the different clocks. The effect was gone once I also generated the transmitted waveform in gnuradio.
> In order to fix this, I would subtract the phase of this generated waveform in gnuradio. But obviously this phase is always zero ...
>
> I hope you understand what I am writing.
>
>
>
> Best,
> Luke
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
