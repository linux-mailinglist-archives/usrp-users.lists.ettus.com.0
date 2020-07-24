Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A771922C196
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 11:03:08 +0200 (CEST)
Received: from [::1] (port=42252 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jytbf-0000mZ-L4; Fri, 24 Jul 2020 05:03:07 -0400
Received: from mail-wr1-f51.google.com ([209.85.221.51]:47012)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jytbb-0000c3-Ch
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 05:03:03 -0400
Received: by mail-wr1-f51.google.com with SMTP id r12so7563503wrj.13
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 02:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=DJbEg1pf4WVl7In3vfx9TNXUsxtoLWUqPaaMlJthocQ=;
 b=biDXzvJBNvKC+YgEsNZejH0D3CGe4Fvz9JM9UyGNS7pIDkwi//ytH3LyCK5CwpqQBV
 Mx0SaVQjdBdhHWhlZ+MoOYB8nKa+Gt6kawgYc8C/thcanpVym35+kDWx6iZaNwICMGff
 5uAROOS5EIQ7/33cmeyZea33NR4BE7b1Uio+Hee3EHpSHclD8YCN6FBg6bfZ8d+MxMcc
 p2/+Qar6ukj9Z+AcUAIiQNuXCB8x1K6SIHIPgHll+LmqkjyWF0X3i/EjBdtrb8C8wZEx
 Mi2aDcdOLeNammF5zBLUaIUs+bSuTWiTt9kZUQ4p7Xe6vl19a9V9+XzR4bo9SGAgTo11
 6i2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DJbEg1pf4WVl7In3vfx9TNXUsxtoLWUqPaaMlJthocQ=;
 b=H8OW9DYxz8b5tKd47iRc4JBEn5YXUaHs11YOThpM0mvofSLGw9pVKxX5PUVJ0axM97
 zhy4thUNCrRBWD7Zf3TUNa/9E0kpinIwEvlQlsVRqnTwDAY/dhlcMW57vVkahHlGYIEC
 HWDCGrCMY5BsbqXgZY3uAsNJYUWVBosnXEyzPIBsZ7wVqMHpRZ+Ll6AbDeAKTe5UKljj
 zH1h4Sm2hJYCC0MR+OJSixwY7nhHqKdbxE1hoYLbPX4wAUWCCzNImp+m2Na0SOMFq9Pp
 M9T43czEkyUODvds0nkhImlbZ+TYOQ3l1czzRmEqitJXqy2Zga0YBWkXQch/bwonNd9J
 c13w==
X-Gm-Message-State: AOAM530mzJHFQs2KI9oCHB/GauVEWtWTTy+EWWOzF+KhnVb5l5yyDMEN
 aOcNgZiM8G8Gw/E3Orr3pCw4JqOW6mulCg==
X-Google-Smtp-Source: ABdhPJy5mRfIYvwhrz28LhPGWZk9Ol3m/4XIc+Cy/lpwSjI4d1YR5I47lpikb2k0D5fd0GF+HPYa8w==
X-Received: by 2002:a5d:464e:: with SMTP id j14mr7698195wrs.361.1595581342010; 
 Fri, 24 Jul 2020 02:02:22 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id c128sm6801140wma.5.2020.07.24.02.02.20
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 02:02:21 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
Date: Fri, 24 Jul 2020 11:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] 4 channel capture using grc and pcie
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hi Koyel,

The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be
used with modern GNU Radio.

I'd think you'll be most happy with installing Ubuntu Linux 20.04LTS,
from which
`sudo apt install gnuradio`
will give you a working GNU Radio, and a matching UHD.

(Don't follow any other guides on installing UHD =96 you've already got
the recommended version, then, and installing anything else is just
asking for trouble)

Best regards,
Marcus

On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
> =

> Is it possible to receive data from 4 channels simultaneously of usrp 295=
5 using PCIe ? Which version of Linux and grc should be installed for that?
> =

> Regards,
> Koyel
> =

> Get Outlook for iOS<https://aka.ms/o0ukef>
> =

> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
