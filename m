Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F11933998
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 11:05:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBDCF385679
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 05:05:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721207127; bh=7ARxiO0so5gP2QewJb/JJqdtrcOp6PUcFgS5TKmxpTs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J2XOarHKu/VkDS9SWLLAshwwzpQ/Z9xp2SjBLOnTKEGZN7rK1jmgQ9nqqidV6RbGD
	 vyFlx9PrJ+bIpTMSM6oZKt2Ie9er2m1toO6/3jjCp27VGC2RnS17eMublD35qWdQpd
	 qDePyeNS1fwuApMOo40lmfhh+4IWdxHoWTzg8FBLt3MHHZpLIqVkAVldxkkPApXKGd
	 EOlzLIpScxPIixczUotwNm4njTucX4piDsw0+NmDWLxF48iX70ZbnIPCWkwfhAj5wa
	 fQ/y/sP0Il5J951X9M+9X8o22eKZBzRRELk70iNCeoN7hqnKv8uwbAvcaWWsybfKwl
	 c71pP5EXA0u+g==
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 73F6838512D
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 05:05:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d8JeAD0q";
	dkim-atps=neutral
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-48ffdfae096so125338137.0
        for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 02:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721207118; x=1721811918; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EFEZVVvTYVAJg3DG0585jxacpNAK6Pd5SPs+iaM9VsU=;
        b=d8JeAD0qE8JZpaOngm75wFUkuIMdernLPfNqbHg+kS13HhvZTwECFbLROpPMZkgbbU
         Nq4QVwwvjmEO7jsZXL9Q3aJiFo2vp4k1H6MrzPvK3rhiOqH3EMTvGprkxoll1kedSoIf
         PiVhbWSeqYtOANzDzcZFdCbNohpRwsa7ozJ3q4ch9eW3P9ATzCdx72UMCnWb6Ee2o7ug
         5HEBi6/G+Jo2WgGMW0qTAfPLG+bbYE1OQKcJBELUzF2B4neAvqdz2CBK32fmTROEBZft
         ONGTmTIK1gAbRN0UWYLOtIuDMsGs+jtgTDIfiRWJfEtewQKKTZ1OU0hLm97fzqgWJqOX
         tFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721207118; x=1721811918;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EFEZVVvTYVAJg3DG0585jxacpNAK6Pd5SPs+iaM9VsU=;
        b=Z1siQGLPEQYCtZXnPIsBE4pdaLak8mn4nEL0uNgwYzLxeuOzi+zMPPo+wCuRwifcdD
         d5TjYbZtpsyTxnaqzY6vpPErPjcMEJaRwUeM5F0W07lHQQOUK6OUEQ1rWm6qiDtQthaN
         NcWu0D6zmrJlQ2tmUhGw/6ouUM2wJyaVB3/8Z8nxe6jUljrGXZ5k1C+S54Du1H9b6ZUQ
         gv6xYS4jYniJDI+fUky3BLXLjIMQMg56MsLEyDtV3K8X4/VDtitobqMXOzEot5VkQOiz
         nQmJqU4sNtyK7XFtLCnubd2AJ1axLvrf8WzvBZIYAMaDaQRDBfoBF1STDtQZHhAfpm/c
         ZmSw==
X-Gm-Message-State: AOJu0YzKP5uGbSMMzuTlF1GrTbDBp66wJu56ZqZaHqviRxrhf8yQN9wE
	pRUmDx8PX1UJHq0enYhIYkfcOQebl7Z1+hSwFY4IcDqfl07yO+KT7dleiGtpQFQgPeM4ntlf0G2
	Nnlm4r1p2iD5+/OiHgbG92kWHvC/NzveP
X-Google-Smtp-Source: AGHT+IFwJDOjkkLrZI//ZrrnlvlHXG7IJIM98yt33rv6MPkaV/wAfDQiX4Jy38dXMnmTENz/bOfaEZW8udd79fmcoMc=
X-Received: by 2002:a05:6102:4410:b0:48f:3b2f:ec33 with SMTP id
 ada2fe7eead31-49159a73699mr923355137.31.1721207118367; Wed, 17 Jul 2024
 02:05:18 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 17 Jul 2024 11:05:07 +0200
Message-ID: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: K545WWJRGBOJRJZYL7VMDHFFJRR5D52G
X-Message-ID-Hash: K545WWJRGBOJRJZYL7VMDHFFJRR5D52G
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K545WWJRGBOJRJZYL7VMDHFFJRR5D52G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4786516533286361531=="

--===============4786516533286361531==
Content-Type: multipart/alternative; boundary="000000000000e014cd061d6dc20d"

--000000000000e014cd061d6dc20d
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to use the UHD 4.6 version with RFNoC to build an image for the
x440 USRP device. I used UHD 4.0 for USRP E320 without a problem, but now I
have an issue with the YML files for the X440 image building.
I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
rfnocmodtool command).
I can build my block in software without issues but when I try to create
the FPGA image with rfnoc_image_builder an error occurs:

>> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t
X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
*[WAR] Module jsonschema is not installed. Configuration files will not be
validated against their schema.*
*[WAR] Skip schema validation (missing module jsonschema).*
*[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
*[INF] Selected device x440*
*[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*
*Traceback (most recent call last):*
*  File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*
*    sys.exit(main())*
*  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
*    image_builder.build_image(*
*  File
"/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
line 1112, in build_image*
*    signatures_conf = io_signatures(core_config_path)*
*  File
"/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
line 666, in io_signatures*
*    return load_config(os.path.join(config_path, "io_signatures.yml"))*
*  File
"/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
line 640, in load_config*
*    config = ordered_load(stream)*
*  File
"/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
line 115, in ordered_load*
*    return yaml.load(stream, OrderedLoader)*
*  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line
1085, in load*
*    error_deprecation('load', 'load', arg=_error_dep_arg,
comment=_error_dep_comment)*
*  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line
1037, in error_deprecation*
*    raise AttributeError(s)*
*AttributeError: *
*"load()" has been removed, use*








*  yaml = YAML(typ='rt')  yaml.load(...)and register any classes that you
use, or check the tag attribute on the loaded data,instead of file
"/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
line 115    return yaml.load(stream, OrderedLoader)*

Do you know how I can solve this problem?

Kind, Regards,

Maria

--000000000000e014cd061d6dc20d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m trying to use the UHD 4=
.6 version with RFNoC to build an image for the x440 USRP device. I used UH=
D 4.0 for USRP E320 without a problem, but now I have an issue with the YML=
 files for the X440 image building.</div><div>I have installed UHD 4.6, GNU=
Radio 3.8, and gr-ettus (to have the rfnocmodtool command).</div><div>I can=
 build my block in software=C2=A0without issues but when I try to create th=
e FPGA image with rfnoc_image_builder an error occurs:</div><div><br></div>=
<blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div>&gt;&g=
t; <b>rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t X4_=
400 --fpga-dir ~/rfnoc/uhd/fpga/</b></div><div><i>[WAR] Module jsonschema i=
s not installed. Configuration files will not be validated against their sc=
hema.</i></div><div><i>[WAR] Skip schema validation (missing module jsonsch=
ema).</i></div><div><i>[INF] Using FPGA directory /home/satmotion/rfnoc/uhd=
/fpga</i></div><div><i>[INF] Selected device x440</i></div><div><i>[INF] Us=
ing io_signatures.yml from /usr/local/share/uhd/rfnoc/core.</i></div><div><=
i>Traceback (most recent call last):</i></div><div><i>=C2=A0 File &quot;/us=
r/local/bin/rfnoc_image_builder&quot;, line 240, in &lt;module&gt;</i></div=
><div><i>=C2=A0 =C2=A0 sys.exit(main())</i></div><div><i>=C2=A0 File &quot;=
/usr/local/bin/rfnoc_image_builder&quot;, line 219, in main</i></div><div><=
i>=C2=A0 =C2=A0 image_builder.build_image(</i></div><div><i>=C2=A0 File &qu=
ot;/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&q=
uot;, line 1112, in build_image</i></div><div><i>=C2=A0 =C2=A0 signatures_c=
onf =3D io_signatures(core_config_path)</i></div><div><i>=C2=A0 File &quot;=
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot=
;, line 666, in io_signatures</i></div><div><i>=C2=A0 =C2=A0 return load_co=
nfig(os.path.join(config_path, &quot;io_signatures.yml&quot;))</i></div><di=
v><i>=C2=A0 File &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuilde=
r/image_builder.py&quot;, line 640, in load_config</i></div><div><i>=C2=A0 =
=C2=A0 config =3D ordered_load(stream)</i></div><div><i>=C2=A0 File &quot;/=
usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;=
, line 115, in ordered_load</i></div><div><i>=C2=A0 =C2=A0 return yaml.load=
(stream, OrderedLoader)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/p=
ython3.8/dist-packages/ruamel/yaml/main.py&quot;, line 1085, in load</i></d=
iv><div><i>=C2=A0 =C2=A0 error_deprecation(&#39;load&#39;, &#39;load&#39;, =
arg=3D_error_dep_arg, comment=3D_error_dep_comment)</i></div><div><i>=C2=A0=
 File &quot;/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py&quot=
;, line 1037, in error_deprecation</i></div><div><i>=C2=A0 =C2=A0 raise Att=
ributeError(s)</i></div><div><i>AttributeError: </i></div><div><i>&quot;loa=
d()&quot; has been removed, use</i></div></blockquote><div><i><br>=C2=A0 ya=
ml =3D YAML(typ=3D&#39;rt&#39;)<br>=C2=A0 yaml.load(...)<br><br>and registe=
r any classes that you use, or check the tag attribute on the loaded data,<=
br>instead of file &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuil=
der/image_builder.py&quot;, line 115<br><br>=C2=A0 =C2=A0 return yaml.load(=
stream, OrderedLoader)</i><br></div><div><br></div><div>Do you know how I c=
an solve this problem?</div><div><br></div><div>Kind, Regards,</div><div><b=
r></div><div>Maria</div></div>

--000000000000e014cd061d6dc20d--

--===============4786516533286361531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4786516533286361531==--
