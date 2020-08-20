Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 393A424C1F9
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 17:18:03 +0200 (CEST)
Received: from [::1] (port=41628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8mKE-0003vd-KV; Thu, 20 Aug 2020 11:17:58 -0400
Received: from mail-qv1-f54.google.com ([209.85.219.54]:39200)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8mKB-0003pV-Fq
 for USRP-users@lists.ettus.com; Thu, 20 Aug 2020 11:17:55 -0400
Received: by mail-qv1-f54.google.com with SMTP id o2so1060433qvk.6
 for <USRP-users@lists.ettus.com>; Thu, 20 Aug 2020 08:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=g6rDMtDAlYLvSsO1xZ/ky06LZa10+Ml0xBYOqex6h9Q=;
 b=swBeSpIi6dF9z0oZbtxlPHlNL3EjzeQWX4+fkGiwKOzj2tFLED7Ri4WmS1SAHm5Gph
 rB1wOejoE4kzf3KT2U/IN8WMnLY/YatjtarQbFZG2RDFRVZrH1I17RJxwHvIo1UjZ/hx
 NzWWKybv6p25tzctN57knSyaF+nco/R6w7SBOvERj0o1wsRA3WVCBl6zid517gvykjdg
 IcXXCK+UgHHh8AGkjo16MXwewIQ1WoSixR1FQAqjQXyg46HlRus4fJYNL76A8GkQYzHc
 R/D/0RLmZTrZ5DzA8euBUwrylmB4kNQlC8ZbfUgtoT9DIrb1XiWHDpcVwfHiXe+ldxSn
 D4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=g6rDMtDAlYLvSsO1xZ/ky06LZa10+Ml0xBYOqex6h9Q=;
 b=kV8+//czaZwoZEv9zf2Fe3iqMfDMgDLLxaCFb2EzkFgx2wjNnlI9I0jAHMqEmH0Qd6
 UDqanM0SX50wdIPUyLZINOcHiwJwsaEEEv3Pf2UwwxBeYDgIv0mxFWbc/fq5Oyyl5APK
 kv5OscY6Jw7JTgtWBQqDkPbI1d2aPROndNoV8yw/jSIJ6LUy1G66JkXzbZjsR2YOtneq
 x0qYazEwPJ8nCPrDYHBiMVJdqXacZ1vYUAtDYaJpmfFtSUUsDEswDuX0Mw4HVu1g96gO
 cZlmlwPBIQiLkd57mvcSxgEmliex2OlShnNYXO9he9bPyQ9zL1e3WHaKcO9nb6Mpid3N
 gvSg==
X-Gm-Message-State: AOAM533uI4MbOS+VfiLNjS609AXIQvyo7qlqjX+ood1iQdmIHcnCSBZx
 9R08WJq87q0yLb23CANOTfbgosnzwzC0KBXj
X-Google-Smtp-Source: ABdhPJzZwwz0h6/2af+uuUnvPbdfKbLnacL607aWdaqqMz29yn+U2JXY+H8Dr+NTgWhOg0UidpzPpA==
X-Received: by 2002:ad4:54ce:: with SMTP id j14mr3467167qvx.185.1597936634750; 
 Thu, 20 Aug 2020 08:17:14 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id d124sm2344613qkg.65.2020.08.20.08.17.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Aug 2020 08:17:14 -0700 (PDT)
Message-ID: <5F3E93F9.2060402@gmail.com>
Date: Thu, 20 Aug 2020 11:17:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ephraim Moges <emoges@uncc.edu>
CC: USRP-users@lists.ettus.com
References: <CANwgjNp9NiRfWnidoV0MGKFLP8YKKYFgjV=9jiKDz91DxfLn9w@mail.gmail.com>
 <E0495F5B-2367-4ADC-B00F-E114849470FD@gmail.com>
 <CANwgjNoe7Qeq-KWFvNaN6vStzLupbcPsPqH4+t-BE-ZN43cQcA@mail.gmail.com>
In-Reply-To: <CANwgjNoe7Qeq-KWFvNaN6vStzLupbcPsPqH4+t-BE-ZN43cQcA@mail.gmail.com>
Subject: Re: [USRP-users] Fwd: Benchmark_rate.py error
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

On 08/20/2020 06:57 AM, Ephraim Moges wrote:
> Good Morning,
>
> I am getting an error when follow the package manager route. I think 
> it is because their is currently no build that ettus was able to do on 
> Ubuntu 20 and 18 according to ettus records. Please advise if I should 
> revert back to ubuntu 16 or if this problem is unique to my computer.
>
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages 
> <https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd/+packages>
>
> Err:6 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal Release
>   404  Not Found [IP: 91.189.95.83 80]
> Hit:7 https://deb.trendtechcn.com stable InRelease
> Reading package lists... Done
> E: The repository 'http://ppa.launchpad.net/ettusresearch/uhd/ubuntu 
> focal Release' does not have a Release file.
> N: Updating from such a repository can't be done securely, and is 
> therefore disabled by default.
> N: See apt-secure(8) manpage for repository creation and user 
> configuration details.
>
> Sincerely,
>
> Ephraim Moges
>
>
Hmm, it looks like Ubuntu 19.10 (Eoan Ermine) was the most recent 
successful build.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
