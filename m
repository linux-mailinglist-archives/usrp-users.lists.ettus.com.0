Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E507572E7B
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 14:11:04 +0200 (CEST)
Received: from [::1] (port=50224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqG6n-0003iF-Aj; Wed, 24 Jul 2019 08:11:01 -0400
Received: from mail-ed1-f50.google.com ([209.85.208.50]:37077)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bertolini.rodolphe@gmail.com>)
 id 1hqG6j-0003dI-KZ
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 08:10:57 -0400
Received: by mail-ed1-f50.google.com with SMTP id w13so46941252eds.4
 for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2019 05:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=XTZsBSaDsxx9nPzG/v2DZvKNM28nnFWP8MsEjVxZfDQ=;
 b=Lh7j/AKe7TXF1Ani8opw0h9RXqd5PVsL5mlD7cf5TtS0q2Hi341PQvrSPBfgFm85Xl
 P+5u157/DVt6bH3nSwLw3tymh/J55DAkf0D+//2b77NxuOEgVcrvYr2e5acbS9dtdT4s
 SymKI3u4oBx2w2Q/kl68XlZK3Q3RjvZ7tuDnh1uSvLiM9BB0xhJjFifsShC89ri63gi6
 2lm1j+1f1BVAqNnBE17kZT99XBsuDHqIisbCHZdL7bPLskB017eU8+2NAbOouvTfo0oo
 Gb808Wfgi9GVWz8mtgTs09rF/V9v6IyWif0IuKjt8Mnc1MmAxZsdGRzGGmjLJezpL0QE
 WGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=XTZsBSaDsxx9nPzG/v2DZvKNM28nnFWP8MsEjVxZfDQ=;
 b=te5/vkU9vk3bB5d7W7VqY/bccAbt9OVEdQs5QbFCGJCsTfUUcHITqxQtE9rnWZg65N
 H0gYRw7XNB/EUxS585erKDBDNOyAkOucAUsD6PkrbZOFiyX/dEtkb9NM8hhLCLpi3Orf
 7dIV1zdKTiC3Jp+dyRAMrxij9GIzMfG2D9fi64HQuhQfGQFZZpiU48U5tD/Vf2Qhkbb+
 JI4d1gz9NxE18ttEll9LTvAAMDdwekj/0gBHrhwyX+C2YMsQeJi4uJQc6+fojc4v0vi2
 vGL0CP2vsSEkHSKC/zRxy/1cjH03k74BjTE+n8Y6HLaJHMK4OSOSmLGa0wMrl/s4+IX0
 bHnw==
X-Gm-Message-State: APjAAAWcwJ6r83JPmUbnlkfCzoGlVFutfqp7BBMW3pGZbRipFqyEk7fU
 A+1nEfoZn14xAaMAyV09q+EqjGMPr02UTxU/aokvwnql
X-Google-Smtp-Source: APXvYqwOkgFR4vaFDI94o8FSUR42SGW9gckUi5v4SJc8qcG6s54k8Ejl4SPQ118GoB1mYJNI5M3ZxQLSho+l7U1KqGQ=
X-Received: by 2002:a17:906:b211:: with SMTP id
 p17mr62143904ejz.11.1563970216311; 
 Wed, 24 Jul 2019 05:10:16 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 24 Jul 2019 14:10:42 +0200
Message-ID: <CAKaLowRdx_s9nF2bg+s4=iTmfREBvKfwUV0pD3mqF-Y219r0=w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD not showing USB version through which my X310 is
 connected
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
From: Rodolphe Bertolini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>
Content-Type: multipart/mixed; boundary="===============3644799880723979892=="
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

--===============3644799880723979892==
Content-Type: multipart/alternative; boundary="0000000000002ebe50058e6c31e2"

--0000000000002ebe50058e6c31e2
Content-Type: text/plain; charset="UTF-8"

I apologize if this is a duplicated email.

Hello community,

uhd_usrp_probe (and all the others commands) doesn't log the USB version to
which the USRP is operating.

Instead it gives me the following:

$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.14.1.0-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
[...]

Any thought?

Thank you very much.
Best regards,
Rodolphe Bertolini

--0000000000002ebe50058e6c31e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I apologize if this is a duplicated email=
.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Hello community,<div><br=
></div><div>uhd_usrp_probe (and all the others commands) doesn&#39;t log th=
e USB version to which the USRP is operating.</div><div><br></div><div>Inst=
ead it gives me the following:</div><div><pre style=3D"white-space:pre-wrap=
">$ uhd_usrp_probe=20
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.=
1.0-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
[...]</pre></div><div>Any thought?</div><div><br></div><div>Thank you very =
much.</div><div>Best regards,</div><div>Rodolphe Bertolini</div></div></div=
>

--0000000000002ebe50058e6c31e2--


--===============3644799880723979892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3644799880723979892==--

