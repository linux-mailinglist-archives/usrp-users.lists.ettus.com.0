Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3242A36E183
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 00:23:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A245384222
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 18:23:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QXvrSvNK";
	dkim-atps=neutral
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 02B8338412A
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 18:22:32 -0400 (EDT)
Received: by mail-ot1-f52.google.com with SMTP id u21-20020a0568301195b02902a2119f7613so12882953otq.10
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 15:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hXoZ6eOC08otpusYEy306UDZxd58mq9BNVGHWQwSG6c=;
        b=QXvrSvNKtZL7+B3qIF9BC78Bj3du8slcFaXMSl4FrNwBK7H/r0+JWAoI8nnuWAjyZy
         BWhL7uKk0KXNQIDDxN1N41ZJj0z8HqT8wmc3TT+vlzMop2SAdSLSZ+I8hPF+QXo/Fw7Y
         wcvL5Nx7annA3DorZJDLfNLAzLcykartfxBjgJV+VcQue3Rg9V4eFjdbN7FPAhKDGXSh
         2lDpC6t8H53+Qzm5rdaruNHFOZOmedl9U50VfwR+ZC34brc/qKkwkEtEUaKlHcsXqq7P
         WICVn5sbWR9Pp/14TmALdnfjj/w530FF+oILvVUIWCRFkYNF2GN/wm3Gy8Wzct6DX4mB
         FmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hXoZ6eOC08otpusYEy306UDZxd58mq9BNVGHWQwSG6c=;
        b=WYrAofSG/Ats8Ya2Q/BOJoOJeAKElHBnCmMtx7In8cL+Gd0SiM/YOE5n+M5NmW17vV
         YYV4/4udkCTB734ZoD3jgk8LRa7Ld7DjmtohmQqXc62wqOo8KrTXR0WwZy6LAcYQAXaR
         tTTn0AqnwD7szVKZAcvR7ZdJl3z+Sb6D6NtqDM8ykVBDl44WKN1jDm4DWCevTTUJLi2M
         uxWxUdJmBHzPrVJjeG14wBOYyyg9/QZhhhbLtLWWPb4jck0loBVh8hmCCRBnkcasvCPz
         0i8H4KU8DmZ7IqXbj/YHlxFvAqZDozsmtrr7GViCZG+h9ni6dxQht5TZiAf4Esg6W70m
         1VzQ==
X-Gm-Message-State: AOAM5320hZQ8RmuJB2ZsMOLSy9cSg4A3HGkgMDeKIQBYJj8duc4xfIEv
	1qN2w5K34ngSHKNMC6K03kHvb0xNWkHKO1gZ9/+7KIsLAXKSyw==
X-Google-Smtp-Source: ABdhPJyD06VWlYBwa/iDvwk1HNsE9VePwxqGR2RfwZP9V6SpMHcUmvCmZ1sUlvmy7JV2947b8teuEgtGdbvDqhbKCaM=
X-Received: by 2002:a05:6830:4098:: with SMTP id x24mr25020425ott.15.1619648552325;
 Wed, 28 Apr 2021 15:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <BY3PR09MB73167120DD55101EA0FA542EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
 <CAEXYVK7F=BP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=+w@mail.gmail.com> <BY3PR09MB7316062E0274087C3ABD493EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
In-Reply-To: <BY3PR09MB7316062E0274087C3ABD493EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 28 Apr 2021 18:22:20 -0400
Message-ID: <CAEXYVK6pEM48uyu4W=MzEhpakysLHVJ9u+MZEJSDgHqC0nHuGA@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: BFRES2R3T77NRE2KLCVD5KGPY7VXLA3M
X-Message-ID-Hash: BFRES2R3T77NRE2KLCVD5KGPY7VXLA3M
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bare metal development on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BFRES2R3T77NRE2KLCVD5KGPY7VXLA3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5583071615969488684=="

--===============5583071615969488684==
Content-Type: multipart/alternative; boundary="0000000000009f552805c10fd079"

--0000000000009f552805c10fd079
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 28, 2021 at 5:38 PM Eugene Grayver <eugene.grayver@aero.org>
wrote:

> That's what I was afraid of.  Note that I do not need any daughter cards
> (just LFTX/LFRX), which reduces the number of configuration items.
> My main concern is that I was going to take over the ethernet interface.
> I guess I can take over one and leave the other one for UHD.  I am also
> concerned that the UHD will complain loudly once i start taking blocks out
> of the flowgraph that it expects to be there.
>

Sounds like a good idea about using one ethernet interface for UHD and the
other for your application.  Can you explain a bit more about why you want
to shun a host computer running UHD and do everything in HDL?

As for UHD complaining, are you going to be using UHD 3.15 or 4.0?  If
3.15, then I don't think I've had any issues just connecting the blocks I
care about in a graph and have it be fine (i.e. CustomBlock -> Radio and
Radio -> CustomBlock).  With 4.0, the only blocks I am not sure about are
the DUC/DDC blocks - everything else is very much optional and could be
setup in a static configuration.

I know for the X310 FPGA build that you can't remove the PCIe interface
stuff, and I feel like UHD needs to see the Radio device there, too.  But
otherwise, make everything into a single custom block and you should be
good.

I will say that I've built some custom blocks that did some very minimal
communication over UHD for status and control.  I created a converter()
class/function for transferring my packed data structure through UHD.  That
might be useful if you're doing something that isn't sample based.

  https://files.ettus.com/manual/page_converters.html

Good luck!

Brian

>

--0000000000009f552805c10fd079
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 28, 2021 at 5:38 PM Eugene Gr=
ayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.or=
g</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
That&#39;s what I was afraid of.=C2=A0 Note that I do not need any daughter=
 cards (just LFTX/LFRX), which reduces the number of configuration items.</=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
My main concern is that I was going to take over the ethernet interface.=C2=
=A0 I guess I can take over one and leave the other one for UHD.=C2=A0 I am=
 also concerned that the UHD will complain loudly once i start taking block=
s out of the flowgraph that it expects to
 be there.</div></div></blockquote><div><br></div><div>Sounds like a good i=
dea about using one ethernet interface for UHD and the other for your appli=
cation.=C2=A0 Can you explain a bit more about why you want to shun a host =
computer running UHD and do everything in HDL?</div><div><br></div><div>As =
for UHD complaining, are you going to be using UHD 3.15 or 4.0?=C2=A0 If 3.=
15, then I don&#39;t think I&#39;ve had any issues just connecting the bloc=
ks I care about in a graph and have it be fine (i.e. CustomBlock -&gt; Radi=
o and Radio -&gt; CustomBlock).=C2=A0 With 4.0, the only blocks I am not su=
re about are the DUC/DDC blocks - everything else is very much optional and=
 could be setup in a static configuration.</div><div><br></div><div>I know =
for the X310 FPGA build that you can&#39;t remove the PCIe interface stuff,=
 and I feel like UHD needs to see the Radio device there, too.=C2=A0 But ot=
herwise, make everything into a single custom block and you should be good.=
</div><div><br></div><div>I will say that I&#39;ve built some custom blocks=
 that did some very minimal communication over UHD for status and control.=
=C2=A0 I created a converter() class/function for transferring my packed da=
ta structure through UHD.=C2=A0 That might be useful if you&#39;re doing so=
mething that isn&#39;t sample based.</div><div><br></div><div>=C2=A0=C2=A0<=
a href=3D"https://files.ettus.com/manual/page_converters.html">https://file=
s.ettus.com/manual/page_converters.html</a></div><div><br></div><div>Good l=
uck!</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000009f552805c10fd079--

--===============5583071615969488684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5583071615969488684==--
