Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9587B2AFB95
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 00:02:09 +0100 (CET)
Received: from [::1] (port=51940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcz7r-0002PR-T7; Wed, 11 Nov 2020 18:02:03 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:46127)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kcz7o-0002Ib-8a
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 18:02:00 -0500
Received: by mail-qk1-f181.google.com with SMTP id h15so3517197qkl.13
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 15:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=VBkHNJfADi1ftUygUhXcko7fN21rEgw1f4wwKD/WIjY=;
 b=gkVAMUHa5Y2IHzWGYx8VjC6IxO1lTuvxuiA/8qaqtp97iERH43p0V8AYI4+bNN/ZvT
 K2yCPOgASFRIvRtMpq8HBHZnRLujxuuMErCRdAZaA7jo3Cc2CkC1bXdRG5iQthLx95bm
 A6OsGRyJXx9mG14RBqgzTRgP2hGtcLBBrx4oUIQcdihg4QeF0LuirGmmj/YHIZGFKSEf
 bR3Vpd9QELj1KMw0Q7ZW8/TqsIJ+LaoTOkMEgFG5qNfFz84gWaetYO+WJzFiuAH6Eq88
 VShlrti92Dfwr1V5EqSG2q3khnVQbJFnDrPwSMcS9wWxyNpsdffewy6DXIqIQM88oFLi
 OUtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=VBkHNJfADi1ftUygUhXcko7fN21rEgw1f4wwKD/WIjY=;
 b=ANfh3Yvn7VnetfskdZ+XyYyfv5avdqPih1LLMMCUPYusZ2K6iwbjRTLGwUtGId1i7Z
 GaUIKE7lb1w+FaTiZOsg+q69U1SB2oOxGBwz8P/XoxoCJjzeuBOfZbVnFJJqzQ9ra/pE
 vlXUmkI6nS/Y+UYUpwiwwbt9aMBIQr6ZYh/umsRy0m9QszGCACW5gAyq9fLcmJ5LfsIG
 lEHupuDcE+jp4OUYAxN0hHcZgIUjcM4xArf9uQDQKjqTpnIfnBDLuh0qb7kPjwGVV1HG
 d3fwq/DxVirhmMiZmyKGf5gntuiTE97kI1bXWTKQNmWlOdpHU1Jt3O07NtwJC4I/JgYl
 9L+A==
X-Gm-Message-State: AOAM5304efKZVTsBVqVP0qlYuctyHewo6gpkNgko2Ewhm7c87T+49cLc
 lAb642oKzWNfYtC9wdxW/RsuFuCAmdg=
X-Google-Smtp-Source: ABdhPJy+IMqCmflfsc2Of07y7H2p2xyBsy9Clei4gqPDHl5M652pESE27WbNa/YIfQqifN8IHR1huw==
X-Received: by 2002:a37:ac11:: with SMTP id e17mr26955567qkm.238.1605135679561; 
 Wed, 11 Nov 2020 15:01:19 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id r41sm3813788qtj.23.2020.11.11.15.01.19
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 15:01:19 -0800 (PST)
Message-ID: <5FAC6D3E.9030409@gmail.com>
Date: Wed, 11 Nov 2020 18:01:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMvz+5awThbHfeqxf_hy2fJE0e_u6FG59hn8SPLiD5Lyi8FaSw@mail.gmail.com>
In-Reply-To: <CAMvz+5awThbHfeqxf_hy2fJE0e_u6FG59hn8SPLiD5Lyi8FaSw@mail.gmail.com>
Subject: Re: [USRP-users] X310 with OAI FPGA Image Compatibility
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

On 11/11/2020 05:47 PM, Matt Lanoue via USRP-users wrote:
> Team Ettus,
>
> While running code to simulate an eNB, I get a failure because FPGA 
> compatibility number 36 is expected, but 38 is found.
>
>
https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_load_fpga_imgs


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
