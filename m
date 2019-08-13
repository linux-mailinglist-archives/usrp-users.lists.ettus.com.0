Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E82D8C4E0
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 01:42:34 +0200 (CEST)
Received: from [::1] (port=35846 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxgQw-0000Ux-0R; Tue, 13 Aug 2019 19:42:30 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:32911)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hxgQt-0000PT-3D
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 19:42:27 -0400
Received: by mail-oi1-f180.google.com with SMTP id u15so70390706oiv.0
 for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2019 16:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fEKp4EMjJNKvYTRN2nG9Ted6iXVuBWKjawTrwCYFQ9A=;
 b=N1DWjvLvzE88wQ0AUMWSvFJxu3Yq/trHO+m3WFvAdmFZihz3a/dcPBFuhgac36ihd3
 v5lEilW3rxkMQ3fUTaaciaRXjfTVdkb9hfDCeV5KGvx4aRkfoQWXBtl4Kv9WZjgmRUvj
 7vxG1Q9p5BI16zHUwvDS94helAM8DTf4xMigbzuMHwOVRZV/agHg0jqOhMA5dO5UgULk
 OImMAb+QRsky7BpzM1HMt8QMtWRzShIfuKtWR1B1jG3wgP/4bqsPfJzZDiyXGor0HMMG
 4SDhUFYYNDbmwsmEy+rKNM1eYt3l+h4XoU6Z0xbl6EJSXd5+u/K+0mCEGW4GIX6dgzb5
 qIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fEKp4EMjJNKvYTRN2nG9Ted6iXVuBWKjawTrwCYFQ9A=;
 b=QhltTJpGbVXTEMeD4uGbCKT1ttegF5Q5MqmQ7a00S4gv7EYusa28OURV8Gvifpmd4q
 43oIyaSJxMZ4UDrgBoSwC3QeKwzHeaDrIVW53MgeIl8raywIEWnObjBYjZb+PQKxRz/u
 ybpZEZKLuY5t6FMQHedBYR/McLIQLxslk4R1JfhjYXPEujpYaWJqFT9TTfmNcx2hxU/B
 owjU7lmcu0PEj6UhddUJTx/m+DTZ2/h3kfz1RTJPNR38ghdeGp8tRkRj5uHjxG8xPGKy
 CQNr29iw6wjEKI52NPPygG8Bj2yepCmraFhZjyZoCJW4zWROn6kjS5yyjWNaCNaEPqpb
 MwjA==
X-Gm-Message-State: APjAAAWeqLP72CmiGM8cGV+V3KepjW581ei7x3PanLZM8JNCtFzLPBR7
 F6TW6fMfRlmRpnJCHdJxzh6FYQGnT37UxAaqKJ2VAI5z
X-Google-Smtp-Source: APXvYqzZPKhNnxjDB6WA2vjuPnMeZ6MLZKpvusQQSssTmo97rc6QDR0L+Iyk4s9RNaf3Zt0rItXG9JKpIO/b26D3rGo=
X-Received: by 2002:aca:c713:: with SMTP id x19mr3443608oif.158.1565739706251; 
 Tue, 13 Aug 2019 16:41:46 -0700 (PDT)
MIME-Version: 1.0
References: <9c438e67931ecb2c6593803efda75c53ac53bef6.camel@sbcglobal.net>
In-Reply-To: <9c438e67931ecb2c6593803efda75c53ac53bef6.camel@sbcglobal.net>
Date: Tue, 13 Aug 2019 16:42:27 -0700
Message-ID: <CAL263iw0v2-_Uy9Uqjr4pb-QRE-qX1jBY48L-XbrWLdQG9Uhqg@mail.gmail.com>
To: "d.des" <d.des@sbcglobal.net>
Subject: Re: [USRP-users] latest E310 tutorial
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
Content-Type: multipart/mixed; boundary="===============6875567026390009204=="
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

--===============6875567026390009204==
Content-Type: multipart/alternative; boundary="000000000000008ae50590082f1a"

--000000000000008ae50590082f1a
Content-Type: text/plain; charset="UTF-8"

Hi,

We've pushed updated flowgraphs into gr-ettus for the networked fosphor
example to fix the FIFO select and QT display issues. There is a few more
minor things fixed in them but can you please give them and try on your
system? I will try to replicate the siggen issue you ran into.


Regards,
Nate Temple

On Sun, Aug 11, 2019 at 1:38 PM d.des via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thanks, Royce, that fixed the usrp side of both fosphor and my block!
>
> I also made two minor tweaks to the host side to get fosphor working on
> my PC. These are probably things that a Gnuradio expert would see right
> away but in case there's anyone else out there who primarily uses the
> c++ uhd interface and is barely Gnuradio literate here goes:
>
> The first problem was a segfault whenever the host side program
> rfnoc_siggen_network_host.py was launched. That turned out to be a
> problem with fosphor_display_impl.cc. The method
> "bool fosphor_display_impl::start()" ended without returning anything
> and my Fedora 30 machine really hated that. I put in a "return true"
> line at the end of the function and that fixed the problem. (It doesn't
> seem to matter whether the function returns true or false, it just
> needs to return something.)
>
> The second issue with the examples in stock form was that when I opened
> rfnoc_fosphor_network_host at first all I saw were controls, no plot. I
> spent some time looking for QT issues but it turned out to be really
> simple: there were GUI hints set on the slider controls but not on on
> the fosphor display block. The quickest fix is to remove the hints on
> the controls and the display shows up.
>
> Fosphor is a really nice quick survey tool. It's great to see 56 MHz at
> once with just a laptop and battery-powered E310.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000008ae50590082f1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,<br><br>We&#39;ve pushed updated flowgraphs into gr-=
ettus for the networked fosphor example to fix the FIFO select and QT displ=
ay issues. There is a few more minor things fixed in them but can you pleas=
e give them and try on your system? I will try to replicate the siggen issu=
e you ran into.<br><br><br>Regards,<br>Nate Temple</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Aug 11, 201=
9 at 1:38 PM d.des via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Thanks, Royce, that fixed the usrp side =
of both fosphor and my block!<br>
<br>
I also made two minor tweaks to the host side to get fosphor working on<br>
my PC. These are probably things that a Gnuradio expert would see right<br>
away but in case there&#39;s anyone else out there who primarily uses the<b=
r>
c++ uhd interface and is barely Gnuradio literate here goes:<br>
<br>
The first problem was a segfault whenever the host side program<br>
rfnoc_siggen_network_host.py was launched. That turned out to be a<br>
problem with fosphor_display_impl.cc. The method<br>
&quot;bool fosphor_display_impl::start()&quot; ended without returning anyt=
hing<br>
and my Fedora 30 machine really hated that. I put in a &quot;return true&qu=
ot;<br>
line at the end of the function and that fixed the problem. (It doesn&#39;t=
<br>
seem to matter whether the function returns true or false, it just<br>
needs to return something.)<br>
<br>
The second issue with the examples in stock form was that when I opened<br>
rfnoc_fosphor_network_host at first all I saw were controls, no plot. I<br>
spent some time looking for QT issues but it turned out to be really<br>
simple: there were GUI hints set on the slider controls but not on on<br>
the fosphor display block. The quickest fix is to remove the hints on<br>
the controls and the display shows up.<br>
<br>
Fosphor is a really nice quick survey tool. It&#39;s great to see 56 MHz at=
<br>
once with just a laptop and battery-powered E310.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000008ae50590082f1a--


--===============6875567026390009204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6875567026390009204==--

