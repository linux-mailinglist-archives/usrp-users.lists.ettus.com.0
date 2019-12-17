Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 007F6122FEC
	for <lists+usrp-users@lfdr.de>; Tue, 17 Dec 2019 16:17:01 +0100 (CET)
Received: from [::1] (port=46568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihEan-0002ZJ-RJ; Tue, 17 Dec 2019 10:16:57 -0500
Received: from mail-lf1-f50.google.com ([209.85.167.50]:39174)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ihEaj-0002PZ-63
 for usrp-users@lists.ettus.com; Tue, 17 Dec 2019 10:16:53 -0500
Received: by mail-lf1-f50.google.com with SMTP id y1so7237106lfb.6
 for <usrp-users@lists.ettus.com>; Tue, 17 Dec 2019 07:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iauRiDLAmPpkV3+F4JTfh7rPzlsn7ciWUN/K7R5aBWg=;
 b=O3UGP+eAWuqwKtsI+e4bG/gMDnSU/o7gR/oQMe9YhNGen8MdUHtthGxBl/cNlYLwPU
 29IkxOtBdBowCP1/nv5UMRZYyxEN5072BaLxEhSDWtRJ38preXh8F4helj2Gk61ziV/x
 PUNokRLNSMdvYLLRO6haCQkd2Eu70peQ+Hs4YSIrQ7omKQy4Z5Ewy4eDZjRfUa2P4T06
 8M7UGINWi92GloniXN2wCKp8ki2oogmy2SQr8SPBXwrs00xxOUkx401B9C/iU+SeqHF0
 JidnWKd9hgW8bfvImumDF+ryErMyaTHIG3bLz6tl2LwX25/cFDNEEx8fvDLlR1Kgoili
 Lyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iauRiDLAmPpkV3+F4JTfh7rPzlsn7ciWUN/K7R5aBWg=;
 b=KegP/OlPeH9jTDBxLozhuaNUFWUZ5/ETGYWyD3OSNFnchVNzZXfnius9xz+vvdKbz4
 Ur8yCNVP6eq67WoKvp0tA/Bnt22L0Xr2b/Vs5dTvzHm91Ud3ELUeyYWqPlIUuT+mGLf3
 XDJdQH96MDCRU/FpTua2min9XNxpbYiof+4FoX4vRa3uJ398jTkiQQKtGC+I7W7+Bjr4
 RZYWKpsrg+jKkuRJo7YEHoNmS0z5gmIbVJPyMwFFvb7QhrEcWYa7k5FKomEJjdEhLg9/
 WpWBP16x5tjZ4hsXsXNUAVg6C9Yl6WGhk6GQLN7UNcCz6KVmKttzY7vCWfzMf/0KepNT
 b5KA==
X-Gm-Message-State: APjAAAViHv6zoMemsVM906Gkz4FOtL6Re9wvh7gdyywVrMxN/ccGWE7A
 ACau+1A9NVnQhY+MzSCpPQq2XftkPku5b9a79AgPuJ6V
X-Google-Smtp-Source: APXvYqyMrcd0enLlSqtUbNpdMzD47lvpeXYKIkFTdFatylNNX/r4df05w4ZMDXp1jW/Ri9mVrVreDoo0ZN1QPPH70ko=
X-Received: by 2002:ac2:485c:: with SMTP id 28mr3051237lfy.118.1576595771834; 
 Tue, 17 Dec 2019 07:16:11 -0800 (PST)
MIME-Version: 1.0
References: <541389374.290743.1576592576592.ref@mail.yahoo.com>
 <541389374.290743.1576592576592@mail.yahoo.com>
In-Reply-To: <541389374.290743.1576592576592@mail.yahoo.com>
Date: Tue, 17 Dec 2019 09:16:00 -0600
Message-ID: <CANf970bYMiqJA1WmczV4Qe=mJfE4JitjgM8obhEyRpcTcx=FHQ@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] Crash detected - X300
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
Content-Type: multipart/mixed; boundary="===============3530958995121664619=="
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

--===============3530958995121664619==
Content-Type: multipart/alternative; boundary="000000000000ef59d80599e7ce6b"

--000000000000ef59d80599e7ce6b
Content-Type: text/plain; charset="UTF-8"

Santosh,

Does this error occur with a shipping example like "tx_samples_from_file"?

If the answer is yes, I'd recommend upgrading UHD to a more recent version.
Not sure what your versioning constraints are, but I'd recommend the tag
"v3.14.1.1" - this is the current release of UHD.

If the answer is no, you should figure out how your streaming code differs
from the example. If there's some key difference that you believe is
implemented correctly, let us know what it is here on the mailing list.

Sam Reiter
Ettus Research

On Tue, Dec 17, 2019 at 8:23 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi There,
>    I have and example app to read from file and writing to SDR. I am
> seeing a crash/credump @ convert_fc32_1_to_item32_1_bswap_guts. I have
> attached call stack and any pointers on this would be highly appreciated.
>
> Environment: linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
> Boost_105800; UHD_003.010.001.HEAD-0-g929e3b
> Hardware: X300 with UBX (TX only with single channel)
>
> BR,
> Santosh
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ef59d80599e7ce6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Santosh,</div><div><br></div><div>Does this error occur with=
 a shipping example like &quot;tx_samples_from_file&quot;?</div><div><br></=
div><div>If the answer is yes, I&#39;d recommend upgrading UHD to a more re=
cent version. Not sure what your versioning constraints are, but I&#39;d re=
commend the tag &quot;v3.14.1.1&quot; - this is the current release of UHD.=
</div><div><br></div><div>If the answer is no, you should figure out how yo=
ur streaming code differs from the example. If there&#39;s some key differe=
nce that you believe is implemented correctly, let us know what it is here =
on the mailing list.<br></div><div><br></div><div><div><div dir=3D"ltr" cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <b=
r><div>Ettus Research<br></div></div></div></div></div></div></div></div></=
div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Dec 17, 2019 at 8:23 AM voonna santosh via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-seri=
f;font-size:16px"><div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">=C2=A0=
=C2=A0 I have and example app to read from file and writing to SDR. I am se=
eing a crash/credump @ <span>convert_fc32_1_to_item32_1_bswap_guts. I have =
attached call stack and any pointers on this would be highly appreciated.</=
span></div><div dir=3D"ltr"><span><br></span></div><div dir=3D"ltr"><span>E=
nvironment: <span>linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);=
 Boost_105800; UHD_003.010.001.HEAD-0-g929e3b</span></span></div><div dir=
=3D"ltr"><span><span>Hardware: X300 with UBX (TX only with single channel)<=
/span><br></span></div><div dir=3D"ltr"><span><br></span></div><div dir=3D"=
ltr"><span>BR,</span></div><div dir=3D"ltr"><span>Santosh</span><br></div><=
/div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ef59d80599e7ce6b--


--===============3530958995121664619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3530958995121664619==--

