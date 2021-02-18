Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF89231EA9B
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 14:54:45 +0100 (CET)
Received: from [::1] (port=43714 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCjlT-00066k-Mc; Thu, 18 Feb 2021 08:54:43 -0500
Received: from mail-ej1-f54.google.com ([209.85.218.54]:46794)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1lCjlP-0005xm-Qy
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 08:54:39 -0500
Received: by mail-ej1-f54.google.com with SMTP id ly28so5554253ejb.13
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 05:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=VTSaxE4wD8WpP1w5N1YZzfAWt9/mTkL+Bjs+1MDCkY0=;
 b=yu8b4ECTqTFrv6oXSn0Mz5E1JxVNWrAJNYZiEVRjS4klimZdIShCYzrD2n0wwVY9ui
 xETy/xuwVW2Ohh0F+uPSSzGlXFGtb6MjANAgtX1rHnugnp2JarQrCvGFTHExn/KvKhIP
 FSQYp8ZJ61hXt8N556uaUhoFfkXq1DpvMX/NHdZ6a6x+JnRRCNoniejWdgXA5pXLHCnk
 kIASWWwedRnrFacD07sTlicFwsY2WV1vk3st2w4cNhfJbvQ16BzhP1BhmatMFO650exY
 mcNbm72Qqb5kOOPu0qcOnWpc1w6VX2xju8i+dzw+QE/IfelUKkBi817oCGOeApzLnM5r
 rvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=VTSaxE4wD8WpP1w5N1YZzfAWt9/mTkL+Bjs+1MDCkY0=;
 b=MqFBi8gSbO4y3YCK9A+vnZBE9zEMy4dl1Me9Uv9SBQARexr1/WcR080gqkbpBxT8cU
 6fSWIi7uu8/oi96/Ujpvr97HvqjH82fnNElM2osr6Ay3xBUYfz+3GWaJRr43EEkpe8UD
 CH4zXgI05D5LrfxwylWiml92k6GfxTOhxc9GyarnrB4kGZwHXGCG6WXwxAvVDS9jRgP6
 5hk0zvK+9NiGvPWjGQwq15XBnEaLXLh940/KZIDdixQE5VSPRWYNROj49yKVm8t6xfuq
 qK3HMGyfoD2Uz9AHjBZ0NhfpXXd2FxiD11hEdc6kgYlOJbo8OHze3xbnjVvSY+LjahSw
 YVWA==
X-Gm-Message-State: AOAM532f7zT9jrFDoKyHTMB+Vjd4j8FdkR4NldkmnMIgzSnZlPOQDFF/
 Ih13GSwnKjaxv9k6EMTFU/wsfsTRrq7IwbtgjfMSK40Xn5IjKLS5
X-Google-Smtp-Source: ABdhPJyHLd8XnoKMyWrJuRHq0JzO5s1bMZRKO9niKKgX4XE2BK1JDwFIjTeWsqAwWp/YzhFTUQV/TZYiQ9yDvrHNkXg=
X-Received: by 2002:a17:906:d19b:: with SMTP id
 c27mr4141807ejz.234.1613656438739; 
 Thu, 18 Feb 2021 05:53:58 -0800 (PST)
MIME-Version: 1.0
References: <1addbb88-269a-0928-1fd3-415daa295a61.ref@verizon.net>
 <1addbb88-269a-0928-1fd3-415daa295a61@verizon.net>
 <CAAg5+MxyvT7GF_=bXpkMeAcRaQ7tLhPeU1aDrAuGFLZGwwuHdQ@mail.gmail.com>
 <1e3d0463-06ae-12cd-a603-7ba21f79fe36@verizon.net>
In-Reply-To: <1e3d0463-06ae-12cd-a603-7ba21f79fe36@verizon.net>
Date: Thu, 18 Feb 2021 07:53:47 -0600
Message-ID: <CAAg5+MyHqcPAnW50TBx3xSrvT6Lv=7dD87KghV0_tGFGbqu1_w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] rfnoc_image_builder error with clock domain
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
Content-Type: multipart/mixed; boundary="===============6654831346463625107=="
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

--===============6654831346463625107==
Content-Type: multipart/alternative; boundary="000000000000d228d905bb9caa3e"

--000000000000d228d905bb9caa3e
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 18, 2021 at 7:28 AM Mike via USRP-users <
usrp-users@lists.ettus.com> wrote:

That is a typo in AN-400 that should probably be fixed.
>

Indeed it is! Good catch, and my apologies for the inconvenience. Glad you
found the resolution.

I've filed an issue on GitHub to update the application note to fix the
typo: https://github.com/EttusResearch/uhd/issues/416

It's obvious now but first time through it tripped me up.
>

Even now, I'd hesitate to call it obvious. :)

Best regards,
Aaron

--000000000000d228d905bb9caa3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Feb 18, 2021 at 7:28 AM Mike via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
</div><div dir=3D"ltr" class=3D"gmail_attr"><br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>That is a typo in AN-400 that
      should probably be fixed.<br></div></blockquote><div><br></div><div s=
tyle=3D"font-family:arial,sans-serif" class=3D"gmail_default">Indeed it is!=
 Good catch, and my apologies for the inconvenience. Glad you found the res=
olution.</div><div style=3D"font-family:arial,sans-serif" class=3D"gmail_de=
fault"><br></div><div style=3D"font-family:arial,sans-serif" class=3D"gmail=
_default"> I&#39;ve filed an issue on GitHub to update the application note=
 to fix the typo: <a href=3D"https://github.com/EttusResearch/uhd/issues/41=
6">https://github.com/EttusResearch/uhd/issues/416</a><br><br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div><div>It&#39;s obvious now b=
ut first time through
      it tripped me up.</div></div></blockquote><div><br></div><div style=
=3D"font-family:arial,sans-serif" class=3D"gmail_default">Even now, I&#39;d=
 hesitate to call it obvious. :)</div><div style=3D"font-family:arial,sans-=
serif" class=3D"gmail_default"><br></div><div style=3D"font-family:arial,sa=
ns-serif" class=3D"gmail_default">Best regards,<br></div><div style=3D"font=
-family:arial,sans-serif" class=3D"gmail_default">Aaron</div></div></div>

--000000000000d228d905bb9caa3e--


--===============6654831346463625107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6654831346463625107==--

