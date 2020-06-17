Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1C31FD6BE
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2020 23:09:49 +0200 (CEST)
Received: from [::1] (port=44054 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jlfJa-0005nv-8T; Wed, 17 Jun 2020 17:09:46 -0400
Received: from mail-wr1-f51.google.com ([209.85.221.51]:37169)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jlfJW-0005hu-Em
 for usrp-users@lists.ettus.com; Wed, 17 Jun 2020 17:09:42 -0400
Received: by mail-wr1-f51.google.com with SMTP id a6so1908749wrm.4
 for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2020 14:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=b0qE0Pbfb/JiLlTxjipcWPZX2VHGgqcurmXUoVu0knE=;
 b=2LaAja1dzXFsr0hCTvR2erVzhtRK4gbY169tu4FNl+ykH+XrA3YKFMNHND1Ryu0F4z
 KVFW5X+Mr/a78kzoPoOY6mjOxcHFypzh8wGB0awArvBGxUp5chrgJnTcT4E/K84Xf5KM
 d3uKGtUGSLcPyRy/FmHrl9UMLR/Z1CPOFqMT4Z++NMjs9tvsmp7jykc2OxQg4X3AVJaP
 F+jaypVKsLPXFaiFYmrhOVfJzP1bnxwIWE3IrZmmL2DATaEtmz6LQrvYr58KOPzxEO3g
 TpLIA5ziCouYkki0yM145iumba2VohULjSRTNSxP3qUlFXke1dko7Mdsk8Ney+/9r8Rv
 uE5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b0qE0Pbfb/JiLlTxjipcWPZX2VHGgqcurmXUoVu0knE=;
 b=Tuz7CqRH/fXEXdavrRN5BKs9bL4XVP/At7hgJegV/ngopwGvvTIyTmmxvhoV3VH9ft
 cMvBM6qnwpwcBPwgxVIhezSt6YNYPZ9CPeaDd6NxW7p7gf0/BcRRWUiFQwmG3zA/UK4p
 ewDizuRcEjh6G2SPRwjlRUVrMjdrtGeSVx78U/+6GBlnWIv3KgO4TpTHI9WHHskTtLuQ
 Y8LYoj94/aoSrxYfA9N6wfrGOJDHblSyWt067MZ/ufQfquhlN57zNCRtYntPToHbZ15M
 HawMtDPoRQOyOBfpsJqutFcIbiUO+pl2kZMm5Q5KgUV/z5kUOZExkm2hKymrFAcNlu4p
 chkw==
X-Gm-Message-State: AOAM531Kbix04n1SZmWJGQnjXIC8PjPqYxOdbYNJBZiFS16phBFBKi1H
 jIDQxVTIv2A539d0BKaqJUPLDt54n5SH6Q==
X-Google-Smtp-Source: ABdhPJwbnDKni5dwni8a3KLi+uaqaLOasxRe4hAKGEdDOTb+unet/4ZucsodTKMehEkbH2iyNxdS3w==
X-Received: by 2002:adf:f711:: with SMTP id r17mr1100136wrp.409.1592428141180; 
 Wed, 17 Jun 2020 14:09:01 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id a124sm1005287wmh.4.2020.06.17.14.09.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:09:00 -0700 (PDT)
To: srushti <srushti.siri@gmail.com>, usrp-users@lists.ettus.com
References: <CABpcK0qRMWYJ6AqdfFcdSE5ZGEywq=Rp6d5QE4nEKCc3r0_UXg@mail.gmail.com>
Message-ID: <94d2f515-73ef-7117-88f7-99265f2b3941@ettus.com>
Date: Wed, 17 Jun 2020 23:08:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CABpcK0qRMWYJ6AqdfFcdSE5ZGEywq=Rp6d5QE4nEKCc3r0_UXg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Installing two DPDK versions in one PC
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

You should technically be able to do that, but it really doesn't sound
wise to do that without containerizing your file systems. Then, it
should be no problem at all.

Note that *running* more than one version at the same time is something
different. Generally, again, should work with differen logical devices
(that's the whole sense of the iommu magic happening beneath), but it
might take extra steps.

Best regards,
Marcus

On 05.06.20 13:44, srushti via USRP-users wrote:
> Greetings,
> 
> Hope you all are doing well!!
> 
> I have a question regarding DPDK. Has anyone tried installing multiple DPDK
> versions in the same PC? Is it possible? Will it break something in the PC?
> 
> For example, can you have DPDK 17 and DPDK 18 installed in the same machine?
> 
> Please let me know if anyone has tried this.
> 
> Thank you
> 
> Srushti
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
