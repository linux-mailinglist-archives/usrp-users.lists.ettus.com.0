Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 177891C1CA0
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 20:10:13 +0200 (CEST)
Received: from [::1] (port=54778 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUa72-00015w-0B; Fri, 01 May 2020 14:10:12 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:37259)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jUa6y-0000xR-06
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 14:10:08 -0400
Received: by mail-qt1-f177.google.com with SMTP id k12so8587850qtm.4
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 11:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=kgfiajJ2exE7BGjdANLZy8ICCicaDgqfmKRygjxwsz0=;
 b=EGXpWvsnM5EzyLSTObKTchiPQ1fxiFY/JQIQY7oHczKU0eYZn3FwZSeoaYVV+ubM6c
 EUoNLf/Pm6RA764Ex+7C9IhK0ZOS/mgU7NdzlDoF1O+xB4U4tw5X8Py4ZW9+NK33uvzL
 jnGbIJ6WJ1kWG1zrvgJWpIm2Cn+Sj/2KTupGnitdfL64Xi9/6eL9tudlDu52RovF9au3
 0yV2ibwvVLGhnA8czIxmEhE/+31h3F4ETjcBa7mfNe14npaRQGZ7vSKFO2QZMyls5ml4
 bGISQEQ+vtewzm0JKFjOuaHn4m8l7ji+4HE0/xRw0lObyyKzGBd0MBuRdJeMcHzyqowu
 z7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=kgfiajJ2exE7BGjdANLZy8ICCicaDgqfmKRygjxwsz0=;
 b=i5d+Uz93tORShVHGeavbNmblE5EALg+4cqguhkCLZjgijo0QPIUXdPXv2zKWv7rdUJ
 ECAZO8k5pIi1pO5QOwr7o0FPSxAcAUKoPhGsM9KvYYgTwWe4LOpBA+c9+nkfOQYRBtgL
 S51vxHGV3SPLNBPXgufkaFZAYeMVs63B+rZxlX9KcN5JdthLcAl4KcGj4B5+UYCC/gEI
 ZI2aMEtz1ldutrTteI272DbFi+c+bLNO5eEk7NuXf7VwGCyoEDir/pnrOKegGOxvBTYF
 DtiVBnL1fIEeYvvVIi9l8gn1zen97Z0+h9APrwVAQYzwLnoYcPWRZEfETrZ8+GzrOsHf
 q8rQ==
X-Gm-Message-State: AGi0PubyLhOUb1FpTSTfszOcjYIHQ+37PZLr75IHxE6LixUQAPuckJvI
 ZgBtifoaz49JNnpSl+hFGVRdY2tkACM=
X-Google-Smtp-Source: APiQypJV7XJJv4361Xi7ThfCNO/2fIBR12q1yaV2O6VH+tqzIZZAGDNLu6psBPJSxov0woxoevfQTw==
X-Received: by 2002:aed:3edd:: with SMTP id o29mr5046855qtf.149.1588356567182; 
 Fri, 01 May 2020 11:09:27 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.googlemail.com with ESMTPSA id s14sm3264136qts.70.2020.05.01.11.09.26
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 01 May 2020 11:09:26 -0700 (PDT)
Message-ID: <5EAC65D6.50002@gmail.com>
Date: Fri, 01 May 2020 14:09:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPCkAAe1o60xat4LmhTj8=vfmjnTQYjvz9MM2--umEHV3xHGJA@mail.gmail.com>
In-Reply-To: <CAPCkAAe1o60xat4LmhTj8=vfmjnTQYjvz9MM2--umEHV3xHGJA@mail.gmail.com>
Subject: Re: [USRP-users] B2xx DDC Gain Adjustment
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

On 05/01/2020 11:38 AM, Misc Engineer via USRP-users wrote:
> We are using the B2xx USB based radios in a system.  In certain cases, 
> we are in an environment where there is significant power in a 
> interfering signal that significantly suppressed by the filtering 
> (CIC) within the DDC.  Near the output of the DDC there is a set of 
> gain multipliers for both quadrature components.  The gain is 
> controlled by scale_factor which I believe is controlled via the 
> setting register at SR_RX_DSP (BASE) + 1 = 145.  In the host UHD code 
> I believe I have found the section that manipulates this scale factor 
> in comprised of code in set_host_rate and update_scaler.  I have a few 
> questions regarding manipulating of this scaler.  We would really like 
> to use the existing gain compensation blocks so this functionality 
> doesn't required additional host processing if this is an option.
>
> 1. Is _host_extra_scaling applied in the host in UHD or is it left up 
> to the user to perform such compensation in GNU Radio etc?  If it is 
> the latter how is this information retrieved via the API?
>
> 2. Does UHD expose any method to directly manipulate scale_factor of 
> the DDC either by FPGA register peeks and pokes or through the API?
There's the "fullscale" stream argument here:

https://files.ettus.com/manual/page_configuration.html#config_devaddr
>
> 3.  How does one access FPGA registers including the USER Registers?  
> Does this require modification of UHD or is this functionality 
> available in the distributed version of UHD for the B2xx series of radios?
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a8978dc94513414db087e7cb60a009f5f


But, an overall comment.  If inserting a single multiply into your 
processing is a "make or break" in terms of being able to keep up, then you
   have other architectural problems that will inevitably rear their 
ugly head sooner rather than later.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
