Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9AA25B83C
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 03:22:06 +0200 (CEST)
Received: from [::1] (port=49002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDdwy-0001dn-05; Wed, 02 Sep 2020 21:22:04 -0400
Received: from mail-lf1-f51.google.com ([209.85.167.51]:44454)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1kDdwt-0001Wx-3U
 for usrp-users@lists.ettus.com; Wed, 02 Sep 2020 21:21:59 -0400
Received: by mail-lf1-f51.google.com with SMTP id 12so846672lfb.11
 for <usrp-users@lists.ettus.com>; Wed, 02 Sep 2020 18:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g7qzRQX5GQG6MAQ77d+ewBFhv4V/gBZt75nO81wqh6c=;
 b=wYF8BZlxnN8Ch+9eLGtJi1/0zY2I+KXfP43/J480auNC9y3AuM/+zUg0aubga9KmyG
 hIuOgXhP3+CU+Jv9JgSygTTRsnRiQDpco3mRqIEljeSvMkReQBew+wg7DY3vyGo6exiE
 O4c5k3dQhz6o/GsuN7RQGt7g+iiA89R5A9Mar3GkaRsqwowl4+VP1OsLk3hq1PwKzPf/
 +kdnQDDFCiJQMLfKMaCN7pBCddL5dY9wqrgymi67Qbx81nIfDaC/NZ9wEK5vAo39d9A3
 hMB1yIe1jdzHt7xQi5fbK18TXy8BYqQUnY662A/nZKC3b6Jy9/6GazcVeo+EaZHnbfdX
 rMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g7qzRQX5GQG6MAQ77d+ewBFhv4V/gBZt75nO81wqh6c=;
 b=TyZHcOsu007s6K7hZdo0g6Z9ksrkQzq+DO4cV3uY+Jqv5qhtRKfEZlGi1Bn+CnRic4
 ZwtA7OFnzqEaawPMKu2Hg8jUqd+vWi8GZNQghiGiyDIKPBlQpUCFhRbhif7FslGPp/8d
 Joei8tHOMq4FKKAq1xMrxTY+LwNJ3VTCTnTXGEdV1C3GAFKiepJL5z6cyQX76KI03xUF
 dho0dDUJNsGMlz81U+eO8TEqI6/DASTVQAlsXp2iyxwDobQ7WyPVruADfqNz8J9OOov9
 lKvDVU85ITEcYuaGEyfx7RiqP+gvzF+Jwh0NLP6FC2TM0geGUBrT7TTeUxqLDy7xKgNL
 gp6A==
X-Gm-Message-State: AOAM531SuhejliJjTIbamkx8RPObCkjX5VfrpZ0l6zMSGCbjpkBEnJm+
 IqkT1Fqd6u234PUDtgBFAbSOK2AKGsWyM98P6pZRnQ==
X-Google-Smtp-Source: ABdhPJzr0s0rjjrJ2ejNBDp8VT3HxeMTlH40x+Gnr2+HS9s1ELLBPYsUwZu/TfOraheiW7MHVqkNpv9k4mpORdS0+dc=
X-Received: by 2002:a19:48d2:: with SMTP id v201mr347789lfa.96.1599096077537; 
 Wed, 02 Sep 2020 18:21:17 -0700 (PDT)
MIME-Version: 1.0
References: <185d01da-97ee-91a4-33c1-d338d39ef440@126.com>
In-Reply-To: <185d01da-97ee-91a4-33c1-d338d39ef440@126.com>
Date: Wed, 2 Sep 2020 18:21:06 -0700
Message-ID: <CAKJyDkKSSJcJXWu78rzYWkmnnpP75aO2EdCz9XkQ2zrEbnORFA@mail.gmail.com>
To: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] cpld source code on UBX-160
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============8878126749162441214=="
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

--===============8878126749162441214==
Content-Type: multipart/alternative; boundary="000000000000a9e9f405ae5e91d5"

--000000000000a9e9f405ae5e91d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The code for the CPLDs on the USRP daughtercards (UBX, N310, N320) is not
open source.   Under normal circumstances, there should be no reason to
modify it.




On Wed, Sep 2, 2020 at 5:48 PM =E5=BC=A0=E5=BF=A0=E5=B1=B1 via USRP-users <
usrp-users@lists.ettus.com> wrote:

> There is a cpld (U38 epm570) on daughter board ubx-160. But I can't found
> the source code for it.
> Does it close source ? If not, Where are the souce code ?
>
> --
> Best Regards,
> zzs
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a9e9f405ae5e91d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The code for the CPLDs on the USRP daughtercards=C2=A0(UBX=
, N310, N320) is not open source.=C2=A0 =C2=A0Under normal circumstances, t=
here should be no reason to modify it.<div><br></div><div><br><div><br></di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Sep 2, 2020 at 5:48 PM =E5=BC=A0=E5=BF=A0=E5=B1=B1 via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">There is a cpld (U38 epm570) on daughter board ubx-160. But I can&#=
39;t found the source code for it.<br>
Does it close source ? If not, Where are the souce code ?<br>
<br>
-- <br>
Best Regards,<br>
zzs<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a9e9f405ae5e91d5--


--===============8878126749162441214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8878126749162441214==--

