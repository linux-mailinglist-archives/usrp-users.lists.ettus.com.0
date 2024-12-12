Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA16C9EEE57
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 16:56:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C144386152
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 10:56:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734018974; bh=UaJmtXU4XOzviJDugO915hvNIk2msm9l3mk9hJi43u4=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=yyhwwTDusBuTpppaMHuZjHigT2hSGPKDlIdSls92IkwX2bClP1hAe2iqVrVacbFfs
	 dyE4ZHl1lP0eQ2WdJmAIYRKdt7qgf9JdQqt+LKx/kIMT70VMWSVqLdD+6LTwzUZhN5
	 FUWlbulSShTI2Tcy5EHnk/GoHI1CekItX6A7vYK9fD3FACOogGXE9JnM5pkB4AV1Kb
	 Yae/bEXToVwpmm1fi8IxA1fv1RavFGmUMsYEPYBcvStqyD04szAkkUIu1Bk4PNk5xH
	 nYY800VHsSTdNf4NkpxGsgzIu+AwZ0BbnzJXwjxWY/VN8TayuoFlxMAcZW5qejM3WV
	 5UN/y+pGf1H/g==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C9F74385F6E
	for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 10:55:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="LS2A8VZU";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d414b8af7bso1497826a12.0
        for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 07:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1734018942; x=1734623742; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kBkj8FoPLjHYjq/XXy6Orlp0mjsFIr213enB91FFFY0=;
        b=LS2A8VZUkWhUbD1btiY3X12Wyx8b9xpg21/gYj6QfRaz1WHPrnEWesRi+LGzAmAMNm
         ueIpwBPfI+7xIFxOz5peQxdIlgCTFxcS3xKAPtDWWrJRNHdcmKt0rkinhp3VjuBl2H/S
         evJJV7GTmpO8cK4F5DSm74PgJiW/OuiiSZkxCASgLmxYER45xxX3pgsgjsag6WKg9h5H
         F40V3Mzv6bl4P5TpMtyEknUILRmsltOBGCfuAeslzRXXreV8UOwgsoRZLT2xAxxLfZj9
         3zeyNvxh5SoP0YiBB3YPBy41zej7bub80wNggwiUPBUsTOiZPjsvuLk+3Dv6n7dep2Ii
         UGxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734018942; x=1734623742;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kBkj8FoPLjHYjq/XXy6Orlp0mjsFIr213enB91FFFY0=;
        b=alg724nGEv9qedT0bcGOm9+e5ovNYnPXpTEcX4mKqBHeGyAhZ3RnAwbDimhfQ7geav
         FWGvNDsGBrUThem64JbdJRu4V96CHKv0I1S0UIph6SqAIqv9MmjENag29eUyKMF2FK5t
         5yXs+BJimYj5r3DqqB6bjw7iELV03a8mrRYnn95VaBO1LigLRzntaay24bEByZUUOaZp
         q2WhmyJHcDfgyzA4fyCWTk4hUzKmAdpo1dLYNv3zUEnfu13xEIyGvKs39bXDyc6X4Nbv
         Vn91LMd39afHyNN8veK46rMcl7UYnw64VTnPncxjXSabRxjWskvjFJZ7xNTtVM+ANpl4
         6ycA==
X-Forwarded-Encrypted: i=1; AJvYcCULCA89jwqth+jzz//MT20X3d17AqBFNG3ObgZNG+VxvE2FmxtrWdSFJNajZSW+QOHY4n1K27k+aegd@lists.ettus.com
X-Gm-Message-State: AOJu0Yx++XG4YFXzpjjzLUXLVPD+4SZRjIyDnQs1hEhnjRL+G8EmeZVn
	+cYdlrAYGf0xj/pyrHTndyiS3tWtkqYG5GZ+ahmAaTILGboBGKJalsAPwkOd8D5grBxfoDIPMyu
	cdfp5508ZVqisHseXZo4pWHjb+n/7aVihhVKl
X-Gm-Gg: ASbGncvFnOV3Xk4T6B0BuabFsDrYjB5jkf8Od78vh2Uj04JWADr1pyu7H9c28j9ugDv
	efyUqHAENN2ZnvLknsrZL9v14z7L/DHZyIe+j57aL
X-Google-Smtp-Source: AGHT+IGqjF1+xqjErpxge3ZoE7dAo0Jb30XWI1Eqt3f15vpihibULWV2oXl9IPjjgXE9yvKsrUzh3HjxkR0FyrOmLmE=
X-Received: by 2002:a05:6402:40c9:b0:5d3:bc1d:e56b with SMTP id
 4fb4d7f45d1cf-5d632392a6amr893289a12.16.1734018941562; Thu, 12 Dec 2024
 07:55:41 -0800 (PST)
MIME-Version: 1.0
References: <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
 <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAB__hTQ8c4MJVgg5=Pk23WBhV1GcBGxZxNiPV9smFp4hOpu4+w@mail.gmail.com>
 <PN3P287MB0291D3C9F48236B62CE3A2C7933F2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAFOi1A7E8ZwMHBCE4z6RY7Q_JT3zEhTWmVoxAYHyvVMDM72P6g@mail.gmail.com>
 <PN3P287MB0291EB2CACDDD4E09694A4DC933F2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAFOi1A5RqM_WeRQ9+UWLCsNXKpQWoN=Fud0EQPDaLAtq7nSu7w@mail.gmail.com>
 <PN3P287MB02917F1780817A14FD9E017B933F2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAFOi1A6ncQGeOhR5z3dXamyKS1u5dWrbW_s0dLUMLmhgEXho+w@mail.gmail.com> <PN3P287MB0291513A755513697AB03087933F2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <PN3P287MB0291513A755513697AB03087933F2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
Date: Thu, 12 Dec 2024 09:55:29 -0600
Message-ID: <CAB__hTT9VJUbT53snqORKzPxwav_VkTbDfhARVc=yWJHLy-67w@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: XITRQZPEO7EXP4GPZVPROA3UCXRUS5FO
X-Message-ID-Hash: XITRQZPEO7EXP4GPZVPROA3UCXRUS5FO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with Starting Transmitter on USRP N300 without Using Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XITRQZPEO7EXP4GPZVPROA3UCXRUS5FO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5781274395195386113=="

--===============5781274395195386113==
Content-Type: multipart/alternative; boundary="0000000000000bd383062914bf82"

--0000000000000bd383062914bf82
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As a test case, perhaps try a graph where the Tx and Rx channels are not
the same.

On Thu, Dec 12, 2024 at 7:04=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Tried the way you suggested. Still getting same error. Please check if
> it's correct.
>
>
> ------------------------------
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Thursday, December 12, 2024 6:08 PM
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Issue with Starting Transmitter on USRP N300
> without Using Streamers
>
> I don't have access to an N300, so I can't test it for you.
>
> One thing you can do is to generate the flow graph (don't run it!) and
> open the generated Python code in an editor.
> You will find a section like this:
>
>         ##################################################
>         # Connections
>         ##################################################
>         self.msg_connect((self.blocks_var_to_msg_0, 'msgout'),
> (self.uhd_rfnoc_rx_radio_0, 'command'))
>         self.rfnoc_graph.connect(self.uhd_rfnoc_ddc_0.get_unique_id(), 0,
> self.uhd_rfnoc_duc_0.get_unique_id(), 0, False)
>         self.rfnoc_graph.connect(self.uhd_rfnoc_duc_0.get_unique_id(), 0,
> self.uhd_rfnoc_tx_radio_0.get_unique_id(), 0, rx_slot =3D=3D tx_slot)
>
> self.rfnoc_graph.connect(self.uhd_rfnoc_rx_radio_0.get_unique_id(), 0,
> self.uhd_rfnoc_ddc_0.get_unique_id(), 0, False)
>         self.connect((self.blocks_null_source_0, 0),
> (self.blocks_throttle2_0, 0))
>         self.connect((self.blocks_throttle2_0, 0),
> (self.blocks_null_sink_0, 0))
>
> Where we have the rfnoc_graph.connect() calls, you can see the back-edge
> argument towards the end. If you've set tx_slot and rx_slot to 0 (for an
> N300), then this should evaluate to True. You could try manually setting
> this to true, then running the Python code directly (not from GRC, or it
> will overwrite your code unless you copy the generated code to the side)
>
> --M
>
> On Thu, Dec 12, 2024 at 12:38=E2=80=AFPM Nidhi Panda <nidhi.panda@cyronic=
s.com>
> wrote:
>
> Hello Martin,
>
> Thank you for your prompt reply. I have updated ' dev_addr' for N300 and
> tested the example. It failed by giving  error :
>
> *RuntimeError: RfnocError: Adding edge without disabling is_forward_edge
> will lead to unresolvable graph!. * between RX radio and DDC chain.
>
> I have updated the sample rate and bandwidth parameters as per N300
> specifications i.e. SR =3D 125 Mhz and  BW =3D 100 Mhz. Is there any way =
you
> can check this example for N300 at your end?
>
> Regards,
> Nidhi
>
> ------------------------------
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Thursday, December 12, 2024 4:59 PM
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Issue with Starting Transmitter on USRP N300
> without Using Streamers
>
> On Thu, Dec 12, 2024 at 11:21=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronic=
s.com>
> wrote:
>
> Yes, I am currently testing with this example (rfnoc_radio_loopback.grc
> <https://github.com/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc=
_radio_loopback.grc>)
> only. However, the example was for x300 and I am testing in n300 board.
> The example works only if rx and tx streamer is present i.e. for the
> following chain.
>
>
> Hi Nidhi,
>
> the example has no Tx or Rx streamers, nor does it require them. If you
> update the `dev_addr` variable as explained in the comment, I would expec=
t
> this example to work out of the box with an N310 device.
>
> Note that the N310 does not support a 200 Msps rate, so you will need to
> change that also (e.g., to 125 Msps).
>
> [image: image.png]
>
>
> --M
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000bd383062914bf82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As a test case, perhaps try a graph where the Tx and Rx ch=
annels are not the same.</div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 12, 2024 at 7:04=
=E2=80=AFAM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com">nid=
hi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div class=3D"msg3953354625724105224">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Tried the way you suggested. Still getting same error. Please check if it&#=
39;s correct.<br>
<br>
<br>
</div>
<div id=3D"m_3953354625724105224appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_3953354625724105224divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank=
">martin.braun@ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, December 12, 2024 6:08 PM<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: Issue with Starting Transmitter on USRP N3=
00 without Using Streamers</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>I don&#39;t have access to an N300, so I can&#39;t test it for you.</d=
iv>
<div><br>
</div>
<div>One thing you can do is to generate the flow graph (don&#39;t run it!)=
 and open the generated Python code in an editor.</div>
<div>You will find a section like this:<br>
</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ##########################################=
########<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Connections<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ###############################################=
###<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.msg_connect((self.blocks_var_to_msg_0, &#3=
9;msgout&#39;), (self.uhd_rfnoc_rx_radio_0, &#39;command&#39;))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rfnoc_graph.connect(self.uhd_rfnoc_ddc_0.g=
et_unique_id(), 0, self.uhd_rfnoc_duc_0.get_unique_id(), 0, False)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rfnoc_graph.connect(self.uhd_rfnoc_duc_0.g=
et_unique_id(), 0, self.uhd_rfnoc_tx_radio_0.get_unique_id(), 0, rx_slot =
=3D=3D tx_slot)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rfnoc_graph.connect(self.uhd_rfnoc_rx_radi=
o_0.get_unique_id(), 0, self.uhd_rfnoc_ddc_0.get_unique_id(), 0, False)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks_null_source_0, 0), (s=
elf.blocks_throttle2_0, 0))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks_throttle2_0, 0), (sel=
f.blocks_null_sink_0, 0))</div>
<div><br>
</div>
<div>Where we have the rfnoc_graph.connect() calls, you can see the back-ed=
ge argument towards the end. If you&#39;ve set tx_slot and rx_slot to 0 (fo=
r an N300), then this should evaluate to True. You could try manually setti=
ng this to true, then running the Python
 code directly (not from GRC, or it will overwrite your code unless you cop=
y the generated code to the side)
</div>
<div><br>
</div>
<div>--M<br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Dec 12, 2024 at 12:38=E2=80=AFPM Nidhi Panda &lt;<=
a href=3D"mailto:nidhi.panda@cyronics.com" target=3D"_blank">nidhi.panda@cy=
ronics.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hello Martin,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thank you for your prompt reply. I have updated &#39; dev_addr&#39; for N30=
0 and tested the example. It failed by giving=C2=A0 error :</div>
<div style=3D"font-size:12pt"><br>
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:b=
lack">
<i>RuntimeError: RfnocError: Adding edge without disabling is_forward_edge =
will lead to unresolvable graph!.
</i><code style=3D"font-family:Arial,Helvetica,sans-serif">=C2=A0between </=
code>RX<code style=3D"font-family:Arial,Helvetica,sans-serif">=C2=A0radio a=
nd DDC chain.</code></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
I have updated the sample rate and bandwidth parameters as per N300 specifi=
cations i.e. SR =3D 125 Mhz and=C2=A0 BW =3D 100 Mhz. Is there any way you =
can check this example for N300 at your end?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Nidhi</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_3953354625724105224x_m_8065435396634500079appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_3953354625724105224x_m_8065435396634500079divRplyFwdMsg" dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font=
-size:11pt"><b>From:</b> Martin Braun &lt;<a href=3D"mailto:martin.braun@et=
tus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, December 12, 2024 4:59 PM<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: Issue with Starting Transmitter on USRP N3=
00 without Using Streamers</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">On Thu, Dec 12, 2024 at 11:21=E2=80=AFAM Nidhi Panda &lt;<=
a href=3D"mailto:nidhi.panda@cyronics.com" target=3D"_blank">nidhi.panda@cy=
ronics.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
Yes, I am currently testing with this example (<a href=3D"https://github.co=
m/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_radio_loopback.grc"=
 id=3D"m_3953354625724105224x_m_8065435396634500079x_m_-5849102392938716213=
LPlnk" title=3D"https://github.com/gnuradio/gnuradio/blob/main/gr-uhd/examp=
les/grc/rfnoc_radio_loopback.grc" rel=3D"noopener noreferrer" target=3D"_bl=
ank">rfnoc_radio_loopback.grc</a>)
 only. However, the example was for x300 and I am testing in n300 board.=C2=
=A0 The example works=C2=A0only if rx and tx streamer is present i.e. for t=
he following chain.</div>
</div>
</div>
</blockquote>
</div>
<div><br>
</div>
<div>Hi Nidhi,</div>
<div><br>
</div>
<div>the example has no Tx or Rx streamers, nor does it require them. If yo=
u update the `dev_addr` variable as explained in the comment, I would expec=
t this example to work out of the box with an N310 device.</div>
<div><br>
</div>
<div>Note that the N310 does not support a 200 Msps rate, so you will need =
to change that also (e.g., to 125 Msps).</div>
<div><br>
</div>
<div><img alt=3D"image.png" width=3D"561" height=3D"220"><br>
<br>
</div>
</div>
<div><br>
</div>
<div>--M<br>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000000bd383062914bf82--

--===============5781274395195386113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5781274395195386113==--
