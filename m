Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5883772310F
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jun 2023 22:20:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18B2E384290
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jun 2023 16:20:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685996419; bh=iMA00PmUei0lBBL5Q8LnD9pFCKf7NZBqfvVL3WOLWEc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=prUIRxdxM/sLX+qT/ixwKU9jOfEcxDLDNhuUec8dHuwSEB2Twrr5/UwZmCIShvWu/
	 ovbX5brF90jEUF6133LQnJG7xtVMIjuwQer+NmccYkR8NmRJ8HeXnwM+HtRs5PBbIe
	 WuHKGzZb2IBcGTV0GI0+alNCweHKP5ZtPgb/Wf9wC58HjXQ+n9GiXPd8C2TTGUs/8U
	 cLOyBfeexUoksGU8i4GMjQPgH69ilhSGrlYS5wm6ScQ2rKuuGcqyPiD7E3KCyxikmd
	 a0KMAk8MsYKdNRzXGvDqqk1tl4BDMcczB+2Xp5OeDuI9q/ecRrKdWQbvFjpX4j+4qe
	 lWIXTxv4Sc1dQ==
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id BF4823810D5
	for <usrp-users@lists.ettus.com>; Mon,  5 Jun 2023 16:19:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mail-pucv-cl.20221208.gappssmtp.com header.i=@mail-pucv-cl.20221208.gappssmtp.com header.b="jq4vAJXU";
	dkim-atps=neutral
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4f60a27c4a2so6234798e87.2
        for <usrp-users@lists.ettus.com>; Mon, 05 Jun 2023 13:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-pucv-cl.20221208.gappssmtp.com; s=20221208; t=1685996390; x=1688588390;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c9XoTE3wIff4/Xroj8UawU1Et05b2SWd7fw4Zx0qnf8=;
        b=jq4vAJXU8zXBRDZDXEdqQcEo58qUaQxakhojRmogh1NY4o2J/gY9lUXJNtYlGagMm9
         tUwsaFLsSnf0ujH0EW5fWIDVCKq7Mtz6BfsGH/WxBnAqI0/+1m9itXaaIRgV9EVJZt4c
         iyXz7VmYnlTK7lkYsa7PcyGMKZVW6yvA17alB5Sv8njOa35lA0wfmgpH5VH/ccmcn2RN
         P247Geb7GKOU3Rwg1YQBEAJ5npdtoBDXRPjGuDXCMQOiTAK9CAOFltAeNiJpj7HbHCKE
         Uc5rEy8fCi3jZMQXx8COZPd5P5ea3L2/m0Zo59suaPC8hWFpD43SnERfPfIVsZlFwSJQ
         qglA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996390; x=1688588390;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c9XoTE3wIff4/Xroj8UawU1Et05b2SWd7fw4Zx0qnf8=;
        b=N6rIpHZDGfq1+Kl/1hhgVzI5xSqSgo24Uj7olyKFPlg3Wb+93TBfW8dtndKih47jeW
         MZ3qkkYb3ofotwOcQyMJ4DUqdSpMtCH4bjGovBcnro+nbr9vSMoQnJs7GCnU/W+pavgR
         i5CinfBUcOdUud+3fQraGC4gCB7nchspls0/+iNyzKV8qiyDxfwquDo2bBuboYbWa5Db
         I/FDPqFeOizjCXy7mjEdGX2M0f0UdBRbLNp2gSmHKjDBHfYssBsbPkD0CU+RYlpEd+GA
         o2R9R8DATZLIcS4Cz3oMB7ptPIf5qyeubxddMTZcrgxLr3v/MWo5MMsqkmJrDg1NEo/1
         Tu+A==
X-Gm-Message-State: AC+VfDwI7rZYqVjvzkRNpZMebTFaGtH7cFD3Se+2dzfjRgknEQTx56y0
	FvRaprm0GP9byHvHMqyQNDDyef8tye0zadh/BBfMHjhtiyyOqyYNdQ==
X-Google-Smtp-Source: ACHHUZ5ikl4bpEMzT+DPRvnKiadRr4YI7d96I6uN6bEuF5W2YZFfF3xYVBvx2nRGYIaP1idEla0UUwOSJ9zPAJWDv7Q=
X-Received: by 2002:ac2:44ae:0:b0:4f1:3d9f:1b4f with SMTP id
 c14-20020ac244ae000000b004f13d9f1b4fmr10443lfm.49.1685996389970; Mon, 05 Jun
 2023 13:19:49 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 5 Jun 2023 16:19:38 -0400
Message-ID: <CAFFpLrGe-Dnc=bUJk6+ebzDf_SqziwoMXRQCSDeZGZ9kJ687ng@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: UEEVQYBTSIQVEKM25WNZT6UZLRGKGYRS
X-Message-ID-Hash: UEEVQYBTSIQVEKM25WNZT6UZLRGKGYRS
X-MailFrom: jorge.gonzalez.o@mail.pucv.cl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Segmentation fault in OFDM implementation on USRP E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UEEVQYBTSIQVEKM25WNZT6UZLRGKGYRS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: JORGE GONZALEZ ORELLANA via USRP-users <usrp-users@lists.ettus.com>
Reply-To: JORGE GONZALEZ ORELLANA <jorge.gonzalez.o@mail.pucv.cl>
Content-Type: multipart/mixed; boundary="===============3217456224692509236=="

--===============3217456224692509236==
Content-Type: multipart/alternative; boundary="000000000000ead73b05fd679fd3"

--000000000000ead73b05fd679fd3
Content-Type: text/plain; charset="UTF-8"

Hi all, I have been trying to implement the OFDM blocks on a USRP E312, I
am currently working on Ubuntu 20.04 with GRC 3.8 y UHD 4.3.

When I try to run the python script generated from the GRC, a segmentation
fault error appears on the E312, I tried to use the faulthandler module to
see the root of this error, but i cannot get an idea of what could it be.

I attached some screenshots, so you can see what I mean

thanks for your time :)

--000000000000ead73b05fd679fd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, I have been trying to implement the OFDM bloc=
ks on a USRP E312, I am currently working on Ubuntu 20.04 with GRC 3.8 y UH=
D 4.3.</div><div><br></div><div>When I try to run the python script generat=
ed from the GRC, a segmentation fault error appears on the E312, I tried to=
 use the faulthandler module to see the root of this error, but i cannot ge=
t an idea of what could it be.<br></div><div><br></div><div>I attached some=
 screenshots, so you can see what I mean <br></div><div><br></div><div>than=
ks for your time :)<br></div></div>

--000000000000ead73b05fd679fd3--

--===============3217456224692509236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3217456224692509236==--
