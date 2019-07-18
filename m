Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 523726D0E9
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 17:18:33 +0200 (CEST)
Received: from [::1] (port=48114 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ho8Ar-0002iB-JL; Thu, 18 Jul 2019 11:18:25 -0400
Received: from mail-ua1-f46.google.com ([209.85.222.46]:37751)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sammywelschen@gmail.com>)
 id 1ho8Ao-0002cR-2n
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 11:18:22 -0400
Received: by mail-ua1-f46.google.com with SMTP id z13so11295294uaa.4
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 08:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=h6rlYpYUyFPk1AUmpTiarTfnzcXbEfrae4JpXggXjAM=;
 b=d/iwVW4Jl53lnDoVG4Q7sMRQNdfm3pHx5n0LGvzxraSORZt1sORTbWtZuHbIs1MbWi
 nvEoDK9bK1zqFByd6bfCeYMCYNZFj+PvsaXiYi+b4Pd63HB7zauF3oIL25AvbVpsBWf4
 aD/A8y9n5OdF6B4rGjuGfeBxnDXUjGfYcCiMxW1J4mTGr1LY32+PNWcuCIIMyknzripV
 bkA2OKNu/c58RkHWUbTy/3iTH9f0vOOGu/udybUMpvHQ0cBGU+ubyvb+1N6MfCRDouvR
 ANXzLkyoQ4FUBicHr9j6vlVm3xqG6O3yP4gt39mkC3Jrw7gMVJ6wxYyDswKa7qM8tVIQ
 qNxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=h6rlYpYUyFPk1AUmpTiarTfnzcXbEfrae4JpXggXjAM=;
 b=jXD0gcZ/GYB3saaVAQIO91xk11AjHw2SLW424yL5DR/odaaZ/z1amspyloJM7knSAk
 LHEg1oNP0CeRIYtHqY64/9cpZygnAcgoOnig+ad5sgTCsruI9ZHpR11Tnn6Z9KF1AU9I
 ouoCjK+1k+4LiMLW83NGSW8pex5zLT4Hvjb/Jzz7MN7CVRNfc6dAt0FrVxZCKV6G16tp
 uOSSdkZgw1zRFRx7rUzFWn3E9IoMIMhQ59s3PhM/sDmQLbGRPoNc2Xq7dP8Iz/eHpYvM
 tHMGcv5Q8bLDtcaemcFAHsV8UwiPXvPXOYnzCeCstoTwf8fWV3SL11OfOWl3lJ1JLXq8
 fl2w==
X-Gm-Message-State: APjAAAW+RhLX0FxxJzV2FETUwV8BiEG+HAM0Mj5+yeqFfMy4nEopN1ng
 4ki3fHGQFnI/GSqR8uV6x9NHSJcauCk6e3k+5WrQ6rov
X-Google-Smtp-Source: APXvYqzQPfVZWMAGrcyGgP1BbNl4NnV5zridytHzH2Ne7UI2hair6LcYOTWrQerhgAYLkrpAny7lPiICrVTyYq0z1Rc=
X-Received: by 2002:a9f:248b:: with SMTP id 11mr29615654uar.9.1563463061233;
 Thu, 18 Jul 2019 08:17:41 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 18 Jul 2019 17:17:30 +0200
Message-ID: <CAE6G029K0GMuCpkX5zs2g_mhYfbZgGDr7VYsyU92QBhTyAbT8w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Phase coherency for low RX frequencies
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
From: Sammy Welschen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sammy Welschen <sammywelschen@gmail.com>
Content-Type: multipart/mixed; boundary="===============1911600923973208655=="
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

--===============1911600923973208655==
Content-Type: multipart/alternative; boundary="0000000000006264e1058df61c07"

--0000000000006264e1058df61c07
Content-Type: text/plain; charset="UTF-8"

I have to acquire phase coherent data on multiple channels using USRP
N310/320 devices.

Am I correct in assuming that for frequencies below 450 MHz, there is no
way to remove random phase differences between channels due to the
additional frequency shift involved (shown for example in the block
diagram
http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png)? As I
understand it, by using the same LO signal for all channels I could remove
the differences for frequencies above 450 MHz, but this is of no use for
frequencies below 450 MHz due to this the additional stage.

--0000000000006264e1058df61c07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have to acquire phase coherent data on multiple cha=
nnels using USRP N310/320 devices.</div><div><br></div>Am I correct in assu=
ming that for frequencies below 450 MHz, there is no way to remove random p=
hase differences between channels due to the additional frequency shift inv=
olved (shown for example in the block diagram=C2=A0

<a href=3D"http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram=
.png">http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png<=
/a>)? As I understand it, by using the same LO signal for all channels I co=
uld remove the differences for frequencies above 450 MHz, but this is of no=
 use for frequencies below 450 MHz due to this the additional stage.</div>

--0000000000006264e1058df61c07--


--===============1911600923973208655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1911600923973208655==--

