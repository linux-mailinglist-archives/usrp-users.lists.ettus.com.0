Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C9D934AFE
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2024 11:33:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F02AE3855C1
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2024 05:33:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721295181; bh=/Euc/zjkkqBVrOXMpa/1+f0y+uAR0V2x14oteRxhmw8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C5E+JHOPp3foCTW9i5nbyAb658w7ZsJI9Om+I/03Wpe1M7pDagUy8niRYrrxvoiFZ
	 fOnwmIzRYJXXZo2zlxB3ZsNWLhlve9bNMZwRFhWGA/URbdw9FNuD9TnGFf+HvD8/DA
	 c/x1dvdQk78+3pHpwM8/mkobLdQgyaLqe6kJ+K+mibp7nnS2JfTabWo6/NwHny4mIX
	 JNcvUJ3gaaA2meJSsbFtt4zDyzFnq4cXD5KtjgF0kbcuTKdtrQYR53uUdTQhutEnv8
	 PbqTJrqpS2Qo5YpIGXgOzxMKTBoSh+FMYKOjtY3w/EgOXvdhUuey+7Ok0KsZHZbJsY
	 kh7euBMQup3zg==
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 777773854EB
	for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2024 05:32:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fzIAK/bA";
	dkim-atps=neutral
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-4926a732a8dso211096137.0
        for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2024 02:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721295123; x=1721899923; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4+LnnF2sXXtN+6Uuvsh7fMz0frrC4hqhSYnk/bIPRqM=;
        b=fzIAK/bAJFfq/tcOnlZpBqCI4hlIsxHe5acrIs2XfHXrT6IuzT5ie0Pzqqxs9UveYZ
         IatbVPjaU3pYhEK4lIgKbohZ0vvlmUhN5WcatWU5IIWncKjThoyi5WemffB/ol9pJ53c
         xlDLdRMW3rtINe1oz860sxRCPGa07lc6km2r62aTLWZ1ccWCGWi+i0SQ6X0qbg45znaq
         SpzX4I2Sh8LcSFTHi86PYDt3dY0QSTznHXxemkSHs5KmqgpMIVSvl52E9nVVd+6owBg8
         bEDR2skI/Orj6FLdszAFj0Mft4P1iHSPZ/qlHak+fC15qxyCD68vocLHWgtQUvIpzh4J
         D7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721295123; x=1721899923;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4+LnnF2sXXtN+6Uuvsh7fMz0frrC4hqhSYnk/bIPRqM=;
        b=SlYodahgwk9aMU0/LF3Adjj8HSDC6oNDL+G13oDBJC8Taay8lrooE9i2FZAm93A9DW
         7GmVQLxcdObZEOnmo8liCQ3/lFy4MwMgYka5YtMSoXXEBw47WyFyYqdOZ5rFfPXqQ8kp
         Wif1zkKaccCVxxSFinOAyW8GhKqxmmMFei2gf66m1En9KalLu5/GzBrwYk93pRESfSpL
         ssEurgqNOSYChcPoqhHCaZUtKSQkn1+2Z/4WeahBnLEPEuKjTI6GCrJWrAw7/ThSX77U
         2YCS5HTNqySj3K6ZZUVTrXTkJdkEOlB6mF2FJ0ePVZBQ9i1gF1bXcuhDTJ0D/Ieb8IO3
         Z9LA==
X-Gm-Message-State: AOJu0YybF8L40eMtAIw7sD52Zd++UUs1GUdSX9xXlvDaQrPQSfkNv2Mq
	te570BRBiUCJqgRy45ZMmKl78pIqdRujvGU2qT3iNB6bbGQ+jH9m5M6kt1Br6xnNiuy7vm5uNSs
	2CWDm6Sz4tkIk2sasN69SUoYHRbzssgBP
X-Google-Smtp-Source: AGHT+IFe5g4SHQaI27WnsjSg420707aCMq4m29zIIYq95+HN3sQJ+8B9TRFZsjlWuXtJJ1JZBSxcMRgawoqf1pJG6sY=
X-Received: by 2002:a05:6102:334f:b0:48f:3b01:6835 with SMTP id
 ada2fe7eead31-4915985919emr5081308137.13.1721295121137; Thu, 18 Jul 2024
 02:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
 <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
 <CAFOi1A7NgiuDpqnAhT=vWOEGs-oqmSL0pP7d9mCwuA=js1iPSQ@mail.gmail.com>
 <CAG16vQUGwmcj5w17Xx9y=WYBRS9qVZOMxsacuq60q0GYP2ELCw@mail.gmail.com> <CAFOi1A4mOcwzMmOX-r_WbHibH5wVN8TeKCu6JEE=WDFLNQ0gEQ@mail.gmail.com>
In-Reply-To: <CAFOi1A4mOcwzMmOX-r_WbHibH5wVN8TeKCu6JEE=WDFLNQ0gEQ@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 18 Jul 2024 11:31:48 +0200
Message-ID: <CAG16vQV3e5zrtAcxsvQET4Anc+JYF73C0QBT4gEoo5MV+7qd3g@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 6UYDSURAEMVYSJEYYBFJNJGNGJUBCI5R
X-Message-ID-Hash: 6UYDSURAEMVYSJEYYBFJNJGNGJUBCI5R
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UYDSURAEMVYSJEYYBFJNJGNGJUBCI5R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2733855609579231274=="

--===============2733855609579231274==
Content-Type: multipart/alternative; boundary="0000000000003fc861061d8240ad"

--0000000000003fc861061d8240ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I had another issue once I resolved the YML problem. I start the synthesis
with this command:

 rfnoc_image_builder -y x440_200_nbc_rfnoc_image_core.yml -d x440 -t
X440_X4_200 --fpga-dir ~/rfnoc/uhd/fpga/

But Vivado can't find my OOT block:

ERROR: [Synth 8-439] module 'rfnoc_block_nbcv2' not found
[~/rfnoc/gr-ettus/rfnoc-nbc_v2/rfnoc/icores/x440_200_rfnoc_image_core.v:151=
2]

I've used the x440_200_nbc_rfnoc_image_core.yml example
in uhd/fpga/usrp3/top/x400/ but added a new EP to connect my block. I've
also reviewed the  x440_200_rfnoc_image_core.v generated and it instance my
module name correctly.

As it is my first time using UHD 4.6 (I usually use 4.0) I don't know if I
need to do any other modifications to Makefiles to find my block. I tried
to indicate the OOT folder with the -I option in rfnoc_image_builder, but I
got the same error.

What I usually do with 4.0 is the following:
1) Generate block with rfnocmodtool
2) Modify grc, lib, include, FPGA, block, and icore folders to include my
block code. Add to the fpga/Makefile.srcs all the vhdl/verilog sources for
my FPGA code.
3) Build my block
4) Move to the icore folder of my block and run the rfnoc_image_builder
command.

Is there something that I'm missing for the 4.6 version?

Kind Regards,

Maria


El mi=C3=A9, 17 jul 2024 a las 13:13, Martin Braun (<martin.braun@ettus.com=
>)
escribi=C3=B3:

> In that case you can just do
>
> apt install python3-ruamel.yaml
>
> and make sure you have no other version installed.
>
> --M
>
> On Wed, Jul 17, 2024 at 12:22=E2=80=AFPM Maria Mu=C3=B1oz <mamuki92@gmail=
.com> wrote:
>
>> Hi Martin,
>> .
>> Thanks for your answer. I will do the workaround.
>> By the way, I'm using Ubuntu 20.04.
>>
>> Kind Regards,
>>
>> El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (<martin.braun@ettus.=
com>)
>> escribi=C3=B3:
>>
>>> Quick addendum: If you do update to 4.7, you will need to update some
>>> image core files, because we changed stuff for X410 and X440. Best to g=
o
>>> back to the YAML files we provide in-tree and add your OOT blocks to th=
ose.
>>>
>>> --M
>>>
>>> On Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun <martin.braun@ett=
us.com>
>>> wrote:
>>>
>>>> Hey Maria,
>>>>
>>>> thanks for reporting this issue. Some pointers:
>>>> - As a workaround, you can install ruamel.yaml 0.17. I don't know how
>>>> you installed it before, but you can do `pip install "ruamel.yaml<0.18=
.0"`
>>>> if you used pip before.
>>>> - I need to double-check this, but I think UHD 4.7 has a fix for this.
>>>> If not, we will need to fix this ASAP (note to myself)
>>>>
>>>>
>>>> Can you provide some info on your system (OS, distribution, etc.)? Man=
y
>>>> thanks,
>>>>
>>>> Martin
>>>>
>>>> On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92@gm=
ail.com>
>>>> wrote:
>>>>
>>>>> Hi all,
>>>>>
>>>>> I'm trying to use the UHD 4.6 version with RFNoC to build an image fo=
r
>>>>> the x440 USRP device. I used UHD 4.0 for USRP E320 without a problem,=
 but
>>>>> now I have an issue with the YML files for the X440 image building.
>>>>> I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
>>>>> rfnocmodtool command).
>>>>> I can build my block in software without issues but when I try to
>>>>> create the FPGA image with rfnoc_image_builder an error occurs:
>>>>>
>>>>> >> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t
>>>>> X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
>>>>> *[WAR] Module jsonschema is not installed. Configuration files will
>>>>> not be validated against their schema.*
>>>>> *[WAR] Skip schema validation (missing module jsonschema).*
>>>>> *[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
>>>>> *[INF] Selected device x440*
>>>>> *[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*
>>>>> *Traceback (most recent call last):*
>>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*
>>>>> *    sys.exit(main())*
>>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
>>>>> *    image_builder.build_image(*
>>>>> *  File
>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.=
py",
>>>>> line 1112, in build_image*
>>>>> *    signatures_conf =3D io_signatures(core_config_path)*
>>>>> *  File
>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.=
py",
>>>>> line 666, in io_signatures*
>>>>> *    return load_config(os.path.join(config_path,
>>>>> "io_signatures.yml"))*
>>>>> *  File
>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.=
py",
>>>>> line 640, in load_config*
>>>>> *    config =3D ordered_load(stream)*
>>>>> *  File
>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.=
py",
>>>>> line 115, in ordered_load*
>>>>> *    return yaml.load(stream, OrderedLoader)*
>>>>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>>>>> line 1085, in load*
>>>>> *    error_deprecation('load', 'load', arg=3D_error_dep_arg,
>>>>> comment=3D_error_dep_comment)*
>>>>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>>>>> line 1037, in error_deprecation*
>>>>> *    raise AttributeError(s)*
>>>>> *AttributeError: *
>>>>> *"load()" has been removed, use*
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> *  yaml =3D YAML(typ=3D'rt')  yaml.load(...)and register any classes =
that
>>>>> you use, or check the tag attribute on the loaded data,instead of fil=
e
>>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.=
py",
>>>>> line 115    return yaml.load(stream, OrderedLoader)*
>>>>>
>>>>> Do you know how I can solve this problem?
>>>>>
>>>>> Kind, Regards,
>>>>>
>>>>> Maria
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--0000000000003fc861061d8240ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>I had another issue once I r=
esolved the YML=C2=A0problem. I start the synthesis with this command:</div=
><div><br></div><div>=C2=A0rfnoc_image_builder -y x440_200_nbc_rfnoc_image_=
core.yml -d x440 -t X440_X4_200 --fpga-dir ~/rfnoc/uhd/fpga/</div><div><br>=
</div><div>But Vivado can&#39;t find my OOT block:<br><br></div><div>ERROR:=
 [Synth 8-439] module &#39;rfnoc_block_nbcv2&#39; not found [~/rfnoc/gr-ett=
us/rfnoc-nbc_v2/rfnoc/icores/x440_200_rfnoc_image_core.v:1512]<br></div><di=
v><br></div><div>I&#39;ve used the x440_200_nbc_rfnoc_image_core.yml exampl=
e in=C2=A0uhd/fpga/usrp3/top/x400/ but added a new EP to connect my block. =
I&#39;ve also=C2=A0reviewed the=C2=A0

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
aun@ettus.com">martin.braun@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>In that=
 case you can just do</div><div><br></div><div>apt install python3-ruamel.y=
aml</div><div><br></div><div>and make sure you have no other version instal=
led.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2024 at 12:22=E2=
=80=AFPM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=
=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Martin,<div>.</div><=
div>Thanks for your answer. I will do the workaround.=C2=A0</div><div>By th=
e way, I&#39;m using Ubuntu 20.04.</div><div><br></div><div>Kind Regards,</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (&lt;<a href=3D"mail=
to:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;=
) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Quick addendum: If you do update to 4.7, you will ne=
ed to update some image core files, because we changed stuff for X410 and X=
440. Best to go back to the YAML files we provide in-tree and add your OOT =
blocks to those.</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2024=
 at 12:05=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.=
com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Mari=
a,</div><div><br></div><div>thanks for reporting this issue. Some pointers:=
</div><div>- As a workaround, you can install ruamel.yaml 0.17. I don&#39;t=
 know how you installed it before, but you can do `pip install &quot;ruamel=
.yaml&lt;0.18.0&quot;` if you used pip before.</div><div>- I need to double=
-check this, but I think UHD 4.7 has a fix for this. If not, we will need t=
o fix this ASAP (note to myself)</div><div><br></div><div><br></div><div>Ca=
n you provide some info on your system (OS, distribution, etc.)? Many thank=
s,</div><div><br></div><div>Martin<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2024 at 11:05=
=E2=80=AFAM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" targ=
et=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><di=
v>I&#39;m trying to use the UHD 4.6 version with RFNoC to build an image fo=
r the x440 USRP device. I used UHD 4.0 for USRP E320 without a problem, but=
 now I have an issue with the YML files for the X440 image building.</div><=
div>I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the rfnoc=
modtool command).</div><div>I can build my block in software=C2=A0without i=
ssues but when I try to create the FPGA image with rfnoc_image_builder an e=
rror occurs:</div><div><br></div><blockquote style=3D"margin:0px 0px 0px 40=
px;border:medium;padding:0px"><div>&gt;&gt; <b>rfnoc_image_builder -y block=
_x440_rfnoc_image_core.yml -d x440 -t X4_400 --fpga-dir ~/rfnoc/uhd/fpga/</=
b></div><div><i>[WAR] Module jsonschema is not installed. Configuration fil=
es will not be validated against their schema.</i></div><div><i>[WAR] Skip =
schema validation (missing module jsonschema).</i></div><div><i>[INF] Using=
 FPGA directory /home/satmotion/rfnoc/uhd/fpga</i></div><div><i>[INF] Selec=
ted device x440</i></div><div><i>[INF] Using io_signatures.yml from /usr/lo=
cal/share/uhd/rfnoc/core.</i></div><div><i>Traceback (most recent call last=
):</i></div><div><i>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&qu=
ot;, line 240, in &lt;module&gt;</i></div><div><i>=C2=A0 =C2=A0 sys.exit(ma=
in())</i></div><div><i>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder=
&quot;, line 219, in main</i></div><div><i>=C2=A0 =C2=A0 image_builder.buil=
d_image(</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/site-p=
ackages/uhd/imgbuilder/image_builder.py&quot;, line 1112, in build_image</i=
></div><div><i>=C2=A0 =C2=A0 signatures_conf =3D io_signatures(core_config_=
path)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/site-pack=
ages/uhd/imgbuilder/image_builder.py&quot;, line 666, in io_signatures</i><=
/div><div><i>=C2=A0 =C2=A0 return load_config(os.path.join(config_path, &qu=
ot;io_signatures.yml&quot;))</i></div><div><i>=C2=A0 File &quot;/usr/local/=
lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 640=
, in load_config</i></div><div><i>=C2=A0 =C2=A0 config =3D ordered_load(str=
eam)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/site-packa=
ges/uhd/imgbuilder/image_builder.py&quot;, line 115, in ordered_load</i></d=
iv><div><i>=C2=A0 =C2=A0 return yaml.load(stream, OrderedLoader)</i></div><=
div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/dist-packages/ruamel/yaml=
/main.py&quot;, line 1085, in load</i></div><div><i>=C2=A0 =C2=A0 error_dep=
recation(&#39;load&#39;, &#39;load&#39;, arg=3D_error_dep_arg, comment=3D_e=
rror_dep_comment)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3=
.8/dist-packages/ruamel/yaml/main.py&quot;, line 1037, in error_deprecation=
</i></div><div><i>=C2=A0 =C2=A0 raise AttributeError(s)</i></div><div><i>At=
tributeError: </i></div><div><i>&quot;load()&quot; has been removed, use</i=
></div></blockquote><div><i><br>=C2=A0 yaml =3D YAML(typ=3D&#39;rt&#39;)<br=
>=C2=A0 yaml.load(...)<br><br>and register any classes that you use, or che=
ck the tag attribute on the loaded data,<br>instead of file &quot;/usr/loca=
l/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 1=
15<br><br>=C2=A0 =C2=A0 return yaml.load(stream, OrderedLoader)</i><br></di=
v><div><br></div><div>Do you know how I can solve this problem?</div><div><=
br></div><div>Kind, Regards,</div><div><br></div><div>Maria</div></div>
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

--0000000000003fc861061d8240ad--

--===============2733855609579231274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2733855609579231274==--
