Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3E04A0406
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jan 2022 00:00:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D7C93853AB
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 18:00:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BmjnAyAy";
	dkim-atps=neutral
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E3B7638465B
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 17:59:51 -0500 (EST)
Received: by mail-yb1-f169.google.com with SMTP id i62so22864382ybg.5
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 14:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ntvu44/PIvDKKTNT4kfKRi6xd8StLT+CC4a9tp9OxYA=;
        b=BmjnAyAyxUL4FkPvrDIgmjxTyvGYxGMDsjthJu8FxnZNWeQdzv5u4+5rl9/NaagNKR
         WSDZlli8c7yQX2ajXOzhv4gRZgAQG5X2DHDmSq0hFgy2QYNnEcAdG3u/1tF8K56O80X8
         6zE+y0Ifv+JULD7s7P/n7xu99lCU7alEl1vsb2vTWw7k0sw9CSy9+I729jv2VZnKy6yG
         LeD88W3DXBZtTkjHanyMFK5VB32plqvWA7kwUbvkCubRYY7n1bOJWcCj2JKivqtXVFId
         0OFu38VvGZKafIw8ZDBo9O0y+k/STIzPFnfb0AJOXXnfGJadVQaMjszF/g8HTUsx2oWz
         nWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ntvu44/PIvDKKTNT4kfKRi6xd8StLT+CC4a9tp9OxYA=;
        b=TyZTRz2eYoec2J5/YcLrP/L0VMv10Aco5x1pEO3JG3ekt//vBVTu0dvrkAn/BxhNcK
         8guKUeeBy7TIXCWdbGAnXt/KuYJA1257Q4swNMmLxnKNgndq6Za+g8WTO+pOgRZC+Km9
         rfCy0OQYZeqk2REYQpbrKwjoWPQls3achgGH/tuMln1ZVyb5pmTLhBE74FqIhdZgwQsN
         zvj0py/6BOQbjmTsJjCobTfuI7CtQyjSWJxMUxv3/pnVXoaK0f97G2ARzolE+Ne+wKQb
         ecoe5lCP2fW74VgzhQ/GV+FUfVn2COSM24WQ6sXCaIwkjkN8TO8y6ztGMfAkDJE5qhpn
         t8JQ==
X-Gm-Message-State: AOAM532YkoFSUcjLU5cspsZmUovQZSf+O2Pd85W58b58NCqdrmsWHz4B
	v3CjG2pGodWlVwiiTbj8dEDVPeoWXgskia+t7j5D3UwiD1M=
X-Google-Smtp-Source: ABdhPJySnXnl8T4woXZwRLH5/koRNemyXLKmQopa4lDTx5Ph9S4e41x9Zpmn1Z+kVzFi0Td/TRunGXXokD+ugTP+ZaY=
X-Received: by 2002:a25:25c4:: with SMTP id l187mr16320638ybl.13.1643410791030;
 Fri, 28 Jan 2022 14:59:51 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSjMbfUXf+AmMKWTBP_m2S28iaAnhQdvfi++qPGXPctdg@mail.gmail.com>
 <5C259DE5-E60B-4750-BBBC-EFAF0CAE2E96@gmail.com> <4f3e2ba0-24d4-1a42-9705-6fc97e2c7260@gmail.com>
 <CACwKM9L7diK5CqHjzBpKWSf0E4P-YCTaQzrqHshKRHK-b10vmA@mail.gmail.com>
In-Reply-To: <CACwKM9L7diK5CqHjzBpKWSf0E4P-YCTaQzrqHshKRHK-b10vmA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 28 Jan 2022 17:59:39 -0500
Message-ID: <CAB__hTTCTkGz1LOeLjqzHeP-fxiu-reeJ=nZVyp0S4-V9mYHog@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: 44BIQYAQW3TWXOTQBVSJD2EBZK4XCD2J
X-Message-ID-Hash: 44BIQYAQW3TWXOTQBVSJD2EBZK4XCD2J
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/44BIQYAQW3TWXOTQBVSJD2EBZK4XCD2J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2338826437400318923=="

--===============2338826437400318923==
Content-Type: multipart/alternative; boundary="0000000000006baef505d6ac645a"

--0000000000006baef505d6ac645a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did Marcus' suggestion below about setting the start time fix the issue?

On Fri, Jan 28, 2022 at 11:31 AM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> single
>
> On Fri, Jan 28, 2022 at 11:18 AM Marcus D. Leech <patchvonbraun@gmail.com=
>
> wrote:
>
>> On 2022-01-28 10:38, Paul Atreides wrote:
>>
>> Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to inc=
lude the
>> enable switch for each LO distribution port. Thank you for the informati=
on.
>>
>> I am now having synchronization issues with the transmit stream in the
>> GNURadio. It appears as though the radio channels are not starting at th=
e
>> same time. Are you aware of any commands that you=E2=80=99ve had to run =
from
>> external applications that ensure the start time for both transmitters i=
s
>> the same?
>>
>> <end transmission>
>>
>> WHen specifying a "start time" in the GRC UHD Sink block of anything >=
=3D
>> 0.0, this code is inserted into the generated Python:
>>
>> self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))
>>
>> Are you using a single 10GiGe link, or using dual links?
>>
>>
>>
>>
>>

--0000000000006baef505d6ac645a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Did Marcus&#39; suggestion below about setting the st=
art time fix the issue?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Jan 28, 2022 at 11:31 AM Paul Atreides &lt;<=
a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">single<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jan 28, 2022 at 11:18 AM Marcus D. Leech &lt;<a hre=
f=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-28 10:38, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      Rob, I=E2=80=99ve been able to extend the functionality of gr-uhd to
      include the enable switch for each LO distribution port. Thank you
      for the information.
      <div><br>
      </div>
      <div>I am now having synchronization issues with the transmit
        stream in the GNURadio. It appears as though the radio channels
        are not starting at the same time. Are you aware of any commands
        that you=E2=80=99ve had to run from external applications that ensu=
re
        the start time for both transmitters is the same?</div>
      <div><br>
      </div>
      <div>&lt;<span>end
          transmission&gt;</span></div>
      <br>
    </blockquote>
    WHen specifying a &quot;start time&quot; in the GRC UHD Sink block of a=
nything
    &gt;=3D 0.0, this code is inserted into the generated Python:<br>
    <br>
    self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(0.5))<br>
    <br>
    Are you using a single 10GiGe link, or using dual links?<br>
    <br>
    <br>
    <br>
    <br>
  </div>

</blockquote></div>
</blockquote></div></div>

--0000000000006baef505d6ac645a--

--===============2338826437400318923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2338826437400318923==--
