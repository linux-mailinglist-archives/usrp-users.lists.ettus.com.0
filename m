Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F0C81160A
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 16:22:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9A1E385479
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 10:22:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702480926; bh=kPeAJAZ9O5ZAL0W/xJ28bQYIjOyYzHXvqq4VzRqePkY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=BH5zs1fas8+puHkwKYKN0RMU+5tXOEhhA7HK7NfIUQBPfHpGUsDQ749fcFEaw7ltX
	 DrSGFulbt0y4yro1pnofLvaURpe3qrEOagueIA+DbdBWUp7rFsK1ry1islebC26PcA
	 OgnHHbgLmPxELQyG93W6k0aKRhMzBd65CPLK5FDjiAG7Du110luwyXzEHkRf8Rk7Us
	 Iwx6bxHboMXhFeAlMfsY7fQp5LsktvKln7bCD4sSG4zyQ9TbhFYfhN4U3j51vz73LT
	 GFF/7UmRwguWgO8Sz+SYfXlT7lnW4ofowDFmsacuA09HsFF1W4Y/0H+wLuzQWMJJAc
	 wVK+OTfJhynIw==
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by mm2.emwd.com (Postfix) with ESMTPS id E028D381078
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 10:22:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Nyn9LqSR";
	dkim-atps=neutral
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ca02def690so89527801fa.3
        for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 07:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702480920; x=1703085720; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BIl9J3F4bxplMUogVHIaD5mDTHthDOvZGWM1s2SBZ40=;
        b=Nyn9LqSRnk/puPr5DwRcuRjj6pmQDKBTWGDEvkZX8cn8Go8ZWd1zaHNBIqEKqqQaL9
         hTFpHeKwQ0bUtzxqwkyCFNq/sbCOivCGHOXVqoCgu30PcgPAmbyRhjKlS53e5Gs8Ndbf
         nU+RLP0VyXR1xeod2MJ5z938QZFpPwsrnW/qTie6KEP8bt+Mta7Qnr7s+PlatKFnTJAs
         axEp9HaQZm0W47tgID7JP+Pqbimgvibod5fq02v5KV7x+gFt8IS1ztbfNGUSpGTXsNI1
         Gv5idzU/L8JGjUNUpUE1r79McWKyCs/9jV51kN5Ml2+dzgCjxL4VRUVXd1P5e4TtubHu
         Bf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702480920; x=1703085720;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BIl9J3F4bxplMUogVHIaD5mDTHthDOvZGWM1s2SBZ40=;
        b=YQqZhAXehXYIKZ2uVh+sOp0XdSUuIA3dvqMCc1E07+Adm15JGa/s4ODWJlxFuga9G4
         wvZ1sqO6GXYzuFeUNn/XLkGE0v15J+UqKVFMFRr7MzR7V7mxGKdpmddJhEDi4c2y8frQ
         ib6mAc6ffVfWvGmmQQDQbySyKSJMyt5T9ECw6cBtEpkfUnQxZfovCHF/2RZIRgpZDKvE
         rthCHObg13UBpYUJh/bafrA6ApMc6pHMsqFtVWMZ0RDhMxIZONsOawzhO0hVIi7sLA2w
         kpkNYR+o0kz5vG0VE3+Ku+ggaZ1lQoWqZDS8A0wpL6dFOeGzfJXpxUMeIPsKtKukpskZ
         knQQ==
X-Gm-Message-State: AOJu0YxbPvz/pVfeYPOg1F8AXsOOeWT5ZGhXDhFVPdlEzVV9lWgKjDUU
	Lxvhm74y5ClrQoDC2QY1Umd/T1uPlggaTTIcPoaMUw==
X-Google-Smtp-Source: AGHT+IFTqLM81U7oQ9Iv9Nv9IEaVwQaP37WIcTW2HL71cwYMdGrIPgSctKFDhAVGg1Mk8CWOQnHBKXSNL4BGxtRgA8A=
X-Received: by 2002:a2e:be9c:0:b0:2cc:1fb5:2a0 with SMTP id
 a28-20020a2ebe9c000000b002cc1fb502a0mr3115109ljr.57.1702480920231; Wed, 13
 Dec 2023 07:22:00 -0800 (PST)
MIME-Version: 1.0
References: <xODq8MoWmgt3YF3OXpYjXXKt7LdOnF7ekvbthlVJZY@lists.ettus.com>
In-Reply-To: <xODq8MoWmgt3YF3OXpYjXXKt7LdOnF7ekvbthlVJZY@lists.ettus.com>
Date: Wed, 13 Dec 2023 10:21:50 -0500
Message-ID: <CAB__hTRJFTobtqP6DnBmfbBkKMRfY4zQ-5AaiHepJuHnp2r1WQ@mail.gmail.com>
To: mamuki92@gmail.com
Message-ID-Hash: F3POSBQH7Z3MSLEKNW6UUUP6XQPLSJ7X
X-Message-ID-Hash: F3POSBQH7Z3MSLEKNW6UUUP6XQPLSJ7X
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F3POSBQH7Z3MSLEKNW6UUUP6XQPLSJ7X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5795553362817856748=="

--===============5795553362817856748==
Content-Type: multipart/alternative; boundary="0000000000007d294b060c65ba68"

--0000000000007d294b060c65ba68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I think that moving out of gnuradio - at least temporarily - is a good
idea. Once you have the block working directly with UHD, it will make the
transition to gnuradio easier.

That said, I did take a quick glance at gnuradio and noticed that the
rfnoc_ddc class has a function "set_freq" and I noticed similar functions
on other rfnoc block classes.  This must mean that it is possible to
declare & define & utilize a custom function for a specific rfnoc block in
gnuradio.  Thus, perhaps you could define a "get_register" function for
your rfnoc block that simply peeks your register.

Finally, the access error you got using set_int_property is a UHD generated
error in "property.hpp" (not generated  by gnuradio).  It might imply that
you are accessing the UHD property before it is initialized. See this page
<https://files.ettus.com/manual/page_properties.html#props_resolvers> for a
description of UHD properties in general as well as the "is_valid" function
which can be used to determine if the property has been initialized.  Of
course, if you abandon using properties, this is irrelevant.

On Wed, Dec 13, 2023 at 5:43=E2=80=AFAM <mamuki92@gmail.com> wrote:

> Hi Rob,
>
> Thanks for the clarification. I tried to set the test_reg value by callin=
g
> the set_int_property with a random value from the python script but I got
> this error:
>
> Traceback (most recent call last):
>
> File "registro_gain.py", line 360, in <module>
>
> main()
>
> File "registro_gain.py", line 338, in main
>
> tb.start()
>
> File "/usr/local/lib/python3/dist-packages/gnuradio/gr/top_block.py", lin=
e
> 111, in start
>
> top_block_start_unlocked(self._impl, max_noutput_items)
>
> File "/usr/local/lib/python3/dist-packages/gnuradio/gr/runtime_swig.py",
> line 4832, in top_block_start_unlocked
>
> return _runtime_swig.top_block_start_unlocked(r, max_noutput_items)
>
> RuntimeError: RuntimeError: AccessError: Attempting to write to property
> `test_reg' without access privileges!
>
> I thought that occurred because I hadn=E2=80=99t defined the set_int_prop=
erty
> function inside my block controller. So I included the method and now I
> have the following error:
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RuntimeError: Attempting to double-register property: test_reg[USER:0]
>
> I don=E2=80=99t know any other mechanism to change that signal in GNURadi=
o so I
> will try to translate my graph to use the uhd API directly
>
>
> Kind Regards,
>
> Maria
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007d294b060c65ba68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I think that moving out of gnuradio - at least tempor=
arily - is a good idea. Once you have the block working directly with UHD, =
it will make the transition to gnuradio easier.=C2=A0=C2=A0<div><br></div><=
div>That said, I did take a quick glance at gnuradio and noticed that the r=
fnoc_ddc class has a function &quot;set_freq&quot; and I noticed similar fu=
nctions on other rfnoc block classes.=C2=A0 This must mean that it is possi=
ble to declare &amp; define &amp; utilize a custom function for a specific =
rfnoc block in gnuradio.=C2=A0 Thus, perhaps you could define a &quot;get_r=
egister&quot; function for your rfnoc block that simply peeks your register=
.</div><div><br></div><div>Finally, the access error you got using set_int_=
property is a UHD generated error in &quot;property.hpp&quot; (not generate=
d=C2=A0 by gnuradio).=C2=A0 It might imply that you are accessing the UHD p=
roperty before it is initialized. See <a href=3D"https://files.ettus.com/ma=
nual/page_properties.html#props_resolvers">this page</a> for a description =
of UHD properties in general as well as the &quot;is_valid&quot; function w=
hich can be used to determine if the property has been initialized.=C2=A0 O=
f course, if you abandon using properties, this is irrelevant.</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Dec 13, 2023 at 5:43=E2=80=AFAM &lt;<a href=3D"mailto:mamuki92@gmail.com">=
mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><p>Hi Rob,</p><p>Thanks for the clarification. I tried to=
 set the test_reg value by calling the set_int_property with a random value=
 from the python script but I got this error:</p><p><code>Traceback (most r=
ecent call last):</code></p><p><code>  File &quot;registro_gain.py&quot;, l=
ine 360, in &lt;module&gt;</code></p><p><code>    main()</code></p><p><code=
>  File &quot;registro_gain.py&quot;, line 338, in main</code></p><p><code>=
    tb.start()</code></p><p><code>  File &quot;/usr/local/lib/python3/dist-=
packages/gnuradio/gr/top_block.py&quot;, line 111, in start</code></p><p><c=
ode>    top_block_start_unlocked(self._impl, max_noutput_items)</code></p><=
p><code>  File &quot;/usr/local/lib/python3/dist-packages/gnuradio/gr/runti=
me_swig.py&quot;, line 4832, in top_block_start_unlocked</code></p><p><code=
>    return _runtime_swig.top_block_start_unlocked(r, max_noutput_items)</c=
ode></p><p><code>RuntimeError: RuntimeError: AccessError: Attempting to wri=
te to property `test_reg&#39; without access privileges!</code></p><p>I tho=
ught that occurred because I hadn=E2=80=99t defined the set_int_property fu=
nction inside my block controller. So I included the method and now I have =
the following error:</p><p><code>[ERROR] [RFNOC::GRAPH] Caught exception wh=
ile initializing graph: RuntimeError: Attempting to double-register propert=
y: test_reg[USER:0]</code></p><p>I don=E2=80=99t know any other mechanism t=
o change that signal in GNURadio so I will try to translate my graph to use=
 the uhd API directly</p><p><br></p><p>Kind Regards,</p><p>Maria</p><p><br>=
</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007d294b060c65ba68--

--===============5795553362817856748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5795553362817856748==--
