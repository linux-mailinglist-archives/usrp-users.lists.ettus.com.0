Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B66131697A
	for <lists+usrp-users@lfdr.de>; Wed, 10 Feb 2021 15:53:18 +0100 (CET)
Received: from [::1] (port=46158 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9qrj-00037J-KD; Wed, 10 Feb 2021 09:53:15 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:43033)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l9qrf-000309-MM
 for usrp-users@lists.ettus.com; Wed, 10 Feb 2021 09:53:11 -0500
Received: by mail-oi1-f175.google.com with SMTP id d20so2250174oiw.10
 for <usrp-users@lists.ettus.com>; Wed, 10 Feb 2021 06:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6lI5niODGD1U/8Wj5p+MtBJCFYM7PyasB4K1VEgz9Jo=;
 b=RkhPJn3ge6exBr2AjwFVNqPib82/yost+QUvRPHRp4yTy6LBYJ5M0AuDJ7o93Wy8OQ
 ky2LLvM2eXdnLZYdiMJGfhMhkvEc58CokYrR8r2Lt2GHD99VP1ZJS+/aIwNBTsamf2k3
 feLPW08jkH73VIIe1h7hjwR76Lvpe0+vTqXM8luRw8stfGbq7BeWYemEKvI0K+dk46sT
 NLStBZhwPvefpEUVyjBu/Jny8p56f6e7YgMpfdNDsonLYA5untm5hOInhvJgyLFSa1IC
 rJI9oLMl0wDFAfm4ddEFsAjKyMx0tYZTF7UcfULUa1kgT5VmostlpM5JWEhI8jNQJ/40
 hHNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6lI5niODGD1U/8Wj5p+MtBJCFYM7PyasB4K1VEgz9Jo=;
 b=CC4BCA/WlxdOBJxdeCTChJrTtuFEC0IykpzdOi8PIAqGvGvCnRZDyJVUIYOVJNXW6l
 al1Z7pcXHl0eqrsBdKXYeHB579PcGST1Mojr4JM0iVE9g6A+UmT1FNxQQ8OoW2KVkyMz
 EcC3XvefzmDKakMwr6t9+/U66QXMkt/O01E7KcNAFFgGH/7VyWHABV3AsG+Qe886ifso
 nyhhj2lt3XUnuAOzPPbXhEyJsAdBExbYZOLwvZBnt0hiuActWG9el9wGBEP1OIe/jPQ2
 cxg7eTnNLH9a0I0q8ySEiJ8RnKyl0iN09Si1w83lwSmXn7jgPBQKLEULYuy/mC8AlLRT
 hk2g==
X-Gm-Message-State: AOAM5339VKeExgjqG4M/xuIWcgpVClsVBjEbipA1faSoi+dg1FZAGLKU
 B3JtZqLhhaBcNutf3hJYCHAVdrEalw/LzDSLZlQZDSxIHig=
X-Google-Smtp-Source: ABdhPJwTo01Tn+RoW1mMfySTSLjl4qAqh+ddSnUDq7FXb9C+jSZjJt+8p4q3f89KS91VXsY7Ry4dnOUvg9j4gv95Im4=
X-Received: by 2002:aca:6089:: with SMTP id u131mr2309301oib.150.1612968750712; 
 Wed, 10 Feb 2021 06:52:30 -0800 (PST)
MIME-Version: 1.0
References: <OLAP279MB0104011D702BCCAC5BB528F6E68D9@OLAP279MB0104.NORP279.PROD.OUTLOOK.COM>
In-Reply-To: <OLAP279MB0104011D702BCCAC5BB528F6E68D9@OLAP279MB0104.NORP279.PROD.OUTLOOK.COM>
Date: Wed, 10 Feb 2021 09:52:19 -0500
Message-ID: <CAB__hTRL=N1ZiAnO4TH=tH_fd=YuY5dtn+cvV+NXzwXuyDSz0A@mail.gmail.com>
To: Elise Breivik Smebye <elisebsm@stud.ntnu.no>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Ettus USRP B200 mini - FPGA compatibility number
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1554228782712747682=="
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

--===============1554228782712747682==
Content-Type: multipart/alternative; boundary="0000000000006bbc3705bafc8dc2"

--0000000000006bbc3705bafc8dc2
Content-Type: text/plain; charset="UTF-8"

When you run uhd_images_downloader, which version of UHD is shown in the
console?  I can see in the console pictures below that UHD version
3.010.003 is running (which is pretty old).  My guess is that you have
multiple copies of UHD on your system.

The way it works is the following: when you run uhd_images_downloader, the
script automatically downloads the FPGA image that is associated with that
specific version of UHD and installs it in <prefix>/share/uhd/images/.
Later, when you run any application that uses UHD and the B200mini, UHD
will transfer that image (from that same folder) over USB to the device
to load the FPGA (at least the first time you run UHD after plugging the
device).
Rob

On Wed, Feb 10, 2021 at 4:54 AM Elise Breivik Smebye via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi, I am new to UHD, USRP and FPGA.
>
> I am trying to use a Ettus USRP B200 mini to monitor the network traffic
> between two android phones with GNU radio with this guide
> https://github.com/bastibl/gr-ieee802-11.
> <https://github.com/bastibl/gr-ieee802-11>
>
> When running the example file "wifi_tx_grc" I get a FPGA compatibility
> number error.
>
>
>
> [image: Screenshot from 2021-02-10 09-55-57.png]GNU Radio test
>
>
>
> I have also tried to follow this guide https://github.com/srsLTE/srsLTE
>
> and get the same error. I have run "uhd_images_donwloader" and get that
> all images are up to.
>
>
>
> [image: Screenshot from 2021-02-10 09-29-25.png]
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> Hope anyone can help.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006bbc3705bafc8dc2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">When you run uhd_images_downloader, which=
 version of UHD is shown in the console?=C2=A0 I can see in the console pic=
tures below that UHD version 3.010.003 is running (which is pretty old).=C2=
=A0 My guess is that you have multiple copies of UHD on your system.</div><=
div dir=3D"ltr"><br></div><div>The way it works is the following: when you =
run uhd_images_downloader, the script automatically downloads the FPGA imag=
e that is associated with that specific version of UHD and installs it in &=
lt;prefix&gt;/share/uhd/images/.=C2=A0 Later, when you run any application =
that uses UHD and the B200mini, UHD will transfer that image (from that sam=
e folder) over USB to the device to=C2=A0load the=C2=A0FPGA (at least the f=
irst time you run UHD after plugging the device).</div><div>Rob</div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb =
10, 2021 at 4:54 AM Elise Breivik Smebye via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
Hi, I am new to UHD, USRP and FPGA.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
I am trying to use a Ettus USRP B200 mini to monitor the network traffic be=
tween two android phones with GNU radio with this guide<span>=C2=A0</span><=
a href=3D"https://github.com/bastibl/gr-ieee802-11" rel=3D"nofollow noopene=
r noreferrer" style=3D"box-sizing:border-box;color:rgb(4,65,35);text-decora=
tion:underline" target=3D"_blank">https://github.com/bastibl/gr-ieee802-11.=
</a></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
When running the example file &quot;wifi_tx_grc&quot; I get a FPGA compatib=
ility number error.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<span style=3D"box-sizing:border-box;display:inline-block;max-width:100%;wi=
dth:958px"><span style=3D"box-sizing:border-box;display:inline-block"><span=
 style=3D"box-sizing:border-box"></span><img title=3D"Screenshot from 2021-=
02-10 09-55-57.png" alt=3D"Screenshot from 2021-02-10 09-55-57.png" style=
=3D"box-sizing: border-box; vertical-align: middle; display: block; max-wid=
th: 100%; height: auto;" src=3D"https://ni.i.lithium.com/t5/image/serverpag=
e/image-id/281803i304FC834DE46FE09/image-size/large?v=3D1.0&amp;px=3D999"><=
/span><span style=3D"box-sizing:border-box;color:rgb(102,102,102);display:b=
lock;font-size:13px;font-style:italic;height:auto;margin:10px 0px 20px">GNU
 Radio test</span></span></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
I have also tried to follow this guide<span>=C2=A0</span><a href=3D"https:/=
/github.com/srsLTE/srsLTE" rel=3D"nofollow noopener noreferrer" style=3D"bo=
x-sizing:border-box;color:rgb(4,65,35);text-decoration:underline" target=3D=
"_blank">https://github.com/srsLTE/srsLTE</a></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
and get the same error. I have run &quot;uhd_images_donwloader&quot; and ge=
t that all images are up to.</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<span style=3D"box-sizing:border-box;display:inline-block;max-width:100%;fl=
oat:left;margin-right:10px;width:999px"><span style=3D"box-sizing:border-bo=
x;display:inline-block"><span style=3D"box-sizing:border-box"></span><img t=
itle=3D"Screenshot from 2021-02-10 09-29-25.png" alt=3D"Screenshot from 202=
1-02-10 09-29-25.png" style=3D"box-sizing: border-box; vertical-align: midd=
le; display: block; max-width: 100%; height: auto;" src=3D"https://ni.i.lit=
hium.com/t5/image/serverpage/image-id/281797iEAD9FCD6816778AF/image-size/la=
rge?v=3D1.0&amp;px=3D999"></span></span></p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
=C2=A0</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
<br>
</p>
<p style=3D"box-sizing:border-box;margin:0px;line-height:1.42;color:rgb(51,=
51,51);font-family:Helvetica,Arial,sans-serif;text-align:left;background-co=
lor:rgb(255,255,255)">
Hope anyone can help.</p>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000006bbc3705bafc8dc2--


--===============1554228782712747682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1554228782712747682==--

