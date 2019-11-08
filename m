Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF38F4E05
	for <lists+usrp-users@lfdr.de>; Fri,  8 Nov 2019 15:24:31 +0100 (CET)
Received: from [::1] (port=39098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iT5Bb-0000aG-DW; Fri, 08 Nov 2019 09:24:27 -0500
Received: from mail-io1-f42.google.com ([209.85.166.42]:45953)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <samberhanu@gmail.com>)
 id 1iT5BX-0000Ve-Na
 for usrp-users@lists.ettus.com; Fri, 08 Nov 2019 09:24:23 -0500
Received: by mail-io1-f42.google.com with SMTP id v17so5447315iol.12
 for <usrp-users@lists.ettus.com>; Fri, 08 Nov 2019 06:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9p6FWvcQR//Chm0+5twhKELd0PrUnOlns9ruycTN8tM=;
 b=tctZiT2aCGmvcMQD5wEVAgM2MtVzL++y2yqzrK1izjVVme+R+HZr35YTOiSUM8HIxM
 +7QSjynPxsX9VU4+HT1b8TjZeVm0AJm1KJ/amxIF+Y/3kVjP6RZUJyfqliGGXbgiIQjS
 g73x/pEkwkc4H5q7z6j/ss1X7NqrE7UxwmH8YGwLhtPe2m1XDkjsrB4M1VxU6mISthS6
 fTPmR95NFJ3Wylq3feZPtKT4PuSue6cQdSn6/2wiwgSXgB4vO+UmF6tUKV5oiCv29Ekb
 yHYVPrOCiVsFO7+pEcCYCVLbuj56w1qiFayuxkvAcjo7baR6WIohhI+N+yjA7pps701C
 3VpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9p6FWvcQR//Chm0+5twhKELd0PrUnOlns9ruycTN8tM=;
 b=R3Qk86usBFUROAarBxFv8cSZwnzt+musu59coiI95fYYF3u7jhgvS4r/EU6dqNSAdG
 gm/Bxcj9jPS84fz1V+FyxuhzmuDI9xNkga/C1b7pD3SlAVhyyCvmul0OJYGyy0o8riMZ
 FFWs6ObgeETeTHZW0U3onbvXWKbAz74sWAni5aLdU0eU4PPtUQdNZUc/idnaGDcItxPW
 Bl3fm9Iu4h/QzlH5kw/+yrkTx89KJXcXZi6SL2wPipL0/s6a6IQlGNxeWA6OoH1glLx4
 mGFiMdnOanfpQQAe03i7cdkJwd0pnryOiGervXLMAVj6b2/NuMwcwphVrDow4Q/zgeAR
 vR+Q==
X-Gm-Message-State: APjAAAVEFXDAA3aPR2b/TIenxtnf5fOOQsLe+dVcPPCkqhMtBmb+DNJ/
 DLkhSfQe8TRi+bWAg36/WsqjSN5isCRpeepZ30pQDifT
X-Google-Smtp-Source: APXvYqx3mG2j0zfdBCZ/B6uXicOd9CNIC46U2hbDWOMD/2xeJZ1fwM0aakXPr405BWk3DDgrJtR8YQZ/RwGPBv1JNjw=
X-Received: by 2002:a02:878b:: with SMTP id t11mr11501558jai.20.1573223022437; 
 Fri, 08 Nov 2019 06:23:42 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 8 Nov 2019 09:23:22 -0500
Message-ID: <CAEyq4NcZj_YeMe19pEPs1VrYCECwhMdFuSqE-+BgiQDmfcQNFw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] reinitializing N310 from MPM shell
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
From: Samuel Berhanu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Samuel Berhanu <samberhanu@gmail.com>
Content-Type: multipart/mixed; boundary="===============1042046378442729035=="
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

--===============1042046378442729035==
Content-Type: multipart/alternative; boundary="00000000000067aec50596d68776"

--00000000000067aec50596d68776
Content-Type: text/plain; charset="UTF-8"

Hello all,
I was trying to reissue a daughterboard reset/reinitilzation for the N310
from MPM (I know at the uhd software stack there is force_reinit=1 argument
that does this but can't use this right now).

I tried to use the "init_dboards" command but was not sure what the
argument that I need to pass into it. Maybe someone has tried to use the
function before?

I tried using the reset_mgr function and got error:

spidev spi0.2: SPI transfer timed out
spidev spi0.0: SPI transfer timed out

I also tried to restart the daemon (usrp-hwd.service) and got the same
error.
It looks like once a wrong bit file is loaded, I have now had to resort to
power-cycling the device to be able to get clocks up and running. I would
think the "init_dboards" function should do the trick but don't know  the
arguments to pass.
Any help is appreciated!
-sam

--00000000000067aec50596d68776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,<br></div><div>I was trying to reissue a da=
ughterboard reset/reinitilzation for the N310 from MPM (I know at the uhd s=
oftware stack there is force_reinit=3D1 argument that does this but can&#39=
;t use this right now).=C2=A0</div><div><br></div><div>I tried to use the &=
quot;init_dboards&quot; command but was not sure what the argument that I n=
eed to pass into it. Maybe someone has tried to use the function before?</d=
iv><div><br></div><div>I tried using the reset_mgr function and got error:<=
/div><div><br></div><div>spidev spi0.2: SPI transfer timed out</div><div>sp=
idev spi0.0: SPI transfer timed out</div><div><br></div><div>I also tried t=
o restart the daemon (usrp-hwd.service) and got the same error.</div><div>I=
t looks like once a wrong bit file is loaded, I have now had to resort to p=
ower-cycling the device to be able to get clocks up and running. I would th=
ink the &quot;init_dboards&quot; function should do the trick but don&#39;t=
 know=C2=A0 the arguments to pass.</div><div>Any help is appreciated! <br><=
/div><div>-sam<br></div></div>

--00000000000067aec50596d68776--


--===============1042046378442729035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1042046378442729035==--

