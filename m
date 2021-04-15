Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E5A36136A
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 22:24:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FFE7384613
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 16:24:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="pgq3PUA0";
	dkim-atps=neutral
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 02B62383FE8
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 16:24:08 -0400 (EDT)
Received: by mail-ej1-f52.google.com with SMTP id e14so38759793ejz.11
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 13:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BRkAJvHuPN8XTIxFRUxTpaXIaXuRBdYWO9GeevsBbXw=;
        b=pgq3PUA0AOP8PhDzj2W2dzs4IPP+gUm5P3nDhRc2QWxe90PdIVmDA9x3+QY30dpX6r
         W7gpAclUtFZqauxenwtysMVU/Aa9GxQ8U8yVSItcZU7iLr+CgjzRWOnw0ccpg/Kcgqq2
         xqlInbS4I4AyraGOiRDR6nPilxc9qzIYsZGXhIxtE7xDEtHEeZHARrT83FQgkwlsBxik
         +LOSU0/glQ4dNF/OajSH24RIvl2cN/UfPYvRW8syP8BgY+p8G4OUDCBJ18XYRNfRXFk+
         Y64AMhCRjNBdYCT3BwFdoBaud5Xuf1rxNuxhhk1rllUD+34vZPUSOBvTk6WPfYIn6PWr
         mCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BRkAJvHuPN8XTIxFRUxTpaXIaXuRBdYWO9GeevsBbXw=;
        b=IF4iS2QSHot4+rzlVKlIs8FNmZXHXag8jARONFpd49pCbroFhdxogpSuD2EfwIEP4Z
         lv7Pa8iny8xNmzmLcl4UWmnyQ1CEcSCf2DtPm54Y65Xl+1e8JXcoqCgZzF4qzLQ3d2Vn
         mH4K+xjEZSrzZbCy+F1SaTvzEShkzYIYL9k93y3R1J69SLBNN2xTsLKKja+bKODqVDmP
         9on8VupoqkF5os3szfMnKawfGLN0JVQF5ndDkpDQ42FzaxsvWvGGHvtyBsXfTAZGhC5M
         gnGEsD3J3XE+FPFnV1/nX1RhGKwZr40WWqDMxfLigbbNMB5ycdps8LfSYzsKargrg8Uu
         i45Q==
X-Gm-Message-State: AOAM532cqURYTkHS0qUHyaVA0jaJRhxYXqIUqN0c+1WciwWv0jWTCSVL
	/lNcPPmdjluAaddZQ+u+8Ja+8TP6AEqEs2B9AwTiEN4Q
X-Google-Smtp-Source: ABdhPJx3CuvPdBpzCY43AJM4bQIdX8DLDeuNvLQNYWQgusmI76UE3AadSAjqn0dT0IVGzp2NJz8l0uAwzJ3w0x9bhnw=
X-Received: by 2002:a17:906:5450:: with SMTP id d16mr5301879ejp.274.1618518247857;
 Thu, 15 Apr 2021 13:24:07 -0700 (PDT)
MIME-Version: 1.0
References: <x5noQSdeaLNawjyXgOVZBNkLot8B5JiuCoPuzw4lWlU@lists.ettus.com>
In-Reply-To: <x5noQSdeaLNawjyXgOVZBNkLot8B5JiuCoPuzw4lWlU@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 15 Apr 2021 16:23:32 -0400
Message-ID: <CAL7q81tNgFuY=-fj+VuVAB09X+V2Ak9jHa_GJtoU0wuJgWhGFA@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: CL7ZYBNDUC7CP4NXWQMM6PYDEPVSLXDO
X-Message-ID-Hash: CL7ZYBNDUC7CP4NXWQMM6PYDEPVSLXDO
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adjusting data rate in custom RFNoC block based on DDC or DUC data rate.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CL7ZYBNDUC7CP4NXWQMM6PYDEPVSLXDO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8801456895558387165=="

--===============8801456895558387165==
Content-Type: multipart/alternative; boundary="00000000000039f01f05c008a5ef"

--00000000000039f01f05c008a5ef
Content-Type: text/plain; charset="UTF-8"

Hi Julian,

You should not need to adjust the ce_clk rate. The AXI Stream ready/valid
handshake allows you to clock your logic at a higher rate, but still have
the correct average throughput. If your block consumes the incoming samples
faster than the DDC output sample rate, your block's logic will just wait
until the next sample is available (i.e. it will wait for the AXI stream
output from noc_shell to assert tvalid).

Jonathon

On Thu, Apr 15, 2021 at 3:50 PM <jcasallas2019@gmail.com> wrote:

> Hi all,
>
>
> I am designing a custom RFNoC block based on RFNoC4 video which is using
> the ce_clk 200MHz, please correct me if I am wrong.
>
> That RFNoC block will be instantiated twice, one in the RX side and the
> other in the TX (the core yaml file has both instances). The receiver chain
> will look like this, something similar in the TX side but the other way
> around.
>
>
> radio -> ddc -> rfnoc custom block ->rx_streamer-> USRP (host side).
>
>
> I am planning to use an *User Register* to let our custom RFNOC block the
> data rate we want to set in the DDC and DUC, and then use a prescaler to
> change the rate of ce_clk matching the digital converters rate. I wonder if
> this is the right approach or maybe I am missing any caveat I need to look.
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000039f01f05c008a5ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>You should not need to adjus=
t the ce_clk rate. The AXI Stream ready/valid handshake allows you to clock=
 your logic at a higher rate, but still have the correct average throughput=
. If your block consumes the incoming samples faster than the DDC output sa=
mple rate, your block&#39;s logic will just wait until the next sample is a=
vailable (i.e. it will wait for the AXI stream output from noc_shell to ass=
ert tvalid).</div><div><br></div><div>Jonathon</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 15, 2021 at=
 3:50 PM &lt;<a href=3D"mailto:jcasallas2019@gmail.com">jcasallas2019@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><p>Hi all,</p><p><br></p><p>I am designing a custom RFNoC block based o=
n RFNoC4 video which is using the ce_clk 200MHz, please correct me if I am =
wrong. </p><p>That RFNoC block will be instantiated twice, one in the RX si=
de and the other in the TX (the core yaml file has both instances).  The re=
ceiver chain will look like this, something similar in the TX side but the =
other way around.</p><pre><code>
radio -&gt; ddc -&gt; rfnoc custom block -&gt;rx_streamer-&gt; USRP (host s=
ide).</code></pre><p><br></p><p>I am planning to use an <strong>User Regist=
er</strong> to let our custom RFNOC block the data rate we want to set in t=
he DDC and DUC, and then use a prescaler to change the rate of ce_clk match=
ing the digital converters rate. I wonder if this is the right approach or =
maybe I am missing any caveat I need to look. </p><p><br></p><p>Thanks </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000039f01f05c008a5ef--

--===============8801456895558387165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8801456895558387165==--
