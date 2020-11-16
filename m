Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 086B52B54D0
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 00:15:50 +0100 (CET)
Received: from [::1] (port=37698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kenit-0001pw-Uw; Mon, 16 Nov 2020 18:15:47 -0500
Received: from mail-io1-f49.google.com ([209.85.166.49]:43151)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1kenip-0001iX-8h
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 18:15:43 -0500
Received: by mail-io1-f49.google.com with SMTP id m9so19218957iox.10
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 15:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ql5/dIPOfD75B75xUr1ZO/997C1goKKb4s11NnvPv+I=;
 b=FkmKQPLxvOZ0IUpR+4bSPQmBj98grVkgNb471mYXgFy/AQqsnZyutbaDIdgunFYvih
 ydpOaAWTdlmfykMV6bk2DymOEc/Haq8aZT2DCL2epXpZtIc2mKRs26Y5UTB/k4Ku6wNw
 VQyFHW7MYwS6cwBJaB7e1/awCTXGttfkK9Ln0SX/4vPMKyfSopJnY4tNC19S9Js4ZdqH
 lbAjgux/9LoqTHjMfVvenUE5689M7FIVY8JBGXULbzVGSBFP168ZNeG6KK2P/aHugNgh
 4CIXdiflZCawzDxycrgu6sQ83c4PVWyfPJU20PPPlklcahD8sd/vLq1+Hga2UE4raVQJ
 URUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ql5/dIPOfD75B75xUr1ZO/997C1goKKb4s11NnvPv+I=;
 b=aDoc4Bpwp8AU8cA4g5ilGwFK9GkEx44JFiWcdsGJiLpsqfQf+NnrbFx4/tZcwtsBy/
 NqMroWG3ScpExCcpfbuv7F2xWx3m+yDgPMaRQ6n4gngdr+rdb04bwAOJ2rtaUdBPkBp4
 WfzpL7gD5HxJRwhU8gU956J9D1bmCemyZjob98QXcUHw7It3ReEbxE9WcR0lobkO5MHZ
 Wu0riaVUo1Lb9hl/+JvWgMwWcpMEwpDXePNvAiPrQS/GA5qSSK1ItqfRlDEKQH6kFcOS
 rY94QWOmH4EHE9Hx8MhU0W7EPN85BR5q00DQoF5+dRCTaDg2zDtF5Vy92mf8paY9Awc9
 rNog==
X-Gm-Message-State: AOAM532sQVKChfJ5HqTc463pdKfhuXhVbluromNCO6PNVIO9xr7eGhn0
 Rfexc159G9UXrp/VeImo85pbmZ6ZkT/5Xfj/9wwR9V00rpc08g==
X-Google-Smtp-Source: ABdhPJxLPYTGeL+AyKbbxzyMWCtjZCFwDwJvnyQrEiN2OZBhfecH2wpBas8srb5ZPOeLaX8MbShnxRz8lmfxaPqkTkc=
X-Received: by 2002:a5d:9b8f:: with SMTP id r15mr9696014iom.35.1605568500994; 
 Mon, 16 Nov 2020 15:15:00 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 17 Nov 2020 01:14:48 +0200
Message-ID: <CAPRRyxvjjBW1Z2htqVOO_OCLP2RXs=j6Q0B3y7L5YL0sLU4bCQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] Direction finding based on USRP E310 board
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============7871260732120847556=="
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

--===============7871260732120847556==
Content-Type: multipart/alternative; boundary="0000000000002a165605b4418c6b"

--0000000000002a165605b4418c6b
Content-Type: text/plain; charset="UTF-8"

Hello. I am interested in the possibility of implementing a prototype
direction finder based on the USRP E310 board. Since I have it in stock.
Interested in basic questions such as is it possible to synchronize the
phase on two channels and are there any examples of such attempts? Perhaps
someone can give some instructions on this matter, since this is all at the
level of an idea. PS Other USRPs I have no way to use at the moment.

--0000000000002a165605b4418c6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello. I am interested in the possibility of implementing =
a prototype direction finder based on the USRP E310 board. Since I have it =
in stock. Interested in basic questions such as is it possible to synchroni=
ze the phase on two channels and are there any examples of such attempts? P=
erhaps someone can give some instructions on this matter, since this is all=
 at the level of an idea.
PS Other USRPs I have no way to use at the moment.</div>

--0000000000002a165605b4418c6b--


--===============7871260732120847556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7871260732120847556==--

