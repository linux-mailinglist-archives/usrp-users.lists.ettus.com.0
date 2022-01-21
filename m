Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8CD49653C
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 19:48:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C3C43855DF
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 13:48:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kz/hl4/f";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id F1983384F03
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 13:47:31 -0500 (EST)
Received: by mail-qt1-f181.google.com with SMTP id f5so10898942qtp.11
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 10:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6Z1KesFWsK2oj658CdldNRiatCkIjJdhGcLGAyZPRi8=;
        b=kz/hl4/fhx+SKqIsZ/3woerHfwWkvKY6GFkeSp9dpKinZRH9ImLheYQ3KRggXKM0A6
         TbSJjtN/YGYse1FNFAxDFBrgcu0LZz9ZEHGkbu/eOPebqUrSvvE64D6olBoNSc/JP9Mj
         eoJouuj1nP4vo2C4dQ63XI0aaCMmLdJoLay2ii7NLBzWIjAA+OhojunR7pZMj3G1za7Y
         BoX/jYXDL+Bt4AIb1QdYDq9MMe+clrqycnKCiuUsD+83bZqUmDIv16ce/meKLHplyf06
         6FrByvwpQzmvBCJ9I3kZaR2g0sVyaGnZ+VbtpprnJbmLXuqxhC8CjUts4rjZXaBqBmTT
         ZUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6Z1KesFWsK2oj658CdldNRiatCkIjJdhGcLGAyZPRi8=;
        b=m9pB59TfCpBgbImkgYGwUptyNLFWZ2As4MQ8RNPEYRbXGGzV+6IqTMGfXJrMo+hYzt
         YrpavFZOGKFda66JCp73G0ku9IzhkpdQcKVKYDTSki3GkUuABKW/boB2VL9rmOmriSZu
         uaxfsHO2v2gFNqdcHItviqz48RtdOuCA6zM2plHj38UpH/+TxT7cArH8e9Z2kP1tUf0B
         SYGvxkc4PFXOqhD/qUn6l+as8OUAg30GMvOmVVSScS4mqiS0mwdxIQ1Yd2k0OO+e4DyF
         7HlE2zNYmjVPlqE65SWGOz76oxEDAj08J4W/zLejLEDqHkWACc7OQ2qSspkCgW1xtSwn
         3jtQ==
X-Gm-Message-State: AOAM530/5wrXb+EfQQ8TRPzJTWu4VEofLZQs1PCc/knJ8bSAswn6FVxz
	Af8Lq2JUZ2F9XeQmbbclb7fCMUWQUe9q5w==
X-Google-Smtp-Source: ABdhPJyd1WUrqQLlo3LrVSnUX7SomfYNTawwQWOEVETBUabPwRn24Jo7dXZDNM+ilxcYWMipuaLYgg==
X-Received: by 2002:a05:622a:148:: with SMTP id v8mr4507727qtw.308.1642790851403;
        Fri, 21 Jan 2022 10:47:31 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id 10sm3407019qkm.29.2022.01.21.10.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jan 2022 10:47:31 -0800 (PST)
Message-ID: <5fcfff5c-767f-8250-3958-e8690947ef77@gmail.com>
Date: Fri, 21 Jan 2022 13:47:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Temir Karakurum <temirkarakurum@gmail.com>
References: <CANP_axL6-SFaBZJmhHr07eQFge-s3h91Xqx+4urgFn+zB33fMA@mail.gmail.com>
 <ef6c3c86-582f-a954-9483-bcc8db257f7c@gmail.com>
 <CANP_axLO0z6hOoZeZPPXzp80uNpay+Z448ZgUQSzo2m+eeMiaw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANP_axLO0z6hOoZeZPPXzp80uNpay+Z448ZgUQSzo2m+eeMiaw@mail.gmail.com>
Message-ID-Hash: 2Y5IYBGLMPV452HKKL6XWFLTNWTP2SNU
X-Message-ID-Hash: 2Y5IYBGLMPV452HKKL6XWFLTNWTP2SNU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus E320 Power Consumption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2Y5IYBGLMPV452HKKL6XWFLTNWTP2SNU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-01-21 13:37, Temir Karakurum wrote:
> Thanks for your answer Marcus. Is it the ARM side consuming all that 
> power? I was expecting more than a few watts decrease in an Rx-only 
> scenario.
> Would the power levels change when the RF frontend and the FPGA is 
> completely idle?
>
> Also if anyone has the exact Watt levels for different scenarios I 
> would love to hear about them.
>
> Best,
> Temir
>
I doubt that anyone has done scenario-by-scenario evaluations of power 
consumption.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
