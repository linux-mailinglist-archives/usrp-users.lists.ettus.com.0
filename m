Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8DA1149E9
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 00:33:03 +0100 (CET)
Received: from [::1] (port=35516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1id0cH-0006v0-KR; Thu, 05 Dec 2019 18:33:01 -0500
Received: from mail-lf1-f68.google.com ([209.85.167.68]:39163)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1id0cE-0006nL-Ik
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 18:32:58 -0500
Received: by mail-lf1-f68.google.com with SMTP id c9so3304846lfi.6
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 15:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=HB/fpw1/NPK+qTHFtWKHxrwBB23xyh6rSy5et1wym00=;
 b=f//lRbsPvQ30GezUXpe7wDrN6UJ4d3tHLbloBYETHzrFLik+IZ2JoayjE7kOvFMKZu
 +sYBQ83ri+Bwra9fvBA6meORec+ItyzzO5VXore1EknCXP0qgnzhpxLn+iE5hgDPVJUi
 UG6QcbKUuk3d6AGpu/JWhww30JjAY32cyixKV1WZvb0+LNG4XCq6JXi7Ma9F0Uf2zmCm
 JjzxQst0M1UehkdN+tvK7qgmIoqFhNj1AlpeRjGGz67j7CMfCqOh8+aBZ898jcgjQEaq
 Ut+D1wtyS2xFCCEAJ79TSbbi5mQeqe8bdfWArIY3dR72JrtgjGHyxy78aARlDyhWH0NZ
 LxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=HB/fpw1/NPK+qTHFtWKHxrwBB23xyh6rSy5et1wym00=;
 b=EApXtQFRudNCKXng+woybhHRVAzD+s0TnOHd5y3fLYam5lFNngM17zor3+r9G0YTVa
 PwSVNn5qL5iovjpRikRw6oNS1Hn2eJg2JGPXOlw3C8VlFxoPvCW4jMAgPSTgXOHA+1fM
 5S3JcCABnPa1+YVZXgp83ZweU18pTCGf+UiVHU6l1lFmPz3q2PJlCZtRHCJyogtI3yfn
 +WmUZ7mkOm1/ajDAN2Rp3X93WbqPKP7o5d6W/UNj07D3Jj0QMzgsNjQ/PZT4Pv8q6xWi
 7HsnfDEw3YHc/E1wx4o9T5sHtG6kq5ZpdnFU0ai1rWFHKlO4rvlTjJ7EUfHlSqdtO7xi
 R3kg==
X-Gm-Message-State: APjAAAWVgnAd1XKS+FethyA/YTZaQ8JsXZa+1rdKcn/2iBRrWD4nicdX
 5lUsjae5+LuT85j6/p3CfOUR8VfI05EP9N70TFL+uu7U5a3BrWzt
X-Google-Smtp-Source: APXvYqx6hK8D5okniOrA2Y+3YEYxw6ZLQ4yjUvWLx4R1I5pmhjGWOUlJVyP8gwWzwrwAlQbvtkH5tJe1C2hTjJaJ21c=
X-Received: by 2002:ac2:43a7:: with SMTP id t7mr5984086lfl.125.1575588735948; 
 Thu, 05 Dec 2019 15:32:15 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 5 Dec 2019 18:31:41 -0500
Message-ID: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Libuhd issues - "uhd_find_devices: error while loading
 shared libraries"
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Content-Type: multipart/mixed; boundary="===============2146966361033282302=="
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

--===============2146966361033282302==
Content-Type: multipart/alternative; boundary="000000000000eb1cd10598fd5626"

--000000000000eb1cd10598fd5626
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I have an Intel NUC running Ubuntu 16.04 and a low latency kernel which I
use for OAI LTE software on top of UHD.

After updating my system repositories, UHD broke somehow with the following
result:

nuc8-3@nuc83-NUC8i7BEH:~$ uhd_find_devices
uhd_find_devices: error while loading shared libraries: libuhd.so.3.14.1:
cannot open shared object file: No such file or directory

Attempting to manually install the version cited in the error gives me this:

Unpacking libuhd3.14.1:amd64 (3.14.1.1-0ubuntu1~trusty1) ...
dpkg: error processing archive
/var/cache/apt/archives/libuhd3.14.1_3.14.1.1-0ubuntu1~trusty1_amd64.deb
(--unpack):
 trying to overwrite '/usr/share/uhd/rfnoc/blocks/keep_one_in_n.xml', which
is also in package libuhd3.14.0:amd64 3.14.0.0-0ubuntu1~trusty1
dpkg-deb: error: subprocess paste was killed by signal (Broken pipe)
Errors were encountered while processing:
 /var/cache/apt/archives/libuhd3.14.1_3.14.1.1-0ubuntu1~trusty1_amd64.deb
E: Sub-process /usr/bin/dpkg returned an error code (1)


Would anyone have any recommendations on what to do to make sure I have the
right version of everything present?

--000000000000eb1cd10598fd5626
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I have an In=
tel NUC running Ubuntu 16.04 and a low latency kernel which I use for OAI L=
TE software on top of UHD.<br></div><div><br></div><div>After updating my s=
ystem repositories, UHD broke somehow with the following result:</div><div>=
<br></div><div style=3D"margin-left:40px"><span style=3D"font-family:monosp=
ace">nuc8-3@nuc83-NUC8i7BEH:~$ uhd_find_devices <br>uhd_find_devices: error=
 while loading shared libraries: libuhd.so.3.14.1: cannot open shared objec=
t file: No such file or directory</span></div><div style=3D"margin-left:40p=
x"><br></div><div>Attempting to manually install the version cited in the e=
rror gives me this:</div><div><br></div><div style=3D"margin-left:40px"><sp=
an style=3D"font-family:monospace">Unpacking libuhd3.14.1:amd64 (3.14.1.1-0=
ubuntu1~trusty1) ...<br>dpkg: error processing archive /var/cache/apt/archi=
ves/libuhd3.14.1_3.14.1.1-0ubuntu1~trusty1_amd64.deb (--unpack):<br>=C2=A0t=
rying to overwrite &#39;/usr/share/uhd/rfnoc/blocks/keep_one_in_n.xml&#39;,=
 which is also in package libuhd3.14.0:amd64 3.14.0.0-0ubuntu1~trusty1<br>d=
pkg-deb: error: subprocess paste was killed by signal (Broken pipe)<br>Erro=
rs were encountered while processing:<br>=C2=A0/var/cache/apt/archives/libu=
hd3.14.1_3.14.1.1-0ubuntu1~trusty1_amd64.deb<br>E: Sub-process /usr/bin/dpk=
g returned an error code (1)</span></div><div><br></div><div><br></div><div=
>Would anyone have any recommendations on what to do to make sure I have th=
e right version of everything present?</div><div><br></div></div>

--000000000000eb1cd10598fd5626--


--===============2146966361033282302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2146966361033282302==--

