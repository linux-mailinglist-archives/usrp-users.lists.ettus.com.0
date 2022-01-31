Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 097924A4F1B
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 20:00:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25171384641
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 14:00:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cl5gjmuT";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A1E8384641
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 13:59:58 -0500 (EST)
Received: by mail-qk1-f172.google.com with SMTP id 200so12987979qki.2
        for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 10:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=3fOFIQ80inEkkukEP8lgnehY3W8pPwx3MUq7XoILfkk=;
        b=cl5gjmuTiheHI5J1HOGNUbEP+T5kMZ05dbhXwNWogziOxVhjzsxXXClRKUSc0yLVoo
         mFpNV5NLI+PHa0+VAElmZ83GKyUZIe7RiClcy9AqxEhRh+jR6FoBbrxH9nXiymRymBCG
         3IGfvG04ZZKj6yiAoM+3eETvX911CHYPHvEqUfg6dR/WQG2gY//rxChwMGMprvW/x62q
         upxprkdqXy/S1yr0O6zX6rQNt/yRk4L70/XMaSTh06o9UY4+pWF9O3f+gEQ4uncPdabl
         ulVWlTf69q3/kuFEPB5AeqU8nHJcL5VefhYZ5mRCUpeIqUlV/ZkB0WtV+W/qy/3ec2Cp
         j0dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3fOFIQ80inEkkukEP8lgnehY3W8pPwx3MUq7XoILfkk=;
        b=CedGE2oK54Jgg2s4MeXtMqsBQWi1To+ZzGSjB78HrP+TP/HH9r4glc3/4SZDc5ghXL
         YcCWC3XwmRTsLYkrfD9576lpYdRDcbDDDckwM/CxarbbMGu599vuzvVbBMzdx96o7xEM
         GOqNxfw07l535v2WB4bPcSBdCf55n8+VMWxxK/gU8LPyNv+RUoerSxyyG9n7DGlzFRIl
         NKJAA3iBgbvTiXbVhK9omMimyehnwLblUOM/itLEirxBzcAxon+5yo5W3xGhRXfY6FQs
         /QfUCoNxLD/yT7CIlj6L4hr9fZ7UZZkD/hlyAgQghaTgaRcFeULyAcDRDZqUGQsRbIIo
         iGAQ==
X-Gm-Message-State: AOAM530T60ijH3mgQi2ZIuPsSYXBmB5pXJi9Td4h9a271v6j8X7bx9fV
	r2ozoaNm75E/Jr137oCNWlg=
X-Google-Smtp-Source: ABdhPJxgb+C8QP/8T82zyO96Y5wIqCvAOGKo1iXPQV+yhiMQ0NaS1rFDgKf17D4Hyb5slY6ZUd5dYA==
X-Received: by 2002:a37:a107:: with SMTP id k7mr14331934qke.333.1643655598342;
        Mon, 31 Jan 2022 10:59:58 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d22sm2640417qkn.112.2022.01.31.10.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 10:59:57 -0800 (PST)
Message-ID: <b1a66eed-23e2-68a6-c40f-20d71089d332@gmail.com>
Date: Mon, 31 Jan 2022 13:59:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ming You <M.You@lboro.ac.uk>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <f24351c6-0aae-d3e4-14be-9c531480bc75@gmail.com>
 <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
Message-ID-Hash: 4GANK5U42NDQJGPFYD7IODRTDESZHO5Z
X-Message-ID-Hash: 4GANK5U42NDQJGPFYD7IODRTDESZHO5Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding Phase Noise of N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4GANK5U42NDQJGPFYD7IODRTDESZHO5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-01-24 12:37, Ming You wrote:
> Hi Marcus,
>
> The X310 is actually fulfilled by USRP-2950, i.e., X310 and WBX and GPSDO.
>
> The graph has been attached, actually it is very simple, just send a triangle signal over one channels from the tx (for convenience, I've only attached one antenna to the one channel on tx side, so that it is a much clear constellation figure on rx side). The constellation for such case should be a quadrilateral shape. With X310(WBX), the constellation at both channels at rx is very robust (the shape is not moving much), but with N321, the constellation shape is apparently rotating with time, and if increasing frequency it might just rotate. That is what I am confused about the N321 phase lock performance even with external REF and PPS from CDA 2990.  It seems to me that there should be some "proper" configuration/tuning, if this is not a bug.
>
> Regarding the 3rd question on what I am measuring, from the above description you can get an idea what I mean --  I just want the N321 to have the same phase performance as X310, since the robust phase locking is critical to any experiment when multiple channels/usrps are involved.
>
> Also to mention that I've tried all supported N321 master clock, 200M, 245.76M and 250M, they don't help and problems are the same.
>
> Any idea or suggestions will be much appreciated.
>
> Thanks,
> Ming
>
>
Try two things:

explicitly set the master clock rate in the device arguments:

master_clock_rate=200e6

Set a "start time" for the transmit side of 1.0

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
