Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D943889B1
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 10:48:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2738385597
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 04:48:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MDdq80Sn";
	dkim-atps=neutral
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id AC257385587
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 04:47:41 -0400 (EDT)
Received: by mail-ed1-f42.google.com with SMTP id di13so14417269edb.2
        for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 01:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=irnPo0VPZHkcxSK603vQoDi3sOl0rrmTswQyfwawjV0=;
        b=MDdq80SnZG4pOJO3Inev4V6ubY0OGvbwUsf1DGmILREdiZuJ+8HAqeRREuPlZZF841
         idYrisluRUFPdRCZ1mx0/PvCiSCHgrOuRbvgLaSctXy0YXKf+4Yz5zNBjcepKAdFbK0h
         syNX14nnzB3iLTN39KPDWd3fQgnIiy04yWdYTLmKdpBXJR1HgaD/Yk+u+GDIr93QP6rw
         HxgJ6oKTEEYkJUYFiR3041ebKNQIPYHVfXGTZ59c3CTMVqzblHm5uNrKPshzEwMRfjhg
         m1vBPBbXnaD8LdIQtorcP4o6LRw3A+0lqCV2YWK94wKCLI6l8abGXzgTjQyjsNjdhRGy
         kR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=irnPo0VPZHkcxSK603vQoDi3sOl0rrmTswQyfwawjV0=;
        b=tAjTAC8ea6jnaooj8wPUKoJYRuHorxpp90/wS1ayPK6ghvpP/ooxNOU0H+JQ8Ex0da
         ISX7JCwodFJRiLL56mGyd3S3VCLe2sYbtM2ZidCVT2Ga9BQ3jW5EN9yjUF2kEPSFw+Ek
         bWkgYGYggfgJkgl7Ee+VNTemvk+FkM14ry/D6VeD+sYeG2Z1suSgOPO7VoQxv2SKegBO
         qsK+8H0bkHz9DAHikHv+ESlpYpW4IL9NbpxCGLvV5+PTc6qXpQLntsmUOUEAs8Yjqblc
         aSLKlyEd6MUXWC6mE+LvKtdpzVizhif1+14f7Gc0YBM+G99FbtMCnd4svM1s8LnpLx66
         07eQ==
X-Gm-Message-State: AOAM530k1/DtioARm6Vue6j6Y1bNTROPEh5WNPBZOgg2KLQWp8PQFneQ
	sCmdNzx3PM/S2lvXbjZ71kXnNd1g5x0S/8/bAIJSDCMzTYw=
X-Google-Smtp-Source: ABdhPJyTjvTuxnY8MBN33hRvkBX7vLSHbTM3T2Hdli3yAJPpSVzKH0m646FkeJuVzGd4S+BtdWm1VqraB1Hc1z5aKfY=
X-Received: by 2002:a05:6402:416:: with SMTP id q22mr13131386edv.204.1621414060312;
 Wed, 19 May 2021 01:47:40 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 19 May 2021 10:47:27 +0200
Message-ID: <CAG16vQUvRavJq1xH09XSLXBiXQvDBLt9U1i9BfjZLmnGDvsHrA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: XANPVNNSGWNQ34TQYKZYFSS633PE3USI
X-Message-ID-Hash: XANPVNNSGWNQ34TQYKZYFSS633PE3USI
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocError: Specified destination address is unreachable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XANPVNNSGWNQ34TQYKZYFSS633PE3USI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2632923640582890950=="

--===============2632923640582890950==
Content-Type: multipart/alternative; boundary="000000000000194b8e05c2aae10c"

--000000000000194b8e05c2aae10c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have this warning trying to load an image on the USRP E320. =C2=BFWhat do=
es it
mean? =C2=BFHow can I solve it?

Kind Regards,

Maria.

--000000000000194b8e05c2aae10c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>I have this warning trying =
to load an image on the USRP E320. =C2=BFWhat does it mean? =C2=BFHow can I=
 solve it?</div><div><br></div><div>Kind Regards,</div><div><br></div><div>=
Maria.</div></div>

--000000000000194b8e05c2aae10c--

--===============2632923640582890950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2632923640582890950==--
