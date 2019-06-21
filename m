Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECD94E3B9
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jun 2019 11:38:13 +0200 (CEST)
Received: from [::1] (port=52582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1heFzg-0008BD-CO; Fri, 21 Jun 2019 05:38:04 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:45463)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1heFzc-00087B-Kg
 for usrp-users@lists.ettus.com; Fri, 21 Jun 2019 05:38:00 -0400
Received: by mail-io1-f42.google.com with SMTP id e3so263153ioc.12
 for <usrp-users@lists.ettus.com>; Fri, 21 Jun 2019 02:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=RVjhaglQd9v6iH8lE0mIbkm3wviTZIuGugVL4cJ0AaI=;
 b=NeDU4QF5IIdJTBJKBDhUEYYqzHP8D4JsGjYRA+39mMOrQrxYACn34vukJrhXCYo/66
 qWJ2w+lnaQCxEpqR93hspBZECVvamCtGbM0oR8ZeLgLX6ng596uS+GUyI7QFAfPWke6N
 ZwmAautqnPPRKHE0JonKOoJ9mgNbw7gZhLbOXU08s0uvGmUOgfaMa6pZnWdRa8gdpWrJ
 5JLt+YIq9GzsdxWmIrTrG9c7yh1/hdW60qGjTZgKByZrCXARGJs+RLstkxlYZwWKVXEz
 Ym3LXZMBBwE3FIBepLGJ1F3Ja/xk/dGF62fg/bJ7Ag/glo3qmEx7xQ0KvB66ZsaZ7anW
 aERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=RVjhaglQd9v6iH8lE0mIbkm3wviTZIuGugVL4cJ0AaI=;
 b=EVwN5U3b3t2OmC5mJDz5FchDAiwm/Fj/99ru9Z9bOjI6fg6KPTaeSOAhFdkhhEE1YQ
 fJE6cQ8puai5KiHeryz/G+NC7qrtpSZTqt//ReGXToKjLszb9FzlA2cdMY4rSExFgVPd
 YReNePfbR1dXcZTsLdnr49xCQn1P+eaP3qYuu2ikDWAIPr4JlS+3pNEeSPbIkh32RMoG
 Yy1JZyIzKgCSnbmVSqIH8mr49f+mPQnTJ58RnGm50fUNUrmJOQbIxYmQFdXFjg+cx/+E
 DmQMcAsZ83gWg3NbCU7HobGUPOd5U9bQo2F2feccDcNPX8Yp+91FzbQyfWRfHX157PpY
 Duxg==
X-Gm-Message-State: APjAAAXAanMV3ZeXFR0TnPLTzyqFn86ooZ/OwY468w0GMg7itwHIHALQ
 29pIDlDKiaTSTUi6CHJGm9GoQxrrbFLqj55I2MMy1wlM
X-Google-Smtp-Source: APXvYqxMDJUP3LcAR5Crl71NorEOzfBGIo5ssyZRMAy7DnA2jOHRru3Z6SpiiMwriV0K3Y5/t+2zCY92FFpNcJj7jGs=
X-Received: by 2002:a5d:8416:: with SMTP id i22mr9601725ion.248.1561109839558; 
 Fri, 21 Jun 2019 02:37:19 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 21 Jun 2019 10:37:08 +0100
Message-ID: <CALSxwQE=BvA6ZK48KciABp8B+AHCYPs3FmBERYX1nNqSaq9yyg@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP X310 with Vivado
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
From: Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Simona Sibio <ssibio2@gmail.com>
Content-Type: multipart/mixed; boundary="===============6894401956016782269=="
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

--===============6894401956016782269==
Content-Type: multipart/alternative; boundary="000000000000713e2b058bd2359e"

--000000000000713e2b058bd2359e
Content-Type: text/plain; charset="UTF-8"

Hi Kevin,

I am Simona Sibio, a student in Heriot-Watt University.

I am writing to you because I read on the Ettus List some your mail
regarding the implementation thought Xilinx Vivado on the USRP.
I have experience with Xilinx Vivado but on the Ettus web site, I did not
find any demo to connect the USRP to download the bitstream.
Also, I did not find a constraint file, so I can not generate the bitstream.

Could you help me?
Have you implemented the digital circuits on Vivado and downloarded the
bitfile in X310?

Thank you for your time.
Best Regards,

Simona

--000000000000713e2b058bd2359e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kevin,</div><div><br></div><div>I am Simona Sibio,=
 a student in Heriot-Watt University.</div><div><br></div><div>I am writing=
 to you because I read on the Ettus List some your mail regarding the imple=
mentation thought Xilinx Vivado on the USRP.</div><div>I have experience wi=
th Xilinx Vivado but on the Ettus web site, I did not find any demo to conn=
ect the USRP to download the bitstream.</div><div>Also, I did not find a co=
nstraint file, so I can not generate the bitstream.</div><div><br></div><di=
v>Could you help me?</div><div>Have you implemented the digital circuits on=
 Vivado and downloarded the bitfile in X310?</div><div><br></div><div>Thank=
 you for your time.</div><div>Best Regards,</div><div><br></div><div>Simona=
<br></div></div>

--000000000000713e2b058bd2359e--


--===============6894401956016782269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6894401956016782269==--

