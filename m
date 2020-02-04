Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E2B151C63
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2020 15:37:21 +0100 (CET)
Received: from [::1] (port=39666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyzKB-0001bU-T1; Tue, 04 Feb 2020 09:37:11 -0500
Received: from mail-il1-f195.google.com ([209.85.166.195]:43173)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <vanko.smyrnov@gmail.com>)
 id 1iyzK8-0001Gm-Nw
 for usrp-users@lists.ettus.com; Tue, 04 Feb 2020 09:37:08 -0500
Received: by mail-il1-f195.google.com with SMTP id o13so16036939ilg.10;
 Tue, 04 Feb 2020 06:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=WrvpRr6PG8N4hmg5x1dh61UnqI6s9QhQjz+vGFebSVo=;
 b=hQbUpUddJ/xIHt+ctQtJStEkmhZM1rql73Xafqy+74FDfVmIW+vTwYQSyD8+YosFgp
 vdEknf2vsq1QiOrKIaj/9wQyJYwjA2IoBOWm4PplpZg6l5kxHriWs6ebvXq3ypbKdV0W
 VTTh3N0mRqj6+HkxJYW8RlxGwB2fbh70RRhzODRLmmrQIf+ZBBZlL+7Mii30+pQB5Inq
 Is1bHM/vwDyi8haICzMuCN1txU48Yy1lommu6z4wIT+q/88dtU8KZnZzXggWCXkhs8Ev
 xYl9ywsWgN5XiYhNG0LmYt/fDDrW9ZrGpa5Yb+OQd6Kh0fVYWB1GtKc6l2eYShtw2OpY
 NNLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=WrvpRr6PG8N4hmg5x1dh61UnqI6s9QhQjz+vGFebSVo=;
 b=sslhuBASsoKfHVKFOEDfWob1+sqz+uZDu3G/piAajUAV1nEF5RrJbI/d6nkKxTBrVs
 LfuB3ITUCK5KAll5H7/5BzyMaOqqM7DDgpgwLqmzfPoKaDtuUh1WEB623AOltK610qGC
 z3FnhEbc6HI5Lv0+X9tLouhFEEYAyop/oOaQgoXHQD2sMkuu1uYBJbCG4mPCqZHtsjZ0
 IJNv8PedWaKV4/47bZbfRI0T1SwVGc+uzyTit1UfsifZqYg+cF/jPn8wI7Wt8rcTQfQJ
 yuGRbrmknyw8TsLpvXkq4K2DDgM648jyTYdqjzuFbc/zcZ91seXX6/Mq80kXMgNFlUyy
 v57Q==
X-Gm-Message-State: APjAAAXc+nQRxDTN+IJ9uxbr0OQY0kpqYjusgEuw/plk8ImQhHGthE2n
 1lz4PugxViMKrMrOZ255OdHwU/J4QvyxFqEirUsO3KPWSLE=
X-Google-Smtp-Source: APXvYqycbxWaKdMXqQEUB+8a5Zq7fLvTKNcGLaKf/nsLx+lfKcMIqcaocQrKn+SsyG3xFzL5ecmHBDQ/ULxweUTOiik=
X-Received: by 2002:a92:1b51:: with SMTP id b78mr26676342ilb.14.1580826967706; 
 Tue, 04 Feb 2020 06:36:07 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 4 Feb 2020 21:35:56 +0700
Message-ID: <CAHeoCXyQ87sVWGUzTCHzAX_uju01+wpdac4Y_xB0cwxbEUWYrw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] N200 error uhd_image_loader on RuntimeError: Received
 invalid reply 32 from device
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
From: Vanko Smyrnov via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Vanko Smyrnov <vanko.smyrnov@gmail.com>
Cc: mailman@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4457815535363243984=="
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

--===============4457815535363243984==
Content-Type: multipart/alternative; boundary="000000000000dc8fc8059dc0f527"

--000000000000dc8fc8059dc0f527
Content-Type: text/plain; charset="UTF-8"

Hello guys,

i stuck at the moment to resolv this problem.

First, using uhd_find_devices :
OUTPUT :
uhd_find_devices
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    type: usrp2
    addr: 192.168.10.2
    name:
    serial:

Second, uhd_usrp_probe :
OUTPUT :
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

-- Opening a USRP2/N-Series device...
Error: RuntimeError:
Please update the firmware and FPGA images for your device.
See the application notes for USRP2/N-Series for instructions.
Expected protocol compatibility number [10 to 12], but got 9:
The firmware build is not compatible with the host code build.
Please run:

 "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
 "/usr/bin/uhd_image_loader" \
    --args="type=usrp2,addr=192.168.10.2"

Third, uhd_image_loader
--args="type=usrp2,addr=192.168.10.2,overwrite-safe"
--fw-path=usrp_n200_fw.bin --fpga-path=usrp_n200_r4_fpga.bin
OUTPUT :
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

Error: RuntimeError: Received invalid reply 32 from device.

.....................
i have tried many method and still cannot find solution, anybody have the
same problem with me

--000000000000dc8fc8059dc0f527
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello guys, <br></div><div><br></div><div>i stuck at =
the moment to resolv this problem. <br></div><div><br></div><div>First, usi=
ng uhd_find_devices : <br></div><div>OUTPUT : <br></div><div>uhd_find_devic=
es <br>linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-un=
known<br><br>--------------------------------------------------<br>-- UHD D=
evice 0<br>--------------------------------------------------<br>Device Add=
ress:<br>=C2=A0 =C2=A0 type: usrp2<br>=C2=A0 =C2=A0 addr: 192.168.10.2<br>=
=C2=A0 =C2=A0 name: <br>=C2=A0 =C2=A0 serial: <br></div><div><br></div><div=
>Second, uhd_usrp_probe :</div><div>OUTPUT : <br></div><div>linux; GNU C++ =
version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown<br><br>-- Openin=
g a USRP2/N-Series device...<br>Error: RuntimeError: <br>Please update the =
firmware and FPGA images for your device.<br>See the application notes for =
USRP2/N-Series for instructions.<br>Expected protocol compatibility number =
[10 to 12], but got 9:<br>The firmware build is not compatible with the hos=
t code build.<br>Please run:<br><br>=C2=A0&quot;/usr/lib/x86_64-linux-gnu/u=
hd/utils/uhd_images_downloader.py&quot;<br>=C2=A0&quot;/usr/bin/uhd_image_l=
oader&quot; \<br>=C2=A0 =C2=A0 --args=3D&quot;type=3Dusrp2,addr=3D192.168.1=
0.2&quot;</div><div><br></div><div>Third, uhd_image_loader --args=3D&quot;t=
ype=3Dusrp2,addr=3D192.168.10.2,overwrite-safe&quot; --fw-path=3Dusrp_n200_=
fw.bin --fpga-path=3Dusrp_n200_r4_fpga.bin</div><div>OUTPUT : <br></div><di=
v>linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown=
<br><br>Error: RuntimeError: Received invalid reply 32 from device.</div><d=
iv><br></div><div>.....................</div><div>i have tried many method =
and still cannot find solution, anybody have the same problem with me <br><=
/div></div>

--000000000000dc8fc8059dc0f527--


--===============4457815535363243984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4457815535363243984==--

