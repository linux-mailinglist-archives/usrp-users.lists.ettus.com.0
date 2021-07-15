Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 275DD3C9EBB
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 14:36:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9291A3846B6
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 08:36:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="AyN+cfpR";
	dkim-atps=neutral
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 497D9383B7F
	for <usrp-users@lists.ettus.com>; Thu, 15 Jul 2021 08:35:23 -0400 (EDT)
Received: by mail-oi1-f178.google.com with SMTP id h9so6383949oih.4
        for <usrp-users@lists.ettus.com>; Thu, 15 Jul 2021 05:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hleo62WgJ4+Bta3tAZrsOkZSh9FptGaAO+da4ecc9Zs=;
        b=AyN+cfpRsshkZnpLcua5mgZAakp5bayGxP6GAoQ89uYaSNvIs6S8eVNc1PJoNmRKbq
         IRClrT728C0FP3mWI9Jr21pdwGCUz7JtAeBrccb6A+fkciIG1i0YhcPFqF7h04UEBZOK
         pFlngjm9QmF0pDH4j1SC9srY1wuuQL5V6IEsKxAWOgxkf3h3vWNacNmgk9SzI6IEBQqa
         l04+hmqhf6iIiZ6Ws2z1onpqk5sytBzHNhYw0zzfPso7bT8c2rlhbPZWzEtjDIF8u9ha
         KETzptjccRxXPRJxJjlymKTLyW8vNO6abkW71iIIuisVGhlyarVxuFzBIEWkZEAQP45m
         CDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hleo62WgJ4+Bta3tAZrsOkZSh9FptGaAO+da4ecc9Zs=;
        b=t2NArBsKXEIqMJEpuxgq1Yg5bjVAgzm1lGMZaEMsIoQbC3gwM5UFPrSU7K69Y8JtVs
         A4O1apIZ0qqszjXZL7lp9jIolL3DzLJ5OWa5Z7sz1tIU72hfrb5/KYWNZd/CMf4FmOSs
         hp9+sZs03q8oYzJPyzxSLe+K/3M1Y062L4L9MXIeElWpx9/Z6XYPCfzz50oGOKMddAtm
         0jgLNa64o6f+ANkxI1ksFJjecYNHb2pZzZf7l8JwHGML1pymi7uOnzu7i+6PewoTkYXc
         xfXTUv4Zq01DKdfed4gk+u+KruomLWbHcC8ms5QPUfD6zzdPZN+jWtM+4IEz5Oj/PJ16
         L82g==
X-Gm-Message-State: AOAM533ga1dxwwF/OklwcpaCiNte+5Fzr8cxkmuOTE87SHKewAFTBWzD
	+xKgau8qmaqfdNScj+11zA9kOw2Y6Fu324Tp74o4Vg==
X-Google-Smtp-Source: ABdhPJyS9T/1pYxnocWdV3UNaqdNlQCJQpAV0UH0r8ZP1rZyL7Y15XJqF/AVGMHASQvFurMi3YE69hvl0jPpdsgolGY=
X-Received: by 2002:aca:c346:: with SMTP id t67mr4977603oif.124.1626352522181;
 Thu, 15 Jul 2021 05:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <0f01b8f9-0390-462f-f650-3e108ced0508@cttc.es> <60E843EE.2020702@gmail.com>
 <de086712-0b2c-bd0a-2403-a21e3d60195c@cttc.es> <60E87031.4000103@gmail.com>
 <eb828814-823b-709a-244b-bebb223c17ad@cttc.es> <60E8719E.7070206@gmail.com>
 <CAL7q81tOT3aQRf9BOHb9A-9KNCU1rMG5eku2c2UOFh7zoL3HUg@mail.gmail.com>
 <8d17e3e1-48c0-f896-1075-45a9e82a3d1e@cttc.es> <60EEEE24.3040203@gmail.com>
In-Reply-To: <60EEEE24.3040203@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 15 Jul 2021 07:35:11 -0500
Message-ID: <CAB__hTQVfNL65nE7Jc=hBAybGv+KTN7tpEf0tf1PiKBUiNTk3A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 3C2P4TNHV7B3JEYZQC3EVKQ5FUT4HT5G
X-Message-ID-Hash: 3C2P4TNHV7B3JEYZQC3EVKQ5FUT4HT5G
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Armin Ghani <aghani@cttc.es>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multi USRP TX configuration in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3C2P4TNHV7B3JEYZQC3EVKQ5FUT4HT5G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8540610962166228126=="

--===============8540610962166228126==
Content-Type: multipart/alternative; boundary="0000000000005d7f5505c728b426"

--0000000000005d7f5505c728b426
Content-Type: text/plain; charset="UTF-8"

Hi Armin,
The DmaFIFO is a FIFO that fits in as follows:  host_tx => DmaFIFO => DUC
=> Radio(Tx).  It's purpose is to provide samples at a steady rate to the
DUC because the host PC will often send samples at an inconsistent rate
(because the PC is multi-tasking). Of course, the PC must provide samples
at the required "average sample rate" or no amount of buffering can help.
When you set skip_dram=1, this buffer is removed and so the PC must provide
samples to the DUC at a steady rate or you will get "U" for underrun (which
is the sample starved condition) or "L" for late (which means that a sample
has been specified to transmit at an exact time but when that sample
arrives at the Tx radio, the time has already past).

Regarding your comment about needing to use the "zero-sample" Tx channels
for Rx, it it not clear to me why you can't use the channel simultaneously
for both Tx and Rx.  That is, the fact that you are sending zero samples
for Tx does not prevent you from using the channel for Rx using the Rx2
antenna port.

It seems from your original post that this is an Ettus bug that has not
been fixed. Potential work arounds are to upgrade to UHD 4.0 or to use the
RFNoC API rather than multi_usrp to implement your gnuradio graph.  This
latter option might not be trivial if you don't have experience using this
API.
Rob

On Wed, Jul 14, 2021 at 9:01 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 07/14/2021 04:32 AM, Armin Ghani wrote:
>
> Dear Marcus
>
> I didnt get your point about set sample rate to 10Msps with the same
> bandwidth. Would you explain more?
>
> I know that L character at console means starving for samples but what I
> really dont understand is that why it comes up when skip_dram argument sets
> to one with the same sample rate though?
>
> Regards.
>
> I just meant that you could interpolate your signal up to a higher sample
> rate to see if that made the "L" go away.  There were historically problems
>   with lower sample rates on X310 in certain configurations.
>
> I don't know why there's a dependency on skip_dram, since I'm not one of
> the designers.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005d7f5505c728b426
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Armin,<div>The DmaFIFO is a FIFO that =
fits in as follows:=C2=A0 host_tx =3D&gt; DmaFIFO =3D&gt; DUC =3D&gt; Radio=
(Tx).=C2=A0 It&#39;s purpose is to provide samples at a steady rate to the =
DUC because the host PC will often send samples at an inconsistent rate (be=
cause the PC is multi-tasking). Of course, the PC must provide samples at t=
he required &quot;average sample rate&quot; or no amount of buffering can h=
elp.=C2=A0 When you set skip_dram=3D1, this buffer is removed and so the PC=
 must provide samples to the DUC at a steady rate or you will get &quot;U&q=
uot; for underrun (which is the sample starved condition) or &quot;L&quot; =
for late (which means that a sample has been specified to transmit at an ex=
act time but when that sample arrives at the Tx radio, the time has already=
 past).</div><div><br></div><div>Regarding your comment about needing to us=
e the &quot;zero-sample&quot; Tx channels for Rx, it it not clear to me why=
 you can&#39;t use the channel simultaneously for both Tx and Rx.=C2=A0 Tha=
t is, the fact that you are sending zero samples for Tx does not prevent yo=
u from using the channel for Rx using the Rx2 antenna port.</div><div><br><=
/div><div>It seems from your original post that this is an Ettus bug that h=
as not been fixed. Potential work arounds are to upgrade to UHD 4.0 or to u=
se the RFNoC API rather than multi_usrp to implement your gnuradio graph.=
=C2=A0 This latter option might not be trivial if you don&#39;t have experi=
ence using this API.=C2=A0=C2=A0</div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 14, 2021 at=
 9:01 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/14/2021 04:32 AM, Armin Ghani
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Dear Marcus</p>
      <p>I didnt get your point about set sample rate to 10Msps with the
        same bandwidth. Would you explain more?</p>
      <p>I know that L character at console means starving for samples
        but what I really dont understand is that why it comes up when
        skip_dram argument sets to one with the same sample rate though?</p=
>
      <p>Regards.<br>
      </p>
      <br>
    </blockquote>
    I just meant that you could interpolate your signal up to a higher
    sample rate to see if that made the &quot;L&quot; go away.=C2=A0 There =
were
    historically problems<br>
    =C2=A0 with lower sample rates on X310 in certain configurations.<br>
    <br>
    I don&#39;t know why there&#39;s a dependency on skip_dram, since I&#39=
;m not
    one of the designers.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005d7f5505c728b426--

--===============8540610962166228126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8540610962166228126==--
