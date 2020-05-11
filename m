Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FF61CE530
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 22:13:42 +0200 (CEST)
Received: from [::1] (port=40176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jYEo1-000484-En; Mon, 11 May 2020 16:13:41 -0400
Received: from mout.web.de ([212.227.15.14]:35441)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hex98@email.de>) id 1jYEnx-0003zb-Ms
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 16:13:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1589227976;
 bh=RMPvmkcJplXhAdqTsfLSCma9G9Ifpfv+6f+CfOZ4BgE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=CZKoKmOop8vgCACxJM5mlo8oP+PdMTAaElAJxeZomZQeSbWhfCdDN+/y0mIRycaCV
 +ghesYHHYJ9nEwOhU4wZlrVKENe5evzo+A1RJQ0eRupqkQp5XGGgCNk7n+OF3EeVQL
 obab2XHZ7+eemc27JWACrOqw7XKEbcSojtvqGwg8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.14] ([87.150.154.203]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N8mzy-1j4yVy1xXK-015qM2; Mon, 11
 May 2020 22:12:56 +0200
To: Rob Kossler <rkossler@nd.edu>
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
 <CAB__hTTGOFicX7JY+RA22OUf1zXLWfAzYQoneiRGa-1zZM5gSQ@mail.gmail.com>
Message-ID: <99c27324-6e6c-790c-a6a6-40cb7df21f74@email.de>
Date: Mon, 11 May 2020 22:12:55 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTTGOFicX7JY+RA22OUf1zXLWfAzYQoneiRGa-1zZM5gSQ@mail.gmail.com>
X-Provags-ID: V03:K1:7WGH3wrPtvdNaG8V0ondS07UW+rWDwmYxj7M1eYFTdlF+HopkE5
 gERrR8Zwk3CLr6uTtnK22OK6yu071lYxfgb2hvKZ8aes2rl9Ey16DsxsrRUW1WbZcj8Z9jF
 2NRJHnCMue3h9N8fr/4C1n8TefcF7/RLjYsqlQ1q0xD40NcnikxOHh7i6NfbI0mK43iT71T
 DFhWiZ5o582qtixBXgWfQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nA6htoMXbl0=:mIG0q2wbrcPYqAnZQXKI8k
 y4/uE3yWGMpw2nJK5exODHQf6/UOCF77AB7jURz+YEkVNhkDbqKSKlNVHSAIuCChNBLQVMBl2
 LjTFnVhpRxtuTMZuSXLBBuLI6fgp41mdB9KJrpscDkSMV+ZDl/3n1qDAva8LAIawvE329JufM
 yr9AFXGAl+oOvEKkYD4q4ghgW2xrIHwDrf79owsWRq72k/NDHnc2/sY9KXdLT8w1BHvvyZYKf
 Rha3x0ggL+yPnLrHSbMVR6AWex1AylYyFa4ZtivfnbeuZiSTjahwZZIhif1g5449twG5stee+
 wHTUxlr8f/6ol1ILzIMy1GZSjja3W5h5YLV9osYyCqNSBXdgtw16i/smSKmiyoipuFmVmrDP8
 Qa5WztdUZ4eDgi3kFZaiqrb4zzRWAHkcnRs5LxC6jSSr3Kt2QP5VBada/r3fVASea1FjNYbOX
 CxzOhqWWhHRlUQKRbSHJaSkX2Q7E2Evc2a3tbmddeUxtnwCpZfgkJ8jBDJktz/Pqfc62ENmZk
 cwbANOY4SXGVWjR/JTxMP4G1offZWUe1x2KweMacu0KLplPwNlQvikvIGSpw3w6o+6jTPMR9s
 L7DYrKLx7M1ZuBH+9TCO6sEPl78uhuhhd6ELQhCcqH/Wlv2G+jm0K2WPN3870rjxz4thLgUpd
 oSAK6UPakgt9Ecd/Bjut4U7Jp0+ky/awz1Gwsg2HH+9N9DNNyJFi3qrUnOQvx2tHthXuHSOAW
 T72CG+LmOlRm4sBrB09wxU0meVwxAn3BiMNKVEsQjm+Cozr1CFPZVKCet/7q7YRPfKP61gdnK
 l8BJkPgN8j40pjbFV4R65gHBmTaRcP5vTRe9he2BqR31EsNoAzL7OwVPVGUogfLA59u8AIkP1
 IZInbtJmRFwIc9p16yDvbqAaao17PLugbgK3+UTlJOoS7Y2VSKHMsSoIYJj0lZ74wuU9jVDQd
 LbxDwvmFgJ5Q4XvboKhgIPr6oD+4KvK2DhVOQgkoA9efcD/LMJ7lFszHPYigbHBdd47tHmhdW
 83d6tbNgeTe552xoz1wb2BgIdzvK7NFCNEPC3uS/Ayn1Gfq6kaYRQ8Eu5/M6zSMA2EHmQnqBe
 IZkqnGMYUpYJ2Lgad10jRO5BWOJ5vJNfsmyhMoCWttFbTIyPXptuUK+CPDB7l7s5+3HUQOpIL
 wTPQWjC641+aLtQeIq9OUQKdDh2biGwBWNnKrHGwQUIZggy7lJh/zo8TeEKWzdYUGMxyREDiQ
 ymjnrQz6peIkOr57f
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

Hi Rob

Just want to let you know that using one tx_streamer per USRP works like
a charm.
So far I've streamed continuously at 184.32 MHz for a few hours without
any underflow. I didn't test it as intensively with 200MHz, but so far
it works as well.

So thank you for pointing me in the right direction.

Best regards,
Max


Am 07.05.20 um 19:43 schrieb Rob Kossler:
>> More important, about your two questions:
>> Using the Replay block is not an option,
> Bummer.  Because if you truly need to stream at 200e6 from CPU to
> host, that is pretty tough to make it work over long intervals with no
> underruns - even with only 1 device.
>
>> but I indeed forgot to add
>> clock_soure=external and time_source=external to the arguments of
>> benchmark_rate. Now if I use external synchronization, the benchmark
>> just hangs with <5% CPU usage and never finishes.
>> Running rx benchmarks however works, and I also never experienced any
>> sync issues when streaming data from two USRPs in parallel with my
>> custom application.
>>
>> I hope you asked this question because you had a suspicion.
> I just wanted to make sure that there wasn't any issue with the two
> devices having different clocks.  BTW, you can also use the --pps
> command line option rather than the args "time_source" option.  Both
> should work the same, I think.  But, unfortunately, that was not the
> issue.
>
> Also, wanted to let you know that I just happen to have two X310/UBX
> devices by my side, so I tried your experiment and got identical
> results:
> * Rx 2x200 works fine (channels 0,2 for me) with single instance of
> benchmark_rate
> * Tx 1x200 works fine for individual channel 0 or 2
> * Tx 2x200 FAILS when running single instance of benchmark_rate
> * Tx 2x200 works fine when running separate instances of
> benchmark_rate for the 2 channels
>
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
