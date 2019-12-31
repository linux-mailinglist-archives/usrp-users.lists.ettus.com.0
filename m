Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 781E812DA31
	for <lists+usrp-users@lfdr.de>; Tue, 31 Dec 2019 17:12:57 +0100 (CET)
Received: from [::1] (port=58316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1imK8c-00074g-Pp; Tue, 31 Dec 2019 11:12:54 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:42533)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1imK8Y-00070t-U9
 for usrp-users@lists.ettus.com; Tue, 31 Dec 2019 11:12:50 -0500
Received: by mail-oi1-f175.google.com with SMTP id 18so11237716oin.9
 for <usrp-users@lists.ettus.com>; Tue, 31 Dec 2019 08:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GPANYMvG63q7FekgRlIC4ys9TT+seF7mEtogrvrtQWU=;
 b=BZUZoUKIndsDfJXqHy2LddnOaSZ/tHDrqOSQ3hIYY5JMdRTeyv3aEFxoMbISIIiYxu
 +NoKJFVFk2bdbjpzFTW+22iSsfdY9RKVqHcDfQ6/sbE71JXY+Q3o4XxIAPfieHwIedp1
 wC/ZM1+Pg2EZpOYvmKTKYN8zpe9HPzMUpFiXiFK9gEkusO5BUEwt147KDhb886LSKMkv
 5v2OhrG/KeH5kHl33jqkpud4vwmXrtc54/ISrUVLGjYngfNNmyo/KkrHv11qeH1mjl3X
 BQmNGD7AOUGkYzTEx60/kQtBqjE0iqkirzHpBoO7gnfKJWM0KAJmVJECZZN662VXV8hj
 rnrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GPANYMvG63q7FekgRlIC4ys9TT+seF7mEtogrvrtQWU=;
 b=ZlcWo3qt7Yix+OSsu4hxYdQhHYoKN3jo5JBl3DacU/utx9CjbhbOv2RVFzs285GMjk
 /cTEyKHTGGidl+RDaH1AVn7F4TnyWIGCvrs0HhojfM5CLMWvhNkLr/RBazvA2/0p9hJ0
 eza8Fw7OKoCns6ZnlqTQsMtSgWU3lNP1X/mPrWAi5TV96jKX/m+GxFuQ/FXGU3V9155H
 hfbN6XtiOgvef2eZuUyUP+xI3/LkLr7noedm7Mq4G932baQBqZzsUD7DDs5ihj5CCqR+
 xlvRGlNGJwg6DejJDQiOoKr5XQCZfL8eoN5inBotU3VRFgUQXycWkkrW4dcYeZs8hW0n
 LrWg==
X-Gm-Message-State: APjAAAWeGjCer+OXz6kCd7ZYSXllUlr/LRap0wYzBAFTHyvcBlU/z33Y
 +f2M1OhceYfd4NU5ikyXED2GRNrPJkL/dcDNxZFIzEln
X-Google-Smtp-Source: APXvYqx6qasDxy0cpyZFzim+wXmydfXvB6K1upoG7SOzxm82HQiF13PZI7su5UJF60qbdCd9exdVY/49yUp/71YpTEc=
X-Received: by 2002:aca:c786:: with SMTP id x128mr878082oif.2.1577808729761;
 Tue, 31 Dec 2019 08:12:09 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 31 Dec 2019 18:11:59 +0200
Message-ID: <CAKA0MUjQQgobKGFzfjDZUsZmF5UNM75NUNewAk9ojr07V5jP8A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Adding my custom RX module inside the FPGA (USRP
 b205mini)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Content-Type: multipart/mixed; boundary="===============0677220107297390753=="
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

--===============0677220107297390753==
Content-Type: multipart/alternative; boundary="000000000000dc6c5c059b023827"

--000000000000dc6c5c059b023827
Content-Type: text/plain; charset="UTF-8"

Dear all,

I have written a simple RX logic in Verilog and now I want to integrate it
inside the FPGA. I have the following questions:

1) What is the correct way to connect it after the DDC (so that I will get
1:1 samples with those from GNURadio)?
2) How should I expose it to the UHD driver? I read the radio_legacy.v
example about the custom UHD registers but I couldn't get how to specify
the register address mapping.

Thank you in advance,
Varban

--000000000000dc6c5c059b023827
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear all,</div><div><br></div><div>I have written a s=
imple RX logic in Verilog and now I want to integrate it inside the FPGA. I=
 have the following questions:</div><div>=C2=A0</div><div>1) What is the co=
rrect way to connect it after the DDC (so that I will get 1:1 samples with =
those from GNURadio)?</div><div>2) How should I expose it to the UHD driver=
? I read the radio_legacy.v example about the custom UHD registers but I co=
uldn&#39;t get how to specify the register address mapping.</div><div><br><=
/div><div>Thank you in advance,</div><div>Varban<br></div></div>

--000000000000dc6c5c059b023827--


--===============0677220107297390753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0677220107297390753==--

