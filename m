Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 641EA387601
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 12:05:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E92283841E0
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 06:05:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KB0i3/4c";
	dkim-atps=neutral
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by mm2.emwd.com (Postfix) with ESMTPS id CD8AD38410E
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 06:04:57 -0400 (EDT)
Received: by mail-lf1-f49.google.com with SMTP id r5so13270179lfr.5
        for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 03:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=IM1rSYe5kWQIZ2xsdu//V4HJm1oyeYSezHk166bhuvI=;
        b=KB0i3/4cLWBPG7ijq7xOe8hKqIbrxlE+eHBs+8dyURgng9QXaIdDx/lJOmns/4pLLe
         RKMwm5JF4YJAvfxVtZ0fbgZ1GOz+cp1Jx5rHFISlZ3AXMKaPtM2/qBk6llsJ/uQ5osEG
         QB8msrOl8vgM/3Ng5QXnxCMIqADVspgvAps1yn0TPkiNRjSLLo4/l8bB4uCpEK0eoohT
         d3ZRk8ITmwTHKDBnR0PvXLEIDfse5DxyWRQ8XAow/Do0zgL/LHlUonL6n+uUUATmJl4h
         yuoJ6Ve2K6HrsNvKGtTXh60vNCtfKk7YYTy9L/C1CpbiWJDsnicwKIgQjkXbh+9rOrBZ
         HbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IM1rSYe5kWQIZ2xsdu//V4HJm1oyeYSezHk166bhuvI=;
        b=bnvSmrg9t4lge8WkfH/DlRL32+vbvmc0yB0F+3Nfsm1/11XbEmW4TOfyjB5pR2V4KW
         tdjOgw/Tyo8ny+moYi/95nTIBTFnRzCQmbBVZ9D+Hntn1eXcUUBthXMM+M74KSRIMjZd
         EACvIdcWbH7nP4SgK4Di2aswB7ZKCPtK61LkRfRnq7Puraatl/OUUeIrL8hZJb16dPCt
         kUGhEI5S9phIRi/0Op+9THKy0GBQY5hMc2aSnS0SGH9+QlRL4d89rN5b2fZ9OL0n4kf3
         qne+xcg2HrvZKB4kGPmhHW85QhNArsVLUrE6YXyBpgJyCfD5TcSZAecWzy1F2uCHC1Ip
         rYDA==
X-Gm-Message-State: AOAM530VrbEpMsa1dORDY7ZX+6laVV0StpNzxuEBh0fQuaftlxmyo+Ff
	SJtkbCYV/UbmiwRvn/FnbegvOLHP9sCfEgguAq+7Le8N2ZeWAg==
X-Google-Smtp-Source: ABdhPJwjZKSdhgIQPgUW+/yOqjLqs5AljXko+K2Kn5RY8qwruLHLXiojez00q0rvewVG3DOxpP7uOkV2QKvau2g2WC0=
X-Received: by 2002:ac2:560b:: with SMTP id v11mr3553758lfd.315.1621332295867;
 Tue, 18 May 2021 03:04:55 -0700 (PDT)
MIME-Version: 1.0
From: Margaux Bougeard <margaux.bgd1@gmail.com>
Date: Tue, 18 May 2021 12:04:44 +0200
Message-ID: <CA+SYr19-pbibWHFXFOC5h1gb=f1665h6nmgK9wrDTgomsY84OQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: O5TKLKBPGA6VLSM5HTGKDDMCYOKJ5AKT
X-Message-ID-Hash: O5TKLKBPGA6VLSM5HTGKDDMCYOKJ5AKT
X-MailFrom: margaux.bgd1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using MPM with UHD 4 and E312
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O5TKLKBPGA6VLSM5HTGKDDMCYOKJ5AKT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1501201905586683459=="

--===============1501201905586683459==
Content-Type: multipart/alternative; boundary="0000000000008ede5505c297d71d"

--0000000000008ede5505c297d71d
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using the USRP E312 with UHD 4.0.0.0.
mpm_sw_version : 4.0.0.0-g90ce6062
product: e310_sg3
MPM Version: 3.0
FPGA Version: 6.0

Normally I should have access to MPM but I don't. If I add the lines
concerning MPM in the multi_usrp.py file, then I have an error message
telling me that 'MultiUSRP' object has no attribute 'get_tree'.

Do I have to perform any manipulation to use MPM?

Margaux

--0000000000008ede5505c297d71d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am using the USRP E312 with UHD 4=
.0.0.0.</div><div>mpm_sw_version : 4.0.0.0-g90ce6062</div><div>product: e31=
0_sg3</div><div>MPM Version: 3.0</div><div>FPGA Version: 6.0</div><div><br>=
</div><div>Normally I should have access to MPM but I don&#39;t. If I add t=
he lines concerning MPM in the multi_usrp.py file, then I have an error mes=
sage telling me that &#39;MultiUSRP&#39; object has no attribute &#39;get_t=
ree&#39;.<br></div><div><br></div><div>Do I have to perform any manipulatio=
n to use MPM?<br></div><div><br></div><div>Margaux</div><div><br></div></di=
v>

--0000000000008ede5505c297d71d--

--===============1501201905586683459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1501201905586683459==--
