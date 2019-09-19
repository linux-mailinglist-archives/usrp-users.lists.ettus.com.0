Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B362B7B49
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 15:56:56 +0200 (CEST)
Received: from [::1] (port=36370 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAwvW-0006WP-9F; Thu, 19 Sep 2019 09:56:54 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:45358)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iAwvS-0006PV-W3
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 09:56:51 -0400
Received: by mail-ot1-f44.google.com with SMTP id 41so3099950oti.12
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 06:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JpOw/2ow6SAfwsVXu1x01tvRkKpuRz0dItxJUwSvi98=;
 b=pxins41WYR+CGexcFfbTbYSfdlvBIbUvsZ53phKk3e6LGCSVw8CitQ+wptB+opyWLa
 6rTssLqtklJy71Anhx3BASjpwQN7ETAqOI/HrjZQBR2V+70PLd+gCZD/VoCwNQeD8zxZ
 MbvwOFKelJpc3PRsPjZHpL8avTH6Kan9+gpncCjXARODSZz7Aoegnu+Ej3tvY9WQLt1p
 U4lGVM1Cnluz7+xj63Rj9Cv6ROETuYwv5Dd4zsk+MQMdxh6PpCxYqx8Jwt1evLVyslh0
 MddlJNftAcZBW/sVwbgG3vXImxPBO8Z3puhAboSnkHZjsTxjiqMTooegA7iOD+3/wh0Q
 IzIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JpOw/2ow6SAfwsVXu1x01tvRkKpuRz0dItxJUwSvi98=;
 b=UFCClMRsUmJODskHIo2xAaKTKN07lPNWXvHRFR0LtZ58dS+jJOCcDKR3EVqrzQv2K6
 viiwraCuaRQoVM4DHf1rIBJwKbiGfndvOTcCt0cJqXusa5kJc9PZCRKfVhjWKXdAmRnl
 Gm/uaBxt+A7cp0YacH+NqW5tAxC4OyF/vhp14Ti7kCMsbqt3NdM+vIHpwc6/8VKICESm
 QVVy4yX5M47C9invOmzyGJO1XR/yrdtS7c6kp/3NiuLWzy/QSd61krnLwzxVlsw+b9CW
 hpEYVgZKffHooqFQ0psMzgEkHfhYkxJNrSfTpRQGd2OIjo8e8RBVojteu2Aa81Pnt7NR
 zklg==
X-Gm-Message-State: APjAAAU3WPZEErOaQCGSt9lyehT8RclOVsrk/Oa7Pcs9tFROUz8tQTxt
 hI0+EqVmrv6KH9CkCaGOEUE6g0Ycs1ma9oZ7W636ArlC
X-Google-Smtp-Source: APXvYqzEld1RTmfmMl9OBpIGkKDLL5m8ikNuO4z/2fCGu5beJGYblBEoT3Xq80yl1dNHxhfcTEK2g/UEmhpVqayY+GY=
X-Received: by 2002:a05:6830:17c9:: with SMTP id
 p9mr7248897ota.0.1568901370178; 
 Thu, 19 Sep 2019 06:56:10 -0700 (PDT)
MIME-Version: 1.0
References: <CALHv-k--jOYk6t40MwJ2aTsup2unhqVg3r84TFj8zPn9_yy58Q@mail.gmail.com>
In-Reply-To: <CALHv-k--jOYk6t40MwJ2aTsup2unhqVg3r84TFj8zPn9_yy58Q@mail.gmail.com>
Date: Thu, 19 Sep 2019 08:56:00 -0500
Message-ID: <CAGNhwTOPDs2sks8ET4ZsJbgonFC4L-Ggeu3XU=HqQEY3v=Pnpg@mail.gmail.com>
To: Khizar Abbas <engr.khizarabbas14@gmail.com>
Subject: Re: [USRP-users] USRP B210 Error
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7250889898709727708=="
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

--===============7250889898709727708==
Content-Type: multipart/alternative; boundary="000000000000db7bbb0592e8506e"

--000000000000db7bbb0592e8506e
Content-Type: text/plain; charset="UTF-8"

Hi Khizar - Have you tried doing what the error recommends ... executing
"/usr/local/lib/uhd/utils/uhd_images_downloader.py"? It could be that you
just need to download the images for your specific UHD install. Hope this
helps! - MLD

On Thu, Sep 19, 2019 at 4:03 AM Khizar Abbas via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
> i am using two USRP b210 device for my project. My goal is to deploy LTE
> connection . but one of my device is working properly and other one is
> showing error no device found.
> when i used the sudo uhd_usrp_probecommand. its shows error
> UHD Warning:
>     EnvironmentError: IOError: Could not find path for image:
> usrp_b200_fw.hex
>     Using images directory: <no images directory located>
>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
> the below instructions to download the images package.
>     Please run:
>      "/usr/local/lib/uhd/utils/uhd_images_downloader.py"
> Error: LookupError: KeyError: No devices found for ----->
> Empty Device Address
>
> I have already tried many solution from internet but dont get
> success.Please suggest me any proper solution for this error.
>
> Thanks
> Khizar abbas
> Jeju national University SOuth Korea
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens, Mac OS X Programmer

Ettus Research Technical Support

Email: support@ettus.com

Web: http://www.ettus.com

--000000000000db7bbb0592e8506e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Khizar - Have you tried doing what the error recom=
mends ... executing &quot;/usr/local/lib/uhd/utils/uhd_images_downloader.py=
&quot;? It could be that you just need to download the images for your spec=
ific UHD install. Hope this helps! - MLD</div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 19, 2019 at 4:03 AM Khi=
zar Abbas via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>Dear all,</div><div>i am us=
ing two USRP b210 device for my project.
 My goal is to deploy LTE connection . but one of my device is working=20
properly and other one is showing error no device found.</div><div>when i u=
sed the sudo uhd_usrp_probecommand. its shows error <br></div><div>UHD Warn=
ing:<br>=C2=A0 =C2=A0 EnvironmentError: IOError: Could not find path for im=
age: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using images directory: &lt;no image=
s directory located&gt;<br>=C2=A0 =C2=A0 Set the environment variable &#39;=
UHD_IMAGES_DIR&#39; appropriately or follow the below instructions to downl=
oad the images package.<br>=C2=A0 =C2=A0 Please run:<br>=C2=A0 =C2=A0 =C2=
=A0&quot;/usr/local/lib/uhd/utils/uhd_images_downloader.py&quot;<br>Error: =
LookupError: KeyError: No devices found for -----&gt;<br>Empty Device Addre=
ss</div><div><br></div><div>I have already tried many solution from interne=
t but dont get success.Please suggest me any proper solution for this error=
.</div><div><br></div><div>Thanks <br></div><div><span class=3D"gmail-m_-34=
54165688577358496gmail-HOEnZb gmail-m_-3454165688577358496gmail-adL"><font =
color=3D"#888888"><div>Khizar abbas</div><div>Jeju national University SOut=
h Korea</div></font></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Dickens, Mac OS X Progr=
ammer<br><br>Ettus Research Technical Support<br><br>Email: <a href=3D"mail=
to:support@ettus.com" target=3D"_blank">support@ettus.com</a><br><br>Web: <=
a href=3D"http://www.ettus.com" target=3D"_blank">http://www.ettus.com</a><=
/div></div>

--000000000000db7bbb0592e8506e--


--===============7250889898709727708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7250889898709727708==--

