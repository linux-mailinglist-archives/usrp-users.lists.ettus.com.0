Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 440CD6773BD
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jan 2023 02:14:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCA69383D44
	for <lists+usrp-users@lfdr.de>; Sun, 22 Jan 2023 20:14:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674436489; bh=Fi7sMPJSrIuUA222m8gVTLjaKbpCbYlvmbdpgfWsDfg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QlvbebPY/dT4CjKoh9NmlOtSKwaVlJcSHS1zwrU23o2AOctcmDYKIAzBqDMF3a3d9
	 oID6zBmlhlr+KZFzaED78StrxTli153lcZanI6H9FvKZeVZSWFwRA9nr29Iewr3PMB
	 WhzVkiEPo0K4aDgSNQD4QQn2Z7HmoGrcFKTWNT9GDJn6tQ40R4ePOh1eD8Lt6F9MLK
	 MuUm8vxkQfy/uNF2PgJ3cmRqC7wGJlZbMJuPJxonwuLGBq51iPIRJImLLIIyPZ3z6g
	 HZgB55TEaAebmK2wTaWZOVfN26fOhroNMiSymAgZyuwo+3yOVpkgZATA+XnSSuDmRL
	 pZxGEIarcWMow==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A695383C0F
	for <usrp-users@lists.ettus.com>; Sun, 22 Jan 2023 20:14:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hlQHWzqf";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id o5so8632340qtr.11
        for <usrp-users@lists.ettus.com>; Sun, 22 Jan 2023 17:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b26n24TZKh9YQjzPZYV9K81VJYCcStEWf2h22N8vxSQ=;
        b=hlQHWzqf563PzSjvxKvuWs9BrI2SIvk+4eD8ure1t3BcLifOz2+lVsQc4ZZRMWgnZ4
         rm7PjPI5F6G4hXz2RT/RDLn2igk03oBcITohgPYv/DboedIfYM6uRsbqb89hx272Bp+m
         pKXOR/HnL64Ltq90JF1oyHVIJzDJuxkCSQ8T57oEdyPuEMeD6HpI5foYUH14k+nxCZBf
         ne/BrSetzJyQ0CKs3PEYbTaZJE+cSDXnPDm6mMPYqtb6EdEGCVsfB/ouAGJ2ZXBXuJl9
         cDU/PjtIDEkg3ZB0+yVsRgb3gf4JjKXCv2Yb5vLpDRCiyfIurVURk3Q7xRjhrTaIK9k1
         EEsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b26n24TZKh9YQjzPZYV9K81VJYCcStEWf2h22N8vxSQ=;
        b=fMKvGONoArGG6RHRoe1tpYgilcOb7TGGDGvaoRx4Bd4pD0UJLn0ED6bpNFJW7wzr79
         44GagtC6sb+BnmCku3hcfHgUwOt863Bfx24EruYYENDTe8QFN3GaKPSxocaFQeJ9r3Ig
         nH/8BI6NFUN0+iv+x31cQrpOoUZ9eiCjaexJkx5ZAxXQqjx0gddRX4SRYKZdcSmjdfJZ
         p4bfHvygsLcLICYsKlI9XHpjCvbE3LXXsqLBR+D2xJo5vHJb0fHGW4/Wim1o0sQzb2Vr
         JGQ0CfX6vjJ0GDJrceyhqgE0hQTytU6+9V02XQFPMt/VVXhM5D9a65eudH3dd0zgLmDG
         ZRZA==
X-Gm-Message-State: AFqh2krM+P9KgqO3iMJc0MJ9yHShTLe8iBMchYuGvVBf3ULllNz/spjb
	7lk4t8SDqrclPm2LyS55gfLSIYv1LhE=
X-Google-Smtp-Source: AMrXdXvvZIrnpdBKv2S6LmYxj3zD5Iwdsk4junUNZ8H/1qYCU0h7shTh2fMAd5dfr6THMIiu4HreqQ==
X-Received: by 2002:ac8:478c:0:b0:3a9:8353:aeeb with SMTP id k12-20020ac8478c000000b003a98353aeebmr31246826qtq.5.1674436442555;
        Sun, 22 Jan 2023 17:14:02 -0800 (PST)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id m20-20020ac866d4000000b003a6a7a20575sm24086101qtp.73.2023.01.22.17.14.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 17:14:02 -0800 (PST)
Message-ID: <23b3bf7f-1982-296f-6c70-e481de09f19f@gmail.com>
Date: Sun, 22 Jan 2023 20:14:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LZYH2C5BOXEVBMLVXFBLMJSQ642PIRA2
X-Message-ID-Hash: LZYH2C5BOXEVBMLVXFBLMJSQ642PIRA2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LZYH2C5BOXEVBMLVXFBLMJSQ642PIRA2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Is this thing on?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
