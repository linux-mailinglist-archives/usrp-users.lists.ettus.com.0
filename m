Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E164A3AA257
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 19:21:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF5393846A3
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 13:21:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ODhRaSAT";
	dkim-atps=neutral
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 4464638411B
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 13:20:56 -0400 (EDT)
Received: by mail-io1-f50.google.com with SMTP id 5so31057ioe.1
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 10:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=hHTb6YWsKrTyyZhZt+jltiND38LK93H9swilRYDWjIo=;
        b=ODhRaSATuwC/5C0+oCvqeiN/5LSP7JAQOEZWojKQANfZfg1Yir0llHn7WAYaW4uW3k
         T6JCJxj3N8ZiUMq3jTopcOpv4uVYqjOkr4+CW9Bz9Z7dlDk/YAZL0i1ZnC2r33nBG4MJ
         NgBC/0a+XKYJMZXaQL6XEA/ToKjfB5FjAY0g4JP1PIyrcw4mnxbAub/+E3ZRyfHG95xS
         C6bc6r8p2G//g4DPSHu0TDsgqUPCp9LEkVS33Dl4gQxSD2f+JrvNYW5EAb6yFgWsrx4p
         +76a/bQQkhnREUlQr4lY1IH/+m5Bjen7KpAvTPq7XYoxVyNFSAYdQrH9jl/bfMjZ721i
         Y1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hHTb6YWsKrTyyZhZt+jltiND38LK93H9swilRYDWjIo=;
        b=Jn8ruRPqzHhPQqIrz0mFoFBfi39j39Hg8HG3I/ffGpfPwALJV5a9M0SB8x38iviuK9
         5q0yeIhYYXn2kb/djmyTT2ROJRIB8MuO7NnJsz2XWTg5TFTBtRoXAJHFidYiiKRmwrfg
         BwA809C+AlPLbwVwYigMXDpT8QFANRcWowHfYDi3nLMnK2WmUIsxdrPn4SvKQdQLaOXJ
         2312mLtk3EMnBo5MQqVX7oFxayJH7gMpVIFRv9Ju1P5PBU40id0LqJgvGNBwAgj8RSEJ
         QuIihrHzbG4dNEVkfLtXkGv8kexG1e/sQddP2u6LKxc6CXC6uOz9SSQWIjfPkeaD1hUx
         R45A==
X-Gm-Message-State: AOAM5325ipzFdvdpd0t4TGvf5CR6Sf34MipdPCRXQs7G6Gd77fVeKlDx
	kWO7v+UTon28QSEAAfwDxjRzeNvm71eF0MRRb8KXSM01JQ8=
X-Google-Smtp-Source: ABdhPJw6qSASejrR72NbN8KaZH21zeMcOKd31cHBiQLqhz0WQ5BLSgMBZKq6c6QCTjOp3tncKgQzCMCXgKPpkhJtFgM=
X-Received: by 2002:a5d:8986:: with SMTP id m6mr359053iol.87.1623864056309;
 Wed, 16 Jun 2021 10:20:56 -0700 (PDT)
MIME-Version: 1.0
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Wed, 16 Jun 2021 12:20:20 -0500
Message-ID: <CAE0dfYbKnA20uy2Db3sYBZ0whUpzTexv1HAOWG5Yb7H54AAqbQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 4G3QTRMFFZZP4HF2CQZ4UWTCNVY6LAZ4
X-Message-ID-Hash: 4G3QTRMFFZZP4HF2CQZ4UWTCNVY6LAZ4
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Any problems building and running UHD 4.0 on Ubuntu 21.04?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4G3QTRMFFZZP4HF2CQZ4UWTCNVY6LAZ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1521325045835057089=="

--===============1521325045835057089==
Content-Type: multipart/alternative; boundary="0000000000003d6b5d05c4e550cd"

--0000000000003d6b5d05c4e550cd
Content-Type: text/plain; charset="UTF-8"

We got a new powerful Dell desktop for the lab here, and we want to put the
latest Ubuntu 21.04 on it. But will UHD 4.0 build from source and run
properly on Ubuntu 21.04? Are there any known issues? Does anyone already
have this running successfully? Thanks in advance for the help, and for
potentially saving me tons of time!

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, USA

--0000000000003d6b5d05c4e550cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">We got a new powerful Dell desktop for the lab here, and=
 we want to put=C2=A0the latest Ubuntu 21.04 on it. But will UHD 4.0 build =
from source and run properly on Ubuntu=C2=A021.04? Are there any known issu=
es? Does anyone already have this running successfully?=C2=A0Thanks=C2=A0in=
 advance for the help, and for potentially saving me tons of time!</div><di=
v class=3D"gmail_default" style=3D"font-family:monospace;font-size:large"><=
br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-fami=
ly:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=
=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch S=
chool of Electrical Engineering<br></span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace">New Mexico State University (NMSU)<=
br><span><span>Las Cruces, </span></span>New Mexico, USA</span></font></div=
><div><font size=3D"4"><span style=3D"font-family:monospace"><br></span></f=
ont></div><div><font size=3D"4"><span style=3D"font-family:monospace"></spa=
n></font></div></div></div></div></div>

--0000000000003d6b5d05c4e550cd--

--===============1521325045835057089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1521325045835057089==--
