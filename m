Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A454A483E
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 14:35:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAB933841BA
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 08:35:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ITXbfrGw";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 33BAD384437
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 08:22:34 -0500 (EST)
Received: by mail-qk1-f177.google.com with SMTP id o10so12005601qkg.0
        for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 05:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=fvhqJNnzJIw/FMiqKzia7LX/jw40iPzZB4wUmwlxhNo=;
        b=ITXbfrGwj+WvKmCjKmaCD4+LhKgV7cyxQGJDHlJ0yHTC/hGM+uT1t98KMkWuzxhwxz
         xPMutQUd8uo1cvgOab0kyEdMPWZD9N95eik9jvJehbPWpgfqGkMLCw3CrwBHTQ2YveB4
         91ixAAk9FmHyTD6Xis+swy43SDKgt92VQZpYp1hB7ICBNwZq3K/NeeZs/KIvWnQXoijX
         btlK/7bxmIJp3gRbsm97DZu35Xsj6tHIgBhevty6ZyweBoFZtT9vg/dN7dsdneVumpWE
         8aqSY4RNw0sWvXOdfnxlMno1bPxUGbvvMxfRGZE5vNTXVY8u3Gpk/izFWfWF1jiUKkUe
         +Gew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fvhqJNnzJIw/FMiqKzia7LX/jw40iPzZB4wUmwlxhNo=;
        b=fsaOI+teFGfpr94HBtdQZMKMHuHDi1y6+VSmXe5SqAibsTRR2BaC94CFL9clLU4u9Y
         BFnzWuw/mUF9k+G2928AKW9pbtol+ghU9ErPFkB3mUvl4htFCKAUn3BjVBxoApKoGh40
         6esPx8YoylokT9J+yrc49CyZer7N68/Pxko55JWxXeNiFfS3xs+VrAtTRhU1xVyUhYFu
         0h4zN5p8FKARovqux5Uc4Iai4LYHYAN83NgY728kkEszYI5oFPRkxSjWnnFIuGxtaQdW
         HZuBa2vFzIcoSY6DmEm6bPa2BQ2zVZQmllr+iZWBzndL2LS/22II2OOL75vCLWbU2r81
         BxRQ==
X-Gm-Message-State: AOAM533Lqc9fTjorEiNBv/ZeTxRSgrkpsGuSMutAQfJ36k6yqEsJOvZt
	RPe+51kmQKDwsRukZS7UVbsQhhZo8WlN5w==
X-Google-Smtp-Source: ABdhPJxFY+STj1ThstoLicSoWkh6xGJeSWZyTx4NSnogs9fURtyWEutLhz5jqm8QabAo/w0uAmpvYw==
X-Received: by 2002:a37:a257:: with SMTP id l84mr12572135qke.34.1643635353430;
        Mon, 31 Jan 2022 05:22:33 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v2sm8002799qti.32.2022.01.31.05.22.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 05:22:32 -0800 (PST)
Message-ID: <b3acb048-3896-0f13-f089-fe17bac59479@gmail.com>
Date: Mon, 31 Jan 2022 08:22:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MT3w2R4mGa4GnILWNkKxWlZBX7vskeJ41RpKM3fRxg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MT3w2R4mGa4GnILWNkKxWlZBX7vskeJ41RpKM3fRxg@lists.ettus.com>
Message-ID-Hash: DD5ZQXDKE2VPFW4IOBUFJN3LTMDYQTEQ
X-Message-ID-Hash: DD5ZQXDKE2VPFW4IOBUFJN3LTMDYQTEQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DD5ZQXDKE2VPFW4IOBUFJN3LTMDYQTEQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-01-31 01:40, seckinoncu8070@gmail.com wrote:
>
> So, when I want to use the two ports with full capacity, is there 
> always a complication like this?
>
> Could the problem be with the network card( x520-da2)?
>
>

There shouldn't be, but in the interest of debugging, see how far you 
can get with two channels into a single interface.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
