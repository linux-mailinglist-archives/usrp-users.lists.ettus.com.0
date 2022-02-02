Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 055324A732B
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:32:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 325CC3853F6
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:32:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="eqWbQspA";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 54125385151
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:32:03 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id c6so61616365ybk.3
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1sOsVXQU0Oz9zdS+QgmrxAY8SGcZs/yRQartZXMVPHY=;
        b=eqWbQspAB5ckLsCDf7qX/dQkELRybQliYvrJ6M/CKvyI48eAqqAAFcdcRPAedbHXgm
         oOJpdu09MK8gIjmOf+zhSOeG+hj/77IzutzksPc53mGSYfGiUX7jtwD4xOW9NtWrvCX8
         oOFeVOvlVFm3F0PSckVjYphUcGU+/5ix+OHnj7TInzc7q0rlnrlpblxuJLEG5prVyuzE
         oSx7RjTOQOm9GSs/cbjSSTTJKj69mUZb4vJZNU1GID76/0L8keATkEyNs7vwtRCZVF5U
         lVHeBPT88JgtORF0VReHJp3+AE5blmsrKn1e2jjeVcHzL/5LupwYvasbuXV/oxfOMQUA
         ngfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1sOsVXQU0Oz9zdS+QgmrxAY8SGcZs/yRQartZXMVPHY=;
        b=Jg/EBL0Y4UrooTvj2GEuZSypaevYLfnR+Qvf8bHXq/aXGgIG9rGxneo5hgSoOQDbpC
         RCY4K3BohuSPuIryIDCXedirddTRWK/pJ+hcJwXn7VQgIYthv/apo1d19x1N5/OyzfOm
         duSI6E27oTwm6JWF/5rwjvxcO1ArnKdmtD5yLbEdjlh5K0J8YD3LKigjGNZcZahB1rPD
         AMt+2r9UwUp4DqTSKyDTZtZ79ZaoGHAcvu1UiqZjjQGwpZYSMv6WciibdANOwytHFTKJ
         4BEqX7hfzDHa2fjIMwPhkUANpF0klWhk6mDORiLYxnd5A1RLYXxwDDdi1jzVbuwBRL5/
         801A==
X-Gm-Message-State: AOAM531ku7GkrFUHpmjLssIZL8dzJYfpSwSs7JgFZ3NvWbcsRZdiH8R3
	AM+yKR+jvUhyDNv6+01mO8UUiJmigHvKAPeU3jySo49LGAU=
X-Google-Smtp-Source: ABdhPJz78xxUxBMsh5ozt5XkfhEWv6dBuR1pgWyrzaDZGQRARciDnZBrBshRBhPBfcNe6XqhyE4d+LiE+s3yNEW+7U0=
X-Received: by 2002:a5b:88a:: with SMTP id e10mr20575892ybq.750.1643812322247;
 Wed, 02 Feb 2022 06:32:02 -0800 (PST)
MIME-Version: 1.0
References: <CAOucfAMvtY6fDqv8o+rnLRufEf3uXe57JSth_OKnDMJFOg5xpA@mail.gmail.com>
In-Reply-To: <CAOucfAMvtY6fDqv8o+rnLRufEf3uXe57JSth_OKnDMJFOg5xpA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 2 Feb 2022 09:31:50 -0500
Message-ID: <CAB__hTSupmqxL75sEGd7hLag-0ZSz6rdweGc=CMmOoDmHMBbhA@mail.gmail.com>
To: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Message-ID-Hash: ZUKGTX2GLXJ6TJTAVEIWUYTGT26FM6FT
X-Message-ID-Hash: ZUKGTX2GLXJ6TJTAVEIWUYTGT26FM6FT
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Creating RFNoC block with VHDL
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZUKGTX2GLXJ6TJTAVEIWUYTGT26FM6FT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Look at the in-tree "addsub" block which shows incorporation of a VHDL module

On Wed, Feb 2, 2022 at 9:04 AM Lautaro Lorenzen
<lorenzen.lautaro@gmail.com> wrote:
>
> Hi everyone,
>
> I'm starting my journey on the development of RFNoC blocks. I've always programmed in VHDL, and although on the application notes any HDL is supposedly usable, I can't figure out what the correct way of making the block in VHDL is.
>
> With rfnocmodtool the structure that outputs is in verilog, and the same that happens with rfnoc_create_verilog.py. I just want to write the top module aka the functionality in VHDL, is that possible? How would that be? Are there any examples?
>
>
> Thanks in advance,
> Regards.
> Lautaro.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
