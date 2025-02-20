Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12680A3E3BA
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 19:23:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF737385CF3
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 13:23:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740075810; bh=3WoXGmB4tEO2WWQ0TEwJCMtryiQ9JIGb2gKljdVIn+Y=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=c6qnqWHhbelEfPaTgj47MjkkHpri+V/gD3EFdXRtjNUvHKTPr1w3ZnJMUFVK/34Ay
	 YkKJsSHrjVN66lo2lYk9Wp4dtUtVq8rqsHOlcOdOVlGcx4qq9vsJNQUi3bB2uYe+PG
	 KXmKVTnXzIA6BPuutMXH4sXOfJ5funfxAqiZKFdaDMl2qeI/HM1fgcgPv1Sm5oqxsw
	 hGFkBW1QpI8hpiHS2jRbElmGIRx+BloqU68bt8Z+ym7dHqz9tUEKD8G3JnEI6+RPqE
	 6OlK9t3xKUCTP7+FqpxTRdjWeRVK+sCOSBIK6bkmjLafrgEFc9XanwYbm4UiRcyMJW
	 Yb3uGEiKAp4eg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDF18385CF3
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 13:23:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740075807; bh=dyJHzz9oluiAYoPnyzHa5hjm3sRO8qbXwq8YfT6A5BI=;
	h=Date:To:From:Subject:From;
	b=06DSpWq/KVvBhkkeLluTIZU+BMPEWBh6Z3RrncVdFFarWmpUTJLRWVhJBgX6sDc4W
	 EJwgEStdcdrCsxRX9OSAbHjaY02MLQvaduk0naqmqLMzXV3UV6rei390qpDGPeT8Kn
	 fmLJUBGuW5Txb6ghqNQMn8uqsjxGvmdeuBGSGKoUc6h204k8PslNQnIQ14WU7M9Dxi
	 hxFWMZPPhVQkQCpZUG2VB9TuMqsIA23U41qPY4VVfE2zhdVt5yzLaUmxqARKGOo4r4
	 WcXqruinRBVfCa8f5Pjqhui0V5zoh9FknQi64e2eM9yHCWVQMdMlgkS+9TrPBCKCEq
	 gfKcuqiJeuamw==
Date: Thu, 20 Feb 2025 18:23:27 +0000
To: usrp-users@lists.ettus.com
Message-ID: <4DX9fF05uFXfv9D4isyGGttKgzbLYVWmoPuskyxWVY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: RH74JZMCSK7DX4W4QRAMJIJMOCOTTCKA
X-Message-ID-Hash: RH74JZMCSK7DX4W4QRAMJIJMOCOTTCKA
X-MailFrom: philip.tustin@mediatek.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem installing the PyPi mprpc python package (0.1.17)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RH74JZMCSK7DX4W4QRAMJIJMOCOTTCKA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "philip.tustin--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: philip.tustin@mediatek.com
Content-Type: multipart/mixed; boundary="===============2007427232327680003=="

This is a multi-part message in MIME format.

--===============2007427232327680003==
Content-Type: multipart/alternative;
 boundary="b1_4DX9fF05uFXfv9D4isyGGttKgzbLYVWmoPuskyxWVY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4DX9fF05uFXfv9D4isyGGttKgzbLYVWmoPuskyxWVY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am having problems installing the mprpc package (pre-requisite for buil=
ding the UHD driver).\
I am trying to install it because it is imported in some of the python fi=
les I am using.

Please take a look through my notes below.

In a nut shell, the build is using the header files in **=E2=80=98/usr/in=
clude/python3.10=E2=80=99** when I need it to use the header files in **=E2=
=80=98\~/.pyenv/versions/3.5.10/include/python3.5m=E2=80=98**.

Q. How do you suggest I install mprpc ?\
\
Thanks in advance,

\-Phil

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

My linux box is running Ubuntu 22.04.5 LTS\
Python 3.10.5 is the base python version.\
\
When I build with 3.10.5 (pip install mprpc), I see the following error.

*building 'mprpc.client' extension*

      *creating build/temp.linux-x86_64-3.10*

      *creating build/temp.linux-x86_64-3.10/mprpc*

      *x86_64-linux-gnu-gcc -Wno-unused-result -Wsign-compare -DNDEBUG -g=
 -fwrapv -O2 -Wall -g -fstack-protector-strong -Wformat -Werror=3Dformat-=
security -g -fwrapv -O2 -Wdate-time -D_FORTIFY_SOURCE=3D2 -fPIC **-I/usr/=
include/python3.10** -c mprpc/client.c -o build/temp.linux-x86_64-3.10/mp=
rpc/client.o*

      *mprpc/client.c: In function =E2=80=98__Pyx_modinit_type_init_code=E2=
=80=99:*

      *mprpc/client.c:6372:38: error: =E2=80=98PyTypeObject=E2=80=99 {aka=
 =E2=80=98struct _typeobject=E2=80=99} has no member named =E2=80=98tp_pr=
int=E2=80=99*

       *6372 |   __pyx_type_5mprpc_6client_RPCClient.tp_print =3D 0;*\
\
The problem seems likely to be related to the compilation include path **=
*-I/usr/include/python3.10***

I used pyenv to install 3.5.10 (python 3.5 seems to be the oldest version=
 supported by mprpc) and have used both =E2=80=98venv=E2=80=99 and the =E2=
=80=98virtualenv=E2=80=99 pyenv plug-in to build using python 3.5.10.

I see the same build error and the same include path (***-I/usr/include/p=
ython3.10***) when building with 3.5.10.\
\
I tried to add the include path for the 3.5.10 header files by setting CF=
LAGS as follows before compiling.\
\
**export CFLAGS=3D"-I\~/.pyenv/versions/3.5.10/include/python3.5m"**

\
Even though I could now see this path added to the compilation command-li=
ne, I still see the same build error.

The command-line now looks like this.

*building 'mprpc.client' extension*

      *creating build/temp.linux-x86_64-3.10*

      *creating build/temp.linux-x86_64-3.10/mprpc*

      *x86_64-linux-gnu-gcc -Wno-unused-result -Wsign-compare -DNDEBUG -g=
 -fwrapv -O2 -Wall -g -fstack-protector-strong -Wformat -Werror=3Dformat-=
security -g -fwrapv -O2 **-I\~/.pyenv/versions/3.5.10/include/python3.5m*=
* -Wdate-time -D_FORTIFY_SOURCE=3D2 -fPIC **-I/usr/include/python3.10** -=
c mprpc/client.c -o build/temp.linux-x86_64-3.10/mprpc/client.o*

      *mprpc/client.c: In function =E2=80=98__Pyx_modinit_type_init_code=E2=
=80=99:*

      *mprpc/client.c:6372:38: error: =E2=80=98PyTypeObject=E2=80=99 {aka=
 =E2=80=98struct _typeobject=E2=80=99} has no member named =E2=80=98tp_pr=
int=E2=80=99*

       *6372 |   __pyx_type_5mprpc_6client_RPCClient.tp_print =3D 0;*\
\
A few lines later in the build I see the following lines which seems to i=
ndicate that the mprpc build is STILL using =E2=80=98/usr/library/python3=
.10=E2=80=99

*In file included from /usr/include/python3.10/unicodeobject.h:1046,*

                       *from /usr/include/python3.10/Python.h:83,*

--b1_4DX9fF05uFXfv9D4isyGGttKgzbLYVWmoPuskyxWVY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am having problems installing the mprpc package (pre-requ=
isite for building the UHD driver).<br>I am trying to install it because it=
 is imported in some of the python files I am using.</p><p>Please take a lo=
ok through my notes below.</p><p>In a nut shell, the build is using the hea=
der files in <strong>=E2=80=98/usr/include/python3.10=E2=80=99</strong> whe=
n I need it to use the header files in <strong>=E2=80=98~/.pyenv/versions/3=
.5.10/include/python3.5m=E2=80=98</strong>.<br><br></p><p>Q. How do you sug=
gest I install mprpc ?<br><br>Thanks in advance,</p><p>-Phil</p><p>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>My linux box i=
s running Ubuntu 22.04.5 LTS<br>Python 3.10.5 is the base python version.<b=
r><br>When I build with 3.10.5 (pip install mprpc), I see the following err=
or.<br><br></p><p><em>building 'mprpc.client' extension</em></p><p><em>    =
  creating build/temp.linux-x86_64-3.10</em></p><p><em>      creating build=
/temp.linux-x86_64-3.10/mprpc</em></p><p><em>      x86_64-linux-gnu-gcc -Wn=
o-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O2 -Wall -g -fstack-pro=
tector-strong -Wformat -Werror=3Dformat-security -g -fwrapv -O2 -Wdate-time=
 -D_FORTIFY_SOURCE=3D2 -fPIC <strong>-I/usr/include/python3.10</strong> -c =
mprpc/client.c -o build/temp.linux-x86_64-3.10/mprpc/client.o</em></p><p><e=
m>      mprpc/client.c: In function =E2=80=98__Pyx_modinit_type_init_code=
=E2=80=99:</em></p><p><em>      mprpc/client.c:6372:38: error: =E2=80=98PyT=
ypeObject=E2=80=99 {aka =E2=80=98struct _typeobject=E2=80=99} has no member=
 named =E2=80=98tp_print=E2=80=99</em></p><p><em>       6372 |   __pyx_type=
_5mprpc_6client_RPCClient.tp_print =3D 0;</em><br><br>The problem seems lik=
ely to be related to the compilation include path <em><strong>-I/usr/includ=
e/python3.10</strong></em><br><br></p><p>I used pyenv to install 3.5.10 (py=
thon 3.5 seems to be the oldest version supported by mprpc) and have used b=
oth =E2=80=98venv=E2=80=99 and the =E2=80=98virtualenv=E2=80=99 pyenv plug-=
in to build using python 3.5.10.<br><br></p><p>I see the same build error a=
nd the same include path (<em><strong>-I/usr/include/python3.10</strong></e=
m>) when building with 3.5.10.<br><br>I tried to add the include path for t=
he 3.5.10 header files by setting CFLAGS as follows before compiling.<br><b=
r><strong>export CFLAGS=3D"-I~/.pyenv/versions/3.5.10/include/python3.5m"</=
strong></p><p><br>Even though I could now see this path added to the compil=
ation command-line, I still see the same build error.</p><p>The command-lin=
e now looks like this.<br><br></p><p><em>building 'mprpc.client' extension<=
/em></p><p><em>      creating build/temp.linux-x86_64-3.10</em></p><p><em> =
     creating build/temp.linux-x86_64-3.10/mprpc</em></p><p><em>      x86_6=
4-linux-gnu-gcc -Wno-unused-result -Wsign-compare -DNDEBUG -g -fwrapv -O2 -=
Wall -g -fstack-protector-strong -Wformat -Werror=3Dformat-security -g -fwr=
apv -O2 <strong>-I~/.pyenv/versions/3.5.10/include/python3.5m</strong> -Wda=
te-time -D_FORTIFY_SOURCE=3D2 -fPIC <strong>-I/usr/include/python3.10</stro=
ng> -c mprpc/client.c -o build/temp.linux-x86_64-3.10/mprpc/client.o</em></=
p><p><em>      mprpc/client.c: In function =E2=80=98__Pyx_modinit_type_init=
_code=E2=80=99:</em></p><p><em>      mprpc/client.c:6372:38: error: =
=E2=80=98PyTypeObject=E2=80=99 {aka =E2=80=98struct _typeobject=E2=80=99} h=
as no member named =E2=80=98tp_print=E2=80=99</em></p><p><em>       6372 | =
  __pyx_type_5mprpc_6client_RPCClient.tp_print =3D 0;<br></em><br>A few lin=
es later in the build I see the following lines which seems to indicate tha=
t the mprpc build is STILL using =E2=80=98/usr/library/python3.10=E2=80=
=99</p><p><em>In file included from /usr/include/python3.10/unicodeobject.h=
:1046,</em></p><p><em>                       from /usr/include/python3.10/P=
ython.h:83,<br><br></em><br></p>

--b1_4DX9fF05uFXfv9D4isyGGttKgzbLYVWmoPuskyxWVY--

--===============2007427232327680003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2007427232327680003==--
