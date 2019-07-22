Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B1C70B95
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2019 23:39:05 +0200 (CEST)
Received: from [::1] (port=40616 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpg1K-0004Pm-V4; Mon, 22 Jul 2019 17:38:58 -0400
Received: from mail-lf1-f41.google.com ([209.85.167.41]:36045)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <m2wagner@eng.ucsd.edu>)
 id 1hpg1H-0004J1-61
 for usrp-users@lists.ettus.com; Mon, 22 Jul 2019 17:38:55 -0400
Received: by mail-lf1-f41.google.com with SMTP id q26so27785997lfc.3
 for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2019 14:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=m2Kg763vSRGD5qfyCEJ/eJQlLUclsrmzIDIQhFX2D5M=;
 b=OszBtvWc/tRKQoPx/mdQC6D9QSNM3FM6k9HhtIe2GHBO45v+1ugskJEGauQOuu7YP1
 95OPdyxa9FbanzrDQcU3RyeWSb4/w/9An3+47ePBy5w/UUb1TfncMk/BUfwtxoP59C+z
 ogefgjDq2143DJMGnbPjir/+oaXU437ayOXKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=m2Kg763vSRGD5qfyCEJ/eJQlLUclsrmzIDIQhFX2D5M=;
 b=WGl133NQk+DXzFdDmOFSAVsBczwB4SzZjkHso6Xn/6DEcVJES0BXogY0/oES6+SEe8
 vJ0UNG328lzXQrQBTv6MnEynTsUKuDfD+zEMKhjIUtQTOpJ6B6YzmL7k6l8D6QgHLv3e
 edq0NZ7hPDs6ZXJDopJytytQdGm8CBnvgnkg4EeIbAzWO13zxkw9u+uZkMpEVNekVjOY
 7p/rv+K0TfYVJRmM3IsCID9QhecmwlMjBiCr8zJqD2aV6NjDDcQ7khZziP+pgUvR3YiY
 egd55rt194vEh5/40GFQDeEydBsXN0/HB7tQSOtYl6tPfMSIOi4KXgGiGngSfquTSCln
 55Mg==
X-Gm-Message-State: APjAAAX/7iBiR17tP0lnpiyVPooRVdtQQNzmyvdXowy5u6hLJ5dVyUKJ
 CxYtabjZ7gwXupMVE+rSN95TGarDDxV/PnLu1zllBo1r+g0=
X-Google-Smtp-Source: APXvYqxhBrDjZG3zMtCw1CEUHD77ATI679FJCwd5v54uAR4Dqbz0v2Tesv6Mnq/I6NbuyDCNcqyaDm/eI8tgm9GUjBE=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr31284425lfm.104.1563831493361; 
 Mon, 22 Jul 2019 14:38:13 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 22 Jul 2019 14:38:02 -0700
Message-ID: <CALLKLAOx9WZBfOA7SbmyNO9-hpUySRCoU2cPr5+7-K+XXBx8tw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Digital TV Clock recovery using N310 and GNUradio
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
From: Mark Wagner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Wagner <m2wagner@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============3602602545309497151=="
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

--===============3602602545309497151==
Content-Type: multipart/alternative; boundary="000000000000a6950e058e4be4fa"

--000000000000a6950e058e4be4fa
Content-Type: text/plain; charset="UTF-8"

Hey all,

I'd like to recover the clock tone of a digital TV signal on one USRP N310
and use it as the clock input to another N310. Does anyone have experience
doing something like this? I could use some pointers.

-Mark

-- 
Mark Wagner
University of California San Diego
Electrical and Computer Engineering

--000000000000a6950e058e4be4fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey all,<div><br></div><div>I&#39;d like to recover the cl=
ock tone of a digital TV signal on one USRP N310 and use it as the clock in=
put to another N310. Does anyone have experience doing something like this?=
 I could use some pointers.</div><div><br></div><div>-Mark<br clear=3D"all"=
><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div><div>Mark Wagner<br></div>U=
niversity of California San Diego<br></div>Electrical and Computer Engineer=
ing<br>=C2=A0<br></div></div></div></div>

--000000000000a6950e058e4be4fa--


--===============3602602545309497151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3602602545309497151==--

