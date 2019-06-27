Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A852C5897A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2019 20:07:59 +0200 (CEST)
Received: from [::1] (port=33188 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgYoQ-0005iu-MF; Thu, 27 Jun 2019 14:07:58 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:42800)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hgYoM-0005YR-3Y
 for usrp-users@lists.ettus.com; Thu, 27 Jun 2019 14:07:54 -0400
Received: by mail-io1-f54.google.com with SMTP id u19so6721627ior.9
 for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2019 11:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OIBwnjabtG6Z/9T4qdaiZv9hyjekZZqF5WvHmEn+lig=;
 b=Gh3MsZ8S9Fng/A2s1w74CaxGE4fNqlnzoTRAuw2jfikFdzn+b0qKp+P04IEv0Gh3Qp
 l9QTgbM1lMayg1dDwN9ZxaK69ELqtrrnKAkJ0zWLKUB246LdqYsbX2Xdy1arRvV/u47w
 N6cahjnAq1oiw1mFQCBbCmHkB6q04/RgEuVGv7u5eoQY/zUxdKhUj63rAJ9DYTCkocu7
 Jk6TMhbVXI/Pfkn4gXkGhhmxfKJKbasj8hEzwOfk5Hha1QnsVmGbQVmzEX48Qnvzx8ke
 H1nj/3/WIGKOy7cZZroev++tHNQFlBIyTEg0IhnOfd4IEFK/vfBD+yLgplCrrDXL/fIK
 gPVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OIBwnjabtG6Z/9T4qdaiZv9hyjekZZqF5WvHmEn+lig=;
 b=GJckZCJNEc2OIwRwwJOTKt1Ru8VfXvkx1FdhYjDVSB1QqEFRhA9yJZhIGgq0GNW5wR
 +XOFe+J0ttr2cPFRboC4tFFqFsorJvmg6qlwuWjaRCSSvXA6fHeD2DbJhBkL0uc/b0o6
 IeY2VecmKCk8DJSWlUiyD9b6rRN1mZB4ebE8Q3tNhydhvm3QXbczWQIiJjUoc40TXxXP
 8LUK3N+CDfh1bphobkIn4sAsN9bUVem4DyD/IPYy+jXT/inl1r8VNoWzaVs9RmPyubBX
 mD8OsFH4TFcf+80VWIfxu6bNw7DX5D5OCpHGcSoDQKCUwZaGCCwUbKaRDuXVZjilDCs8
 LwFQ==
X-Gm-Message-State: APjAAAWVOvX78Xzj7uE6LcptByOPekzAysUoZyURrMVxNDTXBSTOPu23
 XSv9WsDAPGLpjVAkdvlX9ZfiE0Flae45XZ6tJJ8FBA==
X-Google-Smtp-Source: APXvYqzTtxacVhP07XA3b2l3oiFd4ufhlWpCi29mX4XJRrrUoRkc+wbxzu7b0APv3+AxySZ1uIrREZALKvkrcYzMpY8=
X-Received: by 2002:a5d:9e49:: with SMTP id i9mr5598251ioi.290.1561658833092; 
 Thu, 27 Jun 2019 11:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <87aeadc1d01642b5b0181da373262f33@Bayard.toshiba-trel.local>
 <5D1503AE.5030802@gmail.com>
In-Reply-To: <5D1503AE.5030802@gmail.com>
Date: Thu, 27 Jun 2019 11:07:02 -0700
Message-ID: <CAKJyDkJ6zmrz2rrgkVgOyRmasfDMkgwM6P53EF6x7tfCOqH5xQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] X310 with CBX 120 daughter board looses uplink RF
 Connection
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7633042580104152922=="
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

--===============7633042580104152922==
Content-Type: multipart/alternative; boundary="00000000000001d6b7058c5208d5"

--00000000000001d6b7058c5208d5
Content-Type: text/plain; charset="UTF-8"

One debugging technique you could try would be to connect Tx to Rx directly
via an SMA cable with ~30dB of inline attenuation to eliminate any RF
propagation effects.


On Thu, Jun 27, 2019 at 10:58 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/27/2019 12:22 PM, Jaya Thota via USRP-users wrote:
>
>
>
> Hi all,
>
>
>
> I have a two X310 with CBX-120 daughter board running on UHD version
> 3.13.0 on Ubuntu 16.04.
>
> I am using it to tx/rx LTE 5MHz BW and 10 MHz BW signals at 2.85MHz using
> directional LP0965 antennas.
>
> However after few minutes the USRP looses uplink RF connection.
>
>
>
> Do I need to calibrate them?
>
> I did send the following commands without any RF connectors to calibrate.
> But I have the same issue.
>
> The master clock rate for LTE is 184.32e6 Hz. Do I need to send this as
> well.
>
> Any suggestions will be helpful.
>
> 1. sudo uhd_cal_rx_iq_balance --verbose --args="addr=192.168.40.2"
> --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
>
> 2. sudo uhd_cal_tx_iq_balance --verbose --args="addr=192.168.40.2"
> --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
>
> 3. sudo uhd_cal_tx_dc_offset --verbose --args="addr=192.168.40.2"
> --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
>
>
>
> Regards
>
> Jaya
>
> There are a LOT of reasons for a complex system like LTE to lose its RF
> link.  Does the underlying LTE application provide any hints?
>   Perhaps a debugging mode?
>
> This likely IS NOT related to underlying UHD or hardware, per se, but
> probably some environmental issue, and the app should be able to help
>   you debug it.
>
>
>
> ------------------------------
>
> NOTE: The information in this email and any attachments may be
> confidential and/or legally privileged. This message may be read, copied
> and used only by the intended recipient. If you are not the intended
> recipient, please destroy this message, delete any copies held on your
> system and notify the sender immediately.
>
> Toshiba Research Europe Limited, registered in England and Wales
> (2519556). Registered Office 208 Cambridge Science Park, Milton Road,
> Cambridge CB4 0GZ, England. Web: www.toshiba.eu/research/trl
>
>
>
> ------------------------------
> This email has been scanned for email related threats and delivered safely
> by Mimecast.
> For more information please visit http://www.mimecast.com
> ------------------------------
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000001d6b7058c5208d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One debugging technique you could try would be to connect =
Tx to Rx directly via an SMA cable with ~30dB of inline attenuation to elim=
inate any RF propagation effects.<div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 27, 2019 at 10:=
58 AM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_2948718892388367396moz-cite-prefix">On 06/27/2019=
 12:22 PM, Jaya Thota via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div class=3D"gmail-m_2948718892388367396WordSection1">
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Hi all,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">I have a two X310 with CBX-120 daughter
          board running on UHD version 3.13.0 on Ubuntu 16.04.<u></u><u></u=
></p>
        <p class=3D"MsoNormal">I am using it to tx/rx LTE 5MHz BW and 10
          MHz BW signals at 2.85MHz using directional LP0965 antennas.<u></=
u><u></u></p>
        <p class=3D"MsoNormal">However after few minutes the USRP looses
          uplink RF connection.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Do I need to calibrate them?<u></u><u></u></=
p>
        <p class=3D"MsoNormal">I did send the following commands without
          any RF connectors to calibrate. But I have the same issue.
          <u></u><u></u></p>
        <p class=3D"MsoNormal">The master clock rate for LTE is 184.32e6
          Hz. Do I need to send this as well.<u></u><u></u></p>
        <p class=3D"MsoNormal">Any suggestions will be helpful.<u></u><u></=
u></p>
        <p class=3D"MsoNormal">1.
          sudo uhd_cal_rx_iq_balance --verbose
          --args=3D&quot;addr=3D192.168.40.2&quot; --freq_start 2.4e9 --fre=
q_stop
          2.9e9 --freq_step 1e6<u></u><u></u></p>
        <p class=3D"MsoNormal">2.
          sudo uhd_cal_tx_iq_balance --verbose
          --args=3D&quot;addr=3D192.168.40.2&quot; --freq_start 2.4e9 --fre=
q_stop
          2.9e9 --freq_step 1e6<u></u><u></u></p>
        <p class=3D"MsoNormal">3.
          sudo uhd_cal_tx_dc_offset --verbose --args=3D&quot;addr=3D192.168=
.40.2&quot;
          --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6<u></u><u></u=
></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Regards<u></u><u></u></p>
        <p class=3D"MsoNormal">Jaya</p>
      </div>
    </blockquote>
    There are a LOT of reasons for a complex system like LTE to lose its
    RF link.=C2=A0 Does the underlying LTE application provide any hints?<b=
r>
    =C2=A0 Perhaps a debugging mode?<br>
    <br>
    This likely IS NOT related to underlying UHD or hardware, per se,
    but probably some environmental issue, and the app should be able to
    help<br>
    =C2=A0 you debug it.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail-m_2948718892388367396WordSection1">
        <p class=3D"MsoNormal"><u></u><u></u></p>
      </div>
      <br>
      <hr>
      <font color=3D"Gray" face=3D"Arial" size=3D"3"><br>
        NOTE: The information in this email and any attachments may be
        confidential and/or legally privileged. This message may be
        read, copied and used only by the intended recipient. If you are
        not the intended recipient, please destroy this message, delete
        any copies held on your system and notify the sender
        immediately.<br>
        <br>
        Toshiba Research Europe Limited, registered in England and Wales
        (2519556). Registered Office 208 Cambridge Science Park, Milton
        Road, Cambridge CB4 0GZ, England. Web:
        <a class=3D"gmail-m_2948718892388367396moz-txt-link-abbreviated" hr=
ef=3D"http://www.toshiba.eu/research/trl" target=3D"_blank">www.toshiba.eu/=
research/trl</a><br>
        <br>
      </font>
      <br>
      <br>
      <span style=3D"font-family:Arial;font-size:10pt">
        <hr width=3D"100%"> This email has been scanned for email related
        threats and delivered safely by Mimecast.<br>
        For more information please visit <a href=3D"http://www.mimecast.co=
m" target=3D"_blank">http://www.mimecast.com</a>
        <hr width=3D"100%"> </span>
      <br>
      <fieldset class=3D"gmail-m_2948718892388367396mimeAttachmentHeader"><=
/fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_2948718892388367396moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.c=
om</a>
<a class=3D"gmail-m_2948718892388367396moz-txt-link-freetext" href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000001d6b7058c5208d5--


--===============7633042580104152922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7633042580104152922==--

