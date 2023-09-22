Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D97AB49B
	for <lists+usrp-users@lfdr.de>; Fri, 22 Sep 2023 17:19:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4D1E384B4A
	for <lists+usrp-users@lfdr.de>; Fri, 22 Sep 2023 11:19:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695395955; bh=MMxLLLZMxv2pMscPEL6Cd7dNJ/Mlpgj7FTx6woK61jI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=rtA0Fi6MdSUwb2tcaoAjX/OYpZXEzje2YzOIEp7nfwdnMMNZewOXfbggET/f9zG+N
	 d6D9kxnCnJRgrBtk6Onh4CFq6tvwh1Vg9DbLKak8fJntG9zGO1XAxmx6ymj9FYOlTB
	 s2GzkLYMPvXBQuWhQYx+L1QMXuLWByLOuxj8LmIoOEmBRPefayTRybdBZ1bMbBmiLw
	 UvuWwFRDuWUEJupq+mr+GQVW8P5acDpFXC92TkC+bzqGQ7sjjFCu8U5j8umn2C4wMq
	 DhiGoCLWJ2ozPAOt/SiJVXLSQrekzJ9IxMU5mT3UsMo2DGSsMW0+t74Rd1HkIeVBih
	 vtr9f8BPrZ4TQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id F0D40384940
	for <usrp-users@lists.ettus.com>; Fri, 22 Sep 2023 11:18:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dW4OZvTe";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5334d78c5f6so2194302a12.2
        for <usrp-users@lists.ettus.com>; Fri, 22 Sep 2023 08:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1695395895; x=1696000695; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2HkJC3n6lfCNTLBu/NYwC+xcwinYG7/x7uduqdUihOs=;
        b=dW4OZvTezJQG/TUdDBNp/jNNnHRjfl7cYWP4YE+rc9/t6rs9pWncZKxlYFM2lwMkMF
         UAeuA/RES15j8cOOOmrWhgaBJy9GJDNhAN62CXpoBJGkDSVcgci+UOcNMQDMSAfY65aS
         fGse9MZFUvHWKX1ETUr4yzX6w7Tn610zd8Kd0T21vE+vp20MX8L0lAg2tXMGVnAiDM6X
         Gsl03OLtUQKFRw3hLG9AS4zhUUVgGeQfztcniNLXnvw7kZ6fxpiDiu6T/jNHltI20WGB
         SWbzppPWCzvvYhqsyMnE1yV2nfD68CUPkzzMK4pldRJDUl8ZQOFuMt7a29wSZqMW1Kjb
         frTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695395895; x=1696000695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2HkJC3n6lfCNTLBu/NYwC+xcwinYG7/x7uduqdUihOs=;
        b=fQEKtvFAJytKEmZ8ozqq1uDi6+2jfE2SafYrtsHlKgxtBbdPB5wAsOQ0E/2DF0STRW
         V57YQ0MTL9dP4neIrpSmYoOEWIFAnGuPo5BbKBytC4mZK5sk8o5JS0jOOQH48NgaT3gq
         z7GfOuxW6KZ3NAPtl2SFUJyJQ1pqasunHp1dKr1O0XRNazByKPoFpj85+JH22F0cHpz6
         ugGQrtsUQE42ZNOuhXbfz7o9t9p06X2j5c/XN0GDrv1XGHVjTEdXQrfBLOKHP90jp2sS
         Unvx596SY7HcjTHKqhKcYA5rZp9Rwdwgl/BO7J5zgRu5Xe5E4jOk55+8N35N02NMYdx2
         sdow==
X-Gm-Message-State: AOJu0YwUOiBLYxist7f8JNYG5Lx+8SQiJRZG2rYV20AlijeSL1SKq5p1
	Zc+bwKskzvV7Z4PbaWHWCbCwa+Z+A/Q7vAzBy4+IqKRJaRnB9a++
X-Google-Smtp-Source: AGHT+IHr6GZWOgi0QmmqfJrhAhL2yQs1AKOnAihyKUeb7I0urM5oWLmOQ2mDr62QWKnDJsbSJ3LqOk0bPZaGSSNjHLU=
X-Received: by 2002:aa7:cb46:0:b0:530:f856:b844 with SMTP id
 w6-20020aa7cb46000000b00530f856b844mr8920738edt.10.1695395894690; Fri, 22 Sep
 2023 08:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <BN2P110MB17470A026C94DFF2E9370914B7F8A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTQid=NqnZ7fEqn+vctkza_O1hon-NhhXzFKVq+X8_mtmA@mail.gmail.com> <BN2P110MB174766EB1FCCC6F93AB1AFC4B7F8A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN2P110MB174766EB1FCCC6F93AB1AFC4B7F8A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Date: Fri, 22 Sep 2023 11:18:03 -0400
Message-ID: <CAB__hTQzw-repUdgpEPpfyYhDE_DBFA1==i4PQf-QOoqFmf-Zg@mail.gmail.com>
To: David Raeman <david@synopticengineering.com>
Message-ID-Hash: RVEALPLGFSMUHFO3BFYVQTUOKHJL2FZE
X-Message-ID-Hash: RVEALPLGFSMUHFO3BFYVQTUOKHJL2FZE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Toggling a panel GPIO at a specific time (via RFNoC or otherwise)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVEALPLGFSMUHFO3BFYVQTUOKHJL2FZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1883093984217821285=="

--===============1883093984217821285==
Content-Type: multipart/alternative; boundary="0000000000000eadb50605f41edb"

--0000000000000eadb50605f41edb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I believe you will need to ensure monotonically increasing times in
the Radio command queue.  Since we have a multi-threaded application, we
cheated and simply inserted a "delay" in the thread that sets the GPIO
pulse in order to ensure that the command entered the queue after all of
the streaming commands.
Rob

On Thu, Sep 21, 2023 at 5:06=E2=80=AFPM David Raeman <david@synopticenginee=
ring.com>
wrote:

> Hi Rob,
>
> Thanks for the pointer, I hadn=E2=80=99t considered trying set_gpio_attr(=
) with a
> command time. I will experiment with this approach..
>
>
>
> My only minor hesitation is that my software also does other interactions
> with the radio during transmission (specifically, updating registers in
> other RFNoC blocks), and it=E2=80=99s unclear to me whether those pokes c=
ould get
> blocked in a queue behind a timed command. Assuming so, I might be able t=
o
> sequence interactions to avoid that case.
>
>
>
> Thanks again,
>
> -David
>
>
>
>
>
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Thursday, September 21, 2023 4:26 PM
> *To:* David Raeman <david@SynopticEngineering.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Toggling a panel GPIO at a specific time (via
> RFNoC or otherwise)
>
>
>
> Hi David,
>
> It may be the case that this functionality already exists in the radio
> block such that you don't need a custom block.  The function
> radio_control->set_gpio_attr() respects the command time.  Here is a
> portion of one of my applications that outputs a gpio pulse after a
> specified delay relative to the streaming 'start_time'.  Would this work
> for your case?
>
> Rob
>
>
>
>   uhd::time_spec_t gpio_on =3D start_time + gpio_start;
>   this->set_command_time(gpio_on, gpio_mb);
>   this->set_gpio_attr(gpio_pulse_bank, "OUT", -1, gpio_mask, gpio_mb);
>   this->set_command_time(gpio_on + gpio_duration, gpio_mb);
>   this->set_gpio_attr(gpio_pulse_bank, "OUT", 0, gpio_mask, gpio_mb);
>   this->clear_command_time(gpio_mb);
>
>
>
> On Thu, Sep 21, 2023 at 4:01=E2=80=AFPM David Raeman <
> david@synopticengineering.com> wrote:
>
> Hello,
>
>
>
> I'm looking for advice on toggling an E320 GPIO pin at a specific
> uhd::time_spec_t. My use case is a UHD application that starts a long
> transmit burst at a known timespec, then later toggles a pin at a time
> corresponding to the Nth sample being transmitted. The pin controls an
> external RF switch. I recognize there will be some amount of group delay
> through the RFIC and internal analog components =E2=80=93 my goal is just=
 to be
> roughly synchronous with samples clocked out of the radio block.
>
>
>
> As a first pass, I have a custom RFNoC block that counts valid samples
> from the start of burst and toggles the pin after the Nth sample (where N
> is provided in a user register). This is a poor solution because there is
> deep buffering downstream in the radio block, so my block sees =E2=80=9Cs=
ample N"
> and toggles the pin several thousand sample-periods before it's
> transmitted. It isn=E2=80=99t a fixed lag that can be added as a constant=
 =E2=80=93
> consider that if N is small and =E2=80=9Csample N=E2=80=9D is observed wh=
en the FIFO is
> initially being filled, the toggle would occur while the corresponding
> sample is sitting in the back-pressured FIFO waiting for the transmit sta=
rt
> time.
>
>
>
> Since this is synchronous manipulation of external state, and not just
> samples, I don=E2=80=99t believe it will be sufficient to use CHDR header
> timestamps =E2=80=93 the block would also need to know current radio_time=
, and I=E2=80=99m
> not sure how to get that in an RFNoC block..
>
>
>
> Just wondering if I might be overlooking some simpler approach, or any
> advice on how to plumb this into a custom RFNoC block.
>
>
>
> Thank you,
>
> -David
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000000eadb50605f41edb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I believe you will need to ensure monotonically incre=
asing times in the Radio command queue.=C2=A0 Since we have a multi-threade=
d application, we cheated and simply inserted a &quot;delay&quot; in the th=
read that sets the GPIO pulse in order to ensure that the command entered t=
he queue after all of the streaming commands.=C2=A0=C2=A0<div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Sep 21, 2023 at 5:06=E2=80=AFPM David Raeman &lt;<a href=3D"mailto:davi=
d@synopticengineering.com">david@synopticengineering.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-1=
417378548568140033">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-1417378548568140033WordSection1">
<p class=3D"MsoNormal">Hi Rob,<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks for the pointer, I hadn=E2=80=99t considered =
trying set_gpio_attr() with a command time. I will experiment with this app=
roach..<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">My only minor hesitation is that my software also do=
es other interactions with the radio during transmission (specifically, upd=
ating registers in other RFNoC blocks), and it=E2=80=99s unclear to me whet=
her those pokes could get blocked in a queue
 behind a timed command. Assuming so, I might be able to sequence interacti=
ons to avoid that case.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks again,<u></u><u></u></p>
<p class=3D"MsoNormal">-David<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Rob Kossler &lt;<a href=3D"mailto:rkoss=
ler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; <br>
<b>Sent:</b> Thursday, September 21, 2023 4:26 PM<br>
<b>To:</b> David Raeman &lt;david@SynopticEngineering.com&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Toggling a panel GPIO at a specific time (=
via RFNoC or otherwise)<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi David,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">It may be the case that this functionality already e=
xists=C2=A0in the radio block such that you don&#39;t need a custom block.=
=C2=A0 The function radio_control-&gt;set_gpio_attr() respects the command =
time.=C2=A0 Here is a portion of one of my applications that
 outputs a gpio pulse after a specified delay relative to the streaming &#3=
9;start_time&#39;.=C2=A0 Would this work for your case?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
=C2=A0 uhd::time_spec_t gpio_on =3D start_time + gpio_start;<br>
=C2=A0 this-&gt;set_command_time(gpio_on, gpio_mb);<br>
=C2=A0 this-&gt;set_gpio_attr(gpio_pulse_bank, &quot;OUT&quot;, -1, gpio_ma=
sk, gpio_mb);<br>
=C2=A0 this-&gt;set_command_time(gpio_on + gpio_duration, gpio_mb);<br>
=C2=A0 this-&gt;set_gpio_attr(gpio_pulse_bank, &quot;OUT&quot;, 0, gpio_mas=
k, gpio_mb);<br>
=C2=A0 this-&gt;clear_command_time(gpio_mb);</span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Sep 21, 2023 at 4:01=E2=80=AFPM David Raeman=
 &lt;<a href=3D"mailto:david@synopticengineering.com" target=3D"_blank">dav=
id@synopticengineering.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I&#39;m looking for advice on toggling an E320 GPIO =
pin at a specific uhd::time_spec_t. My use case is a UHD application that s=
tarts a long transmit burst at a known timespec, then
 later toggles a pin at a time corresponding to the Nth sample being transm=
itted. The pin controls an external RF switch. I recognize there will be so=
me amount of group delay through the RFIC and internal analog components =
=E2=80=93 my goal is just to be roughly synchronous
 with samples clocked out of the radio block.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">As a first pass, I have a custom RFNoC block that co=
unts valid samples from the start of burst and toggles the pin after the Nt=
h sample (where N is provided in a user register).
 This is a poor solution because there is deep buffering downstream in the =
radio block, so my block sees =E2=80=9Csample N&quot; and toggles the pin s=
everal thousand sample-periods before it&#39;s transmitted. It isn=E2=80=99=
t a fixed lag that can be added as a constant =E2=80=93 consider
 that if N is small and =E2=80=9Csample N=E2=80=9D is observed when the FIF=
O is initially being filled, the toggle would occur while the corresponding=
 sample is sitting in the back-pressured FIFO waiting for the transmit star=
t time.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Since this is synchronous manipulation of external s=
tate, and not just samples, I don=E2=80=99t believe it will be sufficient t=
o use CHDR header timestamps =E2=80=93 the block would also need to
 know current radio_time, and I=E2=80=99m not sure how to get that in an RF=
NoC block..<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Just wondering if I might be overlooking some simple=
r approach, or any advice on how to plumb this into a custom RFNoC block.<u=
></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thank you,<u></u><u></u></p>
<p class=3D"MsoNormal">-David<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</div>
</blockquote>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--0000000000000eadb50605f41edb--

--===============1883093984217821285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1883093984217821285==--
