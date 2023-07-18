Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6567A75726F
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 05:42:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11073384653
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jul 2023 23:42:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689651760; bh=pz65JfdaoPH74PNT49GEZZH1wKSWaqd1Djjq5blBhxo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0O68XYFQDvEVDdtgwGFgObJPx6WLzr8uUUQ5ZVYk/HeaGvZ1Ha/irhpxa6NCIkJdv
	 mBuWjPhPd2XaSuWcmnV8rtSyLfMjpdX8/rMnh8byu0DmqACSXGzMbB7jTEh5KPbpg5
	 WcVejWN9i6mJYPyIUdTTC0hfrV03+om9Y6tGgsw0qZesfY755ea1b1JoSTWcSMmQOX
	 3Qr+lBCdrOecdcwmN3MeOBc6TsHhzznpNXDy/QGYl+btshbDz+RP3CxmRTywaxpvn9
	 1gfOMlNllAy3dJJgFIuPlyn2xcl+LzjOqbyhxBbJab4Wwzk91tJk8MCSAkp8o9xk2J
	 evKgubUhslm9w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9ED4384127
	for <usrp-users@lists.ettus.com>; Mon, 17 Jul 2023 23:42:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689651721; bh=aOTJtwA6rf9t+2xrrY5oFRYV2O4F1fa/oA971Kcfbj8=;
	h=Date:To:From:Subject:From;
	b=SldnGmD/OTIeETzD9gq2tWTeuGsqXykrDGUZu4ZTES5zITO9Bbj2F4QBYVxEiUfB0
	 uWWDHgLMovMe8rZgJnmSWklPxCzPkJpQ6NwF4XtNG46+f5SiauAcF8p1/4mn8Dc8DM
	 o+iqdxioHNchTJ4j1IGeGyUyMZS5MZVsPMh/BUo+MFZpx2Zo6chWObP9awoaDTY7VG
	 WTO0b3mrbmTuVtuT1ULW4d3ObjNmBvjMNDElzJMOzZOvC6kP8eafMyoSDoWlpJwJ25
	 Hkx8XAbsUE4b8JerGIE7GZ8DKLeBTFOpUjMCAeeNXCIDzgSehQqBK6WMLh/wfoOeph
	 bYKzlQ0u3FoUQ==
Date: Tue, 18 Jul 2023 03:42:01 +0000
To: usrp-users@lists.ettus.com
From: yangamelia2333@gmail.com
Message-ID: <i8OuuPJdFnwbiIZRUqieh1Trd9c6GIhUctdxjweFI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HJJW2DYKMFCCFSN6PXGUNCE2OU4RYBHR
X-Message-ID-Hash: HJJW2DYKMFCCFSN6PXGUNCE2OU4RYBHR
X-MailFrom: yangamelia2333@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC4 gain_block_control Python setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HJJW2DYKMFCCFSN6PXGUNCE2OU4RYBHR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9177261097736921974=="

This is a multi-part message in MIME format.

--===============9177261097736921974==
Content-Type: multipart/alternative;
 boundary="b1_i8OuuPJdFnwbiIZRUqieh1Trd9c6GIhUctdxjweFI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_i8OuuPJdFnwbiIZRUqieh1Trd9c6GIhUctdxjweFI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

After I successfully added an OOT Gain block (checked by the uhd_usrp_pro=
be command), I want to call `set_gain_value()` function in my Python prog=
ram. Since the default RFNoC block control in Python doesn=E2=80=99t cont=
ain the OOT block control, I do some following modifications:

1. Add `gain_block_control.cpp` and `gain_block_control_python.hpp` in `<=
repo>/host/lib/rfnoc`

2. Add `gain_block_control.hpp` in `<repo>/host/include/uhd/rfnoc`

3. Add `GainBlockControl =3D lib.rfnoc.gain_block_control` in `<repo>/hos=
t/build/python/uhd/rfnoc.py`

4. Add `#include =E2=80=9Crfnoc/gain/gain_block_control=E2=80=9D` and `ex=
port_gain_block_control(rfnoc_module)` in `<repo>/host/python/pyuhd.cpp`

Then I implement `make` under the path `<repo>/host/build/python`, but I =
get the following errors:

`[  0%] Built target usrp_mpm`

`[  0%] Built target copy_mpm_packages`

`[  3%] Built target uhd-resources`

`[  7%] Built target uhd_rpclib`

`[ 98%] Built target uhd`

`Scanning dependencies of target pyuhd`

`[ 98%] Building CXX object python/CMakeFiles/pyuhd.dir/pyuhd.cpp.o`

`home/uhd/host/python/pyuhd.cpp: In function =E2=80=98void pybind11_init_=
libpyuhd(pybind11::module_&)=E2=80=99:`

`home/uhd/host/python/pyuhd.cpp:113:5: error: =E2=80=98export_gain_block_=
control=E2=80=99 was not declared in this scope`

`     export_gain_block_control(rfnoc_module)`

`     ^~~~~~~~~~~~~~~~~~~~~~~~~`

`home/uhd/host/python/pyuhd.cpp:113:5: note: suggested alternative: =E2=80=
=98export_siggen_block_control=E2=80=99`

`     export_gain_block_control(rfnoc_module)`

`     ^~~~~~~~~~~~~~~~~~~~~~~~~`

`     export_siggen_block_control`

`home/uhd/host/python/pyuhd.cpp:117:16: error: =E2=80=98cal_module=E2=80=99=
 was not declared in this scope`

`     export_cal(cal_module);`

`                ^~~~~~~~~~`

`home/uhd/host/python/pyuhd.cpp:117:16: note: suggested alternative: =E2=80=
=98usrp_module=E2=80=99`

`     export_cal(cal_module);`

`                ^~~~~~~~~~`

`                usrp_module`

`python/CMakeFiles/pyuhd.dir/build.make:62: recipe for target 'python/CMa=
keFiles/pyuhd.dir/pyuhd.cpp.o' failed`

`make[2]: *** [python/CMakeFiles/pyuhd.dir/pyuhd.cpp.o] Error 1`

`CMakeFiles/Makefile2:6657: recipe for target 'python/CMakeFiles/pyuhd.di=
r/all' failed`

`make[1]: *** [python/CMakeFiles/pyuhd.dir/all] Error 2`

`Makefile:162: recipe for target 'all' failed`

`make: *** [all] Error 2`

Did I miss something to add or this is not the correct way to implement P=
ython OOT block control?=20

Thanks a lot to anyone who can help me! Looking forward to your reply.

--b1_i8OuuPJdFnwbiIZRUqieh1Trd9c6GIhUctdxjweFI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>After I successfully added an OOT Gain block (checked by th=
e uhd_usrp_probe command), I want to call <code>set_gain_value()</code> fun=
ction in my Python program. Since the default RFNoC block control in Python=
 doesn=E2=80=99t contain the OOT block control, I do some following modific=
ations:</p><ol><li><p>Add <code>gain_block_control.cpp</code> and <code>gai=
n_block_control_python.hpp</code> in <code>&lt;repo&gt;/host/lib/rfnoc</cod=
e></p></li><li><p>Add <code>gain_block_control.hpp</code> in <code>&lt;repo=
&gt;/host/include/uhd/rfnoc</code></p></li><li><p>Add <code>GainBlockContro=
l =3D lib.rfnoc.gain_block_control</code> in <code>&lt;repo&gt;/host/build/=
python/uhd/rfnoc.py</code></p></li><li><p>Add <code>#include =E2=80=9Crfnoc=
/gain/gain_block_control=E2=80=9D</code> and <code>export_gain_block_contro=
l(rfnoc_module)</code> in <code>&lt;repo&gt;/host/python/pyuhd.cpp</code></=
p></li></ol><p>Then I implement <code>make</code> under the path <code>&lt;=
repo&gt;/host/build/python</code>, but I get the following errors:</p><p><c=
ode>[  0%] Built target usrp_mpm</code></p><p><code>[  0%] Built target cop=
y_mpm_packages</code></p><p><code>[  3%] Built target uhd-resources</code><=
/p><p><code>[  7%] Built target uhd_rpclib</code></p><p><code>[ 98%] Built =
target uhd</code></p><p><code>Scanning dependencies of target pyuhd</code><=
/p><p><code>[ 98%] Building CXX object python/CMakeFiles/pyuhd.dir/pyuhd.cp=
p.o</code></p><p><code>home/uhd/host/python/pyuhd.cpp: In function =
=E2=80=98void pybind11_init_libpyuhd(pybind11::module_&amp;)=E2=80=99:</cod=
e></p><p><code>home/uhd/host/python/pyuhd.cpp:113:5: error: =E2=80=98export=
_gain_block_control=E2=80=99 was not declared in this scope</code></p><p><c=
ode>     export_gain_block_control(rfnoc_module)</code></p><p><code>     ^~=
~~~~~~~~~~~~~~~~~~~~~~~</code></p><p><code>home/uhd/host/python/pyuhd.cpp:1=
13:5: note: suggested alternative: =E2=80=98export_siggen_block_control=
=E2=80=99</code></p><p><code>     export_gain_block_control(rfnoc_module)</=
code></p><p><code>     ^~~~~~~~~~~~~~~~~~~~~~~~~</code></p><p><code>     ex=
port_siggen_block_control</code></p><p><code>home/uhd/host/python/pyuhd.cpp=
:117:16: error: =E2=80=98cal_module=E2=80=99 was not declared in this scope=
</code></p><p><code>     export_cal(cal_module);</code></p><p><code>       =
         ^~~~~~~~~~</code></p><p><code>home/uhd/host/python/pyuhd.cpp:117:1=
6: note: suggested alternative: =E2=80=98usrp_module=E2=80=99</code></p><p>=
<code>     export_cal(cal_module);</code></p><p><code>                ^~~~~=
~~~~~</code></p><p><code>                usrp_module</code></p><p><code>pyt=
hon/CMakeFiles/pyuhd.dir/build.make:62: recipe for target 'python/CMakeFile=
s/pyuhd.dir/pyuhd.cpp.o' failed</code></p><p><code>make[2]: *** [python/CMa=
keFiles/pyuhd.dir/pyuhd.cpp.o] Error 1</code></p><p><code>CMakeFiles/Makefi=
le2:6657: recipe for target 'python/CMakeFiles/pyuhd.dir/all' failed</code>=
</p><p><code>make[1]: *** [python/CMakeFiles/pyuhd.dir/all] Error 2</code><=
/p><p><code>Makefile:162: recipe for target 'all' failed</code></p><p><code=
>make: *** [all] Error 2</code></p><p>Did I miss something to add or this i=
s not the correct way to implement Python OOT block control? </p><p>Thanks =
a lot to anyone who can help me! Looking forward to your reply.</p><p><br><=
/p><p><br></p><p><br></p>

--b1_i8OuuPJdFnwbiIZRUqieh1Trd9c6GIhUctdxjweFI--

--===============9177261097736921974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9177261097736921974==--
