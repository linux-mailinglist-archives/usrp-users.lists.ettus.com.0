Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EDD5A73C
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2019 00:58:02 +0200 (CEST)
Received: from [::1] (port=51340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgzoe-0002YE-Pk; Fri, 28 Jun 2019 18:58:00 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:45366)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hgzoa-0002Qn-UC
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 18:57:56 -0400
Received: by mail-io1-f49.google.com with SMTP id e3so15810777ioc.12
 for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2019 15:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n6wy2m+6RFFUgU5ltF0P18KPc+b2ZobyzAtYTYQZZSg=;
 b=nlnLWFWQrxbmot7W7218f+Mh/1aKk36auR9oUKgJhhgIS717GWEExzF4nNaIJrwv5i
 RrVB/SE9iQF6YiGPa7nUCxTheF3k4yspP19VKVv66iT+sNjZ0GOcF2s1u0iVO03S+wX5
 6C+7r8H1HVBH5tIKQ+9M1JBgaFLNBVYwVicbv/uU/gPSvLDWh6hD+QZKkPxPO8tvXOaQ
 tWJACnrk3aIvM+zekdm2RCWp3/eoaOaFY2CNTs7WmqExg/l6mUI8Dz9vteeIUuJ1U2HC
 Co6570UyZr8s4hW0wT87g1DtuR6dNiaY9CRbBjCD5n4UHcUDtOMGB/6yscjJLczyma1L
 0PXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n6wy2m+6RFFUgU5ltF0P18KPc+b2ZobyzAtYTYQZZSg=;
 b=dq1dnKuPSshOurO6BChr+a3Ruv07ekQk2Z8EKf2oS7x0ZCCO4oN95pyOesVDg0P2x9
 0U4Zxm7ZWqLdnz8tpsQEHiUirLml6PnHrOlRTyNTmiSkTZ7dycjI65Fm8PRzHILXjmBc
 AJ6F8cpXgbYmeLZaheHex5mWXEEYWH5kxbwMRQW6psDklgrwK2SEQe707bhObKTBvL/j
 T8XTVIlgnrt31iVZYgq7UyM5IeGqu82zn6pg/+O0PLMgaFGjSE7+jrMa+SLuqjgLv4v/
 iprmRI47qyQ6MK3Allx+rniTH3M+m5z8bGAB8KugL1Uml2u+y5dkFxknICB1x1ZElIx0
 VMiw==
X-Gm-Message-State: APjAAAWx975EQrNJRoaV2I42e28zUvqC3p7XjW/pdl6SClRPaqRwFK1K
 DvyPrQorRGruGsMcumQ7oimKb9hXS+jgtvAgeFOrpA==
X-Google-Smtp-Source: APXvYqwFbWz/n2WNHDHkRI2dffcuULDwUsMNB6WBxdsqlZGdF4DEFWF/KEjC4s+uZos/wg8WZq157/Yun9cTAZaL2tk=
X-Received: by 2002:a5e:c803:: with SMTP id y3mr5404511iol.308.1561762636111; 
 Fri, 28 Jun 2019 15:57:16 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR04MB5222C69E5980F3B69F765129DFFC0@AM6PR04MB5222.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB5222C69E5980F3B69F765129DFFC0@AM6PR04MB5222.eurprd04.prod.outlook.com>
Date: Fri, 28 Jun 2019 15:57:05 -0700
Message-ID: <CAKJyDk+TqOWy93b8a46-tynUHMuxi=FOmKxfDDY7akhvMJkiLw@mail.gmail.com>
To: Andrew Thommesen <andrewjohn83@outlook.com>
Subject: Re: [USRP-users] UHD Version
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0319085326451322059=="
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

--===============0319085326451322059==
Content-Type: multipart/alternative; boundary="0000000000002637dc058c6a330a"

--0000000000002637dc058c6a330a
Content-Type: text/plain; charset="UTF-8"

After cloning the gnuradio repo, you can edit this file:
https://github.com/gnuradio/gr-recipes/blob/master/uhd.lwr

On Fri, Jun 28, 2019 at 3:39 PM Andrew Thommesen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> When installing rfnoc using pybombs is it possible to specify the version
> of UHD that you want to install? If so, how?
>
> Thanks,
>
> Andy
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002637dc058c6a330a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After cloning the gnuradio repo, you can edit this file:=
=C2=A0<a href=3D"https://github.com/gnuradio/gr-recipes/blob/master/uhd.lwr=
">https://github.com/gnuradio/gr-recipes/blob/master/uhd.lwr</a></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun=
 28, 2019 at 3:39 PM Andrew Thommesen via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
When installing rfnoc using pybombs is it possible to specify the version o=
f UHD that you want to install? If so, how?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Andy</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-8013295402690349942Signature">
<div id=3D"gmail-m_-8013295402690349942divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255);font-family:Ca=
libri,Arial,Helvetica,sans-serif">
<br>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002637dc058c6a330a--


--===============0319085326451322059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0319085326451322059==--

