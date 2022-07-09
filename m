Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 688B756CA77
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 17:59:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6526E381923
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 11:59:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657382347; bh=cxEgPDLtOEoIRDJzMzhiwg7rWalEEyJ3g+e2BWUb3XE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wpvSXKLEEEq0DgLB8GaB84Jnt82sO1ME/ZMDcljebNz8vq/WQGeSIYjwPQKs5RGve
	 nnDXE56XIC4xn/mYIHRwKC2EilKLuv+TfN7HwBRfjukrhMe++4JXU8SYwie6prVsd0
	 wSB9F4I3GDQGDQtfVzbu/uEeQxs4msvPqIM3NRHpP4akxCrrjwkvwPVhlYsv4InIYt
	 k+ojzyJjbGTZV00qbs3Ihv2q4As3Ziqo2cGwpJ0fQCAMORnSYmWIBuDZghaFkQg4Ef
	 78wavme3CPUM+CWLKUvQTGv0pE8FhN+ENH2P+KEgajUvJ6ZsjHDgwGoMEuWtuCFCK+
	 jPcbY89Aoli0Q==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 26107383F99
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 11:56:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D9Byc5ko";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id v12so1700444edc.10
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 08:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oyMk1xCfTstWotEi5RxdhvTgRPjjXn2pIksgvuImTS8=;
        b=D9Byc5ko3D64heQzgFukN1R/txSyhu83SH99MOmorWOzuKraqV0AtVsHtqx1uXBYu2
         8x0AIAryv3mlZoMjA9vKHWOXR9ico6BrwcGBG78FtkkP3vVDpalD7lOpH3i2Bg4+xvRf
         qK0/DmTvMLAA9D48vckA/7CVOahaEh2P7TgV4wMSndzVAjetVFah73HA8OJK8C28NBqK
         MRB2w+OpCtLX0jrcuTsYslfzK1kuCojlzoU6Ab9+Lz/hc5wf2KjfJOWyKUICzb3A2MwS
         Jf3S7prSEy3Wfz5Z75NtcnxwYNye+dn3wVRs2+UiV9Fuf8bkWiDOY72gL12yuYell6vi
         3qAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oyMk1xCfTstWotEi5RxdhvTgRPjjXn2pIksgvuImTS8=;
        b=xrkd2vL2iLzHa8mj13KDzF9sSZmkI0uDiUpzmjO2z9R7Is8a1y+s9CWTF4bP84ehIr
         dNb7XdfLH8deLtS1dDEkIQL0p37REPJQTT5fxqOWw/A4bdvcqMai6lD4ADyKQ0qCSgF1
         ulTDBqu07YoL2JW6JbaAT3EztCXex8ibQHxZT5CHW1kGf/CCZEcHBVwR8BKh9mF2JJTT
         r+5e59BfRimr24E4V6v0QuRtPc+d4AT9wJpGf3dQh83yg5AU/AX9GkwoiNJ+18K7OEwq
         mp8ZlX0MsU7RiLQ0BnILBQ+G3D4OtD67dglIiplYlc+fF8EFCS5TKpULLx5XqF/Z/QUC
         ohrQ==
X-Gm-Message-State: AJIora9Z2r87Xae8P2jeewjNSE4OzaHozCv+dlTq2n+Oczf6ePOQ1NkW
	Nr1Nh8+nrtjvT650g3drYUQF6Xi84UcfnctNtUY=
X-Google-Smtp-Source: AGRyM1u9P4qEYNLCb226HdzfDPY9syKgne/LB2TggLzGUG0MHa5cl+cBc3Wx1Mcmje5nNyEKy3gNb9zLmB136VNrRRg=
X-Received: by 2002:a05:6402:b34:b0:435:d064:8762 with SMTP id
 bo20-20020a0564020b3400b00435d0648762mr12489110edb.238.1657382208003; Sat, 09
 Jul 2022 08:56:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com> <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
In-Reply-To: <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 9 Jul 2022 18:56:36 +0300
Message-ID: <CAAxXO2HR4tgWCWCyAMaYgESXpqtDRcv00_-w07sxyu6P9yPe9Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: TWUJJSD7WKQFVGW4JAIL3QG5PXNV6ELM
X-Message-ID-Hash: TWUJJSD7WKQFVGW4JAIL3QG5PXNV6ELM
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TWUJJSD7WKQFVGW4JAIL3QG5PXNV6ELM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Nice:)

On Sat, Jul 9, 2022 at 6:33 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
>
> On 2022-07-09 11:02, Nikos Balkanas wrote:
> > Correction> These functions work on integers.
> >
> > So they go as:
> > int16 data = htobe16(le32toh(int32 data))
> > Or the associate functions,
> > htonl, htons
> >
> > So you need to already have converted your floats to ints...
> > If in doubt, test them first on a single data...
> > Sorry about the confusion.
> >
> > Nikos
> >
> >
> My question would be--why?
>
> UHD and Gnu Radio already do these conversions for you.
>
> The *single* case where being able to send sample data as big-endian
> SC16 without any intervening conversions is from a file.   Anything that
> involves computation-with-samples
>    on the host requires, necessarily, that those samples be in a format
> understood by the CPU on the host.
>
> Further, if there are bottlenecks, I would want to absolutely confirm
> that the major bottleneck in the UHD driver is in doing conversion to
> big-endian wire format before
>    venturing down the road of making that available "directly".     I
> have lost track of this thread, but my recollection is that this file
> originates in a capture from a HackRF
>    whose absolute-maximum sample-rate is 20e6SPS.   That's a rate that
> is *easily* handled by the existing UHD "stack" without resorting to
> this type of optimization, IMHO.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
