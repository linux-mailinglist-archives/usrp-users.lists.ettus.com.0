Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA8E10F9B8
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2019 09:20:20 +0100 (CET)
Received: from [::1] (port=59590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ic3Pn-0003Zl-2w; Tue, 03 Dec 2019 03:20:11 -0500
Received: from mail-lj1-f170.google.com ([209.85.208.170]:35284)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1ic3Pj-0003Un-JI
 for usrp-users@lists.ettus.com; Tue, 03 Dec 2019 03:20:07 -0500
Received: by mail-lj1-f170.google.com with SMTP id j6so2752769lja.2
 for <usrp-users@lists.ettus.com>; Tue, 03 Dec 2019 00:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2a2MMaeXaIR+gtXZM2tnGWDFVJAc7Dk8PVMROWVufeM=;
 b=bCnLgBiT590LJIHA7CS95c6llqGhoHaf2O3Hk2IOpUq604DTjiMCprBQMY3QYfqe6s
 jSld00FKkZ43B5AZvhYHzBKGnM5OlOD6BHnpL7+1BK6i2pWr5gxEre9JZua7pGEvrcgI
 6tCklRldeX9GsrXHSARveKDb2VqHWie5HeA5/Ckff7ncDCE0EivR8PywLs0JQVovk9x7
 Npd/K/AKPFT5cf3Nuu1gnVHX0AHQW3UUxXVRxn4Xm7h6RIJYKFZEqRleVUOmQnTtZ/3Y
 P76HK4jNpXCDcyeRpm9pgPXST+YHwIowr9NJ1GTlbmXqOnvdjMyfYCYZGtLkd4y5+OVd
 08HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2a2MMaeXaIR+gtXZM2tnGWDFVJAc7Dk8PVMROWVufeM=;
 b=Q935MS4v0qhhJRfYYO2GPWNS0kf2I/8oZB+vi/4UtX6IxF27vAqHJKrXf8plwV4g4A
 MLAjE4tY6mSHeXL8h1JnTC5eKAAZLLEoQTbw8dxjDS5eFe2O/7HzAavJxiSsWbytz/oR
 tRAtR9L27ebmYneyaZnyTv8DoXd15cJR48jeVvjvx+wvWY4qtMiE9IClCctZXxd4iB3i
 XBPitkg9NI+9ur/FLDufu7cGALpOH+bHLurYIQRhoHxDDkCVFFBDBQlkxGlBGNmIIkOA
 QDc8219EcjUnSLWUd4A6ios9wUqJdfUUA6Kh5H3dDuRnCQbrVtWeKneveG9bHMCQLQiW
 AWXg==
X-Gm-Message-State: APjAAAWUu1vqaOq72wkuP0Cd1dherxEeALCJHfycjepaPhPRkkxXfw0z
 x5nPCtkTVsQAB9zntHfMA2p2d9po/pG3nCzRewKxnUDyi193+Q==
X-Google-Smtp-Source: APXvYqyGx3JZuX+KM9F1inK4r9eiXV+wWyXDrf2ZhJGyhVrY/c3P5FhsPndZU+qma6u/4AYyzbQ8WvdhwAIzb25Xv14=
X-Received: by 2002:a2e:8758:: with SMTP id q24mr1816488ljj.157.1575361166009; 
 Tue, 03 Dec 2019 00:19:26 -0800 (PST)
MIME-Version: 1.0
References: <3c66f25c0c07455a937f740ccd8584b7@exchange.iptronix.local>
In-Reply-To: <3c66f25c0c07455a937f740ccd8584b7@exchange.iptronix.local>
Date: Tue, 3 Dec 2019 17:18:50 +0900
Message-ID: <CAL7q81ssnT3DseGzOP2ei-DzYB=+mWXtJQEScPGRme3sZpuvSQ@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Subject: Re: [USRP-users] clarifications on x300_core.v
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0229076104056451797=="
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

--===============0229076104056451797==
Content-Type: multipart/alternative; boundary="000000000000b195d30598c85a68"

--000000000000b195d30598c85a68
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

I suspect this might be a bug. The ce_clk signal is an input in
x300_core.v, but it is also assigned to radio_clk. On the other hand, other
devices do not have a ce_clk input for their *_core.v implementations. Do
you run into any synth errors when building a X300 rfnoc image?

Jonathon

On Thu, Oct 31, 2019 at 11:49 PM Dario Pennisi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> looking at the generated code from the uhd_image_builder.py it declares
> ce_clk and ce_rst and assigns them to radio_clk and radio_rst. Actually
> this file is included within x300_core.v which already has the same signals
> as input ports and which are externally connected in x300.v to a different
> clock (at 214MHz).
>
> do I understand correctly that the assignments are ignored and that the
> signals stay at 214MHz rather than the 200 MHz of the radio_clk?
>
> Is there any reason why the builder script adds those
> declarations/assignments?
>
> Thanks,
>
>
>
> Dario Pennisi
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b195d30598c85a68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Dario,<div><br></div><div>I suspect th=
is might be a bug. The ce_clk signal is an input in x300_core.v, but it is =
also assigned to radio_clk. On the other hand, other devices do not have a =
ce_clk input for their *_core.v implementations. Do you run into any synth =
errors when building a X300 rfnoc image?</div><div><br></div><div>Jonathon<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Oct 31, 2019 at 11:49 PM Dario Pennisi via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">





<div lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span lang=3D"IT">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal">looking at the generated code from the uhd_image_bui=
lder.py it declares ce_clk and ce_rst and assigns them to radio_clk and rad=
io_rst. Actually this file is included within x300_core.v which already has=
 the same signals as input ports and
 which are externally connected in x300.v to a different clock (at 214MHz).=
 <u></u>
<u></u></p>
<p class=3D"MsoNormal">do I understand correctly that the assignments are i=
gnored and that the signals stay at 214MHz rather than the 200 MHz of the r=
adio_clk?<u></u><u></u></p>
<p class=3D"MsoNormal">Is there any reason why the builder script adds thos=
e declarations/assignments?<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Dario Pennisi</=
span><span style=3D"color:rgb(31,73,125)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div>

--000000000000b195d30598c85a68--


--===============0229076104056451797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0229076104056451797==--

