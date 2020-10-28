Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFF329D10C
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 17:44:20 +0100 (CET)
Received: from [::1] (port=35950 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXoYc-0000LE-Sw; Wed, 28 Oct 2020 12:44:18 -0400
Received: from mail-oo1-f46.google.com ([209.85.161.46]:41463)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <tom.n5eg@gmail.com>) id 1kXoYY-0000DG-RL
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 12:44:14 -0400
Received: by mail-oo1-f46.google.com with SMTP id n2so20542ooo.8
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 09:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=EGcfZd8g4vUvXXIwOZ7g75tViLhyKW1iU/0zDjWrQM8=;
 b=C0MTiJYLnATy2/oQMm+qw/nsIKhFbkT9nHdYlhiJp8nq9k1zuwIauvdgYwUYha2NEN
 iZRaJQq8Rfgul0FJK/LWlOYrj8bcq2zn9126nvhjXjftD6uKWGb2Mi6ELwr6jJKEIJTV
 JN4UjpEy0IkxJL48h/sPBJkXZxVpXVc2XrfJ4x92UkgzBn7NS4VvL3s3OVvW7AIlpZ72
 Yhf5pWgDEOIAfpiWM4YR17WC1iCaSfCjwepghvOeiWoGjnqRGZtn3fDV67KEyXbnk2sV
 X6kFffAzjpLo4tHRTYrXe3NvNN6i5fWsu6TuhAorTBjYNaMX0WB8RMSleL2iJs+z1UWI
 cfrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EGcfZd8g4vUvXXIwOZ7g75tViLhyKW1iU/0zDjWrQM8=;
 b=nJBOND0aV9NBN7Gx2M7OdOCrb6UPgk+H0b8l3jK3y7lYGF+xJIByuK02WsL3rcA/UU
 OnUZX56uew1GAM/05sRIa3Qu4atkP4x6QrL46839U2rywchTX/eEy155+j/7wgjmoVRT
 3YJq0XE2SfhBz0FD9e2BGAggXzx4RvVmmmIj226l44BHnN9xbVcsjJLrtHY4cj3oP+AM
 U9KvFFU26ZzEjmpxJceznrMkXisYqmqK9TqWYnH+NaQbfIoIG5HCcawPHnA4JHDhIled
 Kisg7mMEVmDaDy6qOk6tlE/I5S0r+ky6e9dxr1qfJR/2Afy9OJTh6Y838YotXUF5SOYs
 LjSQ==
X-Gm-Message-State: AOAM5312bUYDx8w6EyGlR8z9sEs+lUxomdElbGojEeFjYmbd2xCjEmLZ
 ULIqOEPvClpFMxd08q8cl8yTNGTE8ritr4FXbVnjxs/sndE=
X-Google-Smtp-Source: ABdhPJwXidbsC1cDew0Ymkgwjio66P3fRt6CsrrhVApQvUMVJhYmfDCQhXcEjj1+dIE8fUA0JmV+a7Qxa8ja38+TTkQ=
X-Received: by 2002:a4a:5182:: with SMTP id s124mr6475415ooa.88.1603903413705; 
 Wed, 28 Oct 2020 09:43:33 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 28 Oct 2020 09:42:57 -0700
Message-ID: <CACO3nRTjNOzQ9_e3m0CYWjJi30U8J94adjBaHDNOaSmrZZherQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B200mini half-duplex 1 port
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
From: Tom McDermott via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tom McDermott <tom.n5eg@gmail.com>
Content-Type: multipart/mixed; boundary="===============6951936988087071334=="
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

--===============6951936988087071334==
Content-Type: multipart/alternative; boundary="0000000000003a5da105b2bddda5"

--0000000000003a5da105b2bddda5
Content-Type: text/plain; charset="UTF-8"

-----------------------------  Included message  ---------------
Message: 5
Date: Tue, 27 Oct 2020 20:28:12 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B200mini half-duplex 1 port
Message-ID: <5F98BB1C.7070300@gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed

On 10/27/2020 08:24 PM, Alvaro Pendas Recondo via USRP-users wrote:
> Hello,
>
> I am trying to implement a half-duplex system with one antenna,
> preferably using just one port in the USRP device. I have noticed that
> the port that is labelled as TX in the B200mini can also receive (the
> same as the TX/RX port in the "normal" B200). My question is, is it
> possible to change modes in that port during execution time? I have
> read that, as a rule of thumb, the port should receive as default and
> transmit when it receives samples to do so. However, I do not know if
> that functionality applies to the B200mini.
>
> If it is possible, do you have any general ideal about the best way to
> do it in GNURadio?
>
> Best regards,
>
> Alvaro
>
>
As far as I know the TX port on the B200mini is actually a TX/RX port,
and the transmit/receive switching logic is implemented in the hardware.

You might post to the discuss-gnuradio mailing list on topics related to
Gnu Radio.   I've never implemented a TX/RX application in GR myself,
   but I'm fairly sure the hardware supports it.

---------------------------------------------------------------

Assuming you are using the B205mini - the TX/RX port switching appears to
work on
detecting samples in the transmit buffer (FIFO). When the Tx FIFO is empty
it switches to receive.
There are a number of problems with this, in that once in receive it is
very difficult to fill
the transmit FIFO enough to get it to transmit continuously again.

What happens is that if the transmit source is throttled in any manner, a
few samples get TX queued
then the mini switches to TX and empties the FIFO enough to switch back to
receive. So it
goes into a high-speed Tx/Rx/Tx/Rx/Tx/Rx .....     mode.    Using for
example an audio source
causes sample rate limiting to the rate of that source.

If instead a source is provided that can burst a whole bunch of samples to
the TX Fifo, then
it gets into TX mode and stays. For example, a constant source with no
throttling.  Unfortunately this
isn't so useful for actual information.

All the above tested at a sample rates of 96 ksps and some lower.    Higher
sample rates have not been tried,
probably the behavior would be different.   Finding any documentation about
what is
going on, how it works, FIFO sizes, %FULL %EMPTY trigger levels, etc.  has
been fruitless so far.

-- Tom, N5EG

--0000000000003a5da105b2bddda5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>-----------------------------=C2=A0 Included message=
=C2=A0 ---------------<br></div><div>Message: 5</div>
Date: Tue, 27 Oct 2020 20:28:12 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] USRP B200mini half-duplex 1 port<br>
Message-ID: &lt;<a href=3D"mailto:5F98BB1C.7070300@gmail.com" target=3D"_bl=
ank">5F98BB1C.7070300@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed<br>
<br>
On 10/27/2020 08:24 PM, Alvaro Pendas Recondo via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am trying to implement a half-duplex system with one antenna, <br>
&gt; preferably using just one port in the USRP device. I have noticed that=
 <br>
&gt; the port that is labelled as TX in the B200mini can also receive (the =
<br>
&gt; same as the TX/RX port in the &quot;normal&quot; B200). My question is=
, is it <br>
&gt; possible to change modes in that port during execution time? I have <b=
r>
&gt; read that, as a rule of thumb, the port should receive as default and =
<br>
&gt; transmit when it receives samples to do so. However, I do not know if =
<br>
&gt; that functionality applies to the B200mini.<br>
&gt;<br>
&gt; If it is possible, do you have any general ideal about the best way to=
 <br>
&gt; do it in GNURadio?<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Alvaro<br>
&gt;<br>
&gt;<br>
As far as I know the TX port on the B200mini is actually a TX/RX port, <br>
and the transmit/receive switching logic is implemented in the hardware.<br=
>
<br>
You might post to the discuss-gnuradio mailing list on topics related to <b=
r>
Gnu Radio.=C2=A0 =C2=A0I&#39;ve never implemented a TX/RX application in GR=
 myself,<br><div>
=C2=A0 =C2=A0but I&#39;m fairly sure the hardware supports it.</div><div><b=
r></div><div>--------------------------------------------------------------=
-</div><div><br></div><div>Assuming you are using the B205mini - the TX/RX =
port switching appears to work on <br></div><div>detecting samples in the t=
ransmit buffer (FIFO). When the Tx FIFO is empty it switches to receive.</d=
iv><div>There are a number of problems with this, in that once in receive i=
t is very difficult to fill</div><div>the transmit FIFO enough to get it to=
 transmit continuously again.</div><div><br></div><div>What happens is that=
 if the transmit source is throttled in any manner, a few samples get TX qu=
eued</div><div>then the mini switches to TX and empties the FIFO enough to =
switch back to receive. So it</div><div>goes into a high-speed Tx/Rx/Tx/Rx/=
Tx/Rx .....=C2=A0=C2=A0=C2=A0=C2=A0 mode.=C2=A0=C2=A0=C2=A0 Using for examp=
le an audio source</div><div>causes sample rate limiting to the rate of tha=
t source.<br></div><div><br></div><div>If instead a source is provided that=
 can burst a whole bunch of samples to the TX Fifo, then</div><div>it gets =
into TX mode and stays. For example, a constant source with no throttling.=
=C2=A0 Unfortunately this</div><div>isn&#39;t so useful for actual informat=
ion.</div><div><br></div><div>All the above tested at a sample rates of 96 =
ksps and some lower.=C2=A0=C2=A0=C2=A0 Higher sample rates have not been tr=
ied, <br></div><div>probably the behavior would be different.=C2=A0=C2=A0 F=
inding any documentation about what is</div><div>going on, how it works, FI=
FO sizes, %FULL %EMPTY trigger levels, etc.=C2=A0 has been fruitless so far=
.</div><div><br></div><div>-- Tom, N5EG</div><div><br></div><div><br></div>=
<div><br></div><div><br></div><div><br></div></div>

--0000000000003a5da105b2bddda5--


--===============6951936988087071334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6951936988087071334==--

