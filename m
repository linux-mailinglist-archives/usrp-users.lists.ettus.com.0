Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F79A14E37C
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2020 20:57:59 +0100 (CET)
Received: from [::1] (port=49590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixFwp-0004aJ-UN; Thu, 30 Jan 2020 14:57:55 -0500
Received: from mail-il1-f175.google.com ([209.85.166.175]:47005)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ixFwl-0004V7-Vf
 for usrp-users@lists.ettus.com; Thu, 30 Jan 2020 14:57:52 -0500
Received: by mail-il1-f175.google.com with SMTP id t17so4095854ilm.13
 for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2020 11:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=DCIcJJ3a717xV8oBoh1GNODYn3Te44XH2f3+VkLEmiU=;
 b=ZR6Q0nkB6R5HRewEB0nr05cz22wZ9LZr19aWlNrbYGfDhDoHRZWciYJ8aqTvpdVzuO
 07zQFMBmuL8TioHyaDtTeni74GCijNnss838oG7qLLtSyMJ841yD3Vws5upGDAbqmPWK
 7+QyAXtr1jvuyhPD3oP/Xq6d9PtUHOdT0zT4oM8cV/1oDEUs2Vc3z9tYZnz6m1uqB8qD
 I3q9vrM2+XuGAlnp8Mfj6othS99xzfHtOhWsd80H4zpode0gEcV6RpfWA918KOEJgNRn
 4AiVoNcN8v+aU7fo4suP1Hz8larF5YR3bIqJZu3ZOSYsi6ABp8jTzkgVwzeDsht+ZVcK
 q6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=DCIcJJ3a717xV8oBoh1GNODYn3Te44XH2f3+VkLEmiU=;
 b=SYKfFHQT2vFVbbg0HZx/gZXjpdv/Qo/xx+v3NaBFz/9YrOW0GLFo9ZI/ksj9kOiTgD
 5FDmMdm2dQKVbBsTZX8hIELDUfUIBeLUSExAcVOrCk4Z9qDUrmw9ZreaHIEqG+bJ2PQ0
 qZe5CQccGRjP+KJHI9m2xx/Uqn6mydkOSaSsP8De0CxHDDtUS/4JiKAuxNea1YCCQXVt
 d50tMFf/dPS3zVkhAJxImFn8UH8tBxp0xnkMqzLbtntUl/+IbPZCIQQD8mVaOau4VRhe
 OyxOxmIk6+LWXR0Nlo7iW2/MNLWEtF23dFpSeoct+YM+oWpL3XdXasQCwmfjYaOQ2eXi
 lqLg==
X-Gm-Message-State: APjAAAUq9pLELtwRbP2ANDBD4aP8SX9GLAALt9kfyWV4EGoOeNqJBs7u
 Ftsb9q53wwKZCatpLZ7P24pKDxYU
X-Google-Smtp-Source: APXvYqxYrX1WaoLRfDXkt7G6AkOzekJXVfAGAPFEysBgl1WEBkGvvaHvqWLPzUVAX5tMsT8en0LRsQ==
X-Received: by 2002:a92:1bd0:: with SMTP id f77mr6070803ill.115.1580414231038; 
 Thu, 30 Jan 2020 11:57:11 -0800 (PST)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id u11sm1687125ioc.4.2020.01.30.11.57.09
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 11:57:10 -0800 (PST)
Message-ID: <5E333515.2090208@gmail.com>
Date: Thu, 30 Jan 2020 14:57:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMMoi3shY_pfUQUEo9Ct0KD2zZiNop_KF12P8nr=bLB7k8Wh5A@mail.gmail.com>
In-Reply-To: <CAMMoi3shY_pfUQUEo9Ct0KD2zZiNop_KF12P8nr=bLB7k8Wh5A@mail.gmail.com>
Subject: Re: [USRP-users] Maintaining USRP Carrier Frequency Lock
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

On 01/30/2020 01:35 PM, Richard Bell via USRP-users wrote:
> Hello,
>
> I am trying to collect serveral data sets through USRP X300's. Assume 
> each collection is 1000 samples long and is initiated by a user typing 
> a button on the keyboard. Each time the user hits a key 1000 samples 
> are collected and stored to a file. The time between each collect is 
> defined by the user hitting the key.
>
> I need to make sure the USRPs are not loosing carrier lock between 
> these collections. I want the USRPs to stay locked to whatever center 
> frequency is set and sit there for the length of the time the user 
> wants to collect data sets. What is the best way to ensure this?
>
> For example, if I use GNU Radio and head blocks feeding into file 
> sinks with calls to tb.start and tb.stop, does the call to tb.stop 
> cause the USRP to forget the carrier it was locked to and start over 
> again on the next call to tb.start? Can I call tb.start multiple times 
> without a call to tb.stop?
>
> Thank for any help you can provide.
>
I think this will likely work, although I think it depends on how much 
"device init" is done on flow-graph start.  I think a lot of it is done when
   the device is instantiated, and whatever happens at FG start is 
device-dependent.

You'll have to test this in your environment.

You might also chose another architecture for your software to remove 
the possibility of device re-init.

You can for example just stream forever, and only pay attention to the 
samples you want to pay attention to.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
