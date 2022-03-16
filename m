Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 313D84DBA32
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 22:35:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FECE3851E9
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 17:35:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LXDAS2c1";
	dkim-atps=neutral
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E657384BF8
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 17:34:20 -0400 (EDT)
Received: by mail-ej1-f41.google.com with SMTP id gb39so6906359ejc.1
        for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 14:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:to:cc:from:subject
         :content-transfer-encoding;
        bh=2kX4NmZI/S/l7Yravucplm4Iky5MjxawG0YvA6qTQ0E=;
        b=LXDAS2c1Vw6KB6FkUiTxJlgY1SNNrmihZ6u0iyvRx8AdLWDHWUM80WpMV8QbC++zjK
         aPtmxP0nkTOZw7xAqJQ9JYR2OsS3Ceuy0JL85rEIRuKzO2mqpc4TQ1LbPnxpWVa4cD0/
         AcZY0k2710wArRELW2vp0Bt5f12cXVpWAr4wFq8+rZP6Ivq/slUNz31Gbxysfkn9A4xz
         puNJGHbrYTyTMC43IqEeVs3eoqix3fc7mjOVT/zmxm5OHyFftv0Dq1pdjfSdOwf82WrR
         6yR99qR6VDjZyLXBkThYO6yJJi/d0x/dl4nabWZi3encGjqYSbMHTge2ePsNNGCPipfJ
         XE2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:to:cc
         :from:subject:content-transfer-encoding;
        bh=2kX4NmZI/S/l7Yravucplm4Iky5MjxawG0YvA6qTQ0E=;
        b=lYnQcagJ9yS7jBABLlPbytLHBetVyrNMMsDvepj+OBQ7N48m5K2rpJXMY4q1dK/Xvq
         9VvuQeokKcSTA9K3+h2jJ1ucXWiX44d+7Ngd/y01kb17bBGeVZhY7jN+OmTNaSdR4+8Z
         d1VwHn6wAPwiUnhpv5oklXCVxfwjDndsbTQAEmqOrvDDFUxPPjsUqUkluXh5RzZvf55S
         YjMcpvDJ37lDEqjfMOI+7UzTJD42F5TbZ6SRNPMZwQ/Ub0H3vjyXA6qkfWKXO9s5EyFm
         xCdUE2GC44q48lo2j/vfGxr4KKdyD+2MygDDWtEgiiGctOR5ng8nPI+/MiwJXh6COuD2
         5AhQ==
X-Gm-Message-State: AOAM530qDmPy5q12VE3e0K5OBEOx5ifUB3djS4bRVfDtanlspVLz315Y
	fZwR9S1fIoDHZKLC/wEVeW63Yw9X0+qg+Q==
X-Google-Smtp-Source: ABdhPJxzlDfbmFaSAwF6W5x/hjATY/Bl4nR2GbPFTEhYNWb1M0pn1ScfSbzQtdRVjw1mGuX2SywWHg==
X-Received: by 2002:a17:907:9482:b0:6da:a24e:e767 with SMTP id dm2-20020a170907948200b006daa24ee767mr1568555ejc.479.1647466458694;
        Wed, 16 Mar 2022 14:34:18 -0700 (PDT)
Received: from [192.168.1.8] (host-95-235-97-138.retail.telecomitalia.it. [95.235.97.138])
        by smtp.gmail.com with ESMTPSA id w14-20020a170906d20e00b006cee22553f7sm1427125ejz.213.2022.03.16.14.34.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 14:34:18 -0700 (PDT)
Message-ID: <2b09f1a4-02a6-e7ac-31bc-9d4064d1678a@gmail.com>
Date: Wed, 16 Mar 2022 22:34:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: usrp-users@lists.ettus.com
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
Message-ID-Hash: WO7MAS47UST6BRG4SZLR2JMSDXJOCIDU
X-Message-ID-Hash: WO7MAS47UST6BRG4SZLR2JMSDXJOCIDU
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "stavros.eleftherakis" <stavros.eleftherakis@imdea.org>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LP0965 Antenna
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WO7MAS47UST6BRG4SZLR2JMSDXJOCIDU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Dear community,

I have purchased a few LP0965 Antennas 
(https://www.ettus.com/all-products/lp0965/) because I would like to do 
a 5G transmission at 3.5 GHz (using OpenAirInterface).

Is there any guidelines that I can follow for deployment? For example, 
in the link it mentions that "The SMA connector is supplied but needs to 
be soldered in place.", but soldered how?

Thanks in advance,

Giuseppe
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
