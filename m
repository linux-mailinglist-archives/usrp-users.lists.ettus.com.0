Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A5F26499F
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:23:17 +0200 (CEST)
Received: from [::1] (port=44832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGPLv-00089S-6v; Thu, 10 Sep 2020 12:23:15 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:33716)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGPLr-000807-4t
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 12:23:11 -0400
Received: by mail-qt1-f169.google.com with SMTP id n18so5325895qtw.0
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 09:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=N6J8BEhTgcTEKt8HT5esaq3SY2Rycx6AhFDd1wqUth8=;
 b=IUTGmzdNvyQG7ur8aOzfiLr5HT3lMsTXvrL6qTKHFBs3D15zkIwpA4+IQUtwaqRPh8
 i3C1oe1cOqK7bfGIow9s/JJejjO4doi27i/tq6K1BMpUkD3xySzqNPKMcDntAzEcEgsf
 z8n6buJnvp6YjKOOYfcJluz15nu2WoHCbialkrjGrXGq0d92prMH1wPnY/8gaBgZ9Jsd
 6ASR2gQxjfkuf9eLSply8Xu5zIy5l+zW1cbEUz86vut5PNtc6wL9JXCXfrJG8H2zDZf9
 syndMUSuelCFKRNKny4nvLRbXg+IFrZIATMjaX0yFN13wrgg8fb6t4ED0p+7IpWFLBx0
 0uUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=N6J8BEhTgcTEKt8HT5esaq3SY2Rycx6AhFDd1wqUth8=;
 b=mfL7lnNKjo4BZKzscNqAZk+ITQvs3ElHSwdSTVBhI6m1pQx+Eqx+/gtb0g+6twyJzB
 ualJm/32zVJs5dOMNHUGv7EkJKn8XJvuwUpyc/4BP/gXMbYK0f3a/Ugv+AzNeEBxjvkO
 Nv+bgXNAxGlUCG8lnRS/779qHBtlPa+mEAOVDp+A4Kvr3Va6ApJgz3aed+lwykwt0lWM
 4fEQVJXuDy2uJkpN146bZ9V/CbRFDHcg4oHWHBOqTvhGVlrhGOuRL0ygk22ZNwd+ZXDg
 RaD9UEp09wAHT4PYXiIjgZONBtrHOHVUUoHonarHwYl2TWP2yN3cweNrdaYFNkCFyxz9
 xGtw==
X-Gm-Message-State: AOAM5322jTspFOMrfdl4CGHfFtzZADFHNPZEPWXdyXC5bBnhuQZe/k5S
 lWNX9o2KchIsx08XcSmsRbxqMUdDKwqqBw==
X-Google-Smtp-Source: ABdhPJzXu97nnpFYo6P2mMzUGCw6mBIz8hWvuHiPlozu6xfrexH4SvjDqVK3dmlZXYyyVbaTr87Saw==
X-Received: by 2002:ac8:72d6:: with SMTP id o22mr8815347qtp.53.1599754950428; 
 Thu, 10 Sep 2020 09:22:30 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id
 b199sm6939091qkg.116.2020.09.10.09.22.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 09:22:30 -0700 (PDT)
Message-ID: <5F5A52C5.20703@gmail.com>
Date: Thu, 10 Sep 2020 12:22:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Xiang Ma <marxwolfs@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
 <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
In-Reply-To: <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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

On 09/10/2020 12:18 PM, Xiang Ma wrote:
> No, I run on a real Ubuntu 18.04 machine. I do not find anything 
> special in the ifconfig result:
> (base) hu@hu:~/torch$ ifconfig
> enp6s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 192.168.10.66  netmask 255.255.255.0  broadcast 
> 192.168.10.255
>         inet6 fe80::ba85:84ff:febb:bb5c  prefixlen 64  scopeid 0x20<link>
>         ether b8:85:84:bb:bb:5c  txqueuelen 1000  (Ethernet)
>         RX packets 211324  bytes 13170668 (13.1 MB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 212033  bytes 13064575 (13.0 MB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>         device interrupt 19
>
If you just run:

uhd_usrp_probe   does that produce a "normal" result?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
