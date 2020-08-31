Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE81F257B77
	for <lists+usrp-users@lfdr.de>; Mon, 31 Aug 2020 16:45:49 +0200 (CEST)
Received: from [::1] (port=34166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCl45-0005qp-3B; Mon, 31 Aug 2020 10:45:45 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:34778)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kCl40-0005iB-Ua
 for usrp-users@lists.ettus.com; Mon, 31 Aug 2020 10:45:40 -0400
Received: by mail-qt1-f193.google.com with SMTP id x12so4907501qtp.1
 for <usrp-users@lists.ettus.com>; Mon, 31 Aug 2020 07:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=I/mM+YZHFOBcrzN5sWf8+zL7BNgaDSPnzIBErJaU7zI=;
 b=BJeswldMJu3WxSLK9seXhM6F3IRjnaQhspQ3Q6KT/N56Aa9LQudYqgLHlUbaaK2unO
 7QWCGCfsw9z3Kqnlw22cHeygkxetpwsFNpIhUQ2jYDG5duhJhZsUuSRV//qFy3MPKtZa
 Iwfd8Efrmmdkah7TlGU8tp38Ue4PMLozj0pe2nDpM2SqvA5EtIAmVEJd0gvD1FTtoFsF
 PYjILYBP2ZdkdL5XIbsRuOr+zuyVstJCqVR/kdlBJgP8rrFFRw87C31NmlMEdNo9kK6Y
 9nNYj63+AGcHpdDU2sGqzAttwOuYqD76qgyE1v6cBqs7UChkjSECFWoKh+JhnVbo0sOR
 FwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=I/mM+YZHFOBcrzN5sWf8+zL7BNgaDSPnzIBErJaU7zI=;
 b=S7FiqAd2pHkk+OFyLZ7OB6UD2HcIsuX3MEyp+Eyp1qyXSeEjQ+qa/E3Uc/6wGX6kjk
 yaw98m/EFwcnaLgq/v7/EkuUqdDn940tiH1yT3VvSyHzotGuNajeRcx62cuI517YF8RT
 xiddaKkHL7cLMFEa+fXE1pQzS9nswN1Ww2tfZD9S9kGRZ9Sjr2XoRN4WXyejOrwOQuEU
 3a7qIDHtSFUphmX7A8mc0fZJjr72GlJxiK46BAtefFvhohAPFdMQgpSdVR5KgMmrhBNm
 ue05TXzuvzg0/Fr5RRjHs6byhljC+3f7Ix98vrInP0xBhaqmYPUZKlRAQTZzWvh2lnpE
 ZbUA==
X-Gm-Message-State: AOAM532t1sNBYm2F96oVowOPavApoZ9lgrsQJDz0I0VSzdgXzPRmDYB6
 FPLMLb2+4aRlj07kEySIEFtyePoIujA=
X-Google-Smtp-Source: ABdhPJxSvfV6/si4erV15dFjGlFjFmISerYrPNqc0KcsIRmaw9XqytD7f4Vm5HefiZxD0/VJWhd1DQ==
X-Received: by 2002:aed:2356:: with SMTP id i22mr1532089qtc.92.1598885100012; 
 Mon, 31 Aug 2020 07:45:00 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id o72sm9626328qka.113.2020.08.31.07.44.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 31 Aug 2020 07:44:59 -0700 (PDT)
Message-ID: <5F4D0CEA.8000703@gmail.com>
Date: Mon, 31 Aug 2020 10:44:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nando Pellegrini <i1ndp.nando@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
 <e2e93aff-492b-4c4b-21bb-c510e4152ca0@gmail.com> <5F493640.4080504@gmail.com>
 <bea321bb-bcf2-3263-c2b2-75f044d9aecc@gmail.com> <5F4AA3CF.1010908@gmail.com>
 <7364b2c0-0005-e1c9-0607-5865841dc6d1@gmail.com> <5F4BF10D.9060405@gmail.com>
 <f51a66ed-5030-07ff-78b8-38836d4e303f@gmail.com>
In-Reply-To: <f51a66ed-5030-07ff-78b8-38836d4e303f@gmail.com>
Subject: [USRP-users] UHD Performance on B2xx
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

On 08/31/2020 01:43 AM, Nando Pellegrini wrote:
> Marcus,
> Let's try to lower the volume of the discussion, what i criticize is 
> the type of approach to problems and the feeling of being treated as 
> reliable persons if not as ignorant. Eve if it's the case, please do 
> not forget that you are representing Ettus and we are customers.
> Said that let's go to the problem , i said already that the hardware 
> and software situation is identical to what i have used in the past 
> and i do not know if the lower performance was caused by the UHD 
> software or to the Linux updates but .... finally good news. I tried 
> to apply your last suggestion and the problem seems to be solved, 
> yesterday i was able to make a 3 hours recording with no problems and 
> i have very grateful to you but also here i had to go through the 
> source code to understand the meaning of your parameter, i finally 
> found it was the size of the buffer pool (16 the default certainly 
> inadequate for the case).
That sounds like you increased the "num_recv_frames" in the device 
argument when the device is instantiated.   I'd suggested that at least once
   in this thread, but perhaps that went missing?

https://files.ettus.com/manual/page_transport.html


> Now i can accept the need for tuning procedure in such critical 
> situation but where is the documentation good enough to make you able 
> to handle it?
> The whole documentation , made automatically,  is very cryptic and is 
> only thanks to the samples that you can approach the develop of 
> application but not covering the needs. This are the main reasons why 
> the patience runs out.
> Best wishes,nando
>
The API documentation is generated automatically, and I agree that it is 
a bit hard to understand without having more "prose written by
   a person".

But there IS such documentation, like the UHD Manual, here:

https://files.ettus.com/manual/index.html

And the "Knowledge Base" here:

https://kb.ettus.com/Knowledge_Base

And, as you note, the examples.


>
> On 8/30/2020 20:33, Marcus D. Leech wrote:
>> On 08/30/2020 02:44 AM, Nando Pellegrini wrote:
>>> Marcus,
>>> I really do not understand what you are trying to demonstrate i have 
>>> started long ago trying to use the easy GR blocks withe the B200mini 
>>> and found out at once that the overhead introduced be the Gr blocks 
>>> were  limiting the efficiency so you discovered the "warm water" as 
>>> we say in Italy , i was just going to waste some more of my time 
>>> following your indications but to be frank i am tired of reporting 
>>> problems and receiving back questions instead of answers, 
>>> considerations more philosophic than technical .
>>> The point is that i bought  from Ettus a device which was promising 
>>> and publishing certain level of performances.
>>> I have to admit that all was true up  to about a year ago , not 
>>> anymore now why? What should i do to be able  to see my expectations 
>>> satisfied?
>>> If a USB Linux based system is not able to sustain your products 
>>> what type of consideration you think we are forced to have?
>>> nando
>> I'm not sure how I can provide technical support if asking clarifying 
>> questions is not acceptable.
>>
>> You note that "up to a year ago, I could achieve this performance". 
>> But what has changed?  From your messages it seems like
>>   OS and computer hardware have changed.  Unless I'm misunderstanding 
>> what you're saying.  When you say performance has changed,
>>   do you mean with *exactly the same hardware and OS environment*?? 
>> If so, the only thing I can think of is that a kernel update has
>>   changed the performance envelope of USB support.   If you're on an 
>> Intel CPU, that kernel update may have turned on something called
>>   KPTI, which has often significant performance implications--up to 
>> 30%.  You might check the status of KPTI on your systems, to see if any
>>   kernel update has suddenly turned this on:
>>
>> https://askubuntu.com/questions/992137/how-to-check-that-kpti-is-enabled-on-my-ubuntu 
>>
>>
>> Having said all that, I went into the lab today to try out 
>> high-performance using a B200mini, on a different system.  I was able 
>> to achieve
>>   56Msps sustained without over-runs.
>>
>> This is with:
>>
>> processor : 0
>> vendor_id : GenuineIntel
>> cpu family : 6
>> model : 58
>> model name : Intel(R) Xeon(R) CPU E3-1230 V2 @ 3.30GHz
>>
>> The USB controller was:
>>
>> 03:00.0 USB controller:
>> Etron Technology, Inc. EJ188/EJ198 USB 3.0 Host Controller (prog-if 
>> 30 [XHCI])
>> Subsystem: Etron Technology, Inc. EJ188/EJ198 USB 3.0
>> Host Controller Flags: bus master, fast devsel, latency 0, IRQ 31 
>> Memory at df300000 (64-bit, non-prefetchable) [size=32K]
>> Capabilities: <access denied> Kernel driver in use: xhci_hcd
>>
>> And kernel version is:
>>
>> Linux localhost.localdomain 5.7.15-100.fc31.x86_64 #1 SMP Tue Aug 11 
>> 17:18:01 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
>>
>> The UHD version was 3.14.1.0 -- same as on the AMD Phenom II X6 
>> system I tested yesterday.
>>
>> I used a simple Gnu Radio flow-graph, just like yesterday.
>>
>> I will go back into the lab later this evening or tomorrow and try 
>> the latest RC version of UHD, but my success with 56Msps against
>>   UHD 3.14.1.0  (what is packaged in Fedora 31) indicates that 
>> streaming at that rate continues to be possible with the right
>>   compute hardware and USB controller.
>>
>> It is interesting to note that on this system, the CPUs are operating 
>> in "Power Save" mode, and KPTI is *enabled*.  On the AMD system I tested
>>   yesterday, KPTI isn't enabled (because AMD doesn't need it), and 
>> the CPUs were operating in "Performance" mode.   So system performance
>>   envelope as a whole plays a significant role.
>>
>>
>>
>>>
>>> On 8/29/2020 20:51, Marcus D. Leech wrote:
>>>> On 08/29/2020 03:35 AM, Nando Pellegrini wrote:
>>>>> Marcus,
>>>>> Attached you can find the results of the benchmark test.
>>>>> I have been also compared the behavior with 2 different CPU and 
>>>>> different USB type 3.0 for the older tower PC, USB 3.1 on the 
>>>>> laptop, very strange the case of the older CPU generating an 
>>>>> overflow every minute.
>>>>> The conditions were exactly the same in all test with no other 
>>>>> visible activity on the machines.
>>>>> Release 14.0 seems a bit better with the benchmark but,sadly, the 
>>>>> 2 UHD release are not comparable because the 14.0 as soon as 
>>>>> generates an overflow indication drops in the timeout with no 
>>>>> recovery but final consideration is that fast sample rate became 
>>>>> unusable for long signal recording regardless to software release 
>>>>> and PC.
>>>>> I really hope for a solution.
>>>>> nando
>>>> I played a bit with a B210 on a Fedora 31 system today, and was 
>>>> unable to achieve greater than 37MSPS without overruns.
>>>>
>>>> I constructed a "degenerate-case" Gnu Radio flow graph that was just:
>>>>
>>>> uhd-source-->null-sink
>>>>
>>>> That's roughly equivalent to what benchmark_rate does, and I was 
>>>> forced to do that since F31 doesn't appear to package tools
>>>>   like benchmark_rate and some of the other UHD examples.
>>>>
>>>> This was with UHD 3.14.0.1
>>>>
>>>> The system was an AMD Phenom II X6 1090T.
>>>>
>>>> What i noticed was that above 38Msps, you'd get continuous 
>>>> over-runs, and at 38Msps, you'd get a burst of overruns whenever 
>>>> you switched to
>>>>   a new window.  This is CLEARLY a system effect, unrelated to UHD 
>>>> at all.  Likely contention for memory access, interrupt latency, or 
>>>> PCI-e
>>>>   transaction contention.  The CPU consumption for the gr-uhd 
>>>> thread that was servicing the USB interface never rose above 38% CPU.
>>>>   Now the UHD transport code is single-threaded.  It's tempting to 
>>>> suggest "why not make it multi-threaded?".  That was tried, several 
>>>> times,
>>>>   a few years back, and performance was *worse* with UHD transport 
>>>> spread over multiple threads.   Probably due to resource contention
>>>>   at the kernel interface.
>>>>
>>>> I'll note that no matter whether I specified sc8, sc12, or sc16 
>>>> sample sizes I saw the same behavior.  This indicates to me that it 
>>>> isn't
>>>>   USB *bandwidth* so much as USB (and by implication PCIe) offered 
>>>> *TRANSACTION* load.    It is likely the case that different USB3 
>>>> controllers
>>>>   make this better/worse, depending on their interrupt behavior, 
>>>> how they do DMA, etc, etc.  I did have to use num_recv_frames > 200 to
>>>>   achieve even this.
>>>>
>>>> I'll make a general comment that achieving loss-free, "real time", 
>>>> high-bandwidth streaming using a general-purpose operating system is
>>>>   always going to require a lot of tuning, and not a small amount 
>>>> of good luck.    Other applications of high-speed streaming are 
>>>> somewhat
>>>>   tolerant if one end does a "hey stop sending for a bit" -- like 
>>>> disk drives and network interfaces, etc.   But when you're trying 
>>>> to sample
>>>>   the "real world", you cannot reasonably put it "on hold" while 
>>>> you "catch up".  Which is why throwing more buffering at this 
>>>> problem generally
>>>>   doesn't work that well.  If the offered load exceeds long-term 
>>>> capacity, even by a tiny bit, you will end up "losing".    It is 
>>>> clear that "capacity"
>>>>   is only loosely-coupled to CPU performance, and much-better 
>>>> represented by overall *system* performance.
>>>>
>>>> Over the years, folks have pointed at UHD, hoping that some kind of 
>>>> performance-tuning exercise within UHD will get them the performance
>>>>   their application requires.  UHD has been, over the years 
>>>> (roughly 10 years at this point) optimized quite a bit.  But UHD 
>>>> lives within an overall
>>>>   *system* and it can only do as well as that *system* can provide.
>>>>
>>>>
>>>>
>>>>
>>>
>>
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
