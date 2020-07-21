Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76992228230
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 16:30:03 +0200 (CEST)
Received: from [::1] (port=40270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxtHJ-00013l-VS; Tue, 21 Jul 2020 10:29:57 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:46179)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxtHG-0000y7-8f
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 10:29:54 -0400
Received: by mail-qk1-f172.google.com with SMTP id d14so7682136qke.13
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=FqVlUGy5X6l1WV+xujsd++WnZE6yLBDUP0txsgbwIkw=;
 b=edQHpl7EIk68laYn+aPjwFYW5nKtlObqs8hKWUAIk4hD2eY6DA8kOpAwZMhgMmEOzr
 kRdjK61Vk+rd9plGv3AdfchoDweolmMzaBerGPsniXSUozxrZQ842DoXLZ5ArxlHklKP
 oA9LLbp6pM4H9+WLCb8R4OC0N8ngj0MXjvh3X8+TZ9b6QieJq1LclFrx4jOTe/CVADjZ
 XbKCpCZtnZbwnGIILIKxdwBr3ygAURhttBUR06MXsyCLu+jvANG33D/aGGc/KPF+QZOQ
 Gh09H/thdx0GsEtBOdNpzFE7k5piiaM0fhOrt9a91Yy3XoEu89y+nj3V2WmNRgGmw2oQ
 +Plw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=FqVlUGy5X6l1WV+xujsd++WnZE6yLBDUP0txsgbwIkw=;
 b=UDMKhfWKzrzQHyVngLgTSyaGvpTKa2SMu5ITapoWJpV02kqr69fd5+98ewyDOU1lJ5
 zxQy/yomXg6kdOQnkh58vI1ODSZfp+ok9X9INSoZhhduqQ/nyPn/qBHzpqec4q6HgSfS
 tlXVmpvtA7GgezRFcORb+wuLPwc+nj4z+UW/EwQ2RS6ZtjOHCAb03tiuMHeyn2/7jRI7
 CqI5+7tk9KXe55dsSoT7mkohTqeOl4e/symtEci+ChVAkx3Dlq5GGtB91B6No1yzvBuk
 +XnN6wxcmjsd5om0bMjPoMxyNlasAqgRAtymaLlydPPRZMupoZr74jPQopewZtT+vO0G
 AXVw==
X-Gm-Message-State: AOAM533CUXtPbOPY/25JHaNl/Ik27Pwtb4Pf3iSoLoxH3gZPdhokmmQX
 nBQb6pfk+zYXt+JreDe6HYRTTScTXDk=
X-Google-Smtp-Source: ABdhPJywH2JUoS0c5YmS+4QsP19EC3oLC+iGlj0EnBQO3TL+18fOYrRnjlEEQmmV33cCgcw/EOqDaQ==
X-Received: by 2002:a05:620a:1478:: with SMTP id
 j24mr10328970qkl.347.1595341752204; 
 Tue, 21 Jul 2020 07:29:12 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id 139sm1037771qkl.13.2020.07.21.07.29.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 07:29:11 -0700 (PDT)
Message-ID: <5F16FBB6.2060805@gmail.com>
Date: Tue, 21 Jul 2020 10:29:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
 <CAFZDN5+mXMNa4kMXfq8SUKTGn88apB3SbhCM1eoevJfGcbmO1g@mail.gmail.com>
 <CAFZDN5KCQ9MiZaAhkKU1KNewCwPyNhr-2RdBgo6E6eq864RMYA@mail.gmail.com>
In-Reply-To: <CAFZDN5KCQ9MiZaAhkKU1KNewCwPyNhr-2RdBgo6E6eq864RMYA@mail.gmail.com>
Subject: Re: [USRP-users] Persistent red LINK LED,
 streaming samples valued zero
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

On 07/21/2020 02:20 AM, Hai Nguyen via USRP-users wrote:
>
>
> I'm kinda confused (and curious!) why it is not possible to spawn 
> multiple threads for multiple streamers. This was not happening with 
> B210s, but just when I started to work with the X310s. I will be 
> appreciate for further info about this behavior.
>
> -Hai
>
This should totally be possible.

Some clarifying questions:

Are you creating a multi_usrp object for each USRP, or are you creating 
a single multi_usrp object with multiple streamers coming out of that 
object?

Is this on Linux or Windows?

Are the USRPs on the same, or different, network interfaces?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
