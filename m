Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BFE514B0B
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 15:49:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64E3C384B99
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 09:49:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651240151; bh=yyM3X2phK+/qTNhEZcSoKpj22JuKhg8VFUgkMrw6jAw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HRBccP/OVPU9WlMNRlLIAYiytqWoHurs6nd2fq08rVm6+x23iUbt5wORaP9o8+azj
	 sv59hnk1heWaPEEJyH+TXtFhKmBM1/WHG1CD/3fMA9H/zgjde4EMYaCR1SVAiJEgLG
	 O++SQS6rqGmaNot8QXD6QoegJxDZzI/g4DptC5vLY34jVRZXhGbmyOZ3a4bWR6rzWS
	 uC6YKToSGn8evbMIXwlDeuj54+QK140DB99mDqYTzRmOQ5a98JHnqHrPq8x8dH3fcP
	 mYl6FD2ykv8CyM3RXkcnWkJname4SW9h01pYVhjrGUPJPzEoG9utltiUxJ0UXG3w2Q
	 R0exid7/iEb6A==
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 13CDE3848A9
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 09:48:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e+4PQHQT";
	dkim-atps=neutral
Received: by mail-wm1-f54.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso7063221wme.5
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 06:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b7/idWhx2k9TPJiZEnS2YY2ysgR5vk8JxuHnhvlq5gM=;
        b=e+4PQHQTTLWGJGCjBpcklTmVJe/RCellvhULip35s4pK5FqZawq+dWUrXD2BX6+Rx5
         pubfOvgiLTt8vUww2ioVl85rpaMvwO+W+n0oX+QbfQzuN2XLvfZcuF6dV/BPFbq3YyoL
         MyUAER+rmvRH+SSQy7zwcWEElPcKXBIZCtsH/SkRrbCAkif3at6YKXd/Sc4z59wnLV8X
         bwsBeDtDi/Yxt97z+QavTGLBufYG5SN9D9Ld27giYxjRj4LxhxfPWN19RGeVCQO58zvu
         6e7keh1icpTpHx5tsiuQWXi3k35rN09PqRIL25PF3VOwr6HwiwZgOusemgwBTQ4wJqTF
         ZdTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b7/idWhx2k9TPJiZEnS2YY2ysgR5vk8JxuHnhvlq5gM=;
        b=0jFso8iKu+BMIM5CRRKmGoHVf6exh1RWZBBZc0kGUkAPJe2xTc7b190A8owqXo5LNG
         8ZQfHsFV94iGjXEPzXT5LKXbLDhgWzBOmP+VmPvJ2vh8mzFp6A7SpMKewbvErK171RPc
         dWM+s1ON3ca+ajjUUH5hJqqieu0kjAO+HKv3Gab/YpNUh/0GQjgA08HV+oLyPs+fcS2N
         MnR53HGq+IgePCrC4H/7GZAKx+3P61ePcBN92uRUFe9Ud7nKtOdmDi+KTOauRxOf8Jpa
         Gi+mIcdXhViCDFoY5/+iOQwALKyGLPsbWcLpxr508kc0QatA8s+2tNHbiJ5dX6EyCLzB
         hPrQ==
X-Gm-Message-State: AOAM531dMp41ONzqhwXYjNdCB53O2BweLg1lFxuI8pGVkBiqGG3f3sLO
	hdFbORvfVFSjcb1bpKubWKQfOzZG3DM2OzuX1p/GS7+q
X-Google-Smtp-Source: ABdhPJy3WfiSYJt88/Prey6oFwuMogkCqIl+8nHSxzen8/NsUGTnaUQsx6sdWgraLVez8oahgypAkMJfOu0gPTRbduk=
X-Received: by 2002:a05:600c:1548:b0:392:8e1a:18c3 with SMTP id
 f8-20020a05600c154800b003928e1a18c3mr3383552wmg.102.1651240091009; Fri, 29
 Apr 2022 06:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
 <50feb07d-a18b-0a53-91e6-e86c5a032ecc@gmail.com>
In-Reply-To: <50feb07d-a18b-0a53-91e6-e86c5a032ecc@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Apr 2022 13:47:59 +0300
Message-ID: <CAAxXO2F0oOB-JccRuGkbgMV4PAWCx+6v+OPGXKeD1t0-efnwUA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 5CLQIQ62FXFXE2U6V2O4NOIKY5RG3IGC
X-Message-ID-Hash: 5CLQIQ62FXFXE2U6V2O4NOIKY5RG3IGC
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transport properties
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5CLQIQ62FXFXE2U6V2O4NOIKY5RG3IGC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thx,

I remember a few years back I changed NIC properties and I got max
samples to 1996.
No changes in uhd calls. When I upgraded and reinstalled the NIC
driver, I lost those settings,
and now I am getting max samples 396:(
I remember changing things like coalescense, but I don't remember what
and by how much.
Back then I got the advice from here. So, if anyone remembers...
For now I will change my MTU and pass the sizes to the device...

BR
Nikos

On Fri, Apr 29, 2022 at 3:39 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
>
> On 2022-04-29 03:50, Nikos Balkanas wrote:
> > Hi,
> >
> > uhd_usrp_probe reports that I should raise my send_frame_size &
> > recv_frame_size arguments.
> > USRP Manual, transport notes, report to change them in device or
> > stream arguments.
> > Anyone knows how to change these settings in the NIC?
> > I have a 10 Gb MLNX NIC and just upgraded my Ubuntu from 14.04 to
> > 20.04. I am pretty sure I had some of these optimizations in the NIC
> > using ethtool? Anyone remembers what these optimizations were?
> >
> > TIA
> > Nikos
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> These are device arguments -- part of UHD:
>
> https://files.ettus.com/manual/page_transport.html
>
>
> Now, IN ADDITION, to actually support those, your NIC must have its MTU
> changed to support the larger frame sizes -- you can just use the
> Network device manager
>    in the GUI to change this.   Normally, though, a 10GB NIC will have a
> larger MTU by default.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
