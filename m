Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7015B28C4
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 23:56:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29420383E54
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 17:56:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662674188; bh=CPWyuyxgXPMS8x9znet3Zhw8lzNSgsxjxO4zybdRxXs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lN30IFOOOH6+MyKJv36hMalz/wpfOU9UhcaTegsEoCfE8tTuEwZ00inbmFq2SwHUx
	 hJUgYP3AXROWxPFf9QNEuxwLytvi/ZU8LACENmrq9MO5F6tmKPJgzplqx6p6zWblRd
	 Rzsi55Nu8amh2AdJ7CQw2mr2KKFEoWnpJEWI1+lBY/p/LcHI+YLj1wo9YwJ6rOdX8/
	 5UDVhjILURRz2GC1Lmhf8Dzh7Mj09DOYAvKBAlTjVaKstg8DnAlFqbkf4Wu0OCsPlx
	 Rct2e+nqx0HhMPA+n2JwusqRuE0agSKIIcgHZNRNYd9i0yseyZ9kjjQGk6t90Stl6G
	 pge+qQIJ+xAfA==
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by mm2.emwd.com (Postfix) with ESMTPS id C4C77383B3C
	for <USRP-users@lists.ettus.com>; Thu,  8 Sep 2022 17:55:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eQE05rMf";
	dkim-atps=neutral
Received: by mail-pl1-f178.google.com with SMTP id 9so16003714plj.11
        for <USRP-users@lists.ettus.com>; Thu, 08 Sep 2022 14:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=k3SpQu/MjuZ/FNPM7tbIK4zdsG7d3uQLrJY8+sxRMSA=;
        b=eQE05rMf7/wN8IuuJxmXLtnUQQBmbVZRQ/Fn/GHJCJS5VgW0DBvc3M53iGJHV0aclP
         149ErC20MzQwK+kc9OIQYaAfPtmdI72ekq9jNrbxnGXNIjq2NwOKQ5SJruB6Lw8Vq4RM
         Ulv++KdG+G1FCeuTX3Tgnw4RhDrjV4haHdU1wD97esfiegbpplipauqG360sV5+rUoGC
         YMufoIYl2FVr0+qyz57zTZjiBJCbcOgbmlLnhkkFgo2LoMIAIg2LeayDhqa8UtxS/JcR
         hAevpcropYNtfySJA6YCmQx+QleCh2gL0416Tpvg11Sue5zaN5wtejy37oFwGAGSmkid
         P8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=k3SpQu/MjuZ/FNPM7tbIK4zdsG7d3uQLrJY8+sxRMSA=;
        b=rASomG0ua+45mGezaNo+YXgkdq2IP6sfKjuY51REvtOSB7sw7dFFx/F5cXH2WC3r8S
         T5KewxVv+1mOXzK7zlC6tW9kRd3fe6CTxIWaefyl8zLYRxB9bSOG5oiGxOPsGiZqZ00O
         WT+qO5+p4qbjm4ZfzoD3/JoI8fRMvwUKJ0nNOGEzNg3UWHYkoOjO900ZfOmJz3/JV6XA
         UxS+shVZVUo6EQXEOoIaVXpvJmv3taeVC8nnQtKSRo5eWfA4d8bLP+nQe8ZLR0HrerJK
         2aRFxfjrR7HeMvAL8sX+2gg7uf5QGlXINHBDarPixKs9O8kEXS9mhiv0a92CsV+rvnGt
         dmBQ==
X-Gm-Message-State: ACgBeo12lV/2JqudmnWFY00A30HEpTH8/PVVlQXfp+DKCkJ3QqhD1X/7
	8a74YkeYjfsYEc9Q9MaTm+AuOejzNH5mKtKlC1fKUGx6
X-Google-Smtp-Source: AA6agR4pQz7PcC7iRtPVpmF/0o3zQnTSt8UrGSOZhwhn2pYw/LEtpOab9f/3lBX7PEt4KfUykyBcXqvfqqg2zz84B8I=
X-Received: by 2002:a17:903:1ce:b0:176:cf65:219b with SMTP id
 e14-20020a17090301ce00b00176cf65219bmr10920542plh.30.1662674117534; Thu, 08
 Sep 2022 14:55:17 -0700 (PDT)
MIME-Version: 1.0
From: Richard Bell <richard.bell4@gmail.com>
Date: Thu, 8 Sep 2022 14:55:06 -0700
Message-ID: <CAMMoi3uzr_iPPyBQsBUKn6G8doFEPNuM0Y8WW_ug=DidAkLi4A@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Message-ID-Hash: XPOWUZFNFQ25DFJDBHFW2ECFZGK7EXDP
X-Message-ID-Hash: XPOWUZFNFQ25DFJDBHFW2ECFZGK7EXDP
X-MailFrom: richard.bell4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 Multi-channel Transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XPOWUZFNFQ25DFJDBHFW2ECFZGK7EXDP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5276066794311253636=="

--===============5276066794311253636==
Content-Type: multipart/alternative; boundary="00000000000027284b05e8317ce9"

--00000000000027284b05e8317ce9
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm facing some strange behavior when trying to simultaneously transmit
from multiple channels on my E310. I read through the docs and can't find a
discussion on this. I'm wondering if someone can explain what should or
should not be expected to work?

Example Scenarios:
1) I transmit at the same center frequency from A:0 and B:0. I think this
should work, but am having trouble confirming it always works.
2) I transmit at different center frequencies from A:0 and B:0. I think
this should work.
3) I transmit at the same center frequency from A:0 and A:1. I'm not sure
if this should work.
4) I transmit at different center frequencies from A:0 and A:1. This does
not work.

Thank you for the help.

Richard

--00000000000027284b05e8317ce9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m facing some strange beha=
vior when trying to simultaneously transmit from multiple channels on my E3=
10. I read through the docs and can&#39;t find a discussion on this. I&#39;=
m wondering if someone can explain what should or should not be expected to=
 work?<br><br>Example Scenarios:<br></div><div>1) I transmit at the same ce=
nter frequency from A:0 and B:0. I think this should work, but am having tr=
ouble confirming it always works.<br>2) I transmit at different center freq=
uencies from A:0 and B:0. I think this should work.<br>3) I transmit at the=
 same center frequency from A:0 and A:1. I&#39;m not sure if this should wo=
rk.<br>4) I transmit at different center frequencies from A:0 and A:1. This=
 does not work.<br><br>Thank you for the help.</div><div><br></div><div>Ric=
hard</div></div>

--00000000000027284b05e8317ce9--

--===============5276066794311253636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5276066794311253636==--
