Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA39B1E0145
	for <lists+usrp-users@lfdr.de>; Sun, 24 May 2020 19:52:08 +0200 (CEST)
Received: from [::1] (port=33482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jcun7-0005wF-BP; Sun, 24 May 2020 13:52:05 -0400
Received: from mail-vs1-f51.google.com ([209.85.217.51]:44213)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ljxangus@gmail.com>) id 1jcun3-0005sd-6W
 for USRP-users@lists.ettus.com; Sun, 24 May 2020 13:52:01 -0400
Received: by mail-vs1-f51.google.com with SMTP id w65so8844969vsw.11
 for <USRP-users@lists.ettus.com>; Sun, 24 May 2020 10:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Qn8aRy+kK4H7F2mLk4b8d82caQI4uqYuLvlX0UGVu3k=;
 b=jtg5zYuFizSsc72ynLINGBCcO9pFFlYiW6Oq9JeNS1TtlWbMXaeA5ji9M7tDV5ntwV
 gGv34Kb7O6o0bIlvO+GepdtrkwUNpi206SHn3QPnGATXh+Sb0JQfLGb+jdrcDKgJcP2Q
 4l/aXG5rlUTnNQLhp6d+yC6QUnZ2DPLPQYBo/pPgpr9OPHV+5keiEGEr9qYM9pAcUHQu
 q+HhwgXwONBgOTO1KcWEXHu/znGzVT+qN0mhO80f4HK3viXK7vllvZ78iutN7xZ4R+MO
 U4ONnLYwvnodlvUpZkVSgy6Rt/7sjeDlNMmDktPAVu7yhqPzjOe4dYMiiRDOMaPOEQht
 k/Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Qn8aRy+kK4H7F2mLk4b8d82caQI4uqYuLvlX0UGVu3k=;
 b=rlC3gAfxfkXdFBHm1RB5tuNBe3k8gFHpV6tybsQx+/3YkpsdRcW/gG95c2XIHeBoer
 KJGvGaDUCiPNyVEzgjY28rXArWHq7GeBFodID7mfb1AZHovIsqnyQ/emONWrJGlEidPi
 zxb9Pkb3lYlV3uOaVKIiZ7+PrR0T0LN0ToSI55yZQ9Se3BR6hJphFhOzcYjTHOFQrxuZ
 +avfdGYppca/I1+NzKrJJNP4hiv5QVrqvrFZceyeYcMUzrccxLMWmfJdgY5QuUDoANSf
 YQ9aTDFm0Ysyug/OvrZ86e+vTWgQSum3iEA4i2zwNsL3lUz+GN77wIUjkIyEEaegIVYv
 ZXVA==
X-Gm-Message-State: AOAM531xv8PjCr2d7DW8WUm2Y2KvNzcVro6i5K56v1Ndo+zr8HVV3ibf
 FZspAYUSpA4fVRwK+XfJpDmW1/oGgP1ucGi3lqPmGWEo
X-Google-Smtp-Source: ABdhPJy1RRKJNpOP/VIQA/pX0APRpBTZZDzmBvg+jGRwRVIz71pmcJL4xsN5BPpfly8g0afGVyipgFz81ITZaudM3So=
X-Received: by 2002:a67:8eca:: with SMTP id q193mr16969254vsd.28.1590342680127; 
 Sun, 24 May 2020 10:51:20 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 25 May 2020 01:50:50 +0800
Message-ID: <CAMEXhvdDFbmOZWeNh8+FJEAX2eyTvSo9ynZL--yRP0JBoSqFpQ@mail.gmail.com>
To: USRP-users@lists.ettus.com
Subject: [USRP-users] Latency when accessing the property tree in USRP X310
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
From: Jiaxin Liang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jiaxin Liang <ljxangus@gmail.com>
Content-Type: multipart/mixed; boundary="===============8434105827858476725=="
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

--===============8434105827858476725==
Content-Type: multipart/alternative; boundary="000000000000852cc805a6688259"

--000000000000852cc805a6688259
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using an X310 connecting to a host PC with a 10Gbps Ethernet cable. I
would like to know the delay when I call functions like *get_time_now()* or
*get_bandwidth()* provided by UHD.

I have checked the source code in UHD. It seems that these functions will
finally get the value from a pointer pointing to the property_tree. But I
would like to know whether the functions actually send request packets to
the USRP hardware (i.e. FPGA) through the Ethernet cable or not because
that will affect the delay I would like to measure.

Best regards,
Jiaxin

--000000000000852cc805a6688259
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am using an X310 connecting t=
o a host PC with a 10Gbps Ethernet cable. I would like to know the delay wh=
en I call functions=C2=A0like <i>get_time_now()</i> or <i>get_bandwidth()</=
i>=C2=A0provided by UHD.</div><div><br></div><div>I have checked the source=
 code in UHD. It seems that these functions will finally get the value from=
 a pointer pointing to the property_tree. But I would like to know whether =
the functions actually send request packets to the USRP hardware (i.e. FPGA=
) through the Ethernet cable or not because that will affect the delay I wo=
uld like to measure.</div><div><br></div><div>Best regards,</div><div>Jiaxi=
n</div></div>

--000000000000852cc805a6688259--


--===============8434105827858476725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8434105827858476725==--

