Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 760D124121C
	for <lists+usrp-users@lfdr.de>; Mon, 10 Aug 2020 23:10:52 +0200 (CEST)
Received: from [::1] (port=39916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5F4E-00075A-Ih; Mon, 10 Aug 2020 17:10:50 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:34746)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k5F4A-0006wy-Sn
 for usrp-users@lists.ettus.com; Mon, 10 Aug 2020 17:10:46 -0400
Received: by mail-qk1-f169.google.com with SMTP id x69so9829137qkb.1
 for <usrp-users@lists.ettus.com>; Mon, 10 Aug 2020 14:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=LTl+cB4ZFPTfcTZoe4McE4qREJnw5iOtcBIpqmL0o3k=;
 b=cDQcc2io+wKs3Dc8E1kKRwjv/IlGb//6icPHl73R6ImBgywvj1gCk5Wli/KbEu4kZr
 I4gvochAldlQAwaPJ7azT/DHx3KH3RoDnY0GUZH7RbBruo2dXvPwY5vjKFZs9RlYyWUx
 8Wvc1ER2LdDxxhYQb2Ls4Mwh4tS4p5TebgtEd+o+VxzzWzCqoUikvnTUkv5yOa5vcpo6
 Le1veKSsAwIFQGZHvnRc8tGrqo6ZF16XFFvm+gfmz8zWGYzlYkOfWBYy/N73wb8D5/P0
 o7nWlJyii6jdl6vTGr5QMNtWrt7Cdur9EEgVmHY9n5kBwJMYs3GM1El9+jI+VFVU7CjA
 mh8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=LTl+cB4ZFPTfcTZoe4McE4qREJnw5iOtcBIpqmL0o3k=;
 b=B3uAUElDxCIHvxE7FpRyFwdX+MXEcmhgA/XaYsds9e1X0oNfRQGm4abAjSDPrOVLb/
 cQ02ZaHfp4djbo0qLVFqI/hOqKc/tnzMNAFWDpzbfsoVfCtYi58ravWj3TqjKDQM/SvG
 +dvUuO8s9Dj7oZ7TLvercyZXctHklb3E7L5i2VGa+jS+m8pBDp+OVxVK8y0RXL1BGqpZ
 sfwK+iSjbI1jgmvbpPouLMJv6M9OQOVkOzW6syicLA7cRgy0HA18IU0UBj/PJnDnNSLw
 RZoXlTUO7gmHSwfKhSz6xxkKyxoc+pQKe2dsx9bSIjygEeY1QhE9K8k4pARy/r955Ba3
 Etew==
X-Gm-Message-State: AOAM5326K9U0TkbbfhqoAJRWmwoOT7xUsU/RxQRCLpPEhnvTgk8pySwc
 F28Mpu3jL1mAGgR7+0dKwMIdXr43zSA=
X-Google-Smtp-Source: ABdhPJx6gHMyjb6Dp5GvVp3amhnLUq2K84E04LlAsmkUvsMSxyroiejcQeyOQaJDalQHQv5E8BnpWQ==
X-Received: by 2002:a37:a1d3:: with SMTP id
 k202mr28502715qke.143.1597093806082; 
 Mon, 10 Aug 2020 14:10:06 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id r48sm18165477qtr.17.2020.08.10.14.10.05
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Aug 2020 14:10:05 -0700 (PDT)
Message-ID: <5F31B7AD.6030000@gmail.com>
Date: Mon, 10 Aug 2020 17:10:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOJfBDcLntSSPf1Ng8u4j8hvxOtfDApcnQk5tM+SP_zkb3reMA@mail.gmail.com>
In-Reply-To: <CAOJfBDcLntSSPf1Ng8u4j8hvxOtfDApcnQk5tM+SP_zkb3reMA@mail.gmail.com>
Subject: Re: [USRP-users] E320 GNUradio question
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

On 08/10/2020 05:07 PM, Chintan Patel via USRP-users wrote:
> Hi,
>
> In the flow-graphs that use RFNOC blocks for E320 devices, is GRC 
> installed on the Zynq processor on the SOC or a separate PC/host?
>
> Thanks
> Chintan
>
You don't need GRC at run-time.  It's like an IDE.

So, you can develop code on a regular PC host, and run it on the E320, 
provided the versions of Gnu Radio and UHD are compatible.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
