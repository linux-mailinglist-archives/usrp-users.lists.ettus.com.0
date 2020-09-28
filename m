Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0558927B01D
	for <lists+usrp-users@lfdr.de>; Mon, 28 Sep 2020 16:39:17 +0200 (CEST)
Received: from [::1] (port=34456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kMuJ6-0004JI-2c; Mon, 28 Sep 2020 10:39:12 -0400
Received: from mail-qv1-f66.google.com ([209.85.219.66]:43321)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kMuJ2-0004EE-7p
 for usrp-users@lists.ettus.com; Mon, 28 Sep 2020 10:39:08 -0400
Received: by mail-qv1-f66.google.com with SMTP id cr8so546340qvb.10
 for <usrp-users@lists.ettus.com>; Mon, 28 Sep 2020 07:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=mNTCPgXPIj+OsAugfGJeuN03rc3wlyLXUtmCKCpWDy4=;
 b=N0Yy1uUqKfE6r5ND8IFRdDrIo6eT81ABWN2ypyYaMTnX+FxS/upiNNEyA023rVB4EF
 f3v7Vk41ddUnhuAlcx5QfZxCJrS4yiw9nkLTLnZI2CZWv1hFjPy4EuYlZP5REsBOcnFC
 JPasdZpxrGYIVQ5g7e7uZAXVyXzHaG2IosKbQ2PdMzzq7/GDN5ZYdP82HhBKNtBsyb1D
 ZHSNcxAln0BQav1LmmT51QdCJ755S2rdmBnnugtM4l+D1ezZRRAKYl8ooX31zp673VIW
 j4cEHIcM300U1p4lxxCVpVSKYaN605EZuICofxXx/AhMpUjfa/c/WZcuKmBn8a/T9+cX
 3DxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=mNTCPgXPIj+OsAugfGJeuN03rc3wlyLXUtmCKCpWDy4=;
 b=OzZQI5Cu/YcJ2QOIkfp85hh7j6gCyUCXhBvUgHOOiLNjoMPqvoy/TKS7LRkRL0GJFg
 xZuGxbr9tI0t+iJDRht6KNnSHHOE7xYXA9RFkcwcYm4JdtLuTXaYuqQT/kXHVs1iNNgW
 DmQ+Dk7hSGjyRPqRUXUJBGMzK6zd70OqRPHRHgVa6EdKbFw/3X3PHgcmC+4vkQNwpRLr
 j7fbiQPtwmcHfbRPi9qgYUp6cI8IhzLFOTOFfqLTB84fYqEGceTiRD8gwG6y7eq2ETxr
 q2hRXYtq5X1pKKG5poof1dPgQX1IpIgUY1rvsVfwa+6jv8HlGAvbOHP0dTYMy7UAXdPm
 LcFA==
X-Gm-Message-State: AOAM532F9ut2oSPRd4nb8k3uim1WZP/4E+g6Dhe8WyymSufONPAaQIhj
 lnFnhUub8qbS5TTFpc1BNe9fDp0TZ6ZxKg==
X-Google-Smtp-Source: ABdhPJxiPgwkE/gznrblek6sSzRt+KSiJgnmv/JovGsYqI8mMxRycfTwOfkFIhIB3EEazC93SbekXg==
X-Received: by 2002:a0c:f843:: with SMTP id g3mr12331311qvo.1.1601303907520;
 Mon, 28 Sep 2020 07:38:27 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id
 f127sm1162275qke.133.2020.09.28.07.38.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Sep 2020 07:38:27 -0700 (PDT)
Message-ID: <5F71F562.2030202@gmail.com>
Date: Mon, 28 Sep 2020 10:38:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CABV9QyLeTdpvOftdh2s49nKNhAVkukRo3eMq1bwv6ch0e8oajA@mail.gmail.com>
In-Reply-To: <CABV9QyLeTdpvOftdh2s49nKNhAVkukRo3eMq1bwv6ch0e8oajA@mail.gmail.com>
Subject: Re: [USRP-users] Segmentation fault when calling
 usrp->get_device()->get_tree()->access<bool>
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

On 09/28/2020 03:45 AM, Yu-Hsuan Chen via USRP-users wrote:
> Hi,
>
> I try to build LO distribution using N321/N320 and follow the 
> https://kb.ettus.com/USRP_N320/N321_LO_Distribution
>
> But, I got the Segmentation fault at
> usrp->get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true);
>
> I am using the linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_4.0.0.HEAD-0-g90ce6062.
>
> Please help me to figure it out.
>
> Thanks,
> YH
>
Is your usrp object valid at the point you make this call?




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
