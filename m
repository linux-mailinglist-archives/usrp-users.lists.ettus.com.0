Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC74172324E
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jun 2023 23:32:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B89F038405D
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jun 2023 17:32:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686000760; bh=HAYJlTXauWSl5FBpnxAlBc217x1EEpshUyxhoU0eNaM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Z/lLOtiNtTiT2Nx+XrRQ3efiwidknfaEkmBP7oMGGVREfquGQ3KyRTFtH+jjL5K2b
	 QOiM9CwWFA4dfNNEIAaQrDB2bPy2qf+UHvHKkQLZjNJ3gWW7kvpQ2j1Z0BaMw4gdTO
	 vt0tdnBfjmt0t0e+TAmzDIRk25wPv2CUQTkFfS76qixPgIik1f6JKDWQdr57wMK2XI
	 Ky7qsBBUoJEckTZw4UD55mXTtXuQ76mkbZO/R6SnFgPQ7wFj4jCbqLBLz5vF8BHksa
	 vAMKkIqWbDyBlRoiEevgcibTiO0SRsqOPA1rh0sbcEitpjBBilm9JDgdCL23SfnRFx
	 jSz1WMQRCXSNQ==
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mm2.emwd.com (Postfix) with ESMTPS id F1EB5381160
	for <usrp-users@lists.ettus.com>; Mon,  5 Jun 2023 17:32:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="36qm3urt";
	dkim-atps=neutral
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-3f6d38a140bso38726025e9.1
        for <usrp-users@lists.ettus.com>; Mon, 05 Jun 2023 14:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1686000734; x=1688592734;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=duzSY4JExdtZ5hC+ISq014qHfHfciq0A/0TRNLU4oic=;
        b=36qm3urtKoABq6yBsx6I7Su6zy7EVxmOzcsnpqD3pRFDtTgSl7MD3ebyhTkNi+ECxc
         GpVXEcECs3kHlVYGtFxj8J+h5g6oVHXiw7FmKP4MJeDaH8O3jXyycGmN3mDgtmDpSs74
         rL05wlb02YEM4EFfJ19RmsChMe9FnxMWaQbPQE11n5NT6Iuh77Us8del8wosKkPTDjT+
         XSJ3yYZeAt0TWTNzJnXWzZ+cRto532GArTyYH+0aBYkokN4mrQVhpdR2sm2ehzXro6WG
         4a8zFOGuHlkdPvbtgjqlHE4R22FjXfOZhyAqM/KShsA5HvahQpt6YziymEd+zP+u5KI8
         5Y/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686000734; x=1688592734;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=duzSY4JExdtZ5hC+ISq014qHfHfciq0A/0TRNLU4oic=;
        b=enrIBt60mL36p6InK4z4lR/iMHiJfu0AofEDLhnHhqWrH9CfCnRQZWWD355u3uwQBw
         4FRJUBFv2W7Rcur/616IseHoE4OStp38B+QUmvPpJrf2Pb6eFO3tievMLAnyAusWPUYV
         Xsp9tLCXmZr4mbVrbvI+rAVZJzsV0R34DHv1olIv2FsNz5qhg8gTye4fx4ZXtsHTKoq/
         xc+Uj+0467Y8tuPdUh5B1mlAPRzXcByxSclT2tz1J0m2RFeblFTu6cFFxj+tsPrK49mj
         MiDKg9ylriAxZdcIF4LP13cTFSOKXfCmKoL+mqsOjgmUGiRsKaA17hJ0QUbFhDdmbDz3
         NtCw==
X-Gm-Message-State: AC+VfDy5SgsTkYHHmn+OiNiUs5q3MnHdPIMRrt3DJQPipDcb4KQKul2Q
	BP8YQtUgSoraQ0fK3g6Hl/rFtMzxXVyPcQJrBEPbCQ==
X-Google-Smtp-Source: ACHHUZ7TGCw6erqHj1fpx9peggb3JSyKFFqjrVsh9SuXl4pd6XN0OcSdXFtpKzOAR5rNhjsnB3k/hg==
X-Received: by 2002:a1c:f305:0:b0:3f7:148b:c310 with SMTP id q5-20020a1cf305000000b003f7148bc310mr8579898wmq.13.1686000734639;
        Mon, 05 Jun 2023 14:32:14 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3871:400:998f:ca6a:6065:3212? ([2001:9e8:3871:400:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id u8-20020a05600c00c800b003f74eb308fasm5392378wmm.48.2023.06.05.14.32.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 14:32:14 -0700 (PDT)
Message-ID: <c3e840ff-501f-85ba-f8e0-170308846f6f@ettus.com>
Date: Mon, 5 Jun 2023 23:32:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: usrp-users@lists.ettus.com
References: <CAFFpLrGe-Dnc=bUJk6+ebzDf_SqziwoMXRQCSDeZGZ9kJ687ng@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAFFpLrGe-Dnc=bUJk6+ebzDf_SqziwoMXRQCSDeZGZ9kJ687ng@mail.gmail.com>
Message-ID-Hash: ITQELRT2CXNY44NAOQFS76PLMSTY2ZOK
X-Message-ID-Hash: ITQELRT2CXNY44NAOQFS76PLMSTY2ZOK
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Segmentation fault in OFDM implementation on USRP E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ITQELRT2CXNY44NAOQFS76PLMSTY2ZOK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

HI Jorge,

you didn't attach screenshots, but that's OK: We would much rather have you include 
copy&pasted text. Images are always inferior when it comes to understanding text messages.

Best regards,
Marcus

On 05.06.23 22:19, JORGE GONZALEZ ORELLANA via USRP-users wrote:
> Hi all, I have been trying to implement the OFDM blocks on a USRP E312, I am currently 
> working on Ubuntu 20.04 with GRC 3.8 y UHD 4.3.
>
> When I try to run the python script generated from the GRC, a segmentation fault error 
> appears on the E312, I tried to use the faulthandler module to see the root of this 
> error, but i cannot get an idea of what could it be.
>
> I attached some screenshots, so you can see what I mean
>
> thanks for your time :)
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
