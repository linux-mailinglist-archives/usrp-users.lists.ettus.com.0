Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B662F2247
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jan 2021 22:56:05 +0100 (CET)
Received: from [::1] (port=58268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kz5AQ-0002Ob-O9; Mon, 11 Jan 2021 16:56:02 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:33496)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kz5AM-0002Hp-7P
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 16:55:58 -0500
Received: by mail-ot1-f42.google.com with SMTP id b24so381269otj.0
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 13:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A57W4Lie2eiANsBQIdgWxawLymXHJ5SmbNV/B+Aemls=;
 b=NVhi/vOwn432zPTxxOY2nmtZnp+umeXseyh+QC7JP+I0oAsN84zhkhjlYs+lKV8Pqt
 l5eI1eG/e+RtoKgsbYmcVTaEBK1aUEZarwQpIrVIjVC1lTg4RLCkhsr/5aSsv03APh3U
 zYSBNW141r2Tn2RMMTJcKJ21qXg8UQPVLUUtFUD80qkUA+0zHtjywzWsEmblV7rT12O2
 PfTRzRiv0XB0U0uiUyki/4bcP/Ig4J3/9MwUhnjdGVme4ozqo/Usqrnmzu5bOTtyw7mm
 Roeo5kD9uCizxk+21yRJp3vnClmxG4dFPuw3eP+H2wr8Or7nm3fUv01ogUHy6CXzDWXi
 lpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A57W4Lie2eiANsBQIdgWxawLymXHJ5SmbNV/B+Aemls=;
 b=XPOTyDD2j8Ww/MrI+GqvMcWVydMHpGFfi5uDK6X9o4ihXPUsykU6eyAeYdO0Abus9Q
 7D6kqELXa/170gjntdlXMOOrmSbbz7964Kx5S6/eymy5kFPEh6I+vqtCdgtAViAWmx90
 s9Qu7hQA+Ev0WJlw2AxeprCJgYW14vx46CMv5XHFY/Kb4rbe8pG5lS51Wu3V78M9YtED
 49ba17BWCDAFbMJlUnYMzdzDHiIW7ka6URh9lfCxxjepi1S2JxcdRE385CyjCpnyBtyA
 eXovR79gi/QZSpvMzeBA3iV9H6zeDPvKcqKhMGTgRCufuD3WrIjTzcQjeaTt5PXDLbru
 4jFA==
X-Gm-Message-State: AOAM5322tvdXKdT90OrvCbJY/D3BGITp4DyPdvEl20D+I7rpM2CC5bVY
 euq2zAIwidb8MP3AyTtGQLMkInMcWsT5wIqgue62MQ==
X-Google-Smtp-Source: ABdhPJxMe69Vsj2My050FLfZY0tH0H2F6SoeRI5wXvq1G0GAFt4aKZdyPkew8y/KDrco9aT/yVYCzLzLC7PaNFsP5Fs=
X-Received: by 2002:a9d:6b10:: with SMTP id g16mr746202otp.301.1610402117301; 
 Mon, 11 Jan 2021 13:55:17 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR04MB09584442BD5C6AA7CF56BC7193AB0@MWHPR04MB0958.namprd04.prod.outlook.com>
In-Reply-To: <MWHPR04MB09584442BD5C6AA7CF56BC7193AB0@MWHPR04MB0958.namprd04.prod.outlook.com>
Date: Mon, 11 Jan 2021 16:55:06 -0500
Message-ID: <CAB__hTSVh=N11SJkh+RvooiH_NjN3gngw0kUDGWp=inhdFV_Rw@mail.gmail.com>
To: Yechiel PELED <yechiel.peled@ni.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] X310 and Fiber Optics Network and F.O cabling
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6933631717623375679=="
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

--===============6933631717623375679==
Content-Type: multipart/alternative; boundary="00000000000025fcec05b8a6f6be"

--00000000000025fcec05b8a6f6be
Content-Type: text/plain; charset="UTF-8"

Hi Yechiel,
The X310 works fine with 10Gbe optical transceivers over a direct fiber
link (direct fiber between USRP and host PC with 10Gbe NIC).  I see no
reason why it wouldn't work with a 1Gbe optical transceiver (GBIC) if you
use the correct HG FPGA image for the X310.  If you are using it over a
network, keep in mind that the X310 supports only static IP.
Rob

On Mon, Jan 11, 2021 at 1:12 PM Yechiel PELED via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi
>
>
>
> Do you have experience with using the X310 , connected to a Fiber Optic
> network module through a Fiber Optic cable ?
>
> Does the X310 able to accept/Work with Optic GBIC and it works OK ?
>
> If OK, what is the suitable GBIC to for working with X310 ?
>
> Pls recommend with model/types.
>
>
>
> Yechiel
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000025fcec05b8a6f6be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Yechiel,</div><div>The X310 works fine with 10Gbe =
optical transceivers over a direct fiber link (direct fiber between USRP an=
d host PC with 10Gbe NIC).=C2=A0 I see no reason why it wouldn&#39;t work w=
ith a 1Gbe optical transceiver (GBIC) if you use the correct HG FPGA image =
for the X310.=C2=A0 If you are using it over a network, keep in mind that t=
he X310 supports only static IP.</div><div>Rob</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 11, 2021 at 1:12 =
PM Yechiel PELED via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_6706017336973635874WordSection1">
<p class=3D"MsoNormal">Hi<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Do you have experience with using the X310 , connect=
ed to a Fiber Optic network module through a Fiber Optic cable ?<u></u><u><=
/u></p>
<p class=3D"MsoNormal">Does the X310 able to accept/Work with Optic GBIC an=
d it works OK ?<u></u><u></u></p>
<p class=3D"MsoNormal">If OK, what is the suitable GBIC to for working with=
 X310 ?<u></u><u></u></p>
<p class=3D"MsoNormal">Pls recommend with model/types.<span style=3D"font-f=
amily:Arial,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Yechiel<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000025fcec05b8a6f6be--


--===============6933631717623375679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6933631717623375679==--

