Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718640D1C5
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 04:52:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74F93384AC2
	for <lists+usrp-users@lfdr.de>; Wed, 15 Sep 2021 22:52:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IckDltA8";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 91C723843B6
	for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 22:51:53 -0400 (EDT)
Received: by mail-yb1-f179.google.com with SMTP id a93so10057591ybi.1
        for <usrp-users@lists.ettus.com>; Wed, 15 Sep 2021 19:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7dehXbuFHbh/+hIlCTydy/HDTmGtOVB5Jn2D2Cgf1tc=;
        b=IckDltA8ClLeaXXXBSgNN+2yEFQXsn01lb20oYRxm5MDpcNzAnbR3YxFFhWQL5wCyk
         Coj9NbVwfjGdkBJMsJvN+w2XMm7CDKCVNFtnSZ7rFfZ8DT8GUN/KIxQBycbtRmRKz4dU
         JN+jgHia+O579TkCR62nsTBMLy6qJ0S0xWNQnjIUMjZGqF9Y9bxJDRUGWF0prnNbIV6I
         UlVnd5U9KeKhgFOm5MeQ31026VN114W7dIGAxcFoOpDwkyOpSiYul4znoJ2zMeMP3HBV
         zRtgRoVIPHFUPyWWu9ywuLgcuUP7J2xrmJSiXgM6zPyPuz0TpcbYqHSPlvDGriMv5EfV
         L84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7dehXbuFHbh/+hIlCTydy/HDTmGtOVB5Jn2D2Cgf1tc=;
        b=daaxMaBDOPg4wzprlWb9g9WBxa6ZFAR2mSLDHSoGDq2kN/rllM4ldNVPlQWwlvKaqk
         odeCPkWcR8Ubh6/ivuMoyFr5huA/kEus7KA+GFLfbT+ADTIaahWOG19UqXSbprc+SyU1
         N7M2LQETShI20mrTvgmRs4jqCd8mJnxM5Q8eUwUnE24Ng5fvcW2NeFmjpoE5+Ik3FzWH
         LWueQE0ULP9m5HS7fA0OVeHa6tsAMvjfZfUdXC6Gse0x/hdALGEJWcz+AV4N0+/rgNxG
         6BOHtoSIuziCWvpGq/VNXkCNL+3BR1ILaICwBM+Ut/+2bxgWZscKVP1zY1Xk4FGDPncW
         /Dew==
X-Gm-Message-State: AOAM533O2GFaYdzV6hmGKeX1leRWhHD6PCcM83iE8CR8jqaWwXD+pkm1
	Z1a8pBJRxpfabf6Q1OHguHeT05N3Qx5S45EyCyFx+sPf
X-Google-Smtp-Source: ABdhPJwwaqtFcCuXvWBmiojH4cIQIMT+X+jA4WwjLA+8qsJRXFLzcwDk1DxIT/fd8sOlj7aFPsTM0wPTKJUUQik2YUI=
X-Received: by 2002:a25:dd6:: with SMTP id 205mr3826898ybn.82.1631760712847;
 Wed, 15 Sep 2021 19:51:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeA34FfBj2wDCkFLCvLWSVumS3K4rSX9qP3itriP_uf+Lu=FA@mail.gmail.com>
 <961c0d70-9bc2-0843-bf44-5c20412e77b6@gmail.com>
In-Reply-To: <961c0d70-9bc2-0843-bf44-5c20412e77b6@gmail.com>
From: Shamil Prematunga <shamildilshan.b@gmail.com>
Date: Thu, 16 Sep 2021 08:21:41 +0530
Message-ID: <CAGeA34FykGBQ=d2Fe3dpvK87+R7a_GpLcc-nq9-CKe28Hb=3Sw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: IXBLLHWP27KLYBWCMNR4OX6AGCVL7FKA
X-Message-ID-Hash: IXBLLHWP27KLYBWCMNR4OX6AGCVL7FKA
X-MailFrom: shamildilshan.b@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP Signal Range
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IXBLLHWP27KLYBWCMNR4OX6AGCVL7FKA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5237838987882278286=="

--===============5237838987882278286==
Content-Type: multipart/alternative; boundary="000000000000a61a7405cc13e579"

--000000000000a61a7405cc13e579
Content-Type: text/plain; charset="UTF-8"

Thank you Marcus for your quick response.
I'll take some measurements in my setup and get an idea.

Best Regards,
Shamil

On Thu, Sep 16, 2021 at 8:14 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-15 10:38 p.m., Shamil Prematunga wrote:
> > Hello Community,
> >
> > In my OAI setup I am using USRP N310 as my gNB and USRP B210 as my UE.
> > Can anyone having experience with these devices let me know about the
> > ranges (cell radius) we can transmit and receive the signals?
> >
> > Thanks and Regards,
> > Shamil
> >
> Neither device produces more than a few dBm output power at most. So the
> general answer would be "not very far", but the specific answer would
>    be "it depends on a lot of factors that are hard to predict."
>
> I'd say take some measurements *in your target environment*.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a61a7405cc13e579
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Marcus for your quick response.=C2=A0<div>I&#39;=
ll take some measurements in my setup and get an idea.</div><div><br></div>=
<div>Best Regards,</div><div>Shamil</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 16, 2021 at 8:14 AM Ma=
rcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 2021-09-15 10:38 p.m., Shamil Prematunga wrote:<br>
&gt; Hello Community,<br>
&gt;<br>
&gt; In my OAI setup I am using USRP N310 as my gNB and USRP B210 as my UE.=
<br>
&gt; Can anyone having experience=C2=A0with these devices let me know about=
 the <br>
&gt; ranges (cell radius) we can transmit and receive the signals?<br>
&gt;<br>
&gt; Thanks and Regards,<br>
&gt; Shamil<br>
&gt;<br>
Neither device produces more than a few dBm output power at most. So the <b=
r>
general answer would be &quot;not very far&quot;, but the specific answer w=
ould<br>
=C2=A0=C2=A0 be &quot;it depends on a lot of factors that are hard to predi=
ct.&quot;<br>
<br>
I&#39;d say take some measurements *in your target environment*.<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a61a7405cc13e579--

--===============5237838987882278286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5237838987882278286==--
