Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AF373182
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 16:21:18 +0200 (CEST)
Received: from [::1] (port=49594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqI8q-00048J-Gk; Wed, 24 Jul 2019 10:21:16 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:42905)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1hqI8m-00043N-Pq
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 10:21:12 -0400
Received: by mail-ed1-f45.google.com with SMTP id v15so47308611eds.9
 for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2019 07:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=JO3JFmWbgm459CpL8rUrdgzjg9V/QGWUeLP6VGOwdv4=;
 b=PJPCvoEh6h1wdrXZ7lEklTGSW5abBvJpnTUq2pu+8zT6tnCubzMmxA/LvCpI1Nmcos
 ber+uepI3HsdqF+sJ8mBGA4ZtkM67WrB1dNetkP6ehzLaV2h5q+jJGxRihrCl076ggVB
 zw3KF5Dl8B72OwgvF8cquffZta8Kps17Ed46QmlhCNQOAZi4UYGBTxogOoa2Z71ZqF6q
 HxUnGmnmFcYMFN9mNMH1ExFru9KEvV1hF9KUkFCa58Y65HIYcjZgqtdRDEyvh0eCVbjA
 kTJo0dijNrC/34WiiRfTbriHvrQNIYtt4NoiLEO0aJkclUwEi3s1+xXfmZr4SSG7zn7l
 pHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=JO3JFmWbgm459CpL8rUrdgzjg9V/QGWUeLP6VGOwdv4=;
 b=tXlg99OrOkB9cLkXEumAotLAROKvaYP8J7rzYKdzUWp9erKkXNWPpPDGcAl2TWWm4A
 8VnCONyOCW5Bh72Pn9nnUiupv1Gr66Qi9FOhGmY+FjITXbY7ZXz4L2ZN1Pb3g647E60F
 Pnk3zyIZUA9hyvglo1qgPs1ZrF5OAn08D1ReGzW5auyHWiEOEIEor9ZqYD1XQmA1TPAD
 STTkq2/xnnHzxcjVryL69/nnejukB0I/lXtwsLoAq23kp097FTQB4CmYEEIq+e02HMzB
 oXsWEp5z1bM1yVaCVIIGQJlFiNS4FvNbfCRqkivvdCQ69uAr0aXTjN5tkPqf38JmF9v/
 ydtg==
X-Gm-Message-State: APjAAAWmJ8IBdG26H87F4qNY37V/uW5zQ/lISVa8vh+YbRyYpb588yFg
 j3tqmLbTIn+RlPc28Pm1K78GkcmJb3f83CxkQVogY+BD
X-Google-Smtp-Source: APXvYqxjp8WCwSYwXvRESOx04oD822MK6aTHHFZyJmChVz3odnsnCNUXvnAp9NwxZPLsBEBQmE2G3ru9Iur9AqYwT8g=
X-Received: by 2002:a17:906:a3c4:: with SMTP id
 ca4mr62405184ejb.5.1563978031650; 
 Wed, 24 Jul 2019 07:20:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAPwzL0Vf1GUMJaGNTfDCNmB4E4KjAn-ha_yHh3E8atUm8g0HPg@mail.gmail.com>
In-Reply-To: <CAPwzL0Vf1GUMJaGNTfDCNmB4E4KjAn-ha_yHh3E8atUm8g0HPg@mail.gmail.com>
X-Google-Sender-Delegation: nate.temple@ettus.com
Date: Wed, 24 Jul 2019 07:22:44 -0700
X-Google-Sender-Auth: 6flrPaHNEyJXNv3dl1mzg0dk5-c
Message-ID: <CACSOXP0xVUUJCDCQNAftrJS7io9fG02+fUGsfatwBpJUg3-Fhw@mail.gmail.com>
To: David Dobkin <daviddd177@gmail.com>
Subject: Re: [USRP-users] Error during read from x300 over 10G SFP+
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
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>, levine.noam@gmail.com,
 roneniaf@gmail.com
Content-Type: multipart/mixed; boundary="===============0890505257481055590=="
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

--===============0890505257481055590==
Content-Type: multipart/alternative; boundary="0000000000000365f5058e6e0326"

--0000000000000365f5058e6e0326
Content-Type: text/plain; charset="UTF-8"

Hi David,

If you remove the switch, does the USRP operate as expected?

What model switch are you using? Does it reorder UDP packets?

We generally recommend to avoid using switches, or if one is used, ensure
it does not reorder packets.

Regards,
Nate Temple

On Tue, Jul 23, 2019 at 11:41 PM David Dobkin <daviddd177@gmail.com> wrote:

> Hello,
>
> We are working with USRP x300. UHD 3.10.01.
> Our connection as follows:
> Cisco Server -> 10G Jumbo frame Switch -> USRP_X300 with default XG fpga.
> We can ping and load image to USRP successfully. But, when trying to read
> samples from USRP we got similar problem as desribed in referenced file.
> We would be grateful for soultion to the problem in order to read samples
> from the USRP ASAP.
>
> thanks,
> David
>

--0000000000000365f5058e6e0326
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi David,<br><br>If you remove the switch, does the USRP operat=
e as expected?<br><br>What model switch are you using? Does it reorder UDP =
packets?<br><br>We generally recommend to avoid using switches, or if one i=
s used, ensure it does not reorder packets.<br><br>Regards,<br>Nate Temple =
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Jul 23, 2019 at 11:41 PM David Dobkin &lt;<a href=3D"mailto:d=
aviddd177@gmail.com">daviddd177@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hello,<div dir=
=3D"auto"><br><div dir=3D"auto">We are working with USRP x300. UHD 3.10.01.=
</div><div dir=3D"auto">Our connection as follows:</div><div dir=3D"auto">C=
isco Server -&gt; 10G Jumbo frame Switch -&gt; USRP_X300 with default XG fp=
ga.</div><div dir=3D"auto">We can ping and load image to USRP successfully.=
 But, when trying to read samples from USRP we got similar problem as desri=
bed in referenced file.</div><div dir=3D"auto">We would be grateful for sou=
ltion to the problem in order to read samples from the USRP ASAP.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">thanks,</div><div dir=3D"auto">Da=
vid</div></div></div>
</blockquote></div>

--0000000000000365f5058e6e0326--


--===============0890505257481055590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0890505257481055590==--

