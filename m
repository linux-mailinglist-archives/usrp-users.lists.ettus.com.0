Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F5458736A
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 23:32:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BF173818C7
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 17:32:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659389549; bh=niMUEnfbdzm/mqG+9CklIcG0rDAR2A90F64aslxeTFE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eSTsPlqVtdFWwgdyHwrTXlf5FmTknxc3WlNzJUMakNAZY6kO1ReDSeJnXG1pS7TNU
	 peS8oqdasvQG0R3UolET98FuSVUH7hChjOqCCqf3q3DxlLk3GSHzd7IoJA++3A/NPJ
	 dDPJoVBYGXOgt9XW52QmZr38/sW5dsnTRwx9AqXF81kk3SusfUOv67ST3+7MfAGtyt
	 IH0Zi7IgyfICYnIM0jdaRZGcyk38RjfDWkZtcltkhckt+ZlZr/i4n2FuiTT36TpxB/
	 qPIGiZC/mWtSy69KXh8lhZ0wRUyja8KPCtrXjMd8emGg+pog58L2DnaYden+SpzXf8
	 7OtyyqMzCN/vw==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B43083810F0
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 17:30:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ImjMlax8";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id k26so6948187ejx.5
        for <usrp-users@lists.ettus.com>; Mon, 01 Aug 2022 14:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VGY5wetQGt+7DtWxqof1pjDne4OJREgRC/OJ4YdY7pw=;
        b=ImjMlax8r0B/c6TLUSFU/lEJw2y9sODnkwX2Ynt/bA4rs33GS/1rj6iYtgVZf91cl5
         5/5xqwmAdxOubvfgaZzz67j2XO4y8FKVd2q21hkVP9wnSqKngkyvg9pVYx8M1Wj18ghK
         zBXu+yrSC7EK0NpM82xbvf9OmJDM/I8XRIQyyRICWxHa2/ncXeI7ulkOwOPL4peZ2MHd
         ml67tXiMuznNr6iPqYKvvKoB7uNUeFXHPEmrOWBZYoK2uW7WsqFgFQ+ZLOMRyuWIN+7w
         FxsEran9mb0+Vp8tSre3FVEjF5CDUorRuYcA6WfzC27vgold6jQvos3uqwhjMCi9C+fr
         S0rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VGY5wetQGt+7DtWxqof1pjDne4OJREgRC/OJ4YdY7pw=;
        b=GaUv+7+SUzh8G6zPPili4/boBwfg9i2ffnnsDhz4a7XpzQAYBypvU8Gsl6VuZ9eh6M
         O1Yu4NfC9Jc7xiNyUQIcezenCOb6XdTqkC9QhwQT/xeE09ujVrNTQsrbOSotC+cD34ap
         PkwN/a9kxwO1FNZWhDH2ZDp1eB44V4YT/pK5seofaL776n2hVsckiVi2o3n+xWvhiKYa
         1dJA4npsSFx/GeFOGDrQjO3/lPsuS+Z7rpmLWNVDSp5gOkVlROMnRq/CUQ37jiLPv3SM
         6BgPD1NRduEQEcSjajD2sJGh4pPLG2BKVeq2UrDL2aW02FNJ9N1qoy7Z1Ueu3Ct7Yn/J
         ZLYA==
X-Gm-Message-State: ACgBeo2rWNzjG42wQYurb951V6nn3nDzbw8bMZ5W8RzU13CwqU2gvaQc
	ACz5lRm7YbmHjPnzmV1qnY/hr+yySlaXzPCnrdI=
X-Google-Smtp-Source: AA6agR743xkNC6y+kDz9q5HHdX40yBgoCitgRQFjgeRs0BS3n/RRBUzVBfdxbVOEwpG7RkjvfVmZ5ysbCMaXSrbwlN4=
X-Received: by 2002:a17:906:9b8b:b0:730:8e70:f3b8 with SMTP id
 dd11-20020a1709069b8b00b007308e70f3b8mr4135643ejc.179.1659389403476; Mon, 01
 Aug 2022 14:30:03 -0700 (PDT)
MIME-Version: 1.0
References: <F0mvFqndGqHXJ7XRUAMuypHftZXQIJg6h1ZGjQNrWM@lists.ettus.com> <CAAxXO2EEmXvAkn76nBD_JMQ=JcrMj-rSPYC86qJTQZtrSEaXdA@mail.gmail.com>
In-Reply-To: <CAAxXO2EEmXvAkn76nBD_JMQ=JcrMj-rSPYC86qJTQZtrSEaXdA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Tue, 2 Aug 2022 00:29:52 +0300
Message-ID: <CAAxXO2F2vxEkt=ZzLV=UKifmEdxPGTmM3xPjg-tr_SE4jHL3+g@mail.gmail.com>
To: moklesur_bme@yahoo.com
Message-ID-Hash: 4K4D4VLJH2KAINLQBA3C6GK52BNQYPJR
X-Message-ID-Hash: 4K4D4VLJH2KAINLQBA3C6GK52BNQYPJR
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I am trying to deploy eNb using USRP B2100. But, when I am going to compile and run eNb and I notice error( Error signal 11). I would like to mention that I successfully installed UHD and GNU and dependency driver. I did the work following the manual step by step.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4K4D4VLJH2KAINLQBA3C6GK52BNQYPJR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

1) Forgot:
Run:
-> ldd <application>

To see if that matches your libuhd you think.
If you see a problem, you should uninstall your application and any
extra uhd installations you don't need, recompile & relink your
application.

HTH
Nikos

On Tue, Aug 2, 2022 at 12:18 AM Nikos Balkanas <nbalkanas@gmail.com> wrote:
>
> 1) Type:
> -> sudo find / -name "libuhd.so"
>
> This will find if you have multiple uhd installations. Uninstall the
> extra ones you may have.
>
> 2) If in linux, run your application through valgrind to locate
> corrupted memory.
>
> HTH
> Nikos
>
> On Mon, Aug 1, 2022 at 7:53 PM Md Moklesur Rahman via USRP-users
> <usrp-users@lists.ettus.com> wrote:
> >
> > what is the solution of it?
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
