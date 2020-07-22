Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BA1229DA6
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:01:25 +0200 (CEST)
Received: from [::1] (port=52686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyI7P-0004tk-2u; Wed, 22 Jul 2020 13:01:23 -0400
Received: from mail-qv1-f66.google.com ([209.85.219.66]:46991)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyI7L-0004lf-KY
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:01:19 -0400
Received: by mail-qv1-f66.google.com with SMTP id el4so1306310qvb.13
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=URtrUQDzmfhSCGz37MmMe+/7Wvia0iHv0r7WevPTB8U=;
 b=YMD+QI6M0ogAifZSs/n/8Ca9VNEjcTUkhMS7rzHYSFKBr3H2xu29/C0kjQ3CHxPfqo
 CDUs7PTG6DztfhgKzOzs38VR1lhWNnEZuvQk813QPhza/7JHkU1b4792aPrP30Z1zjbf
 Fn6Gc8lLceouelAE9o2bLlbrBpnEXDA4b/DW0OrrpIPo5TiaCxGZGtyddsmLYl7orglx
 V6pxqg8lDxyclF75CFnT7b8vDszPU/QZxEzYeCgJn5hetj51oTNwJj1EaYhJo/Jirx4G
 I4L8lbN818Z+jVQYWCy5bvsypiT4iyQ1SEIAmmPB+iIFGgMqhFd8Cr26AkeYaZygUcsp
 TnKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=URtrUQDzmfhSCGz37MmMe+/7Wvia0iHv0r7WevPTB8U=;
 b=OP1W/2+VXdMHX0rdC0yr4W7vSh9RM0cmlN5sPVqVb35ppGT3YO6ZB2ggzjVJN0OXNG
 uLHAJani0F9yETN/3nSoG2VJwChMYN1YRq27GUUjb5kEK3sqpPwinw+wzM5i5B9AQ/Hg
 +aV8vhucviU77j4JmR6n33Cf0btRwWoicdw8ukM0FKCLZEsAI9R6WxTNUFCwPAQ2NAhC
 BnENHseKLSoxRyf8DOr90fePcv1NQ4qI/uIRpgWH0YNA7b6RiZF9emdjMPohuWSJgjwZ
 RDPzbYSZ/zAk8qbmyxs3cpZCflH2nt7C2Api4W6ioLV0jt9YajopZH8018L+PhmadD6u
 pVXg==
X-Gm-Message-State: AOAM5321kvvDc4vu7z9Z1Zoi7qjFaRmzVdDUJpom4CLo2BLYfvynLy1R
 mNMadm7wM8OahDzcdchm9HTxBMlYxO4=
X-Google-Smtp-Source: ABdhPJz0ffikS4TGF5IaFKqbwQIxd5Nvv+ViafMOx13+l/ZF61AXxkGBN5WerUiuVCH9298TIfRtvg==
X-Received: by 2002:a0c:a221:: with SMTP id f30mr899858qva.115.1595437238683; 
 Wed, 22 Jul 2020 10:00:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id q68sm366337qke.123.2020.07.22.10.00.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 10:00:38 -0700 (PDT)
Message-ID: <5F1870B5.7030805@gmail.com>
Date: Wed, 22 Jul 2020 13:00:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
In-Reply-To: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
Subject: Re: [USRP-users] 10us+ sample delay between daughterboards
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

On 07/22/2020 12:39 PM, Johannes Demel via USRP-users wrote:
> Hi all,
>
> I have an issue with multiple USRP streams. If they are on separate 
> daughterboards, but on the same motherboard aka USRP, those streams 
> are not time aligned. They show a time offset of more than 10us. I use 
> one USRP source block in GNU Radio and configure it with multiple 
> streams.
>
> At first, I observed this behavior with N310s but now I see it on an 
> X310 as well. I use a GNU Radio flowgraph where I set the clock to "PC 
> clock". I'd expect all streams to be in sync because they are handled 
> by the same object. At least that's what I hope.
> On an X310 I have 2 RX streams that observe a signal from across the 
> room. On an N310, I tried different configurations and I could observe 
> this delay between daughterboards. They are in sync for one 
> daughterboard.
>
> My flowgraph handles frequency offsets etc. But constant time offsets 
> between RX streams are problematic. And I suppose they should not be 
> there.
>
> I'd like to use GPSDOs at some point but I don't have a GPS signal in 
> the lab. And I don't have an octoclock or smth similar. But all of 
> this shouldn't matter since I only use on USRP for RX. Or am I missing 
> smth?
>
> USRP: N310/X310(with 2x UBX160)
> UHD: 3.15LTS
> OS: Ubuntu 20.04
> GNU Radio 3.9 (aka master)
>
> Cheers
> Johannes
>
Here's something you need to know about the time-keeping architecture in 
both X310 and N310.  There are, effectively TWO time-keeping
   registers.

When you use "Sync to PC", those registers each get updated as a 
*separate* operation across the wire, so there can be (as you observe) a
   several-microsecond inconsistency between them.

The whole thing about the 1PPS pulse when doing time-setting is that no 
matter how many timekeeper registers there are, they all get
   set at the same instant, due to the 1PPS pulse processing.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
