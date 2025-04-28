Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF33BA9FD8C
	for <lists+usrp-users@lfdr.de>; Tue, 29 Apr 2025 01:09:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDCCD3860E4
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 19:09:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745881793; bh=Bma7U8KDDjLntf+3tAnCG0sYaoMHtt0ATVGRg1ZWhpo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iJpn5Hvz1kgFpM81KUSuysDEnXIazg0TvoAtAsHjPV9QuSoCEMHbEE60viQ6KqPdv
	 XKJBg6vRtaztQpZC1B2kZJWX7CdQYFZGJc14MCUV7USU/kYnQn1ULmZSa0XDZ3tWR5
	 0Ivv3/iKA7CFuhnY1FpUl386x8zCynU3mfAa8YuZSsbdOm/S6aehXy+I1wW3J7b/HW
	 NF14yexOCjSTYUBmxIDcQvVr4pn34mYda4Rh86vNLOjLa056eus3brenhXv6NIDio7
	 xPAd9tdyLIgF9EvpcELaFEZFwnXSO0xwHZ2Y9iuRJuX0qtJ0QrGBsqU7IbYNaNJ2JK
	 izDws9gL+hE8A==
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by mm2.emwd.com (Postfix) with ESMTPS id C817B385B83
	for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 19:08:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XT9xlUS6";
	dkim-atps=neutral
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3d7f111e9e1so62461105ab.1
        for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 16:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745881731; x=1746486531; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jjUqIpdgB3NsY7vvl5COgXudeZt7EfP1JMqaN21EhNg=;
        b=XT9xlUS6/QuxLZbOnTE85dZJvjzh5jOIwnIknktgz9TJaFzIRjkJOtoExIytmJDZXJ
         APXlGg3CywsgwGfhoaroZ4jmde8ZAV5qGEBnqT+Voz4e0KQpoBVu7CKSjm2Gr7VJ9DGA
         8HuovLoIsxp7l2JKxDcAZ8rhs5a7OIvHzpxVloBybZDSg6fYg8kAdrEQStwPMqeHZlkH
         55tZPqoasGvgIGgdvvahoH3Aw9gVi+mWopt01+VRr7nsvmTk1yhgoVTayf/6gMNLBCCY
         Asphm2Ac3WnDKlrMf4xIvm1CC2Cq9RbKu8KYbnmmbdsZEW+0Bgzu9MAJy4iEWwKkVnYX
         kDAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745881731; x=1746486531;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jjUqIpdgB3NsY7vvl5COgXudeZt7EfP1JMqaN21EhNg=;
        b=IprtT9JuvVbT8Xun4CY76Y+5YBJsft+Jq+TJ1dwEmiNj8qedFaYsGF7q8S+zvGYubC
         CcseB/H3X73CLXUYx5jHg1WW2nSoSocQNELXPZZVnIX7lDH65xpkJPylFK9bC1SSUVYK
         mVvckXNxuV0RE7rAjoq1yZn4vGbebXe5JZk33HB06i0T6HurLBeqvm50mJHxz486U1+W
         TkhZqacaVTE7RM2e3eMed1J1lDNwRB/MAp12e+s44AQ0SBA1qu5wQF8aVschCVyljgit
         pZZUt5clTxV70cBaZuIc9SwfFdYu+1atIQAyku+xPbVgQESg+09b6qv+4VHEsk32aUrz
         UMJA==
X-Gm-Message-State: AOJu0Yy/wI5ePgy77W8aj8PvxYyDL9WQTDtV5zKWa88pC46+cczsc5Ys
	heCeDHuVgp55i9DCqdmhtIcvfKji5SA0rDkPBHSeTSXSLH1Efi06eAbDA1ZGohUL04phD72xepJ
	G3edjJ/NyH+Kf5urJMGWYrnwq/y8=
X-Gm-Gg: ASbGncsYzt7zwoPoXbZJGf6W/StIyJ+eilL0ONMsjMkPXSGhmXIrPoK1G2WIQslmSMp
	TZhzf/4+fFANNIdjebRV5ZWTLob26Slv1aN/BbSaE7zAiSc5HE/BVyqgFw3urXWEtStqR0jNvAl
	aud1Wkn1c7jVfsBD5q
X-Google-Smtp-Source: AGHT+IEi5x53iYSLyH4sAueiYumSgKfKM8NLH+AR2f/xOSJO+AfX6dnIN2B+4ZieEcEer4y+b8fjh8eNqc5KShuvh1w=
X-Received: by 2002:a05:6e02:12c3:b0:3d3:d067:73f8 with SMTP id
 e9e14a558f8ab-3d95d275005mr13811845ab.11.1745881730689; Mon, 28 Apr 2025
 16:08:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
 <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com> <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
 <8660a987-f91a-402f-b575-a5b907a2e55e@gmail.com> <CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmail.com>
 <709f178e-0d6a-4c76-b40d-b88f5b0c80cf@gmail.com> <CAAxXO2HWGvwy=V80crP6yajNPeYjvn3qYV-kyPPD0Wcaq-4tAA@mail.gmail.com>
 <CAAxXO2EHUfxCoFaBMiUkp=JYvv4hgNYtbVwpW6udYajdtdxSBA@mail.gmail.com>
 <CAAxXO2H8FN9ND+xwwn2H6u4z0pVrGwXFmwnUFdsi+FTOa=g8Tg@mail.gmail.com>
 <701bd52a-1b53-4553-bcfc-b5279fba1622@gmail.com> <CAAxXO2FapkYJ887B=2YjVStHmn9bS4LvHCk87_y52HpDajNPcQ@mail.gmail.com>
 <CAAxXO2EY9k1aGraSUTUEUE5ULvXLWS4k+yD+581+_yA5mwonig@mail.gmail.com>
 <dff7805e-fba9-4430-840d-97b82d880a37@gmail.com> <CAAxXO2Gf9J1MDYOykt+Bz+RS5_OjOAa1rAsnfs+sPdcWLgWgHg@mail.gmail.com>
 <CAAxXO2Eg3rxEJNSufR3tf1juKZC53KGH+2=_OGjpUeKnxwX=tg@mail.gmail.com> <57850d9f-28c6-4c6c-b9ea-ebe2cc690981@gmail.com>
In-Reply-To: <57850d9f-28c6-4c6c-b9ea-ebe2cc690981@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Tue, 29 Apr 2025 02:08:37 +0300
X-Gm-Features: ATxdqUGCbUGaQE01gbrSjuIBCYKFmsyR73oYI9IE4CkeOpo1UWXGXwleRkrCRc8
Message-ID: <CAAxXO2EJ+DcWJhUSDCf5tAnhNEPaaHrThqKBRzDQK+jwzd_RHQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: CCO42FBU7ZRRO6GFVQHL6XVUFKAPQSUR
X-Message-ID-Hash: CCO42FBU7ZRRO6GFVQHL6XVUFKAPQSUR
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCO42FBU7ZRRO6GFVQHL6XVUFKAPQSUR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0558018590784005491=="

--===============0558018590784005491==
Content-Type: multipart/alternative; boundary="00000000000060cc4d0633dec41b"

--00000000000060cc4d0633dec41b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 29, 2025 at 1:31=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 28/04/2025 18:04, Nikos Balkanas wrote:
>
> Hi Marcus,
>
> spb(=3Dsamples/buffer)  is not what I hoped for. It is just another way t=
o
> set the
> stream_cmd.num_samples in  the  streamer. I already use there MAXSMPS.
> Besides benchmark_rate reports maxsmps 1996 like me:(
> That part is only controlled by the MTU. Seems it is the same
> for everyone, and that we are using the generic chdr_sc16_to_xx
> instead the guts (sse2) conversion:( Unless they use the multi_usrp
> class and set spp on their own.
> I think that MAXSMPS used to be 1996, before someone changed it to
> 19960.
>
> BR
> Nikos
>
> BR
> Nikos
>
> Well, regardless of all of this, there's no way to pack more than a
> certain number of samples into an MTU frame.
>
> If your high-level needs are to process "things" in larger chunks, you
> need to layer something on top of what UHD
>   does, since it is, at the end of the day, a hardware driver library.
> It's not an application layer programming framework.
>
> Not really. I just need for FFT 1024 samples at the moment. My concern is
more about the sse2 code not used:(
What about packet fragmentation? NICs can handle those...

>
> On Mon, Apr 28, 2025 at 5:22=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Thx Marcus for the clarifications,
>>
>> On Mon, Apr 28, 2025 at 4:37=E2=80=AFPM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 28/04/2025 05:33, Nikos Balkanas wrote:
>>>
>>> Compiled uhd 4.6.0 in debug mode.
>>> From the output I get:
>>>
>>> [DEBUG] [0/Radio#0] spp(=3D samples per package) value 2032 exceeds MTU=
 of
>>> 8000! Coercing to 1996
>>> Mon Apr 28 09:57:02 2025 [00] [*] scanner.l:1443:main Incorrect
>>> maxsamples (1996). Expected 19960.
>>> Mon Apr 28 09:57:02 2025 [00] [+] Max samples/buffer[0]: 1996
>>> 1) Line mtu is 9000 not 8000
>>> 2) 2032 is not larger than 8000 <=3D Bug?
>>> 3) seems that spp is setting my maxsmps
>>>
>>> That's number of *SAMPLES*.  Samples are 4 bytes total.
>>>
>>
>> Aaaah. I'll have to check the SPB option. Otherwise an 80K MTU is
>> unreasonable:)
>> This also means that 1 sample =3D 1 real + 1 imag =3D 32 bits with sc16
>> encoding
>>
>> .
>>>
>>
>> A lot of network hardware, particularly 1Gbit hardware doesn't *ACTUALLY=
*
>>> support an MTU of more than 8000, and I think
>>>   UHD uses PMTU discovery.    I found that with RealTek NICs, even when
>>> you set the MTU to 9000, it actually only supports
>>>   8000.
>>>
>>> Same case with my Mellanox NIC. But 8000 is close enough:)
>>
>>>
>>>
>>> Of the examples I tried the rx_samples_c. It is the same case like mine=
:
>>> single usrp. We use the same commands
>>> and we are getting the same output:( 1996 maxsmpls.
>>> The error text and code are from host/lib/rfnoc/radio_control_impl.cpp:
>>> 199
>>> I would rather not touch it. I don't know the uhd architecture and
>>> especially the rfnoc/uhd interface.
>>> Besides I am a c programmer, not c++:(
>>> multi_usrp class has a set_rx_spp function, but it is not for me:(
>>>
>>> You can look at the benchmark_rate example to see how to set a
>>> samples-per-buffer other than the default, which is
>>>   based on the MTU.    It uses an "SPB" command-line parameter.
>>>
>>> Thx, I will check it out, when I get back to ubuntu.. Now I am in
>> windows:(
>> benchmark_rate uses the multi-usrp class.
>>
>>>
>>> HTH
>>> Nikos
>>>
>>> On Mon, Apr 28, 2025 at 6:02=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>
>>> wrote:
>>>
>>>> Point taken:) I'm proposing smt different:
>>>> pchar +ICMP are just to test line and connectors. First step. Not to
>>>> bench USRP.
>>>> benchmark_rate is to bench/stress usrp.
>>>> These 2 are independent, and complementary.
>>>> Pchar is telling me nothing more than my fiber cable and connectors ar=
e
>>>> good.
>>>> It saved me a trip tomorrow to my local PC store, where fiber cable an=
d
>>>> connectors are ~7 E each.
>>>> benchmark_rate on the other hand is quite interesting.
>>>> It points to software,and particularly my uhd_init()
>>>>
>>>> Just found and downloaded the sources to uhd 4.6.0 from Ubuntu
>>>> Launchpad.
>>>> Now I can go through the source of the example you told me:)
>>>> Ettus used  to keep an archive of old uhd sources around. Seems it's
>>>> gone:(
>>>> Open source means, among others, free to choose the source version tha=
t
>>>> you need...
>>>> Having the latest source in Github is only partly open source.
>>>> During development we need to freeze updates. When in 5 years we go
>>>> into production we can't find the old sources anymore:(
>>>> If a customer discovers a bug, not in our code, but in one of the
>>>> libraries that
>>>> we use, what are we gonna do?
>>>>
>>>> BR
>>>> Nikos
>>>>
>>>>
>>>>
>>>> On Mon, Apr 28, 2025 at 5:01=E2=80=AFAM Marcus D. Leech <
>>>> patchvonbraun@gmail.com> wrote:
>>>>
>>>>> On 27/04/2025 21:58, Nikos Balkanas wrote:
>>>>>
>>>>> My bad:
>>>>>
>>>>> throughput of 5.619 Kb/s requesting ICMP replies, +> throughput of
>>>>> 5,619 Kb/s requesting ICMP replies
>>>>> Local thousand separator is ".", whereas in the US is ",":(
>>>>>
>>>>> It is STILL the case that the ICMP machinery in these radios is
>>>>> ABSOLUTELY NOT on the fast-path inside
>>>>>   the hardware.  The only way to get a good feel for how much sample
>>>>> bandwidth they can process is
>>>>>   with examples like "benchmark_rate".
>>>>>
>>>>>
>>>>>
>>>>> On Mon, Apr 28, 2025 at 12:37=E2=80=AFAM Nikos Balkanas <nbalkanas@gm=
ail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Marcus,
>>>>>>
>>>>>> You were right. No need to change NIC:)
>>>>>> This is not a software issue. uhd_rx_streamer_max_num_samps runs
>>>>>> right after uhd initialization before
>>>>>> any other code had the chance to run.
>>>>>> Link capacity doesn't seem to be the issue either...
>>>>>> Running pchar on the link, descendant of pathchar, reports a
>>>>>> throughput of 5.619 Kb/s requesting ICMP replies,
>>>>>> to varying packet sizes (32->9000 (MTU), incr by 32).
>>>>>> sudo pchar -m 9000 -p ipv4icmp usrp
>>>>>> https://www.kitchenlab.org/www/bmah/Software/pchar/
>>>>>>
>>>>>> It corresponds to 351.218.019 16-bit samples or 175,609.044 32-bit
>>>>>> samples, if each sample is 32-bit(real + imag)
>>>>>> Seems that uhd is not running at link capacity but is doing smt else=
.
>>>>>> I will have  to download and check with the sources...
>>>>>> The package version for Ubuntu 24.04 is uhd 4.6.0.
>>>>>> Where can I download the sources for uhd 4.6.0?
>>>>>>
>>>>>> BR
>>>>>> Nikos
>>>>>>
>>>>>> On Sat, Apr 26, 2025 at 7:02=E2=80=AFAM Nikos Balkanas <nbalkanas@gm=
ail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Thanks for your time.
>>>>>>> I will check out the example.
>>>>>>> This is not a buffer problem. I just need 1024 Samples
>>>>>>> (real+imaginary) for FFT...
>>>>>>> I should be able to get them in a single pass.
>>>>>>> You saw my code, not a smoking gun there.
>>>>>>>
>>>>>>> This is probably is a physical problem.
>>>>>>> Cable is an SFP fiber dedicated line. Cannot go bad.
>>>>>>> Maybe the connections are not sitting right :(...
>>>>>>>
>>>>>>> BR
>>>>>>> Nikos
>>>>>>>
>>>>>>> On Sat, Apr 26, 2025 at 6:45=E2=80=AFAM Marcus D. Leech <
>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>
>>>>>>>> On 25/04/2025 23:33, Nikos Balkanas wrote:
>>>>>>>>
>>>>>>>> Actually MTU is 9000. This is one of the recommendations...
>>>>>>>> I tried it with MTU 1500. It was worse:(
>>>>>>>> maxsamples dropped to 364...
>>>>>>>>
>>>>>>>> Right, 9000, rather than 8000.
>>>>>>>>
>>>>>>>> Upgrading to 10Gbit wont' give you larger MTU.
>>>>>>>>
>>>>>>>> What you're trying to do, I think, is to solve a buffer-management
>>>>>>>> problem in your *application* at entirely the wrong
>>>>>>>>   level in the stack.
>>>>>>>>
>>>>>>>> It is EXCEEDINGLY COMMON for hardware drivers to only be able to
>>>>>>>> deliver in chunks that may not be perfectly adapted to
>>>>>>>>   the requirements of your application.  So, a common programming
>>>>>>>> pattern is to deal with this in your application.
>>>>>>>>
>>>>>>>> You should probably look at example code like rx_samples_to_file
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
>>>>>>>> UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
>>>>>>>> [INFO] [X300] X300 initialization sequence...
>>>>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>>>>> [WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a
>>>>>>>> send frame size of at least 8000 for best
>>>>>>>> performance, but your configuration will only allow 1472.This may
>>>>>>>> negatively impact your maximum achievable sample rate.
>>>>>>>> Check the MTU on the interface and/or the send_frame_size argument=
.
>>>>>>>> [WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a
>>>>>>>> receive frame size of at least 8000 for best
>>>>>>>> performance, but your configuration will only allow 1472.This may
>>>>>>>> negatively impact your maximum achievable sample rate.
>>>>>>>> Check the MTU on the interface and/or the recv_frame_size argument=
.
>>>>>>>> [INFO] [GPS] No GPSDO found
>>>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>>> Target sock buff size: 24912805 bytes.
>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D24912805
>>>>>>>> Sat Apr 26 06:30:34 2025 [00] [+] Created USRP with args
>>>>>>>> Sat Apr 26 06:30:34 2025 [00] [+] Master clock is at 200 Mhz
>>>>>>>> Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
>>>>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>>>>> Target sock buff size: 24912805 bytes.
>>>>>>>> Actual sock buff size: 1048576 bytes.
>>>>>>>> See the transport application notes on buffer resizing.
>>>>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D24912805
>>>>>>>> Sat Apr 26 06:30:34 2025 [00] [*] scanner.l:1446:main Incorrect
>>>>>>>> maxsamples (364). Expected 19960.
>>>>>>>> Sat Apr 26 06:30:34 2025 [00] [+] Max samples/buffer[0]: 364
>>>>>>>> [WARNING] [0/Radio#0] Ignoring stream command for finite
>>>>>>>> acquisition of zero sam
>>>>>>>>
>>>>>>>> Nikos
>>>>>>>>
>>>>>>>> On Sat, Apr 26, 2025 at 5:46=E2=80=AFAM Marcus D. Leech <
>>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> On 25/04/2025 22:26, Nikos Balkanas wrote:
>>>>>>>>>
>>>>>>>>> Thanks Marcus,
>>>>>>>>>
>>>>>>>>> for your fast reply.
>>>>>>>>>
>>>>>>>>> On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marcus D. Leech <
>>>>>>>>> patchvonbraun@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>>> On 25/04/2025 20:50, Nikos Balkanas wrote:
>>>>>>>>>>
>>>>>>>>>> Hello,
>>>>>>>>>>
>>>>>>>>>> I need to buy a new NIC. What would you suggest?
>>>>>>>>>> The one I use is an old Mellanox 10 Gbs, before the Connect-4
>>>>>>>>>> series.
>>>>>>>>>> It can only do 1996 S/s, need 19960 (10x more) to work with
>>>>>>>>>> latest uhd.
>>>>>>>>>> Using Ubuntu 24.04 and uhd 4.6.0
>>>>>>>>>>
>>>>>>>>>> So, 1.996ksps vs 19.960ksps?   You hardly need a 10Gbit link to
>>>>>>>>>> support that.  So, perhaps something
>>>>>>>>>>   is being lost here in your requirements?
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> True. Can't explain it in terms of bandwidth. 16 * 1996 =3D 31.93=
6
>>>>>>>>> Kbps, 16 * 19960 =3D 319.360 Kbps well short of a 10 Gbps line:(
>>>>>>>>> Does a complex pair count as 1 sample, or 2?
>>>>>>>>> I have followed all the instructions in
>>>>>>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
,
>>>>>>>>> Even installed the DPDK drivers. My Mellanox is too old to use
>>>>>>>>> their OFED drivers:(
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On a related question. it seems that the streamer doesn't crash
>>>>>>>>>> anymore
>>>>>>>>>> when receiving less than MAXSPS samples, instead it reads 0:(
>>>>>>>>>> This was due to the sse2 code not aligned in convert.
>>>>>>>>>> I change my stream args to cpu_format=3Dsc16, otw=3Dsc16, so no
>>>>>>>>>> conversion required.
>>>>>>>>>> Streamer still doesn't read anything. Is there a reason for it?
>>>>>>>>>>
>>>>>>>>>> You'd need to share more of your code.  This should just work as
>>>>>>>>>> far as I can tell.
>>>>>>>>>>
>>>>>>>>>> Thanks. these are just the usrp code:
>>>>>>>>>
>>>>>>>>> int main()
>>>>>>>>> {
>>>>>>>>>       uhd_stream_args_t stream_args =3D
>>>>>>>>>                                                            {
>>>>>>>>>
>>>>>>>>> .cpu_format =3D "sc16",
>>>>>>>>>
>>>>>>>>> .otw_format =3D "sc16",
>>>>>>>>>
>>>>>>>>> .args =3D "",
>>>>>>>>>
>>>>>>>>> .n_channels =3D 1,
>>>>>>>>>
>>>>>>>>>  .channel_list =3D &channel
>>>>>>>>>                                                              };
>>>>>>>>> ..uhd_stream_cmd_t stream_cmd =3D
>>>>>>>>>                                                              {
>>>>>>>>>
>>>>>>>>>  .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>>>>>>>
>>>>>>>>> .stream_now =3D true
>>>>>>>>>                                                               };
>>>>>>>>>
>>>>>>>>>     if (uhd_init(0, 0, gain)) do_exit(20);
>>>>>>>>>>     if ((err =3D uhd_usrp_get_rx_stream(dev[0], &stream_args,
>>>>>>>>>> rx_streamer[0])))
>>>>>>>>>>     {
>>>>>>>>>>          uhd_get_last_error(errmsg, 127);
>>>>>>>>>>          error(log, "Failed to get streamer[0] (%d). %s.\n", 0,
>>>>>>>>>> FL, LN, FN, err, errmsg);
>>>>>>>>>>         uhd_rx_streamer_free(&rx_streamer[0]);
>>>>>>>>>>          rx_streamer[0] =3D NULL;
>>>>>>>>>>          uhd_rx_metadata_free(&md[0]);
>>>>>>>>>>         md[0] =3D NULL;
>>>>>>>>>>         do_exit(30);
>>>>>>>>>>     }
>>>>>>>>>>      if ((err =3D uhd_rx_streamer_max_num_samps(rx_streamer[0],
>>>>>>>>>> &maxsamps)))
>>>>>>>>>>
>>>>>>>>>      {
>>>>>>>>>>          uhd_get_last_error(errmsg, 127);
>>>>>>>>>>          error(log, "Failed to get max samples/buffer[0] (%d).
>>>>>>>>>> %s.\n", 0, FL, LN, FN, err,
>>>>>>>>>>            ..errmsg);
>>>>>>>>>>         do_exit(35);
>>>>>>>>>>     }
>>>>>>>>>>     if (maxsamps !=3D MAXSMPS)
>>>>>>>>>>         warn(log, "Incorrect maxsamples (%ld). Expected %d.\n",
>>>>>>>>>> 0, FL, LN, FN, maxsamps,
>>>>>>>>>>               MAXSMPS);
>>>>>>>>>>      info(log, "Max samples/buffer[0]: %ld\n", 0, maxsamps);
>>>>>>>>>>
>>>>>>>>>>     if ((err =3D uhd_rx_streamer_issue_stream_cmd(rx_streamer[0]=
,
>>>>>>>>>> &stream_cmd)))
>>>>>>>>>>
>>>>>>>>>     {
>>>>>>>>>>         uhd_get_last_error(errmsg, 127);
>>>>>>>>>>         error(log, "Failed to start streamer[0] (%d). %s.\n", 0,
>>>>>>>>>> FL, LN, FN, err, errmsg);
>>>>>>>>>>        do_exit(40);
>>>>>>>>>>      }
>>>>>>>>>>
>>>>>>>>>          [...]
>>>>>>>>>          do_exit(0)
>>>>>>>>>      }
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>> bool uhd_init(size_t channel, double srate, double gain)
>>>>>>>>>> {
>>>>>>>>>>     double tmp;
>>>>>>>>>>     uhd_rx_metadata_error_code_t err;
>>>>>>>>>>
>>>>>>>>>>      if ((err =3D
>>>>>>>>>> uhd_set_thread_priority(uhd_default_thread_priority, true)))
>>>>>>>>>>             warn(log, "Unable to set  main thread priority (%d).
>>>>>>>>>> %s.\n", 0, FL, LN, FN,
>>>>>>>>>>                   err, uhdError(err));
>>>>>>>>>>       /* Create USRP */
>>>>>>>>>>       f ((err =3D uhd_usrp_make(&dev[channel], "type=3Dx300")))
>>>>>>>>>>       {
>>>>>>>>>>           error(log, "Failed to create USRP (%d). %s.\n", 0, FL,
>>>>>>>>>> LN, FN, err,
>>>>>>>>>>                uhdError(err));
>>>>>>>>>>            dev[channel] =3D NULL;
>>>>>>>>>>             return(FAIL);
>>>>>>>>>>
>>>>>>>>>          }
>>>>>>>>>>          info(stderr, "Created USRP with args\n", 0);
>>>>>>>>>>
>>>>>>>>>>     /* Create RX streamer */
>>>>>>>>>>     if ((err =3D uhd_rx_streamer_make(&rx_streamer[channel])))
>>>>>>>>>>     {
>>>>>>>>>>         error(log, "Failed to create rx_streamer[%d] (%d).
>>>>>>>>>> %s.\n", 0, FL, LN, FN,
>>>>>>>>>>             channel, err, uhdError(err));
>>>>>>>>>>          return(FAIL);
>>>>>>>>>>     }
>>>>>>>>>>     /* Create RX metadata */
>>>>>>>>>>     if ((err =3D uhd_rx_metadata_make(&md[channel])))
>>>>>>>>>>    {
>>>>>>>>>>        error(log, "Failed to create md[%d] (%d). %s.\n", 0, FL,
>>>>>>>>>> LN, FN, channel,
>>>>>>>>>>            err, uhdError(err));
>>>>>>>>>>         return(FAIL);
>>>>>>>>>>      }
>>>>>>>>>>
>>>>>>>>>>     /* Get master clock rate */
>>>>>>>>>>      if ((err =3D uhd_usrp_get_master_clock_rate(dev[channel], 0=
,
>>>>>>>>>> &tmp)))
>>>>>>>>>>
>>>>>>>>>       {
>>>>>>>>>>            error(log, "Failed to set master clock to %.0lf Mhz
>>>>>>>>>> (%d). %s.\n", 0, FL,
>>>>>>>>>>                LN, FN, tmp/1000000, err, uhdError(err));
>>>>>>>>>>             return(FAIL);
>>>>>>>>>>       }
>>>>>>>>>>       info(stderr, "Master clock is at %.0lf Mhz\n", 0,
>>>>>>>>>> tmp/1000000);
>>>>>>>>>>       /* Set the sample rate */
>>>>>>>>>>      if (srate && !uhd_set_rx_rate_check(channel, srate))
>>>>>>>>>> return(FAIL);
>>>>>>>>>>      /* Set the tuner gain SBX-120 is 0-31.5 in .5 db steps */
>>>>>>>>>>
>>>>>>>>>        if ((err =3D uhd_usrp_set_rx_gain(dev[channel], gain,
>>>>>>>>>> channel, "")))
>>>>>>>>>>        {
>>>>>>>>>>             error(log, "Failed to set tuner[%d] gain to %.0lf db
>>>>>>>>>> (%d). %s.\n", 0, FL,
>>>>>>>>>>                  LN, FN, channel, gain, err, uhdError(err));
>>>>>>>>>>             return(FAIL);
>>>>>>>>>>          }
>>>>>>>>>>          if (!(err =3D uhd_usrp_get_rx_gain(dev[channel], channe=
l,
>>>>>>>>>> "", &tmp)))
>>>>>>>>>>               info(log, "Tuner[%d] gain set to %.0lf (%.0lf)
>>>>>>>>>> dB\n", 0, channel, tmp, gain);
>>>>>>>>>>
>>>>>>>>>         ./* Set channel bw to conserve tuner resources. Not
>>>>>>>>> needed, set by srate */
>>>>>>>>>              uhd_usrp_set_rx_bandwidth(dev[channel], srate,
>>>>>>>>> channel);
>>>>>>>>>          ./* Disable subtracting constant averaged background.
>>>>>>>>> Signal looks cleaner */
>>>>>>>>>             if ((err =3D
>>>>>>>>> uhd_usrp_set_rx_dc_offset_enabled(dev[channel], false, channel)))
>>>>>>>>>              {
>>>>>>>>>                  warn(log, "Failed to disable FPGA DC offset on
>>>>>>>>> channel %d(%d). %s.\n", 0,
>>>>>>>>>                      FL, LN, FN, channel, err, uhdError(err));
>>>>>>>>>                }
>>>>>>>>>                info(stderr, "Disabled FPGA DC offset on channel
>>>>>>>>> %d\n", 0, channel);
>>>>>>>>>                return(SUCCESS);
>>>>>>>>>          }
>>>>>>>>>
>>>>>>>>> This is the generated output:
>>>>>>>>>
>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
>>>>>>>>> UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
>>>>>>>>> [INFO] [X300] X300 initialization sequence...
>>>>>>>>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>>>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Created USRP with args
>>>>>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Master clock is at 200 Mhz
>>>>>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0] gain set to 30 (30) dB
>>>>>>>>> Sat Apr 26 03:33:48 2025 [00] [*] scanner.l:1446:main Incorrect
>>>>>>>>> maxsamples (1996). Expected 19960.
>>>>>>>>> Sat Apr 26 03:33:48 2025 [00] [+] Max samples/buffer[0]: 1996
>>>>>>>>> [WARNING] [0/Radio#0] Ignoring stream command for finite
>>>>>>>>> acquisition of zero samples
>>>>>>>>> I hope this reads OK. Maybe next time I should attach the code:)
>>>>>>>>>
>>>>>>>>>> TIA
>>>>>>>>>> Nikos
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> I believe that max number of samples-per-buffer is limited by MT=
U
>>>>>>>>> size.   Which is typically around 8000 or so for "jumbo frames".
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>
>>>
>

--00000000000060cc4d0633dec41b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 29, 2025 at 1:31=
=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 28/04/2025 18:04, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div style=3D"font-size:small">Hi Marcus,</div>
        <div style=3D"font-size:small"><br>
        </div>
        <div style=3D"font-size:small">spb(=3Dsamples/buffer)=C2=A0
          is not what I hoped for. It is just another way to set the=C2=A0<=
/div>
        <div style=3D"font-size:small">stream_cmd.num_samples
          in=C2=A0 the=C2=A0 streamer. I already use there MAXSMPS.</div>
        <div style=3D"font-size:small">Besides
          benchmark_rate reports maxsmps 1996 like me:(</div>
        <div style=3D"font-size:small">That part is
          only controlled by the MTU. Seems it is the same</div>
        <div style=3D"font-size:small">for everyone,
          and that we are using the generic chdr_sc16_to_xx</div>
        <div style=3D"font-size:small">instead the
          guts (sse2) conversion:( Unless they use the multi_usrp</div>
        <div style=3D"font-size:small">class and set
          spp on their own.</div>
        <div style=3D"font-size:small">I think that
          MAXSMPS used to be 1996, before someone changed it to=C2=A0</div>
        <div style=3D"font-size:small">19960.</div>
        <div style=3D"font-size:small"><br>
        </div>
        <div style=3D"font-size:small">BR</div>
        <div style=3D"font-size:small">Nikos</div>
        <div style=3D"font-size:small"><br>
        </div>
        <div style=3D"font-size:small">BR</div>
        <div style=3D"font-size:small">Nikos</div>
      </div>
    </blockquote>
    Well, regardless of all of this, there&#39;s no way to pack more than a
    certain number of samples into an MTU frame.<br>
    <br>
    If your high-level needs are to process &quot;things&quot; in larger ch=
unks,
    you need to layer something on top of what UHD<br>
    =C2=A0 does, since it is, at the end of the day, a hardware driver
    library.=C2=A0 It&#39;s not an application layer programming framework.=
<br><br></div></blockquote><div><span class=3D"gmail_default" style=3D"font=
-size:small">Not really. I just need for FFT 1024 samples at the moment. My=
 concern is more about the sse2 code not used:(</span></div><div class=3D"g=
mail_default" style=3D"font-size:small">What about packet fragmentation? NI=
Cs can handle those...</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28, 2025 at
          5:22=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gm=
ail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div style=3D"font-size:small">Thx
                Marcus for the clarifications,</div>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28, 2025 at
                4:37=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div>
                  <div>On 28/04/2025 05:33, Nikos Balkanas wrote:<br>
                  </div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">
                      <div style=3D"font-size:small">Compiled uhd 4.6.0 in
                        debug mode.</div>
                      <div style=3D"font-size:small">From the output I
                        get:</div>
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small">[DEBUG] [0/Radio#0]
                        spp(=3D samples per package) value 2032 exceeds
                        MTU of 8000! Coercing to 1996<br>
                        Mon Apr 28 09:57:02 2025 [00] [*]
                        scanner.l:1443:main Incorrect maxsamples (1996).
                        Expected 19960.<br>
                        Mon Apr 28 09:57:02 2025 [00] [+] Max
                        samples/buffer[0]: 1996</div>
                      <div style=3D"font-size:small">1) Line mtu is 9000
                        not 8000</div>
                      <div style=3D"font-size:small">2) 2032 is not larger
                        than 8000 &lt;=3D Bug?</div>
                      <div style=3D"font-size:small">3) seems that spp is
                        setting my maxsmps</div>
                    </div>
                  </blockquote>
                  That&#39;s number of *SAMPLES*.=C2=A0 Samples are 4 bytes
                  total.</div>
              </blockquote>
              <div>=C2=A0</div>
              <div><span class=3D"gmail_default" style=3D"font-size:small">=
Aaaah.
                  I&#39;ll have to check the SPB option. Otherwise an 80K
                  MTU is unreasonable:)=C2=A0</span>=C2=A0</div>
              <div>
                <div style=3D"font-size:small">This
                  also means that 1 sample =3D 1 real=C2=A0+ 1 imag =3D 32 =
bits
                  with sc16 encoding</div>
                <br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div>.</div>
              </blockquote>
              <div style=3D"font-size:small"><br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div> A lot of network hardware, particularly 1Gbit
                  hardware doesn&#39;t *ACTUALLY* support an MTU of more
                  than 8000, and I think<br>
                  =C2=A0 UHD uses PMTU discovery.=C2=A0=C2=A0=C2=A0 I found=
 that with
                  RealTek NICs, even when you set the MTU to 9000, it
                  actually only supports<br>
                  =C2=A0 8000.<br>
                  <br>
                </div>
              </blockquote>
              <div><span class=3D"gmail_default" style=3D"font-size:small">=
Same
                  case with my Mellanox NIC. But 8000 is close enough:)</sp=
an>=C2=A0</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div> <br>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small">Of the examples I
                        tried the rx_samples_c. It is the same case like
                        mine: single usrp. We use the same commands</div>
                      <div style=3D"font-size:small">and we are getting
                        the same output:( 1996 maxsmpls.</div>
                      <div style=3D"font-size:small">The error text and
                        code are
                        from=C2=A0host/lib/rfnoc/radio_control_impl.cpp: 19=
9</div>
                      <div style=3D"font-size:small">I would rather not
                        touch it. I don&#39;t know the uhd architecture and
                        especially the rfnoc/uhd interface.</div>
                      <div style=3D"font-size:small">Besides I am a c
                        programmer, not c++:(</div>
                      <div style=3D"font-size:small">multi_usrp class has
                        a set_rx_spp function, but it is not for me:(</div>
                    </div>
                  </blockquote>
                  You can look at the benchmark_rate example to see how
                  to set a samples-per-buffer other than the default,
                  which is<br>
                  =C2=A0 based on the MTU.=C2=A0=C2=A0=C2=A0 It uses an &qu=
ot;SPB&quot; command-line
                  parameter.<br>
                  <br>
                </div>
              </blockquote>
              <div><span class=3D"gmail_default" style=3D"font-size:small">=
Thx,
                  I will check it out, when I get back to ubuntu.. Now I
                  am in windows:(</span></div>
              <div><span class=3D"gmail_default" style=3D"font-size:small">=
benchmark_rate
                  uses the multi-usrp class.=C2=A0</span>=C2=A0</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">
                      <div style=3D"font-size:small"><br>
                      </div>
                      <div style=3D"font-size:small">HTH</div>
                      <div style=3D"font-size:small">Nikos</div>
                    </div>
                    <br>
                    <div class=3D"gmail_quote">
                      <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28,
                        2025 at 6:02=E2=80=AFAM Nikos Balkanas &lt;<a href=
=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&g=
t;
                        wrote:<br>
                      </div>
                      <blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                        <div dir=3D"ltr">
                          <div style=3D"font-size:small">Point taken:) I&#3=
9;m
                            proposing smt different:</div>
                          <div style=3D"font-size:small">pchar=C2=A0+ICMP a=
re
                            just to test line and connectors. First
                            step. Not to bench USRP.</div>
                          <div style=3D"font-size:small">benchmark_rate is
                            to bench/stress usrp.</div>
                          <div style=3D"font-size:small">These 2 are
                            independent, and complementary.</div>
                          <div style=3D"font-size:small">Pchar is telling
                            me nothing more than my fiber cable and
                            connectors are good.</div>
                          <div style=3D"font-size:small">It saved me a
                            trip tomorrow to my local PC store, where
                            fiber cable and connectors are ~7 E each.</div>
                          <div style=3D"font-size:small">benchmark_rate on
                            the other hand is quite interesting.</div>
                          <div style=3D"font-size:small">It points to
                            software,and particularly my uhd_init()</div>
                          <div style=3D"font-size:small"><br>
                          </div>
                          <div style=3D"font-size:small">Just found and
                            downloaded the sources to uhd 4.6.0 from
                            Ubuntu Launchpad.</div>
                          <div style=3D"font-size:small">Now I can go
                            through the source of the example you told
                            me:)</div>
                          <div style=3D"font-size:small">Ettus used=C2=A0 t=
o
                            keep an archive of old uhd sources around.
                            Seems it&#39;s gone:(=C2=A0</div>
                          <div style=3D"font-size:small">Open source
                            means, among others, free to choose the
                            source version that you need...</div>
                          <div style=3D"font-size:small">Having the latest
                            source in Github is only partly open source.</d=
iv>
                          <div style=3D"font-size:small">During
                            development we need to freeze updates. When
                            in 5 years we go</div>
                          <div style=3D"font-size:small">into production
                            we can&#39;t find the old sources anymore:(</di=
v>
                          <div style=3D"font-size:small">If a customer
                            discovers a bug, not in our code, but in one
                            of the libraries that</div>
                          <div style=3D"font-size:small">we use, what are
                            we gonna do?</div>
                          <div style=3D"font-size:small"><br>
                          </div>
                          <div style=3D"font-size:small">BR</div>
                          <div style=3D"font-size:small">Nikos=C2=A0</div>
                          <div style=3D"font-size:small"><br>
                          </div>
                          <div style=3D"font-size:small"><br>
                          </div>
                        </div>
                        <br>
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr
                            28, 2025 at 5:01=E2=80=AFAM Marcus D. Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun=
@gmail.com</a>&gt;
                            wrote:<br>
                          </div>
                          <blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
                            <div>
                              <div>On 27/04/2025 21:58, Nikos Balkanas
                                wrote:<br>
                              </div>
                              <blockquote type=3D"cite">
                                <div dir=3D"ltr">
                                  <div style=3D"font-size:small">My bad:</d=
iv>
                                  <div style=3D"font-size:small"><br>
                                  </div>
                                  <div style=3D"font-size:small">throughput
                                    of 5.619 Kb/s requesting ICMP
                                    replies,=C2=A0+&gt; throughput of 5,619
                                    Kb/s requesting ICMP replies</div>
                                  <div style=3D"font-size:small">Local
                                    thousand separator is &quot;.&quot;, wh=
ereas
                                    in the US is &quot;,&quot;:( <br>
                                  </div>
                                </div>
                              </blockquote>
                              It is STILL the case that the ICMP
                              machinery in these radios is ABSOLUTELY
                              NOT on the fast-path inside<br>
                              =C2=A0 the hardware.=C2=A0 The only way to ge=
t a
                              good feel for how much sample bandwidth
                              they can process is<br>
                              =C2=A0 with examples like &quot;benchmark_rat=
e&quot;.<br>
                              <br>
                              <br>
                              <blockquote type=3D"cite"><br>
                                <div class=3D"gmail_quote">
                                  <div dir=3D"ltr" class=3D"gmail_attr">On
                                    Mon, Apr 28, 2025 at 12:37=E2=80=AFAM N=
ikos
                                    Balkanas &lt;<a href=3D"mailto:nbalkana=
s@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
                                    wrote:<br>
                                  </div>
                                  <blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                    <div dir=3D"ltr">
                                      <div style=3D"font-size:small">Hi
                                        Marcus,</div>
                                      <div style=3D"font-size:small"><br>
                                      </div>
                                      <div style=3D"font-size:small">You
                                        were right. No need to change
                                        NIC:)</div>
                                      <div style=3D"font-size:small">This
                                        is not a software
                                        issue.=C2=A0uhd_rx_streamer_max_num=
_samps
                                        runs right after uhd
                                        initialization before</div>
                                      <div style=3D"font-size:small">any
                                        other code had the chance to
                                        run.</div>
                                      <div style=3D"font-size:small">Link
                                        capacity doesn&#39;t seem to be the
                                        issue either...</div>
                                      <div style=3D"font-size:small">Runnin=
g
                                        pchar on the link, descendant of
                                        pathchar, reports a throughput
                                        of 5.619 Kb/s requesting ICMP
                                        replies,</div>
                                      <div style=3D"font-size:small">to
                                        varying packet sizes
                                        (32-&gt;9000 (MTU), incr by
                                        32).=C2=A0</div>
                                      <div style=3D"font-size:small">sudo
                                        pchar -m 9000 -p ipv4icmp usrp</div=
>
                                      <div style=3D"font-size:small"><a hre=
f=3D"https://www.kitchenlab.org/www/bmah/Software/pchar/" target=3D"_blank"=
>https://www.kitchenlab.org/www/bmah/Software/pchar/</a></div>
                                      <div style=3D"font-size:small"><br>
                                      </div>
                                      <div style=3D"font-size:small">It
                                        corresponds to 351.218.019
                                        16-bit samples or 175,609.044
                                        32-bit samples, if each sample
                                        is 32-bit(real=C2=A0+ imag)</div>
                                      <div style=3D"font-size:small">Seems
                                        that uhd is not running at link
                                        capacity but is doing smt else.</di=
v>
                                      <div style=3D"font-size:small">I
                                        will have=C2=A0 to download and che=
ck
                                        with the sources...</div>
                                      <div style=3D"font-size:small">The
                                        package version for Ubuntu 24.04
                                        is uhd 4.6.0.</div>
                                      <div style=3D"font-size:small">Where
                                        can I download the sources for
                                        uhd 4.6.0?</div>
                                      <div style=3D"font-size:small"><br>
                                      </div>
                                      <div style=3D"font-size:small">BR</di=
v>
                                      <div style=3D"font-size:small">Nikos<=
/div>
                                    </div>
                                    <br>
                                    <div class=3D"gmail_quote">
                                      <div dir=3D"ltr" class=3D"gmail_attr"=
>On
                                        Sat, Apr 26, 2025 at 7:02=E2=80=AFA=
M
                                        Nikos Balkanas &lt;<a href=3D"mailt=
o:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt;
                                        wrote:<br>
                                      </div>
                                      <blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
                                        <div dir=3D"ltr">
                                          <div style=3D"font-size:small">Th=
anks
                                            for your time.</div>
                                          <div style=3D"font-size:small">I
                                            will check out the example.</di=
v>
                                          <div style=3D"font-size:small">Th=
is
                                            is not a buffer problem. I
                                            just need 1024 Samples
                                            (real+imaginary) for FFT...</di=
v>
                                          <div style=3D"font-size:small">I
                                            should be able to get them
                                            in a single pass.</div>
                                          <div style=3D"font-size:small">Yo=
u
                                            saw my code, not a smoking
                                            gun there.</div>
                                          <div style=3D"font-size:small"><b=
r>
                                          </div>
                                          <div style=3D"font-size:small">Th=
is
                                            is probably is a physical
                                            problem.</div>
                                          <div style=3D"font-size:small">Ca=
ble
                                            is an SFP fiber dedicated
                                            line. Cannot go bad.</div>
                                          <div style=3D"font-size:small">Ma=
ybe
                                            the connections are not
                                            sitting right :(...</div>
                                          <div style=3D"font-size:small"><b=
r>
                                          </div>
                                          <div style=3D"font-size:small">BR=
</div>
                                          <div style=3D"font-size:small">Ni=
kos</div>
                                        </div>
                                        <br>
                                        <div class=3D"gmail_quote">
                                          <div dir=3D"ltr" class=3D"gmail_a=
ttr">On Sat,
                                            Apr 26, 2025 at 6:45=E2=80=AFAM
                                            Marcus D. Leech &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</=
a>&gt; wrote:<br>
                                          </div>
                                          <blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
                                            <div>
                                              <div>On 25/04/2025 23:33,
                                                Nikos Balkanas wrote:<br>
                                              </div>
                                              <blockquote type=3D"cite">
                                                <div dir=3D"ltr">
                                                  <div style=3D"font-size:s=
mall">Actually MTU is 9000. This is one of the
                                                    recommendations...</div=
>
                                                  <div style=3D"font-size:s=
mall">I tried it with MTU 1500. It was worse:(</div>
                                                  <div style=3D"font-size:s=
mall">maxsamples dropped to 364...</div>
                                                </div>
                                              </blockquote>
                                              Right, 9000, rather than
                                              8000.<br>
                                              <br>
                                              Upgrading to 10Gbit wont&#39;
                                              give you larger MTU.<br>
                                              <br>
                                              What you&#39;re trying to do,
                                              I think, is to solve a
                                              buffer-management problem
                                              in your *application* at
                                              entirely the wrong<br>
                                              =C2=A0 level in the stack.<br=
>
                                              <br>
                                              It is EXCEEDINGLY COMMON
                                              for hardware drivers to
                                              only be able to deliver in
                                              chunks that may not be
                                              perfectly adapted to<br>
                                              =C2=A0 the requirements of yo=
ur
                                              application.=C2=A0 So, a comm=
on
                                              programming pattern is to
                                              deal with this in your
                                              application.<br>
                                              <br>
                                              You should probably look
                                              at example code like
                                              rx_samples_to_file<br>
                                              <br>
                                              <br>
                                              <blockquote type=3D"cite">
                                                <div dir=3D"ltr">
                                                  <div style=3D"font-size:s=
mall"><br>
                                                  </div>
                                                  <div style=3D"font-size:s=
mall">[INFO] [UHD] linux; GNU C++ version 13.2.0;
                                                    Boost_108300;
                                                    UHD_4.6.0.0+ds1-5.1ubun=
tu0.24.04.1<br>
                                                    [INFO] [X300] X300
                                                    initialization
                                                    sequence...<br>
                                                    [INFO] [X300]
                                                    Maximum frame size:
                                                    1472 bytes.<br>
                                                    [WARNING] [X300] For
                                                    the 192.168.40.2
                                                    connection, UHD
                                                    recommends a send
                                                    frame size of at
                                                    least 8000 for best<br>
                                                    performance, but
                                                    your configuration
                                                    will only allow
                                                    1472.This may
                                                    negatively impact
                                                    your maximum
                                                    achievable sample
                                                    rate.<br>
                                                    Check the MTU on the
                                                    interface and/or the
                                                    send_frame_size
                                                    argument.<br>
                                                    [WARNING] [X300] For
                                                    the 192.168.40.2
                                                    connection, UHD
                                                    recommends a receive
                                                    frame size of at
                                                    least 8000 for best<br>
                                                    performance, but
                                                    your configuration
                                                    will only allow
                                                    1472.This may
                                                    negatively impact
                                                    your maximum
                                                    achievable sample
                                                    rate.<br>
                                                    Check the MTU on the
                                                    interface and/or the
                                                    recv_frame_size
                                                    argument.<br>
                                                    [INFO] [GPS] No
                                                    GPSDO found<br>
                                                    [INFO] [X300] Radio
                                                    1x clock: 200 MHz<br>
                                                    [WARNING] [UDP] The
                                                    send buffer could
                                                    not be resized
                                                    sufficiently.<br>
                                                    Target sock buff
                                                    size: 24912805
                                                    bytes.<br>
                                                    Actual sock buff
                                                    size: 1048576 bytes.<br=
>
                                                    See the transport
                                                    application notes on
                                                    buffer resizing.<br>
                                                    Please run: sudo
                                                    sysctl -w
                                                    net.core.wmem_max=3D249=
12805<br>
                                                    Sat Apr 26 06:30:34
                                                    2025 [00] [+]
                                                    Created USRP with
                                                    args<br>
                                                    Sat Apr 26 06:30:34
                                                    2025 [00] [+] Master
                                                    clock is at 200 Mhz<br>
                                                    Sat Apr 26 06:30:34
                                                    2025 [00] [+]
                                                    Tuner[0] gain set to
                                                    30 (30) dB<br>
                                                    [WARNING] [UDP] The
                                                    send buffer could
                                                    not be resized
                                                    sufficiently.<br>
                                                    Target sock buff
                                                    size: 24912805
                                                    bytes.<br>
                                                    Actual sock buff
                                                    size: 1048576 bytes.<br=
>
                                                    See the transport
                                                    application notes on
                                                    buffer resizing.<br>
                                                    Please run: sudo
                                                    sysctl -w
                                                    net.core.wmem_max=3D249=
12805<br>
                                                    Sat Apr 26 06:30:34
                                                    2025 [00] [*]
                                                    scanner.l:1446:main
                                                    Incorrect maxsamples
                                                    (364). Expected
                                                    19960.<br>
                                                    Sat Apr 26 06:30:34
                                                    2025 [00] [+] Max
                                                    samples/buffer[0]:
                                                    364<br>
                                                    [WARNING]
                                                    [0/Radio#0] Ignoring
                                                    stream command for
                                                    finite acquisition
                                                    of zero sam</div>
                                                  <div style=3D"font-size:s=
mall"><br>
                                                  </div>
                                                  <div style=3D"font-size:s=
mall">Nikos</div>
                                                </div>
                                                <br>
                                                <div class=3D"gmail_quote">
                                                  <div dir=3D"ltr" class=3D=
"gmail_attr">On
                                                    Sat, Apr 26, 2025 at
                                                    5:46=E2=80=AFAM Marcus =
D.
                                                    Leech &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>=
&gt;
                                                    wrote:<br>
                                                  </div>
                                                  <blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
                                                    <div>
                                                      <div>On 25/04/2025
                                                        22:26, Nikos
                                                        Balkanas wrote:<br>
                                                      </div>
                                                      <blockquote type=3D"c=
ite">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div style=3D"fon=
t-size:small">Thanks Marcus,</div>
                                                          <div style=3D"fon=
t-size:small"><br>
                                                          </div>
                                                          <div style=3D"fon=
t-size:small">for your fast reply.</div>
                                                          </div>
                                                          <br>
                                                          <div class=3D"gma=
il_quote">
                                                          <div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvon=
braun@gmail.com</a>&gt;
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <div>On
                                                          25/04/2025
                                                          20:50, Nikos
                                                          Balkanas
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote type=
=3D"cite">
                                                          <div dir=3D"ltr">
                                                          <div style=3D"fon=
t-size:small">Hello,</div>
                                                          <div style=3D"fon=
t-size:small"><br>
                                                          </div>
                                                          <div style=3D"fon=
t-size:small">I need to buy a new NIC. What would you suggest?</div>
                                                          <div style=3D"fon=
t-size:small">The one I use is an old Mellanox 10 Gbs, before
                                                          the Connect-4
                                                          series.</div>
                                                          <div style=3D"fon=
t-size:small">It can only do 1996 S/s, need 19960 (10x more)
                                                          to work with
                                                          latest uhd.</div>
                                                          <div style=3D"fon=
t-size:small">Using Ubuntu 24.04 and uhd 4.6.0</div>
                                                          </div>
                                                          </blockquote>
                                                          So, 1.996ksps
                                                          vs
                                                          19.960ksps?=C2=A0=
=C2=A0
                                                          You hardly
                                                          need a 10Gbit
                                                          link to
                                                          support that.=C2=
=A0
                                                          So, perhaps
                                                          something<br>
                                                          =C2=A0 is being
                                                          lost here in
                                                          your
                                                          requirements?<br>
                                                          </div>
                                                          </blockquote>
                                                          <div><br>
                                                          </div>
                                                          <div style=3D"fon=
t-size:small">True. Can&#39;t explain it in terms of bandwidth. 16
                                                          * 1996 =3D
                                                          31.936 Kbps,
                                                          16 * 19960 =3D
                                                          319.360 Kbps
                                                          well short of
                                                          a 10 Gbps
                                                          line:(</div>
                                                          <div style=3D"fon=
t-size:small">Does a complex pair count as 1 sample, or 2?</div>
                                                          <div style=3D"fon=
t-size:small">I have followed all the instructions in=C2=A0<a href=3D"https=
://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" target=3D"_bl=
ank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>,=
</div>
                                                          <div style=3D"fon=
t-size:small">Even installed the DPDK drivers. My Mellanox is
                                                          too old to use
                                                          their OFED
                                                          drivers:(</div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <blockquote type=
=3D"cite">
                                                          <div dir=3D"ltr">
                                                          <div style=3D"fon=
t-size:small"><br>
                                                          </div>
                                                          <div style=3D"fon=
t-size:small">On a related question. it seems that the
                                                          streamer
                                                          doesn&#39;t crash
                                                          anymore</div>
                                                          <div style=3D"fon=
t-size:small">when receiving less than MAXSPS samples, instead
                                                          it reads 0:(</div=
>
                                                          <div style=3D"fon=
t-size:small">This was due to the sse2 code not aligned in
                                                          convert.</div>
                                                          <div style=3D"fon=
t-size:small">I change my stream args to cpu_format=3Dsc16,
                                                          otw=3Dsc16, so
                                                          no conversion
                                                          required.</div>
                                                          <div style=3D"fon=
t-size:small">Streamer still doesn&#39;t read anything. Is there a
                                                          reason for it?</d=
iv>
                                                          <div style=3D"fon=
t-size:small"><br>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          You&#39;d need to
                                                          share more of
                                                          your code.=C2=A0
                                                          This should
                                                          just work as
                                                          far as I can
                                                          tell.<br>
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small"></span></div>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">Thanks. these are just the
                                                          usrp code:</span>=
</div>
                                                          <div><br>
                                                          </div>
                                                          <div style=3D"fon=
t-size:small">int main()</div>
                                                          <div style=3D"fon=
t-size:small">{</div>
                                                          <div style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0 uhd_stream_args_t stream_args =3D<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0{<br=
>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0
                                                          .cpu_format =3D
                                                          &quot;sc16&quot;,=
<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0
                                                          .otw_format =3D
                                                          &quot;sc16&quot;,=
<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 .args =3D
                                                          &quot;&quot;,<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0
                                                          .n_channels =3D
                                                          1,<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0
                                                          =C2=A0.channel_li=
st
                                                          =3D &amp;channel<=
br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0};<br>
..uhd_stream_cmd_t stream_cmd =3D<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0{<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0
                                                          =C2=A0.stream_mod=
e
                                                          =3D
                                                          UHD_STREAM_MODE_N=
UM_SAMPS_AND_DONE,<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                                          .stream_now =3D
                                                          true<br>
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 };</div>
                                                          <div style=3D"fon=
t-size:small"><br>
                                                          </div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div> <span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 </span>if
                                                          (uhd_init(0,
                                                          0, gain))
                                                          do_exit(20);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if ((err =
=3D
                                                          uhd_usrp_get_rx_s=
tream(dev[0],
&amp;stream_args, rx_streamer[0])))<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>uhd_get_last_error(errmsg,
                                                          127);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>error(log,
                                                          &quot;Failed to g=
et
                                                          streamer[0]
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL, LN, FN,
                                                          err, errmsg);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>uhd_rx_streamer_free(&amp;rx_streamer[0]);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>rx_streamer[0]
                                                          =3D NULL;<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>uhd_rx_metadata_free(&amp;md[0]);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>md[0] =3D
                                                          NULL;<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>do_exit(30);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>}<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if ((err =
=3D
                                                          uhd_rx_streamer_m=
ax_num_samps(rx_streamer[0],
&amp;maxsamps)))</div>
                                                          </blockquote>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>{<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>uhd_get_last_error(errmsg,
                                                          127);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>error(log,
                                                          &quot;Failed to g=
et
                                                          max
                                                          samples/buffer[0]
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL, LN, FN,
                                                          err,<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</span>..errmsg);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>do_exit(35);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>}<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if (maxsam=
ps !=3D
                                                          MAXSMPS)<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>warn(log,
                                                          &quot;Incorrect
                                                          maxsamples
                                                          (%ld).
                                                          Expected
                                                          %d.\n&quot;, 0, F=
L,
                                                          LN, FN,
                                                          maxsamps,<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</span>MAXSMPS);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>info(log,=
 &quot;Max
samples/buffer[0]: %ld\n&quot;, 0, maxsamps);<br>
                                                          <br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 i</span>f ((err =3D
                                                          uhd_rx_streamer_i=
ssue_stream_cmd(rx_streamer[0],
&amp;stream_cmd)))=C2=A0</div>
                                                          </blockquote>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br=
>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>uhd_get_last_error(errmsg,
                                                          127);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>error(log,
                                                          &quot;Failed to
                                                          start
                                                          streamer[0]
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL, LN, FN,
                                                          err, errmsg);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>do=
_exit(40);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>}<br>
                                                          </div>
                                                          </blockquote>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0[...]</span></div>
                                                          <div style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do_exit(0)</div>
                                                          <div style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0}</div>
                                                          <div style=3D"fon=
t-size:small">=C2=A0 =C2=A0 =C2=A0</div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div> bool
                                                          uhd_init(size_t
                                                          channel,
                                                          double srate,
                                                          double gain)<br>
                                                          {<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>double tmp=
;<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>uhd_rx_met=
adata_error_code_t
                                                          err;<br>
                                                          <br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if ((err =
=3D
                                                          uhd_set_thread_pr=
iority(uhd_default_thread_priority,
                                                          true)))<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</span>warn(log,
                                                          &quot;Unable to s=
et
                                                          =C2=A0main thread
                                                          priority (%d).
                                                          %s.\n&quot;, 0, F=
L,
                                                          LN, FN,<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>err,
uhdError(err));<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>/* Creat=
e
                                                          USRP */<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>f ((err =
=3D
                                                          uhd_usrp_make(&am=
p;dev[channel],
                                                          &quot;type=3Dx300=
&quot;)))<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>{<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</span>error(log,
                                                          &quot;Failed to
                                                          create USRP
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL, LN, FN,
                                                          err,<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</span>uhdError(err));<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</span>dev[channel]
                                                          =3D NULL;<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 r</span>eturn(FAIL);=C2=A0</div>
                                                          </blockquote>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</span>}<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>info(stderr,
                                                          &quot;Created USR=
P
                                                          with args\n&quot;=
,
                                                          0);<br>
                                                          <br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/* Create =
RX
                                                          streamer */<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if ((err =
=3D
                                                          uhd_rx_streamer_m=
ake(&amp;rx_streamer[channel])))<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>{<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>error(log,
                                                          &quot;Failed to
                                                          create
                                                          rx_streamer[%d]
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL, LN, FN,<br=
>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</span>channel,
                                                          err,
                                                          uhdError(err));<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>return(FAIL);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 </span>}<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/* Create =
RX
                                                          metadata */<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>if ((err =
=3D
                                                          uhd_rx_metadata_m=
ake(&amp;md[channel])))<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0</span>{<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>er=
ror(log,
                                                          &quot;Failed to
                                                          create md[%d]
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL, LN, FN,
                                                          channel,<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</span>err,
                                                          uhdError(err));<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>return(FAIL);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>}<br>
                                                          <br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</span>/* <span c=
lass=3D"gmail_default" style=3D"font-size:small">G</span>et master clock
                                                          rate */<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if ((err =
=3D
                                                          uhd_usrp_get_mast=
er_clock_rate(dev[channel],
                                                          0,
                                                          &amp;tmp)))=C2=A0=
</div>
                                                          </blockquote>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</sp=
an>{<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0</span>error(log,
                                                          &quot;Failed to s=
et
                                                          master clock
                                                          to %.0lf Mhz
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL,<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</span>LN,
                                                          FN,
                                                          tmp/1000000,
                                                          err,
                                                          uhdError(err));<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</span>return(FAIL);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </span>}<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>inf=
o(stderr,
                                                          &quot;Master cloc=
k
                                                          is at %.0lf
                                                          Mhz\n&quot;, 0,
                                                          tmp/1000000);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=A0</span>/* =
Set the
                                                          sample rate */<br=
>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>if (srate
                                                          &amp;&amp;
                                                          !uhd_set_rx_rate_=
check(channel,
                                                          srate))
                                                          return(FAIL);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</span>/* Set th=
e
                                                          tuner gain
                                                          SBX-120 is
                                                          0-31.5 in .5
                                                          db steps */=C2=A0=
</div>
                                                          </blockquote>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0i</=
span>f ((err =3D
                                                          uhd_usrp_set_rx_g=
ain(dev[channel],
                                                          gain, channel,
                                                          &quot;&quot;)))<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>{<=
br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</span>error(log,
                                                          &quot;Failed to s=
et
                                                          tuner[%d] gain
                                                          to %.0lf db
                                                          (%d). %s.\n&quot;=
,
                                                          0, FL,<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN,
                                                          FN, channel,
                                                          gain, err,
                                                          uhdError(err));<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</span>return(FAIL);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>}<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i<=
/span>f (!(err
                                                          =3D
                                                          uhd_usrp_get_rx_g=
ain(dev[channel],
                                                          channel, &quot;&q=
uot;,
                                                          &amp;tmp)))<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</span>info(log,
                                                          &quot;Tuner[%d]
                                                          gain set to
                                                          %.0lf (%.0lf)
                                                          dB\n&quot;, 0,
                                                          channel, tmp,<spa=
n class=3D"gmail_default" style=3D"font-size:small">=C2=A0</span>gain);</di=
v>
                                                          </blockquote>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</s=
pan>./* Set
                                                          channel bw to
                                                          conserve tuner
                                                          resources. Not
                                                          needed, set by
                                                          srate */<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</span>uhd_usrp_set_rx_bandwidth(dev[channel],
                                                          srate,
                                                          channel);<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span>./*
                                                          Disable
                                                          subtracting
                                                          constant
                                                          averaged
                                                          background.
                                                          Signal looks
                                                          cleaner */<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</span>if
                                                          ((err =3D
                                                          uhd_usrp_set_rx_d=
c_offset_enabled(dev[channel],
                                                          false,
                                                          channel)))<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</span>{<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</span>warn(log,
                                                          &quot;Failed to
                                                          disable FPGA
                                                          DC offset on
                                                          channel
                                                          %d(%d).
                                                          %s.\n&quot;, 0,<b=
r>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>FL,
                                                          LN, FN,
                                                          channel, err,
uhdError(err));</div>
                                                          <div class=3D"gma=
il_quote"><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>}<br>
                                                          <span class=3D"gm=
ail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</span>info(stderr,
                                                          &quot;Disabled FP=
GA
                                                          DC offset on
                                                          channel %d\n&quot=
;,
                                                          0, channel);<span=
 class=3D"gmail_default" style=3D"font-size:small"></span></div>
                                                          <div class=3D"gma=
il_quote"><span class=3D"gmail_default" style=3D"font-size:small">=C2=A0
                                                          =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>return(SUCCESS);<br>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0}</span></div>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small"><br>
                                                          </span></div>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">This is the generated
                                                          output:</span>=C2=
=A0</div>
                                                          <div><br>
                                                          </div>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small"></span>[INFO] [UHD] linux;
                                                          GNU C++
                                                          version
                                                          13.2.0;
                                                          Boost_108300;
UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1</div>
                                                          [INFO] [X300]
                                                          X300
                                                          initialization
                                                          sequence...<br>
                                                          [INFO] [X300]
                                                          Maximum frame
                                                          size: 8000
                                                          bytes.<br>
                                                          [INFO] [X300]
                                                          Radio 1x
                                                          clock: 200 MHz<br=
>
                                                          Sat Apr 26
                                                          03:33:48 2025
                                                          [00] [+]
                                                          Created USRP
                                                          with args<br>
                                                          Sat Apr 26
                                                          03:33:48 2025
                                                          [00] [+]
                                                          Master clock
                                                          is at 200 Mhz<br>
                                                          Sat Apr 26
                                                          03:33:48 2025
                                                          [00] [+]
                                                          Tuner[0] gain
                                                          set to 30 (30)
                                                          dB<br>
                                                          Sat Apr 26
                                                          03:33:48 2025
                                                          [00] [*]
                                                          scanner.l:1446:ma=
in
                                                          Incorrect
                                                          maxsamples
                                                          (1996).
                                                          Expected
                                                          19960.<br>
                                                          Sat Apr 26
                                                          03:33:48 2025
                                                          [00] [+] Max
                                                          samples/buffer[0]=
:
                                                          1996<br>
                                                          <div>[WARNING]
                                                          [0/Radio#0]
                                                          Ignoring
                                                          stream command
                                                          for finite
                                                          acquisition of
                                                          zero samples=C2=
=A0</div>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small"></span></div>
                                                          <div><span class=
=3D"gmail_default" style=3D"font-size:small">I hope this reads OK.
                                                          Maybe next
                                                          time I should
                                                          attach the
                                                          code:)</span>=C2=
=A0</div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div>
                                                          <blockquote type=
=3D"cite">
                                                          <div dir=3D"ltr">
                                                          <div style=3D"fon=
t-size:small"> </div>
                                                          <div style=3D"fon=
t-size:small">TIA</div>
                                                          <div style=3D"fon=
t-size:small">Nikos</div>
                                                          </div>
                                                          <br>
                                                          <fieldset></field=
set>
                                                          <pre>____________=
___________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                                                          </blockquote>
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                        </div>
                                                      </blockquote>
                                                      I believe that max
                                                      number of
                                                      samples-per-buffer
                                                      is limited by MTU
                                                      size.=C2=A0=C2=A0 Whi=
ch is
                                                      typically around
                                                      8000 or so for
                                                      &quot;jumbo frames&qu=
ot;.<br>
                                                      <br>
                                                      <br>
                                                    </div>
                                                  </blockquote>
                                                </div>
                                              </blockquote>
                                              <br>
                                            </div>
                                          </blockquote>
                                        </div>
                                      </blockquote>
                                    </div>
                                  </blockquote>
                                </div>
                              </blockquote>
                              <br>
                            </div>
                          </blockquote>
                        </div>
                      </blockquote>
                    </div>
                  </blockquote>
                  <br>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>

--00000000000060cc4d0633dec41b--

--===============0558018590784005491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0558018590784005491==--
