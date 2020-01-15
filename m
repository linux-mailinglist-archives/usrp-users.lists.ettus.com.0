Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A09513CA0C
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2020 17:56:30 +0100 (CET)
Received: from [::1] (port=45540 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irlxv-0004Fc-QE; Wed, 15 Jan 2020 11:56:23 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:44636)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1irlxs-0004BA-Jr
 for usrp-users@lists.ettus.com; Wed, 15 Jan 2020 11:56:20 -0500
Received: by mail-lj1-f180.google.com with SMTP id u71so19300677lje.11
 for <usrp-users@lists.ettus.com>; Wed, 15 Jan 2020 08:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4u3ndj84lvd1YuR7htJmJLT7pHPN7nqu7LrWwcc0fxU=;
 b=oT1dHIczV/IYhTEb3lb1UdRbYOFo0jZorhL/6+h48JTPvuXsxJy57D35ZfxsS2yMvX
 K3ZF99zZNlDRBfRiYRPqAH6smQx4pogU6pmGM0T+wKEK+vYstJgFTVRzQ4I4McWyfLkL
 1cDFTQ/aTGarKEYIQy5UsLUrKQSUunXxTOH5wcaFZ7kxkIX6Z19fHuSyP3tCjA4GphOy
 jKtNCvcSbN4emusbdzPZWLvYtB3Hd8Dv2NuiKft6+ci7jUAB7HIis4GAs0z4IgJ45ih/
 Yy6/VI/KOaTR+/kreiYFZMaRXbUsJ4HWixVKyzRkthlTdvtgmsroOZfNKqpHMG8EtNcT
 40+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4u3ndj84lvd1YuR7htJmJLT7pHPN7nqu7LrWwcc0fxU=;
 b=QsDwh9O5Be3H3+Rv7iVVwFmH0MzXQzsfuXEtaphj30C4ReRN8E2tRjr+480PZx8iQY
 bXGnD47VeaUgiKLq/nQd171MC9tfsXTHpN/o7BTZ/Q3A1hYlk24nd/2GC8rrkcdIQDCu
 geUv/IQS3Hlp+ocS0MlMEHAny++KJanVvBYOpaBqVdoXY9ecLscLqApsHvRX/Y5pmMpU
 0DqWnIBYDAZrA3WCXjOqfyqXWXBha1fUh9xjLpj2dQcKGEFDegAEeXqx8A+4MtZWjAM9
 Je2m/bt4V8OM9D6hoNsUT+4Rtz3mh0nfmsVCvTvG0GzVA8UniDRNmjvGrNoaEcjSmzG2
 FgPQ==
X-Gm-Message-State: APjAAAW9g/Z7QgsZrxSP1zyD7MyviuzHJylYuDnDNJFamOzli0ZxwcEC
 Dyefj/Wox9asLOVGMsO9bpDmkihYYYw87q4MhLxCsN26
X-Google-Smtp-Source: APXvYqxxXfdrnjCENrgdQDSOH4Bcp/Do3rsZWHI4v0mK+af7OwT7uZGdDanKbrkmEAIuGXIKuoaEQSZ7oyO7SCjTzNk=
X-Received: by 2002:a2e:8e85:: with SMTP id z5mr2462429ljk.212.1579107339330; 
 Wed, 15 Jan 2020 08:55:39 -0800 (PST)
MIME-Version: 1.0
References: <33716e89222c44d1a9064914d0955081@oc11expo22.exchange.mit.edu>
In-Reply-To: <33716e89222c44d1a9064914d0955081@oc11expo22.exchange.mit.edu>
Date: Wed, 15 Jan 2020 10:55:27 -0600
Message-ID: <CANf970ah2WysX3RpyV8DCbwkdd3B9thdXX9rLHFZo6GMx_5bZg@mail.gmail.com>
To: Richard Joseph Muri <ri28856@mit.edu>
Subject: Re: [USRP-users] X310 scheduled issue_stream_cmd()
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2566095204484490638=="
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

--===============2566095204484490638==
Content-Type: multipart/alternative; boundary="00000000000005f7a0059c30947b"

--00000000000005f7a0059c30947b
Content-Type: text/plain; charset="UTF-8"

Richard,

I believe what you're looking for is the depth of the command queue. For
the X310, this FIFO has a depth of 16. Any command that you issue to the
X310 that has a command time set will be held in this FIFO until the
radio's time matches the command time, at which point the command is
executed.

You should definitely keep track of the state of the command queue -
overflowing this FIFO will put the radio in a bad state, usually requiring
a restart.

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a191b78b00d051d3d51c2f719361c1fb5

https://files.ettus.com/manual/classuhd_1_1time__spec__t.html

Sam Reiter

On Tue, Jan 14, 2020 at 2:01 PM Richard Joseph Muri via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
> I'm using an X310 with a number of scheduled receives. I suspect there is
> a FIFO on the USRP that holds the stream_cmd_t until it is time to collect
> the requested samples. I have not been able to find documentation about the
> size of this FIFO. Could anybody point me in the proper direction?
>
>
> Do I need to keep track of the number of stream_cmds in the FIFO? Is there
> some kind of acknowledge I can use to know the stream_cmd has left the
> FIFO? At the moment I am running an C++ application with two threads, one
> to issue_stream_cmd(), and one to recv(). I loop each operation, posting a
> semaphore after each recv() and waiting on a semaphore before every
> issue_stream_cmd().
>
>
> I found this thread about using set_start_time():
>
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-July/049022.html
>
>
> Are these commands on the same FIFO issue_stream_cmd() uses?
>
>
> Thank you!
> Richard Muri
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000005f7a0059c30947b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Richard,</div><div><br></div><div>I believe what you&=
#39;re looking for is the depth of the command queue. For the X310, this FI=
FO has a depth of 16. Any command that you issue to the X310 that has a com=
mand time set will be held in this FIFO until the radio&#39;s time matches =
the command time, at which point the command is executed.</div><div><br></d=
iv><div>You should definitely keep track of the state of the command queue =
- overflowing this FIFO will put the radio in a bad state, usually requirin=
g a restart. <br></div><div><br></div><div><a href=3D"https://files.ettus.c=
om/manual/classuhd_1_1usrp_1_1multi__usrp.html#a191b78b00d051d3d51c2f719361=
c1fb5">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#=
a191b78b00d051d3d51c2f719361c1fb5</a></div><div><br></div><div><a href=3D"h=
ttps://files.ettus.com/manual/classuhd_1_1time__spec__t.html">https://files=
.ettus.com/manual/classuhd_1_1time__spec__t.html</a></div><div><br></div><d=
iv><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0</div></d=
iv></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Jan 14, 2020 at 2:01 PM Richard Joseph M=
uri via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello,</p>
<p><br>
</p>
<p>I&#39;m using an X310 with a number of scheduled receives. I suspect the=
re is a FIFO on the USRP that holds the stream_cmd_t until it is time to co=
llect the requested samples. I have not been able to find documentation abo=
ut the size of this FIFO. Could anybody
 point me in the proper direction?</p>
<p><br>
</p>
<p>Do I need to keep track of the number of stream_cmds in the FIFO? Is the=
re some kind of acknowledge I can use to know the stream_cmd has left the F=
IFO? At the moment I am running an C++ application with two threads, one to=
 issue_stream_cmd(), and one to
 recv(). I loop each operation, posting a semaphore after each recv() and w=
aiting on a semaphore before every issue_stream_cmd().
<br>
</p>
<p><br>
</p>
<p>I found this thread about using set_start_time(): </p>
<p><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
016-July/049022.html" target=3D"_blank">http://lists.ettus.com/pipermail/us=
rp-users_lists.ettus.com/2016-July/049022.html</a></p>
<p><br>
</p>
<p>Are these commands on the same FIFO issue_stream_cmd() uses?</p>
<p><br>
</p>
<p>Thank you!</p>
Richard Muri
<p><br>
</p>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000005f7a0059c30947b--


--===============2566095204484490638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2566095204484490638==--

