Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8D17DC38E
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 01:27:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2188F386311
	for <lists+usrp-users@lfdr.de>; Mon, 30 Oct 2023 20:26:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698712019; bh=6psgIihNb8cLOSCdyLPzJXuL5dKag/jZmihPmodY/BY=;
	h=From:Date:To:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ciJOKs+qxtCQU04GLgXiPq+Hm5rFdOPhtH/SfCC2LRXbfUSklYoOkkWWnOU+pufL+
	 LVasWLGS71uzy8omoETMDnFz8XvvVsyX9Em4KZ6uqFtb4ejW6ZzV2uqbjF468psISJ
	 y4KjCZzySL/yYOaiXYAjxY3PC2PLqFy4xIBEe/QQBPP0cxNv32xSHUMv0Uct3bKQ+L
	 KLgTKIn/x6sb5KDiNA6ZDx6wzVcPphHIJ02ezbUqrdu8N+EbGB3e+HSYd9gzcFNmZM
	 FPYp49x3WWjdSSXt61v6RFRHBv2L4m8VOiTSC4yG9vnlL++ayNyJ+zs1RuDaWXSA5P
	 y+mWQzXO2I47g==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 73E4938580E
	for <usrp-users@lists.ettus.com>; Mon, 30 Oct 2023 20:26:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="ajbBixk4";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-d9ac3b4f42cso5509536276.0
        for <usrp-users@lists.ettus.com>; Mon, 30 Oct 2023 17:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1698711963; x=1699316763; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VP0F8XHVp7MzENgOHUHdZYdVK33WXgpLONW23hzNrqs=;
        b=ajbBixk4ZUoeLL0Rb7rPVVYm5+YaL1fkLqxyHXvz7v85vkh3nAFDtCeMKVaf5JLBjG
         fFA/bqM3Q+UpndreRsVciAsXaQip/0xiZvcjkVhjs/5Ze9RIQuqagAUYbvP1oAfwJ1tZ
         dYP8Wt03EBPHTqRJWp0iuQBkWzP4O4VlY8o9tmddWHmIZ8UAPsjBLHQdgji4JzCcb3zk
         FRwzBkAx+UYzzcy5GrD9f8rZQBi8jApuOEB78eywsy3d1S7QzpEJs0ExqlBkyDoAmYwk
         8bjqQPAJn7H5JwFWVNNNSLTZk9/WP5gMCiGQcFanUVMdUuAgIfHe9BxYJSxmcGxApBfz
         8/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698711963; x=1699316763;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VP0F8XHVp7MzENgOHUHdZYdVK33WXgpLONW23hzNrqs=;
        b=OOz9QZp0iwCNnRyQlSHYW0+Ro32KPr+VRDqgRZUi6uXIstqXFTrN77ERPKJ4X9QSCG
         xbNPh8jqPE0IUbJq9M7NC7Y8BUhakcM5+AqVXH21gek9BGDujwUHZJVYGTP1i0fE8Q5D
         +O08nt0wlJXKxLoDrNTr65m1KyuFHLJ0SXd1veTrHfyHH5N07MW3nhjfjGw2kuAr/q0G
         WzI/rciHl6zQwPe0vnGNfZyqlygg+YEWoIyiLFDX4LrqLh0uweeh05hp+JHLlLVv34Ay
         gx4zcDcmZqdrLd52FtgUH1MRIKEJXDLvaVi23M7/cbjtFGhpXJpD54VwQK1SnyBWGKmt
         U5ZQ==
X-Gm-Message-State: AOJu0YykJRJxrmmXR4y4PNWs9tHHiX2Ho+QVPMUeTSM860JIno1tBqhH
	Hdg/3xVzfl4aOfyliqNFVWGNJRLUHRTJVMIc/RRuuPleGmjr4RHmRdc=
X-Google-Smtp-Source: AGHT+IFqyaDQpCZYgWDra6djyaRgIJBrm9sNezgDoA4AHhEzHe1kPXaYthaNUh6Y+wy1WVlOg1GiFmXv2O6x5jIQcF4=
X-Received: by 2002:a05:6902:204:b0:da3:6ed0:1587 with SMTP id
 j4-20020a056902020400b00da36ed01587mr909740ybs.2.1698711963723; Mon, 30 Oct
 2023 17:26:03 -0700 (PDT)
MIME-Version: 1.0
From: Bill Dower <bill@chaosinc.com>
Date: Mon, 30 Oct 2023 17:25:53 -0700
Message-ID: <CAPiksU=3Uf62wdyiym_PvVbwmpjkufs+MHRP-XERT2aL_yA=FA@mail.gmail.com>
To: usrp-users@lists.ettus.com, Michael Dickens <michael.dickens@ni.com>
Message-ID-Hash: AHUN7FXLT2WROM6KXBGKFIZW2H52Z2P5
X-Message-ID-Hash: AHUN7FXLT2WROM6KXBGKFIZW2H52Z2P5
X-MailFrom: bill@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Michael Toussaint <mtoussaint@chaosinc.com>, Ryan Retting <ryanretting@hotmail.com>, Bo Marr <bo@chaosinc.com>, Brian Hay <brian@chaosinc.com>, Mena Ghebranious <mena@chaosinc.com>, Michael Garibay <michael@chaosinc.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Frequency Spacing for IQ Calibrations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHUN7FXLT2WROM6KXBGKFIZW2H52Z2P5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6201767927249406737=="

--===============6201767927249406737==
Content-Type: multipart/alternative; boundary="0000000000002c83450608f833be"

--0000000000002c83450608f833be
Content-Type: text/plain; charset="UTF-8"

Hello,

What does Ettus recommend for the frequency spacing for the IQ cals and how
does the SDR apply the calibrations to the SDR?

Do you recommend a calibration spacing of Nyquist so twice the bandwidth
for the frequency spacing?

Then how does the SDR apply the IQ cal?  For instance if I chirp across a
bandwidth does the SDR pick and IQ cal near the center of the band or
interpolate between two calibration frequencies?

Thank you for your help,

Bill

--0000000000002c83450608f833be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>What does Ettus recommend for th=
e frequency=C2=A0spacing for the IQ cals and how does the SDR apply the cal=
ibrations to the SDR?=C2=A0 <br><br>Do you recommend=C2=A0a calibration spa=
cing of Nyquist so twice the bandwidth for the frequency spacing?=C2=A0=C2=
=A0</div><div><br></div><div>Then how does the SDR apply the IQ cal?=C2=A0 =
For instance=C2=A0if I chirp across a bandwidth does the SDR pick and IQ ca=
l=C2=A0near the center of the band or interpolate between two calibration f=
requencies?</div><div><br></div><div>Thank you for your help,<br><br>Bill</=
div></div>

--0000000000002c83450608f833be--

--===============6201767927249406737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6201767927249406737==--
