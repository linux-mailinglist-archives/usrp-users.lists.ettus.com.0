Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D92322AC18
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 12:04:24 +0200 (CEST)
Received: from [::1] (port=60018 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyY5N-0001yV-9S; Thu, 23 Jul 2020 06:04:21 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:41879)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jyY5J-0001qy-PF
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 06:04:17 -0400
Received: by mail-ej1-f44.google.com with SMTP id w9so5720732ejc.8
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 03:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=bNepWVPnsiX9cT3n8B5/MwF5J0+4ClJdpOEcIa5N8Qk=;
 b=PMIgc7t6pJ8ZUoZl5AaFODbEU3mn7igCkvM5EAMseecTYR8MD5wcvisUJmb1saKyCa
 HlUZAu9DiaYOHTcwhE7blOkMdonJEIJrsOgs4wZKxciDjSE4IdBUpcZVAnd/FKStHDAi
 ihfsI5aTK915X8ICcua81U3ocySMLl6X/mNceH1j9JURFQalNa9bIafXBB1cVQVRus3V
 4MBWvw82uyDuaUyiMsqLe6QBtQBVq2DvWoNDIwoJgC9H3Hoaq0GY1QYPyWQMazMpTKmg
 08yQe1DsUwyLkZC0rK53YOtMb3Fa2BO/Km2AMla0MRRNb3OloeFQNP63mpd21KJv5nc5
 iwAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bNepWVPnsiX9cT3n8B5/MwF5J0+4ClJdpOEcIa5N8Qk=;
 b=lSOaRySimekCaG3klLl5b2Bh8UfxbSfX0Yf6hYg/474UIyOxRQ3zP1RCmJXh4XYAiz
 tBMu0k5w7WyPx1T6sujyBRFIbLw5Pm6EfmsriD4HYwLL44F68PWM6XBKmg+d0Tdf2q0y
 T2nR7R7sHxvD9EAo93wrjRVH5pTX+WYZGY/gTLZOj1FBv5+rBMtGlGcStHZO0R3v+WfE
 aWplAdL5jXaf7+dHgbQZZ5gkHIoyobj3ZfaoQO7EJu5+IKsUrbLUAZljSsijUQ/IYhLX
 xDOy4tb4gfqF8yxP0Au6SOTfWymh4dlz/iDQcP4RrQafgTTMXMGZxGvs9PB3Il3OuGWV
 8Ywg==
X-Gm-Message-State: AOAM532jVHhuLiwTuxgXoU0SAl3z+cDiB+HdX2iLoi9Cn+NFB0L1Rum3
 BQs1tgd36hWGGb8EkWofnT+3MjYwOHQ9/w==
X-Google-Smtp-Source: ABdhPJzl2ynWUpduQXXDMpl4t7K/uSXuiSjNRHqIHyhAAILY//gp+dlPePnZBavNjfjhAW1o7RwrhQ==
X-Received: by 2002:a17:906:60c6:: with SMTP id
 f6mr3371832ejk.265.1595498616229; 
 Thu, 23 Jul 2020 03:03:36 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id r19sm1722931edp.79.2020.07.23.03.03.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jul 2020 03:03:35 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
 <5F1870B5.7030805@gmail.com>
 <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
 <acb46f0c-e8a2-c08b-5e75-afcad50e30d2@ettus.com>
 <f68cc2a0-d33d-11b9-bf84-0f6492128401@ant.uni-bremen.de>
Message-ID: <5ca945fe-8dc1-db90-f172-88a78d769a3f@ettus.com>
Date: Thu, 23 Jul 2020 12:03:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <f68cc2a0-d33d-11b9-bf84-0f6492128401@ant.uni-bremen.de>
Content-Language: en-US
Subject: Re: [USRP-users] 10us+ sample delay between daughterboards
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

Hey,

On 23.07.20 11:44, Johannes Demel via USRP-users wrote:
> Hi Marcus,
> 
> I tried to improve the situation. I had another look at [0,1].
> 
> From [1] (N310 manual)
> "[..] which can both be used as time- and clock references. The GPSDO
> will function as a reference even when there is no GPS reception."
> 
> This helps. I set
> Sync: "Unknown PPS"
> Clock/Time source: "O/B GPSDO"
> and all streams are in sync. That's sort of a relief for N310s.
> 
> Since I don't have a GPS signal in the lab, I assume there's no point in
> trying to receive a GPS timestamp and set the device time on next PPS
> [0]

yep, I'm afraid that's true.

>. I would prefer to work with timestamps "since epoch" instead of
> "since start of flowgraph".

Understandable.
> 
> I need to figure out how to use GPSDO on those X310s though. Since the
> GPS LED does not light up, I don't think it detects a GPSDO at all. And
> I just hope it can use a GPSDO like an N310.

> 
> Since I work remotely, I can't just manually generate a sync pulse. 

That's what Hiwis are for... just kidding.

> But if I can find a device that works reliably I may switch to that.

ah, if you're working remotely: maybe something like a raspberry Pi with
a GPIO? You could remotely trigger it, or you could just synchronize its
clock via NTP, and let it toggle a GPIO pin every 500 ms starting at a
full second. (and of course you can build the fanciest control loop that
makes sure the GPIO timers and NTP time don't diverge. That might
actually be what Hiwis are for...)

> Thanks for the explanation and ASCII schematic.

Always! Also, I've done better schematics; one day, when I have infinite
time, I'll make use of more unicode for better living and schematics.

Cheers,
Marcus

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
