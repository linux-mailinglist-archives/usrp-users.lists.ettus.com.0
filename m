Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9DADF3A8
	for <lists+usrp-users@lfdr.de>; Mon, 21 Oct 2019 18:55:16 +0200 (CEST)
Received: from [::1] (port=40010 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMaxf-0003Gs-IF; Mon, 21 Oct 2019 12:55:15 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:33742)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iMaxc-00038p-4d
 for usrp-users@lists.ettus.com; Mon, 21 Oct 2019 12:55:12 -0400
Received: by mail-io1-f53.google.com with SMTP id z19so16837369ior.0
 for <usrp-users@lists.ettus.com>; Mon, 21 Oct 2019 09:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vKPzlGbXIaYSG89rbTnG9scRuh2xjtp3XOSt/Ujy0jA=;
 b=d/9f8T+opaQIvbYKB1oYuy2scWBlLx1bbbbPlVN9/JDpGU7Fo/tsMvYqbBllkamy7R
 mF8bt9jNTR+6jmiGTVka5KiVymwsMABy3d5U8tDTLPFgkPA9r3mh87B1o2sQ5/crNcV/
 xo2ADiHcwojM7CjU1nEsIatopcu2OvkGffyV9Csy/Zue6AWKGV5XePsxWBj+dA9CW1PC
 bzfLPuyQ+DYytD/Ofe9Fy/wJZjh9HStqhx1mLg5aNI5v3iM3ruwD3hB8qfCsp0JqnTfK
 cRSQvkcvviuDAwpl56QQu1aUBabSXNAe/dFi8vg+cP9+69kvXfo8vK8+9BP3u5dz3nbt
 +vyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vKPzlGbXIaYSG89rbTnG9scRuh2xjtp3XOSt/Ujy0jA=;
 b=JnNPRL2ujJaNHQeS/fj9Qad9c1Qghlt8jy5MK7Kl3b+zttx0VeCJi3HKBj935IchtS
 T1x1qoEJ7RcVLHYKxO52mvGnD1/809G1NSj5UTKV6busweIESp9dyMIM3gfRGrIDDxM8
 6VaAaZ83uMUQ318Iya/crT4de2TeC+SWUIUrJohShITxCsjOaDnu6sGLJSCBnUyokzM2
 CdIwQRjh0FmO5rNuVq8M0MjF9sqFyiainq4OQxOhcGTM8q5f9ZOuxuRjs0PXJ+byp6w9
 Qh5dfS0TojgMPoLiU7dV7Mlqn2ax4hB/QE+0gmjxcgYdV0k6J4SeEORWJ5NufLlS1lfG
 lxCA==
X-Gm-Message-State: APjAAAU5jMshCwHbw5diDnJvDa+vIpQ1p4fKSRYwsHojK33Lh0DOFi6Q
 6N+uY7rZ8YY/xsmqeU7uGdneEv523BNhy1Vt1hbDjggl+xg=
X-Google-Smtp-Source: APXvYqzPC1FfDecNpa6Pgo2uLO+QUvI8Evyasw1sgnbhocOuamdpVm1vKcwl1tUQ+bLylrMaF7SROZFhFjGo6J3nK+A=
X-Received: by 2002:a02:cc4e:: with SMTP id i14mr23547667jaq.32.1571676871311; 
 Mon, 21 Oct 2019 09:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB234040B48E118FC3E23DF5CEAF690@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB234040B48E118FC3E23DF5CEAF690@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Mon, 21 Oct 2019 09:54:20 -0700
Message-ID: <CAKJyDkKWg1xmjAwjdyDOOWdoqe5fqJCQQi39FMi0UHf9e2hthg@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] python 2.7 on N310
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5991050915570049030=="
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

--===============5991050915570049030==
Content-Type: multipart/alternative; boundary="0000000000009ddfd605956e8939"

--0000000000009ddfd605956e8939
Content-Type: text/plain; charset="UTF-8"

Python 3 has been the default for MPM on the N310 since June of 2017.
https://github.com/EttusResearch/uhd/commit/5f99240bd283da3da71588fcb1c1886937693928

On Mon, Oct 21, 2019 at 9:37 AM Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am just starting to play with the N310 and I am having issues with some
> of our flowgraphs that work fine with the X310 and the E320.  The issue
> seems to be that there seems to be minimal support for python 2.7 for the
> N310.  Is there a toolchain or anything else I can do to get better
> support?  Things like threading.py are missing and only in python3.5 for it.
>
> Thanks.
> ~Jason
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009ddfd605956e8939
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Python 3 has been the default for MPM on the N310 since Ju=
ne of 2017.<div><a href=3D"https://github.com/EttusResearch/uhd/commit/5f99=
240bd283da3da71588fcb1c1886937693928">https://github.com/EttusResearch/uhd/=
commit/5f99240bd283da3da71588fcb1c1886937693928</a><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 21=
, 2019 at 9:37 AM Jason Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am just starting to play with the N310 and I am having issues with some o=
f our flowgraphs that work fine with the X310 and the E320.=C2=A0 The issue=
 seems to be that there seems to be minimal support for python 2.7 for the =
N310.=C2=A0 Is there a toolchain or anything
 else I can do to get better support?=C2=A0 Things like threading.py are mi=
ssing and only in python3.5 for it.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
~Jason</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009ddfd605956e8939--


--===============5991050915570049030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5991050915570049030==--

