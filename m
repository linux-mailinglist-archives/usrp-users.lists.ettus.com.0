Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C4BB27312
	for <lists+usrp-users@lfdr.de>; Fri, 15 Aug 2025 01:38:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B1CB386B6E
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 19:38:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755214728; bh=cHonDR/KbX2arr7qwDZjGZipVJp3YVcja4AJd5O/was=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jNyUa6RHYEfLdbg78M5qo8tIvJ6JG7ke04eNZ1lmqH6rySehA2eW5OTJW3URga68f
	 n+O/fhcCqTEySNoQ6YCKpjOV8IMEVMI00FQLQxrSISu8c71p/98YmsqDrtv8bj/IYg
	 vGJVrz0TOCviJ+3rvj7dC3aKMaSBa2qt60fXbfyEd/2D3YDOaDHUANItszoys+XIY9
	 M5ZOC2jmZH2Y8RqZ5O6qMwffp3vAxG4OHcuj+gMIx5BjSob7DURk63QwgfZdRoMid9
	 4k0eczuSzp7uu5CvqJ9wkffT28XH4TksKSNXUVhnBrHj7D+UNXKmgBjjrRh/b4Yq7r
	 i//roZhDJkr2Q==
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 5002D386AD9
	for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 19:38:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gYEBKUh6";
	dkim-atps=neutral
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3e5700aa375so9201145ab.2
        for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 16:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755214689; x=1755819489; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PwXsVz3jmry0rjGV3wm6duxDgHDx9n9yv67FUc2Wj0U=;
        b=gYEBKUh6Hwi4xOGpl83iqXasNgMWb39ZXcOzWtkWOEW322vP3YVMj5c4VmYJoOUmix
         KfIWUuh9bW1273XwFkfuuSDPDDMgDieJtLMMuYbepwd5lfgeHPG1CO1K8cK3CU28q9Cs
         4p0xCyyiX+y5g3pBqDB/xJybonuivhlF3jgY1GBMZ6gJVttfm+znAM9aT2WJoU2Vm37V
         a279k6Ux7hLNcjyvVNt+sqBWwMj0ntmefnAqb77qC35OK8jD0ajGC/LI9tSILwvAusd6
         Eb5q66jJodCAyb3YwUJActjDlQs8OGqLYpT8smp0/vJ+1ODul2pdjbkcvXM2lp7p4jBk
         clVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755214689; x=1755819489;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PwXsVz3jmry0rjGV3wm6duxDgHDx9n9yv67FUc2Wj0U=;
        b=Yp++vmVlUb4j0mp/oPlq/kn6kBjX1IFrujKYmjMZBoo70YrHteOYYvgqJwV6Yv0yoj
         qc06PSoKLIbIvcOpVo2qHpcKtHsj18yOHHEFc0Vl/RmduJ36OJOwOkK8Bedag6fpIJKh
         KhZ+FN9TZskMjk0QN4F3/BlO+s73kncAmuyLqctknWQmq0+7hJzz+scXbv6v+ErQZN8I
         K8vgmltDQsNqGTPhwhZwh8Boz2ZVTehdpcOC1aayTz70PjdCcUJ+HmAfRNLlPHbfPFze
         oj2VO3MF917HMVxv/8WaFo/d/C/YVsLJ7IJOP3N4hxui2R1hUuW7pxoouXlz63XQdhu2
         40Jg==
X-Gm-Message-State: AOJu0YwQivkh6cmvTPnfrPdQW00pKgKW4Vv1KgETCKqz6hOADlc9kU66
	Zs6wRCum2q8D24F2u8ZT3yFQRaVr3yNjrSFPt+yy4JZKQ6C7r2ZkdNQJhcBNWeMG3B0260IklgU
	4IQGc+Roa4HA1D1CQK2+0rqBTc1S0JKwHq+/H
X-Gm-Gg: ASbGncs/fTgbrNgtKEgU5HLTKI0aMtmRnUF0tONnMAoxBXjtC18fVWlyKTLUACv4OTm
	HpdzAv1N0YnWwBxbta8zbfOqb74pJU6FO+Ug1idqLfySVfgSEAw6nf5OgwxAGBm3HwSxD3NxF9B
	Bhr8H3O0rJKEoEb2kHQyoZ1EACWOZ2QFYQauLd0fsJYiDHu2TMTgg/Tv9IhZG4HaooD+ppDpNiC
	L3xkQ==
X-Google-Smtp-Source: AGHT+IGTtf8HHq/Q/X8h/lOZ7xdzFOz6blfpog02EZzzAl+kBmi2qSG1B0muSX7noyaI8Fc7H/aJBmE9/lgm4p0IY3w=
X-Received: by 2002:a05:6e02:4812:b0:3e5:7437:696e with SMTP id
 e9e14a558f8ab-3e574376a50mr86011865ab.23.1755214689535; Thu, 14 Aug 2025
 16:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
 <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com> <CAEXYVK4FTzzmwiCNEQzVdSfF66a+NhjbRM6V4_40Uicg_kpfhg@mail.gmail.com>
In-Reply-To: <CAEXYVK4FTzzmwiCNEQzVdSfF66a+NhjbRM6V4_40Uicg_kpfhg@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 15 Aug 2025 02:37:42 +0300
X-Gm-Features: Ac12FXwPdoOPIlVrANYMCIzGBY2BigxYho0xtlOLJ9-p3s_F9ioYv7vhJz9fIZQ
Message-ID: <CAAxXO2G60mr+mUap+zjGzEx3a6T8CC3V6NeL7TCUc97Yr318pQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: IOOGCJQDUTDXKDSN3FDC6XJNLMWUDAP7
X-Message-ID-Hash: IOOGCJQDUTDXKDSN3FDC6XJNLMWUDAP7
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IOOGCJQDUTDXKDSN3FDC6XJNLMWUDAP7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5290728162726154630=="

--===============5290728162726154630==
Content-Type: multipart/alternative; boundary="000000000000130c33063c5bc402"

--000000000000130c33063c5bc402
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah,

It makes sense. But just to be on the safe side
"I could not ping the interface (Destination unreachable) and packets
stopped flowing through the interface from the host machine"
wouldn't at least give it a try? Seems you have lost your routing tables to
get Destination Unreachable over a static route!
When you get the problem what does the arp command show?

BR
Nikos

On Fri, Aug 15, 2025 at 12:42=E2=80=AFAM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> Hey Nikos,
>
> Not particularly. I've got an application sending data to the CHDR port
> (49153)
>
> The problem isn't so much the packets that are being sent, it's that the
> interface stops responding to pings.
>
> On Thu, Aug 14, 2025 at 4:45=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Hi Brian,
>>
>> Can you post a wireshark output with your problem?
>>
>
> Not particularly. I am definitely running UHD in a not-fully-supported
> mode, but I didn't necessarily expect things to go this sideways. I am
> trying to get a simple version of remote TX streaming working.
>
> I've got an application running on a host that is sending baseband data t=
o
> the radio over sfp0 and sfp1 to CHDR port 49153. The radio RFNoC
> infrastructure is not in any type of configured state - I just have UDP
> packets being sent to that port.
>
> After around 30 seconds of this, the sfp port stops sending anything from
> the host (as viewed by packet counters and ethernet monitors) and I can't
> even ping the IP anymore (i.e. even the CPU path seems to get clogged up)=
.
>
> If I reseat the sfp adapter, or bring the interface down/up again, things
> come back. Note that if I send the data to the CPU (port 1024 for example=
),
> this doesn't happen and things are OK. It seems like something is getting
> gummed up on the CHDR side and not dropped or consumed in some way that I
> would have expected.
>
> I really need those sfp ethernet interfaces to be as rock solid as
> possible, even if garbage is being thrown at it. That's what started me
> down this journey to begin with.
>
> Does this make sense to you?
>
> Thanks,
> Brian
>

--000000000000130c33063c5bc402
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Yea=
h,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">It makes sense. But ju=
st to be on the safe side=C2=A0</div><div class=3D"gmail_default" style=3D"=
font-size:small">&quot;I could not ping the interface (Destination unreacha=
ble) and packets stopped flowing through the interface from the host machin=
e&quot;</div><div class=3D"gmail_default" style=3D"font-size:small">wouldn&=
#39;t at least give it a try? Seems you have lost your routing tables to ge=
t Destination Unreachable over a static route!=C2=A0</div><div class=3D"gma=
il_default" style=3D"font-size:small">When you get the problem what does th=
e arp command show?</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-size:small">BR</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div>=
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Aug 15, 2025 at 12:42=E2=80=AFAM Brian Padalino &lt=
;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div dir=3D"ltr">Hey Nikos,<div><br></div><div>Not particularly. I&#39;ve =
got an application sending data to the CHDR port (49153)</div><div><br></di=
v><div>The problem isn&#39;t so much the packets that are being sent, it&#3=
9;s that the interface stops responding to pings.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 14, 2025=
 at 4:45=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.co=
m" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font=
-size:small">Hi Brian,</div><div style=3D"font-size:small"><br></div><div s=
tyle=3D"font-size:small">Can you post a wireshark output with your problem?=
</div></div></blockquote><div><br></div><div>Not particularly. I am definit=
ely running UHD in a not-fully-supported mode, but I didn&#39;t necessarily=
 expect things to go this sideways. I am trying to get a simple version of =
remote TX streaming working.</div><div><br></div><div>I&#39;ve got an appli=
cation running on a host that is sending baseband data to the radio over sf=
p0 and sfp1 to CHDR port 49153. The radio RFNoC infrastructure is not in an=
y type of configured state - I just have UDP packets being sent to that por=
t.</div><div><br></div><div>After around 30 seconds of this, the sfp port s=
tops sending anything from the host (as viewed by packet counters and ether=
net monitors) and I can&#39;t even ping the IP anymore (i.e. even the CPU p=
ath seems to get clogged up).</div><div><br></div><div>If I reseat the sfp =
adapter, or bring the interface down/up again, things come back. Note that =
if I send the data to the CPU (port 1024 for example), this doesn&#39;t hap=
pen and things are OK. It seems like something is getting gummed up on the =
CHDR side and not dropped or consumed in some way that I would have expecte=
d.</div><div><br></div><div>I really need those sfp ethernet interfaces to =
be as rock solid as possible, even if garbage is being thrown at it. That&#=
39;s what started me down this journey to begin with.</div><div><br></div><=
div>Does this make sense to you?</div><div><br></div><div>Thanks,</div><div=
>Brian</div></div></div>
</blockquote></div>

--000000000000130c33063c5bc402--

--===============5290728162726154630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5290728162726154630==--
