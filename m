Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F559B579
	for <lists+usrp-users@lfdr.de>; Fri, 23 Aug 2019 19:29:04 +0200 (CEST)
Received: from [::1] (port=34876 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i1DMz-000302-Ok; Fri, 23 Aug 2019 13:29:01 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:39757)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1i1DMw-0002uq-9F
 for usrp-users@lists.ettus.com; Fri, 23 Aug 2019 13:28:58 -0400
Received: by mail-io1-f49.google.com with SMTP id l7so21865636ioj.6
 for <usrp-users@lists.ettus.com>; Fri, 23 Aug 2019 10:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=15bhQShotOOJOGj3BMtdc3iXqZWh2ciyTaOAMpC2axE=;
 b=kBeblt3cn1aQ0l9tV8BQZFQfFXZVf/NAqNJQPe1KFhPu28mYeF7hBJuVscRo7I0Xf1
 +QOmgouUL9D5DmgK5EMVmRuBwGDCTXlpaq8NXDJDWOVt1Ju4wbkwf99hW4CDPTF0+uYE
 YhTStJ3yFMhIrA4DYbR5MQZ5aDJTcwBscGFh8tgyGAjK1vdI1si0j5/rJr8zG2+RWozQ
 hOT5Jps2iYXakKoD/puN30FQ29sfNJPDQct+iQqxJOKhwel4jQP+kQaFJYf9mGnqMmue
 aqObnzqPAtDfrx253CSAp3Yl3Ux+hWNYtsfbDCUZ8AwYqwezcDg2Wm6dmQ3h7XAJsB2s
 K4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=15bhQShotOOJOGj3BMtdc3iXqZWh2ciyTaOAMpC2axE=;
 b=AgiWJSE9zWt47nKzbdWkR3Cv8yiKy4N38rBU21C0VIDf1wgc1c+xT63JgzA+Cm4ocA
 XejFXcTWNmUcvv1hvvsz+DT/63TFjhbyFzIoCCS3Z1jT9tWH/jkUzc1Tl0jy7Omfvnbx
 b9M588zaeHB9EZWJbt79lR4rwHB7rExQ9vMSEcb3I3TXoqDNlv/SO0CSU91+5EOq8T52
 Jvvjk0WYdoq53JYtG/cb+oUUqu7Schy0YU03JEiDXoc50noY9D0mnG2HnCeP6QGAffC0
 hIPdyzC1DWJir4FzUFw84pQRhT8TjIOwlopDaiijh//99jHxXlwthWyAnnyo19zVLkP3
 LylQ==
X-Gm-Message-State: APjAAAW06vj69voNiWNlggiklTovpLxF8gW7nbkadPIpX9yVRNqfhh1l
 cC3T0zMtQi2E8W7P1tuJIPARdBW4pDp3vjUx6CRMMg8m
X-Google-Smtp-Source: APXvYqwDtWALjXfW/vIdQzewh/WsdiU9utTYxU6fyTzpOWEoVSA7z4RBNy5NWXlQK7mvR1S6Vv9e0T42X6NjyUQY6eQ=
X-Received: by 2002:a6b:720e:: with SMTP id n14mr2461633ioc.139.1566581297547; 
 Fri, 23 Aug 2019 10:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAM4xKrrb4MNYu8PZmt29f8R5FbSpiik7Q95XPqVMtBqQO7ZtPQ@mail.gmail.com>
 <e50bf1f7-0bb6-84a2-edfa-0188a229fc63@mpb.li>
In-Reply-To: <e50bf1f7-0bb6-84a2-edfa-0188a229fc63@mpb.li>
Date: Fri, 23 Aug 2019 10:28:06 -0700
Message-ID: <CAM4xKrp8ng4b6gYvU1T7a-8VOj=fXY8Ji-BowcFeQkYiEerWGQ@mail.gmail.com>
To: =?UTF-8?Q?Matthias_Br=C3=A4ndli?= <matthias@mpb.li>
Subject: Re: [USRP-users] [UHD] 3.14.1.0 Release Announcement
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
From: Michael West via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael West <michael.west@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4742484779055867107=="
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

--===============4742484779055867107==
Content-Type: multipart/alternative; boundary="000000000000c0a1300590cc218e"

--000000000000c0a1300590cc218e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matthias,

The new B200 bootloader helps with failures to enumerate the device when it
is plugged in before the host is booted.  This only happens with some USB
controllers.  Loading the bootloader can be done by running:

b2xx_fx3_utils --load-bootloader <file>

The bootloader file has been added to the b2xx images file and can be
retrieved by running:

[sudo] uhd_images_downloader -t b2xx

Regards,
Michael

On Tue, Jul 9, 2019 at 12:10 AM Matthias Br=C3=A4ndli via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear Michael,
>
> First of all, thanks for the new UHD release to all people involved!
>
> On 08/07/2019 20:35, Michael West wrote:
> > This release includes [...] a new bootloader for B200
>
> Is there more information about this change? Does this solve a specific
> issue? I had a look at the relevant commits, but I am trying to
> understand why it was implemented and if there's any impact for our
> application.
>
> Best regards
> mpb
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c0a1300590cc218e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Matthias,</div><div><br></div><div>The new B200 bo=
otloader helps with failures to enumerate the device when it is plugged in =
before the host is booted.=C2=A0 This only happens with some USB controller=
s.=C2=A0 Loading the bootloader can be done by running:</div><div><br></div=
><div>b2xx_fx3_utils --load-bootloader &lt;file&gt;</div><div><br></div><di=
v>The bootloader file has been added to the b2xx images file and can be ret=
rieved by running:</div><div><br></div><div>[sudo] uhd_images_downloader -t=
 b2xx<br></div><div><br></div><div>Regards,</div><div>Michael<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Jul 9, 2019 at 12:10 AM Matthias Br=C3=A4ndli via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Mich=
ael,<br>
<br>
First of all, thanks for the new UHD release to all people involved!<br>
<br>
On 08/07/2019 20:35, Michael West wrote:<br>
&gt; This release includes [...] a new bootloader for B200<br>
<br>
Is there more information about this change? Does this solve a specific<br>
issue? I had a look at the relevant commits, but I am trying to<br>
understand why it was implemented and if there&#39;s any impact for our<br>
application.<br>
<br>
Best regards<br>
mpb<br>
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

--000000000000c0a1300590cc218e--


--===============4742484779055867107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4742484779055867107==--

