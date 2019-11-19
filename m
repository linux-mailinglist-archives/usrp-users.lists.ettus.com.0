Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E93101D7B
	for <lists+usrp-users@lfdr.de>; Tue, 19 Nov 2019 09:31:27 +0100 (CET)
Received: from [::1] (port=37210 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWyus-0002jd-Du; Tue, 19 Nov 2019 03:31:18 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:43600)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <vapham.inria@gmail.com>)
 id 1iWyuo-0002eB-F1
 for usrp-users@lists.ettus.com; Tue, 19 Nov 2019 03:31:14 -0500
Received: by mail-qk1-f173.google.com with SMTP id z23so17023222qkj.10
 for <usrp-users@lists.ettus.com>; Tue, 19 Nov 2019 00:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZWqYl9dwL660ghQ1nR7hbtMrrSjiRAY9BWgWXQaPANk=;
 b=IEoH4mAHHXKBVmnSHjCQnkO9iGhIFmw5C+SHxuglh/vWWMgI/J3agSe0S/u8Wk2yuo
 4PyOpFcPcHqZ1XtveFljAHe++7d5jkbSaJ4UdrBrWhUvt86I79KNajSLL0ejvARcCpPP
 zOP5VGQ/5YmS9SUalzlwoAQc3oVGbxvrWGjx7o3dfY4XaaozjJOlcYAJaissKd6uB/gS
 nsGEqkuhxoI29neHlbUEtyCc4Q62okmIU6EB0bXJjmLwNvwgKrw480BHHev400+M2ciA
 oIY238oVhjznj3BwHhyzd6oW6jJqkRmEVGXaNOs1UHeIjHOah62TAFhyxFfSTAcYqbEh
 AtyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZWqYl9dwL660ghQ1nR7hbtMrrSjiRAY9BWgWXQaPANk=;
 b=JXEz6Hlo0HZHn7RNDzd6GT7g444egkqYZcrFNKlQXGBH22ugmr7PFcNHmOtYzB1vqX
 7Frf1GyU8JemenNiMZWekwFOw1hL8b7qDfPVTx7ko3mh83SFd1rzkP5ntzlnPNCizRY4
 qrwBDauDqz6tEibswV24YOfqxvxNPJ2iTnRFujRCX6o0NsaUEKwWef0/6ENmoJQBGhwo
 EY58JuE5iuG5H/yuKovNDHcd3vtqFYfjKKTq5cGgvKONiFahn95spBMNLxJzXF+eAYY+
 K07I4YLqVpKQzPn/TWpLSrMkcsl8SDnkz864B7KpGbTk2hoTbpQArdoZKL/D7l1qJfXE
 DhFg==
X-Gm-Message-State: APjAAAX2QuVX5zeAC8kkx6+X7ZkpFXJwlQT26gorlulhF1J6pmyfqz+J
 v8f1s7SoUBYCGETiP3CFlzUfp5r0zsApItdesUpqMvjXf3w=
X-Google-Smtp-Source: APXvYqwVLULN24XWFP87RImYTSfg9nGlWcubsH1D/2t5oQkCy6NsFbY2m7tvZLg78UYzJXoz+nH59oSQJHbebu7TOes=
X-Received: by 2002:a37:470b:: with SMTP id u11mr28570646qka.172.1574152233569; 
 Tue, 19 Nov 2019 00:30:33 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 19 Nov 2019 09:30:22 +0100
Message-ID: <CAGLe3RkBxeptvX30xOZ17s+Gx9XZJgReY-YEtzfkwPEt7QxRmA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] usrp-b200 radar
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
From: Van-Dung PHAM via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Van-Dung PHAM <vapham.inria@gmail.com>
Content-Type: multipart/mixed; boundary="===============3180068882920280817=="
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

--===============3180068882920280817==
Content-Type: multipart/alternative; boundary="000000000000b4539c0597aee04c"

--000000000000b4539c0597aee04c
Content-Type: text/plain; charset="UTF-8"

Dear all

I have just tried to make a radar using just only usrp B200 (standalone) by
following this
https://www.scivision.co/usrp-b200-fmcw-radar-measurements/
I saw there is a lot of resources in GitHub that I can not understand. They
make me confused that I don't know where can I start?
https://github.com/scivision/piradar/

Is there someone in the same topic?

I would appreciate
Thank you

--000000000000b4539c0597aee04c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all<div><br></div><div>I have just tried to make a ra=
dar using just only usrp B200 (standalone) by following this=C2=A0</div><di=
v><a href=3D"https://www.scivision.co/usrp-b200-fmcw-radar-measurements/">h=
ttps://www.scivision.co/usrp-b200-fmcw-radar-measurements/</a><br></div><di=
v>I saw there is a lot of resources in GitHub that I can not understand. Th=
ey make me confused that I don&#39;t know where can I start?</div><div><a h=
ref=3D"https://github.com/scivision/piradar/">https://github.com/scivision/=
piradar/</a><br></div><div><br></div><div>Is there someone in the same topi=
c?</div><div><br></div><div>I would appreciate=C2=A0<br></div><div>Thank yo=
u</div></div>

--000000000000b4539c0597aee04c--


--===============3180068882920280817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3180068882920280817==--

