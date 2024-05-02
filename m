Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDFB8B9B68
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 15:15:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0FF53852E7
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 09:15:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714655733; bh=bQOpz3cnUWtcX7qtiWh1S/t2yS3+6FMYcjGaoJdjP8U=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=NUFEV12Poh5ksm1tgHKdbGZEKMXBNFpkRPkTnisukqt5x8zACmfj1mYRC/Bxz/Kss
	 LMyPxI1bSL60PCrPX+woQ1g24SBMV0fjvOg39+Wnqq7ox5T+x9jRLzj0VgJs46YnHg
	 4owDVeQaFeAO/wLKsT+47/Mm/m9qv3N5v2PTxRz9D1qQ4g7Og+0KHPMuNHz7ILNsJl
	 UJL7GevA5PlBsKCyh7k31BkWlgB3qg59vTCVxx5b5f6L3w8sncLqOmfw1Q9EbyjeAh
	 Th3+TZgnE9psAPGEcpesgnDzPxsmXTWGoLVSC34gd7LWjPOSYObKMCsbWnPHzFZBOX
	 aJJeuVZcuz2XQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 680FB3852B1
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 09:14:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Ij8Y3Ccb";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-572baf393ddso1583351a12.1
        for <usrp-users@lists.ettus.com>; Thu, 02 May 2024 06:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1714655694; x=1715260494; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ou2M3i8rgaVdMaVlgW2C0IOPrWLt977jcbytGU/TfsU=;
        b=Ij8Y3CcbylMIaOZHyfhX3Oj3OHE/EkdQCOiR+uyU7m9OkXgx1wF4t0FYnpjO2/uKP+
         Bf3jFR9dNMHgms0y0Cyi41pd3rtksx/UC7SE5o1cviUHU43p0PpEXFsUqZaIWdGn8r7s
         oBMcswfcuaOTgAxbbkJ+ldoTW4ikebyCC0rb9oCBZ8L1mnT0XGeb0cIkGMQlsiUGgw/n
         ZXA1rR0suHxA2DKvwCkcFDucvrpgxh8H0D1xqQ+TcZrTNbo2qkKtVKEFluerFUWdEeBM
         ma/2ESn4lRabKZf5rsgErQzm44Sm+rFwPDip09nV9rVclzExKs75ZuJQqjUFpyEyagDs
         Z5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714655694; x=1715260494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ou2M3i8rgaVdMaVlgW2C0IOPrWLt977jcbytGU/TfsU=;
        b=ipCvKSZyLeg+zeLWpxRGXOX/1qgdHZHmoar5OmOuqwkCyklmWTctGXjFBg526v2XYr
         xGHaHmDwXCl8PdWJpaNQ6C5MlGsguhl2zGt0BSSDhFOiILpkA8Z8w0SW+ABZhfESVrbN
         DBeSLgVMl1pS2moiCtvwXJnzjxY/2jT9C/Nutb96Xd8RPhye2oQ3IHsivo07AMWBKHo1
         T7+1TmtBeqrkurQbVE3m9yGw5ShFxwuOVSXb+LRQ0j7wEBBxB6VDAoxp9hzL8X9Y7Cv4
         bU+b48vlTf3kGYeRfC8es9hEwiVlx3TiZisVQhPhluegV4mqDYQvNSbVjRf9xtx8TA+V
         Csvg==
X-Forwarded-Encrypted: i=1; AJvYcCWND5DgJWuUfDfgyh3nUkQZ5u5JgSEzbD7rvSl6dJoefJqWim3M4VxVqANtkIUYC71JmgPYIKQFcS8flqAiVlsuvjH4WgSuiNFriw==
X-Gm-Message-State: AOJu0YxqFbOQxnXbkDar7KVSrzUDyjKQyEQptVN3PDCdKsMG91SFtbw3
	TTE7Kw7i1xN5sl8SKuWwT8X//r4ImyxXTC6qq5nAHoDwuo8x/Q7fUjobXyuq7/0WbG+rYha9OBu
	l9UuipkR9WbxaFAY5uzosvUXrDi8cz/biudC+
X-Google-Smtp-Source: AGHT+IGYCMJ0uuQRugY7jQfuKEyTy4WWjHOYaPnN2OW1HlfIXv+ilh/q2T+4LnBjwCYxCtZn7af9PBGCWUC2eN3Z2CI=
X-Received: by 2002:a50:9f69:0:b0:56e:1dda:5c2a with SMTP id
 b96-20020a509f69000000b0056e1dda5c2amr2005222edf.16.1714655694076; Thu, 02
 May 2024 06:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRpzWoOC2n5NkSCkTbQeQxcz6XBv2ZFc_B1f_xKH+0ZoQ@mail.gmail.com>
 <A274BA7F-FCBD-489E-8251-D1265CB2E3D5@gmail.com> <2081932982.3351179.1714636885969@mail.yahoo.com>
In-Reply-To: <2081932982.3351179.1714636885969@mail.yahoo.com>
Date: Thu, 2 May 2024 09:14:42 -0400
Message-ID: <CAB__hTRhN8ug8Mo2ErdAnqBg1SHsp8tQO9zXcSDx0wkcO98=xg@mail.gmail.com>
To: zhou <hwzhou@yahoo.com>
Message-ID-Hash: RPBTTIK533L25MSUVXEVSTHTMBL3YHG7
X-Message-ID-Hash: RPBTTIK533L25MSUVXEVSTHTMBL3YHG7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcus D Leech <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Freq synchronization between two X310s
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RPBTTIK533L25MSUVXEVSTHTMBL3YHG7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2050297893833258000=="

--===============2050297893833258000==
Content-Type: multipart/alternative; boundary="0000000000008f44b306177863f3"

--0000000000008f44b306177863f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hongwei,
In addition to the PLL that tracks the external 10MHz ref to produce the
internal 10 MHz ref, there are the four PLLs that track the internal 10 MHz
ref to produce the four LO signals (2Tx/2Rx) as you mentioned.  But, the
phase variation from the LO PLLs is much less - I don't really know
the reason for this. This is why you see less noisy results for the cases
where the transmit and receive channels are on one device.

However, even in the one device case, if you compare the phase stability of
a system with "shared LO" such as can be implemented with X310/TwinRx,
N310, or N321 systems, you will see that the relative phase is
significantly less noisy on these devices as compared to the X310/UBX
one-device results ("stable" results) in your case.
Rob

On Thu, May 2, 2024 at 4:01=E2=80=AFAM zhou <hwzhou@yahoo.com> wrote:

> Thanks, Rob and Marcus.
>
> A single tone is repeatedly transmitted to make a continuous stream out o=
f
> the Tx antenna. It is periodically sampled in Rx; the interval is about 1=
s.
> The sample time is aligned with the beginning of the transmitted signal t=
o
> make sure we sample at the same time across antennas. We calculate the
> angle of the first complex sample of capture to evaluate the signal phase=
.
>
> I agree with you that there can be some phase wobble between the 10M ref
> signals applied to PLLs in two devices because of temperature or other
> random factors, however, inside a USRP, there are four independent PLLs f=
or
> 2 Tx and 2 Rx. The 10M ref signals to them should also be wobbling. But m=
y
> measurements show that within the same USRP, phase is pretty stable betwe=
en
> Tx and Rx. Any explanation on this?
>
> Kind regards.
> Hongwei
>
>
> On Wednesday, 1 May 2024 at 20:34:15 BST, Marcus D Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> It=E2=80=99s also why you can=E2=80=99t get tight instantaneous phase ali=
gnment between
> two GPSDO devices even when on the same antenna.
>
> Sent from my iPhone
>
> On May 1, 2024, at 2:12 PM, Rob Kossler <rkossler@nd.edu> wrote:
>
> =EF=BB=BF
> The 10 MHz ref supplied to each X310 device is used in a PLL in each
> device to obtain the 10MHz ref used for that device (and for disciplining
> the various LOs on the device). Thus, there is a relative phase "wobble"
> between the 10MHz ref signals used on each device as each PLL continuousl=
y
> adjusts to maintain disciplined output.  Over time, this averages out to
> zero. But, instantaneously, it is not. So, my question is: how
> instantaneous is your phase measurement?  If you instead calculate a phas=
e
> averaged over numerous samples, can you get a consistent result? From you=
r
> plot, it looks like this is true.
> Rob
>
> On Wed, May 1, 2024 at 11:04=E2=80=AFAM zhou via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008f44b306177863f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hongwei,</div><div>In addition to the PLL that tracks=
 the external 10MHz ref to produce the internal 10 MHz ref, there are the f=
our PLLs that track the internal 10 MHz ref to produce the four LO signals =
(2Tx/2Rx) as you mentioned.=C2=A0 But, the phase variation from the LO PLLs=
 is much less - I don&#39;t really know the=C2=A0reason for this. This is w=
hy you see less noisy results for the cases where the transmit and receive =
channels are on one device.=C2=A0</div><div><br></div><div>However, even in=
 the one device case, if you compare the phase stability of a system with &=
quot;shared LO&quot; such as can be implemented with X310/TwinRx, N310, or =
N321 systems, you will see that the relative phase is significantly less no=
isy on these devices as compared to the X310/UBX one-device results (&quot;=
stable&quot; results) in your case.</div><div>Rob</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2024 at 4:0=
1=E2=80=AFAM zhou &lt;<a href=3D"mailto:hwzhou@yahoo.com">hwzhou@yahoo.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">Thanks, Rob and Marcus.</div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr">A single tone is repeatedly transmitted to make a co=
ntinuous stream out of the Tx antenna. It is periodically sampled in Rx; th=
e interval is about 1s. The sample time is aligned with the beginning of th=
e transmitted signal to make sure we sample at the same time across antenna=
s. We calculate the angle of the first complex sample of capture to evaluat=
e the signal phase.=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">=
I agree with you that there can be some phase wobble between the 10M ref si=
gnals applied to PLLs in two devices because of temperature or other random=
 factors, however, inside a USRP, there are four independent PLLs for 2 Tx =
and 2 Rx. The 10M ref signals to them should also be wobbling. But my measu=
rements show that within the same USRP, phase is pretty stable between Tx a=
nd Rx. Any explanation on this?=C2=A0</div><div dir=3D"ltr"><br></div><div =
dir=3D"ltr">Kind regards.</div><div dir=3D"ltr">Hongwei</div><div dir=3D"lt=
r"><br></div><div><br></div>
       =20
        </div><div id=3D"m_6553024948920657376ydp10566da0yahoo_quoted_50520=
93146">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 20:34:15 BST, Marcus D =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patc=
hvonbraun@gmail.com</a>&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"m_6553024948920657376ydp10566da0yiv87560728=
13"><div>It=E2=80=99s also why you can=E2=80=99t get tight instantaneous ph=
ase alignment between two GPSDO devices even when on the same antenna.=C2=
=A0<br clear=3D"none"><br clear=3D"none"><div dir=3D"ltr">Sent from my iPho=
ne</div><div dir=3D"ltr"><div id=3D"m_6553024948920657376ydp10566da0yiv8756=
072813yqtfd74024"><br clear=3D"none"><blockquote type=3D"cite">On May 1, 20=
24, at 2:12 PM, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br clear=3D"none"><br clear=3D"n=
one"></blockquote></div></div><div id=3D"m_6553024948920657376ydp10566da0yi=
v8756072813yqtfd96757"><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr"><div>The 10 MHz ref supplied to each X310 device is used i=
n a PLL in each device to obtain the 10MHz ref used for that device (and fo=
r disciplining the various LOs on the device). Thus, there is a relative ph=
ase &quot;wobble&quot; between the 10MHz ref signals used on each device as=
 each PLL continuously adjusts to maintain disciplined output.=C2=A0 Over t=
ime, this averages out to zero. But, instantaneously, it is not. So, my que=
stion is: how instantaneous is your phase measurement?=C2=A0 If you instead=
 calculate a phase averaged over numerous samples, can you get a consistent=
 result? From your plot, it looks like this is true.<br clear=3D"none"></di=
v><div>Rob<br clear=3D"none"></div><br clear=3D"none"><div><div dir=3D"ltr"=
>On Wed, May 1, 2024 at 11:04=E2=80=AFAM zhou via USRP-users &lt;<a shape=
=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></=
div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb=
(204,204,204);padding-left:1ex"><div><div style=3D"font-family:&quot;Helvet=
ica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div><br clear=3D"none"></div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"m_6553024948920657376ydp10566da0yiv8756072813m_-36=
50333112459443087ydpc994c9a6yahoo_quoted_5461441577">
            <div style=3D"font-family:Helvetica,Arial,sans-serif;font-size:=
13px;color:rgb(38,40,42)">
               =20
                <div>
                        On Wednesday, 1 May 2024 at 15:15:12 BST, Marcus D.=
 Leech &lt;<a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com" rel=3D=
"nofollow" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:
                    </div>
                    <div><br clear=3D"none"></div>
                    <div><br clear=3D"none"></div>
               =20
               =20
                <div><div id=3D"m_6553024948920657376ydp10566da0yiv87560728=
13m_-3650333112459443087ydpc994c9a6yiv4349751442"><div>
    <div>On 01/05/2024 10:11, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:&quot;Helvetica Neu=
e&quot;,Helvetica,Arial,sans-serif;font-size:13px">
        <div dir=3D"ltr">Hi Marcus,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">Thanks for your response.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(38,40,42);font-family:&quot;Helveti=
ca Neue&quot;,Helvetica,Arial,sans-serif">&quot;Are
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
42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">
            =C2=A0<br clear=3D"none">
            <span><span style=3D"color:rgb(0,0,0);font-family:&quot;Helveti=
ca Neue&quot;,Helvetica,Arial,sans-serif">&quot;external&quot;
                set for both ref and pps:</span></span></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_clock_source(&quot;external&q=
uot;)</span></div>
          <div dir=3D"ltr"><span>usrp-&gt;set_time_source(<span><span style=
=3D"color:rgb(0,0,0);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif">&quot;external&quot;)</span></span></span><br clear=3D"none">
            I think this should automatically set both devices.<br clear=3D=
"none">
            <br clear=3D"none" style=3D"color:rgb(38,40,42);font-family:&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">
            <span style=3D"color:rgb(38,40,42);font-family:&quot;Helvetica =
Neue&quot;,Helvetica,Arial,sans-serif">&quot;What
              type of daughtercards are in your X310?&quot;</span><br clear=
=3D"none" style=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quo=
t;,Helvetica,Arial,sans-serif">
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
v dir=3D"ltr" id=3D"m_6553024948920657376ydp10566da0yiv8756072813m_-3650333=
112459443087ydpc994c9a6yiv4349751442yqtfd85029"><br clear=3D"none"></div><d=
iv dir=3D"ltr" id=3D"m_6553024948920657376ydp10566da0yiv8756072813m_-365033=
3112459443087ydpc994c9a6yiv4349751442yqtfd85029">It is OctoClock GPSDO, and=
 Internal is used.=C2=A0<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:13px">
        <div><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"m_6553024948920657376ydp10566da0yiv8756072813m_-3650333112=
459443087ydpc994c9a6yiv4349751442ydp5189b7afyahoo_quoted_4632613607">
        <div style=3D"font-family:Helvetica,Arial,sans-serif;font-size:13px=
;color:rgb(38,40,42)">
          <div> On Wednesday, 1 May 2024 at 14:19:44 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com"=
 rel=3D"nofollow" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wro=
te: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"m_6553024948920657376ydp10566da0yiv8756072813m_-3650=
333112459443087ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590">
              <div id=3D"m_6553024948920657376ydp10566da0yiv8756072813m_-36=
50333112459443087ydpc994c9a6yiv4349751442ydp5189b7afyiv7691143590yqt92825">
                <div>
                  <div>On
                    01/05/2024 08:25, zhou via USRP-users wrote:<br clear=
=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helv=
etica,Arial,sans-serif;font-size:13px">
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
yle=3D"color:rgb(0,0,0);font-family:&quot;Helvetica Neue&quot;,Helvetica,Ar=
ial,sans-serif">Two
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
            <div id=3D"m_6553024948920657376ydp10566da0yiv8756072813m_-3650=
333112459443087ydpc994c9a6yiv4349751442ydp5189b7afyqt89423">_______________=
________________________________<br clear=3D"none">
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
  </div></div></div><div id=3D"m_6553024948920657376ydp10566da0yiv875607281=
3m_-3650333112459443087ydpc994c9a6yqtfd03165">_____________________________=
__________________<br clear=3D"none">USRP-users mailing list -- <a shape=3D=
"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">To unsubscribe=
 send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-leave@lists.e=
ttus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br clear=3D"none"></div></div>
            </div>
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br clear=3D"none">
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></blockquote></div></div></div><div id=3D"m_6553024948920657376ydp105=
66da0yqtfd43156">_______________________________________________<br clear=
=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-=
users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.=
ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D=
"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" ta=
rget=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></di=
v></div>
            </div>
        </div></div></blockquote></div></div>

--0000000000008f44b306177863f3--

--===============2050297893833258000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2050297893833258000==--
