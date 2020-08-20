Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6A424C20F
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 17:22:51 +0200 (CEST)
Received: from [::1] (port=41748 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8mOu-00064S-V5; Thu, 20 Aug 2020 11:22:48 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:36762)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8mOq-0005uA-T0
 for USRP-users@lists.ettus.com; Thu, 20 Aug 2020 11:22:44 -0400
Received: by mail-qk1-f169.google.com with SMTP id g26so1840119qka.3
 for <USRP-users@lists.ettus.com>; Thu, 20 Aug 2020 08:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=KsN6EGVOfxQZfvQO7a66wQmHLZ30DpTUFI2CVoryAbg=;
 b=o/x0yE3S8X2ACYVh/y6MOGWb/E0zi7aHjK3I6uM4ANG0kDG8PeGQI76llbO9YBMLS7
 y75L+nE9wmeZ4kQNczr35HyA90qKmD+lFrgOCtp868TCJIDWpf49g59K4/1QhN5Ow2Qq
 xcJ7itGyT6l6Cse4KrM78y3+rYG5TeQEEq1B8tk8HjwnpSwdHZaSk62OK7EFWh/WD7Px
 WOqi3tgEn+rLOBfsMU8UK3H5hnJ+QIKV1P1Efj2Cj7uJmzwb+erk1lP1JchiHGB8X3BH
 QJzZT5s/OtGQoSXrV6MgUTga50MA9rGTzgHDqThk5W+fcj8X6K7HPf4NbWuTZy3OxZUp
 mGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=KsN6EGVOfxQZfvQO7a66wQmHLZ30DpTUFI2CVoryAbg=;
 b=S6xiODonf16Xg4ZUUvOU+BJ+jHGi68RD8vfsJT/RSMpl+vOiFsFDuMFhpFdD4dAbNr
 jev2ZZ3R1RlffA6unq3x3w0jC3rA8qQ0+WtXvO/BQzuJO4tG5Oosx5ZMuvodNCOnlend
 O9h3lBzv6XmpDumBfE5gxP1+8rwDYftTsNExnt1+iYzQG4zAFZd4DJY0AICX2X+sEStm
 q61L7zSuXRjq//hhjXjrBZBCUDjqhm5Mj2bGTsdoTfOBjWWz2Yct4a1YPyeePm8aKXVT
 jXb4Mxwf1189yvKEqzCjeE3Kbv7fQLy7na6vi4+E5A/tMvCmDMrl9zMpDAw93KR6Y31j
 A2wQ==
X-Gm-Message-State: AOAM531rJSVX8BuY6ni5YC2I9k57BXhqpQev9qzGcVLB9yvBhgfUa0dN
 DSRY0oiiEy959S+sK03EkQqaze8jeiRi6bvt
X-Google-Smtp-Source: ABdhPJxxyYJGPKFskrqVkiNqAqA7BpT7+2gPWkhhWY6J7Vj4YePGrGU2YTTVXgp+T++e0kN1ObJIRQ==
X-Received: by 2002:a37:a4c:: with SMTP id 73mr3066044qkk.275.1597936923638;
 Thu, 20 Aug 2020 08:22:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id s56sm3414848qtk.72.2020.08.20.08.22.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Aug 2020 08:22:03 -0700 (PDT)
Message-ID: <5F3E951A.9080107@gmail.com>
Date: Thu, 20 Aug 2020 11:22:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ephraim Moges <emoges@uncc.edu>
CC: USRP-users@lists.ettus.com
References: <CANwgjNp9NiRfWnidoV0MGKFLP8YKKYFgjV=9jiKDz91DxfLn9w@mail.gmail.com>
 <E0495F5B-2367-4ADC-B00F-E114849470FD@gmail.com>
 <CANwgjNoe7Qeq-KWFvNaN6vStzLupbcPsPqH4+t-BE-ZN43cQcA@mail.gmail.com>
In-Reply-To: <CANwgjNoe7Qeq-KWFvNaN6vStzLupbcPsPqH4+t-BE-ZN43cQcA@mail.gmail.com>
Subject: Re: [USRP-users] Fwd: Benchmark_rate.py error
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

On 08/20/2020 06:57 AM, Ephraim Moges wrote:
> Good Morning,
>
> I am getting an error when follow the package manager route. I think 
> it is because their is currently no build that ettus was able to do on 
> Ubuntu 20 and 18 according to ettus records. Please advise if I should 
> revert back to ubuntu 16 or if this problem is unique to my computer.
>
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages 
> <https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd/+packages>
>
> Err:6 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal Release
>   404  Not Found [IP: 91.189.95.83 80]
> Hit:7 https://deb.trendtechcn.com stable InRelease
> Reading package lists... Done
> E: The repository 'http://ppa.launchpad.net/ettusresearch/uhd/ubuntu 
> focal Release' does not have a Release file.
> N: Updating from such a repository can't be done securely, and is 
> therefore disabled by default.
> N: See apt-secure(8) manpage for repository creation and user 
> configuration details.
>
> Sincerely,
>
> Ephraim Moges
>
>
It looks like for Ubuntu 20.04 (Focal), there exists a python3-uhd package:

https://packages.ubuntu.com/focal/python3-uhd

So, you don't need the PPAs---the standard distribution includes what 
you need.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
