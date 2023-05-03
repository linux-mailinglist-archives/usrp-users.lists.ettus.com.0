Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A386F5921
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 15:36:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43DCD3845F5
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 09:35:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683120959; bh=50+hRDxgACM/HyUshqvzvCx+e9ojT+EeHy989xFld2Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nqLeVkvvrz347kRkKv2IQC3ghWiOxS64M2hTtgq3S43voUgiB8pGbrZCOpY9BMlw7
	 MtiCvE43H9OJ4KEhuiYEPO/O5XUq/pfN26FmWBqyVdbJHEcuaRpojhmm87PrRBgh2T
	 MXfzghnro69b50nIotW5YXFulawXRoxJYxcAj7zV9XD2mVwSyP1epWvTx05SIZ3AbD
	 Lh4rWAvqqqkyt0x2ZeudEDYhBPIt0ZPatX47DHY55nPjP4MH7kjJ4wVsdd0Dj8ld7y
	 1TsryB40znDCpP6HfB6vTRK5N0IlSUXTLuL1Yqc5C3eaBcwyZZrwYfRy3GHxLIW3PR
	 2L+V9F/iyTd0A==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 841DF3845BB
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 09:35:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bd8dZcaD";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-61af33bdf1dso17177736d6.2
        for <usrp-users@lists.ettus.com>; Wed, 03 May 2023 06:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683120922; x=1685712922;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=paju80Vj8Hrkfr5h1BoVx3sw5A8IaEegqMbzEQ5tVbo=;
        b=bd8dZcaDIfKil3JwvRHfhCXQ0ml0/ovKCtbeCjZId/AroG8ry5r2WSYpMETd3HWj0P
         QGzfMqK98ydzaY1TRNX8B124E0syzG+gWPnJzMXZHD/TtsaZxNnoz0EbUrrA9h7MjmxD
         FFz4k7/nhPXBdMREVeCdXUtNbJtja+Qo/xBpmWh08VAV+zQIVkcY8zHaatt0SjfXRCwb
         I2zxcyBgeMTh7Pn8U7C7aiq5eoji/92DUtLEw1tSaTky+0yfAJkXjwPJmvaZttSI6kYm
         akhgqGzwB1LgiJI2h9qj3te6eyTkF5OVOnDQ2xwDxuLCBBYDNrpfTkVdN3NEvlNx/IOh
         CQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683120922; x=1685712922;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=paju80Vj8Hrkfr5h1BoVx3sw5A8IaEegqMbzEQ5tVbo=;
        b=KpCYTcAxGZJVY41p5JQ/4n572JQkf4TNKObagpprSdrMKscm2WIeSvgjUp7UAHHK5j
         pl43M6Ah+SVGoHJKPBkHDcHJjRXSS7NvQi2Z1k40pyzd2TZJi1phoF47BfCHHd2aBL+z
         5Kkis9zVz4uY2LjOrQ9yh3iqjOd+1/hmZNm1nOH7bGco3+r98FdNteVXRjbmyZCGtGyi
         jYnPzQLo1JEX1dPobwQRdax6/VcUSrq4WddqGQAp86jK5tR0yfuB7Z8ImGdM6yphRVNI
         ik5Y1MY3+FIkd+uu6DJde+hc8CQE/zlTo5Dmzo96QG5yZTtjcGWRvU/WrsJDdV5aWu2/
         9qGg==
X-Gm-Message-State: AC+VfDwYjYZeqHP2IanPIOexwoI9sJ9eHtHkrPFgUh007Zh/7586eb/+
	kwWINNcUNnSTp22DysYJtluj8L+4LD8=
X-Google-Smtp-Source: ACHHUZ4YZc56t9uiJXV7pSQLn0gcq0HKN5JPP6amVljV61J7rW0PA48Vov8+Ia5Opthvtgt6xLSolg==
X-Received: by 2002:ad4:5ae2:0:b0:5f1:606b:a9c4 with SMTP id c2-20020ad45ae2000000b005f1606ba9c4mr13375597qvh.24.1683120921707;
        Wed, 03 May 2023 06:35:21 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x5-20020a0cb205000000b005dd8b9345aesm267621qvd.70.2023.05.03.06.35.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 06:35:21 -0700 (PDT)
Message-ID: <dc6ae2b6-3eab-8b17-4205-2e341d9d6e6a@gmail.com>
Date: Wed, 3 May 2023 09:35:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <qERvk9iOSpnEho6WkhmHjFUj2kRp0Qn11dsmng7MKw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <qERvk9iOSpnEho6WkhmHjFUj2kRp0Qn11dsmng7MKw@lists.ettus.com>
Message-ID-Hash: 5LZJTAODO4S5A7XZ2RPVBIA3WHU4EQDS
X-Message-ID-Hash: 5LZJTAODO4S5A7XZ2RPVBIA3WHU4EQDS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: connecting to USRP through multiple 10GbE link
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5LZJTAODO4S5A7XZ2RPVBIA3WHU4EQDS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 03/05/2023 08:57, h57jafari@gmail.com wrote:
>
> Hi,
>
> Can anyone share a sample GNU Radio flowgraph or .py for the case of 
> connecting USRP to PCIe with several 10GbE link. I am trying to send 
> and receive to USRP through more than one 10GbE link. my PCIe has four 
> 10GbE link. thank you.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
https://kb.ettus.com/USRP_X410_Getting_Started_Guide#Network_Connectivity

Use both the "addr" and "second_addr" device arguments.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
