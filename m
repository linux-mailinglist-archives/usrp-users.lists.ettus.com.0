Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 845634A7349
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:35:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C54D2380D1C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:35:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Sowxn5pu";
	dkim-atps=neutral
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C2F93853CB
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:35:05 -0500 (EST)
Received: by mail-vk1-f180.google.com with SMTP id y192so12720509vkc.8
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/bFKiVYhcaUC+Fc4570ib8GEiQnGSxIFPnc/YwrUgKg=;
        b=Sowxn5pum1G52sJ5HcwhK/4kb4RaY6ZiY4F5hjnX6galOJj3ItFmkvzaKrzy7GRLi2
         2RdpaCCyfCUCV+mVe6LNvDjo31PtQlal+nRKfzhvjuGJyV15bde6Q3+b5FKBioXBq+zY
         FaPgSqn2DasOy+9Q0sVJcEjeO+f5AWrmJvBTQCKWt2Nx9UbQQ4lloDZmpPW/n72eTLoE
         69odGEBUvhUmRmufoXyyzTlbp+LqvFQf6zPC0cfgrG+nUVz4SFW2Lvekhc9a5AWBhpxJ
         lNH+1ItfFXibRL5zuOkBq8pnFNSNzoJol3DXeNLpRfalHc5q/iEN+Qt8WQ2ppDxGCviL
         RNCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/bFKiVYhcaUC+Fc4570ib8GEiQnGSxIFPnc/YwrUgKg=;
        b=1PPrYm7aHpdgdPk4veqFVREoqBJfyR4VQuLWoeYxlDNjGVlSXsh2JZbqT3jI4XjcFI
         vIIl0oUOt97gHY3vk07v+Fp0hMQrCBTBASPvl4kblB++olan5q0TQz1KGFKQOHjBhNCq
         SVkyHRIy7eDbmOVpRTJBDBTjId6D5FUHaQa5DHdnOiKQzmsGbJDIVdxt+bsoI6s082go
         ZCPgQcheR/SvlXzq+SwwB5DpkFiX/uuB+CkjkJsRlKf5lNaso9Y+iwuIonKG/DQC+Hh/
         B4bNHFdEu8Wc/Ed89u6J2Lr7mvxvlqK9NjsUtFNLtmfW0Lvosi/Z88AIA7swOx+GOc4l
         WLRA==
X-Gm-Message-State: AOAM531+xZfFXa7lStWr1n2OlZmh3X74TppcKlYVcbB3L5iOQrGdYjQv
	JPYyiIwt+bRw/f2iZpIHN8Gj7QL3noAiwQswPv0=
X-Google-Smtp-Source: ABdhPJyudU/LqB0A380Wy7zRU87+OwFmF+64BTKEO1Ekbu4o4OqoFA3riheI5d30BLXYqw+geXsSX2ttCq7JW56CYVU=
X-Received: by 2002:a05:6122:1811:: with SMTP id ay17mr12551767vkb.2.1643812504675;
 Wed, 02 Feb 2022 06:35:04 -0800 (PST)
MIME-Version: 1.0
References: <CAOucfAMvtY6fDqv8o+rnLRufEf3uXe57JSth_OKnDMJFOg5xpA@mail.gmail.com>
 <CAB__hTSupmqxL75sEGd7hLag-0ZSz6rdweGc=CMmOoDmHMBbhA@mail.gmail.com>
In-Reply-To: <CAB__hTSupmqxL75sEGd7hLag-0ZSz6rdweGc=CMmOoDmHMBbhA@mail.gmail.com>
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Wed, 2 Feb 2022 11:34:53 -0300
Message-ID: <CAOucfAPrCQFsXd2chTP_xUa0CFgt5hEgXAusOLCf+Lkc5xo+bw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: JC5ZYJWUC3CRJKQT3TOEGJ2OWULMMGCU
X-Message-ID-Hash: JC5ZYJWUC3CRJKQT3TOEGJ2OWULMMGCU
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Creating RFNoC block with VHDL
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JC5ZYJWUC3CRJKQT3TOEGJ2OWULMMGCU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2546171657879594529=="

--===============2546171657879594529==
Content-Type: multipart/alternative; boundary="0000000000006b2ab605d709ec58"

--0000000000006b2ab605d709ec58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you, I'd checked it out because I'd seen a reply from a 2018 email,
but I wasn't sure if there were any new tools/implementations.

Thanks again,
Lautaro


El mi=C3=A9, 2 feb 2022 a la(s) 11:32, Rob Kossler (rkossler@nd.edu) escrib=
i=C3=B3:

> Look at the in-tree "addsub" block which shows incorporation of a VHDL
> module
>
> On Wed, Feb 2, 2022 at 9:04 AM Lautaro Lorenzen
> <lorenzen.lautaro@gmail.com> wrote:
> >
> > Hi everyone,
> >
> > I'm starting my journey on the development of RFNoC blocks. I've always
> programmed in VHDL, and although on the application notes any HDL is
> supposedly usable, I can't figure out what the correct way of making the
> block in VHDL is.
> >
> > With rfnocmodtool the structure that outputs is in verilog, and the sam=
e
> that happens with rfnoc_create_verilog.py. I just want to write the top
> module aka the functionality in VHDL, is that possible? How would that be=
?
> Are there any examples?
> >
> >
> > Thanks in advance,
> > Regards.
> > Lautaro.
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006b2ab605d709ec58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Thank you, I&#39;d checked it out because I&#39;d seen =
a reply from a 2018 email, but I wasn&#39;t sure if there were any new tool=
s/implementations.</div><div class=3D"gmail_default" style=3D"font-family:a=
rial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif">Thanks again,</div><div class=3D"gm=
ail_default" style=3D"font-family:arial,helvetica,sans-serif">Lautaro</div>=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">El mi=C3=A9, 2 feb 2022 a la(s) 11:32, Rob Kossler (<a href=3D=
"mailto:rkossler@nd.edu">rkossler@nd.edu</a>) escribi=C3=B3:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Look at the in-tree &quot;adds=
ub&quot; block which shows incorporation of a VHDL module<br>
<br>
On Wed, Feb 2, 2022 at 9:04 AM Lautaro Lorenzen<br>
&lt;<a href=3D"mailto:lorenzen.lautaro@gmail.com" target=3D"_blank">lorenze=
n.lautaro@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; I&#39;m starting my journey on the development of RFNoC blocks. I&#39;=
ve always programmed in VHDL, and although on the application notes any HDL=
 is supposedly usable, I can&#39;t figure out what the correct way of makin=
g the block in VHDL is.<br>
&gt;<br>
&gt; With rfnocmodtool the structure that outputs is in verilog, and the sa=
me that happens with rfnoc_create_verilog.py. I just want to write the top =
module aka the functionality in VHDL, is that possible? How would that be? =
Are there any examples?<br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance,<br>
&gt; Regards.<br>
&gt; Lautaro.<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006b2ab605d709ec58--

--===============2546171657879594529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2546171657879594529==--
