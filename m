Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B7E253D00
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 06:55:42 +0200 (CEST)
Received: from [::1] (port=54382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kB9wl-0007C9-Nc; Thu, 27 Aug 2020 00:55:35 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:34093)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1kB9wi-00076C-2w
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 00:55:32 -0400
Received: by mail-qk1-f170.google.com with SMTP id x69so4881722qkb.1
 for <usrp-users@lists.ettus.com>; Wed, 26 Aug 2020 21:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=toymuedSJElnVjqigIitB9CgIJRgRG7/NJ0Gd0DACPk=;
 b=aE6OvfeU3yPvAl+CRg6PSjuWns4dEsheyo5WrkbhkMIKT0RoGPU1PXhcsJX5ZdGGjZ
 BUQVrfy3rozcU9iSlJmW3DrlgVQusOKvxnYRX2d58JHxNq9diK9avAemxedBy/QgTqz9
 ZPq/szlSceUQrny+zZ3AAgJ5UoEPmDxcR7oyMiaf706afocv1tU4Tp/QzGoeHNXlGCgd
 w4O9LdT8XRGeZgkgqkX1/7c9JJKu5zAfe0eM2tXpi+q+DWl784IN8hvAZ1g2fDoyoRMT
 v0i22HFm6OLlKElNHxQQGIsKcdHw04F3CSTwYtTiM2L7W0cv9kqJ9pu1wjHKXp7LhV+k
 lH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=toymuedSJElnVjqigIitB9CgIJRgRG7/NJ0Gd0DACPk=;
 b=UAA764UrII9wBUxJhlh2MpguCA+q3KpxZ/y+7naLycIFmxxTaVrHevQzn91tLGGofA
 aUZ5VISZ/TkB6GHakXKUnBSXX52zKdVKve9hhl9a2zGd35WMtbLaGAPzs1BB8n5nSuiz
 CFAYIWq6u6X9avjmxwLwhP5FUHYETmXxN4KLiKAsoLzvH0+uyHT8ajjrnu7j7ITThP/g
 iCM7qvOvBTrSFNHT8QdG54h2kejTSk2XZAZ/xFNVsVQWXSNr7aTBxwcZ28IqgtN7Q+zO
 WTrOu8130zA92ShelFaWwg3f03yWQaTRKzGz+vFvOULdtif94l+sPi5slNV3a0nDyEw2
 us6Q==
X-Gm-Message-State: AOAM530cMZlH6verltGaOwCBKmJTVnqmGv/1pP5PHJrFk05nzMdIVvWi
 6gEfdSSYjw6Vrk6dtrBxHSsFDBpyqEeIlSHfYvag+pSzHVE=
X-Google-Smtp-Source: ABdhPJxW5Z1417GMxTZ7NrT0D6NI1dHufZyGf74lVM1mKXEQ2pFDOOPhk3LziXK+GougW49UF13qhk0FEXmezlyIjkQ=
X-Received: by 2002:a37:9582:: with SMTP id x124mr16779531qkd.16.1598504091404; 
 Wed, 26 Aug 2020 21:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysdtLyTCsbY4GaLKGqJ1vGUnV=r8_A5Kzv2LVa8pXfWWA@mail.gmail.com>
 <79405f9e-125a-8947-5530-eca1e909e5b6@elitecoding.org>
 <CA+w2Zyshn2yyJw9b0nhP_xAGSr75RGkJm0C8BvajtaFLG8kLxw@mail.gmail.com>
 <94471ce9-11c7-d2c5-98b2-370d9e9c0397@elitecoding.org>
In-Reply-To: <94471ce9-11c7-d2c5-98b2-370d9e9c0397@elitecoding.org>
Date: Thu, 27 Aug 2020 06:54:39 +0200
Message-ID: <CA+w2ZysRBOMW6=0NWR5pv0-zYsw9FZ3-vfo=uKDGi2TR9FbNyg@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] List of filters and where they are located
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============4981466943111027280=="
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

--===============4981466943111027280==
Content-Type: multipart/alternative; boundary="0000000000008a4ccd05add4bc42"

--0000000000008a4ccd05add4bc42
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok understood.
Many thanks again.
David

Le mer. 26 ao=C3=BBt 2020 =C3=A0 22:15, Julian Arnold <julian@elitecoding.o=
rg> a
=C3=A9crit :

> David,
>
> unfortunately not. The filter API does only export the filters internal
> to the AD9361 on B2xx series devices.
> However, if you let MCR =3D sample rate you should basically only have
> filters inside the AD9361 active.
>
> Cheers,
> Julian
>
> On 8/26/20 6:16 AM, David Carsenat wrote:
> > Ok thanks a lotJulian, this is very helpful.
> > Does your example allow to list FPGA filters also ?
> >
> > Le mar. 25 ao=C3=BBt 2020 =C3=A0 21:57, Julian Arnold <julian@elitecodi=
ng.org
> > <mailto:julian@elitecoding.org>> a =C3=A9crit :
> >
> >     David,
> >
> >     take a look at the ad9361 user guide [1]. It has all the informatio=
n
> >     you
> >     are looking for.
> >
> >     If you want to know which filters you can configure and how, take a
> >     look
> >     at [2]. It's a simple example I wrote quite a while back but it
> should
> >     still be good to get you started.
> >
> >     Hope that helps!
> >
> >     Cheers,
> >     Julian
> >
> >     [1]
> >
> https://form.analog.com/Form_Pages/Catalina/CatalinaDesign.aspx?prodid=3D=
AD9361
> >     [2] https://github.com/jarn0ld/uhd-filter-tool
> >
> >     On 8/25/20 9:09 PM, David Carsenat via USRP-users wrote:
> >      > Hi, I am using a B205 and I'd just like to know what are the
> >      > difference filter stages (analog and digital) seen by the signal
> >     (both
> >      > Tx and Rx), in the AD936x and in the FPGA.
> >      > Another way to help me, should be to have a description of the
> >     filter
> >      > that I can address with the filter.hpp functions : Can I
> address and
> >      > change filters behaviours that are part only on FPGA or also the
> >     AD9361
> >      > filters ?
> >      >
> >      > Many thanks
> >      >
> >      > David
> >      >
> >      >
> >      >
> >      >
> >      > _______________________________________________
> >      > USRP-users mailing list
> >      > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >      >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >      >
> >
>

--0000000000008a4ccd05add4bc42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok understood.<div dir=3D"auto">Many thanks again.</div><=
div dir=3D"auto">David=C2=A0</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">Le mer. 26 ao=C3=BBt 2020 =C3=A0 22:15, J=
ulian Arnold &lt;<a href=3D"mailto:julian@elitecoding.org">julian@elitecodi=
ng.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
David,<br>
<br>
unfortunately not. The filter API does only export the filters internal <br=
>
to the AD9361 on B2xx series devices.<br>
However, if you let MCR =3D sample rate you should basically only have <br>
filters inside the AD9361 active.<br>
<br>
Cheers,<br>
Julian<br>
<br>
On 8/26/20 6:16 AM, David Carsenat wrote:<br>
&gt; Ok thanks a lotJulian, this is very helpful.<br>
&gt; Does your example allow to list FPGA filters also ?<br>
&gt; <br>
&gt; Le=C2=A0mar. 25 ao=C3=BBt 2020 =C3=A0=C2=A021:57, Julian Arnold &lt;<a=
 href=3D"mailto:julian@elitecoding.org" target=3D"_blank" rel=3D"noreferrer=
">julian@elitecoding.org</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:julian@elitecoding.org" target=3D"_blank"=
 rel=3D"noreferrer">julian@elitecoding.org</a>&gt;&gt; a =C3=A9crit=C2=A0:<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0David,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0take a look at the ad9361 user guide [1]. It has al=
l the information<br>
&gt;=C2=A0 =C2=A0 =C2=A0you<br>
&gt;=C2=A0 =C2=A0 =C2=A0are looking for.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0If you want to know which filters you can configure=
 and how, take a<br>
&gt;=C2=A0 =C2=A0 =C2=A0look<br>
&gt;=C2=A0 =C2=A0 =C2=A0at [2]. It&#39;s a simple example I wrote quite a w=
hile back but it should<br>
&gt;=C2=A0 =C2=A0 =C2=A0still be good to get you started.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hope that helps!<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Cheers,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Julian<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0[1]<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://form.analog.com/Form_Pages/Catal=
ina/CatalinaDesign.aspx?prodid=3DAD9361" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank">https://form.analog.com/Form_Pages/Catalina/CatalinaDesign.as=
px?prodid=3DAD9361</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0[2] <a href=3D"https://github.com/jarn0ld/uhd-filte=
r-tool" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/=
jarn0ld/uhd-filter-tool</a><br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 8/25/20 9:09 PM, David Carsenat via USRP-users w=
rote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi, I am using a B205 and I&#39;d just like t=
o know what are the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; difference=C2=A0filter stages (analog and dig=
ital) seen by the signal<br>
&gt;=C2=A0 =C2=A0 =C2=A0(both<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Tx and Rx), in the AD936x and in the FPGA.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Another way to help me, should be to have a d=
escription of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0filter<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; that I can address=C2=A0with the filter.hpp f=
unctions=C2=A0: Can I address=C2=A0and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; change filters behaviours that are part only =
on FPGA or also the<br>
&gt;=C2=A0 =C2=A0 =C2=A0AD9361<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; filters ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Many thanks<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; David<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _____________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank" rel=3D"noreferrer">USRP-users@lists.ettus.com</a> &lt;ma=
ilto:<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D=
"noreferrer">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
</blockquote></div>

--0000000000008a4ccd05add4bc42--


--===============4981466943111027280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4981466943111027280==--

