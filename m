Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3AA58C0
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2019 16:05:27 +0200 (CEST)
Received: from [::1] (port=38174 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i4mxM-0007Vk-RC; Mon, 02 Sep 2019 10:05:20 -0400
Received: from mail-lf1-f54.google.com ([209.85.167.54]:39020)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <shachar.brown@gmail.com>)
 id 1i4mxI-0007PS-6y
 for usrp-users@lists.ettus.com; Mon, 02 Sep 2019 10:05:16 -0400
Received: by mail-lf1-f54.google.com with SMTP id l11so10505013lfk.6
 for <usrp-users@lists.ettus.com>; Mon, 02 Sep 2019 07:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=H8TEPCW+bKQ8hCzaxtSWj7UiFfbwVZewWJMajrludhM=;
 b=tuNo9nWNAmwXmpM48M4Bd7eoTQxHC8MLQcGRSg3Mx+nVYE/ldWpvOx44rVmTz8BYFY
 zuQKZNYjdAT3cN44MrXYf0Ig2U2SraIwE/HZtZTNElsZ3XRJm0flQ20/9//WvoOX++d8
 iB0yIFDJrW3La1mdAru9M3vz67pDlwE/nFRuwSufclZ2WF1QvK+n46KVztPhHDvU/lD7
 UJuPBIB05E2tRqJlewUPJmWb254HguVqRwB+d8ZM/sJuTbNAxivlQw9Li9F9w6y6mjWP
 RPgP34XK35LOyXzfqjGamOQyinCxhgq+XHkjyf49MK0cVzYYZxztS+oDdGK/gfnmE+Eo
 vmqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=H8TEPCW+bKQ8hCzaxtSWj7UiFfbwVZewWJMajrludhM=;
 b=gk3RK+1V8AMdjBZgYETgPBT00hIzwqaYMWxQsqe0FNPKdmlaC2IQr1BXWPhGzaZTEr
 3gWT49hY77ATrHfrlwJ9NSAGpBCuswkDHJ7fGFC1K0G0ZK0htzaYe3p8eoGEk1x2VtHQ
 ipvTi3Ka4vQp0GKuUm+LLhGnBvjnFt2XaHXClnv3nfSUwARiq3OrLf3N2EsNW7jI7iUe
 ss8c8REzcPZu5ROCe5eUQ9oM0V64iqNtGA1Jbp1x2gCxi+YftkYVuqKcnAeTJisi/X5b
 rWXaj5VipV3SWurELhMg7GUCWVNhKTsNf0FILsZcbSwE+zWdU4bEO88r0/k2KWtHd1+e
 FaNg==
X-Gm-Message-State: APjAAAWQPsD1AJoI8ynzuchK6N0cB2HSz3HRgGYjYfp0xmM3hZ4g7+b8
 WyoX3huv1bVfr4C6gsdlaf7IFNu5FRMmywQYMx/h
X-Google-Smtp-Source: APXvYqxFIf/XW3Mzv3i2C1SDk7mjIwyS/lZnEqoO8hnxBPhciTec/Lh/CcpFXOjB26iT2/8LNcwdgfWN0yCwmNSmJCA=
X-Received: by 2002:ac2:554c:: with SMTP id l12mr4571869lfk.10.1567433074577; 
 Mon, 02 Sep 2019 07:04:34 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 2 Sep 2019 17:04:23 +0300
Message-ID: <CAMHwfuiwk2DfqSEt1SJkxhriZraRML9XWYFYDzZHxEOW3MJpVA@mail.gmail.com>
To: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>, 
 "shachar J. brown" <shachar.brown@gmail.com>
Subject: [USRP-users] Vivado Version Compatiability, X310
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
From: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "shachar J. brown" <shachar.brown@gmail.com>
Content-Type: multipart/mixed; boundary="===============6319832404489351567=="
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

--===============6319832404489351567==
Content-Type: multipart/alternative; boundary="0000000000009e96bc0591927321"

--0000000000009e96bc0591927321
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have been working for a long while with rfnoc on an X310.

I have lately upgraded the rfnoc, and now when I try to run
uhd_image_builder.py I receive an error indicating I need Vivado 2018.12,
while my licence is for 2018.3. Upgrading the Vivado is currently not
available.

1. Is there any workaround for using the updated rfnoc version alongside
Vivado 2018.3 or older?
2. If the first suggestion is not an option, is there any way to downgrade
the rfnoc to a version that is compatiable with Vivado 2018.3 or older?

Thanks in advance!
Steve

--0000000000009e96bc0591927321
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I have been working for a long =
while with rfnoc on an X310.=C2=A0</div><div><br></div><div>I have lately u=
pgraded the rfnoc, and now when I try to run uhd_image_builder.py I receive=
 an error indicating I need Vivado 2018.12, while my licence is for 2018.3.=
 Upgrading the Vivado is currently not available.</div><div><br></div><div>=
1. Is there any workaround for using the updated rfnoc version alongside Vi=
vado 2018.3 or older?</div><div>2. If the first suggestion is not an option=
, is there any way to downgrade the rfnoc to a version that is compatiable =
with Vivado 2018.3 or older?</div><div><br></div><div>Thanks in advance!</d=
iv><div>Steve</div><div><br></div></div>

--0000000000009e96bc0591927321--


--===============6319832404489351567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6319832404489351567==--

