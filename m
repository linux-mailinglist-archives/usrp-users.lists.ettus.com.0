Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF5A933AE9
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 12:08:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 006A03858C9
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 06:08:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721210904; bh=OahNfAGHTwv6VFVLsCojScRiUgnzCNZ32824Lz7S8Vo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OZyyu/EZBNujUfMvEzi0YTtR36ycwfI4/DLMou3aVJFLTLn+ZDHYRVcLJH9bjJDDT
	 FxZ5xGa7e17KMZdf+7pppwsL0tMZu4462Z9ymos0tW72AypfrbI3pIeemqL8BCHS5M
	 Se5GsTv+gPz3vKCl1i7KV7Cc/thQITcBeVPbKf19YxelxUbFq1m1ujQT0qWXiaiFRk
	 YFhKt8El/SXfEKWCUyQkc76GE/YRJoddVqEkc/E/vWOJGQuwC2l5Ps3amBGoFliXYg
	 ZkbEwLQTU5k88JU7N6rbnd45Ft1dNGjASux+aNsXTx4mQJCt2C3/J33GkQPVJC899l
	 Z7mg/t4PxU3lw==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 74B76385830
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 06:07:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="cYN+itPU";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a77cb7c106dso744651966b.1
        for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 03:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721210845; x=1721815645; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2YF3CjLYL7q5kghh3MxoD31XYD+yYJP9BWpcoZeo+sQ=;
        b=cYN+itPUnhyO3VxjlI6IRA2o+G3JmiYPpwFBwGTq1jbmFaaniakYf+dsRgvw0SIeQm
         Ywi7l4MEzGfXFf6aEG3ylDjR1g/9zbUqKV13KdHSljDQF7ajjLqEywFOJqg4WJS6ngZF
         p70rbEgowNtXEoAmund52hM7aizEm8XLS7mg8qqwCTAVQQvOR6sMbvqovawtfJ9GX2Q5
         2XwgDjxEglnMAYI1j2zJnQ0A3wHE3TYZFODePhDT8AlWbm4/hfW7NjYrB4hN+WENM9Js
         TtAY42V9IOvDYKCwcN3Eq0yhP6v5rxSTwGcHQIMSSpIdJC3KFMBwRA1aHdYt7NYV9cuK
         huLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721210845; x=1721815645;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2YF3CjLYL7q5kghh3MxoD31XYD+yYJP9BWpcoZeo+sQ=;
        b=KbU3GxkL6ewjIbfk1lazIYSWZpfMC27z/1meYjqKVJEZ+FLOM8LJt70RF+m9ReSPc4
         +fWxe+78d9boovKDiExEuAdMItLuHZpVigb/vxscBuiUxG9lBjL1vPNcMllLnXtITkyT
         3/zjUOZln/LyN90zHeiVsApAIjLUJx1zYz2h1d7R9/YaTl4G193icsnmiaYYQPdr7aL0
         ZR/TyvkHkfvVHHIxOSvdr6/u+AH7Tr1VVOuqsyEDHwj7gDeX+dtMff1Hw5xCRmew3YsI
         rp3EWQPnrMf466hSW85n0tEAQrXMqn8Hq+N3K9RGsgmlyWI71WWyjjbys1gLvD7uwROZ
         NJAQ==
X-Gm-Message-State: AOJu0YykvQkJPuh0zjgnh9xeb8nPd/N1P/dapnojaMCoqkWrLPmh65ES
	ytl7kkPnhKhUQGtgWPCcLkGXqGqv2jdB59o7cU1Nmz9pwJwny8LRmpPH8aBRJb43BHrSZfRdzvi
	xWNtHpHJPPqSQXrPv7mMfOGwLw4OKo/pL/LUyizNI
X-Google-Smtp-Source: AGHT+IHVgj9vNWuWFLOFlW7eNYI9btto4Arc6YeN9Mv4o7qhxYm6UtT4swyrtlL1odoh6tBxyZTUMcd9KsRsnZDOpzQ=
X-Received: by 2002:a17:906:786:b0:a71:2b4b:29b5 with SMTP id
 a640c23a62f3a-a7a01354ba9mr79158366b.70.1721210844678; Wed, 17 Jul 2024
 03:07:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
 <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
In-Reply-To: <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 17 Jul 2024 12:07:13 +0200
Message-ID: <CAFOi1A7NgiuDpqnAhT=vWOEGs-oqmSL0pP7d9mCwuA=js1iPSQ@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: SNMKUXAPZNOZRKNNFEVN3AYRQPFUMK6G
X-Message-ID-Hash: SNMKUXAPZNOZRKNNFEVN3AYRQPFUMK6G
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SNMKUXAPZNOZRKNNFEVN3AYRQPFUMK6G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4951641331622921088=="

--===============4951641331622921088==
Content-Type: multipart/alternative; boundary="000000000000fb3195061d6ea0a2"

--000000000000fb3195061d6ea0a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Quick addendum: If you do update to 4.7, you will need to update some image
core files, because we changed stuff for X410 and X440. Best to go back to
the YAML files we provide in-tree and add your OOT blocks to those.

--M

On Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun <martin.braun@ettus.c=
om>
wrote:

> Hey Maria,
>
> thanks for reporting this issue. Some pointers:
> - As a workaround, you can install ruamel.yaml 0.17. I don't know how you
> installed it before, but you can do `pip install "ruamel.yaml<0.18.0"` if
> you used pip before.
> - I need to double-check this, but I think UHD 4.7 has a fix for this. If
> not, we will need to fix this ASAP (note to myself)
>
>
> Can you provide some info on your system (OS, distribution, etc.)? Many
> thanks,
>
> Martin
>
> On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92@gmail=
.com> wrote:
>
>> Hi all,
>>
>> I'm trying to use the UHD 4.6 version with RFNoC to build an image for
>> the x440 USRP device. I used UHD 4.0 for USRP E320 without a problem, bu=
t
>> now I have an issue with the YML files for the X440 image building.
>> I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
>> rfnocmodtool command).
>> I can build my block in software without issues but when I try to create
>> the FPGA image with rfnoc_image_builder an error occurs:
>>
>> >> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t
>> X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
>> *[WAR] Module jsonschema is not installed. Configuration files will not
>> be validated against their schema.*
>> *[WAR] Skip schema validation (missing module jsonschema).*
>> *[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
>> *[INF] Selected device x440*
>> *[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*
>> *Traceback (most recent call last):*
>> *  File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*
>> *    sys.exit(main())*
>> *  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
>> *    image_builder.build_image(*
>> *  File
>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py"=
,
>> line 1112, in build_image*
>> *    signatures_conf =3D io_signatures(core_config_path)*
>> *  File
>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py"=
,
>> line 666, in io_signatures*
>> *    return load_config(os.path.join(config_path, "io_signatures.yml"))*
>> *  File
>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py"=
,
>> line 640, in load_config*
>> *    config =3D ordered_load(stream)*
>> *  File
>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py"=
,
>> line 115, in ordered_load*
>> *    return yaml.load(stream, OrderedLoader)*
>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>> line 1085, in load*
>> *    error_deprecation('load', 'load', arg=3D_error_dep_arg,
>> comment=3D_error_dep_comment)*
>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>> line 1037, in error_deprecation*
>> *    raise AttributeError(s)*
>> *AttributeError: *
>> *"load()" has been removed, use*
>>
>>
>>
>>
>>
>>
>>
>>
>> *  yaml =3D YAML(typ=3D'rt')  yaml.load(...)and register any classes tha=
t you
>> use, or check the tag attribute on the loaded data,instead of file
>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py"=
,
>> line 115    return yaml.load(stream, OrderedLoader)*
>>
>> Do you know how I can solve this problem?
>>
>> Kind, Regards,
>>
>> Maria
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000fb3195061d6ea0a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Quick addendum: If you do update to 4.7, you will nee=
d to update some image core files, because we changed stuff for X410 and X4=
40. Best to go back to the YAML files we provide in-tree and add your OOT b=
locks to those.</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2024=
 at 12:05=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.=
com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Maria,</div><div><br><=
/div><div>thanks for reporting this issue. Some pointers:</div><div>- As a =
workaround, you can install ruamel.yaml 0.17. I don&#39;t know how you inst=
alled it before, but you can do `pip install &quot;ruamel.yaml&lt;0.18.0&qu=
ot;` if you used pip before.</div><div>- I need to double-check this, but I=
 think UHD 4.7 has a fix for this. If not, we will need to fix this ASAP (n=
ote to myself)</div><div><br></div><div><br></div><div>Can you provide some=
 info on your system (OS, distribution, etc.)? Many thanks,</div><div><br><=
/div><div>Martin<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=
=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki=
92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m trying to u=
se the UHD 4.6 version with RFNoC to build an image for the x440 USRP devic=
e. I used UHD 4.0 for USRP E320 without a problem, but now I have an issue =
with the YML files for the X440 image building.</div><div>I have installed =
UHD 4.6, GNURadio 3.8, and gr-ettus (to have the rfnocmodtool command).</di=
v><div>I can build my block in software=C2=A0without issues but when I try =
to create the FPGA image with rfnoc_image_builder an error occurs:</div><di=
v><br></div><blockquote style=3D"margin:0px 0px 0px 40px;border:medium;padd=
ing:0px"><div>&gt;&gt; <b>rfnoc_image_builder -y block_x440_rfnoc_image_cor=
e.yml -d x440 -t X4_400 --fpga-dir ~/rfnoc/uhd/fpga/</b></div><div><i>[WAR]=
 Module jsonschema is not installed. Configuration files will not be valida=
ted against their schema.</i></div><div><i>[WAR] Skip schema validation (mi=
ssing module jsonschema).</i></div><div><i>[INF] Using FPGA directory /home=
/satmotion/rfnoc/uhd/fpga</i></div><div><i>[INF] Selected device x440</i></=
div><div><i>[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/c=
ore.</i></div><div><i>Traceback (most recent call last):</i></div><div><i>=
=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 240, in &l=
t;module&gt;</i></div><div><i>=C2=A0 =C2=A0 sys.exit(main())</i></div><div>=
<i>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 219, in=
 main</i></div><div><i>=C2=A0 =C2=A0 image_builder.build_image(</i></div><d=
iv><i>=C2=A0 File &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuild=
er/image_builder.py&quot;, line 1112, in build_image</i></div><div><i>=C2=
=A0 =C2=A0 signatures_conf =3D io_signatures(core_config_path)</i></div><di=
v><i>=C2=A0 File &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuilde=
r/image_builder.py&quot;, line 666, in io_signatures</i></div><div><i>=C2=
=A0 =C2=A0 return load_config(os.path.join(config_path, &quot;io_signatures=
.yml&quot;))</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/si=
te-packages/uhd/imgbuilder/image_builder.py&quot;, line 640, in load_config=
</i></div><div><i>=C2=A0 =C2=A0 config =3D ordered_load(stream)</i></div><d=
iv><i>=C2=A0 File &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuild=
er/image_builder.py&quot;, line 115, in ordered_load</i></div><div><i>=C2=
=A0 =C2=A0 return yaml.load(stream, OrderedLoader)</i></div><div><i>=C2=A0 =
File &quot;/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py&quot;=
, line 1085, in load</i></div><div><i>=C2=A0 =C2=A0 error_deprecation(&#39;=
load&#39;, &#39;load&#39;, arg=3D_error_dep_arg, comment=3D_error_dep_comme=
nt)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8/dist-packag=
es/ruamel/yaml/main.py&quot;, line 1037, in error_deprecation</i></div><div=
><i>=C2=A0 =C2=A0 raise AttributeError(s)</i></div><div><i>AttributeError: =
</i></div><div><i>&quot;load()&quot; has been removed, use</i></div></block=
quote><div><i><br>=C2=A0 yaml =3D YAML(typ=3D&#39;rt&#39;)<br>=C2=A0 yaml.l=
oad(...)<br><br>and register any classes that you use, or check the tag att=
ribute on the loaded data,<br>instead of file &quot;/usr/local/lib/python3.=
8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 115<br><br>=C2=
=A0 =C2=A0 return yaml.load(stream, OrderedLoader)</i><br></div><div><br></=
div><div>Do you know how I can solve this problem?</div><div><br></div><div=
>Kind, Regards,</div><div><br></div><div>Maria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000fb3195061d6ea0a2--

--===============4951641331622921088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4951641331622921088==--
