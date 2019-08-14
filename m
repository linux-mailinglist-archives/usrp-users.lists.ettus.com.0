Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB588D488
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 15:22:50 +0200 (CEST)
Received: from [::1] (port=33594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxtEl-0001KL-Ml; Wed, 14 Aug 2019 09:22:47 -0400
Received: from mail-lf1-f42.google.com ([209.85.167.42]:33965)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <erivelton.thalesgroup@gmail.com>)
 id 1hxtEi-0001BR-4H
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 09:22:44 -0400
Received: by mail-lf1-f42.google.com with SMTP id b29so72069488lfq.1
 for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2019 06:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=E4NjC6vznqPxvmMiy0UjQ/gt8wGE1/XaPj/CeKAod8c=;
 b=dAuE4NbvCfuSaT7WtxDM9AE9DQr5JldC2x1fxf++ZrUerXZWf9BvNRXjhB7yQ6sq/y
 aNGi4r3HmWc2QoDyD0hd3pvub31VlaOkNprx5g6DD8DMYtKZsm73guTiDWPqI0R5rBJr
 5oiMibvur1gt4jp45kYOYlWhUIWqy+5OJp1O7IZTWleCBWBk9XW99cPHVKoH/VVMX4Oe
 +32/elFnqYeU63c4tWfJeWTazjqoKJNqIP8qCbbnU+/fY04W3TijmQeKqp+25hV4i8OJ
 eyRBN1ne69W9iQTJ668858GwsiqDIHSd5PMjAcSukCslPngnui3XmRz+3MLwseWc8HAw
 SVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=E4NjC6vznqPxvmMiy0UjQ/gt8wGE1/XaPj/CeKAod8c=;
 b=N4AVt6ozwWNzjYHNJ4x7VzdlTAa1XYaq4umuOUJeBOcXjB9t3cRhctu1Grb2cs6xS9
 Y3w1JP37JmKtCfXOeDWR+NwKw2Pa+XNO0/LqEhs/ypLKWf90ZEikP/E1scPwgJSyMN4N
 mjal3f8hmb6nYvvAfWQjeQARSOhz4Nq9+aRpdvFekIx4pIYJMwUeu9/cA9LbUDyLN5Hm
 XZevor5GcBsnZl54bjbBeHSzxJopT4Uc8ExYL2rH3TFhppknVyUEdCnEaPzUVAVEixJb
 OhYe4mEVO12FqjEzsxEV+HwwrRHqJLG817sqUkxWKBq9EoZ9DkGkNBG9G23KIADqK0Mc
 iE3A==
X-Gm-Message-State: APjAAAUPnxOs07t42ZeuA0+Yr7w5lyAXJOApBtvOJZYqMSeTbNXiEGck
 mHXCTILudxqT1JptXgENW/6ZjYy78zUBIm0tj1URAt7S
X-Google-Smtp-Source: APXvYqwVD0hk3KAgcuYXrpZdc1Az6p11Yz6cHIQsdzKBs1cYWc2ddLUtJpx9tIq5H+zq/psR36YXEVoJS7JBOakeigU=
X-Received: by 2002:ac2:5506:: with SMTP id j6mr26533873lfk.144.1565788922428; 
 Wed, 14 Aug 2019 06:22:02 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 14 Aug 2019 10:19:53 -0300
Message-ID: <CAGBdiiZjdEKO85ruYi=nh5Du0+b7JQCYqPWgVRPKzTm72r5FAg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Setting Attenuation Value N310
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
From: Erivelton Castro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erivelton Castro <erivelton.thalesgroup@gmail.com>
Content-Type: multipart/mixed; boundary="===============5620714096423129864=="
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

--===============5620714096423129864==
Content-Type: multipart/alternative; boundary="00000000000083c098059013a48b"

--00000000000083c098059013a48b
Content-Type: text/plain; charset="UTF-8"

Hello,

The daughter board has attenuation variable (PE43704) on N310 with 31.75dB
Range and 0.25dB Resolution. I would like to change this value to increase
input signal on AD9371.

Could help me anybody?

Best regards

Erivelton

--00000000000083c098059013a48b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>The daughter board ha=
s attenuation variable (PE43704) on N310 with 31.75dB Range and 0.25dB Reso=
lution. I would like to change this value to increase input signal on AD937=
1.</div><div><br></div><div>Could help me anybody?</div><div><br></div><div=
>Best regards</div><div><br></div><div>Erivelton<br></div></div>

--00000000000083c098059013a48b--


--===============5620714096423129864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5620714096423129864==--

