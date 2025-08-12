Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1577DB22A5C
	for <lists+usrp-users@lfdr.de>; Tue, 12 Aug 2025 16:27:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0BE1385C8B
	for <lists+usrp-users@lfdr.de>; Tue, 12 Aug 2025 10:27:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755008842; bh=CvHGE+L454G6snFk7D8Gx4YNIEzfn/lVfbmmth6RoNg=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=URTc+kdFUIf8rJBG279nMBaFyMg1X0hysJ7aBeFRKyrETOS3ceUGa/a4v3nNAsJk8
	 OccD8ANbYUWAaqk/KX4Gw5cyKCYMbaBm5m6CDbvWOvhJPusNg7J3W9KEuZ2xPTmfEP
	 3005cDzyFVqkHVsuVok2FZJBk1IgjtouxQa573EdiaNm4v37emafrPMNHhnSHAQl+U
	 /5AAiT1fw0k0xSOgWBz91ldTOfG0vncaDDiCl1GErQgAST6eQ2phygAqmdH2uEe3WH
	 z1cyFkBF8n+VCPT4Jlf4+B5aYx6FYYn9pzPVbj+lt4zkoTkbVSBUxTcUNXuM9dGEXP
	 wXhHz7L7ntwlA==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 410D4386756
	for <usrp-users@lists.ettus.com>; Tue, 12 Aug 2025 10:26:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="C4VDVzVX";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-61553a028dfso7310164a12.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Aug 2025 07:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1755008792; x=1755613592; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ATujweLtEbRcjvOYAW8YMFXCHwgHexWTmPz/2CqKeOU=;
        b=C4VDVzVXYfGCF196qdz/RKnlW63kp4xGwhk2QQLCa5KOsGOuRnCJd06+UMtjWK63d7
         nkZoYU4GFf+NPE2xm3an85+S/Ywr2gXLz+r30kd18OlkW03mVmiEqlvWc6cH3Jff6Ybr
         09GlR6RkKFzGxhMTl4TzRB9ck39s80/lAFE3TZs42smM9w4uaupm+NHV+iZw/yPv0eVf
         Uxu3/SCKxKRPRj1NvLODXVAZVadctTRkEDdcAafTDUeszrH5kDjLCo7d8y0EGhi1CID9
         PeEmUQkRUrLX6NnrPVhTE0iXEmxsJ/3c+qE3eE3uaBF2YEXCkUrDuWhOXxeh1qk/3mbV
         Y39Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755008792; x=1755613592;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ATujweLtEbRcjvOYAW8YMFXCHwgHexWTmPz/2CqKeOU=;
        b=VEzh1Fs9B+RF67XQselwGh9B5dKK1G2BYc8ErlvVslsLaobF8EQISutSY4qANUHZJ3
         7Q79S+le5s2wFFZ4ZoxuwFGMBNZhFVQ0UaKGQ/m+W95nu0eElLhSnxSLPgcR+IIZGE3U
         DbNurQcM4ColWox4HGj1IJm7GFCQYRsP0eGVsMowxzOKARN6IvVPTN8hqzCx/7k1pMA/
         R9zr66GnKj6S1BdWZK4tPyevCdu9nawrcmChMxwdD4p6KNC78LneqSmaSMMOag3ZYaE4
         DyQVeM9GE483QDFuWXThvmWEZ9cHxJAksGoLYpStLi8Abq+BwOD7xWeRGDS6+hOeK5aH
         GfeA==
X-Gm-Message-State: AOJu0YyUA9UGO5xtNn4W/HDrQoJSZjWQMvkt1PMxkFKEvwc6coHnOyyD
	caq6BPsyHik12svt4h1OTGLRlTflIlbAcTqhgsyAJq3zfZ1gZ/nDAFpOYiv4oPaktaDmfvwHy5u
	DNTqybH3r0PZgIFTRP0csS8ThCrdQaPgy9O3WxcmtYUHkX/6hYUc=
X-Gm-Gg: ASbGncuAFCFGm99N/Bab01/KhysgU+5sbGxyKn2Hk1DyrpWFd6GYrGBsOphUT4DAaYr
	hHelndEoLBYkZ6CbU/BXEmnbN9/jTiKo93kDQGBAcwFLSZKG6F5/jemVIQeCL7380jIt3v83Bdr
	gimh+O2E+/uSsJrPOyUiP3+X01g/3R2WDabfjAJf2Msqkh5LYY0x6Oe7kqgQpZtVHC22xzRsvTD
	BGfFw==
X-Google-Smtp-Source: AGHT+IHKYM/xnHAcL42DdZVnvuYBVt/mSx196w0fT4j9Eqm3H6fob8DX08G0odHjx0CXsNMgYeh0olseqB1+6yExZUE=
X-Received: by 2002:a50:9516:0:b0:617:d219:c8f6 with SMTP id
 4fb4d7f45d1cf-61867033568mr5963a12.15.1755008791568; Tue, 12 Aug 2025
 07:26:31 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 12 Aug 2025 10:26:20 -0400
X-Gm-Features: Ac12FXwetSjPz366UKKLImIZ9Or1glphR1IyHfmIUnQwfG-qfvuq3cA1c8qXH6c
Message-ID: <CAB__hTSif=hJFivtd+5faf+_PH-PaPCOTv3eJ3nopfqQyfG8pg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: CNVNXUQK5Y2L3ISMWEZZQHH7LYPSQHPX
X-Message-ID-Hash: CNVNXUQK5Y2L3ISMWEZZQHH7LYPSQHPX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N3xx calibrator for Power Ref API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CNVNXUQK5Y2L3ISMWEZZQHH7LYPSQHPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7047950033834060414=="

--===============7047950033834060414==
Content-Type: multipart/alternative; boundary="000000000000998c9a063c2bd378"

--000000000000998c9a063c2bd378
Content-Type: text/plain; charset="UTF-8"

Hi,
Does anyone know why the N300/N310/N320/N321 do not support the power ref
API?  It seems that the calibration process simply stores a lookup table on
the host so I don't understand why this product line would be excluded. It
also seems that a small addition of an N3xx calibrator class (20-30 lines
of code) to usrp_calibrator.py would solve the issue.
Rob

--000000000000998c9a063c2bd378
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>Does anyone know why the N300/N310/N320/N321 d=
o not support the power ref API?=C2=A0 It seems that the calibration proces=
s simply stores a lookup table on the host so I don&#39;t understand why th=
is product line would be excluded. It also seems that a small addition of a=
n N3xx calibrator class (20-30 lines of code) to usrp_calibrator.py would s=
olve the issue.</div><div>Rob</div></div>

--000000000000998c9a063c2bd378--

--===============7047950033834060414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7047950033834060414==--
