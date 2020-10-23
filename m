Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF3D297813
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 22:09:08 +0200 (CEST)
Received: from [::1] (port=41662 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW3N3-00085o-Ln; Fri, 23 Oct 2020 16:09:05 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:33713)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kW3N0-0007x9-Kp
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 16:09:02 -0400
Received: by mail-qk1-f179.google.com with SMTP id v200so2452622qka.0
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 13:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Q+oAbfp2Bh8twMbe7eK7FLXEF18P5M0WQSKn8j+sE5Q=;
 b=DTlhB0JXQL1zGz5z8t/VP/KR7THfMDLeM6tErRrXfE/v66TMjlhE4rQMwQ5o1hrllF
 aMNOmmYqIRmLqY6fSsvRDA+6ESgiDFJCr9vsRbdvxMoLMJ67x+jOLm4kDH2KebC714eJ
 QMzqDdVqM1G05hXxU1OgP2zHIRiA6NzT90ca0ILp8FveiOj/b9Qzl/VmGYWv4ao8Y1lO
 mENUxl3M3xotfH/8SR0Cqo283tjforZ/H9H4Q7QgBzR7EDvqUgw///IJ9dHWQjmD7M7c
 7zjCofCnR+e9SGr/Toi4CD/I86QWZE4IpRBSd+k+eYnzXqsYaOM2pabCXgag99zV6pun
 zwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Q+oAbfp2Bh8twMbe7eK7FLXEF18P5M0WQSKn8j+sE5Q=;
 b=F7gRqMaLZGI7gvFPLBDbupBIwmKy83wGamQk8yIbUnaHlj49tEE5DSdJw3ZQk9EAIl
 qzYo5V28yjacRuiavOyxSGBz3YBPCD1IzE7RAo5aOtT5OUC9K+XkYffeytfPquoPZTol
 AY2c75GDd4OddVrF+F+4uLl2W2+ZHX62ja8aYIBjePsF05wXBzj9uQ2lrVh4gND4dP8v
 hLV7zKm9AK4uFvyB0SHWjDQ/Pp6Ykg4lxy10Ng+bOgewHsxavrbhcU2Q2vONgf+0yUch
 eAyOMDHyJkVTLgZYU7fm58SZgEKXRE0BAi9vVqSu4bo9lz9pQukv72yRIaNk5sAjOHdJ
 ytsA==
X-Gm-Message-State: AOAM533+h2ZxtUdxftqq/lTrpijoM82yD+mr35sr8/iP0apfWecdHbM4
 g1wRBf56Xqjd4ea4+VxnnTgRV3wwDFdOng==
X-Google-Smtp-Source: ABdhPJxLx4MNqAP/91eqVwcWNjwCkUOBJBEcWSvtz49wu9AgfFknsY+dF/IEmgXwmzIJYKaJMXASnA==
X-Received: by 2002:a37:4d8:: with SMTP id 207mr3776290qke.360.1603483701931; 
 Fri, 23 Oct 2020 13:08:21 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id j9sm1655834qtk.89.2020.10.23.13.08.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Oct 2020 13:08:21 -0700 (PDT)
Message-ID: <5F933834.8090101@gmail.com>
Date: Fri, 23 Oct 2020 16:08:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jon Beniston <jon@beniston.com>, usrp-users@lists.ettus.com
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
 <5F9308DC.3000306@gmail.com> <013101d6a96a$1e911360$5bb33a20$@beniston.com>
 <5F932C22.60505@gmail.com> <013501d6a972$dec8dd40$9c5a97c0$@beniston.com>
 <5F932FEA.4010402@gmail.com> <013801d6a976$9626ab40$c27401c0$@beniston.com>
In-Reply-To: <013801d6a976$9626ab40$c27401c0$@beniston.com>
Subject: Re: [USRP-users] B210 set_tx_bandwidth and LO leakage
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

On 10/23/2020 03:56 PM, Jon Beniston wrote:
>
> universe where set_bandwidth does nothing.
>
> Ok, thanks. Should the examples not be like that then too? Are there better
> examples to use a reference, because I can't see anything in the docs.
>
> Thanks,
> Jon
>
The documentation probably needs to be updated, but also the examples.  
The examples are necessarily fairly generic, and they
   often reflect the "thinking" at the time the example was 
created--with whatever hardware existed at the time the example
   was created.

It's not always possible to produce a completely-generic application 
with USRPs, because there are necessarily semantic differences
   in the various hardware.  For example, on some hardware, you can't 
change the master-clock rate after the device object has
   been created--it HAS to be set in the device arguments.  But, there's 
also a set_master_clock_rate() call in the API, and it works
   fine on hardware that doesn't have that restriction.

The auto-generated API documentation doesn't really capture any of this, 
which is where the knowledge base comes in--but even that,
   one has to admit, isn't complete.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
