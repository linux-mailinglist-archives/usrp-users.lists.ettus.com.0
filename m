Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE5E545A09
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jun 2022 04:27:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D887384A21
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 22:27:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654828029; bh=fbnsxVxYao+hTOf24g8MQxviWtvZX5dGC+3eubNZ6GA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ledFcUw2DUby4YqBoTx5q8jhDOnZ1u2Dy/tZF9M0BLqqfBB/zOLXr5/bf5ADTUCul
	 qsi6BS3J8TbsgVboIbyuWkAUt9JEPrMPxASxfq8UEy8zk9yQAEf359PMFeu8n3JjkN
	 dtgllWhl2ZiaxEyn5w4WHYDopitZ+qkXt4Mfz9SxQ2QAU/axMOPHfMToWSGL4kTZUw
	 zPldDc7Z7pCllwwI2UiyOB+MTdgVNJjkYL/Q+2Rm94Zk7futIpVBtKvEW93T57MGHR
	 +tu0XiW3jv21JkFJwYG9ks+j3pUhEIrL0vc2ik4BSPId5FsbaLCT8GLoxbrQUr4kjJ
	 u2qH3dPupefJA==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CD1E3848E4
	for <usrp-users@lists.ettus.com>; Thu,  9 Jun 2022 22:26:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bYGMOpKL";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-30fdbe7467cso224202047b3.1
        for <usrp-users@lists.ettus.com>; Thu, 09 Jun 2022 19:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CN/whpzjm1yjOYm+DB8iEPlWl+XAqQnm9fz1RuUVPS8=;
        b=bYGMOpKL4hI3RcKcNnbzYNqlxeDnvFlFcsPnp9J1bMhIm82jH7pkaOTpdI+7wJ2xfw
         f0RVKD255DCHtGDg/A8xz+t3DZQZx/Ra5Xp9a91zaZntLbWdjUFI3N5GF0I8btONv9+5
         ZOS/302d9+ozpHTZzYzduUbZNuB4UuZE/8I/Iz4NmPFKvrOmQkgGn5OPkJi60/fqb29D
         vd/WXAhvBh5wZwxadI/LkSvvd6wv7O3jMUlOPxaBbX1/SHNHzj5UnGRLUqEgOe6pSNja
         4hSpWBROl+2h+No68r1fcfQZeTqiJgCCo4mQ7RJYO+S09Cn3JEHgjARqUJkhYMjHfMhO
         YwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CN/whpzjm1yjOYm+DB8iEPlWl+XAqQnm9fz1RuUVPS8=;
        b=Csv3ZPQeTi3HXSPMUtbZmiiRVkozNit3oA+DUcBPRXks+r4rduQI/CN+pa+qgOcIfj
         VIDFXJpWaKnWgD5/bPsyIbTzWK+BuSCOly8Noy2S5dXP1Xg/wpZsPbk1ekMeDO71u+U6
         386vr1QUX9TGl/WgwWrEP3gmefDpOg1Nth/4ze7xoKcAeL30ATtXkmCgQb5wnK+kgmEc
         QLOTFCkEhYWXTz9gBD5WVdexuz1FKZhv8u5tNPOqrnrtx5YFdmxApirzsg6WpNvdtzco
         BdB6V53N6dk20IoBW5Ja8MGeb1xKdtdADofK+XBMhUw2rFef0Q0CqCYH+wjILodT2uBU
         iv0w==
X-Gm-Message-State: AOAM533zwUC+31p/5mIxOJrdB42VKMkttiyLmu8BCRC47EDI69j8n2tZ
	p0/gKqxXZR6YjQTIkG835/qNuMtiIL5XDtIzXwEA9v+hZ1k=
X-Google-Smtp-Source: ABdhPJynE83qojlgPI7iFWd3JSlTK/cqCzPVh8yQws1whVLGcWyPWve0g2j9YGnGLB0J/IFq2a+BQy/ZMm5450X9gyU=
X-Received: by 2002:a81:9895:0:b0:310:57a1:5c09 with SMTP id
 p143-20020a819895000000b0031057a15c09mr39854194ywg.38.1654827969466; Thu, 09
 Jun 2022 19:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR03MB4678FD7625EC090FBDA33CB4D3A79@BYAPR03MB4678.namprd03.prod.outlook.com>
 <MN2PR03MB4685CC11694062B7A6499B0CD3A69@MN2PR03MB4685.namprd03.prod.outlook.com>
 <2211cddd-4e05-17ca-bad3-96361926feca@gmail.com>
In-Reply-To: <2211cddd-4e05-17ca-bad3-96361926feca@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 9 Jun 2022 22:25:58 -0400
Message-ID: <CAB__hTS--qr3za2Cfd1oSdmyGormCCTKN2gqNt4UYKPc+aoZWw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: XB2EZ46GA4TPGUNJGTXFERZFJPP3UG2P
X-Message-ID-Hash: XB2EZ46GA4TPGUNJGTXFERZFJPP3UG2P
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 GPIO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XB2EZ46GA4TPGUNJGTXFERZFJPP3UG2P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1339777223582026647=="

--===============1339777223582026647==
Content-Type: multipart/alternative; boundary="000000000000490ef005e10ea974"

--000000000000490ef005e10ea974
Content-Type: text/plain; charset="UTF-8"

You might check multi_usrp_rfnoc.cpp to see how ettus does it under the
hood. Could be necessary to call one of the set_gpio functions.

On Thu, Jun 9, 2022 at 9:31 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-06-09 20:22, Minutolo, Lorenzo wrote:
>
> Update,
> I found an error in my wiring and now shorting a data pin and GPIO GND
> makes the bit flip from 1 to 0.
> Still sounds like a weird behavior for a floating pin to be stuck at 1 but
> that's not an issue for me.
>
> https://learn.sparkfun.com/tutorials/pull-up-resistors/all
>
> Having built-in pull-ups on I/O lines is not that uncommon.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000490ef005e10ea974
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You might check multi_usrp_rfnoc.cpp to see how ettus doe=
s it under the hood. Could be necessary to call one of the set_gpio functio=
ns.=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jun 9, 2022 at 9:31 PM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-lef=
t-color:rgb(204,204,204)">
 =20
   =20
 =20
  <div>
    <div>On 2022-06-09 20:22, Minutolo, Lorenzo
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Update,</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        I found an error in my wiring and now shorting a data pin and
        GPIO GND makes the bit flip from 1 to 0.</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Still sounds like a weird behavior for a floating pin to be
        stuck at 1 but that&#39;s not an issue for me.</div>
    </blockquote>
    <a href=3D"https://learn.sparkfun.com/tutorials/pull-up-resistors/all" =
target=3D"_blank">https://learn.sparkfun.com/tutorials/pull-up-resistors/al=
l</a><br>
    <br>
    Having built-in pull-ups on I/O lines is not that uncommon.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000490ef005e10ea974--

--===============1339777223582026647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1339777223582026647==--
