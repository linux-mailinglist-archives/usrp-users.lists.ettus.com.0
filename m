Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDE3258254
	for <lists+usrp-users@lfdr.de>; Mon, 31 Aug 2020 22:17:10 +0200 (CEST)
Received: from [::1] (port=37028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCqEl-0007tR-25; Mon, 31 Aug 2020 16:17:07 -0400
Received: from mail-yb1-f176.google.com ([209.85.219.176]:46483)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1kCqEh-0007ki-3X
 for USRP-users@lists.ettus.com; Mon, 31 Aug 2020 16:17:03 -0400
Received: by mail-yb1-f176.google.com with SMTP id x10so4735262ybj.13
 for <USRP-users@lists.ettus.com>; Mon, 31 Aug 2020 13:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=V6XKfAQHu/zOGkOb6vqNGzfsvsPvNwSq8+JtWb/qHNs=;
 b=Eyof/mAqXPV6JfXO9nZ3URUjG3gQkqNEgJoSbiIPdgjORU+u0cjHToTCar3zvLfvnZ
 YBeLJlwnxZw8j5/Yp4x61I8QUp8vThw3xYCfmY4Dmpj+EYlXLoTA8Ay+UJWZWpycfpp7
 zHK6OgNHXlJzPVVCHC0y5f46X4jHgyBWSuDyhZPr0MZRmOsURh1fR19SCvKTiZLp3HiQ
 HVQgEpFeDXwKexIG7thbhajbeuaR27inNSz+af2WuUJVLpqMWkS2lhYCuIPuvXDW/DwV
 4FEIe4FeWJM1gglVFB3g4r61y4BlVLSIs1/TgmO7qrOk1cA3bxYBRx7b74rWkLvE5Z7u
 gNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=V6XKfAQHu/zOGkOb6vqNGzfsvsPvNwSq8+JtWb/qHNs=;
 b=eBHzfIlBt4BUC5R/Np79nuKLuBQ3trDVe0rBwxjIptnOsGoS9bdcGtElgaZ7NBksHu
 mrqToMyuzDZfhA4VZ2u4J0EQRYf0zakbjlsdSLrld/0lwRQcSEUlaL23u2SyxZFSQO2k
 CAL0UuhGSpEoz6TtMPgQOKgmDneJZLpePs9hp9RUroZ2llTdVRe2QPYrIBtQkIZcpfaY
 /KznvDReoP+nJ2pJHwGgeK/1hwqLOfRy2PW2Ck+5Rhhx0Eusv4D5pWtXiWQIvnB+t9JS
 TobF43xHS3nzgsLspUnCWf6vPbPkvj/pBYmY0OGjHQn3koM9TaOFXMtua48dterYNXUc
 IPgw==
X-Gm-Message-State: AOAM531/84QA3adxZJYfkcj8G3cimQsBOf3v2NxsnP9nXMPGyLG7ADWj
 nIWpLH/Smh2lVvx46WPV09gVnaPAb7jVAHj7gprJDiv159zIXA==
X-Google-Smtp-Source: ABdhPJwwHvyBVjjcB7k2KyjsNxdNQFjveFAMG2LqYl7CJTIL+bFY3kgZkX6iX4WB4rY6VQXNJBP2U/RaknzsWxqJFUU=
X-Received: by 2002:a25:3b53:: with SMTP id i80mr4695182yba.465.1598904982262; 
 Mon, 31 Aug 2020 13:16:22 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 31 Aug 2020 16:16:11 -0400
Message-ID: <CAN6+Rzn7K2ejfOEHbv0GDQKC5bGuXhmNu34_2y169i2mVGV2kA@mail.gmail.com>
To: usrp-users <USRP-users@lists.ettus.com>
Subject: [USRP-users] GNUradio-companion blocks location
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
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Content-Type: multipart/mixed; boundary="===============2512666720772307532=="
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

--===============2512666720772307532==
Content-Type: multipart/alternative; boundary="0000000000007f55fc05ae3213cf"

--0000000000007f55fc05ae3213cf
Content-Type: text/plain; charset="UTF-8"

Hello all,

I have installed uhd, gr-ettus and gnuradio-comanion installed.

This how I have set up the env variables in my /.bashrc file

export LD_LIBRARY_PATH=~/user_opt/uhd-3.15.LTS/lib
export PATH=$PATH:~/user_opt/uhd-3.15.LTS/bin
export PYTHONPATH=~/user_opt/uhd-3.15.LTS/lib/python

my gnuradio is installed in ( not sure how it got there):
/usr/local/share$

How does gnuradio-companion know its block path directory?
I have commented  the env variables in my /.bashrc  and gnuradio-comapnion
still finds the blocks as follows::

Block paths:
/home/rfnocdev/.grc_gnuradio
/usr/local/share/gnuradio/grc/blocks

Sorry if this is the wrong forum.
____________
Cherif Chibane

--0000000000007f55fc05ae3213cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div>=C2=A0<br></div><div>I have inst=
alled uhd, gr-ettus and gnuradio-comanion installed.</div><div><br></div><d=
iv>This how I have set up the env variables in my /.bashrc file</div><div><=
br></div><div>export LD_LIBRARY_PATH=3D~/user_opt/uhd-3.15.LTS/lib<br>expor=
t PATH=3D$PATH:~/user_opt/uhd-3.15.LTS/bin<br>export PYTHONPATH=3D~/user_op=
t/uhd-3.15.LTS/lib/python</div><div><br></div><div>my gnuradio is installed=
 in ( not sure how it got there): <br></div><div>/usr/local/share$=C2=A0</d=
iv><div><br></div><div>How does gnuradio-companion know its block path dire=
ctory?</div><div> I have commented=C2=A0 the env variables in my /.bashrc=
=C2=A0 and gnuradio-comapnion still finds the blocks as follows::</div><div=
><br></div><div>Block paths:<br>	/home/rfnocdev/.grc_gnuradio<br>	/usr/loca=
l/share/gnuradio/grc/blocks</div><div><br></div><div>Sorry if this is the w=
rong forum.<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>____________</div>C=
herif Chibane</div></div></div></div></div>

--0000000000007f55fc05ae3213cf--


--===============2512666720772307532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2512666720772307532==--

