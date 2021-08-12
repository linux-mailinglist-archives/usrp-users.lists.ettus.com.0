Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6EB3EA545
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 15:12:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 589B3383DEE
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 09:12:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EN5kOfAW";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id AA250383AF3
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 09:12:07 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id az7so6444502qkb.5
        for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 06:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=6ieX7FPKiL472FXXp56BzR0JYorytY6AJNAOsCZ+xDo=;
        b=EN5kOfAWBBivBM6nnLz3kAyGPKEKnrhTS5sWLWuvpMU+hkU0cKKTgRzOFeCADto0lt
         CDh2mkiAOzvdbsJ3XB+gfVzaQYht+uk1TL552/vHB0/YHdooeG1lC/Ze3zyEFWs8h4VA
         tcj6VPQgXpEiEHijiXPNEjyl6+QRyAtM8c1NBwf7Xjkl/X7AiNVolmn6pd6mNMVQf+0h
         CofoHQ6EstJvR90Cv3u1tcgFwZaazjA8KfCXV8TO6zPGTpFjiwQ2OuIKe+r6dpMwODZT
         Q/JZ4xmiXm8a8lbZWzv1Jcly4FvjvIXH2omEJJGi9ZPvFvVzXUZyG4JAwy7v1OEl8SPA
         tY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=6ieX7FPKiL472FXXp56BzR0JYorytY6AJNAOsCZ+xDo=;
        b=oSQmUh+Ad1erdPPfl1ULxr8iPXAnizZw33pxOSkFGeWTotS31ichncuM/KF8CnZtWv
         JSshmWbAnGEgHPdRoA40nJHp65DScMxeDFztFZqWQ2MTJG65GrfsPHc+tnAnIwZAFX2B
         xLem7t17B9c1f+A+m92SsmEVQ8kGbLcT/DWYkNyQSX21kTRORJuLIvBaOtI6+7Qsau8G
         6bu11iCMCrOnaOrQlsWpryAGku8etnNl/nE8xinc05IERZenoL0DpHN5WfKQyj5KunNu
         WDEB5Demrq7D6MqGNJ5LeEh0MKeOV5GckHyTurtK/3BsXn/PAzHYV1BOIrOOp9vIhgxe
         UJWQ==
X-Gm-Message-State: AOAM532b9ojZrD6DjStVLotPMne3e6SJE6I3pXyfQJyFsbLStrDHjP/R
	Do8MDoC4/VlfrsH8vXJxz1R746HuWoVqSg==
X-Google-Smtp-Source: ABdhPJwMgDLMuJtHW1jx8+L8yRqaV+2uNULeKwR1XaPrJYOkyLLH7OUOXM9x/BzxP7lw0nVmZt4W4Q==
X-Received: by 2002:a37:e116:: with SMTP id c22mr4470865qkm.297.1628773926839;
        Thu, 12 Aug 2021 06:12:06 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 71sm1315816qkk.26.2021.08.12.06.12.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 06:12:06 -0700 (PDT)
Message-ID: <61151E25.4070208@gmail.com>
Date: Thu, 12 Aug 2021 09:12:05 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <f8e666448d0c40aa8b024abf3a1f8206@erdc.dren.mil>
In-Reply-To: <f8e666448d0c40aa8b024abf3a1f8206@erdc.dren.mil>
Message-ID-Hash: ELDAMXYU2DT6FTN2UGNCSAS3COKHBWNB
X-Message-ID-Hash: ELDAMXYU2DT6FTN2UGNCSAS3COKHBWNB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 in cold temperatures?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ELDAMXYU2DT6FTN2UGNCSAS3COKHBWNB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/12/2021 09:07 AM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via 
USRP-users wrote:
> Anyone have experience using an x310 and/or the UBX-160 daughter card at sub freezing temperatures? I know it's not guaranteed to operate below 0 C on datasheet but curious if anyone has given it a go with any success. I am in process of readying my system for use in the field and wondering if I need to reserve space/power for a heater of some kind
>
>
> Thanks!
> Casey
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Your main issues will be possible condensation (very bad), and the VCOs 
in the synthesizers having a hard time locking at some frequencies because
   Ls and Cs change with temperature.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
