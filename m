Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2AB3B012E
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 12:19:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5668B383E07
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 06:19:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L7FNA0cL";
	dkim-atps=neutral
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C16A8383692
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 06:18:08 -0400 (EDT)
Received: by mail-ej1-f43.google.com with SMTP id hq39so6636105ejc.5
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 03:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=PYpAS4wysivmsuFWuyQoAAWvgmLko3edaK2v50sJwRg=;
        b=L7FNA0cL/sCVhsoXFEpiZD6UwiEH+7EfnGz3wGIZ3tYAuZM373xV8i+kz3B6Sespbk
         SBfI0VUIeViBcdwLYv5aO01QX6vv6W8kW+bqAaY0a5Zia96tSMN33gNLG1fp1F2R7kj7
         xRuOU1wnqEDVmp6Fp0dgsCOkdHL972X6BasJ/fFnl86pQnFB3S/vKz6BCXyYc6oWqu90
         U6kONImQ3HXkgk1zLT296idDLU3CzWxi0rFJzpMxDTX9fAT6HCLhuT3NQzpHwMSI1+yj
         bdpvT64Yzwlgd69KK4br6NdKV48IWQvkOlglgSOrheiolE8znBx9GfI2X2wrKrx7n0r4
         akiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=PYpAS4wysivmsuFWuyQoAAWvgmLko3edaK2v50sJwRg=;
        b=aa12UFk34ThJL2E2kuEIFg2v2sq2Uajx16t873Oi8KUxyU1tlV2yblDsmNpW3VvOFo
         Q3DajMiSVp9yKId+0DRvntxvOb6vp2HE5i0p5RQO+995VW2++gq8RF2oTUZjbV5SCUYz
         qz927CQe7CNKTq78JuP9gvTv3HkgqzJJ7euMtfSWLaKNcLse1vpyJ8Sx2InIesqPs+ci
         F2m1fztOBFBeg4Ijfn6jz/P9hkN6uCEFprol3IR1pUHcFmIN0U7QMRduFsmmPyIQFGtd
         xBb98glKMr822DNhsSj8c/J1X0JeWc5z3ckv2SW3THG3RF+x0ois/3BOsx6wX9kXqo7L
         aj2Q==
X-Gm-Message-State: AOAM531fdOvA3Dm76prWwH5xngbVutq4BKdS/7eloM1Ufjv907H2qdJi
	k03Q8RkDKF+EdYf4jqyVugl9RiaZGY53Ww==
X-Google-Smtp-Source: ABdhPJzqkaZpJ9yF62Y/P/fG1deHUPAm/yeGu2zGN8Ec0VMUutNXiU0OJjJo9DDC47qSRTuF+2304Q==
X-Received: by 2002:a17:906:470c:: with SMTP id y12mr3275304ejq.54.1624357087573;
        Tue, 22 Jun 2021 03:18:07 -0700 (PDT)
Received: from [172.18.228.204] ([141.20.217.204])
        by smtp.gmail.com with ESMTPSA id b19sm3235742edd.10.2021.06.22.03.18.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 03:18:07 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Vladica Sark <vladicasark@gmail.com>
Message-ID: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
Date: Tue, 22 Jun 2021 12:18:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: WRT4SZ4BDK26YOXM72LK7BPJCJITFGUX
X-Message-ID-Hash: WRT4SZ4BDK26YOXM72LK7BPJCJITFGUX
X-MailFrom: vladicasark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Optical SFP+ adapters for N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WRT4SZ4BDK26YOXM72LK7BPJCJITFGUX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Dear all,

I would like to use N321 with WRS 3/18 which uses optical cables. I 
would like to use also for the 10 Gbit SFP1 optical SFP+ transceiver.
Do you have some recommended optical SFP+ adapters, duplex and, 
preferably, simplex?
The idea is to use a duplex monomode fiber, one fiber for the 10 Gbit 
data and one fiber for WRS synchronization.
They would be connected to 10 Gbit switch or QNAP Thunderbolt to SFP+ 
adapter, so they do not have to be Intel.


Best regards,

Vladica

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
