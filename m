Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D02CFB270FF
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 23:43:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA4DC385F2B
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 17:43:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755207813; bh=BtfwZcRzuMRO2VIzQqyaVd7+PV8zNKeBLA/YeQtySes=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=icCk6e2J24kAxRHqcCHHOOwhBmRizz59G5OWnONNcGzQ5ETEcSQaMOHX8HhdZDPZ/
	 cbmnf2LjzqWekxfK3+kAF3CQeNkJQ9Uh7gPfhs+kQQF8RXFF7+X1dFVDfe58x55WMm
	 armaI+LCDmmAYOokkYZXwJxjJdPpSe9EZinXDWyWu9NEKpfxTECpLK1JC6W4cPYZpQ
	 JUWbzyv2lQIvK26qs+yH7AGfBww8oI6t6P63eME/J+lkw9/N0g8d3f9YQfSE8wC4U+
	 ouXsAoMRmequto9v3CszGYZtvh9D6eHrbU4r9lAbdL4Yer7PRqDWQUmmXneY3ANN3T
	 7Gym+wcpN2BAw==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C451384E43
	for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 17:42:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cA86G89k";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6188b7532f3so2284253a12.2
        for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 14:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755207776; x=1755812576; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tQ/BuSJ5MRC12WxRbsS+pcmpbXYObHsTHHTKDmjYUQM=;
        b=cA86G89kow1X1p48CnQU7f0SbIUqAOuxR6CTtOrrBaRP0jnuvVgvB9XVlnSyvwHjOo
         OAEG3zFY/Oeo+EpLwIavLxm95GT8YEO6k93R983iXFu8QI8LKWM/lVDUJ6xspBsu5dw8
         y7UordY7KSJebX3bMMOVUMeLWMFG3A+85tL48y7PpelCVQe71xJJKBLk/i7zvulg3w8u
         44JAF9PiHySN8euzvFixXZbWT66x+0+LEtiOm2IPHqo1LK5lRtSAHFPTvN5OMsifuiZW
         u0aSJte9YW2r4FNq9K4m79UtcXT7ySK8+s7ZgTjSxNxCVabUDnAq3AlcVjGhUObYhPNt
         4YYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755207776; x=1755812576;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tQ/BuSJ5MRC12WxRbsS+pcmpbXYObHsTHHTKDmjYUQM=;
        b=Cb1KrkCaa8xatOWPe2ibKnIFfyvIXCE+NFL4qAH8kQpuDvL0Za/TGUda0aknForeXb
         pVHRS76p0UkhT2/OqFZO1S6ZbrdJcsA4AxDKNtVkUOhD9eLsKGJVkigBDl84ZCiKBx56
         J5KjKPRexXV80pZsR+OBWzCZOUFyCA7/wg6KjlASI6DIerNVzMjVavsFtlfRpRrYr4if
         sHSyqd5YTSV79MZX5/Cu43mihRUItRlvpG8K67KLDtlsBiWtV13m8ENiY7xt6AuIdqCa
         B2bO2UcUDcCgC3dcTlHYOzepQOzgMvR8/WkDUCo1l4gEmzfmVwDcID5aBrVPSP5yYW55
         i3fw==
X-Gm-Message-State: AOJu0YyrFURQyR9VEzXUkA0Q1wNDy+XvYsvARyDl2HyjFo8YIm5L1rX5
	CTGnL50oU/bUD8oCNwrV13mwfWM/LhudlrIrkoGLHIEGCW2IMmh9Tntnz0NdO7kJKtYG/p3ArEb
	IPbu9YQX0iAjQ/X5grQPrLS6AELqxVN43Jh51
X-Gm-Gg: ASbGncvKWh3AOvDZ0ZdjM4to4qKamJS0ttBtWVqvfJO2GI9UG1Ai56Qv1NFbTotpGM0
	QjIfPyW2kYwzzwpZMU+JGR9z+cvE00p6ulnBJTF28jfcGn05z+6sRd1jMyNhBnso4EphgR8O52h
	wuy9TFKjXLzJEXKPGk4M3eNxRv055dVObA8C0HM4sk+6rSqWDg6Yba2CyTP+5HyuM5RV1ASdCmv
	5MebuA=
X-Google-Smtp-Source: AGHT+IHxwjPMTeLDVBBO8ct8FQpNJeNnCU8836CbFJq6AzehFC4JyR79skaQl3h+sVpyjZh7JZ3dQVdnVE4tE2QrpJI=
X-Received: by 2002:a17:907:7f8f:b0:ae0:cde3:4bbd with SMTP id
 a640c23a62f3a-afcb98fa8d2mr386593066b.44.1755207775744; Thu, 14 Aug 2025
 14:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
 <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com>
In-Reply-To: <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 14 Aug 2025 17:42:44 -0400
X-Gm-Features: Ac12FXy-DZx4CXdDjf686RkNM9TpDe1Y8Zpdlg0C0A8SG7Z_f5haoj0gqf_rnQ0
Message-ID: <CAEXYVK4FTzzmwiCNEQzVdSfF66a+NhjbRM6V4_40Uicg_kpfhg@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: ZPWCMCOMRU4FPWVHID23ORBNUKQCAXBV
X-Message-ID-Hash: ZPWCMCOMRU4FPWVHID23ORBNUKQCAXBV
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZPWCMCOMRU4FPWVHID23ORBNUKQCAXBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2278878650425395243=="

--===============2278878650425395243==
Content-Type: multipart/alternative; boundary="000000000000fafa6c063c5a27f6"

--000000000000fafa6c063c5a27f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Nikos,

Not particularly. I've got an application sending data to the CHDR port
(49153)

The problem isn't so much the packets that are being sent, it's that the
interface stops responding to pings.

On Thu, Aug 14, 2025 at 4:45=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Hi Brian,
>
> Can you post a wireshark output with your problem?
>

Not particularly. I am definitely running UHD in a not-fully-supported
mode, but I didn't necessarily expect things to go this sideways. I am
trying to get a simple version of remote TX streaming working.

I've got an application running on a host that is sending baseband data to
the radio over sfp0 and sfp1 to CHDR port 49153. The radio RFNoC
infrastructure is not in any type of configured state - I just have UDP
packets being sent to that port.

After around 30 seconds of this, the sfp port stops sending anything from
the host (as viewed by packet counters and ethernet monitors) and I can't
even ping the IP anymore (i.e. even the CPU path seems to get clogged up).

If I reseat the sfp adapter, or bring the interface down/up again, things
come back. Note that if I send the data to the CPU (port 1024 for example),
this doesn't happen and things are OK. It seems like something is getting
gummed up on the CHDR side and not dropped or consumed in some way that I
would have expected.

I really need those sfp ethernet interfaces to be as rock solid as
possible, even if garbage is being thrown at it. That's what started me
down this journey to begin with.

Does this make sense to you?

Thanks,
Brian

--000000000000fafa6c063c5a27f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hey Nikos,<div><br></div><div>Not particu=
larly. I&#39;ve got an application sending data to the CHDR port (49153)</d=
iv><div><br></div><div>The problem isn&#39;t so much the packets that are b=
eing sent, it&#39;s that the interface stops responding to pings.</div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, Aug 14, 2025 at 4:45=E2=80=AFPM Nikos Balkanas &l=
t;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div style=3D"font-size:small">Hi Brian,</div><div style=3D"font-size:sma=
ll"><br></div><div style=3D"font-size:small">Can you post a wireshark outpu=
t with your problem?</div></div></blockquote><div><br></div><div>Not partic=
ularly. I am definitely running UHD in a not-fully-supported mode, but I di=
dn&#39;t necessarily expect things to go this sideways. I am trying to get =
a simple version of remote TX streaming working.</div><div><br></div><div>I=
&#39;ve got an application running on a host that is sending baseband data =
to the radio over sfp0 and sfp1 to CHDR port 49153. The radio RFNoC infrast=
ructure is not in any type of configured state - I just have UDP packets be=
ing sent to that port.</div><div><br></div><div>After around 30 seconds of =
this, the sfp port stops sending anything from the host (as viewed by packe=
t counters and ethernet monitors) and I can&#39;t even ping the IP anymore =
(i.e. even the CPU path seems to get clogged up).</div><div><br></div><div>=
If I reseat the sfp adapter, or bring the interface down/up again, things c=
ome back. Note that if I send the data to the CPU (port 1024 for example), =
this doesn&#39;t happen and things are OK. It seems like something is getti=
ng gummed up on the CHDR side and not dropped or consumed in some way that =
I would have expected.</div><div><br></div><div>I really need those sfp eth=
ernet interfaces to be as rock solid as possible, even if garbage is being =
thrown at it. That&#39;s what started me down this journey to begin with.</=
div><div><br></div><div>Does this make sense to you?</div><div><br></div><d=
iv>Thanks,</div><div>Brian</div></div></div>

--000000000000fafa6c063c5a27f6--

--===============2278878650425395243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2278878650425395243==--
