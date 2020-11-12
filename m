Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9152B0CDF
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 19:41:41 +0100 (CET)
Received: from [::1] (port=60002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdHXQ-0000dv-8y; Thu, 12 Nov 2020 13:41:40 -0500
Received: from mail-lf1-f54.google.com ([209.85.167.54]:42970)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kdHXM-0000UR-9j
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 13:41:36 -0500
Received: by mail-lf1-f54.google.com with SMTP id u18so9900286lfd.9
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 10:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=H4gO9REdm/0n35cYZo3Clg5wwO7NndymUuqTe/huaHo=;
 b=QwCZMXP9UBiRmgTqaplBNGRipNopJ5LeC059DVlEFTD6lASZX/uSSYfYua0V3Qmb5v
 U2xd8F1T94C3xT7Bm8VPKpEXwYo8NEGUU4ZFPUsjnuUECNiV2GPWqYYQQ7nB1Jbcr90u
 CQ7RL/pHPTlyOd9gxIYz+EIWoH1/ECW2ZNfN+CXAeCG1F9moSTAPL5jAKyvVch7D4lE1
 3BDmMxUHrGRZr2oxE4Lmzob8b/pUfcawMtkuzrbE+ejm4/VbhFBUjau1bDdeuxr+UkEm
 5xt5fdGHcwi3WwpBSb4KqWWh1PFUNU69KN8RcQN7+pXHyTST9pImZoNVjND8c9PwP3lA
 hccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=H4gO9REdm/0n35cYZo3Clg5wwO7NndymUuqTe/huaHo=;
 b=gvnXMs2Cx8y/PhwMl1rjCA7I3Sm2u2c+Az6W353d7nFl0KGB+rruPQMD8n24WboTex
 T/suKBOF+4gRKT5YCyrK3kVS9jNn3UJpcx4fuCzzF4yyrNhpcaYdWCakkhgUIs7BEsFP
 j/TEpUzOzVGSvlZDDDgY212q0zbHWVQxwscueNXVAvleP8VCOT+KT77gBKL/cPsxP69n
 gc/BAwLfdYXY/V0xMCi1ezYrvUtZZUP1p4O/4vmlLST43PknTX1cO+1UwmsOYFHQaE2r
 dTHORmKPqAsSgkFeMu/zH9m0lD9f9y4PKY1T21jBZN60Q67RdLYtFQAZ6BKXQPvT8mKw
 XXsA==
X-Gm-Message-State: AOAM532YQv1Ug1GX0ViPMEV5hq8uWSMoJzTYY6lh0IIVtaXH8T3kvCMY
 Hs1z6m6Zq9Y1nRX7nM4APuvWnL/JUSKVEABng7RRLrPiWpw=
X-Google-Smtp-Source: ABdhPJxFmJDYBq6UX8sRTIQJ7b15uNEsEmXseo/F6iNlTy1IcBDmwgR9AH8Vhq+6zB+UFZ+BjeECiTMsiEmt4JA9lYc=
X-Received: by 2002:a19:8001:: with SMTP id b1mr286071lfd.353.1605206454630;
 Thu, 12 Nov 2020 10:40:54 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 12 Nov 2020 11:40:44 -0700
Message-ID: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Rx time sychoronization
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============7085765617294927302=="
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

--===============7085765617294927302==
Content-Type: multipart/alternative; boundary="00000000000084fbf305b3ed40c9"

--00000000000084fbf305b3ed40c9
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a USRP x310 with 2 UBX daughterboards and GPSDO.

I want to use this as two receivers by the two RX in the two daugherboards
respectively, and receive the signal at the same time. Do I have to
synchronize them or they will automatically start to receive the signal at
the same time?

Thank you,

Xiang Ma


-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--00000000000084fbf305b3ed40c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a USRP x310 with 2 UBX daugh=
terboards and GPSDO.</div><div><br></div><div>I want to use this as two rec=
eivers by the two RX in the two daugherboards respectively, and receive the=
 signal at the same time. Do I have to synchronize them or they will automa=
tically=C2=A0start to receive the signal at the same time?</div><div><br></=
div><div>Thank you,</div><div><br></div><div>Xiang Ma</div><div><br clear=
=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new =
roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=
=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</=
span><div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">Col=
lege of Engineering</font></div><div><font color=3D"#444444">Utah State Uni=
versity</font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#4=
44444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17=
,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div=
></div></div></div>

--00000000000084fbf305b3ed40c9--


--===============7085765617294927302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7085765617294927302==--

