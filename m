Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9F43C1B3E
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 23:49:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0B0E3842C7
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 17:49:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="Zui7N8TV";
	dkim-atps=neutral
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mm2.emwd.com (Postfix) with ESMTPS id AFFBE383E8B
	for <usrp-users@lists.ettus.com>; Thu,  8 Jul 2021 17:48:37 -0400 (EDT)
Received: by mail-wm1-f54.google.com with SMTP id i2-20020a05600c3542b02902058529ea07so4947608wmq.3
        for <usrp-users@lists.ettus.com>; Thu, 08 Jul 2021 14:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=eBMKVMgcmAQ+INOcIM8CDLSk/or+QAlSz0lWaNo34o8=;
        b=Zui7N8TVE/Bm/tCRY5qw4YVg6XT1uCPL58jwMCkx7NbNkdl5zpQ21XAZ1zLuABH7k7
         IP3IsyUfzYQndBIGICFdH0lrFO9Y2u0neFnE5MGMPcnVlNumG9v0tDrPINTN0/tD4At4
         bfvKK+VfU2Sy0drtpoBpsqL1vRQmENVt43xiUimH0bVa0fUPyatgWm9vKRVHpQiAqTqg
         1Cf9u9cQVqO7L2zaC6LymIZfugqzbdhTP3XqBphaV27CpTg+TceQ801LWl7sbV3XtcT+
         jUjHp/rXOKKtSA81aXZXRYs3rObjOu9WKbSGyyJiKGuQlvvh/gFtczDliQ4Dz0rSNmYa
         /0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=eBMKVMgcmAQ+INOcIM8CDLSk/or+QAlSz0lWaNo34o8=;
        b=o7/sARcmTVzufZrj2Wq5pCqSbBhglv9l8jubwvkY3PPpeu1FaJenrQ/HRahviRKXhk
         e5xfHnK+E8Oom6ugAd9UFRbnOgJnZGmZpe7Q5mau2BhD/AT5T3in5zEElf/xKCh+WA87
         0gFzm4W65Es7L6wAPYpAviG81HsEj9UmfadTYq5YFzfo2RaWvPV7g5Sw9s0Hns9KYBNM
         hDKVidW1Rg8BOw4qCVeSW5yreMmioS/ZuKC2wApA6u7YzBLZ83uDgJxWnf4Q0aR/H332
         v1fiSLfC1iAHUG8n3s4QkMirTHpl3GKl9BhS5nWwgVSuHqdGv1Jj6rbiRRNf+OXcUahI
         FZGg==
X-Gm-Message-State: AOAM531BiJTiN18pZBiClZImSz9p7jmPBxW8mkjgkSE0DVcppSmk5TYA
	0QUu1f5kVMMvC2bo2SK4pA9WGiL48aK9ojas
X-Google-Smtp-Source: ABdhPJyFA0xQ4tKAFat4Z5G1dsHCXRsEjpIV34vcXrwLqr9OY9Dru4NEkrSyehhyyq9Yedc7xHloMA==
X-Received: by 2002:a05:600c:3588:: with SMTP id p8mr32664784wmq.137.1625780916400;
        Thu, 08 Jul 2021 14:48:36 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-85.hsi.kabel-badenwuerttemberg.de. [46.223.163.85])
        by smtp.gmail.com with ESMTPSA id x1sm10367213wmc.0.2021.07.08.14.48.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 14:48:36 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <y7qyE8dHIDrEMyEWy9rEFdFiMD5X8rMN2n6qQVUtOI@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <600a2be8-3061-550b-4359-1ab297408c75@ettus.com>
Date: Thu, 8 Jul 2021 23:48:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <y7qyE8dHIDrEMyEWy9rEFdFiMD5X8rMN2n6qQVUtOI@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: JDN7YEJH3YTLMWIV2HKU4MZN42AZUTTO
X-Message-ID-Hash: JDN7YEJH3YTLMWIV2HKU4MZN42AZUTTO
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ERROR: [Synth 8-439] module 'rfnoc_block_problock' not found [/home/..../rfnoc_ws/rfnoc-protocol/rfnoc/icores/x310_rfnoc_image_core.v:1087]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JDN7YEJH3YTLMWIV2HKU4MZN42AZUTTO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!

Could you tell us which version of UHD / the FPGA code this is?

Best regards,

Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.

On 08.07.21 15:11, jcasallas2019@gmail.com wrote:
>
> Hi all,
>
> I am getting this error, when running the following command:
>
> |rfnoc_image_builder -F ~/uhd/fpga -I ~/rfnoc_ws/rfnoc-protocol/rfnoc/blocks/ -y
> ~/rfnoc_ws/rfnoc-protocol/rfnoc/icores/problock_x310_rfnoc_image_core.yml -t X310_XG|
>
> I have checked that the description block yml file is installed correctly in the
> /usr/local/share/uhd/rfnoc/blocks folder, I made sure that it is pointing to the right
> folder Makefile.srcs, I double checked the files in the icores folder are there and the
> image_core.yml file is correct.
>
> I have created many images before but now creating this fpga image with OOT does not
> work. The only thing different here is that I add this block in a different module.
>
> Thanks
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
