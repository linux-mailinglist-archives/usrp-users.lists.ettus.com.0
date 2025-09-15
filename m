Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99411B58602
	for <lists+usrp-users@lfdr.de>; Mon, 15 Sep 2025 22:24:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A8893800A7
	for <lists+usrp-users@lfdr.de>; Mon, 15 Sep 2025 16:24:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757967869; bh=mJ2ZM6lJAgM+RGwm88iUPM5LjX9TKTAb4ZDlKdwtCJE=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=jJ34EyJVhcqBlq75oG6SjQQz14hRMIhG7l7dGDP0bOFk74EDT+2JtVw78p1n8IHA+
	 +pQSDQzwb8/IOzMNIs7yYemclnvXIhaU6l9pCBBjvnY7QR4WSTW72lguAKZvREck9B
	 kcIvzR7JTdnzK7stg9VbirSLQvhGI1uE7xYw9xU0z6KySI3soDc6toApTR92XhesVd
	 hhEKsBdkUjRG8tmfLJEHUMICHfW2MJIXhZF9k4tG3xn2ds7x6fdZiiE2krdpQ7MkQN
	 om1UnMldLB33FPoDSEc33O77UyPa8TApBLg5OxntGHn6FmIKPvsIpy/Z5ZNSZXmuJ3
	 /gOBQrBG/ey3Q==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 55DF0385F25
	for <usrp-users@lists.ettus.com>; Mon, 15 Sep 2025 16:23:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ONFueKl/";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-724b9ba6e65so30801847b3.2
        for <usrp-users@lists.ettus.com>; Mon, 15 Sep 2025 13:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1757967809; x=1758572609; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G7zslRphD9N66OYYBUi4ItCgYEtYS/Lj9clbh2b6xBo=;
        b=ONFueKl/6eSe3bjDy4iM6Zd18vxSL0aXAthmG8lWVsLAfjA7bnSKgfjTVghOE58C4q
         iSenI2uK5I2P7J4G8zuj4lO1pyPzDuPW1MQ8W9l+rB/LK3rf8ssCSYTflnu7N+md9aCF
         aodgTtmDkay+nnYoWRKSZAQQMGtkStsI61X3FF3vfIa1jCOI/GCrF5ele0V1Dw4dmrgT
         XewJKoXJDCHiy0dRlFgdIYU/OthRBUUYxHEDwZnSYwqW+zRIy/aGhosc3NRAOMU7lR2Q
         U6i1XGrv2LAkoY+svRNghSvySi8ojfjbDfF/YTGwJzXcdtMCrnqvj9R7G77vLaIVYvma
         VDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757967809; x=1758572609;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G7zslRphD9N66OYYBUi4ItCgYEtYS/Lj9clbh2b6xBo=;
        b=QSwfq8a/aRl8plza0CvMVh+B8XYM7AuAV6/gtdmHxK+LbO1dEaefp84PkZNmH+K4eV
         72A47MVDj0DKt1fNhepguV/jZ5P+ZFklqLGarv0tmhMIYbCs3kQdq6973UA+s7jZbYDH
         yxr6quYPBghxN/fTkoh06p7PsenrLTLnvcWhw1xME/IcBqAZm5Cttroqn+dVQ3hMxNdT
         WCoS7CMBt7bJUSX7KcF6XSKdPsIEqtV08dVJBJYisviL+APLst+AsnCkj8ThIcq4tONJ
         UdH2Fuko8uIEDfuF9MRil7S6mrtAKmz2z2vlRdk8pjs4dtSdt3mUQASPaGYfA4GP6hhh
         SYyA==
X-Gm-Message-State: AOJu0Yxm6CNyLblM159bzx9dRJ5alMjUOZad/tx8Ruv4xIAPu1KLfmOs
	VYfL5R7IPUuSZ/+Z4qBT9Dkazw5IZ6QD2Mmf5DtYfqQx8MgQQKVTnr211yiSkh/BPbBtkSD+dyp
	TBi1kLLeOoCiiDYLCZSi7JoTlsFMaABVFshzTW3WfzLqviToRXHY=
X-Gm-Gg: ASbGncsz6ZUM/zi0gymiUWCOO/5USRajtG7BdJovDytdWTjNZuZkY+egdh2b3qMHL/a
	edffZfnmnexEcFrZ19menMHYFugIm6n8tl7ReJa7l+BUjUm+M9tziJB9dEM45pNdWjxwZa1dCEr
	7vBit1Er2J1DzLg7Tw05ceDUxeXtSnFvaFNKFc5f/Iagnbq1bZpAGpCtQf7S4dR/DBDk7oJFWfS
	1EVTSNb/FtlotX3H+9B15M=
X-Google-Smtp-Source: AGHT+IFpHQvv3fmBf5ZrGgXOaaD68/5a3YOZt0x2UKJkk3yzIXrOFQPJDmMB9nkyXNmARrq7fMsQWQFJl/VUDBHkMVQ=
X-Received: by 2002:a05:690c:dc5:b0:727:121e:fa40 with SMTP id
 00721157ae682-730630914fbmr135774757b3.21.1757967809234; Mon, 15 Sep 2025
 13:23:29 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 15 Sep 2025 16:23:17 -0400
X-Gm-Features: Ac12FXxgHSrQOh9OF4VMr5qjaPeLnlWOsklg5GdV_mAxJ3kF9IQEpvCao6Hznu0
Message-ID: <CAB__hTS_UJDzk+NgQoObHMt2F0G2S0gc-_4qHZQ-DJjmbDfuYA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: BV3E4FEJJURJ3WCM45AW2DUJAV77J2TY
X-Message-ID-Hash: BV3E4FEJJURJ3WCM45AW2DUJAV77J2TY
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Rx antenna Tx/Rx with full duplex streaming state
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BV3E4FEJJURJ3WCM45AW2DUJAV77J2TY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4168594026720606829=="

--===============4168594026720606829==
Content-Type: multipart/alternative; boundary="000000000000cbf326063edcc6e2"

--000000000000cbf326063edcc6e2
Content-Type: text/plain; charset="UTF-8"

Hi,
I am wondering if anyone knows what happens with the Tx and Rx switches in
the case of the Rx antenna setting of Tx/Rx for a full-duplex streaming
state. In particular, I'm interested in the case of the X410/ZBX where the
switches in question are Sw 1 (Rx) and Sw 11 (Tx).  It seems that if the
streaming state were Rx only, both of these switches would route the Tx/Rx0
port to the Rx path. But, for the case of simultaneous Tx/Rx streaming, I
expect that Sw 11 (Tx) is changed to the Tx path. What I'm unclear about is
what happens to Sw 1 (Rx).  Does this change to the Rx1 port or does it
remain on the Tx/Rx0 port?
Rob

--000000000000cbf326063edcc6e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I am wondering if anyone knows what hap=
pens with the Tx and Rx switches in the case of the Rx antenna setting of T=
x/Rx for a full-duplex streaming state. In particular, I&#39;m interested i=
n the case of the X410/ZBX where the switches in question are Sw 1 (Rx) and=
 Sw 11 (Tx).=C2=A0 It seems that if the streaming state were Rx only, both =
of these switches would route the Tx/Rx0 port to the Rx path. But, for the =
case of simultaneous Tx/Rx streaming, I expect that Sw 11 (Tx) is changed t=
o the Tx path. What I&#39;m unclear about is what happens to Sw 1 (Rx).=C2=
=A0 Does this change to the Rx1 port or does it remain on the Tx/Rx0 port?=
=C2=A0</div><div>Rob</div></div>

--000000000000cbf326063edcc6e2--

--===============4168594026720606829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4168594026720606829==--
