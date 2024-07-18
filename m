Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E31193506B
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2024 18:07:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8DC53853F7
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2024 12:07:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721318838; bh=rBVvcTosyf6LF4eAe/Q/4HuC726BoSwsTV+/qGiXmgk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QtZuDakiW7zLKNM32+4KoRif2jGyDpyyiB2nXXftgkLOIfQgnUuiUhtx9DdyymUwG
	 8rIoqdixpedydX+8tWZPjS54bLXoRSRodkInTH/n56R4pS89dqO7w8ImBThKL0//nP
	 PUJZlVBlyJdrery4gNJTeOPOZ3uoNQ2apMeJ+S/BcdywL0keB+5BtfObgr2wcKy/O6
	 Euwsmc9w1jjvK8zCJAh+wzttp6bMTD+iTXhBfqrT+YnU1wFszA8Xat1X/xxzksp2+S
	 wA6uvSLG0sh/iOKlTTr+CHbr4EZFi7vS068m7Xm2JPvcx89oKeWCUa4//Jq0/JRDtj
	 yIjddh5Gsa18A==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E690380911
	for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2024 12:06:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="L9Vj6okp";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a797c62565aso95302566b.2
        for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2024 09:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721318775; x=1721923575; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U/69dw7kdNf+rXcrMCQSnTKBAy0r6u0P97TeaRPpgzs=;
        b=L9Vj6okp5UCkDqgOY9sbwUk5Jmgpg6LnbAkbQWp51J9+0bUYyqzoIwbeYZCc0ZVeXl
         bWvkBMJ3SrfdHa0gsnjH1k1aKrKNDgyye0QKz+sIUy4dZaCmNwP8rRwA+BSfwkcZtlzO
         fGKnFoj0gHZcRp9R0MVfwXG69g2HhOxspZi1t6oqqHNjN4BZiPNvUH4jDlwuzG5vRQp9
         KFgsDvpbg67GE+hh7A3ce62sLH6eJBZzowbBm7RkE7A737nzrWRrFLFUWA8a+bjmVUNr
         KNvo/TAGa4qlauSxp+xBavw8830njHzjfrA4v2DP056ESxQGgAOBN99+fQsk0djAQHVx
         Hkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721318775; x=1721923575;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U/69dw7kdNf+rXcrMCQSnTKBAy0r6u0P97TeaRPpgzs=;
        b=YWUb5us3cSfHe99BJy3I0bfg/Dtgbz5Cu5unZitA/lHEiqmVLUzzXFW0TLfU5LdNdv
         tQQpf20qfK5H93ssOlmcb7xTkXyIyqIxA68boX+ng6qYP/OdqjO4lWi3w2155oCfQP8h
         zczbY4eTyIkDt290FSN1hbgaaXu2tRkA9jnAlVQDMyoxBDk6UzOzHshezD1mNtuxJzI0
         7rN29HUGHZ8A9Rtu49MR9HtTEF47ZHPYFxtK1Pyonxe7yMb+nMW9CczXBFUWZ/497ZFq
         Q33IGSpZCAyNuuKHMWmhbJaAbVZ59ufWDFCxAoDn6+pAvDJMt/6yuMfLxGCcsG6YdG9f
         De2Q==
X-Gm-Message-State: AOJu0YzeGN5xX5tVeEin70XlsrsL4iHRz9VWLgUUy7hvqLGDRsSKL9/3
	brZWj2+FKB/qxdhDZPCQgQSVWG9D4TFX2pytCI4bY8EzE5Yy2ZZvHutZVSu+WpfqCfVbwOQp/UZ
	lGAMkk7P0y1Fydu5qdXIHkVpf9ADKa4QAZFwP8BKAhWvC+5bf/Jk3JA==
X-Google-Smtp-Source: AGHT+IH5AtXT+zTF+8BaQkDW3wysX4mOERzQIKgKBAkJOA9eUpx4w57i9fZJsx3V3FV5rKiAaoqHkqOAnrYZEuqWawo=
X-Received: by 2002:a17:907:11da:b0:a79:81a4:faff with SMTP id
 a640c23a62f3a-a7a013531eemr328994566b.66.1721318774447; Thu, 18 Jul 2024
 09:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
 <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
 <CAFOi1A7NgiuDpqnAhT=vWOEGs-oqmSL0pP7d9mCwuA=js1iPSQ@mail.gmail.com>
 <CAG16vQUGwmcj5w17Xx9y=WYBRS9qVZOMxsacuq60q0GYP2ELCw@mail.gmail.com>
 <CAFOi1A4mOcwzMmOX-r_WbHibH5wVN8TeKCu6JEE=WDFLNQ0gEQ@mail.gmail.com>
 <CAG16vQV3e5zrtAcxsvQET4Anc+JYF73C0QBT4gEoo5MV+7qd3g@mail.gmail.com>
 <CAFOi1A4t7gP2ZnM+AjfszvCsdu51fU0KtQ-7aJJYPa4i7bhMVw@mail.gmail.com> <CAG16vQW7TbrUDU4n5f9d9=9gqVO4VeprM+7tVqf127bPmzVatQ@mail.gmail.com>
In-Reply-To: <CAG16vQW7TbrUDU4n5f9d9=9gqVO4VeprM+7tVqf127bPmzVatQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 18 Jul 2024 18:06:03 +0200
Message-ID: <CAFOi1A42uMea0vs9zz6zE=QOu=LEvc5eH2ziQ5CGKMBJEi5W2Q@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: P4AJUD5IQ2NALK4E5XK3PEV2JSVU6NDT
X-Message-ID-Hash: P4AJUD5IQ2NALK4E5XK3PEV2JSVU6NDT
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P4AJUD5IQ2NALK4E5XK3PEV2JSVU6NDT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6648501356947795933=="

--===============6648501356947795933==
Content-Type: multipart/alternative; boundary="00000000000018c16c061d87c243"

--00000000000018c16c061d87c243
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 18, 2024 at 3:06=E2=80=AFPM Maria Mu=C3=B1oz <mamuki92@gmail.co=
m> wrote:

> Hi Martin,
>
> Oh! I didn't know there was a debug option. The line says this:
> [DEB] Executing the following command: /bin/bash -c ". ./setupenv.sh &&
> make X440_X4_200
> IMAGE_CORE=3D/home/user/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200=
_rfnoc_image_core.v
> EDGE_FILE=3D/home/user/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200_=
static_router.hex
> RFNOC_OOT_MAKEFILE_SRCS=3D/home/user/rfnoc/gr_ettus/rfnoc-nbc_v2/rfnoc/fp=
ga/rfnoc_block_nbcv2/Makefile.srcs"
>

Hm that looks fine.
/home/user/rfnoc/gr_ettus/rfnoc-nbc_v2/rfnoc/fpga/rfnoc_block_nbcv2/Makefil=
e.srcs
has everything you expect to be there?

>
> I'll take a look at the 4.7 version as suggested.
>

Thanks -- but don't throw away your 4.6 stuff yet, depending on how much
work the transition is.

--M

>
> Kind Regards,
>
> El jue, 18 jul 2024 a las 14:35, Martin Braun (<martin.braun@ettus.com>)
> escribi=C3=B3:
>
>> Hi Maria,
>>
>> I'm not sure what's going on. Can you run rfnoc_image_builder -l debug
>> [...your options...] and post the line that says "Executing the followin=
g
>> command: ..."? I wonder if RFNOC_OOT_MAKEFILE_SRCS is correctly set.
>>
>> BTW, if you just upgraded to 4.6, consider upgrading to 4.7. On the X440=
,
>> very little changed, but the image builder got its first overhaul in a
>> while, and therefore there's a better chance of supporting folks using t=
hat.
>> That said, it's a bigger upgrade path because we changed some things in
>> the way the image core YAML files are constructed.
>>
>> --M
>>
>> On Thu, Jul 18, 2024 at 11:32=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92@gmai=
l.com> wrote:
>>
>>> Hi Martin,
>>>
>>> I had another issue once I resolved the YML problem. I start the
>>> synthesis with this command:
>>>
>>>  rfnoc_image_builder -y x440_200_nbc_rfnoc_image_core.yml -d x440 -t
>>> X440_X4_200 --fpga-dir ~/rfnoc/uhd/fpga/
>>>
>>> But Vivado can't find my OOT block:
>>>
>>> ERROR: [Synth 8-439] module 'rfnoc_block_nbcv2' not found
>>> [~/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200_rfnoc_image_core.v=
:1512]
>>>
>>> I've used the x440_200_nbc_rfnoc_image_core.yml example
>>> in uhd/fpga/usrp3/top/x400/ but added a new EP to connect my block. I'v=
e
>>> also reviewed the  x440_200_rfnoc_image_core.v generated and it instanc=
e my
>>> module name correctly.
>>>
>>> As it is my first time using UHD 4.6 (I usually use 4.0) I don't know i=
f
>>> I need to do any other modifications to Makefiles to find my block. I t=
ried
>>> to indicate the OOT folder with the -I option in rfnoc_image_builder, b=
ut I
>>> got the same error.
>>>
>>> What I usually do with 4.0 is the following:
>>> 1) Generate block with rfnocmodtool
>>> 2) Modify grc, lib, include, FPGA, block, and icore folders to include
>>> my block code. Add to the fpga/Makefile.srcs all the vhdl/verilog sourc=
es
>>> for my FPGA code.
>>> 3) Build my block
>>> 4) Move to the icore folder of my block and run the rfnoc_image_builder
>>> command.
>>>
>>> Is there something that I'm missing for the 4.6 version?
>>>
>>> Kind Regards,
>>>
>>> Maria
>>>
>>>
>>> El mi=C3=A9, 17 jul 2024 a las 13:13, Martin Braun (<martin.braun@ettus=
.com>)
>>> escribi=C3=B3:
>>>
>>>> In that case you can just do
>>>>
>>>> apt install python3-ruamel.yaml
>>>>
>>>> and make sure you have no other version installed.
>>>>
>>>> --M
>>>>
>>>> On Wed, Jul 17, 2024 at 12:22=E2=80=AFPM Maria Mu=C3=B1oz <mamuki92@gm=
ail.com>
>>>> wrote:
>>>>
>>>>> Hi Martin,
>>>>> .
>>>>> Thanks for your answer. I will do the workaround.
>>>>> By the way, I'm using Ubuntu 20.04.
>>>>>
>>>>> Kind Regards,
>>>>>
>>>>> El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (<martin.braun@ett=
us.com>)
>>>>> escribi=C3=B3:
>>>>>
>>>>>> Quick addendum: If you do update to 4.7, you will need to update som=
e
>>>>>> image core files, because we changed stuff for X410 and X440. Best t=
o go
>>>>>> back to the YAML files we provide in-tree and add your OOT blocks to=
 those.
>>>>>>
>>>>>> --M
>>>>>>
>>>>>> On Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun <martin.braun@=
ettus.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Hey Maria,
>>>>>>>
>>>>>>> thanks for reporting this issue. Some pointers:
>>>>>>> - As a workaround, you can install ruamel.yaml 0.17. I don't know
>>>>>>> how you installed it before, but you can do `pip install
>>>>>>> "ruamel.yaml<0.18.0"` if you used pip before.
>>>>>>> - I need to double-check this, but I think UHD 4.7 has a fix for
>>>>>>> this. If not, we will need to fix this ASAP (note to myself)
>>>>>>>
>>>>>>>
>>>>>>> Can you provide some info on your system (OS, distribution, etc.)?
>>>>>>> Many thanks,
>>>>>>>
>>>>>>> Martin
>>>>>>>
>>>>>>> On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92=
@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi all,
>>>>>>>>
>>>>>>>> I'm trying to use the UHD 4.6 version with RFNoC to build an image
>>>>>>>> for the x440 USRP device. I used UHD 4.0 for USRP E320 without a p=
roblem,
>>>>>>>> but now I have an issue with the YML files for the X440 image buil=
ding.
>>>>>>>> I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
>>>>>>>> rfnocmodtool command).
>>>>>>>> I can build my block in software without issues but when I try to
>>>>>>>> create the FPGA image with rfnoc_image_builder an error occurs:
>>>>>>>>
>>>>>>>> >> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440
>>>>>>>> -t X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
>>>>>>>> *[WAR] Module jsonschema is not installed. Configuration files wil=
l
>>>>>>>> not be validated against their schema.*
>>>>>>>> *[WAR] Skip schema validation (missing module jsonschema).*
>>>>>>>> *[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
>>>>>>>> *[INF] Selected device x440*
>>>>>>>> *[INF] Using io_signatures.yml from
>>>>>>>> /usr/local/share/uhd/rfnoc/core.*
>>>>>>>> *Traceback (most recent call last):*
>>>>>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 240, in <module=
>*
>>>>>>>> *    sys.exit(main())*
>>>>>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
>>>>>>>> *    image_builder.build_image(*
>>>>>>>> *  File
>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_build=
er.py",
>>>>>>>> line 1112, in build_image*
>>>>>>>> *    signatures_conf =3D io_signatures(core_config_path)*
>>>>>>>> *  File
>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_build=
er.py",
>>>>>>>> line 666, in io_signatures*
>>>>>>>> *    return load_config(os.path.join(config_path,
>>>>>>>> "io_signatures.yml"))*
>>>>>>>> *  File
>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_build=
er.py",
>>>>>>>> line 640, in load_config*
>>>>>>>> *    config =3D ordered_load(stream)*
>>>>>>>> *  File
>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_build=
er.py",
>>>>>>>> line 115, in ordered_load*
>>>>>>>> *    return yaml.load(stream, OrderedLoader)*
>>>>>>>> *  File
>>>>>>>> "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line=
 1085, in
>>>>>>>> load*
>>>>>>>> *    error_deprecation('load', 'load', arg=3D_error_dep_arg,
>>>>>>>> comment=3D_error_dep_comment)*
>>>>>>>> *  File
>>>>>>>> "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line=
 1037, in
>>>>>>>> error_deprecation*
>>>>>>>> *    raise AttributeError(s)*
>>>>>>>> *AttributeError: *
>>>>>>>> *"load()" has been removed, use*
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> *  yaml =3D YAML(typ=3D'rt')  yaml.load(...)and register any class=
es
>>>>>>>> that you use, or check the tag attribute on the loaded data,instea=
d of file
>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_build=
er.py",
>>>>>>>> line 115    return yaml.load(stream, OrderedLoader)*
>>>>>>>>
>>>>>>>> Do you know how I can solve this problem?
>>>>>>>>
>>>>>>>> Kind, Regards,
>>>>>>>>
>>>>>>>> Maria
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>

--00000000000018c16c061d87c243
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Jul 18, 2024 at 3:06=E2=80=AFPM Maria Mu=C3=B1oz &lt;<a =
href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Ma=
rtin,<div><br><div>Oh! I didn&#39;t know there was a debug option. The line=
 says this:</div></div><div>[DEB] Executing the following command: /bin/bas=
h -c &quot;. ./setupenv.sh &amp;&amp; make X440_X4_200 IMAGE_CORE=3D/home/u=
ser/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200_rfnoc_image_core.v ED=
GE_FILE=3D/home/user/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200_stat=
ic_router.hex RFNOC_OOT_MAKEFILE_SRCS=3D/home/user/rfnoc/gr_ettus/rfnoc-nbc=
_v2/rfnoc/fpga/rfnoc_block_nbcv2/Makefile.srcs&quot;<br></div></div></block=
quote><div><br></div><div>Hm that looks fine. /home/user/rfnoc/gr_ettus/rfn=
oc-nbc_v2/rfnoc/fpga/rfnoc_block_nbcv2/Makefile.srcs

 has everything you expect to be there?<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div><br></div><div>I&#=
39;ll take a look at the 4.7 version as suggested.</div></div></blockquote>=
<div><br></div><div>Thanks -- but don&#39;t throw away your 4.6 stuff yet, =
depending on how much work the transition is.</div><div><br></div><div>--M =
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div><br></div><div>Kind Regards,</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 18 jul 2024 a las 14:35, M=
artin Braun (&lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank=
">martin.braun@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div>=
<br></div><div>I&#39;m not sure what&#39;s going on. Can you run rfnoc_imag=
e_builder -l debug [...your options...] and post the line that says &quot;E=
xecuting the following command: ...&quot;? I wonder if RFNOC_OOT_MAKEFILE_S=
RCS is correctly set.</div><div><br></div><div>BTW, if you just upgraded to=
 4.6, consider upgrading to 4.7. On the X440, very little changed, but the =
image builder got its first overhaul in a while, and therefore there&#39;s =
a better chance of supporting folks using that.</div><div>That said, it&#39=
;s a bigger upgrade path because we changed some things in the way the imag=
e core YAML files are constructed.</div><div><br></div><div>--M<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Jul 18, 2024 at 11:32=E2=80=AFAM Maria Mu=C3=B1oz &lt;<a href=3D"mail=
to:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi Martin,<div><br></div><div>I had another issue once I resolved the YML=
=C2=A0problem. I start the synthesis with this command:</div><div><br></div=
><div>=C2=A0rfnoc_image_builder -y x440_200_nbc_rfnoc_image_core.yml -d x44=
0 -t X440_X4_200 --fpga-dir ~/rfnoc/uhd/fpga/</div><div><br></div><div>But =
Vivado can&#39;t find my OOT block:<br><br></div><div>ERROR: [Synth 8-439] =
module &#39;rfnoc_block_nbcv2&#39; not found [~/rfnoc/gr-ettus/rfnoc-nbc_v2=
/rfnoc/icores/x440_200_rfnoc_image_core.v:1512]<br></div><div><br></div><di=
v>I&#39;ve used the x440_200_nbc_rfnoc_image_core.yml example in=C2=A0uhd/f=
pga/usrp3/top/x400/ but added a new EP to connect my block. I&#39;ve also=
=C2=A0reviewed the=C2=A0

x440_200_rfnoc_image_core.v generated and it instance my module name correc=
tly.=C2=A0</div><div><br></div><div>As it is my first time using UHD 4.6 (I=
 usually use 4.0) I don&#39;t know if I need to do any other modifications =
to Makefiles to find my block. I tried to indicate the OOT folder with the =
-I option in rfnoc_image_builder, but I got=C2=A0the same error.=C2=A0</div=
><div><br></div><div>What I usually do with 4.0 is the following:</div><div=
>1) Generate block with rfnocmodtool</div><div>2) Modify grc, lib, include,=
 FPGA, block, and icore folders to include my block code. Add to the fpga/M=
akefile.srcs all the vhdl/verilog sources for my FPGA code.</div><div>3) Bu=
ild my block=C2=A0</div><div>4) Move to the icore folder of my block and ru=
n the rfnoc_image_builder command.=C2=A0</div><div><br></div><div>Is there =
something that I&#39;m missing for the 4.6 version?</div><div><br></div><di=
v>Kind Regards,</div><div><br></div><div>Maria</div><div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=
=A9, 17 jul 2024 a las 13:13, Martin Braun (&lt;<a href=3D"mailto:martin.br=
aun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>In that case you can just do</div><div><br></div><div>apt instal=
l python3-ruamel.yaml</div><div><br></div><div>and make sure you have no ot=
her version installed.</div><div><br></div><div>--M<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17=
, 2024 at 12:22=E2=80=AFPM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@=
gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Mar=
tin,<div>.</div><div>Thanks for your answer. I will do the workaround.=C2=
=A0</div><div>By the way, I&#39;m using Ubuntu 20.04.</div><div><br></div><=
div>Kind Regards,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (=
&lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.brau=
n@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Quick addendum: If you do update =
to 4.7, you will need to update some image core files, because we changed s=
tuff for X410 and X440. Best to go back to the YAML files we provide in-tre=
e and add your OOT blocks to those.</div><div><br></div><div>--M<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:=
martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hey Maria,</div><div><br></div><div>thanks for reporting this is=
sue. Some pointers:</div><div>- As a workaround, you can install ruamel.yam=
l 0.17. I don&#39;t know how you installed it before, but you can do `pip i=
nstall &quot;ruamel.yaml&lt;0.18.0&quot;` if you used pip before.</div><div=
>- I need to double-check this, but I think UHD 4.7 has a fix for this. If =
not, we will need to fix this ASAP (note to myself)</div><div><br></div><di=
v><br></div><div>Can you provide some info on your system (OS, distribution=
, etc.)? Many thanks,</div><div><br></div><div>Martin<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul =
17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki9=
2@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<d=
iv><br></div><div>I&#39;m trying to use the UHD 4.6 version with RFNoC to b=
uild an image for the x440 USRP device. I used UHD 4.0 for USRP E320 withou=
t a problem, but now I have an issue with the YML files for the X440 image =
building.</div><div>I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (t=
o have the rfnocmodtool command).</div><div>I can build my block in softwar=
e=C2=A0without issues but when I try to create the FPGA image with rfnoc_im=
age_builder an error occurs:</div><div><br></div><blockquote style=3D"margi=
n:0px 0px 0px 40px;border:medium;padding:0px"><div>&gt;&gt; <b>rfnoc_image_=
builder -y block_x440_rfnoc_image_core.yml -d x440 -t X4_400 --fpga-dir ~/r=
fnoc/uhd/fpga/</b></div><div><i>[WAR] Module jsonschema is not installed. C=
onfiguration files will not be validated against their schema.</i></div><di=
v><i>[WAR] Skip schema validation (missing module jsonschema).</i></div><di=
v><i>[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga</i></div><di=
v><i>[INF] Selected device x440</i></div><div><i>[INF] Using io_signatures.=
yml from /usr/local/share/uhd/rfnoc/core.</i></div><div><i>Traceback (most =
recent call last):</i></div><div><i>=C2=A0 File &quot;/usr/local/bin/rfnoc_=
image_builder&quot;, line 240, in &lt;module&gt;</i></div><div><i>=C2=A0 =
=C2=A0 sys.exit(main())</i></div><div><i>=C2=A0 File &quot;/usr/local/bin/r=
fnoc_image_builder&quot;, line 219, in main</i></div><div><i>=C2=A0 =C2=A0 =
image_builder.build_image(</i></div><div><i>=C2=A0 File &quot;/usr/local/li=
b/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 1112,=
 in build_image</i></div><div><i>=C2=A0 =C2=A0 signatures_conf =3D io_signa=
tures(core_config_path)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/p=
ython3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 666, in =
io_signatures</i></div><div><i>=C2=A0 =C2=A0 return load_config(os.path.joi=
n(config_path, &quot;io_signatures.yml&quot;))</i></div><div><i>=C2=A0 File=
 &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.=
py&quot;, line 640, in load_config</i></div><div><i>=C2=A0 =C2=A0 config =
=3D ordered_load(stream)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/=
python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 115, in=
 ordered_load</i></div><div><i>=C2=A0 =C2=A0 return yaml.load(stream, Order=
edLoader)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/dist-=
packages/ruamel/yaml/main.py&quot;, line 1085, in load</i></div><div><i>=C2=
=A0 =C2=A0 error_deprecation(&#39;load&#39;, &#39;load&#39;, arg=3D_error_d=
ep_arg, comment=3D_error_dep_comment)</i></div><div><i>=C2=A0 File &quot;/u=
sr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py&quot;, line 1037, =
in error_deprecation</i></div><div><i>=C2=A0 =C2=A0 raise AttributeError(s)=
</i></div><div><i>AttributeError: </i></div><div><i>&quot;load()&quot; has =
been removed, use</i></div></blockquote><div><i><br>=C2=A0 yaml =3D YAML(ty=
p=3D&#39;rt&#39;)<br>=C2=A0 yaml.load(...)<br><br>and register any classes =
that you use, or check the tag attribute on the loaded data,<br>instead of =
file &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_buil=
der.py&quot;, line 115<br><br>=C2=A0 =C2=A0 return yaml.load(stream, Ordere=
dLoader)</i><br></div><div><br></div><div>Do you know how I can solve this =
problem?</div><div><br></div><div>Kind, Regards,</div><div><br></div><div>M=
aria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--00000000000018c16c061d87c243--

--===============6648501356947795933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6648501356947795933==--
