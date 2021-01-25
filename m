Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ED130235C
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 10:46:48 +0100 (CET)
Received: from [::1] (port=58824 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l3ySK-0007Gy-Kv; Mon, 25 Jan 2021 04:46:44 -0500
Received: from mail-ej1-f42.google.com ([209.85.218.42]:37874)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1l3ySG-0007AY-C4
 for usrp-users@lists.ettus.com; Mon, 25 Jan 2021 04:46:40 -0500
Received: by mail-ej1-f42.google.com with SMTP id kg20so16591089ejc.4
 for <usrp-users@lists.ettus.com>; Mon, 25 Jan 2021 01:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=+2596QveTL44HESyxMXkiXc4ubdqR5sE/wXuaHUn/vo=;
 b=YJrzqcVah1STd6Ez34ziSKRVvTusPIC7eX0BvS8ZnRsr45KMKUsYCwgpNyylPHTgdE
 lmDwICC2v06604W2Gn+gFERVutK6vRyCb7pB6fmPPTolryVAJC4XAfgO+d0KQazCgmuf
 y/aJ/r4Y7UJg+fqFeWRhsm1tIgFizmPSEGHZpS1ABndVpJFzgx/pyEBJW/TqVlpmRWOV
 c8iXLvk2pR0ZWCJI2o4Jm7spT+5+0mDnrb3d/+RAdDsxp7WSCT2PfKv5eZx1wQpLXmub
 HtGSJtmGA57LNKFsMoJs81mzidLFLBlOfvDIHvsAMDbkryhQqb30OynDu0JFAm4NYlxb
 dsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=+2596QveTL44HESyxMXkiXc4ubdqR5sE/wXuaHUn/vo=;
 b=jlWW8OwbEJ8aHIcFp/j6A9tVGa6jJAUC7EvkC3QyEvnIIWNvayoD+5k0qMH0Z+1EBD
 jGSrPlOvjF0JlFStILl36rkrihSAJtQeYqK+EivdeMXN7kTOxmkSVI6DZjZq6jKxDpha
 LC0A6Za7vel3mefctOVvAeeQjJbifMda1wqz6RxXxvYYnbQMV4Q/JedFLs8q8B8Rhwss
 VtZKORde9slA9YOgDXwwKlCpg5FuyBZWubILvDsLtgfDTmP3aVunaH7aGPbRycTAvBNQ
 xy3rWwGSLie+e/jBZr4CAIV9OtjSF0lZKDFnAL4CEVrpnmN7cDQ0bhcUuDBcxHoX8sGV
 EwPg==
X-Gm-Message-State: AOAM533qXj53i6m0zMIsWm+iBCQIftQqdGXIZ1DK96LNgC25UiFkp9Ow
 XvubFKezlet1G4u9KK6JM6ZQQp5UarFrh/iyi8m2OGmdm8gdLKAJBtE=
X-Received: by 2002:a17:906:af41:: with SMTP id
 ly1mt103607ejb.491.1611567959173; 
 Mon, 25 Jan 2021 01:45:59 -0800 (PST)
MIME-Version: 1.0
References: <600e5efe.1c69fb81.dd754.3b61SMTPIN_ADDED_BROKEN@mx.google.com>
In-Reply-To: <600e5efe.1c69fb81.dd754.3b61SMTPIN_ADDED_BROKEN@mx.google.com>
Date: Mon, 25 Jan 2021 10:45:48 +0100
Message-ID: <CAFOi1A6rO-k=2ZLGdf_fW6Hikvy+E72HVLTMfO4-+A86HU2MtQ@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: Re: [USRP-users] Cross compile gnuradio in E312 error
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="===============8550269718047820685=="
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

--===============8550269718047820685==
Content-Type: multipart/alternative; boundary="000000000000be59c705b9b667ae"

--000000000000be59c705b9b667ae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

you didn't paste an error message.

--M

On Mon, Jan 25, 2021 at 7:02 AM --- via GNU Radio, the Free & Open-Source
Toolkit for Software Radio <discuss-gnuradio@gnu.org> wrote:

> Dear friends:
>      I'm installing rfnoc on E312, when I cross compile gnu radio, I
> execute this command=EF=BC=9Acmake -Wno-dev
> -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cro=
ss.cmake
> -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF
> -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/u=
sr ../
>
>  It prompts the following error=EF=BC=9A
> zcm@zcm-XPS-8500:~/rfnoc/src/gnuradio/build-arm$ cmake -Wno-dev
> -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cro=
ss.cmake
> -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF
> -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/u=
sr ../
> -- Build type not specified: defaulting to release.
> -- Build type set to Release.
> -- Extracting version information from git describe...
> -- Compiler Version: arm-oe-linux-gnueabi-gcc (GCC) 4.9.2
> Copyright (C) 2014 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions. There is NO
> warranty; not even for
>

--000000000000be59c705b9b667ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>you didn&#39;t paste an =
error message.</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 25, 2021=
 at 7:02 AM --- via GNU Radio, the Free &amp; Open-Source Toolkit for Softw=
are Radio &lt;<a href=3D"mailto:discuss-gnuradio@gnu.org">discuss-gnuradio@=
gnu.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div>Dear friends:</div><div>=C2=A0 =C2=A0 =C2=A0I&#39;m installing =
rfnoc on E312, when I cross compile gnu radio,  I execute this command=EF=
=BC=9Acmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/To=
olchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DO=
FF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCM=
AKE_INSTALL_PREFIX=3D/usr ../</div><div><br></div><div>=C2=A0It prompts the=
 following error=EF=BC=9A</div><div>zcm@zcm-XPS-8500:~/rfnoc/src/gnuradio/b=
uild-arm$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmak=
e/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=
=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF =
-DCMAKE_INSTALL_PREFIX=3D/usr ../</div><div>-- Build type not specified: de=
faulting to release.</div><div>-- Build type set to Release.</div><div>-- E=
xtracting version information from git describe...</div><div>-- Compiler Ve=
rsion: arm-oe-linux-gnueabi-gcc (GCC) 4.9.2</div><div>Copyright (C) 2014 Fr=
ee Software Foundation, Inc.</div><div>This is free software; see the sourc=
e for copying conditions.  There is NO</div><div>warranty; not even for</di=
v><div></div></blockquote></div>

--000000000000be59c705b9b667ae--


--===============8550269718047820685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8550269718047820685==--

