Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B3E3E36ED
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 21:15:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D482383EDD
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 15:15:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QimiNznn";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id CCF27383E9D
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 15:14:22 -0400 (EDT)
Received: by mail-qv1-f50.google.com with SMTP id db14so6789340qvb.10
        for <usrp-users@lists.ettus.com>; Sat, 07 Aug 2021 12:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=iW54V+cJXUApmcELF3j64AElC/zbnuN+yAadSnpuSss=;
        b=QimiNznnrPDrXeiFb0SL4QXV0X3fUZRSlbZJs6aRqVI8IGO3E4lOdyzOgnjbAZ3m+U
         pGiZgUHMGfVfE+gZJ2NnkTNlIxC2RxDiHgOv79lbh58ZSmhfV6pGy9wjCIyLzg/FYjXa
         ciaPJx2kAqthGVis/cIlkM2JLWTwPkjhQbtBIj2dqxx4ilm4tvvuH/1nKEyjNM//Gbcs
         ajtHgbw4Yk9Xbs5PmyTwuOzE96TShxIwSf7GuNftYCRCAlUerWseZDRzKRGHAwTOGGFn
         /IUzjyVZA06do6F67iqLZwhmsAsPAQ9pdvI1P8jOdu1PsVtfcCxIlFwVRcbNdqftXZNv
         Kfrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=iW54V+cJXUApmcELF3j64AElC/zbnuN+yAadSnpuSss=;
        b=BLOlxe1hv4adZF+rSIhZdhVvZbtJialH3GK0JdKeZVF1g7KTpmCU51whOXqdw7CiNB
         mrfdM7sVcAO/wzO7Y3UgfHsYk7vujMmSYIZ0tvNfUM7ZnAylKe9Uy7iPJ/zN6O7xSULt
         yHP8wLAmaQFN9FwMuYBzcufOUAIqC/Zap1BHQYM3QE+ccNuaAFLFhwro9wU/E8+BW4kh
         Nb6XxoK6onHWILdOaCld5yMUYIlR/s2ZazOAXZ6A3M7+WQ10W97A6RRPRE4iUFjXa1HD
         k6SR9JDEWwUAKj2utZv0HZQA81z6x4HP81ZjBmcv2+xO7R/xFMiEIVTI7p37+0HNHfOI
         tnVA==
X-Gm-Message-State: AOAM533FAG+jsZ6DAYZZBf0kSPOxLm1tgEH+V+8ZZdADrIUOOm8nhWn2
	1IZBGKV77tZxL9+ROf/ZgrcQrFthG3ny9w==
X-Google-Smtp-Source: ABdhPJwPDU/vrSQ3CxaNh3Y3QzSGpKILpI29pWI4PPjERApwRFIZRoZJuvrL/IDJcGa2JxR4ujWoCA==
X-Received: by 2002:a05:6214:10c4:: with SMTP id r4mr17194081qvs.58.1628363662051;
        Sat, 07 Aug 2021 12:14:22 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v4sm6491625qkf.52.2021.08.07.12.14.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Aug 2021 12:14:21 -0700 (PDT)
Message-ID: <610EDB8D.1030606@gmail.com>
Date: Sat, 07 Aug 2021 15:14:21 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <EdQ4IXev9I14TLVo5A2KiRwWzjC0gw4jhSYa3LJE@lists.ettus.com>
In-Reply-To: <EdQ4IXev9I14TLVo5A2KiRwWzjC0gw4jhSYa3LJE@lists.ettus.com>
Message-ID-Hash: XZJ6IPJPAOPQVXRELNSJVDPMBABX74NH
X-Message-ID-Hash: XZJ6IPJPAOPQVXRELNSJVDPMBABX74NH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 ethernet connection failure
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XZJ6IPJPAOPQVXRELNSJVDPMBABX74NH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/07/2021 02:59 PM, xiapeiqing@gmail.com wrote:
>
> Problem solved, hoping my note can be helpful for others. This device 
> was previously programmed to use non-default IP addr, something 
> different from 192.168.10.2 and 192.168.40.2 in HG image. I bet the 
> previous owner was doing MIMO study.
>
> To bring back the default configuration, re-program the EEPROM. Steps 
> can be found in 
> https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices
>
> FYI, the hardware revision label in my unit was placed in a location 
> different from the web-page description, not an issue at all.
>
>
I was literally about to post this, because it sure "smelled" like a 
different addresses issue, but the context made this seem like it was a 
factory-fresh
   device.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
