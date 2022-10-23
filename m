Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FF16094FB
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 19:05:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90433383C3A
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 13:05:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666544721; bh=dJjlldHIP5APh95K2acy/E/RdUCJ7GFb9uJyMJs1b08=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cpa8BXKVSARCRz+rCJpWHK+onxmOHUuZOYkV4+6Oqa3UMNUE5Jpqu9WpSK8HRbLFc
	 YllrYQL6vS6XbfAIAo1B9DzcuJo+ukflHnOyBWcSaCDQWs0QAboxZb/AnwGFSx5Ftn
	 evLaAuQY3Sh0+fsXosURpsRscm6ITn8Y2/HtW/w/LJxxX7ooPppPkb1cp1fk0nBj1i
	 mnZe4ME8e0cF0hE7rbgRcDDJLd0OVCPMIWYMHdcDnOF8nZCinFNW5r8j1PBVsH1jgZ
	 z0Fp6MEwUIiJ3SB/eqIyL/1jMydphLF6YHa359xpshEPJuGIIup7wuXt1ZLfwYfGHJ
	 qdXnusBR+hVuw==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 6437D383BC0
	for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 13:00:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L6YwJlkM";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id h10so5234592qvq.7
        for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 10:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=semk2GIp8yowuV8CHuEeKQ8VRBMTSEvZ2hH4yPI4So0=;
        b=L6YwJlkMXLTNYlbBGJQ64HE7Bma7n4LabpS+YvPWYUflOWhZ8tJ2IlNpiOJnrQHaeZ
         VTt5hQyr0WB/AU/E18nRj75Rh6qaOFuBpbIIfJ2VuYWwzswve9Qmwa3zifPFgLwB3NsH
         6e1qtRBf4C5xWrZhQX8mNT4wd+xgD/Qswq7e8jOwWuwaDCq/M5lkQpz4VyQfuhNeL3XZ
         ucMiSQ/OOPAanvN1t2Rtze52Aq1EHpYZMpOoq9cUrQZdTGmTLBXyA8zioA3YkCK5DUMP
         EnLJcavkf4yLStXGfexliw+Gzif163hEZhq0FddNJG/XeHdHfHIKx/0rtbIlMUYWfTKH
         Fseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=semk2GIp8yowuV8CHuEeKQ8VRBMTSEvZ2hH4yPI4So0=;
        b=vKeIBnvcLMUXePBxymrsG4l6apepVKNa06dD6pcvuwJI/ZH6hfbmcPm5+xdEX3xY96
         PNZQwlbY8nRx9zi1NiNsrxXfEIUV1O0uS4gKxTmcL/vWA0xkoN69PHGdrYajCxMXryPv
         PZA9NBQoQN/Db8IsLk6mastVYwSGW8/CVGhawG+o+5m4P0uag6mUlyzd6ZdLEncO6htX
         tnIfnubYlADQ+V5WQYU6CLjukq5kHgHsqa7Au43Xy8EpNFVk8q0/8shzqumlMlvvrSr6
         TZ4BiFJ9tXQ42ng2zEBT9TdxY3bj9fupAlOfRwEOkVinsKdmgj9NFOrLAOnHg2UhRRxr
         DeXw==
X-Gm-Message-State: ACrzQf2v5rW3rpbvMTtTPvhVqWdM4VZLcZzZtZN0P3Vjcc37Nmzm/lEk
	Up4HrFgddM6pFySBC5h1h82ewmFZ8kQ=
X-Google-Smtp-Source: AMsMyM47rKajFfhTeo9RhtT3Sj5xPjbVh0v8lgdbLAggJaq6zIvRtzKJkburOblDlpFK4kUO9ERF1Q==
X-Received: by 2002:ad4:5d66:0:b0:4b1:8caf:886e with SMTP id fn6-20020ad45d66000000b004b18caf886emr24727898qvb.103.1666544421789;
        Sun, 23 Oct 2022 10:00:21 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id o24-20020ac85558000000b0039bde72b14asm11393920qtr.92.2022.10.23.10.00.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Oct 2022 10:00:21 -0700 (PDT)
Message-ID: <375f87d6-a523-7410-88ec-7bff37c7cb5c@gmail.com>
Date: Sun, 23 Oct 2022 13:00:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKNV16WYZgzRi_5AtTCpQ5fq=+f5UoM0LMhfBBwg-ZdT03tnGA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKNV16WYZgzRi_5AtTCpQ5fq=+f5UoM0LMhfBBwg-ZdT03tnGA@mail.gmail.com>
Message-ID-Hash: Z77SOKNHGWHXRRXQ5JBPACOCKVVE6TWD
X-Message-ID-Hash: Z77SOKNHGWHXRRXQ5JBPACOCKVVE6TWD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to use command replace hardware-reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z77SOKNHGWHXRRXQ5JBPACOCKVVE6TWD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-10-23 12:58, EmPa Kro wrote:
> Dear USRP develop,
>
> Because I meet some of hardware real time issue.
> I must use my finger off/on power button.
> Are there any other ways to reboot?
>
> I have used software command to reboot, but it can't fix HRT issue.
> "ssh root@[N310_IP] \reboot"
>
> Best regards,
> Kenny
>
Can you expand on what you mean by "HRT issue"?


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
