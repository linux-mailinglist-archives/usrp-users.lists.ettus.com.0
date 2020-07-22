Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE08D229E15
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:12:53 +0200 (CEST)
Received: from [::1] (port=52800 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyIIV-0006QP-VC; Wed, 22 Jul 2020 13:12:51 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:46674)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyIIR-0006GI-Bx
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:12:47 -0400
Received: by mail-qt1-f171.google.com with SMTP id o22so2115705qtt.13
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=0RLODHFDEPSNQ8t3XsdLzu6eqesMXMxy5sPmb3bRCV4=;
 b=MHSMyCfmgldQXj2EMOhYWURFTagZUuy/UbT2ZJ6ejiTnyV4sSS0rVoptpbiNdRHDjW
 omiiw6XgN4nHBNp2Gg5A7bUBuFa7pmrPzkaPaxOGVVPfuK3Tp6ybbVLlzSQqcKN8tOj2
 +lmw8t0y65ymktxXKAXDcaqHycOdFx45yVIkha2wKkbuAsNoyvqV6TF7tgJAYOMFWp2U
 nBJI7FPlsHG7FsP6dNgHyzvhTdFtsKxf0yaFFC0I3rftbUoAYhRsDv92vLiDKFWFu8gf
 q+1Yo06FA0k2NsAgMe1Kvc0iFVgpioXaykFd/s3uS01MIgl094nmwmGsG6+RsJ1UbFNy
 QuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=0RLODHFDEPSNQ8t3XsdLzu6eqesMXMxy5sPmb3bRCV4=;
 b=UdMa1EfS+sVlpNqwqctUmsLPFjdfqLhb7lrbyDUzhEFDW7jFCVi408dI857mRob/Ub
 mTYbyXbGX0OBycd5/J6Yjr3k0u8aoEYX9/Ey9SXVc/cmsHelpq/50evPH4Tu/dNXzJOe
 5Qwv6ROD9/9QQb+YbyAFJwKrRPgCEC3p+ytGuLLXkqxgiI+PZt2kjjPgtaznHXOm/kme
 WghYYgnvrdZNtMZKbnxpsV4IkksxGM5A0pj+DpVtjNrfURITrYlqp1F/5UIx3hb3OBXU
 puZZyUB8HQro/8CKkKPaupKX2fUZIsnON9bMhoWrot/Yt8IgB7ufzR3X2O1q1Vur3FAp
 SyCg==
X-Gm-Message-State: AOAM532fyMhjnxgLxJewNXyRr6hUIVrQE3UvUPP2Oa+h97Io1WH0Fvh2
 W3hqXHzYqb875u2B1L/ZkLdK81dSs5E=
X-Google-Smtp-Source: ABdhPJxNCWDEputxpDg8wqgAGLf+mMW5lQBLfBwJBndpPOqnuRb4XUlMH31JjqvHd7l3S2F81UKsMg==
X-Received: by 2002:ac8:170a:: with SMTP id w10mr344493qtj.392.1595437926403; 
 Wed, 22 Jul 2020 10:12:06 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id 205sm362096qkn.104.2020.07.22.10.12.05
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 10:12:06 -0700 (PDT)
Message-ID: <5F187365.7030104@gmail.com>
Date: Wed, 22 Jul 2020 13:12:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
In-Reply-To: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
Subject: Re: [USRP-users] C++ thread Priority.
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

On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
> Hello, I have made a c++ code which sends samples in the main function 
> and receives samples in a thread launched in this main function.
> I have read that we can set the real time priority with the 
> set_thread_priority function.
> I have tried to call this function (with parameters (1,true) inside 
> the main function but it doesn't seem to change the priority of the 
> executable. When I launch another application, I have lots of U and O.
>
> Do you have an idea how to achieve what I want ? i.e. allocate almost 
> all computer resources to my uhd program ? What is the best way ?
> I have already tuned my ubuntu with advice given on Ettus site.( 
> cpu-freq set etc...)
>
> Many thanks
>
> David
>
In general, applications have only very-rough control over the behavior 
of the scheduler.  This is true in most general-purpose operating system
   environments, whether it's Windows, Linux, *BSD, MacOS, etc.

If you've played with priorities, and starting up other programs causes 
OU to happen, you should probably consider:

(A) Optimizing your code -- find out where the hot-spots are, and see if 
they can be improved
(B) Choosing a faster CPU

The CPU usage of a DSP flow is roughly proportional to:

inherent-per-sample-complexity X sample-rate

Can you lower the sample rate and still achieve what you need to 
achieve?  Can you improve the main-path per-sample complexity?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
