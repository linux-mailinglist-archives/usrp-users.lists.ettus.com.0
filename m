Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E79B2282B76
	for <lists+usrp-users@lfdr.de>; Sun,  4 Oct 2020 17:34:34 +0200 (CEST)
Received: from [::1] (port=59680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kP61v-0006pC-0O; Sun, 04 Oct 2020 11:34:31 -0400
Received: from mail-ej1-f51.google.com ([209.85.218.51]:40500)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kP61r-0006ku-DM
 for usrp-users@lists.ettus.com; Sun, 04 Oct 2020 11:34:27 -0400
Received: by mail-ej1-f51.google.com with SMTP id p15so8361842ejm.7
 for <usrp-users@lists.ettus.com>; Sun, 04 Oct 2020 08:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YogoukF9m0Wg2SEDYbegzP9Gzl1R9WpK7Fvgy2YqxpU=;
 b=tvsRC3cDbnOHEArEUs35nWYh1IQOG+lsu35imUh/LeBMV9IvzqwcfIbnUgmobKORQh
 nf0M67/wiMpww8KPA07K7F56xKfSY2i9zE2wdPzVddayT2gNLyutk43i+mwlArvRlszM
 qejYDz90Hin1qlkFHkJ7F8OvjGMTG6CSz9B49H7L/ArnQFJpWg2/QL4BGaaLDKWolafb
 Wk+dKzIoSLa+vF4IDxBynbxUVxCsjeG2U8Qdbva/CtMoz6LCO09ISFfpsdHPfP3y5CgZ
 5wrrurq0c7n8RLVmmmnBMB2OkWqTTcBG6RQEU2J9aGFHVqxhhfCDoLv9ltgQS3DxwQom
 Ju9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YogoukF9m0Wg2SEDYbegzP9Gzl1R9WpK7Fvgy2YqxpU=;
 b=iIZAKlkGFri50GyI0/em6TlxKKAERqlYpvZyzYLYGva9fwSNA+vJ7QJ9Im4YBKdrqB
 dsUSSgR6nWwPLOhW4DAbNK/amZLsmFSHxeQEiZ1S47Ts6MBzexupsEW4Sg8tFR5xy4j3
 sq+E4xqipkZCgtwXQ2qoFqMZjyVXEOhQMGVXv8nRShGJtifRs+2gsUfIgBUt5q+ihK6Z
 GT1Lf1w96MDQjMm+1T28NfEKG/T6u+kuEJDyEgoXRJ7s6vvf6biwdVcOBhhRUDqEMegX
 MVSc8YbqqH1mM3BENI3KSYyoKzD+COmxRfur2ITtichIUTqhE8Q5t3c0hK8qrDz98RbY
 zvjQ==
X-Gm-Message-State: AOAM5326Vpj/Pvcon7LT3TpQORX68xD5A0F16wptz/RPHexB0vfyPZcw
 3riDVpNbwOu8Qz4vs3TBMHc8ScPvHZoPrvRQ5Ezzl4Wo
X-Google-Smtp-Source: ABdhPJy/oqrWU+uLof0VygBuAVsriOKk9slsN/gmrJj7cr92d6GH6WSZyjZ/NK2X9o+StASjMvdpsc/2dsIL8m6cSwk=
X-Received: by 2002:a17:907:208b:: with SMTP id
 pv11mr2031032ejb.426.1601825626189; 
 Sun, 04 Oct 2020 08:33:46 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxUA+=r3ftB4JbEgzrLOF2JdXiDx_f00G0TvKSZ8=zpw_w@mail.gmail.com>
In-Reply-To: <CADrptxUA+=r3ftB4JbEgzrLOF2JdXiDx_f00G0TvKSZ8=zpw_w@mail.gmail.com>
Date: Sun, 4 Oct 2020 11:33:35 -0400
Message-ID: <CAGNhwTM0D+K6Ou2M9PKMfNZznazrvofrUS_4+Q9FpzZnoeyKog@mail.gmail.com>
To: Emil Bjelski <emil.bjelski@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Installation from source (Gnuradio 3.8.2.0 on
 Ubuntu 18.04.05) - test failure qa_cpp_py_binding (Failed) ...
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============7094255253730243919=="
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

--===============7094255253730243919==
Content-Type: multipart/alternative; boundary="00000000000071060b05b0da177f"

--00000000000071060b05b0da177f
Content-Type: text/plain; charset="UTF-8"

Hi Emil - A few thoughts:

1) This is a GNU Radio question; not a USRP one. You'd be better served by
querying the GR discussion list <
https://lists.gnu.org/mailman/listinfo/discuss-gnuradio >.

2) Those failing tests are related to CTRLPORT and it's use of Thrift.
Unless you are going to be using the CTRLPORT feature of GNU Radio, then
you should disable that component as well as the use of Thrift ... just
don't use it. If you don't know what it is, then you don't need it.

3) CTRLPORT / Thrift interface has not been actively maintained for years,
and Thrift keeps moving forward ... so, there are likely to be
incompatibilities between them ... might be there already. If I recall
correctly, CTRLPORT's Thrift interface works with Thrift versions 0.10.0
and 0.11.0 ... might work with 0.12.0 ... and has issues with 0.13.0 (the
current Thrift release). I might be wrong here too. Hence: What version of
Thrift are you using? Can you revert to, say, 0.11.0? That might help here.

I hope this is useful! - MLD



On Sun, Oct 4, 2020 at 5:28 AM Emil Bjelski via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All,
>
> I getting errors when calling make test, while installing Gnuradio 3.8.2.0
> on Ubuntu 18.04.05.
> I have also installed thrift version 0.10.0.
>
> These are errors
> `99% tests passed, 3 tests failed out of 368
> Total Test time (real) = 166.29 sec
> The following tests FAILED:
> 171 - qa_cpp_py_binding (Failed)
> 172 - qa_cpp_py_binding_set (Failed)
> 173 - qa_ctrlport_probes (Failed)
> Errors while running CTest`
>
> Further if I call
>
> ctest --output-on-failure
>
> I get following
>
> `170/368 Test #170: qa_copy ............................................
> Passed    0.46 sec
>         Start 171: qa_cpp_py_binding
> 171/368 Test #171: qa_cpp_py_binding
> ..................................***Failed    0.83 sec
> EE
> ======================================================================
> ERROR: test_001 (__main__.test_cpp_py_binding)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
> line 111, in test_001
>     rval = v1.get()
>   File
> "/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
> line 7519, in get
>     return _runtime_swig.RPC_get_string_get(self)
> RuntimeError: basic_string::_M_construct null not valid
>
> ======================================================================
> ERROR: test_002 (__main__.test_cpp_py_binding)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
> line 162, in test_002
>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
> TypeError: __init__() got an unexpected keyword argument 'argv'
>
> ----------------------------------------------------------------------
> Ran 2 tests in 0.352s
>
> FAILED (errors=2)
> DEPRECATED: Using filename with gr_unittest does no longer have any effect.
>
>         Start 172: qa_cpp_py_binding_set
> 172/368 Test #172: qa_cpp_py_binding_set
> ..............................***Failed    0.71 sec
> EE
> ======================================================================
> ERROR: test_001 (__main__.test_cpp_py_binding_set)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
> line 107, in test_001
>     rval = g3.get()
>   File
> "/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
> line 7519, in get
>     return _runtime_swig.RPC_get_string_get(self)
> RuntimeError: basic_string::_M_construct null not valid
>
> ======================================================================
> ERROR: test_002 (__main__.test_cpp_py_binding_set)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
> line 129, in test_002
>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
> TypeError: __init__() got an unexpected keyword argument 'argv'
>
> ----------------------------------------------------------------------
> Ran 2 tests in 0.253s
>
> FAILED (errors=2)
> DEPRECATED: Using filename with gr_unittest does no longer have any effect.
>
>         Start 173: qa_ctrlport_probes
> 173/368 Test #173: qa_ctrlport_probes
> .................................***Failed    1.18 sec
> EEEEE
> ======================================================================
> ERROR: test_001 (__main__.test_ctrlport_probes)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
> line 67, in test_001
>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
> TypeError: __init__() got an unexpected keyword argument 'argv'
>
> ======================================================================
> ERROR: test_002 (__main__.test_ctrlport_probes)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
> line 108, in test_002
>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
> TypeError: __init__() got an unexpected keyword argument 'argv'
>
> ======================================================================
> ERROR: test_003 (__main__.test_ctrlport_probes)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
> line 148, in test_003
>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
> TypeError: __init__() got an unexpected keyword argument 'argv'
>
> ======================================================================
> ERROR: test_004 (__main__.test_ctrlport_probes)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
> line 189, in test_004
>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
> TypeError: __init__() got an unexpected keyword argument 'argv'
>
> ======================================================================
> ERROR: test_005 (__main__.test_ctrlport_probes)
> ----------------------------------------------------------------------
> Traceback (most recent call last):
>   File
> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
> line 229, in test_005
>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
> TypeError: __init__() got an unexpected keyword argument 'argv'
>
> ----------------------------------------------------------------------
> Ran 5 tests in 0.705s
>
> FAILED (errors=5)
> DEPRECATED: Using filename with gr_unittest does no longer have any effect.
>
>         Start 174: qa_delay
> 174/368 Test #174: qa_delay ...........................................
> Passed    0.46 sec
>         Start 175: qa_endian_swap
> 175/368 Test #175: qa_endian_swap .....................................
> Passed    0.48 sec`
>
> Does anyone know what would be solution?
>
> Kind Regards,
> Tarik
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000071060b05b0da177f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Emil - A few thoughts:<div><br></div><div>1) This is a =
GNU Radio question; not a USRP one. You&#39;d be better served by querying =
the GR discussion list &lt;=C2=A0<a href=3D"https://lists.gnu.org/mailman/l=
istinfo/discuss-gnuradio">https://lists.gnu.org/mailman/listinfo/discuss-gn=
uradio</a> &gt;.<br><div><br></div><div>2) Those failing tests are related =
to CTRLPORT and it&#39;s use of Thrift. Unless you are going to be using th=
e CTRLPORT feature of GNU Radio, then you should disable that component as =
well as the use of Thrift ... just don&#39;t use it. If you don&#39;t know =
what it is, then you don&#39;t need it. </div><div><br></div><div>3) CTRLPO=
RT / Thrift interface has not been actively maintained for years, and Thrif=
t keeps moving forward ... so, there are likely to be incompatibilities bet=
ween them ... might be there already. If I recall correctly, CTRLPORT&#39;s=
=C2=A0Thrift interface works with Thrift versions 0.10.0 and 0.11.0 ... mig=
ht work with 0.12.0 ... and has issues with 0.13.0 (the current Thrift rele=
ase). I might be wrong here too. Hence: What version of Thrift are you usin=
g? Can you revert to, say, 0.11.0? That might help here.</div><div><br></di=
v><div>I hope this is useful! - MLD</div><div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><p=
 style=3D"text-align:justify;margin:0px"><br></p></div></div></div></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sun, Oct 4, 2020 at 5:28 AM Emil Bjelski via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi All,<br><br>I getting errors when calling make test, while inst=
alling Gnuradio 3.8.2.0 on Ubuntu 18.04.05.<br>I have also installed thrift=
 version 0.10.0. <br><br>These are errors<br>`99% tests passed, 3 tests fai=
led out of 368<br>Total Test time (real) =3D 166.29 sec<br>The following te=
sts FAILED:<br>	171 - qa_cpp_py_binding (Failed)<br>	172 - qa_cpp_py_bindin=
g_set (Failed)<br>	173 - qa_ctrlport_probes (Failed)<br>Errors while runnin=
g CTest`<br><br>Further if I call <br><br>ctest --output-on-failure<br><br>=
I get following<br><br>`170/368 Test #170: qa_copy ........................=
.................... =C2=A0 Passed =C2=A0 =C2=A00.46 sec<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Start 171: qa_cpp_py_binding<br>171/368 Test #171: qa_cpp_py_=
binding ..................................***Failed =C2=A0 =C2=A00.83 sec<b=
r>EE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ER=
ROR: test_001 (__main__.test_cpp_py_binding)<br>---------------------------=
-------------------------------------------<br>Traceback (most recent call =
last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python=
/blocks/qa_cpp_py_binding.py&quot;, line 111, in test_001<br>=C2=A0 =C2=A0 =
rval =3D v1.get()<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/build=
/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py&quot;, l=
ine 7519, in get<br>=C2=A0 =C2=A0 return _runtime_swig.RPC_get_string_get(s=
elf)<br>RuntimeError: basic_string::_M_construct null not valid<br><br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_00=
2 (__main__.test_cpp_py_binding)<br>---------------------------------------=
-------------------------------<br>Traceback (most recent call last):<br>=
=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa=
_cpp_py_binding.py&quot;, line 162, in test_002<br>=C2=A0 =C2=A0 radiosys =
=3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br=
>TypeError: __init__() got an unexpected keyword argument &#39;argv&#39;<br=
><br>----------------------------------------------------------------------=
<br>Ran 2 tests in 0.352s<br><br>FAILED (errors=3D2)<br>DEPRECATED: Using f=
ilename with gr_unittest does no longer have any effect.<br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Start 172: qa_cpp_py_binding_set<br>172/368 Test #172: qa=
_cpp_py_binding_set ..............................***Failed =C2=A0 =C2=A00.=
71 sec<br>EE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>ERROR: test_001 (__main__.test_cpp_py_binding_set)<br>--------------=
--------------------------------------------------------<br>Traceback (most=
 recent call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-=
blocks/python/blocks/qa_cpp_py_binding_set.py&quot;, line 107, in test_001<=
br>=C2=A0 =C2=A0 rval =3D g3.get()<br>=C2=A0 File &quot;/home/tkazaz/workar=
ea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime=
_swig.py&quot;, line 7519, in get<br>=C2=A0 =C2=A0 return _runtime_swig.RPC=
_get_string_get(self)<br>RuntimeError: basic_string::_M_construct null not =
valid<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>ERROR: test_002 (__main__.test_cpp_py_binding_set)<br>-----------------=
-----------------------------------------------------<br>Traceback (most re=
cent call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blo=
cks/python/blocks/qa_cpp_py_binding_set.py&quot;, line 129, in test_002<br>=
=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=
=3D&#39;thrift&#39;)<br>TypeError: __init__() got an unexpected keyword arg=
ument &#39;argv&#39;<br><br>-----------------------------------------------=
-----------------------<br>Ran 2 tests in 0.253s<br><br>FAILED (errors=3D2)=
<br>DEPRECATED: Using filename with gr_unittest does no longer have any eff=
ect.<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 173: qa_ctrlport_probes<br>17=
3/368 Test #173: qa_ctrlport_probes .................................***Fai=
led =C2=A0 =C2=A01.18 sec<br>EEEEE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_001 (__main__.test_ctrlport_probes)=
<br>----------------------------------------------------------------------<=
br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/tkazaz/wor=
karea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py&quot;, line 67=
, in test_001<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=
=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() got an unex=
pected keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_002 (__main__.test_ctrlpor=
t_probes)<br>--------------------------------------------------------------=
--------<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/t=
kazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py&quot;=
, line 108, in test_002<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortCl=
ient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() go=
t an unexpected keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_003 (__main__.tes=
t_ctrlport_probes)<br>-----------------------------------------------------=
-----------------<br>Traceback (most recent call last):<br>=C2=A0 File &quo=
t;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes=
.py&quot;, line 148, in test_003<br>=C2=A0 =C2=A0 radiosys =3D GNURadioCont=
rolPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __in=
it__() got an unexpected keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_004 (__m=
ain__.test_ctrlport_probes)<br>--------------------------------------------=
--------------------------<br>Traceback (most recent call last):<br>=C2=A0 =
File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlpo=
rt_probes.py&quot;, line 189, in test_004<br>=C2=A0 =C2=A0 radiosys =3D GNU=
RadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeEr=
ror: __init__() got an unexpected keyword argument &#39;argv&#39;<br><br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test=
_005 (__main__.test_ctrlport_probes)<br>-----------------------------------=
-----------------------------------<br>Traceback (most recent call last):<b=
r>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/=
qa_ctrlport_probes.py&quot;, line 229, in test_005<br>=C2=A0 =C2=A0 radiosy=
s =3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<=
br>TypeError: __init__() got an unexpected keyword argument &#39;argv&#39;<=
br><br>--------------------------------------------------------------------=
--<br>Ran 5 tests in 0.705s<br><br>FAILED (errors=3D5)<br>DEPRECATED: Using=
 filename with gr_unittest does no longer have any effect.<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Start 174: qa_delay<br>174/368 Test #174: qa_delay ...=
........................................ =C2=A0 Passed =C2=A0 =C2=A00.46 se=
c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 175: qa_endian_swap<br>175/368 Test =
#175: qa_endian_swap ..................................... =C2=A0 Passed =
=C2=A0 =C2=A00.48 sec`<br><br>Does anyone know what would be solution?<br><=
br>Kind Regards,<br>Tarik<br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000071060b05b0da177f--


--===============7094255253730243919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7094255253730243919==--

