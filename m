Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB9E50D4D2
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 21:24:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 429C43849C5
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 15:24:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650828261; bh=cYR0g0B+k548sjeOkWdDsudZH8fyxGXsGEkVYYSnWIM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PbRnjfOZ94Wg6tt3JLGRxEkSV3k/Imq9GfvKC9fB2DfYInmBqx2Etu02+pkouuVDd
	 mUaah8u1+hYkxclIyC9rtZpZooBejgktWdZtXWZiUlf4T11dR3WB3ulVGu3i5ihEK1
	 u2x5faGRkE3xLntVUx2yEn27zLpOcnJcnv+4gSJzMtNfey8uikQtaShAEmz5PBGJxr
	 tvBLdzpq5MjDZgdY8AncmmVFB+JP+xpzelxbRmtCvyp0ey/to2JXQCD/txUt0EiwYX
	 i6X9qzueO7sKNUVWRO839L9LUuvxvMkeYm7zwp32ssdV9wx+rXD4wmm6vUsMaOQI+b
	 w7XFWzGaPcqkg==
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 80562384609
	for <usrp-users@lists.ettus.com>; Sun, 24 Apr 2022 15:23:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DaXhJHuQ";
	dkim-atps=neutral
Received: by mail-wm1-f42.google.com with SMTP id ay11-20020a05600c1e0b00b0038eb92fa965so11250797wmb.4
        for <usrp-users@lists.ettus.com>; Sun, 24 Apr 2022 12:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/CNtoDzBkRfYkJNtgFBnLPFdzfip2z2vOkjqhpewSnw=;
        b=DaXhJHuQsbHjFZcUYCuxP6lb9zZlPespjlUMCyxLvYcnDhstfx5v4qMqiFT0kS7IPQ
         kwIksZokQVDBg8U4aNskNvgdvdq2fzBikADwtXMWhHOzaOOi47Nth30IuBqxARrB1uVJ
         ufFvV3/m6+ysQhvfLpraqlDZAD+HtZJxOVKvUdHl/BuCkXEi0bkHDvnPB42fnP1uExIU
         5OvENo3G3UPNdIHubZfBxB9t7+8cfz0wUKVPiVNz0Q399xqK4RvAeLy+qR6x8KcDmkY4
         NbVHH2qEAQP5+gd3Mzf2Q59s0zZ8s2E5L5S3jVSoesBgKOjrvgizurjnQj6q861iSjh2
         XYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/CNtoDzBkRfYkJNtgFBnLPFdzfip2z2vOkjqhpewSnw=;
        b=KEJoHEhWih9+6+dEWFFYAgR+loPNFEHOt9OdFrx6Kc9RJcCNaIfSfo1u+L9HOmAkfG
         +gUF07y0yupIju76bFPUIpFpdq0oITXwe8rQm1H4dzr+Vl51YD0diGrqRO9gXO1kDlLi
         JZ2fpZAYtskcZ5Zjrg/CdQftKJu+QgmJD8mg3QjHwa2YsYAjaj2BtoiW/on7pmAQKJ/V
         5kvBXUkmZVrlE3JUlvdGaugwxz00VlbtndDCJYnnEZEI/1V+d2wX9ZtzjLytH6vMfO0I
         57rkOHHkSnOHW1ysN00CKjnythaLbbFRLxg1dT9SPntJHCR9KiIozSfBqJajGpaJtyZx
         3I/w==
X-Gm-Message-State: AOAM533EtT6/zbdCnXdVnTcV1SaAzoS6tEqBoh2W9Wd0rcaetlwr4lCp
	rSgI5KRRMRAJZqqe7YgmP8gXOadWv/guzFvTUYaHZbdLXaE=
X-Google-Smtp-Source: ABdhPJxvE50hPbOb1tLn8wScB6bo3BsSGATjpX9aTMYEmlhTGkieFvV4r2f/aow8MT7mO+nEpzteYz/UTp2LkV33+0s=
X-Received: by 2002:a7b:c30d:0:b0:381:4bb9:eede with SMTP id
 k13-20020a7bc30d000000b003814bb9eedemr22539500wmj.74.1650828190533; Sun, 24
 Apr 2022 12:23:10 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sun, 24 Apr 2022 22:22:59 +0300
Message-ID: <CAAxXO2HZnkFzUBtu+YY5aQ2Kr6NDNfvC0V0CSzx+4scL=iA7gg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2HVM2GKVALT63G7WDITNA34HI6JYMPHO
X-Message-ID-Hash: 2HVM2GKVALT63G7WDITNA34HI6JYMPHO
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Invalid key
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2HVM2GKVALT63G7WDITNA34HI6JYMPHO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

After upgrading to uhd 3.15.0 I get the following error whenever I try
to access my X300:

Sun Apr 24 22:13:57 2022 [00] [!] usrp.c:115:uhd_init Failed to create
USRP (11). Invalid key for dictionary object (includes property tree).

What should I do?

TIA
Nikos
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
