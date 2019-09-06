Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05231AB39D
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 10:01:16 +0200 (CEST)
Received: from [::1] (port=58640 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i69BB-0008R0-Bp; Fri, 06 Sep 2019 04:01:13 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:42632)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i69B7-0008Ks-U7
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 04:01:10 -0400
Received: by mail-lj1-f181.google.com with SMTP id y23so5115986lje.9
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 01:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gFWGfuy4K7VCX0vCo7PKbclEtPtHXpP1G8qG0PZBE2c=;
 b=w05cmI3Gq15J8pGR5wWlukwV2qu14z/unQU1hHLjzP3i4KlEN+0ncvtnOLaedsTXZT
 lnDCPfxpCF4N71VYY0CzK2tIN0CM2r8m1trnxb+F+ljouTpch5eJvrkuH0V0wz+TOvCK
 8FYlg3GQsq3rSXSkrnzuWbkEvGfVnUMSa6TteEJ89qApU8K8GShrYhc4Z+yJbc7mLqX0
 i6OsCQ69/6TOXOSK7pcUcVu/3aL10803rhc4W4SWlwvsTkRYjBgURs89eonVbx89hasA
 pxnFhVhXyeVkMwiVNlmPm1MFW8mNRtOJo+iTHDStzTgB6X57JN9ASiF/kA1SYYMd4olH
 ts9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gFWGfuy4K7VCX0vCo7PKbclEtPtHXpP1G8qG0PZBE2c=;
 b=lQL41O4krf4UBY0v/MV9n5VVjN9C0LU+PHtZHp8i2hB18W+lmgNKQVkJsN/V/8rmOj
 CdudeuRap7Ol80ThLixhxDzFAoWZ9a6p6pyK1fvBo/zw3Gv+r4PvPcKXa0h7mKC9UtSW
 jCTZaqwDsN6OIrb2VEsqfN+lrg47z7DNklAs5TUt9KT+4MWz4lIqz9zhvk0412sx3tov
 IzzlvweA1QRSaQnvEz/9+y9l21xzd9+DITYWu+QTF2gNT1anPZQ6P/WgynUbvmRdTg1D
 hDTHS0gAEzzn+0byPoTbJm4TxrLDb7A1nM4hSNW6aREr6mMAWyU59CHNNe13lHyNdJmv
 Vu0Q==
X-Gm-Message-State: APjAAAVkdveoJbo2yBnFvRT+zURAVWfaLJEIqM/2FUu7G52xCSZTohPh
 3RuBENOMcTcfmJ48BQnV5v2XBXAcfFuEWrqDjbnFXTaZ
X-Google-Smtp-Source: APXvYqzFLgFRXfBKt2KMaQeRU5Mxb79cD2iFcAE/wux6m6a5j4ka0O26v0R49Bz5zCYrdMnqMV7EFzfUhBoo1rU6iow=
X-Received: by 2002:a2e:8012:: with SMTP id j18mr4966445ljg.36.1567756828618; 
 Fri, 06 Sep 2019 01:00:28 -0700 (PDT)
MIME-Version: 1.0
References: <e9eaf91b-fbf4-af25-be4c-122e88f21ec6@tkn.tu-berlin.de>
 <CAL7q81tLUkzR9hruos3hpL9DnfOD5wdK85j2QdZnCSrPk3aJsQ@mail.gmail.com>
 <466f6c07-f9db-b4c9-a6e1-a634591c2886@tkn.tu-berlin.de>
In-Reply-To: <466f6c07-f9db-b4c9-a6e1-a634591c2886@tkn.tu-berlin.de>
Date: Fri, 6 Sep 2019 16:59:52 +0900
Message-ID: <CAL7q81ubJWNeNTxzdfcosEdDOtGYrNPVHPiV5J593KfARxpSNA@mail.gmail.com>
To: =?UTF-8?Q?Sebastian_Br=C3=A4uer?= <braeuer@tkn.tu-berlin.de>
Subject: Re: [USRP-users] RFNoC packet sizes
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8934831231186745510=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8934831231186745510==
Content-Type: multipart/alternative; boundary="000000000000dd439a0591ddd468"

--000000000000dd439a0591ddd468
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sebastian,

Try also setting the spp via the stream args with stream_args.args["spp"].
You can see an example in rfnoc_rx_to_file.cpp around line 403.

Jonathon

On Fri, Sep 6, 2019 at 3:54 PM Sebastian Br=C3=A4uer <braeuer@tkn.tu-berlin=
.de>
wrote:

> Hi Jonathon,
>
> thanks for the quick response. It is a UHD application and I set the
> radios spp via radio->set_arg before creating the streamers.
>
>
> Sebastian
>
> On 06.09.19 03:52, Jonathon Pendlum wrote:
> > Hi Sebastian
> >
> > Is this a UHD app or a GNU Radio flowgraph? Are you setting the spp via
> > stream args?
> >
> > Jonathon
>

--000000000000dd439a0591ddd468
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sebastian,<div><br></div><div>Try also setting the spp =
via the stream args with stream_args.args[&quot;spp&quot;]. You can see an =
example in rfnoc_rx_to_file.cpp around line 403.</div><div><br></div><div>J=
onathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Sep 6, 2019 at 3:54 PM Sebastian Br=C3=A4uer &lt;<a hr=
ef=3D"mailto:braeuer@tkn.tu-berlin.de">braeuer@tkn.tu-berlin.de</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Jonathon,=
<br>
<br>
thanks for the quick response. It is a UHD application and I set the <br>
radios spp via radio-&gt;set_arg before creating the streamers.<br>
<br>
<br>
Sebastian<br>
<br>
On 06.09.19 03:52, Jonathon Pendlum wrote:<br>
&gt; Hi Sebastian<br>
&gt; <br>
&gt; Is this a UHD app or a GNU Radio flowgraph? Are you setting the spp vi=
a <br>
&gt; stream args?<br>
&gt; <br>
&gt; Jonathon<br>
</blockquote></div>

--000000000000dd439a0591ddd468--


--===============8934831231186745510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8934831231186745510==--

