Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 880A220ABDC
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 07:34:55 +0200 (CEST)
Received: from [::1] (port=58262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joh0m-000604-0o; Fri, 26 Jun 2020 01:34:52 -0400
Received: from mail-qv1-f47.google.com ([209.85.219.47]:32879)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1joh0h-0005nP-PX
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 01:34:47 -0400
Received: by mail-qv1-f47.google.com with SMTP id d12so4004759qvn.0
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 22:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=MZjKNHjF4+eJ3pGFgYCBY3nw5JTZW2vJBfZt5Ch7xc0=;
 b=B4Eij7RqaCGEHhNW9xEh6oRMBXu3TolNINqXdmHAQ8FEZAoTefyvqfNFPxBrNtzFAG
 DJerF0+w+PlAVd1ukVc9ZhJ8dcs7NwG9V/15KM59SwZwHa0jkGkjJankaQnNb2B93LA5
 6TIH/yKwZ5JQcj7YhP0ty21q6N1w6VQGQYigHft56NXO6zEGWvCBMBJQPX7L3jOU5w5r
 a5wdt2PagK8MFkBst4eOPcB8nAz9JDrOMaifFTJbhegOxZgGV93XjJlXst8g4Q+thAKc
 ZKv6sNUKQ1OvoGpd34CVOAPBzQAVWIO+h+XKBdH/7nIRu/YSAhZMhdJBtTRfM1bSRgQj
 sxtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=MZjKNHjF4+eJ3pGFgYCBY3nw5JTZW2vJBfZt5Ch7xc0=;
 b=AP3pggdi0/w7kP1rECAh0RwnjLNdwmFAisQf2d+7kdDKwQJ9ZqCrgSWpNht2bbMrQ5
 o7yyVcnL7EVMMdqG2XdgTHEDYvmhMRZJHOlD3F4OksK1DiQnfmIFnxswpbP6Xy0iPo9u
 WwkQPqh1EfPe4VdyL7uvzK9nC2/Lo7esz00ZIciGAEctXhDZDjLszynMt3w4tX1KIMu9
 S9jdRIDs/EhAQS0XNRLaChiz/wmastwP4oAKjaEZF7anbEqtRR+tIPAkNeQExKgtUANb
 Vzf4fnw0U7w9lA7mPerw9nIqUnp6/mm/GWF2qUxvr34X5xVUKDbDMxGWFwlEtfMBFCr/
 WDQQ==
X-Gm-Message-State: AOAM53205W/yxnGl3Tr0n2I2qJpOzewcAxYhv4X9puZAt3C1JDQx2Dhy
 aZRgrzdx1erIMijxKterUFQaF9XQ62s=
X-Google-Smtp-Source: ABdhPJy0XDZu8Cqnh0AtwbZaK6cXvyuRISYD7vXh/gMWb5euK48j3wfRdnQB/F792cXxsZxGr+TKhg==
X-Received: by 2002:a0c:c607:: with SMTP id v7mr1418628qvi.84.1593149647075;
 Thu, 25 Jun 2020 22:34:07 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id a82sm7992845qkb.29.2020.06.25.22.34.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jun 2020 22:34:06 -0700 (PDT)
Message-ID: <5EF588CD.70001@gmail.com>
Date: Fri, 26 Jun 2020 01:34:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Daniel Tajik <tajikd@mcmaster.ca>
CC: usrp-users@lists.ettus.com
References: <CAMuWo5trjDhxSOc0sKbw9-SshYmTKHv2UWM+aPa1v7t+a04Lyw@mail.gmail.com>
 <5EF5536B.5060500@gmail.com>
 <CAMuWo5sGe1Ce8MEeK1T9s2kKgY+h8eY-S205nM89LTnqLWHFtA@mail.gmail.com>
In-Reply-To: <CAMuWo5sGe1Ce8MEeK1T9s2kKgY+h8eY-S205nM89LTnqLWHFtA@mail.gmail.com>
Subject: Re: [USRP-users] B210 Loopback Exponential Decay in Burst Messaging
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

On 06/25/2020 11:14 PM, Daniel Tajik wrote:
> Hey Marcus!
>
> Yep, my configuration has the recommended 30 dB attenuation. I haven't 
> maxed out either gain stages to avoid risking anything, mostly sit 
> around 50 dB on both Rx and Tx side, as its recommended to also use at 
> least half the gain available to achieve a suitable noise figure.
>
> No frequency hopping here, just ran a couple tests to see if different 
> carrier frequencies would improve the behaviour, which it did not. I 
> primarily run the test at 435 MHz, and the overall bandwidth I'm 
> looking at is 25 KHz. My GFSK modulation is squeezed in between that 
> at the 6.25 KHz deviation. As for half/full duplex, the test I am 
> running is a single channel loopback test on a B210, so the transmit 
> and receive port are both running at the same time (i.e. Full duplex).
>
> Still not sure what the problem is in my implementation. I assume its 
> something internal? LO leakage or some sort of cross-coupling 
> somewhere? I've read that operating Rx and Tx at nearby frequencies 
> can lead to interference issues but I'm not sure if this exponential 
> decay in a burst transmission is how it manifests itself in my 
> implementation. Any other tests I can try to explore the cause of this?
>
> Thanks!
>
I would try using offset tuning on the RX side.  The B2xx series doesn't 
actually have a way of disablng DC offset removal as far as I know--it's
   always on.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
