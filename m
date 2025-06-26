Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B79AE9F3A
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 15:42:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1C1B385F99
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jun 2025 09:42:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750945368; bh=9UOsEKZLtnfGyM0ymEwZFVt1otRq09zJHbXs7tHgcso=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=A6LOVuCvc6QwWA4pZ0b3MgvfjFlj0tAQz8U1N2VOx+HG3LA9X8prdaVM+SC4ZvoDD
	 Oh9ZAcNu/5YAoZnUGwSxAkUMrz2u5HkfCH6J1J9DfdNcdK95PhR2H0hPv131S72An2
	 UW8N12cdp3db0YjGgICFUuvbTCd6MuVHIDfa23qlrfe6zoJStUF0ePkSTkSy2F0AKw
	 lEQoLWIzJEofUxOJzap0iYmPxY0jaNFE9teQW5y2cZit/Qnc2rAanjN/cDaICt4TXu
	 Pg+Rp65IBU0viS05hzfPhJVYdXQALDn4W7h/+sEYOhN73Xqw6NZHADaU7aBZiR0mxm
	 rWGgjrWpcG0Gg==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 22248385D9C
	for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 09:41:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A6CBCF1K";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso192229266b.0
        for <usrp-users@lists.ettus.com>; Thu, 26 Jun 2025 06:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750945300; x=1751550100; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PWwfvvaxk8V+SAqs8LtdZr4O02HWw33vPBrfWjZXsvo=;
        b=A6CBCF1KJO814WNrfWudbi+q46jqYmV49++FEzOz+XD4mkUvxKnXQycTjPYhW+x/B+
         iClJmKb8fpgrmVLev8om5LM/jvK4Yg03Iue2nkkUzvmx2kDr2dAjU51hyjED0dGKGxnN
         vuReHLI2PlLUGhykD9OS3BLSx0JggmdaEm5vDs1ira8TDD/2RBxdaYGK3k3pNG3JiQwo
         LJEjDkZfY0eT8PX/XUilVecjcEMc1qIr/P4O8xOvNh8USQZwHzovRhHYw7iD9QDNVlh1
         opUO6prrDRZZsLU5urJFsrboXs1Y6ekX/mYQdsEqnq+0A6Y6NIvf4mDEbWegCzkF8LeH
         yQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750945300; x=1751550100;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PWwfvvaxk8V+SAqs8LtdZr4O02HWw33vPBrfWjZXsvo=;
        b=IG46HXRE0hAkvWSJBbIvENP2LboYY6zzteflbJYFfVp6OhILBhP41uBkrvwYnZRa9X
         n6u/ogUTK8DobF8Q4tF5CC6wZQeAqXPXEw70H7R+udaEKFSW+LCUIab2C3FHNIVhHntZ
         y+0BI0tdU+EHXluq1lmK3bko9eyZrAEyyFwU3ukNc1KPtQGYWXWxLBf2lIjQM3Sz0JAV
         oh03hfQaGP9qZ+o8OO0bWl7SNGaoZiOjaR/497YSNFLq87w2GL0BL5m25Q8qPkuZq2b4
         Y8z8nR9WjHef8zUZ9RPMi0+3WwyAZCO1LrbYZoQRdJ8N+rr2cA/31+U6pBw0WSm3kUDP
         6zqA==
X-Gm-Message-State: AOJu0Yw8GXzad+z3Gew96T9ZhPpxr0LYmL+k1A7cOd42V9YF5UHLwgN8
	clnCr+2cVoVsk9UUcSeVXEpLAzl//AfbRp0jQIUXbfs6wSefPmOY8/v7QzKtWk/95sx8aY4aLDU
	hJFxnPUjRRohjm7khtU9i92HigAofq/PmADl1rLE=
X-Gm-Gg: ASbGncuYMnd1x4e2xboxT0I5hf2/SvYx69xf2bfDAzt4Q5XrO6PgOixAw5whbYbmboT
	SnXnyNwOtfHvoiXqn2mDWRU16zVAvJAAjqWwW9J75q2gFht8qICTDWhe14qD5dEzAUh3rXj8FKi
	ycj/tbRwNvtvkfzU2a2xNxePhtbRR/Rp9oEybRRm+6iyl8EEHK
X-Google-Smtp-Source: AGHT+IHmqOwzJOfBTNUIcKjin1VCKhcHULbtDCDa0TfzfzJfSS4PqQan/Oeh6Z/I2F5EOl3dYm4up6IrsCqHyNiAhi8=
X-Received: by 2002:a17:907:97c5:b0:add:f68c:5200 with SMTP id
 a640c23a62f3a-ae0d25058c5mr442204866b.6.1750945299523; Thu, 26 Jun 2025
 06:41:39 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 26 Jun 2025 09:41:28 -0400
X-Gm-Features: Ac12FXwZXKY2ydFT5BGn3fnyoDIoI9Lmfw50wwXP7Una1dTvR6AnngGyGFvNvcs
Message-ID: <CAEXYVK4MDrk7LFTEcWBQ1QpxJZxhOOZKYnauDFNdgUy3VUkYQA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 47SFAHLONIAYHALCRD3U55CV6I6XPOBG
X-Message-ID-Hash: 47SFAHLONIAYHALCRD3U55CV6I6XPOBG
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Understanding RFNoC crossbar_routes
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/47SFAHLONIAYHALCRD3U55CV6I6XPOBG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0552329997718675251=="

--===============0552329997718675251==
Content-Type: multipart/alternative; boundary="000000000000996efc063879b8f9"

--000000000000996efc063879b8f9
Content-Type: text/plain; charset="UTF-8"

I recently had some real trouble with some blocks not being addressable and
the trace log output of a probe telling me "Nothing connected on
device:1/xbar:0->1. Ignoring that path."

I need to minimize the size of the crossbar, and I only have static
connections in my system so I was trying to build a minimal crossbar and
apparently failing to understand the crossbar_routes table.

Looking here:


https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x440_CG_1600_rfnoc_image_core.yml#L40

Pasted here for completeness:
# Rows correspond to input ports and columns correspond to output ports.
# Entering a 1 includes and a 0 removes that route from the crossbar.
crossbar_routes:
  #  eth0  dma   ep1
  #     eth1  ep0
  - [ 1, 0, 0, 1, 1 ] # eth0 (QSFP Port 0)
  - [ 0, 1, 0, 1, 1 ] # eth1 (QSFP Port 1)
  - [ 0, 0, 1, 1, 1 ] # dma
  - [ 1, 1, 1, 0, 0 ] # ep0 (radio0.0)
  - [ 1, 1, 1, 0, 0 ] # ep1 (radio1.0)

I am not sure input/output helps me here, but maybe from/to, so my first
assumption is that I read the table such that across the top I say "From"
and across the side I say "To". Is this correct or not?

Next, since all the examples I see are symmetric in communication, I am not
sure I fully understand any type of asymmetric connections. For example, my
application is configured/monitored by localhost on the ARM on an X440, RX
endpoints remote streams out 100Gbe/QSFP+ ports but doesn't need to receive
anything from them, and TX endpoints receives from 100 Gbe/QSFP+. I'd also
like my application to be able to send data out of the QSFP+ ports as well.

I am not sure how to achieve this in the routes. I believe for connectivity
I want to convey:
  *From*      -> *To*
  dma       -> eth0, eth1, txep
  eth0      -> txep
  eth1      -> txep
  txep      -> dma
  rx0ep     -> eth0
  rx1ep     -> eth1

  # Block connections
  radio0    -> rx0ep
  radio1    -> rx1ep
  txep[3:0] -> radio0
  txep[7:4] -> radio1

Note that txep has no streaming outputs, and rx0ep/rx1ep have no streaming
inputs. Also note that my control port is on txep. I think this is why I
need the dma connected to txep in both directions, right?

Lastly, in the original table, eth0 was connected to eth0. Same with the
other transport adapters (eth1 and dma) - is this actually necessary? Is a
route built here, or is it ignored? Can these entries be set to 0? In terms
of a crossbar, I would have thought the diagonal is all 0's since we're
never going to be connecting to ourselves?

To convey this, here is my table:

crossbar_routes:
  #  eth0   eth1   dma  txep  rx0ep, rx1ep
  - [   0,     0,    1,    0,     1,     0] # eth0 (QSFP Port 0)
  - [   0,     0,    1,    0,     0,     1] # eth1 (QSFP Port 1)
  - [   0,     0,    0,    1,     0,     0] # dma
  - [   1,     1,    1,    0,     0,     0] # txep
  - [   0,     0,    0,    0,     0,     0] # rx0ep
  - [   0,     0,    0,    0,     0,     0] # rx1ep

Did I get it right, or am I completely wrong here? I've tried lots of
combinations, but the only one that works is when I am basically symmetric
and fully connected with all the TA's which is suboptimal.

Any guidance would be much appreciated.

Thanks,
Brian

--000000000000996efc063879b8f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I recently had some real trouble with some blocks not=
 being addressable and the trace log output of a probe telling me &quot;Not=
hing connected on device:1/xbar:0-&gt;1. Ignoring that path.&quot;=C2=A0</d=
iv><div><br></div><div>I need to minimize the size=C2=A0of the crossbar, an=
d I only have static connections in my system so I was trying to build a mi=
nimal crossbar and apparently failing to understand the crossbar_routes tab=
le.</div><div><br></div>Looking here:<div><br></div><div>=C2=A0=C2=A0<a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/x=
440_CG_1600_rfnoc_image_core.yml#L40">https://github.com/EttusResearch/uhd/=
blob/master/fpga/usrp3/top/x400/x440_CG_1600_rfnoc_image_core.yml#L40</a></=
div><div><br></div><div>Pasted here for completeness:</div><div><font face=
=3D"monospace"># Rows correspond to input ports and columns correspond to o=
utput ports.<br># Entering a 1 includes and a 0 removes that route from the=
 crossbar.</font></div><div><font face=3D"monospace">crossbar_routes:<br>=
=C2=A0 # =C2=A0eth0 =C2=A0dma =C2=A0 ep1<br>=C2=A0 # =C2=A0 =C2=A0 eth1 =C2=
=A0ep0<br>=C2=A0 - [ 1, 0, 0, 1, 1 ] # eth0 (QSFP Port 0)<br>=C2=A0 - [ 0, =
1, 0, 1, 1 ] # eth1 (QSFP Port 1)<br>=C2=A0 - [ 0, 0, 1, 1, 1 ] # dma<br>=
=C2=A0 - [ 1, 1, 1, 0, 0 ] # ep0 (radio0.0)<br>=C2=A0 - [ 1, 1, 1, 0, 0 ] #=
 ep1 (radio1.0)</font></div><div><br></div><div>I am not sure input/output =
helps me here, but maybe from/to, so my first assumption is that I read the=
 table such that across the top I say &quot;From&quot; and across the side =
I say &quot;To&quot;. Is this correct or not?</div><div><br></div><div>Next=
, since all the examples I see are symmetric in communication, I am not sur=
e I fully understand any type of asymmetric connections. For example, my ap=
plication is configured/monitored by localhost on the ARM on an X440, RX en=
dpoints remote streams out 100Gbe/QSFP+ ports but doesn&#39;t need to recei=
ve anything from them, and TX endpoints receives from 100 Gbe/QSFP+. I&#39;=
d also like my application to be able to send data out of the QSFP+ ports a=
s well.</div><div><br></div><div>I am not sure how to achieve this in the r=
outes. I believe for connectivity I want to convey:</div><div><font face=3D=
"monospace">=C2=A0 <u>From</u>=C2=A0 =C2=A0 =C2=A0 -&gt; <u>To</u></font></=
div><div><font face=3D"monospace">=C2=A0 dma=C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt=
; eth0, eth1, txep</font></div><div><font face=3D"monospace">=C2=A0 eth0=C2=
=A0 =C2=A0 =C2=A0 -&gt; txep</font></div><div><font face=3D"monospace">=C2=
=A0 eth1=C2=A0 =C2=A0 =C2=A0 -&gt; txep</font></div><div><font face=3D"mono=
space">=C2=A0 txep=C2=A0 =C2=A0 =C2=A0 -&gt; dma</font></div><div><font fac=
e=3D"monospace">=C2=A0 rx0ep=C2=A0 =C2=A0 =C2=A0-&gt; eth0</font></div><div=
><font face=3D"monospace">=C2=A0 rx1ep=C2=A0 =C2=A0 =C2=A0-&gt; eth1</font>=
</div><div><font face=3D"monospace"><br></font></div><div><font face=3D"mon=
ospace">=C2=A0 # Block connections</font></div><div><font face=3D"monospace=
">=C2=A0 radio0=C2=A0 =C2=A0 -&gt; rx0ep</font></div><div><font face=3D"mon=
ospace">=C2=A0 radio1=C2=A0 =C2=A0 -&gt; rx1ep</font></div><div><font face=
=3D"monospace">=C2=A0 txep[3:0] -&gt; radio0</font></div><div><font face=3D=
"monospace">=C2=A0 txep[7:4] -&gt; radio1</font></div><div><br></div><div>N=
ote that txep has no streaming outputs, and rx0ep/rx1ep have no streaming i=
nputs. Also note that my control port is on txep. I think this is why I nee=
d the dma connected to txep in both directions, right?</div><div><br></div>=
<div>Lastly, in the original table, eth0 was connected to eth0. Same with t=
he other transport adapters (eth1 and dma) - is this actually necessary? Is=
 a route built here, or is it ignored? Can these entries be set to 0? In te=
rms of a crossbar, I would have thought the diagonal is all 0&#39;s since w=
e&#39;re never going to be connecting to ourselves?</div><div><br></div><di=
v>To convey this, here is my table:</div><div><br></div><div><font face=3D"=
monospace">crossbar_routes:<br>=C2=A0 # =C2=A0eth0 =C2=A0 eth1 =C2=A0 dma =
=C2=A0txep =C2=A0rx0ep, rx1ep<br>=C2=A0 - [ =C2=A0 0, =C2=A0 =C2=A0 0, =C2=
=A0 =C2=A01, =C2=A0 =C2=A00, =C2=A0 =C2=A0 1, =C2=A0 =C2=A0 0] # eth0 (QSFP=
 Port 0)<br>=C2=A0 - [ =C2=A0 0, =C2=A0 =C2=A0 0, =C2=A0 =C2=A01, =C2=A0 =
=C2=A00, =C2=A0 =C2=A0 0, =C2=A0 =C2=A0 1] # eth1 (QSFP Port 1)<br>=C2=A0 -=
 [ =C2=A0 0, =C2=A0 =C2=A0 0, =C2=A0 =C2=A00, =C2=A0 =C2=A01, =C2=A0 =C2=A0=
 0, =C2=A0 =C2=A0 0] # dma<br>=C2=A0 - [ =C2=A0 1, =C2=A0 =C2=A0 1, =C2=A0 =
=C2=A01, =C2=A0 =C2=A00, =C2=A0 =C2=A0 0, =C2=A0 =C2=A0 0] # txep<br>=C2=A0=
 - [ =C2=A0 0, =C2=A0 =C2=A0 0, =C2=A0 =C2=A00, =C2=A0 =C2=A00, =C2=A0 =C2=
=A0 0, =C2=A0 =C2=A0 0] # rx0ep<br>=C2=A0 - [ =C2=A0 0, =C2=A0 =C2=A0 0, =
=C2=A0 =C2=A00, =C2=A0 =C2=A00, =C2=A0 =C2=A0 0, =C2=A0 =C2=A0 0] # rx1ep</=
font></div><div><br></div><div>Did I get it right, or am I completely wrong=
 here? I&#39;ve tried lots of combinations, but the only one that works is =
when I am basically symmetric and fully connected with all the TA&#39;s whi=
ch is suboptimal.</div><div><br></div><div>Any guidance would be much appre=
ciated.</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--000000000000996efc063879b8f9--

--===============0552329997718675251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0552329997718675251==--
