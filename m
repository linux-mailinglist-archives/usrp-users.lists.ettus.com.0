Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDAB4590DA
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 16:04:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F6A238447D
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 10:04:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bqxvGhUI";
	dkim-atps=neutral
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 5ADC338414C
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 10:03:39 -0500 (EST)
Received: by mail-oi1-f176.google.com with SMTP id o4so38281581oia.10
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 07:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QGEtus/ek7nT9qAPEaDzGt/t1PHF03sMzg7XEPQ0lJU=;
        b=bqxvGhUIGNlTORd7iQTjZZt6CdwaeiTy0sWRn8Lb8vCF+QjVFYHZQOc69gmIjGDsz/
         oIGqcWkduW7CxrfQelRtXhZ574INRFtA/0FnyIU1CDnXPyUAqbI9SpfQr4AoLeX0MyoC
         Mpbv8zxyjUAFEiDUNI1uAp4KHCDnD4JhfFx5WiUmdLHSK26T9mvAGOF/GsYYxo03GPBt
         gWA00gbuwx3tkEgJ/LDuN1rnfNIjpf2+2ua+vgLLQpEB6YTD034myDgL5Fu/vsRmVZQ2
         N3p5vCC+i3FQOpgBI0IgkJFH4Z5DCdoODfZJ6NLHVpssCXrTounv6fY1SUMFohp9EynB
         dEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QGEtus/ek7nT9qAPEaDzGt/t1PHF03sMzg7XEPQ0lJU=;
        b=HTXpKtHZCopZ5lvPfc+QLcPYw8rt0WppmQkk4PTPzk5oRLysiKM8sOjDt9oLLrUNcD
         v0B6fiFzT0QMadSbXXHSUU0aMQtyinXpdDd+B8zybJULZpwFJl7Ce3ddwAzAp9bZ1jXU
         GTo+GADLtprN9IHwiYSBbqN9XU8w5n32Y01Yo0AjQJCj10Ji+P2YVZRaf/B0IadT34XV
         1Lily1rPD2hXZcnQQ0nOm3ope5uj4mvGKRqG4b5DW8lQkVqJh/uI3QvBHl2nnaNki1Cz
         1nijNxBW+c/PKhyPAzKJrxxC0EW9queaRJ1FfrsdyptXNuXLx9UofoWlCeH2AHofNLme
         Nt0g==
X-Gm-Message-State: AOAM533SfgZjZ4UmZzjYqbTlebxK/VD3+cIwZATTKOfwHjAAarfbT27f
	55VA3S9m1wuuBa8PX6kie5PPaRozj65Ehuc5vcEBoA==
X-Google-Smtp-Source: ABdhPJxGl6fGwtbNHFVV++m00Skjp0mIrvImqJ5KEEmI9xLssBi3MLwZicDAW+PB9G45P1k7dvDnOoj4Z8Dyl5nd0sA=
X-Received: by 2002:a05:6808:1919:: with SMTP id bf25mr22859791oib.33.1637593418483;
 Mon, 22 Nov 2021 07:03:38 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3t5ZhJG5w0zJ=28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gmail.com>
 <81cb143c-ea65-a1c6-0ce8-30edbc2f2d8a@gmail.com> <CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmail.com>
In-Reply-To: <CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 22 Nov 2021 10:03:27 -0500
Message-ID: <CAB__hTS7toiCaZezkv_7QeDFV3PuTe8QSAMxjJ0bM6PaYvOe+Q@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
Message-ID-Hash: SYLRNX5X3VL7O6BI2YK2MGEJZGS7TVIO
X-Message-ID-Hash: SYLRNX5X3VL7O6BI2YK2MGEJZGS7TVIO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 5 x N310 Network Setup
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYLRNX5X3VL7O6BI2YK2MGEJZGS7TVIO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8400151419180965384=="

--===============8400151419180965384==
Content-Type: multipart/alternative; boundary="000000000000ff089405d161ed99"

--000000000000ff089405d161ed99
Content-Type: text/plain; charset="UTF-8"

Hi Richard,
Although you may be able to make it work with a fast switch, it seems it
would be cheaper to just add the 10 SFP+ ports.  I am presently running an
8 SFP+ port solution using two Intel X710-DA4 cards.  I believe I got these
for about $300 each.
Rob

On Mon, Nov 22, 2021 at 2:19 AM Richard Bell <richard.bell4@gmail.com>
wrote:

> Hey Marcus,
>
> I would like to be able to use all four channels of each N310 if desired.
> In that case it would take 2 SFP+ per N310 as I understand it. If I only
> use 1 channel I would require 1 SFP+ port, I understand your point.
>
> Richard
>
> On Sun, Nov 21, 2021 at 10:08 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-11-22 00:55, Richard Bell wrote:
>>
>> Hello,
>>
>> I am attempting to setup 5 USRP N310's to be controlled by a single host.
>> You can assume the host has enough processing power to avoid being the
>> bottleneck. My question here is only concerned with properly setting up the
>> network so that 100 MHz of bandwidth capture is theoretically supported by
>> each of the 5 N310's per channel.
>>
>> Would the following setup support the above:
>> 1) Connect each of the 1G Ethernet management ports to a switch and
>> connect the switch to the host. Each radio should be assigned an IP address
>> automatically by a DHCP server as I understand it.
>> 2) Connect the SFP+ ports to a corresponding NIC SFP+ port on the host
>> computer. With 5 N310's this will correspond to 10 total SFP+ ports
>> required at the host, two per radio.
>>
>> Is this correct, or do I need to change something? Also, is there a way
>> to reduce the required number of SFP+ ports required on the host by using a
>> 100G switch in some way?
>>
>> Thank you for any assistance you can provide
>>
>> Richard
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> I'm slightly confused by the wording. Do you intend to bring in a total
>> of 1Gsps or 500Gsps?
>>
>> A single 10G SFP+ port should support about 200Msps.   Unless I botched
>> the late-night math, you'd only need both SFP+ ports per N310 if you were
>> bringing in up to 400Msps.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ff089405d161ed99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Richard,<div>Although you may be able to make it work w=
ith a fast switch, it seems it would be cheaper to just add the 10 SFP+ por=
ts.=C2=A0 I am presently running an 8 SFP+ port solution using two Intel X7=
10-DA4 cards.=C2=A0 I believe I got these for about $300 each.=C2=A0=C2=A0<=
/div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, Nov 22, 2021 at 2:19 AM Richard Bell &lt;<a href=
=3D"mailto:richard.bell4@gmail.com" target=3D"_blank">richard.bell4@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Hey Marcus,<div><br></div><div>I would like to be able t=
o use all=C2=A0four channels of each N310 if desired. In that case it would=
 take 2 SFP+ per N310 as I understand it. If I only use 1 channel I would r=
equire 1 SFP+ port, I understand your point.</div><div><br></div><div>Richa=
rd</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, Nov 21, 2021 at 10:08 PM Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-22 00:55, Richard Bell
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hello,
        <div><br>
        </div>
        <div>I am attempting to setup 5 USRP N310&#39;s to be controlled by
          a single host. You can assume the host has enough processing
          power to avoid being the bottleneck. My question here is only
          concerned with properly setting up the network so that 100 MHz
          of bandwidth capture is theoretically supported by each of the
          5 N310&#39;s per channel.</div>
        <div><br>
        </div>
        <div>Would the following setup support the above:</div>
        <div>1) Connect each of the 1G Ethernet management ports to a
          switch=C2=A0and connect the switch to the host. Each radio should
          be assigned an IP address automatically by a DHCP server as I
          understand it.=C2=A0</div>
        <div>2) Connect the SFP+ ports to a corresponding NIC SFP+ port
          on the host computer. With 5 N310&#39;s this will correspond to 1=
0
          total SFP+ ports required at the host, two per radio.</div>
        <div><br>
        </div>
        <div>Is this correct, or do I need to change something? Also, is
          there a way to reduce the required number of SFP+ ports
          required on the host by using a 100G switch in some way?</div>
        <div><br>
        </div>
        <div>Thank you for any assistance you can provide</div>
        <div><br>
          Richard</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    I&#39;m slightly confused by the wording. Do you intend to bring in a
    total of 1Gsps or 500Gsps?<br>
    <br>
    A single 10G SFP+ port should support about 200Msps.=C2=A0=C2=A0 Unless=
 I
    botched the late-night math, you&#39;d only need both SFP+ ports per
    N310 if you were bringing in up to 400Msps.<br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ff089405d161ed99--

--===============8400151419180965384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8400151419180965384==--
