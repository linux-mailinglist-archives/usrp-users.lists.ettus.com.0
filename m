Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBBBA9F289
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 15:38:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E78C5385E9A
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 09:38:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745847521; bh=cbpka6TmUcq5RejVwAiG10qWdqX236ChSEXynVb2864=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LHV2QvUxP8AeEJ6sGitMtGPoxaPo6oQoruTPAp+yLBuvEPLOKhUAinQMlyIE81AyR
	 uG+dNelVba7c1QusEed08wP8HkcKb6nqW75fUpOWcanJr+pI5kegyC2ZIvjT4GEYAp
	 TtIFCe60f1S6aeChTJQCuLUFF7kdblzhqEsrxeSdUulpqRzik5hLFPJiTHD6eeTo6g
	 ztp0+td1NxC3HkZ1McD2yEn7g0GubB9gu3ChUfs0BTUN+zpmkI6HkfJTAj1KVzY6Bu
	 SngP4z/qbksV7MJHaT/22B6y0exxORI0KIX8pM9rlvxb9FdxiFsuIoIZv6WjMqyyuD
	 43hcAjiuqfn/g==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id E84DD385E2F
	for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 09:37:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HQZs57iW";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-476b89782c3so61986031cf.1
        for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 06:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745847459; x=1746452259; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B41IyotA6E2pV8OirCxsUprNybJHUOjtaIM3LTp6eXs=;
        b=HQZs57iWXIhAA9YWpgI/qtH3mN1fsqw4S/nmO3qG6zSRuNFPdFcJa3kBxw1OycllgP
         fHOQfljGZJ0R3Yrv+pOG7xmd3jLqhnfEI7Pa19oFj4ifojo0b5w0fce7dG+kU6PPnFEH
         MjwhzdtLHwY+B2wXvKbzX4YAWkCTBzwBtdGvzaqxCalsWdp1kbemBEbYTKMcF71gK3g3
         KNFs/dyZhsiFXoJ45F9crDWwMSw82YeAtZgsCREMNZdDyJ74bTJvGFcSnv05onPVyrGi
         kL2pbyeQnaLICFcuNErLAZBvcdvjHuTSYgBE+2S2xTZEqd2q15BxzSfSHnRxaYPBW1ni
         ZjYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745847459; x=1746452259;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B41IyotA6E2pV8OirCxsUprNybJHUOjtaIM3LTp6eXs=;
        b=Z+NVBHTOEOTZHsZTA5eb7LQo6LOGHUMW9MsTGHILLTjvazpyIOio1Zn6LS9eGh84U7
         dPzNyHtWphaw/vjeUsnWboI5OAtwdRIsUxYHjqdC8eAUe9Dqgg8hiaVjqrcmIgYPvv9Q
         gSqfTJPzzZp4EFiXZhNkJ3SzDQqK3x/hD3h5kmHLEMhSoVAINllkNaTPb1hgqSb4Anjj
         bdGC+YUk61C8hbrPIgV8u0XoY/DvR7f91jK7Yr7+p/gNAymg6g6tsVChbuGl7NqdJftB
         FDmITo/+dGx6YyNFrORPQnZC3TCJr+mP/GcCC7dTRh+C+sCHFFzgg25Os3kVP5qpXZvG
         UnAg==
X-Gm-Message-State: AOJu0Yxc1EpZGLscq2oQVngwIqBd12CbfvcKSJJRqCtqYL5o759YVBMq
	FBLAGkKH6lo6Ix9+I9G5pn3hQQketvl4YQw8KzwCkRqYpC8dlGkmTQvSnQ==
X-Gm-Gg: ASbGncsXBHHy76f6AY13/fxctgDAT2bbnWwTPIfL+rjzCKYuWBXVniGhfARMtdynS9L
	FmsmaQD22pAbfJkN++kiaNXzrpV2U4RO1+yJSmAzej/+pY5MSNLX+f6t4Aqf/j1dLS9RDfCNJGE
	L5xeGYytvmL3SWwZSrDqI+s/rzDqT+5k1TQTYO49xv1u8NP60US1w+SgNDblwmWtP9jUxYtOLwe
	SOWn7fgTLjFTOrMhL7f1X7/1vpfi0XA7hmyvg/N1lwUlbWiES1uPP3TaN+sSPqbggT2+9xjBchL
	MjNZNfV9MsDaiN7oKLLXlLz2HsbA9LlFUZjy2ybkHI318Jvdow==
X-Google-Smtp-Source: AGHT+IEa3vRsqUCunr4EweT8urztJr5QHsQ/7TFpy7N9mfJ72OppjprvtoOBUyW7RjeeOtvEUc9jYQ==
X-Received: by 2002:a05:622a:28a:b0:478:f755:95ab with SMTP id d75a77b69052e-48023121f36mr195391621cf.18.1745847459105;
        Mon, 28 Apr 2025 06:37:39 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-47e9eaf264dsm68635831cf.10.2025.04.28.06.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 06:37:38 -0700 (PDT)
Message-ID: <dff7805e-fba9-4430-840d-97b82d880a37@gmail.com>
Date: Mon, 28 Apr 2025 09:37:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
 <e08576a1-ede9-4f27-9706-8a38cfc50c57@gmail.com>
 <CAAxXO2GZw0DAYVYFdw3Jx9g5PCivquhcrBB2uk3ZRB4w1KbOvQ@mail.gmail.com>
 <8660a987-f91a-402f-b575-a5b907a2e55e@gmail.com>
 <CAAxXO2EyLchisQPwFa9B2s9eO+QR5JV98cfoX1nnRAU7hYaj9g@mail.gmail.com>
 <709f178e-0d6a-4c76-b40d-b88f5b0c80cf@gmail.com>
 <CAAxXO2HWGvwy=V80crP6yajNPeYjvn3qYV-kyPPD0Wcaq-4tAA@mail.gmail.com>
 <CAAxXO2EHUfxCoFaBMiUkp=JYvv4hgNYtbVwpW6udYajdtdxSBA@mail.gmail.com>
 <CAAxXO2H8FN9ND+xwwn2H6u4z0pVrGwXFmwnUFdsi+FTOa=g8Tg@mail.gmail.com>
 <701bd52a-1b53-4553-bcfc-b5279fba1622@gmail.com>
 <CAAxXO2FapkYJ887B=2YjVStHmn9bS4LvHCk87_y52HpDajNPcQ@mail.gmail.com>
 <CAAxXO2EY9k1aGraSUTUEUE5ULvXLWS4k+yD+581+_yA5mwonig@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2EY9k1aGraSUTUEUE5ULvXLWS4k+yD+581+_yA5mwonig@mail.gmail.com>
Message-ID-Hash: BVKVSJGT4EKNZKIP2DIAWHLZMX4W7JOH
X-Message-ID-Hash: BVKVSJGT4EKNZKIP2DIAWHLZMX4W7JOH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BVKVSJGT4EKNZKIP2DIAWHLZMX4W7JOH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7129522777763298024=="

This is a multi-part message in MIME format.
--===============7129522777763298024==
Content-Type: multipart/alternative;
 boundary="------------lfKANNt587UaNb74vmVoEROK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lfKANNt587UaNb74vmVoEROK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/04/2025 05:33, Nikos Balkanas wrote:
> Compiled uhd 4.6.0 in debug mode.
> From the output I get:
>
> [DEBUG] [0/Radio#0] spp(=3D samples per package) value 2032 exceeds MTU=
=20
> of 8000! Coercing to 1996
> Mon Apr 28 09:57:02 2025 [00] [*] scanner.l:1443:main Incorrect=20
> maxsamples (1996). Expected 19960.
> Mon Apr 28 09:57:02 2025 [00] [+] Max samples/buffer[0]: 1996
> 1) Line mtu is 9000 not 8000
> 2) 2032 is not larger than 8000 <=3D Bug?
> 3) seems that spp is setting my maxsmps
That's number of *SAMPLES*.=C2=A0 Samples are 4 bytes total.

A lot of network hardware, particularly 1Gbit hardware doesn't=20
*ACTUALLY* support an MTU of more than 8000, and I think
 =C2=A0 UHD uses PMTU discovery.=C2=A0=C2=A0=C2=A0 I found that with Real=
Tek NICs, even when=20
you set the MTU to 9000, it actually only supports
 =C2=A0 8000.


>
> Of the examples I tried the rx_samples_c. It is the same case like=20
> mine: single usrp. We use the same commands
> and we are getting the same output:( 1996 maxsmpls.
> The error text and code are=20
> from=C2=A0host/lib/rfnoc/radio_control_impl.cpp: 199
> I would rather not touch it. I don't know the uhd architecture and=20
> especially the rfnoc/uhd interface.
> Besides I am a c programmer, not c++:(
> multi_usrp class has a set_rx_spp function, but it is not for me:(
You can look at the benchmark_rate example to see how to set a=20
samples-per-buffer other than the default, which is
 =C2=A0 based on the MTU.=C2=A0=C2=A0=C2=A0 It uses an "SPB" command-line=
 parameter.




>
> HTH
> Nikos
>
> On Mon, Apr 28, 2025 at 6:02=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>=20
> wrote:
>
>     Point taken:) I'm proposing smt different:
>     pchar=C2=A0+ICMP are just to test line and connectors. First step. =
Not
>     to bench USRP.
>     benchmark_rate is to bench/stress usrp.
>     These 2 are independent, and complementary.
>     Pchar is telling me nothing more than my fiber cable and
>     connectors are good.
>     It saved me a trip tomorrow to my local PC store, where fiber
>     cable and connectors are ~7 E each.
>     benchmark_rate on the other hand is quite interesting.
>     It points to software,and particularly my uhd_init()
>
>     Just found and downloaded the sources to uhd 4.6.0 from Ubuntu
>     Launchpad.
>     Now I can go through the source of the example you told me:)
>     Ettus used=C2=A0 to keep an archive of old uhd sources around. Seem=
s
>     it's gone:(
>     Open source means, among others, free to choose the source version
>     that you need...
>     Having the latest source in Github is only partly open source.
>     During development we need to freeze updates. When in 5 years we go
>     into production we can't find the old sources anymore:(
>     If a customer discovers a bug, not in our code, but in one of the
>     libraries that
>     we use, what are we gonna do?
>
>     BR
>     Nikos
>
>
>
>     On Mon, Apr 28, 2025 at 5:01=E2=80=AFAM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         On 27/04/2025 21:58, Nikos Balkanas wrote:
>>         My bad:
>>
>>         throughput of 5.619 Kb/s requesting ICMP replies,=C2=A0+>
>>         throughput of 5,619 Kb/s requesting ICMP replies
>>         Local thousand separator is ".", whereas in the US is ",":(
>         It is STILL the case that the ICMP machinery in these radios
>         is ABSOLUTELY NOT on the fast-path inside
>         =C2=A0 the hardware.=C2=A0 The only way to get a good feel for =
how much
>         sample bandwidth they can process is
>         =C2=A0 with examples like "benchmark_rate".
>
>
>>
>>         On Mon, Apr 28, 2025 at 12:37=E2=80=AFAM Nikos Balkanas
>>         <nbalkanas@gmail.com> wrote:
>>
>>             Hi Marcus,
>>
>>             You were right. No need to change NIC:)
>>             This is not a software
>>             issue.=C2=A0uhd_rx_streamer_max_num_samps runs right after=
 uhd
>>             initialization before
>>             any other code had the chance to run.
>>             Link capacity doesn't seem to be the issue either...
>>             Running pchar on the link, descendant of pathchar,
>>             reports a throughput of 5.619 Kb/s requesting ICMP replies=
,
>>             to varying packet sizes (32->9000 (MTU), incr by 32).
>>             sudo pchar -m 9000 -p ipv4icmp usrp
>>             https://www.kitchenlab.org/www/bmah/Software/pchar/
>>
>>             It corresponds to 351.218.019 16-bit samples or
>>             175,609.044 32-bit samples, if each sample is
>>             32-bit(real=C2=A0+ imag)
>>             Seems that uhd is not running at link capacity but is
>>             doing smt else.
>>             I will have=C2=A0 to download and check with the sources..=
.
>>             The package version for Ubuntu 24.04 is uhd 4.6.0.
>>             Where can I download the sources for uhd 4.6.0?
>>
>>             BR
>>             Nikos
>>
>>             On Sat, Apr 26, 2025 at 7:02=E2=80=AFAM Nikos Balkanas
>>             <nbalkanas@gmail.com> wrote:
>>
>>                 Thanks for your time.
>>                 I will check out the example.
>>                 This is not a buffer problem. I just need 1024
>>                 Samples (real+imaginary) for FFT...
>>                 I should be able to get them in a single pass.
>>                 You saw my code, not a smoking gun there.
>>
>>                 This is probably is a physical problem.
>>                 Cable is an SFP fiber dedicated line. Cannot go bad.
>>                 Maybe the connections are not sitting right :(...
>>
>>                 BR
>>                 Nikos
>>
>>                 On Sat, Apr 26, 2025 at 6:45=E2=80=AFAM Marcus D. Leec=
h
>>                 <patchvonbraun@gmail.com> wrote:
>>
>>                     On 25/04/2025 23:33, Nikos Balkanas wrote:
>>>                     Actually MTU is 9000. This is one of the
>>>                     recommendations...
>>>                     I tried it with MTU 1500. It was worse:(
>>>                     maxsamples dropped to 364...
>>                     Right, 9000, rather than 8000.
>>
>>                     Upgrading to 10Gbit wont' give you larger MTU.
>>
>>                     What you're trying to do, I think, is to solve a
>>                     buffer-management problem in your *application*
>>                     at entirely the wrong
>>                     =C2=A0 level in the stack.
>>
>>                     It is EXCEEDINGLY COMMON for hardware drivers to
>>                     only be able to deliver in chunks that may not be
>>                     perfectly adapted to
>>                     =C2=A0 the requirements of your application. So, a
>>                     common programming pattern is to deal with this
>>                     in your application.
>>
>>                     You should probably look at example code like
>>                     rx_samples_to_file
>>
>>
>>>
>>>                     [INFO] [UHD] linux; GNU C++ version 13.2.0;
>>>                     Boost_108300; UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
>>>                     [INFO] [X300] X300 initialization sequence...
>>>                     [INFO] [X300] Maximum frame size: 1472 bytes.
>>>                     [WARNING] [X300] For the 192.168.40.2
>>>                     connection, UHD recommends a send frame size of
>>>                     at least 8000 for best
>>>                     performance, but your configuration will only
>>>                     allow 1472.This may negatively impact your
>>>                     maximum achievable sample rate.
>>>                     Check the MTU on the interface and/or the
>>>                     send_frame_size argument.
>>>                     [WARNING] [X300] For the 192.168.40.2
>>>                     connection, UHD recommends a receive frame size
>>>                     of at least 8000 for best
>>>                     performance, but your configuration will only
>>>                     allow 1472.This may negatively impact your
>>>                     maximum achievable sample rate.
>>>                     Check the MTU on the interface and/or the
>>>                     recv_frame_size argument.
>>>                     [INFO] [GPS] No GPSDO found
>>>                     [INFO] [X300] Radio 1x clock: 200 MHz
>>>                     [WARNING] [UDP] The send buffer could not be
>>>                     resized sufficiently.
>>>                     Target sock buff size: 24912805 bytes.
>>>                     Actual sock buff size: 1048576 bytes.
>>>                     See the transport application notes on buffer
>>>                     resizing.
>>>                     Please run: sudo sysctl -w
>>>                     net.core.wmem_max=3D24912805
>>>                     Sat Apr 26 06:30:34 2025 [00] [+] Created USRP
>>>                     with args
>>>                     Sat Apr 26 06:30:34 2025 [00] [+] Master clock
>>>                     is at 200 Mhz
>>>                     Sat Apr 26 06:30:34 2025 [00] [+] Tuner[0] gain
>>>                     set to 30 (30) dB
>>>                     [WARNING] [UDP] The send buffer could not be
>>>                     resized sufficiently.
>>>                     Target sock buff size: 24912805 bytes.
>>>                     Actual sock buff size: 1048576 bytes.
>>>                     See the transport application notes on buffer
>>>                     resizing.
>>>                     Please run: sudo sysctl -w
>>>                     net.core.wmem_max=3D24912805
>>>                     Sat Apr 26 06:30:34 2025 [00] [*]
>>>                     scanner.l:1446:main Incorrect maxsamples (364).
>>>                     Expected 19960.
>>>                     Sat Apr 26 06:30:34 2025 [00] [+] Max
>>>                     samples/buffer[0]: 364
>>>                     [WARNING] [0/Radio#0] Ignoring stream command
>>>                     for finite acquisition of zero sam
>>>
>>>                     Nikos
>>>
>>>                     On Sat, Apr 26, 2025 at 5:46=E2=80=AFAM Marcus D.=
 Leech
>>>                     <patchvonbraun@gmail.com> wrote:
>>>
>>>                         On 25/04/2025 22:26, Nikos Balkanas wrote:
>>>>                         Thanks Marcus,
>>>>
>>>>                         for your fast reply.
>>>>
>>>>                         On Sat, Apr 26, 2025 at 4:08=E2=80=AFAM Marc=
us D.
>>>>                         Leech <patchvonbraun@gmail.com> wrote:
>>>>
>>>>                             On 25/04/2025 20:50, Nikos Balkanas wrot=
e:
>>>>>                             Hello,
>>>>>
>>>>>                             I need to buy a new NIC. What would
>>>>>                             you suggest?
>>>>>                             The one I use is an old Mellanox 10
>>>>>                             Gbs, before the Connect-4 series.
>>>>>                             It can only do 1996 S/s, need 19960
>>>>>                             (10x more) to work with latest uhd.
>>>>>                             Using Ubuntu 24.04 and uhd 4.6.0
>>>>                             So, 1.996ksps vs 19.960ksps?=C2=A0=C2=A0=
 You
>>>>                             hardly need a 10Gbit link to support
>>>>                             that. So, perhaps something
>>>>                             =C2=A0 is being lost here in your requir=
ements?
>>>>
>>>>
>>>>                         True. Can't explain it in terms of
>>>>                         bandwidth. 16 * 1996 =3D 31.936 Kbps, 16 *
>>>>                         19960 =3D 319.360 Kbps well short of a 10
>>>>                         Gbps line:(
>>>>                         Does a complex pair count as 1 sample, or 2?
>>>>                         I have followed all the instructions in
>>>>                         https://kb.ettus.com/USRP_Host_Performance_T=
uning_Tips_and_Tricks,
>>>>                         Even installed the DPDK drivers. My
>>>>                         Mellanox is too old to use their OFED driver=
s:(
>>>>
>>>>>
>>>>>                             On a related question. it seems that
>>>>>                             the streamer doesn't crash anymore
>>>>>                             when receiving less than MAXSPS
>>>>>                             samples, instead it reads 0:(
>>>>>                             This was due to the sse2 code not
>>>>>                             aligned in convert.
>>>>>                             I change my stream args to
>>>>>                             cpu_format=3Dsc16, otw=3Dsc16, so no
>>>>>                             conversion required.
>>>>>                             Streamer still doesn't read anything.
>>>>>                             Is there a reason for it?
>>>>>
>>>>                             You'd need to share more of your code.
>>>>                             This should just work as far as I can te=
ll.
>>>>
>>>>                         Thanks. these are just the usrp code:
>>>>
>>>>                         int main()
>>>>                         {
>>>>                         =C2=A0 =C2=A0 uhd_stream_args_t stream_args =
=3D
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{
>>>>                         .cpu_format =3D "sc16",
>>>>                         .otw_format =3D "sc16",
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 .args =3D "",
>>>>                         .n_channels =3D 1,
>>>>                         =C2=A0.channel_list =3D &channel
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0};
>>>>                         ..uhd_stream_cmd_t stream_cmd =3D
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0{
>>>>                         =C2=A0.stream_mode =3D
>>>>                         UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>>                         .stream_now =3D true
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 };
>>>>
>>>>                             if (uhd_init(0, 0, gain)) do_exit(20);
>>>>                             if ((err =3D
>>>>                             uhd_usrp_get_rx_stream(dev[0],
>>>>                             &stream_args, rx_streamer[0])))
>>>>                             {
>>>>                             uhd_get_last_error(errmsg, 127);
>>>>                             error(log, "Failed to get streamer[0]
>>>>                             (%d). %s.\n", 0, FL, LN, FN, err, errmsg=
);
>>>>                             uhd_rx_streamer_free(&rx_streamer[0]);
>>>>                             rx_streamer[0] =3D NULL;
>>>>                             uhd_rx_metadata_free(&md[0]);
>>>>                             md[0] =3D NULL;
>>>>                             do_exit(30);
>>>>                             }
>>>>                             if ((err =3D
>>>>                             uhd_rx_streamer_max_num_samps(rx_streame=
r[0],
>>>>                             &maxsamps)))
>>>>
>>>>                             {
>>>>                             uhd_get_last_error(errmsg, 127);
>>>>                             error(log, "Failed to get max
>>>>                             samples/buffer[0] (%d). %s.\n", 0, FL,
>>>>                             LN, FN, err,
>>>>                             ..errmsg);
>>>>                             do_exit(35);
>>>>                             }
>>>>                             if (maxsamps !=3D MAXSMPS)
>>>>                             warn(log, "Incorrect maxsamples (%ld).
>>>>                             Expected %d.\n", 0, FL, LN, FN, maxsamps=
,
>>>>                             MAXSMPS);
>>>>                             info(log, "Max samples/buffer[0]:
>>>>                             %ld\n", 0, maxsamps);
>>>>
>>>>                             =C2=A0 =C2=A0 if ((err =3D
>>>>                             uhd_rx_streamer_issue_stream_cmd(rx_stre=
amer[0],
>>>>                             &stream_cmd)))
>>>>
>>>>                             {
>>>>                             uhd_get_last_error(errmsg, 127);
>>>>                             error(log, "Failed to start streamer[0]
>>>>                             (%d). %s.\n", 0, FL, LN, FN, err, errmsg=
);
>>>>                             do_exit(40);
>>>>                             }
>>>>
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0do_exit(0)
>>>>                         =C2=A0 =C2=A0}
>>>>
>>>>                             bool uhd_init(size_t channel, double
>>>>                             srate, double gain)
>>>>                             {
>>>>                             double tmp;
>>>>                             uhd_rx_metadata_error_code_t err;
>>>>
>>>>                             if ((err =3D
>>>>                             uhd_set_thread_priority(uhd_default_thre=
ad_priority,
>>>>                             true)))
>>>>                             warn(log, "Unable to set =C2=A0main thre=
ad
>>>>                             priority (%d). %s.\n", 0, FL, LN, FN,
>>>>                             err, uhdError(err));
>>>>                             /* Create USRP */
>>>>                             f ((err =3D uhd_usrp_make(&dev[channel],
>>>>                             "type=3Dx300")))
>>>>                             {
>>>>                             error(log, "Failed to create USRP (%d).
>>>>                             %s.\n", 0, FL, LN, FN, err,
>>>>                             uhdError(err));
>>>>                             dev[channel] =3D NULL;
>>>>                             =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return(FAIL);
>>>>
>>>>                             }
>>>>                             info(stderr, "Created USRP with
>>>>                             args\n", 0);
>>>>
>>>>                             /* Create RX streamer */
>>>>                             if ((err =3D
>>>>                             uhd_rx_streamer_make(&rx_streamer[channe=
l])))
>>>>                             {
>>>>                             error(log, "Failed to create
>>>>                             rx_streamer[%d] (%d). %s.\n", 0, FL,
>>>>                             LN, FN,
>>>>                             channel, err, uhdError(err));
>>>>                             return(FAIL);
>>>>                             }
>>>>                             /* Create RX metadata */
>>>>                             if ((err =3D
>>>>                             uhd_rx_metadata_make(&md[channel])))
>>>>                             {
>>>>                             error(log, "Failed to create md[%d]
>>>>                             (%d). %s.\n", 0, FL, LN, FN, channel,
>>>>                             err, uhdError(err));
>>>>                             return(FAIL);
>>>>                             }
>>>>
>>>>                             /* Get master clock rate */
>>>>                             if ((err =3D
>>>>                             uhd_usrp_get_master_clock_rate(dev[chann=
el],
>>>>                             0, &tmp)))
>>>>
>>>>                             {
>>>>                             error(log, "Failed to set master clock
>>>>                             to %.0lf Mhz (%d). %s.\n", 0, FL,
>>>>                             LN, FN, tmp/1000000, err, uhdError(err))=
;
>>>>                             return(FAIL);
>>>>                             }
>>>>                             info(stderr, "Master clock is at %.0lf
>>>>                             Mhz\n", 0, tmp/1000000);
>>>>                             /* Set the sample rate */
>>>>                             if (srate &&
>>>>                             !uhd_set_rx_rate_check(channel, srate))
>>>>                             return(FAIL);
>>>>                             /* Set the tuner gain SBX-120 is 0-31.5
>>>>                             in .5 db steps */
>>>>
>>>>                             =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((err =3D
>>>>                             uhd_usrp_set_rx_gain(dev[channel],
>>>>                             gain, channel, "")))
>>>>                             {
>>>>                             error(log, "Failed to set tuner[%d]
>>>>                             gain to %.0lf db (%d). %s.\n", 0, FL,
>>>>                             LN, FN, channel, gain, err, uhdError(err=
));
>>>>                             return(FAIL);
>>>>                             }
>>>>                             =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(=
err =3D
>>>>                             uhd_usrp_get_rx_gain(dev[channel],
>>>>                             channel, "", &tmp)))
>>>>                             info(log, "Tuner[%d] gain set to %.0lf
>>>>                             (%.0lf) dB\n", 0, channel, tmp,gain);
>>>>
>>>>                         ./* Set channel bw to conserve tuner
>>>>                         resources. Not needed, set by srate */
>>>>                         uhd_usrp_set_rx_bandwidth(dev[channel],
>>>>                         srate, channel);
>>>>                         ./* Disable subtracting constant averaged
>>>>                         background. Signal looks cleaner */
>>>>                         if ((err =3D
>>>>                         uhd_usrp_set_rx_dc_offset_enabled(dev[channe=
l],
>>>>                         false, channel)))
>>>>                         {
>>>>                         warn(log, "Failed to disable FPGA DC offset
>>>>                         on channel %d(%d). %s.\n", 0,
>>>>                         FL, LN, FN, channel, err, uhdError(err));
>>>>                         }
>>>>                         info(stderr, "Disabled FPGA DC offset on
>>>>                         channel %d\n", 0, channel);
>>>>                         return(SUCCESS);
>>>>                         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
>>>>
>>>>                         This is the generated output:
>>>>
>>>>                         [INFO] [UHD] linux; GNU C++ version 13.2.0;
>>>>                         Boost_108300;
>>>>                         UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1
>>>>                         [INFO] [X300] X300 initialization sequence..=
.
>>>>                         [INFO] [X300] Maximum frame size: 8000 bytes=
.
>>>>                         [INFO] [X300] Radio 1x clock: 200 MHz
>>>>                         Sat Apr 26 03:33:48 2025 [00] [+] Created
>>>>                         USRP with args
>>>>                         Sat Apr 26 03:33:48 2025 [00] [+] Master
>>>>                         clock is at 200 Mhz
>>>>                         Sat Apr 26 03:33:48 2025 [00] [+] Tuner[0]
>>>>                         gain set to 30 (30) dB
>>>>                         Sat Apr 26 03:33:48 2025 [00] [*]
>>>>                         scanner.l:1446:main Incorrect maxsamples
>>>>                         (1996). Expected 19960.
>>>>                         Sat Apr 26 03:33:48 2025 [00] [+] Max
>>>>                         samples/buffer[0]: 1996
>>>>                         [WARNING] [0/Radio#0] Ignoring stream
>>>>                         command for finite acquisition of zero sampl=
es
>>>>                         I hope this reads OK. Maybe next time I
>>>>                         should attach the code:)
>>>>
>>>>>                             TIA
>>>>>                             Nikos
>>>>>
>>>>>                             _______________________________________=
________
>>>>>                             USRP-users mailing list --usrp-users@li=
sts.ettus.com
>>>>>                             To unsubscribe send an email tousrp-use=
rs-leave@lists.ettus.com
>>>>
>>>                         I believe that max number of
>>>                         samples-per-buffer is limited by MTU size.=C2=
=A0=C2=A0
>>>                         Which is typically around 8000 or so for
>>>                         "jumbo frames".
>>>
>>>
>>
>

--------------lfKANNt587UaNb74vmVoEROK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/04/2025 05:33, Nikos Balkanas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EY9k1aGraSUTUEUE5ULvXLWS4k+yD+581+_yA5mwonig@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small">Compiled u=
hd
          4.6.0 in debug mode.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">From the
          output I get:</div>
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">[DEBUG]
          [0/Radio#0] spp(=3D samples per package) value 2032 exceeds MTU
          of 8000! Coercing to 1996<br>
          Mon Apr 28 09:57:02 2025 [00] [*] scanner.l:1443:main
          Incorrect maxsamples (1996). Expected 19960.<br>
          Mon Apr 28 09:57:02 2025 [00] [+] Max samples/buffer[0]: 1996</=
div>
        <div class=3D"gmail_default" style=3D"font-size:small">1) Line mt=
u
          is 9000 not 8000</div>
        <div class=3D"gmail_default" style=3D"font-size:small">2) 2032 is
          not larger than 8000 &lt;=3D Bug?</div>
        <div class=3D"gmail_default" style=3D"font-size:small">3) seems t=
hat
          spp is setting my maxsmps</div>
      </div>
    </blockquote>
    That's number of *SAMPLES*.=C2=A0 Samples are 4 bytes total.=C2=A0 <b=
r>
    <br>
    A lot of network hardware, particularly 1Gbit hardware doesn't
    *ACTUALLY* support an MTU of more than 8000, and I think<br>
    =C2=A0 UHD uses PMTU discovery.=C2=A0=C2=A0=C2=A0 I found that with R=
ealTek NICs, even
    when you set the MTU to 9000, it actually only supports<br>
    =C2=A0 8000.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EY9k1aGraSUTUEUE5ULvXLWS4k+yD+581+_yA5mwonig@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">Of the
          examples I tried the rx_samples_c. It is the same case like
          mine: single usrp. We use the same commands</div>
        <div class=3D"gmail_default" style=3D"font-size:small">and we are
          getting the same output:( 1996 maxsmpls.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">The error
          text and code are from=C2=A0host/lib/rfnoc/radio_control_impl.c=
pp:
          199</div>
        <div class=3D"gmail_default" style=3D"font-size:small">I would
          rather not touch it. I don't know the uhd architecture and
          especially the rfnoc/uhd interface.</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Besides I =
am
          a c programmer, not c++:(</div>
        <div class=3D"gmail_default" style=3D"font-size:small">multi_usrp
          class has a set_rx_spp function, but it is not for me:(</div>
      </div>
    </blockquote>
    You can look at the benchmark_rate example to see how to set a
    samples-per-buffer other than the default, which is<br>
    =C2=A0 based on the MTU.=C2=A0=C2=A0=C2=A0 It uses an "SPB" command-l=
ine parameter.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAAxXO2EY9k1aGraSUTUEUE5ULvXLWS4k+yD+581+_yA5mwonig@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:small"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:small">HTH</div>
        <div class=3D"gmail_default" style=3D"font-size:small">Nikos</div=
>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28, 2025 at
          6:02=E2=80=AFAM Nikos Balkanas &lt;<a
            href=3D"mailto:nbalkanas@gmail.com" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div dir=3D"ltr">
            <div class=3D"gmail_default" style=3D"font-size:small">Point
              taken:) I'm proposing smt different:</div>
            <div class=3D"gmail_default" style=3D"font-size:small">pchar=C2=
=A0+ICMP
              are just to test line and connectors. First step. Not to
              bench USRP.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">benchm=
ark_rate
              is to bench/stress usrp.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">These =
2
              are independent, and complementary.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Pchar =
is
              telling me nothing more than my fiber cable and connectors
              are good.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">It sav=
ed
              me a trip tomorrow to my local PC store, where fiber cable
              and connectors are ~7 E each.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">benchm=
ark_rate
              on the other hand is quite interesting.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">It poi=
nts
              to software,and particularly my uhd_init()</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">Just
              found and downloaded the sources to uhd 4.6.0 from Ubuntu
              Launchpad.</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Now I =
can
              go through the source of the example you told me:)</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Ettus
              used=C2=A0 to keep an archive of old uhd sources around. Se=
ems
              it's gone:(=C2=A0</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Open
              source means, among others, free to choose the source
              version that you need...</div>
            <div class=3D"gmail_default" style=3D"font-size:small">Having
              the latest source in Github is only partly open source.</di=
v>
            <div class=3D"gmail_default" style=3D"font-size:small">During
              development we need to freeze updates. When in 5 years we
              go</div>
            <div class=3D"gmail_default" style=3D"font-size:small">into
              production we can't find the old sources anymore:(</div>
            <div class=3D"gmail_default" style=3D"font-size:small">If a
              customer discovers a bug, not in our code, but in one of
              the libraries that</div>
            <div class=3D"gmail_default" style=3D"font-size:small">we use=
,
              what are we gonna do?</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small">BR</di=
v>
            <div class=3D"gmail_default" style=3D"font-size:small">Nikos=C2=
=A0</div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
            <div class=3D"gmail_default" style=3D"font-size:small"><br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28, 2025 at
              5:01=E2=80=AFAM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
              <div>
                <div>On 27/04/2025 21:58, Nikos Balkanas wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">
                    <div class=3D"gmail_default" style=3D"font-size:small=
">My
                      bad:</div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
"><br>
                    </div>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">throughput
                      of 5.619 Kb/s requesting ICMP replies,=C2=A0+&gt;
                      throughput of 5,619 Kb/s requesting ICMP replies</d=
iv>
                    <div class=3D"gmail_default" style=3D"font-size:small=
">Local
                      thousand separator is ".", whereas in the US is
                      ",":( <br>
                    </div>
                  </div>
                </blockquote>
                It is STILL the case that the ICMP machinery in these
                radios is ABSOLUTELY NOT on the fast-path inside<br>
                =C2=A0 the hardware.=C2=A0 The only way to get a good fee=
l for how
                much sample bandwidth they can process is<br>
                =C2=A0 with examples like "benchmark_rate".<br>
                <br>
                <br>
                <blockquote type=3D"cite"><br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28,
                      2025 at 12:37=E2=80=AFAM Nikos Balkanas &lt;<a
                        href=3D"mailto:nbalkanas@gmail.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">nbalkanas@gmail.c=
om</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Hi Marcus,</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small"><br>
                        </div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">You were right. No
                          need to change NIC:)</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">This is not a softwar=
e
                          issue.=C2=A0uhd_rx_streamer_max_num_samps runs
                          right after uhd initialization before</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">any other code had th=
e
                          chance to run.</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Link capacity doesn't
                          seem to be the issue either...</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Running pchar on the
                          link, descendant of pathchar, reports a
                          throughput of 5.619 Kb/s requesting ICMP
                          replies,</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">to varying packet
                          sizes (32-&gt;9000 (MTU), incr by 32).=C2=A0</d=
iv>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">sudo pchar -m 9000 -p
                          ipv4icmp usrp</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small"><a
href=3D"https://www.kitchenlab.org/www/bmah/Software/pchar/"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">https://www.k=
itchenlab.org/www/bmah/Software/pchar/</a></div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small"><br>
                        </div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">It corresponds to
                          351.218.019 16-bit samples or 175,609.044
                          32-bit samples, if each sample is
                          32-bit(real=C2=A0+ imag)</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Seems that uhd is not
                          running at link capacity but is doing smt
                          else.</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">I will have=C2=A0 to
                          download and check with the sources...</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">The package version
                          for Ubuntu 24.04 is uhd 4.6.0.</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Where can I download
                          the sources for uhd 4.6.0?</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small"><br>
                        </div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">BR</div>
                        <div class=3D"gmail_default"
                          style=3D"font-size:small">Nikos</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr
                          26, 2025 at 7:02=E2=80=AFAM Nikos Balkanas &lt;=
<a
                            href=3D"mailto:nbalkanas@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">nbalkanas@gma=
il.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                          <div dir=3D"ltr">
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Thanks for your
                              time.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">I will check out
                              the example.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">This is not a
                              buffer problem. I just need 1024 Samples
                              (real+imaginary) for FFT...</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">I should be able
                              to get them in a single pass.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">You saw my code,
                              not a smoking gun there.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small"><br>
                            </div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">This is probably
                              is a physical problem.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Cable is an SFP
                              fiber dedicated line. Cannot go bad.</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Maybe the
                              connections are not sitting right :(...</di=
v>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small"><br>
                            </div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">BR</div>
                            <div class=3D"gmail_default"
                              style=3D"font-size:small">Nikos</div>
                          </div>
                          <br>
                          <div class=3D"gmail_quote">
                            <div dir=3D"ltr" class=3D"gmail_attr">On Sat,
                              Apr 26, 2025 at 6:45=E2=80=AFAM Marcus D. L=
eech
                              &lt;<a
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">patchvonb=
raun@gmail.com</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                              <div>
                                <div>On 25/04/2025 23:33, Nikos Balkanas
                                  wrote:<br>
                                </div>
                                <blockquote type=3D"cite">
                                  <div dir=3D"ltr">
                                    <div class=3D"gmail_default"
                                      style=3D"font-size:small">Actually
                                      MTU is 9000. This is one of the
                                      recommendations...</div>
                                    <div class=3D"gmail_default"
                                      style=3D"font-size:small">I tried i=
t
                                      with MTU 1500. It was worse:(</div>
                                    <div class=3D"gmail_default"
                                      style=3D"font-size:small">maxsample=
s
                                      dropped to 364...</div>
                                  </div>
                                </blockquote>
                                Right, 9000, rather than 8000.<br>
                                <br>
                                Upgrading to 10Gbit wont' give you
                                larger MTU.<br>
                                <br>
                                What you're trying to do, I think, is to
                                solve a buffer-management problem in
                                your *application* at entirely the wrong<=
br>
                                =C2=A0 level in the stack.<br>
                                <br>
                                It is EXCEEDINGLY COMMON for hardware
                                drivers to only be able to deliver in
                                chunks that may not be perfectly adapted
                                to<br>
                                =C2=A0 the requirements of your applicati=
on.=C2=A0
                                So, a common programming pattern is to
                                deal with this in your application.<br>
                                <br>
                                You should probably look at example code
                                like rx_samples_to_file<br>
                                <br>
                                <br>
                                <blockquote type=3D"cite">
                                  <div dir=3D"ltr">
                                    <div class=3D"gmail_default"
                                      style=3D"font-size:small"><br>
                                    </div>
                                    <div class=3D"gmail_default"
                                      style=3D"font-size:small">[INFO]
                                      [UHD] linux; GNU C++ version
                                      13.2.0; Boost_108300;
                                      UHD_4.6.0.0+ds1-5.1ubuntu0.24.04.1<=
br>
                                      [INFO] [X300] X300 initialization
                                      sequence...<br>
                                      [INFO] [X300] Maximum frame size:
                                      1472 bytes.<br>
                                      [WARNING] [X300] For the
                                      192.168.40.2 connection, UHD
                                      recommends a send frame size of at
                                      least 8000 for best<br>
                                      performance, but your
                                      configuration will only allow
                                      1472.This may negatively impact
                                      your maximum achievable sample
                                      rate.<br>
                                      Check the MTU on the interface
                                      and/or the send_frame_size
                                      argument.<br>
                                      [WARNING] [X300] For the
                                      192.168.40.2 connection, UHD
                                      recommends a receive frame size of
                                      at least 8000 for best<br>
                                      performance, but your
                                      configuration will only allow
                                      1472.This may negatively impact
                                      your maximum achievable sample
                                      rate.<br>
                                      Check the MTU on the interface
                                      and/or the recv_frame_size
                                      argument.<br>
                                      [INFO] [GPS] No GPSDO found<br>
                                      [INFO] [X300] Radio 1x clock: 200
                                      MHz<br>
                                      [WARNING] [UDP] The send buffer
                                      could not be resized sufficiently.<=
br>
                                      Target sock buff size: 24912805
                                      bytes.<br>
                                      Actual sock buff size: 1048576
                                      bytes.<br>
                                      See the transport application
                                      notes on buffer resizing.<br>
                                      Please run: sudo sysctl -w
                                      net.core.wmem_max=3D24912805<br>
                                      Sat Apr 26 06:30:34 2025 [00] [+]
                                      Created USRP with args<br>
                                      Sat Apr 26 06:30:34 2025 [00] [+]
                                      Master clock is at 200 Mhz<br>
                                      Sat Apr 26 06:30:34 2025 [00] [+]
                                      Tuner[0] gain set to 30 (30) dB<br>
                                      [WARNING] [UDP] The send buffer
                                      could not be resized sufficiently.<=
br>
                                      Target sock buff size: 24912805
                                      bytes.<br>
                                      Actual sock buff size: 1048576
                                      bytes.<br>
                                      See the transport application
                                      notes on buffer resizing.<br>
                                      Please run: sudo sysctl -w
                                      net.core.wmem_max=3D24912805<br>
                                      Sat Apr 26 06:30:34 2025 [00] [*]
                                      scanner.l:1446:main Incorrect
                                      maxsamples (364). Expected 19960.<b=
r>
                                      Sat Apr 26 06:30:34 2025 [00] [+]
                                      Max samples/buffer[0]: 364<br>
                                      [WARNING] [0/Radio#0] Ignoring
                                      stream command for finite
                                      acquisition of zero sam</div>
                                    <div class=3D"gmail_default"
                                      style=3D"font-size:small"><br>
                                    </div>
                                    <div class=3D"gmail_default"
                                      style=3D"font-size:small">Nikos</di=
v>
                                  </div>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr"=
>On
                                      Sat, Apr 26, 2025 at 5:46=E2=80=AFA=
M
                                      Marcus D. Leech &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">p=
atchvonbraun@gmail.com</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                      <div>
                                        <div>On 25/04/2025 22:26, Nikos
                                          Balkanas wrote:<br>
                                        </div>
                                        <blockquote type=3D"cite">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>Thanks
                                                Marcus,</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
><br>
                                              </div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>for
                                                your fast reply.</div>
                                            </div>
                                            <br>
                                            <div class=3D"gmail_quote">
                                              <div dir=3D"ltr"
                                                class=3D"gmail_attr">On
                                                Sat, Apr 26, 2025 at
                                                4:08=E2=80=AFAM Marcus D.=
 Leech
                                                &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                                                  moz-do-not-send=3D"true=
"
class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&gt; wrote:<br=
>
                                              </div>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div>
                                                  <div>On 25/04/2025
                                                    20:50, Nikos
                                                    Balkanas wrote:<br>
                                                  </div>
                                                  <blockquote
                                                    type=3D"cite">
                                                    <div dir=3D"ltr">
                                                      <div
style=3D"font-size:small">Hello,</div>
                                                      <div
style=3D"font-size:small"><br>
                                                      </div>
                                                      <div
style=3D"font-size:small">I need to buy a new NIC. What would you suggest=
?</div>
                                                      <div
style=3D"font-size:small">The one I use is an old Mellanox 10 Gbs, before
                                                        the Connect-4
                                                        series.</div>
                                                      <div
style=3D"font-size:small">It can only do 1996 S/s, need 19960 (10x more)
                                                        to work with
                                                        latest uhd.</div>
                                                      <div
style=3D"font-size:small">Using Ubuntu 24.04 and uhd 4.6.0</div>
                                                    </div>
                                                  </blockquote>
                                                  So, 1.996ksps vs
                                                  19.960ksps?=C2=A0=C2=A0=
 You
                                                  hardly need a 10Gbit
                                                  link to support that.=C2=
=A0
                                                  So, perhaps something<b=
r>
                                                  =C2=A0 is being lost he=
re
                                                  in your requirements?<b=
r>
                                                </div>
                                              </blockquote>
                                              <div><br>
                                              </div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>True.
                                                Can't explain it in
                                                terms of bandwidth. 16 *
                                                1996 =3D 31.936 Kbps, 16 =
*
                                                19960 =3D 319.360 Kbps
                                                well short of a 10 Gbps
                                                line:(</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>Does
                                                a complex pair count as
                                                1 sample, or 2?</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>I
                                                have followed all the
                                                instructions in=C2=A0<a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
"
class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP_Host_Performanc=
e_Tuning_Tips_and_Tricks</a>,</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>Even
                                                installed the DPDK
                                                drivers. My Mellanox is
                                                too old to use their
                                                OFED drivers:(</div>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div>
                                                  <blockquote
                                                    type=3D"cite">
                                                    <div dir=3D"ltr">
                                                      <div
style=3D"font-size:small"><br>
                                                      </div>
                                                      <div
style=3D"font-size:small">On a related question. it seems that the
                                                        streamer doesn't
                                                        crash anymore</di=
v>
                                                      <div
style=3D"font-size:small">when receiving less than MAXSPS samples, instea=
d
                                                        it reads 0:(</div=
>
                                                      <div
style=3D"font-size:small">This was due to the sse2 code not aligned in
                                                        convert.</div>
                                                      <div
style=3D"font-size:small">I change my stream args to cpu_format=3Dsc16,
                                                        otw=3Dsc16, so no
                                                        conversion
                                                        required.</div>
                                                      <div
style=3D"font-size:small">Streamer still doesn't read anything. Is there =
a
                                                        reason for it?</d=
iv>
                                                      <div
style=3D"font-size:small"><br>
                                                      </div>
                                                    </div>
                                                  </blockquote>
                                                  You'd need to share
                                                  more of your code.=C2=A0
                                                  This should just work
                                                  as far as I can tell.<b=
r>
                                                  <br>
                                                </div>
                                              </blockquote>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small"></span></div>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small">Thanks. these are just the usrp code:</span></d=
iv>
                                              <div><br>
                                              </div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>int
                                                main()</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>{</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 uhd_stream_=
args_t
                                                stream_args =3D<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0{<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                                                .cpu_format =3D "sc16",<b=
r>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                                                .otw_format =3D "sc16",<b=
r>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 .args =3D
                                                "",<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                                                .n_channels =3D 1,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0.channel_list =3D
                                                &amp;channel<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0};<br>
                                                ..uhd_stream_cmd_t
                                                stream_cmd =3D<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0{<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0.stream_mode =3D
                                                UHD_STREAM_MODE_NUM_SAMPS=
_AND_DONE,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                .stream_now =3D true<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 };</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
><br>
                                              </div>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div> <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 </span>if
                                                  (uhd_init(0, 0, gain))
                                                  do_exit(20);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if ((err =3D
                                                  uhd_usrp_get_rx_stream(=
dev[0],
                                                  &amp;stream_args,
                                                  rx_streamer[0])))<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>{<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>uhd_get_last_error(errmsg,
                                                  127);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>error(log,
                                                  "Failed to get
                                                  streamer[0] (%d).
                                                  %s.\n", 0, FL, LN, FN,
                                                  err, errmsg);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>uhd_rx_streamer_free(&amp;rx_streamer[0]);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>rx_streamer[0]
                                                  =3D NULL;<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>uhd_rx_metadata_free(&amp;md[0]);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>md[0] =3D
                                                  NULL;<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>do_exit(30);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>}<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if ((err =3D
                                                  uhd_rx_streamer_max_num=
_samps(rx_streamer[0],
                                                  &amp;maxsamps)))</div>
                                              </blockquote>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div><span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>{<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>uhd_get_last_error(errmsg,
                                                  127);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>error(log,
                                                  "Failed to get max
                                                  samples/buffer[0]
                                                  (%d). %s.\n", 0, FL,
                                                  LN, FN, err,<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>..errmsg);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>do_exit(35);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>}<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if (maxsamps !=3D
                                                  MAXSMPS)<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>warn(log,
                                                  "Incorrect maxsamples
                                                  (%ld). Expected
                                                  %d.\n", 0, FL, LN, FN,
                                                  maxsamps,<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>MAXSMPS);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>info(log, "Max
                                                  samples/buffer[0]:
                                                  %ld\n", 0, maxsamps);<b=
r>
                                                  <br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 i</span>f=
 ((err =3D
                                                  uhd_rx_streamer_issue_s=
tream_cmd(rx_streamer[0],
                                                  &amp;stream_cmd)))=C2=A0=
</div>
                                              </blockquote>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div><span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>{<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>uhd_get_last_error(errmsg,
                                                  127);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>error(log,
                                                  "Failed to start
                                                  streamer[0] (%d).
                                                  %s.\n", 0, FL, LN, FN,
                                                  err, errmsg);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span>do_exit(40);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>}<br>
                                                </div>
                                              </blockquote>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]</span><=
/div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
do_exit(0)</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0}</div>
                                              <div class=3D"gmail_default=
"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0</div>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div> bool
                                                  uhd_init(size_t
                                                  channel, double srate,
                                                  double gain)<br>
                                                  {<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>double tmp;<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>uhd_rx_metadata_error_code_t
                                                  err;<br>
                                                  <br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if ((err =3D
                                                  uhd_set_thread_priority=
(uhd_default_thread_priority,
                                                  true)))<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>warn(log,
                                                  "Unable to set =C2=A0ma=
in
                                                  thread priority (%d).
                                                  %s.\n", 0, FL, LN, FN,<=
br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>err,
                                                  uhdError(err));<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </=
span>/* Create
                                                  USRP */<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </=
span>f ((err =3D
                                                  uhd_usrp_make(&amp;dev[=
channel],
                                                  "type=3Dx300")))<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>{<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0</span>error(log,
                                                  "Failed to create USRP
                                                  (%d). %s.\n", 0, FL,
                                                  LN, FN, err,<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>uhdError(err));<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>dev[channel]
                                                  =3D NULL;<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 r</span>eturn(FAIL);=C2=A0</div>
                                              </blockquote>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div><span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>}<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>info(stderr,
                                                  "Created USRP with
                                                  args\n", 0);<br>
                                                  <br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>/* Create RX
                                                  streamer */<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if ((err =3D
                                                  uhd_rx_streamer_make(&a=
mp;rx_streamer[channel])))<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>{<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>error(log,
                                                  "Failed to create
                                                  rx_streamer[%d] (%d).
                                                  %s.\n", 0, FL, LN, FN,<=
br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>channel,
                                                  err, uhdError(err));<br=
>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>return(FAIL);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 </span>}<=
br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>/* Create RX
                                                  metadata */<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>if ((err =3D
                                                  uhd_rx_metadata_make(&a=
mp;md[channel])))<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0</span>{<b=
r>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span>error(log,
                                                  "Failed to create
                                                  md[%d] (%d). %s.\n",
                                                  0, FL, LN, FN,
                                                  channel,<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>err,
                                                  uhdError(err));<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span>return(FAIL);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>}<br>
                                                  <br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0=C2=A0</sp=
an>/* <span
class=3D"gmail_default" style=3D"font-size:small">G</span>et master clock
                                                  rate */<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if ((err =3D
                                                  uhd_usrp_get_master_clo=
ck_rate(dev[channel],
                                                  0, &amp;tmp)))=C2=A0</d=
iv>
                                              </blockquote>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div><span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>{<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</span>error(log,
                                                  "Failed to set master
                                                  clock to %.0lf Mhz
                                                  (%d). %s.\n", 0, FL,<br=
>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN,
                                                  FN, tmp/1000000, err,
                                                  uhdError(err));<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 </=
span>}<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>info(stderr,
                                                  "Master clock is at
                                                  %.0lf Mhz\n", 0,
                                                  tmp/1000000);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0=C2=
=A0</span>/* Set the
                                                  sample rate */<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>if (srate
                                                  &amp;&amp;
                                                  !uhd_set_rx_rate_check(=
channel,
                                                  srate)) return(FAIL);<b=
r>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0</s=
pan>/* Set the
                                                  tuner gain SBX-120 is
                                                  0-31.5 in .5 db steps
                                                  */=C2=A0</div>
                                              </blockquote>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div><span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0i</span>f ((err =3D
                                                  uhd_usrp_set_rx_gain(de=
v[channel],
                                                  gain, channel, "")))<br=
>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span>{<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>error(log,
                                                  "Failed to set
                                                  tuner[%d] gain to
                                                  %.0lf db (%d). %s.\n",
                                                  0, FL,<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>LN,
                                                  FN, channel, gain,
                                                  err, uhdError(err));<br=
>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span>return(FAIL);<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0</span>}<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0i</span>f (!(err
                                                  =3D
                                                  uhd_usrp_get_rx_gain(de=
v[channel],
                                                  channel, "",
                                                  &amp;tmp)))<br>
                                                  <span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span>info(log,
                                                  "Tuner[%d] gain set to
                                                  %.0lf (%.0lf) dB\n",
                                                  0, channel, tmp,<span
class=3D"gmail_default" style=3D"font-size:small">=C2=A0</span>gain);</di=
v>
                                              </blockquote>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0=C2=A0=
</span>./* Set
                                              channel bw to conserve
                                              tuner resources. Not
                                              needed, set by srate */<br>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0</span>uhd_usrp_set_rx_bandwidth(dev[channel],
                                              srate, channel);<br>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
</span>./*
                                              Disable subtracting
                                              constant averaged
                                              background. Signal looks
                                              cleaner */<br>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=C2=A0</span>if
                                              ((err =3D
                                              uhd_usrp_set_rx_dc_offset_e=
nabled(dev[channel],
                                              false, channel)))<br>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0</span>{<br>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>warn(log,
                                              "Failed to disable FPGA DC
                                              offset on channel %d(%d).
                                              %s.\n", 0,<br>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>FL,
                                              LN, FN, channel, err,
                                              uhdError(err));</div>
                                            <div class=3D"gmail_quote"><s=
pan
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0</span>}<br>
                                              <span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0</span>info(stderr,
                                              "Disabled FPGA DC offset
                                              on channel %d\n", 0,
                                              channel);<span
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
></span></div>
                                            <div class=3D"gmail_quote"><s=
pan
                                                class=3D"gmail_default"
                                                style=3D"font-size:small"=
>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0</span>return(SUCCESS);<br>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}</span></div=
>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small"><br>
                                                </span></div>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small">This is the generated output:</span>=C2=A0</div=
>
                                              <div><br>
                                              </div>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small"></span>[INFO] [UHD] linux; GNU C++ version
                                                13.2.0; Boost_108300;
                                                UHD_4.6.0.0+ds1-5.1ubuntu=
0.24.04.1</div>
                                              [INFO] [X300] X300
                                              initialization sequence...<=
br>
                                              [INFO] [X300] Maximum
                                              frame size: 8000 bytes.<br>
                                              [INFO] [X300] Radio 1x
                                              clock: 200 MHz<br>
                                              Sat Apr 26 03:33:48 2025
                                              [00] [+] Created USRP with
                                              args<br>
                                              Sat Apr 26 03:33:48 2025
                                              [00] [+] Master clock is
                                              at 200 Mhz<br>
                                              Sat Apr 26 03:33:48 2025
                                              [00] [+] Tuner[0] gain set
                                              to 30 (30) dB<br>
                                              Sat Apr 26 03:33:48 2025
                                              [00] [*]
                                              scanner.l:1446:main
                                              Incorrect maxsamples
                                              (1996). Expected 19960.<br>
                                              Sat Apr 26 03:33:48 2025
                                              [00] [+] Max
                                              samples/buffer[0]: 1996<br>
                                              <div>[WARNING] [0/Radio#0]
                                                Ignoring stream command
                                                for finite acquisition
                                                of zero samples=C2=A0</di=
v>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small"></span></div>
                                              <div><span
                                                  class=3D"gmail_default"
style=3D"font-size:small">I hope this reads OK. Maybe next time I should
                                                  attach the code:)</span=
>=C2=A0</div>
                                              <blockquote
                                                class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                                                <div>
                                                  <blockquote
                                                    type=3D"cite">
                                                    <div dir=3D"ltr">
                                                      <div
style=3D"font-size:small"> </div>
                                                      <div
style=3D"font-size:small">TIA</div>
                                                      <div
style=3D"font-size:small">Nikos</div>
                                                    </div>
                                                    <br>
                                                    <fieldset></fieldset>
                                                    <pre>________________=
_______________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                                                    target=3D"_blank"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp-users@lists=
.ettus.com</a>
To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp-users-leave=
@lists.ettus.com</a>
</pre>
                                                  </blockquote>
                                                  <br>
                                                </div>
                                              </blockquote>
                                            </div>
                                          </div>
                                        </blockquote>
                                        I believe that max number of
                                        samples-per-buffer is limited by
                                        MTU size.=C2=A0=C2=A0 Which is ty=
pically
                                        around 8000 or so for "jumbo
                                        frames".<br>
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
  </body>
</html>

--------------lfKANNt587UaNb74vmVoEROK--

--===============7129522777763298024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7129522777763298024==--
