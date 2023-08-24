Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF6B786B32
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 11:11:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BE96384B08
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 05:11:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692868260; bh=RQigaHAhGehCe9slLPKmOGQVG7wZkDXyjKaN1W2UjqI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RRJgC5ui6Bif6YwVpLFE+n1+PLp5RVQsrifvFOyeyTsw+XEtK/MpsvcyHoZRQpH0h
	 ER7uhtJbAeag0kRY3rEinAz5NveSpanWZUQ+rOd5i/mxQak6A79Rx6aDIVNJH+Gf/v
	 NDsM9Tkpk+qiqHThN7gBjNOw0hW2swLY45AxdvHeeN6vw+Zd2gFmy5mLajg62JPfSy
	 /OH4HRx9DojCruwdgD3hKbGRQ92tXIyy7cKk1V3uD3TvfVdmhq9oEvGgNYStwGKS6W
	 NIEV9JmOgRBs7e7bOtKrCSDn3az2sY3y5GTY3fdBTpBRv8M0DR5EBg4wVHmlfcrVju
	 YGzD+N3CWYtMg==
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 04BC1384554
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 05:10:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="isehQHVf";
	dkim-atps=neutral
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4ff93a7f230so797406e87.1
        for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 02:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1692868244; x=1693473044;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gO83nkhL0WpI1njKf59374MXexOdMPNBOcjruX2Ar4c=;
        b=isehQHVfm16TA9PL4tMUhBVsBMAKl6jT0G/yW9ZAxAU0YKfFoHtok9Ljc2tLTzZtmp
         LI9CfXOBjGou0luh2wCahmt381eX5uR2DWnuGZGRSqur45WKl6Xyeb4SZW7VsMe8ngZV
         7xs+/jTL1TTVO0DRclbaQOqp9GhNxUJA45TD66FQ420PlMhFLSujTx0lRPS7ozvs720c
         gZF0CK7eGwOYuBh6dTK8hgrWOnkzwvoarYXf2wabfduUjWRl5XNvA4xpnVHO9ZOarlhX
         pCcrMAwqL8sp+/MbbAU1bMPlQ0HIsYoPMynuYEt0qCyPDsGTsfzLDVZJlsBCwrwCes4c
         USPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692868244; x=1693473044;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gO83nkhL0WpI1njKf59374MXexOdMPNBOcjruX2Ar4c=;
        b=Tz0sPHzEYrlixrBFUJ+MLxJjty/JlgGH/oF+d5vC6qoNcBwSPVig55i20hEDHqQx9n
         mSOOi/vSU5BMe4U6fmVviEgMl7U3s7KkT1tQ7jN9ZTX9/l+/lHzo9+y/CiK2AVJMzgRq
         jDmpFGCTR2Xe3hnxObNjn+vcStMe5dCZKSG1L/bDTaBfKzkQMyIX7dWkv4JdTdS5E8bw
         q1y6xFMUHcVbium6J9EL2zEloK2Pqis2UN73dys3fhE4vx3bCl5THo8+uIoeTdLAUYei
         3Dso2JYIF+4b58RpbKTPjz6zYqd1Zx+k/m34OrkhM9xNeyqpLDYpuWyxgINzDykktJ1R
         /P6g==
X-Gm-Message-State: AOJu0Yx66nsqZYx7kmNDYqF5+ADgT+vtkq2vBNB2Avkwel1cjQ9t0+wV
	XaUtUVHOPtY7WDlITKmmhBZPU4TKdtky/7maeICMaPd6DEF4Ca6eUE0=
X-Google-Smtp-Source: AGHT+IGuwrz/+G9SVSPVJupeqhyJX4pQqwnYUNBkwDHyWNjkJ69KgXvA2Cnay8OjSDQC+Y3V19mGv7uVmX9LFeqMEn8=
X-Received: by 2002:a05:6512:3b81:b0:500:943f:11c9 with SMTP id
 g1-20020a0565123b8100b00500943f11c9mr2278149lfv.3.1692868243990; Thu, 24 Aug
 2023 02:10:43 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Thu, 24 Aug 2023 11:10:33 +0200
Message-ID: <CAKHaR3nHfHGK+ix+q2A61tbs8PtvwKQQ3vYowGCadcwfWgOzKg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LMWJFQ7ZWWVLILPKGPUWQYJEE4EHTXGA
X-Message-ID-Hash: LMWJFQ7ZWWVLILPKGPUWQYJEE4EHTXGA
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] gnuradio 3.10 and rfnoc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMWJFQ7ZWWVLILPKGPUWQYJEE4EHTXGA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0718388617215377997=="

--===============0718388617215377997==
Content-Type: multipart/alternative; boundary="00000000000055c0db0603a79ac9"

--00000000000055c0db0603a79ac9
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm experimenting migration to GNURadio 3.10 and UHD4.4 but i noticed that
in GNURadio 3.10 gr-ettus is not needed anymore as everything is in gr-uhd,
which is great however there's no sign of rfnocmodtool and since a few
things have changed i wonder what is the recommended way to get started on
an OOT block with these latest versions.
thanks,

Dario Pennisi

--00000000000055c0db0603a79ac9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i&#39;m experimenting migration to GNURadio 3.10 a=
nd UHD4.4 but i noticed that in GNURadio 3.10 gr-ettus is not needed anymor=
e as everything is in gr-uhd, which is great however there&#39;s no sign of=
 rfnocmodtool and since a few things have changed i wonder what is the reco=
mmended way to get started on an OOT block with these latest versions.</div=
><div>thanks,</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span st=
yle=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"=
>Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans=
-serif;font-size:13.3333px"><br></div></div></div></div></div>

--00000000000055c0db0603a79ac9--

--===============0718388617215377997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0718388617215377997==--
