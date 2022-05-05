Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BE251C242
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 16:19:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8BE7384B4A
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 10:19:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651760396; bh=XmMabTj9IFX6v9bX93L61uhg3cZ5UCtQgr4SRurKXfo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MD0JCfACETek7wtI4zcEMQ4006+4RMKKVFzKv/HPOV+Du9d2CAq2JDVIfYCn03wKP
	 y9oEKtTlSuQYh2/hbQjmOPgRHKGmMsSCO5WVVRViBnhoLSS06yqhkWwI25zYdFat9z
	 plM/6I/Qht762WwAZcEUfWIRbJ5YZhKEThNraG9kf0rGL1bMxPX/QSvk2Q1EZoEYPN
	 kZvFeEuGB67fkeTysmZD4M3yc9CK+2GFt7dLRzfdtYUKZebB9RUjHMOvqy3SHQV/ZH
	 k0Qv6vorNPAGLaDUKetzoTGP3uewOBDwatbbVs/pggNUAFIIOFUA7UIPewLmnVImEr
	 zhuaDC8wjQREw==
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 98FA638463A
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 10:18:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=bath-edu.20210112.gappssmtp.com header.i=@bath-edu.20210112.gappssmtp.com header.b="Zx6WroXO";
	dkim-atps=neutral
Received: by mail-wr1-f43.google.com with SMTP id d5so6316477wrb.6
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 07:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bath-edu.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=gVQhC3W++w6HZ+uaV04BOEyDdrMpmfs4ryq4ezGEqsI=;
        b=Zx6WroXO/BQxVStbLTLhLv0/uPYBlEMHKiIxIxLIZptNcTypSbB81Xpj+nCCs/2GdM
         Sl3UT8wrjayCpNt2DonBLzngs8PLihUwFSsLm0fLi8LilluocT+UrvH5zhlh8AJnL0QT
         XYwJncZjCEZPYMCBAZ2P4xW2sR+liXq6yOIymJ97NWDH7sO8DAzMi3Rvw9/Gj8GP8pGF
         DpwNKmwoy8Kh1eI0KxbUqtHvVjE07yrrhDrnUZQ2xoajzfnJAfQfz+joWafiNqC/urPL
         x/H37UVes3urAxNBfvfpJaAkbO6eZE89BUxhbTCgm5M1rzjwlmaUsJ7pcXqroKriu6Ub
         dlNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=gVQhC3W++w6HZ+uaV04BOEyDdrMpmfs4ryq4ezGEqsI=;
        b=FwDS91lLVd9flqtgXF9ZSD6H2MeP93p50RfpaxeVqUmX7E+oe+IDBHbXuTut0ypo+J
         c3iHB/jF5zLGfUCE1DKKeIsxe6G7JWjnoSfQwp90Zta5if/w+JtyjNVj0XJoz+5o1LLA
         X+vUsNCshQYUDR9sss2UB9WyDAzaV8ncvxeWgIx07E8jhiO28Ue5LDnhnyiUneFdNHt0
         WqQopLPi6qS7K3m8tb84+wtwmO0/l6vW5YXTCxH46VsRbS6vrAsEMQkyeDq9NasAfyyE
         1FYj3PqiUZ3fKGw9Z6YJB4reExj5mo8xvnT+J3z+YoU/Atl5vqnAjb/ZQ5O92V3SZwUW
         FwHg==
X-Gm-Message-State: AOAM531nZkQP+iXy7f50MLPQ2UKSNazjiGhjwWxNP0Ub7GBBU8tK394x
	ytRlbKArb8UJw5RlhNGEQ96NVUMna8+phQ==
X-Google-Smtp-Source: ABdhPJyNnSr+shvf0vw2tR2ddLofZEzt/apjpPC+HVWQijkblFPsZs1n2gPupsDMtiAg3jjY4DfnGg==
X-Received: by 2002:a5d:6488:0:b0:203:b628:70d2 with SMTP id o8-20020a5d6488000000b00203b62870d2mr21162329wri.83.1651760326419;
        Thu, 05 May 2022 07:18:46 -0700 (PDT)
Received: from [192.168.100.144] (74.110-107-213.static.virginmediabusiness.co.uk. [213.107.110.74])
        by smtp.gmail.com with ESMTPSA id o9-20020a5d62c9000000b0020c5253d903sm1295959wrv.79.2022.05.05.07.18.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 07:18:45 -0700 (PDT)
Message-ID: <a708bc85-d957-82a5-7556-cb030b973ef7@bath.edu>
Date: Thu, 5 May 2022 15:18:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
From: Peter Featherstone <peter.f.j.featherstone@bath.edu>
Message-ID-Hash: 55EDMZA3C2GDJ7T436OCH3TAUFSSRUKY
X-Message-ID-Hash: 55EDMZA3C2GDJ7T436OCH3TAUFSSRUKY
X-MailFrom: peter.f.j.featherstone@bath.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 : setting different frequencies on different channels
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/55EDMZA3C2GDJ7T436OCH3TAUFSSRUKY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi all,

Some help would be great.

I have an E320 and would like to capture IQ samples on 2 different 
channels at different frequencies.

Is this possible?

When I run the following:


usrp->set_rx_freq(2.1e9, 0);

printf("Channel 0 freq %f\n", usrp->get_rx_freq(0));

printf("Channel 1 freq %f\n", usrp->get_rx_freq(1));

usrp->set_rx_freq(3.2e9, 1);

printf("Channel 0 freq %f\n", usrp->get_rx_freq(0));

printf("Channel 1 freq %f\n", usrp->get_rx_freq(1));



I get:



Channel 0 freq 2.1e9

Channel 1 freq 2.1e9

Channel 0 freq 3.2e9

Channel 1 freq 3.2e9


Do you have to configure the channels or something?


Thanks,

Pete
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
