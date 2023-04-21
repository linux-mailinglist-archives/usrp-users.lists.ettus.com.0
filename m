Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E486EAAF6
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 14:53:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71F8B384209
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 08:53:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682081591; bh=8l8MQ/ENDewfNKsc0Xpi4lCVtljEWfjjjRJpD3yqIrY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jJlSD9UfKjDyrtfOpIXJ2eN0eevYG+oMU47XmWc0vI/xDFJuc5TAtlArxQ/G0wnMR
	 AdvcNGF+UjBRc+/6otYp0+1k+I+nIp1FPE2/sjrOG3gotC6XDeGZOurbHBwQmQVs56
	 tU/FQdh4DYPWzJjeDKHjYSwaprgjswOwoj/ZxUPUTS03GhNMKvXBC6abFCydChjn1r
	 ZQZodswXB9lA69R9MtDCG2H4SWh5WXC93Vo7KZKDO0JTjfeP+/OApwgwG51a3j+v2f
	 MV0Iv1KP2pDSWEYrtuhItQ8qwm6jbIa50+TLOXAcFbbCy3l3EVXXxx8n3XGnT8saZz
	 jHxDgusWDYwig==
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 0CF8C3844B1
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 08:52:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="Skj+LjAI";
	dkim-atps=neutral
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-3f192c23fffso4068225e9.3
        for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 05:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1682081547; x=1684673547;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3OC2ZY3Wnad8J3WP+uYq1RS/6XwhumsD5brTwYYh4M0=;
        b=Skj+LjAIcg/ffazD17gWnej9IKYKh4NuOTiYdp6ykioeh/tuHY1NQzaXziJDC6bsN3
         BBwrRitkNqPkqxfZTIzhZheQdphzYn0Yu931/exo825igsNtKkNNESr2fQnLGtrZCvJv
         yKq2DdKbHKXENcQOZ1zN/cLhbTGfeNMpFWNp5s51P66r3jgJLW/OjvuSglKIkxrLB9Qi
         F0NmmltirQH62P0CgiILrXxcMYHyekdI+lXAI4BDwAeR9R2vE2HFjQ/BEvIrVncopJI1
         dk6s/DfLU/J3TOirbDJ80QRzXcZlrtAtgUAD/LPxjfhdvK9Pg723COmStE9vNSGXWVaL
         uhQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682081548; x=1684673548;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3OC2ZY3Wnad8J3WP+uYq1RS/6XwhumsD5brTwYYh4M0=;
        b=TicqVX/qXoMaDs54XzmwvTnjaUIM7IPLWInIJ9yr2xMWmgIpbm9677qsgKTnndCrCK
         FhKjScOTW3vQpqOmUGpjHh+YWLEGnGa7pLaEOaGVLtT2wB/spz5V/uo4RtEcbSnOqx6U
         lmxhoy6+3QaCe7rtqK9djGZ/nzKXGV2IXJVRHVEg0za/YwJKQFnR+poB/OOpPNrRHmoG
         J732K8Mo9HXk7IdY5CZAyupbPI/qw0fqD/Xd6YsnGSQHjenFVa+S5eYr6C3wZoWqrDeK
         OrEByV6rFYVK3ms/7YfdRWhX6qrAIEkXv/oYV7kGZw5dZn+FB6IZyY6wlymoQDPJ/CaN
         BRbA==
X-Gm-Message-State: AAQBX9dll415TpqszbGswqXeL7ukV91wBc/qq2N5In1SUjUzRHg1KAW9
	iTt/s7xXIRoWVq8/BBueJjOKJvF8fu8Vj7W5gcpnKg==
X-Google-Smtp-Source: AKy350aPNsajgo2vn2O4G64IjQb4sCZTCHdMYOr7i6AOXM+Vps8XszIEx3LoX1dmIRdNic1Bb8EIJg==
X-Received: by 2002:a7b:cb50:0:b0:3f0:683d:224d with SMTP id v16-20020a7bcb50000000b003f0683d224dmr1852187wmj.9.1682081547658;
        Fri, 21 Apr 2023 05:52:27 -0700 (PDT)
Received: from ?IPV6:2001:9e8:385f:1a00:998f:ca6a:6065:3212? ([2001:9e8:385f:1a00:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id q9-20020a05600000c900b002c8476dde7asm4313501wrx.114.2023.04.21.05.52.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 05:52:27 -0700 (PDT)
Message-ID: <eaa094dc-31d8-0fe6-8267-77a20d9b2f66@ettus.com>
Date: Fri, 21 Apr 2023 14:52:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <F31D8B08-5590-4DDF-973A-104B8F61C219@md1tech.co.uk>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <F31D8B08-5590-4DDF-973A-104B8F61C219@md1tech.co.uk>
Message-ID-Hash: W4NQ2GNV3FMNYHOAWI6K3FYIDRIZ4MM2
X-Message-ID-Hash: W4NQ2GNV3FMNYHOAWI6K3FYIDRIZ4MM2
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200-mini not detected
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W4NQ2GNV3FMNYHOAWI6K3FYIDRIZ4MM2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Ian,

that looks quite good:

On 21.04.23 14:09, Ian Chodera wrote:

> Bus 001 Device 008: ID 2500:0021 Ettus Research LLC USRP B200-mini

So, first thing I'd try is

uhd_find_devices --args 'type=b200'

to force UHD to look for B200-series devices (which does include the B210, and B20x-mini 
variants).

If that doesn't help, might be a permission problem. How did you install UHD on your machine?

Best regards,
Marcus
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
