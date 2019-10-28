Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E235E7530
	for <lists+usrp-users@lfdr.de>; Mon, 28 Oct 2019 16:32:28 +0100 (CET)
Received: from [::1] (port=48396 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iP70K-0001Ah-At; Mon, 28 Oct 2019 11:32:24 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:42848)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iP70G-00016y-KZ
 for usrp-users@lists.ettus.com; Mon, 28 Oct 2019 11:32:20 -0400
Received: by mail-oi1-f177.google.com with SMTP id i185so6219924oif.9
 for <usrp-users@lists.ettus.com>; Mon, 28 Oct 2019 08:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IE7s/7S4uOT2LbiAiOQbxH+sPCKMgpgnMBCCqTnkJ+c=;
 b=z0VpofE0fSeeFbshzIX6O84Rk+zYoOjtg5gGDpa+vqza3PgTJb7PFLP3ravDGQSUlC
 y6P1erIgLkMFw3Kln1x6wF0+dIcYTE61b4mS+vapay3PAXpwP4W0HkzkqNXAwDJ7fkGw
 7Im/HDcK7K3k88PP51C3xXCZGlYGhu5IUJGtr63+Fx1JjoSBrv+KzJ0ywNiVsM4/Qfxb
 mtqM6tPYrGSPVCMe+AgAd9IaQ7cTEFVgHNmZfPD/zpHgHVPARyQVFR14ioZLb9EP1iJa
 aac1eF5Ps8QQnmpbU4zghUgv6NH6hysYIzJdSqfNZtFulOgsFAm+Ksa8CFZ2SYGuM7nh
 c8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IE7s/7S4uOT2LbiAiOQbxH+sPCKMgpgnMBCCqTnkJ+c=;
 b=g8mz9qzq/Q//dK7CXzbawDhOxM/TMmSpQCw7zgJElt5PAiOuT3pDIFrRmGDcfd0Th3
 HcPWO3Ku7KFL61DvEEe42BL5FdW0xdsxiebUmAQwyVqO0v4KuDp5thWZLyiBv5aEKw1P
 kDBPiVEW6lv/Htqh4ZoUUN7W8R7BtBKb3g+5SokjQjx+WgD+jtnL9UGjnJddt18dYZ8D
 +kVAxE6S/sX5oHB4GYQNUK3pVyMzJiTyTVn1u8n5HF872xhChaXuAfGw8Ubd9WesKfZB
 Q11KVRS2jRQ82TqP5+pmEqFlrXTnSA83f3/4UlOMKSDOwnVbcxeIa+13F0I3f2VAkP+m
 Bp2g==
X-Gm-Message-State: APjAAAWy78JCym1lZ3G4DDDk4SbfE9GcuLxspDWem+YXZFDp88PnpkX6
 /37n7jb4MeaSYL6hkvUTV5fKgRW++RLJEQoCNpqUoEnV
X-Google-Smtp-Source: APXvYqzlppfKJss7Ei5N+urKlGA0ZnDnjiR2TiscJY6IgKGeqxhb2lPjmnEzphlEXooNsE5j3s/opWQocaUFt0IbmGc=
X-Received: by 2002:a05:6808:992:: with SMTP id
 a18mr495467oic.82.1572276699796; 
 Mon, 28 Oct 2019 08:31:39 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR03MB3788B27CBFD0C22ABAA0B2E6E6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
In-Reply-To: <DM6PR03MB3788B27CBFD0C22ABAA0B2E6E6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
Date: Mon, 28 Oct 2019 08:32:35 -0700
Message-ID: <CAL263iySPk0_DAa3db8JaapooFCi2Nqwcs7==h=Rwb+biKbcbw@mail.gmail.com>
To: "Quadri,Adnan" <adnan.quadri@louisville.edu>
Subject: Re: [USRP-users] Expected FPGA compatibility number mismatch
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
Content-Type: multipart/mixed; boundary="===============3833872018691063784=="
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

--===============3833872018691063784==
Content-Type: multipart/alternative; boundary="0000000000002e47000595fa3234"

--0000000000002e47000595fa3234
Content-Type: text/plain; charset="UTF-8"

Hi Adnan,

Sorry for the delay in response, this email fell through the cracks. Is
this still an outstanding issue for you?

Regards,
Nate Temple

On Wed, Sep 11, 2019 at 8:33 AM Quadri,Adnan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> We were working on the Schimdl Cox and OFDM Equalizer blocks.
>
> We updated to the recent version of UHD and did the installation manually.
> There is a rfnoc installation as well, done earlier. (UHD in rfnoc is 4.0
> but the new one is 3.14)
>
> With the newly installed UHD and few changes, we could build FPGA image
> for Schmidl Cox and OFDM Equalizer.
>
> However, when we run the gnuradio flowgraph (which contains blocks
> required to setup a OFDM receiver), we get the following RunTime error -
>
> *RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but
> got 35:*
>
> *The FPGA image on your device is not compatible with this host code
> build. *
>
> *Download the appropriate FPGA images for this version of UHD. *
>
> *Please run: *
>
>
> * "/home/sdr/rfnoc/lib/uhd/utils/uhd_images_downloader.py" *
>
>
> *Then burn a new image to the on-board flash storage of your *
>
> *USRP X3xx device using the image loader utility. Use this command: *
>
>
> *"/home/sdr/rfnoc/bin/uhd_image_loader"
> --args="type=x300,addr=192.168.10.2" *
>
>
> Should I uninstall rfnoc setup. I have already downloaded the images in
> the newly installed UHD directory.
>
> I built the image using uhd_image_builder and image_loader from the newly
> installed UHD directory. For environment setup for the new UHD I used the
> setup_env.sh script from rfnoc folder.
>
>
> Thanks,
> Adnan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002e47000595fa3234
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Adnan,<br><br>Sorry for the delay in response, this =
email fell through the cracks. Is this still an outstanding issue for you? =
<br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 11, 2019 at 8:33 AM Quadri=
,Adnan via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
We were working on the Schimdl Cox and OFDM Equalizer blocks.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
We updated to the recent version of UHD and did the installation manually. =
There is a rfnoc installation as well, done earlier. (UHD in rfnoc is 4.0 b=
ut the new one is 3.14)<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
With the newly installed UHD and few changes, we could build FPGA image for=
 Schmidl Cox and OFDM Equalizer.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
However, when we run the gnuradio flowgraph (which contains blocks required=
 to setup a OFDM receiver), we get the following RunTime error -
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<b><br>
</b></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<b>RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but g=
ot 35:</b><span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<i><span>The FPGA image on your device is not compatible with this host cod=
e build.<br>
</span></i>
<div><i>Download the appropriate FPGA images for this version of UHD.<br>
</i></div>
<div><i>Please run:<br>
</i></div>
<div><i><br>
</i></div>
<div><i>=C2=A0&quot;/home/sdr/rfnoc/lib/uhd/utils/uhd_images_downloader.py&=
quot;<br>
</i></div>
<div><i><br>
</i></div>
<div><i>Then burn a new image to the on-board flash storage of your<br>
</i></div>
<div><i>USRP X3xx device using the image loader utility. Use this command:<=
br>
</i></div>
<div><i><br>
</i></div>
<div><i>&quot;/home/sdr/rfnoc/bin/uhd_image_loader&quot; --args=3D&quot;typ=
e=3Dx300,addr=3D192.168.10.2&quot;<br>
</i></div>
<i><span></span><br>
</i></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<i><br>
</i></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Should I uninstall rfnoc setup. I have already downloaded the images in the=
 newly installed UHD directory.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I built the image using uhd_image_builder and image_loader from the newly i=
nstalled UHD directory. For environment setup for the new UHD I used the se=
tup_env.sh script from rfnoc folder.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Adnan<br>
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

--0000000000002e47000595fa3234--


--===============3833872018691063784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3833872018691063784==--

