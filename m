Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 843ED1B1B2C
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 03:16:53 +0200 (CEST)
Received: from [::1] (port=38078 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQhWu-0006uV-FJ; Mon, 20 Apr 2020 21:16:52 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:37591)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jQhWq-0006nS-MH
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 21:16:48 -0400
Received: by mail-io1-f49.google.com with SMTP id u11so13346128iow.4
 for <usrp-users@lists.ettus.com>; Mon, 20 Apr 2020 18:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=I7B0p2De7MyfUtcJSTuKHigSKcAnCOBKdTH8T7aVopA=;
 b=acLHLlQef/iBznMp7GOvopyDTYB2wweoj5EX31EGtB3ByR/COXGCVshM2dssdu0nkS
 kbuk6JfhL2FsIfQUfqy/I9SYSPdZ3bwWqibsr03PJAJUCAM7+NCml5bVhQkPvmKcSUMk
 O4AkXLsVcvQoz1OSUUeY425ARmcUUOGReHGrHB1Fz2kGH8oJzM/DNeofDFugMTWrFZp9
 Ug0qHJ3oN24dSDcP+1uFNo+aFbxHR7O2dYPL4BFmYHAvINzFMBI6uGIKYKY7uiwquJYx
 RP1xEJEdD0O+K3ASfb7NlVEsRcrYVUBjCGs+KE5yBhmz0J1WQ5SzGFyTCR1CtAcqdsYx
 nD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=I7B0p2De7MyfUtcJSTuKHigSKcAnCOBKdTH8T7aVopA=;
 b=P+cNbSA6t6CA8+APeMrFsxmc5j1UBVDTw/b3A9N1dqjTQCWsIvO8S2FdLC7yFbR05T
 2LLNOb5/uRf1AeuTQeP0gVRA19LTLzUY9TOjrQQ+ivvdTouC/3tPp1y42ZNI3fOAIBbn
 M3g0kuGivInj8Iwb2tknn1yd+94YX7+0TkNnpWt8fe7Lp4l+U2f+B+8bxKSHslNbn8nE
 dt6f3LTop5uDfNEgsAm3X4przEn3g+k5JNJ3bML3/5neMmby0DmnV9FZi8ZMKgviPud2
 s0SfuLFNa+Dg+gW9mWEavpNf+Z9Xxkn+tbPUGwZ+S6O7S7Bmjr+R2SIhezw2QthOChN6
 dSOA==
X-Gm-Message-State: AGi0PuaHsgzt0/bFdV48AkeQVsHmsITwFF3eYEGHyzXvmHGq9Ld1mnkj
 0b/ttfnqYP4afgjh3S0ggo5NSPzewkE=
X-Google-Smtp-Source: APiQypIQ/EoimxPLKDK9H+FLsMRtjH8DFLsGo/L7VnfalvM8eJYlabyltNtlndLV1J857lGo/86MwA==
X-Received: by 2002:a05:6638:508:: with SMTP id
 i8mr7192697jar.137.1587431767751; 
 Mon, 20 Apr 2020 18:16:07 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.googlemail.com with ESMTPSA id s69sm442177ild.6.2020.04.20.18.16.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 Apr 2020 18:16:07 -0700 (PDT)
Message-ID: <5E9E494F.6010405@gmail.com>
Date: Mon, 20 Apr 2020 21:15:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>, usrp-users@lists.ettus.com
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
In-Reply-To: <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
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

On 04/20/2020 12:33 PM, Lukas Haase wrote:

[Stuff that cries out for a calibrated noise source]

I've used these on a budget-sensitive project just last year:

https://g8fek.com/precision-noise-sources.html

Not perhaps as "chic" as Agilent and the like, but they get the job done 
and include a calibration chart.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
