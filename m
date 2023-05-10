Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 938E16FE54F
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 22:42:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95279384655
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 16:42:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683751341; bh=V3VEkku11v91zoRHkjdqjswDscmpz04Wm3A9MVBivxg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SJ3Ge70xilwGjDDULCQi5Mu7V/60CdcdGibJiGzhYO8VjFHbVr9WKmHiYFkL1XIpW
	 78ywwJLtkgKmZkEm0Hh9F45C5C8QftLjUXwRZJra+5uhkDYQCP9hEWdUeq7Zsjm7Ov
	 iKT41uBXCN2MQEo+jU/R1P5X3HGzJ9Dl+6sYwD70Zfyo6iVFtlRTfsjXr4e6zUh+np
	 RVm7zwi/tqaojPReQsguthOv74PqW/XmKwTIz8XukHT4731JJo1EltAsH/N9JbHXUe
	 7mqVqFIsIdMA3fj6Znuxk9zmBLzdJNA/EHUjlCLlWqUncgOoqJIMowGQRQi9ohdX80
	 JmRD6c4p1ET5g==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E325383CAD
	for <usrp-users@lists.ettus.com>; Wed, 10 May 2023 16:41:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FD8J6DzL";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-619bebafb65so37917026d6.0
        for <usrp-users@lists.ettus.com>; Wed, 10 May 2023 13:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683751304; x=1686343304;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pafMxkpn9W3eQj4CmVG6ONsZ5udhq/fTTzMeMoDTY30=;
        b=FD8J6DzLoKRyWSWEW8ZL6n2gbPd01zPQ6jRNZsudFMp4+wIGh3qWBjPxO6pTQI3MTD
         X1G1/ZhrAYCUvRBTTtADtswP5L2M3tQJLbKFcOV16BIygrmBH0FwFIj8KlltXOwwvBUD
         Udp2zVTcPZGCs1/GdEFLeSRv52TQAR0+i4lCppwkUlCaavhquLbhtEPjK+bcq8Chytlf
         htauQxp4UIsaJ1BhLloAZ1CQ+FI0d2o9EuXw5gEH5eb3iWoQxxlXVRYPux0EfuwQYHp8
         BtuRBUAhtUZIX1ZeRy4sV45+QMZV/iq/DNnftH7qY996fpsLPZsiCNSFRG52ezlqdAKY
         f7WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683751304; x=1686343304;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pafMxkpn9W3eQj4CmVG6ONsZ5udhq/fTTzMeMoDTY30=;
        b=Qp6G43sudL1omzX4VeG6ES8G/2zZUZksy58dxinaDcdQKqSveHpukPS6cHmoyrinmZ
         xKSXzZ7vCi47Xfk/0KsMRlS4AH0vgBbGunJ4kWBeQGCgW8jMd3c5uv/NroaWneUvzjnj
         5jAl7LOfM//TEfHyF7HCWvniu8WgPr/1ChJ4ao1IQfkmLyEOhEvubboWdIPxN4dbBTai
         /yo/SWLG5VvbEQiSKQanC/+xztNB88UMk+Xu3gMcHBp64A16+GZxS53EVYrN0jAb/HnC
         tzC0cTCkbl2D7qCuhoEfd/3qhGVUpEFMC3DcYy9SkUlvxkplLZAFMfnGwueRsteOTecU
         +m8w==
X-Gm-Message-State: AC+VfDwwjBbcBl9DgHQlSHoIc2qr4CZG3hlXR3iLJFrM35IMEYMWwIzH
	m8FRTnoY1xQ8K3juAmLyViwtAr7RHgM=
X-Google-Smtp-Source: ACHHUZ5eG9NtVvi2bBMJw3r5Kr2YvEz6EtpCgjEihmorwsIL7Goz0jCZ6SCX1CqnjjRfHuW2lLQUEA==
X-Received: by 2002:ad4:5f8e:0:b0:5f7:8b31:4522 with SMTP id jp14-20020ad45f8e000000b005f78b314522mr28892004qvb.5.1683751304384;
        Wed, 10 May 2023 13:41:44 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id d2-20020a05620a158200b007577ccf566asm2463123qkk.93.2023.05.10.13.41.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 13:41:44 -0700 (PDT)
Message-ID: <fcb5da47-1d14-7bae-7150-3aaae6ef6797@gmail.com>
Date: Wed, 10 May 2023 16:41:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <JBlKpPgtdo5G1e2oA1LYO6Pqn2aagtT2mvqIBAEp1I@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <JBlKpPgtdo5G1e2oA1LYO6Pqn2aagtT2mvqIBAEp1I@lists.ettus.com>
Message-ID-Hash: OBQ3ADYU7LA4ZTLEC5BC7I27X3BSXJGE
X-Message-ID-Hash: OBQ3ADYU7LA4ZTLEC5BC7I27X3BSXJGE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting GPIO Input for RFNOC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBQ3ADYU7LA4ZTLEC5BC7I27X3BSXJGE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 10/05/2023 16:37, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I currently have an application that needs to take GPIO as an input. I 
> added the GPIO wire using Vivado to my custom RFNOC application. How 
> do I set a GPIO pin as an input in the uhd software? Do I also need to 
> build a custom application for this?
>
> I saw a function usrp.set_gpio_src with a some application for custom 
> RFNOC modules, but it appears to be only applicable for GPIO Outputs, 
> rather than setting GPIO as an input.
>
> Thanks,
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a57f25d118d20311aca261e6dd252625e

Might be what you're looking for?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
