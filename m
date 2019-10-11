Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A31D4AC1
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2019 01:12:57 +0200 (CEST)
Received: from [::1] (port=39860 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJ45g-0005jH-3d; Fri, 11 Oct 2019 19:12:56 -0400
Received: from mail-lf1-f49.google.com ([209.85.167.49]:39974)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <martin.braun@ettus.com>)
 id 1iJ45c-0005bR-7G
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 19:12:52 -0400
Received: by mail-lf1-f49.google.com with SMTP id d17so8134577lfa.7
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 16:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zva88TFAGZut4aEdvwYajcwOYiZ5c9eBAq43BrAqcRM=;
 b=g8Lpo8lL+ynDBC0SQuDuGOXKjpcpIh0Gu+4qnKqA2eX0+S0GsN/6SpbnFIlbe1Im6F
 TyjcwKhhGkeQ8E8xArQwPGShvbLQZwYUnZ244LuUqP+bCJoHbnLl8lneFtWkG4zQbcEL
 3i9O94Rm45KJdWd18slRWV0N+U3uYnrL8zJmhivqo6Xvp8/S80eP9MgcQ0HzWSKNrwMA
 7T9eDOjJQzms3OnoFdvZM1SHEETZgbY5LygO3OhjEJtaj+Tvsu+kJpjUvyVt68fwgjU6
 NCP2Gto5FkNxB4Dez+cvdBRhu04ae0kFgd6idzJocaRqZwojAoDoJkt+s6UmxIb+0qoi
 Egvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zva88TFAGZut4aEdvwYajcwOYiZ5c9eBAq43BrAqcRM=;
 b=AN6HuUfOVu4HUiGgpvaK5GVkT8yevdzgzFOkr49Glq3UojKBygkK9pLC0A7GhoQWbR
 azXJ5jaX0KEDZOvYGjdbMOZXZXrEOBt8fdGNOFY2daU/U5jpV3mSnmtKWII9Od45GBAh
 t8oCySE0iGrkZxypdXxRNbjjI39al2deHzDq66bvcfKK7WTA1fnJ3hGyF4u/PPccMWmt
 MG4ticjX/C+9MfrM/fvtyyx2vem49vNks/2Hiwt8rd8bRc4surSfCZO5z1jK3YkbP+Yf
 wZSdmhccnyfhD2gE2wpCLiBGlDW12Vda7sH4HzaWom/2LiI72dh/IbBQ3kGWWzLVc543
 7e5A==
X-Gm-Message-State: APjAAAUkIeWrMY3Xk4BHig3bbFXvZZY8n/uCqneIuusPAv5s4h+PW/NA
 ziHxgnVaWUJwj1BQf6RvBHcuf0KjeoJF62LBRJXPR4UE
X-Google-Smtp-Source: APXvYqxIkluaCLbCCVdasEw3Ld5SKdECkXTK9+qr9jPWKopHsICxlszFguabx3duK2MCeoVpLO1sftPbuUvY08NOtAc=
X-Received: by 2002:a19:ee0f:: with SMTP id g15mr10113730lfb.23.1570835530937; 
 Fri, 11 Oct 2019 16:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <40ff90d3-12dc-02d2-eb13-7133d8e83087@bham.ac.uk>
In-Reply-To: <40ff90d3-12dc-02d2-eb13-7133d8e83087@bham.ac.uk>
Date: Fri, 11 Oct 2019 16:11:59 -0700
Message-ID: <CAFOi1A6rbbQkOU9ZS+dx2Uc+LP4Y1YHrDjeVPqGyvXSEctnYGw@mail.gmail.com>
To: J Subash <j.subash@bham.ac.uk>
Subject: Re: [USRP-users] B200 FPGA development.
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7405285840990830448=="
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

--===============7405285840990830448==
Content-Type: multipart/alternative; boundary="000000000000d290c00594aaa599"

--000000000000d290c00594aaa599
Content-Type: text/plain; charset="UTF-8"

No, you can do FPGA dev on the B200 series. However, you can't do RFNoC on
the B200 series. The manual has a few comments on it:
http://files.ettus.com/manual/page_usrp_b200.html#b200_customfpga

We expose a register interface (meaning you might not also have to modify
UHD), and there's a scratch space in the Verilog where you can drop your
designs into.

-- M

On Wed, Oct 9, 2019 at 8:10 AM J Subash via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi guys,
>
> I am looking to incorporate a channel equaliser and channel fader in the
> DUC and DDC chain inside a B200. I can't find examples of this sort on
> the Ettus KB. Is FPGA development confined to the X series and N series
> devices?
>
> Thanks very much.
>
> BW
>
> JS
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d290c00594aaa599
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>No, you can do FPGA dev on the B200 series. However, =
you can&#39;t do RFNoC on the B200 series. The manual has a few comments on=
 it: <a href=3D"http://files.ettus.com/manual/page_usrp_b200.html#b200_cust=
omfpga">http://files.ettus.com/manual/page_usrp_b200.html#b200_customfpga</=
a></div><div><br></div><div>We expose a register interface (meaning you mig=
ht not also have to modify UHD), and there&#39;s a scratch space in the Ver=
ilog where you can drop your designs into.</div><div><br></div><div>-- M<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Oct 9, 2019 at 8:10 AM J Subash via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi guys,<b=
r>
<br>
I am looking to incorporate a channel equaliser and channel fader in the <b=
r>
DUC and DDC chain inside a B200. I can&#39;t find examples of this sort on =
<br>
the Ettus KB. Is FPGA development confined to the X series and N series <br=
>
devices?<br>
<br>
Thanks very much.<br>
<br>
BW<br>
<br>
JS<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d290c00594aaa599--


--===============7405285840990830448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7405285840990830448==--

