Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D15E26A66D9
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 05:01:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3A28384522
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 23:01:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677643292; bh=ThOdLBoLTenL4voo50nDp6nT07KSD0JeehE2JNV+s1I=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mpCSGn3dxJb6sRZ+ySnuprDt+jevMw3lrx7WTkSCsulTYhksVZq08mmRVH72b1m/I
	 mGMAFWsmgFHp/Nm1k9gvWXn4vbBfqTcM1ODf4BVoPaBDTHF/5p9RKQiQOv8gDZq+bo
	 JUquhX2+XVYZuKh04OoboxmSvJQ8be6AB6gX0xzNP9N9iNl36HCjocqbubuoLNABih
	 B3ycDY6bvXX6ux30iM3FtcGJPuW12dWLmJy1e5gTdU33B1iJlNOFNf8zNNHglaJzl3
	 lcvvKjiWZn5lnzIUu/6myrF5INp2tX/kN3+a/2eihucVx2YY1kNFJd5FKZ2aLSkTWb
	 6rFilLmPItjTw==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id B2BCA384522
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 23:01:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.b="hgUS2ejf";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id ck15so48928234edb.0
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 20:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com; s=20210112; t=1677643285;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J+z+m8N3h/TpYLu6cSOzrFSrvZtabiftUC4xwEN7Lnk=;
        b=hgUS2ejfNlwp2xhUTZm3zDYMEcTR7+xhs6yBUppWbjvVe1t5w14girsgp60u6FqFL8
         4q1XjoqnBqFSxZ7xefhv0ObqMWVllVh6/jJEN/UVc0oVLnh2sL3xcTm+MOoM6AW0+/t8
         YXQr4UM/6EF+4xj/Pu3/6wKVEkoXDVX3w29IKDaX7iPWvVpH8THXSKBBYMNUMs4JFXtV
         tL1AHpxBGJpLkpQ2JNGLgrGrLopF2IaLxW9B9DuTA3arihj20ee+h8U1De6sQAIdaQti
         0UXjaenxMSaZjhXDJPKs0RSnEdK2I/c9N941u1cHlWc9ox27tdMeenF/O4QQmtUK1LzC
         ieMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677643285;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J+z+m8N3h/TpYLu6cSOzrFSrvZtabiftUC4xwEN7Lnk=;
        b=nzMi2pWaIENAHhpblua00Stn4t4s/NXuYln4NP1tM0ZzGUbWb58Mj/pW1Z+908vBoI
         MaoLLRYqWaHjlp5jm/0MUPKaG7o/9sTX7VgiG/wFVHob09ZLLlmmcxIV1Q54sAFoohGP
         IMr2omqAaVg7h8iJNwZl8c18UCTaP9ALATSZHtM1bWkpzsENfc+OPO+2DMShotpM7Z2H
         pIoPBuWUwhNVOuPnLghXqTw3KvIxN0kHnJVSnHP5PfO1d7sn9pB3JrmGn6KrtKdI+3bP
         LUnadF0Riljy1Dah0ajK9UnEBAHZgoZPDQrXxliDq5BKigoRYOq3rDMSxPvEctZRdb73
         cPDw==
X-Gm-Message-State: AO0yUKVLPTr5qVNNxgM/HTwtTsi+vEnjm5xVlqxmlEblmpOUJwHo3FKl
	TmXlN6HgbfMNzTKjVEgZ+VGZIv87i3vnXhn9tkZHrgScLL30GlQz
X-Google-Smtp-Source: AK7set/dpD+liVtu29cja777Cd8CjU8zL7S4r2uBGVH1Cl8YLujxRyvRW+Ir1diwPG95mam+qOXySeYJVLAQsKkRa9o=
X-Received: by 2002:a50:bb41:0:b0:4ac:b616:4ba9 with SMTP id
 y59-20020a50bb41000000b004acb6164ba9mr2888800ede.5.1677643285049; Tue, 28 Feb
 2023 20:01:25 -0800 (PST)
MIME-Version: 1.0
References: <CAOcHjoJ0sZ5BSRcJF4eKDhgwd0gWi6C102g-B9ANt+wJy1d7RQ@mail.gmail.com>
In-Reply-To: <CAOcHjoJ0sZ5BSRcJF4eKDhgwd0gWi6C102g-B9ANt+wJy1d7RQ@mail.gmail.com>
From: "AERMAN TUERXUN." <armantursun@g.ecc.u-tokyo.ac.jp>
Date: Wed, 1 Mar 2023 13:01:13 +0900
Message-ID: <CAOcHjoJy37o+bHcpAUWe9A_R_x1ygwX_cX7iCHAf2c0rjLLk7Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7ADU2MDOBFPKOTACJPJ7XVORG3KQ2WEJ
X-Message-ID-Hash: 7ADU2MDOBFPKOTACJPJ7XVORG3KQ2WEJ
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: No module named 'uhd'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7ADU2MDOBFPKOTACJPJ7XVORG3KQ2WEJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2939705237761585027=="

--===============2939705237761585027==
Content-Type: multipart/alternative; boundary="00000000000010ca4705f5cec487"

--00000000000010ca4705f5cec487
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I also checked the uhd installation logs.
Why it couldn't find the uhd module?

-- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd
-- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/yaml_utils.py
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/__init__.py
-- Up-to-date:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_image=
_core.vh.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_image=
_core.v.mako
-- Up-to-date:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/con=
nect_io_ports.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/dev=
ice_transport.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/ctr=
l_crossbar.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/dev=
ice_io_ports.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/chd=
r_xb_sep_transport.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/rfn=
oc_block.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/dri=
ve_unused_ports.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/sta=
tic_router.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/str=
eam_endpoints.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/sep=
_xb_wires.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/con=
nect_clk_domains.v.mako
-- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py

On Wed, Mar 1, 2023 at 11:52=E2=80=AFAM AERMAN TUERXUN. <
armantursun@g.ecc.u-tokyo.ac.jp> wrote:

> Hi USRP users,
>
> I am currently developing an OOT RFNoC module.
> When I tried to build a custom image, it gave me errors as below.
> I checked the python path, and it seems fine.
> Is there anyone that has any idea of the reason for this?
> I am using n310 with uhd v4.2.0.0.
> (I checked with uhd4.0, and didn't encounter this problem).
>
> Thanks in advance.
> Best regards.
>
> Traceback (most recent call last):
>   File "/usr/local/bin/rfnoc_image_builder", line 29, in <module>
>     from uhd.imgbuilder import image_builder
> ModuleNotFoundError: No module named 'uhd'
> make[3]: *** [icores/CMakeFiles/n310_rfnoc_image_core.dir/build.make:57:
> icores/CMakeFiles/n310_rfnoc_image_core] Error 1
> make[2]: *** [CMakeFiles/Makefile2:300:
> icores/CMakeFiles/n310_rfnoc_image_core.dir/all] Error 2
> make[1]: *** [CMakeFiles/Makefile2:307:
> icores/CMakeFiles/n310_rfnoc_image_core.dir/rule] Error 2
> make: *** [Makefile:203: n310_rfnoc_image_core] Error 2
>
>
>

--00000000000010ca4705f5cec487
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I also checked the uhd installation logs.</div><div>W=
hy it couldn&#39;t find the uhd module?<br></div><div><br></div><div>-- Up-=
to-date: /usr/local/lib/python3.8/site-packages/uhd<br>-- Up-to-date: /usr/=
local/lib/python3.8/site-packages/uhd/imgbuilder<br>-- Installing: /usr/loc=
al/lib/python3.8/site-packages/uhd/imgbuilder/yaml_utils.py<br>-- Installin=
g: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/__init__.py<br>-- =
Up-to-date: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates=
<br>-- Installing: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/te=
mplates/rfnoc_image_core.vh.mako<br>-- Installing: /usr/local/lib/python3.8=
/site-packages/uhd/imgbuilder/templates/rfnoc_image_core.v.mako<br>-- Up-to=
-date: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modu=
les<br>-- Installing: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder=
/templates/modules/connect_io_ports.v.mako<br>-- Installing: /usr/local/lib=
/python3.8/site-packages/uhd/imgbuilder/templates/modules/device_transport.=
v.mako<br>-- Installing: /usr/local/lib/python3.8/site-packages/uhd/imgbuil=
der/templates/modules/ctrl_crossbar.v.mako<br>-- Installing: /usr/local/lib=
/python3.8/site-packages/uhd/imgbuilder/templates/modules/device_io_ports.v=
.mako<br>-- Installing: /usr/local/lib/python3.8/site-packages/uhd/imgbuild=
er/templates/modules/chdr_xb_sep_transport.v.mako<br>-- Installing: /usr/lo=
cal/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/rfnoc_bloc=
k.v.mako<br>-- Installing: /usr/local/lib/python3.8/site-packages/uhd/imgbu=
ilder/templates/modules/drive_unused_ports.v.mako<br>-- Installing: /usr/lo=
cal/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/static_rou=
ter.v.mako<br>-- Installing: /usr/local/lib/python3.8/site-packages/uhd/img=
builder/templates/modules/stream_endpoints.v.mako<br>-- Installing: /usr/lo=
cal/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/sep_xb_wir=
es.v.mako<br>-- Installing: /usr/local/lib/python3.8/site-packages/uhd/imgb=
uilder/templates/modules/connect_clk_domains.v.mako<br>-- Installing: /usr/=
local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Mar 1, 2023 at 11:52=E2=80=AFAM AERMAN TUERXUN. &lt;<a href=3D"mail=
to:armantursun@g.ecc.u-tokyo.ac.jp">armantursun@g.ecc.u-tokyo.ac.jp</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi USRP users,</div><div><br></div><div>I am currently develo=
ping an OOT RFNoC module.</div><div>When I tried to build a custom image, i=
t gave me errors as below.</div><div>I checked the python path, and it seem=
s fine.</div><div>Is there anyone that has any idea of the reason for this?=
<br></div><div>I am using n310 with uhd v4.2.0.0.</div><div>(I checked with=
 uhd4.0, and didn&#39;t encounter this problem).<br></div><div><br></div><d=
iv>Thanks in advance.</div><div>Best regards.<br></div><div><br></div><div>=
Traceback (most recent call last):<br>=C2=A0 File &quot;/usr/local/bin/rfno=
c_image_builder&quot;, line 29, in &lt;module&gt;<br>=C2=A0 =C2=A0 from uhd=
.imgbuilder import image_builder<br>ModuleNotFoundError: No module named &#=
39;uhd&#39;<br>make[3]: *** [icores/CMakeFiles/n310_rfnoc_image_core.dir/bu=
ild.make:57: icores/CMakeFiles/n310_rfnoc_image_core] Error 1<br>make[2]: *=
** [CMakeFiles/Makefile2:300: icores/CMakeFiles/n310_rfnoc_image_core.dir/a=
ll] Error 2<br>make[1]: *** [CMakeFiles/Makefile2:307: icores/CMakeFiles/n3=
10_rfnoc_image_core.dir/rule] Error 2<br>make: *** [Makefile:203: n310_rfno=
c_image_core] Error 2</div><div></div><div><br><br></div></div>
</blockquote></div>

--00000000000010ca4705f5cec487--

--===============2939705237761585027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2939705237761585027==--
