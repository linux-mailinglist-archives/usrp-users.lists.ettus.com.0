Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAAA231E52
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jul 2020 14:15:38 +0200 (CEST)
Received: from [::1] (port=38560 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0kzd-0003lf-Fu; Wed, 29 Jul 2020 08:15:33 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:46115)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <zh.heng96@gmail.com>) id 1k0kza-0003cO-3G
 for usrp-users@lists.ettus.com; Wed, 29 Jul 2020 08:15:30 -0400
Received: by mail-ot1-f51.google.com with SMTP id v6so6537570ota.13
 for <usrp-users@lists.ettus.com>; Wed, 29 Jul 2020 05:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3itkOg96GPxC97ixygM+YgYcAmXGC46dWtIdQr93bH4=;
 b=m18+wr2xXxG0o6zx4x1k/u/lacJzbp3oi8zbMYr7pImTH5sADbgoyUgJ60aZrZREwb
 RBzUfX2BFaE/3NyrRUrPpbXuEo9ES3a9vfBPwtuFPk8J3BLikQR0oZaZRlhE+lSAEWD8
 PIQK/ZkBcv2fppBQBytIA1VF1Wlj3baPJh7qN1maT3WoeiuOVDNkG5Z10tHCCblCTmyE
 gT/BCOK/gcSelETYAGlx0gGhabRYs23/svKIMJZVcJ/2EOWMWOkgEYI3PucSpQrA4+/j
 OYF9dL2cvoAkpRq3LS3Z+Vx72qCBA9HNcL7hs1sNsx5WQycK9CTU7+XfiVGCKVHn2C6b
 46yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3itkOg96GPxC97ixygM+YgYcAmXGC46dWtIdQr93bH4=;
 b=QdhjAoCyFgBrbrg/QYfAdyTHjIciYWFjr7RvtQP2+SD4hmzJmSdfqbDVnsYctKXasY
 kundFjc04A4pyV3IDISSUOrigtOmYN/+az9vXmEAbAcT+XzjWLM0Z4nkChsKvBeRCZLF
 6JK+9Ivxp+y0aeUo4e8E0L0XH9LUK6kxHyQDGPooRNkydk7+zvV9449s6oa+PNP0syto
 f7UHvOyfSX3iZjpfVPAtO/GUhNJR7KbSDtbi6WLaMPQrgREOfa04h13qTsWXnl8G+gti
 HwrJhL1zd4MzsHHayZZWd1Rq3WZt5J3zBeMoA8tC/TxnGA3d59HREAWQ8yFOqgnTppcT
 Cd6A==
X-Gm-Message-State: AOAM533LlnX7qqvO4B+bPnYlbglX3yhoiojqPOzri9mJTPmHJe52T1C1
 WcsO0U/QuzLRsKgmviIKcjBtDRkJwCYoha5KPHFuzT4q
X-Google-Smtp-Source: ABdhPJwjyUWg9l9qxzANTzdjtymM4DoVQ7emp0pQJa7gY30I/HqGSxpIv7k0dO7Rm76+mFrGy2vQ4YECSe1O/sZf3v4=
X-Received: by 2002:a9d:6c54:: with SMTP id g20mr28586526otq.120.1596024889156; 
 Wed, 29 Jul 2020 05:14:49 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 29 Jul 2020 20:14:37 +0800
Message-ID: <CAAM_mTRyRd2B7x0ab+K4hT+O+FSWhz-kOsdUGd-ZkZtDZkgKrg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] SFP port1 of USRP N310 does not work
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
From: Heng Zhang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Heng Zhang <zh.heng96@gmail.com>
Content-Type: multipart/mixed; boundary="===============5191142216738183040=="
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

--===============5191142216738183040==
Content-Type: multipart/alternative; boundary="0000000000009229a105ab93806c"

--0000000000009229a105ab93806c
Content-Type: text/plain; charset="UTF-8"

Dear community,

I follow this guide
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide  and
now I can connect to N310 by RJ45 port. And I also can connect to SFP
port0. However, when I  try to use SFP port1, it does not work. I found
that the green LED above SFP port 1 does not even illuminate after
connecting the PC to it. The network interface configuration of PC is shown
as follows

enp1s0    Link encap:Ethernet  HWaddr d4:5d:64:9c:d1:86
          inet addr:192.168.20.1  Bcast:192.168.20.255  Mask:255.255.255.0
          inet6 addr: fe80::3ac5:ee40:457b:3554/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1
          RX packets:1311 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1937 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:191173 (191.1 KB)  TX bytes:249297 (249.2 KB)

How can I use 10 Gb SFP port1? Any advice would be appreciated.

Regards,
Heng

--0000000000009229a105ab93806c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear community,<div><br></div><div><span style=3D"font-fam=
ily:Arial;font-size:14px">I follow this guide=C2=A0</span><a href=3D"https:=
//kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide" target=3D"_b=
lank" style=3D"color:rgb(6,73,119);font-family:Arial;font-size:14px">https:=
//kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide</a><span styl=
e=3D"font-family:Arial;font-size:14px">=C2=A0 and now I can connect to N310=
 by RJ45 port. And I also can connect to SFP port0. However, when I=C2=A0 t=
ry to use SFP port1, it does not work. I found that the green LED above SFP=
 port 1 does not even illuminate after connecting the PC to it. The network=
 interface configuration of PC is shown as follows</span></div><div><span s=
tyle=3D"font-family:Arial;font-size:14px"><br></span></div><div>enp1s0 =C2=
=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr d4:5d:64:9c:d1:86 =C2=A0<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.20.1 =C2=A0Bcast:192.168.=
20.255 =C2=A0Mask:255.255.255.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6=
 addr: fe80::3ac5:ee40:457b:3554/64 Scope:Link<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 UP BROADCAST RUNNING MULTICAST =C2=A0MTU:9000 =C2=A0Metric:1<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:1311 errors:0 dropped:0 overr=
uns:0 frame:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:1937 errors:=
0 dropped:0 overruns:0 carrier:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 coll=
isions:0 txqueuelen:1000 <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:19=
1173 (191.1 KB) =C2=A0TX bytes:249297 (249.2 KB)<span style=3D"font-family:=
Arial;font-size:14px"><br></span></div><div><span style=3D"font-family:Aria=
l;font-size:14px"><br></span></div><div><font color=3D"#000000" face=3D"Luc=
ida Sans Unicode, Lucida Grande, sans-serif"><span style=3D"font-size:14px"=
>How can I use 10 Gb SFP port1? Any advice would be appreciated.</span></fo=
nt></div><div><font color=3D"#000000" face=3D"Lucida Sans Unicode, Lucida G=
rande, sans-serif"><span style=3D"font-size:14px"><br></span></font></div><=
div><font color=3D"#000000" face=3D"Lucida Sans Unicode, Lucida Grande, san=
s-serif"><span style=3D"font-size:14px">Regards,</span></font></div><div><f=
ont color=3D"#000000" face=3D"Lucida Sans Unicode, Lucida Grande, sans-seri=
f"><span style=3D"font-size:14px">Heng</span></font></div></div>

--0000000000009229a105ab93806c--


--===============5191142216738183040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5191142216738183040==--

