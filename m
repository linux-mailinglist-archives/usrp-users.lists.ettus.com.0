Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3327E3F6AE6
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 23:13:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07270384395
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 17:13:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="jVSM3qHM";
	dkim-atps=neutral
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 02D5238422A
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 17:12:23 -0400 (EDT)
Received: by mail-il1-f169.google.com with SMTP id s16so21878482ilo.9
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 14:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=M6qnBvV2gF4XUmSF/de+WBGE//eOIaFSW9Hn6dzhF1c=;
        b=jVSM3qHMhhhHRMxSd20NOR1YMA25c+xJTmnmOOVfRJkPRAuh48w7SgLcV8TXEVzXqT
         gzAIXneXi/nxqGvEl8aibIBvLmVs+n972KoHN20aF5BL2BUc2kd6h7/gaDBNJhVr0c0n
         11fyo0zH8DnsAK2sWFjjWW/tZ1RF8AZwTgohXVxUlRfoc/rHkVthgLm0hTsQvhd38LU7
         LTWvsQ6Reuf+BFUnrgTA9OeeU+I/RLh5Q+hh8l2YhUcI1TaeVCYtZDrlh+o4QBcYtRCy
         RPHzwo7FF1MUsmyZpNaevWpv9yIKYg2DztC000EnfRl6FrGHJ2lwlvMR6ZQO4hbskUrr
         I2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=M6qnBvV2gF4XUmSF/de+WBGE//eOIaFSW9Hn6dzhF1c=;
        b=RT5Bh6OWcCjJgqVzQX4cu676aWmU4CnwaYW1rmVqQRxyLtK0EvfL+RLZSHJS63Cckt
         8plvVLDprl3nttExlCFwxLp2xRHOCSsk4b1tyY3kdyVO4fwVRCoMJeoz8wQT8JWRisq3
         0FlQmaGEcTOChL5VYoiXkzfIY2QApacgAS2mdvrFU5CuX+768ksy0gS9hVePrJL/ZfrF
         kjeV8qOpl6Q/bJIcA2dzCruGxhdvMk0cadgCp64n27Tp6MJJ7Ad00CSrLbHOHapyyP1s
         QzMaCWBbVIWxfpd3OiCaS7qGvECCOkVYddpzg1vWdl5IRtB9x7sl4ch7Bs//2EX5zjBk
         /dBQ==
X-Gm-Message-State: AOAM532Q5guZ/5HWpIHLDP2ScCxqeVZKb5g9Pmwg0CVXBs25AasrZWj+
	Na/+iBsBg3ojDtKqRGDxzLfHYftD6Egtp7kWrRCuv8oqjMwARg==
X-Google-Smtp-Source: ABdhPJwATbCKgmXJbwWxqXY4FwOXJnXnztcwzI3o2+F9bnLmw4rAB4BQ6O1D4pgWtKefdZOxqiW8dRbZCx2OawsidIE=
X-Received: by 2002:a92:444e:: with SMTP id a14mr21211425ilm.152.1629839543089;
 Tue, 24 Aug 2021 14:12:23 -0700 (PDT)
MIME-Version: 1.0
From: Rich Gopstein <rich@ourowndomain.com>
Date: Tue, 24 Aug 2021 17:12:12 -0400
Message-ID: <CANsNeao6k=2hTMc7orLE2L=dXKuoM243zTJ3VDWtUnDYU_YvZQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: JIK2DSBWZQFDBUDXB2L5R3C56GVG5PQM
X-Message-ID-Hash: JIK2DSBWZQFDBUDXB2L5R3C56GVG5PQM
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JIK2DSBWZQFDBUDXB2L5R3C56GVG5PQM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6106422069571991365=="

--===============6106422069571991365==
Content-Type: multipart/alternative; boundary="00000000000001cf7805ca549734"

--00000000000001cf7805ca549734
Content-Type: text/plain; charset="UTF-8"

I'm helping out on a project that's using an E310.  Someone else is
doing the GNURadio code, but I need to read the temperature values
periodically (once every few seconds).  My code will not be running in
GNURadio.

It looks like there are three temp sensors (Zynq, ADT7408, and the
AD9361).

What are my options for reading the temp values outside of GNURadio?  If it
matters, the E310 is running UHD_3.15
My code will be running on the E310 directly.


Thanks.

Rich

--00000000000001cf7805ca549734
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m helping out on a project=C2=A0that&#39;s=C2=A0usin=
g an E310.=C2=A0 Someone else is doing=C2=A0the GNURadio code, but I need t=
o read the temperature values periodically (once every few seconds).=C2=A0 =
My code will not be running in GNURadio.<div><br></div><div>It looks like t=
here are three temp sensors (Zynq, ADT7408, and the AD9361).=C2=A0=C2=A0</d=
iv><div><br></div><div>What are my options for reading the temp values outs=
ide of GNURadio?=C2=A0 If it matters, the E310 is running=C2=A0UHD_3.15</di=
v><div><div>My code will be running on the E310 directly.</div></div><div><=
br></div><div><br></div><div>Thanks.</div><div><br></div><div>Rich</div><di=
v><br></div></div>

--00000000000001cf7805ca549734--

--===============6106422069571991365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6106422069571991365==--
