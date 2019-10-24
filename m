Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AB0E3C38
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 21:42:25 +0200 (CEST)
Received: from [::1] (port=42950 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNizz-0001PW-4M; Thu, 24 Oct 2019 15:42:19 -0400
Received: from mail-lf1-f50.google.com ([209.85.167.50]:42380)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <m2wagner@eng.ucsd.edu>)
 id 1iNizr-0001Ik-WC
 for usrp-users@lists.ettus.com; Thu, 24 Oct 2019 15:42:12 -0400
Received: by mail-lf1-f50.google.com with SMTP id z12so20093487lfj.9
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 12:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=3DvHPBi2BedTzsYiVdzcGQQZYFwh3FjN98ZMAb9Cfmo=;
 b=CI4hZekIjOru+Y12OrB4MmZOFp3UUDv4UK4gSBIhbFTVZWGmGY8LStQu4QOgQlT9cC
 WBUI+x2d+jboNvgzu4nx5oiR2qSbdGMbEa+z85LqN0bb49klsQdK/QyZHa2U+24fKBVr
 UQa7uCcShgMY2x2X44pCKAmh57Ox8f3dsMSHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3DvHPBi2BedTzsYiVdzcGQQZYFwh3FjN98ZMAb9Cfmo=;
 b=KsJQQlWi5sxbw/CkARQPpi5Zd3Wgnyfi+uKUoge2R9IjCq1O54D7hBIiN3N6Gst1FC
 pMcPvhfJDyz/Tn6zN06dj1SwH6y+JGw6j/UZUOcTbE1l6eVAfRo1N9ho+VyfLbfB9HfS
 LccHF6nIPdRzc2JfaYTinsWifU+yAEthI6r6iD4/MULBhyNByXvSUdiJDnGrSCMz7Imo
 SnXJn/4Cd2TEZPnajCFwdp3hXj1pVg7oH+920dRxwiw5Grw621TMaqDL0xkrnkUKMK8P
 sZ73LEeg12rbC42Df4oKhz9ceIDumCooQeyv6oC5eohcen5gEV1l318BqnLsaiBumTze
 cGsQ==
X-Gm-Message-State: APjAAAV8rxMKBIsll5srKHTBbFwWJnHMPCSPYySADphsvDA/KjJtuWRO
 fEUx06RSekn8kg3zytnZRtEAdhewFXecIgWxYI8YHAQQwXw=
X-Google-Smtp-Source: APXvYqw7DX2RYjw0dFS5CJc7JHrz3hdTTsuz8dX6+SwOf/Yh8mnoaTjEJApm/WQXN1RB0ImjM/wnjWSVt/WWS9z87eI=
X-Received: by 2002:a19:9146:: with SMTP id y6mr18970140lfj.11.1571946090094; 
 Thu, 24 Oct 2019 12:41:30 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 24 Oct 2019 12:41:19 -0700
Message-ID: <CALLKLANcwo6NGC8TcKbWc_Un1qSgRx9qUkTcm1FkxBRc05qEcQ@mail.gmail.com>
To: Usrp Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Error when trying to run USRP N310s using external LO
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
Content-Type: multipart/mixed; boundary="===============7840473776372867542=="
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

--===============7840473776372867542==
Content-Type: multipart/alternative; boundary="0000000000004e8ced0595ad387d"

--0000000000004e8ced0595ad387d
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm currently trying to run a set of USRP N310s all using the same external
LO, but I seem to be getting this error

"[ERROR] [0/Radio_1] RX LO lowband does not support setting source to
external"

which will repeat for all the radios. I tried looking online for the source
of the error but no dice. It seems like the radios are ignoring the LO I'm
giving them and using their internal ones instead. Any thoughts?

-Mark

-- 
Mark Wagner
University of California San Diego
Electrical and Computer Engineering

--0000000000004e8ced0595ad387d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m curren=
tly trying to run a set of USRP N310s all using the same external LO, but I=
 seem to be getting this error=C2=A0</div><div>=C2=A0<br></div><div><div>&q=
uot;[ERROR] [0/Radio_1] RX LO lowband does not support setting source to ex=
ternal&quot;</div><div><br></div><div>which will repeat for all the radios.=
 I tried looking online for the source of the error but no dice. It seems l=
ike the radios are ignoring the LO I&#39;m giving them and using their inte=
rnal ones instead. Any thoughts?</div></div><div><br></div><div>-Mark</div>=
<div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"><div><div>Mark Wagner<br></div>University of California San Diego<=
br></div>Electrical and Computer Engineering<br>=C2=A0<br></div></div></div=
></div>

--0000000000004e8ced0595ad387d--


--===============7840473776372867542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7840473776372867542==--

