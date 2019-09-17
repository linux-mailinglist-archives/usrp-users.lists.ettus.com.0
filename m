Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1003FB53E1
	for <lists+usrp-users@lfdr.de>; Tue, 17 Sep 2019 19:19:44 +0200 (CEST)
Received: from [::1] (port=34942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAH8f-0006bd-LV; Tue, 17 Sep 2019 13:19:41 -0400
Received: from mail-vs1-f43.google.com ([209.85.217.43]:38865)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <keithkotyk@gmail.com>)
 id 1iAH8c-0006VG-DF
 for usrp-users@lists.ettus.com; Tue, 17 Sep 2019 13:19:38 -0400
Received: by mail-vs1-f43.google.com with SMTP id b123so2592327vsb.5
 for <usrp-users@lists.ettus.com>; Tue, 17 Sep 2019 10:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LsiEHYLY3pnxgph0quvu5eEYK88Cd0hRoEYjap72hCQ=;
 b=sJ/gWhqH9X9NEbHa7AFVa+9yGRsxoCKrc/d1mKtS8L1xAMGjklhxF6e1WreJCsv5sM
 dzzwBBiptnnweVao/NsbUk7Vrg2FacV8xzSx/uKQySxlr9Rqt6T1U2ch9ZPKFtY0eQYR
 VJK+najsyxMmAZVD3dlK6wJ+DBm/RUzeWA0qY2CA0+3+YCTplEMtf0hD0HHcEhrZHRkQ
 vhMvxk9knnuKq4MYq1ISA0yVwFuZgviITNYHFUZUtBeWh3Onrv1ecvYMZET46MFZliEa
 9Ji+Z7o+9vqJLPfK6zs1uUz7ORGRWT+XN+X8qVGapunoMiDzWiTFsQkxM1UtoNNzFIut
 pcoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LsiEHYLY3pnxgph0quvu5eEYK88Cd0hRoEYjap72hCQ=;
 b=DFoRzRqVe7WxcAmDR0CnwdJfbxWhHP3vdmAQ118wE7DH3BUePV7ipk+wqI2zSA5Uz7
 En4dhGq0L0ky2jP/I+RtN2ymY4cUToF+IzKdSZ97/D7sSw2HirhsWejy68cr7m2PEMsJ
 G2ThonzwTbuGHZTUwPDqyqhaq4pxhj4g1AXzyLCgbixHzF3o//zgOmnVViFNZzl64Fdy
 8CnyppSe5HuAvLyKtQzTHhaYwtTWmfFSYX+QSUvWS69UAtLNw5X1Q1yTbU/fDzq7vXQB
 RWaa781xRFN9vffiSrUbAvHKStyaVOCWi2+xCGELakACkg+DoHupHgntzBWfOrAkQLfs
 fi0w==
X-Gm-Message-State: APjAAAWt0sLKmMcSdjmmOd/vCeyMUupaUHAubnpRqrzAoM9cJL8nGD9K
 X/Bt1f+L2EjOtENiEs02/2/yZNd0AxjewzAr5Lo=
X-Google-Smtp-Source: APXvYqzvA2sglyEG3ZyPtceYRE8KrGRePV7VyNX2PMdWE3S0aoDcPZfU1UNx7evhpEhInU1TlL8oy/tR4cdcxi+rQ4w=
X-Received: by 2002:a67:2286:: with SMTP id i128mr2746490vsi.178.1568740737700; 
 Tue, 17 Sep 2019 10:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAFGMRUATp9FjkDGctvOFqjyh7EEgEaVFSgcf_jUdwsSFe3FLvg@mail.gmail.com>
 <caa9b984bd17d4029187d88077594ec6397104b0.camel@ettus.com>
In-Reply-To: <caa9b984bd17d4029187d88077594ec6397104b0.camel@ettus.com>
Date: Tue, 17 Sep 2019 17:18:31 +0000
Message-ID: <CAFGMRUBVtRxObbLv4sNG1jYNMNKkLM1SVuyLjm0BtwVEXHjV4w@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] University of Saskatchewan N200 Rack
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
From: Keith k via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Keith k <keithkotyk@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5231743194965552418=="
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

--===============5231743194965552418==
Content-Type: multipart/alternative; boundary="0000000000006a5ab10592c2eab3"

--0000000000006a5ab10592c2eab3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Marcus

The additional connector on the front is so that we can connect both RX
channels and a TX channel. The ones in the back are for GPIO breakouts.

Vertical, tool-less mount is the way to go.

On Tue, Sep 17, 2019 at 4:54 PM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hey Keith,
>
> I quite enjoyed your email :) May I ask what the individual added SMAs
> do?
>
> I like the vertical mounting, and the additional LEDs :)
>
> Best regards,
> Marcus
>
> On Mon, 2019-09-16 at 18:04 +0000, Keith k via USRP-users wrote:
> > Hey all
> >
> > I thought I would offer a break from the endless bugs and dev
> > questions to share what our N200 rack looks like. These N200s are
> > going to be used for a radar installation. We've made some custom
> > modifications to each N200, such as adding brighter and more detailed
> > ATR status LEDs, adding more SMA connector ports(1 in front, 4 in
> > back with a dsub as well).
> >
> > The Ettus N200 rackmount is quite frankly not very well designed, so
> > we designed our own. It allows for tool-less fasteners for quick
> > install/release of the devices, vertical mount to allow for more room
> > between devices, and several holes for better cable routing and
> > management.
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--=20
-Keith Kotyk

--0000000000006a5ab10592c2eab3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Marcus</div><div><br></div><div>The additional co=
nnector on the front is so that we can connect both RX channels and a TX ch=
annel. The ones in the back are for GPIO breakouts.</div><div><br></div><di=
v>Vertical, tool-less mount is the way to go. <br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 17, 201=
9 at 4:54 PM Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.=
com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hey Keith,<br>
<br>
I quite enjoyed your email :) May I ask what the individual added SMAs<br>
do?<br>
<br>
I like the vertical mounting, and the additional LEDs :)<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Mon, 2019-09-16 at 18:04 +0000, Keith k via USRP-users wrote:<br>
&gt; Hey all<br>
&gt; <br>
&gt; I thought I would offer a break from the endless bugs and dev<br>
&gt; questions to share what our N200 rack looks like. These N200s are<br>
&gt; going to be used for a radar installation. We&#39;ve made some custom<=
br>
&gt; modifications to each N200, such as adding brighter and more detailed<=
br>
&gt; ATR status LEDs, adding more SMA connector ports(1 in front, 4 in<br>
&gt; back with a dsub as well). <br>
&gt; <br>
&gt; The Ettus N200 rackmount is quite frankly not very well designed, so<b=
r>
&gt; we designed our own. It allows for tool-less fasteners for quick<br>
&gt; install/release of the devices, vertical mount to allow for more room<=
br>
&gt; between devices, and several holes for better cable routing and<br>
&gt; management. <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">-Keith Kotyk</div></div>

--0000000000006a5ab10592c2eab3--


--===============5231743194965552418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5231743194965552418==--

