Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7687E98D2DB
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 14:14:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B42B3859C1
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 08:14:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727871246; bh=+WadFM4Yt+coleJ/rx6SXUSJTVyJ6l48o6bzjAsZsfk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=kqC/V9Urj3p9Eu1bwWjMs5uqrFMItGfogs4ifQzxGZP+2J8Di+FKwLoRy2l1q1dbN
	 J7hINUAaZYCHPQ/9NqCDpoXwwhQemsc7RjsTvnDLHgjJ84HItQhZJNqNGgHLDZNvs6
	 sQsK6RvfuG8orW0Mon4NZ6pSct0YBDbJLYpeLsUBNcP/7o862/MqQsaUfaUDdOvHHK
	 r8KeTrIKD57zf1O4S53A2zGWG3YUrdJWp3CEVFmLHCXx7DbQHGNaiaJOL+1CcFCIaU
	 UZ85xa1mTnKaVxx8kDrThHCYGTi7KZmWpALMdcf0TqjR338vUzWT0RisFYnk7DuZBG
	 dAGxr4+EsHG8Q==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 78FCD3858FB
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 08:13:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="KqGcHq5/";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c8952f7f95so4104035a12.0
        for <usrp-users@lists.ettus.com>; Wed, 02 Oct 2024 05:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1727871188; x=1728475988; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rAjz4GnExhP316ztJ/gVUvpJ9zsrGujPesJ2cta3nOM=;
        b=KqGcHq5/86WKd0T8FsWqDsTRyBfpeQsqztUT6pzyiB/vVBg7XGpIy80qugGJ/OTgUx
         /Q0VpzyL3RHuTYqQo+V6RcTwLU+iN5rN21MI2//VLqVc3hdvlInPIjENGXopN+AxIfzt
         hzEN7X6+0Xc/gauvCFYjd7LtBno14PrHtMqhYqLCEZuOM70Pa71ctBsDhoy0n9053rIL
         ETZTvNQca7KKNkio9u16lKsN9b3M2XDeugYgVu67WCbhvhlX/1GEFD8cGcFM0432gDTO
         /brWjSyt3ZLLsk6INX2pScjQP5yhR+C5976DQCrtt+UkvNJsjLzg1OvBrrjwnQKf7gP8
         E88Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727871188; x=1728475988;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rAjz4GnExhP316ztJ/gVUvpJ9zsrGujPesJ2cta3nOM=;
        b=Mk+CIfJ0D9o1GXVGt6GfMjMR6x8X4ugFB+PEHpuHo8w5MPRvz4Can08ZbcJusEu5rd
         no08ffAEAjZeNjoUArTKmWRk1SFm25m7blLLDKGvoh0r8aU3vm2L1F+8q3X8bA3Oej/h
         45Ncc0SqknpRhPG0dw0xBo3cbgyupTpwlL7stry5UqXpnpsalpRMB9VGGhUXUA3IxLBO
         9ATuWE65CyI7OTFAIV+KnTHPvqZtFkaO/eH4jzpNzQx6eD+1vCwjwifLQYJ9XBoO3oMb
         26FIh9nev9wQxMuSpg3nUnmAwHQGDxwIcWUK3y2YwBJV4JC29fH8pI0qNju836SSiu6k
         IDxg==
X-Gm-Message-State: AOJu0YwCw4YBs3lolWNbT+yKmbYXVCEcO+JhZhjQueSBzDjF3DF39A2a
	ziu3A2bnWBPo082U2dUXKIw0KTH1cfX35T1XvaSfNqJC1knRB1UqtNbxGTMUYUe7xyPEl1O1DZA
	NzHK9f5cMdZKfaPTZQfDKBoWIXchVXy3Qb4tE4CJn20HGcT3lfDA=
X-Google-Smtp-Source: AGHT+IEwxJWB5mt8oLmcaL6TGxJMU+YqbF6qwSaGd2SB7atJ1zpLx8+6f9PDHvZqyOE6Ks8fU619rAjqeliTJpIWLMU=
X-Received: by 2002:a05:6402:3490:b0:5c4:2343:1227 with SMTP id
 4fb4d7f45d1cf-5c8b18e892dmr2467896a12.5.1727871188209; Wed, 02 Oct 2024
 05:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOHuk9AmFZDSQoOL+N8590XaPwfV3V7mN+BwhwbFpPHX4pu5PQ@mail.gmail.com>
In-Reply-To: <CAOHuk9AmFZDSQoOL+N8590XaPwfV3V7mN+BwhwbFpPHX4pu5PQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 2 Oct 2024 14:12:56 +0200
Message-ID: <CAFOi1A7hAzeo2TmmS=mVWtKiXtJDoQ8Mh-uqL+F+SLfaDOKKDw@mail.gmail.com>
To: Ryan Marlow <ryan@lmarlow.com>
Message-ID-Hash: BWRFLFXXX5VKO7U64VT53JCJ5VC6V3F6
X-Message-ID-Hash: BWRFLFXXX5VKO7U64VT53JCJ5VC6V3F6
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder on UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BWRFLFXXX5VKO7U64VT53JCJ5VC6V3F6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6257394067790814913=="

--===============6257394067790814913==
Content-Type: multipart/alternative; boundary="000000000000642fff06237d5ce1"

--000000000000642fff06237d5ce1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Ryan,

Chris' solution will get you running. If you're feeling adventurous, we've
actually done a lot of work on rfnoc_image_builder since the release, so
the master branch version of UHD has a fix for this issue (no need to
downgrade ruamel.yaml), but of course it requires building UHD from source
which I only recommend to advanced users who know how to do this by
themselves (you're probably one of them).

--M

On Tue, Oct 1, 2024 at 7:16=E2=80=AFPM Ryan Marlow <ryan@lmarlow.com> wrote=
:

> Hi All, It's been some time since I've tried to build anything rfnoc
> related. I am trying to build an image for X310 using the latest UHD 4.7 =
on
> Ubuntu 22.04.
> I think I installed the necessary prerequisites including ruamel.yaml.
>
>> pip3 show ruamel.yaml
>> Name: ruamel.yaml
>> Version: 0.18.6
>> Summary: ruamel.yaml is a YAML parser/emitter that supports roundtrip
>> preservation of comments, seq/map flow style, and map key order
>> Home-page:
>> Author: Anthon van der Neut
>> Author-email: a.van.der.neut@ruamel.eu
>> License: MIT license
>> Location: /home/rynmrlw/.local/lib/python3.10/site-packages
>> Requires: ruamel.yaml.clib
>>
> When I run rfnoc_image_builder I see the following error:
>
>> rfnoc_image_builder -y x310_XG_rfnoc_image_core.yml --target X310_XG
>> --vivado-path /disk3/Xilinx/Vivado/2021.1 --image_core_name
>> x310_XG_rfnoc_image_core
>> Using FPGA directory /home/rynmrlw/Documents/PRA/uhd/fpga
>> Selected device: x310
>> Build artifacts directory already exists (contents will be overwritten).
>> Traceback (most recent call last):
>>   File "/usr/bin/rfnoc_image_builder", line 348, in <module>
>>     sys.exit(main())
>>   File "/usr/bin/rfnoc_image_builder", line 311, in main
>>     return image_builder.build_image(
>>   File
>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", lin=
e
>> 391, in build_image
>>     known_modules =3D load_module_yamls(config_path,
>> args.get('include_paths', []))
>>   File
>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", lin=
e
>> 324, in load_module_yamls
>>     known_modules =3D {
>>   File
>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", lin=
e
>> 325, in <dictcomp>
>>     module_type: load_module_descs(module_type)
>>   File
>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", lin=
e
>> 322, in load_module_descs
>>     return yaml_utils.read_yaml_definitions(*paths)
>>   File "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py",
>> line 340, in read_yaml_definitions
>>     data =3D ordered_load(stream)
>>   File "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py",
>> line 230, in ordered_load
>>     return yaml.load(stream, OrderedLoader)
>>   File
>> "/home/rynmrlw/.local/lib/python3.10/site-packages/ruamel/yaml/main.py",
>> line 1085, in load
>>     error_deprecation('load', 'load', arg=3D_error_dep_arg,
>> comment=3D_error_dep_comment)
>>   File
>> "/home/rynmrlw/.local/lib/python3.10/site-packages/ruamel/yaml/main.py",
>> line 1039, in error_deprecation
>>     raise AttributeError(s, name=3DNone)
>> AttributeError:
>> "load()" has been removed, use
>>
>>   yaml =3D YAML(typ=3D'rt')
>>   yaml.load(...)
>>
>> and register any classes that you use, or check the tag attribute on the
>> loaded data,
>> instead of file
>> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py", line 2=
30
>>
>>     return yaml.load(stream, OrderedLoader)
>>
> Is this a known error with a specific version of ruamel.yaml? Is there a
> specific version I should use?
> Interestingly, the manual for version 4.7 does not make any mention of
> ruamel.yaml as a prerequisite.
> https://files.ettus.com/manual/md_usrp3_build_instructions.html
>
> Thanks for your input,
> Ryan Marlow
> --
> Ryan L. Marlow
> R L Marlow Consulting LLC
> rlmarlow.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000642fff06237d5ce1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Ryan,</div><div><br></div><div>Chris&#39; solutio=
n will get you running. If you&#39;re feeling adventurous, we&#39;ve actual=
ly done a lot of work on rfnoc_image_builder since the release, so the mast=
er branch version of UHD has a fix for this issue (no need to downgrade rua=
mel.yaml), but of course it requires building UHD from source which I only =
recommend to advanced users who know how to do this by themselves (you&#39;=
re probably one of them).</div><div><br></div><div>--M<br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct=
 1, 2024 at 7:16=E2=80=AFPM Ryan Marlow &lt;<a href=3D"mailto:ryan@lmarlow.=
com">ryan@lmarlow.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div><div>Hi All, It&#39;s been some =
time since I&#39;ve tried to build anything rfnoc related. I am trying to b=
uild an image for X310 using the latest UHD 4.7 on Ubuntu 22.04. <br></div>=
I think I installed the necessary prerequisites including ruamel.yaml.<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">pip3 show ruamel.yaml<br>N=
ame: ruamel.yaml<br>Version: 0.18.6<br>Summary: ruamel.yaml is a YAML parse=
r/emitter that supports roundtrip preservation of comments, seq/map flow st=
yle, and map key order<br>Home-page: <br>Author: Anthon van der Neut<br>Aut=
hor-email: <a href=3D"mailto:a.van.der.neut@ruamel.eu" target=3D"_blank">a.=
van.der.neut@ruamel.eu</a><br>License: MIT license<br>Location: /home/rynmr=
lw/.local/lib/python3.10/site-packages<br>Requires: ruamel.yaml.clib<br></b=
lockquote></div>When I run rfnoc_image_builder I see the following error:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">rfnoc_image_builder -y =
x310_XG_rfnoc_image_core.yml --target X310_XG --vivado-path /disk3/Xilinx/V=
ivado/2021.1 --image_core_name x310_XG_rfnoc_image_core<br>Using FPGA direc=
tory /home/rynmrlw/Documents/PRA/uhd/fpga<br>Selected device: x310<br>Build=
 artifacts directory already exists (contents will be overwritten).<br>Trac=
eback (most recent call last):<br>=C2=A0 File &quot;/usr/bin/rfnoc_image_bu=
ilder&quot;, line 348, in &lt;module&gt;<br>=C2=A0 =C2=A0 sys.exit(main())<=
br>=C2=A0 File &quot;/usr/bin/rfnoc_image_builder&quot;, line 311, in main<=
br>=C2=A0 =C2=A0 return image_builder.build_image(<br>=C2=A0 File &quot;/us=
r/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py&quot;, line =
391, in build_image<br>=C2=A0 =C2=A0 known_modules =3D load_module_yamls(co=
nfig_path, args.get(&#39;include_paths&#39;, []))<br>=C2=A0 File &quot;/usr=
/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 3=
24, in load_module_yamls<br>=C2=A0 =C2=A0 known_modules =3D {<br>=C2=A0 Fil=
e &quot;/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py&q=
uot;, line 325, in &lt;dictcomp&gt;<br>=C2=A0 =C2=A0 module_type: load_modu=
le_descs(module_type)<br>=C2=A0 File &quot;/usr/lib/python3.10/site-package=
s/uhd/imgbuilder/image_builder.py&quot;, line 322, in load_module_descs<br>=
=C2=A0 =C2=A0 return yaml_utils.read_yaml_definitions(*paths)<br>=C2=A0 Fil=
e &quot;/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py&quot=
;, line 340, in read_yaml_definitions<br>=C2=A0 =C2=A0 data =3D ordered_loa=
d(stream)<br>=C2=A0 File &quot;/usr/lib/python3.10/site-packages/uhd/imgbui=
lder/yaml_utils.py&quot;, line 230, in ordered_load<br>=C2=A0 =C2=A0 return=
 yaml.load(stream, OrderedLoader)<br>=C2=A0 File &quot;/home/rynmrlw/.local=
/lib/python3.10/site-packages/ruamel/yaml/main.py&quot;, line 1085, in load=
<br>=C2=A0 =C2=A0 error_deprecation(&#39;load&#39;, &#39;load&#39;, arg=3D_=
error_dep_arg, comment=3D_error_dep_comment)<br>=C2=A0 File &quot;/home/ryn=
mrlw/.local/lib/python3.10/site-packages/ruamel/yaml/main.py&quot;, line 10=
39, in error_deprecation<br>=C2=A0 =C2=A0 raise AttributeError(s, name=3DNo=
ne)<br>AttributeError: <br>&quot;load()&quot; has been removed, use<br><br>=
=C2=A0 yaml =3D YAML(typ=3D&#39;rt&#39;)<br>=C2=A0 yaml.load(...)<br><br>an=
d register any classes that you use, or check the tag attribute on the load=
ed data,<br>instead of file &quot;/usr/lib/python3.10/site-packages/uhd/img=
builder/yaml_utils.py&quot;, line 230<br><br>=C2=A0 =C2=A0 return yaml.load=
(stream, OrderedLoader)<br></blockquote><div><div><div>Is this a known erro=
r with a specific version of ruamel.yaml? Is there a specific version I sho=
uld use?<br></div><div>Interestingly, the manual for version 4.7 does not m=
ake any mention of ruamel.yaml as a prerequisite. <a href=3D"https://files.=
ettus.com/manual/md_usrp3_build_instructions.html" target=3D"_blank">https:=
//files.ettus.com/manual/md_usrp3_build_instructions.html</a><br><br></div>=
<div>Thanks for your input,</div><div>Ryan Marlow<br></div><div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Ryan L. Marlow</div><div>R L Marlow Consult=
ing LLC</div><div><a href=3D"http://rlmarlow.com" target=3D"_blank">rlmarlo=
w.com</a><br></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000642fff06237d5ce1--

--===============6257394067790814913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6257394067790814913==--
