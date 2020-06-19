Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B562009C4
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jun 2020 15:17:16 +0200 (CEST)
Received: from [::1] (port=59280 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jmGtN-0006JW-89; Fri, 19 Jun 2020 09:17:13 -0400
Received: from mail-lf1-f47.google.com ([209.85.167.47]:33412)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <srushti.siri@gmail.com>)
 id 1jmGtI-00064T-DV
 for usrp-users@lists.ettus.com; Fri, 19 Jun 2020 09:17:08 -0400
Received: by mail-lf1-f47.google.com with SMTP id g2so5552136lfb.0
 for <usrp-users@lists.ettus.com>; Fri, 19 Jun 2020 06:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F0WIwuIaEUX/MXiquiSVS9udTzBtkKQKzTr4hBeIB+o=;
 b=DTMNHuxIAfvYvbJEl585LXtEbdzUFtM4FWMJUEBBqQ8lk4OU6i39hKOqlFrOdRh72+
 kcjclzYlunRA/s6v8Acxbi486h4N0dBHZpAPmhqMZWCC64/yv6F/KkqS59Mn60LQSO/I
 Q+ZehqKDgegM815koi5GNt/9+l+eaCTjjCOU1lIoOWKHUMJ40VerBf1To8cuVhGW/gKA
 NCdyKDijzaeYrXoE/jJNlcyBw7LxliX/9m7MbYDXzC8lD9e5Q9sLfvgKlK8ezbPf0hmQ
 6lXOzDV1VBXZv2hnyPnXrHWqt0euIZzcr8jYLycMPhXgtYNOQiXxuypqmKrLs0AMT1/9
 49gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F0WIwuIaEUX/MXiquiSVS9udTzBtkKQKzTr4hBeIB+o=;
 b=UUtBzh7j0VBfhqC8n+JtgpZNuRKIFZ/JzKH1QH2MfUc0JKOPsuauPr7zM7jRTlal3u
 csNKs527+ef82VSupwswI19PUAUvLhIr/7ky6LWFhHT8qAa74ZuRlxmjrsDnxWu2/zok
 TaL6NMxPTL8RM5ha7ix1W2JFZYbMCcxlN/8akYaNJYOk0EsJxuCMpFGFute2InhZvpqa
 f9Og8n9W4YzIGgn7R11QGrMHWD/iUFFE9MgWXiKEVy8OPpvOalubbXdinOA+Dxo3eimx
 6cPkBCPqnxBLa+cmisD7uNTbiSyn4nwJWIHUWTVahRgbrvSzumWkwH95JRd7jeqksbzg
 HJ2g==
X-Gm-Message-State: AOAM5316CitwONk0NiACKLfZjdg437Qhs98WGdJo7sUhJqCc2NPscDjz
 ekTRr0lwgnjinFhgaPRU21IQvKhfp3J+UodLGJJa/6Z5peNH5g==
X-Google-Smtp-Source: ABdhPJy0jS4Rmlbw/1SmijgKD3odIdewyPX+iNp/+gjoUfQss5CYvts32o6Wkw2rG7tCukEpW676aKRwy5TawzF69Gc=
X-Received: by 2002:a19:8307:: with SMTP id f7mr1926611lfd.174.1592572586955; 
 Fri, 19 Jun 2020 06:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <CABpcK0qRMWYJ6AqdfFcdSE5ZGEywq=Rp6d5QE4nEKCc3r0_UXg@mail.gmail.com>
 <94d2f515-73ef-7117-88f7-99265f2b3941@ettus.com>
In-Reply-To: <94d2f515-73ef-7117-88f7-99265f2b3941@ettus.com>
Date: Fri, 19 Jun 2020 15:15:50 +0200
Message-ID: <CABpcK0phqJVmbTM1gZjiVRt_cBwW4poOzsRoWxAnp18Rmzd6Bg@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Installing two DPDK versions in one PC
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
From: srushti via USRP-users <usrp-users@lists.ettus.com>
Reply-To: srushti <srushti.siri@gmail.com>
Content-Type: multipart/mixed; boundary="===============7461546196899594530=="
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

--===============7461546196899594530==
Content-Type: multipart/alternative; boundary="00000000000053194905a86fb355"

--00000000000053194905a86fb355
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

Thank you for your reply.

I tried this without containerizing and now I have two DPDK versions in the
same PC. I agree, you cannot run them simultaneously and also this might be
right in the context of a Docker file container (haven't tried it though).

Srushti

On Wed, Jun 17, 2020 at 11:09 PM Marcus M=C3=BCller <marcus.mueller@ettus.c=
om>
wrote:

> You should technically be able to do that, but it really doesn't sound
> wise to do that without containerizing your file systems. Then, it
> should be no problem at all.
>
> Note that *running* more than one version at the same time is something
> different. Generally, again, should work with differen logical devices
> (that's the whole sense of the iommu magic happening beneath), but it
> might take extra steps.
>
> Best regards,
> Marcus
>
> On 05.06.20 13:44, srushti via USRP-users wrote:
> > Greetings,
> >
> > Hope you all are doing well!!
> >
> > I have a question regarding DPDK. Has anyone tried installing multiple
> DPDK
> > versions in the same PC? Is it possible? Will it break something in the
> PC?
> >
> > For example, can you have DPDK 17 and DPDK 18 installed in the same
> machine?
> >
> > Please let me know if anyone has tried this.
> >
> > Thank you
> >
> > Srushti
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--00000000000053194905a86fb355
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Marcus,<div><br></div><div>Thank you for your reply.=
=C2=A0</div><div><br></div><div>I tried this without containerizing and now=
 I have two DPDK versions in the same PC.=C2=A0I agree,=C2=A0you cannot run=
 them simultaneously and also this might be right in the context of a Docke=
r file container (haven&#39;t tried it though).<br></div><div><br></div><di=
v>Srushti</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jun 17, 2020 at 11:09 PM Marcus M=C3=BCller &lt;<a =
href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">You should=
 technically be able to do that, but it really doesn&#39;t sound<br>
wise to do that without containerizing your file systems. Then, it<br>
should be no problem at all.<br>
<br>
Note that *running* more than one version at the same time is something<br>
different. Generally, again, should work with differen logical devices<br>
(that&#39;s the whole sense of the iommu magic happening beneath), but it<b=
r>
might take extra steps.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 05.06.20 13:44, srushti via USRP-users wrote:<br>
&gt; Greetings,<br>
&gt; <br>
&gt; Hope you all are doing well!!<br>
&gt; <br>
&gt; I have a question regarding DPDK. Has anyone tried installing multiple=
 DPDK<br>
&gt; versions in the same PC? Is it possible? Will it break something in th=
e PC?<br>
&gt; <br>
&gt; For example, can you have DPDK 17 and DPDK 18 installed in the same ma=
chine?<br>
&gt; <br>
&gt; Please let me know if anyone has tried this.<br>
&gt; <br>
&gt; Thank you<br>
&gt; <br>
&gt; Srushti<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>

--00000000000053194905a86fb355--


--===============7461546196899594530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7461546196899594530==--

