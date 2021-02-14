Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE50F31B0F8
	for <lists+usrp-users@lfdr.de>; Sun, 14 Feb 2021 16:37:47 +0100 (CET)
Received: from [::1] (port=58862 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBJSw-00048p-OC; Sun, 14 Feb 2021 10:37:42 -0500
Received: from mail-io1-f54.google.com ([209.85.166.54]:32876)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1lBJSt-00045F-0C
 for usrp-users@lists.ettus.com; Sun, 14 Feb 2021 10:37:39 -0500
Received: by mail-io1-f54.google.com with SMTP id q7so4407582iob.0
 for <usrp-users@lists.ettus.com>; Sun, 14 Feb 2021 07:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=H5mkMP5lxvhvWKCm+fTo7kDyVtVxS75ofLhaQ3gAg2g=;
 b=LHooqVJojIdDhDP7UUkoPO65QHtEG6g1X0x3m6fWk3i7Lc1/HI453VHnDrEi0MsT/w
 N4ecNSeNuQJ2huIbiaPSqd7+CxyaIGrc85lHl3oEAOnZchctvKh9jdudHIz8fuU2ktKF
 axqiqA/5Pr6s/aOLHzw2aTbthNvRK5y8imGEnrX7BGL9/Jy1Y46sS2hdCQVzkVqKVTgh
 7tAsMSafu0vKH//Yiz/0CiNE9O7dC117oDpVm9ml2JOJHl6U0J1lY1OH0u2I4u11Me6J
 F+mZ817ecHmdSevWpbiwunpxZ+8x0PXd7UveTOOcIn4sdcne7afJe3vGjMGj/KSeIBe2
 wI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=H5mkMP5lxvhvWKCm+fTo7kDyVtVxS75ofLhaQ3gAg2g=;
 b=ln/6yHWiweJSUa1yDxXST2zgQ4uGkqRCeUUJdPhUCsyYBoenG/ijWty3caGw17NJQ2
 bfNXhS5sDhy9cFD4RRZG51rAZGDiAEaBBYYAbnI7us5sUfaWb+n3BFAtkG3UfYbfd/zS
 Z28d/S0N/ClvcPCaIEeo4noKGPrj8WemMEvz+xao6frPSJVCWLfDDs380s2bB83Ofp7Y
 mEYvt7jeR+fD5zmzxq6eF7T4kM3pNRda8XxOh1h3ftg6iaFXGwA6ZdbpnKecTzeWoOBk
 a66hhUz+dp9l3UzU2kYGDBUepWoGdA1MVqqMimlFfeQao3p90dI48bgUcw4OM611nlVX
 8rAg==
X-Gm-Message-State: AOAM532RLLQ9UrP80hPz+qjXlEnxvVHgHMoTDZL1oPUiUICBMWpPsqW7
 7NtEpGTPEqKKvN0UmWT4Xs3N4WiUa22pHFyxLTj/34+jWITqnw==
X-Google-Smtp-Source: ABdhPJwRjLLzMpV1wGns/vzL0TjVbgb3Oq0EYpO/RsPChCXpGxjCoPaykEq8QB9INVJ3m9qKV7V6FsngNdnR9fh4sCs=
X-Received: by 2002:a5e:8904:: with SMTP id k4mr9887088ioj.2.1613317017899;
 Sun, 14 Feb 2021 07:36:57 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 14 Feb 2021 17:36:46 +0200
Message-ID: <CAPRRyxt5EYMS-=+F9b-89VvfRzDTvuHeC70gBL99oRetpCJiwg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] setting up gr-fosphor on uhd 4
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============7231414412312815756=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7231414412312815756==
Content-Type: multipart/alternative; boundary="000000000000c3156105bb4da371"

--000000000000c3156105bb4da371
Content-Type: text/plain; charset="UTF-8"

Hello. I want to create a graph to run gr-fosphor for usrp e310 but I
haven't found any examples or at least uhd_image_builder.py to build
firmware. Tell me if this is possible and what resources you can look at in
this direction.

--000000000000c3156105bb4da371
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newline">Hello. I wan=
t to create a graph to run gr-fosphor for usrp e310 but I haven&#39;t found=
 any examples or at least uhd_image_builder.py to build firmware. Tell me i=
f this is possible and what resources you can look at in this direction.<br=
></div>

--000000000000c3156105bb4da371--


--===============7231414412312815756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7231414412312815756==--

