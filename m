Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DB92F664E
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jan 2021 17:52:27 +0100 (CET)
Received: from [::1] (port=35566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l05rD-0001O7-Nw; Thu, 14 Jan 2021 11:52:23 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:38397)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1l05r9-0001JE-BW
 for USRP-users@lists.ettus.com; Thu, 14 Jan 2021 11:52:19 -0500
Received: by mail-oi1-f171.google.com with SMTP id x13so6561615oic.5
 for <USRP-users@lists.ettus.com>; Thu, 14 Jan 2021 08:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=APeYzF564+u3mACvjzTyJErjITno145Tq9MtyTALd5c=;
 b=1aGfUruAB56zJ93fpfkXx5AUm/9lbiB4k2QLa4proy33LV8kR43R7lh+6TjZ0sr5Gl
 hktKNXg05fjJSjiiMqDkxoR4Isue1ZpTEG9lWxJwDsFznHIRwPJtLv5cJ+eYQar4CIfy
 BaLKKzhxCCV1xN+oFHwbZ8jBpiWT32a4ghEkEmrLEzmjTe0auRVFpocjH0wMcEilR2Bu
 9mMgVUeh3Bzl6WwmcQxcqWcKwuaHp6EaPhMh4/VrXF8Hw+yK1YUzqZVCdTzIEnbaVr+l
 5buEzgb1D+teFT/dzVhu8AihgHswk0yHs1hy9Y6KmSDQ9kpj11rxGE3vh60LDNB3mGA+
 MUeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=APeYzF564+u3mACvjzTyJErjITno145Tq9MtyTALd5c=;
 b=AbUKVOOUPAuftctAfE9xOU04ewfNelkNyiwFSmzPn0wTg/YVAsjCvz1R7IrLy7NxM3
 2nz4zUwCPnogd/y+cK70uBOhXJzWuLx2KmngSupolD1l6ixyOSlU2fMDejh1w66GHJI/
 y0cG3LjO8nna8l9gJTHUFfoReQZ2bS0t+kBm8THkUIoct0F3OcNTyNa6nGyUPsv1C5bA
 81T5IRI+Gzh+DwNc54OhTjSlSCw/aWYIkfeOcXayr3XbplzL2FNP9l/U6weEEEmbfRww
 Q4NEsQKhqiy6TYgUQ02b0q5CaGH1i7RIIrsO/xBTteJBBdSUwYZgQcNsh8jRB6pOQMgj
 3QSA==
X-Gm-Message-State: AOAM531nZb7JzZFs8UXq1Q3mRUIeFvPGlxSTS3V42xrpJJ1i3cy0rAzI
 bN7PHlcHCz3WXcDn0+81flBh6Rtl68xHZsY7/u8RDOvM
X-Google-Smtp-Source: ABdhPJxdsZEU6cbDhXmPBeDvH0luqu6zj6ZjTCMNouugfiqwhSzuFe9fb5YB+t/yeQblxFRSK+qHGzAkFhc30X5VUV8=
X-Received: by 2002:aca:5786:: with SMTP id l128mr3113740oib.145.1610643098635; 
 Thu, 14 Jan 2021 08:51:38 -0800 (PST)
MIME-Version: 1.0
References: <CANwgjNoJ_DbMRLQqPu7aF2ETi4Ym2pbn9wFo4iRtyt7mH_8Uug@mail.gmail.com>
 <536D41AB-C41E-40C1-B87C-45E66F6246AE@gmail.com>
In-Reply-To: <536D41AB-C41E-40C1-B87C-45E66F6246AE@gmail.com>
Date: Thu, 14 Jan 2021 10:51:27 -0600
Message-ID: <CAFche=jad33=Lag2m+wwBEo2UOc05kWJX4W2UA7yiCVMVKpckQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Changing the transmitted samples per packet
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9119584612753716624=="
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

--===============9119584612753716624==
Content-Type: multipart/alternative; boundary="000000000000c1266405b8df111b"

--000000000000c1266405b8df111b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

See also
https://files.ettus.com/manual/page_configuration.html#config_stream_args_a=
rgs

You might also refer to the benchmark_rate example, which takes arguments
to set the SPP for RX and TX separately.

Wade

On Wed, Jan 13, 2021 at 11:21 AM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> https://files.ettus.com/manual/structuhd_1_1stream__args__t.html
>
>
> Sent from my iPhone
>
> On Jan 13, 2021, at 11:51 AM, Ephraim Moges via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Good morning,
>
> Is their a simple command like tx_streamer.get_max_num_samps that sets th=
e
> maximum number samples per packet?
>
> Thank you,
>
> Moges
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c1266405b8df111b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>See also <a href=3D"https://files.ettus.com/manual/pa=
ge_configuration.html#config_stream_args_args">https://files.ettus.com/manu=
al/page_configuration.html#config_stream_args_args</a></div><div><br></div>=
<div>You might also refer to the benchmark_rate example, which takes argume=
nts to set the SPP for RX and TX separately.</div><div><br></div><div>Wade<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Jan 13, 2021 at 11:21 AM Marcus D Leech via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"auto"><a href=3D"https://files.ettus.com/manual/structuhd_1_1stre=
am__args__t.html" target=3D"_blank">https://files.ettus.com/manual/structuh=
d_1_1stream__args__t.html</a><div><br><br><div dir=3D"ltr">Sent from my iPh=
one</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 13, 2021, at=
 11:51 AM, Ephraim Moges via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"auto">Good morning,<div dir=3D"auto"><br></div><div dir=3D"a=
uto">Is their a simple command like tx_streamer.get_max_num_samps that sets=
 the maximum number samples per packet?<br><br><div dir=3D"auto">Thank you,=
<br><br>Moges</div></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></div>____________________=
___________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c1266405b8df111b--


--===============9119584612753716624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9119584612753716624==--

