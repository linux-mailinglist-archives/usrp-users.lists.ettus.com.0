Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ED277E198
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 14:27:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92AD1384973
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 08:27:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692188829; bh=BC8jkPA3V3x/M9+7Z5UD09/aU5lD95vxk2qjO2IVAd0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=V10zMzEroJXsR+x19Hy4Eu6sVzyNzOW8jPnjYs6DeZid0BF8g94ZqbMyUjqYA4Vux
	 p15+l3xBffnIexsR6D1OlLdfWF49OSM+w+iZwSJt28qBkp2tleW5Gju9UBFgv0s02D
	 KgiCpPz66vxEtMlywHnYd0mAyBnAKTNk++JVRNs7xWWHGCL2HHOLHwqAlaqwGF6ts/
	 fwRkM8HA0QD6Sfiy8PO/Njo6aoq+ukOnRsCZUNpL8pubRTf8eburxdjYfDpmmvqSjO
	 olqQ7itp2oqtEiJCyplfstHH8DrBoSUpKy4RnN/9LsXhrQfOm+4pdfUzPweidKNzcH
	 T3XQU5Rwr9/Rg==
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C6B75383ED8
	for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 08:26:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dTenY+nj";
	dkim-atps=neutral
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-31972944f30so2892649f8f.0
        for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 05:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692188795; x=1692793595;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EHJN02gEhkKQVXGYMx6yb+xb+KaihwCIvRbFXV6xQVI=;
        b=dTenY+njHrlwyxHT0f5hWLOgzwDn4q22YjYbu7p1i+rigQmIFbsz+imej2+ztgJZAy
         95YrctynOTOLxEllEtDe6X+nBfaFJ5x1xDfASelzeHUTHdYxfWX2CL/PgwlegBkBUBy2
         3AxbsriUw8Rnr1FRO4kXpl50kLrCxGcH+xa5nUgdQox/8nWAmteWb0EXO6y+qNE3cp+y
         CIX3RZh08mFSfkZrLkkG0urjVC+4xESqG6YoxU+DVGNuG9Mar9zPWH6yb5YnKSZ1NJd0
         gzJLA8vDdD542u8GPk972/v7/RiOkUUlyNIkl33lgmRwEdjNybnWD8IQ1OAPEVMbrvQX
         BX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692188795; x=1692793595;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EHJN02gEhkKQVXGYMx6yb+xb+KaihwCIvRbFXV6xQVI=;
        b=kQoHTp+6yQC846guPro9FVQ4F3ojuqbQ9CwnjxpkKn+3+r8Lf8fu+h5GsX0niyDZK8
         1zESXLnKHfLNIPbGgfX1vXx8BY952CwnGpiw2IQ9Vr6im/tnQGHmv2d+w3T5yfO52dNA
         gxXwJoIBSdnXmnMkwPkdT6XNNd3seQwq0aCIJL/S9bfWLtlWgOqmIRt0WMDecB4ffpSX
         6cJ8WpVGSAD3N3tPv7TcJcADUrFruIQPahowztGrf+8VPNOlzTQ8dwSRC17+0uRvzPYM
         KQLM8o6tdOQLFfHUTBK/D5ujwIkaKd5oJVQ5GY1OjmcMqb3Q/ffRd4ImjVQR0v+FxKou
         XXsw==
X-Gm-Message-State: AOJu0YxD4eidVgk3I4YYa0oRfL43qr507+oqzpBH7lXcjm1c+gjGRzzU
	WsITlLQMduN7JRVokhA6eho4Y5xKBjcPpmwtesDdcnCBWME5Cw==
X-Google-Smtp-Source: AGHT+IF/hAwn0pwgBF1+LwyoGMviFxWrvd2n9G3V9/FAwGVVnhdcypjD1TDdUgzp+eUOwNgjI/Po2sAh9uWcaQ2qwC4=
X-Received: by 2002:a5d:484f:0:b0:315:a32d:311f with SMTP id
 n15-20020a5d484f000000b00315a32d311fmr1272094wrs.14.1692188795529; Wed, 16
 Aug 2023 05:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAEtk-vU2oUedb9wutZLcQhJBSXJN0Gob6WAxmUtVTs-66sa3Cg@mail.gmail.com>
 <5ae6a11b-aaa2-fa07-4de1-d83c8f57a433@gmail.com>
In-Reply-To: <5ae6a11b-aaa2-fa07-4de1-d83c8f57a433@gmail.com>
From: =?UTF-8?Q?Francisco_Gallardo_l=C3=B3pez?= <f.gallardo.lopez@gmail.com>
Date: Wed, 16 Aug 2023 14:26:24 +0200
Message-ID: <CAEtk-vVjMmc9A9P6c1P=mG849fN0C68qqx_Sm7P2LL+MEu2R9w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: W353AHXR3EIV7PA4S7W2RMVZIRDAGYMT
X-Message-ID-Hash: W353AHXR3EIV7PA4S7W2RMVZIRDAGYMT
X-MailFrom: f.gallardo.lopez@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 not found and power cycle needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W353AHXR3EIV7PA4S7W2RMVZIRDAGYMT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0564457202763525113=="

--===============0564457202763525113==
Content-Type: multipart/alternative; boundary="0000000000000ceea706030968c9"

--0000000000000ceea706030968c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Actually, that is part of the problem. It happens sometimes, but not
always.
I would say mainly when there is a power outage or similar, but not always.

For the sake of testing, I just rebooted the remote machine. This time it
appears in both lsusb and uhd_find_devices upon reboot.

As said, I am not sure about the root cause. So it is complicated to tell.

When that happened last time, I did not check lsusb, but uhd_find_devices,
and the system was not seeing the USRP. I guess lsusb would also not show
the device.

I will check the thread Eden pointed out.

Thanks
Fran



El mar, 15 ago 2023 a las 16:59, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 15/08/2023 02:43, Francisco Gallardo l=C3=B3pez wrote:
> > Hi,
> >
> > We have a remote station with an USRP B210.
> >
> > We observed that sometimes the remote machine cannot find the USRP
> > B210 (I think it has to do with uncontrolled power cycles, but I am
> > not 100% sure about the root cause. The point is that sometimes it
> > happens).
> >
> > The only way to sort it out is to disconnect the power supply and the
> > USB cable from the USRP, and then the remote machine can detect it
> > again. i.e. doing a complete power reboot to the USRP.
> >
> > It is not a killer because the problem is not always happening, but it
> > is annoying because it implies sending somebody to disconnect and
> > connect the USRP B210 cables.
> >
> > Is anybody experiencing a similar issue? Any idea how to fix it?
> >
> > The remote machine uses Ubuntu 22.04.3 LTS and the UHD drivers.
> >
> > Thanks!
> > Fran
> >
> I've seen this sporadically with B2xx over the years I've been using
> them.  For example, on some hardware, the system cannot
>    see the device on reboot, and you have to replug/power-cycle for the
> system to even see it.
>
> When this happens, does it show up in "lsusb" ?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000ceea706030968c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>Actually, that is =
part of the problem. It happens sometimes,=C2=A0but not always.=C2=A0</div>=
<div>I would say mainly when there is a power outage or similar, but not al=
ways.</div><div><br></div><div>For the sake of testing, I just rebooted the=
 remote machine. This time it appears in both lsusb and=C2=A0uhd_find_devic=
es upon reboot.=C2=A0</div><div><br></div><div>As said, I am not sure about=
 the root cause. So it is complicated to tell.</div><div><br></div><div>Whe=
n that happened last time, I did not check lsusb, but uhd_find_devices, and=
 the system was not seeing the USRP. I guess lsusb would also not show the =
device.</div><div><br></div><div>I will check the thread Eden pointed out.=
=C2=A0</div><div><br></div><div>Thanks</div><div>Fran</div><div><br></div><=
div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">El mar, 15 ago 2023 a las 16:59, Marcus D. Leech (&lt;<=
a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;) =
escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 15/08/2023 02:43, Francisco Gallardo l=C3=B3pez wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; We have a remote station with an USRP B210.<br>
&gt;<br>
&gt; We observed that sometimes the remote machine cannot find the USRP <br=
>
&gt; B210 (I think it has to do with uncontrolled power cycles, but I am <b=
r>
&gt; not 100% sure about the root cause. The point is that sometimes it <br=
>
&gt; happens).<br>
&gt;<br>
&gt; The only way to sort it out is to disconnect the power supply and the =
<br>
&gt; USB cable from the USRP, and then the remote machine can detect it <br=
>
&gt; again. i.e. doing a complete power reboot to the USRP.<br>
&gt;<br>
&gt; It is not a killer because the problem is not always happening, but it=
 <br>
&gt; is annoying because it implies sending somebody to disconnect and <br>
&gt; connect the USRP B210 cables.<br>
&gt;<br>
&gt; Is anybody experiencing a similar issue? Any idea how to fix it?<br>
&gt;<br>
&gt; The remote machine uses Ubuntu 22.04.3 LTS and the UHD drivers.<br>
&gt;<br>
&gt; Thanks!<br>
&gt; Fran<br>
&gt;<br>
I&#39;ve seen this sporadically with B2xx over the years I&#39;ve been usin=
g <br>
them.=C2=A0 For example, on some hardware, the system cannot<br>
=C2=A0=C2=A0 see the device on reboot, and you have to replug/power-cycle f=
or the <br>
system to even see it.<br>
<br>
When this happens, does it show up in &quot;lsusb&quot; ?<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000ceea706030968c9--

--===============0564457202763525113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0564457202763525113==--
