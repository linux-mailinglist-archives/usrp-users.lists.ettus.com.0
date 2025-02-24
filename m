Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE36A43113
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2025 00:41:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A090B385F69
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 18:41:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740440494; bh=P8FFEEfEXqIplOeLDmV4CItKCAFiaQw0pKN2sNLkbZw=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=B8Wnzx8QmnS+ZHgiO2uWy/glv5uQtUgSE9KhcocDlricaKpFlfjjIGU4Yk8VATZsq
	 4+Voas/3w2lCCewVOKr0idKpfpsZMN2WTUy9oIM+ouW5kmUvRPOuRdBF21vL3aC6tS
	 v12wzFtzZHMvbewW1+LoiaeYK8wOPxk2C+0lQyYUt1eY+eHC35mXNIWHcd6v0f9t2f
	 a2E4+UDQsaBdFwqs6gLDsKP065543fZHnTbMBB1nR74epWfpIsX6U/jaTRZmfyEeEN
	 bYEBDl0hHrGJyoztydzht516VoOqHFZvMjCIr9AY5GUv1nJniOt/niz2zFi2ZkzqNE
	 93p9jDvr3Gkzw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26483385D4A
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 18:40:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740440435; bh=2fR9VzHKQ2vu9MdCM6NdJrOXwoD6bqxFtpBLXfqplfQ=;
	h=Date:To:From:Subject:From;
	b=ErxI8pPxZoEQ/Vk14u384sLa3Ebq/a9B6OOekYypjojDadqaP5ei4fsn528pc9nqD
	 c8pAsuMDX8GECRA1kRmMVPaA5SSTCILp17i4Ayl5KvlzyGGSyMzN2VPgUvZDYzxs12
	 15gsVWJhe3p3L5Q+wli28h/WTyS630c1leWQEl9+87+7puQyLLgOYcezz/yFirxrIb
	 KKoPlzngcCieCkJPS1UEbZ3Fi3Urt0sn132/t90PeCOjT5XHZ/iqR34BVLwoSt9d9t
	 Y/z5kaoywaqrDUCLKKf59W4dOhGYSxM9WsPl3mAS8vrOrfZY4R5nY/rXoOTZ6aI/hT
	 5GRXYGaxp/I+A==
Date: Mon, 24 Feb 2025 23:40:35 +0000
To: usrp-users@lists.ettus.com
Message-ID: <Fb689YvAN2Dtqhz4rhioHxlXlC1kQRriYFsMDiAqcmw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 5YROV73LTG5XTND6PS34D6UCHG5WHBMP
X-Message-ID-Hash: 5YROV73LTG5XTND6PS34D6UCHG5WHBMP
X-MailFrom: philip.tustin@mediatek.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem running the MPM daemon & MPC Server
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5YROV73LTG5XTND6PS34D6UCHG5WHBMP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "philip.tustin--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: philip.tustin@mediatek.com
Content-Type: multipart/mixed; boundary="===============6746362006049408426=="

This is a multi-part message in MIME format.

--===============6746362006049408426==
Content-Type: multipart/alternative;
 boundary="b1_Fb689YvAN2Dtqhz4rhioHxlXlC1kQRriYFsMDiAqcmw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Fb689YvAN2Dtqhz4rhioHxlXlC1kQRriYFsMDiAqcmw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,\
\
After building the MPM daemon, I am trying (currently unsuccessfully) to =
execute the MPM daemon & RPC server.\
\
The following MPM build sequence creates the file **=E2=80=98libusrp-peri=
phs.so.4.8.0=E2=80=99** in the directory  **=E2=80=98/usr/lib=E2=80=99**.=
 In the same directory **=E2=80=98/usr/lib=E2=80=99**, the symlink **=E2=80=
=98libusrp-periphs.so=E2=80=99** references **=E2=80=98libusrp-periphs.so=
.4.8.0=E2=80=99**.

*cd uhd/mpm*

*mkdir build*

*cd build*

*cmake ../*

*sudo make -j2 install*

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\
I also see the shared object file **=E2=80=98libpyusrp_periphs.so=E2=80=98=
** located in the sub-directory **=E2=80=98/usr/lib/python3.10/site-packa=
ges/usrp_mpm=E2=80=99**.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\
To start the MPM daemon and RPC server, I am executing the python file **=
=E2=80=98uhd/mpm/python/usrp_hwd.py=E2=80=99** using the following comman=
d.

***python3 ./usrp_hwd.py***

**Q. Is this how I should be starting the MPM daemon and RPC server ?**

Note that this file does the following import.

***import usrp_mpm.libpyusrp_periphs as lib***

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\
\
**This is the output I see on the command-line (see error at the end).**\
\
*Traceback (most recent call last):*

  *File "/home/mediatek/uhd2/uhd/mpm/python/./usrp_hwd.py", line 15, in <=
module>*

    *import usrp_mpm as mpm*

  *File "/usr/local/lib/python3.10/site-packages/usrp_mpm/__init__.py", l=
ine 25, in <module>*

    *from . import periph_manager*

  *File "/usr/local/lib/python3.10/site-packages/usrp_mpm/periph_manager/=
__init__.py", line 14, in <module>*

    *from .base import PeriphManagerBase*

  *File "/usr/local/lib/python3.10/site-packages/usrp_mpm/periph_manager/=
base.py", line 24, in <module>*

    *from usrp_mpm.xports import XportAdapterMgr*

  *File "/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/__init__=
.py", line 11, in <module>*

    *from .xport_adapter_mgr import XportAdapterMgr*

  *File "/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/xport_ad=
apter_mgr.py", line 15, in <module>*

    *from .xport_adapter_ctrl import XportAdapterCtrl*

  *File "/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/xport_ad=
apter_ctrl.py", line 15, in <module>*

    ***from usrp_mpm.sys_utils.uio import UIO***

  ***File "/usr/local/lib/python3.10/site-packages/usrp_mpm/sys_utils/uio=
.py", line 14, in <module>***

    ***import usrp_mpm.libpyusrp_periphs as lib***

***ModuleNotFoundError: No module named 'usrp_mpm.libpyusrp_periphs'.***

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\
I confirmed that the directory **=E2=80=98/usr/lib/python3.10/site-packag=
es**=E2=80=98 is in the path. It SHOULD therefore be found when using the=
 following import statement.=20

***import usrp_mpm.libpyusrp_periphs as lib***\
\
**Q. Any idea why this is NOT working for me ?**

--b1_Fb689YvAN2Dtqhz4rhioHxlXlC1kQRriYFsMDiAqcmw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,<br><br>After building the MPM daemon, I am trying (currently unsu=
ccessfully) to execute the MPM daemon &amp; RPC server.<br><br>The followin=
g MPM build sequence creates the file <strong>=E2=80=98libusrp-periphs.so.4=
.8.0=E2=80=99</strong> in the directory <strong> =E2=80=98/usr/lib=E2=80=
=99</strong>. In the same directory <strong>=E2=80=98/usr/lib=E2=80=99</str=
ong>, the symlink <strong>=E2=80=98libusrp-periphs.so=E2=80=99</strong> ref=
erences <strong>=E2=80=98libusrp-periphs.so.4.8.0=E2=80=99</strong>.</p><p>=
<em>cd uhd/mpm</em></p><p><em>mkdir build</em></p><p><em>cd build</em></p><=
p><em>cmake ../</em></p><p><em>sudo make -j2 install</em></p><p>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>I also see the shared object file <strong>=
=E2=80=98libpyusrp_periphs.so=E2=80=98</strong> located in the sub-director=
y <strong>=E2=80=98/usr/lib/python3.10/site-packages/usrp_mpm=E2=80=99</str=
ong>.</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>To start the MPM daemon an=
d RPC server, I am executing the python file <strong>=E2=80=98uhd/mpm/pytho=
n/usrp_hwd.py=E2=80=99</strong> using the following command.</p><p><em><str=
ong>python3 ./usrp_hwd.py</strong></em><br><br></p><p><strong>Q. Is this ho=
w I should be starting the MPM daemon and RPC server ?</strong></p><p>Note =
that this file does the following import.</p><p><em><strong>import usrp_mpm=
.libpyusrp_periphs as lib</strong></em></p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br><br><strong>This is the output I see on the command-line (see err=
or at the end).</strong><br><br><em>Traceback (most recent call last):</em>=
</p><p><em>  File "/home/mediatek/uhd2/uhd/mpm/python/./usrp_hwd.py", line =
15, in &lt;module&gt;</em></p><p><em>    import usrp_mpm as mpm</em></p><p>=
<em>  File "/usr/local/lib/python3.10/site-packages/usrp_mpm/__init__.py", =
line 25, in &lt;module&gt;</em></p><p><em>    from . import periph_manager<=
/em></p><p><em>  File "/usr/local/lib/python3.10/site-packages/usrp_mpm/per=
iph_manager/__init__.py", line 14, in &lt;module&gt;</em></p><p><em>    fro=
m .base import PeriphManagerBase</em></p><p><em>  File "/usr/local/lib/pyth=
on3.10/site-packages/usrp_mpm/periph_manager/base.py", line 24, in &lt;modu=
le&gt;</em></p><p><em>    from usrp_mpm.xports import XportAdapterMgr</em><=
/p><p><em>  File "/usr/local/lib/python3.10/site-packages/usrp_mpm/xports/_=
_init__.py", line 11, in &lt;module&gt;</em></p><p><em>    from .xport_adap=
ter_mgr import XportAdapterMgr</em></p><p><em>  File "/usr/local/lib/python=
3.10/site-packages/usrp_mpm/xports/xport_adapter_mgr.py", line 15, in &lt;m=
odule&gt;</em></p><p><em>    from .xport_adapter_ctrl import XportAdapterCt=
rl</em></p><p><em>  File "/usr/local/lib/python3.10/site-packages/usrp_mpm/=
xports/xport_adapter_ctrl.py", line 15, in &lt;module&gt;</em></p><p><em>  =
  <strong>from usrp_mpm.sys_utils.uio import UIO</strong></em></p><p><em><s=
trong>  File "/usr/local/lib/python3.10/site-packages/usrp_mpm/sys_utils/ui=
o.py", line 14, in &lt;module&gt;</strong></em></p><p><em><strong>    impor=
t usrp_mpm.libpyusrp_periphs as lib</strong></em></p><p><em><strong>ModuleN=
otFoundError: No module named 'usrp_mpm.libpyusrp_periphs'.</strong></em><b=
r><br></p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>I confirmed that the di=
rectory <strong>=E2=80=98/usr/lib/python3.10/site-packages</strong>=
=E2=80=98 is in the path. It SHOULD therefore be found when using the follo=
wing import statement. </p><p><em><strong>import usrp_mpm.libpyusrp_periphs=
 as lib</strong></em><br><br><strong>Q. Any idea why this is NOT working fo=
r me ?</strong><br><br></p>

--b1_Fb689YvAN2Dtqhz4rhioHxlXlC1kQRriYFsMDiAqcmw--

--===============6746362006049408426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6746362006049408426==--
