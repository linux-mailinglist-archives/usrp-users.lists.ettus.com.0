Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA9E20F7D1
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2020 17:01:25 +0200 (CEST)
Received: from [::1] (port=56798 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqHlC-0004tV-JT; Tue, 30 Jun 2020 11:01:22 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:42444)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jqHl9-0004lt-3L
 for usrp-users@lists.ettus.com; Tue, 30 Jun 2020 11:01:19 -0400
Received: by mail-qt1-f193.google.com with SMTP id e12so15750921qtr.9
 for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2020 08:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=MH26K5kplpkyj8mliWTyG/89b6nctjyq+iOhvP/7yr8=;
 b=bLckeCEGypu2KF70RDArKoIPDMwTCDPznpQjh3esN5iB30DdJqFbp/crWeAJCiSnL2
 mB8o9ASLauQlkZtPmsNSfetMSiJV1r0eKY+0RrzPXihW/0VC4eWLat7ixRuLzNwK95kG
 wlvqnDwObuSvcJLEnL798f3zcOu5hj9vGfy/c/db7PS68xYks8BoGzT2KTaPgEZK4QOw
 lVtRp4nHimPbnjhnIWbl/JJ1xHkO0x2QAuTqDC2nOIYJz2NUB5k2f/2JA++JxqyNZBNh
 8fckmJOEw8De+wFLD+tlGxfSmHoPLL6maNM8W3BleXQAKUUw9dlfpAGOHNV0uOjJAh+M
 IUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=MH26K5kplpkyj8mliWTyG/89b6nctjyq+iOhvP/7yr8=;
 b=CzewQCQijEsvXsrQ+TywF+mApPrZFsSQ27a3k6JV7SE0S42OHPeWbRw6tzMr6uBeG1
 BRpQDDwG9GwoMFo/kZd4QKefeyNwnRZQN59AYQLEtRFy52sNjcPPnVd2rPpf4lIHeMX5
 E4+UX3ih7nt6oqzG+iOG+ZAZ3di/CJhuorTdCCNvkGWMv7i8lhBDci9K3rJgV4o60giF
 bou3Un6NLNvCpDYAjLdMF44TJsM6fsjm2hugRrtYAGpLFDlKkSSY4gFYNvhmW8pDTu3z
 qRKpUGLVkkp/iJJ/O+K7z08Fp8VwRIQbxb9Roz2Y1oCatqhNFjkeVvImRtARxf4g5Tnj
 /Dqg==
X-Gm-Message-State: AOAM531MB3jHXTW2x0rsH9CLRXWygUK8pQIsS5DaAIxzwZDwq6OMz2yI
 iSg72fzNCjnWUmccgiSreecLW2Gs
X-Google-Smtp-Source: ABdhPJwanQjlj4APJJwKW0YaaiPgh8YY4oM27EfGAeQ0Pxk3mgsLgSr4mKgrVWz5YYJ+tUCjewIi2A==
X-Received: by 2002:ac8:2aed:: with SMTP id c42mr20835092qta.202.1593529238165; 
 Tue, 30 Jun 2020 08:00:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id m14sm3417012qke.99.2020.06.30.08.00.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 08:00:37 -0700 (PDT)
Message-ID: <5EFB5394.2070507@gmail.com>
Date: Tue, 30 Jun 2020 11:00:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <dd50baf6-aabd-1ce3-1014-f8ae91e4c969@gmail.com>
In-Reply-To: <dd50baf6-aabd-1ce3-1014-f8ae91e4c969@gmail.com>
Subject: Re: [USRP-users] Problems with "uhd::set_thread_priority_safe"
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

On 06/30/2020 06:38 AM, Nando Pellegrini via USRP-users wrote:
> I am a B200mini user since few years used for radio astronomy 
> observations with home made software. No trouble so far.
> I decided now to move to a new laptop PC running Ubuntu 18.4 with 
> latest update (kernel 5.3.0-61) , after porting my software i am not 
> able to receive anything above 40M samples /sec without dropping in 
> overflow error.
> I suspected that the setting of high priority was not running anymore.
> I tried a short code  loop of receiving streamed blocks from B200 (a 
> single thread coding) and with or without issuing 
> "uhd::set_thread_priority_safe" the result was the same (overflow 
> after a number of blocks received very variable) much different that 
> previous installation being able to receive and handle 56 samples/sec.
> I could not find any way to check the real priority via c++ or 
> available tools.
> Any help/suggestions very appreciated.
> Nando Pellegrini
>
Nando:

It's unlikely that scheduling priority has much to do with your 
problems, but here's is the MAN page for getpriority()

https://man7.org/linux/man-pages/man2/getpriority.2.html


What device arguments are you using?  Are you using the 
"num_recv_frames" argument?

You note a move to a new laptop.  What are its specs?

The performance of your application depends on a LOT of factors, 
including things like what kind of USB controller you have, how fast the
  CPU is, how fast the memory interface is, etc, etc.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
