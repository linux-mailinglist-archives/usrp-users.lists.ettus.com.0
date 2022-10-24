Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B74E960A796
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 14:53:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DCAD383D54
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 08:53:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666615986; bh=Da3PRbBxC518riGrASqlpuEmSQemxz0IFRC0hfzgJUA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xuAy9fZjn9FmTNhyaiLS9auk9a95RLFcaGnCCn6pQSPoAJmSSmF9L+ZkiBnb/zBSm
	 6KDdXtS8u+UTnkSrxC9LPY6X4RQc5npWkXnO3GzzAld8bWpYuhH49lwSpBQAXP5j5/
	 pwmu05p+kKKTBEcQ+BM89lSHcM2mkDAil0sDHEvU/5C5tH1N9DHa7uqnMmgVU95XHB
	 m2cuTGCxfdouNfDBq01dOKibFOFOrMm4P/Zr71CVsrVAfQEsAAioIGvFdrDXHVKSy8
	 dVj5mV6FiOQuXl43FtbKUbg9uStLT+vkR8TY2CoTtucH9vCiHHh6Ft2M0LEHF/HtGH
	 9kPwaLt/nrJjw==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 43E16383B9E
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 08:51:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XlzFJYBA";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id r19so5523213qtx.6
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 05:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kWyVjriRfDdL6NKsYiuBlSdeKPG4VCs/5lRpLmDZP2Q=;
        b=XlzFJYBAqkAdnvxT0ZRoolvkqIgVba0k54NCLdIy/uZ8HSGgPdOtXFpOzgdSpFBfjG
         1IF6NQ0GzELZVzVULeD17+4Wcc/3Zu0tw0NDrugDu/EfqBUZmIoM7PrpO2YeNsVmJ0qI
         r3E1wmvh+N8mFpgjnN2rW40gjg3Y85z3XH90e/KrNy+yNX6YhUeu9dWIqJsrAzwOP34E
         s7DxBDX/8I87R2OfAKAK8i5Y50kvcwQL3FajmMJB/bZJL9Gr4KWk3p5hLYXahnLlT+Yy
         d2F99PO0rO3hXtxMwXi52apDxNpxhbwvvL44Loc+e9VLMNGzQ+1zFptnCBptwI+Kz2vK
         covA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kWyVjriRfDdL6NKsYiuBlSdeKPG4VCs/5lRpLmDZP2Q=;
        b=kGd48MK3mfu60fYCFeshuRzLhhuZiWRnM+7IYiB6iutl1gZ+CnY6AS4LsihqtS68Ac
         TEhswpCDv5DhKYh6VSaIEQ+X0rtAd0CV3sbDIaxfL54zd8fYnoDGDUR4gFYEFg02X3kO
         c/ZPOrxCGn6SBZVewJK/blRAwHl7YI/EBldE297NUameVMSGNdK+SGo0foyZinKAEL3l
         g09AwZtXnQ2SNXiUMCeiAB9hy93xsD8SWgEBgiOrxIAbl3dOCYQVy7kvrqILUCU0YlY5
         t6gooHHNXJDa+UyXO6aEAax9YKCuslC32iYEMd1kF3MPgz+ZHgBJI14FMMrhmSVUW3Yg
         bOew==
X-Gm-Message-State: ACrzQf13eT0iMxDkzsjkltOzaZasPVuowB/KxLKWQNOI7ODLhqWVZZZ9
	GLyxoiJxNNaAXrAU1UuyqbCRhUJ4GkA=
X-Google-Smtp-Source: AMsMyM5PFGo7HIyOd5AMmIC6leKS7DtiktxV9sXwYQWjOoHiV8wOBvtD1VRV8FdiSOjX65j/nMoXoQ==
X-Received: by 2002:a05:622a:1344:b0:39c:f7e0:3847 with SMTP id w4-20020a05622a134400b0039cf7e03847mr26083207qtk.638.1666615883385;
        Mon, 24 Oct 2022 05:51:23 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id v21-20020a05620a441500b006cbe3be300esm15247429qkp.12.2022.10.24.05.51.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 05:51:23 -0700 (PDT)
Message-ID: <4645b0c7-7a61-8fc4-ae95-e146feeb887e@gmail.com>
Date: Mon, 24 Oct 2022 08:51:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <20221024103340.717b7ca0@x230_1.trabucayre.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20221024103340.717b7ca0@x230_1.trabucayre.com>
Message-ID-Hash: U35TG4N4UQDLPH6PIPJT72MOSXB6CLAG
X-Message-ID-Hash: U35TG4N4UQDLPH6PIPJT72MOSXB6CLAG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gr-ettus status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U35TG4N4UQDLPH6PIPJT72MOSXB6CLAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-10-24 04:33, Gwenhael Goavec-Merou wrote:
> Hi everyone,
>
> I am working on an OOT block with latest UHD's release (4.3.0.0) and GNURadio
> (3.10.4.0).
>
> The gr-ettus master branch [1] seems compatible with UHD's release I use but
> not with GNURadio (build/install fails)
>
> I have found a fork [2] who compile with my setup. But support seems limited to
> build and to provided OOTs. rfnoc_modtools remains broken.
>
> I have, locally, fixed some issues but before spending time to this support I
> prefer asking about gr-ettus status: a complete portage to 3.10 is already done
> somewhere or everything must be done?
>
> Thanks
>
> Gwenhael
>
>
> [1] https://github.com/EttusResearch/gr-ettus
> [2] https://github.com/bkerler/gr-ettus
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
I believe that work is in progress for a port of gr-ettus to GR 3.10, 
and is expected "soon" from Ettus/NI.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
