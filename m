Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F21B78B8F70
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 20:12:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBEC43852D2
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2024 14:12:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714587163; bh=HRRnqMWtJYCguU3HvNthvuRdpbsI7galO9VXvphObH0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=SkhcQW61K5RjY66Mh5nAhYOGZOxoZF1vGhzg8Ro+aQ02b4pIY2DbYr3rtjuV6l/0w
	 eovwE/yJMXKP7kLKPDz7XbULl9g9y9VLwUdxPde1iC7K/M3itwOozBWtunW1nQo8Y4
	 G+VEKQTSBJVMdKlxo4/hQEvEMwLHvoN76ykvmk1M8sk6Kr0j3h48WRGSnJ/uCiK6bw
	 i8bpDHjdyKZqw8SMsSCgCxh0S4t7Wt+IkU8ZCokZ/15MNZIbMmOjFeIZ+BDGHNj8z4
	 6zQxF5rz9vXbnbXz9kZfMUaqlF1vzByYzsGuIHq1vSAwjkr13ElN+iz2Ke2GIt6o5U
	 pks3R63lsh0Ug==
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E9FCB385244
	for <usrp-users@lists.ettus.com>; Wed,  1 May 2024 14:12:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Q5I4votn";
	dkim-atps=neutral
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2df848f9325so59618251fa.1
        for <usrp-users@lists.ettus.com>; Wed, 01 May 2024 11:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1714587124; x=1715191924; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7LxXEJpxt9iBxq5nkxXm2/aD0tx5z5TmBlMdBKDvFgc=;
        b=Q5I4votn7RDiNMeWUPELwUBIpm5oxuaRalUe2+6CtgRjmNkcyypg3nZWaUJSi0w+bt
         vVHjRcwA20LjEwkVw1hZZJiiMxPfI0vHZFVq9CmBUEqrXx3uDwNGlQVAmvnzT/GbUfaZ
         /uqgROUNisELbF3ACDx9Sem1S7TMNIyAEoWpQE1OB3XfbUob7ieOswvBrZ/PGi+HJocK
         YRgqYc3WPPCvylFcQjfzsWwzVIoyNNCuGtanZVxS9I6KEE1RhQKVBXmWGo9NSV6KmDR9
         Dhzt2A7XfXLbgRTZUzR7R7x8pY9sF4L8ufqIYc376DaWwTmYUII7oNhsv8Hn8az94kTq
         D5zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714587124; x=1715191924;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7LxXEJpxt9iBxq5nkxXm2/aD0tx5z5TmBlMdBKDvFgc=;
        b=aQvLCte+GRB9hS+5hx8MWYkKTHBjVTDOzZ+2DS7zZ501HSrYaBJPoXhu/vCO9sHe8V
         9URaABZnmOggGp8NqZUYgjV/aLOo2kP2M7bsz2yD1gQn2ptrhrTQ4O6umlIrVgb8dZ0K
         wlZUm0V/7oimGpizDjU4E+BCSw527pZoh5B8l9o8jL/LZjdKNf/4d42Q/oiyK44Mtxr3
         FUglQKzulhh2HgMfNHKm3MfTeLG+n5oWgf9gLHiwLG78dD6/gb+8uY/bu3G7XYLyw61g
         SRq6773sohCzARAxKZ5Q96Xny50EGjnV6jAAYEBJ33oQ1tzZC09AMf7IAQ8jKLWLuOZt
         1bxQ==
X-Gm-Message-State: AOJu0YwtZqbbwVIIW8uoXRP4i9al+wft2HDAuabmSSN7s4wdY65CD7CK
	+ICwAatnwQN/iqTlbDEoRzNtm8PaoPWdVzuSvR5qUMzoR2C6651EBWEI/cufuSCVbYmXvVzqW2s
	Zrax6kY9I8/1KqZRX3Iwpz/NBZMdPLlfoPJfr
X-Google-Smtp-Source: AGHT+IF353z1rkqIYGhYE//5BTW9eDaW8f0pzKVYylCL2W2iuq4nQ9qLmEsE9wrVQ+h938UYDqy+exus0Uas7VZL1NE=
X-Received: by 2002:ac2:5f19:0:b0:51d:c1b:25d0 with SMTP id
 25-20020ac25f19000000b0051d0c1b25d0mr2162267lfq.61.1714587124398; Wed, 01 May
 2024 11:12:04 -0700 (PDT)
MIME-Version: 1.0
References: <cdtTV11LZcbycAba6FylJhXzGxw6LtAueUDKuK-fOlL99PmaJFkQwL0fC823Ei3lQb1TL__kVHpUqYvAGDSPq1DqdYVA8MWcNNpZLHaFEGA=@protonmail.com>
 <e39abf8d-6490-481e-bbbc-b89593e88d2f@gmail.com> <336160565.3149887.1714566315941@mail.yahoo.com>
 <8fb7d502-818c-41e8-a5d7-455fa7778e38@gmail.com> <236821295.3178397.1714572681617@mail.yahoo.com>
 <d1a9560c-99c6-423b-ba10-26f08ee1b82e@gmail.com> <1458949585.3180965.1714575608497@mail.yahoo.com>
In-Reply-To: <1458949585.3180965.1714575608497@mail.yahoo.com>
Date: Wed, 1 May 2024 14:11:53 -0400
Message-ID: <CAB__hTRpzWoOC2n5NkSCkTbQeQxcz6XBv2ZFc_B1f_xKH+0ZoQ@mail.gmail.com>
To: zhou <hwzhou@yahoo.com>
Message-ID-Hash: W64CXPZW4YOIBS2CRIT5NC5W4EVC5MO2
X-Message-ID-Hash: W64CXPZW4YOIBS2CRIT5NC5W4EVC5MO2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W64CXPZW4YOIBS2CRIT5NC5W4EVC5MO2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8818882196475718383=="

--===============8818882196475718383==
Content-Type: multipart/alternative; boundary="0000000000007cf8d90617686cdd"

--0000000000007cf8d90617686cdd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The 10 MHz ref supplied to each X310 device is used in a PLL in each device
to obtain the 10MHz ref used for that device (and for disciplining the
various LOs on the device). Thus, there is a relative phase "wobble"
between the 10MHz ref signals used on each device as each PLL continuously
adjusts to maintain disciplined output.  Over time, this averages out to
zero. But, instantaneously, it is not. So, my question is: how
instantaneous is your phase measurement?  If you instead calculate a phase
averaged over numerous samples, can you get a consistent result? From your
plot, it looks like this is true.
Rob

On Wed, May 1, 2024 at 11:04=E2=80=AFAM zhou via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D. Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> On 01/05/2024 10:11, zhou via USRP-users wrote:
>
> Hi Marcus,
>
> Thanks for your response.
>
> "Are you setting up clocking identically for both USRPs?   That is settin=
g
> the reference clock to "external" and the 1PPS source to "external" on bo=
th
> devices?   Are you using a single multi_usrp object for all RX channels?"
>
> Yes, I use multi_usrp multi_usrp::make(
> 'addr0=3D192.168.12.2,second_addr0=3D192.168.13.2,addr1=3D192.168.14.2,se=
cond_addr1=3D192.168.15.2,master_clock_rate=3D184.32e6'
> )
>
> "external" set for both ref and pps:
> usrp->set_clock_source("external")
> usrp->set_time_source("external")
> I think this should automatically set both devices.
>
> "What type of daughtercards are in your X310?"
> UBX
>
> Kind regards.
>
> And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?
>
> It is OctoClock GPSDO, and Internal is used.
>
>
>
>
> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D. Leech
> <patchvonbraun@gmail.com> <patchvonbraun@gmail.com> wrote:
>
>
> On 01/05/2024 08:25, zhou via USRP-users wrote:
>
> Hi All,
>
> I am trying to use 4Rx and 4Tx antennas from two X310 USRPs. I hope the
> received signals have stable phase relationship but they don't seem to be=
.
> I am wondering why and how to fix it.
>
> I measured the phase using the connection as below:
> [image: Inline image]
> cos(t)+i*sin(t) signal is split into and received on four Rx antennas. Tw=
o
> X310s are connected to the same OctoClock for 10MHz Ref and PPS. Tx and R=
x
> commands are all timed. The measurement results are as below:
>
>
> The Tx signal is continuous during test. I measured phase every second fo=
r
> 20 sec. In the 2nd USRP, the phases are stable on both antennas while it =
is
> not in the 1st. If I change the Tx signal to the 1st USRP, then the resul=
ts
> swap - phases become stable in the 1st USRP and unstable in the 2nd.
>
> My first though was that there might be small CFO between USRPs even
> though both are connected to the OctoClock, but CFO should have caused
> linear change. Here, the phase offset is not linear and kind of random
> within 20 second measurement.
>
> What can be the reason? Any suggestion will be appreciated.
>
> Kind regards,
> H.
> Are you setting up clocking identically for both USRPs?   That is setting
> the reference clock to "external" and the 1PPS source to "external" on bo=
th
> devices?   Are you using a single multi_usrp object for all RX channels?
>
> What type of daughtercards are in your X310?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007cf8d90617686cdd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The 10 MHz ref supplied to each X310 device is used i=
n a PLL in each device to obtain the 10MHz ref used for that device (and fo=
r disciplining the various LOs on the device). Thus, there is a relative ph=
ase &quot;wobble&quot; between the 10MHz ref signals used on each device as=
 each PLL continuously adjusts to maintain disciplined output.=C2=A0 Over t=
ime, this averages out to zero. But, instantaneously, it is not. So, my que=
stion is: how instantaneous is your phase measurement?=C2=A0 If you instead=
 calculate a phase averaged over numerous samples, can you get a consistent=
 result? From your plot, it looks like this is true.<br></div><div>Rob<br><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, May 1, 2024 at 11:04=E2=80=AFAM zhou via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=
=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:13px"><=
div></div>
        <div><br></div><div><br></div>
       =20
        </div><div id=3D"m_-3650333112459443087ydpc994c9a6yahoo_quoted_5461=
441577">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">pat=
chvonbraun@gmail.com</a>&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751=
442"><div>
    <div>On 01/05/2024 10:11, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue,Helv=
etica,Arial,sans-serif;font-size:13px">
        <div dir=3D"ltr">Hi Marcus,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for your response.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(38,40,42);font-family:Helvetica Neu=
e,Helvetica,Arial,sans-serif">&quot;Are
              you setting up clocking identically for both USRPs?=C2=A0=C2=
=A0 That
              is setting the reference clock to &quot;external&quot; and th=
e 1PPS
              source to &quot;external&quot; on both devices?=C2=A0=C2=A0 A=
re you using a
              single multi_usrp object for all RX channels?&quot;</span></d=
iv>
          <div><br clear=3D"none">
          </div>
          <div dir=3D"ltr">Yes, I use multi_usrp
            multi_usrp::make(<span>&#39;addr0=3D192.168.12.2,second_addr0=
=3D192.168.13.2,addr1=3D192.168.14.2,second_addr1=3D192.168.15.2,master_clo=
ck_rate=3D184.32e6&#39;</span>)<br clear=3D"none" style=3D"color:rgb(38,40,=
42);font-family:Helvetica Neue,Helvetica,Arial,sans-serif">
            =C2=A0<br clear=3D"none">
            <span><span style=3D"color:rgb(0,0,0);font-family:Helvetica Neu=
e,Helvetica,Arial,sans-serif">&quot;external&quot;
                set for both ref and pps:</span></span></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_clock_source(&quot;external&q=
uot;)</span></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_time_source(<span><span style=
=3D"color:rgb(0,0,0);font-family:Helvetica Neue,Helvetica,Arial,sans-serif"=
>&quot;external&quot;)</span></span></span><br clear=3D"none">
            I think this should automatically set both devices.<br clear=3D=
"none">
            <br clear=3D"none" style=3D"color:rgb(38,40,42);font-family:Hel=
vetica Neue,Helvetica,Arial,sans-serif">
            <span style=3D"color:rgb(38,40,42);font-family:Helvetica Neue,H=
elvetica,Arial,sans-serif">&quot;What
              type of daughtercards are in your X310?&quot;</span><br clear=
=3D"none" style=3D"color:rgb(38,40,42);font-family:Helvetica Neue,Helvetica=
,Arial,sans-serif">
          </div>
          UBX</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Kind regards.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
      </div>
   =20
    And, to clarify, this is an Octoclock-G, and not a plain Octoclock ?<di=
v id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442yqtfd85029" dir=3D"lt=
r"><br></div><div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442yqtfd=
85029" dir=3D"ltr">It is OctoClock GPSDO, and Internal is used.=C2=A0<br cl=
ear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:13px">
        <div><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp5189b7afy=
ahoo_quoted_4632613607">
        <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;font-size:13px;color:rgb(38,40,42)">
          <div> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com"=
 rel=3D"nofollow" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wro=
te: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp518=
9b7afyiv7691143590">
              <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp5=
189b7afyiv7691143590yqt92825">
                <div>
                  <div>On
                    01/05/2024 08:25, zhou via USRP-users wrote:<br clear=
=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,=
sans-serif;font-size:13px">
                    <div dir=3D"ltr">Hi All,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I am trying to use 4Rx and 4Tx
                      antennas from two X310 USRPs. I hope the received
                      signals have stable phase relationship but they
                      don&#39;t seem to be. I am wondering why and how to
                      fix it.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I measured the phase using the
                      connection as below:</div>
                    <div dir=3D"ltr"><img title=3D"Inline image" alt=3D"Inl=
ine image" style=3D"max-width: 800px;"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">cos(t)+i*sin(t) signal is split into
                      and received on four Rx antennas.=C2=A0<span><span st=
yle=3D"color:rgb(0,0,0);font-family:Helvetica Neue,Helvetica,Arial,sans-ser=
if">Two
                          X310s are connected to the same OctoClock for
                          10MHz Ref and PPS. Tx and Rx commands are all
                          timed. The measurement results are as below:</spa=
n></span></div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                      <span></span>The Tx signal is continuous during
                      test. I measured phase every second for 20 sec. In
                      the 2nd USRP, the phases are stable on both
                      antennas while it is not in the 1st. If I change
                      the Tx signal to the 1st USRP, then the results
                      swap - phases become stable in the 1st USRP and
                      unstable in the 2nd.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">My first though was that there might
                      be small CFO between USRPs even though both are
                      connected to the OctoClock, but CFO should have
                      caused linear change. Here, the phase offset is
                      not linear and kind of random within 20 second
                      measurement.</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">What can be the reason? Any
                      suggestion will be appreciated.<br clear=3D"none">
                      <span></span><br clear=3D"none">
                      <span></span>Kind regards,</div>
                    <div dir=3D"ltr">H.</div>
                  </div>
                  Are you setting up clocking identically for both
                  USRPs?=C2=A0=C2=A0 That is setting the reference clock to
                  &quot;external&quot; and the 1PPS source to &quot;externa=
l&quot; on both
                  devices?=C2=A0=C2=A0 Are you using a single multi_usrp ob=
ject
                  for all RX channels?<br clear=3D"none">
                  <br clear=3D"none">
                  What type of daughtercards are in your X310?<br clear=3D"=
none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div id=3D"m_-3650333112459443087ydpc994c9a6yiv4349751442ydp518=
9b7afyqt89423">_______________________________________________<br clear=3D"=
none">
              USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:u=
srp-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@li=
sts.ettus.com</a><br clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect" href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">us=
rp-users-leave@lists.ettus.com</a><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
      <br clear=3D"none">
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a>
</pre>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div id=3D"m_-3650333112459443087ydpc994c9a6yqtfd03165"=
>_______________________________________________<br clear=3D"none">USRP-use=
rs mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.=
com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br c=
lear=3D"none">To unsubscribe send an email to <a shape=3D"rect" href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">us=
rp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000007cf8d90617686cdd--

--===============8818882196475718383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8818882196475718383==--
