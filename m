Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF2275251
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jul 2019 17:15:23 +0200 (CEST)
Received: from [::1] (port=33746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqfSj-0004Uh-Jv; Thu, 25 Jul 2019 11:15:21 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:36891)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hqfSf-0004P2-QQ
 for usrp-users@lists.ettus.com; Thu, 25 Jul 2019 11:15:17 -0400
Received: by mail-io1-f43.google.com with SMTP id q22so97966575iog.4
 for <usrp-users@lists.ettus.com>; Thu, 25 Jul 2019 08:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AIhyHQcj0KoorA28hc6SLvLhbwR+yX2SZQ1adv6Jiuk=;
 b=d3rbVbov27ni1buSUoniWmvxCH1kAFUC9nnLnUsIzIMjo1Jwe0KIiHCc+GBV6PBsHj
 ELZvSByXsMh39Q5/fnixYNTs6ht/5Neh5g3lcXJ71psUF3s0pS+gvSQ8wWTTxjmYcm3L
 lTuXI7ohRMWbi2CQ7Z2086ynnb5II4mODHfm0MNien1FoYEmxYc0hBfzLB4qWdAxQYFl
 rUt7Yz8LmKpUS2IDuW6mln+bM1dGgORR2juTqY2KKBYu8GTZO8SD0nyUpGyZJRo7q0DX
 uUtQAjbb/ZC1Y215XWCrHsh9XPqHjF4imaLd5cQm6dFKCDLjMdZGr110avWmb3soj3xW
 3RYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AIhyHQcj0KoorA28hc6SLvLhbwR+yX2SZQ1adv6Jiuk=;
 b=Lg5lGC9yBihGv/opZQ/QTlCbX58CU16mbKziYSiyiXV7ar0IlKLhlEYRvbO3MuXTFP
 DwyYnCtD4RlXSSTnk3KE6cLMjBbsyxN5DXs00f3H3GZbHGSulIRBkLDb/23PpTYjGkCp
 sam8J56ssREN/r8FgPC0GDCRjf8QCW+FndFKy6ceWYqgAu76KNW+e4UiNYf7tPHQhH/p
 iW2oCGIS0T6rn4AsEgOEpZE/M1XVYtjgg+u42eH6zlb3DZ13LVi0nto/EVZCNtv1F+wk
 Jg4gVO29xI1CGtTW/ossk1fYmUb7PCaA3/puw3RKBGM6sKwk1HJrCx5x9p4dYsubl7tB
 9qPw==
X-Gm-Message-State: APjAAAXCZJ1NoG3njUgJegpZwz/ngxUZEAyOFDnqQ0ECHp1NOLHOFxpt
 LoPGMxXLqjPywnoUshZ4/6oXpgFo4YDzWvdpMtk=
X-Google-Smtp-Source: APXvYqzyaZwzQqD6O3Otqm64LXc59WM2CCjJeOj+hIMr5VxpBJfiUUEMMsj8ZhjsGHmVHTtnxLpe1m5y3LydznL620A=
X-Received: by 2002:a02:90c8:: with SMTP id c8mr14303449jag.22.1564067677038; 
 Thu, 25 Jul 2019 08:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
In-Reply-To: <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
Date: Thu, 25 Jul 2019 08:10:36 -0700
Message-ID: <CA+JMMq8yvSWrfv_GcdF8n3b0AEDZdm6M989b8J24G5OzeK57ZA@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: Royce Connerley <royceconnerley@yahoo.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5270703138334155589=="
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

--===============5270703138334155589==
Content-Type: multipart/alternative; boundary="0000000000004b6ff2058e82e2f6"

--0000000000004b6ff2058e82e2f6
Content-Type: text/plain; charset="UTF-8"

I'll test! Forgot about this one and now have a very good use case for it.
I'll let you know how it goes.

On Wed, Jul 24, 2019 at 4:35 PM EJ Kreinar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Royce,
>
> Phil and I have been working on the channelizer in the theseus-cores repo
> here: gitlab.com/theseus-cores/theseus-cores
>
> The master branch has a (potentially) working channelizer, at least
> according to my recent tests on the x310, as long as the network interface
> supports the desired output rate.
>
> There's also an fpga solution for channel downselection in a branch that
> Phil put together. The ball is in my court to turn the crank and merge to
> master with supporting software, but I haven't gotten much of a chance
> recently.
>
> If you're interested in testing we could definitely use some more people
> to give it a shot :D Let me know if you need a sample bitstream or if you
> can build one yourself.
>
> EJ
>
> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
>> polyphase channelizer.  Has there been any activity on this?
>>
>> Royce Connerley
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004b6ff2058e82e2f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ll test! Forgot about this one and now have a very g=
ood use case for it. I&#39;ll let you know how it goes.<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, =
2019 at 4:35 PM EJ Kreinar via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi Royce,<div =
dir=3D"auto"><br></div><div dir=3D"auto">Phil and I have been working on th=
e channelizer in the theseus-cores repo here: <a href=3D"http://gitlab.com/=
theseus-cores/theseus-cores" target=3D"_blank">gitlab.com/theseus-cores/the=
seus-cores</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">The maste=
r branch has a (potentially) working channelizer, at least according to my =
recent tests on the x310, as long as the network interface supports the des=
ired output rate.</div><div dir=3D"auto"><br></div><div dir=3D"auto">There&=
#39;s also an fpga solution for channel downselection in a branch that Phil=
 put together. The ball is in my court to turn the crank and merge to maste=
r with supporting software, but I haven&#39;t gotten much of a chance recen=
tly.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">If you&#39;re=
 interested in testing we could definitely use some more people to give it =
a shot :D Let me know if you need a sample bitstream or if you can build on=
e yourself.</div><div dir=3D"auto"><br></div><div dir=3D"auto">EJ</div><div=
 dir=3D"auto"></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">At the 2018 GRCon, EJ Kreinar spoke about improvem=
ents to the RFNoC polyphase channelizer.=C2=A0 Has there been any activity =
on this?<br>
<br>
Royce Connerley<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004b6ff2058e82e2f6--


--===============5270703138334155589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5270703138334155589==--

