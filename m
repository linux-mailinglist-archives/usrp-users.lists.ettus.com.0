Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6CF74FAAD
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jul 2023 00:09:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24CBC384127
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 18:08:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689113339; bh=CvIC4RgK+lCzJH35c1Ofnd5den6V0abBmneGBCKlaZ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Sic4yGYtU7IIoURgfFpe8IFLFkePQI5bqUWtk0TdJ9o7y1ja2X9Bpv5iDF/gF55K2
	 P57B3vq3JoII5VNhiQTKgXq/Vqvlvf3vIutLQHSqf6TYIJnr4BCYZQ4M+vjlZyCPVQ
	 3vkCIczTsnjY9YsRZ8lSgDe7msMI9reIFZwz8g+UCEEgZ6zYlt3uX7mINv+Jz70Vw2
	 jHrwod38WaaY3rnq9RdLsUVYDhYtn/YGVJPlwCfj2DP8I0GT2/TrTf7ptpT+VjJn7w
	 a4qntSRoXAHkKZr2arhk+veOp34ykF+PF7BnzcKKuEZhLmXUn6mHjMFOPRi3kypQiC
	 T+2nsFTgeCF/g==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 82DB6383D37
	for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 18:08:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dazm0sQG";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6355e774d0aso36157356d6.1
        for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 15:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689113306; x=1691705306;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PGcMwcPYGwoLlTf9QQ4Z/tVTNnxC70HORNGl4jnifVk=;
        b=Dazm0sQGrxAXelljokw8uK+ccoI5w5wqR3wHe8MDItY/1l5mD+UwIXQqDLSVh6u2Z5
         i9jSRa9H5ymc9LTPEaUsQnVIT39jGurCmdr2OzcZUnHe0xJTBQSf2Dj3nNTDnsqcbsHh
         vcwdjVgYzI1W/9Qdx74Su5313ntTMK99O/iQV38GjSPFl6Vx+98yrxJRcYK5oOUOJXpN
         6sjA8vKrSyUXvuU6HJIm1h4sLdxIpVL6gz7nJb4nXjmQM7xQoWxp0QPhAqTZMGOOBfjY
         QUbRiRBZHLQ5EtunEf2Fzng/eKmzUPKJ+6DqExUVRfnFzxhYhCHcXIUmgFx9U7l9yAei
         buqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689113306; x=1691705306;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PGcMwcPYGwoLlTf9QQ4Z/tVTNnxC70HORNGl4jnifVk=;
        b=j4aVOh9fbFc7aHeUEzEkMWhsd1o+Hswd8QPoJU5LsrCHbiLIBZ06EHtOMZCmJGGn7X
         lhPPv0CTwKmRDDz1UJXAeyCVbpk+n499ACjxziAFaSa9XF6FLNQH//uJHb7jr41EGUH4
         dPOYnL2tAoPQOESjxKCvP29Fu0B4xU/smOPdE35YC7onPf2JmKArvi5UNHTq8ObA3DWe
         d9wHPMCI4gpVRGvQMeHjaEUmVOSwQILZMYVhR2RcwGxoyjNuxb4s3+9lRLLzgoRF3QHp
         Y4SWkKrNQa7Byenod3D9lGM/89v6E9T7ggIFrdh27br0zy3U8RgMpyprmouCJAyNpLPR
         a0uw==
X-Gm-Message-State: ABy/qLai5sD8RK/8+wGoC+8vwluSdV8giNvS6IgxzM2ZDBOy18R/V62P
	wYElwyoSClI5SaKTSqPDhNPlofcb/tU=
X-Google-Smtp-Source: APBJJlG8aED2t6P024cZJ+ZKViGkrwZwEtBrAjIt2tMHfES5N59Y8WttvOwFYPywaWK9l3fRWg3Wng==
X-Received: by 2002:a0c:b28e:0:b0:636:33c:b944 with SMTP id r14-20020a0cb28e000000b00636033cb944mr14174704qve.4.1689113305751;
        Tue, 11 Jul 2023 15:08:25 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id r4-20020a0cb284000000b006363c687cf6sm1540184qve.128.2023.07.11.15.08.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 15:08:25 -0700 (PDT)
Message-ID: <b72f8b8c-6041-631f-f648-cf87779c6553@gmail.com>
Date: Tue, 11 Jul 2023 18:08:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9YnclCyuM8dhvKfPda6gbbu2tiFMPovDGKpimJRU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9YnclCyuM8dhvKfPda6gbbu2tiFMPovDGKpimJRU@lists.ettus.com>
Message-ID-Hash: RNZIKSHOD2AQF3IFHLKHAKW3SUKIVNIU
X-Message-ID-Hash: RNZIKSHOD2AQF3IFHLKHAKW3SUKIVNIU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 channel synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RNZIKSHOD2AQF3IFHLKHAKW3SUKIVNIU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 11/07/2023 18:05, pistachio6981@gmail.com wrote:
>
> I am trying to use all four transmit channels on my x410 USRP. Each 
> channel needs to transmits a simple sine wave. I am having problems 
> making sure each of the sine waves on each transmitter has the same 
> phase. Is there a UHD command or structure to accomplish this?
>
>
Last time I checked, the X410 DOES NOT support phase-coherent operation 
across all its channels.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
