Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 009471C93AF
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 17:07:55 +0200 (CEST)
Received: from [::1] (port=38580 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWi7q-0002aj-RT; Thu, 07 May 2020 11:07:50 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:38541)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jWi7m-0002SS-MS
 for usrp-users@lists.ettus.com; Thu, 07 May 2020 11:07:46 -0400
Received: by mail-ot1-f49.google.com with SMTP id m33so1191824otc.5
 for <usrp-users@lists.ettus.com>; Thu, 07 May 2020 08:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C2cpVduSZrq0mt6TG5ivKDTC2Tkl0OoOenHzV30oIUs=;
 b=CFGT23L7Et3bX9j9++2a/eP/iujAmCYU2NPAiDLDrHQ5+QO7qKPAEDLTCGWKWOxm0l
 p0smFx7vGAIhERTKVyqhEAXciO01TaMWYBZPCFCKfBS0+LrsxEJqzZTIRMxt5OKCNf6b
 0+wKoJS9GdI1N9/hhHBFla1F00B6Il2mQ6DLD5HIsRKprjX0aZogQeNipaP1Fns/xGvi
 J3bl6rTpsWu9RCq5koEVwd8FZIujZxblS2kX5PZQ9IG+pe3Uw7z2+MgIQsyYOaHsXYIc
 9mvp9Jh835+irLrCm5ZFqVsP7FgtuZDS8slz7REfnhEyE8TDQPwGskfJdNsJkiEutoxY
 Hmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C2cpVduSZrq0mt6TG5ivKDTC2Tkl0OoOenHzV30oIUs=;
 b=P+ksj2ITJ1dySD2abqNd3NRne5EubJhHzqgu/IbNdPa2tW0LhdANXkI69DzIizxzIF
 Gm9pSpBmeUmwfqbD+JBSTr7ANK1EhXAWrgZYtigxJfgDnYBDT94BPGk3XNii/4hATwkb
 rPMX/dOLkylTBSA6WYnU4v46Fntg0vIjrIXp9rAG+cCt/IBeVbDJz+oVXnBI9tlz9629
 7MrFaA2+/0UjyMMKhFHzAKtlGl0sjVfIdPUBgjxg4WzbJkHTXlnW5v49ccbDsajAE1IC
 g+ZySr+MqHopUg0YZhpmGymmk8gq4FrYhBOoHS+eGYHL+QdD/Eo6kFJwWZ1RE762yz5c
 1fIw==
X-Gm-Message-State: AGi0PuakhDyczNeD7mpX9LdcMx+YUuHwRcQzpnm5CR5pY4GdeYaFuUyW
 oZ7s4wDbmDQ3dkKWYG7wCZ48KZgGuAGJjy+KNZLErx9s
X-Google-Smtp-Source: APiQypI5LSukp4gkLg3WlXbC3wGmdEp/aA5eJf7hgihbAWjX0D0Qxz3znl7yY66UilSI0odskEnkCR/v/tt96Rn68Og=
X-Received: by 2002:a05:6830:4db:: with SMTP id
 s27mr10186016otd.301.1588864025815; 
 Thu, 07 May 2020 08:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
In-Reply-To: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
Date: Thu, 7 May 2020 11:06:53 -0400
Message-ID: <CAB__hTR=aj5uxHFxtz0tEFyF8iUfygOVefy8=YYHLW_MhW931Q@mail.gmail.com>
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

> I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs are synchronized with 10MHz.
>
> I can receive data without any overflows at 200 MHz (one channel per USRP), but transmitting results in massive underflows for 184.32 and 200 MHz.
>
> benchmark_rate shows the same behavior when transmitting on both USRPs at the same time; sampling rates <= 100 MHz or using just one USRP however works without underflows.
>
>
>
> But I also tried running two benchmark_rate processes in parallel, one for each of the USRPs, and this works flawlessly.
>
> Is there any explanation, why using uhd::usrp::multi_usrp results in massive underflows, while operating two devices in parallel in general seems to work?
>
>
>
> I assume using two uhd::device objects with independent tx_streamers could be a workaround for me. But using multi_usrp nevertheless seems more convenient.

Hi Max,
I don't know the direct answer to your issue, but I have a few comments:
1) Tx Underruns have always been a much bigger issue than Rx Overruns.
It is always harder to get this solved.
2) Even with multi_usrp, you can have 2 threads running. So, you don't
need to have 2 device objects.  I do this in my software. You can get
a streamer for channel 0 and a separate streamer for channel 1 and
then run them in different threads. Not quite as convenient as having
a single streamer though.  And, not certain if it will solve the issue
for you.
3) With UHD 3.15 and earlier, using DPDK helps alot with streaming.
It is a pain to get configured, but it does stream much better once
properly configured
4) With UHD 4.0, I've heard that streaming is improved overall such
that it might work fine without DPDK.  But, that is a big question
mark and there are always reasons to be cautious  when jumping on to
the next best thing...

Two questions:
1) When it fails with benchmark rate, are you setting PPS to external
so that both device clocks are set to the same time?
2) Is your Tx waveform dynamically changing or is it a fixed length
sequence that is repeated?  If the latter, perhaps you could transmit
directly from the FPGA using the Replay block.
Rob
Rob

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
