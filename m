Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D25993428A
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 21:20:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F748385576
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 15:20:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721244000; bh=PKksfTTMoMwpoUPVSA84bMecrbz611/2bE6K0Ez4+Ps=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=E3ykrLvznFPNZUZP8sBNZ7gExGk7AXOnJn6wERrg7cj8a04DMG2FSq6dHbThV98PP
	 fT2IVilRYX2ZDXdjcwoF9BJlM+fpipxm7sjdizF9Kwd4YhL17aImP/PovZ1/wL1SmO
	 7r6W47f0V6bfDSgWCW8UKYz4hdEoqepx6sJuIuDAz6OJlbK0UPOTa4+ZOBDBXIELH0
	 7wtH6FPe+adp1LlYEU6WPXKiZMa2Y/MGyl+vHlb6U6zzd4ed9kacATVa6G4nJLsr58
	 2+Dor7+QD+EolB309f5E5VHZv2tjN1trcj+c0c+/4lNb8LYuFjWjuMNgy2KmFKZNQP
	 HmhfGRl4eTsGw==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id CA4CC38545D
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 15:19:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="K98XDom2";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5a156557029so322071a12.2
        for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 12:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721243990; x=1721848790; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0h+o7U2VQsimDWzjija1nAHbr7NpCrFjnfYmTagu9Oo=;
        b=K98XDom2nLn5uKLWHmsjNkGajTtqzRAbm7SfFMS7Ju8Yw5L3Puw9Tbe7hW6DioGC4c
         H8M8PaDi5n0o3Tm+O0bXlPPwhNRC6lW4eYbrgUFxyVVPbcYgdORjkgg3pCyarGYOS5zC
         Bes4MoQX6LMn8Nb9jXJj7pQ5fEZI6DWM2N4meoNfo87waNGeoC9/Sjf0038W1tCgZ7oY
         fZdCqU+ApPFNWDYyxoSBl8zJDgT7DwW4N/pYHO0fbH9WLBGAh0afZmPqJ1A8/VTjJjBh
         ZUOMPf8/MC0wuDHl9LJOM5+1shSvt5UNwUlApQGcXwmthCV9KJKkxD2sxDQUJ62WTEUs
         7eDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721243990; x=1721848790;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0h+o7U2VQsimDWzjija1nAHbr7NpCrFjnfYmTagu9Oo=;
        b=dSgl6++tn8+9rlTEAWTOA+AE6fKQKjsYwBG3UE5JR2SOUTQ5WJ5PWtp3IePGQw8wHp
         /cZ6jQHIXDnpeu4azGFG18lrV37U7SX2ltTGd79euboMlf4DtPP1/zFk4+dzY0bfDJtN
         97gdz/fm/Ck6YWZsajJu5VJTRFcY37QZp42r04XicK6crvfgoetO9EjZjuONmKKjsKFo
         ee2ZhpR4mCxxDM4Dl9tPcQk1v68wK8RCKtPp//uljUo6YUFsgEFN4FlzoPOXj5AnB1g4
         fx0ljWz59v1j8DGaucgtYVNLER55cV8+N3dlCv9cw4s1z6FC5pqALDRADtg3zGzJDtkm
         gibw==
X-Gm-Message-State: AOJu0YwFzURjjFiZkRm5YBkHjiAtDfIBXGmD4g+Yqq70eubua6+IiteD
	NWWjxmYzLZc9B93q3j3Jn/ieueuKUG0XFl1X/dxK5CPwSuRq7bX8owiGZWeW7w7nw3299Je2t2l
	AWVBNDqNBeUYzigIo+FHXXU6E/OqQaokpJ5ektnznXxFoWoqSZfA=
X-Google-Smtp-Source: AGHT+IEvbSaX6E5cPMHXF+twNns7jJBZry4MiT9XJS/O6//S6ic1ouxIsQPbDbJgmfKgGXpegmMPcYfBCuePMlKi3DI=
X-Received: by 2002:a17:906:b102:b0:a77:cdaa:889f with SMTP id
 a640c23a62f3a-a7a0119e965mr155932366b.24.1721243990389; Wed, 17 Jul 2024
 12:19:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
 <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
In-Reply-To: <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 17 Jul 2024 21:19:38 +0200
Message-ID: <CAFOi1A5yi6fnvm=SGdif1z4+koDW1NvS6wS1UxPKGRn+i5VRpA@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: WH2T4JYYOKXNIIUDH5PXL4GS7RNSGD4D
X-Message-ID-Hash: WH2T4JYYOKXNIIUDH5PXL4GS7RNSGD4D
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WH2T4JYYOKXNIIUDH5PXL4GS7RNSGD4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7842879353551797487=="

--===============7842879353551797487==
Content-Type: multipart/alternative; boundary="0000000000009e8dd1061d76583a"

--0000000000009e8dd1061d76583a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Quick update for the wide world: This bug was not fixed in 4.7, but a fix
is on the way.

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

--0000000000009e8dd1061d76583a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Quick update for the wide world: This bug was not fix=
ed in 4.7, but a fix is on the way.</div><div><br></div><div>--M<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:=
martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Mar=
ia,</div><div><br></div><div>thanks for reporting this issue. Some pointers=
:</div><div>- As a workaround, you can install ruamel.yaml 0.17. I don&#39;=
t know how you installed it before, but you can do `pip install &quot;ruame=
l.yaml&lt;0.18.0&quot;` if you used pip before.</div><div>- I need to doubl=
e-check this, but I think UHD 4.7 has a fix for this. If not, we will need =
to fix this ASAP (note to myself)</div><div><br></div><div><br></div><div>C=
an you provide some info on your system (OS, distribution, etc.)? Many than=
ks,</div><div><br></div><div>Martin<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2024 at 11:05=
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

--0000000000009e8dd1061d76583a--

--===============7842879353551797487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7842879353551797487==--
