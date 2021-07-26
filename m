Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4593D5421
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 09:25:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DA4C38451C
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 03:25:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="KNOTX3oB";
	dkim-atps=neutral
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by mm2.emwd.com (Postfix) with ESMTPS id C88453844FD
	for <USRP-users@lists.ettus.com>; Mon, 26 Jul 2021 03:25:07 -0400 (EDT)
Received: by mail-pl1-f173.google.com with SMTP id d17so10473866plh.10
        for <USRP-users@lists.ettus.com>; Mon, 26 Jul 2021 00:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=vT3EPLiANqeqUQSaHP+1wTWVgevxzkrdE9DAovvUCus=;
        b=KNOTX3oBVXyDUhxgfq1IsxQVvwz0hPmSMWbzWfYYyE+HOE46MHc6/mRnOOrLCrhjIh
         GSs2SfDSxMmBZMj7YERVSloqPvG4PTtepFZe+iP6+GQyn6ItGKr8oRmqM3TfzBVbfHU5
         jvk2+rhE6768jCGfVb/Y6Z9NZcOr9zpACf9PKe5D3wjqdON6QXRE0UhTDUrBiKxifTUv
         c1gWl0SA5Kb2DQRYqhpUyUDfWkJZsg8e8cSQAi2vxRKdGNTeZ6jnkaxR8ksleA7PL2VK
         dY+Bs1MH7lg88TZfmq5Uze1VfETnoN5+HVD74KLrbTcVZC+nnh6IEohQJ+7FVf3mxAAp
         hYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vT3EPLiANqeqUQSaHP+1wTWVgevxzkrdE9DAovvUCus=;
        b=Nss9U+sEnr9CeUtAyna53XII2TnxSZCeModBBg8tQgZDuiR9hWMORN6UUyDFNWZx8f
         lCGu93rUpI3qqpEXc64/+Zums9NMg2O68SXFkW3CwyZIFCHF1dUwWnlDNhIYZb8I/YP0
         QaJRTlbkkndrbPt8GVyUb/4FEPj3uy64URvoDf71a+mfPfphxu9ngwVKAxL00WANqV4o
         TyVkBcnkH6omi0K6VBrpeudwJestk9aTF1IO7vVI+JvVftyBk1LDL0+PjpRGs5mb8S+9
         dSd5lh2F+kSaMGvqPZgRbx3h8SNahoL08Eo+YACB++N73rMcNLHAt4LKm2lEqDWVk5TM
         QBVg==
X-Gm-Message-State: AOAM532wd4QgXbkyoE/YI6C58Juybdihnt0svvirxF4bGP/9zo37wMqP
	mDI6B9QHVi59ihWFH7wCbrkyDt0h2X1qGEPvEby+2T+4VaY=
X-Google-Smtp-Source: ABdhPJya//iS8di+L5O88qCySDa3E3tUFswRdKBP0DfCOkUEZ/C66UZjkeVI/g6JB6TRFhjNlyu/XU9lCP/bHw1gfx8=
X-Received: by 2002:a17:90a:8a14:: with SMTP id w20mr15814737pjn.135.1627284306082;
 Mon, 26 Jul 2021 00:25:06 -0700 (PDT)
MIME-Version: 1.0
From: LoyCurtis Smith <ljsmith9@ncsu.edu>
Date: Mon, 26 Jul 2021 03:24:55 -0400
Message-ID: <CAKhiL6W_WkB44_6TQH4WgzveasPJoSSa8SCuzG_3Fbdp3gevew@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Message-ID-Hash: XMTPOPUBVHIYRX5LCGGJMNBHFUW6WG2A
X-Message-ID-Hash: XMTPOPUBVHIYRX5LCGGJMNBHFUW6WG2A
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP Relay network
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XMTPOPUBVHIYRX5LCGGJMNBHFUW6WG2A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5617358218611422080=="

--===============5617358218611422080==
Content-Type: multipart/alternative; boundary="0000000000000396c105c801a752"

--0000000000000396c105c801a752
Content-Type: text/plain; charset="UTF-8"

Hey community,

I am attempting to deploy a cognitive radio cooperative relay network using
USRP x310s. Does anyone know of an open source toolkit or library that I
can use to support this? Also, is anyone aware of any tutorial that support
this?
-- 

V/r

LoyCurtis Smith

--0000000000000396c105c801a752
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey community,=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">I am atte=
mpting to deploy a cognitive radio cooperative relay network using USRP x31=
0s. Does anyone know of an open source toolkit or library that I can use to=
 support this? Also, is anyone aware of any tutorial that support this?</di=
v>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763">=
<br></font></div><div dir=3D"ltr"><font color=3D"#073763">V/r</font><div><s=
pan style=3D"background-color:rgb(255,255,255)"><font color=3D"#073763"><br=
></font></span></div><div><span style=3D"background-color:rgb(255,255,255)"=
><font color=3D"#073763">LoyCurtis Smith</font></span></div></div></div></d=
iv></div>

--0000000000000396c105c801a752--

--===============5617358218611422080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5617358218611422080==--
