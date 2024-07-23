Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE0B939E66
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 12:00:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54A11385848
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 06:00:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721728816; bh=w4xqxxyab3ZmZDgzITI50DLDFv/gThPPg6DfWSa5txA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SQH/pfwC5/HXh3yNz34LkWd1hIvIkS9QSKIbXxgXavUOX3GfBUElf2W9SGctjbCWq
	 0EmIFjMaSGSivspRh8cGOTHSVyhf0QA7i0wPR0uVHa1xaakku/seXWgRDcIe25N9gQ
	 D6B4wPMtCFZpdNf/+FAAY8hftDf0EiSFLyLqeZhtVmgRfLHpebmcPw2RZef6Zww5LY
	 7o5yH1U2/+lufI18dyc951Ne8pLbgxM0Oe+j5FSNYFuc6nVCz/lgQT0fYtWwRjHH34
	 PpeVBNnJY5T/nlCo2WFj5qzFmqw1dgO2Sq93tRZaKbi1ud3hLtrJsfhkls87L2OTu9
	 JZ1oRsmPR20yA==
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F65C385560
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 05:59:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tuuum+Ut";
	dkim-atps=neutral
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-4f6ac1628dfso159632e0c.0
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 02:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721728794; x=1722333594; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=peoNZ61+sMDz2ELCn55qrZkU2Vh9Z3eSLxRjwIOAmQE=;
        b=Tuuum+UtOc9ciPYMLT5Psh78fgwEkPFqGCecE27EFe0jcvum8GojwfuE7nH/q2AuTZ
         mb6wknGhnvyDc894IQ4DB0tdldxrX3ma/1pUicSJ4NS6OFMDQ3/pIQ1q0JtjTPa/jAfZ
         lX7PAiUFldBylrd8Q78kPWXVQwzvdWev61GLhTXepYKpBYDL5EtgmN3RvkpApXEVadk0
         ZB51h2jIp5ApOEwi2UiqTytkpyFgNB8wbZdo41xyqOw1SBZSmUfCUl7Pt7xCz9uSgtsF
         X5njBUxw/ixBFmOXe7BwyRAMAiqBZ3inPk0RS1F6q1ueQT+LGwEN38pKZZcktnqSIwYW
         eOJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728794; x=1722333594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=peoNZ61+sMDz2ELCn55qrZkU2Vh9Z3eSLxRjwIOAmQE=;
        b=vzis+h4oKxoLDykZOVfZi4h6Z+HAF/YL1uisyNO952m1c6asihJVOqCrRq/Yp6tREz
         kHPdva4Dn8ffuRKO21U+HL06X8jSt0iD6yzKWt2OAYGlksdPahCFHB3s3kOktwray68k
         0HvVKI2wzsdzzt0nYJNIgAqAmbrvUdfDR/Cop8h12lloV5Eft2RR0QExZOqZviHvjlNW
         fZl/6/7Vmpq0KIOGr9bTcCJW2D2+orbQ8k2dmqz4rAwLN4Hf64Vha6m3iTuQ4HkvJu1+
         jKnZkcTRrplAz24ICllZ9TlmnjPEsvFFCUtmfZK0cC4SEQvdBJWdvGk+b/O40Ein37uC
         6KmA==
X-Gm-Message-State: AOJu0YxsJjsqM9C5M+mFAz94FZMGC1nZH3w4/9sZJ2cD7t6S22OwrOEu
	ogyacG393j3aiwHrWHnIbrBiK9oPoENOVBRX/ItSsmVCdQNjD18kK7B5DRQqbYb/AfGFff3Ha/Y
	jwHWmNO7NhtbHfSVeyRoIpVzgoAx/Cg==
X-Google-Smtp-Source: AGHT+IHUrOpNXBeN6e43ay7pdsYi1tne9649iudT4qDPv+p4eB0UPQs9MSvmCpepWb9CKpA/q2qG0Qz6llxEpQCR7H8=
X-Received: by 2002:a05:6122:1810:b0:4f5:22cc:71b9 with SMTP id
 71dfb90a1353d-4f522cd5ab7mr7463125e0c.5.1721728793837; Tue, 23 Jul 2024
 02:59:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
 <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
 <CAFOi1A7NgiuDpqnAhT=vWOEGs-oqmSL0pP7d9mCwuA=js1iPSQ@mail.gmail.com>
 <CAG16vQUGwmcj5w17Xx9y=WYBRS9qVZOMxsacuq60q0GYP2ELCw@mail.gmail.com>
 <CAFOi1A4mOcwzMmOX-r_WbHibH5wVN8TeKCu6JEE=WDFLNQ0gEQ@mail.gmail.com>
 <CAG16vQV3e5zrtAcxsvQET4Anc+JYF73C0QBT4gEoo5MV+7qd3g@mail.gmail.com>
 <CAFOi1A4t7gP2ZnM+AjfszvCsdu51fU0KtQ-7aJJYPa4i7bhMVw@mail.gmail.com>
 <CAG16vQW7TbrUDU4n5f9d9=9gqVO4VeprM+7tVqf127bPmzVatQ@mail.gmail.com> <CAFOi1A42uMea0vs9zz6zE=QOu=LEvc5eH2ziQ5CGKMBJEi5W2Q@mail.gmail.com>
In-Reply-To: <CAFOi1A42uMea0vs9zz6zE=QOu=LEvc5eH2ziQ5CGKMBJEi5W2Q@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Tue, 23 Jul 2024 11:59:41 +0200
Message-ID: <CAG16vQXb=V6iGSro84mbyWkP49xbAPJejGwLHfjtqk+5ZS1tsg@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: HTX5SV6LET2KWDOELCNUAT4L3UU6QAIQ
X-Message-ID-Hash: HTX5SV6LET2KWDOELCNUAT4L3UU6QAIQ
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HTX5SV6LET2KWDOELCNUAT4L3UU6QAIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5417817819925018145=="

--===============5417817819925018145==
Content-Type: multipart/alternative; boundary="0000000000002809fd061de7399d"

--0000000000002809fd061de7399d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I have figured it out when you write the path. There was a misspelling,
"gr_ettus" instead of "gr-ettus".  Now, I can build the image, thank you!

Kind Regards,

El jue, 18 jul 2024 a las 18:06, Martin Braun (<martin.braun@ettus.com>)
escribi=C3=B3:

>
> On Thu, Jul 18, 2024 at 3:06=E2=80=AFPM Maria Mu=C3=B1oz <mamuki92@gmail.=
com> wrote:
>
>> Hi Martin,
>>
>> Oh! I didn't know there was a debug option. The line says this:
>> [DEB] Executing the following command: /bin/bash -c ". ./setupenv.sh &&
>> make X440_X4_200
>> IMAGE_CORE=3D/home/user/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_20=
0_rfnoc_image_core.v
>> EDGE_FILE=3D/home/user/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200=
_static_router.hex
>> RFNOC_OOT_MAKEFILE_SRCS=3D/home/user/rfnoc/gr_ettus/rfnoc-nbc_v2/rfnoc/f=
pga/rfnoc_block_nbcv2/Makefile.srcs"
>>
>
> Hm that looks fine.
> /home/user/rfnoc/gr_ettus/rfnoc-nbc_v2/rfnoc/fpga/rfnoc_block_nbcv2/Makef=
ile.srcs
> has everything you expect to be there?
>
>>
>> I'll take a look at the 4.7 version as suggested.
>>
>
> Thanks -- but don't throw away your 4.6 stuff yet, depending on how much
> work the transition is.
>
> --M
>
>>
>> Kind Regards,
>>
>> El jue, 18 jul 2024 a las 14:35, Martin Braun (<martin.braun@ettus.com>)
>> escribi=C3=B3:
>>
>>> Hi Maria,
>>>
>>> I'm not sure what's going on. Can you run rfnoc_image_builder -l debug
>>> [...your options...] and post the line that says "Executing the followi=
ng
>>> command: ..."? I wonder if RFNOC_OOT_MAKEFILE_SRCS is correctly set.
>>>
>>> BTW, if you just upgraded to 4.6, consider upgrading to 4.7. On the
>>> X440, very little changed, but the image builder got its first overhaul=
 in
>>> a while, and therefore there's a better chance of supporting folks usin=
g
>>> that.
>>> That said, it's a bigger upgrade path because we changed some things in
>>> the way the image core YAML files are constructed.
>>>
>>> --M
>>>
>>> On Thu, Jul 18, 2024 at 11:32=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92@gma=
il.com> wrote:
>>>
>>>> Hi Martin,
>>>>
>>>> I had another issue once I resolved the YML problem. I start the
>>>> synthesis with this command:
>>>>
>>>>  rfnoc_image_builder -y x440_200_nbc_rfnoc_image_core.yml -d x440 -t
>>>> X440_X4_200 --fpga-dir ~/rfnoc/uhd/fpga/
>>>>
>>>> But Vivado can't find my OOT block:
>>>>
>>>> ERROR: [Synth 8-439] module 'rfnoc_block_nbcv2' not found
>>>> [~/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200_rfnoc_image_core.=
v:1512]
>>>>
>>>> I've used the x440_200_nbc_rfnoc_image_core.yml example
>>>> in uhd/fpga/usrp3/top/x400/ but added a new EP to connect my block. I'=
ve
>>>> also reviewed the  x440_200_rfnoc_image_core.v generated and it instan=
ce my
>>>> module name correctly.
>>>>
>>>> As it is my first time using UHD 4.6 (I usually use 4.0) I don't know
>>>> if I need to do any other modifications to Makefiles to find my block.=
 I
>>>> tried to indicate the OOT folder with the -I option in rfnoc_image_bui=
lder,
>>>> but I got the same error.
>>>>
>>>> What I usually do with 4.0 is the following:
>>>> 1) Generate block with rfnocmodtool
>>>> 2) Modify grc, lib, include, FPGA, block, and icore folders to include
>>>> my block code. Add to the fpga/Makefile.srcs all the vhdl/verilog sour=
ces
>>>> for my FPGA code.
>>>> 3) Build my block
>>>> 4) Move to the icore folder of my block and run the rfnoc_image_builde=
r
>>>> command.
>>>>
>>>> Is there something that I'm missing for the 4.6 version?
>>>>
>>>> Kind Regards,
>>>>
>>>> Maria
>>>>
>>>>
>>>> El mi=C3=A9, 17 jul 2024 a las 13:13, Martin Braun (<martin.braun@ettu=
s.com>)
>>>> escribi=C3=B3:
>>>>
>>>>> In that case you can just do
>>>>>
>>>>> apt install python3-ruamel.yaml
>>>>>
>>>>> and make sure you have no other version installed.
>>>>>
>>>>> --M
>>>>>
>>>>> On Wed, Jul 17, 2024 at 12:22=E2=80=AFPM Maria Mu=C3=B1oz <mamuki92@g=
mail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Martin,
>>>>>> .
>>>>>> Thanks for your answer. I will do the workaround.
>>>>>> By the way, I'm using Ubuntu 20.04.
>>>>>>
>>>>>> Kind Regards,
>>>>>>
>>>>>> El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (<
>>>>>> martin.braun@ettus.com>) escribi=C3=B3:
>>>>>>
>>>>>>> Quick addendum: If you do update to 4.7, you will need to update
>>>>>>> some image core files, because we changed stuff for X410 and X440. =
Best to
>>>>>>> go back to the YAML files we provide in-tree and add your OOT block=
s to
>>>>>>> those.
>>>>>>>
>>>>>>> --M
>>>>>>>
>>>>>>> On Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun <
>>>>>>> martin.braun@ettus.com> wrote:
>>>>>>>
>>>>>>>> Hey Maria,
>>>>>>>>
>>>>>>>> thanks for reporting this issue. Some pointers:
>>>>>>>> - As a workaround, you can install ruamel.yaml 0.17. I don't know
>>>>>>>> how you installed it before, but you can do `pip install
>>>>>>>> "ruamel.yaml<0.18.0"` if you used pip before.
>>>>>>>> - I need to double-check this, but I think UHD 4.7 has a fix for
>>>>>>>> this. If not, we will need to fix this ASAP (note to myself)
>>>>>>>>
>>>>>>>>
>>>>>>>> Can you provide some info on your system (OS, distribution, etc.)?
>>>>>>>> Many thanks,
>>>>>>>>
>>>>>>>> Martin
>>>>>>>>
>>>>>>>> On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz <mamuki9=
2@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi all,
>>>>>>>>>
>>>>>>>>> I'm trying to use the UHD 4.6 version with RFNoC to build an imag=
e
>>>>>>>>> for the x440 USRP device. I used UHD 4.0 for USRP E320 without a =
problem,
>>>>>>>>> but now I have an issue with the YML files for the X440 image bui=
lding.
>>>>>>>>> I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
>>>>>>>>> rfnocmodtool command).
>>>>>>>>> I can build my block in software without issues but when I try to
>>>>>>>>> create the FPGA image with rfnoc_image_builder an error occurs:
>>>>>>>>>
>>>>>>>>> >> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d
>>>>>>>>> x440 -t X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
>>>>>>>>> *[WAR] Module jsonschema is not installed. Configuration files
>>>>>>>>> will not be validated against their schema.*
>>>>>>>>> *[WAR] Skip schema validation (missing module jsonschema).*
>>>>>>>>> *[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
>>>>>>>>> *[INF] Selected device x440*
>>>>>>>>> *[INF] Using io_signatures.yml from
>>>>>>>>> /usr/local/share/uhd/rfnoc/core.*
>>>>>>>>> *Traceback (most recent call last):*
>>>>>>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 240, in
>>>>>>>>> <module>*
>>>>>>>>> *    sys.exit(main())*
>>>>>>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
>>>>>>>>> *    image_builder.build_image(*
>>>>>>>>> *  File
>>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_buil=
der.py",
>>>>>>>>> line 1112, in build_image*
>>>>>>>>> *    signatures_conf =3D io_signatures(core_config_path)*
>>>>>>>>> *  File
>>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_buil=
der.py",
>>>>>>>>> line 666, in io_signatures*
>>>>>>>>> *    return load_config(os.path.join(config_path,
>>>>>>>>> "io_signatures.yml"))*
>>>>>>>>> *  File
>>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_buil=
der.py",
>>>>>>>>> line 640, in load_config*
>>>>>>>>> *    config =3D ordered_load(stream)*
>>>>>>>>> *  File
>>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_buil=
der.py",
>>>>>>>>> line 115, in ordered_load*
>>>>>>>>> *    return yaml.load(stream, OrderedLoader)*
>>>>>>>>> *  File
>>>>>>>>> "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", lin=
e 1085, in
>>>>>>>>> load*
>>>>>>>>> *    error_deprecation('load', 'load', arg=3D_error_dep_arg,
>>>>>>>>> comment=3D_error_dep_comment)*
>>>>>>>>> *  File
>>>>>>>>> "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", lin=
e 1037, in
>>>>>>>>> error_deprecation*
>>>>>>>>> *    raise AttributeError(s)*
>>>>>>>>> *AttributeError: *
>>>>>>>>> *"load()" has been removed, use*
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> *  yaml =3D YAML(typ=3D'rt')  yaml.load(...)and register any clas=
ses
>>>>>>>>> that you use, or check the tag attribute on the loaded data,inste=
ad of file
>>>>>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_buil=
der.py",
>>>>>>>>> line 115    return yaml.load(stream, OrderedLoader)*
>>>>>>>>>
>>>>>>>>> Do you know how I can solve this problem?
>>>>>>>>>
>>>>>>>>> Kind, Regards,
>>>>>>>>>
>>>>>>>>> Maria
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>>

--0000000000002809fd061de7399d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>I have figured it out when y=
ou write the path. There was a misspelling, &quot;gr_ettus&quot; instead of=
 &quot;gr-ettus&quot;.=C2=A0 Now, I can build the image, thank you!</div><d=
iv><br></div><div>Kind Regards,</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">El jue, 18 jul 2024 a las 18:06, Marti=
n Braun (&lt;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.c=
om</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Jul 18, 2024 at 3:06=E2=80=AFPM Maria Mu=C3=
=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Martin,<div><br><div>Oh! I didn&#39;t know t=
here was a debug option. The line says this:</div></div><div>[DEB] Executin=
g the following command: /bin/bash -c &quot;. ./setupenv.sh &amp;&amp; make=
 X440_X4_200 IMAGE_CORE=3D/home/user/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icor=
es/x440_200_rfnoc_image_core.v EDGE_FILE=3D/home/user/rfnoc/gr-ettus/rfnoc-=
nbc_v2/rfnoc/icores/x440_200_static_router.hex RFNOC_OOT_MAKEFILE_SRCS=3D/h=
ome/user/rfnoc/gr_ettus/rfnoc-nbc_v2/rfnoc/fpga/rfnoc_block_nbcv2/Makefile.=
srcs&quot;<br></div></div></blockquote><div><br></div><div>Hm that looks fi=
ne. /home/user/rfnoc/gr_ettus/rfnoc-nbc_v2/rfnoc/fpga/rfnoc_block_nbcv2/Mak=
efile.srcs

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
</blockquote></div>

--0000000000002809fd061de7399d--

--===============5417817819925018145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5417817819925018145==--
