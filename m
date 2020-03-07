Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD3617D0B1
	for <lists+usrp-users@lfdr.de>; Sun,  8 Mar 2020 00:50:14 +0100 (CET)
Received: from [::1] (port=41784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jAjCo-0000Jj-Rs; Sat, 07 Mar 2020 18:50:06 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:33899)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jAjCl-0000BC-7O
 for usrp-users@lists.ettus.com; Sat, 07 Mar 2020 18:50:03 -0500
Received: by mail-oi1-f178.google.com with SMTP id g6so6530627oiy.1
 for <usrp-users@lists.ettus.com>; Sat, 07 Mar 2020 15:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aNJwcTLpBMskhPj752udi1GzHtpp42ksS1CBmhQNCME=;
 b=MHUyjV16qSVA/NZp2CCOGcicNmuPpVRz6F/nlAXqdoStYQWV6w5WS9T9Mwb/nMYS5u
 RJmXsXVQ1HC2k4NE9DfHb1opZUt7quamWorTk+cP+5KMyGfXyJL5EvjOT5HHvBP3Mp+q
 fapfPnYjO8qOtWHVq/NXyzdbuzQit1UZtfaUICyjbl4LFt20ToZ5s9eWlFw8Sqj6gYaO
 Whp9uOuG+OxubDJ7Go/96lGmsmLv8VU/m2wbCmAU4I5iCiRbkHLMvPYiFds8hj/6JEQd
 zKiEteHtSqQfsLZqCz7lIPPhbyBO4vH+Y6yS2Ub0gVtZV6VDG8/RWeFM9/atZNAl2XHb
 GY1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aNJwcTLpBMskhPj752udi1GzHtpp42ksS1CBmhQNCME=;
 b=uI5yFQZQBgr/ORp0LM9EIP50ZJVqf+a4B5kN0E4I7V7aQRcTidqTOrd3A6vCHJjgcI
 YCKks/uRjqozodYNnCcCMbh3GacSfvxlYtpXpk17SLVeuK/zdIffQzkffD+cxZDUFk7x
 mO3a/cwlIJK1pEKxW1GOlVTucAtDqAYd+Kq9L85CiEMMVIgTHhOGf+T7VbR0nN0PoV2L
 xdXg336QzJfHobuu5qo1gFdKWjwM+oXaGBhncKvbDvjJKvYxqPxqnUper94cw8AsmULv
 e445by3IV1sM2BQScAx+HPezngKN7+8OTvbDKSTWb4ACCQXQbUNGh117Y4Y2knm498/9
 6G1g==
X-Gm-Message-State: ANhLgQ2uxvp2ksUArIQbLyfTnzbIwoaXOSWKW6ySutreVWa4ovwo2QNK
 AJ5/c6ASsqv9CBN3PAyAIH8v/GYbpYr78k/Asl8BkS1Y
X-Google-Smtp-Source: ADFU+vtlFvH4imyRUkoQ5EYp+kxfqTPb7Qnp4V713xst19zXt5JkRk0MVdM2VyvQwPx6BKuY5kQ36+rBa28ZItypUxY=
X-Received: by 2002:aca:c481:: with SMTP id u123mr7161378oif.177.1583624962330; 
 Sat, 07 Mar 2020 15:49:22 -0800 (PST)
MIME-Version: 1.0
References: <f106e414-8798-4f9d-465b-03ad4b4aa042@dopiera.pl>
In-Reply-To: <f106e414-8798-4f9d-465b-03ad4b4aa042@dopiera.pl>
Date: Sat, 7 Mar 2020 18:49:11 -0500
Message-ID: <CAEXYVK5X8QEv+rq3suGJOMY=1otBN0O5vrPNYTFKNUDA-eQ2kQ@mail.gmail.com>
To: Marek Dopiera <marek@dopiera.pl>
Subject: Re: [USRP-users] How to get to know when my buffer is sent?
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7108395313221533756=="
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

--===============7108395313221533756==
Content-Type: multipart/alternative; boundary="0000000000005653dc05a04c6bca"

--0000000000005653dc05a04c6bca
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 7, 2020 at 6:02 PM Marek Dopiera via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I would like to know when the buffer submitted via
> uhd::tx_streamer::send() is actually sent. The reason I need this is to
> keep some data outstanding not to starve the device, but make sure there
> is as little of it as possible (a large backlog buffered somewhere
> wouldn't allow me to change what I'm sending at the last moment, which
> is my use-case).
>
> I'm asking you for help, because I can't find a good way to do it.
>
> So far, I've come up with these options:
> 1. Artificially chop the stream into contiguous bursts and use
> tx_streamer::recv_async_msg returning EVENT_CODE_BURST_ACK to get to
> know when data actually gets sent. I'm guessing it's unwise to rely on
> contiguous bursts being sent together, though, right?
>
> 2. Use the system clock to estimate how much data is outstanding. I'm
> guessing that clock drift will be my enemy here, so it will get tricky.
>
> Neither of the options sounds like a good idea to me. Do you have any
> ideas how to cope with it?
>

I had to do this recently with an X310 application.  Originally I tried
timed bursts where I would give the full burst to UHD and hope it would get
things sent since the burst was supplied all at once.  This was not my
experience and exposed some bugs which may still be outstanding.

My next approach was to simply have a writer thread which would check a
transmit buffer/FIFO and, if there was nothing to transmit, would stuff a
minimal amount of zeros into the data stream.  This call to send() of the
zero stuffed data would fill up the buffers downstream on the device until
the backpressure from the device naturally limited the transmission.  This
approach worked very well for my application.  It kept the minimal
buffering with almost no overhead and I knew the latency through the system
was basically the amount of time to consume the buffer.

Good luck.

Brian

--0000000000005653dc05a04c6bca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Mar 7, 2020 at 6:02 PM Marek Dopi=
era via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
I would like to know when the buffer submitted via<br>
uhd::tx_streamer::send() is actually sent. The reason I need this is to<br>
keep some data outstanding not to starve the device, but make sure there<br=
>
is as little of it as possible (a large backlog buffered somewhere<br>
wouldn&#39;t allow me to change what I&#39;m sending at the last moment, wh=
ich<br>
is my use-case).<br>
<br>
I&#39;m asking you for help, because I can&#39;t find a good way to do it.<=
br>
<br>
So far, I&#39;ve come up with these options:<br>
1. Artificially chop the stream into contiguous bursts and use<br>
tx_streamer::recv_async_msg returning EVENT_CODE_BURST_ACK to get to<br>
know when data actually gets sent. I&#39;m guessing it&#39;s unwise to rely=
 on<br>
contiguous bursts being sent together, though, right?<br>
<br>
2. Use the system clock to estimate how much data is outstanding. I&#39;m<b=
r>
guessing that clock drift will be my enemy here, so it will get tricky.<br>
<br>
Neither of the options sounds like a good idea to me. Do you have any<br>
ideas how to cope with it?<br></blockquote><div><br></div><div>I had to do =
this recently with an X310 application.=C2=A0 Originally I tried timed burs=
ts where I would give the full burst to UHD and hope it would get things se=
nt since the burst was supplied all at once.=C2=A0 This was not my experien=
ce and exposed some bugs which may still be outstanding.</div><div><br></di=
v><div>My next approach was to simply have a writer thread which would chec=
k a transmit buffer/FIFO and, if there was nothing to transmit, would stuff=
 a minimal amount of zeros into the data stream.=C2=A0 This call to send() =
of the zero stuffed data would fill up the buffers downstream on the device=
 until the backpressure from the device naturally limited the transmission.=
=C2=A0 This approach worked very well for my application.=C2=A0 It kept the=
 minimal buffering with almost no overhead and I knew the latency through t=
he system was basically the amount of time to consume the buffer.</div><div=
><br></div><div>Good luck.</div><div><br></div><div>Brian</div></div></div>

--0000000000005653dc05a04c6bca--


--===============7108395313221533756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7108395313221533756==--

