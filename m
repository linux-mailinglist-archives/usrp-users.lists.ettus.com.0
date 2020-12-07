Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 309262D1939
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 20:16:33 +0100 (CET)
Received: from [::1] (port=38948 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmLzr-0005uw-K4; Mon, 07 Dec 2020 14:16:31 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:42040)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kmLzn-0005ib-F3
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 14:16:27 -0500
Received: by mail-ot1-f47.google.com with SMTP id 11so13536612oty.9
 for <usrp-users@lists.ettus.com>; Mon, 07 Dec 2020 11:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+wKq8q1mpoMdIFWczBznmcBYdnty2Le55QMyvlQ0oyU=;
 b=PbeebPGpDB5MJTHukbo45pUlsyOz6rO4EYjWqDzC4btNeqiwWuCj22dWyoVqEtNDUy
 uxU6+I+DTJk5jLt0ezMknyJ3FIv5alFh+B2xkcvZs1cZYXQwgrS7DcdXmgRnrtz0KP3u
 encKsvKw+vEBLjgvF/LUelO3ldgW1y7XQNp/cJmuf7F/AgM9rAopWt1o8sQTZVb1nVDQ
 AMyVhKx+CRyxYfAKyZ8BcE1zNyYLMqhEB7Uz0bav3xWP8+GdL21xqndH3/bNoLYwk38H
 5ykqVFzZD37HkqF0UaqnteKo6WbF69P8MUO+4VyjQ2euu1RBhusG3sbXx2RpInMDCeKB
 6yEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+wKq8q1mpoMdIFWczBznmcBYdnty2Le55QMyvlQ0oyU=;
 b=UeslwqteV7I//XaporaEFuSNLFMcMnn7agr2qDT8jLMPIsT0a/9NgHGSfICNQke6Ae
 XJ+wq1/RhB9I7OdH7ku2H4Eo62UkbuQ0N2ZXOfJfphbFQtIzhTGhIkwOjBdKPVMjii25
 5EURFIuYBaXLvHGAmrTCwIzIwCKPBlpY+r1/v9+oVm8AfC5cvthVKpiCf1SfmkJA52VD
 JTYX5sn1BoeyvDPf82GQhQt5DYCr9ak/mMV20PrtFV74hFtE+UXfcPu5VgFFKT4xPTXU
 LpIHiupyOZHQbz1jldv381lZGlL1cz4GdgA4+coCALDFWYYIHL3p9LzpLKw5xUGCgtMj
 sv6Q==
X-Gm-Message-State: AOAM5327a+JLy6/8l7Dgfwn98PDST8c7jRcMNea95/ZhzeoetFfnPlUT
 ofLajv07yV9emqD20WgscfJMuOUqUEO7djFzfqZRMQ==
X-Google-Smtp-Source: ABdhPJzI2LUBN0lwm7IbsFLXZUDkemqRFiz5tq2x/6xyahgnbfX/9hzeKx3Qv+2BRJhbSa9Ep1EG7QqQNiYf5GVLXk0=
X-Received: by 2002:a9d:6b10:: with SMTP id g16mr14051617otp.301.1607368546477; 
 Mon, 07 Dec 2020 11:15:46 -0800 (PST)
MIME-Version: 1.0
References: <1711191034.4575835.1607367221112.ref@mail.yahoo.com>
 <1711191034.4575835.1607367221112@mail.yahoo.com>
In-Reply-To: <1711191034.4575835.1607367221112@mail.yahoo.com>
Date: Mon, 7 Dec 2020 14:15:35 -0500
Message-ID: <CAB__hTTTrKsP7Qi636OHcuMb8GFW-wre9Yx+pXH==+NACaTaAA@mail.gmail.com>
To: Mark McAllister <bassecho21@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP B200 Function Question
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7356910396967671861=="
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

--===============7356910396967671861==
Content-Type: multipart/alternative; boundary="0000000000003caa7505b5e4a75e"

--0000000000003caa7505b5e4a75e
Content-Type: text/plain; charset="UTF-8"

Mark,
Just this past Friday, I had success controlling a B200mini directly from
an N310 using the USB2 port on the N310.  Such a use case limits you to
USB2 streaming for the B2xx and it also hogs CPU cycles from the N310.  Let
me know if this is of interest to you I can can provide more info.
Rob

On Mon, Dec 7, 2020 at 1:56 PM Mark McAllister via USRP-users <
usrp-users@lists.ettus.com> wrote:

> My senior design team at California State University Northridge is current
> using a USRP N210 as a  local oscillator for a smart antenna array.
>
> We're considering purchasing something from the B200 series in order to
> replace it since we are current borrowing our N210.
>
> Our concern is that the B200 specifies the use of USB 3.0 for connecting
> to a host computer, and we are currently connecting both an N210 and N310
> to a router which connects all signals to a host computer.
>
> My main question is whether or not the B200 series will run properly using
> a USB to Ethernet adapter or if the device MUST be connected directly to
> the host computer via USB.
>
> Thank you for your time,
> Mark McAllister
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003caa7505b5e4a75e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Mark,<div>Just this past Friday, I had success controlling=
 a B200mini directly from an N310 using the USB2 port on the N310.=C2=A0 Su=
ch a use case limits you to USB2 streaming for the B2xx and it also hogs CP=
U cycles from the N310.=C2=A0 Let me know if this is of interest to you I c=
an can provide more info.</div><div>Rob</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 7, 2020 at 1:56 PM=
 Mark McAllister via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><div style=3D"font-family:&quot;Helve=
tica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div dir=3D"ltr"=
>My senior design team at California State University Northridge is current=
 using a USRP N210 as a=C2=A0 local oscillator for a smart antenna array. <=
br><br><div>We&#39;re considering purchasing something from the B200 series=
 in order to replace it since we are current borrowing our N210. <br></div>=
<div><br></div><div dir=3D"ltr">Our concern is that the B200 specifies the =
use of USB 3.0 for connecting to a host computer, and we are currently conn=
ecting both an N210 and N310 to a router which connects all signals to a ho=
st computer.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">My main q=
uestion is whether or not the B200 series will run properly using a USB to =
Ethernet adapter or if the device MUST be connected directly to the host co=
mputer via USB. <br><br><div>Thank you for your time, <br></div><div dir=3D=
"ltr">Mark McAllister<br></div></div></div></div></div>____________________=
___________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003caa7505b5e4a75e--


--===============7356910396967671861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7356910396967671861==--

