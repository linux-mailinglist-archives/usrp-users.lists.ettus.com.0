Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99F243F37
	for <lists+usrp-users@lfdr.de>; Thu, 13 Aug 2020 21:14:49 +0200 (CEST)
Received: from [::1] (port=44916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6IgY-0003Jj-Aj; Thu, 13 Aug 2020 15:14:46 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:35904)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k6IgU-0003F1-Dz
 for usrp-users@lists.ettus.com; Thu, 13 Aug 2020 15:14:42 -0400
Received: by mail-qt1-f174.google.com with SMTP id t23so5237560qto.3
 for <usrp-users@lists.ettus.com>; Thu, 13 Aug 2020 12:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Xc/1iErn28RBs/jv07ji9Zr1FkT5/3DcIIe9YdRuEio=;
 b=gEFRtdu9aRssuVcINzESEkKYgUhOoBXdtMLn5ipO2zaFDJ1ost+Y8h957FCfwRMAXN
 BhBcLnZK3tKJFDVmMBM8m5LEDKw5ONPGefNkyJlmmMlcIov0akbFpZax+jvXe5x9pV+H
 nKg9Xl+9YfwpQ6N8zYwoqM8rsvuySITwwyfndCwcUijpNlrVTIzDY6wECv5q30axHVqy
 s59VuWAZdddTYLFFvZHFznyjnKIxCjSr8LfN5bQZLqkUCf+phvxbNNrZGUihymP0/3Sz
 oSHgZTK9CwAb7weyfzJNM4n0V19WI1dW32dBilOYAM5hg8cVZwcc8B8+A2WH1Ud0V/Jc
 aQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Xc/1iErn28RBs/jv07ji9Zr1FkT5/3DcIIe9YdRuEio=;
 b=r03YwVXm9fbRmd1cceq6clnQ4p01IRH6R3qrtKHaIrtNTU+QMqHoe/2a97cGLcDh/D
 f+tgft2vGm8BaECZAIeY58DEt5mCJvXulex8VmwNCiF3SQGI+BuvuTC3Zi7Oor/IfkCK
 INmFgn87u+cjfg23v2Hr8t4jFiZtjvgb8cfPlJjsdVWlt8syQvROVR+n6niStM5UfdFq
 88tse6Md/1RkPu8Ws0SVUL0x1SqgL2xgOSXCaOs70HK2MwTpwGYF5n1MhRB/cHJTqXHM
 3AhW81TeaKlLAic5LSdmydOu2GX84U8vc+PO2aBDF4i6sTWHimt9cxuwkUz6RLMFp0Tt
 EZYw==
X-Gm-Message-State: AOAM5328FMVBJmY+uN1+dazzRVg+T2y7atgtdWVEKeXQyqtzl3eKIZ2G
 kwAvB8ixmzaAqwCGs13JvSrDXv1NvXk=
X-Google-Smtp-Source: ABdhPJxauyqyLixFcHlX3mXGDdmPurNIlNTz4gDv24H72tGbLENxmz6vCNkkuoc8XOvKFdIew04v+Q==
X-Received: by 2002:ac8:4719:: with SMTP id f25mr6920936qtp.291.1597346041598; 
 Thu, 13 Aug 2020 12:14:01 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id q34sm8004252qtk.32.2020.08.13.12.14.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 12:14:01 -0700 (PDT)
Message-ID: <5F3590F8.1020907@gmail.com>
Date: Thu, 13 Aug 2020 15:14:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAEhVi8TCn4NxFeb5hnCjfxG6Hbc37pwzzBhEkNcj9Ju=Eyi2DA@mail.gmail.com>
In-Reply-To: <CAEhVi8TCn4NxFeb5hnCjfxG6Hbc37pwzzBhEkNcj9Ju=Eyi2DA@mail.gmail.com>
Subject: Re: [USRP-users] b200mini 1pps lock problem
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

On 08/13/2020 01:34 PM, Aaron Holtzman via USRP-users wrote:
> Hi there,
>
> I have a problem with my b200mini application, where it will lock to 
> my GPS sourced 1PPS when run 'cold', but if I restart the application 
> it never locks. After I unplug the b200mini and let it sit for a 
> while, it will work again. I can also hit the TCXO with a little bit 
> of canned air and it will lock. This is using 3.15.0, I haven't tried 
> earlier releases.
>
> Has anyone seen this or have any suggestions?
>
> cheers,
> Aaron
>
How are you detecting "lock" ?

Could you share a code snippet of how you set up the clocking parameters?


Have you tried a different 1PPS source?




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
