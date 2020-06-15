Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3317F1FA3BE
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2020 00:52:01 +0200 (CEST)
Received: from [::1] (port=36064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkxxO-0003zK-9Z; Mon, 15 Jun 2020 18:51:58 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:38819)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jkxxL-0003sP-0H
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 18:51:55 -0400
Received: by mail-ej1-f44.google.com with SMTP id w16so18748558ejj.5
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 15:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3/8T5q0cMXRRkOAGe5WgQqZCBfkDSNBnsxzYLUfQzSE=;
 b=AaGwKAuModxm3PrOCPTQ/7xl0o1AQ/KTbNTJ8MsJSJyqy47oJePjibwRc7BAHVwhmq
 h3Bc5oMRo5Ad/gskUDJpz1V1Jbd0C0exTNilS2sk3x1WhxKJuz9Isw+d2+GWFznn/qto
 bvofsbvCPPcVIblxRrlc8OAnIAuIaKfyoRPeXRbh+lVXB93x2XGbNCXr/kSmK+IAwrjH
 QZFh5dCtLltNXBa8HdFUBbsgPnY3I07lOlHYwHKqweEcYGcgOyjb78XNzvG3Q5+SMJe9
 MAwGjOkPr9HmfFOkZB9lgLxM5oETvYmJ+NM6NAcNFR8m+GyrM0dU7xzCRiTqGsHgqt/n
 9kww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3/8T5q0cMXRRkOAGe5WgQqZCBfkDSNBnsxzYLUfQzSE=;
 b=BxcbidfQcfGCipXqun94qjzKEfF/qTGEe3WFwOlFX1BjzUiTlf376wzTchPEAQfWFT
 wsRXBRlcvXkkQOsHUVnqBtTR3j9sq4/cW3EWcnFAfaZjofWo5dFQP/lO3gpx1EwuLggN
 ZM8CjulmmiSqNNgZU8wxdbY0KDswqimw0LdK4chAuW4KDukaZ+Lq0+R51GU96L57s+5k
 p/fE8d6kTKz4ezr3al2W9mqpRh+3JtU0mIFYo2YJr+P1tdZl8qZkJajXSWf3bY5E7OXV
 vp9pQhIGVYTVJ8tFQZqkFQseDV8cC03zB+/BiryGjENG0r+n/eQq6+dsz/PsYL5bMc4Q
 ve6Q==
X-Gm-Message-State: AOAM532JNmDXhShCWF5bActhD5R08UMkVy295yA+6dXaYF4yuw16SvfO
 z+O2hYUX3Q1GIhQ5YtHo531ozwagyKpJU+DSL8w=
X-Google-Smtp-Source: ABdhPJzCPNHJsBF+vjNOvIH6owfA6J2LA+9s+1cfnmdAWK0IbomFGdreur/EDKSEaLpYmAVpg12S0HuxJonvG/PKsrE=
X-Received: by 2002:a17:906:4c81:: with SMTP id q1mr53319eju.273.1592261474042; 
 Mon, 15 Jun 2020 15:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
 <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
 <CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com>
 <5EE7C3EA.9090902@gmail.com>
 <CAH2Hh72yRc9Hu-+0JxiLr4pi1UyDz1RpxKRwgN6vdwAmaVbaEA@mail.gmail.com>
 <5EE7F8FF.50904@gmail.com>
 <CAH2Hh70Gz9wyDZGcZtwaNO90iZJb0eJfZ3_yx0oh0z3rmP6zcg@mail.gmail.com>
 <5EE7FA95.3030901@gmail.com>
In-Reply-To: <5EE7FA95.3030901@gmail.com>
Date: Mon, 15 Jun 2020 16:51:02 -0600
Message-ID: <CAH2Hh70bZgQpcsNT+-F-XqZr+m29TDu9XfMFQ5mgVE0AgcMD7g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============5955254007667157197=="
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

--===============5955254007667157197==
Content-Type: multipart/alternative; boundary="0000000000008cc7c505a827430c"

--0000000000008cc7c505a827430c
Content-Type: text/plain; charset="UTF-8"

Yes, transmissions within the same session are consistent. If I destroy the
MultiUSRP object and recreate it (restart my transmit script), the timing
will change. If I repeat hundreds of transmissions without restarting the
timing is stable to the expected accuracy of my TOA measurements.

On Mon, Jun 15, 2020, 4:47 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/15/2020 06:45 PM, Aaron Smith wrote:
>
> I am using a master clock rate of 48 MHz and a sample rate of 8 MHz.
>
> When do you notice the timing inconsistency?  For example, if you do a
> number of timed transmits during the same session, are they
>   self-consistent?  Where "session" is defined as "that stuff you do after
> you've set the clock with 1PPS, etc".
>
>
>
> On Mon, Jun 15, 2020, 4:41 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 06/15/2020 03:42 PM, Aaron Smith wrote:
>> > I am using the python api.
>> >
>> > usrp = uhd.usrp.MultiUSRP()
>> >
>> > # Set gain, clock rate, sample rate etc...
>> >
>> > usrp.set_clock_source('external')
>> > usrp.set_time_source('external')
>> >
>> > ts_reset = uhd.types.TimeSpec(0.0)
>> > usrp.set_time_next_pps(ts_reset)
>> > time.sleep(1.0)
>> > last_pps = usrp.get_time_last_pps().to_ticks(1e9)
>> > if last_pps % int(1e9) != 0:
>> >     print("Error failed to align clock")
>> >
>> > # The signal is complex float data, scaled to a max amplitude of 0.9
>> > approx 0.1 secs in duration
>> > signal_data = numpy.fromfile('signal.dat',dtype=numpy.complex64)
>> >
>> > wirefmt = 'sc16'
>> >
>> > sa = uhd.usrp.StramArgs('fc32',wirefmt)
>> > sa.channels = [0]
>> > stream = usrp.get_tx_stream(sa)
>> >
>> > # Send 3 seconds in future
>> > send_time = usrp.get_time_last_pps().get_real_secs() + 3.0
>> > metadata = uhd.type.TXMetadata()
>> > metadata.has_time_spec = True
>> > metadata.time_spec = uhd.types.TimeSpec(send_time)
>> >
>> > stream.send(signal_data, metadata)
>> >
>> > # Ensure the transmission is complete before returning
>> > time.sleep(4.0)
>> >
>> > sys.exit(0)
>> >
>> >
>> This probably has to do with uncertainty in the way the 1PPS signal is
>> flopped into the device.    What sample rate are you using, and what
>>    master clock rate?
>>
>>
>>
>

--0000000000008cc7c505a827430c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes, transmissions within the same session are consistent=
. If I destroy the MultiUSRP object and recreate it (restart my transmit sc=
ript), the timing will change. If I repeat hundreds of transmissions withou=
t restarting the timing is stable to the expected accuracy of my TOA measur=
ements.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Jun 15, 2020, 4:47 PM Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 06/15/2020 06:45 PM, Aaron Smith
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">I am using a master clock rate of 48 MHz and a
        sample rate of 8 MHz. <br>
      </div>
    </blockquote>
    When do you notice the timing inconsistency?=C2=A0 For example, if you =
do
    a number of timed transmits during the same session, are they<br>
    =C2=A0 self-consistent?=C2=A0 Where &quot;session&quot; is defined as &=
quot;that stuff you do
    after you&#39;ve set the clock with 1PPS, etc&quot;.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 15, 2020, 4:41 PM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">On
          06/15/2020 03:42 PM, Aaron Smith wrote:<br>
          &gt; I am using the python api.<br>
          &gt;<br>
          &gt; usrp =3D uhd.usrp.MultiUSRP()<br>
          &gt;<br>
          &gt; # Set gain, clock rate, sample rate etc...<br>
          &gt;<br>
          &gt; usrp.set_clock_source(&#39;external&#39;)<br>
          &gt; usrp.set_time_source(&#39;external&#39;)<br>
          &gt;<br>
          &gt; ts_reset =3D uhd.types.TimeSpec(0.0)<br>
          &gt; usrp.set_time_next_pps(ts_reset)<br>
          &gt; time.sleep(1.0)<br>
          &gt; last_pps =3D usrp.get_time_last_pps().to_ticks(1e9)<br>
          &gt; if last_pps % int(1e9) !=3D 0:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0print(&quot;Error failed to align clock&q=
uot;)<br>
          &gt;<br>
          &gt; # The signal is complex float data, scaled to a max
          amplitude of 0.9 <br>
          &gt; approx 0.1 secs in duration<br>
          &gt; signal_data =3D
          numpy.fromfile(&#39;signal.dat&#39;,dtype=3Dnumpy.complex64)<br>
          &gt;<br>
          &gt; wirefmt =3D &#39;sc16&#39;<br>
          &gt;<br>
          &gt; sa =3D uhd.usrp.StramArgs(&#39;fc32&#39;,wirefmt)<br>
          &gt; sa.channels =3D [0]<br>
          &gt; stream =3D usrp.get_tx_stream(sa)<br>
          &gt;<br>
          &gt; # Send 3 seconds in future<br>
          &gt; send_time =3D usrp.get_time_last_pps().get_real_secs() +
          3.0<br>
          &gt; metadata =3D uhd.type.TXMetadata()<br>
          &gt; metadata.has_time_spec =3D True<br>
          &gt; metadata.time_spec =3D uhd.types.TimeSpec(send_time)<br>
          &gt;<br>
          &gt; stream.send(signal_data, metadata)<br>
          &gt;<br>
          &gt; # Ensure the transmission is complete before returning<br>
          &gt; time.sleep(4.0)<br>
          &gt;<br>
          &gt; sys.exit(0)<br>
          &gt;<br>
          &gt;<br>
          This probably has to do with uncertainty in the way the 1PPS
          signal is <br>
          flopped into the device.=C2=A0 =C2=A0 What sample rate are you us=
ing,
          and what<br>
          =C2=A0 =C2=A0master clock rate?<br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000008cc7c505a827430c--


--===============5955254007667157197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5955254007667157197==--

