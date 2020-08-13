Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA9A243E86
	for <lists+usrp-users@lfdr.de>; Thu, 13 Aug 2020 19:55:41 +0200 (CEST)
Received: from [::1] (port=44446 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6HRy-0007ls-Ej; Thu, 13 Aug 2020 13:55:38 -0400
Received: from mail-vs1-f43.google.com ([209.85.217.43]:46449)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1k6HRv-0007ar-Jv
 for usrp-users@lists.ettus.com; Thu, 13 Aug 2020 13:55:35 -0400
Received: by mail-vs1-f43.google.com with SMTP id b26so3340234vsa.13
 for <usrp-users@lists.ettus.com>; Thu, 13 Aug 2020 10:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cRJ4KXx46aWK17wdf0hQ9iAmYGv36brTTcPP+bpYWEo=;
 b=V7bcfvW9kTQUC53K0Gc88ESbwq2TEwauGxfu4E6VEznCn49I/J5UaF8dKMcFufV1il
 9+ZJVSsio8QmLV/W6+vD1BcuCIO2JAmgRDCAeHWDzfqsstBeITFfiyrk0w5NQvtinE9S
 leKzioM/3E8YmQGjPTelo8IyIqMpusV7WvWY4dVy1UgaZzI7ohY+WnQfgQShtThJRW5B
 hrztnpODrtRJEXGpiv1xz5BD508aZ3TVtVPmMvbdy235K5TqYe0W7zL3uLK5WRerBcTl
 Gr1g4cSrFZVBPqzrX1QaTHMxWOpsVMGUNxep1GAoIf6ReOM0l6jV0Ubdh7fwrXpqGKNh
 qdsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cRJ4KXx46aWK17wdf0hQ9iAmYGv36brTTcPP+bpYWEo=;
 b=Y5UZH9v3IjL4pDZ4I+jNAqoR0v4BY93J9D9Z5b0yDI3VfBvdJjdE507XoxlA4cXN0i
 xiTJcamEERK4gKg3vJPTca4NAh8V3HfvDWTRXpDUVMBGA++xWG/h+Axp0IPFxGvO6N6+
 nh7OKwP864NgmX7UmVkrfPh0VmYLpLFYK3FdOP5+wrKkbD9AXp9qeAd61pWlWZ8kXpY7
 Pre7jA+odWeTxdcWxByGm7YkFBWN4zCdj2XwOXvI2a/FixraP2nFCHOvcxnumMsHDbmg
 AuTcna02sI/a+z7B9B040d1cOyNAEQm0sEhNJ64KwcWrR+MN/PHZNkG2goDMwRJlbLTf
 YS6g==
X-Gm-Message-State: AOAM532bCfKMzgOX7+4KIrmjXgK+icqdhBh4yLuOaII3xBNsPQ8Fmctn
 63VXEe/nVgEfWLZ9e5v5cTSdATUM/kW49vITwz4Sh2OK
X-Google-Smtp-Source: ABdhPJwX6vsKocwL93c+J3InEXv8Ej9tgoQ4AM5MMW7OxhgrtJ2EEnvfIdkT1GXOvTD3Uo1EvWmOk2005OkoWqRwFH0=
X-Received: by 2002:a67:fdc4:: with SMTP id l4mr4491345vsq.51.1597341294746;
 Thu, 13 Aug 2020 10:54:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAP+KAYBS2ga8fHhAH7S-ii_ubhdx-6DMv=QB+E-bwAF60UKnPQ@mail.gmail.com>
In-Reply-To: <CAP+KAYBS2ga8fHhAH7S-ii_ubhdx-6DMv=QB+E-bwAF60UKnPQ@mail.gmail.com>
Date: Thu, 13 Aug 2020 13:54:19 -0400
Message-ID: <CAL7q81s87XnMPca0WyqSEPAz8ZyEw4YZmYuQA2o7NQE7JPYWeQ@mail.gmail.com>
To: "Anthony B." <anthonyld508@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Starting with FPGA USRP
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
Content-Type: multipart/mixed; boundary="===============4613797899823888839=="
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

--===============4613797899823888839==
Content-Type: multipart/alternative; boundary="000000000000757a2105acc600db"

--000000000000757a2105acc600db
Content-Type: text/plain; charset="UTF-8"

Hi Anthony,

You can generate an ISE project by going to the directory usrp3/top/b200
and running "make PROJECT_ONLY=1 B200". The project file will be located in
the build directory.

Jonathon

On Wed, Aug 12, 2020 at 8:51 AM Anthony B. via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all,
>
> I recently acquired a USRP B200 and I would like to start developing
> within it. I've followed the FPGA Manual :
> https://files.ettus.com/manual/md_usrp3_build_instructions.html
>
> So I have now Xilinx ISE and the build files from the FPGA. I was
> wondering where to start with these files - can we somehow open them in the
> Xilinx Tools ? How can we have a starting view on how the USRP B200 FPGA is
> composed ?
>
> Thanks for your answers !
>
> Best,
> Anthony
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000757a2105acc600db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Anthony,<div><br></div><div>You can generate an ISE pro=
ject by going to the directory usrp3/top/b200 and running &quot;make PROJEC=
T_ONLY=3D1 B200&quot;. The project file will be located in the build direct=
ory.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 12, 2020 at 8:51 AM=
 Anthony B. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello all,</div><div><br>=
</div><div>I recently acquired a USRP B200 and I would like to start develo=
ping within it. I&#39;ve followed the FPGA Manual : <br></div><div><a href=
=3D"https://files.ettus.com/manual/md_usrp3_build_instructions.html" target=
=3D"_blank">https://files.ettus.com/manual/md_usrp3_build_instructions.html=
</a></div><div><br></div><div>So I have now Xilinx ISE and the build files =
from the FPGA. I was wondering where to start with these files - can we som=
ehow open them  in the Xilinx Tools ? How can we have a starting view on ho=
w the USRP B200 FPGA is composed ?</div><div><br></div><div>Thanks for your=
 answers ! <br></div><div><br></div><div>Best,</div><div>Anthony<br></div><=
/div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000757a2105acc600db--


--===============4613797899823888839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4613797899823888839==--

