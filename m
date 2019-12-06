Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F465115093
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 13:47:12 +0100 (CET)
Received: from [::1] (port=55360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idD0n-0005TU-KD; Fri, 06 Dec 2019 07:47:09 -0500
Received: from mail-wm1-f48.google.com ([209.85.128.48]:50573)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukas.buderath@gmail.com>)
 id 1idD0j-0005Pe-Sj
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 07:47:05 -0500
Received: by mail-wm1-f48.google.com with SMTP id p9so7717923wmg.0
 for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2019 04:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=oI3novGgvLKRNKCAKE2jFoTcL17wgUmGD9REB//lrDU=;
 b=X+hSruWes88w+96w7YTsmJT5687tQ3nPcMJnEq8bW31vmMHvNhowz0podYw2mMtPGF
 xULdy9zixSDTpI23HOLigazVzh5ePX/rMmDtGrubyPtope9qJ3q3/R1/YIaCaCfxFv9p
 m29YsVwGW0kVSBDmuCqsifICxrVYUX5rA/iRy3m7o893llX1dVriBPm3iFJ95cCUxNsU
 pvMfNeyxzesaOzobFqK6i3Pk5T7xBvZtH+e+Ib+MoqeaSvN2yPat4QMSBX68MzY1Lrbg
 aVjn1wOxfc4tZtoW0JnG7ONuJ5oIP3E0ABAmT87eqHDs77zRzHybgSQOjUz/DE0CAHab
 stFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=oI3novGgvLKRNKCAKE2jFoTcL17wgUmGD9REB//lrDU=;
 b=JNWPEueLRnW/uziD2XjgfdoXnhq7+VRsIGC3C07Kr+fY/NU7Ql5QfsZbejJWBYLOIh
 z4qU8o9Mu0K5YtQp5VdePb8+93R0LWQzL6n7zo0Vrv2LIGmN7LZydVEaBGgZNjXuRoVt
 kx4VDUA357EpUQ/iTErmqrdg5vDpmU+hSN4ZsdIpht62bV3/sqW9UzHWwgxakJA8EN90
 bWhZ2poXL08yS2WN3SZvh7nBwMP8zZvMO3fhUcNLrXmnUGBkJgwFdTuRw/ErM7oruidg
 umd93bwfQKFAbaZz0Ie5GzgQHJHFwfOkyamDwiLveBdm+29lZANy3O2t/41N3n5w283B
 W5lQ==
X-Gm-Message-State: APjAAAVNsclxuftevIgjJHlwmUICZ8ot85gwot9hQkZvePyklbxVD/PO
 tUxtMOxPn/Hzx3aOmPCGOWO+X0H4ywBBF92KC7ahht6V
X-Google-Smtp-Source: APXvYqyuRU12rfBB45mS/jZTid8T59Hb1weoCo9Q8cpBxZ+acg0vmU3CmgNWJgkegP3zVhSbDg4DLZOHh+3KsC+olBw=
X-Received: by 2002:a1c:9958:: with SMTP id b85mr10828412wme.63.1575636383748; 
 Fri, 06 Dec 2019 04:46:23 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 6 Dec 2019 13:46:13 +0100
Message-ID: <CABgWqPyBY0FFk27+Z3SdJtH-Mq1BoMtVQs562WwcRnWz8oZnYQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Error message: UHD: 1
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Buderath via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Buderath <lukas.buderath@gmail.com>
Content-Type: multipart/mixed; boundary="===============4095717791344807770=="
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

--===============4095717791344807770==
Content-Type: multipart/alternative; boundary="000000000000f2d74c0599086e1b"

--000000000000f2d74c0599086e1b
Content-Type: text/plain; charset="UTF-8"

Hey,

we are utilizing the B210 with Amarisoft to emulate an LTE network. There
are currently three PCs involved: One emulating the EPC, one emulating the
eNB and one emulating the UE. We want the eNB and the UE to communicate via
TDD on frequency band 38. However, when we adapt the Amarisoft config files
to serve this purpose, the following (not very enlightening) error message
appears:
UHD: 1
UHD: 1
UHD: 1
...

We have asked the Amarisoft support for help, but they claim this is a uhd
related issue. Can somebody relate? Does anyone have any idea what this
error message says?

Kind regards,
Lukas

--000000000000f2d74c0599086e1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey, <br></div><div><br></div><div>we are utilizing t=
he B210 with Amarisoft to emulate an LTE network. There are currently three=
 PCs involved: One emulating the EPC, one emulating the eNB and one emulati=
ng the UE. We want the eNB and the UE to communicate via TDD on frequency b=
and 38. However, when we adapt the Amarisoft config files to serve this pur=
pose, the following (not very enlightening) error message appears: <br></di=
v><div>UHD: 1</div><div>UHD: 1</div><div>UHD: 1</div><div>...</div><div><br=
></div><div>We have asked the Amarisoft support for help, but they claim th=
is is a uhd related issue. Can somebody relate? Does anyone have any idea w=
hat this error message says? <br></div><div><br></div><div>Kind regards, <b=
r></div><div>Lukas<br></div></div>

--000000000000f2d74c0599086e1b--


--===============4095717791344807770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4095717791344807770==--

