Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E41877CC5
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 10:32:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C372A385396
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 05:32:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710149526; bh=LkeZ+yOr8asFDQw7LE00SD94Zi0+zJJRZwA3/5W3WCI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=P5I2oyqF3IC+cDS4KdnR/PW+6HQQ/iGayFxN8RwOFNBZifd5UE8KqptxZ6+q2isqx
	 xN41Ha0PCDkxSqnn1El/WgaLaAQnmjuZU9zzw9j+TJhdX7zwOiJxoVybrZWQmzG0r6
	 Z854PcrHJmpUBVLCtDE4p+B14Tr5H1ANdspmnSkXrBLkfk7r2eJTTcRardni7vNoYC
	 4ziKQkElC3vIYr8qVB72tAEj8WnxURGfst5GW/IxiQ99Pc+XplGYjzr/Cp90mInmzG
	 YnSaRguDFTMqa0naK6EdWFmuV4BxSdaEDGQDg81yOYCemjrBA0f/eQTXAbA4xuO7nU
	 oKDJTRjhL4fiA==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id E27963852D5
	for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 05:31:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BC1cclZ6";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-609eb3e5a56so41839347b3.1
        for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 02:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710149476; x=1710754276; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5Rmo62EZeBLLMPK9RpgOm+cBsfZGULPIn06IOhQOPY4=;
        b=BC1cclZ636+8ulA1K9XSE4H+Pq+W9nHa83RCYBSB1HakpdCjClOxS6DUFLldu0zFUw
         4qtYnj9fmumZQokeA9k8emowOC6k8WW3zJK6HeCKd/zPP4aSzQuSGXMg4qbScjbnN6i+
         bXlj4h5K2pk+lNKaxLaEq/jpR9y6QALsBgiSfZYy+h8VX2/WHovkIft522obeQCp2nTu
         +683sy3Laovl+SUdRmtZjaldnFeD4Y26rNdHIs6juS8ujnnRKprht/vkWHm5R0IpA3/A
         S/ZMG0tn0rfPIMaTqpc2rPWsrypBiKPcpXEAzEYVTSe5hQf3DTBFTx4d5e80C6ZFdKoR
         6HbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710149476; x=1710754276;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Rmo62EZeBLLMPK9RpgOm+cBsfZGULPIn06IOhQOPY4=;
        b=SbCD19nG+mQyB2KusiLaffZY5y7nNjspxAX3aEXU5ezcF38manYOUHpZ+jYs++Zqx/
         oEAJgDSL6nrF/CChV1f048KfOMIaq37fu0NFEQ8l3FLpD/DlW3lYcwgZkiA0AqSvgWUM
         1D66Ey5WFp+fn+wfBlkvlTNqvMvZMMcRIJwqcuW/LwUau8olGbTG+DLNglvdPRjGuiBw
         YUfPb1yFCE9PNGj8ozPW6rO0EMs4rbRc7w97XyFJw2MbWbUtX7A5ftBzi7th3PIwgnjm
         tE6U9uvQ0g/pBqotekS7QQz2W2TBMoOQeeLD4Kvb+xJz9jux80QqJNLZYs5JqhdVP186
         CxJQ==
X-Gm-Message-State: AOJu0YxsDHU3ZkiUOLXIlM4o0pJEOnNrNxQEGsCYmKY4dwLedQtcQyoV
	UVdAcwALIzjq/qVsH7rfvbhMuaJeSR+3k3nwVDMh+pKGda3Rpr2kV8AcIZUfXxomZXScZz6BvJN
	sphUKBWbg6zoz3Li/rQtUfkFrIm/O3zv/UMM=
X-Google-Smtp-Source: AGHT+IHlu2eiej+8sanxGnFe4Vz9X/WPcpMiAMPQnSksWGOA6yCrnt1KVBz5QjBxsXPuj7e4ew8smOLpTIwRe3MdhFI=
X-Received: by 2002:a0d:e20a:0:b0:60a:4f:35ed with SMTP id l10-20020a0de20a000000b0060a004f35edmr5111369ywe.24.1710149475934;
 Mon, 11 Mar 2024 02:31:15 -0700 (PDT)
MIME-Version: 1.0
From: "Ali G. Dezfuli" <ali69550@gmail.com>
Date: Mon, 11 Mar 2024 13:01:05 +0330
Message-ID: <CADDf8dbM2A6Y5K-gMLysVRdDVYtKbXpaPw__tHHOzQ4g4kdM+g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PBYWLANUEGTAG36AAHXNFFRVW2FYWDSS
X-Message-ID-Hash: PBYWLANUEGTAG36AAHXNFFRVW2FYWDSS
X-MailFrom: ali69550@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] time-division duplexing (TDD) tutorial with USRP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBYWLANUEGTAG36AAHXNFFRVW2FYWDSS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3232201536654299738=="

--===============3232201536654299738==
Content-Type: multipart/alternative; boundary="00000000000006abc406135f3434"

--00000000000006abc406135f3434
Content-Type: text/plain; charset="UTF-8"

Hi all,
I need a tutorial on implementing a simple TDD link using two USRPs.
Thanks!

--00000000000006abc406135f3434
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi all,</div><div>I need a tutorial on implementing a simple TDD link using two USRPs.<br></div><div>Thanks!<br></div></div>

--00000000000006abc406135f3434--

--===============3232201536654299738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3232201536654299738==--
