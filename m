Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8325D637
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2019 20:37:38 +0200 (CEST)
Received: from [::1] (port=54808 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiNer-0006N7-Tw; Tue, 02 Jul 2019 14:37:37 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:44436)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hiNen-0006Dh-S3
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 14:37:33 -0400
Received: by mail-qk1-f177.google.com with SMTP id p144so15072656qke.11
 for <usrp-users@lists.ettus.com>; Tue, 02 Jul 2019 11:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=HC3VqbYBWZQthKch0nt5uoYNaMFNkOw6K/J/sCr2/mo=;
 b=IxuaRpSuKyW4BGoomu1tnMLjSIGPPlaBvOXS49NEMlLE7ZYtfxrzZHjDnMapoGdY3v
 e5fE92OEc1njHgSP0eSZgNdnG3PTNJIiOCp/Lc6rS1OR/5cESPOAxaM2IJKI7emkR+SP
 hdtVvbOjR0Hnic0KTb/gkBOei50xcf0Y+CXkzLBhkNenh1/iNAxCRnBkPdfDHWT6t9fH
 nU2kqy0L5l2jqzqHKDVJ8LimMefQ3AKdJ8k5Pf/6K214K3/QA3UHm0AB0NlZ7DDJWTEz
 vc+ChcxRSIaGSFTDsRpmf2mlmtn1UZj4dr07kDQF+cZL3UqeOYFzzjFnQiFyyfBE+LjR
 Oq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=HC3VqbYBWZQthKch0nt5uoYNaMFNkOw6K/J/sCr2/mo=;
 b=W+/wIee68q61m/Sh/w7M00ViwMCzYKAtxgX6n0tXH5j/aVBHOal4cID6nBjJxMbMi0
 BXyh4NulTcIhPRN4PQShXhqVs7KX+Oy+lLkZND8i611Du0velB1xxkXtkTs8mlFoEBjT
 vx5IEA+9TUjjK3alrmB9Gwwm3Ujt/4EQFRUon/tZz2NkHG0Wg4BL/+OcdsnVpVgGU7P7
 fL4CdhMHemmSVJ8D+2FWKSfhcSIYzFSyHlDPHNWcTsZO2YQ5vxShd6oGVKQeEYQzkIUY
 Gf8VpK/3wd7qFOUXlO0AzimMGF6ONo5+o5FyrJXPaQkGItKN3i+x0BQfAeYArL/2fK6j
 nnYg==
X-Gm-Message-State: APjAAAXqjq+p3C557tRzIWnANhAym0zpXMt3a693jN1w/X/vaU7PAZc4
 vKBNvtlU5RVfZFKMB0nNjzr6244c
X-Google-Smtp-Source: APXvYqz6lDIfvK0vK2a9cU0bGo4UUFVX9d+juj6yPprRcVLRDbVZsM90T3w3rg4QoqJ1w1YjS1j+vA==
X-Received: by 2002:a37:9d1:: with SMTP id 200mr26199616qkj.306.1562092613309; 
 Tue, 02 Jul 2019 11:36:53 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id i27sm5513824qkk.58.2019.07.02.11.36.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 11:36:52 -0700 (PDT)
Message-ID: <5D1BA444.3060401@gmail.com>
Date: Tue, 02 Jul 2019 14:36:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPkENw_ZqqrYix4Wci0b6=57vvMgSzcAmQJOMcLBfqwt89k8_A@mail.gmail.com>
In-Reply-To: <CAPkENw_ZqqrYix4Wci0b6=57vvMgSzcAmQJOMcLBfqwt89k8_A@mail.gmail.com>
Subject: Re: [USRP-users] Meaning of "S" output
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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

On 07/02/2019 02:10 PM, Alex Roberts via USRP-users wrote:
> Hello,
>
> I have N210 device that outputs a stream of a couple dozen "S" to the 
> console before it stops processing samples. I say "stops processing 
> samples" because when I use a GUI sink in gnuradio-companion to look 
> at complex values being sent to the USRP, it updates once or twice, 
> then goes static after the stream of "S" is complete. What does "S" 
> mean? I can't find any documentation on it.
>
> Thanks!
>
>
I think this indicates a sequence-number mismatch, probably due to your 
underlying ethernet hardware dropping frames.

Can you share your flow-graph?

What type of computer?  What type of ethernet interface?




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
