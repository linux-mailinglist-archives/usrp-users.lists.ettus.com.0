Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B426361372
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 22:26:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35EEE3840EC
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 16:26:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="12vmvLHs";
	dkim-atps=neutral
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 62CC2384608
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 16:26:04 -0400 (EDT)
Received: by mail-ed1-f45.google.com with SMTP id i3so3965695edt.1
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 13:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YMtG3Guhb+TMxUPds4Woy1IdeqX0MWsBMBCtIJgzqgA=;
        b=12vmvLHsKXTH1SNl5mx2ysXSbDAkqVlR7MjsuxLrwG5gejvhYC2TEWoWW46M54/r7G
         GpI6ijJhHvvaLNs5vfYW24R78yVfouZ9b83v8uwHBPFiGTbvX0kCCg/HSQraGoZHdYvT
         rcw3NTX4Z1lEz8Rz4znSS386KNvotD0pq4HRRiMbjzfIh2EGU2BnK1JAbKKoWnjwcAT+
         g0zDC4VGNJ6X/efENePXOBwd7mvTBle92YFDzLMZsEmfsJwmEJ1GsFlr4iB0NJ9lGs1P
         w9sbFBbL33yFzkBpP82y+WL+b31RWCCmysNFU8wBh4NfHVbnJPmHGtxYlRHroTnoAaNb
         WgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YMtG3Guhb+TMxUPds4Woy1IdeqX0MWsBMBCtIJgzqgA=;
        b=daiqTkfDA2nRlzmNl9EtRMQidH8T9fyEpnT0MozWmSUhDAmoh1gJWASRw9027Hhltm
         EFoNYWBG0un2Wfs973A+mmQiduuIYjD+ALZ4u7XE1GtzLDMu+TfbVRz2E926FsstIK1n
         McxfBVY8jYiIAjAITR5cYV78uUgO147ET1znTDJYrcXTHSmxVt1R2RcSq+EFeY4oyHbp
         yEWVUJxvUiy0jYbYfWleFYcET85C0s83QPKPFn+MX5s89CxoqkAE96LTwyguSUIUFQTq
         hEnraqak0haqLeZQsJdzUHCwWg2cyp7k9KRJTT0X7b2scpuW5ko/bw3MoB8hEW19HCDy
         vvZQ==
X-Gm-Message-State: AOAM5325Cb1lZMDsrkBgNVfC4126hauCdafobWUb1A8QNAQZSOCgv6H5
	1fYZvw1GhlZcVYWdADL4rtEvcmT2pLh6ND9l71PaD4qp
X-Google-Smtp-Source: ABdhPJxGv/Sw6773FtzUByX7TUDBlG35dGgZ0c2tLLJbU+Ew7C4ZPNlV1glkLxdKLMi++3QVQ4k6ReA0Plbs4JOl6D4=
X-Received: by 2002:a05:6402:31a9:: with SMTP id dj9mr6412066edb.343.1618518363473;
 Thu, 15 Apr 2021 13:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR19MB314923A9CE83FC523E434FD9A44D9@MN2PR19MB3149.namprd19.prod.outlook.com>
In-Reply-To: <MN2PR19MB314923A9CE83FC523E434FD9A44D9@MN2PR19MB3149.namprd19.prod.outlook.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 15 Apr 2021 16:25:27 -0400
Message-ID: <CAL7q81tCTRqO07H5Y571ppofag9h3zJ69NvGX6JFP=-BCDodvg@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Message-ID-Hash: GSRCCSIP2LTNMEY7K3E5QKBZVBEAYJQW
X-Message-ID-Hash: GSRCCSIP2LTNMEY7K3E5QKBZVBEAYJQW
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding RFNoC Blocks to GRC in UHD-4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GSRCCSIP2LTNMEY7K3E5QKBZVBEAYJQW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4671584959870218035=="

--===============4671584959870218035==
Content-Type: multipart/alternative; boundary="0000000000001e1a1f05c008ac94"

--0000000000001e1a1f05c008ac94
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

Several RFNoC blocks haven't been ported to GNU Radio yet, but they
are planned to be in the near future.

Jonathon

On Thu, Apr 15, 2021 at 3:48 PM Jeff S <e070832@hotmail.com> wrote:

> My current versions are:
>
>   Linux:  Ubuntu 18.04LTS
>   GNU Radio: v3.8.2.0-102-gcc5a816b
>   UHD: UHD-4.0 (e520e3ff)
>   gr-ettus: maint-3.8-uhd4.0 (1038c4ce)
>
> The UHD and gr-ettus repositories seem to have the RFNoC blocks, in
> particular, the FIR filter (the one I'm interested in).  But they don't
> seem to have been installed for use in GNU Radio Companion.  The RFNoC
> Rx/Tx Radios and DDC/DUC blocks seem to have been installed.  Is there a
> process for getting the other blocks installed?
>
> Regards
> Jeff
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001e1a1f05c008ac94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>Several RFNoC blocks haven&#39=
;t been ported to GNU Radio yet, but they are=C2=A0planned to be in the nea=
r future.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 15, 2021 at 3:=
48 PM Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com">e070832@hotmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
My current versions are:<br>
<br>
=C2=A0 Linux:=C2=A0 Ubuntu 18.04LTS<br>
=C2=A0 GNU Radio: v3.8.2.0-102-gcc5a816b<br>
=C2=A0 UHD: UHD-4.0 (e520e3ff)<br>
=C2=A0 gr-ettus: maint-3.8-uhd4.0 (1038c4ce)<br>
<br>
The UHD and gr-ettus repositories seem to have the RFNoC blocks, in particu=
lar, the FIR filter (the one I&#39;m interested in).=C2=A0 But they don&#39=
;t seem to have been installed for use in GNU Radio Companion.=C2=A0 The RF=
NoC Rx/Tx Radios and DDC/DUC blocks seem to have been installed.=C2=A0 Is t=
here a process for getting the other blocks installed?<br>
<br>
Regards<br>
Jeff<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001e1a1f05c008ac94--

--===============4671584959870218035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4671584959870218035==--
