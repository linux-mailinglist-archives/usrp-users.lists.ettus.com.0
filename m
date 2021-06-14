Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 940243A5F08
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 11:20:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87AC43842FB
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 05:20:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="WzKPwFm6";
	dkim-atps=neutral
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0AD10384118
	for <usrp-users@lists.ettus.com>; Mon, 14 Jun 2021 05:19:54 -0400 (EDT)
Received: by mail-lj1-f176.google.com with SMTP id n17so19255723ljg.2
        for <usrp-users@lists.ettus.com>; Mon, 14 Jun 2021 02:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=ksRWV6y3h9qVULBfnFx/xS1VkTr0070pl760DDIHtUE=;
        b=WzKPwFm6S2HSqftNCsjOjPvBAJk8eHEmd6ytJgqEuKYRoKFFLKqnWNhpGCTFI0ZQVp
         9LKCF3+zj52Kp7rkx/OvCat/708BDzS32HWpeUI+W9Cicww0FEDAOxqubNv9leLxsZpv
         RPMUORQeqJCEupHvSfjRQc8gUirTlWlXcRV0OpN8J/kv4cjHpy5+9FWkLvbRgurzyPwr
         oEmjanMZAOZUeXf7VVT0h5QRWgNoPDqOGw3Aj1WrGWU+Q6yGaQ4CgwIK0DseSv3CTqm9
         9hdGmwTKvA5b8+8RlQmuTabKQyUIag+68b/2jJlnjJT4uNKAu4QvaS2QCkTdsL6RDm6p
         C5gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ksRWV6y3h9qVULBfnFx/xS1VkTr0070pl760DDIHtUE=;
        b=RmpxCQpp3yNTPcJwEArylOFdnQaaLEC3C+v24awKoPwO2wwPe9blwMWKK+mCrI9yqN
         VUqEZax24fGiGnE3P5qymlQYC8zEIiHgDqrzGLu5M7D5f6F+ZgMCi7jnprRtf66vZJzm
         YlRPKgUi7VhUueDV1Fi9EEXwSq7G9MALcaPtsVAuVXsKu/brUsktAmUPTQIb7Opda4PX
         0PoF4LIiKxQXCY9bipenO6c+WJm3hWD68WruqbCRnF6Gp7gOPvyCz2/+Ewv7aURx4oN2
         dRD83x8Kq2nadt7M/ah+th2dqhXGv4ZTA2vFro7/x8PHl8GXiG9y0YPFC593ukD8f38y
         n42A==
X-Gm-Message-State: AOAM5331o07QwyClpZbdbDkGnZKPWQdRgNfX1+wIv32D22EtRd2mk1PB
	tBBY0rH03WRFWyRRv+dPF5h8yhJVtabxKPdBsVeI295/86o=
X-Google-Smtp-Source: ABdhPJx+cRMOh+dmZTHxxIcnDJCLCPTnijTUUX1JdVNomiXQkwlYK/7YYayVjGGxlOenDpvE1hxL4fqWWQqBcWv9zM0=
X-Received: by 2002:a05:651c:1077:: with SMTP id y23mr13088816ljm.427.1623662393308;
 Mon, 14 Jun 2021 02:19:53 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 14 Jun 2021 11:19:42 +0200
Message-ID: <CADjF3Pyo3O20BdbobJggFjJ_kotDawz-4-op3XB2EZTSFsmKNw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZZ3Z5WZORYQUUSXJVJPDFOCJOWAB344K
X-Message-ID-Hash: ZZ3Z5WZORYQUUSXJVJPDFOCJOWAB344K
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B200 output power for power amplifier
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZ3Z5WZORYQUUSXJVJPDFOCJOWAB344K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============7827611789619606218=="

--===============7827611789619606218==
Content-Type: multipart/alternative; boundary="000000000000304d0005c4b65c9b"

--000000000000304d0005c4b65c9b
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm trying to find a power amplifier for use with a B200 transmitter and
I'm wondering what would be the best/most comfortable output power for the
B200 to operate at? I don't know if the signal quality is affected by the
output level of the radio but my first thought was to output around 10-15
dBm from the B200 into the amplifier. Any thoughts on this?

Best regards,
Martin Elfvelin

--000000000000304d0005c4b65c9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I&#39;m trying to=
 find a power amplifier for use with a B200 transmitter and I&#39;m wonderi=
ng what would be the best/most comfortable output power for the B200 to ope=
rate at? I don&#39;t know if the signal quality is affected by the output l=
evel of the radio but my first thought was to output around 10-15 dBm from =
the B200 into the amplifier. Any thoughts on this?</div><div><br></div><div=
>Best regards,</div><div>Martin Elfvelin<br></div></div>

--000000000000304d0005c4b65c9b--

--===============7827611789619606218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7827611789619606218==--
