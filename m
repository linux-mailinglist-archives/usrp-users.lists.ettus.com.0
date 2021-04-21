Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FAB366AF6
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 14:39:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B3A838471D
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 08:39:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="OU7Pvo4d";
	dkim-atps=neutral
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 92F363844FD
	for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 08:38:41 -0400 (EDT)
Received: by mail-pf1-f170.google.com with SMTP id c3so9897919pfo.3
        for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 05:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=zwJ1tiztXizFtHN3zr1dnptBqfUDsxNjqXT1p1NWR4I=;
        b=OU7Pvo4dq0U2nmUZ6riixjdL69WKoWhWh3qpduYr76Byc1rYC9sEQbDKVP/bFYpNSq
         xRY/FhKqXyyumAPXxcz7uMcpcNQDsCc6sWbZ5x9yGnXbO6Hn/0/tGoHriIG5dGh4Owak
         fJP0UrsZV7BuzYV9dlvDBnYeDQ3dyjjAL5cIT++8xK3bCFGhBK9VnXf84VHRCsLvyJvx
         ulnmPNuATVfRF51aAZTftqgudFSQa7gRMjGYICh/5vjT+AOa3pz3VgbAUUPe/0SJIB1a
         WCLU9BMQz5rYlkhenkHjCRqIS+Zj7zDT64p1RfZD03qAraJ1J32PZ5wEb1Oo9A+gkObd
         2Ylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=zwJ1tiztXizFtHN3zr1dnptBqfUDsxNjqXT1p1NWR4I=;
        b=fGgBmgdNGv4hLnXmvPQfTAzN/MI1YqRmnkLqoidI0/6JdfsMMqoSmMXHWg8ZGBxmB0
         Vtl3we4Tq2lNWXwS/NN0zGXiW7Qm+9Kzdc0oq0NM5prkp9WKS8VVanO0LUeeI0ywrhRy
         kUM/fqQ/MRI+WEZ0S3KTMf0et3Ob3LXR2GsQZ90pDI889dwx21Lx4tEZqe+QNfFD/oaT
         K/LdKj8pId71sxDD9CF0AWa6NkZ5W/OjIuPoNIVkNVOZ2nbXi6HdGRotS9GwbVRqV04G
         ujvJMUC/+SP3ccp7kbs4QteyTax9uI2qyJfeCtf7xlBzFRXevmlqyav1CuDqVF2mXc08
         62dA==
X-Gm-Message-State: AOAM530hv67r1+JMu6eB0iIqzhu4ZfTeRXjFFNa/Cy0GvZKIIwm1Fx3m
	YRD+a1pJ9yJ/B9pwMuMpSuBUrnQ9nwwrTtRXw0rIrw==
X-Google-Smtp-Source: ABdhPJyRojjNXUdAxi0NuuRUefz8JCc8Mk3nGjJmSh32r48uTMvX3c8I87e2RuVQB+4Ku13GlhWC6OCEDeCSiu62ILo=
X-Received: by 2002:a63:f34e:: with SMTP id t14mr21697714pgj.205.1619008720583;
 Wed, 21 Apr 2021 05:38:40 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 21 Apr 2021 14:38:30 +0200
Message-ID: <CADjF3Pzv8h28VBnR4C1dTdmzYx6XqNThjn4jL36mj-fZ-_WyeA@mail.gmail.com>
To: radiogeek381@gmail.com
Message-ID-Hash: 63ENBNGY7MIFEYABL7S53C25OAMUWYC6
X-Message-ID-Hash: 63ENBNGY7MIFEYABL7S53C25OAMUWYC6
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/63ENBNGY7MIFEYABL7S53C25OAMUWYC6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============8312491005631793828=="

--===============8312491005631793828==
Content-Type: multipart/alternative; boundary="000000000000add75705c07ad7c1"

--000000000000add75705c07ad7c1
Content-Type: text/plain; charset="UTF-8"

There is indeed a pre-amp installed close to the antenna, there is however
no need for switching there since it has an integrated bypass controlled by
a Bias-Tee. The installation of the antenna (VHF/UHF crossed yagi-Uda) and
pre-amps etc is already done since many years ago.

The RX and TX frequencies are the same, we designed the satellite this way
because it only has one dipole available for TT&C so VHF/UHF full duplex
was not an option. Furthermore the on-board radio (NanoCom AX100U) is
constrained to half-duplex on one frequency. The frequency is
reconfigurable but it would add unnecessary complexity to reconfigure the
PLL every time RX/TX states are switched.

If you have more questions about the design of either the ground or space
segment feel free to contact me and I can share some materials with you.

Best regards
Martin Elfvelin

--000000000000add75705c07ad7c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There is indeed a pre-amp installed close to the ante=
nna, there is however no need for switching there since it has an integrate=
d bypass controlled by a Bias-Tee. The installation of the antenna (VHF/UHF=
 crossed yagi-Uda) and pre-amps etc is already done since many years ago. <=
/div><div><br></div><div>The RX and TX frequencies are the same, we designe=
d the satellite this way because it only has one dipole available for TT&am=
p;C so VHF/UHF full duplex was not an option. Furthermore the on-board radi=
o (NanoCom AX100U) is constrained to half-duplex on one frequency. The freq=
uency is reconfigurable but it would add unnecessary complexity to reconfig=
ure the PLL every time RX/TX states are switched.</div><div><br></div><div>=
If you have more questions about the design of either the ground or space s=
egment feel free to contact me and I can share some materials with you.</di=
v><div><br></div><div>Best regards</div><div>Martin Elfvelin<br></div></div=
>

--000000000000add75705c07ad7c1--

--===============8312491005631793828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8312491005631793828==--
