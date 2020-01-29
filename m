Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2296514D317
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 23:28:53 +0100 (CET)
Received: from [::1] (port=54942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwvpI-0005fQ-RM; Wed, 29 Jan 2020 17:28:48 -0500
Received: from mail-lf1-f49.google.com ([209.85.167.49]:41861)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wandrewp@gmail.com>) id 1iwvpF-0005ao-Cp
 for usrp-users@lists.ettus.com; Wed, 29 Jan 2020 17:28:45 -0500
Received: by mail-lf1-f49.google.com with SMTP id m30so828859lfp.8
 for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2020 14:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YxoXkM2n+H7tK6FmCSGriCD2wh9kI8e4Tc/7LFgqxT4=;
 b=ME+wrYZtgMArIipA2hFMGmSam4yJrAH/+TOanuIeRdMAzbJPJVnphB6680GD7EP5cX
 M0s/x1ggH81Hsqg+N7GzfzHhQlmfaHdXiRVgLidI6g4Fsuv0aGq7etx+60aGgDMUyZSF
 WTh5Y2mtXp38S5otU1O4/vBYwATveznyFIiXrSPCz3T0NUVPnBzYC8NNftiaMxv8Bo24
 laxj6uEhM4zuIcdfM5+AadYv/Nx0M6IXUpYXZDEoYiU99veyRFlBPQJObGPuv+BkdTNy
 l5P8dcUiffbAibwcTJyFPLEU0seaEPb3ThNFA5ZTJRW/Ui1SOtlEXBDaGE0PvN4JGrIY
 zMEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YxoXkM2n+H7tK6FmCSGriCD2wh9kI8e4Tc/7LFgqxT4=;
 b=W/S9s5cg+oFpfRUzc1ZLc5kZWkm6nigeZvDTOSmQ8QBFISY6KttBrseL98z9/BdYIT
 JyFGIJwN1xbRB02sYQN/qyvsWpvvijR4Hnv3KwL3J6I1hpNuXCYJSEoRygJwHjDWP+Ds
 oQpan4gQG92OzIWczPwSMKF7BB8YMjXzQSoujjYTZUFtfBQySxwkgQ4lnmihwRodwhTS
 JiNnXETTvTT+efBqao8EAH8oLeBjxVEySAqgvpqe0cqiT3w0ZBtjhQq7eQJcgE/mw3yL
 QByAOSZtlCS82fZv1nBxlM918a+WCq7hmKNwsd/Mt0hVehnpjYmvwBX/7Ol0Ma3PYIxg
 /jHw==
X-Gm-Message-State: APjAAAWh3T0PO071OPmnl+BoJHEMJgEhxH8VtjA8q+grqztpimvrTh+0
 6mJI0M/iTX5jMuMDlTw9ndoVQIOrh43mHhsIRuU=
X-Google-Smtp-Source: APXvYqwrzFiaxJygOSS3/7ewPo8GOvFZW2yMuxCSnpxipjIHrcxy90oqoZ1lfwLoK9DKgCyCh1rnw2opi0wAJJ1g62c=
X-Received: by 2002:a19:5f05:: with SMTP id t5mr795870lfb.149.1580336884028;
 Wed, 29 Jan 2020 14:28:04 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSeb6wn_EVMtHKOr4cz98yRbkw4VDZpcdXEY1J+XWNN4g@mail.gmail.com>
In-Reply-To: <CAB__hTSeb6wn_EVMtHKOr4cz98yRbkw4VDZpcdXEY1J+XWNN4g@mail.gmail.com>
Date: Wed, 29 Jan 2020 17:27:53 -0500
Message-ID: <CAB50+dR9Cmiwps1k=NAabw-xkJ8gibFhKt=1wOFhrhfH5CCo1A@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1915141312128958820=="
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

--===============1915141312128958820==
Content-Type: multipart/alternative; boundary="00000000000099199a059d4eda3d"

--00000000000099199a059d4eda3d
Content-Type: text/plain; charset="UTF-8"

I had the same issues! I just ended up putting my verilog file paths in
Makefile.n3xx.inc and it works. This might need to be fixed unless I did
something wrong.

On Wed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have been struggling all day with why I can't build my OOT rfnoc blocks
> for the N310 using v3.15.0.0.  It appears that the problem is that there is
> a file top/n3xx/Makefile.srcs that is clearing the RFNOC_OOT_SRCS variable
> after it is set in the users OOT makefile. I just commented the line in
> top/n3xx/Makefile.srcs and that seems to do the trick.  Is this a known
> issue?
>
>
> # Makefile.n3xx.inc
> ...
> include $(BASE_DIR)/n3xx/Makefile.OOT.inc
> include $(BASE_DIR)/n3xx/Makefile.srcs
> ...
>
> # Makefile.srcs
> RFNOC_OOT_SRCS = \
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000099199a059d4eda3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I had the same issues! I just ended up putting my ve=
rilog file paths in Makefile.n3xx.inc and it works. This might need to be f=
ixed unless I did something wrong.=C2=A0</div></div><div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 29, 2020 at =
16:18 Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr"><div>I have been struggling all day with wh=
y I can&#39;t build my OOT rfnoc blocks for the N310 using v3.15.0.0.=C2=A0=
 It appears that the problem is that there is a file top/n3xx/Makefile.srcs=
 that is clearing the RFNOC_OOT_SRCS variable after it is set in the users =
OOT makefile. I just commented the line in top/n3xx/Makefile.srcs and that =
seems to do the trick.=C2=A0 Is this a known issue?</div><div><br></div><di=
v><br></div># Makefile.n3xx.inc<div>...<br><div>include $(BASE_DIR)/n3xx/Ma=
kefile.OOT.inc<br>include $(BASE_DIR)/n3xx/Makefile.srcs<br></div></div><di=
v>...</div><div><br></div><div># Makefile.srcs</div><div>RFNOC_OOT_SRCS =3D=
 \<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000099199a059d4eda3d--


--===============1915141312128958820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1915141312128958820==--

