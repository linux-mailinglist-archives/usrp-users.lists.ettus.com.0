Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B78AC4F27FE
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 10:15:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B27D5384655
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 04:15:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649146511; bh=h8hDxy+z/gudaW6Crq3OEOYzyL82asKDviGILXF78Dg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j7x+Cj6oqWvn/S/2dgMZ1FunB6ygjfYmsSwlFMvz6mjRwIaMNDktMa0gWmJJofFIw
	 kc9LTs55952qMCsXyNTS1xysPnQSFnjhXbP+xMcQVUbFGEtRD15kNGLuXUDLlUkV9S
	 5O8VrIbYH527hj+z1tCv7mqie6arev/+d+KBjyafbyTt7QLxxnDVwR63AyL9WrBA62
	 EuOpiq2H4NEiRtGkWV0pP2gD6Ew2ItEtDZ28xBvVJSf1Gmr0ug717Sw8LqnTqDY2a2
	 pulmxt2RDan0TIt8W33/By40Fqc8LjzkEYR2xhiBXnLJKYBlxOsMp0ACw3KHw7UPWr
	 bSnS1AroMGNPw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id D1A9F384655
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 04:14:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=bath-edu.20210112.gappssmtp.com header.i=@bath-edu.20210112.gappssmtp.com header.b="zcQtcrob";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id b24so13911316edu.10
        for <usrp-users@lists.ettus.com>; Tue, 05 Apr 2022 01:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bath-edu.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=A7sU6ATyONL52t7LVKl1xsyhYXVeIeSjw11RubxiLJM=;
        b=zcQtcrobXF8BNFKrrdacnifCzJDKhvZ0GnFfrFMzr8sVapT/b0zm8F/xDjsTQaOW9M
         i53LiX1LkxnozYq6/JHK58IPKkkQMsJGt7DVDfx9y4hK7XUhOwFpud7sKfOBzVG6YnNK
         zUJzKamSBXKn2P7Xhb/QkcUq5NCjMSMmMhYgpyXKCRk0vMnBsmX9XUGqqpq/RIN5uvBf
         ToTCXndpFY0+tUowaSS+HDdaurpkSIcYU0Sef+OF85/cPGp9fCjClYykd2O0jzSUedTn
         6jRcLMld+1TL4YQ7r7aIB7JicX1aes4CENXupCFhDioNadpjXuwz9cnli/FVZHTuCqgC
         uDgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=A7sU6ATyONL52t7LVKl1xsyhYXVeIeSjw11RubxiLJM=;
        b=n4cKguf0mR3v5dwlg7uOkm735K4thLX1MB1bZbL6zzE1F9zE4BPslmDegPs4Jf2c4K
         51TpfJ7U8vv/FFYf8wpdI4Nc4waPYsQgsQhCNc/61RBkvYudHPZDINgXoMSFcWb/ciXM
         pqga8vpozGC+9ba3T6Fy6pXMzO3GuC3h7Fr1puDF/+hi+odud4bp/s8jsLLWGco6RbGP
         dYcZRWpzLli6owWraO7Wi2z1DO7Hidks6vYPuHjl6WtN8mmiFHTlhSts78MRk1T5Ds1g
         YeI9re3MTYq5RanaDLutJw3RJFddYlZhf6vGwjt6DVumdqWQLpePtLhdQnkkk7iaek9N
         3sAA==
X-Gm-Message-State: AOAM531tV5lojKnV0G22rm0SRpyEYkwy/g0UGnzncZa9DvXrP69MsmTL
	y/kvyyfZ250sTOnMwZl5JQQBLpVI1NN0gg==
X-Google-Smtp-Source: ABdhPJwhLgH4+ufo6IoRNQy4LiEXCNGcM5jqdKztrvmdVIV/pz7w7RdlAi2kz6KcQjAor/Mpia0vdw==
X-Received: by 2002:aa7:d98f:0:b0:41c:bf0f:4c45 with SMTP id u15-20020aa7d98f000000b0041cbf0f4c45mr2267566eds.379.1649146449717;
        Tue, 05 Apr 2022 01:14:09 -0700 (PDT)
Received: from [192.168.100.136] (74.110-107-213.static.virginmediabusiness.co.uk. [213.107.110.74])
        by smtp.gmail.com with ESMTPSA id c4-20020a170906340400b006d077e850b5sm5248398ejb.23.2022.04.05.01.14.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 01:14:09 -0700 (PDT)
Message-ID: <7c226640-d507-8758-164c-f4a745382678@bath.edu>
Date: Tue, 5 Apr 2022 09:14:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
From: Peter Featherstone <peter.f.j.featherstone@bath.edu>
Message-ID-Hash: 3JNFNYIJHIX5JAAUVJKXJSXEAD347Y36
X-Message-ID-Hash: 3JNFNYIJHIX5JAAUVJKXJSXEAD347Y36
X-MailFrom: peter.f.j.featherstone@bath.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question : Ettus FPGA programming using openCL or similar
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3JNFNYIJHIX5JAAUVJKXJSXEAD347Y36/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Can you program the FPGA of either a E3X0 or B2X0 series using OpenCL, 
SYCL or similar tooling?
It would be cool if you could program the onboard FPGA using C/C++ - 
like tools and get real-time performance at high rates.
This might be wishful thinking but it looks like this is more and more 
possible these days without having to touch VHDL or Verilog (at least 
with Intel FPGAs)
Thanks

Pete
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
