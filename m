Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D6322E20A
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 20:37:11 +0200 (CEST)
Received: from [::1] (port=36586 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzlWG-00053O-Om; Sun, 26 Jul 2020 14:37:08 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:43121)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jzlWD-0004ua-45
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 14:37:05 -0400
Received: by mail-qt1-f172.google.com with SMTP id k18so10621948qtm.10
 for <usrp-users@lists.ettus.com>; Sun, 26 Jul 2020 11:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QN9lEkC2IsLi5lL8cizhu2J3Ny7VEJCQxI61WPBTmdo=;
 b=F2+nmw86TI9eKGrpi1Jn0PG/6BpB8InV/v/1qWKn2kEgcayC1Oe2zHhFgTlIaLovzb
 QhFONzWqo5JpDMpWNEvZSqKlVt+p68c/JTWf3RQrfvXQDuU/mbPKe6BqbbpPlHmc/8kM
 h60BcR+VffaUxcRL3fZpWpLUdFI+KawmcaZ2AMWh5RW4tP+HNKQUdiHvqTCt13aePjoa
 Ch/wTkeecyzhzZCyNpDnDsQll7sU/5L+oHR98itHAA0b8nwT+/t18XBdncftOfGdpAj/
 vtu4gAamaC+D+ZigLUMXfXsb06XI2HAMyhzUCSVc/gScdfHeuTE5I7LOGb6sXyvZZB9l
 QKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QN9lEkC2IsLi5lL8cizhu2J3Ny7VEJCQxI61WPBTmdo=;
 b=AkrpEym7xDMkYAcYX0C/NfvegYJLbeguVgDFPmZfo2LfPemSj2vsLyFPpEXyqAzSom
 mqHsTWgExfAsYtf333SovFT+H4sJGv2O92fKIJGaiuvznLrQPm1ZQoUYFSV/ng4nLBlk
 zuCrx3GOK+zd/x6CL/TZy8TUYDhP+hga1ItdFqH79VBIXEK55iINh/IIa4pt694UawDd
 MtG5XL7FD0mdwP6Ymo+CBvnz84+punsh6zbvagS9WTZRCfgtDyZanJM59cH1UHECbPf2
 OtOw4dR4iQRxUMZDpbpjlEJ4OH1WIhAMktllpGSnLDG37evcJyjlZj1e7gxoNqgqBydT
 uhIA==
X-Gm-Message-State: AOAM530bsxT3DoMtyrT7keSbqehgRhunrDoCW3bjEXRTD4/wp8tCDI5y
 TYtwe4SK+DjcYLTNBP9GjXEZwu0m7uatHFZtVBs=
X-Google-Smtp-Source: ABdhPJw9sM+7wkyA7/vIHabrXAFDVhK0hpOYwWWPG3X1xqGxETQU88UQ03f8GZO04ZQMmpWfMCT8qO4JeSJtESR7j2Y=
X-Received: by 2002:ac8:6602:: with SMTP id c2mr18829174qtp.243.1595788584490; 
 Sun, 26 Jul 2020 11:36:24 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
 <5F1DCB58.7090804@gmail.com>
In-Reply-To: <5F1DCB58.7090804@gmail.com>
Date: Sun, 26 Jul 2020 20:36:12 +0200
Message-ID: <CA+w2Zytm2=5ZRrB-BaY91fax-9xpK8fpkVpB+ep4mzvZ3tH-oA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] AD936x disable DC offset removal
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============7150314979245151919=="
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

--===============7150314979245151919==
Content-Type: multipart/alternative; boundary="000000000000b71a9605ab5c7b5a"

--000000000000b71a9605ab5c7b5a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What a fast response ! Many thanks. But what do you mean by offset tuning
?

For example at a time, I can have a signal at F0rx and at another time at
F0rx + df. Always with some Signal at F0rx. The RX DC offset correction
will disturb the Signal for the second example.
The signal can hop.

Le dim. 26 juil. 2020 =C3=A0 20:29, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> On 07/26/2020 02:25 PM, David Carsenat via USRP-users wrote:
> > Hello, could someone help me where one can find the UHD Cpp file where
> > the DC offset correction of AD936x is enabled ?
> >
> > I need to make a Rx --> Tx loop which is independent of the center
> > frequency of the Rx signal.
> >
> > Thanks a lot
> >
> > David
> >
> If your bandwidth is fixed, you can just use offset-tuning, rather than
> disabling DC offset correction.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b71a9605ab5c7b5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>What a fast response ! Many thanks. But what do you =
mean by offset tuning ?=C2=A0=C2=A0</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">For example at a time, I can have a signal at F0rx and at anoth=
er time at F0rx + df. Always with some Signal at F0rx. The RX DC offset cor=
rection will disturb the Signal for the second example.=C2=A0</div><div dir=
=3D"auto">The signal can hop.<br><br><div class=3D"gmail_quote" dir=3D"auto=
"><div dir=3D"ltr" class=3D"gmail_attr">Le dim. 26 juil. 2020 =C3=A0 20:29,=
 Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On 07/26/2020 02:25 PM, David Carsenat via USRP-=
users wrote:<br>
&gt; Hello, could someone help me where one can find the UHD Cpp file where=
 <br>
&gt; the DC offset correction of AD936x is enabled ?<br>
&gt;<br>
&gt; I need to make a Rx --&gt; Tx loop which is independent of the center =
<br>
&gt; frequency of the Rx signal.<br>
&gt;<br>
&gt; Thanks a lot<br>
&gt;<br>
&gt; David<br>
&gt;<br>
If your bandwidth is fixed, you can just use offset-tuning, rather than <br=
>
disabling DC offset correction.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000b71a9605ab5c7b5a--


--===============7150314979245151919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7150314979245151919==--

