Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B354D9A615
	for <lists+usrp-users@lfdr.de>; Fri, 23 Aug 2019 05:35:50 +0200 (CEST)
Received: from [::1] (port=40860 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i10Ma-0003e1-Ja; Thu, 22 Aug 2019 23:35:44 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:40039)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i10MX-0003YJ-9q
 for usrp-users@lists.ettus.com; Thu, 22 Aug 2019 23:35:41 -0400
Received: by mail-qk1-f171.google.com with SMTP id s145so7094638qke.7
 for <usrp-users@lists.ettus.com>; Thu, 22 Aug 2019 20:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=zUP3i6XVvht3NAQ+hrwmwrua+okbCLQFBMzf3pVP6hU=;
 b=IMiDhZtG5fYSJGNLbGV2MZfrrVIBDbB080940De7fs3xOfVJFl8W98JMY6BGnCA9yO
 t3hoJkxvpkP7so/rYlPV7EsOrCupBNxE7OpytbsZciX0D5kTdxbRoxLNQLePi6tBaVvl
 rJlfHUyrNffGQY6HLlc4xrSPuA4TcjNg/HZ5f8QMUhLRO7nkREl88sIRjhCxf3iTACki
 XF8gTci6vbJMOrjGPbmrYu6KjSbylYvFHKUZf6ywPsGgeHpneRvrnt0wDTzCz8So7tex
 Tef5VI2GGJlkQ3KRAfKbC7oKtFJUZBIEi6dtw32OSz9AGlarspG/Hfdbj3vs0MYaD8Rs
 mHDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=zUP3i6XVvht3NAQ+hrwmwrua+okbCLQFBMzf3pVP6hU=;
 b=oo3+uUfJrCtmB7uo960kU3ifAmxZ/DKRZRhjBZ7W2JUMSIzQX8yDwoCgea7jXJC0Zx
 j1YbOB+WWQLPTuy5Pv5k0XzdkC6/+xTDWnGIGSgG5kXWgyD4jTal6eb9GxP4c2reMcwY
 KkI6jewn9v5XA6UgLI3WqBhxnxpbT+07F3hMe0oma/DpxrxnrwOel8hxYig+XoZVTO+x
 CKn85ZUtjxLVpDArxTBHQ9oUqfvJM5LFwbcR4WDu1eU6tKWjp/L6CBqXO51i8smFEKGL
 5uKZ7/F0vIUkWmcUPGwNh9cFuIvZ6ExVguv7ig5xgWPvE54SFuK96SYokbvMz8w8yVAq
 x8Mg==
X-Gm-Message-State: APjAAAVLRwLLx5NwchOWEOLHnrowXHYlgR9tTsazrhbu39GU97l7z+7Z
 tIIwiezsEXWFhLrAWt2N/mtXWV+D
X-Google-Smtp-Source: APXvYqwWRHrT5V6ErxJE9nw/mUgO3vRJtJ/3QlYIxmLR7OYwAb0D2j/BNp2uuFn5HnTCWtJj4KhHsA==
X-Received: by 2002:a05:620a:1113:: with SMTP id
 o19mr2240599qkk.46.1566531300510; 
 Thu, 22 Aug 2019 20:35:00 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id g14sm830872qki.14.2019.08.22.20.34.59
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 20:35:00 -0700 (PDT)
Message-ID: <5D5F5EE3.3080301@gmail.com>
Date: Thu, 22 Aug 2019 23:34:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAAMvqVG6ai0anEO5s0WU9RXoC4KOY40XS8jB=phpEjohBXa=Pg@mail.gmail.com>
In-Reply-To: <CAAMvqVG6ai0anEO5s0WU9RXoC4KOY40XS8jB=phpEjohBXa=Pg@mail.gmail.com>
Subject: Re: [USRP-users] Packet drop during frequency hopping observed with
 B210
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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

On 08/22/2019 11:09 PM, kailash kumar via USRP-users wrote:
> Hi,
>
> I am testing frequency hopping in a loopback mode on B210 using 
> external RF loopback cable.
> For First slot Tx/Rx is done at freq 562 Mhz. Subsequent slot is at 
> 582 Mhz.
> I have observed Rx packet loss when Tx is done for entire slot duration.
>
> Please let me know if this is expected or if some configuration 
> is required for this.
>
> [INFO] [UHD] linux; GNU C++ version 9.1.1 20190716 
> gcc-9-branch@273504; Boost_106800; UHD_3.13.1.HEAD-0-gbbce3e45
> [INFO] [B200] Detected Device: B210
>
> Slot duration - 1 second
> Rx gain : 20.000000
> Tx soft gain : -12.000000
> Tx gain : 40.000000
>
> Testing results:
> sentBytes 7225 recvBytes 7225 -> After sparing 50ms in 1st Tx slot at 
> freq 562 MHz.
> sentBytes 7390 recvBytes 7390 -> Rest bytes in next Tx slot at freq 
> 582 Mhz.
> sentBytes 7390 recvBytes 7390 -> No more Tx
> sentBytes 7390 recvBytes 7390
> sentBytes 7390 recvBytes 7390
>
> sentBytes 7390 recvBytes 7375 -> Utilize fully 1st Tx slot at freq 562 
> MHz. Rx drop observed.
> sentBytes 7390 recvBytes 7375 -> No more Tx/Rx at 582 Mhz.
> sentBytes 7390 recvBytes 7375
>
> Thanks & Regards
> Kailash
>
Your description of the problem assumes the reader knows intimately the 
details of exactly what you're doing.  We don't.

We need to see code snippets that demonstrate your problem, or a 
much-more detailed description.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
