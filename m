Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BB66366C1
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 18:16:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 134BF384296
	for <lists+usrp-users@lfdr.de>; Wed, 23 Nov 2022 12:16:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669223779; bh=9wFujL/l4Ywz+JvgEvG/mbQPNGNyC3Vx3hkFuJHWV4g=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JqyPRNS/vV3zzyba4cyY7iPAfM3wUho2xJnL1MGECh8kVtwulFlQAz06p3aA/iJkg
	 YT2P0Yqbp8/9Z+XIsWhU/mpQid5hUBSUITmDfcchcOjc1RhZIE8N6unK/k0FdVJhC+
	 e4GaceC1ozoXPp6OGzoWpfiAh4qYhnhnKg+3hfIBM6fivl7rv53ECEstEcEzLcwKVQ
	 q5G6HabTMbPCr1JHDduYuLEptQl7cJL0xwsQ40WAi19DaWb3+TGvQvwK+tsNY5QwVz
	 nRSXS4nvpeuhoGIxPDzMJRb7x1XCdpGhcOBbMWKjGzjis42wk8A6d0ef0RjKmqtqgF
	 Cp2rVbKmNT8Pw==
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mm2.emwd.com (Postfix) with ESMTPS id DB28038402D
	for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 12:14:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LXyb6jKz";
	dkim-atps=neutral
Received: by mail-lj1-f178.google.com with SMTP id d3so22158242ljl.1
        for <usrp-users@lists.ettus.com>; Wed, 23 Nov 2022 09:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ywE3RAKRGKBEBM/dhmbevHvah0eJ/I8ZwFtlNRJ0gus=;
        b=LXyb6jKzRpyvEno1uDMPNvfaVMTpLLazlneR9heoNZUdL7JP6HenuM1Ezo5VALN7PR
         nEadCm+JmjiVDsJkV4Sk7hhg1G0Gcvkkdfx/p/09oH6A5g+L5+MmFr1hoCI+qBSllQB/
         d0X/3oO5y66VgM9Ys+0eqTRSG77hOJH2JTXEvrUPvw/bc4wV51fw5MF5aBD1b9kyvxRI
         f82BqNOwvEzJ834CGMeWq35VHlIpK/myUHebmW9DmASo9zg1YgvW5nNFHzFnG6A14nNY
         wm7gubcc770ftrac+lTwmg9H07DOeJHSbleYpm+zoApmF/6zAlMQV9Ys1nCurkacsT/0
         DAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ywE3RAKRGKBEBM/dhmbevHvah0eJ/I8ZwFtlNRJ0gus=;
        b=I8EluqcGT5Gr9JSGaiqTUaUgfwDX/MduEcs8fma0mOx/2vV3cwBCu31y9GrwyvTiV/
         d9K5AbaUA2aw/n+Zv9eu3O9yhn/+1EBZR6N+0BxM8Fmy3FdBkn0J7to/cUaOcs1I0dmk
         1FZf69Yl7/ZosJVE/sdfo9xaCbeME7C6WAwAXU+UIqPrHJhmI9iYvZ6cH1XgKvJxOEKr
         gz2bevvhVGUvbqQxAG4sB9yi3Z469b/HSopWKfjTDnlZkwtoTRsGa8Nffi5O3X6oQZm3
         m4HfBezQWEb8RuAX30+9LqBueS6XS7e8fg0hLjn7JzARX+Uf14IWAKWTCz2LLOGeI6lC
         fQ0g==
X-Gm-Message-State: ANoB5pkJcUs8Nt7fgNUq0gdS7dDWM7vfZiovJRAOS/jDTzsn66G0aSP7
	rs4ZanIk7NJyNLBA2h7raogdp0UqH6B7K1lqmJr1KFVB
X-Google-Smtp-Source: AA0mqf7b4Oa/eB4xRt3SCxvSrr0QwdFnKRIDBYOKCSM1JswLcKR1MwPuggUM28p6n21ADGQ4RYyKfxA/RfOFUSmJQ6g=
X-Received: by 2002:a2e:875a:0:b0:26e:1d9:c2a5 with SMTP id
 q26-20020a2e875a000000b0026e01d9c2a5mr9524299ljj.353.1669223691758; Wed, 23
 Nov 2022 09:14:51 -0800 (PST)
MIME-Version: 1.0
From: Huacheng Zeng <zenghuacheng@gmail.com>
Date: Wed, 23 Nov 2022 12:14:40 -0500
Message-ID: <CAOR0_uhJWO_31xUzKyqdH5ZkN7kQHH2L9yD2YLgig8do+_9Mkw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: NQDWUIXV4GC4WGAFLK46KYFM5M7EE7CH
X-Message-ID-Hash: NQDWUIXV4GC4WGAFLK46KYFM5M7EE7CH
X-MailFrom: zenghuacheng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD and GNU Radio in Windows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NQDWUIXV4GC4WGAFLK46KYFM5M7EE7CH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0094399930079207391=="

--===============0094399930079207391==
Content-Type: multipart/alternative; boundary="00000000000032b15305ee266d37"

--00000000000032b15305ee266d37
Content-Type: text/plain; charset="UTF-8"

Hello,

Do UHD and GNU Radio (OOT module creation, compilation, and running) work
well in Windows? Are there instructions online on how to install UHD and
GNU Radio (as well as their dependencies) in Windows 10?

We did many projects using USRP N210, X310, and N310 in Ubuntu systems. We
have sufficient experience using them with GNU Radio OOT modules in Ubuntu.
But, for some reason, our current project can only be done in Windows. Can
someone share your experience with USRP in Windows? How hard is it to set
up the working environment in Windows? We hope to stream signals from USRP
X310 to Windows (via 10Gbps SPF+ cable) for real-time processing using GNU
Radio companion and our own OOT modules. In theory, Ubuntu and Windows of
the same computer should have simple I/O and computing performance, right?

Thank you in advance!

Hua.

--00000000000032b15305ee266d37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>Do UHD and GNU Radio (OOT =
module creation, compilation, and running) work well in Windows? Are there =
instructions online on how to install UHD and GNU Radio (as well as their d=
ependencies) in Windows 10?</div><div><br></div><div>We did many projects u=
sing USRP N210, X310, and N310 in Ubuntu systems. We have sufficient experi=
ence using them with GNU Radio OOT modules in Ubuntu. But, for some=C2=A0re=
ason, our current project can only be done in Windows. Can someone share yo=
ur experience with USRP in Windows? How hard is it to set up the working en=
vironment in Windows? We=C2=A0hope to stream signals from USRP X310 to Wind=
ows (via 10Gbps SPF+=C2=A0cable) for real-time processing using GNU Radio c=
ompanion and our own OOT modules. In theory, Ubuntu and Windows of the same=
 computer should have simple I/O and computing performance, right?</div><di=
v><br></div><div>Thank you in advance!</div><div><br></div><div>Hua.</div><=
div><br></div><div><br></div></div>

--00000000000032b15305ee266d37--

--===============0094399930079207391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0094399930079207391==--
