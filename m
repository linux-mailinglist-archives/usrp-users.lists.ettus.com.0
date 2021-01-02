Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB032E8802
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jan 2021 17:08:19 +0100 (CET)
Received: from [::1] (port=48968 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kvjRu-0000kS-NE; Sat, 02 Jan 2021 11:08:14 -0500
Received: from mail-pj1-f51.google.com ([209.85.216.51]:34921)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tuanmcx58@gmail.com>) id 1kvjRr-0000ft-78
 for usrp-users@lists.ettus.com; Sat, 02 Jan 2021 11:08:11 -0500
Received: by mail-pj1-f51.google.com with SMTP id b5so7839204pjl.0
 for <usrp-users@lists.ettus.com>; Sat, 02 Jan 2021 08:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=2ib7iJZY2ZbQZw/mD4yjx7Zna7ybzsHtoCmkEB/C4GE=;
 b=rPQ8g9/MoFhhRUh0OccmHHemo6FGVI2nNk9bPL8OIcePQnr3qPekQfmIrCpLurRhVb
 6Xx1XmXcLaMM0pU94LTzEkR+0w0+Zm7fC82e85KyU5FQxkd6bHGfTtl+3d51bF4KhUVR
 1cUNYCmSEczZjTRwDQ4EmovvJR6CDfYIYEWY/KivzCy58Ai45O5ZPn84UrgmXM/x0F9N
 W49rg4qlTalwXT73hUYwgzOx2iQ9s6sMzJGBreSDIbNFtScuVfuSyy+GffLAILkEcINY
 Gf5H4zBxO4hmnwUPURSxbFzx0HoX3oJxJCA7+xBE5UaKiq7fJzHLPybsC0CMuvXxfwJD
 CVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2ib7iJZY2ZbQZw/mD4yjx7Zna7ybzsHtoCmkEB/C4GE=;
 b=V4J6emUnWPz0RsDtjjtHjb3FZrg7GiKlFhR+4uYIgBW8IlmXddt8qLTm8BYob/t0vi
 cVkjI35RlMMZg8klmz2JVfSC70Mf+4PMcGVbk+VSvPv3MRHdueSXBJWwNTtB9T7fk47U
 hqh0a9k/L41scBLZx2yzPjYFg/pZT3c6FI70tIgQMqFTr7jcwrmcudpSAV8MEDqY88Fe
 H4a12uAQ3G0uO7b+99WbWTw8DzEHtv+VqpW4Ani7u0CpYXVpFXmPrmit41FJIUde4HIS
 moP9XY2SMKDA99G2UCNxvkRIDbnEKdsKtcO458j13GnM1Z9HcoxfYkkNHSsKweOLBr59
 YkFQ==
X-Gm-Message-State: AOAM531ke3lf5y4IGiJvOmK1KRlL0kaNxfjQ+zCztxDbi91AnWb80XeN
 5RoLcn+wMEuK3ol/T9ECfiHyRorr0giXLtepgKTPdc20LSK2Rg==
X-Google-Smtp-Source: ABdhPJwRWZjMrUQy3Z/VQW9WBw7ajtUpoR5MmFExYLK+/3w/wPkt63mxcQAkjR51NpQ1//ZR0MaJQZtuM35ZDd+BKNc=
X-Received: by 2002:a17:902:7617:b029:dc:4825:e5f7 with SMTP id
 k23-20020a1709027617b02900dc4825e5f7mr45382784pll.11.1609603649895; Sat, 02
 Jan 2021 08:07:29 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 3 Jan 2021 01:07:18 +0900
Message-ID: <CAJZBg9V6tMcxQgt59pjDgvRBromYXOY_Z063_MX9SdHQbHek9A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] How to build RFNoC blocks in /lib/rfnoc/blocks
 directory?
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
From: =?utf-8?b?xJDDrG5oIFR14bqlbiBIb8OgbmcgdmlhIFVTUlAtdXNlcnM=?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?xJDDrG5oIFR14bqlbiBIb8Ogbmc=?= <tuanmcx58@gmail.com>
Content-Type: multipart/mixed; boundary="===============6354055649172640798=="
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

--===============6354055649172640798==
Content-Type: multipart/alternative; boundary="000000000000c8014b05b7ed0db7"

--000000000000c8014b05b7ed0db7
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm learning RFNoC with UHD 4.0 and GRC 3.8. I have a question about how to
build RFNoC blocks in /lib/rfnoc/blocks directory?

For example, with window block, by doing the following steps:
+ Using rfnocmodtool to create test module with window block.
+ Copy yml file and fpga files from window lib directory to test directory.
+ Run cmake, testbench, make install command.

although the window block has been built successfully, its GRC block
appeared with only one user_register like gain example block.
The gr_ettus has been installed but no GRC block for window block or some
others.
So how I can build the blocks in the lib directory with full register and
parameters?
I can not find any guiding document about that thing, hope that it will be
supported in the near future.

Thank you!
Tuan

--000000000000c8014b05b7ed0db7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;m learning RFNoC wit=
h UHD 4.0 and GRC 3.8. I have a question about how to build RFNoC blocks in=
=C2=A0/lib/rfnoc/blocks directory?=C2=A0</div><div><br></div><div>For=C2=A0=
example, with window block, by doing the following steps:</div><div>+ Using=
 rfnocmodtool to create test module with window block.<br></div><div>+ Copy=
 yml file and fpga files from window lib directory to test directory.<br></=
div><div>+ Run cmake, testbench, make install command.<br></div><div><br></=
div><div>although the window block has been built successfully, its GRC blo=
ck appeared with only one user_register like gain example block.=C2=A0</div=
><div>The gr_ettus has been installed but no GRC block for window block or =
some others.</div><div>So how I can build=C2=A0the blocks in the lib direct=
ory with full register and parameters?</div><div>I can not find any guiding=
 document about that thing, hope that it will be supported in the near futu=
re.</div><div><br></div><div>Thank you!</div><div>Tuan</div></div>

--000000000000c8014b05b7ed0db7--


--===============6354055649172640798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6354055649172640798==--

