Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DE22AFBD8
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 01:53:40 +0100 (CET)
Received: from [::1] (port=52772 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kd0rp-0000M4-71; Wed, 11 Nov 2020 19:53:37 -0500
Received: from mail-qk1-f196.google.com ([209.85.222.196]:39909)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kd0rl-0000Eg-4y
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 19:53:33 -0500
Received: by mail-qk1-f196.google.com with SMTP id q22so3836614qkq.6
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 16:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=t87InfhJc+lR7dNghqqa8mAJuL32PFJbKONzS5pjRL0=;
 b=Oiy80ETsc/ZDOFxYnADPoiSGXUuaMSPMXCsOLTkFnCV5JXsVNgDpPU3WB/ZMa/4spc
 L/SYFi8Z0mLaEv5pOTVb7J9PnVZgpXJdrFnKBzPWITnmOvTw+Bfb69OwvHGrQE0qSsQh
 Z0Pn6671uZxL3mZcOHmgXgyuoIjGbovWGol/ZMvnowYhSas4Dz7qBoaAuYgtH1HK82gE
 fNyF7I82tEFjE6wi88ILCdEmDDQ7+ogrHy8BayUjTSLDOhivCcxJinonwaiD5PdsGvFx
 Bz6933w/OlL1dJrWUCatHeJfoCRpBBgDf/aTR8F1+DUFWTJJxro49DdlwBmE8/I2Yu5O
 TZRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=t87InfhJc+lR7dNghqqa8mAJuL32PFJbKONzS5pjRL0=;
 b=t/pwzTOei8sErD9d1avfD9tPnTEWgP9ZHhv0cURa/9bigotIEjeYiUtwuw5mTdD3nv
 7wnAe/u/zbj6En4/5JeAfYD2hrP8mx2ZWYLo04+IS9llKNWepPNYNQCxvfGmhG0pS2Xx
 M7k+6Jxmuue3AcGzmizpO14DqIv/8WQFR2df8IG6r9rBEBGRzfw/3FFKyguUt1rdTpRw
 To64SGOAj17hOxqdcFKOodS7Wqi+a6UtrdSE/iKNY3X+ezQZZ1sWQx7i79JK9tUm6eh6
 snAlU09D1goS9eFx3w8lC/xr6vKJuhCrK9yHNtieON4LNtNgZ0cbyN2hEDLkubnKxgua
 ouAw==
X-Gm-Message-State: AOAM531QJnStTrlAuY1p1p/tpS5M7QyrAyLgViUGV/nm3CGc+TWMlItV
 oi81W+beOnY9swGWVMUgV50u4ayoqZg=
X-Google-Smtp-Source: ABdhPJymVzRVJH1jHnRlVFva3CzL00e1gJDm4Vp34aRQtWwnYHhVeVWZV8yO8P4zLnZo9lIDkR1nzg==
X-Received: by 2002:a05:620a:14b2:: with SMTP id
 x18mr10741656qkj.440.1605142372259; 
 Wed, 11 Nov 2020 16:52:52 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id l28sm4001833qkl.7.2020.11.11.16.52.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 16:52:51 -0800 (PST)
Message-ID: <5FAC8763.1090904@gmail.com>
Date: Wed, 11 Nov 2020 19:52:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Dustin Widmann <dw2zq@virginia.edu>, usrp-users@lists.ettus.com
References: <35ae5da8ab09a4c3bbb77d059d775a91b98d4c9b.camel@virginia.edu>	
 <5FAC37FA.1060605@gmail.com>
 <4150ed6df83730bba2cbc5ef916af8064c284edf.camel@virginia.edu>
In-Reply-To: <4150ed6df83730bba2cbc5ef916af8064c284edf.camel@virginia.edu>
Subject: Re: [USRP-users] twinrx consistent phase offset
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

On 11/11/2020 06:20 PM, Dustin Widmann wrote:
> Thanks for the quick response Marcus!
>
> It seems to be fairly frequency dependent. I'm attaching a link to a
> data file so y'all can take a look at what I mean. I ran a dense-ish
> sweep several times to try to get a feel for how reproducible things
> were /etc. The transmitter was retuned at each frequency, but the
> receiver was only retuned every 10MHz.
> https://u.pcloud.link/publink/show?code=XZviezXZGl5Ypkv46LSVf9l9n1YtOV05z92k
> in this file:
> * blue or green text = range of datapoints that seem to have
> reproducible phase offsets (I alternated between blue and green when I
> noticed a "jump" in the value ;; sometimes these jumps were 90/180/270
> degree, but often not, and were reproducible regardless)
> * orange text = phase offset is off in some consistent manner
> (90/180/270 degree jump) and/or reproducible aberrant value
> * red text = phase offset seems to be random/garbage
> * red background = invalid datapoint (either tone is at unexpected bin
> on channel 1, channel 2, or both ;; this is one of the other questions
> I was alluding to in my first email, I'm presuming its a separate
> issue, but maybe not. It's worth noting that when the tone is observed
> at the wrong frequency, the frequency where it is observed is often a
> multiple of the reference clock instead)
>
> Dustin
>
What version of UHD are you using?

I spoke with the original developer of the TwinRX driver, and the 
preferred approach to tuning if you want coherence
   is to tune it twice with timed commands.  The reason for this is that 
the number of transactions required to tune the
   TwinRx exceeds the size of the X310 command queue, but various things 
get cached, so the second attempt will have
   fewer commands in the queue, and will go through with all the 
appropriate timing.

Since this is on a single X310 platform, and it's TwinRX, you might 
consider instead using LO sharing:

https://kb.ettus.com/TwinRX#New_Multi_USRP_Functions



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
