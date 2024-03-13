Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2620487A9AA
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 15:43:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21F91384EC6
	for <lists+usrp-users@lfdr.de>; Wed, 13 Mar 2024 10:43:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710340993; bh=J4HZ3etPo2TNNJCNBw9OR7TKBgDifP1xb5inw6gVyIQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LH7DDA2VevV3vragrJ7wsFB337DRzmPKzdlJFcrTSJrT++l1Jm3TEAZ+2mLtyLA0o
	 8FzPSB2GBqiFdaMx9z/FLd8ZZ82zCktbq6OGqn5MNkmm1Zr4G6NHIAQ6ZuFA9MBUy7
	 L3xNFMuufWQibblc7SGJSdeOu5YEA6ABafFQEOl3kbanywUbOpZWbA7QNc8OYmhmfv
	 VAIcBq/eZ+GAzre6CE38nRwQxEYrLKS9hui5DASsZ1V1oEoYtEkUuavt5KtOgJZkYE
	 tJYM1IkUYkjDE/iGjmKnHd5LCy/HDQdlcNYhxTOBVEgJosLIzrpd3gGFr8Nb9xShXk
	 PVYO93SBb0u7w==
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 481D9384E9A
	for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 10:42:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="lVj4fm0i";
	dkim-atps=neutral
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-413ebefa168so3400625e9.0
        for <usrp-users@lists.ettus.com>; Wed, 13 Mar 2024 07:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1710340954; x=1710945754; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ytQ3ZnJJqxzfebCRLwUtZ2GOQNSm0oQ5VgOcZfGGIQ=;
        b=lVj4fm0i5F8v9dlEHEfl+5xUZkgTMcBUzKTV7XkjQzgNr5yGG+MBGuSIZViV5o+8ca
         AZlQ3VS+pkShsGK+7IklU+Jo7nLimcCpfHMkJ4lq4/bcuceXA+ITHyUWmDkTzzWw1jez
         hjzWkJth3JAhKRueRJkAAGGlSnReRrARu4RFibIq+As3dt5CL1Kn/gVApzssSjNlp0Hd
         UNRwhFTrC4UQj/nYKhPw4m1Il9Mwj/Bv4fT3gkv8QdW239KK7R30seBHQCjHS9cGD2RO
         oCb1Fhmyk4fAoOxek8BxhtGp4BctXO++AA6VljEVZ6Pg7FuOLE0AI/FoXMP+PISrTE98
         LWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710340954; x=1710945754;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ytQ3ZnJJqxzfebCRLwUtZ2GOQNSm0oQ5VgOcZfGGIQ=;
        b=qbjC0uHxgheRhV51M6Yi1wv0AeoNrMuNPUZJgo6F1fuc93qwN08jpQzk0HKDCV3xVQ
         ttbF8+RQ6/X3p5325ry11PSOp+K/avpQnDTcVjqVIULj4HfiKGTvSTIGgdICcO3HXP6v
         bz7ZNn/SVf06bj4v1bwaNcT6BWDrU9wK6Ni9+rfFwVavgXgwkzL2oE/DZv23SIMGpKdH
         Eyw2Lw8h8E3tZgsWB8MylCNgvXkW4/hWF7o5Bi2DwmEZQ/vp0JdxWN6KTsLX6c2i2EbA
         RjH7dqzE4xQUlpEdm/MhA5luKqCBC6wVk3drlEO2F/HX3FUgCGszpkj9kmimRTAaIhl4
         gvxQ==
X-Gm-Message-State: AOJu0YwBhR32zEUqtrvibksbuabjk+T/2pDqzddZ8n1xcFG2/pMD9269
	PnweVXTZ5MK7z++IUbIlAQ3Pna6noMVOpCPDSOBALvtiCrNwBu+skQFyJA/Lp6avv+LM6qVjCb/
	h9og=
X-Google-Smtp-Source: AGHT+IFONdlmkFoSbMa9MhMQJDt/h+GISmR07BqidRpb77i6D8P6kpP9JV+2wd9TyEBaoeFtd73bJg==
X-Received: by 2002:a05:600c:4e91:b0:413:1810:4a48 with SMTP id f17-20020a05600c4e9100b0041318104a48mr119403wmq.22.1710340954262;
        Wed, 13 Mar 2024 07:42:34 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc70:ad00:10fc:1619:bea3:90d1? ([2001:16b8:cc70:ad00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id m21-20020a056000175500b0033e052be14fsm11723281wrf.98.2024.03.13.07.42.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 07:42:33 -0700 (PDT)
Message-ID: <6e128ccb-4508-490f-9c1c-1b5d2f80363c@ettus.com>
Date: Wed, 13 Mar 2024 15:42:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PAWP192MB21509697372FC12333801419992A2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <PAWP192MB21509697372FC12333801419992A2@PAWP192MB2150.EURP192.PROD.OUTLOOK.COM>
Message-ID-Hash: MZ5GQCHWSL47MAWZWK7453AY7ARH3DO3
X-Message-ID-Hash: MZ5GQCHWSL47MAWZWK7453AY7ARH3DO3
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: synchronise USRP Sink & USRP Source blocks in GNU RC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MZ5GQCHWSL47MAWZWK7453AY7ARH3DO3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Tim,

that delay will vary, the way you're currently are setting things up, and there's likely 
going to be an underflow on the transmitter side, because you start both "roughly" at the 
same time, but it takes some time for RX to produce some samples, while TX expects samples 
to be ready.

Solution is to actually use the "set start time" functionality, with the RX starting a 
couple milliseconds before the TX (try 100 for a start, and reduce for as long as you get 
reliable operation without underflow indications).

Best regards,

Marcus

On 13.03.24 14:18, Tim Vancauwenbergh wrote:
> Dear
>
> I am using a B210 in a loopback configuration to achieve delay measurements.
> Currently, a basic software setup is made in GNU Radio Companion, consisting of a UHD: USRP Sink block (TX) and an UHD: USRP Source block (RX).
>
> I generate a pulse every few milliseconds. When starting the flow, there is a clear delay between the transmitted pulse and the received pulse when visualised in a QT GUI Time sink. I suppose this is due to the delay between providing a sample to the USRP sink block and the actual transmission + the delay on the receiver side.
>
>
> Is there a method to make sure both sink and source blocks start at exactly the same time or at least can be visually synced? The delay seems to vary every time the flowgraph is run. In this loopback configuration, the delay between TX and RX should be 0. When adding a lengthy cable it should no longer match.
>
> In the sink and source blocks I have set the sync setting to PC Clock on next PPS, and left the start time at its default.
>
> Any ideas how to get a good sync?
>
> Best regards,
>
> Tim Vancauwenbergh
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
