Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D4C2CA349
	for <lists+usrp-users@lfdr.de>; Tue,  1 Dec 2020 13:59:30 +0100 (CET)
Received: from [::1] (port=59194 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kk5Fe-000668-3L; Tue, 01 Dec 2020 07:59:26 -0500
Received: from mail-wr1-f49.google.com ([209.85.221.49]:41847)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dario@iptronix.com>) id 1kk5Fa-000625-If
 for usrp-users@lists.ettus.com; Tue, 01 Dec 2020 07:59:22 -0500
Received: by mail-wr1-f49.google.com with SMTP id 23so2476741wrc.8
 for <usrp-users@lists.ettus.com>; Tue, 01 Dec 2020 04:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iptronix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=xAGYsaDK2epBtHIiNcI5p9zbLplUBxDFNCd15u27MAo=;
 b=OCswMMYgFDCk/xioQlIX4R9XOACFd4B2jlM39n6MTUdzW/meJfZvlHfEF0sVl3Ib2c
 Gk4kpaxSZ0pfcQm7PUrrv8PlquGkFS9QulGGUlZw5ZK2oGCjRK6FBH3Vm3fKFy/UClse
 l1LaNVtGc0fcqIrnhGaETSHH29EOWk0V6YQHR/6800pSyHYMNell37e7qXSlRgFAi3YR
 GXlrDl77QLf1pROO/35GVuPAR5hAVvwpmlqQWJgNnWKEMIpgWhO8QkilOTISRN38bZvn
 LavCPY9rtRXilJRgJpU+BnJmNPe0kkq27F/MKSkfPSilYlKPry2RteXujXgpWISd63s4
 gcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xAGYsaDK2epBtHIiNcI5p9zbLplUBxDFNCd15u27MAo=;
 b=FVh3YIThQQUnXwaRrTTTizlPNKhevSCD6keGap28LJfeNvRptcPC7mTzw3rcG2nx53
 3QaXcrgfhUgMbO00gYtcP/8dOrOIAe28Zhmhezf/PraLowyPYz5nOQIsgHR6+/SxXOyM
 i56zL7vr6e8zgoRu2dvTOUUi+f1Trk8VxlvWE4+zMoS2xwXD/i54RqVcvmfFJU4xPT3s
 I/RN5vJVdgeUg8l6lE7y29K3sj2A2spaCy2fT9c2DhtT4NDVHzyhGwAAwc/q7e0QAtik
 fQQaVjyM3xDNa5mgNMGMvBjXsqcEtB1455YYttDgHsEMLfm59VQdmEyx8KwEMBij9Abx
 K4sQ==
X-Gm-Message-State: AOAM530M9mcersmun+5WqW59z2QNm8ImTCv/xdayaQCV0hYSvdjCuEd2
 6cLSgzVuwNzPqhLpKZ98Le84t0Zvt1lk/oVj4nWkMaBBmuoqW7yYp0k=
X-Google-Smtp-Source: ABdhPJzSyoLbjRlUUmDOtdIXbFddQIoseVmiyPdrVv2ReRr9MMrIJYmx1VfIt/6lxZYiMdHs87370YQvriNhwVI3jpw=
X-Received: by 2002:adf:f48c:: with SMTP id l12mr3725315wro.280.1606827521120; 
 Tue, 01 Dec 2020 04:58:41 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 1 Dec 2020 13:58:29 +0100
Message-ID: <CAKHaR3=vHK9FrgdZThOVCyGEWsGbKxBKsgW5-g6fePa33OpL6A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] DPDK with UHD 4.0
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
From: Dario Pennisi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dario Pennisi <dario@iptronix.com>
Content-Type: multipart/mixed; boundary="===============5138257313606071994=="
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

--===============5138257313606071994==
Content-Type: multipart/alternative; boundary="0000000000009ca8e905b566aff6"

--0000000000009ca8e905b566aff6
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm trying to use DPDK with UHD 4 but it is not detected by cmake.
i have ubuntu 20.04.1 which installs DPDK 19.11.3-0ubuntu0.2 when i use
apt-get install dpdk dpdk-dev

i tried passing manually environment variables for include and library
directories but that doesn't work.
can you please shed some light on this?
thanks,

Dario

--0000000000009ca8e905b566aff6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i&#39;m trying to use DPDK with UHD 4 but it is no=
t detected by cmake.</div><div>i have ubuntu 20.04.1 which installs DPDK 19=
.11.3-0ubuntu0.2 when i use apt-get install dpdk dpdk-dev</div><div><br></d=
iv><div>i tried passing manually environment variables for include and libr=
ary directories but that doesn&#39;t=C2=A0work.</div><div>can you please sh=
ed some light on this?</div><div>thanks,</div><div><br></div><div>Dario<br =
clear=3D"all"><div><br></div><div dir=3D"ltr" class=3D"gmail_signature" dat=
a-smartmail=3D"gmail_signature"><div dir=3D"ltr"><br></div></div></div></di=
v>

--0000000000009ca8e905b566aff6--


--===============5138257313606071994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5138257313606071994==--

