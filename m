Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B80314E459
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2020 21:58:36 +0100 (CET)
Received: from [::1] (port=35870 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixGtV-00009x-4d; Thu, 30 Jan 2020 15:58:33 -0500
Received: from mail-vs1-f51.google.com ([209.85.217.51]:35173)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1ixGtQ-0008W7-U9
 for usrp-users@lists.ettus.com; Thu, 30 Jan 2020 15:58:28 -0500
Received: by mail-vs1-f51.google.com with SMTP id x123so3025102vsc.2
 for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2020 12:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uJQCXHxvZC3krKWlQLZOiq0/oXQMYiNCHmzuRXUwLAU=;
 b=JeQuR/jMAakJ5c2YO4KoGpEm5Rsf5URVfUM4KL2umspdGNSiJke9nphpZSCgGxAdae
 jcXkl9VCxA0EGJ4AvNFaT3PeS8/kE0yXoZbxAzCe14H1+ag9GzMdyV7X+3YOwBTw0W0T
 q8hC4PgbkhU27Jvu5kwNzKcXpZyZU/l3+NqhYevrzN956mL3ydLgaAAIPWCwb9ea0Ez1
 2YZWguDQdIfV14rpqMKDC+E4s9LJ+qt+WAVxRX1x3qDELgedXllyDSS7p9dqtd/IJS33
 96GCkuQePGOo+/9seCBShR6iF2HeGN6ZfKMrwF6KA6pZUnbhY4pmfjKAy1GgsgEh6bFQ
 hD0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uJQCXHxvZC3krKWlQLZOiq0/oXQMYiNCHmzuRXUwLAU=;
 b=i43NSap24aE+ifC8Ltylp1VOucA58+QJ1WDJrvgF3Hkq+pg0HREA8dDOy9Mn3aEr6i
 VcQGrfvJPOKv3EKwzpR6imQNQIpAd4Rf1avbg5fZ11q5JpHkeCVmvztIO7VfdgbhW/3N
 k9RiztLF7URbM+VNFpC7CGA+mjd2WpMWsb+5mfyYCdDJCD/c7KqeH7lVHrSan/lT1oAG
 GpQFMqvGk1f0xl6z3x2dICMezEV/YXEq6TszXtoDWvLF/CDxNYUeFwj/XTNvdoQBvi0o
 ciHsgIKqyU1cowhzj7hQHCYJIrtk1xhd/1pdMLVDzsoU7cuuhMsdYzxvn+PAw7mjE6Es
 gW3g==
X-Gm-Message-State: APjAAAUrCD4ZP40tTaAJZqv5/KLiMO76w+3isEtAReR7fUxNWZV4rw+v
 mqNm3HEiFXc8N/rHoZB4NQFmCbQ1zvKzkfuaScU=
X-Google-Smtp-Source: APXvYqx2UfSIy+NhxucEEG/U1K5OlC1BwCpQkNgx+Ln++WdCcFoGlKtdXD/aCq3mjRXUogD5r+gr0bYnJm/X8hJft5Q=
X-Received: by 2002:a67:6341:: with SMTP id x62mr4458823vsb.88.1580417868356; 
 Thu, 30 Jan 2020 12:57:48 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSeb6wn_EVMtHKOr4cz98yRbkw4VDZpcdXEY1J+XWNN4g@mail.gmail.com>
 <CAB50+dR9Cmiwps1k=NAabw-xkJ8gibFhKt=1wOFhrhfH5CCo1A@mail.gmail.com>
In-Reply-To: <CAB50+dR9Cmiwps1k=NAabw-xkJ8gibFhKt=1wOFhrhfH5CCo1A@mail.gmail.com>
Date: Thu, 30 Jan 2020 15:57:37 -0500
Message-ID: <CADRnH20N8CKzGdOf2qBNCtBdzqg7kqCgk3XAga8T5cR=HjTieA@mail.gmail.com>
To: Andrew Payne <wandrewp@gmail.com>
Subject: Re: [USRP-users] RFNOC_OOT_SRCS cleared in top/n3xx/Makefile.srcs
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1772231073873009462=="
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

--===============1772231073873009462==
Content-Type: multipart/alternative; boundary="000000000000a3e30d059d61b533"

--000000000000a3e30d059d61b533
Content-Type: text/plain; charset="UTF-8"

Whoa there,

I havent updated any of my code to UHD-3.15 yet so you're a bit ahead of
me! I usually make the relevant PRs if/when OOT build process breaks -- so
I'd recommend sending over the relevant PR to fpga repo? Will probably help
me a few months down the line :P

Thanks!
EJ

On Wed, Jan 29, 2020 at 5:28 PM Andrew Payne via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I had the same issues! I just ended up putting my verilog file paths in
> Makefile.n3xx.inc and it works. This might need to be fixed unless I did
> something wrong.
>
> On Wed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I have been struggling all day with why I can't build my OOT rfnoc blocks
>> for the N310 using v3.15.0.0.  It appears that the problem is that there is
>> a file top/n3xx/Makefile.srcs that is clearing the RFNOC_OOT_SRCS variable
>> after it is set in the users OOT makefile. I just commented the line in
>> top/n3xx/Makefile.srcs and that seems to do the trick.  Is this a known
>> issue?
>>
>>
>> # Makefile.n3xx.inc
>> ...
>> include $(BASE_DIR)/n3xx/Makefile.OOT.inc
>> include $(BASE_DIR)/n3xx/Makefile.srcs
>> ...
>>
>> # Makefile.srcs
>> RFNOC_OOT_SRCS = \
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

--000000000000a3e30d059d61b533
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Whoa there,=C2=A0<div><br></div><div>I havent updated any =
of my code to UHD-3.15 yet so you&#39;re a bit ahead of me! I usually make =
the relevant PRs if/when OOT build process breaks -- so I&#39;d recommend s=
ending over the relevant PR to fpga repo? Will probably help me a few month=
s down the line :P<br></div><div><br></div><div>Thanks!<br>EJ</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
Jan 29, 2020 at 5:28 PM Andrew Payne via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div dir=3D"auto"=
>I had the same issues! I just ended up putting my verilog file paths in Ma=
kefile.n3xx.inc and it works. This might need to be fixed unless I did some=
thing wrong.=C2=A0</div></div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jan 29, 2020 at 16:18 Rob Kossler via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I have been struggli=
ng all day with why I can&#39;t build my OOT rfnoc blocks for the N310 usin=
g v3.15.0.0.=C2=A0 It appears that the problem is that there is a file top/=
n3xx/Makefile.srcs that is clearing the RFNOC_OOT_SRCS variable after it is=
 set in the users OOT makefile. I just commented the line in top/n3xx/Makef=
ile.srcs and that seems to do the trick.=C2=A0 Is this a known issue?</div>=
<div><br></div><div><br></div># Makefile.n3xx.inc<div>...<br><div>include $=
(BASE_DIR)/n3xx/Makefile.OOT.inc<br>include $(BASE_DIR)/n3xx/Makefile.srcs<=
br></div></div><div>...</div><div><br></div><div># Makefile.srcs</div><div>=
RFNOC_OOT_SRCS =3D \<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a3e30d059d61b533--


--===============1772231073873009462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1772231073873009462==--

