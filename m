Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B66318C06
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 14:30:17 +0100 (CET)
Received: from [::1] (port=56100 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAC2v-00078i-AL; Thu, 11 Feb 2021 08:30:13 -0500
Received: from mail-io1-f48.google.com ([209.85.166.48]:41769)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cwolsief@gmail.com>) id 1lAC2s-00074a-6N
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 08:30:10 -0500
Received: by mail-io1-f48.google.com with SMTP id e133so5625634iof.8
 for <usrp-users@lists.ettus.com>; Thu, 11 Feb 2021 05:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cgKtgIB0cJutG5VlqCAgNoHVCQTtxudjeBaQAYt7oLw=;
 b=PcZWLy9o7/g1xndrOICMtcMA8ATbbP9rG4OyrOBjVurxxZdDbhpWMqNoi/0R7apVtH
 SqEm6ieyHkvPNFQcG8LwacVOyFr8/2jLCAupH2WEjRRzWtmh9OSUaawH645BFKZcJYWg
 FSlTPwGiEqTyqCH2hiyFzffeYnMr6HUVm9cpUPoWfpab+fSJZ8kELZ+kpuR/YXaKjEZ+
 5e0Uo4lxC0PdNdTdANfvTkjJDRakWI5iUnx5lL+Q+A4eW5WQkV3valgBC/xkxb3SP5gK
 OvUypd2skPJFcBxfQPpkmRLELacfACKK9k0AjYS7BF9OLqeW8Z5uSmIyMFPF76I1vJiC
 uQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cgKtgIB0cJutG5VlqCAgNoHVCQTtxudjeBaQAYt7oLw=;
 b=YjY+2y1zWOT1qKMbcW8KMvORW96qnJ5QKhXyIwgHfwet+zxu1vzWESWpuhtPU1Oqrj
 VzviaMJi6KfMZLj55wtUMmmxv+SlfG0AJoQUZtVLcTK1nW2O5xx8SkHGja7a+QBeYkHf
 ZluqJ5rdzUyg24umN3AJV9idzC519U84uAfYIX0fbMSqm98hbtocdpWONa+P0JenkL+/
 i2x3Y4pbvJ9Uv8fObrXuhXYng86pfy4SZpH+kGDlx0FDyDQ03OHSKSAJPK6Xks8yaNqb
 C685UIrovBg8Y/hINQyCuuOuA++AO9F1FMmVLH4cq66QVZsyoDtMwNPJAe4EuuvZPZaE
 8keg==
X-Gm-Message-State: AOAM532WYZLpKLLzAS9mK892XCGs1/6loFtU95jqxfAdKxDsO/Oyp2Mk
 nva963vN23c6aFGv5DmOOfg/m30rGfl0sKVUT3QBEX0r9HHCjw==
X-Google-Smtp-Source: ABdhPJye1ZVxDcycfhXTNx5gnhNPhvC9oM5eTPDluWO9w9rRrRlX4ibFOYefKJUkc2phYvgbN5kbDMDxw6qvBBVGtWY=
X-Received: by 2002:a02:cba5:: with SMTP id v5mr8775640jap.72.1613050169176;
 Thu, 11 Feb 2021 05:29:29 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 11 Feb 2021 08:29:18 -0500
Message-ID: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Python API install help - Ubuntu 20.04
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
From: Casey Wolsieffer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Casey Wolsieffer <cwolsief@gmail.com>
Content-Type: multipart/mixed; boundary="===============7595225740664330842=="
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

--===============7595225740664330842==
Content-Type: multipart/alternative; boundary="00000000000056b90605bb0f8209"

--00000000000056b90605bb0f8209
Content-Type: text/plain; charset="UTF-8"

Hello, I have tried several times to install Python3 uhd on my system but
when I attempt >>>import uhd in python3 environment I always receive
ModuleNotFoundError: no module named 'uhd'

As far as I can see there are no hang ups on install and after $make, I run
$make test and get 0 out of 82 fails. Below is my enabled components after
I run

$cmake ../

I've also put a uhd.conf file in my ld.so.conf file and ran $sudo ldconfig.
Although I'm not certain I'm putting in correct path, right now it's
[my_directory]/uhd/host/build/lib/

I'm on Ubuntu 20.04, any help is greatly appreciated!

-- ######################################################
-- # UHD enabled components
-- ######################################################
--   * LibUHD
--   * LibUHD - C API
--   * LibUHD - Python API
--   * Examples
--   * Utils
--   * Tests
--   * USB
--   * B100
--   * B200
--   * USRP1
--   * USRP2
--   * X300
--   * MPMD
--   * SIM
--   * N300
--   * N320
--   * E320
--   * E300
--   * OctoClock
--   * Manual
--   * API/Doxygen
--   * Man Pages
--
-- ######################################################
-- # UHD disabled components
-- ######################################################
--   * DPDK
--
-- ******************************************************
-- * You are building the UHD development master branch.
-- * For production code, we recommend our stable,
-- * releases or using the release branch (maint).
-- ******************************************************
-- Building version: 4.0.0.0-93-g3b9ced8f
-- Using install prefix: /usr/local
-- Configuring done
-- Generating done
-- Build files have been written to: /home/casey/Projects/UHD/uhd/host/build

--00000000000056b90605bb0f8209
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, I have tried several times to install Python3 =
uhd on my system but when I attempt &gt;&gt;&gt;import uhd in python3 envir=
onment I always receive ModuleNotFoundError: no module named &#39;uhd&#39;<=
/div><div><br></div><div>As far as I can see there are no hang ups on insta=
ll and after $make, I run $make test and get 0 out of 82 fails. Below is my=
 enabled components after I run</div><div><br></div><div>$cmake ../</div><d=
iv><br></div><div>I&#39;ve also put a uhd.conf file in my ld.so.conf file a=
nd ran $sudo ldconfig. Although I&#39;m not certain I&#39;m putting in corr=
ect path, right now it&#39;s [my_directory]/uhd/host/build/lib/<br></div><d=
iv><br></div><div>I&#39;m on Ubuntu 20.04, any help is greatly appreciated!=
<br></div><div><br></div><div><span style=3D"font-family:monospace"><span s=
tyle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">-- ############=
##########################################
</span><br>-- # UHD enabled components =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br>--=
 ######################################################
<br>-- =C2=A0=C2=A0* LibUHD
<br>-- =C2=A0=C2=A0* LibUHD - C API
<br>-- =C2=A0=C2=A0* LibUHD - Python API
<br>-- =C2=A0=C2=A0* Examples
<br>-- =C2=A0=C2=A0* Utils
<br>-- =C2=A0=C2=A0* Tests
<br>-- =C2=A0=C2=A0* USB
<br>-- =C2=A0=C2=A0* B100
<br>-- =C2=A0=C2=A0* B200
<br>-- =C2=A0=C2=A0* USRP1
<br>-- =C2=A0=C2=A0* USRP2
<br>-- =C2=A0=C2=A0* X300
<br>-- =C2=A0=C2=A0* MPMD
<br>-- =C2=A0=C2=A0* SIM
<br>-- =C2=A0=C2=A0* N300
<br>-- =C2=A0=C2=A0* N320
<br>-- =C2=A0=C2=A0* E320
<br>-- =C2=A0=C2=A0* E300
<br>-- =C2=A0=C2=A0* OctoClock
<br>-- =C2=A0=C2=A0* Manual
<br>-- =C2=A0=C2=A0* API/Doxygen
<br>-- =C2=A0=C2=A0* Man Pages
<br>-- =C2=A0<br>-- ######################################################
<br>-- # UHD disabled components =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<br>-- ###########=
###########################################
<br>-- =C2=A0=C2=A0* DPDK
<br>-- =C2=A0<br>-- ******************************************************
<br>-- * You are building the UHD development master branch.
<br>-- * For production code, we recommend our stable,
<br>-- * releases or using the release branch (maint).
<br>-- ******************************************************
<br>-- Building version: 4.0.0.0-93-g3b9ced8f
<br>-- Using install prefix: /usr/local
<br>-- Configuring done
<br>-- Generating done
<br>-- Build files have been written to: /home/casey/Projects/UHD/uhd/host/=
build<br>
<br><br></span></div></div>

--00000000000056b90605bb0f8209--


--===============7595225740664330842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7595225740664330842==--

