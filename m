Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEE36F0922
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:08:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD85B3845EC
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:08:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682611699; bh=aEJOIavkFkYPn73+09TOBEYH2SZ8Ia9DcAcFjZxx7A0=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=05qtkMXXbehczS8sFnoys/IkdeHdLPWNbiSfSHg3v1/WAMgSy+LXgUmxiDS/TYetW
	 PItZ1/1oOp6jyDgIJeY1JSZmkgfRfx4CG7EsM2cPxugGCxNMit4/gLU0VngHWt0JAs
	 /VnCkF1XidI+SYx4WfQuV2uQlnp1vwAnOIxTPzIqyYZuXLRu2nCZferfGB1r/vOpcz
	 RrE/unDilJX+c1yRAGYr6Mm0+hAnkgvpPVdQ25UOtUeY3FA0NgixK4Xut+136Svye8
	 gyWTxJHCsqPTiCA4uxf8M49FRng8TVPdZezNCVrJqUV+2yIyPG3cm/jMp8u5r4tlF8
	 VN1wGVb2t8YTw==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 716CE383E1B
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:06:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mail-pucv-cl.20221208.gappssmtp.com header.i=@mail-pucv-cl.20221208.gappssmtp.com header.b="gTVc71R8";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5050491cb04so12958157a12.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 09:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-pucv-cl.20221208.gappssmtp.com; s=20221208; t=1682611564; x=1685203564;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=im5fJdHrF6WZfEee1yR83rI8PJHRwBJ5pP9cm28DcEM=;
        b=gTVc71R8PPk1ck7FeH3xm8o3IYKlu77PB2Kal/nvyB5Ze6gU7xF/GZOOPYsT+LLkTf
         IaTesLOfMvehjA22jd+8QUfJFLsgeRtsFn61TcxnHtvY1ceR1D9MD4gu7YNsr1vjKQn0
         errkgoNwtHh87oV9dntpptMb27LsPalsMTzFVfNzL2CGDKJT+6zBZDom1flqxAguQaTK
         KYXYolNXJLZ9KG/UGtPpcIHCVnleZZZWFF0bnvW8pBsluuQm2JpUul1RPGELbXs/zY5A
         oTh6g3FCgVCC5PmboRoa/N/o+769GEK3pXzFDAIy546cRK8tg1Md9jvS4Yc+8IBCj3+e
         mqmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682611564; x=1685203564;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=im5fJdHrF6WZfEee1yR83rI8PJHRwBJ5pP9cm28DcEM=;
        b=WIr9KoWotVP9Ce2YYViVZLibA5+FKJt8sSkj4kl+0ZPvYBbHOeaQsgK+Zm+eNS5Vvy
         CdiLLb8rMFYxQmQSRM5ZOdyrVT4wU0fJuIUewNQ8DjnKshF5eoZVXOE+zkgzUSE24OD6
         FWtpqR+yUaojMfShwbLLnn7jRBwZE44ICxj/8F9nHjRvYgCPFbxPRNQLCFuoJvnBpTtO
         1hXiTIxlX1RI+X30DMYqpLvhB2TmE+IqByElYsBzaRZwuIv0mgeEg1q2Wt1RPvSs+tgr
         akOvVun4Q6U8BBIb0Z2hr0JkxCFgf9QXeqYp7igiI+owxATLERwV/6X6UyipC51yl4Y8
         4YhQ==
X-Gm-Message-State: AC+VfDxs/F1kdHsd+FExeHSbiBstuZOtQIUQqAI/cixBeMizotxf2AcP
	51d7Fm2rmATkOuVOvHlDQc7hCDDKGbTcYRqSVpBpNKJjOsG60KQceg==
X-Google-Smtp-Source: ACHHUZ5glNBIsd4DQjFrfqrbscK2VOXyIEN9TeFsPT+gpl3K9u7oHnC8GIXsk95JJ9pWLd/DZGY1P6l2Kx1bb5f7opg=
X-Received: by 2002:a50:fb04:0:b0:506:be49:243a with SMTP id
 d4-20020a50fb04000000b00506be49243amr2056734edq.15.1682611564055; Thu, 27 Apr
 2023 09:06:04 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 27 Apr 2023 12:05:52 -0400
Message-ID: <CAFFpLrECHikVQ-KE=y1Z4mVhs6y+prmqtBdR6WJcbuae5553Mg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: D4U57HFENUR2MVC4LJLMN476HVWG2AZ2
X-Message-ID-Hash: D4U57HFENUR2MVC4LJLMN476HVWG2AZ2
X-MailFrom: jorge.gonzalez.o@mail.pucv.cl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] static ip on E312 not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D4U57HFENUR2MVC4LJLMN476HVWG2AZ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: JORGE GONZALEZ ORELLANA via USRP-users <usrp-users@lists.ettus.com>
Reply-To: JORGE GONZALEZ ORELLANA <jorge.gonzalez.o@mail.pucv.cl>
Content-Type: multipart/mixed; boundary="===============3088716350591745591=="

--===============3088716350591745591==
Content-Type: multipart/alternative; boundary="00000000000092231d05fa5388f0"

--00000000000092231d05fa5388f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all

i want to assign a static ip address to my E312, i have modify the
eth0.network file in /data/network, this is the content:

[Match]
Name=3Deth0
KernelCommandLine=3D!nfsroot

[Network]
Address=3D192.168.10.42
IPForward=3Dipv4

[DHCP]
UseHostname=3Dtrue
UseDomains=3Dtrue
ClientIdentifier=3Dmac

But I rebooted the E312 and did not have the ip assigned, =C2=BFdoes anyone=
 know
why this is not happening?

--00000000000092231d05fa5388f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all</div><div><br></div><div>i want to assign a st=
atic ip address to my E312, i have modify the eth0.network file in /data/ne=
twork, this is the content:</div><div><br></div><div>[Match]<br>Name=3Deth0=
<br>KernelCommandLine=3D!nfsroot<br><br>[Network]<br>Address=3D192.168.10.4=
2<br>IPForward=3Dipv4<br><br>[DHCP]<br>UseHostname=3Dtrue<br>UseDomains=3Dt=
rue<br>ClientIdentifier=3Dmac<br><br></div><div>But I rebooted the E312 and=
 did not have the ip assigned, =C2=BFdoes anyone know why this is not happe=
ning?</div></div>

--00000000000092231d05fa5388f0--

--===============3088716350591745591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3088716350591745591==--
