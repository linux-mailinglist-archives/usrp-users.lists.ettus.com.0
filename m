Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D8629DF0B
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 01:58:58 +0100 (CET)
Received: from [::1] (port=39086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXwHI-0003zQ-Fv; Wed, 28 Oct 2020 20:58:56 -0400
Received: from mail-il1-f181.google.com ([209.85.166.181]:36201)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1kXwHE-0003sn-Rh
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 20:58:52 -0400
Received: by mail-il1-f181.google.com with SMTP id p10so1452609ile.3
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 17:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VU8+YPb9m/5alWvHkN4RkhyC5uithWpqAcZsE9hfsjU=;
 b=FFI8xbN1kpARuHookXcglzyjiPKltbXyhRvYBWeOkFfkseJAL7jh4faN5uggNyEKfY
 XmNRdEk7u0xYPxU202OsmqKhKTT/1AV7eyRH7y7OECbIbYPNfKE6xLUIBmFrTcDPCqw1
 6dNedvfImrNU9MpyqbJXMtsZaEIH4f6VGJDMEv5mz5Gnc6diLLLuH88lZypfx+WD24on
 HHCK3jG5pVcI7sX66oK3mx9m3T+FsBtH9F6RRzTQQC0N48TTQZgerzznCjw7mThZmI00
 e5OuGHIO1ZYeRZKHXQiGGKygo+/3vynRwukDtW/3/MYQFmeUQkbx6JqFhf5/68Q38Lyl
 OzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VU8+YPb9m/5alWvHkN4RkhyC5uithWpqAcZsE9hfsjU=;
 b=kpCnDNVD5N4AvzqR3ajKKgAjJTW72sRUOVdjzgHygokF5d7lB6RO/W5jEB7ER0kwhm
 LWxEUpWs0JxcqWRhsVPaS06QbwEtsZrRX1nXez97M+SmX1hudoRjocfNhiClLeGtg/RX
 geyVJvjq2TVCYNAi+xwn7+AYiSG570WsyuGKnTmtyh5SauqNp24GPTT6pJqW+mA3ZEY5
 /18r58h0RJ+TTLyktnAQQJosQOGvq2hn/ClLNr2n69A7ZjoC9y5kwARsivSpywe0/vkx
 WU7k4fr+HSc09IlBtWsGZjV6Lh0aNl6XzZd2fV/Gre2lem5AdA0vPLWbElJOYFrmcQQv
 iFfQ==
X-Gm-Message-State: AOAM531LwgbR4HhQTiBTzAyHfhVslgexWNoizeACU5MTPb/aAD1JJVq8
 6CUDPLN1X1iXy+qkXzUBuRSPD2/2jZb9AUjpC0AGbRik34Z+BDBu
X-Google-Smtp-Source: ABdhPJyadUgFVMkZR+NrBrlvSkZQSUCj7EylUNsAwv4wl6fBJNZFc7XO9OP6lBkjezzqr4AKr0MQ0Y6neQA7ysZWlt4=
X-Received: by 2002:a05:6e02:112:: with SMTP id
 t18mr1383195ilm.299.1603933092064; 
 Wed, 28 Oct 2020 17:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <08a10fed-97db-5459-8470-7803fff24dfd@dcsmail.net>
In-Reply-To: <08a10fed-97db-5459-8470-7803fff24dfd@dcsmail.net>
Date: Wed, 28 Oct 2020 19:57:35 -0500
Message-ID: <CACaXmv86HdB9aKY9jGqCwL35cUK=U2bj_-Gox_qnaogYDdBttg@mail.gmail.com>
To: Barry Duggan <barry@dcsmail.net>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B200mini questions
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============7965048654364730565=="
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

--===============7965048654364730565==
Content-Type: multipart/alternative; boundary="0000000000003247e705b2c4c6ee"

--0000000000003247e705b2c4c6ee
Content-Type: text/plain; charset="UTF-8"

Hello Barry:

On the B200mini, you can transmit (on the TX/RX port) and receive (on the
RX2 port) at the same time.

The minimum sample rate depends on the lowest master clock rate and the
maximum decimation factor.  I don't recall these values off the top of my
head, but I'll go double-check them.  The maximum sampling rate is 61.44
Msps.

--Neel Pandeya



On Wed, 28 Oct 2020 at 19:45, Barry Duggan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Using a B200mini, I have the following questions:
>
> - If I have one antenna connected to the TRX port, is the receiver
> blocked during a transmit?
>
> - What are the maximum and minimum sample rates supported?
>
> Thanks,
> ---
> Barry Duggan KV4FV
> https://github.com/duggabe
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003247e705b2c4c6ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Barry:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">On the B200mini, you can transmit (on the TX/=
RX port) and receive (on the RX2 port) at the same time.</div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:verdana,sans-serif">The minimum s=
ample rate depends on the lowest master clock rate and the maximum decimati=
on factor.=C2=A0 I don&#39;t recall these values off the top of my head, bu=
t I&#39;ll go double-check them.=C2=A0=C2=A0The maximum sampling rate is 61=
.44 Msps.<br></div><div class=3D"gmail_default" style=3D"font-family:verdan=
a,sans-serif"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" dat=
a-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"verdana, san=
s-serif">--Neel Pandeya</font><div><br></div></div></div></div><br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
28 Oct 2020 at 19:45, Barry Duggan via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Using a B200mini, I have=
 the following questions:<br>
<br>
- If I have one antenna connected to the TRX port, is the receiver <br>
blocked during a transmit?<br>
<br>
- What are the maximum and minimum sample rates supported?<br>
<br>
Thanks,<br>
---<br>
Barry Duggan KV4FV<br>
<a href=3D"https://github.com/duggabe" rel=3D"noreferrer" target=3D"_blank"=
>https://github.com/duggabe</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003247e705b2c4c6ee--


--===============7965048654364730565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7965048654364730565==--

