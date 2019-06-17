Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F653491B9
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 22:53:51 +0200 (CEST)
Received: from [::1] (port=49104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcydS-0001up-3u; Mon, 17 Jun 2019 16:53:50 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:42700)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dbc23910@gmail.com>) id 1hcydO-0001n6-F1
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 16:53:46 -0400
Received: by mail-io1-f53.google.com with SMTP id u19so24406455ior.9
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 13:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cg1++0f9T/G0EP7Ux6j0o+DvIAD41oWbesiyhSSgiRI=;
 b=bRXi/b/OzmKNZLZWZ0Ozlu9ORbj0tNIKt6i3SJm8DJ7RCTplrGfDqzyyXUdJ/09bwB
 LzF3VT/Fr9f/PTrMBLUoFoTpJTWHH5j06/CRxTqfcFCdNes70DtPBXc0+K9zznfuJ18e
 Xm8T3MeexRVEua+toN9Dngt2AqIQVb7893v5/WWCM12F8HSdaG71XCKPaTCavcC1yS7a
 cPy1gF9m2QqgDTpZjo2VUBlO2AJPU0XT6dTaeatqoxwqEYb0umWjmHuQI4t6Mf6p0aSh
 gzrSvsNBjS9O++TnXUOtPpv4YvUM49sg/v974MlKwAdf6hMpkvH7G8Rrpi82QS633OC7
 d+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cg1++0f9T/G0EP7Ux6j0o+DvIAD41oWbesiyhSSgiRI=;
 b=c3x/9ldAHG9n8R1M5/ko50yBxQwEheB99+I2YgVzEbpPRhwM+XboLsbtdoaw8FUVaQ
 PdDyzAciMmxVeY3zcmG3YrXN2sG8P1rz1tKtRSv5lGazQBwA0G8AyFMUAsPgRipkQq5O
 MUf2GN6Nk6okCuM08lxiz0xigIe3yhq/bGqGG89aEVJCByh12NPsyuUdKy+AihEKrX6A
 5rnvoUCJFcPs4HroJzDqr7LCm9thpprUp0cjojPy8niozpasGg3VbwskLlCj8q2fBsJc
 JMG//KN//cC27INbH0CVtvHE7V1O5yZ30p33K7UaXxuuih0UxByfuu1anv3lGlDnWojx
 OMEQ==
X-Gm-Message-State: APjAAAUjZRw7a7y2u0874iYKDpkauVGOUfcH/bWmWd2HdWG4jLOED4OA
 WxolhHz5FxpDEIHBQBiOW4WpJ7wegS9NWWB5kTQIScxO
X-Google-Smtp-Source: APXvYqzvB1zxhK7+v+Eg0fVAHkee6HqLFFmx2OWSShQfCY4W+nLlzIKDFR0YoL0lO3rU3C3e9dWBH0US57JIOTj0Jfk=
X-Received: by 2002:a5e:c70c:: with SMTP id f12mr979576iop.293.1560804785605; 
 Mon, 17 Jun 2019 13:53:05 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 17 Jun 2019 14:52:54 -0600
Message-ID: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] E310 Startup/Boot not working
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Donnie C via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Donnie C <dbc23910@gmail.com>
Content-Type: multipart/mixed; boundary="===============0474276842154390695=="
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

--===============0474276842154390695==
Content-Type: multipart/alternative; boundary="000000000000cf54b0058b8b2ed5"

--000000000000cf54b0058b8b2ed5
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm currently trying to get the E310 to boot with the most recent image
release (
http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-demo.direct.xz
) which I burned onto an microSD card using bitmap, but I cannot serial
connect into it and the device has all the antennae LEDs on. I cannot find
what the LEDs mean or why the E310 wont boot

--000000000000cf54b0058b8b2ed5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m currently trying to get =
the E310 to boot with the most recent image release ( <a href=3D"http://fil=
es.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-dem=
o.direct.xz">http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-s=
g1/sdimage-gnuradio-demo.direct.xz</a> ) which I burned onto an microSD car=
d using bitmap, but I cannot serial connect into it and the device has all =
the antennae LEDs on. I cannot find what the LEDs mean or why the E310 wont=
 boot</div></div>

--000000000000cf54b0058b8b2ed5--


--===============0474276842154390695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0474276842154390695==--

