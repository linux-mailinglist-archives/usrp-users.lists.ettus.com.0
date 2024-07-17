Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0721933AC9
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 12:06:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA7B53858CF
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 06:06:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721210777; bh=pf/LVShmKZ0iN7C43rE2ffEx8yIE8iOfWUI89HyPKok=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JP/Wlm1k51X2rxtY196lvKbPYxEO5Sh9bXbFC3BDSxaFH+cN0kU9C4xI1lADNRQDt
	 7IfI49QtZHy8M527mzD5odmOn9I4b34Qx1IDRTVcFeI5rdrx0y40aM+nl8NmQn6L16
	 ViIkqmo2Yx6M9mtUo/oavKpoVMxG2dU/K+nmzYrYWS38Cf+aBg5ioQKw8ZuLbwyTKK
	 MN3m5qBtPRlXuhfhYSRHfjBVElxvf9KFbq+sS1vN9KOv1/PLRs7a4xB+PoYueALReE
	 Jbc6o1EZ6kp+ktXGpMBYiB1sqMQid1wDvlv5K16x5YlxnFVe919cicPMLIALwZNXHs
	 GCRip4TMFNMew==
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E18C385830
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 06:05:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2qEVzCfs";
	dkim-atps=neutral
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52e9b9fb3dcso8093178e87.1
        for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 03:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721210717; x=1721815517; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J2G7ZdNeMHfCRkNDW0L2wjW/2dumZTcdNp8h+qIqcSk=;
        b=2qEVzCfs/tlJHhdX3ZNhqbfagLEQ4/RrOVkCZY68qijFqCnmAbUNs39g+IUaasLl3B
         zERcpzZI+4CCxXgPL9WxbMvCBypuixDO6jpKoH944nvPakkGuI7EUiXDJszJ99w3S4Yz
         TrpqYoLdzxcLaulGg7kr6suZbxu+E1MU5LbgBDfsT3uBQd1TkUhagko3zFMXnl2FVAJV
         drTRSLxZu3iR3dXNEP7NT5vcJBA14cC9WbxwrHjCjrn5B/wFRzLhm7HaHhasUDQQw8jH
         tB+YPdQAR6jlEf5DVuXESs3hW/mlHo7YDuAY1VvaxidHfeJ9RkHs/AHZO37PotlVt3P+
         ekqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721210717; x=1721815517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J2G7ZdNeMHfCRkNDW0L2wjW/2dumZTcdNp8h+qIqcSk=;
        b=T0zHaTTbTp2gWu6m2A3GGdD2oyFqvFhSgNOx6/5fLrKFEF38n6w892u1qn5Qs6Vpdr
         YIcny+FuEwAXNL0mpHgH7DTfpEeR1bioBeHLJ3X6bhoo5g945e4jTb8eHh8n5s/z7PTK
         sSVjuscmPoAmXe15CrVgwZca28XP8sn4iQIJonfvPVuZYtw0aFzYvdJeXcKgSlCMRllA
         AUwrXkEcdQbzd9souAOhYbyMwDXeHF6QzjgRcLZzUGWwAxemWYrDQgA2sVptH1Uxkyse
         9BAWA2xq13gx/sJsSowfjUe6T44eHJoSIg14gfpAQe52Rc8+KK9Qfdkm4YTbFQZvO2w4
         wcUQ==
X-Gm-Message-State: AOJu0Yz6MUl1js3LHlFYSB9BR54zrmWUSSxLoQSHhfkklZHdyo05su2i
	wCsse4frSqlNJtkxVGqczwFNzoTAs9OnV1ZrYgZmBCGbFllI+hQmQeZi89zTBilHyIsRkFbJ7ac
	CFiF0bf4LJUpk05XCabITyBJ27/SZwTU+7AIf5U6lmW0cjnGCUIoJ8w==
X-Google-Smtp-Source: AGHT+IE8opq7h1oWLvqtzgS+LiejA4/0wmDAf85s6po+dT0ZRch85VVV/PLkeFrBN9Y+RgqeatBG8zMBIdGaZwpppXk=
X-Received: by 2002:a05:6512:3b8f:b0:52b:c0b1:ab9e with SMTP id
 2adb3069b0e04-52ee539ca46mr935907e87.5.1721210717221; Wed, 17 Jul 2024
 03:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
In-Reply-To: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 17 Jul 2024 12:05:06 +0200
Message-ID: <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: 2RVZDYORG2BGTJHWQNMV3ZWDBFKX5I3E
X-Message-ID-Hash: 2RVZDYORG2BGTJHWQNMV3ZWDBFKX5I3E
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2RVZDYORG2BGTJHWQNMV3ZWDBFKX5I3E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1134698682590157849=="

--===============1134698682590157849==
Content-Type: multipart/alternative; boundary="000000000000625782061d6e996f"

--000000000000625782061d6e996f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Maria,

thanks for reporting this issue. Some pointers:
- As a workaround, you can install ruamel.yaml 0.17. I don't know how you
installed it before, but you can do `pip install "ruamel.yaml<0.18.0"` if
you used pip before.
- I need to double-check this, but I think UHD 4.7 has a fix for this. If
not, we will need to fix this ASAP (note to myself)


Can you provide some info on your system (OS, distribution, etc.)? Many
thanks,

Martin

On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92@gmail.c=
om> wrote:

> Hi all,
>
> I'm trying to use the UHD 4.6 version with RFNoC to build an image for th=
e
> x440 USRP device. I used UHD 4.0 for USRP E320 without a problem, but now=
 I
> have an issue with the YML files for the X440 image building.
> I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
> rfnocmodtool command).
> I can build my block in software without issues but when I try to create
> the FPGA image with rfnoc_image_builder an error occurs:
>
> >> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t
> X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
> *[WAR] Module jsonschema is not installed. Configuration files will not b=
e
> validated against their schema.*
> *[WAR] Skip schema validation (missing module jsonschema).*
> *[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
> *[INF] Selected device x440*
> *[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*
> *Traceback (most recent call last):*
> *  File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*
> *    sys.exit(main())*
> *  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
> *    image_builder.build_image(*
> *  File
> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
> line 1112, in build_image*
> *    signatures_conf =3D io_signatures(core_config_path)*
> *  File
> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
> line 666, in io_signatures*
> *    return load_config(os.path.join(config_path, "io_signatures.yml"))*
> *  File
> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
> line 640, in load_config*
> *    config =3D ordered_load(stream)*
> *  File
> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
> line 115, in ordered_load*
> *    return yaml.load(stream, OrderedLoader)*
> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", lin=
e
> 1085, in load*
> *    error_deprecation('load', 'load', arg=3D_error_dep_arg,
> comment=3D_error_dep_comment)*
> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", lin=
e
> 1037, in error_deprecation*
> *    raise AttributeError(s)*
> *AttributeError: *
> *"load()" has been removed, use*
>
>
>
>
>
>
>
>
> *  yaml =3D YAML(typ=3D'rt')  yaml.load(...)and register any classes that=
 you
> use, or check the tag attribute on the loaded data,instead of file
> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py",
> line 115    return yaml.load(stream, OrderedLoader)*
>
> Do you know how I can solve this problem?
>
> Kind, Regards,
>
> Maria
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000625782061d6e996f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Maria,</div><div><br></div><div>thanks for report=
ing this issue. Some pointers:</div><div>- As a workaround, you can install=
 ruamel.yaml 0.17. I don&#39;t know how you installed it before, but you ca=
n do `pip install &quot;ruamel.yaml&lt;0.18.0&quot;` if you used pip before=
.</div><div>- I need to double-check this, but I think UHD 4.7 has a fix fo=
r this. If not, we will need to fix this ASAP (note to myself)</div><div><b=
r></div><div><br></div><div>Can you provide some info on your system (OS, d=
istribution, etc.)? Many thanks,</div><div><br></div><div>Martin<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz &lt;<a href=3D"mai=
lto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockqu=
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

--000000000000625782061d6e996f--

--===============1134698682590157849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1134698682590157849==--
