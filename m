Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB131ABD0
	for <lists+usrp-users@lfdr.de>; Sun, 12 May 2019 12:35:03 +0200 (CEST)
Received: from [::1] (port=32930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPlom-0001sj-8T; Sun, 12 May 2019 06:34:56 -0400
Received: from mail-vs1-f52.google.com ([209.85.217.52]:40091)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <danielozer22@gmail.com>)
 id 1hPloE-0001kT-Dn
 for usrp-users@lists.ettus.com; Sun, 12 May 2019 06:34:52 -0400
Received: by mail-vs1-f52.google.com with SMTP id c24so6274401vsp.7
 for <usrp-users@lists.ettus.com>; Sun, 12 May 2019 03:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=VMTR8MtOuvvdCkDnmtRIvlBfWt1zeRfk8Z/fANOw3KI=;
 b=BSNqusvFkGSejh+xWq8G0tnvCf939UVdhyPNI5IpCKPwqKkX9tWaAPL00lQ9qWhULB
 wT6oYGOiBikqiq8gW/SiFMt5/fd+586DV4jtEy8fEpsXqELXtarokBTVVDcmZLSG0XXX
 naLjMics3CfFYcX7Gc5avgsC6dGFblGjiWwmxXq69f6XqkFPadeU8tAhl8s544KJ0Wr4
 5b4OksqKgP0kbljfXA/GIDG1XBj54US9E4E4eP5Q51UBhNpdDJBwzjT7r+9QY7+C/XVw
 OeSRWuOReiFh8Ec9LAHCUq+edS5+cKYkkUgFwZ1R7MeLrN2XZB4FMNl6e/+scfBLnvAo
 +aLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=VMTR8MtOuvvdCkDnmtRIvlBfWt1zeRfk8Z/fANOw3KI=;
 b=qyR70aJc996REhFgCjxZl4vJeFuKlGF3vlBIOZRr/hBdCrbDaMAtoUe7JadBt3HwFk
 S1YKQTKyslmf2zX6PDO+axvnW48ZXJVEaQmfqYEX20XI/bKxBX1tY7W02nFUAeUwrdOe
 gy+AqLhhokgyDh2BV7a98vmW8cqsORmwvUDQ+UbTKXsk8ADssdP5tvBQOidqZbhtxhmG
 obdmCFF6rutqMFsm9NhlsfN8dZDXXwJiRYmUJjJPrPb1PuYC1OqQOrc8onu2Qu4fj/Ry
 GClnRGdb1xBziFGm1f7zbd0BRKY9X7pxIN1APgkBZRMAp1nBPvjUvjTvFenXLU+6P79P
 B9ag==
X-Gm-Message-State: APjAAAUtiVkzUmtfgkyrmyi7ulUshKuH2ejkst9GtGZGsWBgikbFlD1b
 arP9P2YbSMb4hkSDwGrGD6XdK30JW+s4JDHUJ/1KXhQ7
X-Google-Smtp-Source: APXvYqx8Sxbk+zX9ETdCZpNW6eNdqZj79xWSFwQDQDRg2yVB2DIn9X66WyS8uVi1R4bT9WKXCN6fvWcrdcjwG5nFuyk=
X-Received: by 2002:a67:fd85:: with SMTP id k5mr332616vsq.29.1557657221519;
 Sun, 12 May 2019 03:33:41 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 12 May 2019 13:33:36 +0300
Message-ID: <CAE_Rk56Y5gxnbEfy2nqiY1y6oE9YYRD+6JfLiE40rH4Sh8EA8w@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Writing and reading from ddr3 in usrp x310
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
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Content-Type: multipart/mixed; boundary="===============0202035255102134755=="
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

--===============0202035255102134755==
Content-Type: multipart/alternative; boundary="0000000000005edb830588ae551b"

--0000000000005edb830588ae551b
Content-Type: text/plain; charset="UTF-8"

Hello,
Im trying to write and read data from the ddr3 ram in the usrp x310 using
the fpga.
I wasn't able to find if there is any other blocks that use the ram (in the
defualt image  ) .
Also are there any rfnoc blocks that uses the ram ? Thx

--0000000000005edb830588ae551b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto">Im trying to write and read data =
from the ddr3 ram in the usrp x310 using the fpga.</div><div dir=3D"auto">I=
 wasn&#39;t able to find if there is any other blocks that use the ram (in =
the defualt image=C2=A0 ) .</div><div dir=3D"auto">Also are there any rfnoc=
 blocks that uses the ram ? Thx</div></div>

--0000000000005edb830588ae551b--


--===============0202035255102134755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0202035255102134755==--

