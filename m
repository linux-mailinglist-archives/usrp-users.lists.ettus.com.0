Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B0298C449
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 19:16:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A66F381404
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 13:16:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727802985; bh=qJYPBhqs+eLHTHK53OXmnzKf9h09i7TSAxtzd6RJ2p8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yuLlZUe2rHXpsw1fFLn0Y/lc6hzFBZGmmfkogebWp3SvGqOWjbPSZkX2Vq/nDKQFD
	 oAhkRIajJ5OnjCHbUigJilkVDVKsNnrQGROFkF/9vj8VOcz/2PKJ64PFfzYOHu+LSA
	 LeHVoDdc+RjHhRqWuOKPIu1EFBynIwVGxoYSm4sShCgbGv1WJ53qCfYBr3D5p2SXZC
	 yaoTzGq/MONUiWpDKUMAezYOcpXgChBhuqw2F45c7yeYFoYLcIwqBFSZ7Z6+bWqnLh
	 +JrSB8+g6rxHQI6WzGZpnYpkWFDcn7KNaOzbczvtGQ14dKof3a4pFZFJ1hfmklNsVS
	 T2+rUyCsm2u5g==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 78159380B09
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 13:15:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=lmarlow-com.20230601.gappssmtp.com header.i=@lmarlow-com.20230601.gappssmtp.com header.b="icIMgjti";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6c5ab2de184so40307686d6.0
        for <usrp-users@lists.ettus.com>; Tue, 01 Oct 2024 10:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lmarlow-com.20230601.gappssmtp.com; s=20230601; t=1727802925; x=1728407725; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jlEI3LivKLDoUDSaB7ScsX3Y1lUou7nSZP1YorhL5es=;
        b=icIMgjtiHJcZlm1W5bralr4aFbYJXZv1JLf2D/amT9PpXgcRDGXlHVIDm5mLKDxNYu
         vf7AyRxv+yEkaCa9R7XFE+JEquq1hZCKXfmc1Q0eg4G2EZHmhNQprIOeiC+S8lSag1hJ
         H9NnX/Grt+y7VyIdFVb3dPhzIg8m7bFI8Y5/1o8JsgsczlNF9z70ApsPQg9XsOwCBrbE
         iifAxwBjcQDSDFWlxMd6ZTR2LCTYKqPLYVd7LYXaPEImscu/9jZPj/V4rdOlrgUuzbl1
         8OtIBfBko035nSyOiWQ2LyGkFqt9qIa3tYTIes5OSCX1KT6un+Us98wz/Qh4yPXnwJiV
         HbCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727802925; x=1728407725;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jlEI3LivKLDoUDSaB7ScsX3Y1lUou7nSZP1YorhL5es=;
        b=MJaubc80tUaBzl2CWLFw+thykCTsKImLcoQHv4froP08B41PBOwa7RvNK6jlbeQTNA
         1epgDLqxSLoIqUyc31USDDGMAlpXBxYLGIRBcsPhOTS3xcb//O0BO/mr+mfy2szfiBEY
         N7oAifp+cJWuauW9K2DdxzLc+hhL5t80ZP6kEk1l2SEdxjnY2HgARDp473VEBl8RfeMM
         U+QuZOBN5ZBJilAwLccj5OznS1JOnToBVta9rZGYwyxh7i+pHTBTG3HBmoefy/Ddm4Yp
         OxfoZn2hl5PE3mN9WO+B8lLfu1mKGvKgW7ZodfmegmQEcOiNstpWU+5LLHcSuDQ71+NN
         vv4w==
X-Gm-Message-State: AOJu0YyPT9qo/zKxsuTig7Iso3TwBQHPbOyZO2go/i7XUm0vsJelxgTy
	6zdAsQT8/iL13mbc/iRF7iRwE6nCwPSYaTFnaS0cUElbbkns8i9FdZWweY80fFa4eh7WJpX9skJ
	RxJQkfTc7ZJAVpFQlUksiDLO8APpfbrgScbAe3ib4Jr7KKwh3Xg==
X-Google-Smtp-Source: AGHT+IGKrN4XJT7ZYy+dEiaJlx5i+Pi/6twWjtjgDvgqZzKpGx4OwyGXNTCkvb4VwFghEc/3ZmpzcfwsjR2xJFe0qhM=
X-Received: by 2002:a05:6214:5b82:b0:6cb:2a26:af8f with SMTP id
 6a1803df08f44-6cb819cac74mr2787176d6.5.1727802924665; Tue, 01 Oct 2024
 10:15:24 -0700 (PDT)
MIME-Version: 1.0
From: Ryan Marlow <ryan@lmarlow.com>
Date: Tue, 1 Oct 2024 13:15:13 -0400
Message-ID: <CAOHuk9AmFZDSQoOL+N8590XaPwfV3V7mN+BwhwbFpPHX4pu5PQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: CBRK43VH6GNLUPDUA6PN5INJ2OLRI6HX
X-Message-ID-Hash: CBRK43VH6GNLUPDUA6PN5INJ2OLRI6HX
X-MailFrom: ryan@lmarlow.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_image_builder on UHD 4.7
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CBRK43VH6GNLUPDUA6PN5INJ2OLRI6HX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3252332214069818921=="

--===============3252332214069818921==
Content-Type: multipart/alternative; boundary="000000000000912df806236d777d"

--000000000000912df806236d777d
Content-Type: text/plain; charset="UTF-8"

Hi All, It's been some time since I've tried to build anything rfnoc
related. I am trying to build an image for X310 using the latest UHD 4.7 on
Ubuntu 22.04.
I think I installed the necessary prerequisites including ruamel.yaml.

> pip3 show ruamel.yaml
> Name: ruamel.yaml
> Version: 0.18.6
> Summary: ruamel.yaml is a YAML parser/emitter that supports roundtrip
> preservation of comments, seq/map flow style, and map key order
> Home-page:
> Author: Anthon van der Neut
> Author-email: a.van.der.neut@ruamel.eu
> License: MIT license
> Location: /home/rynmrlw/.local/lib/python3.10/site-packages
> Requires: ruamel.yaml.clib
>
When I run rfnoc_image_builder I see the following error:

> rfnoc_image_builder -y x310_XG_rfnoc_image_core.yml --target X310_XG
> --vivado-path /disk3/Xilinx/Vivado/2021.1 --image_core_name
> x310_XG_rfnoc_image_core
> Using FPGA directory /home/rynmrlw/Documents/PRA/uhd/fpga
> Selected device: x310
> Build artifacts directory already exists (contents will be overwritten).
> Traceback (most recent call last):
>   File "/usr/bin/rfnoc_image_builder", line 348, in <module>
>     sys.exit(main())
>   File "/usr/bin/rfnoc_image_builder", line 311, in main
>     return image_builder.build_image(
>   File
> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", line
> 391, in build_image
>     known_modules = load_module_yamls(config_path,
> args.get('include_paths', []))
>   File
> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", line
> 324, in load_module_yamls
>     known_modules = {
>   File
> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", line
> 325, in <dictcomp>
>     module_type: load_module_descs(module_type)
>   File
> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/image_builder.py", line
> 322, in load_module_descs
>     return yaml_utils.read_yaml_definitions(*paths)
>   File "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py",
> line 340, in read_yaml_definitions
>     data = ordered_load(stream)
>   File "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py",
> line 230, in ordered_load
>     return yaml.load(stream, OrderedLoader)
>   File
> "/home/rynmrlw/.local/lib/python3.10/site-packages/ruamel/yaml/main.py",
> line 1085, in load
>     error_deprecation('load', 'load', arg=_error_dep_arg,
> comment=_error_dep_comment)
>   File
> "/home/rynmrlw/.local/lib/python3.10/site-packages/ruamel/yaml/main.py",
> line 1039, in error_deprecation
>     raise AttributeError(s, name=None)
> AttributeError:
> "load()" has been removed, use
>
>   yaml = YAML(typ='rt')
>   yaml.load(...)
>
> and register any classes that you use, or check the tag attribute on the
> loaded data,
> instead of file
> "/usr/lib/python3.10/site-packages/uhd/imgbuilder/yaml_utils.py", line 230
>
>     return yaml.load(stream, OrderedLoader)
>
Is this a known error with a specific version of ruamel.yaml? Is there a
specific version I should use?
Interestingly, the manual for version 4.7 does not make any mention of
ruamel.yaml as a prerequisite.
https://files.ettus.com/manual/md_usrp3_build_instructions.html

Thanks for your input,
Ryan Marlow
-- 
Ryan L. Marlow
R L Marlow Consulting LLC
rlmarlow.com

--000000000000912df806236d777d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi All, It&#39;s been some time since I&#39;ve t=
ried to build anything rfnoc related. I am trying to build an image for X31=
0 using the latest UHD 4.7 on Ubuntu 22.04. <br></div>I think I installed t=
he necessary prerequisites including ruamel.yaml.<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">pip3 show ruamel.yaml<br>Name: ruamel.yaml<br>V=
ersion: 0.18.6<br>Summary: ruamel.yaml is a YAML parser/emitter that suppor=
ts roundtrip preservation of comments, seq/map flow style, and map key orde=
r<br>Home-page: <br>Author: Anthon van der Neut<br>Author-email: <a href=3D=
"mailto:a.van.der.neut@ruamel.eu">a.van.der.neut@ruamel.eu</a><br>License: =
MIT license<br>Location: /home/rynmrlw/.local/lib/python3.10/site-packages<=
br>Requires: ruamel.yaml.clib<br></blockquote></div>When I run rfnoc_image_=
builder I see the following error:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">rfnoc_image_builder -y x310_XG_rfnoc_image_core.yml --target X=
310_XG --vivado-path /disk3/Xilinx/Vivado/2021.1 --image_core_name x310_XG_=
rfnoc_image_core<br>Using FPGA directory /home/rynmrlw/Documents/PRA/uhd/fp=
ga<br>Selected device: x310<br>Build artifacts directory already exists (co=
ntents will be overwritten).<br>Traceback (most recent call last):<br>=C2=
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
tructions.html">https://files.ettus.com/manual/md_usrp3_build_instructions.=
html</a><br><br></div><div>Thanks for your input,</div><div>Ryan Marlow<br>=
</div><div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D=
"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div>Ryan L. Marlow</div><div>R L Marlow Consulting LLC</div><div>=
<a href=3D"http://rlmarlow.com" target=3D"_blank">rlmarlow.com</a><br></div=
></div></div></div></div></div></div>

--000000000000912df806236d777d--

--===============3252332214069818921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3252332214069818921==--
