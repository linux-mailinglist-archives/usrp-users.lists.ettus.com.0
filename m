Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ED0752805
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 18:07:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECDE3384A70
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jul 2023 12:07:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689264476; bh=t6uoli+Cu2hmlcuBTJUquh2Pj/r+lyXc0tEuV0OG0Ks=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yN6rj8G9ZGMoI0HdFURyHiDjdlSYmbfJjsfX98OzLfMTb/nRsplP5wLh61G1EBn7E
	 pmg9WE/akfYERdAN56yQJzz43Apf6dzfit0+7ZWA6pfkUiFSNUlreZDXkq9PKGJdF4
	 fUjPsrPG6FCod3B8LGmY0Veu+Yi7JwK2/BiffnAda7kwS4MUS/xp5vjXf3z/KJZvP2
	 uzX57R4hA2CLYOfiACo0Agj6DHTlwlXcEExJZV3m6mRHgWZpjHYWbCGahNz4HYtUhG
	 jrXrdQlWGrkwW4x37HptluC4eWBH7QRZN5ib+/J4PxX+69/BxQ+LSvQwRhOcNEulkv
	 f8H4SQN2A8uew==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 84D6B380C5B
	for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 12:07:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dZOqiV9G";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6237faa8677so4053016d6.1
        for <usrp-users@lists.ettus.com>; Thu, 13 Jul 2023 09:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689264439; x=1691856439;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Kks+Zu0CHzQQsxvR0scQlekHGBpbrZN5YsMfwh/tfo=;
        b=dZOqiV9GOHjwlCP6jvyDwh8ZGtp+xVtZNyL7nShPdddZOTq66e+IMJ3pnSuOauxwKB
         OmOfmdAXGwRPONbP5OIOwBsToieHG7c7n8mBC568xiFhj3yVtbBmtTD2mpjpwQcJonfA
         3PeLprK7kcgpAMrexn3jcPb/jc9Zqw8DRVRvC7+LBk40xAenwP2NsWuQcPA+tcI3tUKN
         29rEn3lQEDIFLIAAgRXmpXQjgQkiVQ0QYJEp4udMwktK8WdSoBjhCwv5dcganXR8vhyA
         fAaL/dtRzZNM3BEyUwXPaIaLgTNRcqRaHXSgip2HRV3Jn2MSKdyYFHNP4k61oAprIKTY
         9cTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689264439; x=1691856439;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Kks+Zu0CHzQQsxvR0scQlekHGBpbrZN5YsMfwh/tfo=;
        b=BiIJk9AZdA2MHwhNNZrFpN/26vi6mpuxeo+nrHdFZfX46BGBCZMkB64q2CZtIa+car
         /ZTAWE8/wZ67+zuici+rra3GeEAC6VJWpgUL67mWPQiH/ewMDwfhFAqAPU76EdLD4yQ7
         IOt2jx+RG+G8jjhOp3lwEOAsWj1GuH3IILvosZU+5R6zb1Y051+Z8Fobnd/8d80PG5aH
         jN7lg/r4L3RcSbJgYOY+vD+OzNSXibd+WluJjqrX+WrG/sNq0uxR3HeweeTzNB6zQr5s
         TErHim6bxedFEz8ZDtQTm2DUxTEZfkeBZu0ssU3y6pFb70V7j3g9WWEbq3TLssORvGk6
         HSvQ==
X-Gm-Message-State: ABy/qLbdeaz+CaSILNYNUJDAALRqoFK9osIOX0w4jW8Cgn7cM6UETitP
	93SGaUekDxBsUiPrbC1QTH0GBkRjUIY=
X-Google-Smtp-Source: APBJJlE4s/f/p5Pw+dhSOm9NuaAyNyi7P3Vu3yKs3nZFB5KcC8m9/n7qxv1GlXbyau2ihGvBJ+y0Ow==
X-Received: by 2002:a0c:e401:0:b0:62f:eb99:edc with SMTP id o1-20020a0ce401000000b0062feb990edcmr1323902qvl.6.1689264439679;
        Thu, 13 Jul 2023 09:07:19 -0700 (PDT)
Received: from [192.168.2.196] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x7-20020a0cb207000000b006300e92ea02sm3201287qvd.121.2023.07.13.09.07.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 09:07:19 -0700 (PDT)
Message-ID: <9fbdb65d-c7c2-85f5-ec63-c1c0badcde93@gmail.com>
Date: Thu, 13 Jul 2023 12:07:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CABDEqCxOhUtdZkO_DZXX6uwrdxaUjR6PkxOgRAkp0RxsVS+S2w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABDEqCxOhUtdZkO_DZXX6uwrdxaUjR6PkxOgRAkp0RxsVS+S2w@mail.gmail.com>
Message-ID-Hash: 4QGVJKC2ZDH2DXELP4H5G2DXXJYKCQQQ
X-Message-ID-Hash: 4QGVJKC2ZDH2DXELP4H5G2DXXJYKCQQQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: multi file Tx/Rx over OFDM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4QGVJKC2ZDH2DXELP4H5G2DXXJYKCQQQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 13/07/2023 12:04, Moath Sulaiman via USRP-users wrote:
> Hey all,
> trying to send a text file using B200 and receive it using B210 or 
> PLUTO over OFDM Tx/Rx blocks.
> the setup works fine, but I need this setup to be repeated for 100 
> different text files. So, I modified the python code to read, send and 
> transmit the files one by one. the code works good for the first two 
> (sometimes three) files and after that the files written at receiver 
> side are all of size zero byte. I used another SDR on a nearby machine 
> and could detect that there is transmission going there.
> attached is :
> - the flow graph to illustrate the idea
> -python code files (main one is ofdmrx_processor)
>
> I wonder if it is related to buffering issues, you kind help is 
> appreciated.
>
> Moath Sulaiman
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
You should probably be posting this to the discuss-gnuradio mailing 
list, not here.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
