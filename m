Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D8E6A5EAD
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 19:22:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A050B384225
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 13:22:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677608554; bh=nVwlBKCI5J1LupQR58BDvFFYi6mPWAi4zPprBSrGDmc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eoELL/ZUr8wSOxuFpeeGTPgN5JwR+NZlryekI+Olz7b/z1AoSUoVhRrngtZG6Ocv2
	 +L1LQdFYYpkcBYchTgusKKzaejUnoromoYOasoadjcGEYLTLjbCwAW4nqfVpWGse8B
	 Oc0KV/xwIAYLcvYMSIoe+Er9b4xmCdVmvw0jBhXJofe8Y0aZ4+msaOkglbOq9fX4cK
	 QhmuD9rKftgyf7RecqhpJiRhnVsM1Vb0BeDtlNxhSRvuFtYW6D7rOipUe7MD5Ji1Gz
	 Rt4PGUWD/VBy1qriCENMO6QLo5fnwHETf/5fBE2y/A4L1e00+zT2bmp1ZFWgv7r+Ms
	 f90c0jQrOUL3A==
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 00286384225
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 13:22:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Gs8RUdJX";
	dkim-atps=neutral
Received: by mail-ua1-f41.google.com with SMTP id x1so1873653uav.9
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 10:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JHvvXoOENruzXtUmLvw4WafUN8DKYM87poL0NwO/GUw=;
        b=Gs8RUdJXvzxDfgatBFwcQCGoGNMP8avl/BqbTSz2vJ0t4sqX1FlPyiicVpRZVNslhm
         GNq8YVs1Bckwk85okfmg/Pd/6zdZMgFfKC9GKHhkqYLrUuqymWNG6DGx91eBZ6BVoytJ
         mElItrZeEy/SsUn3VfcIH/CbGUbBdVOgC9W/fFxWRn0pROevKO6OWcZ21aOTUygAhJ7/
         1P5qv9ltuXvABX+aXS/EEOjVXTKV4/fjWVkmtBCytpIu2fiOiCbsvbKfcelGDKvE2x/P
         fG98LWqWFmT4t1YJQ1rixmamjAes0wwa1d3PWsDNw+mEIEC/rTs02JLQ9Q7S1Anpkzeo
         sAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JHvvXoOENruzXtUmLvw4WafUN8DKYM87poL0NwO/GUw=;
        b=vgP+bJr8VLGbphAE4OJT7+R8PFJ+YIlfFdTAFigcJ50N/Q3f01tQ888EKZqVzq5RL9
         XosRgsvHp2km4dvVsR+TAGvrUsahMPvTOtunEbXqfC2V0hs7sBHDq6YPTtyjpqJFsNlJ
         82we5te75lCamXqMBsdVUCCMhF5NmtP0k2Z2qIj5qpnIkjfY5un/FMwrvv8wCoRNYtRF
         to6IKR2cG4LwZoQiq64xyn3UWMqAEUimajn6jrydoWfB6mJ7Chv/ujrm8zmFf3/yo0vc
         GQNUQljBCcQ/1CULMjg2aSUJBgZBdZuJ9A97HbUN6PMFMlOGF1UZ6j4v09J7w6XvinJQ
         s1Dw==
X-Gm-Message-State: AO0yUKXkWRIEmJwlhUJZv2w6jjU4L7ROwk5pjZneUkIBz8wH3CbU/aAm
	bkT0b3l874oKTj7HzJFJk3JUKvkXi/8DE3F4IJ+ReQ1WRsXb+et4
X-Google-Smtp-Source: AK7set+8g8HOmGYSHCuvRo8pawY/ZYWTzHkdr69iIzGMvjB/tb8zAGuG9PKpw2p8P2pgCb80dMKlXuqwq4quDhH9tMA=
X-Received: by 2002:ab0:4a97:0:b0:68e:2ed3:92eb with SMTP id
 s23-20020ab04a97000000b0068e2ed392ebmr2251925uae.1.1677608547936; Tue, 28 Feb
 2023 10:22:27 -0800 (PST)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Tue, 28 Feb 2023 21:52:16 +0330
Message-ID: <CAA=S3PsdczijkNz1+LU9n4tJf8SOnP9jA3pgEDoPGcxm2i9d7Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ZZEUPJG6M4OKZMIIIK73PYWUKU277NCI
X-Message-ID-Hash: ZZEUPJG6M4OKZMIIIK73PYWUKU277NCI
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How I can chagne RFNOC blocks to another daughter board or RF B?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZEUPJG6M4OKZMIIIK73PYWUKU277NCI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3383543458779965338=="

--===============3383543458779965338==
Content-Type: multipart/alternative; boundary="000000000000926d3c05f5c6ada8"

--000000000000926d3c05f5c6ada8
Content-Type: text/plain; charset="UTF-8"

I simulated an RX RFNOC block as a receiver, it works correctly but I want
to RX RFNOC blocks to be executed on RF B or another daughter board.
how can change it to another daughter board...
Thanks very much.

--000000000000926d3c05f5c6ada8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I simulated an RX RFNOC block as a receiver, it works corr=
ectly but I want to RX RFNOC blocks to be=C2=A0executed on RF B or another =
daughter board.<div>how can change it to another daughter board...</div><di=
v>Thanks very much.</div></div>

--000000000000926d3c05f5c6ada8--

--===============3383543458779965338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3383543458779965338==--
