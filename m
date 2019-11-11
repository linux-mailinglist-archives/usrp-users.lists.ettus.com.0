Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB1EF7822
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 16:56:15 +0100 (CET)
Received: from [::1] (port=57760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUC2x-0001MT-OT; Mon, 11 Nov 2019 10:56:07 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:42996)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iUC2u-0001Gq-SK
 for usrp-users@lists.ettus.com; Mon, 11 Nov 2019 10:56:04 -0500
Received: by mail-ot1-f45.google.com with SMTP id b16so11628703otk.9
 for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2019 07:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=foty5NOyOERVmfGffiCX1scYEU2K3dJztVeUArIZ7tc=;
 b=tmwKCrbLlAwx3Hv5IAWYT3uUOSLvJMPAHT2EKqV/6WkZTAQ0M93jXfydywUI0Akgr2
 qOeaHzQ7wLJIJwZ3FEhFBv1I+1aOYn6d75+G8A+LqufYHMXWbrJkUrUZEC+cxmr9uGEL
 BzPd7wj68DqgxYdEBRrnZiOcbNBKbeTmIorKudMdm4gubpwkrsWto6r8qVK2i/gSXGNo
 djv/2AVzBxOlk81NPuIV/v7x+6kKasxkOeWiuxl6qwiJ7rvE8cHAyuM7URm05OddFFdl
 DfkEsXYQTKBiA9oMutZZG8ZwsuWcTs+mZYmuzymzBC+Bh46PcdLNgPNQns4RBrm/5Hqm
 4mYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=foty5NOyOERVmfGffiCX1scYEU2K3dJztVeUArIZ7tc=;
 b=tYR9SbirmLAErMBsXqT2mE1D6vCGkJ2IX5iENH04k9GRwz1zcIclT90my7NzE4eoVO
 kksFC8v3TO+myUGmCeSe+Wvu4F0byLUPc4dlmHCIRgLYLLLeYIg3eWiKAznjC9ByeLa0
 aRHsngNKCZEnK6mmg0CDa1VVE+4VPceiUu3UkzM1XeRCAKupywAFScJdneICztbjdALa
 b96r3ooo5ZuhVRpHJv6b5CQhHSHYDNxMhzAE+oPA4rwGmSYkOyzvgHBd4WEq3IA5BcSm
 vWbmiPfn9l0fvoQz+CE/SoSRg6RysEiwopELoy0f/9CcZwkg84FXUrZ9143X/qPzbdOj
 489A==
X-Gm-Message-State: APjAAAXRV5uEDSTd+s/i1kbVblVYE5/F5HBMmH1SGqqeEjifJOSNzLCe
 2MLMD80qgUZhCowE8qeEA2d2lahgYDkZmObokxCWn/9R
X-Google-Smtp-Source: APXvYqxLzo/fHz6qkgDaoHRXW2T4rytumcs3Jeqt9uIJD0hVnHrfBzsF4NA1P+Yxa7koeA2IZcnAMWkqT51sK2uW4n8=
X-Received: by 2002:a9d:37e6:: with SMTP id x93mr12850805otb.183.1573487723864; 
 Mon, 11 Nov 2019 07:55:23 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1nnhxhioT1_dt0X9NgjAwbvPfEc2fjURg4ywOid1Vjt3Q@mail.gmail.com>
In-Reply-To: <CAFPzw1nnhxhioT1_dt0X9NgjAwbvPfEc2fjURg4ywOid1Vjt3Q@mail.gmail.com>
Date: Mon, 11 Nov 2019 07:56:04 -0800
Message-ID: <CAL263iwxzsfpxbQ+o5t+RF8oUcbaGcPJGSySEC_6rAA0cQL-fA@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Subject: Re: [USRP-users] Record in disc 4 channels in continuos mode
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6942379548172186983=="
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

--===============6942379548172186983==
Content-Type: multipart/alternative; boundary="000000000000d7145305971428fd"

--000000000000d7145305971428fd
Content-Type: text/plain; charset="UTF-8"

Hi Anabel,

What parameters are you using with the rx_samples_to_file example?

Regards,
Nate Temple

On Mon, Nov 11, 2019 at 3:02 AM Anabel Almodovar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I am trying to make a continuous acquisition with an ettus x310 card whose
> daughter boards are TwinRx. I have used as a base the example
> "rx_samples_to_file.cpp" and I have modified it to be able to acquire
> continuously with the 4 available channels. However, this gives me an
> error and saves a lot of zeros even though I don't get the overflow error. By
> testing the unmodified example I also get those zeros.
>
> Could someone tell me why this happens? How can I solve this error and
> save the acquisition continuously on disk with the 4 channels?
>
> Thank you in advanced.
>
> Regards,
> Anabel
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d7145305971428fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Anabel,<br><br>What parameters are you using with th=
e rx_samples_to_file example?<br><br>Regards,<br>Nate Temple</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, N=
ov 11, 2019 at 3:02 AM Anabel Almodovar via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv><span lang=3D"en"><span title=3D"">Hello,</span></span></div><div><span =
lang=3D"en"><span title=3D""><br></span></span></div><div><span lang=3D"en"=
><span title=3D"">I am trying to make a continuous acquisition with an ettu=
s x310 card whose daughter boards are TwinRx.</span> <span title=3D"">I hav=
e used as a base the example=C2=A0 &quot;rx_samples_to_file.cpp&quot; and I=
 have modified it to be able to acquire continuously with the 4 available c=
hannels.</span> <span title=3D"">However, this gives me an error and saves =
a lot of zeros even though I don&#39;t get the overflow error.</span> <span=
 title=3D"">By testing the unmodified example I also get those zeros.</span=
> <br></span></div><div><span lang=3D"en"><span title=3D""><br></span></spa=
n></div><div><span lang=3D"en"><span title=3D"">Could someone tell me why t=
his happens?</span> <span title=3D"">How can I solve this error and save th=
e acquisition continuously on disk with the 4 channels?</span></span></div>=
<div><span lang=3D"en"><span title=3D""><br></span></span></div><div><span =
lang=3D"en"><span title=3D"">Thank you in advanced.</span></span></div><div=
><span lang=3D"en"><span title=3D""><br></span></span></div><div><span lang=
=3D"en"><span title=3D"">Regards,</span></span></div><div><span lang=3D"en"=
><span title=3D"">Anabel<br></span></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d7145305971428fd--


--===============6942379548172186983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6942379548172186983==--

