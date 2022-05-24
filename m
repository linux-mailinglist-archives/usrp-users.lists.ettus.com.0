Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 644DA532AC2
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 15:02:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E476638460F
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 09:02:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653397329; bh=k0+MD7DtZD0E0rIFHrf0tjmBKbbKcHV7Y8uFay6AAB0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Rr61GbUudyylNpIVeGPchPhIE0tGqyAPwmKU3kkE2S408HF2MTSRiq8eprroG7k+6
	 NO8HQSq5zW+EYoS+SpzJWX2O0XPJdpU0uryluXJt02dBFBWuHbpKKbdagorjOu5hm0
	 gtZUYmJe4uVtrVufCxoo1n+ZHAz8ZU88z/K2YdU4h5D45lSDgzV1BzxEjBn9XUxqpj
	 zNFSNQWwc0GhWTvMjL8MqyDUKywB5ct5YGFamAgoUIhOHuIZeelJJqh0gObaKFxZb6
	 gYmd1g3q6escjBgGPSQADeytai2NEC6eK0Fmo8ntKZKvWj3c3f+f1RAG4hj36PLnAI
	 hqg4ulkErOqTA==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 92C3F38422B
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 09:01:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="M23SRYzK";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id x137so2304207ybg.5
        for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 06:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hmDRNzQHcLcDutjPeJMqJ9MTFZMcaphrTJbcX411t5U=;
        b=M23SRYzKQKUSAbf642f9M+3nbNMbcqcLmMbVF1nLCafVKX3eo/INdgWz5q3z/MLyqu
         CLvUiI1sTuvhib8q63bZhROxgAX645/EhKTo9ZYbq8ZgYAiPz00V7NW6W8mImsNszQFb
         HbLs/3mccqb5QYS5eesxhdea6gjOaIPhEEPKPZOml31l6zlAaG+CGNftKG/IVpEB2QSY
         l+UWHjs+OCrDsHQOGXkCvbBw/O5mHFuAJQqIq5kBxGYSvEwvQbJkgBQXWF+dq7y3YHsY
         T9t+T+OGGZ6vT/85nt112YlfI7S0sx+m6FOPQmJ2x04uZ+aLem/iJjf+CSbr5svi5rq4
         Dhfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hmDRNzQHcLcDutjPeJMqJ9MTFZMcaphrTJbcX411t5U=;
        b=eratm2NR+zJSnSzCHdIGAKVueggH1k+mNKSfO/c1VOcTzd3LvG8kiTTbxYH1lvr4wl
         YPtXfFObpfYjWy46X6IcvzGxcG9RZdErTJDzR6nd3Hb9MGiNxEWrNTOUBKt1zlRbT4lh
         2KIkCgQ3U/wmP+jDmlo3Bg6HTG+wCTzEhfxcICnYTL6oFCYvUAFZR0lk/PUZrCC5d23Q
         A55Sg32dJ8Y/bYjJKvzQ+eAlyMdZZbmXptETxHnSjPFJkpmfafCurB9ao7mOWYQxZMlX
         b8rfyPOG/K+/YryVMmVV30wPit8hKCwJdw4knT/fSDJ3oErM2QE+9PqbzFx8CYl9D8Di
         SeXg==
X-Gm-Message-State: AOAM533fGAT2U1P8oclNVQxd9zJLlBW6Xv1IJe5epbT8z3pvz1LVjZ2U
	Lrm1mYACQjCcwUrWz6dH9wGbFjB81y1R+dalWt+JbIdWE34=
X-Google-Smtp-Source: ABdhPJzHvC6IrCn5r7oT5GprWkEebV9xdSnlzUxn9gt4aehW/FEwAgj8rWWcj94hgZxe1hWreDzv7lmRrpnqEd7POxs=
X-Received: by 2002:a25:2c55:0:b0:64d:f682:db36 with SMTP id
 s82-20020a252c55000000b0064df682db36mr26971246ybs.352.1653397265728; Tue, 24
 May 2022 06:01:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Ps1TgQZsxQN7iu8d9seJDoPz4iUNusYcKQ5PvQHhhN5qQ@mail.gmail.com>
In-Reply-To: <CAA=S3Ps1TgQZsxQN7iu8d9seJDoPz4iUNusYcKQ5PvQHhhN5qQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 24 May 2022 09:00:54 -0400
Message-ID: <CAB__hTRNxQqVe8as=qh=ZFmN_dyvkPjF+G-pwOM0Oejax7+wcQ@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: QPT4FBN445JHEC4PRYTAKXYDCRUKFDR2
X-Message-ID-Hash: QPT4FBN445JHEC4PRYTAKXYDCRUKFDR2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's means letters and numbers 0/RFNOCSection#X:X in SEP and RFNOC connections?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QPT4FBN445JHEC4PRYTAKXYDCRUKFDR2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3970375846700773168=="

--===============3970375846700773168==
Content-Type: multipart/alternative; boundary="000000000000b314d605dfc18c24"

--000000000000b314d605dfc18c24
Content-Type: text/plain; charset="UTF-8"

The format is: <motherboard index>/<NAME>#<block index>:<port index>. The
port can be either input or output depending on which side of the "==>" you
see it.  On the left side, all of the port indices are outputs. On the
right side, all of the port indices are inputs.
Rob

On Tue, May 24, 2022 at 4:11 AM sp h <stackprogramer@gmail.com> wrote:

> when I used uhd_usrp_probe it returns the RFNOC block list and static
> connections between them. my question is what's means numbers in them? can
> anyone guide me? I know that #X should be the numeric id of the RFNOC
> block... I think number two is the number port?  wich port is input wich is
> output?
> thanks in advance
>
> |    /
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/DDC#0
> |   |   * 0/DDC#1
> |   |   * 0/DUC#0
> |   |   * 0/DUC#1
> |   |   * 0/Radio#0
> |   |   * 0/Radio#1
> |   |   * 0/Replay#0
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0==>0/DUC#0:0
> |   |   * 0/DUC#0:0==>0/Radio#0:0
> |   |   * 0/Radio#0:0==>0/DDC#0:0
> |   |   * 0/DDC#0:0==>0/SEP#0:0
> |   |   * 0/Radio#0:1==>0/DDC#0:1
> |   |   * 0/DDC#0:1==>0/SEP#1:0
> |   |   * 0/SEP#2:0==>0/DUC#1:0
> |   |   * 0/DUC#1:0==>0/Radio#1:0
> |   |   * 0/Radio#1:0==>0/DDC#1:0
> |   |   * 0/DDC#1:0==>0/SEP#2:0
> |   |   * 0/Radio#1:1==>0/DDC#1:1
> |   |   * 0/DDC#1:1==>0/SEP#3:0
> |   |   * 0/SEP#4:0==>0/Replay#0:0
> |   |   * 0/Replay#0:0==>0/SEP#4:0
> |   |   * 0/SEP#5:0==>0/Replay#0:1
> |   |   * 0/Replay#0:1==>0/SEP#5:0
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b314d605dfc18c24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The format is: &lt;motherboard index&gt;/&lt;NAME&gt;=
#&lt;block index&gt;:&lt;port index&gt;. The port can be either input or ou=
tput depending on which side of the &quot;=3D=3D&gt;&quot; you see it.=C2=
=A0 On the left side, all of the port indices are outputs. On the right sid=
e, all of the port indices are inputs.</div><div>Rob<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 2=
4, 2022 at 4:11 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com">sta=
ckprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">when I used uhd_usrp_probe it returns=
 the RFNOC block list and static connections between them. my question is w=
hat&#39;s means numbers in them? can<div>anyone guide me? I know that #X sh=
ould be the numeric id of the RFNOC block... I think number two is the numb=
er port?=C2=A0 wich port is input wich is output?</div><div>thanks in advan=
ce</div><div><br></div><div>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 RFNoC blocks on this device:<br>| =C2=A0 |<br>| =C2=A0 | =C2=A0 * 0/=
DDC#0<br>| =C2=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =
=C2=A0 | =C2=A0 * 0/DUC#1<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =
=C2=A0 * 0/Radio#1<br>| =C2=A0 | =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 ___=
__________________________________________________<br>| =C2=A0 =C2=A0/<br>|=
 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:<br>| =C2=
=A0 |<br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=
=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=
=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =
=C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/D=
DC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1=
:0<br>| =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=
=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D=
&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =
=C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP=
#4:0=3D=3D&gt;0/Replay#0:0<br>| =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/S=
EP#4:0<br>| =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 |=
 =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b314d605dfc18c24--

--===============3970375846700773168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3970375846700773168==--
