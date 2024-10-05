Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6853799191C
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 19:58:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E20D385061
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 13:58:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728151083; bh=uhIacA4d/dIA+uMZaB5fpeGcuie22puNKIRwdyPmA/8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aIo8KCcy/o8pa1W1LdBPI0WeUB/bQTBG9j9RS2MjDiTaxPaoEJB2qaJ4cjo1z6Qyl
	 LlmBzEk2oRsqRvGKels8fqNKy/P31xDgKsIRZkFTgoikpoN9B0J4gX+DDFMLMHBIi3
	 9pM/w1AcaIvs5OB2zgNeTjQ2fe+6ySzZrCpdG2NQ7hOhLm6dUgAaL7SktVHGUQgd3C
	 4gEvk4dHtkTyZDIcl0b4CS0sEIoFStKbQVfxkGWkxoMk9ZTQN/eHKycs1mNs7/aFu4
	 ciK79xPCtL8W3DEZX/skwmwFigLRU6yyhjQlOcGnRI9AAHXKOeReg5BJCtPJeajexG
	 ODExoIAPWHoBg==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 37D53385043
	for <usrp-users@lists.ettus.com>; Sat,  5 Oct 2024 13:57:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eLWSd15M";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-45821eb62daso20064491cf.3
        for <usrp-users@lists.ettus.com>; Sat, 05 Oct 2024 10:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728151078; x=1728755878; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q9LpYjaT9HyOgXSuNtnE4NHwLNDJd6EQWJOyHvFvM3Y=;
        b=eLWSd15MqhysO8EuAfv3u7YUGUemGd+XQG4NnW1qd7y1suyLxA+RMGdp6IEQt3rov2
         qDHY6vl/XU/qn5YUnz+icHXnJEY0IWj/sKZf+aZnDXB5qXk3YD8r4sztsV7T3YhYKhjy
         bHe57DgXhchZjjbdx2LasUrONGJdqxhGedRsqPJm2+hD6dBoP4roHWXUx30/aDbLyEnQ
         XX/693KElLx5EJYuHVtFoJb8ys7ll9sxiqDWerlkXRTTkseU8E6R5wpl24ffGSVfRWOt
         UcBho7vHh5BizBlTa4g6d0xDPGzeaYxAzk3gfE0gqLhXlpxnZ1cLXpj3sFTXm2/gOB1a
         L11Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728151078; x=1728755878;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q9LpYjaT9HyOgXSuNtnE4NHwLNDJd6EQWJOyHvFvM3Y=;
        b=Xwmt3BFj/mY0sF7sBwlmwEY2FMMaYxqyHUnTD3Be1PtjsD2kiYwD5+IbayOMa30Dup
         eSgdw5Q1kC62QKw5JcwbT/WHZmT/Fl/Oh/fOiM0EI2BOgdP78shKr7Kgl9GCEL4ygEUa
         jkficbSWvA9LNtQ/eoKFvb9pN3X2IwK/zGPjFrvjvHswVPPSnL/NpUpWZLssRO5m2hyu
         bV8AQZP7swdnEqeWMM5eHq5LDKh8Tt/5WRRGqM8wK7I8SyDtO20vNlhhkcbNcYxjNMFk
         v9qF/1ZmEYI2zyVGPNWxBL3JC0QZJIMHbgIQbcC6olWNM4Z8+arvprQBhu2F4yfhLRlg
         MODA==
X-Gm-Message-State: AOJu0Yx9SVZExx7cvZf/g1McAs3a9dz8iLrSZondoQ4n5eo4rvpJsWS9
	PETzt1lSqfwULlgDllDvXViSZ5X1lhjZpCN/dunIJpMcuh2KmhFETbpx6Q==
X-Google-Smtp-Source: AGHT+IGSTeOUhag2hknUmHS/q3W4uwJOZ+VaNdlqVBGgENzGzS8z09gJj8RGGvS6NQXDh1C3imPPWA==
X-Received: by 2002:ac8:7f83:0:b0:45c:a607:653c with SMTP id d75a77b69052e-45d9bb12d8emr90084151cf.57.1728151078321;
        Sat, 05 Oct 2024 10:57:58 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-45da74ec307sm10441191cf.30.2024.10.05.10.57.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2024 10:57:57 -0700 (PDT)
Message-ID: <ae621cbe-65c2-417d-ad67-e371035c5985@gmail.com>
Date: Sat, 5 Oct 2024 13:57:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <632gFyE4Bg5NoYZHYekRTU9uAH6izA2QUKTS2TxObY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <632gFyE4Bg5NoYZHYekRTU9uAH6izA2QUKTS2TxObY@lists.ettus.com>
Message-ID-Hash: ZNXP2CYGSFMANMGSVQ3PG2WUICEHNW4H
X-Message-ID-Hash: ZNXP2CYGSFMANMGSVQ3PG2WUICEHNW4H
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using 10GbE to stream receiver data to remote FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZNXP2CYGSFMANMGSVQ3PG2WUICEHNW4H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 05/10/2024 13:51, steve.wakelam@roke.co.uk wrote:
>
> We have a system in RFNOC that receives data at 100MSps. We want to 
> stream this to a remote FPGA card over the 10GbE.
>
> Is this possible, and if so do we need to create our own RFNOC block 
> to do this or can we use UHD libraries in some way?
>
> Tha nks.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
This might be helpful:

https://files.ettus.com/manual/page_stream.html#stream_remote

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
