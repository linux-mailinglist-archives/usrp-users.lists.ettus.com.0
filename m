Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B2EAACDDD
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 21:16:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55EFA386156
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 15:16:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746559014; bh=9E9aQRCXp9T/zWMrjqL7S0CKmHSxM8UCS6FWEKPk33k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fXMzliHHDwo3UM2Am3kxsyHRM3xfZcLfk42kLCB/jzTyLDkjuDkqTp0nPF8rbBGEb
	 qqFuw53bu//12gJSnPwja62by6i3Dp1dR2+tycupXYsjeu7Rej8JcD2h6BLGcGbvBh
	 Lc2mJtPWXhS4ANZVHQvZnDT5dnH9B3Nort9apS1/EAru2fTpVd0cvucGBmZP1ojtPx
	 gBzS6EAwsZeP9DbHcHMiVtaLFn+lkZdOgHw392jV2huSMZ4pJfTiQSDLtpn4nJGTCW
	 oeWB4WTuOKX5O5gBCJq5LH+zRrkEBWSR/5uiXD+BYSp5IgpyS8WJPxYbT9f4r3NMpH
	 gLTCAONS2tIhQ==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 40EC23860EF
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 15:16:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lfEvddvf";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-47691d82bfbso17572291cf.0
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 12:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746558961; x=1747163761; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=et5SST0z+ykh/02gPt35ibExmBmVfKYc9Cql4mzIuko=;
        b=lfEvddvfOIxc1nu0pEY+dW6EPfgC76r8pL1ycL036aoPNpF+FZsFFlFw/6/CDA+0UO
         L5Bfz50dG7iDs2GNRqrqI1mrVmZSes04xIB4h6ij6IxJAiyNuKit6D1MuCudW3thjacK
         WFffaNcpJ9qbHXz4B6Dp1x/veYXrAHv1pxppCkcvL8k7gaggRtIABfeXwCJjPtejKDzC
         72EM7HgCVIwg07PJ/Zpja0xK8XCSKcEmKj0NtsW/nY884j3H6415k4DSsnZ0BKlSIe1S
         eEeDA8+LMNgXTdz3/WR/nZAhTCza8V0wYTlFSLKqlLfWYmVJDmvTVgwHclHERCX3YCoO
         UABA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746558961; x=1747163761;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=et5SST0z+ykh/02gPt35ibExmBmVfKYc9Cql4mzIuko=;
        b=Ab3ZQMk/+hOdZbiZKz8b/AjrZHeFMXbgehhLlRbEYR574syHcAvL4FGaeELS+BHwp7
         1y5hgIaaUXm3W+9LtEaioFMIGaOlGJVVpYia+L0V6AxyQZRuaPH8wkXhJTmiNwh+dOC3
         7ni5OttkWqn6NEVHwFuQRjd7wUm+8T/Dcu2QAq2hFM0EMrqYvKuA98eXrR8gvivzC7KE
         alvmNS7PpO1oyFZH5NkZo2H/jxm4077aZgOzWCk5L3JZUeWhjOBYByZQVPZL3BNB5xP5
         0+pcKndzez6dQYyOiRsn+xbsOOD9N6jmpoLmz7mowk0bQiRrhbFtos9FWjJiyeomozZP
         e0YA==
X-Gm-Message-State: AOJu0YyAhaB25R48TYOVhUMOUu/7F0xef49FdrFVPG3mC6eDfIk6trph
	FKdnD7BAgCeg8CGfoT01WPhrBN9RYr63tQNc6QeKywxW9wMeYQ8D6cu0Xt5N
X-Gm-Gg: ASbGncvRbN/kUwTNt2lZOsNqkdc1Q1xAU24uvxmVApI+B/WxcG+ztPK+EYAME37TAO1
	M8c1ryMPH0qsZ3T8VpOrgVPuXS9r4oNaiaFnyYafwbhhGtknYwZLEuSw+AIFHGvsgd8woXpmtml
	Qp1NgPCCm+prPA4lH/SL78z5wtM/+oaUxnYM0SVXpzcpZG9Qz9yuy5lLv5JI4gYB0e/YKtN5pi+
	BQA74TNaW8we/gw7V5P/AQ8t5Uh01N7sdwq3pDKuJ5V9O6cXu31vtaVK3BP69p+J/pkPa269DEj
	7lMhVlMSxaRxGCOtGKz1W1cguGNoIAdyh+/tg9NkQbuQK2hOFQ==
X-Google-Smtp-Source: AGHT+IGai96B3tXaf5281tqUL4C4Su2QTTHFsnRMMW6iaGz7iIBwAr6IGQC5rzj8yOg0l/c+yjcvVQ==
X-Received: by 2002:ac8:5f85:0:b0:476:add4:d2c0 with SMTP id d75a77b69052e-49227294f03mr5173641cf.35.1746558961351;
        Tue, 06 May 2025 12:16:01 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4922174cc55sm1527001cf.39.2025.05.06.12.16.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 12:16:01 -0700 (PDT)
Message-ID: <5dffa0c4-78cf-4954-92bb-cdff513277c0@gmail.com>
Date: Tue, 6 May 2025 15:15:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <pLLHug2BLxX38I2dSTRVpK4lBSDEn1puUW7flUs@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <pLLHug2BLxX38I2dSTRVpK4lBSDEn1puUW7flUs@lists.ettus.com>
Message-ID-Hash: RGO3QBSKGIZZ6R36L6WISHGFXX6UQFK5
X-Message-ID-Hash: RGO3QBSKGIZZ6R36L6WISHGFXX6UQFK5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RGO3QBSKGIZZ6R36L6WISHGFXX6UQFK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 06/05/2025 14:42, whw@appliedradar.com wrote:
>
> We are using USB-A 3.2 Gen2 ports
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Does your system log anything unusual when you plug them in?

What if you try them on a system with straight USB-3.0?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
