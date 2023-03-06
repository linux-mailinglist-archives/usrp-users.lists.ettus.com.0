Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F216AC1B0
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 14:43:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D53B3853BB
	for <lists+usrp-users@lfdr.de>; Mon,  6 Mar 2023 08:43:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678110234; bh=vSfFoqNEazBGO1Vue9rd5s1qw3zmt0h34voPt8Uf/Bw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xCM3Fi6BY8CZryrxRGyZexg7J1Q+fE3X+KKqqQhFEgiDU+hE+AgcQ41FpLxgZkQ8o
	 q5Hg4DCzV/S5dfzyqQr19A6h+YqxSntiWQ2DvqxC0TAxlO1h6QUzMEuaPF1kzqdu3g
	 FT7WuPDMb/PRgD4UyTtSm0Px9k6Z9+clC+Uu22s97mUkvC6QYj1XMl5GzwGVzjcncu
	 d0ughVA6etkQzAH46DweXcmgaBmlzsaLvh3ufBL2oJZ5vfxzpgTeuK4QrOxYRwWDew
	 hGCn082SySpuG8oSwVZF3/Uku+nUUKWnW/lGK3VOwI1VWE9tsrIL0rfos+sT2Ku/rN
	 tJC5sfEzfggxQ==
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 9EE07385399
	for <usrp-users@lists.ettus.com>; Mon,  6 Mar 2023 08:43:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="AH5nzJWD";
	dkim-atps=neutral
Received: by mail-wr1-f51.google.com with SMTP id q16so8870249wrw.2
        for <usrp-users@lists.ettus.com>; Mon, 06 Mar 2023 05:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1678110194;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1d6uq4+M/Ohf60amCPWquCCe3tdyzWXafuy3JLT3UY8=;
        b=AH5nzJWDTYOFoPGIN8IR4J0GXjxT7wHpHlrw/HnjsWNbEEHF5/z9FPcIjysxY4vlxJ
         E4kYL7Eu5HnQuE3acdcIP33OZ+aG9uryqw8TFWip1FDs6e0jVA6iNJKzXa+/w6xftU9P
         lK80Ye5emE43rO/vSmPUyXnFWThVIthD1f+G9GGJFBOhCJG3sCIw7nHMwBMnQ989fVWF
         pCbzhbNxh3xp2S8+WpCocyVCKxGeQJ0cv6IkHxxTeyF3TJqwDiuqWCaG08xeYOuf1d9c
         9qsbf0nC4ha333ZX+RycSO8ObigtpQkX4SFY0e8myXpvYRLkaE5JMtNvq08p7V/oc0Ao
         z6og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678110194;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1d6uq4+M/Ohf60amCPWquCCe3tdyzWXafuy3JLT3UY8=;
        b=hd3a12uEEmvGB455z/6J3CpoDpoAX9Rt0WwQPlmqa1RUa2N9qFUQOLmtTCNVJFm/04
         2aX2OLu2i1s2WcylVmCGdVG3zI1kj8D9FQ/ef81CAi+PNKTcR1aqtYkpWjJKjLR7mRUN
         cA/4SNruVyy8uCKxOojo2smyhww5oNaFAWoUg3X5/f6OXWIVYw9LJL4EhpDN6DOKDlbk
         kLxfQUt9yHssFS/kJSSSZl5Z4sbSNmu4YMRjjJtS+U7YXd4s/pnHN6HuFg0AH482l7CB
         /1BGBlDwsEH8MIwi+OrxQ6oFg2K6HZZk7iVVASm9D9ERGIUN4Z6rjIFg6d51O2JOOKOV
         Ev1A==
X-Gm-Message-State: AO0yUKXziMxbUfrKDFZzjLudu+Bqz9wJyvXumUq85Y2AEzy3F9YCgTjU
	+yyNHB0GgKjjuXgCkD6UDRfZ69Vv
X-Google-Smtp-Source: AK7set+tlViQp9vfomdwO1ijVH3/oh98mlp7fR3hOzfkybEr2dKJdYz4U8/QQOKwKLWFXx2V2Fi82w==
X-Received: by 2002:adf:eccf:0:b0:2c7:65b:946f with SMTP id s15-20020adfeccf000000b002c7065b946fmr6767690wro.38.1678110194543;
        Mon, 06 Mar 2023 05:43:14 -0800 (PST)
Received: from ?IPV6:2001:9e8:3859:3c00:998f:ca6a:6065:3212? ([2001:9e8:3859:3c00:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id a7-20020a5d4d47000000b002c5706f7c6dsm9929185wru.94.2023.03.06.05.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 05:43:13 -0800 (PST)
Message-ID: <8eae5ca8-6242-db6e-3580-00df89008df9@ettus.com>
Date: Mon, 6 Mar 2023 14:43:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Olo <olo1618@protonmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <8NUNVvJOOiemNjxv7ueYH0Y-xzwLALqCr4V1LAO3UKpqh0Ziv5SE5eF4hoAEt3mXKZ313vV_jLOTO8o8TIygAQjpwGICYqVA6a_oT8J7ty4=@protonmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <8NUNVvJOOiemNjxv7ueYH0Y-xzwLALqCr4V1LAO3UKpqh0Ziv5SE5eF4hoAEt3mXKZ313vV_jLOTO8o8TIygAQjpwGICYqVA6a_oT8J7ty4=@protonmail.com>
Message-ID-Hash: LXT6AIOOFC56EOIWMS2T2AIOA74NUZ3O
X-Message-ID-Hash: LXT6AIOOFC56EOIWMS2T2AIOA74NUZ3O
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using 10 Gigabit Ethernet for USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LXT6AIOOFC56EOIWMS2T2AIOA74NUZ3O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Dear Olo,

that certainly does sound like it should work.

Note that the limiting factor is how well your notebook's thunderbolt works with that 
Startech box. Also note that if you actually need to process full-rate date from two 
TwinRX, the thermal limitations of a notebook computer might limit your CPU performance. 
Then again, there's very impressive workstation notebooks these days; in the end, it 
depends on what you're going to do with the signals you'll be receiving.

Best regards,
Marcus

On 06.03.23 10:56, Olo via USRP-users wrote:
> Hello,
> please I want to know if it is possible to connect USRP X310 with two TwinRX to my 
> notebook throught dual 10GbE to thunderbolt adapter from Startech (product in link):
> https://www.startech.com/en-us/networking-io/bndtb210gsfp 
> <https://www.startech.com/en-us/networking-io/bndtb210gsfp>
> 
> It uses PCIe Card with Intel 82599 chipset which is suitable for this purpouse (mentioned 
> in this links):
> https://files.ettus.com/manual/page_usrp_x3x0.html 
> <https://files.ettus.com/manual/page_usrp_x3x0.html>
> and
> https://kb.ettus.com/USRP-2974#Choosing_an_Interface 
> <https://kb.ettus.com/USRP-2974#Choosing_an_Interface>
> 
> Thank you for your reply.
> 
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
