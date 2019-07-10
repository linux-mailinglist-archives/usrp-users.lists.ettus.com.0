Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BAE64A51
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jul 2019 18:00:28 +0200 (CEST)
Received: from [::1] (port=60678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlF0i-0001ix-Q2; Wed, 10 Jul 2019 12:00:00 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:46228)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1hlF0f-0001b4-FG
 for usrp-users@lists.ettus.com; Wed, 10 Jul 2019 11:59:57 -0400
Received: by mail-io1-f43.google.com with SMTP id i10so5754566iol.13
 for <usrp-users@lists.ettus.com>; Wed, 10 Jul 2019 08:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=lCW8VXeTt5gQSKCxTCl3i5t63Xkyxk5Z+870GGBAMbU=;
 b=q8rSk5k45PasnbJNVFN72umu4CZQSuJWLlK/pW7DtJhOuPRsnJC7DrS3SyywruEYR2
 MLagV9wxnz+n+zjATPID16yoezyzJwGmFO6wsL+3VyoCIJH38rRc+IZqhqSLPab6dE8B
 4xqVhdax4IoR2bWOYgMH6ule6XkSgVdAP5H3qNdPzHr28ej4Qz/9bbTRd7rd/iNgGpm9
 YPXTBX/tfivUxW7uF1Tioz4pOw5IK3IWz9yVEvvNPT32uRzW81V5ufHUUgS+6MBATHq9
 0ZoI2tBwZUjD36TY/VGdgqrUPiqynMaVNAplt3vZmFM9oj3DaYhtli/0QxoF6fYW0FhR
 jfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=lCW8VXeTt5gQSKCxTCl3i5t63Xkyxk5Z+870GGBAMbU=;
 b=nVvt84M7Ss74obPWeOk0fdExPkqxlW26F9rM2UJ0hvhhQMLzkcgCsvRqksD8Ka7Gim
 /0REepMStP24UrKTJsCcx5MUPFbw8A2Q8J5KkMEP614MDE4cwApdbWT98fdZPliOn88t
 ROosTzwK8gH89fL0t1qyrpzxNiskfzSggXGaj26KRULEpm7st0I93QswqtKtHoZMqDoS
 tMnRaVGN+hv08gcfYsZXsDjerOAVQHDMVFDqMNLa5htxBqVyE9dZ0B7D/317EU7pQjTW
 XzEJQAUZQ/TlrtXEDHX9HJkTCp7qNnWcr1U4EwHCNZ63A1H98x/7tReNwmGgds3u+PCd
 W09g==
X-Gm-Message-State: APjAAAX2KDBZj0NfYpju2QpX2PC/kKm26DKGRsTb1DB2Wno+9x6x+Mou
 iM3kbeXeptEnuUXRQz8g+X7+X2gAcbpwUHHEz8l4H11s5VU=
X-Google-Smtp-Source: APXvYqz9QjJYJ0QeUsDGo0lRgfrx6Oxs7totDdClRP2+GIFp2PLDmoa3C8qRU/76INjn6qoM0eR2JVeVGbbz7xM48XA=
X-Received: by 2002:a5d:9711:: with SMTP id h17mr497975iol.280.1562774356548; 
 Wed, 10 Jul 2019 08:59:16 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.40.1561996803.31965.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.40.1561996803.31965.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Wed, 10 Jul 2019 16:59:05 +0100
Message-ID: <CALSxwQFp9ihyfdoqQO2winkChn9-zCgtu9QyuzkvwW_Ks-wySw@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP-users Digest, Vol 107, Issue 1
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
From: Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Simona Sibio <ssibio2@gmail.com>
Content-Type: multipart/mixed; boundary="===============0065717932901870543=="
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

--===============0065717932901870543==
Content-Type: multipart/alternative; boundary="00000000000062defc058d55c29a"

--00000000000062defc058d55c29a
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have a problem with FPGA image and GNU radio in X310.
The GNU radio version is 7.3.0 and the UHD version is
UHD_3.13.1.HEAD-0-gbbce.
The X310 is detected from terminal but when I try to run the program I have
the following error message:
"[39;0mMajor compat number mismatch for noc_shell: Expecting 2, got 3.
RuntimeError: FPGA component `noc_shell' is revision 3 and UHD supports
revision 2. Please either upgrade UHD  (recommended) or downgrade the FPGA
image."

I tried to change the image and reload but nothing is changed. I don't know
how I can download a downgrade version of FPGA image.
And, I also tried with Simulink and it works fine.
Could you help me?

Thank you in advance.
Best regards,

Simona


Il giorno lun 1 lug 2019 alle ore 21:13 <usrp-users-request@lists.ettus.com>
ha scritto:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
>
> Today's Topics:
>
>    1. RFNoC Utilisation (Andrew Thommesen)
>    2. Re: RFNoC Utilisation (Jonathon Pendlum)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Sun, 30 Jun 2019 16:41:20 +0000
> From: Andrew Thommesen <andrewjohn83@outlook.com>
> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: [USRP-users] RFNoC Utilisation
> Message-ID:
>         <
> AM6PR04MB52221BE873AD22C1578ABD06DFFE0@AM6PR04MB5222.eurprd04.prod.outlook.com
> >
>
> Content-Type: text/plain; charset="iso-8859-1"
>
> Hi,
>
> According to this link (https://kb.ettus.com/X300/X310) the baselink
> RFNoC X310 image should use <25% of the available LUTs. However, my build
> uses more than 50% with a single DDC using the same UHD release:
>
> ./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8 --fill-with-fifos.
>
> The DDC should not require >25% of the available LUTS, so am i missing
> something? Should I be using an alternative to the X310_RFNOC_HG base image
> to achieve this utilisation.
> I really need that 25% of LUTS for my design so any guidance would be
> gratefully received.
>
> Thanks,
>
> Andy
> X300/X310 - Ettus Knowledge Base<https://kb.ettus.com/X300/X310>
> Device Overview. The Ettus Research USRP X310 is a high-performance,
> scalable software defined radio (SDR) platform for designing and deploying
> next generation wireless communications systems.
> kb.ettus.com
>
>
> Sent from Outlook<http://aka.ms/weboutlook>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190630/166a2441/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Mon, 1 Jul 2019 12:47:12 +0900
> From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
> To: Andrew Thommesen <andrewjohn83@outlook.com>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoC Utilisation
> Message-ID:
>         <CAL7q81tQK-8MjrV8Q2w8G7n6O=
> 38DSvutAhZuQGNmYLZ9cuvcA@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi,
>
> You are building an image with 1 x DDC and 7 x FIFO RFNoC blocks due to the
> arg "--fill-with-fifos". Remove that arg and your utilization should be
> significantly lower.
>
> Jonathon
>
> On Mon, Jul 1, 2019 at 1:42 AM Andrew Thommesen via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> > Hi,
> >
> > According to this link (https://kb.ettus.com/X300/X310) the baselink
> > RFNoC X310 image should use <25% of the available LUTs. However, my build
> > uses more than 50% with a single DDC using the same UHD release:
> >
> > ./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8
> --fill-with-fifos.
> >
> > The DDC should not require >25% of the available LUTS, so am i missing
> > something? Should I be using an alternative to the X310_RFNOC_HG base
> > image to achieve this utilisation.
> > I really need that 25% of LUTS for my design so any guidance would be
> > gratefully received.
> >
> > Thanks,
> >
> > Andy
> > X300/X310 - Ettus Knowledge Base <https://kb.ettus.com/X300/X310>
> > Device Overview. The Ettus Research USRP X310 is a high-performance,
> > scalable software defined radio (SDR) platform for designing and
> deploying
> > next generation wireless communications systems.
> > kb.ettus.com
> >
> >
> > Sent from Outlook <http://aka.ms/weboutlook>
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190701/6d05a60c/attachment-0001.html
> >
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 107, Issue 1
> ******************************************
>

--00000000000062defc058d55c29a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>I have a proble=
m with FPGA image and GNU radio in X310.</div><div>The GNU radio version is=
 7.3.0 and the UHD version is UHD_3.13.1.HEAD-0-gbbce.<br></div><div>The X3=
10 is detected from terminal but when I try to run the program I have the f=
ollowing error message:<br></div><div>&quot;[39;0mMajor compat number misma=
tch for noc_shell: Expecting 2, got 3.</div><div>RuntimeError: FPGA compone=
nt `noc_shell&#39; is revision 3 and UHD supports revision 2. Please either=
 upgrade UHD =C2=A0(recommended) or downgrade the FPGA image.&quot;</div><d=
iv><br></div><div>I tried to change the image and reload but nothing is cha=
nged. I don&#39;t know how I can download a downgrade version of FPGA image=
.<br></div><div>And, I also tried with Simulink and it works fine.<br></div=
><div>Could you help me?</div><div><br></div><div>Thank you in advance.</di=
v><div>Best regards,</div><div><br></div><div>Simona<br></div><div><div><br=
></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">Il giorno lun 1 lug 2019 alle ore 21:13 &lt;<a href=3D"mailto:=
usrp-users-request@lists.ettus.com">usrp-users-request@lists.ettus.com</a>&=
gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. RFNoC Utilisation (Andrew Thommesen)<br>
=C2=A0 =C2=A02. Re: RFNoC Utilisation (Jonathon Pendlum)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Sun, 30 Jun 2019 16:41:20 +0000<br>
From: Andrew Thommesen &lt;<a href=3D"mailto:andrewjohn83@outlook.com" targ=
et=3D"_blank">andrewjohn83@outlook.com</a>&gt;<br>
To: &quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] RFNoC Utilisation<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:AM6PR04MB52221BE873AD22C1=
578ABD06DFFE0@AM6PR04MB5222.eurprd04.prod.outlook.com" target=3D"_blank">AM=
6PR04MB52221BE873AD22C1578ABD06DFFE0@AM6PR04MB5222.eurprd04.prod.outlook.co=
m</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
Hi,<br>
<br>
According to this link (<a href=3D"https://kb.ettus.com/X300/X310" rel=3D"n=
oreferrer" target=3D"_blank">https://kb.ettus.com/X300/X310</a>) the baseli=
nk RFNoC X310 image should use &lt;25% of the available LUTs. However, my b=
uild uses more than 50% with a single DDC using the same UHD release:<br>
<br>
./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8 --fill-with-fifos.=
<br>
<br>
The DDC should not require &gt;25% of the available LUTS, so am i missing s=
omething? Should I be using an alternative to the X310_RFNOC_HG base image =
to achieve this utilisation.<br>
I really need that 25% of LUTS for my design so any guidance would be grate=
fully received.<br>
<br>
Thanks,<br>
<br>
Andy<br>
X300/X310 - Ettus Knowledge Base&lt;<a href=3D"https://kb.ettus.com/X300/X3=
10" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/X300/X310</a>=
&gt;<br>
Device Overview. The Ettus Research USRP X310 is a high-performance, scalab=
le software defined radio (SDR) platform for designing and deploying next g=
eneration wireless communications systems.<br>
<a href=3D"http://kb.ettus.com" rel=3D"noreferrer" target=3D"_blank">kb.ett=
us.com</a><br>
<br>
<br>
Sent from Outlook&lt;<a href=3D"http://aka.ms/weboutlook" rel=3D"noreferrer=
" target=3D"_blank">http://aka.ms/weboutlook</a>&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190630/166a2441/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190630/166a2441/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 1 Jul 2019 12:47:12 +0900<br>
From: Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" ta=
rget=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
To: Andrew Thommesen &lt;<a href=3D"mailto:andrewjohn83@outlook.com" target=
=3D"_blank">andrewjohn83@outlook.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RFNoC Utilisation<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAL7q81tQK-8MjrV8Q2w8G7n6O=3D<a href=3D"mai=
lto:38DSvutAhZuQGNmYLZ9cuvcA@mail.gmail.com" target=3D"_blank">38DSvutAhZuQ=
GNmYLZ9cuvcA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi,<br>
<br>
You are building an image with 1 x DDC and 7 x FIFO RFNoC blocks due to the=
<br>
arg &quot;--fill-with-fifos&quot;. Remove that arg and your utilization sho=
uld be<br>
significantly lower.<br>
<br>
Jonathon<br>
<br>
On Mon, Jul 1, 2019 at 1:42 AM Andrew Thommesen via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt; Hi,<br>
&gt;<br>
&gt; According to this link (<a href=3D"https://kb.ettus.com/X300/X310" rel=
=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/X300/X310</a>) the b=
aselink<br>
&gt; RFNoC X310 image should use &lt;25% of the available LUTs. However, my=
 build<br>
&gt; uses more than 50% with a single DDC using the same UHD release:<br>
&gt;<br>
&gt; ./uhd_image_builder.py ddc -d x310 -t X310_RFNOC_HG -m 8 --fill-with-f=
ifos.<br>
&gt;<br>
&gt; The DDC should not require &gt;25% of the available LUTS, so am i miss=
ing<br>
&gt; something? Should I be using an alternative to the X310_RFNOC_HG base<=
br>
&gt; image to achieve this utilisation.<br>
&gt; I really need that 25% of LUTS for my design so any guidance would be<=
br>
&gt; gratefully received.<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Andy<br>
&gt; X300/X310 - Ettus Knowledge Base &lt;<a href=3D"https://kb.ettus.com/X=
300/X310" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/X300/X3=
10</a>&gt;<br>
&gt; Device Overview. The Ettus Research USRP X310 is a high-performance,<b=
r>
&gt; scalable software defined radio (SDR) platform for designing and deplo=
ying<br>
&gt; next generation wireless communications systems.<br>
&gt; <a href=3D"http://kb.ettus.com" rel=3D"noreferrer" target=3D"_blank">k=
b.ettus.com</a><br>
&gt;<br>
&gt;<br>
&gt; Sent from Outlook &lt;<a href=3D"http://aka.ms/weboutlook" rel=3D"nore=
ferrer" target=3D"_blank">http://aka.ms/weboutlook</a>&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190701/6d05a60c/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190701/6d05a60c/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 107, Issue 1<br>
******************************************<br>
</blockquote></div>

--00000000000062defc058d55c29a--


--===============0065717932901870543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0065717932901870543==--

