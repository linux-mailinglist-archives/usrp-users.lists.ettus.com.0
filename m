Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD04114FB8
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 12:23:49 +0100 (CET)
Received: from [::1] (port=45016 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idBi5-00024J-Pz; Fri, 06 Dec 2019 06:23:45 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:41804)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1idBi2-0001z7-8j
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 06:23:42 -0500
Received: by mail-oi1-f177.google.com with SMTP id i1so5835594oie.8
 for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2019 03:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yOnyHUoAA+0vekBzSG6Pdw+xA0nHr8HWmsXpuwf7XQA=;
 b=jBsBHg9v2S/QZ38yXGpO9MHo2S9jAgnB1/BIvea5UoZURXY26ahqOX+UFzSqa2fcIO
 iVK8iH/DHRViv62KR/Rt2laEli4WnNO1xuBz+sjp9Be9t3SnKSCn8ZTAA9dZ5KJZps57
 w6X1jz++bL4rxIwKA8Hs2yYaK7kDUS8UvXKzCI32DTYLvDVjBn0KXwEfuK7Wbvl+s5s3
 x6El2iV1GUCOrl3dvgcl2kR2DpK/DEt/FwcjPp7sKZtxUbCVPM90Di9rVETfNmb5MQMW
 k6bxhVQ0T7RCpbXZqfaHkHI+VZkjPfeYnGftVubw7MTHee3+96umTkf04pU2wxbJsQVY
 NScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yOnyHUoAA+0vekBzSG6Pdw+xA0nHr8HWmsXpuwf7XQA=;
 b=OHD4khOVPsTtQgkF0YGjni/pu54CBXIF/rx9D08NnctNP4No+Ry2uhTuomC7G36Hzr
 WoQxvb//V/RO0tbjCd543rmy41kPkHu8qauktV4fdM2g20Ja1iUHbnSwFylQeUTJW6Ke
 ecwW6Il9xL1djZSkmoHtHwTs5/SFp0UUcjqOt5yVQ6tJCfqYGsSZZ7dUS0HoEi74+rnr
 O6WfzpXhUF+13BrCQwkWKNXQ3qH/DfW23ZD6aVIvEsUJzYY7eL42n+LNnPw8HxapiU4X
 c7cvZKYAxYeE/3EtHLBjCtUJHIDU3pYmzTTJ+EyupMBsEEgyYxFXW56nGtuAkDf4p7y6
 O3vQ==
X-Gm-Message-State: APjAAAU6OkrZtEQmaUG38RJ0NFB3L8FmVKCSF85T7Trah/oZlRJMPkN2
 zsrS/0b2AvRqdy4fwsXpWjp64fRXJohmS2hh4Dgq2Vte
X-Google-Smtp-Source: APXvYqwtsre1OwQ1jdLnogf1bixiNtRYkVleHIX4y/bUkZbwtHdFSwWPdwLCfJVnC/53W4qxE62lb4/F2c3Gs3YN5vA=
X-Received: by 2002:a05:6808:658:: with SMTP id
 z24mr11595013oih.91.1575631381467; 
 Fri, 06 Dec 2019 03:23:01 -0800 (PST)
MIME-Version: 1.0
References: <CAFGMRUBC+j_FsScHG1+7_p9GJwbe2Weh+KwghvokM58foJ-wWg@mail.gmail.com>
 <5DE98FB0.3020108@gmail.com>
In-Reply-To: <5DE98FB0.3020108@gmail.com>
Date: Fri, 6 Dec 2019 05:22:44 -0600
Message-ID: <CACaXmv_+SZJOsuKS5W4uHc55=dpGfyQnqAymZjgMgysFhCWP2g@mail.gmail.com>
To: keithkotyk@gmail.com
Subject: Re: [USRP-users] DPDK
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6326731766994751905=="
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

--===============6326731766994751905==
Content-Type: multipart/alternative; boundary="000000000000ca2bb605990744a7"

--000000000000ca2bb605990744a7
Content-Type: text/plain; charset="UTF-8"

Hello Keith:

No, support for DPDK will not be added to the N200/N210. At the relatively
low streaming rates of that device, there is probably not much need for
DPDK.

DPDK is supported on the X300, X310, N300, N310, N320, N321, E320.

--Neel Pandeya



On Thu, 5 Dec 2019 at 17:16, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 12/05/2019 06:06 PM, Keith k via USRP-users wrote:
> > Just wondering if there are plans to add DPDK support for the N2xx
> > devices?
> >
> > --
> > -Keith Kotyk
> >
> >
> That seems unlikely since 'new feature' support for N2xx has been
> somewhat "dead" for a few years now.
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ca2bb605990744a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Keith:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">No, support for DPDK will not be added to the=
 N200/N210. At the relatively low streaming rates of that device, there is =
probably not much need for DPDK.</div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif">DPDK is supported on the X300, X310, =
N300, N310, N320, N321, E320.</div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">--Neel Pandeya</div><div class=3D"gmail=
_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif"><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 5=
 Dec 2019 at 17:16, Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On 12/05/2019 06:06 PM,=
 Keith k via USRP-users wrote:<br>
&gt; Just wondering if there are plans to add DPDK support for the N2xx <br=
>
&gt; devices?<br>
&gt;<br>
&gt; -- <br>
&gt; -Keith Kotyk<br>
&gt;<br>
&gt;<br>
That seems unlikely since &#39;new feature&#39; support for N2xx has been <=
br>
somewhat &quot;dead&quot; for a few years now.<br>
<br>
<br>
<br>
<br>
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

--000000000000ca2bb605990744a7--


--===============6326731766994751905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6326731766994751905==--

