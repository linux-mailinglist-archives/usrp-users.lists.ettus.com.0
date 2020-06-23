Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F458205C4D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 21:58:33 +0200 (CEST)
Received: from [::1] (port=53810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnp3u-0002iy-24; Tue, 23 Jun 2020 15:58:30 -0400
Received: from mail-ed1-f43.google.com ([209.85.208.43]:43379)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jnp3q-0002dg-QQ
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 15:58:26 -0400
Received: by mail-ed1-f43.google.com with SMTP id d15so17262282edm.10
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 12:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GyAEymMtSvJBkgFF/gDXuEsljcp/GWx+2/FcR9wah38=;
 b=uTJ55LZTQkOgNDliH/UIruyIY8l/sLi4Pd606FWmmAlDaZNOO8SerOBfLxOyFSXSRj
 /0lvPenbjrkQxLTh266My3aem0qkeE1zKMBWDTlzwwnkOpfFxbbRxhLoGLvEen/Zma0w
 H95GKK/bxbDKlmp6bSpcmO6XG/e7rW3eKwHEs2hnqhDqASJS1V+rd+3pVvbqtrZqg7GD
 XbyTsTvIv4SN8xLZurEzYDpv9/7h63CuX50ztNYRYhICHTfB2WOy/oMX9HZM/szYbp8I
 eM7uOlq9JSPh3mKrSLFCkaxv23DN1+OdL4/AW13LmafM0FJmGIhFNf2FFs6BptG/+pQ8
 dmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GyAEymMtSvJBkgFF/gDXuEsljcp/GWx+2/FcR9wah38=;
 b=JPW+/H1JAjExdawgu/phX3g51SbmKOr9kD/92LqGnyLBcY8rKRHsVB7Jy03ZGN4iS4
 sQOdN1INv9KPa1ZfElHyYkzbeanjLNZcBAOkyQrN6w7RlWlUK1x4fVaG/qimloJgvDkI
 OyEGqHbJI1FT4MG/c7T8jJjmDZoslQIIP6RobgVyQ6NjHvpkkEInzzF22ASSEUi3aNEQ
 dtUX6w6VwG9qvmRwpPvLSUx+xtIXdbhRIWStGnrQNWwZfZhAMUv6qnc3lRxWBBSRFk4W
 EzqQ47QUW2bI/vQTDLkxQjg7YruBt4lDYzQpmJxVgg4qrTxBkX6/npbcG2evtu4XDwqy
 oPDw==
X-Gm-Message-State: AOAM5304H3VTfM6kSymsjLYq+dtOJCIOfzGdjMLVOiuxIswE4eNBtFMS
 iZOxOtjI5ZyyPPKmS2ZCpVak15tduHZuG/SbB4xWzg==
X-Google-Smtp-Source: ABdhPJwYLoMF+LoA1fjsoBgUuHi8nuSfrwhky6vQq812rvjDu1CeDnRi7jNZP/uZigRkTqR8uSkGuRfM7Yg67J7+oLI=
X-Received: by 2002:a50:ba8b:: with SMTP id x11mr24048413ede.201.1592942265654; 
 Tue, 23 Jun 2020 12:57:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh738Yjx+iA=oHOP2tmq+TXoj8-k5ZLNUnXJsdjQ9D1q6cg@mail.gmail.com>
 <5EF2527F.7090600@gmail.com>
 <CAH2Hh70UsmEuAYPU6H+biWQ-Fd29Rr13+0rX1718fYHnCwna=A@mail.gmail.com>
 <5EF257B0.1060300@gmail.com>
In-Reply-To: <5EF257B0.1060300@gmail.com>
Date: Tue, 23 Jun 2020 13:57:34 -0600
Message-ID: <CAH2Hh70TxAx03dgs0zfCckJFUGTgdP3N948=PbwO9LfvWPs=8g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 10 MHz Reference Initial Phase in the X310
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
Content-Type: multipart/mixed; boundary="===============7805094030308451224=="
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

--===============7805094030308451224==
Content-Type: multipart/alternative; boundary="000000000000e45ff905a8c5c558"

--000000000000e45ff905a8c5c558
Content-Type: text/plain; charset="UTF-8"

I guess I just need to think more about the problem. With your explanation
I still don't understand why the 1 PPS would be detected differently in the
two situations, and I still don't understand why the phase of the 10 MHz
reference with respect to the 1 PPS should matter. I can understand some
variation, but not 10 clock cycles worth. I know the PPS signal moves
around in time, but I know it doesn't move much in the GPS receivers I use,
especially over short time scales. As I said, perhaps I just need to think
more about what you said. Thanks for the insight.

On Tue, Jun 23, 2020 at 1:27 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/23/2020 03:18 PM, Aaron Smith wrote:
>
> Marcus,
>
> They are EndRun Meridian and Meridian II units.
>
> I am very ignorant on this topic. Is it a standard that the 1 PPS should
> coincide with the top of a 10 MHz cycle? I just wouldn't expect the front
> end transmit delay, relative to the 1 PPS input, to depend on the 10 MHz
> reference phase. I don't understand how the 10 MHz reference and 1 PPS
> input are used to synthesize time. Is the 1 PPS detection done at the
> master lock rate (200 MHz) or at 10 MHz?
>
> The 1PPS is used *exactly once*, when you do a "set_time_next_pps", after
> which the time-of-day clock on the board is driven by the master
>   clock which is phase-locked to the 10MHz external reference.  So, the
> time-of-day clock on the board runs at (in the case of the X310) 200MHz
>   by default, so each "tick" is 5nsec.  The 1PPS signal is probably
> "sensed" by logic that's running at the master clock rate.  So two X310
> units may
>   still have a small amount of residual ambiguity about when 1PPS
> "happens", by perhaps as much as 5Nsec.  But I'm not an FPGA designer, so
>   this is just an mildly-educated "guess".
>
> There may be some lose convention about the phase of the 1PPS with respect
> to the 10MHz generated reference, but  would not expect it
>   to be an "enforced standard".  Different manufacturers will have
> different "servo" algorithms for steering the 10MHz clock output (usually,
> it's a
>   voltage-tunable VCTCXO or VOCXO) with respect to the *derived* 1PPS
> pulses.  The error on the 1PPS signal is typically surprisingly large--it's
>   1PPS +/- a few 10s of nanoseconds, and the phasing of that 1PPS with
> respect to the 10MHz signal isn't, I think, necessarily a "standard".
>
>
> On Tue, Jun 23, 2020 at 1:06 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 06/23/2020 02:45 PM, Aaron Smith via USRP-users wrote:
>> > Hello,
>> >
>> > I am attempting to release a transmission from an X310 every second.
>> > To accomplish this, I must measure, and calibrate the delay in the RF
>> > front end of the radio for my chosen sample rate. I'd like the
>> > transmission to be released within 1 clock cycle of the rising edge of
>> > the PPS.
>> >
>> > I am feeding the X310 an external 10 MHz reference and 1 PPS, which
>> > are produced by the same source, and are being supplied to the radio
>> > with matched cable lengths. The source is a GPS receiver and in my lab
>> > I have 2 different generations of the GPS receiver.
>> >
>> > While calibrating the front end transmit delay I noticed a discrepancy
>> > in the radio timing between the separate GPS receiver generations. The
>> > 1st generation of GPS receiver is 50 ns different than the calibration
>> > for the 2nd generation. When I look at the 1 PPS and 10 MHz output on
>> > a scope, I noticed that in the 1st generation the PPS occurs at the
>> > top of a 10 MHz cycle, and in the 2nd generation it occurs at the
>> > bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 50 ns. I suspect
>> > this is not coincidence because I have now tested 6 different GPS
>> > receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1 calibrations are
>> > the same and they are 50 ns different from the gen 2 calibrations.
>> >
>> > Is this the expected behavior? Or is there a bug in the X310 code that
>> > handles timing? I have never worked on hardware, but I would not
>> > expect the initial phase of a 10 MHz reference to impact absolute time.
>> >
>> > Thanks for your help!
>> >
>> >
>> These are external GPS receivers?  What kind?  Given your scope
>> measurements, how would this be related to a bug in X310?  I'm confused
>>    as to how you're linking the 10MHz/1PPS phasing on your external GPS
>> receivers to the X310 having bugs.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>

--000000000000e45ff905a8c5c558
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I guess I just need to think more about the problem. =
With your explanation I still don&#39;t understand why the 1 PPS would be d=
etected differently in the two situations, and I still don&#39;t understand=
 why the phase of the 10 MHz reference with respect to the 1 PPS should mat=
ter. I can understand some variation, but not 10 clock cycles worth. I know=
 the PPS signal moves around in time, but I know it doesn&#39;t move much i=
n the GPS receivers I use, especially over short time scales. As I said, pe=
rhaps I just need to think more about what you said. Thanks for the insight=
. <br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Jun 23, 2020 at 1:27 PM Marcus D. Leech &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/23/2020 03:18 PM, Aaron Smith
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Marcus,</div>
        <div><br>
        </div>
        <div>They are EndRun Meridian and Meridian II units.</div>
        <div><br>
        </div>
        <div>I am very ignorant on this topic. Is it a standard that the
          1 PPS should coincide with the top of a 10 MHz cycle? I just
          wouldn&#39;t expect the front end transmit delay, relative to the
          1 PPS input, to depend on the 10 MHz reference phase. I don&#39;t
          understand how the 10 MHz reference and 1 PPS input are used
          to synthesize time. Is the 1 PPS detection done at the master
          lock rate (200 MHz) or at 10 MHz?<br>
        </div>
      </div>
    </blockquote>
    The 1PPS is used *exactly once*, when you do a &quot;set_time_next_pps&=
quot;,
    after which the time-of-day clock on the board is driven by the
    master<br>
    =C2=A0 clock which is phase-locked to the 10MHz external reference.=C2=
=A0 So,
    the time-of-day clock on the board runs at (in the case of the X310)
    200MHz<br>
    =C2=A0 by default, so each &quot;tick&quot; is 5nsec.=C2=A0 The 1PPS si=
gnal is probably
    &quot;sensed&quot; by logic that&#39;s running at the master clock rate=
.=C2=A0 So two
    X310 units may<br>
    =C2=A0 still have a small amount of residual ambiguity about when 1PPS
    &quot;happens&quot;, by perhaps as much as 5Nsec.=C2=A0 But I&#39;m not=
 an FPGA
    designer, so<br>
    =C2=A0 this is just an mildly-educated &quot;guess&quot;.<br>
    <br>
    There may be some lose convention about the phase of the 1PPS with
    respect to the 10MHz generated reference, but=C2=A0 would not expect it=
<br>
    =C2=A0 to be an &quot;enforced standard&quot;.=C2=A0 Different manufact=
urers will have
    different &quot;servo&quot; algorithms for steering the 10MHz clock out=
put
    (usually, it&#39;s a<br>
    =C2=A0 voltage-tunable VCTCXO or VOCXO) with respect to the *derived*
    1PPS pulses.=C2=A0 The error on the 1PPS signal is typically surprising=
ly
    large--it&#39;s<br>
    =C2=A0 1PPS +/- a few 10s of nanoseconds, and the phasing of that 1PPS
    with respect to the 10MHz signal isn&#39;t, I think, necessarily a
    &quot;standard&quot;.<br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 23, 2020 at 1:06
          PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          06/23/2020 02:45 PM, Aaron Smith via USRP-users wrote:<br>
          &gt; Hello,<br>
          &gt;<br>
          &gt; I am attempting to release a transmission from an X310
          every second. <br>
          &gt; To accomplish this, I must measure, and calibrate the
          delay in the RF <br>
          &gt; front end of the radio for my chosen sample rate. I&#39;d
          like the <br>
          &gt; transmission to be released within 1 clock cycle of the
          rising edge of <br>
          &gt; the PPS.<br>
          &gt;<br>
          &gt; I am feeding the X310 an external 10 MHz reference and 1
          PPS, which <br>
          &gt; are produced by the same source, and are being supplied
          to the radio <br>
          &gt; with matched cable lengths. The source is a GPS receiver
          and in my lab <br>
          &gt; I have 2 different generations of the GPS receiver.<br>
          &gt;<br>
          &gt; While calibrating the front end transmit delay I noticed
          a discrepancy <br>
          &gt; in the radio timing between the separate GPS receiver
          generations. The <br>
          &gt; 1st generation of GPS receiver is 50 ns different than
          the calibration <br>
          &gt; for the 2nd generation. When I look at the 1 PPS and 10
          MHz output on <br>
          &gt; a scope, I noticed that in the 1st generation the PPS
          occurs at the <br>
          &gt; top of a 10 MHz cycle, and in the 2nd generation it
          occurs at the <br>
          &gt; bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 50
          ns. I suspect <br>
          &gt; this is not coincidence because I have now tested 6
          different GPS <br>
          &gt; receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1
          calibrations are <br>
          &gt; the same and they are 50 ns different from the gen 2
          calibrations.<br>
          &gt;<br>
          &gt; Is this the expected behavior? Or is there a bug in the
          X310 code that <br>
          &gt; handles timing? I have never worked on hardware, but I
          would not <br>
          &gt; expect the initial phase of a 10 MHz reference to impact
          absolute time.<br>
          &gt;<br>
          &gt; Thanks for your help!<br>
          &gt;<br>
          &gt;<br>
          These are external GPS receivers?=C2=A0 What kind?=C2=A0 Given yo=
ur
          scope <br>
          measurements, how would this be related to a bug in X310?=C2=A0 I=
&#39;m
          confused<br>
          =C2=A0 =C2=A0as to how you&#39;re linking the 10MHz/1PPS phasing =
on your
          external GPS <br>
          receivers to the X310 having bugs.<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000e45ff905a8c5c558--


--===============7805094030308451224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7805094030308451224==--

