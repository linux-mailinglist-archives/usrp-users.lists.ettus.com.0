Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 661B649B84D
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 17:13:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40A06384DFC
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 11:13:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="QNrKpeAS";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D996380854
	for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 11:12:19 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id l68so62559173ybl.0
        for <usrp-users@lists.ettus.com>; Tue, 25 Jan 2022 08:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WX3JNtyjw6UbB9Ntqga5B4NlrA4Y4E+Flq9zn1fT+40=;
        b=QNrKpeAShXANiQObwEqTGwquBKXpitdoBynku4va20/6k1meGBJuB/DzXQ7Hjtkrb6
         sqq4gvdWIXZpineCWBjFjb4ohrdDGAhn1of+Kj5OL5gqMBfSs0MI3Lc2KgvOsu2jAAMl
         +8mZsejqijwbd3dSxvuiQCGDv/SzTxvRlLvaf00rxlIZfopk5RZSdh7TDRKFSVRLSvXF
         yA5LX5YglKtgLDigVEVnlzOXwKJ0jeqbtq1vQllyVO69lA9DA3QflLcNZ2pWmLrAAEcV
         p1TPIFUPDxD2tp7/VnjxR86z5EskGY16buktGSuDmbJ8i6fu+Yi7+ERwCzm3lj/6282T
         fqog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WX3JNtyjw6UbB9Ntqga5B4NlrA4Y4E+Flq9zn1fT+40=;
        b=VKPtqkLksYUSgVIP7FzVntVAKxanOAQzxvOPXm+KUDRRqqbBXNm9GXwmep/T8Ncgv8
         Vr/vgpexheSKQYGbK59Q/bmolebqAtgKnvV5f6nAv+RwTjM7VVlwUGV/3gAo1OzRDYFn
         cGWXkhjwafFsPbbixmkbT/gjyVnxRET/TGkAdhzqIxLwK8RQUmtO3Yvxw7omQugTGU8m
         7p9P2wL9B64FV6ABOPvQbcccSCyF86acMQJtoEY5gHHTteUzFtAZK7sYVABxCUoKoJQd
         rQ5KSThPGcNC7RoxAkaywadKKNGuoaGquD+y35DtnFMkkuUc9Q7V8y82Hmie6myAQERP
         203A==
X-Gm-Message-State: AOAM532/mkdQpK6+EqD0/fj5muufuNq64XbXZSb5/vXwYYsaVGX7TNDR
	ggwKbzU8yaDnR1giCtRdVjnuOBGxP+Kk5BViwxb+qw==
X-Google-Smtp-Source: ABdhPJwwWkbcuRDvFacNCdn95yq2SDZw2ywRBVVt9EB+Xg1kwPCrP07X5eqsZHl8VcPhrWC3uM0eYvDCjI1AWB8DXlg=
X-Received: by 2002:a05:6902:1105:: with SMTP id o5mr17446307ybu.80.1643127138958;
 Tue, 25 Jan 2022 08:12:18 -0800 (PST)
MIME-Version: 1.0
References: <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
 <b190375f-9565-ddc8-5289-6af588630efe@gmail.com>
In-Reply-To: <b190375f-9565-ddc8-5289-6af588630efe@gmail.com>
Date: Tue, 25 Jan 2022 11:12:07 -0500
Message-ID: <CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: OVJRHST7A6PCT3KBLOKCNBBGPRRXQMVY
X-Message-ID-Hash: OVJRHST7A6PCT3KBLOKCNBBGPRRXQMVY
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronization of two USRP x310s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OVJRHST7A6PCT3KBLOKCNBBGPRRXQMVY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: LoyCurtis Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============0131561938106574714=="

--===============0131561938106574714==
Content-Type: multipart/alternative; boundary="000000000000706eba05d66a59ae"

--000000000000706eba05d66a59ae
Content-Type: text/plain; charset="UTF-8"

Would their mechanism included UHD based code?

Also, I assume that the only other option would be to purchase an Octoclock
or some other clock distribution module?

On Tue, Jan 25, 2022 at 10:40 Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-24 20:53, LoyCurtis Smith via USRP-users wrote:
>
> My system setup is as follows:
>
>    - 2 x USRP x310 with CBX-120 daughterboard
>    - 2 x Ubuntu 18.04 workstation
>    - 2 x Taoglas 45.8113 antenna
>    - 2 x  Internal Reference Clock (Master Clock set at 184.32 MHz)
>    - 2 x Internal Time source
>    - 2 x Connected via 1 Gig-E interfaces
>    - 2 x Using UHD 4.1
>
> The devices have been in two setups: stacked and a few inches apart.
>
> I am attempting to deploy a 5G network using the openairinterface (OAI)
> software system. Both devices synchronize initially, then they fail. With
> openairinterface, I am using frequency offset compensation at the UE. Its a
> useful parameter when running over the air and/or without an external
> clock/time source (
> https://gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc/RUNMODEM.md
> )
>
> Is there a way to synchronize the reference clock/timing of both USRP
> x310s over the air? In the future, I will be attempting to connect a third
> USRP x310. My setup will include one base station and two user devices.
>
> V/r
>
> LoyCurtis Smith
>
>
> Unless OAI provides some mechanism for that, the answer would be no.  You
> need a shared reference clock.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
-- 

V/r

LoyCurtis Smith

--000000000000706eba05d66a59ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Would their mechanism included UHD based code?=C2=A0</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Also, I assume that the only=
 other option would be to purchase an Octoclock or some other clock distrib=
ution module?</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Jan 25, 2022 at 10:40 Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-lef=
t-color:rgb(204,204,204)">
 =20
   =20
 =20
  <div></div><div>
    <div>On 2022-01-24 20:53, LoyCurtis Smith
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>My system setup is as follows:=C2=A0</div>
        <div>
          <ul>
            <li>2 x USRP x310 with CBX-120 daughterboard</li>
            <li>2 x Ubuntu 18.04 workstation</li>
            <li>2 x Taoglas 45.8113 antenna</li>
            <li>2 x=C2=A0 Internal Reference Clock (Master Clock set at
              184.32 MHz)</li>
            <li>2 x Internal Time source=C2=A0</li>
            <li>2 x Connected via 1 Gig-E interfaces</li>
            <li>2 x Using UHD 4.1</li>
          </ul>
          <div>The devices have been in two setups: stacked and a few
            inches apart.=C2=A0</div>
          <div><br>
          </div>
          <div>I am attempting to deploy a 5G network using the
            openairinterface (OAI) software system. Both devices
            synchronize initially, then they fail. With
            openairinterface, I am using frequency offset compensation
            at the UE. Its a useful parameter when running over the air
            and/or without an external clock/time source (<a href=3D"https:=
//gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc/RUNMODEM.md" ta=
rget=3D"_blank">https://gitlab.eurecom.fr/oai/openairinterface5g/blob/devel=
op/doc/RUNMODEM.md</a>)</div>
          <div><br>
          </div>
          <div>Is there a way to synchronize the reference clock/timing
            of both USRP x310s over the air? In the future, I will be
            attempting to connect a third USRP x310. My setup will
            include one base station and two user devices.=C2=A0</div>
          <div>
            <div dir=3D"ltr" data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr"><font style=3D"color:rgb(7,55,99)"><br>
                    </font></div>
                  <div dir=3D"ltr"><font style=3D"color:rgb(7,55,99)">V/r</=
font>
                    <div><span style=3D"background-color:rgb(255,255,255)">=
<font style=3D"color:rgb(7,55,99)"><br>
                        </font></span></div>
                    <div><span style=3D"background-color:rgb(255,255,255)">=
<font style=3D"color:rgb(7,55,99)">LoyCurtis Smith</font></span></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
    </blockquote></div><div>
    Unless OAI provides some mechanism for that, the answer would be
    no.=C2=A0 You need a shared reference clock.<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
font color=3D"#073763"><br></font></div><div dir=3D"ltr"><font color=3D"#07=
3763">V/r</font><div><span style=3D"background-color:rgb(255,255,255)"><fon=
t color=3D"#073763"><br></font></span></div><div><span style=3D"background-=
color:rgb(255,255,255)"><font color=3D"#073763">LoyCurtis Smith</font></spa=
n></div></div></div></div></div>

--000000000000706eba05d66a59ae--

--===============0131561938106574714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0131561938106574714==--
