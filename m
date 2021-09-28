Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9087441A44E
	for <lists+usrp-users@lfdr.de>; Tue, 28 Sep 2021 02:54:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6694D383D08
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 20:54:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fX/LBR1B";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D273383BBC
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 20:53:49 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id l13so18494199qtv.3
        for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 17:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=mJt8h4+2Ge74jDV8NkQAPMrocSkSHgq/DId3CnLxSm0=;
        b=fX/LBR1BX0Ew880XnJPNBPQkG1p55w1uSyfJynrjDQWG4XfeVOoXZtGgyQeRqzFLBz
         Psdn9PmlHJSi5WeEi+IyH/BWPaYXcw+hjKQcCpEwDwvg06w8cv9HCKhtwhBMRfvKig8U
         +/yGleU1hQx7iePmTLKVFlAXqfULO5BNChR83zgJF1mTpiv8sgNx2+wIBCjT088Frp+k
         YQgPUfcOJOAPxySWUgffEIoU6surIYtDpVghbEaAFDYVMwrMVvhwMY1GkSj5wnVOp2VL
         iW2AD84KWUe+vx0K1tHNVIgmwUg6Q0MOlmWEN0dlzsuxNnTt0vsLKddsoTY8rG8Rlz7t
         hykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=mJt8h4+2Ge74jDV8NkQAPMrocSkSHgq/DId3CnLxSm0=;
        b=Ap/PawdZvJNdaW57PVawdOHIxuwyiQnttfzV8Ir94XHbGrggJtvi0mBfOFiSRZ8FYf
         83+K49bCGGV8ROhc7Ex/+pxvBllRRAsRJfBrKNdUz9kszM6V3S6gweuc+G1Ewc4xNbbX
         5kKbs4cwO2nZ1B1pFSH5gLwr9dRdXHxcoXFxBU7o3zFJu+180MO/44+Gvd3VPdd8k0yG
         8GPZSoSOP9lraGztSTQ+9eh01YjOei2msi5lhrmIeKG7AK6LgaOX2OCS+r/tL45xr/9U
         zN/zW/lKkDRid+j21rtOxKRwueHIJ6iXaZduIA/Hj7zbmEA+Pc4U7nHu34DXOM+GSndl
         PdEA==
X-Gm-Message-State: AOAM530gkXOjc8MzWwb0ukxKP0J2D1tWHwzsvlrun9Wy8ewblKZDKBJu
	n1nfSFCKZpaDw20yM2r6M2v3lgsuLlTNfg==
X-Google-Smtp-Source: ABdhPJwauMMVG7Azw6Thasrd6I85U40dV/pVhzFVqgS0fN3rvpLodfdxck96AplAt5atyS5LuKiOaQ==
X-Received: by 2002:ac8:4046:: with SMTP id j6mr2873386qtl.314.1632790428496;
        Mon, 27 Sep 2021 17:53:48 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id i67sm13690667qkd.90.2021.09.27.17.53.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 17:53:48 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 27 Sep 2021 20:53:46 -0400
Message-Id: <AF84E197-4329-4C6B-A48D-2DDBAE9AE5C9@gmail.com>
References: <599675072.1235424.1632788672233@mail.yahoo.com>
In-Reply-To: <599675072.1235424.1632788672233@mail.yahoo.com>
To: Tellrell White <t_whit_87@yahoo.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: DGIK24GN5SRKGC5E2YXQEYINJL7OWH6Y
X-Message-ID-Hash: DGIK24GN5SRKGC5E2YXQEYINJL7OWH6Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems cross compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DGIK24GN5SRKGC5E2YXQEYINJL7OWH6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3401254044928456978=="


--===============3401254044928456978==
Content-Type: multipart/alternative; boundary=Apple-Mail-EAEC38E2-8BB8-4CDA-A501-178E021F5E21
Content-Transfer-Encoding: 7bit


--Apple-Mail-EAEC38E2-8BB8-4CDA-A501-178E021F5E21
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Have you confirmed that there=E2=80=99s =E2=80=9Cstuff=E2=80=9D under the sy=
syroot that is being pointed to in that $CC variable?

Sent from my iPhone

> On Sep 27, 2021, at 8:26 PM, Tellrell White via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> I'm trying to cross-compile a simple "hello world" c file on a host system=
 running ubuntu 18.04. I installed version UHD_4.0.0.HEAD-0-g90ce6062 and I h=
ave the same version of UHD running on the N310 I'm using. As instructed, I f=
ollowed the steps under "Obtaining an SDK" and "SDK Usage" at the following l=
ink=20
>=20
> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk a=
nd the command $CC -dumpmachine shows the correct result as shown.=20
>=20
>=20
> apg@apg-virtual-machine:~$ $CC -dumpmachine
> arm-oe-linux-gnueabi
>=20
> My issue is when i try to compile a simple hello world.c file I get the fo=
llowing=20
>=20
> apg@apg-virtual-machine:~$ arm-oe-linux-gnueabi-gcc hello_world.c=20
> hello_world.c:1:10: fatal error: stdio.h: No such file or directory
>     1 | #include <stdio.h>
>       |          ^~~~~~~~~
> compilation terminated.
>=20
>=20
> Not sure why i'm getting this simple error at the moment but the proper en=
v  variables have been set as shown
>=20
> apg@apg-virtual-machine:~$ echo $CC
> arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dc=
ortex-a9 --sysroot=3D/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-neon-oe-=
linux-gnueabi
>=20
> Perhaps there are some add'l paths that I need to be set ??
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-EAEC38E2-8BB8-4CDA-A501-178E021F5E21
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Have you confirmed that there=E2=80=99s =E2=
=80=9Cstuff=E2=80=9D under the sysyroot that is being pointed to in that $CC=
 variable?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"=
><br><blockquote type=3D"cite">On Sep 27, 2021, at 8:26 PM, Tellrell White v=
ia USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote>=
</div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div class=3D"yaho=
o-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-se=
rif;font-size:13px;"><div dir=3D"ltr" data-setdir=3D"false"><div dir=3D"ltr"=
 data-setdir=3D"false">I'm trying to cross-compile a simple "hello world" c f=
ile on a host system running ubuntu 18.04. I installed version <span>UHD_4.0=
.0.HEAD-0-g90ce6062 and I have the same version of UHD running on the N310 I=
'm using. As instructed, I followed the steps under "Obtaining an SDK" and "=
SDK Usage" at the following link <br></span></div><div dir=3D"ltr" data-setd=
ir=3D"false"><span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><=
a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_d=
ev_sdk" rel=3D"nofollow" target=3D"_blank">https://files.ettus.com/manual/pa=
ge_usrp_n3xx.html#n3xx_software_dev_sdk</a> and the command $CC -dumpmachine=
 shows the correct result as shown. <br></div><div dir=3D"ltr" data-setdir=3D=
"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D=
"ltr" data-setdir=3D"false"><div>apg@apg-virtual-machine:~$ $CC -dumpmachine=
<br><div>arm-oe-linux-gnueabi</div><div><br></div><div dir=3D"ltr" data-setd=
ir=3D"false"><div>My issue is when i try to compile a simple hello world.c f=
ile I get the following <br></div><div><br></div><div>apg@apg-virtual-machin=
e:~$ arm-oe-linux-gnueabi-gcc hello_world.c <br>hello_world.c:1:10: fatal er=
ror: stdio.h: No such file or directory<br>&nbsp;&nbsp;&nbsp; 1 | #include &=
lt;stdio.h&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~<br><div>compilation terminated.</div>=
<div><br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false"><div>No=
t sure why i'm getting this simple error at the moment but the proper env&nb=
sp; variables have been set as shown</div><div><br></div><div>apg@apg-virtua=
l-machine:~$ echo $CC<br><div>arm-oe-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -=
mfloat-abi=3Dhard -mcpu=3Dcortex-a9 --sysroot=3D/usr/local/oecore-x86_64/sys=
roots/cortexa9t2hf-neon-oe-linux-gnueabi</div><div><br></div><div dir=3D"ltr=
" data-setdir=3D"false">Perhaps there are some add'l paths that I need to be=
 set ??<br></div><br></div></div><div dir=3D"ltr" data-setdir=3D"false"><br>=
</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data=
-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div=
><br></div><div><br></div></div><div dir=3D"ltr" data-setdir=3D"false"><br><=
/div><div dir=3D"ltr" data-setdir=3D"false"><br></div><br></div><div><br></d=
iv></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false"><br></div><div><br></div><div><br></div><div><br></div>=
<div dir=3D"ltr" data-setdir=3D"false"><br><span></span><span></span><span><=
/span></div></div></div><span>______________________________________________=
_</span><br><span>USRP-users mailing list -- usrp-users@lists.ettus.com</spa=
n><br><span>To unsubscribe send an email to usrp-users-leave@lists.ettus.com=
</span><br></div></blockquote></body></html>=

--Apple-Mail-EAEC38E2-8BB8-4CDA-A501-178E021F5E21--

--===============3401254044928456978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3401254044928456978==--
