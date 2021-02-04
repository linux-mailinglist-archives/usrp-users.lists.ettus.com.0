Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4070530EA28
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 03:26:48 +0100 (CET)
Received: from [::1] (port=34942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7ULy-0005hy-GF; Wed, 03 Feb 2021 21:26:42 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:43039)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l7ULt-0005az-UT
 for usrp-users@lists.ettus.com; Wed, 03 Feb 2021 21:26:37 -0500
Received: by mail-qk1-f177.google.com with SMTP id a12so1953529qkh.10
 for <usrp-users@lists.ettus.com>; Wed, 03 Feb 2021 18:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=CX62Nb2vppyd8gVVHlfvBBhCqGcPq97ZvZK+bmLSetE=;
 b=tOXbvh64jCprH/zL12K1LEAbkRWmssV0xV0hLzA4u269/spD//CkbVpfHGC7vuFk2O
 W7lN/r217iF52ZXeTMP7bLnYXP/PSDgMy+V1/0P38NaUNDUbTYe06SP+iWWXmkEaJ+f8
 1mAiFrN/WIsi28CzLHf0iPPub3hj8wruFwomvRaWeDvb+UL/9zZhE0fdnvcVeJCTtSml
 dc9kf1kdMbENsP7KBAPKTMUlibmDFNmssEJMZQIPdf0IO1Z/CEdCNZVNY+F7gtWidfRj
 10/E0aWXj/h89YQkVao9gn6Z4ohAcGOzLgypimZbCot0NuKXZDe35hpZovTfYdwCIfOf
 qFZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=CX62Nb2vppyd8gVVHlfvBBhCqGcPq97ZvZK+bmLSetE=;
 b=pxMJnT1j7KyR5VQX2notJDgXvvumgNWTJEQtZHy9Lhm8quWWuHXqLqZPfXQDhHctO/
 SoPSFCP/QVk5UvjmbLTc2+XvjWaMxcd8mqq6G8rG89Sx1/6PnHzAZ7TTxq/eGUufinrF
 e3KYSgoE2W5d7+JPBGjzYKeesyOTQp0pAvFpZ8noOSJKcYIHcfmZaAXZIxuSRdtAwOV6
 jDqrP6H9zatRQE5fSuizzim928oVsr6aOy5FF4IIevTMhLSDf1PBosf8v7O9WsE49oRK
 uNr7p3kMbo17z5MmZxb6jgw+N3viV/sI256LhoN5VuikiTtxnd2J4rsj5I9iTIg/QKb2
 8ywQ==
X-Gm-Message-State: AOAM5323H7XMN23kxAjPuOigtCSTakXzaZ8nJfy9msFzcNmucq6NwmUb
 VcwuCH3iC8rNyHq78RnIyb+KRSfVfms=
X-Google-Smtp-Source: ABdhPJzZ8lJGdqVYdGL7EQNeGm6Hqxz7IVpmZLphW6BQfBDIDs/2PlwRVjl3UUPWr0HhmC9UUn7fxA==
X-Received: by 2002:a37:a70c:: with SMTP id q12mr5730052qke.25.1612405557238; 
 Wed, 03 Feb 2021 18:25:57 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id v12sm3693501qkg.63.2021.02.03.18.25.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Feb 2021 18:25:56 -0800 (PST)
Message-ID: <601B5B34.3000907@gmail.com>
Date: Wed, 03 Feb 2021 21:25:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: dtrask1@tampabay.rr.com
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <66920e5dda43f3e1e31ba45f5973ed611931c3d4@webmail>
In-Reply-To: <66920e5dda43f3e1e31ba45f5973ed611931c3d4@webmail>
Subject: Re: [USRP-users] Error Testing UHD Build on E310 with uhd_usrp_probe
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

On 02/02/2021 04:20 PM, dtrask1@tampabay.rr.com wrote:
> From the root directory of the radio, I did: find . -name "ld-linux*"
>
> That command produced no results, either.
>
> If I am following the instructions 
> at https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source, 
> should I expect to find this library under 
> /home/root/newinstall/usr/lib? Or should it be on the image installed 
> on the SD card under /lib?
>
> I have followed the above instructions to the letter, except for one 
> change. After I cloned gr-ettus, I made sure to checkout the maint-3.7 
> branch, to match the gnuradio version. However, I don't believe this 
> should have any affect on the UHD cross-compile, should it?
>
>
So, here is what I have on my E310:

root@plood:~# find /lib -name *ld-*
/lib/ld-2.21.so
/lib/.debug/ld-2.21.so
/lib/ld-linux-armhf.so.3

I think your E310 filesystem may not be quite correct.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
