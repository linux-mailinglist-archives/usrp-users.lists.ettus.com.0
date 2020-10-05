Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EF82837C5
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 16:29:08 +0200 (CEST)
Received: from [::1] (port=40554 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPRU9-0006xR-8E; Mon, 05 Oct 2020 10:29:05 -0400
Received: from mail-ed1-f43.google.com ([209.85.208.43]:42178)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kPRU4-0006qN-MX
 for usrp-users@lists.ettus.com; Mon, 05 Oct 2020 10:29:00 -0400
Received: by mail-ed1-f43.google.com with SMTP id j2so9568588eds.9
 for <usrp-users@lists.ettus.com>; Mon, 05 Oct 2020 07:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7L8pC7g4YZr8MQTRyU8TiF3VC7sJ0gsvvwa1vNjPgvc=;
 b=0KSOPSkin8fYj7zrxs+5WXOocSxVvMtOannJ2O0ek197QQOcXtXPc1UlUaK3fn9NpD
 IOHmLLbFUtpKG65RZ536emxLvRD4EcqxA9JENKfriLO5Rzn7cS+pA+YndQ7wOag/6NmK
 LDap6Oi5nwXGsZ/y5AivKeRqO6HSdfwO1hBFTkTTTVKa1KDoVyxiS2daT94zVFiK8vXW
 ZaMKqhgT+/nWGGrZk+5/ItZ3NQ14hC0SquPQsEXXg36BmDOt+hvl5TyqIcv2iTn3CEkF
 w8DuCIDG8IQz150kI8t9dQs13CgmoHHPxsoeeFuDwjyhOT2WrqH5hTXMbu8+gaRBCPGn
 7RQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7L8pC7g4YZr8MQTRyU8TiF3VC7sJ0gsvvwa1vNjPgvc=;
 b=UsU6LHWHCTJe9pU5irJAhMZO2bAliO8vJVN3PHTB0Pk3I/rFmz0vN8kXf3tiENDozW
 NJk7GAKdOrImFx9K2aYKCK7x5wB9dkZDUmB7cXykWSniifWer4vqabF2pOxTgQMuh2OB
 bQwWknLY9PJ8Um0rk00oH6nJwZiEU9vyz7Fm5CqsNS9JBmCm0DoKqC3odRMv7x6ajEHa
 tQEYcS9KZQYNAa0MrBlODKFdpkz/uj1r54kzT083Fj3tAbLQ1ud7iWsr8IOBm0aoAzSd
 3ex2wNsiFaIVsOYYHorraoAIW8Vp/A5tLb+MqR8J6FUWiliMCCtzIyMJ+bT+8vca3Edz
 bkmQ==
X-Gm-Message-State: AOAM530qOGwLf5auviYt1Szwx2xVWk8wiDpy9uqKBPGP5AC1s1IwYlZS
 Ea/UzSotV2kciuX7gbvJiia1FQJX26MeDqFiA4tFJxQW
X-Google-Smtp-Source: ABdhPJycHjj6z6XOglyQ2TWhat2Dta8kb6TU+0LQsi8x18BLiliI2dFWMI6OxsVnZ569LhHsS5H2iyzuid+keEWCFRI=
X-Received: by 2002:a50:fe09:: with SMTP id f9mr13389611edt.239.1601908099522; 
 Mon, 05 Oct 2020 07:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxUA+=r3ftB4JbEgzrLOF2JdXiDx_f00G0TvKSZ8=zpw_w@mail.gmail.com>
 <CAGNhwTM0D+K6Ou2M9PKMfNZznazrvofrUS_4+Q9FpzZnoeyKog@mail.gmail.com>
 <CADrptxUoZyuQNDXKS=QF8TFMBRRX998FMwWHcYc5QYamhArLjw@mail.gmail.com>
In-Reply-To: <CADrptxUoZyuQNDXKS=QF8TFMBRRX998FMwWHcYc5QYamhArLjw@mail.gmail.com>
Date: Mon, 5 Oct 2020 10:28:08 -0400
Message-ID: <CAGNhwTNQrXgoHXkYjCwws+F_ncD7U0+0=u7t+0EgBJ62BmzaGQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3023088513987098318=="
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

--===============3023088513987098318==
Content-Type: multipart/alternative; boundary="0000000000003c376a05b0ed4b69"

--0000000000003c376a05b0ed4b69
Content-Type: text/plain; charset="UTF-8"

Hi Emil - Your comment (3) is interesting ... it very well might be that
CTRLPORT / Thrift no longer works reliably; as I noted: both interfaces
have not been actively maintained for years. I don't see this changing any
time soon either. Anyway: Disabling them as you note is the way to go & I
hope that takes care of the issues for you so you can get on to your actual
USRP work. Cheers! - MLD


On Mon, Oct 5, 2020 at 5:25 AM Emil Bjelski <emil.bjelski@gmail.com> wrote:

> Hi Michael,
>
> I agree with you comments 1) and 2) therefore I will disable Thrift and
> CTRLPORT.
>
> Related to 3) before posting questions I was checking mailing lists and I
> read that CTRLPORT should work well with thrift *0.10.0.*
> Therefore I have installed thrift version 0.10.0., however there are still
> errors.
>
> Kind Regards,
>
> Emil
>
> On Sun, Oct 4, 2020 at 5:33 PM Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
>> Hi Emil - A few thoughts:
>>
>> 1) This is a GNU Radio question; not a USRP one. You'd be better served
>> by querying the GR discussion list <
>> https://lists.gnu.org/mailman/listinfo/discuss-gnuradio >.
>>
>> 2) Those failing tests are related to CTRLPORT and it's use of Thrift.
>> Unless you are going to be using the CTRLPORT feature of GNU Radio, then
>> you should disable that component as well as the use of Thrift ... just
>> don't use it. If you don't know what it is, then you don't need it.
>>
>> 3) CTRLPORT / Thrift interface has not been actively maintained for
>> years, and Thrift keeps moving forward ... so, there are likely to be
>> incompatibilities between them ... might be there already. If I recall
>> correctly, CTRLPORT's Thrift interface works with Thrift versions 0.10.0
>> and 0.11.0 ... might work with 0.12.0 ... and has issues with 0.13.0 (the
>> current Thrift release). I might be wrong here too. Hence: What version of
>> Thrift are you using? Can you revert to, say, 0.11.0? That might help here.
>>
>> I hope this is useful! - MLD
>>
>>
>>
>> On Sun, Oct 4, 2020 at 5:28 AM Emil Bjelski via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi All,
>>>
>>> I getting errors when calling make test, while installing Gnuradio
>>> 3.8.2.0 on Ubuntu 18.04.05.
>>> I have also installed thrift version 0.10.0.
>>>
>>> These are errors
>>> `99% tests passed, 3 tests failed out of 368
>>> Total Test time (real) = 166.29 sec
>>> The following tests FAILED:
>>> 171 - qa_cpp_py_binding (Failed)
>>> 172 - qa_cpp_py_binding_set (Failed)
>>> 173 - qa_ctrlport_probes (Failed)
>>> Errors while running CTest`
>>>
>>> Further if I call
>>>
>>> ctest --output-on-failure
>>>
>>> I get following
>>>
>>> `170/368 Test #170: qa_copy ............................................
>>>   Passed    0.46 sec
>>>         Start 171: qa_cpp_py_binding
>>> 171/368 Test #171: qa_cpp_py_binding
>>> ..................................***Failed    0.83 sec
>>> EE
>>> ======================================================================
>>> ERROR: test_001 (__main__.test_cpp_py_binding)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
>>> line 111, in test_001
>>>     rval = v1.get()
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
>>> line 7519, in get
>>>     return _runtime_swig.RPC_get_string_get(self)
>>> RuntimeError: basic_string::_M_construct null not valid
>>>
>>> ======================================================================
>>> ERROR: test_002 (__main__.test_cpp_py_binding)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
>>> line 162, in test_002
>>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>>
>>> ----------------------------------------------------------------------
>>> Ran 2 tests in 0.352s
>>>
>>> FAILED (errors=2)
>>> DEPRECATED: Using filename with gr_unittest does no longer have any
>>> effect.
>>>
>>>         Start 172: qa_cpp_py_binding_set
>>> 172/368 Test #172: qa_cpp_py_binding_set
>>> ..............................***Failed    0.71 sec
>>> EE
>>> ======================================================================
>>> ERROR: test_001 (__main__.test_cpp_py_binding_set)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
>>> line 107, in test_001
>>>     rval = g3.get()
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
>>> line 7519, in get
>>>     return _runtime_swig.RPC_get_string_get(self)
>>> RuntimeError: basic_string::_M_construct null not valid
>>>
>>> ======================================================================
>>> ERROR: test_002 (__main__.test_cpp_py_binding_set)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
>>> line 129, in test_002
>>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>>
>>> ----------------------------------------------------------------------
>>> Ran 2 tests in 0.253s
>>>
>>> FAILED (errors=2)
>>> DEPRECATED: Using filename with gr_unittest does no longer have any
>>> effect.
>>>
>>>         Start 173: qa_ctrlport_probes
>>> 173/368 Test #173: qa_ctrlport_probes
>>> .................................***Failed    1.18 sec
>>> EEEEE
>>> ======================================================================
>>> ERROR: test_001 (__main__.test_ctrlport_probes)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>>> line 67, in test_001
>>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>>
>>> ======================================================================
>>> ERROR: test_002 (__main__.test_ctrlport_probes)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>>> line 108, in test_002
>>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>>
>>> ======================================================================
>>> ERROR: test_003 (__main__.test_ctrlport_probes)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>>> line 148, in test_003
>>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>>
>>> ======================================================================
>>> ERROR: test_004 (__main__.test_ctrlport_probes)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>>> line 189, in test_004
>>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>>
>>> ======================================================================
>>> ERROR: test_005 (__main__.test_ctrlport_probes)
>>> ----------------------------------------------------------------------
>>> Traceback (most recent call last):
>>>   File
>>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>>> line 229, in test_005
>>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>>
>>> ----------------------------------------------------------------------
>>> Ran 5 tests in 0.705s
>>>
>>> FAILED (errors=5)
>>> DEPRECATED: Using filename with gr_unittest does no longer have any
>>> effect.
>>>
>>>         Start 174: qa_delay
>>> 174/368 Test #174: qa_delay ...........................................
>>>   Passed    0.46 sec
>>>         Start 175: qa_endian_swap
>>> 175/368 Test #175: qa_endian_swap .....................................
>>>   Passed    0.48 sec`
>>>
>>> Does anyone know what would be solution?
>>>
>>> Kind Regards,
>>> Tarik
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--0000000000003c376a05b0ed4b69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Emil - Your comment (3) is interesting ... it very well=
 might be that CTRLPORT / Thrift no longer works reliably; as I noted: both=
 interfaces have not been actively maintained for years. I don&#39;t see th=
is changing any time soon either. Anyway: Disabling them as you note is the=
 way to go &amp; I hope that takes care of the issues for you so you can ge=
t on to your actual USRP work. Cheers! - MLD<br><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 5, 2020 at =
5:25 AM Emil Bjelski &lt;<a href=3D"mailto:emil.bjelski@gmail.com">emil.bje=
lski@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Hi Michael,<div><br></div><div>I agree with =
you comments 1) and 2) therefore I will disable Thrift and CTRLPORT.</div><=
div><br></div><div>Related to 3) before posting questions I was checking ma=
iling lists and I read that CTRLPORT should work well with thrift <b>0.10.0=
.</b></div><div>Therefore I have installed thrift version 0.10.0., however =
there are still errors.=C2=A0</div><div><br></div><div>Kind Regards,</div><=
div><br></div><div>Emil</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, Oct 4, 2020 at 5:33 PM Michael Dicken=
s &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michae=
l.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi Emil - A few thoughts:<div><br></div=
><div>1) This is a GNU Radio question; not a USRP one. You&#39;d be better =
served by querying the GR discussion list &lt;=C2=A0<a href=3D"https://list=
s.gnu.org/mailman/listinfo/discuss-gnuradio" target=3D"_blank">https://list=
s.gnu.org/mailman/listinfo/discuss-gnuradio</a> &gt;.<br><div><br></div><di=
v>2) Those failing tests are related to CTRLPORT and it&#39;s use of Thrift=
. Unless you are going to be using the CTRLPORT feature of GNU Radio, then =
you should disable that component as well as the use of Thrift ... just don=
&#39;t use it. If you don&#39;t know what it is, then you don&#39;t need it=
. </div><div><br></div><div>3) CTRLPORT / Thrift interface has not been act=
ively maintained for years, and Thrift keeps moving forward ... so, there a=
re likely to be incompatibilities between them ... might be there already. =
If I recall correctly, CTRLPORT&#39;s=C2=A0Thrift interface works with Thri=
ft versions 0.10.0 and 0.11.0 ... might work with 0.12.0 ... and has issues=
 with 0.13.0 (the current Thrift release). I might be wrong here too. Hence=
: What version of Thrift are you using? Can you revert to, say, 0.11.0? Tha=
t might help here.</div><div><br></div><div>I hope this is useful! - MLD</d=
iv><div><div><div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"text-align:justi=
fy;margin:0px"><br></p></div></div></div></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 4, 2020 =
at 5:28 AM Emil Bjelski via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi All,<br><br>I getting errors when calling make test, while installing Gn=
uradio 3.8.2.0 on Ubuntu 18.04.05.<br>I have also installed thrift version =
0.10.0. <br><br>These are errors<br>`99% tests passed, 3 tests failed out o=
f 368<br>Total Test time (real) =3D 166.29 sec<br>The following tests FAILE=
D:<br>	171 - qa_cpp_py_binding (Failed)<br>	172 - qa_cpp_py_binding_set (Fa=
iled)<br>	173 - qa_ctrlport_probes (Failed)<br>Errors while running CTest`<=
br><br>Further if I call <br><br>ctest --output-on-failure<br><br>I get fol=
lowing<br><br>`170/368 Test #170: qa_copy .................................=
........... =C2=A0 Passed =C2=A0 =C2=A00.46 sec<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Start 171: qa_cpp_py_binding<br>171/368 Test #171: qa_cpp_py_binding ..=
................................***Failed =C2=A0 =C2=A00.83 sec<br>EE<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test=
_001 (__main__.test_cpp_py_binding)<br>------------------------------------=
----------------------------------<br>Traceback (most recent call last):<br=
>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/q=
a_cpp_py_binding.py&quot;, line 111, in test_001<br>=C2=A0 =C2=A0 rval =3D =
v1.get()<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/build/gnuradio=
-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py&quot;, line 7519,=
 in get<br>=C2=A0 =C2=A0 return _runtime_swig.RPC_get_string_get(self)<br>R=
untimeError: basic_string::_M_construct null not valid<br><br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_002 (__main=
__.test_cpp_py_binding)<br>------------------------------------------------=
----------------------<br>Traceback (most recent call last):<br>=C2=A0 File=
 &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_bin=
ding.py&quot;, line 162, in test_002<br>=C2=A0 =C2=A0 radiosys =3D GNURadio=
ControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: =
__init__() got an unexpected keyword argument &#39;argv&#39;<br><br>-------=
---------------------------------------------------------------<br>Ran 2 te=
sts in 0.352s<br><br>FAILED (errors=3D2)<br>DEPRECATED: Using filename with=
 gr_unittest does no longer have any effect.<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Start 172: qa_cpp_py_binding_set<br>172/368 Test #172: qa_cpp_py_bin=
ding_set ..............................***Failed =C2=A0 =C2=A00.71 sec<br>E=
E<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR=
: test_001 (__main__.test_cpp_py_binding_set)<br>--------------------------=
--------------------------------------------<br>Traceback (most recent call=
 last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/pytho=
n/blocks/qa_cpp_py_binding_set.py&quot;, line 107, in test_001<br>=C2=A0 =
=C2=A0 rval =3D g3.get()<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradi=
o/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py&q=
uot;, line 7519, in get<br>=C2=A0 =C2=A0 return _runtime_swig.RPC_get_strin=
g_get(self)<br>RuntimeError: basic_string::_M_construct null not valid<br><=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: t=
est_002 (__main__.test_cpp_py_binding_set)<br>-----------------------------=
-----------------------------------------<br>Traceback (most recent call la=
st):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/b=
locks/qa_cpp_py_binding_set.py&quot;, line 129, in test_002<br>=C2=A0 =C2=
=A0 radiosys =3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;th=
rift&#39;)<br>TypeError: __init__() got an unexpected keyword argument &#39=
;argv&#39;<br><br>---------------------------------------------------------=
-------------<br>Ran 2 tests in 0.253s<br><br>FAILED (errors=3D2)<br>DEPREC=
ATED: Using filename with gr_unittest does no longer have any effect.<br><b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 173: qa_ctrlport_probes<br>173/368 Test=
 #173: qa_ctrlport_probes .................................***Failed =C2=A0=
 =C2=A01.18 sec<br>EEEEE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>ERROR: test_001 (__main__.test_ctrlport_probes)<br>-----=
-----------------------------------------------------------------<br>Traceb=
ack (most recent call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnu=
radio/gr-blocks/python/blocks/qa_ctrlport_probes.py&quot;, line 67, in test=
_001<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=3Dargv, r=
pcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() got an unexpected key=
word argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_002 (__main__.test_ctrlport_probes)<br=
>----------------------------------------------------------------------<br>=
Traceback (most recent call last):<br>=C2=A0 File &quot;/home/tkazaz/workar=
ea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py&quot;, line 108, =
in test_002<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=3D=
argv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() got an unexpec=
ted keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_003 (__main__.test_ctrlport_p=
robes)<br>-----------------------------------------------------------------=
-----<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/tkaz=
az/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py&quot;, l=
ine 148, in test_003<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClien=
t(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() got a=
n unexpected keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_004 (__main__.test_c=
trlport_probes)<br>--------------------------------------------------------=
--------------<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/=
home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py=
&quot;, line 189, in test_004<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControl=
PortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init_=
_() got an unexpected keyword argument &#39;argv&#39;<br><br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_005 (__main=
__.test_ctrlport_probes)<br>-----------------------------------------------=
-----------------------<br>Traceback (most recent call last):<br>=C2=A0 Fil=
e &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_=
probes.py&quot;, line 229, in test_005<br>=C2=A0 =C2=A0 radiosys =3D GNURad=
ioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError=
: __init__() got an unexpected keyword argument &#39;argv&#39;<br><br>-----=
-----------------------------------------------------------------<br>Ran 5 =
tests in 0.705s<br><br>FAILED (errors=3D5)<br>DEPRECATED: Using filename wi=
th gr_unittest does no longer have any effect.<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Start 174: qa_delay<br>174/368 Test #174: qa_delay .................=
.......................... =C2=A0 Passed =C2=A0 =C2=A00.46 sec<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Start 175: qa_endian_swap<br>175/368 Test #175: qa_end=
ian_swap ..................................... =C2=A0 Passed =C2=A0 =C2=A00=
.48 sec`<br><br>Does anyone know what would be solution?<br><br>Kind Regard=
s,<br>Tarik<br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000003c376a05b0ed4b69--


--===============3023088513987098318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3023088513987098318==--

