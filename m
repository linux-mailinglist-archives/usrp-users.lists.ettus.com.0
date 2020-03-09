Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD2117E1D2
	for <lists+usrp-users@lfdr.de>; Mon,  9 Mar 2020 14:59:49 +0100 (CET)
Received: from [::1] (port=43624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jBIwP-0002OJ-6k; Mon, 09 Mar 2020 09:59:33 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:42714)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jBIwL-0002Jj-Ld
 for usrp-users@lists.ettus.com; Mon, 09 Mar 2020 09:59:29 -0400
Received: by mail-oi1-f170.google.com with SMTP id l12so10189019oil.9
 for <usrp-users@lists.ettus.com>; Mon, 09 Mar 2020 06:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FErg3KYh1NTrvuPzOa74YMtNkTPIIKleaRu47S2G1CA=;
 b=oMUwAPB9LOzerXqszQe9cLagk34bwrzOZpBgIFtGHrosj6qmmLOkFXp1NdObzK6q1t
 K6BVNMMsn1CFIC9jccT6OkMcF8CxucGhA0TC+9xweKrj2rWVS5B9httsrSYkU/gGIl1q
 Cmf1rGCsbS9ZAPfXpBrH9bd9fJGOcllg+zvEMTg5k1+MuFCJaiTprHEgkoZv6a19wRmT
 pyjL6ZUcTQfWxntdsjsqmaARgHBGTR5VZRCXmF9XLzFXy9wI90gkIwfHdzF9S7+tkFtq
 VxAAeamW6EJIb8L1YpmXXXP1HO+RF83RJksqpKTNaPzxsbf//sJ8kid3hZqNmS5xq4ro
 OsvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FErg3KYh1NTrvuPzOa74YMtNkTPIIKleaRu47S2G1CA=;
 b=URluTHXc8SyK3xTgTB4AtL5xicdpej+VU+KyNIRr3QVG80dfRBy/4MNxHv9v/WftcA
 i+U2urzF8QJQ8S1EIvBA/aSoUr8fG3LYkSW8fnGeyPge29NSVDYceAAkuIrN9y47ChYU
 wMifs1i9HojjQ7aeue/IA4GpgOxa7r/eAD2P0c89ZiZ5xFCGmIu014iYq24BwRWm9SOa
 d3jNYGyS524yZboDM5pKs77RZ7rk5mdYwFHsqu4M1Qks9Q6+SM+yOz3n0tLNWELPeWvm
 8Rx4ZBS1XU4eXmdScxuZJq9UDQFFUVOvCkPzt6tMOSn/QL8sirMFhlfYkkiOizYap3gP
 H9hA==
X-Gm-Message-State: ANhLgQ2tvixilwUtY+V42l96TDDGh9CN9sgcAs1hBqaralGva8qvPHwK
 wFWMXmQD6uukRs7Ho4AY6PjFIU6ethTSJISwEdgdhaND
X-Google-Smtp-Source: ADFU+vuLlzYbrXm4kXNBZMTV5R6yrlQJLKQ0rIzdZiEXkI8IKRHTysAM7rmLAw8euhtQcU2FwjCKaIn/1RMs1YNongY=
X-Received: by 2002:aca:ec16:: with SMTP id k22mr1372596oih.177.1583762328887; 
 Mon, 09 Mar 2020 06:58:48 -0700 (PDT)
MIME-Version: 1.0
References: <f106e414-8798-4f9d-465b-03ad4b4aa042@dopiera.pl>
 <CAEXYVK5X8QEv+rq3suGJOMY=1otBN0O5vrPNYTFKNUDA-eQ2kQ@mail.gmail.com>
 <6be5ccd3-40d3-672e-28e1-82f425594a21@dopiera.pl>
In-Reply-To: <6be5ccd3-40d3-672e-28e1-82f425594a21@dopiera.pl>
Date: Mon, 9 Mar 2020 09:58:36 -0400
Message-ID: <CAEXYVK4xW4sbEPavL9d+faaosMcfJX3aYqshbPmqD-UeyajZGg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5396711813379936792=="
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

--===============5396711813379936792==
Content-Type: multipart/alternative; boundary="00000000000005a6a805a06c6701"

--00000000000005a6a805a06c6701
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 8, 2020 at 2:15 PM Marek Dopiera <marek@dopiera.pl> wrote:

> On 08/03/2020 00:49, Brian Padalino wrote:
> > On Sat, Mar 7, 2020 at 6:02 PM Marek Dopiera via USRP-users
> > <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
> > I had to do this recently with an X310 application.  Originally I tried
> > timed bursts where I would give the full burst to UHD and hope it would
> > get things sent since the burst was supplied all at once.  This was not
> > my experience and exposed some bugs which may still be outstanding.
> >
> > My next approach was to simply have a writer thread which would check a
> > transmit buffer/FIFO and, if there was nothing to transmit, would stuff
> > a minimal amount of zeros into the data stream.  This call to send() of
> > the zero stuffed data would fill up the buffers downstream on the device
> > until the backpressure from the device naturally limited the
> > transmission.  This approach worked very well for my application.  It
> > kept the minimal buffering with almost no overhead and I knew the
> > latency through the system was basically the amount of time to consume
> > the buffer.
>
> Hi Brian,
> thank you for your response.
>
> I'm doing pretty much what you described - a FIFO with separate threads,
> and pushing to tx_stream::send until it blocks. In my case I'm actually
> sending data, not zeros, though.
>
> I do not have control over how much data gets into the buffers before
> tx_streamer::send() starts blocking, though - I'm guessing I can go
> lower than that, but for that to work I need to know when the data is
> actually sent.
>

The amount of buffering (software) should be controllable via arguments to
UHD, and the amount of buffering in the hardware should be fixed based on
which product you're using.

Just for clarity, the reason for sending zeros is to maintain and keep a
stream with no underflows as well as keep the buffering pipeline full since
getting UHD to try to be responsive to sending bursts at a high sample rate
without underflows didn't work well for me.

What type of response time are you looking for when it comes to sending
data versus nothing?

Brian

--00000000000005a6a805a06c6701
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Mar 8, 2020 at 2:15 PM Marek Dopi=
era &lt;<a href=3D"mailto:marek@dopiera.pl">marek@dopiera.pl</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 08/03/2020 00:49, Brian Padalino wrote:<br>
&gt; On Sat, Mar 7, 2020 at 6:02 PM Marek Dopiera via USRP-users<br>
&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt; wrote:<=
br>
&gt; I had to do this recently with an X310 application.=C2=A0 Originally I=
 tried<br>
&gt; timed bursts where I would give the full burst to UHD and hope it woul=
d<br>
&gt; get things sent since the burst was supplied all at once.=C2=A0 This w=
as not<br>
&gt; my experience and exposed some bugs which may still be outstanding.<br=
>
&gt; <br>
&gt; My next approach was to simply have a writer thread which would check =
a<br>
&gt; transmit buffer/FIFO and, if there was nothing to transmit, would stuf=
f<br>
&gt; a minimal amount of zeros into the data stream.=C2=A0 This call to sen=
d() of<br>
&gt; the zero stuffed data would fill up the buffers downstream on the devi=
ce<br>
&gt; until the backpressure from the device naturally limited the<br>
&gt; transmission.=C2=A0 This approach worked very well for my application.=
=C2=A0 It<br>
&gt; kept the minimal buffering with almost no overhead and I knew the<br>
&gt; latency through the system was basically the amount of time to consume=
<br>
&gt; the buffer.<br>
<br>
Hi Brian,<br>
thank you for your response.<br>
<br>
I&#39;m doing pretty much what you described - a FIFO with separate threads=
,<br>
and pushing to tx_stream::send until it blocks. In my case I&#39;m actually=
<br>
sending data, not zeros, though.<br>
<br>
I do not have control over how much data gets into the buffers before<br>
tx_streamer::send() starts blocking, though - I&#39;m guessing I can go<br>
lower than that, but for that to work I need to know when the data is<br>
actually sent.<br></blockquote><div><br></div><div>The amount of buffering =
(software) should be controllable via arguments to UHD, and the amount of b=
uffering in the hardware should be fixed based on which product you&#39;re =
using.</div><div><br></div><div>Just for clarity, the reason for sending ze=
ros is to maintain and keep a stream with no underflows as well as keep the=
 buffering pipeline full since getting UHD to try to be responsive to sendi=
ng bursts at a high sample rate without underflows didn&#39;t work well for=
 me.</div><div><br></div><div>What type of response time are you looking fo=
r when it comes to sending data versus nothing?</div><div><br></div><div>Br=
ian</div></div></div>

--00000000000005a6a805a06c6701--


--===============5396711813379936792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5396711813379936792==--

