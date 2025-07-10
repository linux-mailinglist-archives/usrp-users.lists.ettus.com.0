Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDD0AFF6C8
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 04:25:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C28C93861AC
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jul 2025 22:25:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752114319; bh=mCE/xt9KC/6RQ6HwGbLbFwSXdkfyVkE/TdITlKXV2Co=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=utLV4j9vq0utrL5ChbDbNOLQ7EtmOJSKtWEW+V5EwztRYYPf5VOa1YYMpAH3e6oDR
	 B531NK3nkbJuuwhdrEGMpr0uW6QUbzhOE+woNCkWFM2Aao7sszDoywB66CwLfhrjZk
	 izrjGogdlf7Waet0D/iAuxhGIozmThmaKgdP44sznh/vcZ5p3NyzKq5roOQ7ajMOHC
	 QK/7A83nt2EvPdsdiJiU/MMKARzJ3zELlqNXg7XDA76wKh/G+UeXdoKucIP7VSx6ii
	 7G8bLbU7RhQin+yWtwy4oJ0725tGMslDyZR4LdNQPst0Y2qpe6r5eXS7rVNeTo817R
	 WbwjL5DDhq2lQ==
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 80E893860B5
	for <usrp-users@lists.ettus.com>; Wed,  9 Jul 2025 22:24:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hnxp5ZTc";
	dkim-atps=neutral
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3e0570a9b83so1730545ab.1
        for <usrp-users@lists.ettus.com>; Wed, 09 Jul 2025 19:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752114297; x=1752719097; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Qgy3IAstJqJWmyM0oZRYSnZvWscMi4DgMs06o8BRT1I=;
        b=hnxp5ZTcShh7fdXUuH7xCAzC/PhqsN39xYxr1Zz3rQqasDHJlLnGdrdvlwq4foV2aj
         MRXmX0BqCRwQkUEMMCyPotg2dRoUCMlBSFuIWAetLZ6SWqbDoRdx7KpFePJ/73n+8ZXl
         afBGhgQPdD1dbDfJ+hVl2oyq+4RD5iS3qScLrMGDIkEaN7BSOAkoGu+C44eAu7QYvHPJ
         /zKM4RU1pO0cK+oUUrOsZKuHmcH6qQ8XPoti2X/N4IZ2/sZ7mlhmSSj/bb2ndHKrKqqg
         x1+sV148IzghGLxHf4/k/wMHXy1dG5FVuwVCE4GYo9TVftpNIYkGFk4J0ru0MycZe+Cy
         W+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752114297; x=1752719097;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qgy3IAstJqJWmyM0oZRYSnZvWscMi4DgMs06o8BRT1I=;
        b=e1y4be5kqTRvj3P+xdyzBH5husv4nN9kDiz3Aas1dKXbyypeGJwEOXjm3TWNsj4oFd
         t8DP5u5ksLf3eAzEHOqk3awRUcvIFXULxpizAvodnRrPNoGKiaGkadDQ64YkIf4BgFqj
         LU6B88mnCnE6C8Ryl2FiGHJNv8JrrWdsGeD3UpEWcKPG7vw5QjFTBgL+RvVj7ocngom7
         55gmU8NA85Rgf0lGWFdZ8aD9By67D2TWT/PSpMdRXsdigZmXGdIiq1tMAHU878uOXR+0
         ecoM+u2PXfqOipoYN95/isIAemJwIhBU6aaTPnm7yb57e5+9X9AIqfjp7M2xgSZ2AjCe
         KK+w==
X-Gm-Message-State: AOJu0YwtXYdTQfFVhO0Wp3feDDgNa8xS0K4UTIfKr5PgPp8nIyY3+4Cq
	mvCGXsL1o/asKKhJp1GatA0CNp6Z7TQZ/RBkTU2dOgKmlhoTDHJwBGz3TGHdHb92FIw9HaeNrzY
	631TR/IhYgkSSFRutOFmHqMM8V/Bp/svHCA==
X-Gm-Gg: ASbGnctK5tY3sPp5C4J1IVaspR1BOX/dUKTRyQO+RIvSOa12ZgOu7b9+yDuBqkUWVB/
	tHc3ONQQmjZMF6GYiloNrZbcgZuN7nhtRGgOo4pvBSAnyE1dYKAtDLhuITvvho8zor3tvkBy3UF
	PtsBUbbQl77O5hwVkEo4ytg3OAVx/jQqcxF1vZbJY=
X-Google-Smtp-Source: AGHT+IEk2fwTd/pyhHYeAR07XCcptlIeswd6WSOERjjOGcM2W21a0dCweyYpJbkRV18edGsLbd2zozBrhbMSCdBYEZ8=
X-Received: by 2002:a05:6e02:2308:b0:3dd:c4ed:39c0 with SMTP id
 e9e14a558f8ab-3e243f994efmr22290325ab.1.1752114296629; Wed, 09 Jul 2025
 19:24:56 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 10 Jul 2025 05:24:44 +0300
X-Gm-Features: Ac12FXylFXz-buvafIfKFQuz0jyybOAIMVnyy5YZCDciXYeAQP0vcqAm3kcOTD8
Message-ID: <CAAxXO2EaJ+bkxSGJkpBJV+3F=prauS1=RtgE17WdfTks3OB17Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: P65XSCPUOZPFOG67OIRZYHEYTMQOATEJ
X-Message-ID-Hash: P65XSCPUOZPFOG67OIRZYHEYTMQOATEJ
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Minimum number of dropped samples when changing frequency?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P65XSCPUOZPFOG67OIRZYHEYTMQOATEJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5712170362748382981=="

--===============5712170362748382981==
Content-Type: multipart/alternative; boundary="00000000000041adb5063989e61d"

--00000000000041adb5063989e61d
Content-Type: text/plain; charset="UTF-8"

Hello,

What is the minimum number of samples to drop to flush uhd buffers when
changing frequencies?

TIA
Nikos

--00000000000041adb5063989e61d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hel=
lo,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">What is the minimum n=
umber of samples to drop to flush uhd buffers when changing frequencies?</d=
iv><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"gmai=
l_default" style=3D"font-size:small">Nikos</div></div>

--00000000000041adb5063989e61d--

--===============5712170362748382981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5712170362748382981==--
