Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E022FEB4
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 03:06:44 +0200 (CEST)
Received: from [::1] (port=49882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0E4h-0003Vz-Ql; Mon, 27 Jul 2020 21:06:35 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:33254)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1k0E4d-0003NG-Vh
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 21:06:32 -0400
Received: by mail-ed1-f45.google.com with SMTP id v22so2739496edy.0
 for <usrp-users@lists.ettus.com>; Mon, 27 Jul 2020 18:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=wDHvA7DaW7oRyVbS9zdqVox/cpXLTmq9AsDV1SahNuI=;
 b=iuOxXKd5WekVBRSYPNMDuZeJEnz0rgHG+ENzWI6YgjQ67ybWi+q2flVtKyYI2c/vSR
 J/UL/3rOqHUR+C0zBDYEsvQbXeSXM0bqaodNm2Q+NX0iob8p9TojfrpN/to38HCKb9Yw
 ZGSqVqDKlDEU4POTUyI0rpx2cKYWuRlqWhYog+3VWQ1oDzJVpiFOZyPPN/rygP9tcjJ8
 hX3CsDPJNcZRc+3BnuDeeal2PEgPNLKSAAIPHcWdgxu7hFoFjOzcoEM4tNznZwsAwjvK
 Kn7BT1G25ory+ca+o3Hqa+os/eC9LFffsAKekhn5hkZZK65BvscIrarxL2ynRzHzPolH
 nXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wDHvA7DaW7oRyVbS9zdqVox/cpXLTmq9AsDV1SahNuI=;
 b=i73MSePamaUQSpybH40Mj+9ex7vQB9s3rAYlU54Z4ZTH99A9pEvFrWGqk1BhW4v/G0
 u/s9BuefS9108L8MqKWkdhFzbSQ6HnXq1QqltWwXi+1KtC8IT3SoTD4lPBx9IRPGykqI
 cv/x/N5nespB+0oyt25ItF1UvA0lRb4LPodKlYLRx1d1tUOpWrz3SeSw3CbdNRMuTOil
 SnvN8haMWL8EUEcJgps5T6QhwvyJbPkpVdfzHu4SiiFcQQxuUUSPLKi1abXbgxuqbICC
 MoaKHr+p4r+b7mr5iH4R+2kOv9n5lgjIG7EMAoQS6eaB0dYjQ1vBZyBywZnV6IF+xvOh
 NaKg==
X-Gm-Message-State: AOAM532hrQEEvTo90F6TC7JMt6sJA8xgbJdD/BRcFYSjN9vyrQCohKtt
 0WDnaCDkmyZjVMU4ff+gMx8CfTvMBjcPWfeEwsoAww==
X-Google-Smtp-Source: ABdhPJwG1fxfVFX3kfPJmvWh0LMBdV0+W5m22wvT6p+bdlv6hZWakc2gWiYyMJhQVr8/BfRd5tphEC/o4BfdGk/d7VI=
X-Received: by 2002:aa7:d693:: with SMTP id d19mr24736036edr.317.1595898350478; 
 Mon, 27 Jul 2020 18:05:50 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 27 Jul 2020 19:05:37 -0600
Message-ID: <CAH2Hh71y=SwYu3-0OHcrmxn_PEpWJgzDA7pZu0bUbNBjEv05bg@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] B200 cannot output a sine wave
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============2599237957850383344=="
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

--===============2599237957850383344==
Content-Type: multipart/alternative; boundary="000000000000472a2205ab760a76"

--000000000000472a2205ab760a76
Content-Type: text/plain; charset="UTF-8"

Hello all,

I am trying to output a sine wave from a B200 using custom code, or the UHD
tx_waveform example. In either case, when I view the output on an o-scope,
there is not a pure sine wave. The output looks more triangular wave. I
have used this scope with other B200s and the same code to get a pure sine.
Is the radio damaged? Is there some sort of calibration required? I am
using UHD 3.15.0.

Thanks

--000000000000472a2205ab760a76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello all,<div dir=3D"auto"><br></div><div dir=3D"auto">I=
 am trying to output a sine wave from a B200 using custom code, or the UHD =
tx_waveform example. In either case, when I view the output on an o-scope, =
there is not a pure sine wave. The output looks more triangular wave. I hav=
e used this scope with other B200s and the same code to get a pure sine. Is=
 the radio damaged? Is there some sort of calibration required? I am using =
UHD 3.15.0.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks=
</div><div dir=3D"auto"><br></div></div>

--000000000000472a2205ab760a76--


--===============2599237957850383344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2599237957850383344==--

