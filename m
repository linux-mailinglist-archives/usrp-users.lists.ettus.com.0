Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E45A846AF2E
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 01:30:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA29E384595
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 19:30:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20210112.gappssmtp.com header.i=@vectalabs-com.20210112.gappssmtp.com header.b="1yKfHkpV";
	dkim-atps=neutral
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 51333384594
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 19:29:55 -0500 (EST)
Received: by mail-pf1-f171.google.com with SMTP id n26so11726285pff.3
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 16:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20210112.gappssmtp.com; s=20210112;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=C5cPvwfpWxjYlwNbjRMhZphuInDGTqoU9rQPVlcqQsc=;
        b=1yKfHkpVrj3hle4ljnkG+j7KBGaR2HkyV/49mrbREOiolPza2M+lAzCJxZ8NwWtc6o
         eHGBnGVWPRh91kc7BGm9AikUkWUewcHoKknoaMvs6oBLAA7+MAeQ2mL2z8jUN3vnY+uN
         kf33b1GCyHzJAJABmS47QlgYmGbBURJLUok/MSefshrtzs8kE/bcdmqs5uNMU5qn3s3r
         qftwQhunQQ/HnLtnEzt9FN5H+ll5C9d2ierXncmHbqN71JihH6WcputdBeRVKoH8+mQw
         cfLjae6XunOGeQx1+mg+l2k7wG0P0k4QbH93s3fP7255aJUlO5YQ3HfhMTWoHdxHGIbX
         GJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=C5cPvwfpWxjYlwNbjRMhZphuInDGTqoU9rQPVlcqQsc=;
        b=Eny5ws0gPvR2vBtNZtK0jj6E6/Y9ZriwBGKZnTBitaMTGl1FDDr+mzknVMdIwskQOV
         bfuisGwyJF41kddfFgRyxhcSGEncs32IPci3Rm9iG4YLoYkAE3jKQLxfGf/P2W1KZEGl
         eAhxxvElFnDYQvTav2Sv4l/KYISqoyg7j+xml9qQ5wFGS8rovjV4ck/TpVXY4SyyE4aF
         b75t2iiJc1p77mDA/9eqU7u0KAbw9bPnFwl9V2Z/6iN8004AeO9P4WT6EXP8Vi28umg0
         LenVFAa739eXLcs7yr0GSqmztx/ANk4kSf+7QoUeubwCQBkkive2F/EmXtdCMkj8CwVl
         TQrA==
X-Gm-Message-State: AOAM533Nz20dzbMFIMy0NVWxm+7/43k7aNM7Ii+w17LQL014urLhgHld
	qXQt0W8PUdtv+ozMzkQMz5DY1Gv28szdfw==
X-Google-Smtp-Source: ABdhPJzKbqh4DsLYmcj9nYsMNLvj/MsR1mqDXA/PFKI9jkHMDyzQs3hRZL3ukznrix5emHcCKdrEpg==
X-Received: by 2002:a62:7a92:0:b0:49f:9a0f:6bcd with SMTP id v140-20020a627a92000000b0049f9a0f6bcdmr39476033pfc.43.1638836994104;
        Mon, 06 Dec 2021 16:29:54 -0800 (PST)
Received: from [192.168.10.228] (122-199-13-248.ip4.superloop.com. [122.199.13.248])
        by smtp.gmail.com with ESMTPSA id u13sm10937570pgp.27.2021.12.06.16.29.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 16:29:53 -0800 (PST)
To: usrp-users@lists.ettus.com
From: Jack Riley <jack.riley@vectalabs.com>
Message-ID: <3bad87fa-cd22-7b4d-a57d-26987fa59655@vectalabs.com>
Date: Tue, 7 Dec 2021 10:29:50 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: OIFZM2D25SNSKY5O2OZ5HLS5I7U5LHXJ
X-Message-ID-Hash: OIFZM2D25SNSKY5O2OZ5HLS5I7U5LHXJ
X-MailFrom: jack.riley@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Compilation Windows - package directory does not exist
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OIFZM2D25SNSKY5O2OZ5HLS5I7U5LHXJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I'm attempting to build UHD on Windows from source so I can use the 
Python libraries but encountering the following error building usrp_mpm:

package directory 
'C:Users\Jack\uhd\host\build\python\simulator\usrp_mpm' does not exist

Noting the lack of a backslash between C: and Users at the start of the 
problematic path, this appears to be the issue. For some reason the path 
within the build task is wrong for this project. What is the process for 
fixing this error?

Regards,
Jack Riley
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
