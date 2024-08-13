Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C15A950530
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 14:39:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 174B2385617
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 08:39:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723552788; bh=bx1Nu9QOJH5W/TYdoAlEfxGIm/Skz0d2KIV9JAclp2o=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Sb4106YdRdGvKDqadY8Z8TaedumBri6zwu2E8bdbsCnHn7RaAkNUQdtFg6uD6Z6HW
	 VfrdPgyz7B/+aXVO4sQDPhoRiPwWiyBGEVIbhs5n/yneGhYbVZ27XE6opuHbHX9yHc
	 baKsOZGADl6oZUCV2UesAYOqxw9uRZPlwY5xcu8h2bLWODYwUx2QnouoZ8KOSqe6rD
	 3aR278r7enwU4DDtgVcCYKzkossUF+Ks6zZjmDIWpv02m2hYdo4DVaMhLHJ+ZlNkrY
	 eE4TSF80cIlFSOOof7vfGs6Tzb2e2t9IJPQU0UgFi/KQu82BWKXwdv40gFjqbqtXl1
	 hdAhjpXTCAeVQ==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id A4889383F0E
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 08:39:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BuQU7+cO";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7ab5fc975dso433163166b.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 05:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723552773; x=1724157573; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mqRr3MjlY2yAWv+dg8sAnQXToUULV288CRvCgRp+ug0=;
        b=BuQU7+cOSlIFgYCqkdRHZNIgGySVc1syf3cdy1WbpCEYshnCU9gRozdy2XwgZt5igJ
         +PBo9nqQQnrDLExn+OCoXgBNXsibP2xVrRh+goX+hU+/khegnPCTfINGIjUTVxUvBWHa
         ViKzwlcSmzokKXv2AnfF2cGcSh4byrSitMLv5ggMx+GbgWUxoq1GhwCGFopyQQaCIHan
         TcJdBDE0Vzk3+zgxJxdH/sUTUi7UquZHnKd0B08iR3CZHdZ6+72XCroQK+ztUaaBaqZI
         BS6uWgQw3S7wLB4q0uP24T8C0nNqwVGzrRDHKA5zBjZ1iS+vesve1XR+dFcWA8DfhZwQ
         VbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723552773; x=1724157573;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mqRr3MjlY2yAWv+dg8sAnQXToUULV288CRvCgRp+ug0=;
        b=gIBDvoEiVxAA41rfcpPB5FbRtynFKDL7rGEFmrqEuiJ4+WsIEZZG5sntfsPEVvdFL3
         EuRP989Sq30Vy/IjK1tLvYYVPI0binWqFxqMyKgIKguCxDHJIrtTTanY+lEugmA5xIZh
         tJQQP2fAtyxKw0e4F39QDSdoqF+0uvm6jgM23e69pJaNygRhE7KqXvZXdo4cMoj7j1Xq
         Fuo2U2I82/N2DpdmHQ9os/aU26XsaDjQHISrwYkvxn8JF7NnZ2NBOZz8IJi2s4L9zIq2
         0ex/uTtVwDY+27YGTXDHoLz4aza8nPj6GblD4gwWw6RNLD20gf9KMeq3IxczhxyeiXr5
         Efjg==
X-Gm-Message-State: AOJu0YwuCGa83QbODDDU3zNC2Mi1dXSBeaMGUqakqhy+++7NAxRre6p0
	V3v3RBNnkdOR+1W6aaYZiL3SxDZgHhL/UoHTFjz4KiKo18TNO7yP2wp6e8UL1yAfXEVXnK+obnb
	paeqPwW0gtd2jPw0mGKHCGfwOwQdAfDtC
X-Google-Smtp-Source: AGHT+IFI8C9q/GoepOa/uitCszeZH/dgooA0mp7z3aLjbd9nU3weWkOM0Yn9UZWN8eFgrbP3ncLN8SBkGKSxjFuqzQg=
X-Received: by 2002:a17:907:ea3:b0:a80:f81c:fd75 with SMTP id
 a640c23a62f3a-a80f81d086bmr127574566b.0.1723552773091; Tue, 13 Aug 2024
 05:39:33 -0700 (PDT)
MIME-Version: 1.0
From: Brajesh <brajesh153@gmail.com>
Date: Tue, 13 Aug 2024 18:09:21 +0530
Message-ID: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 74PLVYXYJQL62UKBMRHSVSW5MSUYVVWL
X-Message-ID-Hash: 74PLVYXYJQL62UKBMRHSVSW5MSUYVVWL
X-MailFrom: brajesh153@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/74PLVYXYJQL62UKBMRHSVSW5MSUYVVWL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1346478700886166935=="

--===============1346478700886166935==
Content-Type: multipart/alternative; boundary="000000000000cab7c0061f8fe6ce"

--000000000000cab7c0061f8fe6ce
Content-Type: text/plain; charset="UTF-8"

Hello all,
I am Brajesh and working on Ettus Research N210 FPGA board modifications.
While doing so, I am facing some issues which are listed below,

i. How to implement Verilog code ( available at following GitHub link ) on
N210's ( Ettus Research ) FPGA ,

https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top/N2x0

ii. How to customize the data rate of the above GitHub link. I am trying to
make the data rate ( via connector to PC/Laptop ) as 1-bit, 2-bit, 4- bit,
8-bit, 16-bit(default), 32-bit and 64-bit.

iii. Once N210's FPGA is modified with above modifications, how to check
the correctness of modified FPGA of N210. What I mean here is,
methodologies ( standalone ) to check faithfulness of N210's FPGA (
modified ) without daughter boards.


For the same, I kindly request your valuable suggestions. If you are busy
enough or not the right person, I kindly request you to direct me to the
exact person.
Warm regards,
Brajesh

--000000000000cab7c0061f8fe6ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div>I am Brajesh and working on Ettus Research =
N210 FPGA board modifications. While doing so, I am facing some issues whic=
h are listed below,</div><blockquote style=3D"margin:0px 0px 0px 40px;borde=
r:none;padding:0px"><div>i. How to implement Verilog code ( available at fo=
llowing GitHub link ) on N210&#39;s ( Ettus Research ) FPGA ,</div></blockq=
uote><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">=
<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>=
<a href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top/=
N2x0" target=3D"_blank">https://github.com/EttusResearch/uhd/tree/master/fp=
ga/usrp2/top/N2x0</a></div></blockquote></blockquote><blockquote style=3D"m=
argin:0px 0px 0px 40px;border:none;padding:0px"><div>ii. How to customize t=
he data rate of the above GitHub link. I am trying to make the data rate ( =
via connector to PC/Laptop ) as 1-bit, 2-bit, 4- bit, 8-bit, 16-bit(default=
), 32-bit and 64-bit.</div></blockquote><blockquote style=3D"margin:0px 0px=
 0px 40px;border:none;padding:0px"><div>iii. Once N210&#39;s FPGA is modifi=
ed with above modifications, how to check the correctness of modified=C2=A0=
FPGA of N210. What I mean here is, methodologies ( standalone ) to check fa=
ithfulness=C2=A0of N210&#39;s FPGA ( modified ) without daughter boards.</d=
iv></blockquote><div><br></div><div>For the same, I kindly request your val=
uable suggestions. If you are busy enough or not the right person, I kindly=
 request you to direct me to the exact person.=C2=A0</div><div>Warm regards=
,</div><div>Brajesh<br></div></div>

--000000000000cab7c0061f8fe6ce--

--===============1346478700886166935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1346478700886166935==--
