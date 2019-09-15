Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A37EB2D74
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 02:34:49 +0200 (CEST)
Received: from [::1] (port=44338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9IV5-0007mx-1D; Sat, 14 Sep 2019 20:34:47 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:38894)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1i9IV1-0007id-HU
 for usrp-users@lists.ettus.com; Sat, 14 Sep 2019 20:34:43 -0400
Received: by mail-ot1-f52.google.com with SMTP id h17so28844715otn.5
 for <usrp-users@lists.ettus.com>; Sat, 14 Sep 2019 17:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Mknebt+oO+P4UGfyTC7EepdxBZq00RSVPzgaFHftzk=;
 b=fzTq9KZ+5LtSmAjL3MUVeA5bFuPLByNFctegD2TXN+uZl9gMgwHyFNKIu/xCRzKjNf
 gCjiOHAMC7iE49dzEPp96gwGlZ93g7z7DOc1+DMstBICjw1A7mX2xAOvY67dvYlS8Gkv
 pXPHUCQF6rRJAnJrK1JG6sFzjdoeq0oIBib7rR/C9Qao5ffj3BiyQArzmCbgVUSdcFP8
 NyPZFU1TKyucxq9frDBm1nsXSP+XBEIwIU48J+ByWzxrZw16PpbTjSc85Pgz+5IXFss3
 VA+jY1+dYrxYpNjUOIStie1WxkzKc4rrjx29R19PLZSHxqoxRjIx3PYPrCj7300PmnYA
 mj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Mknebt+oO+P4UGfyTC7EepdxBZq00RSVPzgaFHftzk=;
 b=NxNWgsQg3xCJe9I8IsXIS/jV/V+mDhI7ZlFj4C5oUfHYa4+UMRVrUv4aTaWSDmk1dH
 CJt36aXW6ODXQeZXlt+sEjkUtmNesNEPJntAYvPGjBydKCkvO5UNJ0MEAFCcSfvbbHjU
 9G6vmlo5qONr37flGvaLmvN5+K/be34Z+wVoxVUeDTqCZIpOxn1KGcLVpeWb8GIpWP94
 YbzgS+8SCeWErEILjN+MphMNuOP2C6MRyxdwJ8RTjgR6fuM0TytZ6jwltDy661qmfkq3
 2S14gVx7+NbWxmxyUAlv2Lpa5bHn0JZuNWgx3Xzic89twuP/tHAsdnbdBIJJC4CCO+E1
 ljtQ==
X-Gm-Message-State: APjAAAVfa3ffsBd2Xei8cTsqEjXR/L93HrDv2tb+1M0AFyovYCanDnWc
 AfMyWf+49eSy2ZhN60IUw/BTh7VtJgpdcSj/zEV/buE/
X-Google-Smtp-Source: APXvYqw7qmbhRwLDdTsXtekvsSomawvVcPnA8uKUKTdJ5tbwKyVBflXTS0WFSOSX1ktAcRnmqJBHX3EVGHJI7il56A8=
X-Received: by 2002:a9d:5784:: with SMTP id q4mr7107169oth.107.1568507642699; 
 Sat, 14 Sep 2019 17:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
 <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
 <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
 <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
 <CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com>
 <202c637b-1565-5a21-9f76-91a648e211c6@comcast.net>
 <CADk-HHBWC_tzgWBphGjhzmEekSQbo+=WDY+HJ5HumoQHEaQ+Tw@mail.gmail.com>
 <CAGNhwTP4UsJWSOBH3TpRRZpx9pgpLgZ_WCq+4uTsG5QxFm9wHQ@mail.gmail.com>
 <CADk-HHAHE1QBC80GLFwzJja8mPe4o0Xz3mUE4Lrav3qFtjDdNw@mail.gmail.com>
 <3bc93d9e-b80b-5968-b3f3-79bab2602d80@comcast.net>
 <CADk-HHDZ_FfsVfPBBWTm3HkNwS8jX4BfXS=JEm9Pb4AAWDUpeg@mail.gmail.com>
 <CAGNhwTP+K3N0u4g-VYTWN44AATO8qspX5tTTQmy75EFbGNhZfw@mail.gmail.com>
 <CADk-HHBEqexqb4HA_p9fL-=EyvqBRyNKf4EuTBie4y1nSiwafA@mail.gmail.com>
In-Reply-To: <CADk-HHBEqexqb4HA_p9fL-=EyvqBRyNKf4EuTBie4y1nSiwafA@mail.gmail.com>
Date: Sat, 14 Sep 2019 20:33:52 -0400
Message-ID: <CAGNhwTNDN4mNn_VBAtZFtHFFOoo1inGzKWk6EDkOC9KrxF7sQg@mail.gmail.com>
To: "Dr. Rajesh Tiwari" <rajeshgps@gmail.com>
Subject: Re: [USRP-users] (no subject)
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
Content-Type: multipart/mixed; boundary="===============4850274543330584261=="
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

--===============4850274543330584261==
Content-Type: multipart/alternative; boundary="000000000000defda905928ca421"

--000000000000defda905928ca421
Content-Type: text/plain; charset="UTF-8"

Hi Rajesh - Sorry for the delay. Which branch / commit of gr-ieee802-11 are
you using? The version of GR is pretty old (3.7.6), and there's a
reasonable chance it's not compatible with the version of gr-ieee802-11 ...
but it could be something else too. Otherwise, yes, the settings you list
look fine. - MLD

On Tue, Sep 10, 2019 at 12:04 AM Dr. Rajesh Tiwari <rajeshgps@gmail.com>
wrote:

> Hi Michael,
>
> Many thanks for all your answers, it really help as always. If I have
> understood correctly, here is the summary:
>
>    - GRC is in default, i.e. /usr/local
>    - PYTHONPATH /home/configure/usr/lib/python2.7/site-packages (this
>    also means that Python is 27)
>    - Using Python command, import ieee802_11
>    - screenshot attached shows some import error in symbol
>
> I tried using export command and sudo ldconfig but nothing works, any
> advise please.
> Regards
> Rajesh
>

--000000000000defda905928ca421
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Rajesh - Sorry for the delay. Whi=
ch branch / commit of gr-ieee802-11 are you using? The version of GR is pre=
tty old (3.7.6), and there&#39;s a reasonable=C2=A0chance it&#39;s not comp=
atible with the version of=C2=A0gr-ieee802-11 ... but it could be something=
 else too. Otherwise, yes, the settings you list look fine. - MLD</div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Se=
p 10, 2019 at 12:04 AM Dr. Rajesh Tiwari &lt;<a href=3D"mailto:rajeshgps@gm=
ail.com">rajeshgps@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Michael,</div><div><br=
></div><div>Many thanks for all your answers, it really help as always. If =
I have understood correctly, here is the summary:</div><div><ul><li>GRC is =
in default, i.e. /usr/local</li><li>PYTHONPATH /home/configure/usr/lib/pyth=
on2.7/site-packages (this also means that Python is 27)<br></li><li><span><=
/span>Using Python command, import ieee802_11
=09
=09


</li><li>screenshot attached shows some import error in symbol</li></ul><di=
v>I tried using export command and sudo ldconfig but nothing works, any adv=
ise please. <br></div><div>Regards</div><div>Rajesh</div></div></div></bloc=
kquote></div><div dir=3D"ltr" class=3D"gmail_signature"></div></div>

--000000000000defda905928ca421--


--===============4850274543330584261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4850274543330584261==--

