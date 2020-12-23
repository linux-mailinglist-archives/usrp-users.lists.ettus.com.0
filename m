Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F9D2E18D2
	for <lists+usrp-users@lfdr.de>; Wed, 23 Dec 2020 07:19:44 +0100 (CET)
Received: from [::1] (port=33566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1krxUp-0004rF-J7; Wed, 23 Dec 2020 01:19:39 -0500
Received: from mail-pl1-f172.google.com ([209.85.214.172]:32784)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tuanmcx58@gmail.com>) id 1krxUl-0004ek-4H
 for usrp-users@lists.ettus.com; Wed, 23 Dec 2020 01:19:35 -0500
Received: by mail-pl1-f172.google.com with SMTP id b8so8636084plx.0
 for <usrp-users@lists.ettus.com>; Tue, 22 Dec 2020 22:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=dSJ+wugSv3irkBU1fkcwKnyW0sQf8QfrpkpZdudeYbQ=;
 b=Ggxe8Dll7DMjOdeizMaWQmDsnQ60vy/S5+3M1zHxdnvHAoBqidw9SKwlZnrr8tNwR0
 Q93bxT7V1l7P4KTXeQX6SOX6220xA9A6OSk2KMjcYvVJvkEUFs+nR6rU2peXkcY3b9GK
 vcwG1HB/qqsRyCSQqZ+B3jAKI9IFh9MZgXJ9oA0bapUISWesmAY9HyUzE1tQQeEcRb7c
 jN9IzYrx4+N9IwJfJwvWv51/IpOLqjr+70ON03gysJNKFVWUlyoEhi+QY9VulFul1CyB
 L2X6ih5VsnRDTTNO3bmEkbsnrZpQbd6M7h8zWE+WIoACqMyzwt/HUXxrtbwT1gXgH+JN
 3Wrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=dSJ+wugSv3irkBU1fkcwKnyW0sQf8QfrpkpZdudeYbQ=;
 b=pZ0jH1ghxL0DrESG1YM9RiBOEAjLlCDgRJxoDOMTYco3irdNcwVxtGRcGo8XbLsaG6
 4OPqquXMOCjNQMxAXcFjrP/34KUdFf2nZWksbf/TTBBdzzU92Hx4hNpgNSwiXCuIPTzi
 QXMDYKvREnAxMyIVvvRc9I7/gdDMffySUoW+8b0bD6Kc1s7FQyvNYvyPsCnVyd/A1B2H
 871U0oFmWEs0NW7T8ZWytXb+PZ6PZguMTpzSBwQOkWeZGqw3UJ1C/xVzFVJ8Bbaau+uD
 Lzv2mCF9Yt9z+GUDRfpSQEVIXT1JNgpSP/Ewj4D/RicwnuuydzYXHRAl5/CSUzj7HgWw
 wCEA==
X-Gm-Message-State: AOAM530puiJPBxhK66KameziEf/NYfMqPrpg6OI0JYWCaEO/QJ/kB5wG
 qpkANiFzaUPyjbBcc0YhpWK/cWri2ZsPwf+4rUJpaYRnGXGhpQ==
X-Google-Smtp-Source: ABdhPJxborFj8VYlEaP0Zyct0phVuBxAtZr1U5TilV3E+bG1AxKfZfwBTRygovkWO9vNosVkLVJ1HX32xOehYTtRZTM=
X-Received: by 2002:a17:902:7617:b029:dc:4825:e5f7 with SMTP id
 k23-20020a1709027617b02900dc4825e5f7mr3883977pll.11.1608704333655; Tue, 22
 Dec 2020 22:18:53 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 23 Dec 2020 15:18:42 +0900
Message-ID: <CAJZBg9VZ=LweqDErcq-_gngGzHX71T==VmFGqJbHUiUuHjXn4A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Problem when make install RFNoC Block
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
From: =?utf-8?b?xJDDrG5oIFR14bqlbiBIb8OgbmcgdmlhIFVTUlAtdXNlcnM=?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?xJDDrG5oIFR14bqlbiBIb8Ogbmc=?= <tuanmcx58@gmail.com>
Content-Type: multipart/mixed; boundary="===============7726013115433204058=="
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

--===============7726013115433204058==
Content-Type: multipart/alternative; boundary="0000000000005b301405b71baaa2"

--0000000000005b301405b71baaa2
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm learning to use RFNoC and started by window module for FFT.
I have used rfnocmodtool to create window module and copy yml file from
uhd/host/include/uhd/rfnoc/blocks. And copy all the fpga images from
lib/rfnoc/blocks/rfnoc_block_window to my module folder.
The cmake and make command have done, but the problem appeared when I tried
"sudo make install" command:











*-- Installing:
/usr/local/share/rfnoc/fpga/rfnoc_block_windowtest2/window.vCMake Error at
rfnoc/fpga/rfnoc_block_windowtest2/cmake_install.cmake:41 (file):  file
INSTALL cannot find
"/home/pc/rfnoc/rfnoc-windowtest2/rfnoc/fpga/rfnoc_block_windowtest2/rfnoc_block_window_regs.v".Call
Stack (most recent call first):  rfnoc/fpga/cmake_install.cmake:46
(include)  cmake_install.cmake:55 (include)Makefile:73: recipe for target
'install' failedmake: *** [install] Error 1*

I can not find "*rfnoc_block_window_regs.v" *in the uhd directory.
Could anyone help me with my problem?
Thank you.

--0000000000005b301405b71baaa2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;m learning to use RF=
NoC and started by window module for FFT.</div><div>I have used rfnocmodtoo=
l=C2=A0to create window module and copy yml file from uhd/host/include/uhd/=
rfnoc/blocks. And copy all the fpga images from lib/rfnoc/blocks/rfnoc_bloc=
k_window to my module folder.</div><div>The cmake and make command have don=
e, but the problem appeared when I tried &quot;sudo make install&quot; comm=
and:</div><div><br></div><div><i>-- Installing: /usr/local/share/rfnoc/fpga=
/rfnoc_block_windowtest2/window.v<br>CMake Error at rfnoc/fpga/rfnoc_block_=
windowtest2/cmake_install.cmake:41 (file):<br>=C2=A0 file INSTALL cannot fi=
nd<br>=C2=A0 &quot;/home/pc/rfnoc/rfnoc-windowtest2/rfnoc/fpga/rfnoc_block_=
windowtest2/rfnoc_block_window_regs.v&quot;.<br>Call Stack (most recent cal=
l first):<br>=C2=A0 rfnoc/fpga/cmake_install.cmake:46 (include)<br>=C2=A0 c=
make_install.cmake:55 (include)<br><br><br>Makefile:73: recipe for target &=
#39;install&#39; failed<br>make: *** [install] Error 1</i><br></div><div><i=
><br></i></div><div>I can not find &quot;<i>rfnoc_block_window_regs.v&quot;=
 </i>in the uhd directory.</div><div>Could anyone=C2=A0help me with my prob=
lem?</div><div>Thank you.</div></div>

--0000000000005b301405b71baaa2--


--===============7726013115433204058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7726013115433204058==--

