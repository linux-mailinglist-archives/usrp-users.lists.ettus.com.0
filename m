Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B886F2E8FCB
	for <lists+usrp-users@lfdr.de>; Mon,  4 Jan 2021 05:24:45 +0100 (CET)
Received: from [::1] (port=34352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwHQ9-0004gl-Cl; Sun, 03 Jan 2021 23:24:41 -0500
Received: from mail-pj1-f46.google.com ([209.85.216.46]:38666)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tuanmcx58@gmail.com>) id 1kwHQ5-0004br-8Z
 for usrp-users@lists.ettus.com; Sun, 03 Jan 2021 23:24:37 -0500
Received: by mail-pj1-f46.google.com with SMTP id j13so10006042pjz.3
 for <usrp-users@lists.ettus.com>; Sun, 03 Jan 2021 20:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=A/hTG3lwoW0Uv5nXIR6yq6hQdtEnnQOI81fQi9AKkXc=;
 b=dmWu2MEUIg1/jZcW7i5gde1qQorISA7MxkQYK8oir0d46HhNM+xAXQwbtE/sVGHVuc
 BQVYSLz4QtRCvcBbWH3XQc2OLfI+Md1HqK+6Wm35StAuwV2tgDwdtAo8dRvnS6a1Y+t8
 ngMbGYrDoXlz5lbIhSe5L8qS/70j2cIcquEaQoJF8moWox+1pGi8IBvU+xXzaJ9mQVRs
 Vf2naIlZiz7Weavd/lSqLinPzvAlZb1jGgQKrjkLUMUXsGJTQLh10Vx7orZzhLjZE2GP
 BUwAc+p1htikndR71ulP2fHbDE5DnMzfp9sxPdflc3+/c12EtA9FA+Bye/Gzzm9E586O
 Rf+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=A/hTG3lwoW0Uv5nXIR6yq6hQdtEnnQOI81fQi9AKkXc=;
 b=mM/H7C6ucExpxuPibRfTL6w7hxnq+666stVCLyc9DzN+sTXmy6eXKmsZR9IwuHiPDc
 KKR0IQVtavH6abqlCqjPtrtKLAWjsssFzXFfujF9LmpBIRkY3IarAwdAPY4yoRxLgbp1
 yugizBaRPH4X8CS9SYwMIOk5FIjZCYjNMKGnuqs3+sNBL+x4ADJBYiT30ZIuEs7PQuKI
 JBU5767UEUlj9j0+4gdnthVAx/UfZDWXAPpskIidNEIkPRiOxm8KX7hDQEOFxnpn5dq4
 5fPBahYYGiRdHbZ3DoBIARrdqcmYkW6G+PCZfadGAvozWcF7BhxTVoEQWgrdIyKasOvM
 CrgQ==
X-Gm-Message-State: AOAM533G/LTaG9JT+4P28yZGrUsqzFAGqhmIuOn5xR/finXJ7a028wnj
 NmQV8dFe8MApWVwc30wtFoJ2lHiEYZ07G6XsnYoAMwt4j64rppqg
X-Google-Smtp-Source: ABdhPJx2h8LXohFdbEb8XU7y6jAqCY7nbqBNbUg6O21XNn4Qbb8Fujv36Wl/KdqPL3M4NYBWmbJ8JSRlhQgGjOG3ydo=
X-Received: by 2002:a17:902:7d8e:b029:da:cfcb:f4c4 with SMTP id
 a14-20020a1709027d8eb02900dacfcbf4c4mr69599161plm.79.1609734235937; Sun, 03
 Jan 2021 20:23:55 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 4 Jan 2021 13:23:43 +0900
Message-ID: <CAJZBg9WtrW=1Th-VfOWZs5r3p++2zGtZioCfuNzz7_v89f_Edw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3607508636946547491=="
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

--===============3607508636946547491==
Content-Type: multipart/alternative; boundary="00000000000050e06405b80b75b6"

--00000000000050e06405b80b75b6
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
So how I can build the blocks in the lib directory with full registers and
parameters?
I can not find any guiding document about that thing, hope that it will be
supported in the near future.

Thank you!
Tuan

--00000000000050e06405b80b75b6
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
ory with full registers and parameters?</div><div>I can not find any guidin=
g document about that thing, hope that it will be supported in the near fut=
ure.</div><div><br></div><div>Thank you!</div><div>Tuan</div></div>

--00000000000050e06405b80b75b6--


--===============3607508636946547491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3607508636946547491==--

