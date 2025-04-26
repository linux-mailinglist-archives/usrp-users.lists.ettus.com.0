Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0A8A9D6CB
	for <lists+usrp-users@lfdr.de>; Sat, 26 Apr 2025 02:51:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AF3938633C
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 20:50:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745628659; bh=j/7ZVVQzZ76/X03az3BhrNHBDEPbREc2h5n3q6FNMUU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=L9Dkzr7dGw+eTkMEruL5MpJVpApHf/KWBedQ6ZT9RVxjXnzPNgCqcz1laV0lTg70t
	 8tGLkOLb8bwBFTi8JyBmOjJ2cFmtOZZitJpplBG0zqhzjGcdcOM/nD+g9gDFkbUxgr
	 carWJctyLpoX8VXY7jKByVIRAkXhJxsU4W7Eww/vfNbm8gLMLmn9Egx1UX1/ZY4gGl
	 qe1GxUtIrX9R45jrAnKYtLHskPZlJU7eFh+hBuM+Du50PonfeDUfs2Ep0UVYG2uPqC
	 w7D9JoO7b/wY8yKp2UiRd0aU2vwWgaQdZvEZWj5ewSXRayFKRGp25NXx8dbvwD9Oo2
	 IWOAix8zlGB6w==
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E9995386130
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 20:50:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b22wp3Y0";
	dkim-atps=neutral
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3cfce97a3d9so13238975ab.2
        for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 17:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745628638; x=1746233438; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rXEIYhYgRuMtAe2EnTpg0sow43B+xsHuSIGyw48wG+E=;
        b=b22wp3Y0qti17WB9tt8ZAa7rBr7tRMb995syKCkf+qI0lyCZC0vCDoRJc9t+/WR8VE
         5pjfHCh5cfDxKAt4ne57NbqEbfsF+qfuQP+iLTfEwyW8lEWouLuh23St4KDFnlcwymXd
         xEUsjXnbkDN6xpzo9+E0K5KLUCDJXOI5+g79zvC0vlPakWs4Y3JstqF2VTOgFmEFudlo
         tYJPxeZ5KkvbkinIJXExzsIiwxWoU2rkr22IjekP7Im/1aEeKm2tS2E70weDVquA1mK0
         fOpCb6fFT6Cdc9zKo3LUvGAPwBplxT7dLcAVjqz8xZAC5HQiX6/mimMra6S1HP3uyuBH
         VoOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745628638; x=1746233438;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rXEIYhYgRuMtAe2EnTpg0sow43B+xsHuSIGyw48wG+E=;
        b=Udl90+lym2baWKDbokL/y+8sY43JGT42YMZSrDbAl+mGHm91AUDgP/tygd7JG83zxE
         EcS31rbYZX5NdW5Mr1NhtK9tSVO4uuGmxg9PRZYfT+9DRslyLv1kcFvmR4Ry7SEA+tnq
         9xZ2r2fpDFQ+8JxzyDFAiUkGEhSCa++ccqYgUoynXWWJZKZoKgwDmsf6RmYhFZzzoUiU
         +1ciTlMnfXo9BJLxRAZtK34/lhvz24UH5wm72fyrY/6KNbIYjdCk7nVfW+YpCg5BCqrf
         PF/VlOVuNE1xwnxB7dCtQHOEwSxUkzun96Igw7OO5ric+R/kXx5cxnu5d2Ofum4DGa1R
         TqcA==
X-Gm-Message-State: AOJu0YyPSQzO1gIn7f6uZzBopC11jm8JiAxyD0EZEd157B5Bp/Gqxp7X
	nmcOL9OrRgQYQ4n2lwSo2tKRolt460VZPI3cOtKlpgxuSqfVBe1BIDgqkYqOBLTi6Hk2GpIW8SF
	9xKWomDbDhILydCaTin+ypm2mXAPg3cl/
X-Gm-Gg: ASbGncvD0dao7c2wq1zKNyEMDXBIaeIxvMAzbhxgmTeVqpe0u9MaRFsTtNj1i74KLGp
	xOfDOKQg3DowZYy9Te7dk7lvoa+tkx9DCvfINyPNVTqT9LtHDOPGRXIcWsAUyqktA/Qgsa2peRe
	3nFE/+VV5Ld3E6EGKd
X-Google-Smtp-Source: AGHT+IGLqYfdDwYu+69UasXxLh0AN4JbBzMxl4aQNpRU4FCfbgLBl/HaU6rHLADIb/RhrZL1niZdS4hUTyig6yvbN2o=
X-Received: by 2002:a05:6e02:188e:b0:3d0:47cf:869c with SMTP id
 e9e14a558f8ab-3d942e403f7mr15086165ab.19.1745628638273; Fri, 25 Apr 2025
 17:50:38 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 26 Apr 2025 03:50:27 +0300
X-Gm-Features: ATxdqUGiEK-t2cS_yubF-2vzGhbdXPFckljRB05YWLxeYY62a6yO0oj88MwZyJY
Message-ID: <CAAxXO2G+q1LtJVVQyQt6at2QNh7PfVrrZhHvZauB8QEipF+w6w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: M5Z4FR2A2YLEPHQA3NNNCH6XXV67OL2H
X-Message-ID-Hash: M5Z4FR2A2YLEPHQA3NNNCH6XXV67OL2H
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NIC suggestion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5Z4FR2A2YLEPHQA3NNNCH6XXV67OL2H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8978348624129762659=="

--===============8978348624129762659==
Content-Type: multipart/alternative; boundary="000000000000e4eafd0633a3d686"

--000000000000e4eafd0633a3d686
Content-Type: text/plain; charset="UTF-8"

Hello,

I need to buy a new NIC. What would you suggest?
The one I use is an old Mellanox 10 Gbs, before the Connect-4 series.
It can only do 1996 S/s, need 19960 (10x more) to work with latest uhd.
Using Ubuntu 24.04 and uhd 4.6.0

On a related question. it seems that the streamer doesn't crash anymore
when receiving less than MAXSPS samples, instead it reads 0:(
This was due to the sse2 code not aligned in convert.
I change my stream args to cpu_format=sc16, otw=sc16, so no conversion
required.
Streamer still doesn't read anything. Is there a reason for it?


TIA
Nikos

--000000000000e4eafd0633a3d686
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hel=
lo,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">I need to buy a new N=
IC. What would you suggest?</div><div class=3D"gmail_default" style=3D"font=
-size:small">The one I use is an old Mellanox 10 Gbs, before the Connect-4 =
series.</div><div class=3D"gmail_default" style=3D"font-size:small">It can =
only do 1996 S/s, need 19960 (10x more) to work with latest uhd.</div><div =
class=3D"gmail_default" style=3D"font-size:small">Using Ubuntu 24.04 and uh=
d 4.6.0</div><div class=3D"gmail_default" style=3D"font-size:small"><br></d=
iv><div class=3D"gmail_default" style=3D"font-size:small">On a related ques=
tion. it seems that the streamer doesn&#39;t crash anymore</div><div class=
=3D"gmail_default" style=3D"font-size:small">when receiving less than MAXSP=
S samples, instead it reads 0:(</div><div class=3D"gmail_default" style=3D"=
font-size:small">This was due to the sse2 code not aligned in convert.</div=
><div class=3D"gmail_default" style=3D"font-size:small">I change my stream =
args to cpu_format=3Dsc16, otw=3Dsc16, so no conversion required.</div><div=
 class=3D"gmail_default" style=3D"font-size:small">Streamer still doesn&#39=
;t read anything. Is there a reason for it?</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:small">=
Nikos</div></div>

--000000000000e4eafd0633a3d686--

--===============8978348624129762659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8978348624129762659==--
