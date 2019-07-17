Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2ED6BB38
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 13:16:44 +0200 (CEST)
Received: from [::1] (port=59510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnhvJ-0003Ce-0V; Wed, 17 Jul 2019 07:16:37 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:37103)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hnhvF-00037S-Tr
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 07:16:33 -0400
Received: by mail-ot1-f50.google.com with SMTP id s20so24584718otp.4
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 04:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=b17Dad37oy3jo2WbDYJNDJ6MLg7x59tpJfQb71bp0k8=;
 b=SHopvm3Tbffnx7kRjVkPVrQL41KLeJZBDjQ9cPm3Q+1JnBGUd2WsRBItyZrvCe43+L
 QaNCw3kV2qDQxNPgkcvNSDBhalvD6kcrQEK+zsEMve4wqsspC49Nja1MFS6Oen1mJJj3
 KD8pAMZW3W9C43dP7nmozkDrO5JnrzZobsKy1BN7lZR0Dsu3wVXzsb5Q98UcGHKbsZWH
 zl4iOYwt2krKg1mgeKAQiMfSIHV7pCY/OfMM4lCGMkeYuxAfukVucGaBDGuN/Ha0rU2Z
 kY006ApAv3JuUl5YOfvMnymCl1202hqyb8/UEPSec4ZrMhxMYfJ5gV4xkaZLryZAaqp7
 FZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=b17Dad37oy3jo2WbDYJNDJ6MLg7x59tpJfQb71bp0k8=;
 b=K+6miRRCoGi67N1xU1JjTyrig6LES6kbry+47a88SdT2navcCiHqAbLtKiG2mX++qx
 rGZF7NNH7GfEqr73IWLv3kmdvw4FcS/leNXIuCb/j2UVVtew7sTpdKtD2pyssw0G9MTr
 wu/WJQdxhjtELEc4fCh/pFpFkmKq6mszy42Ppp9pBWfXveZ8ZR841d6h8SUfnfFoIrgr
 1PceMdSrxW76rFEGCQu5n516OTboVer7pUdIrJm7TiNQr7ZicvgYP2ZdBA1BYRpaANuk
 XC/f5UpVc8dKUpl3SsV5qWm3m5Keoi2O0IRjTCW3cEz7YsMmEVM7WHEg3YXnc1sDjQVW
 omPQ==
X-Gm-Message-State: APjAAAVt6X4/f3FW106OpPI5ez0t+0ejyQ5Vp+7kcHUydnMrU2XEpaWz
 DjCuuNH8SWB5Lmi/1RCsMxMxrpoXYiUCsAkdSrX9WNWQ
X-Google-Smtp-Source: APXvYqyYRGM4ZKtU2E/uHvQLju5cS6kq2CT/9frWFhVBDNKXuClwi64NSq64xL4G3BcxkXzy9ZpWEpTcDltuQzq62EY=
X-Received: by 2002:a9d:65ca:: with SMTP id z10mr29600749oth.334.1563362152978; 
 Wed, 17 Jul 2019 04:15:52 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 17 Jul 2019 13:15:42 +0200
Message-ID: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Sequence Errors N200
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Content-Type: multipart/mixed; boundary="===============0159512718087469196=="
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

--===============0159512718087469196==
Content-Type: multipart/alternative; boundary="000000000000c89e6b058dde9dfa"

--000000000000c89e6b058dde9dfa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying transmit using Ettus N200 (call it A) but getting this error
message on the console

SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS..................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
................................

I looked for it on google and found these links
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495=
.html
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/03283=
8.html

Both the links  suggested problem related to the gigabit port. Then I
connected another USRP N200 (call it B) to the same laptop and tried
transmitting using that as there were no such sequence error messages.

This makes me believe there is some problem with the first USRP, i.e., A.

Further I tried with different versions of UHD 3.11, UHD 3.15.. but its the
same.

Receive is good only transmit is throwing error.

Not only with UHD, even in labview, when I transmit, I see nothing coming
out from the N200 (A).

I am using SBXv2 daughter board.

Any clue!

Regards
--=20
--=20
Sumit kumar
Postdoc
SnT, Luxembourg

--000000000000c89e6b058dde9dfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div>I am trying transmit using Ettus N200 (call =
it A) but getting this error message on the console=C2=A0</div><div><br></d=
iv><div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS..........................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
........................................<br></div><div><br></div><div>I loo=
ked for it on google and found these links=C2=A0</div><div><a href=3D"http:=
//lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html=
">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/0374=
95.html</a><br></div><div><a href=3D"http://lists.ettus.com/pipermail/usrp-=
users_lists.ettus.com/2012-July/032838.html">http://lists.ettus.com/piperma=
il/usrp-users_lists.ettus.com/2012-July/032838.html</a><br></div><div><br><=
/div><div>Both the links=C2=A0 suggested problem related to the gigabit por=
t. Then I connected another USRP N200 (call it B) to the same laptop and tr=
ied transmitting using that as there were no such sequence error messages.<=
/div><div><br></div><div>This makes me believe there is some problem with t=
he first USRP, i.e., A.=C2=A0<br></div><div><br></div><div>Further I tried =
with different versions of UHD 3.11, UHD 3.15.. but its the same.=C2=A0</di=
v><div><br></div><div>Receive is good only transmit is throwing error.=C2=
=A0</div><div><br></div><div>Not only with UHD, even in labview, when I tra=
nsmit, I see nothing coming out from the N200 (A).=C2=A0</div><div><br></di=
v><div>I am using SBXv2 daughter board.=C2=A0</div><div><br></div><div>Any =
clue!</div><div><br></div><div>Regards</div><div>-- <br><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-size:12.8=
px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px"><d=
iv style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit kumar<br>Postdoc=
</div><div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT, Luxembour=
g</div><div style=3D"color:rgb(136,136,136);font-size:12.8px"><br></div><br=
></div></div></div></div></div></div>

--000000000000c89e6b058dde9dfa--


--===============0159512718087469196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0159512718087469196==--

