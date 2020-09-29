Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC4527BD82
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 09:00:55 +0200 (CEST)
Received: from [::1] (port=46316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kN9d4-0007Vx-KX; Tue, 29 Sep 2020 03:00:50 -0400
Received: from mail-yb1-f198.google.com ([209.85.219.198]:44774)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1kN9d0-0007RV-Dj
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 03:00:46 -0400
Received: by mail-yb1-f198.google.com with SMTP id d143so3803534ybh.11
 for <usrp-users@lists.ettus.com>; Tue, 29 Sep 2020 00:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=owoY4t6LYI54r4mL2v3iT3JIvsdYkqe0C47KXpDN3RQ=;
 b=rTFum7rEz9A3CPit/kATHu43MgayBTgcj5s/R5y0SigyOcw/xH7cRSVFkQINoig650
 OjkIY4ifSr3ku6JvWxN3ZP0LMXcJnGPP1/akHzGunaw55ALRUdQXg8BjR+tX2imDnNJS
 S+xgWun9Td9i26b0jJ6ylEmGfDU8o/TnVmkXXaUfq0WBTuUbsPRz9q0nQj37fvlDjv78
 95RBpuGg2yS41pKqVHJIzmpd9qneBj86HkrFXAP2m9GtSIKXFXDaATGVgnUVuYRoi4nv
 1nrSs8ul1T7NwfI8ubzzKfYjTqwUt5O/Jq7YUzc56MJbnCrmg2solrG/gST87PtFf9Dp
 upZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=owoY4t6LYI54r4mL2v3iT3JIvsdYkqe0C47KXpDN3RQ=;
 b=Qx7qnnvwaDNBRdjWzOdE/o4VNcUelM3XqjiJzNgGrK1ed3gxB84/HDwF3TUynGeyzx
 S8laC81U/4/TLv8XvDL0iAIbqvfoC5b2zYEbtFiAJrnHWmrrQzR9SgbCraI3SwKKldKr
 e7Foj8wwUfMRaHAXwu9mcVi/mk5dxsmyAri5RHUHLzd2096JDgsbusbPlf/Fl24Ea//W
 FK1mF1GGM6gPPqDf1dc+REEWS7Xes3+yyLYciIcVJJcGfVTJZeeOFZin/vko+cWqqDvh
 cXEEwAffQni0vl7Qhxrva4Pv2GBbw5cU0aqGgRYe0gtOu3zeRZ+wYkBIVTt/vt78Abhl
 ylwA==
X-Gm-Message-State: AOAM530pqQr7zci1JEnWnjAbm3xxaBKq/KQ014TFNonRvmr35jHZDV+D
 ZtlbIPxNxJ/NiIT09GFWU8+CMxu4gA6VkfHomhobvFmyx1XeiKkf
X-Google-Smtp-Source: ABdhPJzsdCV7IdCvZtI7sDrV9KdDUOzbfk90XA3Hj1TxAxU/jS3bwly0sv41LzLZI76siNMBkBMK6+k5hwpqZ/MXm0w=
X-Received: by 2002:a25:e811:: with SMTP id k17mr3782948ybd.401.1601362805237; 
 Tue, 29 Sep 2020 00:00:05 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 29 Sep 2020 15:59:28 +0900
Message-ID: <CABfZwccqNPk6R8gcedYJ+jeM=oBLxO0vfmXkd9yB4h6fAxW4RQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP Compatible hardware
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
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============2372887713800495085=="
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

--===============2372887713800495085==
Content-Type: multipart/alternative; boundary="00000000000029bca005b06e5583"

--00000000000029bca005b06e5583
Content-Type: text/plain; charset="UTF-8"

Hi.
Do you know the USRP Compatible hardwares as USRP-LW X310, USRP-LW B205mini
and others by Luowave Electronics in China.
It seems to be an unlicensed hardware by Ettus Research. isn't it?

Luo wave
https://www.luowave.com/en/

Luo wave store
https://www.aliexpress.com/store/4998166

Mikio

--00000000000029bca005b06e5583
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi.<br>Do you know the USRP Compatible hardwares as U=
SRP-LW X310, USRP-LW B205mini and others by Luowave Electronics in China.<b=
r>It seems to be=C2=A0an unlicensed hardware by Ettus Research. isn&#39;t i=
t?<br><br>Luo wave<br><a href=3D"https://www.luowave.com/en/">https://www.l=
uowave.com/en/</a><br><br>Luo wave store<br><a href=3D"https://www.aliexpre=
ss.com/store/4998166">https://www.aliexpress.com/store/4998166</a>=C2=A0=C2=
=A0<br><br></div><div>Mikio</div><div dir=3D"ltr" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div><br>=
</div></div></div></div></div></div></div>

--00000000000029bca005b06e5583--


--===============2372887713800495085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2372887713800495085==--

