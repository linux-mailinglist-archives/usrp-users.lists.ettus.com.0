Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E115273A7A
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 08:01:52 +0200 (CEST)
Received: from [::1] (port=50666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKbN5-0006IJ-5R; Tue, 22 Sep 2020 02:01:47 -0400
Received: from mail-wr1-f48.google.com ([209.85.221.48]:39661)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jayant17154@iiitd.ac.in>)
 id 1kKbMz-0006DL-5z
 for usrp-users@lists.ettus.com; Tue, 22 Sep 2020 02:01:41 -0400
Received: by mail-wr1-f48.google.com with SMTP id a17so15601386wrn.6
 for <usrp-users@lists.ettus.com>; Mon, 21 Sep 2020 23:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iiitd.ac.in; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=UEk6IYnwqA0qa9T+I4XTQIoOW9jqCQgQqio90idVDsY=;
 b=CR7YqG1QQh1oWkgfKLr40OwXVApst2wKwjKvJ1FmDbfGJG675uk07WCoXMMEQ9shGV
 5lc3Pb9Mg765/6o84v+7Qje1VPpclT6hL5/bgo+JV4mgZEwQzRzg1kz7lMRaQUMvoj+m
 X1q57Iu1YmDXJ3KIw3HnkzVQ1wLlc4BPpFLg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=UEk6IYnwqA0qa9T+I4XTQIoOW9jqCQgQqio90idVDsY=;
 b=YGnGjVzM8K09430T3PT3bObAPUzX8ozCjy73p3D3x3SKUDKRHzZZ2CnGWP5Wk8N3Fy
 pJEcjl7El4cpz8n0INS239QEGBSF9uQfNIJN5XNUV2A+3scemmMQJgijygKFGFqX8pvQ
 YsiL2rkLOv4jceIIBI+XD/fHqki23ljS6K1OSGDvryfclED1QlOr6yVHnvVRfAvaWuFw
 WuCefkHZ0Pal8JwY6BoPD/fE1jFQgSP3tR769eAqzLLRym9hCPZZsupKpMw1Kewzj9SS
 fYumwxHHHxaNidg1y32RSX7EaZwWOshtOhDVBcf9D+RYXQfyRKoiMXsgQIaqvW3FfG41
 6R0g==
X-Gm-Message-State: AOAM532xsafoURl4+vrE4nZXm1C7Qhl9mTLMNOaAeEWSTCZotSmz005k
 4kRp5IE+nMCf8STqF/eHzEFNNDMjjyK4D5+iXtPG0vS/LXQ=
X-Google-Smtp-Source: ABdhPJzzslEcxv35joEcM5Qonx5GhD+ajywJorXpAD2JxprNnbTq3DYZ9lDTvQHKzehZ81uZNXSg2tkHiOKny5acbEE=
X-Received: by 2002:adf:f082:: with SMTP id n2mr3278164wro.35.1600754459427;
 Mon, 21 Sep 2020 23:00:59 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Sep 2020 11:30:48 +0530
Message-ID: <CAKwrT9RfsWhU+70sBsC-dFCAxnB7FT=yNX885z4j3UbhRoHMSA@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC output format and channel output queries
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
From: Jayant Chhillar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jayant Chhillar <jayant17154@iiitd.ac.in>
Content-Type: multipart/mixed; boundary="===============6841905819870943286=="
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

--===============6841905819870943286==
Content-Type: multipart/alternative; boundary="000000000000ed55c405afe0b0de"

--000000000000ed55c405afe0b0de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,
I=E2=80=99m developing a RFNoC block to perform correlation operation which=
 outputs
a value between 0 and 1007. I=E2=80=99m not able to figure out how to get i=
nteger
output from the block at GNURadio side. I=E2=80=99ve tried defining the out=
put as
=E2=80=9Csc16=E2=80=9D in the block definition and carried out some bit man=
ipulations but
have only achieved partial success.

My other question is regarding timeout error. I believe this is more of a
warning than an error, if I=E2=80=99m right can we suppress this warning. A=
lso, can
this warning/error cause the channel to freeze or lock?

Finally is there any documentation on how to read the =E2=80=9Creadback=E2=
=80=9D registers
on the host side (GNURadio) ?

Thanks,
Jayant

--000000000000ed55c405afe0b0de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi everyone,</div><div dir=3D"auto">I=E2=80=99m developin=
g a RFNoC block to perform correlation operation which outputs a value betw=
een 0 and 1007. I=E2=80=99m not able to figure out how to get integer outpu=
t from the block at GNURadio side. I=E2=80=99ve tried defining the output a=
s =E2=80=9Csc16=E2=80=9D in the block definition and carried out some bit m=
anipulations but have only achieved partial success.=C2=A0</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">My other question is regarding timeout e=
rror. I believe this is more of a warning than an error, if I=E2=80=99m rig=
ht can we suppress this warning. Also, can this warning/error cause the cha=
nnel to freeze or lock?=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Finally is there any documentation on how to read the =E2=80=9Creadba=
ck=E2=80=9D registers on the host side (GNURadio) ?</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Jayant</div>

--000000000000ed55c405afe0b0de--


--===============6841905819870943286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6841905819870943286==--

