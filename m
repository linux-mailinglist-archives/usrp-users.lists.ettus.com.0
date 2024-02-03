Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 340C28487DD
	for <lists+usrp-users@lfdr.de>; Sat,  3 Feb 2024 18:14:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCA13384AD0
	for <lists+usrp-users@lfdr.de>; Sat,  3 Feb 2024 12:14:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706980485; bh=17UCcHi1LX7RMBmArvDzS+hlwJKow2zHENjkMK0jjXs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Gc7syjJsfwBQpE9R3cE5TEklUdFmZXgqp/u+4ngowPQXSdFUdwHwg2+w4Z+NDbewc
	 XvRl62UhtzkbLrX3/Q7qnbgMkt98YOgRv8Ab/Xi93vfNpJi3z6A2sm09CbDnJDMDVl
	 VsiZnVQHjsp6g5WYvnwh/3XuDfQySQXSLu4R8pTTyxw5Xqw9WQCE4eaAkqNe4P+g0Z
	 XAL9gVSMNiKxs6Oh2S6KPI+LCAtyhjmTIQDLKTqSeedtqwyzxeBR6S1YiBDLAenqJA
	 wrjm3yIu0FxFobtEhqqaW2DEbgLl9wbsEFftrS016jtBodlOL4h9GlKDmAwfKXT47x
	 NVb8C6F1ycU6A==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 53EA3384A83
	for <usrp-users@lists.ettus.com>; Sat,  3 Feb 2024 12:14:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DHKc7i9n";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a26fa294e56so432433666b.0
        for <usrp-users@lists.ettus.com>; Sat, 03 Feb 2024 09:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706980460; x=1707585260; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e5oBm1Tz1aWcnjHMGj4wiMPvsZuwWWMOgm+hRZG5Euo=;
        b=DHKc7i9nbi2YiL7zvwA3/241H8QmQjtsHuk4u9Ns/fDAm9EZV9LUrA0inSuTsRNNln
         I1jHiaRuVxjT40GY91150Dn8TXU1dOooXornldjUQcNc6kcMpO3Q3kQhj3JbVCtkLR0X
         vyrxE5+ZS9vXrm5IaGtdB89acFL8gonsre6X91P9iKi5bHVLYcdIqk55aZ/tFwmWZuL9
         wzmgQdbGKy0v7HO/5NaGfTMPluYcBwqGDfeg8oOJfHULF3AdVhDDzthngjbK1zUSMQoV
         jMxrVVjFHmc6pu44WB7UKMJ5h9AdKBg+Zagp3KuvnlIu4OAGAsVB+ZfW04H860S/w/3c
         kKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706980460; x=1707585260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e5oBm1Tz1aWcnjHMGj4wiMPvsZuwWWMOgm+hRZG5Euo=;
        b=Mi9JR56JaE01s58dPye05yYB7iqRB5uVlBZxaiSj1UE8Uul3IsJF0wvWBrSmizf5mJ
         BjZrGglYplM/YlSOO9q639PAUYzBRSVpE0/eIvCJPTsIEJbzjuwp+5B491qDLQ4flo3w
         sfeYNuR4cwZNpUf2oMYFcVwVot0E+iTvl6Zslikjt+ag1z1iYiQgdBdLIsehYSGGIWkT
         CMgTN2qklq49kzKsFVIErVVO2ppk5vajV1AxGb5lJEf8eOPbkSjjCAFtE9/tQ9hJI+eg
         xQUng4wYiq1Kgf8/9qm6eVgnbxh2+UA+5nceWNAowYPBTAzfVm4/9VXqeLgzGcSbJp2O
         4H/Q==
X-Gm-Message-State: AOJu0Yxhbl054u2znPp8KOoYKprYxM0V3RThpdzc0Djq//GaofNBgl4k
	yeLSUifZqIxWAqEi2YdyAA9Tnn4uOUIPeg/atTv7ADte4Fs0qsBjl7dbe80SzSEMCmWwqsDcAzq
	TS2w7tR3vk6yh1H+/hwRoYfFaRTJnzSk/KQA=
X-Google-Smtp-Source: AGHT+IFw94fdIApXRT/cgX8xtU6gQxiI5L2GCZL1tKmcyglShKRUdWQIfHeLiNAgyxCw/Ajb8nY9x/MFM7yUMffeApY=
X-Received: by 2002:a17:906:c782:b0:a31:83a2:463c with SMTP id
 cw2-20020a170906c78200b00a3183a2463cmr8880587ejb.34.1706980459528; Sat, 03
 Feb 2024 09:14:19 -0800 (PST)
MIME-Version: 1.0
References: <NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg@lists.ettus.com> <865a09b1-dcd6-4182-ab49-1f33273abf27@ettus.com>
In-Reply-To: <865a09b1-dcd6-4182-ab49-1f33273abf27@ettus.com>
From: Mark Gannet <mgannet@gmail.com>
Date: Sat, 3 Feb 2024 09:14:08 -0800
Message-ID: <CABL+oDYLeKnmvTe0+2nRoo7W7bJVLEMXU+8LLr1K1pJjcZxx=w@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: DI3TLDWLW7AZICE435GQW6QPXSUQ3564
X-Message-ID-Hash: DI3TLDWLW7AZICE435GQW6QPXSUQ3564
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 BasicRX Daughterboard GPIO pins in Ethernet Payload
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DI3TLDWLW7AZICE435GQW6QPXSUQ3564/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7501304280820540516=="

--===============7501304280820540516==
Content-Type: multipart/alternative; boundary="000000000000edc7e706107d5b3c"

--000000000000edc7e706107d5b3c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for your reply.  I've looked into this some more and here is what
I think I know about the db_gpio and rx_data and which modules they are
routed to.  They are both obviously found in the x300_core.

*db_gpio_pins:*
*x300_core --> db_control (x300_core submod) --> gp_atr (db_control submod)=
*

*rx_data:*
*x300_core --> fe_core (x300_core submod) --> bus_int (x300_core submod)
--> rfnoc_image_core (bus_int submod) --> rfnoc_radio (rfnoc_image_core
submod) --> rfnoc_ddc (rfnoc_image_core submod)*

I calculate I have two options here.  Both rely on getting db_gpio_pins to
bus_int, which I've already done.


   1. Switch the db_gpio_pins to the rx_data within bus_int.  I believe
   this would require a setting_reg block in bus_int that would control
   whether the rx_data or db_gpio_pins are connected to the rfnoc_image_cor=
e
   radio_rx_data inputs.  It could be controlled via the uhd cpp API with
   proper modifications.
   2. Create and rfnoc block that with a static connection with 2 inputs
   and 1 output to the SEP.  The 2 inputs would be: (1) rx_data at the outp=
ut
   of the DDC rfnoc block and (2) db_gpio_pins that would be at the input t=
o
   the rfnoc_image_core.  Because x310_rfnoc_image_core.v is generated from
   YAML files, I'd have to figure out which YAML need to be modified to cre=
ate
   db_gpio_pins at the input when rfnoc_image_builder is executed.  This
   switching would be controlled from ctrlport I think.  Would need more
   research on this.

Option 1 would be outside rfnoc while option 2 is inside.

Thanks,
Mark

On Mon, Jan 29, 2024 at 7:17=E2=80=AFAM Marcus M=C3=BCller <marcus.mueller@=
ettus.com>
wrote:

> Hello Mark,
>
> I'm afraid there isn't a straightforward way of doing that; can't really
> think of a way
> that would enable that short of inventing another "radio block"-style
> RFNoC core that
> handles these GPIOs as separate channels; and that would be a pretty big
> endeavour.
>
> Best,
> Marcus
>
> On 17.01.24 22:27, mgannet@gmail.com wrote:
> >
> > Greetings,
> >
> > With the UHD 4.x and the radio being a block in the RFNOC, is there a
> way to write the
> > signals input to the GPIO pins of a BasicRX daughterboard to the
> Ethernet payload? I
> > understand they can be used to control the radio, but I=E2=80=99d like =
to see
> their state in an
> > output binary stream (such as chA.dat) on a host machine.
> >
> > In UHD 3.9, our FPGA source was modified to accomplish this. That sourc=
e
> was
> > significantly different as it appears to pre-date the RFNOC. The
> gpio_atr module was a
> > submodule instantiated under the radio module all inside the x300_core.
> But now it
> > appears the gpio_atr instantiation is outside of the rfnoc_radio_block
> instance.
> >
> > Thank you,
> >
> > Mark Gannet
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000edc7e706107d5b3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thank you for your reply.=C2=
=A0 I&#39;ve looked into this some more and here is what I think I know abo=
ut the db_gpio and rx_data and which modules they are routed to.=C2=A0 They=
 are both obviously found in the x300_core.</div><div><br></div><div><u>db_=
gpio_pins:</u></div><div><b>x300_core --&gt; db_control (x300_core submod) =
--&gt; gp_atr (db_control submod)</b></div><div><u><br></u></div><div><u>rx=
_data:</u></div><div><b>x300_core --&gt; fe_core (x300_core submod) --&gt; =
bus_int (x300_core submod) --&gt; rfnoc_image_core (bus_int submod) --&gt; =
rfnoc_radio (rfnoc_image_core submod) --&gt; rfnoc_ddc=C2=A0(rfnoc_image_co=
re submod)</b></div><div><b><br></b></div><div>I calculate I have two optio=
ns here.=C2=A0 Both rely on getting db_gpio_pins to bus_int, which I&#39;ve=
 already done.</div><div><br></div><div><ol><li>Switch the db_gpio_pins to =
the rx_data within bus_int.=C2=A0 I believe this would require a setting_re=
g block in bus_int that would control whether the rx_data or db_gpio_pins a=
re connected to the rfnoc_image_core radio_rx_data inputs.=C2=A0 It could b=
e controlled via the uhd cpp API with proper modifications.</li><li>Create =
and rfnoc block that with a static connection with 2 inputs and 1 output to=
 the SEP.=C2=A0 The 2 inputs would be: (1) rx_data at the output of the DDC=
 rfnoc block and (2) db_gpio_pins that would be at the input to the rfnoc_i=
mage_core.=C2=A0 Because x310_rfnoc_image_core.v is generated from YAML fil=
es, I&#39;d have to figure out which YAML need to be modified to create db_=
gpio_pins at the input when rfnoc_image_builder is executed.=C2=A0 This swi=
tching would be controlled from ctrlport I think.=C2=A0 Would need more res=
earch on this.</li></ol><div>Option 1 would be outside rfnoc while option 2=
 is inside.</div></div><div><br></div><div>Thanks,</div><div>Mark</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Jan 29, 2024 at 7:17=E2=80=AFAM Marcus M=C3=BCller &lt;<a href=3D"mailt=
o:marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Hello Mark,<br>
<br>
I&#39;m afraid there isn&#39;t a straightforward way of doing that; can&#39=
;t really think of a way <br>
that would enable that short of inventing another &quot;radio block&quot;-s=
tyle RFNoC core that <br>
handles these GPIOs as separate channels; and that would be a pretty big en=
deavour.<br>
<br>
Best,<br>
Marcus<br>
<br>
On 17.01.24 22:27, <a href=3D"mailto:mgannet@gmail.com" target=3D"_blank">m=
gannet@gmail.com</a> wrote:<br>
&gt;<br>
&gt; Greetings,<br>
&gt;<br>
&gt; With the UHD 4.x and the radio being a block in the RFNOC, is there a =
way to write the <br>
&gt; signals input to the GPIO pins of a BasicRX daughterboard to the Ether=
net payload? I <br>
&gt; understand they can be used to control the radio, but I=E2=80=99d like=
 to see their state in an <br>
&gt; output binary stream (such as chA.dat) on a host machine.<br>
&gt;<br>
&gt; In UHD 3.9, our FPGA source was modified to accomplish this. That sour=
ce was <br>
&gt; significantly different as it appears to pre-date the RFNOC. The gpio_=
atr module was a <br>
&gt; submodule instantiated under the radio module all inside the x300_core=
. But now it <br>
&gt; appears the gpio_atr instantiation is outside of the rfnoc_radio_block=
 instance.<br>
&gt;<br>
&gt; Thank you,<br>
&gt;<br>
&gt; Mark Gannet<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000edc7e706107d5b3c--

--===============7501304280820540516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7501304280820540516==--
