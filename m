Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B414F453C87
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 00:05:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F61D384137
	for <lists+usrp-users@lfdr.de>; Tue, 16 Nov 2021 18:05:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="DQhjBvhJ";
	dkim-atps=neutral
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 339F9383E71
	for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 18:04:31 -0500 (EST)
Received: by mail-ot1-f51.google.com with SMTP id h12-20020a056830034c00b0055c8458126fso1256431ote.0
        for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 15:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=l6nubEr7MmKw/wU4oFzx76IT76rRghC1iGaDGV7u5gs=;
        b=DQhjBvhJTlYQhKyxpRLfrUUPcvO+TBDp4qbit9GuOdvEqbMpoCrGf/55KP6Y7FR9l4
         cdXRlxmEswWdU1teot384ePD3jyxc3OHVNNBviT4qyu12CULDrvdewQs2QoaU5iR/vWb
         J86neVb6yj4vlXudbGGmNtsfrCS5yyoBxmjnOHZ3mBkad1OpSjGc0+/qW9OiNQ0CjsT4
         oBjCNPIG31ShpKPHmXSDNwebQSsS69vzDdsVsngbonaP1JpifgmNRVKcIAvEraX11JLc
         bY727xUvl9FXaW9aNDDDQAphfh7ghcnA5S4BDBXoF5Iin8bXFl5vnTCMqQd6ibT8DR6V
         hrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=l6nubEr7MmKw/wU4oFzx76IT76rRghC1iGaDGV7u5gs=;
        b=log4awHhXEyuvaawZ2u0xvN33B3MbBFaBRCeWojSI4TmVoFULOxqifJ8jH7kMN+R26
         NCBj0M8QPf+Df3AVyuJzjYajY3Xt3F8SBbeQSn+sxi2HajMmO55FSB1ngInNwl9QzlFH
         hxRa0hhL+SIphLXmAQR/Raz9+jnWmVT1dgQEAhHc8Te/FRSk4UiCy7v9CB1+QqEVt/O5
         XA34jOaFeeRZtpH8Nvwg3u/0F3g/yDzCMCgDv9RLYpnnG6LNO6nSwyaaL4uBGpZbjZQq
         XwRD3md0Mtm+65WTb+WVRHAhuRQEaU24omSsYexs/u2fVZCmNG7QPEMnkpm7Jx0iFfmP
         bi2Q==
X-Gm-Message-State: AOAM532kaL0hIpycLEDx82vqPpkxZb9yOO+408gYvOr0eKymRmHTk3Z1
	SKxhsXeIYLd21M8eTWgNor6kgy+ATzm4IWnfA3oJuZj855Y=
X-Google-Smtp-Source: ABdhPJwdEZQfK1redhJeV03CEMl61LLOioTeMo88avUhOKpdAt5sMbpX6IdEmLw4qoc4t6IuJ5yQo19vC0SeKE8/uyA=
X-Received: by 2002:a05:6830:138b:: with SMTP id d11mr9466898otq.235.1637103870084;
 Tue, 16 Nov 2021 15:04:30 -0800 (PST)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 16 Nov 2021 18:04:19 -0500
Message-ID: <CAB__hTScPb2yKf9wUWBSSu6RiyKSwvrYXc-ZB-t7wK1fVdFaNQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: CBSWTYBYYOJIDVNCJFADZUHJGQC3MAU3
X-Message-ID-Hash: CBSWTYBYYOJIDVNCJFADZUHJGQC3MAU3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_graph->synchronize_devices()
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CBSWTYBYYOJIDVNCJFADZUHJGQC3MAU3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6418513547972245347=="

--===============6418513547972245347==
Content-Type: multipart/alternative; boundary="000000000000a34a7d05d0eff273"

--000000000000a34a7d05d0eff273
Content-Type: text/plain; charset="UTF-8"

Hi,
I recently stumbled across this synchonize_devices() function and I'm
wondering if I need to be calling it.  I ran grep in the UHD source folder
and there are no examples of calling this function.  I read the help but
it's not clear to me how this function differs from calling
set_time_next_pps() on all of the motherboards (such as is done in the
lib/multi_usrp_rfnoc.cpp code).  My thought process is: if multi_usrp_rfnoc
does not need to call synchonize_devices(), why would my custom application
need to call it?  Any help would be appreciated.

Thanks.
Rob

--000000000000a34a7d05d0eff273
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I recently stumbled across this synchonize_devices=
() function and I&#39;m wondering if I need to be calling it.=C2=A0 I ran g=
rep in the UHD source folder and there are no examples of calling this func=
tion.=C2=A0 I read the help but it&#39;s not clear to me how this function =
differs from calling set_time_next_pps() on all of the motherboards (such a=
s is done in the lib/multi_usrp_rfnoc.cpp code).=C2=A0 My thought process i=
s: if multi_usrp_rfnoc does not need to call synchonize_devices(), why woul=
d my custom application need to call it?=C2=A0 Any help would be appreciate=
d.<div><br></div><div>Thanks.</div><div>Rob</div></div></div>

--000000000000a34a7d05d0eff273--

--===============6418513547972245347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6418513547972245347==--
