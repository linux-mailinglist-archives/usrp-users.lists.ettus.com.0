Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2527E9FB
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 04:26:51 +0200 (CEST)
Received: from [::1] (port=52544 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htNHM-0003g4-N9; Thu, 01 Aug 2019 22:26:48 -0400
Received: from mail-oi1-f197.google.com ([209.85.167.197]:35755)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1htNHJ-0003Ws-KL
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 22:26:45 -0400
Received: by mail-oi1-f197.google.com with SMTP id i132so28764608oif.2
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 19:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=GecZ1aV+GqyhbJZnBYjIiB9O+Ql8lC1NNt1GhB726I8=;
 b=LcvSoBrYNUjayhTnPUz/ZzvVTWVVpOealBSbxJd/+qhKcqllZi+CyVkXFSwTh2Wy6Z
 piWJakXxIw5iCfCTuCo4K8csAVw8kIo5UgIJA+jKhjupRyVKB7zoqZm8GNeL7vPz/t4y
 pu5B50c4ZheO3AL4Pyy55foiQwm2Kq6SjTXh3fENlZxz+OsE0Cp3mnjE0I89ifehvNlv
 Q+39Za+QMn3FdQD2KUFqwkE/VtKHrKOoUDb2LooY80sQbFzWWn7mxEmYXIPW60Wsqszu
 PngPD7xvWXlQ3U6bEqqTo/FkHGXVXBFQ1N77ZrxQCzWCD6HLfQbGdPRKS2H47qARl4cm
 uUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GecZ1aV+GqyhbJZnBYjIiB9O+Ql8lC1NNt1GhB726I8=;
 b=gLGGSQ36RXMIPH/gWIeOtl0e5eVseVG3Q7CpaCGfheLVvafQiyfEL6PegSSDi4AatT
 0vBDmVBU4aQqVu548OCQYVEZ6JnjQ561Ue7SwH8r276rdgmoQS2kTsqnjXjo/W2ZY4TU
 sItOgRL02OqEJLioz1t3nB5+VuWCZ+eE3sg85HIH7sx35iKksngZHYRTGiBAHwtusKV+
 wPAidicrJi5uKT/4lXm9LiFwc7A6qWxMSOgTZf4xruqb53VUAAGkL2o1N91IQUqM+eF7
 MzaGVtjWsSbe/xqlCRBtVhui39C36uDU0MMLUR92y3clSLBNmS6ShTQ9lxaqxdDL7qRC
 tTWw==
X-Gm-Message-State: APjAAAVN1a8ufIcZeTc5pWO1zr73fKtbe42ICHHjSmWR0Y6OPdgUfaaI
 t4esg3eM0qXI6wkLYX4Ojt7Ozah8RRvajmqFGqJ6EcqRdAw=
X-Google-Smtp-Source: APXvYqwv3ZN6DtttFSGODJLOpNMDmZ+DklwaOk0fSMtDrG9qIU2BDLt0pdRKwclkwqgAKV0+/y54/BqvPIKuz0bJnj0=
X-Received: by 2002:aca:ec82:: with SMTP id k124mr1167338oih.73.1564712764469; 
 Thu, 01 Aug 2019 19:26:04 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 2 Aug 2019 11:25:29 +0900
Message-ID: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu 16.04
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
From: =?utf-8?b?56aP5bO25bm56ZuEIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============4737647605527044905=="
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

--===============4737647605527044905==
Content-Type: multipart/alternative; boundary="00000000000080ae17058f191454"

--00000000000080ae17058f191454
Content-Type: text/plain; charset="UTF-8"

Hi everyone.
I try to compile the UHD and GNU Radio for my E320 on Ubuntu 16.04, I am
referencing this application note.

https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source

but I got error message from cmake as follows.
Do you know this solution?

**Cross-Compiling GNU Radio**
$ cd ~/e300/src
$ git clone -b v3.7.10.2 --recursive
https://github.com/gnuradio/gnuradio.git
$ cd gnuradio/
$ mkdir build
$ cd build
$ cmake -Wno-dev
-DCMAKE_TOOLCHAIN_FILE=../cmake/Toolchains/oe-sdk_cross.cmake
-DENABLE_GR_WXGUI=OFF -DENABLE_GR_VOCODER=OFF -DENABLE_GR_DTV=OFF
-DENABLE_GR_ATSC=OFF -DENABLE_DOXYGEN=OFF -DCMAKE_INSTALL_PREFIX=/usr ../

CMake Error at cmake/Toolchains/oe-sdk_cross.cmake:4 (string):
  string sub-command REGEX, mode MATCH needs at least 5 arguments total to
  command.
Call Stack (most recent call first):
  build/CMakeFiles/3.5.1/CMakeSystem.cmake:6 (include)
  CMakeLists.txt:31 (project)

**snip**

 CMake will not be able to correctly generate this project.
Call Stack (most recent call first):
 CMakeLists.txt:31 (project)


-- Configuring incomplete, errors occurred!
See also "/home/dolphin/e300/src/gnuradio/build/CMakeFiles/CMakeOutput.log".
See also "/home/dolphin/e300/src/gnuradio/build/CMakeFiles/CMakeError.log".

--00000000000080ae17058f191454
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone.<br>I try to compile the UHD and GNU Radio for=
 my E320 on Ubuntu 16.04, I am referencing this application note. <br><br><=
a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Buil=
ding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source">https://kb.ettus.com/Sof=
tware_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-et=
tus_from_Source</a><br><br>but I got error message from cmake as follows.<b=
r>Do you know this solution?<br><br>**Cross-Compiling GNU Radio**<br>$ cd ~=
/e300/src<br>$ git clone -b v3.7.10.2 --recursive <a href=3D"https://github=
.com/gnuradio/gnuradio.git">https://github.com/gnuradio/gnuradio.git</a> <b=
r>$ cd gnuradio/<br>$ mkdir build<br>$ cd build<br>$ cmake -Wno-dev -DCMAKE=
_TOOLCHAIN_FILE=3D../cmake/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=
=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DO=
FF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr ../<div><br>CMake E=
rror at cmake/Toolchains/oe-sdk_cross.cmake:4 (string):<br>=C2=A0 string su=
b-command REGEX, mode MATCH needs at least 5 arguments total to<br>=C2=A0 c=
ommand.<br>Call Stack (most recent call first):<br>=C2=A0 build/CMakeFiles/=
3.5.1/CMakeSystem.cmake:6 (include)<br>=C2=A0 CMakeLists.txt:31 (project)<b=
r><br>**snip**<br><br>		 =C2=A0CMake will not be able to correctly generate=
 this project.<br>		Call Stack (most recent call first):<br>		 =C2=A0CMakeL=
ists.txt:31 (project)<br>		<br>		<br>		-- Configuring incomplete, errors oc=
curred!<br>		See also &quot;/home/dolphin/e300/src/gnuradio/build/CMakeFile=
s/CMakeOutput.log&quot;.<br>		See also &quot;/home/dolphin/e300/src/gnuradi=
o/build/CMakeFiles/CMakeError.log&quot;.<br><br><br></div></div>

--00000000000080ae17058f191454--


--===============4737647605527044905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4737647605527044905==--

