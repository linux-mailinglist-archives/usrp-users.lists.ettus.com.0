Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F77C1C981C
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 19:44:20 +0200 (CEST)
Received: from [::1] (port=41322 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWkZE-0002yI-Rw; Thu, 07 May 2020 13:44:16 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:38548)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jWkZA-0002sn-OK
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 13:44:12 -0400
Received: by mail-ot1-f46.google.com with SMTP id m33so1706767otc.5
 for <usrp-users@lists.ettus.com>; Thu, 07 May 2020 10:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D56OmQjWt5jji3R59qIerUH/gJPgqV+XkN/7xY2RVf8=;
 b=DCzQzVklSn7s6aLaNTRjCVXUk6Vnu5kK7FONVZqn3hPoiFrI0+xCW36QE4x3zRjxC1
 dr46nSCJxTRytXluOMnycfAFqjj6p65yqdtNsEbXbA/r0QTNfR3uQxJ+2wrl15qx9WTk
 oh2EmEy+W2tS7GWo7pq1zVZkuc8yldsV7PiV4b/ocxI7YoFeILWgJvkWNXtAaI7UIpfT
 1CrE402HKCyplMxThTbTVQK3KlKT+I2Cy7GxgeSIfE0llAzdVZsNDOFYGfenOhlPltlj
 NCA+dGeJPQoRfZjYJpt6alpdOSRMxBKO97BG7rfHtUGnEqr0BcBJ8F1738/T5gj5XErl
 LGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D56OmQjWt5jji3R59qIerUH/gJPgqV+XkN/7xY2RVf8=;
 b=oiIn+LjBPKtMqHAlREEEyXATDHRMY3gcSdD09sLgarUAg9OrUiMp15+WJZWwZtSPKJ
 RluQ3L7ho3cKOufMPkGz5B26Wz1tjG0mCzAf44rQHAnbR7F9OKX2pQzZghWAQQRPaxy0
 S446m54kaoeuOVrqQcPXixfVmVDn4vPsNergoVY8uAgBZ6cTZDFjHkv4KrczjaGupH6Y
 UvasE8m3W/kaUQ7B5NxlLRBeF3D13g3QDlG9qNUdgL32CALEvF0AqVxdJPYlhKtdcylH
 RiF4pAwtHS5UoSNmHEmBNLdBh36LJ/yYIy8NHbdT3Vk2BSMJZOrP6yEP4cXJu8srq4te
 ztZg==
X-Gm-Message-State: AGi0PuZZm1TPno0Gdf8JhUQlaASDo7s9xEXRyO+qG0OID5B/e7mzfmyR
 rxSS9wI5khFhHPw9Kyat7izI5D2uDc3rgH9s4mBipA==
X-Google-Smtp-Source: APiQypJ1rlJnpwxzdZ7ZF98+9gKOZJ1aYKaqXGb4MtMpytMYMjdlmO8au0A+hbVTEoqKmjPvQY0whilqaNXzq7UhB9k=
X-Received: by 2002:a9d:7a8a:: with SMTP id l10mr5799758otn.302.1588873411901; 
 Thu, 07 May 2020 10:43:31 -0700 (PDT)
MIME-Version: 1.0
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
 <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
 <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
In-Reply-To: <3010bf0d-c84f-811f-6a61-f1ebbf9c0279@email.de>
Date: Thu, 7 May 2020 13:43:20 -0400
Message-ID: <CAB__hTTGOFicX7JY+RA22OUf1zXLWfAzYQoneiRGa-1zZM5gSQ@mail.gmail.com>
To: Max <hex98@email.de>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

> More important, about your two questions:
> Using the Replay block is not an option,
Bummer.  Because if you truly need to stream at 200e6 from CPU to
host, that is pretty tough to make it work over long intervals with no
underruns - even with only 1 device.

> but I indeed forgot to add
> clock_soure=external and time_source=external to the arguments of
> benchmark_rate. Now if I use external synchronization, the benchmark
> just hangs with <5% CPU usage and never finishes.
> Running rx benchmarks however works, and I also never experienced any
> sync issues when streaming data from two USRPs in parallel with my
> custom application.
>
> I hope you asked this question because you had a suspicion.
I just wanted to make sure that there wasn't any issue with the two
devices having different clocks.  BTW, you can also use the --pps
command line option rather than the args "time_source" option.  Both
should work the same, I think.  But, unfortunately, that was not the
issue.

Also, wanted to let you know that I just happen to have two X310/UBX
devices by my side, so I tried your experiment and got identical
results:
* Rx 2x200 works fine (channels 0,2 for me) with single instance of
benchmark_rate
* Tx 1x200 works fine for individual channel 0 or 2
* Tx 2x200 FAILS when running single instance of benchmark_rate
* Tx 2x200 works fine when running separate instances of
benchmark_rate for the 2 channels

Rob
>
> Regards,
> Max
>
>
> >> I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs are synchronized with 10MHz.
> >>
> >> I can receive data without any overflows at 200 MHz (one channel per USRP), but transmitting results in massive underflows for 184.32 and 200 MHz.
> >>
> >> benchmark_rate shows the same behavior when transmitting on both USRPs at the same time; sampling rates <= 100 MHz or using just one USRP however works without underflows.
> >>
> >>
> >>
> >> But I also tried running two benchmark_rate processes in parallel, one for each of the USRPs, and this works flawlessly.
> >>
> >> Is there any explanation, why using uhd::usrp::multi_usrp results in massive underflows, while operating two devices in parallel in general seems to work?
> >>
> >>
> >>
> >> I assume using two uhd::device objects with independent tx_streamers could be a workaround for me. But using multi_usrp nevertheless seems more convenient.
> >
> > Hi Max,
> > I don't know the direct answer to your issue, but I have a few comments:
> > 1) Tx Underruns have always been a much bigger issue than Rx Overruns.
> > It is always harder to get this solved.
> > 2) Even with multi_usrp, you can have 2 threads running. So, you don't
> > need to have 2 device objects.  I do this in my software. You can get
> > a streamer for channel 0 and a separate streamer for channel 1 and
> > then run them in different threads. Not quite as convenient as having
> > a single streamer though.  And, not certain if it will solve the issue
> > for you.
> > 3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.
> > It is a pain to get configured, but it does stream much better once
> > properly configured
> > 4) With UHD 4.0, I've heard that streaming is improved overall such
> > that it might work fine without DPDK.  But, that is a big question
> > mark and there are always reasons to be cautious  when jumping on to
> > the next best thing...
> >
> > Two questions:
> > 1) When it fails with benchmark rate, are you setting PPS to external
> > so that both device clocks are set to the same time?
> > 2) Is your Tx waveform dynamically changing or is it a fixed length
> > sequence that is repeated?  If the latter, perhaps you could transmit
> > directly from the FPGA using the Replay block.
> > Rob
> > Rob
> >

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
