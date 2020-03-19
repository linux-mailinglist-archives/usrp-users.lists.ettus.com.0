Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA2C18BB3A
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 16:36:51 +0100 (CET)
Received: from [::1] (port=50512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jExE2-0005mn-29; Thu, 19 Mar 2020 11:36:50 -0400
Received: from mail-lj1-f176.google.com ([209.85.208.176]:41921)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <b4ss3k@gmail.com>) id 1jExDy-0005gF-Ii
 for USRP-users@lists.ettus.com; Thu, 19 Mar 2020 11:36:46 -0400
Received: by mail-lj1-f176.google.com with SMTP id o10so2982264ljc.8
 for <USRP-users@lists.ettus.com>; Thu, 19 Mar 2020 08:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=NyvhSmGq9WSd4JwXqhkfnf+NHzN05FPepFE44/3yoKE=;
 b=F+2XXcj+tsnVqZdw7sFsyzVy7CaayqAZ78eo8K2IBPVQyP1F/X2fk1wKSCRvdjxlVv
 YNUca7XPpgKhFJNC7lNQGYM7IpeJYP3EklGQ2U1SwuFyn5Y9WtQ0YlcuiKN58YAq+A33
 Y6m1b12NLP/oeVX66/25g806vRlH01jzZClNgV9Wz0DijoJqETOf6tvDGiNYXyjy2H2C
 ay3i6ir6fZWPQFzy7LlGgslOrOb8ddq5dj0vEWJKdDHo3LMD1Bxgk2Jg6gSYBs2/SiVZ
 gTCmgy7H0FZkR4v/IB714Lw8ESJtHqahT43M8L5aFkwJAzLo22jSQ+9c0vJIRsn1hvyL
 F5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NyvhSmGq9WSd4JwXqhkfnf+NHzN05FPepFE44/3yoKE=;
 b=JD5KQmXepO3MQJlnnx8uFg/aQfu3M3muQ7XS1lR9e2cz0jQMOGXJm8Cwkdq8Bp9ohb
 bi72KEQJYdKq9m1OAFLB7KsKcQIiqxCgfE4Ftth1uejXil7+dtXRjk5ct+h73JqkNo0r
 HZVRJc8DQUug9OZao4Mxij79GiIpW1x3+XCk3gLB2/GWkJabyBaQm+xIY3snNEXwFxlX
 khNxolFQR7FmCbFAoTC2yvluhYNPiVlXqt0GywNMZ95KpyT0G6ETs+c9jjWnpPLZpk/5
 N2VBQpf3OF9F1Kq+Mru3DguVwkhAIzeYLPm51b2p0Z+5SQbfh3ZargTKlgEvl1vD+PZY
 sQ1g==
X-Gm-Message-State: ANhLgQ0kj8iU+vLuIvyaJdJ7WQHoecrnhxTYfoJOeYFsk8EcgcMTpVrj
 0hrL7Zl/scuml191Auf3jO8mPAv9xaJOvxV+FHXtx/qq
X-Google-Smtp-Source: ADFU+vvZ2aB5moWe1GKjS0VnF7a7k/xNc+hUI77dWMgf/iT9jejjWgaFlusZ+hdbOymTypCRb6vl37w6a5FsQPQNEL0=
X-Received: by 2002:a2e:95c8:: with SMTP id y8mr2521073ljh.153.1584632164635; 
 Thu, 19 Mar 2020 08:36:04 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 11:35:53 -0400
Message-ID: <CACcka+344PO4uhAemdNLmEwGw+sGucMiXPuRkzFcY6ikwegU7g@mail.gmail.com>
To: USRP-users@lists.ettus.com, support@ettus.com
Subject: [USRP-users] UHD SSL Error
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
From: Basse Ang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Basse Ang <b4ss3k@gmail.com>
Content-Type: multipart/mixed; boundary="===============2286745541808954032=="
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

--===============2286745541808954032==
Content-Type: multipart/alternative; boundary="00000000000045d6f305a136ede1"

--00000000000045d6f305a136ede1
Content-Type: text/plain; charset="UTF-8"

Hi

just tried to install UHD into my ubuntu 14 hosts. doing for 2 months, I
always ended with this error:

oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py
[INFO] Images destination: /usr/share/uhd/images
[INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
Creating an empty one.
[ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510:
error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify
failed
You can run this again with the '--verbose' flag to see more information
If the problem persists, please email the output to: support@ettus.com
oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py --verbose
[INFO] Images destination: /usr/share/uhd/images
[INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
Creating an empty one.
[DEBUG] URLs to download:
usrp1/fpga-6bea23d/usrp1_b100_fw_default-g6bea23d.zip
x3xx/fpga-bb85bdff/x3xx_x310_fpga_default-gbb85bdff.zip
usrp2/fpga-6bea23d/usrp2_n210_fpga_default-g6bea23d.zip
n230/fpga-bb85bdff/n230_n230_fpga_default-gbb85bdff.zip
usrp1/fpga-6bea23d/usrp1_b100_fpga_default-g6bea23d.zip
b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip
usrp2/fpga-6bea23d/usrp2_n200_fpga_default-g6bea23d.zip
e3xx/fpga-bb85bdff/e3xx_e320_fpga_default-gbb85bdff.zip
n3xx/fpga-bb85bdff/n3xx_n310_fpga_default-gbb85bdff.zip
b2xx/fpga-bb85bdff/b2xx_b205mini_fpga_default-gbb85bdff.zip
x3xx/fpga-bb85bdff/x3xx_x300_fpga_default-gbb85bdff.zip
octoclock/uhd-14000041/octoclock_octoclock_fw_default-g14000041.zip
usrp2/fpga-6bea23d/usrp2_usrp2_fw_default-g6bea23d.zip
usrp2/fpga-6bea23d/usrp2_n200_fw_default-g6bea23d.zip
usrp2/fpga-6bea23d/usrp2_usrp2_fpga_default-g6bea23d.zip
b2xx/uhd-2bdad498/b2xx_common_fw_default-g2bdad498.zip
n3xx/fpga-bb85bdff/n3xx_n320_fpga_default-gbb85bdff.zip
b2xx/fpga-bb85bdff/b2xx_b200mini_fpga_default-gbb85bdff.zip
usrp1/fpga-6bea23d/usrp1_usrp1_fpga_default-g6bea23d.zip
usb/uhd-14000041/usb_common_windrv_default-g14000041.zip
usrp2/fpga-6bea23d/usrp2_n210_fw_default-g6bea23d.zip
n3xx/fpga-bb85bdff/n3xx_n300_fpga_default-gbb85bdff.zip
e3xx/fpga-bb85bdff/e3xx_e310_fpga_default-gbb85bdff.zip
b2xx/fpga-bb85bdff/b2xx_b210_fpga_default-gbb85bdff.zip
[ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510:
error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify
failed
You can run this again with the '--verbose' flag to see more information
If the problem persists, please email the output to: support@ettus.com
oai@oai:~$


I have already udate my certificate, but it does not help.

could anyone help me to figure out what should I do?

Thank you
Bass

--00000000000045d6f305a136ede1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi<br><br></div>just tried to instal=
l UHD into my ubuntu 14 hosts. doing for 2 months, I always ended with this=
 error:<br><br>oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py<br>[I=
NFO] Images destination: /usr/share/uhd/images<br>[INFO] No inventory file =
found at /usr/share/uhd/images/inventory.json. Creating an empty one.<br>[E=
RROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510: error=
:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify faile=
d<br>You can run this again with the &#39;--verbose&#39; flag to see more i=
nformation<br>If the problem persists, please email the output to: <a href=
=3D"mailto:support@ettus.com">support@ettus.com</a><br>oai@oai:~$ /usr/lib/=
uhd/utils/uhd_images_downloader.py --verbose<br>[INFO] Images destination: =
/usr/share/uhd/images<br>[INFO] No inventory file found at /usr/share/uhd/i=
mages/inventory.json. Creating an empty one.<br>[DEBUG] URLs to download:<b=
r>usrp1/fpga-6bea23d/usrp1_b100_fw_default-g6bea23d.zip<br>x3xx/fpga-bb85bd=
ff/x3xx_x310_fpga_default-gbb85bdff.zip<br>usrp2/fpga-6bea23d/usrp2_n210_fp=
ga_default-g6bea23d.zip<br>n230/fpga-bb85bdff/n230_n230_fpga_default-gbb85b=
dff.zip<br>usrp1/fpga-6bea23d/usrp1_b100_fpga_default-g6bea23d.zip<br>b2xx/=
fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip<br>usrp2/fpga-6bea23d/us=
rp2_n200_fpga_default-g6bea23d.zip<br>e3xx/fpga-bb85bdff/e3xx_e320_fpga_def=
ault-gbb85bdff.zip<br>n3xx/fpga-bb85bdff/n3xx_n310_fpga_default-gbb85bdff.z=
ip<br>b2xx/fpga-bb85bdff/b2xx_b205mini_fpga_default-gbb85bdff.zip<br>x3xx/f=
pga-bb85bdff/x3xx_x300_fpga_default-gbb85bdff.zip<br>octoclock/uhd-14000041=
/octoclock_octoclock_fw_default-g14000041.zip<br>usrp2/fpga-6bea23d/usrp2_u=
srp2_fw_default-g6bea23d.zip<br>usrp2/fpga-6bea23d/usrp2_n200_fw_default-g6=
bea23d.zip<br>usrp2/fpga-6bea23d/usrp2_usrp2_fpga_default-g6bea23d.zip<br>b=
2xx/uhd-2bdad498/b2xx_common_fw_default-g2bdad498.zip<br>n3xx/fpga-bb85bdff=
/n3xx_n320_fpga_default-gbb85bdff.zip<br>b2xx/fpga-bb85bdff/b2xx_b200mini_f=
pga_default-gbb85bdff.zip<br>usrp1/fpga-6bea23d/usrp1_usrp1_fpga_default-g6=
bea23d.zip<br>usb/uhd-14000041/usb_common_windrv_default-g14000041.zip<br>u=
srp2/fpga-6bea23d/usrp2_n210_fw_default-g6bea23d.zip<br>n3xx/fpga-bb85bdff/=
n3xx_n300_fpga_default-gbb85bdff.zip<br>e3xx/fpga-bb85bdff/e3xx_e310_fpga_d=
efault-gbb85bdff.zip<br>b2xx/fpga-bb85bdff/b2xx_b210_fpga_default-gbb85bdff=
.zip<br>[ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:=
510: error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate ve=
rify failed<br>You can run this again with the &#39;--verbose&#39; flag to =
see more information<br>If the problem persists, please email the output to=
: <a href=3D"mailto:support@ettus.com">support@ettus.com</a><br>oai@oai:~$ =
<br><br><br></div><div>I have already udate my certificate, but it does not=
 help.<br><br></div><div>could anyone help me to figure out what should I d=
o?<br><br></div><div>Thank you<br></div><div>Bass<br></div></div>

--00000000000045d6f305a136ede1--


--===============2286745541808954032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2286745541808954032==--

