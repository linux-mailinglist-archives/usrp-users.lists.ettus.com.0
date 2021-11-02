Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 102AF4425A8
	for <lists+usrp-users@lfdr.de>; Tue,  2 Nov 2021 03:35:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD012383B9F
	for <lists+usrp-users@lfdr.de>; Mon,  1 Nov 2021 22:35:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i857is9H";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 87FA138191F
	for <usrp-users@lists.ettus.com>; Mon,  1 Nov 2021 22:35:07 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id bj20so7162939qkb.11
        for <usrp-users@lists.ettus.com>; Mon, 01 Nov 2021 19:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=gGCdqtwzQWV+QAC58V7IuSTvi9Hn5xjpwpyN7X0ZDRo=;
        b=i857is9HjtbWvrPJ3GtZumm/GXIDzJRrQv+Ljke/5bSpSD6tRLPD83v6ski8wYv4y1
         tW09knZdCfzzm5L16jFr6xIsi7BG9ile4zcVeTdnagYVGjFInCK5RvxGm5bDYuK9FSp+
         Yft4KH5iVsWiG8TCCCus4j4iNJ7w3BJ1qP+KF1xkSBOLj3rQAunbbmfn0zR+9p3lt1LM
         uiapwmpVDi5fa4cR5NSinIKU+3te66kXU6QtDGfo6exSy/bcbktW2Z2+h8mcDwp84agI
         QOFCINBjmcurtH0x2el/oI03HVV39n2claCq15c9n1t0Io6/Cw26u2vslRHUGlI/g2g+
         b8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gGCdqtwzQWV+QAC58V7IuSTvi9Hn5xjpwpyN7X0ZDRo=;
        b=zxyC84i3Z073ZdSMadBEl114Y23vA1zfYxXhOh0XSWOsF98kMq4+B/fH6F2EgvXu2f
         esHfEfv3giIqWwuNNN+wHSKQInsAT9AVaSyfqIGcA95AIyAAnUReNg5FtxfOh5mH6CKL
         autgONWK8u973YhtwH6dCUHjmq+bHeFePf2OyZj7LFouHGEg95//uapWHJRzrroSoIdz
         D+w1uYVZEt+EVVhyVFAF2sA9r/ryklAMRqt5BqUGy/EZo9Sd8ALIKTcArAfSa0Wvsl20
         QNKCI1kGz6ySoGr9kCy9d4rbK45RQfmeoJ/JgjryLiIcu++m0DfQLDE/XKdioNYagQ0A
         rqDw==
X-Gm-Message-State: AOAM5328hoLzr2I4Qm6gGQZ10+T6xewvUUBiiipRj2wO0RwDVHAuCrFS
	nAMA69uyeyCy+g38D15tdcd8e/JzyFA=
X-Google-Smtp-Source: ABdhPJwQoGhrvS0qulO3La7ujjxZ2z93E7IO+74CMUH4jJQ4EwzQsGhtp5GupBBBxLm8j0KON7jh6g==
X-Received: by 2002:a05:620a:bca:: with SMTP id s10mr26043385qki.416.1635820506616;
        Mon, 01 Nov 2021 19:35:06 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id s22sm12293960qko.88.2021.11.01.19.35.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 19:35:06 -0700 (PDT)
Message-ID: <02c15964-cdbc-8c4e-dd91-11d38f89f914@gmail.com>
Date: Mon, 1 Nov 2021 22:35:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8WwKufvkzUaamqFX4HaSOlTk97ZnJTMv5Yq7kFPnyrw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8WwKufvkzUaamqFX4HaSOlTk97ZnJTMv5Yq7kFPnyrw@lists.ettus.com>
Message-ID-Hash: GXNMUYKKWDU3O2WJGHEFCPSZT7HXZBIF
X-Message-ID-Hash: GXNMUYKKWDU3O2WJGHEFCPSZT7HXZBIF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timing of GPIO Readback
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GXNMUYKKWDU3O2WJGHEFCPSZT7HXZBIF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021-10-29 10:46, christopher_beaudoin@uml.edu wrote:
>
> Hi Folks,
>
> I'm working on a project that needs an asynchronous time tag event to 
> flag a time instant to apply specific processing to the RF samples 
> from a B210. The GPIO seems like the obvious resource to provide the 
> time alignment between my external event and the RF samples. But I've 
> never used the GPIO and the GPIO C++ example code leaves me with some 
> timing related questions.
>
> Specifically, in that code it appears GPIO Readback is timed by when 
> the host controller asks for the state of the pin. With my external 
> timing signal, I'm looking for a change of state over a period as 
> short as 10us. So if I were to poll the state of that signal in the 
> while loop reading the receive samples, there is a good chance that 
> the state change would be missed. I suppose if I make the sample rate 
> high enough and the frame size small enough, I could guarantee 
> capturing the state transition within my timing constraints. But this 
> seems less than ideal, particularly because of how sensitive the b210 
> data buffering is to packet size and processing load. Maybe the way 
> the UHD driver supports GPIO makes it incompatible with my 
> application. But before I try to engineer a different solution, I'm 
> hoping someone with a clearer understanding of the GPIO implementation 
> could tell me whether or not this is the case.
>
>
> Thanks,
>
> Chris
>
>
You may have some success using the "timed command" infrastructure:

https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
