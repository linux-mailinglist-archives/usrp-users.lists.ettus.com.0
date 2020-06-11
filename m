Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8911F60AF
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 06:01:51 +0200 (CEST)
Received: from [::1] (port=55980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjEPU-0007h3-Jv; Thu, 11 Jun 2020 00:01:48 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:43356)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hai.n.nguyen204@gmail.com>)
 id 1jjEPR-0007cB-0U
 for USRP-users@lists.ettus.com; Thu, 11 Jun 2020 00:01:45 -0400
Received: by mail-qk1-f177.google.com with SMTP id v79so4378500qkb.10
 for <USRP-users@lists.ettus.com>; Wed, 10 Jun 2020 21:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GZfUKPrXBS30jsDFMyza8DlwN+/60CTIAZ16G6r8VP0=;
 b=nW+o1JN3lDjUSHdGfXfgH+93uWBSJ6d/4ozZZHewD7bAtqIbtp/+aj8hOoXe8LTfol
 4/jVoXUnKtriiRVoSpcbcLkvMoKoqkJmSKo++BzBKAUIM2XCQ3Ay89gqIQGtRYuqMr/r
 0rZ9x2cabMzUfqrOhz1h6SMjSF9oxQSGPc/HVhmL+lvle5zCbghX6mzZslb72qdkcrb+
 nqXN/LFjnHnt60jmliIMWIUM3wHGm2qilxgH8Nclo5oYHggEU/M5TOiTJXhi2CTuznWg
 2p9OznWLlHkhn5XPfy2J+bQLoNZBqv9Cp4OfI9pEARikbbfKUJE57iq9SDDPqz8My/J4
 diBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GZfUKPrXBS30jsDFMyza8DlwN+/60CTIAZ16G6r8VP0=;
 b=Xrh1gRMkEDj92JbrpWO8KkixFhmDzqbylWbPuEWheCVMiccwvdYDmt6RlkLvf2sE9T
 h+8Qj3hVoqEkXJN2hxHYRubPgEy54YFYAX+5fUsEESoXJBIGd/N+xi7d4K/cedqw49Om
 3wtOfr5k1fEsh2C90afIlovi3P/p/GfM8lG/qgTd9BmhI9gWIRVW5it5rqMReZlsVVJk
 OQflcOHiZDxliEthQRfYTOXhfMtdsx3YKJfmj9GnXp8iH0zzZ2YVTzOCuvfBniTk9VMt
 qPExkKE9nzQfRhF5/aBCofRAkoYoRaOETSSqDiMa4rIwC9T+EndK1Q4Cn+Zp1nZNvfvx
 5Vpg==
X-Gm-Message-State: AOAM530Ubuiv1X7MpFRWbJW8Lfnt7bjadAwV6mZcXGwZ6mFpD1cfQJxp
 5cNPa/3X3mFQkfMgrtoyBsiM5r2pR3PbgJJfvTHffmvr
X-Google-Smtp-Source: ABdhPJyg/KE58eXKqUod8VFFNmirbEG+m/h5iQf3UeDwloFC/ILEQneiy701g8iW7ObgE8pBIemQWgaVVbqnV8HVPS8=
X-Received: by 2002:a37:a6c9:: with SMTP id p192mr6013391qke.404.1591848064196; 
 Wed, 10 Jun 2020 21:01:04 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 11 Jun 2020 00:00:53 -0400
Message-ID: <CAFZDN5LrJOY8z-5+4GcxNximyLwEQDHB4GF9jTKOQ_aD4X=aZQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: [USRP-users] Phase calibration of multiple B210s
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Hai Nguyen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hai Nguyen <hai.n.nguyen204@gmail.com>
Content-Type: multipart/mixed; boundary="===============2431820934574001510=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2431820934574001510==
Content-Type: multipart/alternative; boundary="0000000000006725c105a7c702ac"

--0000000000006725c105a7c702ac
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to do phase calibration for two B210s for a DoA application. I
use a known tone with splitter and equal-length cables. The problem I'm
having is, the phase difference between two corresponding channels of the
USRP (for example, RX2 of radio A) seems to change not just between the
resets of the USRPs, but also between the runs of the UHD program.

Is this possible to phase-calibrate the two B210s?

Thank you and best regards,
Hai

--0000000000006725c105a7c702ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m trying to do =
phase calibration for two B210s for a DoA application. I use a known tone w=
ith splitter and equal-length cables. The problem I&#39;m having is, the ph=
ase difference between two corresponding channels of the USRP (for example,=
 RX2 of radio A) seems to change not just between the resets of the USRPs, =
but also between the runs of the UHD program.</div><div><br></div><div>Is t=
his possible to phase-calibrate the two B210s?</div><div><br></div><div>Tha=
nk you and best regards,</div><div>Hai<br></div></div>

--0000000000006725c105a7c702ac--


--===============2431820934574001510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2431820934574001510==--

