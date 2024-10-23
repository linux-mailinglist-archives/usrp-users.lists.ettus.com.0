Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C59ACB38
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 15:30:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB680383FAF
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 09:30:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729690220; bh=r4/IEx8pjZLpxcsQJuUKNeTctAhgZTcqHcndt3RGq+s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PPEQ5ioX/UWhBnnVtRJQ28znjCI9PhdRxPCkrKBxF4bvGwWbgTZwrP/pF2A7/Q295
	 ACjIx2KL3AJ6YJ7ho4RLBl/ciMVbvPit5aAumGENE5ByIVRTRAIU7rLiHgPQVbH3sX
	 go8joSQL/2TvOIeiwD+mWaWhe5DWQ6mg8moDekHMkW3t8fWBFzP1CEi3maCFNrAOWj
	 qnNw81/UDf30fdDae0vXJCJlJMos5GjIWxqqr0zzGcW9ThKTkrt9Y3JsXmDb5V8Qny
	 YZa/bsE6BEMFA+qLnKgGvK1nI3QSEqbk85Ac/9mkoPkrKi7nyFzezM5GOytrWrsypQ
	 IRffuJOhedbJA==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 8EB4C380A46
	for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2024 09:29:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2LdqSGQZ";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a93c1cc74fdso972944566b.3
        for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2024 06:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1729690188; x=1730294988; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iwb0JxMHNtUF3p9J2dPZ7fhQ3D0EXapzdHVh77U7UFg=;
        b=2LdqSGQZp2RbNnHMU9P12wiGrOqHwd1kUgLDGkVEMzW6m9j7cHZaTEWlJBekA7gkxT
         KV1Qna0zndXzkS5iq+ZIEeGwexYuOdNvQyAw0oNjoQHjh788Z52nQ+CBSfcKkYrIcm0k
         PO62d7B6f6tsS447luflHO8QKn+w5IMNOD584pMUH4DcgOjsMIQTpAFIk0DX/PImej73
         08nnW1OLytQ0llHrhJqTAoL4IfCB5qxLLfSCV67PlkWKht6IEITdC61gsNUTjsNQ0ZLX
         8KFErMVxEq+Iwn8SgJJ4SWcnVdMexpEB0SOPIPHW9kmzOAokvdYJrO01fNt5UtbdEKTh
         qy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729690188; x=1730294988;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iwb0JxMHNtUF3p9J2dPZ7fhQ3D0EXapzdHVh77U7UFg=;
        b=InCi2VW05NWDbQD/449vGPNbwQIG5IrndYvOojxxcHAKeR80SBrD1SXSVAptCJynJu
         0tS7kENo5pFr23R6iHB4SpbmxTgvLFVj1iTAHootGCmzzOtOQGpadEoRT9E10EiFcR03
         Qw5du89SLDjwGplUveitFjKDdz6YgKU+3ACYJ02xto8zuYBFWmVS8HzsV56vN4uwhsAt
         aKrNi2DrsVMfVvnTT2jrjXvlkmojWuu7OETMzNMgzdEY3fz3QdUy5lIpMrPMUYapA7sL
         /tTmziMgSla3IBnNw67flrmFdsak7sEKKIbJGDnBr+FxMwykKAErieDgYon9RNflkMkE
         PFXg==
X-Gm-Message-State: AOJu0YxlNyvhYp/sdbNoNAvReH1PtmI9GxI/N6YjrN+AmbMVMU5drtbY
	E3lSPKg+1GAgwjPazNh+0sCZDxbb4Y17Nl1KifOHBjx4It7ZeJ5nSUFTHHMcCBo7HwyJqRkXroM
	EIZxfVHj53CK/u/8ErWXV+ik92A1TYL8DVl3gxMtT4IRjsxjgPrM=
X-Google-Smtp-Source: AGHT+IFRjajvlvysKlT878TUVIwyJzQ9/uGwbOQ1hJ60p2T+Okp8hi/07HQpNlXw3iQw4ng8cMLbTrE+CSk9hp9VTaA=
X-Received: by 2002:a17:907:743:b0:a8a:8d81:97ac with SMTP id
 a640c23a62f3a-a9abf851e22mr210658566b.4.1729690188113; Wed, 23 Oct 2024
 06:29:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=K0BGvENW-hcz4zpGvHC+F9U7AcAaEJ3vyb4vfi_h--mb=Ng@mail.gmail.com>
In-Reply-To: <CAF=K0BGvENW-hcz4zpGvHC+F9U7AcAaEJ3vyb4vfi_h--mb=Ng@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 23 Oct 2024 08:29:32 -0500
Message-ID: <CAFche=hXccZr6Y96XW3yzAe7NG2i7qFaq6=3YZvCANvc5zo7SQ@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: NMLMSI4WRXD7OHCDHW3JUGGV5I3ZFJBS
X-Message-ID-Hash: NMLMSI4WRXD7OHCDHW3JUGGV5I3ZFJBS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error on using split stream and FFT rfnoc block.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NMLMSI4WRXD7OHCDHW3JUGGV5I3ZFJBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2014682694728667001=="

--===============2014682694728667001==
Content-Type: multipart/alternative; boundary="0000000000003c0f90062524e184"

--0000000000003c0f90062524e184
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With this FFT block, you need to set the SPP to match the FFT size for it
to work correctly. I'm not very familiar with GNU Radio but I think there
is an SPP parameter on the RX radio. I don't know how to set it for TX.

Wade


On Wed, Oct 23, 2024 at 5:45=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Hello,
>
> I am having USRP X300 device with following tool versions:
>
> Vivado 2021.1 - AR76780n,
> GNU radio version - v3.11.0.0git-820-g2adbd4ea
> UHD version - UHD_4.7.0.0-84-gbdada1ed
>
> I have added FFT and Spliter RFNoC blocks in my bit file. The
> "uhd_usrp_probe" command shows correct connection in the blocks.
>
> | | RFNoC blocks on this device:
> | |
> | | * 0/DDC#0
> | | * 0/FFT#0
> | | * 0/Radio#0
> | | * 0/Replay#0
> | | * 0/SplitStream#0
> | _____________________________________________________
> | /
> | | Static connections on this device:
>
> | | * 0/Radio#0:0=3D=3D>0/DDC#0:0
> | | * 0/Radio#0:1=3D=3D>0/DDC#0:1
> | | * 0/DDC#0:1=3D=3D>0/SEP#0:0
> | | * 0/DDC#0:0=3D=3D>0/SplitStream#0:0
> | | * 0/SplitStream#0:1=3D=3D>0/FFT#0:0
> | | * 0/SplitStream#0:0=3D=3D>0/SEP#2:0
> | | * 0/FFT#0:0=3D=3D>0/SEP#1:0
> | | * 0/SEP#3:0=3D=3D>0/Replay#0:0
> | | * 0/Replay#0:0=3D=3D>0/SEP#3:0
> | | * 0/SEP#4:0=3D=3D>0/Replay#0:1
> | | * 0/Replay#0:1=3D=3D>0/SEP#4:0
>
> However, on running example code available on GNURADIO
> *"rfnoc_split_stream.grc"*. I get following error:
>
> *1. When FFT size =3D 1024 (as in the example given in gnu radio)*
>
>
>
> *------------------------------------------------------------------------=
--------------------------------------------------*
>
>
>
>
>
>
>
>
>
> *[ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 1024 bu=
t
> max value is 364Traceback (most recent call last):  File
> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
> 347, in <module>    main()  File
> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
> 326, in main    tb.start()  File
> "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
> 116, in start    top_block_start_unlocked(self._impl,
> max_noutput_items)RuntimeError: ValueError: Samples per packet is
> incompatible with atomic item size!*
>
>
> *------------------------------------------------------------------------=
--------------------------------------------------*
> How to know what is atomic size and how can I set it. On searching for
> this error I came across following link:
>
> *https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb10352=
cf875d604d74
> <https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702ffbdb10352=
cf875d604d74>*
>
> This says rx stream is having a bug and AIS is in unit bytes, and spp in
> unit items. It was a response of two years back with the uhd version
> v4.3.0.0-rc1
> <https://github.com/EttusResearch/uhd/releases/tag/v4.3.0.0-rc1>. Does
> this explanation still hold? What is the max FFT size I can use? I want t=
o
> use *2048*, what changes need to be done for it.
>
> *1. When FFT size =3D 256*
>
>
> *------------------------------------------------------------------------=
--------------------------------------------------*
>
>
>
>
>
>
>
>
>
> *[ERROR] [RFNOC::GRAPH::DETAIL] The following properties could not be
> resolved:[ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStreamer#1[INPUT_EDGE:0
> atomic_item_size]Traceback (most recent call last):  File
> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
> 347, in <module>    main()  File
> "/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
> 326, in main    tb.start()  File
> "/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
> 116, in start    top_block_start_unlocked(self._impl,
> max_noutput_items)RuntimeError: RfnocError: ResolveError: Could not resol=
ve
> properties.*
>
>
> *------------------------------------------------------------------------=
--------------------------------------------------*
>
> Am I doing anything wrong in the yml script because the connection seems
> correct in the uhd_usrp_probe command. On further searching I found that
> SPP i.e. sample per packet must be the same for all the blocks. Tried doi=
ng
> it in gnu radio by assigning the args option with f"spp=3D{fft_size}". Is
> this correct? It gives no change in error howver I get additional warning
> as
>
> [WARNING] [0/FFT#0] set_properties() cannot set property `spp': No such
> property.
> [WARNING] [0/DDC#0] set_properties() cannot set property `spp': No such
> property.
>
>
> Please help me to solve these errors.
>
> --
> Regards,
> *Nidhi Panda*
>
> *Cyronics Innovation Labs Pvt Ltd*
> #11, Electronics Co-op Estate
> Satara Road, Pune - 411009
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003c0f90062524e184
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>With this FFT block, you need to set the SPP to match=
 the FFT size for it to work correctly. I&#39;m not very familiar with GNU =
Radio but I think there is an SPP parameter on the RX radio. I don&#39;t kn=
ow how to set it for TX.<br></div><div><br></div><div>Wade</div><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Oct 23, 2024 at 5:45=E2=80=AFAM Nidhi Panda &lt;<a href=3D"mail=
to:nidhi.panda@cyronics.com">nidhi.panda@cyronics.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Hello,</div><div><br></div><div><p dir=3D"auto">I am having USRP X300 devic=
e with following tool versions:</p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p>
<p dir=3D"auto">I have added FFT and Spliter RFNoC blocks in my bit file. T=
he &quot;uhd_usrp_probe&quot; command shows correct connection in the block=
s.</p>
<p dir=3D"auto">|   |       RFNoC blocks on this device:<br>
|   |<br>
|   |   * 0/DDC#0<br>
|   |   * 0/FFT#0<br>
|   |   * 0/Radio#0<br>
|   |   * 0/Replay#0<br>
|   |   * 0/SplitStream#0<br>
|     _____________________________________________________<br>
|    /<br>
|   |       Static connections on this device:</p>
<p dir=3D"auto">|   |   * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
|   |   * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>
|   |   * 0/DDC#0:1=3D=3D&gt;0/SEP#0:0<br>
|   |   * 0/DDC#0:0=3D=3D&gt;0/SplitStream#0:0<br>
|   |   * 0/SplitStream#0:1=3D=3D&gt;0/FFT#0:0<br>
|   |   * 0/SplitStream#0:0=3D=3D&gt;0/SEP#2:0<br>
|   |   * 0/FFT#0:0=3D=3D&gt;0/SEP#1:0<br>
|   |   * 0/SEP#3:0=3D=3D&gt;0/Replay#0:0<br>
|   |   * 0/Replay#0:0=3D=3D&gt;0/SEP#3:0<br>
|   |   * 0/SEP#4:0=3D=3D&gt;0/Replay#0:1<br>
|   |   * 0/Replay#0:1=3D=3D&gt;0/SEP#4:0</p>
<p dir=3D"auto">However, on running example code available on GNURADIO <str=
ong>&quot;rfnoc_split_stream.grc&quot;</strong>. I get following error:</p>=
<p><b>1. When FFT size =3D 1024 (as in the example given in gnu radio)</b><=
/p><p><i>------------------------------------------------------------------=
--------------------------------------------------------<br></i></p><p><i>[=
ERROR] [RxStreamer#0] Cannot resolve spp! Must be a multiple of 1024 but ma=
x value is 364<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/=
home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line =
347, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/q=
uasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line 326, i=
n main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/usr/local/lib/pyth=
on3.8/dist-packages/gnuradio/gr/top_block.py&quot;, line 116, in start<br>=
=C2=A0 =C2=A0 top_block_start_unlocked(self._impl, max_noutput_items)<br>Ru=
ntimeError: ValueError: Samples per packet is incompatible with atomic item=
 size!</i></p><p><i>-------------------------------------------------------=
-------------------------------------------------------------------</i></p>=
</div><div>How to know what is atomic size and how can I set it. On searchi=
ng for this error I came across following link:</div><div><br></div><div><i=
><a href=3D"https://github.com/EttusResearch/uhd/commit/f163af41a47ab4c702f=
fbdb10352cf875d604d74" target=3D"_blank">https://github.com/EttusResearch/u=
hd/commit/f163af41a47ab4c702ffbdb10352cf875d604d74</a></i></div><div><br></=
div><div>This says rx stream is having a bug and <span>AIS is in unit bytes=
, and spp in unit items. It was a response of two years back with the uhd v=
ersion </span><span><a href=3D"https://github.com/EttusResearch/uhd/release=
s/tag/v4.3.0.0-rc1" target=3D"_blank">v4.3.0.0-rc1</a>. Does this explanati=
on still hold? What is the max FFT size I can use? I want to use <b>2048</b=
>, what changes need to be done for it.</span></div><div><span><br></span><=
/div><div><b>1. When FFT size =3D 256</b></div><div><b><br></b></div><div><=
b>-------------------------------------------------------------------------=
-------------------------------------------------</b></div><div><i>[ERROR] =
[RFNOC::GRAPH::DETAIL] The following properties could not be resolved:<br>[=
ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStreamer#1[INPUT_EDGE:0 atomic_item_=
size]<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/quas=
ar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line 347, in &=
lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/quasar/gnu=
radio/gr-uhd/examples/grc/rfnoc_split_stream.py&quot;, line 326, in main<br=
>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/usr/local/lib/python3.8/dis=
t-packages/gnuradio/gr/top_block.py&quot;, line 116, in start<br>=C2=A0 =C2=
=A0 top_block_start_unlocked(self._impl, max_noutput_items)<br>RuntimeError=
: RfnocError: ResolveError: Could not resolve properties.</i></div><div><b>=
---------------------------------------------------------------------------=
-----------------------------------------------<br></b></div><div><span><br=
></span></div><div><span>Am I doing anything wrong in the yml script becaus=
e the connection seems correct in the uhd_usrp_probe command. On further se=
arching I found that SPP i.e. sample per packet must be the same for all th=
e blocks. Tried doing it in gnu radio by assigning the args option with </s=
pan>f&quot;spp=3D{fft_size}&quot;. Is this correct? It gives no change in e=
rror howver I get additional warning as <br></div><div><br></div><div>[WARN=
ING] [0/FFT#0] set_properties() cannot set property `spp&#39;: No such prop=
erty.<br>[WARNING] [0/DDC#0] set_properties() cannot set property `spp&#39;=
: No such property.</div><div><br></div><div><br></div><div>Please help me =
to solve these errors. <br></div><div><span><br></span></div><div><span cla=
ss=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail=
_signature"><div dir=3D"ltr">Regards,<div><b>Nidhi Panda</b></div><div><spa=
n style=3D"color:rgb(136,136,136)"><font color=3D"#000000"><b><img width=3D=
"200" height=3D"43" src=3D"https://ci3.googleusercontent.com/mail-sig/AIorK=
4wydcZFixEg0Qccgx_ECRhBJmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAue=
DJVU"></b><br><b>Cyronics Innovation Labs Pvt Ltd</b><br></font></span></di=
v><div><div><span style=3D"color:rgb(136,136,136)"><font color=3D"#000000">=
#11, Electronics Co-op Estate=C2=A0<br>Satara Road, Pune - 411009</font></s=
pan></div></div><div><br></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003c0f90062524e184--

--===============2014682694728667001==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2014682694728667001==--
