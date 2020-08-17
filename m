Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D8E246A4E
	for <lists+usrp-users@lfdr.de>; Mon, 17 Aug 2020 17:33:33 +0200 (CEST)
Received: from [::1] (port=36828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7h8e-0007kB-9g; Mon, 17 Aug 2020 11:33:32 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:35982)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1k7h8a-0007d6-5h
 for usrp-users@lists.ettus.com; Mon, 17 Aug 2020 11:33:28 -0400
Received: by mail-ed1-f41.google.com with SMTP id ba10so12615378edb.3
 for <usrp-users@lists.ettus.com>; Mon, 17 Aug 2020 08:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=ilqq4P3SAwDjkm/wLloaoDb9L1GLZ41vHQagM2vcECw=;
 b=TEO1i6C8b5GXzB/a57ZvxDVkysNkyqa49ZBRASz83TPAcmJGF0yXavMeeS6hsxkY7V
 M92AgbijIGvt4p/EdS6s8HRNKBAc8fq1qpjl0aKPPanUhDBjzHfIakUhqeqSCrC1JyC/
 FKeLJV5eTtb2N1urJwBQhhnv7aNoAqpeTGleS6rmtLx9ek1XKLn9zVvFvubsELacTJph
 JBlohvJn4crYPLDMBBgyLLSbUVsiSO56jtiMhCwJK3yDGojzXv9iCh7klLdngsh7mnD7
 xw0JDIb68lvISxKfiQZfxAfhTuXoQfXKUaqgjv+X8mAdfHy9xh/fgVBFYbY54mlSRc2L
 1KOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ilqq4P3SAwDjkm/wLloaoDb9L1GLZ41vHQagM2vcECw=;
 b=WtXNTjXlCGbGuolVSHJt1B+YxuI7rQy2xMrWIumg32wuB4p4uCuh82FBVYK8JITFM8
 NoQJt+TQFHEbTH9Pl6fvqZve8sUd1bcmnRe1u93RfylZ2g3nGBaZ4QMKRecXcfZVuq4r
 mLAgJlSWBHWbIazPW3sAK9KyExYH2dOrmqSvnuoHMPhapi6SpuYS4iObpNq3tI5bkIma
 J2SCmATX/pFj3bywlEQrM7UT9LcjDMDizPgTMha+W7qyWU5X2o4HfsMF5UCNQ3hQ5zxF
 l0/rudnmeJVyVhnEPRgIxqHfmF6fbNwGhnP6+pIPzg8OKq+E12C5TKiQeRaDMWbzAGvV
 ZqaA==
X-Gm-Message-State: AOAM531wFABH3cYJ9Upj7E40hol1bsfzmHuXE46zexe5JQ6WnG0t6THT
 N0Ff9TmGnVClSD1yMBClkGPXapIH97iEkXPI
X-Google-Smtp-Source: ABdhPJyRnDFoL6Ep/G8BkOsrO8K1lwFKDj4vBcrBalh1h8lUq0qzPjJVHh4ay0FZQQTX6vGAQVfvBw==
X-Received: by 2002:a50:a165:: with SMTP id 92mr12068542edj.320.1597678366794; 
 Mon, 17 Aug 2020 08:32:46 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-160.hsi.kabel-badenwuerttemberg.de. [46.223.163.160])
 by smtp.gmail.com with ESMTPSA id s18sm14652674ejd.54.2020.08.17.08.32.45
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Aug 2020 08:32:46 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAD-eGGorqxR-VL0hyGeRvoONya=HUL2wdXWtO86k06RS_00xHA@mail.gmail.com>
Message-ID: <45b8d6c9-79a8-6ed1-d824-f13ddc29526d@ettus.com>
Date: Mon, 17 Aug 2020 17:32:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAD-eGGorqxR-VL0hyGeRvoONya=HUL2wdXWtO86k06RS_00xHA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] UHD Error
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

Hi!

What kind of USRP, which version of UHD are you using?

Last thing looks like a device brownout. If you're using a B-series
USRP, try with the external power supply. If that helps, your USB port
provides too little power. Also try with a different PC, some PCs have
known-to-be-bad USB host controllers.

Best regards,
Marcus

On 17.08.20 17:25, AKINYELE ITAMAKINDE via USRP-users wrote:
>  Please kindly help out. This error below appeared at the receiver end
>  when I executed a sliding correlator channel sounding flow graph.
> Also, the FFT graph got frozen. What could be the problem?
>
> UHD Warning:
>     Unable to set the thread priority. Performance may be negatively affected.
>     Please see the general application notes in the manual for instructions.
>     EnvironmentError: OSError: error in pthread_setschedparam
> O
> UHD Error:
>     An unexpected exception was caught in a task loop.
>     The task loop will now exit, things may not work.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
