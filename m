Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A629398E2C6
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 20:45:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36BE83859A3
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 14:45:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727894733; bh=VegAv3uei7UsYyTy03c05pCdkfUcRzyMNt0LZw7au1A=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FwwCpcevuwPS5xHNQheRbq8Qo6d3zn+DqC6zFIOmkIS1sZ435qdVvA/XNt8wYNLH5
	 YIXXeipTXqdlY+RE1EPiuOsjEtr4nc18BIrjNYLEMRZYh44XVtyhiz4GpWLOXHe/Pr
	 +791EhWOD5wiSk4XBMiPHPANKgy5+YB6VM6IlPb8KpieYiJsD08nJ0YFq5+TK5t0l9
	 t1wSt7RjZwknydQWvMYNbaKd4U2qciXrzQUqP5W3IH+r4gNojoJXVXmegDgSiH/mW0
	 luwPdOry5NPuR2eR22g5eZKGbuef0ebGJre+L5pViNHsit9nJLxUdLCs8w3RatIooU
	 6hf7CI2fTQW8g==
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id C5CFE385945
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 14:44:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=lmarlow-com.20230601.gappssmtp.com header.i=@lmarlow-com.20230601.gappssmtp.com header.b="BfBWKw8+";
	dkim-atps=neutral
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e25d380b464so124371276.2
        for <usrp-users@lists.ettus.com>; Wed, 02 Oct 2024 11:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lmarlow-com.20230601.gappssmtp.com; s=20230601; t=1727894673; x=1728499473; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HGQ915ib3FvcLDbf91Fsgxqx696ega2Zg5HQ0mOYX1A=;
        b=BfBWKw8+fupzFXOfxgnr5YwjHIpmkGfMqqlBqj97125ZxNJAbZny1y24BDRZWzDsMw
         phjfSsnQW1NHdYCe9E5IPt04xWhYsU/qYrUxknVed2UEUCOnnUo0rToXqtr5FU6RL13j
         aHQC5H4RVCet+qUdk3t6kf0zGKuk0h9Oh95VnXBX7lV8Y6HuOyJuA+be6kXcRDOoXXut
         38bAVxfjPpPBTJ156HAXEDAb9eeAHedrN7neOi6ZrJ7l7v8qdLBGr3wYHtpSLhWi/b+Z
         SbHAJTZKLvoftnYhxlXdmff7pGsWlIHpFhvJaoHZDBhF+VQODlPremfDktXYKmTDj587
         NooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727894673; x=1728499473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HGQ915ib3FvcLDbf91Fsgxqx696ega2Zg5HQ0mOYX1A=;
        b=kuR28sj8JHekT5Jb2pw4oK1Z3MkIIQmiC9rgNYfiaWEg9CdXAk0bE/l0mBElItid92
         8jZEn9oPlDdB8Bq5IqE4jvOirPtnd6qZgZ251PDJRt1ui5xqtCgzwMcT07xAxxZfr5Qq
         AbUMWLOjG6idY8Rx+um4YCWbJw8YMa1Ud0FvlW+yGDLl6n9LvlK6qMPt0A7dzbSH6NVR
         RvDXmUwuNlceEDD8XZsJf/uQxU4JjHBXinNie9x09/IBgVfMi5i64jGUfupvHXq7W7kT
         0sY2DRzRDStmKgXviGfAUZ5qAowdxofXi/3j14dtTt00kUDZcVcq/QyuCxV8+uz9eyki
         T0Yg==
X-Gm-Message-State: AOJu0YwHr96HULpqEKWLHZ4Cs8PBMNHnOtxYp6kf5dMxND/yOeU4rtSR
	RY/u+XH+kffBh7IMUED7a3xluxPxato8lKmAIH52q7KFsOU7i5g/mFIjscgclLIkMOX+2qsDTDJ
	MF0zoQEwdt4J97XHOrSqoCmeSqP1ZCz7qGgjF
X-Google-Smtp-Source: AGHT+IE48AM76KRUZZs4pK3PaOlj6wLg9cx3UwXBx5X19cUP+Z4F9BKpJ3fhFO1FU7SnmEJDiTQdRM358E4MTR/hsik=
X-Received: by 2002:a05:6902:100b:b0:e22:5bd7:86b with SMTP id
 3f1490d57ef6-e263846aa50mr3709468276.37.1727894672974; Wed, 02 Oct 2024
 11:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAOHuk9AmFZDSQoOL+N8590XaPwfV3V7mN+BwhwbFpPHX4pu5PQ@mail.gmail.com>
 <CAFOi1A7hAzeo2TmmS=mVWtKiXtJDoQ8Mh-uqL+F+SLfaDOKKDw@mail.gmail.com>
In-Reply-To: <CAFOi1A7hAzeo2TmmS=mVWtKiXtJDoQ8Mh-uqL+F+SLfaDOKKDw@mail.gmail.com>
From: Ryan Marlow <ryan@lmarlow.com>
Date: Wed, 2 Oct 2024 14:44:22 -0400
Message-ID: <CAOHuk9AezuJ94kEnfws=L1cU2wpv4Q8Zy=2ioohS48p=brGB2Q@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: RNF7TT6DRVF7TGU32BLEVU7Q3JMUTZ5O
X-Message-ID-Hash: RNF7TT6DRVF7TGU32BLEVU7Q3JMUTZ5O
X-MailFrom: ryan@lmarlow.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder on UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RNF7TT6DRVF7TGU32BLEVU7Q3JMUTZ5O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5873435069464539713=="

--===============5873435069464539713==
Content-Type: multipart/alternative; boundary="000000000000313d9d062382d48b"

--000000000000313d9d062382d48b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Chris's suggestion worked great. thanks Martin and Chris!

Ryan

On Wed, Oct 2, 2024 at 8:13=E2=80=AFAM Martin Braun <martin.braun@ettus.com=
> wrote:

> Hey Ryan,
>
> Chris' solution will get you running. If you're feeling adventurous, we'v=
e
> actually done a lot of work on rfnoc_image_builder since the release, so
> the master branch version of UHD has a fix for this issue (no need to
> downgrade ruamel.yaml), but of course it requires building UHD from sourc=
e
> which I only recommend to advanced users who know how to do this by
> themselves (you're probably one of them).
>
> --M
>
> On Tue, Oct 1, 2024 at 7:16=E2=80=AFPM Ryan Marlow <ryan@lmarlow.com> wro=
te:
>
>> Hi All, It's been some time since I've tried to build anything rfnoc
>> related. I am trying to build an image for X310 using the latest UHD 4.7=
 on
>> Ubuntu 22.04.
>> I think I installed the necessary prerequisites including ruamel.yaml.
>>
>>> pip3 show ruamel.yaml
>>> Name: ruamel.yaml
>>> Version: 0.18.6
>>> Summary: ruamel.yaml is a YAML parser/emitter that supports roundtrip
>>> preservation of comments, seq/map flow style, and map key order
>>> Home-page:
>>> Author: Anthon van der Neut
>>> Author-email: a.van.der.neut@ruamel.eu
>>> License: MIT license
>>> Location: /home/rynmrlw/.local/lib/python3.10/site-packages
>>> Requires: ruamel.yaml.clib
>>>
>> When I run rfnoc_image_builder I see the following error:
>>
>>> rfnoc_image_builder -y x310_XG_rfnoc_image_core.yml --target X310_XG
>>> --vivado-path /disk3/Xilinx/Vivado/2021.1 --image_core_name
>>> x310_XG_rfnoc_image_core
>>> Using FPGA directory /home/rynmrlw/Documents/PRA/uhd/fpga
>>> Selected device: x310
>>> Build artifacts directory already exists (contents will be overwritten)=
.
>>> Traceback (most recent call last):
>>>   File "/usr/bin/rfnoc_image_builder", line 348, in <module>
>>>     sys.exit(main())
>>>   File "/usr/bin/rfnoc_image_builder", line 311, in main
>>>     return image_builder.build_image(
>>>   File
>>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", li=
ne
>>> 391, in build_image
>>>     known_modules =3D load_module_yamls(config_path,
>>> args.get('include_paths', []))
>>>   File
>>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", li=
ne
>>> 324, in load_module_yamls
>>>     known_modules =3D {
>>>   File
>>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", li=
ne
>>> 325, in <dictcomp>
>>>     module_type: load_module_descs(module_type)
>>>   File
>>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", li=
ne
>>> 322, in load_module_descs
>>>     return yaml_utils.read_yaml_definitions(*paths)
>>>   File "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py"=
,
>>> line 340, in read_yaml_definitions
>>>     data =3D ordered_load(stream)
>>>   File "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py"=
,
>>> line 230, in ordered_load
>>>     return yaml.load(stream, OrderedLoader)
>>>   File
>>> "/home/rynmrlw/.local/lib/python3.10/site-packages/ruamel/yaml/main.py"=
,
>>> line 1085, in load
>>>     error_deprecation('load', 'load', arg=3D_error_dep_arg,
>>> comment=3D_error_dep_comment)
>>>   File
>>> "/home/rynmrlw/.local/lib/python3.10/site-packages/ruamel/yaml/main.py"=
,
>>> line 1039, in error_deprecation
>>>     raise AttributeError(s, name=3DNone)
>>> AttributeError:
>>> "load()" has been removed, use
>>>
>>>   yaml =3D YAML(typ=3D'rt')
>>>   yaml.load(...)
>>>
>>> and register any classes that you use, or check the tag attribute on th=
e
>>> loaded data,
>>> instead of file
>>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py", line =
230
>>>
>>>     return yaml.load(stream, OrderedLoader)
>>>
>> Is this a known error with a specific version of ruamel.yaml? Is there a
>> specific version I should use?
>> Interestingly, the manual for version 4.7 does not make any mention of
>> ruamel.yaml as a prerequisite.
>> https://files.ettus.com/manual/md_usrp3_build_instructions.html
>>
>> Thanks for your input,
>> Ryan Marlow
>> --
>> Ryan L. Marlow
>> R L Marlow Consulting LLC
>> rlmarlow.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--=20
Ryan L. Marlow
R L Marlow Consulting LLC
rlmarlow.com

--000000000000313d9d062382d48b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Chris&#39;s suggestion worked great. thanks Martin an=
d Chris!</div><div><br></div><div>Ryan<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 2, 2024 at 8:13=
=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">mart=
in.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Hey Ryan,</div><div><br></div><div>=
Chris&#39; solution will get you running. If you&#39;re feeling adventurous=
, we&#39;ve actually done a lot of work on rfnoc_image_builder since the re=
lease, so the master branch version of UHD has a fix for this issue (no nee=
d to downgrade ruamel.yaml), but of course it requires building UHD from so=
urce which I only recommend to advanced users who know how to do this by th=
emselves (you&#39;re probably one of them).</div><div><br></div><div>--M<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Oct 1, 2024 at 7:16=E2=80=AFPM Ryan Marlow &lt;<a href=3D"ma=
ilto:ryan@lmarlow.com" target=3D"_blank">ryan@lmarlow.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div><div>Hi All, It&#39;s been some time since I&#39;ve tried to build anyt=
hing rfnoc related. I am trying to build an image for X310 using the latest=
 UHD 4.7 on Ubuntu 22.04. <br></div>I think I installed the necessary prere=
quisites including ruamel.yaml.<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">pip3 show ruamel.yaml<br>Name: ruamel.yaml<br>Version: 0.18.6<br=
>Summary: ruamel.yaml is a YAML parser/emitter that supports roundtrip pres=
ervation of comments, seq/map flow style, and map key order<br>Home-page: <=
br>Author: Anthon van der Neut<br>Author-email: <a href=3D"mailto:a.van.der=
.neut@ruamel.eu" target=3D"_blank">a.van.der.neut@ruamel.eu</a><br>License:=
 MIT license<br>Location: /home/rynmrlw/.local/lib/python3.10/site-packages=
<br>Requires: ruamel.yaml.clib<br></blockquote></div>When I run rfnoc_image=
_builder I see the following error:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">rfnoc_image_builder -y x310_XG_rfnoc_image_core.yml --target =
X310_XG --vivado-path /disk3/Xilinx/Vivado/2021.1 --image_core_name x310_XG=
_rfnoc_image_core<br>Using FPGA directory /home/rynmrlw/Documents/PRA/uhd/f=
pga<br>Selected device: x310<br>Build artifacts directory already exists (c=
ontents will be overwritten).<br>Traceback (most recent call last):<br>=C2=
=A0 File &quot;/usr/bin/rfnoc_image_builder&quot;, line 348, in &lt;module&=
gt;<br>=C2=A0 =C2=A0 sys.exit(main())<br>=C2=A0 File &quot;/usr/bin/rfnoc_i=
mage_builder&quot;, line 311, in main<br>=C2=A0 =C2=A0 return image_builder=
.build_image(<br>=C2=A0 File &quot;/usr/lib/python3.10/site-packages/uhd/im=
gbuilder/image_builder.py&quot;, line 391, in build_image<br>=C2=A0 =C2=A0 =
known_modules =3D load_module_yamls(config_path, args.get(&#39;include_path=
s&#39;, []))<br>=C2=A0 File &quot;/usr/lib/python3.10/site-packages/uhd/img=
builder/image_builder.py&quot;, line 324, in load_module_yamls<br>=C2=A0 =
=C2=A0 known_modules =3D {<br>=C2=A0 File &quot;/usr/lib/python3.10/site-pa=
ckages/uhd/imgbuilder/image_builder.py&quot;, line 325, in &lt;dictcomp&gt;=
<br>=C2=A0 =C2=A0 module_type: load_module_descs(module_type)<br>=C2=A0 Fil=
e &quot;/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py&q=
uot;, line 322, in load_module_descs<br>=C2=A0 =C2=A0 return yaml_utils.rea=
d_yaml_definitions(*paths)<br>=C2=A0 File &quot;/usr/lib/python3.10/site-pa=
ckages/uhd/imgbuilder/yaml_utils.py&quot;, line 340, in read_yaml_definitio=
ns<br>=C2=A0 =C2=A0 data =3D ordered_load(stream)<br>=C2=A0 File &quot;/usr=
/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py&quot;, line 230,=
 in ordered_load<br>=C2=A0 =C2=A0 return yaml.load(stream, OrderedLoader)<b=
r>=C2=A0 File &quot;/home/rynmrlw/.local/lib/python3.10/site-packages/ruame=
l/yaml/main.py&quot;, line 1085, in load<br>=C2=A0 =C2=A0 error_deprecation=
(&#39;load&#39;, &#39;load&#39;, arg=3D_error_dep_arg, comment=3D_error_dep=
_comment)<br>=C2=A0 File &quot;/home/rynmrlw/.local/lib/python3.10/site-pac=
kages/ruamel/yaml/main.py&quot;, line 1039, in error_deprecation<br>=C2=A0 =
=C2=A0 raise AttributeError(s, name=3DNone)<br>AttributeError: <br>&quot;lo=
ad()&quot; has been removed, use<br><br>=C2=A0 yaml =3D YAML(typ=3D&#39;rt&=
#39;)<br>=C2=A0 yaml.load(...)<br><br>and register any classes that you use=
, or check the tag attribute on the loaded data,<br>instead of file &quot;/=
usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py&quot;, line 2=
30<br><br>=C2=A0 =C2=A0 return yaml.load(stream, OrderedLoader)<br></blockq=
uote><div><div><div>Is this a known error with a specific version of ruamel=
.yaml? Is there a specific version I should use?<br></div><div>Interestingl=
y, the manual for version 4.7 does not make any mention of ruamel.yaml as a=
 prerequisite. <a href=3D"https://files.ettus.com/manual/md_usrp3_build_ins=
tructions.html" target=3D"_blank">https://files.ettus.com/manual/md_usrp3_b=
uild_instructions.html</a><br><br></div><div>Thanks for your input,</div><d=
iv>Ryan Marlow<br></div><div><span class=3D"gmail_signature_prefix">-- </sp=
an><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div>Rya=
n L. Marlow</div><div>R L Marlow Consulting LLC</div><div><a href=3D"http:/=
/rlmarlow.com" target=3D"_blank">rlmarlow.com</a><br></div></div></div></di=
v></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div>Ryan L. Marlow</div><div>R L Marlow Consulting LLC</div><div><a hr=
ef=3D"http://rlmarlow.com" target=3D"_blank">rlmarlow.com</a><br></div></di=
v></div>

--000000000000313d9d062382d48b--

--===============5873435069464539713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5873435069464539713==--
