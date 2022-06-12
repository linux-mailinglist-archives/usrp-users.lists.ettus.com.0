Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F294C54791B
	for <lists+usrp-users@lfdr.de>; Sun, 12 Jun 2022 08:58:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EEE83843C8
	for <lists+usrp-users@lfdr.de>; Sun, 12 Jun 2022 02:58:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655017082; bh=WMNIIU3aPIQ9fE/hnkpa6RFEaYPjY7P4PoEuMK8S4Bc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cEAD0WMSukd4zORRPrXQ0lsyMae7ETYz5X22ENbTNwLwgTEQt0i2ryxGDIL7KGADZ
	 2QoT/uap/GeIX/B2zlje0V838UykN4i5+yZCe1fLwsULaim4+daWrlfZ+Npydv3JOT
	 I3JMJ+sxowoidESi9sCH+vhjI+aU2so1tnlUfjQiY/5PL1M+JZoGkZDV9xQOkkzfMh
	 prA37RF58jiQ/nlTd4O+NLnicZCZQv98/UNNmKmbfksUOb3541TNvkcHgE/InwWPgv
	 bZ7WaqUu95biP6pqJgj3XLOZzwuRAJyCGkd0SUIQoGiE7WMALFJqcstQlZKzfrvBBw
	 nMz4n1xfvdZag==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id E0D77384388
	for <usrp-users@lists.ettus.com>; Sun, 12 Jun 2022 02:56:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pDuPeQ0x";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id o10so3599955edi.1
        for <usrp-users@lists.ettus.com>; Sat, 11 Jun 2022 23:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KoXcOTMh5E23TjirHEWtoJsoB383/NqSVr0A/7GEWQA=;
        b=pDuPeQ0xUmmbdzZ8T2UL5zcoi4V1htRs5hXvSsGiPpVmcAJBFzJfxeSx/dGD8TSPyJ
         ysTAPFxtx+S+XvvznbbgclKCSiGUUBX9A4iw9eXJtzZppyBPrLjCwUaxxCZSYabZIRvf
         IPnceqfuNUmVFLvLjWvzABEf0iS8lQ1qzF+XBH0ztMy553SH1lVzG/BtPb3F5klTjJBl
         hKmPCoWZxYVDduEYzH/bWPS+c5/dKe4rz9YWwrylI1xLNe1b2A6ozWExB3pq9C5ZfSqu
         X2hhfWVXMRZvG5mLijZK4EQoRzEbi2hmhpzV5Jd08xhocoyaNNDP+2QirfxGg10XtUdc
         VTCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KoXcOTMh5E23TjirHEWtoJsoB383/NqSVr0A/7GEWQA=;
        b=DONAAVyIQAp13j9gBwzyXcdRiW6k2C0DnzhCJJ/tZOf2PZl0eqHPLgp+VcAYOsgCVH
         Uxlca3LC0FCHhGNDLrKuruWS6d/tKssUMESgbLMKm2pAYvTdCM/BAIkBNMTG0GTsczgb
         qPapN++w7GgySxb6Z3WTqg/H/wKmcuIaD2YExCknD/b6KKk36iUF+acQtWSo8ocZruhb
         VB9OzxLH+cH1iHlA7fkaOotKG3DlsgbP0R8/n2qbAtuUQDkSRI6yeyt2qhpdveayDLuz
         3AbaTuNrUqi+krys1GaonVWnGzmdWZu/I3gKh9SeA/fvbjKb6W/ew81Y7A1gCoc/g4xZ
         Zi8A==
X-Gm-Message-State: AOAM532aWU+Z3nOsAly55YXF5E/UnYkQEpN0D0PJHj/h9nUFMPQDtxfl
	iGCjPmSbCYPhPJbqNJfzxnLFiufDwPRTMkK1nZw=
X-Google-Smtp-Source: ABdhPJwtDOj1bb2ZoNZe1qcyWQ0w4bgY5m54edxyQtgeHQzJPEEdU3ew3mdlQvMB+DyHN80XknZtLXKEdAnGU9i0LU8=
X-Received: by 2002:a05:6402:f05:b0:42d:d709:b497 with SMTP id
 i5-20020a0564020f0500b0042dd709b497mr58893263eda.231.1655017016795; Sat, 11
 Jun 2022 23:56:56 -0700 (PDT)
MIME-Version: 1.0
References: <TYCP286MB0991FC2C970A3D059A08DD35FDA99@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYCP286MB0991FC2C970A3D059A08DD35FDA99@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sun, 12 Jun 2022 09:56:44 +0300
Message-ID: <CAAxXO2EjSaEY5Yaov=zS9mNW_BxjMGhJ5W+L87POuCd9G5cd-w@mail.gmail.com>
To: pro jason <jason_proj@outlook.com>
Message-ID-Hash: 7PWARZMXNO5Y7BAXSH3CIMNSWUCRN2MN
X-Message-ID-Hash: 7PWARZMXNO5Y7BAXSH3CIMNSWUCRN2MN
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: fx3 is in state 5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7PWARZMXNO5Y7BAXSH3CIMNSWUCRN2MN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Seems you need to upgrade your fpga image...

HTH
Nikos

On Sat, Jun 11, 2022 at 8:26 PM pro jason <jason_proj@outlook.com> wrote:
>
> Hi all,
>
> One of our b200mini-i is not working properly. The faults are as follows:
>
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEAD-0-g46a70d85
> [INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200_fw.hex...
> [INFO] [B200] Detected Device: B200mini
> [INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b200mini_fpga.bin...
> Error: RuntimeError: fx3 is in state 5
>
> We tried to replace the computer or USB cable, but the fault still exists. Is there a solution? If the hardware is damaged, which chip is likely to fail?
>
> Best regards,
> Jason
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
