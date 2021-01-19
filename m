Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1AC2FB62D
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 14:02:59 +0100 (CET)
Received: from [::1] (port=55276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1qet-0004oy-ME; Tue, 19 Jan 2021 08:02:55 -0500
Received: from mail-ed1-f42.google.com ([209.85.208.42]:46000)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1l1qeq-0004jk-1k
 for usrp-users@lists.ettus.com; Tue, 19 Jan 2021 08:02:52 -0500
Received: by mail-ed1-f42.google.com with SMTP id f1so7278647edr.12
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 05:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bdDfJ4e+bZaSqIXln7neNH1kUY3LWVxh4qj+ECmy5DQ=;
 b=SvtaUQKhdE+gqEzV8XKvBNh347E5kHK4xR5R1XVfyKJnDy9QQ0UfJ17EZ1Cv6zjQDf
 +2A/8igTJaszexUF7SmgFJ5o4tT0uOz8pP8wlfzLcy03RXaulyVrzco1dMcni/+j5yOo
 XgZa1vCICvy5GFfMtZ6B+mDAOvKfJFPu5tNFberSaKOzWMGSXe8CqXmiZmMbCIR2BIIx
 iqRD8HyS6cXl/9hsz33QZBHsZeNdak9uIWdwo6tnZkvL2OsqADd9Rm15gifPdCSz+8J0
 kl1bkvd2JUcJtXHdGkff3kVVux0VcNGVmXu0S1x5BE5QcXDKTgCqXwnwOdgVtfF2pu5q
 LTDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bdDfJ4e+bZaSqIXln7neNH1kUY3LWVxh4qj+ECmy5DQ=;
 b=GyPOZkpEuolfTVo7kQoQgRNqxwpdM2apwt2oQ1qbidLr8ookHrl6LnYPGKm1zJwJ5Q
 2v3pqjPYr/5Rzskv3V/Hppgj0wOw5x2kjYROE4sWF0Imre3ORNmTPo7Q3CAIYgqbPZ+1
 xHgpBX/XSuAZ5qrReZ4KaMgZqVwltqvMUzcgxGaWoJ9xZEZjdirR5IPhvo40tZY6n0Th
 ysdm4L2Djd0ukAPuPIF1b4hcKjyNQZ6penZ67TNN3HCA9FKZv+4qevJUlJ3HrwORzpB0
 cHmsWByBFgtAwIGnY3N5QSEEkq7vYNSRkRceVOTfXoqMovua1StPGde+Zi4lZ0erAhuZ
 /MKA==
X-Gm-Message-State: AOAM533FP5gpp9XPXm0U3YG0zVcE/ArBWMlkDh+iU3x959HKSipLkv6D
 DH/1g+aNKpALjrKapmNw/D5fpqX8vNmIrgbid4+63GL2nzjXWQ==
X-Google-Smtp-Source: ABdhPJwv/EXvsb6TmdziuFWF+Mfq/QMMeRyHnWauaSbVIvY0RAA+SZA07D7/9mIzpS6aOb6GFxKTd1sKKv/n2KkuuPw=
X-Received: by 2002:aa7:cac2:: with SMTP id l2mr3310411edt.141.1611061330402; 
 Tue, 19 Jan 2021 05:02:10 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 19 Jan 2021 14:01:58 +0100
Message-ID: <CAG16vQVvvC7NpD7nEqL5ZML1bg_f5oE2JRBFrRGPt0nJkLi9MQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Wrong name of files found when instaling OOT RFNoC
 block
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
From: =?utf-8?q?Maria_Mu=C3=B1oz_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Content-Type: multipart/mixed; boundary="===============4807809107299631101=="
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

--===============4807809107299631101==
Content-Type: multipart/alternative; boundary="0000000000004f61e405b9407254"

--0000000000004f61e405b9407254
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have tried to install a custom OOT RFNoC block created using the
rfnocmodtool.

I've successfully created a module with my custom block, modifying the
verilog file created by the tool (
*rfnoc-test/rfnoc/fpga/rfnoc_block_myblock/rfnoc_block_myblock.v*) to
include the top level of my code.
My code is written in VHDL and has some other VHDL modules instanced in the
top level, so I must include these VHDL files (top level and dependencies)
in the Makefile.srcs included in
*rfnoc-test/rfnoc/fpga/rfnoc_block_myblock/*
I have included these sources files in the same folder as the noc_shell and
block verilog files, so my Makefile.srcs is like this:


















*# RFNoC Block Sources# Here, list all the files that are necessary to
synthesize this block. Don't# include testbenches!# Make sure that the
source files are nicely detectable by a regex. Best to put# one on each
line.# The first argument to addprefix is the current path to this
Makefile, so the# path list is always absolute, regardless of from where
we're including or# calling this file. RFNOC_OOT_SRCS needs to be a simply
expanded variable# (not a recursively expanded variable), and we take care
of that in the build# infrastructure.RFNOC_OOT_SRCS += $(addprefix $(dir
$(abspath $(lastword $(MAKEFILE_LIST)))), \rfnoc_block_myblock.v
\noc_shell_myblock.v \top_level.vhd \file_1.vhd \file_2.vhd \file_3.vhd \)*

To install my block I did the following steps:
1. Create a "build" directory in the rfnoc-test folder
2. cd build
3. cmake -DUHD_FPGA_DIR=~/rfnoc/src/uhd/fpga/ ../
4. make
5. sudo make install

In this last step, make said that there were no "top_level.v" found. It
took the wrong extension of the file, so I looked at the
/rfnoc-test/build/rfnoc/fpga/rfnoc_block_myblock/cmake_install.cmake and
saw that at the end of this file the included sources were named wrong. For
example, the extensions were .v instead of .vhd and some names of files
that have numbers or uppercase letters were incomplete.

I have looked at the CMakelists.txt in the rfnoc-test folder and, in line
212 there is a regular expression to include the sources files, which I
think doesn't include ".vhd" possible extensions or names containing
numbers or uppercases:





















*Helper macro to register an RFNoC block directory.# Such a directory must
always have a Makefiles.srcs containing all the# required HDL files for
synthesis, and optionally a Makefile file for running# the testbench.# The
NOTESTBENCH argument can be used to skip the testbench target
generation.macro(RFNOC_REGISTER_BLOCK_DIR)
cmake_parse_arguments(_rfnoc_block "NOTESTBENCH" "" "" ${ARGN})
get_filename_component(_blk_name "${CMAKE_CURRENT_SOURCE_DIR}" NAME)
message(STATUS "Registering RFNoC block: ${_blk_name}")    file(READ
${CMAKE_CURRENT_SOURCE_DIR}/Makefile.srcs _makefile_srcs)    list(APPEND
_block_src_files "Makefile.srcs")    string(REGEX MATCHALL "[a-z_]+\\.v"
_src_files ${_makefile_srcs})    foreach(_src_file ${_src_files})
string(STRIP "${_src_file}" _src_file})        list(APPEND _block_src_files
"${_src_file}")    endforeach()    install(FILES ${_block_src_files}
DESTINATION ${PROJECT_DATA_DIR}/fpga/${_blk_name}        COMPONENT fpga)
RFNOC_ADD_TB_DIR()endmacro()*

If I change this regex by *"**[a-z_A-Z0-9]+\\.[vhd]+"  *it works, and the
module is installed.

Is this a known bug or maybe I have included my sources in a wrong location?

Kind Regards,

Maria

--0000000000004f61e405b9407254
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I have tried to inst=
all a custom OOT RFNoC block created using the rfnocmodtool.</div><div><br>=
</div><div>I&#39;ve successfully created a module with my custom block, mod=
ifying the verilog file created by the tool (<i>rfnoc-test/rfnoc/fpga/rfnoc=
_block_myblock/rfnoc_block_myblock.v</i>) to include the top level of my co=
de.</div><div>My code is written in VHDL and has some other VHDL modules in=
stanced in the top level, so I must include these VHDL files (top level and=
 dependencies) in the Makefile.srcs included in <i>rfnoc-test/rfnoc/fpga/rf=
noc_block_myblock/</i></div><div>I have included these sources files in the=
 same folder as the noc_shell and block verilog files, so my Makefile.srcs =
is like this:</div><div><br></div><div><i># RFNoC Block Sources<br># Here, =
list all the files that are necessary to synthesize this block. Don&#39;t<b=
r># include testbenches!<br># Make sure that the source files are nicely de=
tectable by a regex. Best to put<br># one on each line.<br># The first argu=
ment to addprefix is the current path to this Makefile, so the<br># path li=
st is always absolute, regardless of from where we&#39;re including or<br>#=
 calling this file. RFNOC_OOT_SRCS needs to be a simply expanded variable<b=
r># (not a recursively expanded variable), and we take care of that in the =
build<br># infrastructure.<br>RFNOC_OOT_SRCS +=3D $(addprefix $(dir $(abspa=
th $(lastword $(MAKEFILE_LIST)))), \<br>rfnoc_block_myblock.v \<br>noc_shel=
l_myblock.v \<br>top_level.vhd \<br>file_1.vhd \<br>file_2.vhd \<br>file_3.=
vhd \<br>)</i></div><div><i><br></i></div><div>To install my block I did th=
e following steps:</div><div>1. Create a &quot;build&quot; directory in the=
 rfnoc-test folder</div><div>2. cd build<br></div><div>3. cmake -DUHD_FPGA_=
DIR=3D~/rfnoc/src/uhd/fpga/ ../</div><div>4. make</div><div>5. sudo make in=
stall</div><div><br></div><div>In this last step, make said that there were=
 no &quot;top_level.v&quot; found. It took the wrong extension of the file,=
 so I looked at the /rfnoc-test/build/rfnoc/fpga/rfnoc_block_myblock/cmake_=
install.cmake and saw that at the end of this file the included sources wer=
e named wrong. For example, the extensions were .v instead of .vhd and some=
 names of files that have numbers or uppercase letters were incomplete.</di=
v><br><div>I have looked at the CMakelists.txt in the rfnoc-test folder and=
, in line 212 there is a regular expression to include the sources files, w=
hich I think doesn&#39;t include &quot;.vhd&quot; possible extensions or na=
mes containing numbers or uppercases:</div><div><br></div><div>=C2=A0 <i>He=
lper macro to register an RFNoC block directory.<br># Such a directory must=
 always have a Makefiles.srcs containing all the<br># required HDL files fo=
r synthesis, and optionally a Makefile file for running<br># the testbench.=
<br># The NOTESTBENCH argument can be used to skip the testbench target gen=
eration.<br>macro(RFNOC_REGISTER_BLOCK_DIR)<br>=C2=A0 =C2=A0 cmake_parse_ar=
guments(_rfnoc_block &quot;NOTESTBENCH&quot; &quot;&quot; &quot;&quot; ${AR=
GN})<br>=C2=A0 =C2=A0 get_filename_component(_blk_name &quot;${CMAKE_CURREN=
T_SOURCE_DIR}&quot; NAME)<br>=C2=A0 =C2=A0 message(STATUS &quot;Registering=
 RFNoC block: ${_blk_name}&quot;)<br>=C2=A0 =C2=A0 file(READ ${CMAKE_CURREN=
T_SOURCE_DIR}/Makefile.srcs _makefile_srcs)<br>=C2=A0 =C2=A0 list(APPEND _b=
lock_src_files &quot;Makefile.srcs&quot;)<br>=C2=A0 =C2=A0<b> string(REGEX =
MATCHALL &quot;[a-z_]+\\.v&quot; _src_files ${_makefile_srcs})</b><br>=C2=
=A0 =C2=A0 foreach(_src_file ${_src_files})<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
string(STRIP &quot;${_src_file}&quot; _src_file})<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 list(APPEND _block_src_files &quot;${_src_file}&quot;)<br>=C2=A0 =C2=
=A0 endforeach()<br>=C2=A0 =C2=A0 install(FILES ${_block_src_files}<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 DESTINATION ${PROJECT_DATA_DIR}/fpga/${_blk_name}<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 COMPONENT fpga)<br>=C2=A0 =C2=A0 RFNOC_ADD_T=
B_DIR()<br>endmacro()</i></div><div><i><br></i></div><div>If I change this =
regex by <b>&quot;</b><i><b>[a-z_A-Z0-9]+\\.[vhd]+&quot;=C2=A0 </b></i>it w=
orks, and the module is installed. <br></div><div><br></div><div>Is this a =
known bug or maybe I have included my sources in a wrong location?</div><di=
v><br></div><div>Kind Regards,</div><div><br></div><div>Maria<br></div><div=
><br></div><div><br><i><b></b></i></div><div><i></i></div></div>

--0000000000004f61e405b9407254--


--===============4807809107299631101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4807809107299631101==--

