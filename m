Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4004375ED4
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 04:32:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F08A38432B
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 22:32:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qxvnp1Pu";
	dkim-atps=neutral
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 556753842E8
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 22:31:07 -0400 (EDT)
Received: by mail-yb1-f170.google.com with SMTP id h202so10032622ybg.11
        for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 19:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=K6X+tyrvyoiUyby6lqgIcesctlnzFUP7cX9XcwJeyNM=;
        b=Qxvnp1Pui8JgQaYv0koSnlnjdx31X5RDxeHMevelY8hgLKd81UaOmN5jHR8BmyLVCU
         +xRulSKhYFX2lepQ3TpgLdnn+UoUvbNhtYz55c4brPRhDAE4eHEDfFfMIOOSI6lAzMPX
         joKUSBF8110/tA9Y7W4uiaCWylEeyntZd3J7+utE/Kx3/OMUvUrzF6reHZ8emXHD/mBF
         2a+bIdfHVf8zIBBXgMQJUUv64eG+zkXsLe293DlvIlKdB8yU5Gwpe2sBRjEfytQShUAB
         OdBtE7V3E4yLtxMDloMYYM9LOV7cTdXCz8rRO54IrL83ziv/7gnQNXo9O6sGpMcpGzOE
         CyAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=K6X+tyrvyoiUyby6lqgIcesctlnzFUP7cX9XcwJeyNM=;
        b=BP8RWng9YbE/CRt36ENj2M8jEdszDAGwCogGyNNZdTAGPveb7bjrtWpFakaU1L5PNz
         f6OeCTxIvWGzQ3a2fgFz2hLIHTkZQGOzn45IeHNKoZGJDzXm1i1hBYnrvZciksNXWlPb
         yB3fyjHtXYTV/BIOUXZGMEGbkiHX/i49vMCjsfRQ7gQUUELfltKGjgYR3+hVtfX6mN3T
         lQmcWQvx6H71VlnUF6mNB7DUYhZNIeF6Ypl99XNWqH766G9TtbvgyyS/TPAFylEVxXLt
         nq7cGtHuJ0z11pZYj1PW3Lng3nt3pjAgG0XzTqDqEQmoTu1OFRi6vpvugwgQvdzL5rgb
         2HPA==
X-Gm-Message-State: AOAM530INB7fDSxzwK4xyfFu07Pv8MYsLRO0pMqK6fGGDlaVVxguG8Ut
	pS8ZmGwzRxc96xyoaxvE6MV+mgspWBsaKrWwsvtvrGROiEU=
X-Google-Smtp-Source: ABdhPJzzmepzTLEBPW1+PwEZndHbHcOoj2cruxXhsKsVoirZ47z00NS8pAVNn/N8qMqk3coqngqOSmKup92X49FEjLs=
X-Received: by 2002:a25:f504:: with SMTP id a4mr10490868ybe.150.1620354666552;
 Thu, 06 May 2021 19:31:06 -0700 (PDT)
MIME-Version: 1.0
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Thu, 6 May 2021 22:30:55 -0400
Message-ID: <CAL0m=NZBNAaqr2co+eqbwmy_nkYLr7ghdhG+ZBL+LiaO1FSC0Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PR474TZORL57DD5KRBIIDIHEKXSEMWGY
X-Message-ID-Hash: PR474TZORL57DD5KRBIIDIHEKXSEMWGY
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 External LO source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PR474TZORL57DD5KRBIIDIHEKXSEMWGY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0805392728558108504=="

--===============0805392728558108504==
Content-Type: multipart/alternative; boundary="0000000000004f623a05c1b43824"

--0000000000004f623a05c1b43824
Content-Type: text/plain; charset="UTF-8"

Hello,

I want to use an external LO for N310. I learned that a common case is to
use a signal generator to produce the external LO and feed it to N310.
Since I do not have a signal generator at the moment, I was wondering if it
is okay to use an N210 to generate the external LO for N310. I will adjust
the Tx gain of N210 so that the output power is in the range of 0 to 6 dBm.

Regards,
Hua

--0000000000004f623a05c1b43824
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I want to use an external LO for=
 N310. I learned that a common case is to use a signal generator to produce=
 the external LO and feed it to N310. Since I do not have a signal generato=
r at=C2=A0the moment, I was wondering if it is okay to use an N210 to gener=
ate the external LO for N310. I will adjust the Tx gain of N210 so that the=
 output power is in the range of 0 to 6 dBm.=C2=A0</div><div><br></div><div=
>Regards,</div><div>Hua</div></div>

--0000000000004f623a05c1b43824--

--===============0805392728558108504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0805392728558108504==--
