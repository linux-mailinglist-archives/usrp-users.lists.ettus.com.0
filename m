Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E660F395B19
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 15:09:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC88B383D9B
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 09:09:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xif0McOS";
	dkim-atps=neutral
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 709E0383A37
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 09:08:10 -0400 (EDT)
Received: by mail-ej1-f54.google.com with SMTP id b9so16526459ejc.13
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 06:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=L/ROusZ/tk5OcU0htx2EYsgTmwUz3Z9CkNgtUX5yIro=;
        b=Xif0McOSOunzHTJ+XA+6U9t16J8NIaBGOlRsnEwhSBTspd1CNUz4plvMX48mWkn2Qu
         erVXraapVHkOaayHsb/cZy4qZP0ycP6FWLyvBd2z1rimv5A2JNH0ditWDtrbqMzVrFcT
         eCLwSOfESM7DEoy1uTeG3aZGSn68UZGFG2Xh7KC0hT9XACD17ZyxPzO/ZjDnnoY/x3YS
         t1bm7ktKuKWOSdmvw9SMh7AOJ3Oebj+4OQk6x3WqR598aEY7y2nqRbNRsy11VO6Fey1x
         gobwwddbt2OTHm21RHsrvENUBIdAZ40vonosTYENltCf0VPguWMoSb4kujv+GnpmuMz5
         gHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=L/ROusZ/tk5OcU0htx2EYsgTmwUz3Z9CkNgtUX5yIro=;
        b=MSrm5U8XNU0o9RSClaGeXF6cznB8BAY7iAm98DHtRu3DuILDLqh7PBNxiFofud+dPB
         gfooUn9tiYFs1Je+eLh7oh5ehlq9WeuArgmpZfh6yUjKZC7XoTDHNIh66U4EJwb2P/xK
         BayH/b67bPuuybxP+oLIwEBl9gsrI3e1Pmn9pSBvKBYQzqBa/H+IA0KlfJ+39C34tume
         hjRDrwGeB+vz70Dgv8kgdh+M1XFA0MXDs7uST9zFsgLRx2mpf1CyIzJo2zPJeHqvVmui
         wjytW1huAmYZwITiggdwVszowIBaUK5oQNn9dvfx37EgtXJfyap8QAHQuhccd+w0ubMH
         t4qQ==
X-Gm-Message-State: AOAM531A09kzYVm+QPC93jMybghv9pAT0FWWpyiK45qHUdfeh+AaGGe9
	jOCkJw3ctOoCLj8iDscmTZ3K8ssPlzPA0mP/cUxU8wGz
X-Google-Smtp-Source: ABdhPJxFsQbCOQb1KEr8zk+FQXUXwhUSsAYi9bbMHRB7dEhGgH5qeUHumhIfla6HJn5VYeCxwvFry+wk1pVcBe2MoUs=
X-Received: by 2002:a17:906:bcd6:: with SMTP id lw22mr23292392ejb.250.1622466488866;
 Mon, 31 May 2021 06:08:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOjuhWmATZti9f1zibrUXiLv6JOz+FDosWm54df_yP8GHKyG9Q@mail.gmail.com>
 <60B4DA13.5060601@gmail.com>
In-Reply-To: <60B4DA13.5060601@gmail.com>
From: Alexey Silyuk <mcerror@gmail.com>
Date: Mon, 31 May 2021 16:07:57 +0300
Message-ID: <CAOjuhWmfmP=bzrJ_CTtHqRCnr-BV080dyPEVaaJvCROsEfxU3g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 556RAMATEYX44QPJKSPVHBS4YCCTE7DK
X-Message-ID-Hash: 556RAMATEYX44QPJKSPVHBS4YCCTE7DK
X-MailFrom: mcerror@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Samples complex<short> vs complex<float> emulating
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/556RAMATEYX44QPJKSPVHBS4YCCTE7DK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7865357312216863535=="

--===============7865357312216863535==
Content-Type: multipart/alternative; boundary="000000000000ba9bf605c39feaa6"

--000000000000ba9bf605c39feaa6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the answer, so what is the order of pushing samples to the mock
buffer? if i want to ensure that i am receiving correct data i pushed after
calling recv() using float or double type?

=D0=BF=D0=BD, 31 =D0=BC=D0=B0=D1=8F 2021 =D0=B3. =D0=B2 15:44, Marcus D. Le=
ech <patchvonbraun@gmail.com>:

> On 05/31/2021 08:30 AM, Alexey Silyuk wrote:
> > HI everybody, I am new at mailing list.
> > These days I am writing an emulator for emulating tx/rx streams based
> > on uhd 3.15LTS
> > I am using device usrp2 device from uhd/lib.
> > As I saw in examples (rx_samples_to_file), I am creating a mock
> > streamer ( taken from uhd tests ).
> > and now i want to push samples inside the buffer.
> > I see that i can define type of samples, if am using 'short' type of
> > samples, I am creating uint32_t variable, 16 MSB i put real part of
> > sample, and 16 LSB i put imaginary part of sample (i am using little
> > endian)
> > After that i am calling usrp->recv() and i get samples as i defined (
> > spp is 2000)
> > (0,0)
> > (2,2)
> > ....
> > (1999,1999)
> > as expected, according to data I push to the mock buffer.
> >
> > now while i want to use type 'float' i am using for example
> > float real =3D 1.5
> > float imag =3D 2.5
> > and trying to push sample to the mock buffer, i am doing:
> > buffer[0] =3D (uint32_t)real;
> > buffer[1] =3D (uint32_t)imag;
> >
> > and expecting to get after calling usrp->recv()
> > (1.5, 2.5)
> > but i get incorrect result (convertor settings: cpu_format "fc32",
> > otw_format "sf16" )
> >
> > i am printing real and imag parameters as bitset<32> and see in real
> > part, in 16 LSB part of result, my 16 MSB bits from sample value 1.5,
> > and in imagine part zeros, in next sample i see in 16 LSB part of
> > result, 16 MSB bits of sample value 2.5. I mean one sample i push to
> > buffer uses whole sample after calling recv()
> >
> > P.S i set scale factor to 1.0
> >
> > What am I doing wrong to use the type 'float' and 'double' for mock
> > samples?
> > I am new at usrp so I don't understand what samples I should use, will
> > be glad to get references.
> > Thanks
> >
> >
> Your OTW format is still SC16 -- normally only the *HOST* side uses
> floating-point and no actual USRP devices that I'm aware of can
>    support floating-point *ON THE WIRE* (OTW).
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ba9bf605c39feaa6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the answer, so what is the order of pushing sam=
ples to the mock buffer? if i want to ensure that i am receiving correct da=
ta i pushed after calling recv() using float or double type?</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 3=
1 =D0=BC=D0=B0=D1=8F 2021 =D0=B3. =D0=B2 15:44, Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On 05/31/2021 08:30 AM=
, Alexey Silyuk wrote:<br>
&gt; HI everybody, I am new at mailing list.<br>
&gt; These days I am writing an emulator for emulating tx/rx streams based =
<br>
&gt; on uhd 3.15LTS<br>
&gt; I am using device usrp2 device from uhd/lib.<br>
&gt; As I saw in examples (rx_samples_to_file), I am creating a mock <br>
&gt; streamer ( taken from uhd tests ).<br>
&gt; and now i want to push samples inside the buffer.<br>
&gt; I see that i can define type of samples, if am using &#39;short&#39; t=
ype of <br>
&gt; samples, I am creating uint32_t variable, 16 MSB i put real part of <b=
r>
&gt; sample, and 16 LSB i put imaginary part of sample (i am using little <=
br>
&gt; endian)<br>
&gt; After that i am calling usrp-&gt;recv() and i get samples as i defined=
 ( <br>
&gt; spp is 2000)<br>
&gt; (0,0)<br>
&gt; (2,2)<br>
&gt; ....<br>
&gt; (1999,1999)<br>
&gt; as expected, according to data I push to the mock buffer.<br>
&gt;<br>
&gt; now while i want to use type &#39;float&#39; i am using for example<br=
>
&gt; float real =3D 1.5<br>
&gt; float imag =3D 2.5<br>
&gt; and trying to push sample to the mock buffer, i am doing:<br>
&gt; buffer[0] =3D (uint32_t)real;<br>
&gt; buffer[1] =3D (uint32_t)imag;<br>
&gt;<br>
&gt; and expecting to get after calling usrp-&gt;recv()<br>
&gt; (1.5, 2.5)<br>
&gt; but i get incorrect result (convertor settings: cpu_format &quot;fc32&=
quot;, <br>
&gt; otw_format &quot;sf16&quot; )<br>
&gt;<br>
&gt; i am printing real and imag parameters as bitset&lt;32&gt; and see in =
real <br>
&gt; part, in 16 LSB part of result, my 16 MSB bits from sample value 1.5, =
<br>
&gt; and in imagine part zeros, in next sample i see in 16 LSB part of <br>
&gt; result, 16 MSB bits of sample value 2.5. I mean one sample i push to <=
br>
&gt; buffer uses whole sample after calling recv()<br>
&gt;<br>
&gt; P.S i set scale factor to 1.0<br>
&gt;<br>
&gt; What am I doing wrong to use the type &#39;float&#39; and &#39;double&=
#39; for mock <br>
&gt; samples?<br>
&gt; I am new at usrp so I don&#39;t understand what samples I should use, =
will <br>
&gt; be glad to get references.<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
Your OTW format is still SC16 -- normally only the *HOST* side uses <br>
floating-point and no actual USRP devices that I&#39;m aware of can<br>
=C2=A0 =C2=A0support floating-point *ON THE WIRE* (OTW).<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ba9bf605c39feaa6--

--===============7865357312216863535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7865357312216863535==--
