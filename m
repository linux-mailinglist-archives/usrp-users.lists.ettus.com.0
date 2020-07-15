Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10075220ED8
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 16:08:36 +0200 (CEST)
Received: from [::1] (port=32784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvi5K-0000uv-9w; Wed, 15 Jul 2020 10:08:34 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:40730)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jvi5H-0000iT-01
 for usrp-users@lists.ettus.com; Wed, 15 Jul 2020 10:08:31 -0400
Received: by mail-qk1-f173.google.com with SMTP id 80so1860262qko.7
 for <usrp-users@lists.ettus.com>; Wed, 15 Jul 2020 07:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=GNLgC3VZxuZU9cmZd5+KtlXbv3ad+c3RnThEZPEz0Ng=;
 b=cWvkBqq3nSQzPf9+afrxK2YvlvUgHXsU7AJY5oRsY/x2bogCDjMOS7BVe2/jVyG9Ql
 k/QHKX4+dOI9yLs0ozaiYUSEC7yoOKVM9/L4ryukAIiLslytPkds1rXsCYL/UzB7s96k
 /YSvbDOJGqi/N+drTrqI2D4vR1QarHLZB4iEaLk2nXIX+el8k2Cwueogfn3tkWXFFrG/
 oaASi+eX48hcbHY/YnFwZJSDtcKQOHdr1tULvK0pw17s0bHEJF+xcWUa66V4StGLGMzw
 MtkgkeTIVDOB9qqLFn4Lz1lPDTU0BpxQLOvqtPOvOGE9BQ1nvYCP8DBlH2CkX3TflmgV
 i7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=GNLgC3VZxuZU9cmZd5+KtlXbv3ad+c3RnThEZPEz0Ng=;
 b=tAS2ObA3yWW/YBuNpX6VpY7kypr2eiMvphqnrb7u2MbnCAN28oxPtKyPVhYoZWY0bE
 JmA3PjJ0rcjThh35xVYftbCZ7kTeoCJQqMqDSRqz7rLyYHBEKU7dZwMxvJ2y4DlypbES
 N9RTr0IbVTTJ5Mb7tIKbs5h4qRx2rkzNREhbayGIqQQotCovR7NeqEwvgfUCk7sYcMgW
 Onsj4Ae9rmXcp11GKF8m4UtU45ge+f8PSjs672ygGH48mG7B7EXHJOtFU6BkPp0NfUs4
 UUcK5Leqm5jRJBe9/LTaFGyC4FZl1gYUQaIN/PGR49CwmG+b9Ag26sMvnjIhPAh85MIg
 wBDQ==
X-Gm-Message-State: AOAM530Zniu58I+PCmnifEoHA5XRsqNq5LYsGOr63mudv31bCaO7CrHv
 lGU9a6aqWxt0Otlf1ElFPqtsE8rm
X-Google-Smtp-Source: ABdhPJw7F0YUIlgC2y5+KwUtsVTJOgRP2nNf+zDtikDYmuygg6p1q/MrUU0LTFVIr2yMMSY9aN9feA==
X-Received: by 2002:a37:af82:: with SMTP id
 y124mr10093491qke.254.1594822070048; 
 Wed, 15 Jul 2020 07:07:50 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id w18sm2948498qtn.3.2020.07.15.07.07.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jul 2020 07:07:49 -0700 (PDT)
Message-ID: <5F0F0DB4.2080708@gmail.com>
Date: Wed, 15 Jul 2020 10:07:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Pavlos Basaras <pbasaras@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CAMVZM+-xgHc1dGUM9T2BncCPVcLuC7j1uPqVLQeFvPmhf3FE2A@mail.gmail.com>
 <5F0F0A47.3020100@gmail.com>
 <CAMVZM+-rUvuBzq_zEwq-72imHMuQ+XaMePDYUvmJq2B69GJPUQ@mail.gmail.com>
In-Reply-To: <CAMVZM+-rUvuBzq_zEwq-72imHMuQ+XaMePDYUvmJq2B69GJPUQ@mail.gmail.com>
Subject: Re: [USRP-users] error at updating the filesystem for usrp n310
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

On 07/15/2020 10:02 AM, Pavlos Basaras wrote:
> Hello,
>
> thank you very much for your prompt reply.
>
> i copied the .mender file by using the "scp" command.
> Yes, i am running the command on the USRP.
>
> I am not sure if this is a problem but --initially when i created the 
> .mender file, the host was running the UHD 3.14.0.0 and the USRP had 
> 3.14.1.0. This is when the problem appeared first.
> Then i changed the uhd to 3.14.1.0 on the host to match exactly the 
> UHD on the usrp, but the error still persists (or course i deleted the 
> old file from the usrp).
>
> any ideas?
>
> best,
> P.
>
I'll have to bug some R&D people and get back to you.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
