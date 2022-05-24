Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7A7533199
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 21:10:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA4743846A0
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 15:10:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653419448; bh=UR1EGN3iwgpPqJf3rsw1aaXufEWRxw2brrbR8Csuqls=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LfSlf5cSFTJh/pVh/M1mPVn3MUkDJpuq6iu7R7JbbXygcJHyg82Vr4MfhUQkny62f
	 C10x1AoKo4dVDtyn1lS1QCk49F/9in+vCvUdju2lJtpGEKRN+0pi98t6QIoypG0XEp
	 vTUNloWwSTwgIiFZW3yZwzHSnxGIHNQex9WWc2VfrPdFYPxn+MfDLAFfuP3BD+b0jy
	 pvjhVj+z3S7zvBI0ZAdgg1DK3HxjiuNKMxcuvE8AIfvg/Tu2rBp0psQ9wSziZvg8gN
	 G6BSeCFYRsEFiAcXBe9oLaebf7dJG6pE+rxHQbKF7Ey/2iJ3oUhikn9g4GFt8fYD1u
	 vVNwQFu8iq9YQ==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DB5B3845B2
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 15:09:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="eZM+JTsU";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id s14so5200747ybc.10
        for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 12:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=4ouVLDN1ijM7OfBsnRyzR0iM/itu2AY6bM1yrGICC1E=;
        b=eZM+JTsUJmzlcCHNMr14N+s4GXoqTsVPkHQ2EU/wZBcyYzRiwstzxPgHl2kEc5RET7
         nPRCYp8yyAozyLrv4HwnY9vwoy6ZqFr/bOnETjv+xmU1bUSlUUJmHnoEbhrKX+mq9SsV
         MxRjx0Nb0lppq4f8t6Wvq17Lwrffsh+wati6vTr5DFELWvoctHqerdNLRYsLEb2f28em
         WKtJvDUAfASFm1cE83fN6Ub0HT0FGLRZMTVdPKtPfmjazVmLWUqVLqXz8zL6excaZ7U+
         cZomUiyn2vrA2LuHJN2VyKr+KKg4rcyZcsMXrUhP2szRMuOiztB56ZKugu5eUz+HI8qP
         mGag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4ouVLDN1ijM7OfBsnRyzR0iM/itu2AY6bM1yrGICC1E=;
        b=N+WS48Juwuc1pZnGJIACzCZgOJx0h10qx3FL27q0DK9vNK1a2KbDDGcqF1NrTkO/AH
         PFHQThx2PBJFZpL/T9JnimBLm+001tnoyOwd/H+y1YLLWEWjpF4BPSx90oBKa8CeWvZ0
         RzLcIMel3fG5Y7Y+LLTc80tmZgWUvK4Paf9I868KhZMVMGyui974Ns16g/XEHX66bjxt
         CccrGAtqvXfA5v9sn8PQWGA4zvveo0xzYNL7laI2rz4idrAqEtoYXNbDcYqWTUidQg7a
         dCkRHeI3shNb01AiRXE9P8O46Gpc2qjTMqIfWKLaQ90KhN0Pk1mgTEGLbkrwcwf7nwys
         fN+Q==
X-Gm-Message-State: AOAM533bNZXKUzUyE1dAHgTjj9r2bKdlcvy+MarUsQkRgNR5L5ALgC2R
	GoHhFj8QxwCbi4ew+MMrvcQ6G8sKsPPLgzfqCd9ofJ0nRgojXw==
X-Google-Smtp-Source: ABdhPJxr3ruXa46JvCX1Gn4s7BMnwC4QiWIQECZ85/k7U435q/UaoMPfifOacbG9YF1ggu3C+Gh0U+mmwNugSrixfCc=
X-Received: by 2002:a25:fe0d:0:b0:64d:915f:e73e with SMTP id
 k13-20020a25fe0d000000b0064d915fe73emr27526538ybe.447.1653419374226; Tue, 24
 May 2022 12:09:34 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 24 May 2022 15:09:23 -0400
Message-ID: <CAB__hTSOq3-mM6-vbjFXnJktOs_c2=uNXbkcjKyakGc6oAY1ww@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: CVE7L6YTIAKK6QSQLA2AN7LX2BXGPAMN
X-Message-ID-Hash: CVE7L6YTIAKK6QSQLA2AN7LX2BXGPAMN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] cmake errors for OOT project
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CVE7L6YTIAKK6QSQLA2AN7LX2BXGPAMN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4805605180910999632=="

--===============4805605180910999632==
Content-Type: multipart/alternative; boundary="0000000000007788f705dfc6b2db"

--0000000000007788f705dfc6b2db
Content-Type: text/plain; charset="UTF-8"

Hi,
I just installed a new Ubuntu 22.04 LTS system and tried to build UHD from
source.  I successfully built UHD and installed (to a different install
prefix in my home folder, ~/uhd/UHD-4.2/). But, when I tried to build my
own OOT stuff, I got lots of cmake errors related to INCLUDE dirs
NOTFOUND.  Then, I tried to build the un-modified Etttus rfnoc-example by
adding a build folder (in-tree) and running cmake. I encountered the same
errors. Any ideas?
Rob


rkossler@rkossler-Precision-3561:~/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/build$
cmake ../ -DUHD_FPGA_DIR=~/uhd/UHD-4.2/uhd/fpga
-DUHD_DIR=~/uhd/UHD-4.2/lib/cmake/uhd
-- Found bash interpreter: /usr/bin/bash
-- Found UHD:
--  * INCLUDES = UHD_INCLUDE_DIRS-NOTFOUND
--  * LIBS = UHD_LIBRARIES-NOTFOUND
-- Checking FPGA source directory...
-- Using FPGA source directory: /home/rkossler/uhd/UHD-4.2/uhd/fpga
-- Registering RFNoC block: rfnoc_block_gain
-- Adding testbench target: rfnoc_block_gain_tb
-- Found Boost:
/usr/lib/x86_64-linux-gnu/cmake/Boost-1.74.0/BoostConfig.cmake (found
suitable version "1.74.0", minimum required is "1.65") found components:
program_options system
-- Configuring done
CMake Error: The following variables are used in this project, but they are
set to NOTFOUND.
Please set them or make sure they are set and tested correctly in the CMake
files:
UHD_INCLUDE_DIRS
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icores
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icores
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icores
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icores
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icores
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icores
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps
   used as include directory in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps
UHD_LIBRARIES
    linked by target "rfnoc-example" in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib
    linked by target "init_gain_block" in directory
/home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps

CMake Error in lib/CMakeLists.txt:
  Found relative path while evaluating include directories of
  "rfnoc-example":

    "UHD_INCLUDE_DIRS-NOTFOUND"



CMake Error in apps/CMakeLists.txt:
  Found relative path while evaluating include directories of
  "init_gain_block":

    "UHD_INCLUDE_DIRS-NOTFOUND"



-- Generating done
CMake Generate step failed.  Build files cannot be regenerated correctly.

--0000000000007788f705dfc6b2db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I just installed a new Ubuntu 22.04 LTS=
 system and tried to build UHD from source.=C2=A0 I successfully built UHD =
and installed (to a different install prefix in my home folder, ~/uhd/UHD-4=
.2/). But, when I tried to build my own OOT stuff, I got lots of cmake erro=
rs related to INCLUDE dirs NOTFOUND.=C2=A0 Then, I tried to build the un-mo=
dified Etttus rfnoc-example by adding a build folder (in-tree) and running =
cmake. I encountered the same errors. Any ideas?</div><div>Rob</div><div><b=
r></div><div><br></div><div><span style=3D"font-family:monospace"><span sty=
le=3D"background-color:rgb(0,255,0)">rkossler@rkossler-Precision-3561:~/uhd=
/UHD-4.2/uhd/host/examples/rfnoc-example/build$ cmake ../ -DUHD_FPGA_DIR=3D=
~/uhd/UHD-4.2/uhd/fpga -DUHD_DIR=3D~/uhd/UHD-4.2/lib/cmake/uhd</span><br>--=
 Found bash interpreter: /usr/bin/bash<br>-- Found UHD:<br><span style=3D"b=
ackground-color:rgb(255,255,0)">-- =C2=A0* INCLUDES =3D UHD_INCLUDE_DIRS-NO=
TFOUND<br>-- =C2=A0* LIBS =3D UHD_LIBRARIES-NOTFOUND</span><br>-- Checking =
FPGA source directory...<br>-- Using FPGA source directory: /home/rkossler/=
uhd/UHD-4.2/uhd/fpga<br>-- Registering RFNoC block: rfnoc_block_gain<br>-- =
Adding testbench target: rfnoc_block_gain_tb<br>-- Found Boost: /usr/lib/x8=
6_64-linux-gnu/cmake/Boost-1.74.0/BoostConfig.cmake (found suitable version=
 &quot;1.74.0&quot;, minimum required is &quot;1.65&quot;) found components=
: program_options system <br>-- Configuring done<br>CMake Error: The follow=
ing variables are used in this project, but they are set to NOTFOUND.<br>Pl=
ease set them or make sure they are set and tested correctly in the CMake f=
iles:<br>UHD_INCLUDE_DIRS<br>=C2=A0 =C2=A0used as include directory in dire=
ctory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example<br>=C2=A0 =
=C2=A0used as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd=
/host/examples/rfnoc-example<br>=C2=A0 =C2=A0used as include directory in d=
irectory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example<br>=C2=
=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD-4.2=
/uhd/host/examples/rfnoc-example<br>=C2=A0 =C2=A0used as include directory =
in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example<br>=
=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD-=
4.2/uhd/host/examples/rfnoc-example<br>=C2=A0 =C2=A0used as include directo=
ry in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example<=
br>=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/U=
HD-4.2/uhd/host/examples/rfnoc-example<br>=C2=A0 =C2=A0used as include dire=
ctory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-examp=
le/blocks<br>=C2=A0 =C2=A0used as include directory in directory /home/rkos=
sler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks<br>=C2=A0 =C2=A0use=
d as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/exa=
mples/rfnoc-example/blocks<br>=C2=A0 =C2=A0used as include directory in dir=
ectory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/blocks<br=
>=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD=
-4.2/uhd/host/examples/rfnoc-example/blocks<br>=C2=A0 =C2=A0used as include=
 directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-=
example/blocks<br>=C2=A0 =C2=A0used as include directory in directory /home=
/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga<br>=C2=A0 =C2=A0=
used as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/=
examples/rfnoc-example/fpga<br>=C2=A0 =C2=A0used as include directory in di=
rectory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga<br>=
=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD-=
4.2/uhd/host/examples/rfnoc-example/fpga<br>=C2=A0 =C2=A0used as include di=
rectory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-exa=
mple/fpga<br>=C2=A0 =C2=A0used as include directory in directory /home/rkos=
sler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga<br>=C2=A0 =C2=A0used =
as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examp=
les/rfnoc-example/fpga/rfnoc_block_gain<br>=C2=A0 =C2=A0used as include dir=
ectory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-exam=
ple/fpga/rfnoc_block_gain<br>=C2=A0 =C2=A0used as include directory in dire=
ctory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc=
_block_gain<br>=C2=A0 =C2=A0used as include directory in directory /home/rk=
ossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain<br=
>=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD=
-4.2/uhd/host/examples/rfnoc-example/fpga/rfnoc_block_gain<br>=C2=A0 =C2=A0=
used as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/=
examples/rfnoc-example/fpga/rfnoc_block_gain<br>=C2=A0 =C2=A0used as includ=
e directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc=
-example/fpga/rfnoc_block_gain<br>=C2=A0 =C2=A0used as include directory in=
 directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icore=
s<br>=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd=
/UHD-4.2/uhd/host/examples/rfnoc-example/icores<br>=C2=A0 =C2=A0used as inc=
lude directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rf=
noc-example/icores<br>=C2=A0 =C2=A0used as include directory in directory /=
home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/icores<br>=C2=A0 =
=C2=A0used as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd=
/host/examples/rfnoc-example/icores<br>=C2=A0 =C2=A0used as include directo=
ry in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/=
icores<br>=C2=A0 =C2=A0used as include directory in directory /home/rkossle=
r/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example<br>=C2=
=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD-4.2=
/uhd/host/examples/rfnoc-example/include/rfnoc/example<br>=C2=A0 =C2=A0used=
 as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/exam=
ples/rfnoc-example/include/rfnoc/example<br>=C2=A0 =C2=A0used as include di=
rectory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-exa=
mple/include/rfnoc/example<br>=C2=A0 =C2=A0used as include directory in dir=
ectory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/r=
fnoc/example<br>=C2=A0 =C2=A0used as include directory in directory /home/r=
kossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/include/rfnoc/example<b=
r>=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UH=
D-4.2/uhd/host/examples/rfnoc-example/lib<br>=C2=A0 =C2=A0used as include d=
irectory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-ex=
ample/lib<br>=C2=A0 =C2=A0used as include directory in directory /home/rkos=
sler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib<br>=C2=A0 =C2=A0used a=
s include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/exampl=
es/rfnoc-example/lib<br>=C2=A0 =C2=A0used as include directory in directory=
 /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib<br>=C2=A0 =
=C2=A0used as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd=
/host/examples/rfnoc-example/lib<br>=C2=A0 =C2=A0used as include directory =
in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib=
<br>=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/=
UHD-4.2/uhd/host/examples/rfnoc-example/lib<br>=C2=A0 =C2=A0used as include=
 directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-=
example/lib<br>=C2=A0 =C2=A0used as include directory in directory /home/rk=
ossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib<br>=C2=A0 =C2=A0used=
 as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/exam=
ples/rfnoc-example/lib<br>=C2=A0 =C2=A0used as include directory in directo=
ry /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/lib<br>=C2=A0=
 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD-4.2/uh=
d/host/examples/rfnoc-example/lib<br>=C2=A0 =C2=A0used as include directory=
 in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/li=
b<br>=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd=
/UHD-4.2/uhd/host/examples/rfnoc-example/apps<br>=C2=A0 =C2=A0used as inclu=
de directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfno=
c-example/apps<br>=C2=A0 =C2=A0used as include directory in directory /home=
/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps<br>=C2=A0 =C2=A0=
used as include directory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/=
examples/rfnoc-example/apps<br>=C2=A0 =C2=A0used as include directory in di=
rectory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/apps<br>=
=C2=A0 =C2=A0used as include directory in directory /home/rkossler/uhd/UHD-=
4.2/uhd/host/examples/rfnoc-example/apps<br>=C2=A0 =C2=A0used as include di=
rectory in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-exa=
mple/apps<br>UHD_LIBRARIES<br>=C2=A0 =C2=A0 linked by target &quot;rfnoc-ex=
ample&quot; in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc=
-example/lib<br>=C2=A0 =C2=A0 linked by target &quot;init_gain_block&quot; =
in directory /home/rkossler/uhd/UHD-4.2/uhd/host/examples/rfnoc-example/app=
s<br><br>CMake Error in lib/CMakeLists.txt:<br>=C2=A0 Found relative path w=
hile evaluating include directories of<br>=C2=A0 &quot;rfnoc-example&quot;:=
<br><br>=C2=A0 =C2=A0 &quot;UHD_INCLUDE_DIRS-NOTFOUND&quot;<br><br><br><br>=
CMake Error in apps/CMakeLists.txt:<br>=C2=A0 Found relative path while eva=
luating include directories of<br>=C2=A0 &quot;init_gain_block&quot;:<br><b=
r>=C2=A0 =C2=A0 &quot;UHD_INCLUDE_DIRS-NOTFOUND&quot;<br><br><br><br>-- Gen=
erating done<br>CMake Generate step failed.=C2=A0 Build files cannot be reg=
enerated correctly.</span><br></div></div>

--0000000000007788f705dfc6b2db--

--===============4805605180910999632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4805605180910999632==--
