Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 248CC514C0F
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 15:57:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B8E6384D57
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 09:57:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651240634; bh=7H1dRqtFdzlF3DcRASOiQMNKDM+MMdwocJ5sc2VMFCM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=scr7HHgps5AxCeV/thRi1UTwxRCegTqcE4+YGNsvghHSW2mODmsHHgS94JrfjCmDV
	 VcR561VeHCU1YxMQHIx0xdXR08sFTZUn3d07tNMIdOnkgE57TZ0SDYeuyn0lEZuQhQ
	 R6zqJfY6fzuB0jiz9jbeHDxu7GpRewOBELKD1FzObvNKp9IyAKdUpbNh0woHUtcT4s
	 qZzr+Lmf6yGgVqrlkD5LJMxIo43aGLAjP89Ga6w6OSx54TRwKTiRYyhVI+OZ2Ip8Jx
	 28U9G+HW109hl2xL6e/ZWsieTWHWXhTtttiZhySWW+q5KvpJgGSbdJw3HCBYwm2JLt
	 4eP0w08f506kA==
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C18E4384844
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 09:56:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qn2Hz2kT";
	dkim-atps=neutral
Received: by mail-wm1-f52.google.com with SMTP id 125-20020a1c1983000000b003941f354c62so1012999wmz.0
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 06:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7qfErfYaaegkwhq5VGhCeE27P0TwU90Qt4OTeSUfIwg=;
        b=qn2Hz2kTMVzz3yIcoGtCK9rtwz6BUG84YwDLwWXMHDpkmI5/xxG3nz/PkyrqkBGmKv
         V6Rb/s66oBoamaGy4h55Mo0KM+uAdc+sUIf1Css5Oi8ZDLU4vSz85WFtsKhBnrXZG6C8
         jf+K2Jcn+kZlTXMTYZfMsRfO6qAFvkh+A/StUgdlVEQlZAFTl/GDpAFfTnTkCGVTrBbu
         QEhIjrpfXiRXqvqLYdCgaoTZsCbar4KNLvnU9PieWhnpgy4MGgLaMkYlH+VPTC1KcW8L
         5ygMYZnBq7M7nMR50cl3GDLYJcWxUwnZ2p+Sk2agDML21bqFcryFGZCYZ6qM5BanCsTD
         EIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7qfErfYaaegkwhq5VGhCeE27P0TwU90Qt4OTeSUfIwg=;
        b=xv67X2LXQErTCsdPdYb6+pH4BI/LJeKkp4fnsjvpfWqwY9SwZx3gW+qNYlUr3Kpdii
         hkWuLl+v1GuZs3T9u4Yt9+qEXgTxWxdbRNyWcY7vOdmFpr9zK6LFJ4WSwbSQAe2HbQuP
         K+8xZ7sw1pOOYuY23v/fZ+5G0cYVCSWrOfHdMQZlEIBQIQijyqpla+QumlMGrOxHt3pl
         x6Gc51Plj9r+CCeycpbBlFle55n/Mb3UsxbF6OKch5uufgPmRWggSxCtMTMZjo+bqWyD
         OkxsSoK0uEndfw6CEDM91mfYKHbSgkr/f6Fk5oA8VAYk1IlLdmwIke3pZhiaG1IIVQMs
         LrwQ==
X-Gm-Message-State: AOAM5338nTD5108f/MBGK+IAzMTne8NZKQkgDPt/JmcrallR/8ZghvW2
	jDbh+wU0ZqeI+TFtNYNUbQZI9/x3luzcpowbk68=
X-Google-Smtp-Source: ABdhPJxeth3drict7OTV189ds85Yf1ynuH+92f6W3HQYLqd4hWWS/PCkoFQ4oOM+y+C7lS4r0DQSjxXf5118kWzCXxo=
X-Received: by 2002:a05:600c:1548:b0:392:8e1a:18c3 with SMTP id
 f8-20020a05600c154800b003928e1a18c3mr3413768wmg.102.1651240573816; Fri, 29
 Apr 2022 06:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
 <50feb07d-a18b-0a53-91e6-e86c5a032ecc@gmail.com> <CAAxXO2F0oOB-JccRuGkbgMV4PAWCx+6v+OPGXKeD1t0-efnwUA@mail.gmail.com>
In-Reply-To: <CAAxXO2F0oOB-JccRuGkbgMV4PAWCx+6v+OPGXKeD1t0-efnwUA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Apr 2022 16:56:02 +0300
Message-ID: <CAAxXO2GHKCY+eVL34NvC4mrL-5nGbyZc92nFY37cwuknpfz0Cg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: OHB4EWYOES4DWBXDHBUSSGCHNHETCLTH
X-Message-ID-Hash: OHB4EWYOES4DWBXDHBUSSGCHNHETCLTH
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transport properties
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OHB4EWYOES4DWBXDHBUSSGCHNHETCLTH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Besides, with uhd_usrp_probe reporting this issue, it seems that it is
external to uhd,
else we will be getting always the same warning:(

Nikos

On Fri, Apr 29, 2022 at 1:47 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:
>
> Thx,
>
> I remember a few years back I changed NIC properties and I got max
> samples to 1996.
> No changes in uhd calls. When I upgraded and reinstalled the NIC
> driver, I lost those settings,
> and now I am getting max samples 396:(
> I remember changing things like coalescense, but I don't remember what
> and by how much.
> Back then I got the advice from here. So, if anyone remembers...
> For now I will change my MTU and pass the sizes to the device...
>
> BR
> Nikos
>
> On Fri, Apr 29, 2022 at 3:39 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
> >
> > On 2022-04-29 03:50, Nikos Balkanas wrote:
> > > Hi,
> > >
> > > uhd_usrp_probe reports that I should raise my send_frame_size &
> > > recv_frame_size arguments.
> > > USRP Manual, transport notes, report to change them in device or
> > > stream arguments.
> > > Anyone knows how to change these settings in the NIC?
> > > I have a 10 Gb MLNX NIC and just upgraded my Ubuntu from 14.04 to
> > > 20.04. I am pretty sure I had some of these optimizations in the NIC
> > > using ethtool? Anyone remembers what these optimizations were?
> > >
> > > TIA
> > > Nikos
> > > _______________________________________________
> > > USRP-users mailing list -- usrp-users@lists.ettus.com
> > > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > These are device arguments -- part of UHD:
> >
> > https://files.ettus.com/manual/page_transport.html
> >
> >
> > Now, IN ADDITION, to actually support those, your NIC must have its MTU
> > changed to support the larger frame sizes -- you can just use the
> > Network device manager
> >    in the GUI to change this.   Normally, though, a 10GB NIC will have a
> > larger MTU by default.
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
