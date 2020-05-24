Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD351DFC6F
	for <lists+usrp-users@lfdr.de>; Sun, 24 May 2020 04:19:32 +0200 (CEST)
Received: from [::1] (port=58706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jcgEb-0003UL-Jy; Sat, 23 May 2020 22:19:29 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:35489)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jcgEY-00038y-5U
 for usrp-users@lists.ettus.com; Sat, 23 May 2020 22:19:26 -0400
Received: by mail-qt1-f176.google.com with SMTP id z18so11577946qto.2
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 19:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=JB+7+ZpbW48LjyT4kl4HdzcH+8qUbkO4wBYaf0cbkEA=;
 b=aGNj5SaHgkWlcLQ6mYA/ReF7M7MRxsNpGHsRP7V1UIv2LUwg3wf7PGg18hpccPlFGF
 W0kdP2eK1XaR9VdR30VD1Y+5u+9GsgaYDnzxPvgdbt3H25Gih3sHEKlAXh8dnI+U7ANR
 o+Uu6kkyI14URM32OuZ3bvMBHXrplvrJFqyp8+iAhTaFX9EbN8EY9HHZEMYk8+Mq7fGZ
 WgSwEd5Dr8nyI4kS7kh3T0Mc+vjQWaaaHSZfWnN47kC8FvhdiB6aJ62pHVP6WXAjXEAi
 wawv0rKa9zdmXEDaJ5g6KCFjCxH4kCy+uxigHhROobAiKcZTsjCBlPuYr41rs0yhvyyw
 cL/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=JB+7+ZpbW48LjyT4kl4HdzcH+8qUbkO4wBYaf0cbkEA=;
 b=hYPjXl+z14JBnMntx7eQ2SrF1sVRlwLHk20bTa+Cg+12KiMSUdlLMKYzJNz62oZYK6
 AIrgIhNKtQtUm1swRPsojv77Ws/VfjFPU1uHEK4L4t8uYptKPXov1CQaRF2vuRNE4NEb
 c+RA3ZUIoFVRv31aJ0ITAFqsbinYao55ddrD7qkIAqkd7Ve33T9dYGdpjckiBt7u7ZGF
 7/0ESgSlfW8Qv+Y4s/wfksNTtG59Br/uCMoTNVDktDubK0ZuGZLTGGOfWVTr0m7O7PEO
 o1jfezy18eBxYZssqAnWIzbrBfI8oP3f2wv24mkzzNZYAytUSmPPGCiMg+XjJd5Ak9jT
 hJzQ==
X-Gm-Message-State: AOAM533IV3dthUZcNauVFh16mRukGR6yPTXUE+ENV3V3eBxoGkhPhrbG
 CzWX9Etezng3X0+kZdOHpBQ0xoo1
X-Google-Smtp-Source: ABdhPJwcMNLLrD9MOsJBVchkzo+3DTOL7YebwHA0NUOh9p9dS+QVBh5h3C8FWxBQ4X4/x9mekK5FMA==
X-Received: by 2002:aed:37e7:: with SMTP id j94mr22294914qtb.57.1590286725384; 
 Sat, 23 May 2020 19:18:45 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.googlemail.com with ESMTPSA id i24sm11912994qtm.85.2020.05.23.19.18.44
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 23 May 2020 19:18:44 -0700 (PDT)
Message-ID: <5EC9D983.6000708@gmail.com>
Date: Sat, 23 May 2020 22:18:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAGsYvigK0JxvLpC38m-tdf6YPS1uPYaBO0wBAUYbbW+ES2c2-A@mail.gmail.com>
 <CADBWrHiABtNSRkDPXEuZ0fXpxDMgbqMpN-Y9jp58WOmWDZ_5mQ@mail.gmail.com>
 <CAGsYviiETbFZ4toeTO8Eox+kC4svHD9POv8foe7K0UdLS6Yt2A@mail.gmail.com>
In-Reply-To: <CAGsYviiETbFZ4toeTO8Eox+kC4svHD9POv8foe7K0UdLS6Yt2A@mail.gmail.com>
Subject: Re: [USRP-users] Rounded FFT on USRP N210
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

On 05/23/2020 08:36 PM, Manav Kohli via USRP-users wrote:
> Dear Sam,
>
> Your shot in the dark hit the bullseye. At 25 MHz, this problem goes 
> away entirely. Will have to work around the limitation at 20 MHz BW in 
> the future.
>
> Thank you very much!
> Manav
>
Here's a good article on CIC filter design in both interpolators and 
decimators.

https://www.dsprelated.com/showarticle/1337.php

The basic issue is that all CIC filters require some compensation after 
the filter.  But FPGA real-estate being what it is, the post-compensation
   filters in the N210/N200 are all decimate-by-two FIR filters. Which 
means they don't get switched "in circuit" for odd decimation factors.
   A sample-rate of 20Msps with a 100Msps sample clock means decimation 
by 5, which means you're just getting the CIC decimator response
   without the compensating decimate-by-two effect of the FIR half-band 
filter.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
