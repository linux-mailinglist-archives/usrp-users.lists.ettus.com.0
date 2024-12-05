Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E09D99E5B87
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 17:34:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFFBE3859C8
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 11:34:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733416497; bh=BjiYK4QW2b7JK8n71oa73/DaeviBIc4ITrBuf2rzw/U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IjOVx4T9C3cmHubtJVG9W1JVbjlrIlcYOEK1eKMJfgYdCeNSk9Fqt6yWrT/jtSK/U
	 1ljFlOE7b9Ef9hO8kaTXrXMMrWgT9Km+o+Zs8NdtKPlAnO4oqykl5OskZLgtLs49OB
	 8PVvstFb1cKv/wJlQfKmbLgNHxSYoUzOIgQv7bPwG2GLblTS4SPpNKEqPEbBG10E/h
	 Pt9CSNHMatEk9OG1qryYrejsiGFils+u5QFEV9yU7ktu4lh8l66oQz/ZAUHWrnOy5o
	 keIT7GS+eZG70NI7/+tsLal0IRP0zlHG0hyYQf/0zZiUOlXtIn4gwPtgxivR6Gz+wU
	 oZbqt3ltNKbHg==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id E44AB3858D5
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 11:34:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EIHKsNQZ";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7b66ea49407so101755185a.0
        for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2024 08:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733416452; x=1734021252; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EDsuxfKJwWG1ecEnf0hlW9pfgOu1ekltB0HRp0ATpJg=;
        b=EIHKsNQZvkuoRmtdHWYCARFGo0k1XiB8jdB+LjsfplDKWqqh8x8vx107wWu3AI2DeM
         cKGjMIAYQ/KQAEVgZ0AjcA9k/Z8kuxjdNU9N7FyY+Vllf1tkr60oaBihcNpPYXsFxAye
         FAWBWaegxfXfICr+OtyX5UcmBX7bEH3pFY4l9N19uiV5a+HQrTAdr5ikFNCfpWGUNL0g
         fclkhdTKtevKMW7mBNctjDQhKzYw/7jE16HJKd3qAbu7JXDgtnaxoZGM+ZzwXjRVVJEo
         ovpqhLhRbQ9KSx6GACKIPHC4mJFa4R7MDJGdJkhHKNmBVRxPJiUC0vusBw93q/vxgOlZ
         41Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733416452; x=1734021252;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EDsuxfKJwWG1ecEnf0hlW9pfgOu1ekltB0HRp0ATpJg=;
        b=RnAW3qqltuGvlQA8Ewx6sOC7vuXDnd6GdATc6hbP20hh1siELFEUiDSrYO4VWtRDFR
         bLc4sedXgPJy8JqG1sFIDTMyRVcT0laN2tZ+A5aegS+xokzdLotSGrNKnpzp3f5dyGyE
         yt5CxTIfJxK/RS/qs/LfWwwClwCuy/tN6A4HixM/hOvbXKPafY2irB6MWtSRp25G8WkR
         3O8J/Y7DJRtD4Rfr1HYRzQ0gXBY91QoOvKoXObp8DSBbjwGaAnpECBq1hWFdQXBa7d9x
         xlj3W8bDIfFNBoaGTNEdbFYXn+zgRG1Gealg2oDVNz8AOzUrrtVO0Uj633DTEAqufI5R
         qHHg==
X-Gm-Message-State: AOJu0Yzs+hulCKRR/b0KKePolU4MNdPQoqhU5LhjLnbgFcdBXZLpn5R7
	y8zR7WoG+Oi6S5UaYQeQAfAh6yqjFgvI+0x5JiM8Jov2rBwPNdh60QmrsQ==
X-Gm-Gg: ASbGncs4z0qV3PtTfcx7kj0cbnqxqFtzJ+fD4H+uISzUrF6OuzOvuQX44djNiSgiY9B
	1WuwRMVZ543b3jJ7jXSJjCPCHWn7bwXojsLWs5O3eidXdYh01f5wZ/fMYlJM6ImtQyfr4A/4jml
	tfM5Q0UbiPE7f3lHTNWN3uu3rCwVPLaQly9JMbAqNheyqHmnRViw3/ql19cQHhOtKtLrJ3IpomA
	aeLDOsfli8/hNvDDd+LPRRixoW1xg6KqZj5WQgVbXSeahwT29iolwHsQJdY
X-Google-Smtp-Source: AGHT+IGGL3TzB6oTRXonUTHXXKq587ts4Qu8AcfQDGpubDYAlDCR6LO8n7eiISftCJHV5afDP2YWEg==
X-Received: by 2002:a05:620a:8001:b0:7b6:72fc:b046 with SMTP id af79cd13be357-7b6b4183babmr784465385a.7.1733416452226;
        Thu, 05 Dec 2024 08:34:12 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b6b5972b48sm76174285a.0.2024.12.05.08.34.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:34:11 -0800 (PST)
Message-ID: <ad7d5782-d715-4b0e-b5c8-0ecb58fc8b2f@gmail.com>
Date: Thu, 5 Dec 2024 11:34:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tRaBRbu7Ez2vaDqaSsAfHkpg5SbzVsakTkObb7boA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <tRaBRbu7Ez2vaDqaSsAfHkpg5SbzVsakTkObb7boA@lists.ettus.com>
Message-ID-Hash: HHAFPYHINS37O3NIYUHDXC7ZRLCXUUBF
X-Message-ID-Hash: HHAFPYHINS37O3NIYUHDXC7ZRLCXUUBF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X310 - Streaming Data TO the SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HHAFPYHINS37O3NIYUHDXC7ZRLCXUUBF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 05/12/2024 10:58, steve.wakelam@roke.co.uk wrote:
>
> Hi
>
>
> We can stream data from the Ettus by following the user guides. 
> However there does not appear documentation on streaming data TO the 
> Ettus.
>
> Firstly is this possible and should we follow the guide for streaming 
> from but change it to a tx_streamer?
>
>
> Thanks
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
See examples like "tx_samples_from _file" or "tx_waveforms".

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
