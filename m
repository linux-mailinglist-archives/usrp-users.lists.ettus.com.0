Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F2431F40B
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 03:33:36 +0100 (CET)
Received: from [::1] (port=49324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCvbo-0002uP-OO; Thu, 18 Feb 2021 21:33:32 -0500
Received: from mail-lj1-f175.google.com ([209.85.208.175]:42020)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1lCvbk-0002q2-O6
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 21:33:28 -0500
Received: by mail-lj1-f175.google.com with SMTP id v6so11281842ljh.9
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 18:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ty20y4JahGbNim9Gk7YUtaJYObRerW3zC0Ie7g1Tz24=;
 b=Vgdu18rVYeOJ0wyQ6gmzw9WKVBLojaRaNPpzs2QfvF9h8WGsw+U7R0KSwB899Xym55
 4E57kZZK4KU6QJ56bBLpLomddmP+aepiT7u2FQY8QqFlfsEtcV3ZBTgVWGQDA2IpXUQN
 xJGfXoTKx5PYTJDaTT5teZi3UEwXrvHD58womvyQ82z2pe+8Se5dizYZPqFFmMXzfgND
 eXNfOv7tdkl4F2Hjytu/03TEansfNeJhsb6oZtb1KkARG5JMOB1O7s/6fB7EhnnOnWly
 ruhVgfXlWJiP2rsQHhb+KcUARvNvSQXD0TG6vhrSr50QyfBFZBcjHpi1rGHDgq1j5x8A
 6SUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ty20y4JahGbNim9Gk7YUtaJYObRerW3zC0Ie7g1Tz24=;
 b=JjfNNt2Jg8DIfpPRpEdVfq9Ap1tg+nBTKKQLFUOiz75AVVOevfQHlSH+BPLCXk1uri
 iBi3xiTK3aYciNAmUIBkTn0Nn1nHudP6Q7joqdGxnQqJyKpHjjHBuB4UopcL16uO/tWu
 wPtq//is5LEs+rd6HzbIZOyyKU0mu6vLGEB6MlFTKwU4waSjW7QXaCYjGMZrDK+kRpAH
 qBS8nUrJ7TGcB7HREkiDQ0dXpU77mtyWgKsu4QlCmF/XOoty30D7f+gZgF6xAVe36wvB
 piYMmDN3tM48kuEaoR/sNzEXxzPLxOb3ij/Jzi82z06AkqM9jax50/xBHJZq0i3b3C+O
 Cetg==
X-Gm-Message-State: AOAM530N3uJct5TqCLVKLc9ijqldmh+HyBD4+JubbgkklKQ8PFx6ACVX
 2tpTU7DrHS4AutXHBQoLV7hLDxmvv++g4Nvt/tk=
X-Google-Smtp-Source: ABdhPJz9pKyM5GB9JnujxLG0aTTEDy6Puf+UUkp4HvS3rPJZztxjnXkGawTyY2yuHKpWx+FL7scEGcpYktOF/0O/GYE=
X-Received: by 2002:a2e:8e2a:: with SMTP id r10mr4336419ljk.186.1613701967352; 
 Thu, 18 Feb 2021 18:32:47 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrGQYGQkevGZBi4BRQfmQqDMxopumXRr4qdZHY=1yDDDOw@mail.gmail.com>
 <4D7FFA5B-7EFA-461F-AA1C-56F8A103C516@gmail.com>
In-Reply-To: <4D7FFA5B-7EFA-461F-AA1C-56F8A103C516@gmail.com>
Date: Thu, 18 Feb 2021 19:32:36 -0700
Message-ID: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] x310 two UBX daughterboard receiver
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============1164668157135299057=="
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

--===============1164668157135299057==
Content-Type: multipart/alternative; boundary="0000000000008994ad05bba74432"

--0000000000008994ad05bba74432
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

  Do you have any example code? I am still confused.

Thank you.

On Thu, Feb 18, 2021 at 5:50 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Just create a 2-channel USRP source and specify a subdev of =E2=80=9CA:0 =
B:0=E2=80=9D.
>
>
>
> Sent from my iPhone
>
> On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Hi,
>
>     I am using a x310 USRP with two UBX daughterboards. Now I can transmi=
t
> and receive the signal in RF A daughterboard with command
>     self.source.set_antenna("RX2", 0)
>     self.sink.set_antenna("TX/RX", 0).
>
>     Now, I want to transmit the signal in RF A, and receive the signal in
> both RF A and RF B. It is actually 1 transmitter and 2 receivers. How can=
 I
> implement this? I checked the set_subdev_subdev("B", 1), but it doesn't
> work.
>
> Thank you,
>
>
>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--=20
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com

--0000000000008994ad05bba74432
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 Do you have any example code? I am still confused.<=
div><br></div><div>Thank you.</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021 at 5:50 PM Marcus D=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"auto">Just create a 2-channel USRP source and specify a subde=
v of =E2=80=9CA:0 B:0=E2=80=9D.=C2=A0<div><br></div><div><br><br><div dir=
=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div=
 dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi,<div><br></div><div>=C2=A0 =C2=A0=
 I am using a x310 USRP with two UBX daughterboards. Now I can transmit and=
 receive the signal in RF A daughterboard with command</div><div>=C2=A0 =C2=
=A0=C2=A0self.source.set_antenna(&quot;RX2&quot;, 0)</div><div>=C2=A0 =C2=
=A0 self.sink.set_antenna(&quot;TX/RX&quot;, 0).</div><div><br></div><div>=
=C2=A0 =C2=A0 Now, I want to transmit the signal in RF A, and receive the s=
ignal in both RF A and RF B. It is actually 1 transmitter and 2 receivers. =
How can I implement this? I checked the set_subdev_subdev(&quot;B&quot;, 1)=
, but it doesn&#39;t work.</div><div><br></div><div>Thank you,</div><div><b=
r></div><div><br></div><div><br clear=3D"all"><div><br></div>-- <br><div di=
r=3D"ltr"><div dir=3D"ltr"><font face=3D"times new roman, serif" size=3D"4"=
 style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span=
 style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"co=
lor:rgb(136,136,136)"><font color=3D"#444444">College of Engineering</font>=
</div><div><font color=3D"#444444">Utah State University</font></div><div s=
tyle=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"m=
ailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank"=
>marxwolfs@gmail.com</a></font></div></div></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></div></blockquote></div><=
br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_sign=
ature"><div dir=3D"ltr"><font face=3D"times new roman, serif" size=3D"4" st=
yle=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span st=
yle=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color=
:rgb(136,136,136)"><font color=3D"#444444">College of Engineering</font></d=
iv><div><font color=3D"#444444">Utah State University</font></div><div styl=
e=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mail=
to:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">ma=
rxwolfs@gmail.com</a></font></div></div></div></div>

--0000000000008994ad05bba74432--


--===============1164668157135299057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1164668157135299057==--

