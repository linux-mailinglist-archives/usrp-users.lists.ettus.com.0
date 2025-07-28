Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A568EB13DA4
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jul 2025 16:50:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02FA7386360
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jul 2025 10:50:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753714203; bh=45GTejmcrAGPPArEE8VB4iVoiKN/jMsi//U8nr51w+I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=m/0wt9exq669bXkWRJ4BxjyPaQoqHv6UG5ov2K32WCQ5dP/GlhuJwPCheZdd7jNwG
	 ZzFzW1KgfuUDgN1zbyw42AHIKl77yW4kN6N7k6Hf+5GU7d1A2odqt1VuRxm2AuCPA6
	 j3duonKBBvO8Ltou2l4LlCWUE7YVBM2KCDmNo1hsnfaJvWcBLVholH1aXecHyD721j
	 31JnySrg4mk7GEQiHFcJiqqpgGsBDMWRp4Nfjkq+ISHZukx9Q9PlV5XG86nXvPoSgo
	 8IxWa3N24wgMDX2CK5yIauegMbgsHuo/ujAo98ZPPL6wzE/+SUsFP8Rvpyu3lSjE9Y
	 sJMad7F3OhVGg==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 5935C3862D2
	for <usrp-users@lists.ettus.com>; Mon, 28 Jul 2025 10:49:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g5NKxD/9";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ae3703c2a8bso944416366b.0
        for <usrp-users@lists.ettus.com>; Mon, 28 Jul 2025 07:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753714162; x=1754318962; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1FAdDzZnA9AYsnuaf4I6JrJGt6BVMyzysMg5VA+D9Ag=;
        b=g5NKxD/9OrfIhsSCgd7Xn8Ebk0dZLjDDuTMnOirkF3rapj+zHc1fOvQe14kL1fNIeA
         Cf0mTjK2rM73SaQhfQrl8z1vmLoSF91aU9poni+lI7n5EUjOvrGcw8Jhh0vjYGw1HI6K
         Zs4WBgdpo231dvLvDcepfAdw9JMgGcmAQ5QnOmE64LhgChOJz65CeQYO7BLZZBJSv+aH
         lwJzXXHSODIKcUI+/vamdXBhBqVXpxwaUTfDqEqoVSUiUra0Gj60fZ4K101TpSsPG43u
         F4OtGe4I4PDqifv+uFFOwqwEmYeRLWUM0dvnne6gG2qHych8XcXpOpfC7KRCAZE2qDm2
         HhIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753714162; x=1754318962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1FAdDzZnA9AYsnuaf4I6JrJGt6BVMyzysMg5VA+D9Ag=;
        b=tGFEaDqtVO0oJu+GFTRpgBX3YjosEOdjxeCihNHxMjOKExuhYYwoEZoj5sbgIjsjwR
         IIyGI8oNHsA2y7VURjnaD/VKnTUyL6ZHOi6H5wAek+CCVIm/MZvX3hcYF5Bd8MBb2gjy
         zID9fWJgS/3GIIQxKnplZASkW8fll8cLu6qxWbbwPT9FF4noACfvHfkCgEXHik6bYS7+
         kz63Ajr9wFKKXdvnahvZQ+QNJT9i40FUuVwT02BEIkQIdlKtqpV/E0zcwJF1oz50bRuW
         9VbIrOVwuZTyWwmA3jdoPuJwBtvyRldAgbSxg4nMC/UGQZ15C76tNuhtj/bQ18D8z9Lg
         S4vw==
X-Forwarded-Encrypted: i=1; AJvYcCUA3pIQWRtvwqEqkxMMMZa3KshUHGHYa6XgtB0EjDDXspamAcXtWOjwOaskeCvIfwt3VlZk9MktIRqJ@lists.ettus.com
X-Gm-Message-State: AOJu0YwZXgqCuDHsrFjhaVyVX4vMMIFtcZGJCRPhk+fTmUe7uWYhqo8I
	VyxbuVrWCJbkWtBF9TPahAtnsRZjXUUbfpqDGTJ3DFJW/10fFIUopR6SbAN/i6WqFoK2Tb2xWB/
	GK4rlOLRFo8+vIDNxYEQOL6wlCfEsCygghU0K
X-Gm-Gg: ASbGnctP9IuNCbOh7SVMFRIkkqz79G1EYNVdDMGnO0LYksHD57Q+8Ibr3GxlfuXuH9W
	klDwUpgDZBlWOJ8mPxO4ZwNKqYddr8rX+acEO727UWqqKdX1zWdqeCWAXvoHPgwHI0CTNHtpUWT
	iCRfVBhpOoJIdmSP/Izp05sgpli8+mS7tJwyEU4C7SIQds6X1hitcaUqinEQvTngTkkNUPffpPh
	IxkXBA=
X-Google-Smtp-Source: AGHT+IGGyqYKPoIOEwQvuYB3dyDauksflWcFGbZTl49GmStXF8YqIR8W1Z+iJs1raVSjjD2bZbJiD1cphBPeBYdl/SU=
X-Received: by 2002:a17:907:6d06:b0:ae0:c497:c5ca with SMTP id
 a640c23a62f3a-af6172096abmr1461206566b.3.1753714162034; Mon, 28 Jul 2025
 07:49:22 -0700 (PDT)
MIME-Version: 1.0
References: <111b29cda9ce4309b4966fcfcc3b7ece@vastech.co.za>
 <CAAxXO2HUxF7tDvb8_OzmZS4xat-SM=X_BMN465cvw5PzGQvQ+A@mail.gmail.com>
 <00b1e2cd914e4e87a81ed418f7fa142c@vastech.co.za> <CAFOi1A79w6Yn703f7V+Jwe2X0PpR7or7Vn1naNgWmhYY3kJm-g@mail.gmail.com>
 <45a2d2bfa5784898840a602a2b31db9c@vastech.co.za> <CAFOi1A7k0F=vs7bhSVQFjoQFvBg=nNtfyLxq_zJypMPJUp_uhg@mail.gmail.com>
 <a60e4a0ea3ec4a10b95d90103bd2a7f7@vastech.co.za> <CAFOi1A5oPd6pCJK8mh18Un=WDLGVYt+mGpQHp5J2UQR7xLNV+A@mail.gmail.com>
 <42dbe59d936f4847841d2f442a7ebdf8@vastech.co.za>
In-Reply-To: <42dbe59d936f4847841d2f442a7ebdf8@vastech.co.za>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 28 Jul 2025 10:49:10 -0400
X-Gm-Features: Ac12FXysXIDD7XDY7xYsfdwxFVx7Eb2BKrFpTXUjkNQvwG_4a1nKL_MQOlwouAU
Message-ID: <CAEXYVK4MN=aNyP201VqABP=xbfB7DuiXF3kVu3t_WwVhnrf8sg@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: RUAF33BUHLNDUNWDZQXEOBGX3LJXAQCQ
X-Message-ID-Hash: RUAF33BUHLNDUNWDZQXEOBGX3LJXAQCQ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: remote streaming starts, but stops after a few packets received
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RUAF33BUHLNDUNWDZQXEOBGX3LJXAQCQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4644155879820771428=="

--===============4644155879820771428==
Content-Type: multipart/alternative; boundary="000000000000aa6e12063afe65e7"

--000000000000aa6e12063afe65e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 28, 2025 at 10:15=E2=80=AFAM Kevin Williams <
kevin.williams@vastech.co.za> wrote:

> I did an experiment today with just this (Ettus blocks only):
>
>
>
> connections:
>
>   - { srcblk: radio0,     srcport: out_0,    dstblk: ep0,       dstport:
> in0}
>
>   - { srcblk: ep6,        srcport: out0,     dstblk: ddc0, dstport: in_0 =
}
>
>   - { srcblk: ddc0,  srcport: out_0,    dstblk: ep6,       dstport: in0 }
>
>
>
> Which did not work =E2=80=93 the remote streaming stopped.
>
>
>
> Changing the destination EP to a new one, ep7, worked again.
>
>
>
> From the RFNoC 4 workshop slides I was under the impression blocks could
> start and end on the same SEP?
>

For what it's worth, I'm using remote streaming with a custom block and
it's working well.

In fact, the way remote streaming works (at least for an X440) is that the
Ethernet/UDP information is written here:


https://github.com/EttusResearch/uhd/blob/40403b7c00154e4559c47bd6dde924f09=
2992d45/fpga/usrp3/lib/rfnoc/xport_sv/chdr_xport_adapter.sv#L671

The kv_map uses the destination EPID as the key for the ethernet
information which gets looked up for every packet.

So if the streaming works when not doing remote streaming it might be
something else since all data paths go through here.

If you get the first few packets and it stops, is there any way you're
providing `enable_fc` as an argument? That would enable flow control which
obviously wouldn't be good if you aren't doing any flow control processing
on your RX side.

Lastly, I agree with Martin that you should probably add an ILA to your
block and the SEP interfaces to see where the AXI stream is getting stopped
up.

Good luck.

Brian

--000000000000aa6e12063afe65e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On Mon, Jul 28, 2025 at 10:15=E2=80=AFAM Kevin Willia=
ms &lt;<a href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vaste=
ch.co.za</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_containe=
r"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-5769=
370475586882011"><div lang=3D"EN-ZA"><div class=3D"m_-5769370475586882011Wo=
rdSection1"><p class=3D"MsoNormal"><span>I did an experiment today with jus=
t this (Ettus blocks only):<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span>connectio=
ns:<u></u><u></u></span></p><p class=3D"MsoNormal"><span>=C2=A0 - { srcblk:=
 radio0,=C2=A0=C2=A0=C2=A0=C2=A0 srcport: out_0,=C2=A0=C2=A0=C2=A0 dstblk: =
ep0,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dstport: in0}<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span>=C2=A0 - { srcblk: <span style=3D"backgrou=
nd:yellow">ep6</span>,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 srcport: o=
ut0,=C2=A0=C2=A0=C2=A0=C2=A0 dstblk: ddc0, dstport: in_0 }<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span>=C2=A0 - { srcblk: ddc0,=C2=A0 srcport=
: out_0,=C2=A0=C2=A0=C2=A0 dstblk: <span style=3D"background:yellow">ep6</s=
pan>,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dstport: in0 }<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=
=3D"MsoNormal"><span>Which did not work =E2=80=93 the remote streaming stop=
ped.<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u><=
/u></span></p><p class=3D"MsoNormal"><span>Changing the destination EP to a=
 new one, ep7, worked again.<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span>From the=
 RFNoC 4 workshop slides I was under the impression blocks could start and =
end on the same SEP?</span></p></div></div></div></blockquote><div><br></di=
v><div>For what it&#39;s worth, I&#39;m using remote streaming with a custo=
m block and it&#39;s working well.</div><div><br></div><div>In fact, the wa=
y remote streaming works (at least for an X440) is that the Ethernet/UDP in=
formation is written here:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"=
https://github.com/EttusResearch/uhd/blob/40403b7c00154e4559c47bd6dde924f09=
2992d45/fpga/usrp3/lib/rfnoc/xport_sv/chdr_xport_adapter.sv#L671">https://g=
ithub.com/EttusResearch/uhd/blob/40403b7c00154e4559c47bd6dde924f092992d45/f=
pga/usrp3/lib/rfnoc/xport_sv/chdr_xport_adapter.sv#L671</a></div><div><br><=
/div><div>The kv_map uses the destination EPID as the key for the ethernet =
information which gets looked up for every packet.</div><div><br></div><div=
>So if the streaming works when not doing remote streaming it might be some=
thing else since all data paths go through here.</div><div><br></div><div>I=
f you get the first few packets and it stops, is there any way you&#39;re p=
roviding `enable_fc` as an argument? That would enable flow control which o=
bviously wouldn&#39;t be good if you aren&#39;t doing any flow control proc=
essing on your RX side.</div><div><br></div><div>Lastly, I agree with Marti=
n that you should probably add an ILA to your block and the SEP interfaces =
to see where the AXI stream is getting stopped up.</div><div><br></div><div=
>Good luck.</div><div><br></div><div>Brian</div></div></div>

--000000000000aa6e12063afe65e7--

--===============4644155879820771428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4644155879820771428==--
