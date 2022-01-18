Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB00492F30
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 21:21:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0BFC385A03
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jan 2022 15:21:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DVQbV3/j";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DDB0385886
	for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 15:21:00 -0500 (EST)
Received: by mail-qt1-f177.google.com with SMTP id c19so79929qtx.3
        for <usrp-users@lists.ettus.com>; Tue, 18 Jan 2022 12:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EYI0uqd5DIIKdHSYRTUaaJ/zwuZUH4QRpquZzNx5tl0=;
        b=DVQbV3/jMTc9ptZ6qC0XlEqEoP79kssPsxFgD5ADweTNyiRBY04Sl0CwvG2EoWQzJR
         npysaJbFCO2C73yRTmFZJQHCqEdmE5Jy1poJMyAfkQeEaSVfSGzPd1KjeBL7q9DDZXbx
         BQmEdoisJQBxmOWVPjrysoxOycb4hjHEcgRbZ+uhl+MwzJ3Bzf0mt0DQtWheI5dNFuKd
         XBtf2e62DJM5A9GDO78kE/LmPLCoLw281SVZU9qE5SpAgc2o11sR6GLs/aNFwxsrGrFp
         cvTV7G0eNxQzgTvua8mR7zFYzSpB/NdmMWr7HxGGcn2wQ/s/jMKHTcdJvnm7c2kz/ZOp
         FI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EYI0uqd5DIIKdHSYRTUaaJ/zwuZUH4QRpquZzNx5tl0=;
        b=qh/nlxqerqDPLFeJ1xloqye6+75osAz3YJ6kyHJgY5MYpdIzEZgFJTZcHC4pfIn0Me
         7SkOowo+0Q+usPum8A/LrnKvb1fs4GPQ4h/SeSknIC38d6thvowIMOfADZiHFOJHGD6g
         eRpWavtwTGNG6e6ZyA3+4jbV/xuCNZmx790Xso95/EfVSsueTaWD/0kVUlUs5HczGUc+
         VczKowVx6hgtb4/k+KVhdSE1HE0Cju0tWak94IB38W4BRLB5BRUAg17TVvzAnaTXo/Wa
         OLnh2Aq82wE4XZaf1/4hHSkVrrIgULLizwi4G09YS0+HAMdot9fOrGyZuOdWeU2EiNEg
         Yqjg==
X-Gm-Message-State: AOAM530+dMayrxdJ5T8Lj0gwVKgyqkYUnH5kUPd6GfyzQUuGglzMDhdb
	D20mWf3YeIzGlgi3c6FRGnU=
X-Google-Smtp-Source: ABdhPJwTLEGUuDJwsftiXG45ZVQl6mRwxKRIx+P21ucWPOsfz25sbAM7/kA9ODnN5Y/AlFWcDVGWEw==
X-Received: by 2002:ac8:5754:: with SMTP id 20mr22775779qtx.43.1642537260076;
        Tue, 18 Jan 2022 12:21:00 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id z20sm4344087qtj.66.2022.01.18.12.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 12:20:59 -0800 (PST)
Message-ID: <cfd98b5b-24d6-d5b3-5a90-6baf3fbf15e4@gmail.com>
Date: Tue, 18 Jan 2022 15:20:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com>
 <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com>
 <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <CAB__hTQit3vA+TbnvdGmWwEuGckUmOVmHhS6eXneeg-oeVsEfg@mail.gmail.com>
 <71a72a67-db18-fc69-dd35-d404ad49a2dc@gmail.com>
 <CACwKM9JOGP27FgMMq+cTkpna3v3D5QKC=_74H=953BGjGSe5KA@mail.gmail.com>
 <a5ac4b90-65d2-c982-5c0f-e921de878b2c@gmail.com>
 <CACwKM9+Z1xzygaZWzPMW8JnkOs4NJ_W58xbGvvyrnRL3JhOCMQ@mail.gmail.com>
 <ecbce775-f321-94ee-d00d-2902239f4c6b@gmail.com>
 <CACwKM9L8Mkb++GxXrnwx97B3y8EWegPQWUmbLchgR03capYjTQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACwKM9L8Mkb++GxXrnwx97B3y8EWegPQWUmbLchgR03capYjTQ@mail.gmail.com>
Message-ID-Hash: UQTYPOKG5TTA5JJUSSFI23EKPDDJS6S7
X-Message-ID-Hash: UQTYPOKG5TTA5JJUSSFI23EKPDDJS6S7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UQTYPOKG5TTA5JJUSSFI23EKPDDJS6S7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-01-18 15:19, Paul Atreides wrote:
> not exactly.
> so i'm trying to use the python API to run the equivalent of
> get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)
>
> in python:
> import uhd
> import numpy as np
> usrp = uhd.usrp.MultiUSRP()
> usrp.get_tree().access_bool("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true)
>
> RuntimeError: LookupError: Path not found in tree: 
> /mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export
>
> so my question is "what paths DO exist in the tree?"
>
>
That's what the property-tree dump from "uhd_usrp_probe" will tell you.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
