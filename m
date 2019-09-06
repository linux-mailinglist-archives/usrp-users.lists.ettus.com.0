Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD65BABDD5
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 18:36:06 +0200 (CEST)
Received: from [::1] (port=59900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6HDM-0002oY-O7; Fri, 06 Sep 2019 12:36:00 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:45739)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1i6HDJ-0002hJ-5H
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 12:35:57 -0400
Received: by mail-ot1-f53.google.com with SMTP id 41so2481939oti.12
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 09:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tk62Hq1zITooK0fRCxgn/xoCblnXFuXJ22jaL+YV9t0=;
 b=BMZgbmgSsY5ZwO/sKPRug8YWk4sR0rgd4pgwYh9dNyrYAXziXbvicDDM8Eyp2UUwI9
 DTfOcLcH4aAi6WJ4lF8eZHwGkcu0OGyxJ1wiBlk1Bw4wSxjSHWJzdP1U2ZFEAgEqjTvi
 AUhLim//g/D6xvu3DowfrDJTKb9kHi1FRuAYfaSlmSftbB06B1cjeaQzYwaki91aIM7y
 MtqqbiEj2dGOGgY/+5V54q7+9P6R2MlPEPQpIF2xtSqF9QJiHrTiD1aRHb/hSX6UOT77
 D44vvy3mmbI2ajCSCPINbs8oi7UyxttEiV8nnWnYFRD5N+ishfhkejXvVSP2YYgbsAoB
 dS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tk62Hq1zITooK0fRCxgn/xoCblnXFuXJ22jaL+YV9t0=;
 b=CdRJ7gXR81jChbKoRVTKOAZHWtGiDW8dq9EicKL0MQGtYOK298byxfXsNdyYB6o5Cn
 +iz1qFO970MUzN8uXg4GpQtDQH4RFsJbQSFSos30z40+91yQom3QzPpFRNy6kuxQB2+y
 zO/GJxrSw8NnY796Uu5ARFA+Otb37qIQPP3QoOH9MIXQIMCLktDUhHtUPr1+juGj1Yyo
 CaJMZo6IYusXu61Voc/DF8o5LTJl6U05L/NC7TbjQCfcNeGrcCETHjE1LtdDNJtwla47
 h35HARNwU3/3bby0kzzFHy4+b6kmmpq4Z8Ldr1Egvo4jmpn0ff51Zp3SPKR2DHOc3+lB
 DJSQ==
X-Gm-Message-State: APjAAAWjHe5eZgEPjuoi07A54ChsKa+IwffE+93n90cbS6j3R+ayuSzq
 t0uthY4qUj1PxU/wuAMr18oXQDDevSSQ228Q16L5M1ag
X-Google-Smtp-Source: APXvYqykMBtb0aEwFh5F6oRK4Yjdq2rZScD4SeIaHPwglyo3wSzbZYhVdfwRUB3Ny1tH6sao1hZBidXm+FoTRgM8PZQ=
X-Received: by 2002:a05:6830:184:: with SMTP id
 q4mr3726471ota.128.1567787715029; 
 Fri, 06 Sep 2019 09:35:15 -0700 (PDT)
MIME-Version: 1.0
References: <c617db41435a48cebba2a8ba21a1aa09@heig-vd.ch>
In-Reply-To: <c617db41435a48cebba2a8ba21a1aa09@heig-vd.ch>
Date: Fri, 6 Sep 2019 09:35:49 -0700
Message-ID: <CAL263iy-NbJC_M-npXXRjH8zZPDbLyKy3=Herxk=hC+e7vAXDQ@mail.gmail.com>
To: Truan David <david.truan@heig-vd.ch>
Subject: Re: [USRP-users] N320: set_rx_bw() does not change the actual BW
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
Content-Type: multipart/mixed; boundary="===============1640335496815229159=="
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

--===============1640335496815229159==
Content-Type: multipart/alternative; boundary="000000000000d6b5e30591e505f9"

--000000000000d6b5e30591e505f9
Content-Type: text/plain; charset="UTF-8"

Hi David,

The N320 has a discrete component daughterboard and does not support
setting a bandwidth filter.

The RFIC based USRPs such as the B2xx, E31x, E320 (AD9361) and N300/N310
(AD9371) support the set_rx_bandwidth API call.

Regards,
Nate Temple

On Fri, Sep 6, 2019 at 4:55 AM Truan David via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> We received our N320 and started doing some basic RX tests on it and
> everything seems ok. We were able to get an emitted chirp and display it
> using GQRX.
>
> However, when calling the set_rx_bandwidth() UHD function and then reading
> the actual RX bandwidth, it always read back 250MHz. Using
> rx_samples_to_file example and with a --bw=1e6 parameter, I obtain the
> output:
>
> ....
>
> Setting RX Bandwidth: 1.000000 MHz...
>
> Actual RX Bandwidth: 250.000000 MHz...
>
> ....
>
> Is this normal or a bug? If it is a bug, does this have an impact on the
> acquisition, if yes what is this impact?
>
> We tested both the HG and the XQ FPGA bitstreams and we use UHD 3.14.0.0
> on both the N320 and the host, obtaining the same behavior in all cases.
>
>
> Thank you in advance for your answer!
>
> David T.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d6b5e30591e505f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi David,<br><br>The N320 has a discrete component daug=
hterboard and does not support setting a bandwidth filter. <br><br>The RFIC=
 based USRPs such as the B2xx, E31x, E320 (AD9361) and N300/N310 (AD9371) s=
upport the set_rx_bandwidth API call. <br><br>Regards,<br>Nate Temple</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Sep 6, 2019 at 4:55 AM Truan David via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
We received our N320 and started doing some basic RX tests on it and everyt=
hing seems ok. We were able to get an emitted chirp and display it using GQ=
RX.<br>
<br>
However, when calling the set_rx_bandwidth() UHD function and then reading =
the actual RX bandwidth, it always read back 250MHz. Using rx_samples_to_fi=
le example and with a --bw=3D1e6 parameter, I obtain the output:<br>
<br>
....<br>
<br>
Setting RX Bandwidth: 1.000000 MHz...<br>
<br>
Actual RX Bandwidth: 250.000000 MHz...<br>
<br>
....<br>
<br>
Is this normal or a bug? If it is a bug, does this have an impact on the ac=
quisition, if yes what is this impact?<br>
<br>
We tested both the HG and the XQ FPGA bitstreams and we use UHD 3.14.0.0 on=
 both the N320 and the host, obtaining the same behavior in all cases.<br>
<br>
<br>
Thank you in advance for your answer!<br>
<br>
David T.<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d6b5e30591e505f9--


--===============1640335496815229159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1640335496815229159==--

