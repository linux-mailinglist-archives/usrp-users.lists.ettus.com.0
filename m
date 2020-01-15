Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E90D413CCD1
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2020 20:08:42 +0100 (CET)
Received: from [::1] (port=49092 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iro1x-000228-DM; Wed, 15 Jan 2020 14:08:41 -0500
Received: from mail-lj1-f181.google.com ([209.85.208.181]:38912)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iro1t-0001bT-Hg
 for usrp-users@lists.ettus.com; Wed, 15 Jan 2020 14:08:37 -0500
Received: by mail-lj1-f181.google.com with SMTP id l2so19745476lja.6
 for <usrp-users@lists.ettus.com>; Wed, 15 Jan 2020 11:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b4iX5BFWicAnHy7t1wpVMr5CQhbxMl/63EdpBPoZJLU=;
 b=UGaA+6gQSkx4ltz3csBJ83V9tmowr6at/sWOY2iQg2C3LeM4fsnB6WbXbe3D8Yobwu
 gtsYNGODo/wO1rwEJzcorQus5sBxKdFKa2DU4qt8uKrlPMldaJcF6NvZvmPqtS0hxl2c
 Ln5UCr7pqmiL6y0D2E7gberOzRRIImNN/1K522niom2RXuNMbKleItA59r6vwdkTI0f5
 c2u8Tp9ZxEzaCFC90AEYyVAD3/M1pGTQhXr07uAWzk7Uh7Q78mZtsMyAJLOWY8+ZmEIK
 URu0weSppFBP0YDKpBzOBXadj1nsJbblK/ziH9URYzm3zKHOR648bT99xz18TSaM234X
 zJDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b4iX5BFWicAnHy7t1wpVMr5CQhbxMl/63EdpBPoZJLU=;
 b=H9utAJkagwrOd5EeEO1UuNtjUH1X1UUzo5R7QJ4RJs/wfsISEZqtCwXYQA9pppa5AV
 jVKc/jnTSJ1u0Vi8A8Vq+q4R4YotbaB3uaMBuJ+jv8Qi9e2EbUX2x/OJncSykPE1IQBz
 sBPCqpEXJgBO3vC38M5xmgvX5q+TbdZgmbIUP1g0N2Bz9t0k8r4TmGx/WMCo3/YRMWv/
 PgEOw6IHjXQ8Qgh4mvV9AfUiUQjvI0xj2D0qHaKy5iwcMnijgDT7WzU0WhA31SX4zw/l
 Ys7SqQRQ9xvZieEfg12579JFB7mRfm8kgM8dszpHSGedhW2h6HGoIXHVLcAZBoa9Yhes
 fUpA==
X-Gm-Message-State: APjAAAXV8qyGMxYEKpELVSVv7bwYQtlqvqIbDKgY5FO99f7kEKsub+vh
 io5EHTBoxEWrCd9oNjsz29qjtbJLRLYRVqZtRcROOYZQ
X-Google-Smtp-Source: APXvYqyoVjxLitfr/YC2WfXYMJtlM8Gz6fHroBx9Yke85TU1EZbM2s+qVTDcnS1n9mEXftq3l9JU/0QofKJKBDwxZdg=
X-Received: by 2002:a2e:3309:: with SMTP id d9mr2725903ljc.262.1579115276264; 
 Wed, 15 Jan 2020 11:07:56 -0800 (PST)
MIME-Version: 1.0
References: <1991382912.12022218.1579112665200.ref@mail.yahoo.com>
 <1991382912.12022218.1579112665200@mail.yahoo.com>
In-Reply-To: <1991382912.12022218.1579112665200@mail.yahoo.com>
Date: Wed, 15 Jan 2020 13:07:45 -0600
Message-ID: <CANf970Z_4UwAS3gJnQmjB0GwNqVQGZSUjjOW-5FHOHcQyHSngw@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] Supported ethernet controllers : X300 and UBX
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3990861866171489857=="
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

--===============3990861866171489857==
Content-Type: multipart/alternative; boundary="00000000000019fa9b059c326d34"

--00000000000019fa9b059c326d34
Content-Type: text/plain; charset="UTF-8"

Santosh,

That card should be fine for streaming, that controller just hasn't been
explicitly tested as far as I know. Are you planning on using DPDK?

Sam Reiter

On Wed, Jan 15, 2020 at 12:26 PM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi There,
>    Good morning. As I could see in the documentation, Ettus recommends
> "X520 (Ethernet Controller)" at PC/host side. Is this a must?
>    We are planning to use X552 Ethernet Controller and I am wondering will
> it cause any issue. Can you please let me know what are the Ethernet
> Controllers can be used at PC side for SFP+ ports?
> BR,
> Santosh
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000019fa9b059c326d34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Santosh,</div><div><br></div><div>That card should be=
 fine for streaming, that controller just hasn&#39;t been explicitly tested=
 as far as I know. Are you planning on using DPDK?</div><div><br></div><div=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br></div></div></div=
></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Jan 15, 2020 at 12:26 PM voonna santosh via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;=
font-size:16px"><div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">=C2=A0 =C2=
=A0Good morning. As I could see in the documentation, Ettus recommends &quo=
t;X520 (Ethernet Controller)&quot; at PC/host side. Is this a must?=C2=A0</=
div><div dir=3D"ltr">=C2=A0 =C2=A0We are planning to use X552 Ethernet Cont=
roller and I am wondering will it cause any issue. Can you please let me kn=
ow what are the Ethernet Controllers can be used at PC side for SFP+ ports?=
</div><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh=C2=A0</div></div><=
/div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000019fa9b059c326d34--


--===============3990861866171489857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3990861866171489857==--

