Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF5416B032
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:23:37 +0100 (CET)
Received: from [::1] (port=45180 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6JKK-0001HC-V5; Mon, 24 Feb 2020 14:23:36 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:43666)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1j6JKG-00019X-G8
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 14:23:32 -0500
Received: by mail-oi1-f173.google.com with SMTP id p125so10048886oif.10
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 11:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZjGr0v8pYP3Np114xB3i7uxpnjIRXEyh8MD8JWhl8Vc=;
 b=GFvF4f6IuVryx4GQo4cs79AhYD77UnXTUrTQZoMkdL5kqNR/42Ab+4vhPnZXzwSFy1
 Ty6Vjgo4Lvcp5G8GBTeqQekkuC0FN+4Og3gwsCS5kkypGGcNSz0VnSllH4aq6JkkK8jM
 y/CVA0EgimLnzUE2pqNXOGXW86GmxjlvjeQj5RHWJ9F9dqP4imXR4c1XFTcMedoCJAFk
 7uHXKpHhQ5LXiPcC4xhZFfw1ttlRLmQ5ec1mTc75LkWM4j7/7hLYuncUf4YcCqeTOU69
 4eb3UdZjRFXVZ8L4iXszfGn4vgGWR+NirMcH2t32BBez1vSkB2tR+pnlBgIyIJhci6hR
 fTJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZjGr0v8pYP3Np114xB3i7uxpnjIRXEyh8MD8JWhl8Vc=;
 b=ku0dmZzQZqAW3mDyisgA2w61U9XmgEkW72HU/8bfmrL9qA8pGGjc4JY89hDUVGYnt/
 u7m3eKNy58NZbJzgEY6CxlmeHPmS3Btg7M9Y9dUFuDFGZUvrKGNXMb2S1VboPvC4sMmf
 YsjQVKgOFxzgIEH537Uj+KF9IRzmTLINU1l/Amd7Yv0dXgL13jsv+Qm2NT0h9Uk5P/cJ
 KqaclWHa7ls0voXTv+ma0qSaGsCx1QK9EnS1Mhn0RcNokfp1VFDtw51vT4xg7LHTqW/P
 q35b24C8QUQocIbb6iaUXXSuTCjquyBLGpXJWZNu+1ZaHWMEF4lOH+TEcR+3TaZ9696F
 kHiQ==
X-Gm-Message-State: APjAAAXKo+BmhNSfcqMqZVCnGp1jLSz73zI++P2UPD7vGEOiITC+wuVG
 9AnzehPbhbJzGK+qu+KuFcxfZlYd8MD7w0U9wX5OuIIw
X-Google-Smtp-Source: APXvYqyP1b2fuG7vVUiuoUacTwKP9b+omvMHPV8DoPvWKQgqqTHkVxEBEhUK6kiELwZJ8M6CHUV9O0xznCaxvsrMeqw=
X-Received: by 2002:aca:e084:: with SMTP id x126mr467592oig.97.1582572171860; 
 Mon, 24 Feb 2020 11:22:51 -0800 (PST)
MIME-Version: 1.0
References: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
 <CAL263izQpcaHdrYUgDF9Zs4c+C6EnUgAib_q=KYnQdE7T4JJkg@mail.gmail.com>
 <22bf01d5eb47$59ad6980$0d083c80$@sdr-radio.com>
In-Reply-To: <22bf01d5eb47$59ad6980$0d083c80$@sdr-radio.com>
Date: Mon, 24 Feb 2020 11:25:48 -0800
Message-ID: <CAL263izOj68Kj4nZCy7kLzvXdVez1GLyo4W6UjJho9z-=2hFhA@mail.gmail.com>
To: simon@sdr-radio.com
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============0930027991256023463=="
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

--===============0930027991256023463==
Content-Type: multipart/alternative; boundary="00000000000022ad63059f574c5f"

--00000000000022ad63059f574c5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Simon,

No, the USB cable will only provide serial access.

You could use GNU Radio to stream samples via ZMQ/TCP/UDP sockets. You
could also use pure C++/UHD API to stream via a UDP interface such as with
the example program rx_samples_to_udp.

Regards,
Nate Temple

On Mon, Feb 24, 2020 at 11:19 AM <simon@sdr-radio.com> wrote:

> Thanks,
>
>
>
> Would the E310 work with the USB cable?
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
>
> *From:* Nate Temple <nate.temple@ettus.com>
> *Sent:* 24 February 2020 19:11
> *To:* simon@sdr-radio.com
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] E310, 3.15 LTS, Windows
>
>
>
> Hi Simon,
>
> The E310 network mode was removed from UHD with the switch to the MPM
> based file systems. If you need to use the network mode, you should use a=
n
> older version of UHD.
>
> Regards,
> Nate Temple
>
>
>
> On Mon, Feb 24, 2020 at 11:05 AM Simon G4ELI via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi All,
>
>
>
> A user cannot =E2=80=98see=E2=80=99 his E310 using 3.15 LTS compiled from=
 source by me.
> The E310 is connected by Ethernet GigE.
>
>
>
> I=E2=80=99m wondering if there=E2=80=99s something special needed or if t=
here=E2=80=99s a magic
> option I should enable in the source =E2=80=93 the ENABLE_E300 option is =
checked,
> all looks good to me.
>
>
>
> There is a second person who will soon be testing just in case it=E2=80=
=99s finger
> trouble.
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--00000000000022ad63059f574c5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Simon,<br><br>No, the USB cable will only provide se=
rial access. <br><br>You could use GNU Radio to stream samples via ZMQ/TCP/=
UDP sockets. You could also use pure C++/UHD API to stream via a UDP interf=
ace such as with the example program rx_samples_to_udp.<br><br>Regards,<br>=
Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Feb 24, 2020 at 11:19 AM &lt;<a href=3D"mailto:sim=
on@sdr-radio.com">simon@sdr-radio.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-GB"><div class=3D"gmai=
l-m_-7537579909699140481WordSection1"><p class=3D"MsoNormal"><span>Thanks,<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></=
span></p><p class=3D"MsoNormal"><span>Would the E310 work with the USB cabl=
e?<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal">Simon Brown, G4ELI<u></u><u></u></p><p c=
lass=3D"MsoNormal"><a href=3D"https://www.sdr-radio.com" target=3D"_blank">=
https://www.sdr-radio.com</a><u></u><u></u></p><p class=3D"MsoNormal"><span=
><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span lang=3D"EN-=
US">From:</span></b><span lang=3D"EN-US"> Nate Temple &lt;<a href=3D"mailto=
:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; <br=
><b>Sent:</b> 24 February 2020 19:11<br><b>To:</b> <a href=3D"mailto:simon@=
sdr-radio.com" target=3D"_blank">simon@sdr-radio.com</a><br><b>Cc:</b> <a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a><br><b>Subject:</b> Re: [USRP-users] E310, 3.15 LTS, Windows=
<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><di=
v><div><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,=
sans-serif">Hi Simon,<br><br>The E310 network mode was removed from UHD wit=
h the switch to the MPM based file systems. If you need to use the network =
mode, you should use an older version of UHD.<br><br>Regards,<br>Nate Templ=
e<u></u><u></u></span></p></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<=
u></u></p><div><div><p class=3D"MsoNormal">On Mon, Feb 24, 2020 at 11:05 AM=
 Simon G4ELI via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u=
></p></div><blockquote style=3D"border-color:currentcolor currentcolor curr=
entcolor rgb(204,204,204);border-style:none none none solid;border-width:me=
dium medium medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-rig=
ht:0cm"><div><div><p class=3D"MsoNormal">Hi All,<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">A user cannot=
 =E2=80=98see=E2=80=99 his E310 using 3.15 LTS compiled from source by me. =
The E310 is connected by Ethernet GigE.<u></u><u></u></p><p class=3D"MsoNor=
mal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">I=E2=80=99m wondering i=
f there=E2=80=99s something special needed or if there=E2=80=99s a magic op=
tion I should enable in the source =E2=80=93 the ENABLE_E300 option is chec=
ked, all looks good to me.<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u=
></u><u></u></p><p class=3D"MsoNormal">There is a second person who will so=
on be testing just in case it=E2=80=99s finger trouble.<u></u><u></u></p><p=
 class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">Simon B=
rown, G4ELI<u></u><u></u></p><p class=3D"MsoNormal"><a href=3D"https://www.=
sdr-radio.com" target=3D"_blank">https://www.sdr-radio.com</a><u></u><u></u=
></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></div></div><p class=3D=
"MsoNormal">_______________________________________________<br>USRP-users m=
ailing list<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bla=
nk">USRP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mai=
lman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.et=
tus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p></=
blockquote></div></div></div></blockquote></div>

--00000000000022ad63059f574c5f--


--===============0930027991256023463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0930027991256023463==--

