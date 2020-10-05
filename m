Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F07B6283321
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 11:26:00 +0200 (CEST)
Received: from [::1] (port=38428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPMkm-0001nU-5h; Mon, 05 Oct 2020 05:25:56 -0400
Received: from mail-ed1-f46.google.com ([209.85.208.46]:36824)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emil.bjelski@gmail.com>)
 id 1kPMki-0001jG-Pq
 for usrp-users@lists.ettus.com; Mon, 05 Oct 2020 05:25:52 -0400
Received: by mail-ed1-f46.google.com with SMTP id l16so1297473eds.3
 for <usrp-users@lists.ettus.com>; Mon, 05 Oct 2020 02:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VChtL5hqZImpuwisQAIRvR59gZrcm61eN/y9CEjlbUc=;
 b=Xe870VlY8KWoZOjZKGKNFgDCtXBJGceMF5WrwX7tVz1LNj68Fw3D+MUY9rsEDXdf7Y
 HgSqhX8s74XRieb8b9GZfaXPTZyN8KKsWIblZ/dTPvpNaufWxytGFP9fs79U4w/Ufh9+
 yRtqtCNr0dW71EDabMvLbwhM3CvcsocU2r1X0rAI3Azjly8LHDcykJxPsorjNVvZ128e
 MznUuwWGYpvcAM4RmL/RGYe0oVrMfpSjcE9bEzUSZTd886RsbkENYN93k7malzP+JpnT
 Usbwy0nKaNHAaJp2tR0PuD9bln3n3yXYvOj3RyLK9mMk9mF8pBrXSfqCgUB38vAuKfxm
 JCEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VChtL5hqZImpuwisQAIRvR59gZrcm61eN/y9CEjlbUc=;
 b=t6DxJblogioOoKTOAnxIOcx6TFK82T02oljBnq6mkEVi0dKCtctKzqoIYmB54YuMJz
 LL8csnZoy/arIELgaJzZixz9C90uyZ3fPYNv5+9GxQSzxgXXzSM7cC5JZEMLf0ogfSqk
 cP2+J86X30gTvrLJRVINiQz7NmI5sJq8eq+Hu4XrLFE3WI5Ukna/7d4FC/cHRgq2eBaK
 kgEPQRc6HMb7OZM3G5XDIO+iu4Ce1r3rz0sdnGjDdegBl91u15E5IluTLaQddcSMvhUZ
 cKAafpMKR3oWzCXIgnuOzVdYLA94TWbdJ5u6wSWAmoFwxqnLxRrbDkytKIj5rASPrgV6
 uobw==
X-Gm-Message-State: AOAM530of354NlMtv5ooO9tAfnUsLviHz9RBO/xm7tfjgcchawmG5lrz
 EbQGtIA30vUxMtlxoRAjsy6EvYj9fiU7duqxlFk=
X-Google-Smtp-Source: ABdhPJydOjkMmMJCbeGXMGlyhh4WTwHR2nrluXfCqpFabch0Lnf06oNuoVADpxNCLlEOxLMGRjsrJYkygCUatLiye/Y=
X-Received: by 2002:a05:6402:17b1:: with SMTP id
 j17mr15970953edy.253.1601889911718; 
 Mon, 05 Oct 2020 02:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxUA+=r3ftB4JbEgzrLOF2JdXiDx_f00G0TvKSZ8=zpw_w@mail.gmail.com>
 <CAGNhwTM0D+K6Ou2M9PKMfNZznazrvofrUS_4+Q9FpzZnoeyKog@mail.gmail.com>
In-Reply-To: <CAGNhwTM0D+K6Ou2M9PKMfNZznazrvofrUS_4+Q9FpzZnoeyKog@mail.gmail.com>
Date: Mon, 5 Oct 2020 11:25:01 +0200
Message-ID: <CADrptxUoZyuQNDXKS=QF8TFMBRRX998FMwWHcYc5QYamhArLjw@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============4315741736005305129=="
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

--===============4315741736005305129==
Content-Type: multipart/alternative; boundary="0000000000002848f205b0e90f61"

--0000000000002848f205b0e90f61
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

I agree with you comments 1) and 2) therefore I will disable Thrift and
CTRLPORT.

Related to 3) before posting questions I was checking mailing lists and I
read that CTRLPORT should work well with thrift *0.10.0.*
Therefore I have installed thrift version 0.10.0., however there are still
errors.

Kind Regards,

Emil

On Sun, Oct 4, 2020 at 5:33 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Emil - A few thoughts:
>
> 1) This is a GNU Radio question; not a USRP one. You'd be better served by
> querying the GR discussion list <
> https://lists.gnu.org/mailman/listinfo/discuss-gnuradio >.
>
> 2) Those failing tests are related to CTRLPORT and it's use of Thrift.
> Unless you are going to be using the CTRLPORT feature of GNU Radio, then
> you should disable that component as well as the use of Thrift ... just
> don't use it. If you don't know what it is, then you don't need it.
>
> 3) CTRLPORT / Thrift interface has not been actively maintained for years,
> and Thrift keeps moving forward ... so, there are likely to be
> incompatibilities between them ... might be there already. If I recall
> correctly, CTRLPORT's Thrift interface works with Thrift versions 0.10.0
> and 0.11.0 ... might work with 0.12.0 ... and has issues with 0.13.0 (the
> current Thrift release). I might be wrong here too. Hence: What version of
> Thrift are you using? Can you revert to, say, 0.11.0? That might help here.
>
> I hope this is useful! - MLD
>
>
>
> On Sun, Oct 4, 2020 at 5:28 AM Emil Bjelski via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi All,
>>
>> I getting errors when calling make test, while installing Gnuradio
>> 3.8.2.0 on Ubuntu 18.04.05.
>> I have also installed thrift version 0.10.0.
>>
>> These are errors
>> `99% tests passed, 3 tests failed out of 368
>> Total Test time (real) = 166.29 sec
>> The following tests FAILED:
>> 171 - qa_cpp_py_binding (Failed)
>> 172 - qa_cpp_py_binding_set (Failed)
>> 173 - qa_ctrlport_probes (Failed)
>> Errors while running CTest`
>>
>> Further if I call
>>
>> ctest --output-on-failure
>>
>> I get following
>>
>> `170/368 Test #170: qa_copy ............................................
>>   Passed    0.46 sec
>>         Start 171: qa_cpp_py_binding
>> 171/368 Test #171: qa_cpp_py_binding
>> ..................................***Failed    0.83 sec
>> EE
>> ======================================================================
>> ERROR: test_001 (__main__.test_cpp_py_binding)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
>> line 111, in test_001
>>     rval = v1.get()
>>   File
>> "/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
>> line 7519, in get
>>     return _runtime_swig.RPC_get_string_get(self)
>> RuntimeError: basic_string::_M_construct null not valid
>>
>> ======================================================================
>> ERROR: test_002 (__main__.test_cpp_py_binding)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py",
>> line 162, in test_002
>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>
>> ----------------------------------------------------------------------
>> Ran 2 tests in 0.352s
>>
>> FAILED (errors=2)
>> DEPRECATED: Using filename with gr_unittest does no longer have any
>> effect.
>>
>>         Start 172: qa_cpp_py_binding_set
>> 172/368 Test #172: qa_cpp_py_binding_set
>> ..............................***Failed    0.71 sec
>> EE
>> ======================================================================
>> ERROR: test_001 (__main__.test_cpp_py_binding_set)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
>> line 107, in test_001
>>     rval = g3.get()
>>   File
>> "/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../../../swig/runtime_swig.py",
>> line 7519, in get
>>     return _runtime_swig.RPC_get_string_get(self)
>> RuntimeError: basic_string::_M_construct null not valid
>>
>> ======================================================================
>> ERROR: test_002 (__main__.test_cpp_py_binding_set)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py",
>> line 129, in test_002
>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>
>> ----------------------------------------------------------------------
>> Ran 2 tests in 0.253s
>>
>> FAILED (errors=2)
>> DEPRECATED: Using filename with gr_unittest does no longer have any
>> effect.
>>
>>         Start 173: qa_ctrlport_probes
>> 173/368 Test #173: qa_ctrlport_probes
>> .................................***Failed    1.18 sec
>> EEEEE
>> ======================================================================
>> ERROR: test_001 (__main__.test_ctrlport_probes)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>> line 67, in test_001
>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>
>> ======================================================================
>> ERROR: test_002 (__main__.test_ctrlport_probes)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>> line 108, in test_002
>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>
>> ======================================================================
>> ERROR: test_003 (__main__.test_ctrlport_probes)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>> line 148, in test_003
>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>
>> ======================================================================
>> ERROR: test_004 (__main__.test_ctrlport_probes)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>> line 189, in test_004
>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>
>> ======================================================================
>> ERROR: test_005 (__main__.test_ctrlport_probes)
>> ----------------------------------------------------------------------
>> Traceback (most recent call last):
>>   File
>> "/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlport_probes.py",
>> line 229, in test_005
>>     radiosys = GNURadioControlPortClient(argv=argv, rpcmethod='thrift')
>> TypeError: __init__() got an unexpected keyword argument 'argv'
>>
>> ----------------------------------------------------------------------
>> Ran 5 tests in 0.705s
>>
>> FAILED (errors=5)
>> DEPRECATED: Using filename with gr_unittest does no longer have any
>> effect.
>>
>>         Start 174: qa_delay
>> 174/368 Test #174: qa_delay ...........................................
>> Passed    0.46 sec
>>         Start 175: qa_endian_swap
>> 175/368 Test #175: qa_endian_swap .....................................
>> Passed    0.48 sec`
>>
>> Does anyone know what would be solution?
>>
>> Kind Regards,
>> Tarik
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002848f205b0e90f61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael,<div><br></div><div>I agree with you comments 1=
) and 2) therefore I will disable Thrift and CTRLPORT.</div><div><br></div>=
<div>Related to 3) before posting questions I was checking mailing lists an=
d I read that CTRLPORT should work well with thrift <b>0.10.0.</b></div><di=
v>Therefore I have installed thrift version 0.10.0., however there are stil=
l errors.=C2=A0</div><div><br></div><div>Kind Regards,</div><div><br></div>=
<div>Emil</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Oct 4, 2020 at 5:33 PM Michael Dickens &lt;<a href=
=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi Emil - A few thoughts:<div><br></div><div>1) This is a GNU Radio qu=
estion; not a USRP one. You&#39;d be better served by querying the GR discu=
ssion list &lt;=C2=A0<a href=3D"https://lists.gnu.org/mailman/listinfo/disc=
uss-gnuradio" target=3D"_blank">https://lists.gnu.org/mailman/listinfo/disc=
uss-gnuradio</a> &gt;.<br><div><br></div><div>2) Those failing tests are re=
lated to CTRLPORT and it&#39;s use of Thrift. Unless you are going to be us=
ing the CTRLPORT feature of GNU Radio, then you should disable that compone=
nt as well as the use of Thrift ... just don&#39;t use it. If you don&#39;t=
 know what it is, then you don&#39;t need it. </div><div><br></div><div>3) =
CTRLPORT / Thrift interface has not been actively maintained for years, and=
 Thrift keeps moving forward ... so, there are likely to be incompatibiliti=
es between them ... might be there already. If I recall correctly, CTRLPORT=
&#39;s=C2=A0Thrift interface works with Thrift versions 0.10.0 and 0.11.0 .=
.. might work with 0.12.0 ... and has issues with 0.13.0 (the current Thrif=
t release). I might be wrong here too. Hence: What version of Thrift are yo=
u using? Can you revert to, say, 0.11.0? That might help here.</div><div><b=
r></div><div>I hope this is useful! - MLD</div><div><div><div dir=3D"ltr"><=
div dir=3D"ltr"><p style=3D"text-align:justify;margin:0px"><br></p></div></=
div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sun, Oct 4, 2020 at 5:28 AM Emil Bjelski via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi All,<br><br>I getting errors w=
hen calling make test, while installing Gnuradio 3.8.2.0 on Ubuntu 18.04.05=
.<br>I have also installed thrift version 0.10.0. <br><br>These are errors<=
br>`99% tests passed, 3 tests failed out of 368<br>Total Test time (real) =
=3D 166.29 sec<br>The following tests FAILED:<br>	171 - qa_cpp_py_binding (=
Failed)<br>	172 - qa_cpp_py_binding_set (Failed)<br>	173 - qa_ctrlport_prob=
es (Failed)<br>Errors while running CTest`<br><br>Further if I call <br><br=
>ctest --output-on-failure<br><br>I get following<br><br>`170/368 Test #170=
: qa_copy ............................................ =C2=A0 Passed =C2=A0=
 =C2=A00.46 sec<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 171: qa_cpp_py_binding=
<br>171/368 Test #171: qa_cpp_py_binding ..................................=
***Failed =C2=A0 =C2=A00.83 sec<br>EE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_001 (__main__.test_cpp_py_bindin=
g)<br>---------------------------------------------------------------------=
-<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/tkazaz/w=
orkarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding.py&quot;, line 1=
11, in test_001<br>=C2=A0 =C2=A0 rval =3D v1.get()<br>=C2=A0 File &quot;/ho=
me/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnuradio/gr/../..=
/../swig/runtime_swig.py&quot;, line 7519, in get<br>=C2=A0 =C2=A0 return _=
runtime_swig.RPC_get_string_get(self)<br>RuntimeError: basic_string::_M_con=
struct null not valid<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>ERROR: test_002 (__main__.test_cpp_py_binding)<br>------=
----------------------------------------------------------------<br>Traceba=
ck (most recent call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnur=
adio/gr-blocks/python/blocks/qa_cpp_py_binding.py&quot;, line 162, in test_=
002<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=3Dargv, rp=
cmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() got an unexpected keyw=
ord argument &#39;argv&#39;<br><br>----------------------------------------=
------------------------------<br>Ran 2 tests in 0.352s<br><br>FAILED (erro=
rs=3D2)<br>DEPRECATED: Using filename with gr_unittest does no longer have =
any effect.<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 172: qa_cpp_py_binding=
_set<br>172/368 Test #172: qa_cpp_py_binding_set ..........................=
....***Failed =C2=A0 =C2=A00.71 sec<br>EE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_001 (__main__.test_cpp_py_bin=
ding_set)<br>--------------------------------------------------------------=
--------<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/t=
kazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py&qu=
ot;, line 107, in test_001<br>=C2=A0 =C2=A0 rval =3D g3.get()<br>=C2=A0 Fil=
e &quot;/home/tkazaz/workarea/gnuradio/build/gnuradio-runtime/python/gnurad=
io/gr/../../../swig/runtime_swig.py&quot;, line 7519, in get<br>=C2=A0 =C2=
=A0 return _runtime_swig.RPC_get_string_get(self)<br>RuntimeError: basic_st=
ring::_M_construct null not valid<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_002 (__main__.test_cpp_py_bindin=
g_set)<br>-----------------------------------------------------------------=
-----<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/tkaz=
az/workarea/gnuradio/gr-blocks/python/blocks/qa_cpp_py_binding_set.py&quot;=
, line 129, in test_002<br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortCl=
ient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeError: __init__() go=
t an unexpected keyword argument &#39;argv&#39;<br><br>--------------------=
--------------------------------------------------<br>Ran 2 tests in 0.253s=
<br><br>FAILED (errors=3D2)<br>DEPRECATED: Using filename with gr_unittest =
does no longer have any effect.<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 17=
3: qa_ctrlport_probes<br>173/368 Test #173: qa_ctrlport_probes ............=
.....................***Failed =C2=A0 =C2=A01.18 sec<br>EEEEE<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_001 (__m=
ain__.test_ctrlport_probes)<br>--------------------------------------------=
--------------------------<br>Traceback (most recent call last):<br>=C2=A0 =
File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa_ctrlpo=
rt_probes.py&quot;, line 67, in test_001<br>=C2=A0 =C2=A0 radiosys =3D GNUR=
adioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br>TypeErr=
or: __init__() got an unexpected keyword argument &#39;argv&#39;<br><br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR: test_00=
2 (__main__.test_ctrlport_probes)<br>--------------------------------------=
--------------------------------<br>Traceback (most recent call last):<br>=
=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/blocks/qa=
_ctrlport_probes.py&quot;, line 108, in test_002<br>=C2=A0 =C2=A0 radiosys =
=3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&#39;)<br=
>TypeError: __init__() got an unexpected keyword argument &#39;argv&#39;<br=
><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>ERROR=
: test_003 (__main__.test_ctrlport_probes)<br>-----------------------------=
-----------------------------------------<br>Traceback (most recent call la=
st):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks/python/b=
locks/qa_ctrlport_probes.py&quot;, line 148, in test_003<br>=C2=A0 =C2=A0 r=
adiosys =3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#39;thrift&=
#39;)<br>TypeError: __init__() got an unexpected keyword argument &#39;argv=
&#39;<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>ERROR: test_004 (__main__.test_ctrlport_probes)<br>--------------------=
--------------------------------------------------<br>Traceback (most recen=
t call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/gr-blocks=
/python/blocks/qa_ctrlport_probes.py&quot;, line 189, in test_004<br>=C2=A0=
 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=3Dargv, rpcmethod=3D&#3=
9;thrift&#39;)<br>TypeError: __init__() got an unexpected keyword argument =
&#39;argv&#39;<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>ERROR: test_005 (__main__.test_ctrlport_probes)<br>-----------=
-----------------------------------------------------------<br>Traceback (m=
ost recent call last):<br>=C2=A0 File &quot;/home/tkazaz/workarea/gnuradio/=
gr-blocks/python/blocks/qa_ctrlport_probes.py&quot;, line 229, in test_005<=
br>=C2=A0 =C2=A0 radiosys =3D GNURadioControlPortClient(argv=3Dargv, rpcmet=
hod=3D&#39;thrift&#39;)<br>TypeError: __init__() got an unexpected keyword =
argument &#39;argv&#39;<br><br>--------------------------------------------=
--------------------------<br>Ran 5 tests in 0.705s<br><br>FAILED (errors=
=3D5)<br>DEPRECATED: Using filename with gr_unittest does no longer have an=
y effect.<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 174: qa_delay<br>174/368=
 Test #174: qa_delay ........................................... =C2=A0 Pas=
sed =C2=A0 =C2=A00.46 sec<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Start 175: qa_endi=
an_swap<br>175/368 Test #175: qa_endian_swap ..............................=
....... =C2=A0 Passed =C2=A0 =C2=A00.48 sec`<br><br>Does anyone know what w=
ould be solution?<br><br>Kind Regards,<br>Tarik<br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002848f205b0e90f61--


--===============4315741736005305129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4315741736005305129==--

