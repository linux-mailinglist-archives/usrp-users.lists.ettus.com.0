Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 662532829C7
	for <lists+usrp-users@lfdr.de>; Sun,  4 Oct 2020 11:28:54 +0200 (CEST)
Received: from [::1] (port=57470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kP0K1-0000sA-NQ; Sun, 04 Oct 2020 05:28:49 -0400
Received: from mail-ej1-f51.google.com ([209.85.218.51]:42485)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emil.bjelski@gmail.com>)
 id 1kP0Jy-0000nm-9k
 for usrp-users@lists.ettus.com; Sun, 04 Oct 2020 05:28:46 -0400
Received: by mail-ej1-f51.google.com with SMTP id h24so1051916ejg.9
 for <usrp-users@lists.ettus.com>; Sun, 04 Oct 2020 02:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=doXPKd/erQCl3ngnRyjVAmcmlgo522QLq+QLK3L1Eig=;
 b=I2crOmkat5QrZ3pIZUzD2nDho7OYex0bUF0Qyjjo0UsLI89NleODBxM2w3+ymGi+CD
 MT9W+p+yJ8oIFYupI3LQUX++1+wUg10kcBQx81U0XiP1dItjt6cK3JBTwIasI8y9AQH2
 ZwWRH54FDnlIE1Nxj4Q9ixnY9Dx/mUGq2VcQYyu0N2Yv8fJBTiL1yYaKMU+PHGEAuOiT
 GI+bBdjrfPo5ty4NdBsJzKqGJjzOBn8CWboFOJfndpiwIvvG05umOJc4vuaw9M6BwuTV
 EHLOLnbG+hWc0xKY+UUd/8gUS6TK1Vkt9xUsESdWn4icj7hdZusHlL7CLwwv/8wZxKS9
 oHcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=doXPKd/erQCl3ngnRyjVAmcmlgo522QLq+QLK3L1Eig=;
 b=b/omnoRTQfBmm0CMWvxJQWRyBywIwf9EP+k7wft8rqjLJFxzP8OBhbSUvzzQNFHiaK
 6hbkh22PaEHMIsNxTFTMNg4eQ56eRvau7gLibsA3viOApYWnFMEWs2RP604ZMrmwWDFg
 0m1OVHhw6usSBHVu2jFS0FzvW0p0iu4PViH79FQ9jR9RYkfSDwB1hL3jETLUc3QW/OvG
 jAYUCh4q3PKaEa28TwxYwRZSAgi9Xg3Vsu12Ml8TtnwAxwV8MuhMzxTtQgn3XrPW7M8z
 WM0Kk141ejCseu7KhpQstZ2WH1firGH+qbFayQNZrTdY7qHOqJrCmcHMV0SyaPxXwj+p
 deGg==
X-Gm-Message-State: AOAM530H+ILKf88TObpHRW5CKfxYNXdmFATKSAzmMAo9dbe/NP+7fAch
 3oNwdUSC7JSTfxOW5ssXu1WdXFKUSdyV+og+iyHdy8ekD7GxGQ==
X-Google-Smtp-Source: ABdhPJwJDqC1MKr22InNod3MrEqyoJAtdgaNxYf+91EmXVCvF+nEp7TiWtJK+MHvASkRla8TZi5Ky5AOKLWgIvERQvM=
X-Received: by 2002:a17:906:39c8:: with SMTP id
 i8mr9375507eje.299.1601803684812; 
 Sun, 04 Oct 2020 02:28:04 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 4 Oct 2020 11:27:54 +0200
Message-ID: <CADrptxUA+=r3ftB4JbEgzrLOF2JdXiDx_f00G0TvKSZ8=zpw_w@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Installation from source (Gnuradio 3.8.2.0 on Ubuntu
 18.04.05) - test failure qa_cpp_py_binding (Failed) ...
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============7372956339807716307=="
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

--===============7372956339807716307==
Content-Type: multipart/alternative; boundary="000000000000a21f9105b0d4fb59"

--000000000000a21f9105b0d4fb59
Content-Type: text/plain; charset="UTF-8"

Hi All,

I getting errors when calling make test, while installing Gnuradio 3.8.2.0
on Ubuntu 18.04.05.
I have also installed thrift version 0.10.0.

These are errors
`99% tests passed, 3 tests failed out of 368
Total Test time (real) = 166.29 sec
The following tests FAILED:
171 - qa_cpp_py_binding (Failed)
172 - qa_cpp_py_binding_set (Failed)
173 - qa_ctrlport_probes (Failed)
Errors while running CTest`

Further if I call

ctest --output-on-failure

I get following

`170/368 Test #170: qa_copy ............................................
Passed    0.46 sec
        Start 171: qa_cpp_py_binding
171/368 Test #171: qa_cpp_py_binding
..................................***Failed    0.83 sec
EE
======================================================================
ERROR: test_001 (__main__.test_cpp_py_binding)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
line 111, in test_001
    rval = v1.get()
  File
"/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
line 7519, in get
    return _runtime_swig.RPC_get_string_get(self)
RuntimeError: basic_string::_M_construct null not valid

======================================================================
ERROR: test_002 (__main__.test_cpp_py_binding)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
line 162, in test_002
    radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
TypeError: __init__() got an unexpected keyword argument 'argv'

----------------------------------------------------------------------
Ran 2 tests in 0.352s

FAILED (errors=2)
DEPRECATED: Using filename with gr_unittest does no longer have any effect.

        Start 172: qa_cpp_py_binding_set
172/368 Test #172: qa_cpp_py_binding_set
..............................***Failed    0.71 sec
EE
======================================================================
ERROR: test_001 (__main__.test_cpp_py_binding_set)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
line 107, in test_001
    rval = g3.get()
  File
"/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
line 7519, in get
    return _runtime_swig.RPC_get_string_get(self)
RuntimeError: basic_string::_M_construct null not valid

======================================================================
ERROR: test_002 (__main__.test_cpp_py_binding_set)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
line 129, in test_002
    radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
TypeError: __init__() got an unexpected keyword argument 'argv'

----------------------------------------------------------------------
Ran 2 tests in 0.253s

FAILED (errors=2)
DEPRECATED: Using filename with gr_unittest does no longer have any effect.

        Start 173: qa_ctrlport_probes
173/368 Test #173: qa_ctrlport_probes
.................................***Failed    1.18 sec
EEEEE
======================================================================
ERROR: test_001 (__main__.test_ctrlport_probes)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
line 67, in test_001
    radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
TypeError: __init__() got an unexpected keyword argument 'argv'

======================================================================
ERROR: test_002 (__main__.test_ctrlport_probes)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
line 108, in test_002
    radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
TypeError: __init__() got an unexpected keyword argument 'argv'

======================================================================
ERROR: test_003 (__main__.test_ctrlport_probes)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
line 148, in test_003
    radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
TypeError: __init__() got an unexpected keyword argument 'argv'

======================================================================
ERROR: test_004 (__main__.test_ctrlport_probes)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
line 189, in test_004
    radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
TypeError: __init__() got an unexpected keyword argument 'argv'

======================================================================
ERROR: test_005 (__main__.test_ctrlport_probes)
----------------------------------------------------------------------
Traceback (most recent call last):
  File
"/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
line 229, in test_005
    radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
TypeError: __init__() got an unexpected keyword argument 'argv'

----------------------------------------------------------------------
Ran 5 tests in 0.705s

FAILED (errors=5)
DEPRECATED: Using filename with gr_unittest does no longer have any effect.

        Start 174: qa_delay
174/368 Test #174: qa_delay ...........................................
Passed    0.46 sec
        Start 175: qa_endian_swap
175/368 Test #175: qa_endian_swap .....................................
Passed    0.48 sec`

Does anyone know what would be solution?

Kind Regards,
Tarik

--000000000000a21f9105b0d4fb59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<br><br>I getting errors when calling make test, wh=
ile installing Gnuradio 3.8.2.0 on Ubuntu 18.04.05.<br>I have also installe=
d thrift version 0.10.0. <br><br>These are errors<br>`99% tests passed, 3 t=
ests failed out of 368<br>Total Test time (real) =3D 166.29 sec<br>The foll=
owing tests FAILED:<br>	171 - qa_cpp_py_binding (Failed)<br>	172 - qa_cpp_p=
y_binding_set (Failed)<br>	173 - qa_ctrlport_probes (Failed)<br>Errors whil=
e running CTest`<br><br>Further if I call <br><br>ctest --output-on-failure=
<br><br>I get following<br><br>`170/368 Test #170: qa_copy ................=
............................ =C2=A0 Passed =C2=A0 =C2=A00.46 sec<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Start 171: qa_cpp_py_binding<br>171/368 Test #171: qa_=
cpp_py_binding ..................................***Failed =C2=A0 =C2=A00.8=
3 sec<br>EE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>ERROR: test_001 (__main__.test_cpp_py_binding)<br>---------------------=
-------------------------------------------------<br>Traceback (most recent=
 call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/=
python/blocks/qa_cpp_py_binding.py&quot;, line 111, in test_001<br>=C2=A0 =
=C2=A0 rval =3D v1.get()<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradi=
o/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py&q=
uot;, line 7519, in get<br>=C2=A0 =C2=A0 return _runtime_swig.RPC_get_strin=
g_get(self)<br>RuntimeError: basic_string::_M_construct null not valid<br><=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: t=
est_002 (__main__.test_cpp_py_binding)<br>---------------------------------=
-------------------------------------<br>Traceback (most recent call last):=
<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/block=
s/qa_cpp_py_binding.py&quot;, line 162, in test_002<br>=C2=A0 =C2=A0 radios=
ys =3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)=
<br>TypeError: __init__() got an unexpected keyword argument &#39;argv&#39;=
<br><br>-------------------------------------------------------------------=
---<br>Ran 2 tests in 0.352s<br><br>FAILED (errors=3D2)<br>DEPRECATED: Usin=
g filename with gr_unittest does no longer have any effect.<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Start 172: qa_cpp_py_binding_set<br>172/368 Test #172:=
 qa_cpp_py_binding_set ..............................***Failed =C2=A0 =C2=
=A00.71 sec<br>EE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>ERROR: test_001 (__main__.test_cpp_py_binding_set)<br>-----------=
-----------------------------------------------------------<br>Traceback (m=
ost recent call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/=
gr-blocks/python/blocks/qa_cpp_py_binding_set.py&quot;, line 107, in test_0=
01<br>=C2=A0 =C2=A0 rval =3D g3.get()<br>=C2=A0 File &quot;/home/tkazaz/wor=
karea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runt=
ime_swig.py&quot;, line 7519, in get<br>=C2=A0 =C2=A0 return _runtime_swig.=
RPC_get_string_get(self)<br>RuntimeError: basic_string::_M_construct null n=
ot valid<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>ERROR: test_002 (__main__.test_cpp_py_binding_set)<br>--------------=
--------------------------------------------------------<br>Traceback (most=
 recent call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-=
blocks/python/blocks/qa_cpp_py_binding_set.py&quot;, line 129, in test_002<=
br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=3Dargv, rpcmet=
hod=3D&#39;thrift&#39;)<br>TypeError: __init__() got an unexpected keyword =
argument &#39;argv&#39;<br><br>--------------------------------------------=
--------------------------<br>Ran 2 tests in 0.253s<br><br>FAILED (errors=
=3D2)<br>DEPRECATED: Using filename with gr_unittest does no longer have an=
y effect.<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 173: qa_ctrlport_probes<=
br>173/368 Test #173: qa_ctrlport_probes .................................*=
**Failed =C2=A0 =C2=A01.18 sec<br>EEEEE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_001 (__main__.test_ctrlport_p=
robes)<br>-----------------------------------------------------------------=
-----<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/tkaz=
az/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py&quot;, l=
ine 67, in test_001<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient=
(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() got an=
 unexpected keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_002 (__main__.test_ctrl=
port_probes)<br>-----------------------------------------------------------=
-----------<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/hom=
e/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py&qu=
ot;, line 108, in test_002<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPor=
tClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__()=
 got an unexpected keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_003 (__main__.=
test_ctrlport_probes)<br>--------------------------------------------------=
--------------------<br>Traceback (most recent call last):<br>=C2=A0 File &=
quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_pro=
bes.py&quot;, line 148, in test_003<br>=C2=A0 =C2=A0 radiosys =3D GNURadioC=
ontrolPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: _=
_init__() got an unexpected keyword argument &#39;argv&#39;<br><br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_004 (=
__main__.test_ctrlport_probes)<br>-----------------------------------------=
-----------------------------<br>Traceback (most recent call last):<br>=C2=
=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ct=
rlport_probes.py&quot;, line 189, in test_004<br>=C2=A0 =C2=A0 radiosys =3D=
 GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>Ty=
peError: __init__() got an unexpected keyword argument &#39;argv&#39;<br><b=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: t=
est_005 (__main__.test_ctrlport_probes)<br>--------------------------------=
--------------------------------------<br>Traceback (most recent call last)=
:<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/bloc=
ks/qa_ctrlport_probes.py&quot;, line 229, in test_005<br>=C2=A0 =C2=A0 radi=
osys =3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39=
;)<br>TypeError: __init__() got an unexpected keyword argument &#39;argv&#3=
9;<br><br>-----------------------------------------------------------------=
-----<br>Ran 5 tests in 0.705s<br><br>FAILED (errors=3D5)<br>DEPRECATED: Us=
ing filename with gr_unittest does no longer have any effect.<br><br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 Start 174: qa_delay<br>174/368 Test #174: qa_delay ..=
......................................... =C2=A0 Passed =C2=A0 =C2=A00.46 s=
ec<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 175: qa_endian_swap<br>175/368 Test=
 #175: qa_endian_swap ..................................... =C2=A0 Passed =
=C2=A0 =C2=A00.48 sec`<br><br>Does anyone know what would be solution?<br><=
br>Kind Regards,<br>Tarik<br></div>

--000000000000a21f9105b0d4fb59--


--===============7372956339807716307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7372956339807716307==--

