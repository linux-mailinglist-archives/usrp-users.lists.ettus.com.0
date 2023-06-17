Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D68C0734126
	for <lists+usrp-users@lfdr.de>; Sat, 17 Jun 2023 15:14:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89E92384B28
	for <lists+usrp-users@lfdr.de>; Sat, 17 Jun 2023 09:14:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687007672; bh=JdAxH7vKQTm02BzmOp2DiRfq3Yrc91Th1WOeRXDQLFo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vubLfllu5jw5PigdiYF5Xqv4lSIaUGsCk0zQc6ipz4D6G9DbNnIS/cuVMvi/QsRmb
	 ephRqaBiV3B657eDWSHrOVbuCFTJCNKniDZp2cqrOtGVnj+WEFNEz+3ErTgwBFp443
	 HBVkPGMjgkhspf62obq9Fkl0BBdeQ0Vh6h93kjO9+bOcPqOmbqaqqZKjMEKJdm1tPA
	 6ZMsUZYsxHsPu1z3V/O88Ex/KGTUxCytwcQpxU0tXEfQt8WHOGnO9DqJk6WV/RpVVE
	 t+GAu5OIp9ihMkHUNwANZM4qcuztT2KxHsMvNll9ZBfrNIApSPTWXU+0wVi+orUMYb
	 nodZDTmgmmC9Q==
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 8EAC738499A
	for <usrp-users@lists.ettus.com>; Sat, 17 Jun 2023 09:13:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NqOgCXMR";
	dkim-atps=neutral
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-46e4ba859c5so548050e0c.2
        for <usrp-users@lists.ettus.com>; Sat, 17 Jun 2023 06:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687007615; x=1689599615;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+SWv4K2ZmzXbd7smMyThShs1AJW1zlRm27DvJZznhKw=;
        b=NqOgCXMRtStrWG1ljPZY1hSoRplDOEWDu/7q6D9E7j6IOr6xozZgVcHr1GoLRDoB0D
         5nLwPK1k4bCDhSLTdZyCIDGuG63yqdh/qo/QXyCsdQQ3NFY6btIJTsBxg2kQbdFvsjTf
         lLmkvD+rdc59V+lR6qU0IB9xLj5hijNdRoRxm8NIlJSkaEYA/uSG7/Ah8rGUP6E68cKU
         Vq/aqqfofNUAx4qmjfP1kG/DFQsuTUhMY9XaNEGnC/UtAKIPp8UyD7VcKFLDAVtSjUih
         C96lgSmbdZ+gH5AAhXL/HOKAebnGW3yE5awSCrWULumS22fvgPrluUXnNXsmfI+CSZog
         ECsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687007615; x=1689599615;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+SWv4K2ZmzXbd7smMyThShs1AJW1zlRm27DvJZznhKw=;
        b=RPZgywwPhbyF+VLaLKAi/Yp4rD0urF2vShIysHIpFCw7gFOO94ruU+fqYMsW0wpIA7
         7Fz7SX71BW5aUOiWMv1YlgmKVnQ1LtYU6jOzDdFgkkdc6jk8IoWv2230T713jNT7axKv
         tEJAnrWBkD3GeYzAXPz/jQqLNN2U8ANOj6OI2nL/BAex5bVIs8RMOYGnBhGGI+3rHIoy
         sKdqjWNqafMlFc728VLiBRdSbCJ5DEQBopHgHYecGfWTr0Q3Zm2ff3xovekh5pv3LO0C
         4YoUxny6jgTyPcobU5V5C1txQSJ2PDp661pS0oxoxep9YoTnl+ewPxPuSBxzzhA5YyGz
         2Daw==
X-Gm-Message-State: AC+VfDyJurmp6CUlNZnfH91/X6lzXo7amiXMwndMdGNnI4O+6i4kOKWb
	eJdNDaQFkLX+JdX6RELN3UrX7m4VB7i+6BCdrnO0zRelH+myNdNCJqNySA==
X-Google-Smtp-Source: ACHHUZ7dUQR+pk8Ed1zOM3fDnLwlthG/EfDdcuGo2oKmvpgbUIxuQKhxaMP572k2gghojgoHnWfNdEqjA6B+4o7NMNs=
X-Received: by 2002:a1f:4597:0:b0:471:17be:ba8d with SMTP id
 s145-20020a1f4597000000b0047117beba8dmr741686vka.3.1687007615401; Sat, 17 Jun
 2023 06:13:35 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Sat, 17 Jun 2023 17:43:24 +0430
Message-ID: <CAA=S3Ps64+RMO8_==-95ZGEziAPzdmMAXTHan+TkGCYav3qVhg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: KTZ4QNIDVF5UZMGVE6C6PMGNWEPBD5IX
X-Message-ID-Hash: KTZ4QNIDVF5UZMGVE6C6PMGNWEPBD5IX
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What is delay change frequency USRP daughterboard when i used PCIe vs Ethernet?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KTZ4QNIDVF5UZMGVE6C6PMGNWEPBD5IX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1460794253405033440=="

--===============1460794253405033440==
Content-Type: multipart/alternative; boundary="000000000000a6432b05fe53113b"

--000000000000a6432b05fe53113b
Content-Type: text/plain; charset="UTF-8"

What is the delay change frequency USRP daughterboard when I used PCIe vs
Ethernet?
I have a USRP x310, and when I send a change frequency to change the
frequency it takes long .2 ms, this delay is for the ethernet command sent
to the daughterboard I measure it with cpp code, but I had not any PCIe,
but this is a question for me?
My question is for PCIe what's a delay for change frequency that effect the
daughterboard?
Can anyone guide me?
thanks in advance

--000000000000a6432b05fe53113b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What is the delay change frequency USRP daughterboard when=
 I used PCIe vs Ethernet?<br><div>I have a USRP x310, and when I send a cha=
nge frequency to change the frequency it takes long .2 ms, this delay is fo=
r the ethernet command sent to the daughterboard I measure it with cpp code=
, but I had not any PCIe, but this is a question for me?</div><div>My quest=
ion is for PCIe what&#39;s a delay for change frequency that effect=C2=A0th=
e daughterboard?</div><div>Can anyone guide me?=C2=A0</div><div>thanks in a=
dvance</div></div>

--000000000000a6432b05fe53113b--

--===============1460794253405033440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1460794253405033440==--
