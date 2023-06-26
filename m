Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C9D73E2EF
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 17:12:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 608C0380C19
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 11:12:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687792372; bh=j1dPlw7uugyotRGRWx5zjvfjvLSPWLaJMhbdY02tCPs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RX8WTfYSHfgez/C5Coav2X/++WG00sCpxS/tUPScdLt0zAz+czO3wxX6vxqVYUSCQ
	 ph8XbBBIYASCysNN7CxRU+eG0AmG+TfwElgh/GBkKswGCD/9E9DAh0ASfgiFZnxJ90
	 KsW63K7RRx7p3mFyPSJPWIGc+JEVGH0sXIWk5aBnT1dEw1stoYBCknbRIyCGv81av7
	 3mpL30jDln99zoFiomXIc/UquBWBpEwMrJuGMbdEyt0SKI2NzTLw5KhxOk6ZsJuV8C
	 3SrXsN74spgu7RY8USTOwm6S1T8J5IcaXffgjgoGT47QlAenxSe0Mqyh7OJ6ChVJYR
	 1BGo8leUxG5iA==
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B3C938093F
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 11:12:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hVLSpcY+";
	dkim-atps=neutral
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1b80ba9326bso6512415ad.1
        for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 08:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687792340; x=1690384340;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y16XqAtHyVB2tNS3vqbcriYZhqYTb05+HwTV5G9z1J4=;
        b=hVLSpcY+TtMfRukoN6AP5ZzpSptvyTqJrH7bHQnVr5Lht161JjRBvuCZpLmctBUUIj
         Dt3PgE7D4Oos65+o1kEvbFPmg0KZj3XaPof+RTwQE44hY73mYiCITQ9IWObicZNZ5Cpl
         0lY9ZwvVVi8ZKzfexesVxNvA7A4O7mZdldiQe4nAcpYCfPvzVt+PPcPUrwZxFGXIMF90
         u5ft+bz5Fb52HolIQ0P1+FMal3qMpIYQfO8aKDxdKHjtO9iOxpST/5f3jrhT3jibMiiv
         GaqaCyD+fkKdOReboo9cZ19i5Jc0G7N/449obVmq3y/EBcghMOXb0NlBL0Ru5YgBIdcJ
         TTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687792340; x=1690384340;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y16XqAtHyVB2tNS3vqbcriYZhqYTb05+HwTV5G9z1J4=;
        b=ZGlYhq6gE47v6zVVjGVAub7ujEv80hErhtYSrwuowxgpJTzFR/IVFvRBsEiGp7r4LB
         n2N0QbVPVU773LZtvI8TJ1v2mxihoOux7ggdTKsZjKlLA3VnAAYQItHYGFtJ5DNWEZzO
         MBbfitZ5GMGpThT6G7vg9jMsXXEEerlj6vVn/V0tTrt5dex0ow+Ovhoiq+HtNyLBBM2t
         hepQht9nnQs32rZ4YqEDTP1FZRXW9+4Z7wP7EnHWU34UO10HK9FvVYaA1j25SY/mWpsB
         8FrBvnbBEC5U/7j8sCHhTumOnqb+XWbJ1kBiYMXxt+Db/inrFE4MHo/uYREieMIvEvGO
         UlKw==
X-Gm-Message-State: AC+VfDy/OEhcCIxsVoxy8CwedBjzz/mjoiUO5FI8FAOF2tW+lUnI3GNM
	vPxFzJS7oGioDOrDCTqkJd6LcBWksIEBPR9xWVh+htrf
X-Google-Smtp-Source: ACHHUZ6558isXBTNpdvwByGAsDVbYgLPrO3adhIL4Hz5S71dIDJ7OoRzS+DWX0nFyEsz+IqyFfMWMOBr7L6viue2YlQ=
X-Received: by 2002:a17:902:c1c6:b0:1b5:553e:4ea1 with SMTP id
 c6-20020a170902c1c600b001b5553e4ea1mr7959954plc.1.1687792340045; Mon, 26 Jun
 2023 08:12:20 -0700 (PDT)
MIME-Version: 1.0
From: Carlo Venier <venier.carlo@gmail.com>
Date: Mon, 26 Jun 2023 17:12:08 +0200
Message-ID: <CAHRiTbnhtWyYk3A+q_J7PLhbKPb9USF5ZPnUxzFLGZCm938m+g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: UHTGO5NL4IUJKSCLSEOGMXGR37WWVFCC
X-Message-ID-Hash: UHTGO5NL4IUJKSCLSEOGMXGR37WWVFCC
X-MailFrom: venier.carlo@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TwinRx in coherent setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHTGO5NL4IUJKSCLSEOGMXGR37WWVFCC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8248090801581450127=="

--===============8248090801581450127==
Content-Type: multipart/alternative; boundary="000000000000e2166205ff09c60e"

--000000000000e2166205ff09c60e
Content-Type: text/plain; charset="UTF-8"

Good evening to everybody,

I am trying to use an X300 with two TwinRX in a coherent setup.
After synchronization, in the case of fixed frequency operation (no
re-tuning) the phase differences among the channels are constant and
they remain constant over time.
However, if I re-tune the TwinRx on the exact same frequency, I expect
that the phase differences remain the same, but it does not happen. How
is it possible?

The LO settings are the following:

multi_usrp->set_rx_lo_export_enabled(true,
uhd::usrp::multi_usrp::ALL_LOS, 0);
multi_usrp->set_rx_lo_source("internal", uhd::usrp::multi_usrp::ALL_LOS, 0);
multi_usrp->set_rx_lo_source("companion",
uhd::usrp::multi_usrp::ALL_LOS, 1);
multi_usrp->set_rx_lo_source("external", uhd::usrp::multi_usrp::ALL_LOS, 2);
multi_usrp->set_rx_lo_source("external", uhd::usrp::multi_usrp::ALL_LOS, 3);

Moreover, by using the timed command before tuning all the channels
(code snippet at "https://files.ettus.com/manual/page_sync.html", "Align
LOs in the front-end"), I get into the issue at
("https://github.com/EttusResearch/uhd/issues/606") and the X300 is not
usable until a power-cycle.
I get the same issues when using both the uhd3.15.0.0 and the uhd4.4.0.0.

Should I expect the same phase differences when I re-tune to the exact
same frequency or is it okay for the phase differences to change and I
am missing something?
Do you have any suggestion on how to solve the issue?

Thanks,

Best regards,
Carlo Venier

--000000000000e2166205ff09c60e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-size:12.8px">Good evening to everybod=
y,</span><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><spa=
n style=3D"font-size:12.8px">I am trying to use an X300 with two TwinRX in =
a coherent setup.</span><br style=3D"font-size:12.8px"><span style=3D"font-=
size:12.8px">After synchronization, in the case of fixed frequency operatio=
n (no</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px"=
>re-tuning) the phase differences among the channels are constant and</span=
><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">they remai=
n constant over time.</span><br style=3D"font-size:12.8px"><span style=3D"f=
ont-size:12.8px">However, if I re-tune the TwinRx on the exact same frequen=
cy, I expect</span><br style=3D"font-size:12.8px"><span style=3D"font-size:=
12.8px">that the phase differences remain the same, but it does not happen.=
 How</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">=
is it possible?</span><br style=3D"font-size:12.8px"><br style=3D"font-size=
:12.8px"><span style=3D"font-size:12.8px">The LO settings are the following=
:</span><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span=
 style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_export_e</span><span s=
tyle=3D"font-size:12.8px">nabled(true,</span><br style=3D"font-size:12.8px"=
><span style=3D"font-size:12.8px">uhd::usrp::multi_usrp::ALL_LOS</span><spa=
n style=3D"font-size:12.8px">, 0);</span><br style=3D"font-size:12.8px"><sp=
an style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_source(&quot;</span>=
<span style=3D"font-size:12.8px">internal&quot;, uhd::usrp::multi_usrp::ALL=
_LOS</span><span style=3D"font-size:12.8px">, 0);</span><br style=3D"font-s=
ize:12.8px"><span style=3D"font-size:12.8px">multi_usrp-&gt;set_rx_lo_sourc=
e(&quot;</span><span style=3D"font-size:12.8px">companion&quot;,</span><br =
style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">uhd::usrp::mult=
i_usrp::ALL_LOS</span><span style=3D"font-size:12.8px">, 1);</span><br styl=
e=3D"font-size:12.8px"><span style=3D"font-size:12.8px">multi_usrp-&gt;set_=
rx_lo_source(&quot;</span><span style=3D"font-size:12.8px">external&quot;, =
uhd::usrp::multi_usrp::ALL_LOS</span><span style=3D"font-size:12.8px">, 2);=
</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">mult=
i_usrp-&gt;set_rx_lo_source(&quot;</span><span style=3D"font-size:12.8px">e=
xternal&quot;, uhd::usrp::multi_usrp::ALL_LOS</span><span style=3D"font-siz=
e:12.8px">, 3);</span><br style=3D"font-size:12.8px"><br style=3D"font-size=
:12.8px"><span style=3D"font-size:12.8px">Moreover, by using the timed comm=
and before tuning all the channels</span><br style=3D"font-size:12.8px"><sp=
an style=3D"font-size:12.8px">(code snippet at &quot;</span><a href=3D"http=
s://files.ettus.com/manual/page_sync.html" style=3D"text-decoration-line:no=
ne;color:rgb(66,133,244);font-size:12.8px" target=3D"_blank" rel=3D"norefer=
rer">https://files.ettus.com/manual/page_sync.html</a><span style=3D"font-s=
ize:12.8px">&quot;, &quot;Align</span><br style=3D"font-size:12.8px"><span =
style=3D"font-size:12.8px">LOs in the front-end&quot;), I get into the issu=
e at</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">=
(&quot;</span><a href=3D"https://github.com/EttusResearch/uhd/issues/606" s=
tyle=3D"text-decoration-line:none;color:rgb(66,133,244);font-size:12.8px" t=
arget=3D"_blank" rel=3D"noreferrer">https://github.com/EttusResearch/uhd/is=
sues/606</a><span style=3D"font-size:12.8px">&quot;) and the X300 is not</s=
pan><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">usable =
until a power-cycle.</span><br style=3D"font-size:12.8px"><span style=3D"fo=
nt-size:12.8px">I get the same issues when using both the uhd3.15.0.0 and t=
he uhd4.4.0.0.</span><br style=3D"font-size:12.8px"><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">Should I expect the same phase dif=
ferences when I re-tune to the exact</span><br style=3D"font-size:12.8px"><=
span style=3D"font-size:12.8px">same frequency or is it okay for the phase =
differences to change and I</span><br style=3D"font-size:12.8px"><span styl=
e=3D"font-size:12.8px">am missing something?</span><br style=3D"font-size:1=
2.8px"><span style=3D"font-size:12.8px">Do you have any suggestion on how t=
o solve the issue?</span><br style=3D"font-size:12.8px"><br style=3D"font-s=
ize:12.8px"><span style=3D"font-size:12.8px">Thanks,</span><br style=3D"fon=
t-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8=
px">Best regards,</span><br style=3D"font-size:12.8px"><span style=3D"font-=
size:12.8px">Carlo Venier</span></div>

--000000000000e2166205ff09c60e--

--===============8248090801581450127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8248090801581450127==--
