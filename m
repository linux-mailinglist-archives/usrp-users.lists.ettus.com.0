Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC5B29E139
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 02:55:02 +0100 (CET)
Received: from [::1] (port=39412 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXx9X-0006GK-Hl; Wed, 28 Oct 2020 21:54:59 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:34747)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kXx9T-0006BB-PX
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 21:54:55 -0400
Received: by mail-qk1-f177.google.com with SMTP id x20so883877qkn.1
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 18:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=CZPW+bOVw0H4W+MBvqtcFYDcGb7ZpsNei5DdqkZOeBk=;
 b=FXc40RV/Q+VJyDN8OVanvpXbTq4VsKao9Vl1vTy09GQKM4f3xZ82Yxp84xyr8M6RNb
 /YkER/vWcmvfgqf8eWdgb2Pzy/TkDPHCB+BK6EWVZ2h9GN6uqiK490kDIMLxuYpKf4ci
 9ltvwetjSXzRQKDr+zkh1Q3HVSD/lXbel0jJ1xxguY53GazC8FAkz/fe8W9R/d5SKFq2
 8i4bmB1sSnsUUQbG/mTxZ2pmvGq6q3r3vQ/i9B68DKxU+YhPlm7tyLyr6MXsqi26T0rF
 q4MOqEGFG9OW48gGWu6ZcYLgDERJzIy3lmhnvxj0k4fDtZQf1rDv1UnMh+E0F7G2VB1A
 BH3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=CZPW+bOVw0H4W+MBvqtcFYDcGb7ZpsNei5DdqkZOeBk=;
 b=YsD9rgaV8/lAdetUAqo9I/jjH8N/MVjpRVM791whvyt/xu7vUZCuQ9CGPgvYo04p7g
 WtgFQjQ/ye8eRJ8Ror/E4Xd28qTzasZFZWCnDE2KytvL6KCWEnVVNsGi1xjyMc3pSkqb
 AU+SrFhz5Ho7qLALqxBgCMtK2WS488wOyv7vKhfIAJrqH/rHdsUECymZvdLIWuWsAb4W
 QYcBoTMgaaonqV/L7Rrpkh6UVkF/3iB9AkWm+HJNkJUBI/SUFhJcB65L+dCUNVlwu6H8
 sAglHjiJEUTNPRWITNPm3kKW+IITs3qXPtYJUtLI7Db0NlyNn7uZpz6uOMJbi95l5/t3
 8lAQ==
X-Gm-Message-State: AOAM53148FCjHuzAePFPeZ6ur8tw6aPYfC28HCkVr3XdNy23lDduRQjA
 jPApXHtkHT22KnFgE8pK2rgfDklEX1x2LQ==
X-Google-Smtp-Source: ABdhPJwfTG2XUrpPC5UI5afo64+s8Rzudcgf8S5DGujPt7sIMX8ZXkhg9TTW5aV0C3WW5woS3epDeA==
X-Received: by 2002:a05:620a:cc8:: with SMTP id
 b8mr1747100qkj.190.1603936454979; 
 Wed, 28 Oct 2020 18:54:14 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id l125sm590366qke.23.2020.10.28.18.54.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Oct 2020 18:54:14 -0700 (PDT)
Message-ID: <5F9A20C5.7010601@gmail.com>
Date: Wed, 28 Oct 2020 21:54:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <08a10fed-97db-5459-8470-7803fff24dfd@dcsmail.net>
 <CACaXmv86HdB9aKY9jGqCwL35cUK=U2bj_-Gox_qnaogYDdBttg@mail.gmail.com>
 <740f10e7-9cd4-fe62-2e0f-9c2720592a65@dcsmail.net>
In-Reply-To: <740f10e7-9cd4-fe62-2e0f-9c2720592a65@dcsmail.net>
Subject: Re: [USRP-users] B200mini questions
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

On 10/28/2020 09:07 PM, Barry Duggan via USRP-users wrote:
> Hi Neel,
>
> Thanks for the quick response! As a clarification:
>
> - for half-duplex operation, is the receiver muted (and protected) 
> during transmit?
>
> - I could not find the sample rates on your website.
>
https://files.ettus.com/manual/page_usrp_b200.html#b200_mcr

It says "ANY value between 5MHz and 61.44MHz", but in reality, it has to 
be integer, and there are rates that don't work because of the
   PLL architecture--I just can't remember what those restrictions are.

But even if the step size is 10kHz, with integer decimation implemented 
in the FPGA, that's really a lot of different supported sample rates.

Normally UHD will pick a master clock rate for you, given the desired 
sample rate.  It will try to pick the highest multiple of your
   desired sample rate that is also a a multiple of two. Sometimes, 
you'd rather it not try to be "clever", so you specify the master clock
   rate as a device argument and set sample rates accordingly.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
