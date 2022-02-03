Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C33A4A8F5A
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 21:47:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0825385FA8
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 15:47:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mjl1htK/";
	dkim-atps=neutral
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D66F385B7F
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 15:46:52 -0500 (EST)
Received: by mail-lj1-f169.google.com with SMTP id e17so5657239ljk.5
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 12:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e43sD1Yp7/nzhqsmhkmO6MAlpR1mMSvBiaQLf6fSMeA=;
        b=Mjl1htK/zwyUIRqkXTUFMEupQrKVFY0T5Fq/3igt2Z03BUW7WAeIt15YUIkoJ+sQ8b
         nShZtXcGKXccSeYilAPGaO9oLOFvwTmrZz7qBYZElfvI/fMWhLhHu9w6eesGpyxuj8R2
         4jls5HvMumgq0g5t0rElKaqhQkFnEcTS3JyJ5lo+mf2USJ6lc4qOgseFKe1f5QxRAA31
         vPEkaCIlfyJI6SqN61yrmKtYKQN76D5lOUVj3vrTiOovg5oyH46B8VSWpPCJVMiABsU1
         i10m4+n/3WXFthwuoD/9uywx3j1XzhjNgEE+FpKOOV18cQMZscI5uXzUrTaUVNQvmssB
         guKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e43sD1Yp7/nzhqsmhkmO6MAlpR1mMSvBiaQLf6fSMeA=;
        b=aNwQxqpPX/ogHPtLEFfJDULbOLywdFH+UiDF0tGznTck3MPyRupry/gr+nLGUD/Llg
         zMHTwW2EUe3Xjoqt1s/78p/0o95k0a1iGjRGs5rBjDDloCF8px8cjzWq87NHbJA2bWPL
         yVHNudv0yIL/FMhumTdpfH5VqJjXFPKtTCtcpoU/Ey32/i8VaAJIxXx63GMU72uScdvy
         0pU+H8CpCtlmJlcgnnOd1U7BQZJB4Jas81DwZzwihX080Dh1pDJV5td6BrvoXkUdIfBZ
         fkB/aT/p0Ub/i8EPPk6oyZTvE+2rkVjeGlHtYEMoEv6+Z5ufXXAqPyAKxjnBeHAjoK3z
         +lQg==
X-Gm-Message-State: AOAM533TdQS+FOEhFFeyEyU6PVPCZ8UDwsTvrJ3mY8XG30LScopDdsx+
	5scmK6EtbvqE1Pg9pdl69T5q9rc3WaGlgFMss0yl2I0uRjV6
X-Google-Smtp-Source: ABdhPJxM9gCweqSrXGKa75XXjJqTOyVZJD0P7e4OaoJCXFjugQNN6/XQ5ZJetvkPHnMLneB72BUFWMPzkQJNhTptyLE=
X-Received: by 2002:a2e:b05a:: with SMTP id d26mr24099766ljl.153.1643921211099;
 Thu, 03 Feb 2022 12:46:51 -0800 (PST)
MIME-Version: 1.0
References: <CAGM_aqyAQ9M-vHC7NrbzrvbPd6_YJQ8vZiQRE9hSoPJZfM6vGg@mail.gmail.com>
 <9b49be1d-f09c-86b8-cdbe-3389243c29b9@gmail.com> <CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmail.com>
 <794e4c78-a3e8-ec9f-7cb1-1635df386ed7@gmail.com>
In-Reply-To: <794e4c78-a3e8-ec9f-7cb1-1635df386ed7@gmail.com>
From: John Hodgins <johnyhodgins@gmail.com>
Date: Thu, 3 Feb 2022 23:46:40 +0300
Message-ID: <CAGM_aqyvdVtt5M0Gvuw5MJiaEp+8mgaxqc6RQ8f2SELSJjrg2w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 4YM7TAMDFR52G2FD4OYZLL2SS5WMNPQG
X-Message-ID-Hash: 4YM7TAMDFR52G2FD4OYZLL2SS5WMNPQG
X-MailFrom: johnyhodgins@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands compatibility between different USRP series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4YM7TAMDFR52G2FD4OYZLL2SS5WMNPQG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0089348031111499044=="

--===============0089348031111499044==
Content-Type: multipart/alternative; boundary="000000000000d38cef05d7233b22"

--000000000000d38cef05d7233b22
Content-Type: text/plain; charset="UTF-8"

Thanks for the clarification. We are using GPSDO to provide 10 MHz/PPS to
the USRPs. Jackson Labs OCXO for the X310 and TCXO for the B210. For E310
we just use the GPS antenna which I guess is connected to a ublox module.

Best,
John

On Thu, Feb 3, 2022 at 11:42 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-02-03 15:35, John Hodgins wrote:
>
> Thanks for the prompt response Marcus. Should the discrepancies express
> themselves as a constant offset in cross-correlation or can the delay
> measurements also oscillate in a volatile fashion? For B210-E310 we see a
> more constant looking offset whereas B210-X310 is just wild.
>
> Don't forget that the master-clock is quite different between B210 and
> X310--I assume that you're sharing a common (10MHz) reference?
>
>
> Also I remembered this discussion
> <https://lists.ettus.com/empathy/thread/2H5WCI2MEWWJKXHXGPMK5UWQXETQ4JRW?hash=L7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C#L7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C>
> from sometime ago where rising vs falling edges were used for different
> USRPs.
>
> Yes, I think the X310 uses falling-edge, which will make it not-align with
> any of the other units that use rising-edge.  I think R&D
>   is revisiting this decision.
>
>
>
> Given your answer, can we say that for timed commands it is not a good
> idea to mix and match different USRP series?
>
> Absolutely.  Realistically, it has never been a design goal to provide
> precise alignment among different types of USRPs.
>
>
> Best,
> John
>
> On Thu, Feb 3, 2022 at 11:27 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-02-03 15:17, John Hodgins wrote:
>> > Hi there,
>> >
>> > We have a simple set up where we collect iq snippets from 3 usrp's at
>> > the same rx-times via timed commands. We introduce delays between the
>> > usrp's via a reference delay box and try to recover the introduced
>> > delays via cross-correlation.
>> >
>> > Things work great when all the rx's belong to the same USRP family.
>> > For instance we have been able to recover the correct delay for all
>> > B210 (with GPSDO/TCXO) or all E310 (with GPS antenna) scenarios.
>> > However, when we mix different USRP's, the delays computed via
>> > cross-correlation no longer make sense.
>> >
>> > For instance, when we use 1 B210 and 2 E310's the delays between B210
>> > and E310's just oscillate wildly but the relative difference between
>> > E310 remains relatively stable. We tested 2 B210's with a single X310
>> > (with GPSDO/OCXO) as well and we see the same problem as well. The
>> > interesting thing is though visualizing the spectrum of collected
>> > snippets from different USRPs show pretty much the spectrum of the
>> > known applied signal.
>> >
>> > Is there some fundamental discrepancy between different USRP families?
>> > Or maybe UHD somehow interprets samples differently for different
>> > USRP's (flipping i and.q, different rx-time, pps implementations,
>> > some precision issues maybe)?
>> >
>> > In any case I would be grateful if anyone can shed some light onto
>> > this behavior.
>> >
>> > Best,
>> > John
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> The group delays between USRP families will be different due to
>> different FPGA implementations, the exact "placement" of time-of-day
>> registers, etc.
>>
>> It would be very difficult to guarantee phase-coherence across different
>> USRP device types, because the implementations are different--not just
>> the FPGA bits and
>>    pieces (DUCs, DDCs, etc), but also the analog stages will be different.
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000d38cef05d7233b22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the clarification. We are using GPSDO to provid=
e 10 MHz/PPS to the USRPs. Jackson Labs OCXO for the X310 and TCXO for the =
B210. For E310 we just use the GPS antenna which I guess is connected to a =
ublox module.<div><br></div><div>Best,</div><div>John</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 3, 2=
022 at 11:42 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-02-03 15:35, John Hodgins
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thanks for the prompt response Marcus. Should the
        discrepancies express themselves as a constant offset in
        cross-correlation or can the delay measurements also oscillate
        in a volatile fashion? For B210-E310 we see a more constant
        looking offset whereas B210-X310 is just wild.<br>
      </div>
    </blockquote>
    Don&#39;t forget that the master-clock is quite different between B210
    and X310--I assume that you&#39;re sharing a common (10MHz) reference?<=
br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        Also I remembered this <a href=3D"https://lists.ettus.com/empathy/t=
hread/2H5WCI2MEWWJKXHXGPMK5UWQXETQ4JRW?hash=3DL7PPGLOU2FJDCA4ELC2TXJZW75WJQ=
X4C#L7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C" target=3D"_blank">discussion</a> from=
 sometime ago where
        rising vs falling edges were used for different USRPs. <br>
      </div>
    </blockquote>
    Yes, I think the X310 uses falling-edge, which will make it
    not-align with any of the other units that use rising-edge.=C2=A0 I thi=
nk
    R&amp;D<br>
    =C2=A0 is revisiting this decision.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Given your answer, can we say that for timed commands it is
          not a good idea to mix and match different USRP series?<br>
        </div>
      </div>
    </blockquote>
    Absolutely.=C2=A0 Realistically, it has never been a design goal to
    provide precise alignment among different types of USRPs.<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div><br>
          </div>
          <div>Best,</div>
          <div>John</div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 3, 2022 at 11:27
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2022-02-03 15:17, John Hodgins wrote:<br>
          &gt; Hi there,<br>
          &gt;<br>
          &gt; We have a simple set up where we collect iq snippets from
          3 usrp&#39;s at <br>
          &gt; the same rx-times via timed commands. We introduce delays
          between the <br>
          &gt; usrp&#39;s via a reference delay box and try to recover the
          introduced <br>
          &gt; delays via cross-correlation.<br>
          &gt;<br>
          &gt; Things work great when=C2=A0all the rx&#39;s belong to the s=
ame
          USRP family. <br>
          &gt; For instance we have been able to recover the correct
          delay for all <br>
          &gt; B210 (with GPSDO/TCXO) or all=C2=A0E310 (with GPS antenna)
          scenarios. <br>
          &gt; However, when we mix different USRP&#39;s, the delays
          computed via <br>
          &gt; cross-correlation no longer make sense.<br>
          &gt;<br>
          &gt; For instance, when we use 1 B210 and 2 E310&#39;s the delays
          between B210 <br>
          &gt; and E310&#39;s just oscillate wildly but the relative
          difference between <br>
          &gt; E310 remains relatively stable. We tested 2 B210&#39;s with =
a
          single X310 <br>
          &gt; (with GPSDO/OCXO) as well and we see the same problem as
          well. The <br>
          &gt; interesting thing is though visualizing the spectrum of
          collected <br>
          &gt; snippets from different USRPs show pretty much the
          spectrum of the <br>
          &gt; known applied signal.<br>
          &gt;<br>
          &gt; Is there some fundamental discrepancy between different
          USRP families? <br>
          &gt; Or maybe UHD somehow interprets samples differently for
          different <br>
          &gt; USRP&#39;s=C2=A0(flipping i and.q, different rx-time, pps
          implementations,=C2=A0 <br>
          &gt; some precision issues maybe)?<br>
          &gt;<br>
          &gt; In any case I would be grateful if anyone=C2=A0can shed some
          light onto <br>
          &gt; this behavior.<br>
          &gt;<br>
          &gt; Best,<br>
          &gt; John<br>
          &gt;<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a><br>
          The group delays between USRP families will be different due
          to <br>
          different FPGA implementations, the exact &quot;placement&quot; o=
f
          time-of-day <br>
          registers, etc.<br>
          <br>
          It would be very difficult to guarantee phase-coherence across
          different <br>
          USRP device types, because the implementations are
          different--not just <br>
          the FPGA bits and<br>
          =C2=A0=C2=A0 pieces (DUCs, DDCs, etc), but also the analog stages=
 will
          be different.<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000d38cef05d7233b22--

--===============0089348031111499044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0089348031111499044==--
