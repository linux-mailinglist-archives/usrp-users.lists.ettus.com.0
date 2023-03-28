Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBF26CC22F
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 16:36:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17EAB383BE5
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 10:36:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680014161; bh=jvAqXJ6KYeqMS4rVvAJB/LZWJGiLWjWo0gpwNx/Ss5w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=d84+kkBYGDYGE40oQSNXbmIgZNGj8blxIE948jVSNmvPH7OPq7pYRJeb79QA0UlN+
	 tBOcVDF+WdAG06IK23NxEEWR3m2bO8WtupRX/HycLRs1OrZcGI9wUW2Yo7ctaQYK9F
	 s9OTJnDuxep310ZliURYgcArYC3wGlcp5UbpoUu6brbNR+Y8qw61YCRfsoh2fZWU9S
	 YJZw8qO/heFinYGxM/eI+6lmgbyTuWXBdz0j83LCDR+7B1FG0orIaLR41b8GmJYBzP
	 jd5+fweGu8DuJde9tNUf+rstIo8d2P7s1eolAlfdVcxRe91yGT1ZfQNovMrs93OQ9e
	 mIwJLeWGRwZow==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id A166C383BE5
	for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 10:35:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LgNDEWyo";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id cr18so8235977qtb.0
        for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 07:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680014152;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=448NIvbmzcziOA+S3khmt/qBrsluiRaKJNbEbOfO3QQ=;
        b=LgNDEWyoDMT/EkhBdXFb4o7O7YgtfiRFuFD4+lUCnfPEaR6sPgye9o9yjUxiOYjb3j
         VZ+WNgN5t0WeeusZYIYNDLrYBGrpbeyHSZ48ajJ/QSHtJHaVdJ583QR265LoPgeDXK9J
         yYZp3szy/bNIlUcDavzgQrraQqfSkxSY5nQBR0vPLQVgLVGFTXla7Gp52biZuHhXpntd
         2iJvDLWUm5v1g1BodmcRfpEY3vc5LXD2pUpm0JTr37pxhxfiBqWXhEi0AJUPCfqZxxq0
         MjGihqWxsj0MsTfKCK7Nbyk3e5SdOeBfTfOEH462u5WQiT6w+mI2MGgqTmpyaosFajqu
         FDUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680014152;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=448NIvbmzcziOA+S3khmt/qBrsluiRaKJNbEbOfO3QQ=;
        b=zWdNEwLuqDPAwWl8eBvJwpDYrFRKYw+tEHM8TPScHa/VCNuHM/YUUOL018RqBN9MAi
         CSbFS+yvy4hla0pM22ORBeTuiIQ/0g8pSW4Ed0DWsUo8OMUi+LiyFz6GNI8vClD2+hLb
         0sKRw5bd2aA9nTtm30HLb2jMXG5/rm2sFJkmtM3uKJuX5gVvqqJlnHDgEIHGLMyJQcwm
         BQfp2XMxOD0yHBhv2e+6vf629uT1/ppAQxubLPt4Yf0bUDu8fCPCpPzCbfHJGtUzIUfG
         T7ZLhot51iJLdlxrwEjv6banLjLDbiZ9wbfnD8WU+WQTFvaJTj0u5WRzVxwKLWAsQolP
         HJmA==
X-Gm-Message-State: AAQBX9eahVFb3ar0zEcBf3kWkXQ51s6iqgJBxyWHMTlldCNVzT+IN3z3
	nEZdi8uriHUJnoYOgyKZZ2LJn162Y/A=
X-Google-Smtp-Source: AK7set8UtzdrfmsGA2JFhyH45MmHsbwP0kEGUPM2KSRQgZZL0l+4gzUDEUmVf9GwBB8PnJmkO4R2LQ==
X-Received: by 2002:ac8:57d2:0:b0:3c0:3be7:8c9f with SMTP id w18-20020ac857d2000000b003c03be78c9fmr27228068qta.29.1680014151975;
        Tue, 28 Mar 2023 07:35:51 -0700 (PDT)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id z9-20020a376509000000b0074283b87a4esm10534871qkb.90.2023.03.28.07.35.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 07:35:51 -0700 (PDT)
Message-ID: <5118d3e2-9d83-c9fe-9f25-fa4c8d90e59e@gmail.com>
Date: Tue, 28 Mar 2023 10:35:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9OjrJaikLbN99A2A6Do9Efv3dQ75BC4sjKv0ncAGY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9OjrJaikLbN99A2A6Do9Efv3dQ75BC4sjKv0ncAGY@lists.ettus.com>
Message-ID-Hash: 3GBGJM4SPUBPFDPY3FYYL4NAIFCDRDA3
X-Message-ID-Hash: 3GBGJM4SPUBPFDPY3FYYL4NAIFCDRDA3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3GBGJM4SPUBPFDPY3FYYL4NAIFCDRDA3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 27/03/2023 06:33, soring@ayecka.com wrote:
>
> I am generating modulated signal. I am varying the digital signal 
> amplitude. In order to observe the image I use the lo-offset. I get a 
> low image rejection. Analog devices people told me that this shows the 
> chip is not calibrated properly.
>
>
What version of UHD are you using?

I can tell you that the drivers for B2xx use a lot of code provided by 
ADI to do things like calibration and setup.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
