Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A82322115
	for <lists+usrp-users@lfdr.de>; Mon, 22 Feb 2021 22:03:57 +0100 (CET)
Received: from [::1] (port=60040 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEIMy-0002Xt-LZ; Mon, 22 Feb 2021 16:03:52 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:44653)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1lEIMu-0002Rm-UA
 for usrp-users@lists.ettus.com; Mon, 22 Feb 2021 16:03:48 -0500
Received: by mail-ot1-f44.google.com with SMTP id f33so161017otf.11
 for <usrp-users@lists.ettus.com>; Mon, 22 Feb 2021 13:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i5W//VT4htv4ljarKcjlV/75zLh7TP94CS6AsgsxZ6A=;
 b=aBYZ6TgJ+OOHK8h3VADwlKq8QfdZlK1UIu1Xh1dK7KvCq1/ujYhPVAPRSmfoHUEuXP
 P6mWse1DRyWyMamxnQFUGc39bROOaVXp8Zg+e0TKXb0mblBRDuzfW+DdfDHRKN8ivsOc
 p5mc77+mTmGdurMLlOQg2NYk0knjKgpj/dbwVbwXwMrjVsUEe+gUr7NM2B9KNiXmgpYB
 wICzETkx3Zyq5pD7jh5Uf0TyIcTVUdRH/8j/z0Sw8ZLWajM3nMD+DFvspf4zLE5pD5gY
 +WhvOZPYtpfYL9hDwWWYIiPnLzjjNZTHJJuj8u7pgjfPK6YfghqC3IfWqXGB4fQfp119
 iXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i5W//VT4htv4ljarKcjlV/75zLh7TP94CS6AsgsxZ6A=;
 b=KHcmWHJrXESuY9OjwRnzXGTVMjC2hXZG0SiJPQ8xuVmX22JokB/gnzb0xpADyR5bUL
 2w/ueaIqJIICsMkRP8ChU1Nf3fkfcYQzKvT6ZhBmS29tW3Oe2UTO+6JrVY0lWdiIj9kA
 BsSb192oH2/4TYi657UI2eA97Q2iEQcVBnL9xySHIpaJYU67SR/c6mwk2xPRkzUMAeMU
 FPZpd/vo8go3iYZTHTh3Kh7x4iamtNO1un3mwPDivFce/1lKbMzzpz4zp2gztV+NYu7l
 KVfRDgtg/xhK+Y3qImoYOX3AXS3BRYBRK07727EONxWgAaI+/YipDw7h0SGaZygCEtt2
 cpzg==
X-Gm-Message-State: AOAM531b4ag42u23G+7HeHXZm8DJCekbUoPS5jHbJya+bjVsvMnxzQOT
 ptdbX0q/ZEx+FWFdKjEiMQk04b0y9wWNDWrNfsxHh+iH+ubWZfGK
X-Google-Smtp-Source: ABdhPJxCRJ8gTslyB/tADDb5ll3NNdMLmLybpbHXrciXahEHSRB7tGPI26rQgLNiXmAg/KGcTBgotabMcgtYqpYPAmc=
X-Received: by 2002:a9d:6b99:: with SMTP id b25mr9391391otq.30.1614027788151; 
 Mon, 22 Feb 2021 13:03:08 -0800 (PST)
MIME-Version: 1.0
References: <1addbb88-269a-0928-1fd3-415daa295a61.ref@verizon.net>
 <1addbb88-269a-0928-1fd3-415daa295a61@verizon.net>
 <CAAg5+MxyvT7GF_=bXpkMeAcRaQ7tLhPeU1aDrAuGFLZGwwuHdQ@mail.gmail.com>
 <1e3d0463-06ae-12cd-a603-7ba21f79fe36@verizon.net>
 <CAAg5+MyHqcPAnW50TBx3xSrvT6Lv=7dD87KghV0_tGFGbqu1_w@mail.gmail.com>
In-Reply-To: <CAAg5+MyHqcPAnW50TBx3xSrvT6Lv=7dD87KghV0_tGFGbqu1_w@mail.gmail.com>
Date: Mon, 22 Feb 2021 15:02:57 -0600
Message-ID: <CAFche=gRKYFtYKMxqn84Q70oBCWHTaTftzGvFFP=L-H7tZbXfA@mail.gmail.com>
To: Aaron Rossetto <aaron.rossetto@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============0234834518524298586=="
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

--===============0234834518524298586==
Content-Type: multipart/alternative; boundary="000000000000f87eac05bbf320d9"

--000000000000f87eac05bbf320d9
Content-Type: text/plain; charset="UTF-8"

Just to clarify the issue, ce was correct for other targets, it just
doesn't work on E-series, which is an oversight in the getting started
guide. Changing it to rfnoc_chdr is a good solution for E310.

Thanks,

Wade

On Thu, Feb 18, 2021 at 7:54 AM Aaron Rossetto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On Thu, Feb 18, 2021 at 7:28 AM Mike via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> That is a typo in AN-400 that should probably be fixed.
>>
>
> Indeed it is! Good catch, and my apologies for the inconvenience. Glad you
> found the resolution.
>
> I've filed an issue on GitHub to update the application note to fix the
> typo: https://github.com/EttusResearch/uhd/issues/416
>
> It's obvious now but first time through it tripped me up.
>>
>
> Even now, I'd hesitate to call it obvious. :)
>
> Best regards,
> Aaron
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f87eac05bbf320d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just to clarify the issue, ce was correct for other t=
argets, it just doesn&#39;t work on E-series, which is an oversight in the =
getting started guide. Changing it to=20
      rfnoc_chdr is a good solution for E310.</div><div><br></div><div>Than=
ks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021 at 7:54 AM =
Aaron Rossetto via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021 at 7:28 AM Mik=
e via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><div dir=3D"ltr"=
 class=3D"gmail_attr"><br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
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
6" target=3D"_blank">https://github.com/EttusResearch/uhd/issues/416</a><br=
><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div>It&#=
39;s obvious now but first time through
      it tripped me up.</div></div></blockquote><div><br></div><div style=
=3D"font-family:arial,sans-serif" class=3D"gmail_default">Even now, I&#39;d=
 hesitate to call it obvious. :)</div><div style=3D"font-family:arial,sans-=
serif" class=3D"gmail_default"><br></div><div style=3D"font-family:arial,sa=
ns-serif" class=3D"gmail_default">Best regards,<br></div><div style=3D"font=
-family:arial,sans-serif" class=3D"gmail_default">Aaron</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f87eac05bbf320d9--


--===============0234834518524298586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0234834518524298586==--

