Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6E2933C06
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 13:14:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BA173857E0
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 07:14:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721214885; bh=JEDLxADNRBu0ri9fqR3f67duFFghr3OD/JeOjHT7Q/E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jQCjbmFaBFLw75Cae88FvDpRRSIufw0ZxhwYdTlK8GOZHK68fPs49TS9NbKLkO9nF
	 RYbqTtHeZblay/EfoybBH6QDSs7M14g4G3TDUExVLNx8xsAGLBHTpVQYMoNHm8Ww+5
	 3ttLNzR1mbthWnX2HGA6fUYW+CFfB1TKPUbcXk8iqgcSuj6KR3pjgAzUJ0L078MQVO
	 ACT+5cofDMGnZTnKq92SYsPFBfS98F7hy4VMqZDImF0IBLkcqBvxc+bOeYXHGcy4ul
	 tfVl/KtyqNJ064h/UQ74Sz2WfKxqzfoT1J+Ff88hw2Vc38riV1fbD4APURbR1Y8W1X
	 Wqm8aBRdg74FQ==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FC3B383894
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 07:13:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="fcsL4VPW";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a77d85f7fa3so125192066b.0
        for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 04:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721214826; x=1721819626; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9aWPkFF3zPE4mrWxw8s4E65XEsaaP0pk3FyBdJWAtQU=;
        b=fcsL4VPWKmnIEkF6RctHXtikXMMjwAj+OS6Aaf8zGDDIr1dd8geT/rqlZR5qFRzfl8
         2R+ya6N29rqSQ5a/VUU3Xz6IxBE5Ewuzbysx4XORJiNzZ0OxvvM014q846xMpUaH8vUC
         QHndt4H+XeCrgn5LXFknXe/TKzmnrCGcgw/UNeRR7oigJkjJF2Nlb/Y7tEJOnbCU8ALn
         mzSKMKn3xLyuSerkrbYqymaYEFagyOKXZK0uv/YPakHCBCuVlwkmxG27ZUuQnJMf+qE9
         ZkjdZbBFyu4EyZr/dM1lCaxK9D1dNFaknL2Il+uHZkih/509FqX5hiMnZxvHdXy3qTJW
         R1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721214826; x=1721819626;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9aWPkFF3zPE4mrWxw8s4E65XEsaaP0pk3FyBdJWAtQU=;
        b=bPzXA4uNF9pFjS3Hs9f0RbjW2YrIZuZE5/TbQ75wcMPUPGBCXPwMCWFrWVCpvnNYbG
         z+YaR7Zcsx5ZhWD8mR9C/QuW3WElt4rYubPTN3Uk+ubk4f9m6gqDjCSheYh4jQ8E+u48
         mj8DxklrdQQHHupnsJkDifbDmRif4+2e8LoCH11lGBwf9MYvDEnpkc68cL+FFJ2FZaC3
         +pBzd81gsv4Lm6LqefdLn8kn+uhJWmlB1UT99/ESpxu7D+MdeXXAIaMc9UdUJESs8WKO
         Zvt2hDkIuBRsPiRP4YC/o/XL24WmdNxcij2oKqJjKHZ7ceD6JWx/lGMcNBBRR+O7TFBM
         2FCA==
X-Gm-Message-State: AOJu0YyiFDSL/wVC0VgMdECjKgVQ8l+ZTTmNk2CA9ALdH4PSFbS2AHFS
	WMHtyoT+vjAFRA+BamW3cccWAuLJHZtT6MtfaBh/kTi3VFipsK2tAxw8vWhNrpmoYsIA/vHoPp/
	GmqFiastP3lV3berFzADGOdind1WfDTqJXYRwQJLgo2uxJaqEsvkaiw==
X-Google-Smtp-Source: AGHT+IF+okYTlG4jV0W6Ac2gnu18gq97K48o5HTM/Qn2gFs7IiyvmKMbIwyfB2dBIsgqLW6DnhJMSoHCil+kU61s08Y=
X-Received: by 2002:a17:906:388a:b0:a77:cdae:6a59 with SMTP id
 a640c23a62f3a-a79edbfd519mr444388666b.21.1721214825760; Wed, 17 Jul 2024
 04:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
 <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
 <CAFOi1A7NgiuDpqnAhT=vWOEGs-oqmSL0pP7d9mCwuA=js1iPSQ@mail.gmail.com> <CAG16vQUGwmcj5w17Xx9y=WYBRS9qVZOMxsacuq60q0GYP2ELCw@mail.gmail.com>
In-Reply-To: <CAG16vQUGwmcj5w17Xx9y=WYBRS9qVZOMxsacuq60q0GYP2ELCw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 17 Jul 2024 13:13:34 +0200
Message-ID: <CAFOi1A4mOcwzMmOX-r_WbHibH5wVN8TeKCu6JEE=WDFLNQ0gEQ@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: RNEKLDCYTWSZNAH4F7MTEA4SHS5CG5V4
X-Message-ID-Hash: RNEKLDCYTWSZNAH4F7MTEA4SHS5CG5V4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RNEKLDCYTWSZNAH4F7MTEA4SHS5CG5V4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6774513251713580993=="

--===============6774513251713580993==
Content-Type: multipart/alternative; boundary="00000000000045aeab061d6f8ed0"

--00000000000045aeab061d6f8ed0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In that case you can just do

apt install python3-ruamel.yaml

and make sure you have no other version installed.

--M

On Wed, Jul 17, 2024 at 12:22=E2=80=AFPM Maria Mu=C3=B1oz <mamuki92@gmail.c=
om> wrote:

> Hi Martin,
> .
> Thanks for your answer. I will do the workaround.
> By the way, I'm using Ubuntu 20.04.
>
> Kind Regards,
>
> El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (<martin.braun@ettus.c=
om>)
> escribi=C3=B3:
>
>> Quick addendum: If you do update to 4.7, you will need to update some
>> image core files, because we changed stuff for X410 and X440. Best to go
>> back to the YAML files we provide in-tree and add your OOT blocks to tho=
se.
>>
>> --M
>>
>> On Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun <martin.braun@ettu=
s.com>
>> wrote:
>>
>>> Hey Maria,
>>>
>>> thanks for reporting this issue. Some pointers:
>>> - As a workaround, you can install ruamel.yaml 0.17. I don't know how
>>> you installed it before, but you can do `pip install "ruamel.yaml<0.18.=
0"`
>>> if you used pip before.
>>> - I need to double-check this, but I think UHD 4.7 has a fix for this.
>>> If not, we will need to fix this ASAP (note to myself)
>>>
>>>
>>> Can you provide some info on your system (OS, distribution, etc.)? Many
>>> thanks,
>>>
>>> Martin
>>>
>>> On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92@gma=
il.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> I'm trying to use the UHD 4.6 version with RFNoC to build an image for
>>>> the x440 USRP device. I used UHD 4.0 for USRP E320 without a problem, =
but
>>>> now I have an issue with the YML files for the X440 image building.
>>>> I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
>>>> rfnocmodtool command).
>>>> I can build my block in software without issues but when I try to
>>>> create the FPGA image with rfnoc_image_builder an error occurs:
>>>>
>>>> >> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t
>>>> X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
>>>> *[WAR] Module jsonschema is not installed. Configuration files will no=
t
>>>> be validated against their schema.*
>>>> *[WAR] Skip schema validation (missing module jsonschema).*
>>>> *[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
>>>> *[INF] Selected device x440*
>>>> *[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*
>>>> *Traceback (most recent call last):*
>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*
>>>> *    sys.exit(main())*
>>>> *  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
>>>> *    image_builder.build_image(*
>>>> *  File
>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.p=
y",
>>>> line 1112, in build_image*
>>>> *    signatures_conf =3D io_signatures(core_config_path)*
>>>> *  File
>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.p=
y",
>>>> line 666, in io_signatures*
>>>> *    return load_config(os.path.join(config_path, "io_signatures.yml")=
)*
>>>> *  File
>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.p=
y",
>>>> line 640, in load_config*
>>>> *    config =3D ordered_load(stream)*
>>>> *  File
>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.p=
y",
>>>> line 115, in ordered_load*
>>>> *    return yaml.load(stream, OrderedLoader)*
>>>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>>>> line 1085, in load*
>>>> *    error_deprecation('load', 'load', arg=3D_error_dep_arg,
>>>> comment=3D_error_dep_comment)*
>>>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>>>> line 1037, in error_deprecation*
>>>> *    raise AttributeError(s)*
>>>> *AttributeError: *
>>>> *"load()" has been removed, use*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> *  yaml =3D YAML(typ=3D'rt')  yaml.load(...)and register any classes t=
hat
>>>> you use, or check the tag attribute on the loaded data,instead of file
>>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.p=
y",
>>>> line 115    return yaml.load(stream, OrderedLoader)*
>>>>
>>>> Do you know how I can solve this problem?
>>>>
>>>> Kind, Regards,
>>>>
>>>> Maria
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--00000000000045aeab061d6f8ed0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In that case you can just do</div><div><br></div><div=
>apt install python3-ruamel.yaml</div><div><br></div><div>and make sure you=
 have no other version installed.</div><div><br></div><div>--M<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Jul 17, 2024 at 12:22=E2=80=AFPM Maria Mu=C3=B1oz &lt;<a href=3D"mailt=
o:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Martin,<di=
v>.</div><div>Thanks for your answer. I will do the workaround.=C2=A0</div>=
<div>By the way, I&#39;m using Ubuntu 20.04.</div><div><br></div><div>Kind =
Regards,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (&lt;<a =
href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus=
.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>Quick addendum: If you do update to 4.7,=
 you will need to update some image core files, because we changed stuff fo=
r X410 and X440. Best to go back to the YAML files we provide in-tree and a=
dd your OOT blocks to those.</div><div><br></div><div>--M<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.=
braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hey Maria,</div><div><br></div><div>thanks for reporting this issue. So=
me pointers:</div><div>- As a workaround, you can install ruamel.yaml 0.17.=
 I don&#39;t know how you installed it before, but you can do `pip install =
&quot;ruamel.yaml&lt;0.18.0&quot;` if you used pip before.</div><div>- I ne=
ed to double-check this, but I think UHD 4.7 has a fix for this. If not, we=
 will need to fix this ASAP (note to myself)</div><div><br></div><div><br><=
/div><div>Can you provide some info on your system (OS, distribution, etc.)=
? Many thanks,</div><div><br></div><div>Martin<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 202=
4 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail=
.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br>=
</div><div>I&#39;m trying to use the UHD 4.6 version with RFNoC to build an=
 image for the x440 USRP device. I used UHD 4.0 for USRP E320 without a pro=
blem, but now I have an issue with the YML files for the X440 image buildin=
g.</div><div>I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have =
the rfnocmodtool command).</div><div>I can build my block in software=C2=A0=
without issues but when I try to create the FPGA image with rfnoc_image_bui=
lder an error occurs:</div><div><br></div><blockquote style=3D"margin:0px 0=
px 0px 40px;border:medium;padding:0px"><div>&gt;&gt; <b>rfnoc_image_builder=
 -y block_x440_rfnoc_image_core.yml -d x440 -t X4_400 --fpga-dir ~/rfnoc/uh=
d/fpga/</b></div><div><i>[WAR] Module jsonschema is not installed. Configur=
ation files will not be validated against their schema.</i></div><div><i>[W=
AR] Skip schema validation (missing module jsonschema).</i></div><div><i>[I=
NF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga</i></div><div><i>[I=
NF] Selected device x440</i></div><div><i>[INF] Using io_signatures.yml fro=
m /usr/local/share/uhd/rfnoc/core.</i></div><div><i>Traceback (most recent =
call last):</i></div><div><i>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_b=
uilder&quot;, line 240, in &lt;module&gt;</i></div><div><i>=C2=A0 =C2=A0 sy=
s.exit(main())</i></div><div><i>=C2=A0 File &quot;/usr/local/bin/rfnoc_imag=
e_builder&quot;, line 219, in main</i></div><div><i>=C2=A0 =C2=A0 image_bui=
lder.build_image(</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3=
.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 1112, in build=
_image</i></div><div><i>=C2=A0 =C2=A0 signatures_conf =3D io_signatures(cor=
e_config_path)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/=
site-packages/uhd/imgbuilder/image_builder.py&quot;, line 666, in io_signat=
ures</i></div><div><i>=C2=A0 =C2=A0 return load_config(os.path.join(config_=
path, &quot;io_signatures.yml&quot;))</i></div><div><i>=C2=A0 File &quot;/u=
sr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;,=
 line 640, in load_config</i></div><div><i>=C2=A0 =C2=A0 config =3D ordered=
_load(stream)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/s=
ite-packages/uhd/imgbuilder/image_builder.py&quot;, line 115, in ordered_lo=
ad</i></div><div><i>=C2=A0 =C2=A0 return yaml.load(stream, OrderedLoader)</=
i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/dist-packages/ru=
amel/yaml/main.py&quot;, line 1085, in load</i></div><div><i>=C2=A0 =C2=A0 =
error_deprecation(&#39;load&#39;, &#39;load&#39;, arg=3D_error_dep_arg, com=
ment=3D_error_dep_comment)</i></div><div><i>=C2=A0 File &quot;/usr/local/li=
b/python3.8/dist-packages/ruamel/yaml/main.py&quot;, line 1037, in error_de=
precation</i></div><div><i>=C2=A0 =C2=A0 raise AttributeError(s)</i></div><=
div><i>AttributeError: </i></div><div><i>&quot;load()&quot; has been remove=
d, use</i></div></blockquote><div><i><br>=C2=A0 yaml =3D YAML(typ=3D&#39;rt=
&#39;)<br>=C2=A0 yaml.load(...)<br><br>and register any classes that you us=
e, or check the tag attribute on the loaded data,<br>instead of file &quot;=
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot=
;, line 115<br><br>=C2=A0 =C2=A0 return yaml.load(stream, OrderedLoader)</i=
><br></div><div><br></div><div>Do you know how I can solve this problem?</d=
iv><div><br></div><div>Kind, Regards,</div><div><br></div><div>Maria</div><=
/div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000045aeab061d6f8ed0--

--===============6774513251713580993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6774513251713580993==--
