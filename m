Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D11A2F3910
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 19:43:36 +0100 (CET)
Received: from [::1] (port=41640 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzOdh-0001pm-U8; Tue, 12 Jan 2021 13:43:33 -0500
Received: from mail-vs1-f50.google.com ([209.85.217.50]:46892)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kzOdd-0001hc-Vs
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 13:43:30 -0500
Received: by mail-vs1-f50.google.com with SMTP id q10so1980740vsr.13
 for <usrp-users@lists.ettus.com>; Tue, 12 Jan 2021 10:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=mWPbYDIfN6JN6Z4Ocr51dU4RWzi1/mi6y/4Vdwvo3bU=;
 b=OZIUFXYgn+HNz5/WBmcChwzUbBm1bks97Whjaa14poDfnbBA2A7a0b8An9haEzIPLj
 Go/eD5b7Zoq28rJ3LWhBOYYhltPbBLYBeH0ZIEogBM02GudezJ7j8FroMeTbzKZEjzTz
 Gc0QJ4L/a0IvUvzKesO+ju+JYURrnugzpUA4iQy5s4k6SbdWirek3lahQ1/LLgP62tqS
 AnnbsHLXJoyVgrZ/otzpOmo9PUXGUJkBpsf9WLos1LxZo77pT07hba+DDjP37x1xf5uZ
 DXSK29e4e68X+MORMKggWHp2oUO/H7R8UpNnhZVSjEGlaQqU1IP6Vio9VbD9HHFgdb0A
 3/ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=mWPbYDIfN6JN6Z4Ocr51dU4RWzi1/mi6y/4Vdwvo3bU=;
 b=P+FNtvupeoBj7Zbaj7t02fOS9KIBywmH5DualUqdAlIhzjTXr4UJXjFLUcebOoLFMk
 xHiGSbqJSdE8rdfNWRqFMaInZ562mOpHszwNjGi0YDdOtbJNzh02pqptO1tHI7pdjGXR
 USEMREJt3rBxpOqvRwaMLcYTp7MpE5rXbTru63ganhm3AnZNScpnTd5JLtVHyevKdtHj
 x0EojatH9Eo9SlAWBK95MQLfappEj7wDFRFbyekDcZOqg0GT9E1e8m2oGGqC864RFq88
 VQo3bjTYfqLxKFV/e/2kmtIkY9cRz3u5m6GXIWvNRwzKyw7lR8OxOhm9qTMooc5i2xv0
 iLDQ==
X-Gm-Message-State: AOAM531ZZjsj+hQfbv1r5fYR8H8DJVaaJunLl5lqQP1bqZKFKHaRkYzc
 fexmrEdJWTfNZCPk4rSaPTZHpmF1IE8ipQP/rPwmzCoI
X-Google-Smtp-Source: ABdhPJwBHFiaPL0gJP2La8vmf8yLfYFzmEMWbDcHMsuPIVb93dAd8td3CrcvbkEEmP7gK8eHfeBbK7WrM9gYoree/aM=
X-Received: by 2002:a67:e286:: with SMTP id g6mr662113vsf.42.1610476969124;
 Tue, 12 Jan 2021 10:42:49 -0800 (PST)
MIME-Version: 1.0
References: <20210107174911.gjgjjt5rff43rrp2@barbe>
 <CAL7q81u_+UhNY=KJpR6rkmoHVNVovpm8EB_f1DsyT+bF5BBH-Q@mail.gmail.com>
 <20210112060455.n3qol2fr5w7nbuob@barbe>
In-Reply-To: <20210112060455.n3qol2fr5w7nbuob@barbe>
Date: Tue, 12 Jan 2021 13:42:13 -0500
Message-ID: <CAL7q81uKXjDC=YcZ-2KXrhxN-zL6BU71P83+7KW=q9MEMBgaXQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>,
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 4.0 RFNoC testbench throws fatal error with
 GUI xsim
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============7910239469701429978=="
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

--===============7910239469701429978==
Content-Type: multipart/alternative; boundary="000000000000aa136605b8b8631b"

--000000000000aa136605b8b8631b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cedric,

"Fatal: The connected block has an incompatible backend interface".


Try adding a short delay, such as #1 or @posedge( at the start of the
testbench to get past this.

Jonathon

On Tue, Jan 12, 2021 at 1:04 AM C=C3=A9dric Hannotier <cedric.hannotier@ulb=
.be>
wrote:

> On 11/01/21 21:40, Jonathon Pendlum wrote:
> > Hi Cedric,
>
> Hi Jonathon,
>
> > Does the issue go away if you comment out test.start_tb(...) and all
> > instances of test.start_test(...) and test.end_test() in the testbench?
>
> If I comment out test.{start,end}_tb, it fails with:
> "Fatal: The connected block has an incompatible backend interface".
> The testbench is unusable in this case (whatever the GUI value).
>
> If I comment out test.{start,end}_test, it prints:
> "Fatal: No test running",
> but proceed to run the full testbench (without reporting test status).
> With GUI=3D1, I get the same error message than previously:
> "FATAL_ERROR: Vivado Simulator kernel has discovered
> an exceptional condition from which it cannot recover"
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>

--000000000000aa136605b8b8631b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Cedric,<div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">&quot;Fatal: The connected block has an incompatible backe=
nd interface&quot;.</blockquote><div><br></div><div>Try adding a short dela=
y, such as #1 or=C2=A0@posedge(=C2=A0at the start of the testbench to get p=
ast this.</div><div><br></div><div>Jonathon=C2=A0</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 12, 2021=
 at 1:04 AM C=C3=A9dric Hannotier &lt;<a href=3D"mailto:cedric.hannotier@ul=
b.be" target=3D"_blank">cedric.hannotier@ulb.be</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On 11/01/21 21:40, Jonathon =
Pendlum wrote:<br>
&gt; Hi Cedric,<br>
<br>
Hi Jonathon,<br>
<br>
&gt; Does the issue go away if you comment out test.start_tb(...) and all<b=
r>
&gt; instances of test.start_test(...) and test.end_test() in the testbench=
?<br>
<br>
If I comment out test.{start,end}_tb, it fails with:<br>
&quot;Fatal: The connected block has an incompatible backend interface&quot=
;.<br>
The testbench is unusable in this case (whatever the GUI value).<br>
<br>
If I comment out test.{start,end}_test, it prints:<br>
&quot;Fatal: No test running&quot;,<br>
but proceed to run the full testbench (without reporting test status).<br>
With GUI=3D1, I get the same error message than previously:<br>
&quot;FATAL_ERROR: Vivado Simulator kernel has discovered<br>
an exceptional condition from which it cannot recover&quot;<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
</blockquote></div>

--000000000000aa136605b8b8631b--


--===============7910239469701429978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7910239469701429978==--

