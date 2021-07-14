Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1553C7F30
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 09:14:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFA643846A0
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 03:14:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="AAfl8r8V";
	dkim-atps=neutral
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mm2.emwd.com (Postfix) with ESMTPS id B1096384454
	for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 03:13:51 -0400 (EDT)
Received: by mail-wm1-f47.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso2856807wmc.1
        for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 00:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=ScKzfMSoLg7biCSMY4kKER3v7iZzN3KSTcg9PBYjg9c=;
        b=AAfl8r8VCxOE7XI4iTP1fwwi1oEIDcot/TJlm5edbYBpNPBxUPcH6XuIhFCc5j2EPx
         VB1hUpx0UUhKK4aX3ntsHbBnOmu78RCd0epeiSUpAv2ll85pDi/8/yyTPp/kq5ZEUZwA
         4sktuXKFIJSvM9nuC06TKcho8D13Dm3qDmwGqK0Y+XQqw0QRjuxds7Vu1bDHypK+A1q3
         wNc6T4Fyg8J8KEZG0f7lnOuHi4WcL1XqbTRGm9+AKavoR7qsW8e0f1Uh71z9I93scjLm
         1soRReLGbmmoQK+n6EY73u0cmcx6DL8yjj8HwVVych8thK+W8SWw2XdbUHeY8SaNfBGI
         NTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=ScKzfMSoLg7biCSMY4kKER3v7iZzN3KSTcg9PBYjg9c=;
        b=Sy5WgYli0bCF5pd0AqOz/ZHtU9vPM+IhJc1OYhilDG7hKa/x2z09qaHIOjx7cRwHii
         L9K05aD2I2Gl/r1Mesi420N2YZEP7ngdkpHsrlBJBQ82D9OZ3RNPT9idUHKHkfgCx+oa
         88n8ZRL9eyBjYkx54VIDCYmHCyY0zzrqyDahn/W75NJ8DedfnLBEWVckk9NIfauMYm+n
         P9sO7IjcqixdPKgQPUT4XFlJxfeUyvmwbDPturT9+DvetE8038ecwBLeb1QNpGrE49ZP
         D9Res7wmGRUSEQXq3QXliV+c/rcS1qQFsaM8XIvhjtGM+MduTmkLSR9eApiEV5eLM4PN
         H9PQ==
X-Gm-Message-State: AOAM530ENWl9VG94W2x5vgWzfoQR5fy9wuw35MydDU89CbAunn6DUoED
	hZ3OHPCStI3T/4lHBSIdlMZzWkIXd0Avjh/K
X-Google-Smtp-Source: ABdhPJzeULUdBvU5nt+GA+hDMn+t+rGn7Cguuy90EY+mONZWC39n/bp4oQCkq0FSYqocRCNNkAnJmQ==
X-Received: by 2002:a1c:4405:: with SMTP id r5mr9624907wma.181.1626246830508;
        Wed, 14 Jul 2021 00:13:50 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-85.hsi.kabel-badenwuerttemberg.de. [46.223.163.85])
        by smtp.gmail.com with ESMTPSA id x17sm1518905wru.6.2021.07.14.00.13.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 00:13:50 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <SN6PR05MB4429867C3429BF6478271D6BF4139@SN6PR05MB4429.namprd05.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <ab24dc84-904e-df78-74b9-73132c14c404@ettus.com>
Date: Wed, 14 Jul 2021 09:13:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <SN6PR05MB4429867C3429BF6478271D6BF4139@SN6PR05MB4429.namprd05.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: YQWHGUHRNDEMAWEQOSJIM6YWMVJVGDMW
X-Message-ID-Hash: YQWHGUHRNDEMAWEQOSJIM6YWMVJVGDMW
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Maximum data rate using multiple B210s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQWHGUHRNDEMAWEQOSJIM6YWMVJVGDMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Weit,

the maximum sampling rate of a B210 is 30.72 MHz per direction per frontend=
, so that's
61.42 MS/s per direction (TX and RX). That times 12 bit per sample makes 1.=
47 Gb/s. So, I
don't really know where the 5 Gb/s your USRP might theoretically go. So, I =
must admit your
question makes little sense to me!


Best regards,
Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.  If our understanding is incorrect, please=
 notify us immediately because a specific authorization may be required fro=
m the U.S. Commerce Department before the transaction may proceed further.

On 14.07.21 06:37, Weite Zhang wrote:
> Hi,=A0
>
> I am testing four B210s streaming simultaneously and using a laptop that =
has four USB3.0
> ports. I found the maximum achievable data rate in my case is much lower =
than what I
> expect, which should be 20Gbps (4x5Gbps considering the speed limit of a =
single=A0USB3.0
> port is ~5Gbps).
>
> Does anyone has used multiple B210s connected to a single host PC to stre=
aming data
> simultaneously and is able to run a data rate approaching the maximum? =
=A0Are there any
> specific hardware requirements in order to do that?
>
>
> Thank you,
> Weit
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
