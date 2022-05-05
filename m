Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A0251C619
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 19:29:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30A94384C60
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 13:29:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651771788; bh=3X6ZUsmKwm/gLwq6oxwlFietQsayPxv0RGM1NbJ+be4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZSDZwDmEXd2wr5orCZ0HvIuDZU7pBnzw0D3V1+WG6kmBoSB0WaznC8+9KczErRuex
	 J0pJVZTiLkiTyCDA5LV+MRfxbnyOCIcy0St7GRq3AjeqflgRJFBUsZDKDESWlIG7H4
	 Z0zDn4T9A+o9gS8h5lhvbpVBrbH96oqN/fsz82Ye3vpgemQJoyqh3/ldzMUBgyABbo
	 X7GyzcYJzEOcJ2L4FPpkAL8yAbt1x66Ml0bbeNxNv1oskWLbuxw/+Tdn6CjUFEjPuJ
	 cgcty48tdSzMfnVSyaJvaOOYqyFJlR3QPmZVXzQPd5sSnbj5JggvZK7mdWHrzPfkl7
	 vFQpDqfHWYPjQ==
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B90A3849D6
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 13:28:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mK2A3wY1";
	dkim-atps=neutral
Received: by mail-pj1-f50.google.com with SMTP id fv2so4800866pjb.4
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 10:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uKnFTYsYJL5r/0uEisUDql7yxjkEQvBt9T2VXMnxxks=;
        b=mK2A3wY1Gws8lQRYeD58D7fb6rp9J61VzW+5j4WUOhP9IF/2gn5odR6u5dfVGcBTF3
         r40aS2c1gAVFAzlbY9BO92SuaXC+sIuXn4hfSQuBWwyupyWQuTQENugK3/vQWlKHzNpl
         IYR9h7CNjsxUQSFxmsniZUjJ4eqkBF3KC7m+rIWF7wFMbNXIO+vAY3myXqon1sNCaYGn
         1pJI3oLkSDpo7vwazKI4utXsk3GHPr/QlWFD13lWDfCFfa+RMXC6dkU7ot3FyXhFxxyK
         Pa/RcR9LLxPY+9TD/srQ62Jcu494efNCZUhSsdwxQ0rewQkCGYs7qmGWI2FYySh0KbRv
         oCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uKnFTYsYJL5r/0uEisUDql7yxjkEQvBt9T2VXMnxxks=;
        b=oezxqdZ7RIIDOXuGoux2RrSprWF8cOVB3wlQhkyQy4ryCuS0eHiVWTWE4j68xed9om
         kWyRxgynpm7t/l5LXMPPUX99CrsxfRGoQV7BimYJtIfXwTu1blcY3gQ6oHdRk6EChkbR
         gzZP2S7bb88LztEr00F2xH2hybGVNKh/UYwOGZRU6L8lxyMUfLInsv9Ox+AY2vjrEQIw
         FfJM0F8rmx8lnXrnRr5M1MOUKiJjLXEy1PRA1pqW8McH1nykKCfyzjwpLkm8su2FDanG
         kAWrxUr6xcLScwwfPzKneWtWb8/KwjdYODpCNnOKKsUHLApetyISYEmM697fe9TefZla
         4ECA==
X-Gm-Message-State: AOAM5320LYo4VFxeA7ucMcsbPwD6+bRfnr6vPA5sFWJ3R0swE+p9P1gX
	FWt0PYESw0gu3PnxF0y4vQdN4HmaeEa/YOBvk0o=
X-Google-Smtp-Source: ABdhPJzyF43vCPUSqf0I1L5z8dmX+zmZMP+y6tHh7cQywa8b5FMJiCNUURxXb5ncFmRVju9Dr6pLakcOIc/bO52xhBs=
X-Received: by 2002:a17:90a:3486:b0:1d9:3abd:42ed with SMTP id
 p6-20020a17090a348600b001d93abd42edmr7557934pjb.32.1651771728927; Thu, 05 May
 2022 10:28:48 -0700 (PDT)
MIME-Version: 1.0
References: <35179a1b-c803-a381-2ea1-afc1a2a3e592@olifantasia.com>
 <3becaee4-64b1-8f21-f753-604afccacea9@gmail.com> <CAFche=hxr+f0mMCW3zFBfuPF5YgLXtsQZOG7vrQ6MRdGmMonaQ@mail.gmail.com>
 <CAB__hTTYo=h--G=ymoZu5DvmOzUGOe5YFhi92Q_FyyacTjnpRQ@mail.gmail.com> <CAFche=h=tcwHtQffPMeQSMJAgACpfcqz1Z6EtZr-hKdaeytDAg@mail.gmail.com>
In-Reply-To: <CAFche=h=tcwHtQffPMeQSMJAgACpfcqz1Z6EtZr-hKdaeytDAg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 5 May 2022 13:28:37 -0400
Message-ID: <CAEXYVK6NRA6xXZ3JiM24GnGsjZ3f55peKh+ex7R=87Gics5ATg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: ZGA4OU2QDE7HOJLWDC374D6ZQXCCYT7B
X-Message-ID-Hash: ZGA4OU2QDE7HOJLWDC374D6ZQXCCYT7B
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: data corruption problems with high speed dual channel capturing on USRP E320 over 10 gbit ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZGA4OU2QDE7HOJLWDC374D6ZQXCCYT7B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4830296345053865572=="

--===============4830296345053865572==
Content-Type: multipart/alternative; boundary="000000000000271fd205de471367"

--000000000000271fd205de471367
Content-Type: text/plain; charset="UTF-8"

On Thu, May 5, 2022 at 11:45 AM Wade Fife <wade.fife@ettus.com> wrote:

> It's a limitation of the FPGA interface to the RFIC. It doesn't support
> the tight setup/hold requirements for operation at the higher clock clock
> rate required for 2 x 61.44 Msps.
>
> Wade
>

This sounds wrong to me unless you have some very serious bus skew in the
layout.  The clock and data delays built into the AD9361 along with the
fact the FPGA is a Zynq-7045 should be enough to get some valid setup/hold
times.  The LVDS interface is pretty robust and I've seen it work very well
on many designs.

Can you elaborate more on what the deficiency is with the FPGA interface to
the RFIC?

Brian

--000000000000271fd205de471367
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 5, 2022 at 11:45 AM Wade Fife=
 &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wro=
te:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>It&#39;s a limitation of the FPGA inte=
rface to the RFIC. It doesn&#39;t support the tight setup/hold requirements=
 for operation at the higher clock clock rate required for 2 x 61.44 Msps.<=
/div><div><br></div><div>Wade</div></div></blockquote><div><br></div><div>T=
his sounds wrong to me unless you have some very serious bus skew in the la=
yout.=C2=A0 The clock and data delays built into the AD9361 along with the =
fact the FPGA is a Zynq-7045 should be enough to get some valid setup/hold =
times.=C2=A0 The LVDS interface is pretty robust and I&#39;ve seen it work =
very well on many designs.</div><div><br></div><div>Can you elaborate more =
on what the deficiency is with the FPGA interface to the RFIC?</div><div><b=
r></div><div>Brian</div></div></div>

--000000000000271fd205de471367--

--===============4830296345053865572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4830296345053865572==--
