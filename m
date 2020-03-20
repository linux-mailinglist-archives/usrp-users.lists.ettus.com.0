Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B4318D96E
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 21:34:23 +0100 (CET)
Received: from [::1] (port=38404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFOLW-0005aj-24; Fri, 20 Mar 2020 16:34:22 -0400
Received: from mail-wr1-f43.google.com ([209.85.221.43]:36047)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jFOLR-00053Z-Qz
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 16:34:17 -0400
Received: by mail-wr1-f43.google.com with SMTP id 31so3084789wrs.3
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 13:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eO6mfCqen7gkipnmCaWaympTXjfuMbAHxSpfPWiKpi8=;
 b=P+q/ERPGwnXW04khEzp8ydJo394E/gmpd6ogQCpLoIK8ZkHCjfN5k/V7JKQlajWx3/
 w+vuV9naeBlB+yxzP+GS7fa/+UTSOVey4yMPHAy21AeMECIp3Ej8kb9YkGMOrcuSA5iX
 CWQuH671xAccc266mzF3pTj9isw1Y1uj1cfgDAl1A6PefUqtGQRQGtJJBDwS8q90xOr/
 W9JCKEXSDM0d6yHrGVIynUmtbaasWx7uSIBCN1P7FySl75zL/xPykymhEW7uzXbZqpNC
 Mxrp+0qz2Nj42TJ/F20ncJDYL/4eVL+SE02cSx4z1uAie83J7AWud5JVLUxjzmH84lFO
 3C2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eO6mfCqen7gkipnmCaWaympTXjfuMbAHxSpfPWiKpi8=;
 b=J2ZyM7WmTDNocoHPibRwztiKlUMPhHTpuippvukV/8F8Ab4+e/Si8ewZxc2227USzq
 ZZfQ26FEnF71px6r+riqd3WicUWFoEct8/FPfisN6+Kw5X51xFVUmcbnAX2+35Jf5OjW
 0ZGZ2x0zU68iw9Wy28CYougpexZKm9KB7tRza7s9sKpCl8NVxpVAs+D1SIH8mhpPtL29
 l+Uc0EY0r2UpRxBMHV4o+Nnhj/69csDgCr+SZ4OUoycHehNy7qcUS4qbWGHWHCc8jjoy
 +tGjMhbHRXn6gIbHFQSawOMnAVaB8yZ79HAGqB4ioH7GQDwvZXdbe3ZSqXyFBYEZNwtD
 fuzw==
X-Gm-Message-State: ANhLgQ10T0gkL7kq1zKLXJJNdjaT/xltO3p5Wuccr+BK1W5malZcKGiF
 iFV5ourtdnzYe3HmlSctfzG2zDvv8dNrtg==
X-Google-Smtp-Source: ADFU+vtaISC9Hy6xzN0EPmfetMShFxn/s58bEYYb0lCTP6p5fZEC9p98PiUHW5RBLoq1AgSgmWBCHw==
X-Received: by 2002:a5d:4885:: with SMTP id g5mr12825467wrq.93.1584736416587; 
 Fri, 20 Mar 2020 13:33:36 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.gmail.com with ESMTPSA id e6sm9480767wrn.29.2020.03.20.13.33.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 13:33:36 -0700 (PDT)
To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>,
 Cinaed Simson <cinaed.simson@gmail.com>
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
 <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
 <0d486110-0f4a-9605-ae9a-b68075c797e5@ettus.com>
 <dcddce1b-6d5c-9139-d2c9-61f88dfd1743@eurecom.fr>
 <CAKaLowTQ3GEHZgksydU0pVm1ewHQjR810ZcVZObfLedX9w53+w@mail.gmail.com>
 <00072490-e939-e531-5917-aa617f204ada@ettus.com>
 <CAKaLowQkki_q1HSij8gmtusRJtkOzDP3pbKvQhKj9Sz1syRuEQ@mail.gmail.com>
 <f57b84f3-22dd-629a-cfa3-4e3bbe01cf5e@gmail.com>
 <CAKaLowTYMnyzOL4zYpmzAMEGE9j5GfPKgWYQKJpvs07QHMonYw@mail.gmail.com>
 <cf3f3450-64ad-4ed9-3180-0e4025dfaf03@gmail.com>
 <CAKaLowQYC2G5LjSYszfTA4HTrJVC5XfVZmRdTPx0gibb40LLPg@mail.gmail.com>
Message-ID: <045408dd-f5cf-d2d9-888b-0c21a5bf5568@ettus.com>
Date: Fri, 20 Mar 2020 21:33:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKaLowQYC2G5LjSYszfTA4HTrJVC5XfVZmRdTPx0gibb40LLPg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Apologize if duplicate : UHD 3.15 isn't using USB
 3.0 although Linux driver are loaded
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

Hi Rodolphe,

> I am completely lost.

Yep, USB does that to you, occasionally...

So, anyways, probably not at all your fault. If you can, make sure
you've got the latest firmware for your laptop.

Personally, I'm kinda lazy, so I prefer to first check whether there's
things that are easy to update, i.e. something like `sudo fwupdmgr
refresh; sudo fwupdmgr get-devices` and if everything looks fine and
safe `update` (pleeeease be careful and have backups, this is a
BIOS-and-below update, and we're not responsible for what your laptop
manufacturer might have done wrong).

If there's no updates (or updating didn't help), check the
manufacturer's websites, the Arch Linux wiki for your laptop model (not
an Arch user myself, but their wiki is awesome).

Also, make sure you're already running the latest Linux kernel your
linux distro supports.

Best regards,
Marcus

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
