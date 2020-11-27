Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3C62C6BEC
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 20:21:10 +0100 (CET)
Received: from [::1] (port=35014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kijIq-0006TU-7a; Fri, 27 Nov 2020 14:21:08 -0500
Received: from mail-lf1-f54.google.com ([209.85.167.54]:35625)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1kijIm-0005zj-C3
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 14:21:04 -0500
Received: by mail-lf1-f54.google.com with SMTP id a9so8456009lfh.2
 for <usrp-users@lists.ettus.com>; Fri, 27 Nov 2020 11:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mKaEML5sOhXqaISjBN7AvbvClzdMMVbPlIjuHWu6v+M=;
 b=Em9j+viC1mYcD4b5DEohQyCYqrsz4WXkmmcdqsWSJuiUBQwelKlJxy0mJ4/JQR1laQ
 fhdpkyEfVQGZPI7hsBIUgee+mE9RQoiEkgeH6hg0yniqqzwb3vzhPbPBsOcK0X9zwr7i
 AizY4+9i4KzssY4giSPFMszFfqcloFuopimy/HX2cZD/7lmv+J7nle6aeaUE/4u25jpD
 WtZEftJ90IuNzJcMZl62mMAa1aGUYe4lzmwiU0C+l3rVjNEqQCn8SU2EMx3Q+UYZy4vH
 VyvqI6r7n36OwIrH08HryEnAa0HxFHm+6mp1GURIm+juizSq5Bb2tE+Qb3L80atP6jwM
 anHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mKaEML5sOhXqaISjBN7AvbvClzdMMVbPlIjuHWu6v+M=;
 b=ll1P7oSBfsyg2PsjP+ls5jypUYGqRyACqDS78/rI8+N3AZbk45swijLbLzGBl/2T0M
 LCvJQc4pva8OiNMqVyrravYhi9is1QFxTnRAwPz8Qt0vs3F1+uzrIpkQwhaHouk8NeR8
 cNwbpWn8+MsqYcJUH/FtPTmcCx/CMh9hY0EZzgwD+UoazgmbTxQASoRcX1jp35JVAcTT
 vcuMI3s5QeJNzmApjbdBT2SpZVSOkHMaxVYbSzOJgiN8FUDI7EQ0r5TUfOL53+urTbD3
 GcVAeh1GFjUhCGX87OenjfMIPZlvKZoiwtr/NRDORjew/CUQgsRK9J57bLUcJwp0BKjc
 +aNg==
X-Gm-Message-State: AOAM5301FbnMtcUW+5CMav8wllwZ10g2cMpNwsUTrSPaz6oSEwO9LJAr
 BXuZBofwcJl53uKYk+OFJh+cEQ7ar6wjq3MQNUQ=
X-Google-Smtp-Source: ABdhPJzsQr0eH7/gu7XTe5q6kZ2BO4kBOsffV0CQTMp3w5nPCDvfOhWXq3VahHK2WgViMu5eb50yfWly/6OEbRf5JUg=
X-Received: by 2002:a19:d14:: with SMTP id 20mr4189926lfn.87.1606504823031;
 Fri, 27 Nov 2020 11:20:23 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
 <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
 <1129435812.2163671.1606502063242@mail.yahoo.com>
 <9771b8e7-c78f-d270-7bc0-a811ad19ff3e@balister.org>
In-Reply-To: <9771b8e7-c78f-d270-7bc0-a811ad19ff3e@balister.org>
Date: Fri, 27 Nov 2020 14:20:12 -0500
Message-ID: <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Cc: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6155092831787273794=="
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

--===============6155092831787273794==
Content-Type: multipart/alternative; boundary="0000000000004e8b4e05b51b8db3"

--0000000000004e8b4e05b51b8db3
Content-Type: text/plain; charset="UTF-8"

Thanks Aneesh but the decompiled dts file has no mention of the exact MAC
address for eth0, but just to read from the eeprom from what I can gather.
Plus an md5sum of the dtb file on the sdimg from Ettus is the same checksum
as an e310 that has booted.

On Fri, Nov 27, 2020 at 1:40 PM Philip Balister <philip@balister.org> wrote:

> On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:
> > Hi Andrew,
> > The MAC may be in the devicetree blobs in the boot area of the SD image.
> > You will need dtcedit to decompile, edit, and recompile as needed.
>
> I don't think so, since the first time the card boots it does read from
> the i2c eeprom.
>
> I'm guessing u-boot sets the ethaddr env var and saves it in the
> environment, but I forget where that might be saved. Need to review the
> u-boot configuration for setting about the u-boot env (maybe getting
> saved to the sd card).
>
> Anyone from Ettus paying attention? This is a pretty serious problem for
> people copying cards and using them in different units. The correct
> behavior is follow the MAC address programmed into the i2c eeprom.
>
> Philip
>
> > Amp
> >
> > Sent from Yahoo Mail on Android
> >
> >   On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-users<
> usrp-users@lists.ettus.com> wrote:
>  _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--0000000000004e8b4e05b51b8db3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Aneesh but the decompiled dts file has no mention=
=C2=A0of the exact MAC address for eth0, but just to read from the eeprom f=
rom what I can gather. Plus an md5sum of the dtb file on the sdimg from Ett=
us is the same checksum as an e310 that has booted.</div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 27, 2020 at =
1:40 PM Philip Balister &lt;<a href=3D"mailto:philip@balister.org">philip@b=
alister.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:<br>
&gt; Hi Andrew,<br>
&gt; The MAC may be in the devicetree blobs in the boot area of the SD imag=
e.<br>
&gt; You will need dtcedit to decompile, edit, and recompile as needed.<br>
<br>
I don&#39;t think so, since the first time the card boots it does read from=
<br>
the i2c eeprom.<br>
<br>
I&#39;m guessing u-boot sets the ethaddr env var and saves it in the<br>
environment, but I forget where that might be saved. Need to review the<br>
u-boot configuration for setting about the u-boot env (maybe getting<br>
saved to the sd card).<br>
<br>
Anyone from Ettus paying attention? This is a pretty serious problem for<br=
>
people copying cards and using them in different units. The correct<br>
behavior is follow the MAC address programmed into the i2c eeprom.<br>
<br>
Philip<br>
<br>
&gt; Amp<br>
&gt; <br>
&gt; Sent from Yahoo Mail on Android <br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-use=
rs&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:=C2=A0 =C2=A0__________________________=
_____________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0<br>
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

--0000000000004e8b4e05b51b8db3--


--===============6155092831787273794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6155092831787273794==--

