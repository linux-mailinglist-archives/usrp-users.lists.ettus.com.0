Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB533C8B57
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 20:59:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02660383F5E
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 14:59:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T9ccwuU6";
	dkim-atps=neutral
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E95A383F49
	for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 14:58:43 -0400 (EDT)
Received: by mail-io1-f50.google.com with SMTP id u7so3442080ion.3
        for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 11:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=B97lpPzIDdf9iMJ6ky6e7EqANGW78cHQ4TZicleFvuU=;
        b=T9ccwuU69WsEE2aHfyX1usl4WGmT+BGgTo5ZqN2p8sWoAn030h7nVQROvc+cnH0zRR
         4DAcWdNfoY8GdY7Bi285MguDzlmnZfMi6cJjlDyLMIyFcoY1HjKTdshp9KFkUs/PNhvo
         jGovKUuQ6H+9bpQ91fiEz1+I0Fsc/pFE8pqdfMLN1tYkurvgdXhxaGA6xFvU8wmX04WD
         1x/msdMgEb0oeunfYUMIz/PotMVM0miUz5hgqh4Zyouv3Y2y/Iih8lKUaY1EfEFe3RtP
         g7wZjnXNMfKZCHXJR7qkBFypJAtx6wOnZr6MH8OBPeFMeSpt1ECscZ8z/VB1PoyK1CK0
         opBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=B97lpPzIDdf9iMJ6ky6e7EqANGW78cHQ4TZicleFvuU=;
        b=oVgBx8BvBNCWT3E0Adf5McUTuYXWfmDvYkWL15sa/x+Shcf1C0iORzmzOWmZUnH1xU
         NGcrDn3q3Ru58fynG9qPourjSeuttYvmbqaZYC8o0EHZPckxRij7CjcKbiHJjqfj4qTf
         Yjs29lAcLgz1XcHGZkWtUm+SffBgCF6r0VEYsp9+GBtmTboJ1224VpFKg3IWEB0K0WI+
         /0BuadkEv5UU9hFbJf3VPAm53jT5IYTg26rDt92tnzxpsvpmV0sZrCuKPTYDaQ0/Hw1E
         o8H7mmDN5RVytMWVSibgS8yvQzjygeFkJ3nidVSeppzOolMq/nhcbvdF1ZpPaKCTOQnc
         a/Ew==
X-Gm-Message-State: AOAM532aE4GzzMznT4DWqmLAW/Z1bg3koTqYBDiVDkhKa/eMm+pxGmnY
	ZweBM5PFAnnzRUvBzlMPGcVyzI/dzEpGtcHP0w4hyOp28ZI=
X-Google-Smtp-Source: ABdhPJzkSWvC+xlOS+u2btD2S8LO+/M5kWLpJ2qMClZ54HZVerxDzQkpi8yD2N7knKhObUmX4NzVoY4kP985TRPlm3s=
X-Received: by 2002:a5e:8e44:: with SMTP id r4mr8127561ioo.124.1626289122409;
 Wed, 14 Jul 2021 11:58:42 -0700 (PDT)
MIME-Version: 1.0
From: wan <liuwsdr@gmail.com>
Date: Wed, 14 Jul 2021 14:58:31 -0400
Message-ID: <CABNzRJn+EvXSa6+4GLDddM2k3XH6SiGWmm1xrMTbnEYy-EnQVA@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Message-ID-Hash: CATAS3EZB5HEVCK3BIYTNWFEM7PTEGFG
X-Message-ID-Hash: CATAS3EZB5HEVCK3BIYTNWFEM7PTEGFG
X-MailFrom: liuwsdr@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD deb dependencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CATAS3EZB5HEVCK3BIYTNWFEM7PTEGFG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6706571429313354704=="

--===============6706571429313354704==
Content-Type: multipart/alternative; boundary="0000000000007182e305c719f1bd"

--0000000000007182e305c719f1bd
Content-Type: text/plain; charset="UTF-8"

Hello,

I noticed there is a Docker file with Ubuntu 20.04 dependencies in the UHD
repo at .ci/docker/uhd-builder-ubuntu2004.Dockerfile. I plan on
building/installing UHD to a custom prefix, but not a deb package. Can I
skip all the packages in "deb dependencies"  section? What about libncurses
and ruamel.yaml?

Regards,

Wan

--0000000000007182e305c719f1bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>I noticed there is a Do=
cker file with Ubuntu 20.04 dependencies in the UHD repo at .ci/docker/uhd-=
builder-ubuntu2004.Dockerfile. I plan on building/installing UHD to a custo=
m prefix, but not a deb package. Can I skip all the packages in &quot;deb d=
ependencies&quot;=C2=A0 section? What about libncurses and ruamel.yaml?<br>=
<br></div>Regards,<br><br></div>Wan<br></div>

--0000000000007182e305c719f1bd--

--===============6706571429313354704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6706571429313354704==--
