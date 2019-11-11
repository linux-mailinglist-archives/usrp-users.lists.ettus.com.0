Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEA7F7A47
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 18:53:40 +0100 (CET)
Received: from [::1] (port=44452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUDsg-0004RY-Rh; Mon, 11 Nov 2019 12:53:38 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:44906)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iUDsd-0004Mq-1P
 for usrp-users@lists.ettus.com; Mon, 11 Nov 2019 12:53:35 -0500
Received: by mail-oi1-f171.google.com with SMTP id s71so12230797oih.11
 for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2019 09:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xL2BrubDe5pO8Eu8YilahqMdm0FNOU5cKL9PhorjGA0=;
 b=Q2fdZOw30H2IAzuSOYyHyY/3RD7xPAKB0fuMP3UImjkb/+9WD5k3scMOagae9GYmZ7
 ta5jH7xpOYx2as3oYZOyzg7pceLBP+oI5CuJV+OPhZ7cIyRGAev6Iq+cp0LfbNcvhfN8
 4/k6fGCqr0XCApcoU+I6TJQwRX6fgIpQJaRtImX77GDy/MGzzicaGlvYLaSxq/kfLm/T
 SiJIQLPcreIhiN9Ys1vUxxYtNYq5f2x7UDxCPWlKGWWlJcZu+0GEwTVJHQqfYka72qL1
 1ZAFAUgJAHle30UW1SIYh9hJ3jhPv7zg/IQXr1Qa/OTLeOICxrPljHMMrEhxpj/lQ8za
 aLMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xL2BrubDe5pO8Eu8YilahqMdm0FNOU5cKL9PhorjGA0=;
 b=XNHm44ydnhllk2g529ireNxEUT0h/5cNcg+mU6KnJQcNeGpWm50AkbcyXPlg9RvrHe
 9dliZxtYtVfFjf47I9pNhWsLk6IVnF4z9BVzpz9vXe9qFEEsXd3afsmvmVyx7jDZ3Ccb
 xmnV6+DFW+U3dzf015OIv1A59M+ABn094dlfNRQvxjURuWWy0BHNSDR6L67wURfBRxwM
 h6Qdxk+KqmGZfGZ79txT9YXTm12oH+g9ehV6kXUdQQKEbuHCc+lJvkfW17VbHIDYa83j
 K7Lkmo/PWU7LQXtnwskgKELZ+2zFxwnoyrTVHTIa45nJczAHqgTjiq60SkxW1vIfRwXh
 iNrQ==
X-Gm-Message-State: APjAAAVGkz7I2cGrErVsc7jWvaBpOZYPn+/E/LlhUDGw8IM6KKeH0uAm
 f1qtsVOu9i95FdHzc0OPyGiPkDqOlCjg13IK8xrwXHoj
X-Google-Smtp-Source: APXvYqyLN+wRq2TXvcGozUvfUTUP4OQmLSNerJsffJK8djNCml05SxWtcSjsc9XUoUgBwIrgbzZcRxSf/pm5dgpiG6g=
X-Received: by 2002:aca:c7c1:: with SMTP id x184mr192989oif.158.1573494774251; 
 Mon, 11 Nov 2019 09:52:54 -0800 (PST)
MIME-Version: 1.0
References: <BN6PR19MB16354D6DF912FDD8DD841069A4740@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB16354D6DF912FDD8DD841069A4740@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Mon, 11 Nov 2019 09:53:34 -0800
Message-ID: <CAL263ixtrNXFh_yQrDC7CWsXY=eX-CEcwyuFHm0MijrfZTxGTg@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] Virtual Machine (VM) Application Note
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7212575231667000957=="
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

--===============7212575231667000957==
Content-Type: multipart/alternative; boundary="000000000000136544059715cdcc"

--000000000000136544059715cdcc
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

That application note has not yet been posted. We hope to have it posted
soon. I've removed that section from the existing app note for now.

The main takeaways are that you should expect about half the performance as
running on bare metal when running a VM. If you're running with a B2xx
USRP, you will need to add VID/PID pass through rules.

Regards,
Nate Temple

On Mon, Nov 11, 2019 at 4:19 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Application Note AN-445 has a section that references "Using a Virtual
> Machine (VM)" and says that there is another Application Note which
> describes special issues regarding VMs, but does not have a link to it.  I
> did not see anything in the list of application notes which seems to
> match.  Which application note is needed for VMs?
>
> Link used for AN-445:
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
>
> Link used for Application Notes: https://kb.ettus.com/Application_Notes
>
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000136544059715cdcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jeff,<br><br>That application note has not yet been =
posted. We hope to have it posted soon. I&#39;ve removed that section from =
the existing app note for now.<br><br>The main takeaways are that you shoul=
d expect about half the performance as running on bare metal when running a=
 VM. If you&#39;re running with a B2xx USRP, you will need to add VID/PID p=
ass through rules.<br><br>Regards,<br>Nate Temple</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 11, 2019=
 at 4:19 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Application Note AN-445 has a section that references &quot;Using a Virtual=
 Machine (VM)&quot; and says that there is another Application Note which d=
escribes special issues regarding VMs, but does not have a link to it.=C2=
=A0 I did not see anything in the list of application
 notes which seems to match.=C2=A0 Which application note is needed for VMs=
?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Link used for AN-445: <a href=3D"https://kb.ettus.com/Building_and_Installi=
ng_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" id=3D"gmail=
-m_6905043452431796337LPNoLP126935" target=3D"_blank">
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux</a></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Link used for Application Notes: <a href=3D"https://kb.ettus.com/Applicatio=
n_Notes" id=3D"gmail-m_6905043452431796337LPNoLP860032" target=3D"_blank">
https://kb.ettus.com/Application_Notes</a><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<br>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000136544059715cdcc--


--===============7212575231667000957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7212575231667000957==--

