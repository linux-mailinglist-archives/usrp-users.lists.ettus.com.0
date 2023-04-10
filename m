Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6346DCA74
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 20:08:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB46E38459C
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 14:08:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681150111; bh=uRjDMEUvXvC6qu4TK64+HPEqQhqLK5oN7dPGf9dJKLo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=igREV6j8lpIqBhm1s42MCq6/k5M1IOAx5Ew1L3hQ+iKFoKbPZ5DkounOVk79ransD
	 gquQZPH/ANz86kWpEs0EyCIQaNmjDVwKgLY3d3mRepBbyKy1HJY2S9ackDsV0SSDL/
	 sQ81/bdi5q8eIEq6bS/mEUHhdSr5A9YLf/mAj10dCey5cyvp6NFRiILhPR81vtk/eU
	 gMPwQV7SUEG975lB/RFGj7jrSDg7SF6pe5qMs+PCPGIoPDJ07BcBxcMVusujNrHS3t
	 wuohuLL1l+YiSD7SyvMsOvlcWD+/o50DZ5CmZhKCxrjkKDfaH+ADCZn9skNvegIjTi
	 4z2mC75EI36gw==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id B82793845D0
	for <usrp-users@lists.ettus.com>; Mon, 10 Apr 2023 14:08:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=nu.edu.kz header.i=@nu.edu.kz header.b="tSu+dYkl";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id x31so1942658ljq.10
        for <usrp-users@lists.ettus.com>; Mon, 10 Apr 2023 11:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nu.edu.kz; s=google; t=1681150103; x=1683742103;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LViyj5EONxaVAvEY19pWe4s8US1uWbI/G4rU+0ttqWw=;
        b=tSu+dYklXi07uL+/jNTHy4eFYdDRjwJ9mXOKijjGUJ/Y6tBj9myX47wRFDtqcHP3qt
         fKJzXxoxSS5eXYMXyBViTRILIG+TPXZhIjcWLPD8I6USSLZOw2bMEWstR0XXMJctG/h9
         iunR+XOVZIDMJB+71zXo48ErsdiSg/R9H14wk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681150103; x=1683742103;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LViyj5EONxaVAvEY19pWe4s8US1uWbI/G4rU+0ttqWw=;
        b=sFAtpuw8JLYOtyEnqYNXNRMsw+gedisaIu3kxi7OmPTr15woVxYNjKtjmUlcYmLJDj
         O3YIbiyhRfMKndTw9OzhH3I6UNgsGWHw/Cw0WJDH9syXXoGkbiRPtSjIo8L0Na3UNsoN
         PJj25ctKQdfUhSjo6yrfdiBdcQlKlQMO0JTPyDDRFhAZyiwxt0vtp/ILk5/DZMM4+b4U
         s6Sa6Qv+txmVn2LimNg1tMbhJADPG4Se5F989sfwapnHvUqYTofW/D43VyMP3PV3dGhC
         Qe6uhS2DeIH9MweMaD3GiU09pTSrwjI21pioqSpwOVj3T1COS6v76aSlD4U8oP0zFGfS
         t9Dg==
X-Gm-Message-State: AAQBX9fjze4VnoAl6admeH6tMH98OvQcTliG3rhYVzb8+klNCAHArGlC
	r1FXaaPwXXWfgXPpBvR7dtSWyQRYs36XCQjdJ4kJVe5M87ivSYBDzYuFj5BuMJy5vhCD1SYvaKi
	Gf55rtrMvqiIPzv8qOWkNMZZVWbDMmzbJ3ZQMF57JDO4BWZ1ysNkcWkNCo+rwv2Ocdhg5Fg8II3
	yPiTgGoz5Bhh1Z6TnQZmtVqAJhiH9FK3zaHFG1lHpjEZbltJh71ApY9MdzcmwapJ9bPVM7gtilF
	2NGubfu7dDeAR2wKXM=
X-Google-Smtp-Source: AKy350ao1EEBXZ4DbQtchpc3TgbYg8yNXM3eJJ9Ks6Ua8qfRDifgZiVcRGXt6twlWxBRWyPMaquxe5DRgiRsWTjAYso=
X-Received: by 2002:a2e:9218:0:b0:2a7:8544:1e76 with SMTP id
 k24-20020a2e9218000000b002a785441e76mr243754ljg.8.1681150102959; Mon, 10 Apr
 2023 11:08:22 -0700 (PDT)
MIME-Version: 1.0
From: Azamat Nassipkaliyev <azamat.nassipkaliyev@nu.edu.kz>
Date: Tue, 11 Apr 2023 00:08:11 +0600
Message-ID: <CA+z47vThu0qs=ZYmo=Hg+sU9VWnMjUEH3qyB13PHZYYw64j=WA@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-CLOUD-SEC-AV-Sent: true
X-CLOUD-SEC-AV-Info: nazarbayevuniversity,google_mail,monitor
X-Gm-Spam: 0
X-Gm-Phishy: 0
Message-ID-Hash: 2ANSFDE3BCAP5MH4LQ3GIWUOJCRCZQAY
X-Message-ID-Hash: 2ANSFDE3BCAP5MH4LQ3GIWUOJCRCZQAY
X-MailFrom: azamat.nassipkaliyev@nu.edu.kz
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Tried everything, but "Expected FPGA compatibility number 36, but got 39" is not resolving
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ANSFDE3BCAP5MH4LQ3GIWUOJCRCZQAY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8494293103998202692=="

--===============8494293103998202692==
Content-Type: multipart/alternative; boundary="000000000000b3d48b05f8ff42d7"

--000000000000b3d48b05f8ff42d7
Content-Type: text/plain; charset="UTF-8"

Hello, everyone!

I installed UHD and GNU Radio on Ubuntu 20.04 for USRP X310. Commands
"uhd_usrp_probe" and "uhd_find_devices" execute perfectly, but GNU Radio
always gives *"RuntimeError: Expected FPGA compatibility number 36, but got
39" *no matter what I try: tried "uhd_images_downloader", "uhd_image_loader
--args="type=x300,addr=192.168.10.2,fpga=HG".
Reinstalled UHD and GNU Radio again, but nothing seems to work. I have no
clue what the problem might be.

Could you please help me?

With regards

--000000000000b3d48b05f8ff42d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, everyone!<div dir=3D"ltr"><div dir=3D"ltr"></div></=
div><div><br></div><div>I installed UHD and GNU Radio on Ubuntu 20.04 for U=
SRP X310. Commands &quot;uhd_usrp_probe&quot; and &quot;uhd_find_devices&qu=
ot; execute perfectly, but GNU Radio always gives<span class=3D"gmail-Apple=
-converted-space">=C2=A0</span><b>&quot;RuntimeError: Expected FPGA compati=
bility number 36, but got 39&quot;<span class=3D"gmail-Apple-converted-spac=
e">=C2=A0</span></b>no matter what I try: tried &quot;uhd_images_downloader=
&quot;,<span class=3D"gmail-Apple-converted-space">=C2=A0</span><font face=
=3D"arial, sans-serif">&quot;<span style=3D"color:rgb(0,0,0);background-col=
or:rgb(251,252,253)">uhd_image_loader --args=3D&quot;type=3Dx300,addr=3D192=
.168.10.2,fpga=3DHG&quot;.</span></font></div><div><font color=3D"#000000" =
face=3D"arial, sans-serif"><span style=3D"background-color:rgb(251,252,253)=
">Reinstalled UHD and GNU Radio again, but nothing seems to work. I have no=
 clue what the=C2=A0problem might be.</span></font></div><div><font color=
=3D"#000000" face=3D"arial, sans-serif"><span style=3D"background-color:rgb=
(251,252,253)"><br></span></font></div><div><font color=3D"#000000" face=3D=
"arial, sans-serif"><span style=3D"background-color:rgb(251,252,253)">Could=
 you please help me?=C2=A0</span></font></div><div><font color=3D"#000000" =
face=3D"arial, sans-serif"><span style=3D"background-color:rgb(251,252,253)=
"><br></span></font></div><div><font color=3D"#000000" face=3D"arial, sans-=
serif"><span style=3D"background-color:rgb(251,252,253)">With=C2=A0regards<=
/span></font></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><table style=3D"color:rgb(34,34,34);=
border-spacing:0px;border-collapse:collapse;line-height:1.4;font-family:Ari=
al;font-size:10.4px"><tbody><tr><td valign=3D"top" style=3D"padding:0px"></=
td><td valign=3D"top" style=3D"padding:0px 0px 0px 15px"></td></tr></tbody>=
</table></div></div></div>

--000000000000b3d48b05f8ff42d7--

--===============8494293103998202692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8494293103998202692==--
