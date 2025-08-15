Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F107B2885E
	for <lists+usrp-users@lfdr.de>; Sat, 16 Aug 2025 00:37:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDC78386BE3
	for <lists+usrp-users@lfdr.de>; Fri, 15 Aug 2025 18:37:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755297424; bh=6aALNfIuOesxjbE5enVFUf8RWHk6tM3yxFDJo6B10Jo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WDd6mX1ZrphMG+mQRW/lNi1jyF81V1AjxTxuspHGj2LxDwy5awvwPaOhTiksp5MBq
	 nivKSqSvVsO2myR+Mb+6EQn7U1cmFJzG/EMrOzWJu+tvAtPkpegOjbHza1jkZ7OESS
	 gi+BHujA6kd+JoM0I4kdE/ZhZo27hXyPWG3A9zM/slwtIJI4aUzcL6WU7ARiXeRdx0
	 Zq7dIPyoNczW1HXZslTiX8+zoU0yBHwLiL8rJ+UwghjjUx1JJI9I2SWudijxQbcGAh
	 BweTSkSmoYOEDZer3I+lYnZLZFjFS+BBRemA28NDMQAGT0gdt4ZCLA2SAkF0uWwejn
	 ss0Om/EneoYJw==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id DDD7B386A72
	for <usrp-users@lists.ettus.com>; Fri, 15 Aug 2025 18:36:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LaZ3XCr+";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afcb6856dfbso427533766b.1
        for <usrp-users@lists.ettus.com>; Fri, 15 Aug 2025 15:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755297387; x=1755902187; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wylRcGQaCMUZAfNpSoyM4W+Z4D+hTLJd1yrXrpPlmj8=;
        b=LaZ3XCr+13EdpBgdvX8bTk88XnTpCoZQ0JEj7x5Bzp1zmE7zZ+Yt7i7nSTT8XMCzN5
         MStHbbOX+11T/BTzEm/3eQIkdwCbNuHklFCAFRDCJ0M5/t+Zn620OfihBi59CayRNhDw
         4LqKyh3J97cWsVqeH+DObX9N9OGYhbpoD89R0TZ0ZDyezfdc8l+2LB0pPnLzFXu37r1H
         S30VPOWzGa610IUcgxInrKNxPhSeBWyg8nwzvWSpp3XpgRbk6s6L2OPmkDM+AGqhMhnJ
         MxaPRI17ZBUYez3ZTgpX4VvGhC5bC2I0WyAAMlrQOAvBlt/1rOUgU7fK81yNnkyinaJJ
         dCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755297387; x=1755902187;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wylRcGQaCMUZAfNpSoyM4W+Z4D+hTLJd1yrXrpPlmj8=;
        b=IAJB5sfsXmyJFG53ezBpDobj6GL+jGZyHxZOkNgm3O+iMVGYl+f6myultMJ8sWebHf
         qjjL4Kvlhlv/bAj3wOSn0ezn9Fhl1ORQ/8Qb1BlbKJSR7m6QGyxRyDzOwkXULU6kp4Bg
         Ge9I6hydma+lhcjwF6ihD1TzmC4tqEHKSRgs71CsR+LEucd8lNLo37hiK9NjGihSzAmp
         70jeMz3glNPl+fF0AqaGYpQAYmK6YhyLi7VgrtbBkstaY5KxpG387pn6hkpBuGXaJp/H
         GQ8Dl5hoJNwH9tr9xs5BQy6TWYEtrsrVt+dO974eMkELntLWezP4J+3DHnIumfrDsBTd
         HtCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmNHGCaag59begmVM/pZ+c4XKwTZnIV2TlOO1icGlZcymB9S4fNFyvNlUxc702B/birpPfb8sD+AdU@lists.ettus.com
X-Gm-Message-State: AOJu0YwpV/L3bS+bZlqUZrkxfg53SZdlJRM9CNOt1++WfzKhMJTY8Nm5
	2DudLYcaDk4qHyPhUZnEmF1iLD0+zj6jkbCjhh/wQUoZo/4zBn0SEHtORq7laNaJeeL3Ms8kAoX
	RENar0KET/6EPU9emb/shwm0n6kd5jUY=
X-Gm-Gg: ASbGnctUmWprMvo1SSb2CIOy7rHs6gxO0atY+lCIzA1nR2RPpGONPULhpR/9ESAhKcS
	vSpbxuw2w0AS3HXLMDBBS77h4BmadELpF4IOHQXj/64qMpSJ3bL+pVxLKfVVUQxHpSFaecR0V0D
	p0HPoGcRYAoka6hw5of2FaJZWeXxcu7QkGu+dBC6ITI7+WG4YmU5WTFk8i6mcUdvsq7uX1XJxWA
	oGCNBM=
X-Google-Smtp-Source: AGHT+IGyexTuY8T9bK6CdMWn1a8XLxwDxhnTzWnZ5qm7OGkUIll6whAUeaxe7rScsE0dVsJ+dyqeqTbue1R/4ST/lf0=
X-Received: by 2002:a17:907:7e99:b0:ad8:91e4:a931 with SMTP id
 a640c23a62f3a-afcdb2dc6cemr330327966b.26.1755297386355; Fri, 15 Aug 2025
 15:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
 <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com>
 <CAEXYVK4FTzzmwiCNEQzVdSfF66a+NhjbRM6V4_40Uicg_kpfhg@mail.gmail.com>
 <CAAxXO2G60mr+mUap+zjGzEx3a6T8CC3V6NeL7TCUc97Yr318pQ@mail.gmail.com>
 <CAEXYVK6TgKm5MTFc_EPEMd50Ebhxz4W=jCrDbMx7iDRhMVP_fQ@mail.gmail.com>
 <CAFche=i--MQDHUPcdycfvUmOFf2HOfs9qi3PP=3aiO+HNmzBcQ@mail.gmail.com> <CAEXYVK4+ZouRGm-YU7LoK8qA_pPVid7cRRTgb04B6rxX2Nd-kg@mail.gmail.com>
In-Reply-To: <CAEXYVK4+ZouRGm-YU7LoK8qA_pPVid7cRRTgb04B6rxX2Nd-kg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 15 Aug 2025 18:36:15 -0400
X-Gm-Features: Ac12FXwL2qBnEV8JFM-V5IzYyHENICsrwtoqG4pwyOtb2YDw22uCuCUKPGJKKWI
Message-ID: <CAEXYVK5f0_TQroYJbwOhFfovojer+-pt9NPWb15TXDSmy_kd8A@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: 46KNWUVSW2JZHPCOOGHW3FKICDFUGBH3
X-Message-ID-Hash: 46KNWUVSW2JZHPCOOGHW3FKICDFUGBH3
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/46KNWUVSW2JZHPCOOGHW3FKICDFUGBH3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0896772320547760419=="

--===============0896772320547760419==
Content-Type: multipart/alternative; boundary="000000000000305f06063c6f05e4"

--000000000000305f06063c6f05e4
Content-Type: text/plain; charset="UTF-8"

>
>
> Good luck traveling. I'll update this thread when I figure out more today.
>

More details:
  - My block had a bug which caused CHDR packets to back up so
tready coming out of my block and over to the crossbar was being deasserted
(note: I don't think this should cause general system mayhem just issues
for my block)
  - The single CTRL port was associated with the backed up endpoint. This
means that the garbage CHDR packets were clogging up the pipeline during
initialization causing the management packets to get stopped in their
tracks and never get to the endpoint.
  - The eth_ipv4_chdr_dispatch module has a state machine to detect when to
drop packets since the 100g can't hold off. Here, the IDLE state goes
directly into a DROP state when there is a chdr_push_error (i.e. CHDR
downstream is backed up)

I think the logic in the eth_ipv4_chdr_dispatch module causes the CPU bound
packets (i.e. arp or pings or ssh or whatever) to get dropped once the CHDR
pipeline is all backed up, and I think this is undesirable behavior.

I see downstream there is the axi4s_packet_gate which will drop the packets
that have corrupted contents and the in2 stream gets fanned out to both of
the packet gates.

I think that first if statement here could be removed:


https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/eth_ipv4_chdr_dispatch.sv#L328

... since the error conditions are kept around until a tlast is pushed into
the packet gate?

With that being said, is there a reason why we can't just issue the error
flag along with the tlast data coming out and not worry about it in the
state machine itself? It looks like in axi_packet_gate that i_terror is
only checked with i_tlast anyway, so could this whole thing be simplified a
little bit?

Just thinking out loud here. Any insights would be appreciated.

Thanks,
Brian

>

--000000000000305f06063c6f05e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_quote"><div><br></div><div>Good luck traveling. I&#39;ll update this thr=
ead when I figure out more today.</div></div></div></blockquote><div><br></=
div><div>More details:</div><div>=C2=A0 - My block had a bug which caused C=
HDR packets to back up so tready=C2=A0coming out of my block and over to th=
e crossbar was being deasserted (note: I don&#39;t think this should cause =
general system mayhem just issues for my block)</div><div>=C2=A0 - The sing=
le CTRL port was associated with the backed up endpoint. This means that th=
e garbage CHDR packets were clogging up the pipeline during initialization =
causing the management=C2=A0packets to get stopped in their tracks and neve=
r get to the endpoint.</div><div>=C2=A0 - The eth_ipv4_chdr_dispatch module=
 has a state machine to detect when to drop packets since the 100g can&#39;=
t hold off. Here, the IDLE state goes directly into a DROP state when there=
 is a chdr_push_error (i.e. CHDR downstream is backed up)</div><div><br></d=
iv><div>I think the logic in the eth_ipv4_chdr_dispatch module causes the C=
PU bound packets (i.e. arp or pings or ssh or whatever) to get dropped once=
 the CHDR pipeline is all backed up, and I think this is undesirable behavi=
or.</div><div><br></div><div>I see downstream there is the axi4s_packet_gat=
e which will drop the packets that have corrupted contents and the in2 stre=
am gets fanned out to both of the packet gates.</div><div><br></div><div>I =
think that first if statement here could be removed:</div><div><br></div><d=
iv>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master/=
fpga/usrp3/lib/rfnoc/xport_sv/eth_ipv4_chdr_dispatch.sv#L328">https://githu=
b.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/eth_ipv4_=
chdr_dispatch.sv#L328</a></div><div><br></div><div>... since the error cond=
itions are kept around until a tlast is pushed into the packet gate?</div><=
div><br></div><div>With that being said, is there a reason why we can&#39;t=
 just issue the error flag along with the tlast data coming out and not wor=
ry about it in the state machine itself? It looks like in axi_packet_gate t=
hat i_terror is only checked with i_tlast anyway, so could this whole thing=
 be simplified a little bit?</div><div><br></div><div>Just thinking out lou=
d here. Any insights would be appreciated.</div><div><br></div><div>Thanks,=
</div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div></div>

--000000000000305f06063c6f05e4--

--===============0896772320547760419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0896772320547760419==--
