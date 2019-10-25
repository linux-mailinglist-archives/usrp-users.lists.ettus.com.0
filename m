Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C690E5607
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2019 23:38:34 +0200 (CEST)
Received: from [::1] (port=51412 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iO7Hy-0001EA-UO; Fri, 25 Oct 2019 17:38:30 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:46549)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iO7Hv-00019C-AE
 for usrp-users@lists.ettus.com; Fri, 25 Oct 2019 17:38:27 -0400
Received: by mail-oi1-f182.google.com with SMTP id c2so2527436oic.13
 for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2019 14:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ycy4xyZbRhJlbEz00MpMyMUHaR1X4YrQJ5se6wHbZIk=;
 b=bKBVOBotzZy7H+O1NZxf/ejAGH9R5vXnY8u0521v4vyQhddjID3KTOnj42gFCNw7u1
 cNx0qZIKpdTEfeo/ebxkFYfetNKNH0vp3Y1+QRy12bNXn7GULHKYJT5jOLrZ/xndj0j7
 PFpgzzAbWVz4iizQb6o+Ea1pZZd3Yqlc8TYSOEqROltDpgAdwHhBKv9UZ2FWVJABpszl
 JjuXLq0RbCaJu39ryGwPGBj4hhU1KaQvAKywqCPA0ivVf4ntCQcNwCwWZFNvPncsVsNI
 ElBM2IJ5YGsnjDoM6h6B2RIPZ5bpE4wiLUba1Edu7uyLev/etnaK2A7su6fmCSDFAWUP
 R9sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ycy4xyZbRhJlbEz00MpMyMUHaR1X4YrQJ5se6wHbZIk=;
 b=BkBfcLETSHIKT4aJoNJTRwLWNmjMnuKGZIZBk9RGaNOA6Lm7IydXtxqH8i94TiGHF9
 b/yrYLylxQtW2WOXrg3WI7YX5jEpVUpQCbBpmDsEx0ZVWk9Ipfg6TDgHZBc3dnVKRpL6
 xEAIXaUmP7R7XL/u38SnX9e8vcJcW2tg6j1DrM2EYBoGVvafbt+zN2w7DhgUmXeNpZ4G
 awQsX7Yhk91fl+yKUMtQkQwXrDzYlwlChLZfbQYuqKq45kszxBUKRpP/syhInY0hycop
 ursgKFMPuEuKMEL+QYWpK9VtMEH2r+62QtXA0eiZ5F0l5KHPYOYwDA2CBJnN9jrT8i+N
 uOYQ==
X-Gm-Message-State: APjAAAVsKZr6EVYg+BeaXNyxXZMqXuX/eSM5MDR9gFw5W9FJTPg3yPOI
 iGXk6qjuA15cCy4U7pBKoIxRBEAWAOkixGq15kN7RwqSyaD08Q==
X-Google-Smtp-Source: APXvYqx0WOSiOj4z8XW+yhpru6lW2/Z9DE5IGbAAMADvWqEJ4DfB/Sh1hohily38ioG24kofAV4A5aN2Xzbzqbf+ZJg=
X-Received: by 2002:aca:2408:: with SMTP id n8mr4543373oic.154.1572039466234; 
 Fri, 25 Oct 2019 14:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB234040B48E118FC3E23DF5CEAF690@BL0PR12MB2340.namprd12.prod.outlook.com>
 <c5336ae4-d15c-9409-d6b5-961e4482d422@balister.org>
In-Reply-To: <c5336ae4-d15c-9409-d6b5-961e4482d422@balister.org>
Date: Fri, 25 Oct 2019 14:38:44 -0700
Message-ID: <CAL263iwdJktDwYHsdO4Zei-xYpC0grq=k26CnszgNpAUojGmmQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2158007944969412940=="
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

--===============2158007944969412940==
Content-Type: multipart/alternative; boundary="000000000000f551a10595c2f58c"

--000000000000f551a10595c2f58c
Content-Type: text/plain; charset="UTF-8"

We are very close to releasing UHD 3.15.x.x which is going to include an
updated file system based on thud  for all of the embedded USRPs (N3xx,
E320, E310). We have also been working on improving the build system and
will have a file system option that includes GNU Radio for all the embedded
devices.

Also with 3.15 RFNoC is on by default with all UHD builds (instead of being
a flag or branch).


On Fri, Oct 25, 2019 at 2:07 PM Philip Balister via USRP-users <
usrp-users@lists.ettus.com> wrote:

> With all the annoying issues on this list with Ettus Embedded products,
> I'm curious if there is any interest in a gofundme for an image that
> supports gnuradio and rfnoc without a bunch of screwing around
> rebuilding uhd and manually updating sdks?
>
> Philip
>
> On 10/21/19 12:36 PM, Jason Matusiak via USRP-users wrote:
> > I am just starting to play with the N310 and I am having issues with
> some of our flowgraphs that work fine with the X310 and the E320.  The
> issue seems to be that there seems to be minimal support for python 2.7 for
> the N310.  Is there a toolchain or anything else I can do to get better
> support?  Things like threading.py are missing and only in python3.5 for it.
> >
> > Thanks.
> > ~Jason
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f551a10595c2f58c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">We are very close to releasing UHD 3.15.x.x which is go=
ing to include an updated file system based on thud =C2=A0for all of the em=
bedded USRPs (N3xx, E320, E310). We have also been working on improving the=
 build system and will have a file system option that includes GNU Radio fo=
r all the embedded devices. <br><br>Also with 3.15 RFNoC is on by default w=
ith all UHD builds (instead of being a flag or branch). <br><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Oct 25, 2019 at 2:07 PM Philip Balister via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">With all the ann=
oying issues on this list with Ettus Embedded products,<br>
I&#39;m curious if there is any interest in a gofundme for an image that<br=
>
supports gnuradio and rfnoc without a bunch of screwing around<br>
rebuilding uhd and manually updating sdks?<br>
<br>
Philip<br>
<br>
On 10/21/19 12:36 PM, Jason Matusiak via USRP-users wrote:<br>
&gt; I am just starting to play with the N310 and I am having issues with s=
ome of our flowgraphs that work fine with the X310 and the E320.=C2=A0 The =
issue seems to be that there seems to be minimal support for python 2.7 for=
 the N310.=C2=A0 Is there a toolchain or anything else I can do to get bett=
er support?=C2=A0 Things like threading.py are missing and only in python3.=
5 for it.<br>
&gt; <br>
&gt; Thanks.<br>
&gt; ~Jason<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f551a10595c2f58c--


--===============2158007944969412940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2158007944969412940==--

