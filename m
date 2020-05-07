Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E71261C96B7
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 18:41:30 +0200 (CEST)
Received: from [::1] (port=55862 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWjaS-0006Ma-V5; Thu, 07 May 2020 12:41:28 -0400
Received: from mout.web.de ([212.227.15.14]:32991)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hex98@email.de>) id 1jWjaO-0006F6-MX
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 12:41:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588869643;
 bh=j1lqvBFqeSfJm4qfdEOCAOuyIwrrx/4U9KpXwE57WKk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=rz88NhbOLAaNFQYoP88Gd4ScKATEVK+kAkr41Y2cQse4tRAfm5VqUDPVzeMG40FCT
 5EAmliBsil5y/3OQKjbC/cLPDZYKWbJHnEe1FSpCIcvpiMgnLFwM1eY4nbf4M8Ickv
 f8xRRydnvnUzmTrYAdQxnMCHCaoMd241fg7QcCCw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.14] ([87.150.154.203]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M4bYo-1jWBbx0sPW-001mDD; Thu, 07
 May 2020 18:40:43 +0200
To: Rob Kossler <rkossler@nd.edu>
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
Message-ID: <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
Date: Thu, 7 May 2020 18:40:42 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
X-Provags-ID: V03:K1:v3PZtu0Ixwn5tL7OMG7SlNnTmibhFn/c3N2ku/JeWzUVeckX67Y
 eE44pwSMGaIXXMysO6TUwrPM3jqOPzSXR62zIlIUEcYmzEpjMHBXqjlV/+H3jbuBSSLEQJF
 KHpaUYeMwGXey6ntQf2xmI2lcaZGwJM7llC2ODnXAiJgHJw/8KoN2XwZZdi8Zdp1TyZNGhN
 a3r1NGLMngD4nfpGu3Kag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YZMTnyhTcro=:Twg1xujLcG0lxwSiwQfH+j
 a4UjWKELjeL/1zhn02IGUIBFo9+ffNqqoGAqgywaDEmj7QlWu9ISUDh9jO7Fq4UaAKk3qVBmA
 dhjcbP1I4m1rAVKav5XV2BiN+RTTPxCTZZcvyGL5tA/eLvpcpnxfX2WTUnr+uGNRiq/B7W81Q
 5keIAEN1P+L3jiQ9WyzGDd2MRcCco9GptxxkJPFJGmaXKnaZ7+f8BGZsz08Jg6mkqAavlYKKC
 ZZKIWH+IYVFLfMrwXts81twvexKGlmj8kz7NqSGcy8ll9wkDxJJhc5+OIP1cGSda9ruoaD8Lm
 gPmnoGWjDMO77aqzKHA9dKjUixKjZfuZu+cxTKz7PdPcdm64HLC3L+6eDq/WYihuGqJ/VSjyJ
 WwT9x4NCDhs2073jlCAA1oI77rxe7pwDqzDMgrrDPVbxyn3YMrq+OekdnoOZY6GeWtp5nFm3H
 v43TpKtDllnaFYn//NS9zdhMy869WZ77YjFS0/CuqcTe4MVgajqgMDH1uifR4ymV5nn1bJRml
 Ib+TY9PBAzbjdp99mhqIzHzgLQED+IKe7GbOqsvwWFL0pYuaAT3cieR/jjR82RoRvd+ML1uff
 RqKJOyc8Rz1WPYr/mS6Mh+KGIeMshDNpKi3N/HJsVA/jTbRBVLnjctWdBiJl1DsplbnmLH6lf
 A4CVEnpmOo3xhczBiGjXPwVnJ1TxpXnVsGptJFhzAomlgCVDMvw6a4oIKHFPIGk2EH/E9DZIe
 wsbSsRUmpSmwv7JSZzOehZxAURjCDR5fz/4H2J9o0i0duAca0h/mYgjshhwvZJDpTf/SYPvXE
 gfcxzXl68ace3S0YwDZoQHuaI61tpSsDOwdzDoGM++GiFYNablzGfBgFto0Y12i3YSFy3GzKD
 1w0map3dHgn3pOAqW6gorzE1WYLhJvvrQiXxSvA4TZ9itKse+zwDxlLN4p5+Lftgn6HMqQMMa
 qVE1oFQgpNb5ezYsH6G5ojT5oMA/94/eE9E6qTKx4IeMHiAUkbKP5w+T7IR6ZRRzJGjXd67/c
 iOvgo8YyV/tLS/DBr4pTWFz419MSFNET6jRA1qmU+aPpZeB5QpDz7YVbgv5ytQvDQF8cQ38Hb
 yTuslxtx10HLc0/Pk7duiV2im68B7WzeBkjNaQIlRQMnIRlhNf/h/8IOXMjHcnnh5xGuAkoST
 weVo242ayxfA2+3wzgfzVVTbvDZUWXDUPh7R9HljwIBSure8nHPbiqUBx5miB3UKQubXJYEcy
 RGnMoGY9iyxmSlFMc
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

Hi Rob,

thank you for your comments.

I did not think about using multiple streamers with multi_usrp, but will
give it a try before considering DPDK.

More important, about your two questions:
Using the Replay block is not an option, but I indeed forgot to add
clock_soure=external and time_source=external to the arguments of
benchmark_rate. Now if I use external synchronization, the benchmark
just hangs with <5% CPU usage and never finishes.
Running rx benchmarks however works, and I also never experienced any
sync issues when streaming data from two USRPs in parallel with my
custom application.

I hope you asked this question because you had a suspicion.

Regards,
Max


>> I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs are synchronized with 10MHz.
>>
>> I can receive data without any overflows at 200 MHz (one channel per USRP), but transmitting results in massive underflows for 184.32 and 200 MHz.
>>
>> benchmark_rate shows the same behavior when transmitting on both USRPs at the same time; sampling rates <= 100 MHz or using just one USRP however works without underflows.
>>
>>
>>
>> But I also tried running two benchmark_rate processes in parallel, one for each of the USRPs, and this works flawlessly.
>>
>> Is there any explanation, why using uhd::usrp::multi_usrp results in massive underflows, while operating two devices in parallel in general seems to work?
>>
>>
>>
>> I assume using two uhd::device objects with independent tx_streamers could be a workaround for me. But using multi_usrp nevertheless seems more convenient.
>
> Hi Max,
> I don't know the direct answer to your issue, but I have a few comments:
> 1) Tx Underruns have always been a much bigger issue than Rx Overruns.
> It is always harder to get this solved.
> 2) Even with multi_usrp, you can have 2 threads running. So, you don't
> need to have 2 device objects.  I do this in my software. You can get
> a streamer for channel 0 and a separate streamer for channel 1 and
> then run them in different threads. Not quite as convenient as having
> a single streamer though.  And, not certain if it will solve the issue
> for you.
> 3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.
> It is a pain to get configured, but it does stream much better once
> properly configured
> 4) With UHD 4.0, I've heard that streaming is improved overall such
> that it might work fine without DPDK.  But, that is a big question
> mark and there are always reasons to be cautious  when jumping on to
> the next best thing...
>
> Two questions:
> 1) When it fails with benchmark rate, are you setting PPS to external
> so that both device clocks are set to the same time?
> 2) Is your Tx waveform dynamically changing or is it a fixed length
> sequence that is repeated?  If the latter, perhaps you could transmit
> directly from the FPGA using the Replay block.
> Rob
> Rob
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
