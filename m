Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C0F84550F
	for <lists+usrp-users@lfdr.de>; Thu,  1 Feb 2024 11:18:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94A51384D4B
	for <lists+usrp-users@lfdr.de>; Thu,  1 Feb 2024 05:18:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706782691; bh=yFBlmeUGL2C8HgQoSZy9xc0lq9NPYXSXW3iJ40uYerU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Fpv7J1bAQUfczzfbcrfeCZ5iqX8D1/k8rluM8YS9ryqfryNF/ciR9yia5F3ovsIm6
	 HacQOcERb2AA+2jBE9uaZaDRTUfoJ3Dnlm8KlYGHZYXcOFe5/zTtI7EiPP09CR4u3u
	 47jw+elr/ebQI8T56MNbUcqOQ5s3cKSPBGNs1enSRhSubkNseUXZqRRUTD/ALA5+Hj
	 alhRMfieViJCh7dYGAdHjEKLGe/FxgHBgLdblVM9aTwYWBqIPjbactZrFMNbWJ3VUa
	 e4ARQh+YVcHujCxWGDrPE+8wThJ5sk313g3ySRvC2bW31pb9Hz+rEKPnFk3vL6+bPx
	 58760wURhrkeQ==
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 73700384C73
	for <usrp-users@lists.ettus.com>; Thu,  1 Feb 2024 05:17:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="qOodP3Q+";
	dkim-atps=neutral
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40fb94d42e4so5555895e9.2
        for <usrp-users@lists.ettus.com>; Thu, 01 Feb 2024 02:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1706782657; x=1707387457; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n00jo6cMyPNso5jAaShfBugN1xquRt+KIXhZTZxLITE=;
        b=qOodP3Q+tO/TE9hEb4NTklt3wM76mEL9RxMb8gwg/EeKEMEHlbwpQ8KU0S4HbykWEU
         VayZJmhqDrYzHiGRU280G/PK/usMsj6E0bmtgxYyeCbKBxgBd3k+HB1PNmc40s9qpcPe
         Xq2Fmeh+KSwAWKXbAnhOLTTWbdoFAJ967l05qS82eTsS9wME11BRnjf/gcyelJqcKcQX
         +cxm2pdrNaSEnW17KhCiOWmWbWBuR2bqXNIPFwdKu7vKxNxvwW3BYKAi/HMok5P5eZFg
         ASxzhZMldQkIfOftazpdfP3OmdjIXMjM8475IPTaBDLPpN7/9CY3f7Vv1JcBMKeFtrOk
         EDdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706782657; x=1707387457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n00jo6cMyPNso5jAaShfBugN1xquRt+KIXhZTZxLITE=;
        b=BJRLoqS42CpxSWrKCbXD1yHvNjz6maNKP+vMqrqMz3w3IDKy88pBDlgqscHTgBFkN2
         x23cvDQVEwIJfWxS8BUM8lXMqDMr8PzpSBQAZ1ZSTlzC+WfkFZOcBYFWzMjjLhDyQn0U
         86GyB4Vt3KCDeJEvqgyqJSeWrmypVoRsdVwYmdVGs7eaVMTkCxfcNLfZnH7X6vc+wFta
         OBqBV1w8nl5Zez6hG6Ps6iUWksSgJJa8vJZzNsYH5BJCA14oQEj0sytyzGLE1vwnQaAj
         jRH6y0h6KuzE1/M83RhzQ7JFS4rxQRPbGwvovTDX60glf1nZ+3njZNgGi9gZjnkbA8IY
         xD4w==
X-Gm-Message-State: AOJu0YziopQD4WEdKg6tmjkeeNRyPDrd14ytFCTBlxTkBYgPPo7l3WES
	v+sK5c8+M1CrFfbQypQEbJOK2eWCrTgkeMaQnMijCncT1x+5Rm55Uryik+Inc1H+/EfzfpVV3mp
	JY1U=
X-Google-Smtp-Source: AGHT+IH2DVFcNSMU73c3u9Vcl08RygvS321JmB0A7YdcBu2dV4K68m91hzcdMGUDFK76fLVrkqeyVA==
X-Received: by 2002:a05:600c:46ce:b0:40e:5523:e6dd with SMTP id q14-20020a05600c46ce00b0040e5523e6ddmr1295204wmo.30.1706782656105;
        Thu, 01 Feb 2024 02:17:36 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc40:b300:10fc:1619:bea3:90d1? ([2001:16b8:cc40:b300:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id t10-20020a05600c198a00b0040f22171921sm3988010wmq.3.2024.02.01.02.17.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 02:17:35 -0800 (PST)
Message-ID: <ba222fe3-a5f2-4e4f-8248-141cfc9688b5@ettus.com>
Date: Thu, 1 Feb 2024 11:17:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <75c2d662-5067-4ff1-a3cb-4f56f053ac0d@ifac.cnr.it>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <75c2d662-5067-4ff1-a3cb-4f56f053ac0d@ifac.cnr.it>
Message-ID-Hash: YVTFG5IFJQSKAWBLK7S5EMESWXLI2UCV
X-Message-ID-Hash: YVTFG5IFJQSKAWBLK7S5EMESWXLI2UCV
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue posting a new thread
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YVTFG5IFJQSKAWBLK7S5EMESWXLI2UCV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Alessandro,

well, this post worked :)

I have no access to the management console of the list, but the most common reasons people 
get rejected are

- wrong From: address; the email address you're sending from must be the one registered on 
the list, and

- too large: if attaching files, especially images, make sure they're not too large. I 
can't remember the limit for this list, but tend to believe it was in the megabytes.

But: usually, when your email is rejected for the second reason, you should get an 
automated reply saying that.

Best,
Marcus

On 31.01.24 19:02, Alessandro Lapini wrote:
> Hi everyone,
>
> today I subscribed the mailing-list and posted a new thread, but the post does not show 
> up yet after some hours.
>
> Is there any problem?
>
> Thank you in advance,
>
> Alessandro
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
