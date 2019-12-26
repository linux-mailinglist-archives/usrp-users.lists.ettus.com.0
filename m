Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 831A612AE76
	for <lists+usrp-users@lfdr.de>; Thu, 26 Dec 2019 21:30:00 +0100 (CET)
Received: from [::1] (port=49066 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ikZlX-0003WI-FA; Thu, 26 Dec 2019 15:29:51 -0500
Received: from mail-qk1-f176.google.com ([209.85.222.176]:39228)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <brent.stapleton@ettus.com>)
 id 1ikZlV-0003Sd-0g
 for usrp-users@lists.ettus.com; Thu, 26 Dec 2019 15:29:49 -0500
Received: by mail-qk1-f176.google.com with SMTP id c16so20155789qko.6
 for <usrp-users@lists.ettus.com>; Thu, 26 Dec 2019 12:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eM6RBmttxAxyJ33D3YcsDoeEixxtCNT94S/3nSw2dGk=;
 b=W7IkDE+quKENWh4qL7ymAy92IS+5ni5xYcVvb0mVK76ayB10W/3JMFaUyiTlOGczLs
 K8GXkrWmaft2nQhNM4b98GoEycTLN67UXVulPwv6fMnmr0Xvqi8SviGNZQDM7fOPg2JJ
 V66dPaQ8hh2Y/wtdJ0elJMe30vs36xlnLFg9cCB38fb+GWHlEovGnrGCkmLrkPbr7F84
 hWrsHwF7bVXOtA4Imy0ItvrYdBtrcOakwlIq524KSw3xLOJBxwy6GjpywhrZIljhOWJb
 hbthhApa5fNSIZMiy7csesmLMLaCKlhu10Shmg1DrbBdg4KDHalqR5qG6qvXAxM9buvp
 eTSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eM6RBmttxAxyJ33D3YcsDoeEixxtCNT94S/3nSw2dGk=;
 b=tgRtuLaB8T3Ic/dmQZOCX8OxIwspvXXg4aW8csV14hnY4Mh4giXTzLL7GV+UGhllYc
 obiuEj57mcWcP4G8azSQZaf8uqc2ZKB7g/FaH/vJQzX848M2G9BispR6/KMyekr2uXAE
 N29x7vpc6AQbncD+xDU5fpHLbttY8s4N3LHflKliLAFy1voDYtL+/IA1mBoUKQU4Wbbx
 T2ln1oaofe16aQkcpS2iDXiDr10i0xi3BuRWRlF2jGEgq4WSnmX+LpSMZCsYfC8aLVNG
 f2MeIrvEiHABTXhEePNjeY4LBwMWWDVJZgeO827a2jXRI4C/pE2QWtK1sUE3nBezpUl/
 M5ng==
X-Gm-Message-State: APjAAAVrlPQI7trV8beVKJZf5RHbl42MNDKdSLjb+5RKkxpNC51OP5Pa
 8aNRWn6ldEMEBzdNmX2KrL+cs6SBFnFERRbqIj1Rgs19
X-Google-Smtp-Source: APXvYqzvBCr6Wg5TxX6GGxh04QxUlKkdmVSUNxyxjW/WrbQm7zU5piEXcnsnkXKrb7dPqOp/4OihGwellLeEyM+AZB4=
X-Received: by 2002:a37:9f41:: with SMTP id i62mr39273293qke.272.1577392148259; 
 Thu, 26 Dec 2019 12:29:08 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnocYvbbZ4r6DV9tzFCSM_3SAmX+V=7L2NtsGvjJ+TMQFQ@mail.gmail.com>
In-Reply-To: <CAL1aUnocYvbbZ4r6DV9tzFCSM_3SAmX+V=7L2NtsGvjJ+TMQFQ@mail.gmail.com>
Date: Thu, 26 Dec 2019 12:28:57 -0800
Message-ID: <CAN1jYK0LzDRWaaBfCMZBv3bZ-2bmH4VJn8a1bH8HtmuiisGEtA@mail.gmail.com>
To: Subu Rama <subu.rama@gmail.com>
Subject: Re: [USRP-users] rc3 URLs for mender update .. incorrect ...
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
From: Brent Stapleton via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brent Stapleton <brent.stapleton@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7558227053722864823=="
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

--===============7558227053722864823==
Content-Type: multipart/alternative; boundary="000000000000ab6234059aa13a7a"

--000000000000ab6234059aa13a7a
Content-Type: text/plain; charset="UTF-8"

Hi Subu,

Looks like we forgot to upload those, sorry about that! They're up now-
just re-run uhd_images_downloader with your desired target, and they should
download.

Thanks,
Brent

On Tue, Dec 24, 2019 at 10:31 AM Subu Rama via USRP-users <
usrp-users@lists.ettus.com> wrote:

> In uhd_images_downloader (and in the corresponding .py file), the
> following URLs exist.
>
> # E320 Filesystems, etc
> e3xx_e320_sdk_default         meta-ettus-v3.15.0.0-rc2
>  e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_sdk_default-v3.15.0.0-rc3.zip
>   0
> e3xx_e320_mender_default      meta-ettus-v3.15.0.0-rc3
> e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_mender_default-v3.15.0.0-rc2.zip
>  0
> e3xx_e320_sdimg_default       meta-ettus-v3.15.0.0-rc3
> e3xx/meta-ettus-v3.15.0.0-rc2/e3xx_e320_sdimg_default-v3.15.0.0-rc3.zip
> 0
>
> However, this results in uhd_images_downloader failing.
>
> gnuradio@nuc-qrc3 /usr/local/bin >> sudo uhd_images_downloader -t mender
> -t e320 --yes
> [INFO] Images destination: /usr/local/share/uhd/images
> [ERROR] Downloader raised an unhandled exception: URL does not exist:
> http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_mender_default-v3.15.0.0-rc3.zip
> You can run this again with the '--verbose' flag to see more information
> If the problem persists, please email the output to: support@ettus.com
>
> Note that http://files.ettus.com/binaries/cache/e3xx/?C=M;O=D does NOT
> yet have the rc3 versions.
>
> I do see :
>
> e3xx_e320_fpga_default-gfde2a94e.zip <http://files.ettus.com/binaries/cache/e3xx/fpga-fde2a94eb/e3xx_e320_fpga_default-gfde2a94e.zip>
>
> in http://files.ettus.com/binaries/cache/e3xx/fpga-fde2a94eb/
>
> I also see the following at https://github.com/EttusResearch/uhd/tree/UHD-3.15.LTS
>
> fpga-src @ fde2a94
> <https://github.com/EttusResearch/fpga/tree/fde2a94eb7231af859653db8caaf777ae2b66199> Prepare
> branch for 3.15.0.0 release
> <https://github.com/EttusResearch/uhd/commit/4e06022c383a78434b054a349130c218540ea6f4> 10
> days ago
>
>
> Overall there seems to be some disconnect between github, files.ettus.com,
> rc2/rc3 confusion etc.
> How do I correct this and get the E320 updated to rc3?
>
> Thank you
> Subu
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ab6234059aa13a7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Subu,<div><br></div><div>Looks like we forgot to upload=
 those, sorry about that! They&#39;re up now- just re-run uhd_images_downlo=
ader with your desired target, and they should download.</div><div><br></di=
v><div>Thanks,</div><div>Brent</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 24, 2019 at 10:31 AM Subu R=
ama via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>In uhd_images_downloader (and in =
the corresponding .py file), the following URLs exist.</div><div><br></div>=
<div># E320 Filesystems, etc<br>e3xx_e320_sdk_default =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 meta-ettus-v3.15.0.0-rc2 =C2=A0e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e3=
20_sdk_default-v3.15.0.0-rc3.zip =C2=A0 =C2=A0 =C2=A0 0<br>e3xx_e320_mender=
_default =C2=A0 =C2=A0 =C2=A0meta-ettus-v3.15.0.0-rc3=C2=A0 e3xx/meta-ettus=
-v3.15.0.0-rc3/e3xx_e320_mender_default-v3.15.0.0-rc2.zip =C2=A0 =C2=A00<br=
>e3xx_e320_sdimg_default =C2=A0 =C2=A0 =C2=A0 meta-ettus-v3.15.0.0-rc3=C2=
=A0 e3xx/meta-ettus-v3.15.0.0-rc2/e3xx_e320_sdimg_default-v3.15.0.0-rc3.zip=
 =C2=A0 =C2=A0 0</div><div><br></div><div>However, this results in uhd_imag=
es_downloader failing.</div><div><br></div><div>gnuradio@nuc-qrc3 /usr/loca=
l/bin &gt;&gt; sudo uhd_images_downloader -t mender -t e320 --yes<br>[INFO]=
 Images destination: /usr/local/share/uhd/images<br>[ERROR] Downloader rais=
ed an unhandled exception: URL does not exist: <a href=3D"http://files.ettu=
s.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_mender_default=
-v3.15.0.0-rc3.zip" target=3D"_blank">http://files.ettus.com/binaries/cache=
/e3xx/meta-ettus-v3.15.0.0-rc3/e3xx_e320_mender_default-v3.15.0.0-rc3.zip</=
a><br>You can run this again with the &#39;--verbose&#39; flag to see more =
information<br>If the problem persists, please email the output to: <a href=
=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a></div>=
<div><br></div><div>Note that <a href=3D"http://files.ettus.com/binaries/ca=
che/e3xx/?C=3DM;O=3DD" target=3D"_blank">http://files.ettus.com/binaries/ca=
che/e3xx/?C=3DM;O=3DD</a> does NOT yet have the rc3 versions.</div><div><br=
></div><div>I do see : <br><pre><a href=3D"http://files.ettus.com/binaries/=
cache/e3xx/fpga-fde2a94eb/e3xx_e320_fpga_default-gfde2a94e.zip" target=3D"_=
blank">e3xx_e320_fpga_default-gfde2a94e.zip</a> <br><br></pre><pre>in <a hr=
ef=3D"http://files.ettus.com/binaries/cache/e3xx/fpga-fde2a94eb/" target=3D=
"_blank">http://files.ettus.com/binaries/cache/e3xx/fpga-fde2a94eb/</a><br>=
<br></pre><pre>I also see the following at <a href=3D"https://github.com/Et=
tusResearch/uhd/tree/UHD-3.15.LTS" target=3D"_blank">https://github.com/Ett=
usResearch/uhd/tree/UHD-3.15.LTS</a><br></pre><table><tbody><tr><td><span><=
span title=3D"fpga-src @ fde2a94"><a href=3D"https://github.com/EttusResear=
ch/fpga/tree/fde2a94eb7231af859653db8caaf777ae2b66199" target=3D"_blank">fp=
ga-src @ fde2a94</a></span></span>
          </td>
          <td>
            <span>
                  <a title=3D"Prepare branch for 3.15.0.0 release

- Updated CHANGELOG
- Udated Debian-related files
- Updated images package

Signed-off-by: Michael West &lt;michael.west@ettus.com&gt;" href=3D"https:/=
/github.com/EttusResearch/uhd/commit/4e06022c383a78434b054a349130c218540ea6=
f4" target=3D"_blank">Prepare branch for 3.15.0.0 release</a>
            </span>
          </td>
          <td>
            <span><span datetime=3D"2019-12-15T06:27:26Z" title=3D"Dec 15, =
2019, 6:27 AM UTC">10 days ago<br><br><br>Overall there seems to be some di=
sconnect between github, <a href=3D"http://files.ettus.com" target=3D"_blan=
k">files.ettus.com</a>, rc2/rc3 confusion etc.<br>How do I correct this and=
 get the E320 updated to rc3?<br><br>Thank you<br>Subu<br><br><br></span></=
span></td></tr></tbody></table></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ab6234059aa13a7a--


--===============7558227053722864823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7558227053722864823==--

