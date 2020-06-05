Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B75C31EF6A9
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jun 2020 13:46:14 +0200 (CEST)
Received: from [::1] (port=55256 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhAnb-00035u-0d; Fri, 05 Jun 2020 07:46:11 -0400
Received: from mail-lf1-f41.google.com ([209.85.167.41]:35921)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <srushti.siri@gmail.com>)
 id 1jhAnX-0002ha-4k
 for usrp-users@lists.ettus.com; Fri, 05 Jun 2020 07:46:07 -0400
Received: by mail-lf1-f41.google.com with SMTP id c21so5608065lfb.3
 for <usrp-users@lists.ettus.com>; Fri, 05 Jun 2020 04:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=VN7S/6G2UptqJDdIVo1JsOvsH9wOPvKQWj/fslNVw9g=;
 b=ERWvwFG8Rhg01VnhYZFs8yOzNE80b7JAaGfL9iZW/hOv08nUZuAvNBzgyu4oLUzyRz
 hXp8npk/9fCTPZlqv6e0OUSqeaz+zwteE1h/CT3jjMVJdT987VDqtpyUZ7YabMYQiWrs
 qcLG+NOiS+V8cD+sNDIV2q+zIJrR1e1GNOZZY3/mwhpT4AAM+kuwSaVgzu9hYAPuUey3
 l02MJ7fGqWHkTPooqGBgVbHTssRrIU8tm/F80rHQjLpDZVSDQKSxw5f6f5LALxeCFlvQ
 1otdaGFoSi0iX1wbIwbmNfNVm0Vg+1b6Cb9gE21g8reKw94N/UEBO/Yno5pj4ZpNvOXf
 0Ldg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=VN7S/6G2UptqJDdIVo1JsOvsH9wOPvKQWj/fslNVw9g=;
 b=h+XNGeYtJM0olEbs33IULwBkBRuFbZcp/GLxV/sZHZzphKWKLFqx3T9+MTfFgRUceL
 AXu+d1xDGiLm4P+lvonqQYzEwiFqhLhx5k5PP80AlSUstyMFfDI7qghHc3wRhY9whiDc
 Z5Lmd9VA7g6boSiEVF7usxHljN78Xs52R6ZngxD0g8e589wcbSOt54iTNoAPSdInkSeD
 jWQdEzPt9M7MMQGOAhjogbSkqZe0Om2vu/3wVQDpgCFHvvZfA+wSkIPsfkpkFAbn46VT
 bn+HW6QEQHJgF7/KMioTnPxIGXotPSv4BWu4mNPsO/LwIRQiSM0gSm8vAS9gRZUOAPG2
 TCTw==
X-Gm-Message-State: AOAM532eSLIes9jA8PLbOiLR6arxMTM+TjY7l/R8vamuep3bFVqlRt8n
 JTN4bHUefLTAs0sbcKnFpTVE8kPvPDHaXNu51c8XBzAEM1g=
X-Google-Smtp-Source: ABdhPJyCSUKBISZVbQPjtgf4UoZF6r/hfzyhJI4y+ENZU9+nhOPUY60wHvz3/25tDRZcnPfBQv36J5aMVN5SpBij5HY=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr5131212lfn.21.1591357525458; 
 Fri, 05 Jun 2020 04:45:25 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 5 Jun 2020 13:44:49 +0200
Message-ID: <CABpcK0qRMWYJ6AqdfFcdSE5ZGEywq=Rp6d5QE4nEKCc3r0_UXg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Installing two DPDK versions in one PC
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
From: srushti via USRP-users <usrp-users@lists.ettus.com>
Reply-To: srushti <srushti.siri@gmail.com>
Content-Type: multipart/mixed; boundary="===============7173357769822665120=="
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

--===============7173357769822665120==
Content-Type: multipart/alternative; boundary="0000000000000402fe05a754cca2"

--0000000000000402fe05a754cca2
Content-Type: text/plain; charset="UTF-8"

Greetings,

Hope you all are doing well!!

I have a question regarding DPDK. Has anyone tried installing multiple DPDK
versions in the same PC? Is it possible? Will it break something in the PC?

For example, can you have DPDK 17 and DPDK 18 installed in the same machine?

Please let me know if anyone has tried this.

Thank you

Srushti

--0000000000000402fe05a754cca2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings,<div><br></div><div>Hope=C2=A0you all are doing =
well!!=C2=A0</div><div><br></div><div>I have a question regarding DPDK. Has=
 anyone tried installing multiple DPDK versions in the same PC? Is it possi=
ble? Will it break something in the PC?</div><div><br></div><div>For=C2=A0e=
xample, can you have DPDK 17 and DPDK 18 installed in the same machine?</di=
v><div><br></div><div>Please=C2=A0let me know if anyone has tried this.</di=
v><div><br></div><div>Thank you</div><div><br></div><div>Srushti</div></div=
>

--0000000000000402fe05a754cca2--


--===============7173357769822665120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7173357769822665120==--

