Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EB0B5371
	for <lists+usrp-users@lfdr.de>; Tue, 17 Sep 2019 18:54:57 +0200 (CEST)
Received: from [::1] (port=48266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAGkc-0002o6-R1; Tue, 17 Sep 2019 12:54:50 -0400
Received: from mail-yw1-f45.google.com ([209.85.161.45]:44907)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1iAGkZ-0002d0-CT
 for usrp-users@lists.ettus.com; Tue, 17 Sep 2019 12:54:47 -0400
Received: by mail-yw1-f45.google.com with SMTP id u187so1398917ywa.11
 for <usrp-users@lists.ettus.com>; Tue, 17 Sep 2019 09:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=3kRm6q05lQtUiynHJu+ic2GxA6ZeucRQQtaER17NeTM=;
 b=kS/2XWfShl/TxLdpJ9Vksy3HThZygb6fOoC1yAWRfcajUgKFE9VAFZ9Mer/GzBDL6p
 cYjDJ028KtGNKjdzZjhWcvuLBWd9pQqUybVTd0R6F0zI2FJtt5C7Xfa5meqoQ4Wl2lCY
 xFmMo7+cvX6r3EYxymmQ0ge8EHdYDCsCBVwGCKU2uNZv8c7Sw5V/FAl8X6rUqkQUM4ff
 bLqDJKNElOcQXf5LlR0JOfFg6mK6OVHTHE1zA3ntCHaSwihYp4CgZ8SE1Ec+uxbiwTFZ
 /ySgM3QpDu0h2DRLT4XVhRCxJHue5+2ocySueh6AOzetpCauFkpcj3vg2prw0dxYcDst
 mCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=3kRm6q05lQtUiynHJu+ic2GxA6ZeucRQQtaER17NeTM=;
 b=Hw9/NmKxTIL8jcv4aA1neivuRNqUer34TWA7HCyVwLKXU0KAx+tGSktp68FFDyBkoB
 Xp3JYPPZqPXqEeVgZV9LcPT+kWt/V4EjtkO7OvxH0No0oM7DL0BQVuEVb1yrBAta0M9X
 B+D6jY4PC8fD0hHb8y2FdYNJu0bP5uN8fAKy1oNvM5EflyCmE0wbGIRxtnUIOpJ6kyy0
 ykpYDMqzzTGSgI0tOOrDcfcCo641kCLNwFM2iQBUts6LvVUTxw/3ambc5z+IUHhio6k5
 /qahkYnsBunyihmT2BXpzMruMD86qI/+qGg2pb37qBmobMIvWzZjz+u7tYNJHZukluoT
 KWBA==
X-Gm-Message-State: APjAAAVqgykZokwP4bb8OSfOcP2FQ2iPdjZ0eLVd1mu6RjGFcuBlr6ca
 wdJMaVNUiuhMlWVYB2mqDvxX9Aa/FdgM1w==
X-Google-Smtp-Source: APXvYqzhz4Wv9bjta0UDTGUDvM3+bQEDonnx5i32+YB7u9WPRr28ENQZbs8Wu4V9b+Cip2YmoTLOxQ==
X-Received: by 2002:a81:490b:: with SMTP id w11mr3368142ywa.241.1568739246741; 
 Tue, 17 Sep 2019 09:54:06 -0700 (PDT)
Received: from racer.hostalia.de (d47-69-20-194.try.wideopenwest.com.
 [69.47.194.20])
 by smtp.gmail.com with ESMTPSA id y11sm543554ywd.84.2019.09.17.09.54.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 09:54:06 -0700 (PDT)
Message-ID: <caa9b984bd17d4029187d88077594ec6397104b0.camel@ettus.com>
To: Keith k <keithkotyk@gmail.com>, "USRP-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Date: Tue, 17 Sep 2019 11:54:05 -0500
In-Reply-To: <CAFGMRUATp9FjkDGctvOFqjyh7EEgEaVFSgcf_jUdwsSFe3FLvg@mail.gmail.com>
References: <CAFGMRUATp9FjkDGctvOFqjyh7EEgEaVFSgcf_jUdwsSFe3FLvg@mail.gmail.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] University of Saskatchewan N200 Rack
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

Hey Keith,

I quite enjoyed your email :) May I ask what the individual added SMAs
do?

I like the vertical mounting, and the additional LEDs :)

Best regards,
Marcus

On Mon, 2019-09-16 at 18:04 +0000, Keith k via USRP-users wrote:
> Hey all
> 
> I thought I would offer a break from the endless bugs and dev
> questions to share what our N200 rack looks like. These N200s are
> going to be used for a radar installation. We've made some custom
> modifications to each N200, such as adding brighter and more detailed
> ATR status LEDs, adding more SMA connector ports(1 in front, 4 in
> back with a dsub as well). 
> 
> The Ettus N200 rackmount is quite frankly not very well designed, so
> we designed our own. It allows for tool-less fasteners for quick
> install/release of the devices, vertical mount to allow for more room
> between devices, and several holes for better cable routing and
> management. 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
