Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B770B933B16
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 12:23:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CA10384E43
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 06:23:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721211809; bh=yNy7rRJqPQ5LRGP0iKs3t6QMC/hSmBTGXi6gTWaqMMM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TXUV7TaLOuPKXS6BCvzW6hvO0Dxw4Qc8nkJCbGgLkc07C7odOd/uAD3CnWACbeqcQ
	 yXgHY++Df8QbeYJYQWgwBkWRpIJk9iwRdHA3hOHYYXyrlirRLZ1ydApkT4Pq3gmH5i
	 R7Casv+tEuC5sTaoK9P6wy5IdZJlf1wtSjuQ1A7b2zOCH7xp1a5gF6hR4zH76Y/8KN
	 7GtDnYB+Az0xeEL5O/ybOO9EQilKsWEU6l6eDUjpvPEXitupbPfAkkF7kN8HlYFMsS
	 w8sIoXSadyKq89PD+eUEQ/jA9fgFCMfROZrRG03ZS2MH6pYVuNvi6jpisio1bPmhRX
	 thX6mcB0/QX8g==
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	by mm2.emwd.com (Postfix) with ESMTPS id B32D1384C54
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 06:22:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LGn9UaKe";
	dkim-atps=neutral
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-4f2f31a9410so464849e0c.3
        for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 03:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721211752; x=1721816552; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ikaaFR5e6Zilk1ejoXjYUhKV+BUDOELv+dmX8TPIt5w=;
        b=LGn9UaKew2WzHK85zk3Y65/r5d31jeBlOcAJtjVuLbvU8m9NbQX4RPirSa9YpQ2Dpq
         b1BEkBemgK5asgXrYz0juWq26bXppOIDP4scVpos2St4iAF/tb3lkarduG2TfA1Ya98W
         RRQST6B+cnZohNyrEwdBRLf9L+0BHFk9cpaHk7n1wEABwBSRKXETi3B2XWTsaS1LMuYo
         GBlmKmv8Fw1kg32GAxCP6vD0KZgS2IqHug/qhj80Za8yoQKx2fWt+DV7R215jXlb8YRy
         QlPCv1HVeA05uZEUmQXhUs6ITiEC/N5wZ45WkdbyXJQTsD/Pgdn1jobojff6BDCh+kU9
         CjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721211752; x=1721816552;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ikaaFR5e6Zilk1ejoXjYUhKV+BUDOELv+dmX8TPIt5w=;
        b=ngy8oUefgboh6N7+r8utsFeGQ7/Qwvs9sfDOEf0wMLcxxRR/VVC12XGdo/zIBqlR3G
         NJtV0X8FGgprZW56euI41f5Ez5F+Y/PkBOKG0SjyQIFDskAbqupEFRaogzQ91vWdGwDh
         aWsmHAPWur/DqEJ2gDNMSE/AlkQ7ntMGC3ZNfgm8vYjddUz6K/ttSRRj2ZWbNZabqdVw
         ZHZEhual/8f/NaWVEPE+wdUGnSG3RVt+MkJRUPS2gp1hzk4GQQZT4hJgXR9VV1wQUZkH
         ZWoLeVZ4muKOj37Ij0471XjuTf2RrwTL8l8Vvk2MrqNpyMT3znCcwEmHLqs1lsUGthoe
         ukeA==
X-Gm-Message-State: AOJu0YyOKmzK6nVfSwVssXwpwHBDE5Us86bbv37h8PmxM19HlLJXS0Tz
	87BObNZmRIrwXGg0Z+EJKlAxy6I8fMi+JCQWhnlg6p/Seqi+tZ+SvWrte7ZFexnL55e7SBLZFxw
	51GthgJJ+qIP28xdwoxESTjBnHck=
X-Google-Smtp-Source: AGHT+IH2vj1hNZVlFhjNhTcer0qgxtSNyZ7k7Y3HHfQIcLJ+ybtFFXQhXkLXux9bDi2r3Ce0E/F/yqv7ZOwg3jJQQfI=
X-Received: by 2002:a05:6122:318e:b0:4f2:f2e1:5f04 with SMTP id
 71dfb90a1353d-4f4df6d96a7mr1697262e0c.8.1721211751819; Wed, 17 Jul 2024
 03:22:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQWxJ5X+uq5X67Y8pWdnhPBYP4f2W3OiLVsgWCHJpuGGqA@mail.gmail.com>
 <CAFOi1A6nzQnK4RcJNPohP76tGwQdwUCWZtBScRybV_k7jPFhdg@mail.gmail.com> <CAFOi1A7NgiuDpqnAhT=vWOEGs-oqmSL0pP7d9mCwuA=js1iPSQ@mail.gmail.com>
In-Reply-To: <CAFOi1A7NgiuDpqnAhT=vWOEGs-oqmSL0pP7d9mCwuA=js1iPSQ@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 17 Jul 2024 12:22:20 +0200
Message-ID: <CAG16vQUGwmcj5w17Xx9y=WYBRS9qVZOMxsacuq60q0GYP2ELCw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: IVYHW3KAGQHJ2RGL3B5Q3HB6SKG6NZG7
X-Message-ID-Hash: IVYHW3KAGQHJ2RGL3B5Q3HB6SKG6NZG7
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVYHW3KAGQHJ2RGL3B5Q3HB6SKG6NZG7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6981472742118260950=="

--===============6981472742118260950==
Content-Type: multipart/alternative; boundary="0000000000000cee3f061d6ed77f"

--0000000000000cee3f061d6ed77f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,
.
Thanks for your answer. I will do the workaround.
By the way, I'm using Ubuntu 20.04.

Kind Regards,

El mi=C3=A9, 17 jul 2024 a las 12:07, Martin Braun (<martin.braun@ettus.com=
>)
escribi=C3=B3:

> Quick addendum: If you do update to 4.7, you will need to update some
> image core files, because we changed stuff for X410 and X440. Best to go
> back to the YAML files we provide in-tree and add your OOT blocks to thos=
e.
>
> --M
>
> On Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun <martin.braun@ettus=
.com>
> wrote:
>
>> Hey Maria,
>>
>> thanks for reporting this issue. Some pointers:
>> - As a workaround, you can install ruamel.yaml 0.17. I don't know how yo=
u
>> installed it before, but you can do `pip install "ruamel.yaml<0.18.0"` i=
f
>> you used pip before.
>> - I need to double-check this, but I think UHD 4.7 has a fix for this. I=
f
>> not, we will need to fix this ASAP (note to myself)
>>
>>
>> Can you provide some info on your system (OS, distribution, etc.)? Many
>> thanks,
>>
>> Martin
>>
>> On Wed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz <mamuki92@gmai=
l.com> wrote:
>>
>>> Hi all,
>>>
>>> I'm trying to use the UHD 4.6 version with RFNoC to build an image for
>>> the x440 USRP device. I used UHD 4.0 for USRP E320 without a problem, b=
ut
>>> now I have an issue with the YML files for the X440 image building.
>>> I have installed UHD 4.6, GNURadio 3.8, and gr-ettus (to have the
>>> rfnocmodtool command).
>>> I can build my block in software without issues but when I try to creat=
e
>>> the FPGA image with rfnoc_image_builder an error occurs:
>>>
>>> >> *rfnoc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t
>>> X4_400 --fpga-dir ~/rfnoc/uhd/fpga/*
>>> *[WAR] Module jsonschema is not installed. Configuration files will not
>>> be validated against their schema.*
>>> *[WAR] Skip schema validation (missing module jsonschema).*
>>> *[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga*
>>> *[INF] Selected device x440*
>>> *[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*
>>> *Traceback (most recent call last):*
>>> *  File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*
>>> *    sys.exit(main())*
>>> *  File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
>>> *    image_builder.build_image(*
>>> *  File
>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py=
",
>>> line 1112, in build_image*
>>> *    signatures_conf =3D io_signatures(core_config_path)*
>>> *  File
>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py=
",
>>> line 666, in io_signatures*
>>> *    return load_config(os.path.join(config_path, "io_signatures.yml"))=
*
>>> *  File
>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py=
",
>>> line 640, in load_config*
>>> *    config =3D ordered_load(stream)*
>>> *  File
>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py=
",
>>> line 115, in ordered_load*
>>> *    return yaml.load(stream, OrderedLoader)*
>>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>>> line 1085, in load*
>>> *    error_deprecation('load', 'load', arg=3D_error_dep_arg,
>>> comment=3D_error_dep_comment)*
>>> *  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
>>> line 1037, in error_deprecation*
>>> *    raise AttributeError(s)*
>>> *AttributeError: *
>>> *"load()" has been removed, use*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *  yaml =3D YAML(typ=3D'rt')  yaml.load(...)and register any classes th=
at
>>> you use, or check the tag attribute on the loaded data,instead of file
>>> "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py=
",
>>> line 115    return yaml.load(stream, OrderedLoader)*
>>>
>>> Do you know how I can solve this problem?
>>>
>>> Kind, Regards,
>>>
>>> Maria
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000000cee3f061d6ed77f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Martin,<div>.</div><div>Thanks for your answer. I =
will do the workaround.=C2=A0</div><div>By the way, I&#39;m using Ubuntu 20=
.04.</div><div><br></div><div>Kind Regards,</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 17 jul 2024 a=
 las 12:07, Martin Braun (&lt;<a href=3D"mailto:martin.braun@ettus.com">mar=
tin.braun@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Quick addendum: If you do=
 update to 4.7, you will need to update some image core files, because we c=
hanged stuff for X410 and X440. Best to go back to the YAML files we provid=
e in-tree and add your OOT blocks to those.</div><div><br></div><div>--M<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jul 17, 2024 at 12:05=E2=80=AFPM Martin Braun &lt;<a href=3D=
"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Hey Maria,</div><div><br></div><div>thanks for reporting=
 this issue. Some pointers:</div><div>- As a workaround, you can install ru=
amel.yaml 0.17. I don&#39;t know how you installed it before, but you can d=
o `pip install &quot;ruamel.yaml&lt;0.18.0&quot;` if you used pip before.</=
div><div>- I need to double-check this, but I think UHD 4.7 has a fix for t=
his. If not, we will need to fix this ASAP (note to myself)</div><div><br><=
/div><div><br></div><div>Can you provide some info on your system (OS, dist=
ribution, etc.)? Many thanks,</div><div><br></div><div>Martin<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Jul 17, 2024 at 11:05=E2=80=AFAM Maria Mu=C3=B1oz &lt;<a href=3D"mailto=
:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">H=
i all,<div><br></div><div>I&#39;m trying to use the UHD 4.6 version with RF=
NoC to build an image for the x440 USRP device. I used UHD 4.0 for USRP E32=
0 without a problem, but now I have an issue with the YML files for the X44=
0 image building.</div><div>I have installed UHD 4.6, GNURadio 3.8, and gr-=
ettus (to have the rfnocmodtool command).</div><div>I can build my block in=
 software=C2=A0without issues but when I try to create the FPGA image with =
rfnoc_image_builder an error occurs:</div><div><br></div><blockquote style=
=3D"margin:0px 0px 0px 40px;border:medium;padding:0px"><div>&gt;&gt; <b>rfn=
oc_image_builder -y block_x440_rfnoc_image_core.yml -d x440 -t X4_400 --fpg=
a-dir ~/rfnoc/uhd/fpga/</b></div><div><i>[WAR] Module jsonschema is not ins=
talled. Configuration files will not be validated against their schema.</i>=
</div><div><i>[WAR] Skip schema validation (missing module jsonschema).</i>=
</div><div><i>[INF] Using FPGA directory /home/satmotion/rfnoc/uhd/fpga</i>=
</div><div><i>[INF] Selected device x440</i></div><div><i>[INF] Using io_si=
gnatures.yml from /usr/local/share/uhd/rfnoc/core.</i></div><div><i>Traceba=
ck (most recent call last):</i></div><div><i>=C2=A0 File &quot;/usr/local/b=
in/rfnoc_image_builder&quot;, line 240, in &lt;module&gt;</i></div><div><i>=
=C2=A0 =C2=A0 sys.exit(main())</i></div><div><i>=C2=A0 File &quot;/usr/loca=
l/bin/rfnoc_image_builder&quot;, line 219, in main</i></div><div><i>=C2=A0 =
=C2=A0 image_builder.build_image(</i></div><div><i>=C2=A0 File &quot;/usr/l=
ocal/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, lin=
e 1112, in build_image</i></div><div><i>=C2=A0 =C2=A0 signatures_conf =3D i=
o_signatures(core_config_path)</i></div><div><i>=C2=A0 File &quot;/usr/loca=
l/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 6=
66, in io_signatures</i></div><div><i>=C2=A0 =C2=A0 return load_config(os.p=
ath.join(config_path, &quot;io_signatures.yml&quot;))</i></div><div><i>=C2=
=A0 File &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_=
builder.py&quot;, line 640, in load_config</i></div><div><i>=C2=A0 =C2=A0 c=
onfig =3D ordered_load(stream)</i></div><div><i>=C2=A0 File &quot;/usr/loca=
l/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py&quot;, line 1=
15, in ordered_load</i></div><div><i>=C2=A0 =C2=A0 return yaml.load(stream,=
 OrderedLoader)</i></div><div><i>=C2=A0 File &quot;/usr/local/lib/python3.8=
/dist-packages/ruamel/yaml/main.py&quot;, line 1085, in load</i></div><div>=
<i>=C2=A0 =C2=A0 error_deprecation(&#39;load&#39;, &#39;load&#39;, arg=3D_e=
rror_dep_arg, comment=3D_error_dep_comment)</i></div><div><i>=C2=A0 File &q=
uot;/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py&quot;, line =
1037, in error_deprecation</i></div><div><i>=C2=A0 =C2=A0 raise AttributeEr=
ror(s)</i></div><div><i>AttributeError: </i></div><div><i>&quot;load()&quot=
; has been removed, use</i></div></blockquote><div><i><br>=C2=A0 yaml =3D Y=
AML(typ=3D&#39;rt&#39;)<br>=C2=A0 yaml.load(...)<br><br>and register any cl=
asses that you use, or check the tag attribute on the loaded data,<br>inste=
ad of file &quot;/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/imag=
e_builder.py&quot;, line 115<br><br>=C2=A0 =C2=A0 return yaml.load(stream, =
OrderedLoader)</i><br></div><div><br></div><div>Do you know how I can solve=
 this problem?</div><div><br></div><div>Kind, Regards,</div><div><br></div>=
<div>Maria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000000cee3f061d6ed77f--

--===============6981472742118260950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6981472742118260950==--
