Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 669B52A7660
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 05:25:59 +0100 (CET)
Received: from [::1] (port=39774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaWqS-0001eM-2z; Wed, 04 Nov 2020 23:25:56 -0500
Received: from mail-vs1-f42.google.com ([209.85.217.42]:36704)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1kaWqO-0001Wu-6p
 for usrp-users@lists.ettus.com; Wed, 04 Nov 2020 23:25:52 -0500
Received: by mail-vs1-f42.google.com with SMTP id h5so62304vsp.3
 for <usrp-users@lists.ettus.com>; Wed, 04 Nov 2020 20:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=tsKjv1yCBijHToJTKojjGkLksrOgUAM7++mXuaI3oyc=;
 b=aEngaji7MLYJwjFPb59DGWMuXw64KL3TeR7SRohIlDo05EUmheCVkn92tL2UJX9gfA
 V9VFk7nktb3h4OGU21B4dFtBtNgJMQHy80FJCSl5wl3uodiET3Ur91RkIxSIpukgYMGI
 Pt9KpPydDncbBbEtFPEynXkV8osKVQIoE6ZLoBwa4rKpblbrQVbMXTIpYGO5iOb5Q4Ui
 7rGY418TtjDAIYeSeyNomI2+uQyCstcM3PuoSZcqe7nSkfp2I9o7k4EpIN1ZKRlHnCng
 WEk6uTeIKCHoK321Wb88RTMFCFbCC32RYJ7cUtGzC5J7C/Y7WITcpUrE8Bp3xx79WNce
 5bCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tsKjv1yCBijHToJTKojjGkLksrOgUAM7++mXuaI3oyc=;
 b=aTvAuFxnpqcdM2IkV2Zmf16/EPhXw1QTnrrJjCzLra6wV4yh3Q9Mi7QhAMWZV0gVCM
 fbA+8ejOzT9wyZCTZAJg/uMHNyBUsBWwqKExkR2GzjTg/3dPFmz6wxnpp65549TPfj6+
 AaEKEPl/KKH69JCjdQ0qkWF491SgxllfhQjelxt0iIkNyeoimljryrdnBznEQioNeuZG
 ykXYdKOhtJxRgSfTkAeBllytI9aRAOiV3lNv4Jgk1suC2WPN7nt1Pt/LkjwSAq7kjLOF
 KspP61BgL0iy5924loc5ENhnmkX6DJR0pzgjVBlRzUec/hCMAXVv/sa+MMyKNkDdJO8s
 bksA==
X-Gm-Message-State: AOAM530zLH+zwIBtdpGVb03+qjREIjJpgtHoCuaabnhJKizgrG+jpBh1
 YVifftMnj2W6H5hEvcs0LyHlTNOFh6+tB+44rheyAYjfVV6Cyw==
X-Google-Smtp-Source: ABdhPJysbak9+PoHVpfYva2P6omic/V9XQh9GKGPdkwqrQMRfhlxrxalIn8azCLVuG8ZJwXaUB1Tfly8pJcNILibUJo=
X-Received: by 2002:a67:ee93:: with SMTP id n19mr243237vsp.36.1604550311161;
 Wed, 04 Nov 2020 20:25:11 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 4 Nov 2020 23:24:59 -0500
Message-ID: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] meta-ettus-v4.0.0.0 segfault
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
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Content-Type: multipart/mixed; boundary="===============1604322086205541250=="
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

--===============1604322086205541250==
Content-Type: multipart/alternative; boundary="00000000000052347905b3547b92"

--00000000000052347905b3547b92
Content-Type: text/plain; charset="UTF-8"

Is anyone else using meta-ettus-v4.0.0.0 yet?  if so, have you had any
issues with libfftw?

Using the image on an E310, adding a single OOT module (gr-ais) and trying
to run an app distributed with it, the app segfaults.  To further
troubleshoot, I added gdb and it comes back with the following.  I have a
separate development host that has gnuradio 3.8 setup using pybombs and do
not experience this issue there.

Thread 1 "python3" received signal SIGSEGV, Segmentation fault.
0xb6947836 in ?? () from /usr/lib/libfftw3f.so.3

To compile, I've needed to override PYTHON_EXECUTABLE as it points to a
non-existent path in /home/oe-builder.... in
/usr/lib/cmake/gnuradio/GnuradioConfig.cmake.  To run I also needed to
define LD_EXPORT_PATH pointing to /usr/local/lib/.

Thanks in advance.

--00000000000052347905b3547b92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is anyone else using meta-ettus-v4.0.0.0 yet?=C2=A0 i=
f so, have you had any issues with libfftw?<br></div><div><br></div><div>Us=
ing the image on an E310, adding a single OOT module (gr-ais) and trying to=
 run an app distributed with it, the app segfaults.=C2=A0 To further troubl=
eshoot, I added gdb and it comes back with the following.=C2=A0 I have a se=
parate development host that has gnuradio 3.8 setup using pybombs and do no=
t experience this issue there.<br></div><div><br></div><div>Thread 1 &quot;=
python3&quot; received signal SIGSEGV, Segmentation fault.<br>0xb6947836 in=
 ?? () from /usr/lib/libfftw3f.so.3</div><div><br></div><div>To compile, I&=
#39;ve needed to override PYTHON_EXECUTABLE as it points to a non-existent =
path in /home/oe-builder.... in /usr/lib/cmake/gnuradio/GnuradioConfig.cmak=
e.=C2=A0 To run I also needed to define LD_EXPORT_PATH pointing to /usr/loc=
al/lib/.</div><div><br></div><div>Thanks in advance.<br></div></div>

--00000000000052347905b3547b92--


--===============1604322086205541250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1604322086205541250==--

