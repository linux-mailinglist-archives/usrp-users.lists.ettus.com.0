Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6C2173FC3
	for <lists+usrp-users@lfdr.de>; Fri, 28 Feb 2020 19:39:16 +0100 (CET)
Received: from [::1] (port=46072 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7kXZ-0008H5-Lf; Fri, 28 Feb 2020 13:39:13 -0500
Received: from mail-il1-f169.google.com ([209.85.166.169]:32866)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bistromath@gmail.com>)
 id 1j7kXV-00085U-Ko
 for usrp-users@lists.ettus.com; Fri, 28 Feb 2020 13:39:09 -0500
Received: by mail-il1-f169.google.com with SMTP id r4so2209831iln.0
 for <usrp-users@lists.ettus.com>; Fri, 28 Feb 2020 10:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cvY0JhVNl6Ug/gtEbsRoD4tJCJqgN82/2eGjNctS2OY=;
 b=EEPSUMuwq6jGb6ttlWuHAJAob94oAOJz/iZ/LOLVS7dKJSW20UbE9szOy2s0iiHu+O
 +O7XUyEI4G+AU0v2wbjfO4fu7Ugtdu9G2uXcebo/FX1xi6QS3LbQmQ/B9VvJhbbWDcT0
 0fOxbNS2e+FrIS4VxG1HzTsaMsltWL7ezBmY3eHk1IgT8pxnrkTblkkNNXbe0IppTkeN
 Qr7fu6XewW4mfnxvAwAvWP+Az1EURvxnWM17Q+pOpg+MB/HaFxUxz7NVGIvSdCeGXa7k
 ZDmzAMopMl1JXYDJ38vqQ2JJeEtc0cKuuY0cytHffh5UVgbRFsBB3aENBBKMe3qHfUxe
 0Kwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cvY0JhVNl6Ug/gtEbsRoD4tJCJqgN82/2eGjNctS2OY=;
 b=LaVAGjnEz4jd9KOYelwl3J0/0rOv3Ulved1rkhJ1hjJ4yPq10NomIpgiaduDiO/0wl
 6UzXmxvnhE7Jr+qLq8rgyzA4DpezJlsWMuzujRg94K+2rhYDi1aLw+aToPsOnZkqmGEa
 rFc8FYYSwZAQNGtrWBXX1y7rT17qqBFMFclu+BDF2BNQa8rf0fbDjEuMF/it5eBlkaIA
 2M3r+ZqsFbu0eiucYUdz9+FT401dTf81X8z98/5Pm3jXisjn93GlN7uW49rrossAb4NJ
 erHLjmoDMyVhm7Ef71DiGK0JGClDZoQ+3wxN6JxTzKpusOcQXxY4tZdyrUoIRvUFCvhy
 UcAg==
X-Gm-Message-State: APjAAAUSvrKan1124D+yKXgnpejAEoyQ18nN+/DgRU+Rnh7hA66Z9YSN
 naQNfj14E87ubGe+EuScoFq7XzNtCrhfYcsLhJs=
X-Google-Smtp-Source: APXvYqy/cGrdDWYOhzJ8dcLPOfqnoPuqFlPmuI4JEYdT/J1by7GqwzfMXxZpq8WvL+gGSgwCTJoqOGL44SpiNLQgBds=
X-Received: by 2002:a92:b0c:: with SMTP id b12mr5580756ilf.304.1582915108835; 
 Fri, 28 Feb 2020 10:38:28 -0800 (PST)
MIME-Version: 1.0
References: <CAOExtcQvFTexKtz9HE84-0PU2NoGDN89cmQpEjr7XPedNSCGyw@mail.gmail.com>
In-Reply-To: <CAOExtcQvFTexKtz9HE84-0PU2NoGDN89cmQpEjr7XPedNSCGyw@mail.gmail.com>
Date: Fri, 28 Feb 2020 10:38:17 -0800
Message-ID: <CA+JMMq_-oACR766JM8z_UV3RiHC-OXpnVfCM7v5G-xf=E_ogqw@mail.gmail.com>
To: Sumit Kumar <cogwsn@gmail.com>
Subject: Re: [USRP-users] Device Recovery N210: JTAG programmer
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6640477846005458816=="
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

--===============6640477846005458816==
Content-Type: multipart/alternative; boundary="000000000000c59522059fa72465"

--000000000000c59522059fa72465
Content-Type: text/plain; charset="UTF-8"

Sumit,

Any JTAG programmer which is compatible with Xilinx iMPACT should work
fine. I can recommend the solutions from Digilent (HS2, HS3) or Xilinx
(Platform USB II).

Nick

On Fri, Feb 28, 2020 at 2:19 AM Sumit Kumar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I have 3 bricked N210 to be recovered. I was following the post
> https://kb.ettus.com/N200/N210_Device_Recovery
>
> It says JTAG programmer and in the picture I can see the model no. is
> DLC9G.
>
> I found something on Amazon which has the same model number but does not
> looks the same. Can anyone confirm if this is correct.
>
> https://www.amazon.fr/Plate-Forme-Compatible-lautolaveuse-programmable-XILINX/dp/B07Y7PBBGQ/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=DLC9G&qid=1582884943&sr=8-1
>
>
> Regards
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c59522059fa72465
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sumit, <br></div><div><br></div><div>Any JTAG program=
mer which is compatible with Xilinx iMPACT should work fine. I can recommen=
d the solutions from Digilent (HS2, HS3) or Xilinx (Platform USB II).</div>=
<div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 28, 2020 at 2:19 AM Sumit Kum=
ar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi,=C2=A0<div>I have 3 bricked N210 to =
be recovered. I was following the post=C2=A0</div><div><a href=3D"https://k=
b.ettus.com/N200/N210_Device_Recovery" target=3D"_blank">https://kb.ettus.c=
om/N200/N210_Device_Recovery</a>=C2=A0</div><div><br></div><div>It says=C2=
=A0<span style=3D"color:rgb(0,0,0);font-family:&quot;Lucida Sans Unicode&qu=
ot;,&quot;Lucida Grande&quot;,sans-serif;font-size:14px">JTAG programmer an=
d in the picture I can see the model no. is DLC9G.=C2=A0</span></div><div><=
br></div><div>I found something on Amazon which has the same model number b=
ut does not looks the same. Can anyone confirm if this is correct.=C2=A0</d=
iv><div><a href=3D"https://www.amazon.fr/Plate-Forme-Compatible-lautolaveus=
e-programmable-XILINX/dp/B07Y7PBBGQ/ref=3Dsr_1_1?__mk_fr_FR=3D%C3%85M%C3%85=
%C5%BD%C3%95%C3%91&amp;keywords=3DDLC9G&amp;qid=3D1582884943&amp;sr=3D8-1" =
target=3D"_blank">https://www.amazon.fr/Plate-Forme-Compatible-lautolaveuse=
-programmable-XILINX/dp/B07Y7PBBGQ/ref=3Dsr_1_1?__mk_fr_FR=3D%C3%85M%C3%85%=
C5%BD%C3%95%C3%91&amp;keywords=3DDLC9G&amp;qid=3D1582884943&amp;sr=3D8-1</a=
>=C2=A0</div><div><div><br></div><div>Regards</div>-- <br><div dir=3D"ltr">=
<div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136=
);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font=
-size:12.8px"><div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit =
kumar<br>Postdoc</div><div style=3D"color:rgb(136,136,136);font-size:12.8px=
">SnT, Luxembourg</div><div style=3D"color:rgb(136,136,136);font-size:12.8p=
x"><br></div><br></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c59522059fa72465--


--===============6640477846005458816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6640477846005458816==--

