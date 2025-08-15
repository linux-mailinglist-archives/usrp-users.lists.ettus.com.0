Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5571CB277C0
	for <lists+usrp-users@lfdr.de>; Fri, 15 Aug 2025 06:26:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82A55386AA0
	for <lists+usrp-users@lfdr.de>; Fri, 15 Aug 2025 00:26:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755231977; bh=Y115W456RcwYD83/p6aUD+xSDTMA7wG7AAbMkh5DA1Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Tr3yT8Vg2MUa2IaA/u6eM7EZ9p6OeHVKxt6AdwUH9UU7LWQEuWhIJKSXvwsimTPH0
	 28oPX5Gdk71B66nN30+y2k2E8JOFC7hC6ttbzaBF//iTCqt/uCXCMwClNm0JFLGaO2
	 yH9Q/TedPE261t8qOsrKsVMqzoj4MxhZmNfPfVsmDsZqAz1akGThiwWSredLmEWus0
	 KNYvB576BLMbkjbsiYcwcANx66U9+OiG4EK+8zIy4zt2CyOswP/95c0bSt3D2Un0Jd
	 cubC+v01itzEfa/Dxp3CQwwylh2X2ju4MYY3r8TdiZ3QmGB989Eauk7UD+M/wRQrTS
	 /Xq0Jox+NrJ9Q==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 49F27386A9C
	for <usrp-users@lists.ettus.com>; Fri, 15 Aug 2025 00:25:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="oZcjoqut";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e931cddb0e2so1268427276.3
        for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 21:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1755231939; x=1755836739; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lULiH07Ro9jkjkmJdEw10MwGzHOe2p6DFawBhou1iyw=;
        b=oZcjoqut5PF6Sg1If5GMKtyzLQ5R7OViOIzwpouToywpqj0vqD2OlyBsg68kKDHBVa
         IyToGhEYRXsLWfRdTt2QVvdqnkP2qwoxn9mABCepU6u9pP3/jqMEE6xvxCAENOHT1fWp
         usyU//DDuqgCfPbyxO7l7TiPyh7tUGThyNbpl38qENiOyH8kkVtEL98UMSgGr322naYM
         pHUx/Tx61wssK/0t+tjXLxYU9Zerttg9hoIWoekek3h92buNK/WfK2SirEaDQg14ZfBe
         n8KDMf97mDM0EcxIA23CdqfrOX8FTXuKLPIVJO5RfNo9DzWdRc+cKCnJ1BXboyK4bys4
         hd+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755231939; x=1755836739;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lULiH07Ro9jkjkmJdEw10MwGzHOe2p6DFawBhou1iyw=;
        b=P8jgZb0YebY6t9EcSVdITIRChEzq+pcMP87JcYwCW6VBiFGyY8X4lIf4LDSf21uQw+
         FFCdcZhjcTocuwQs59g66nYDmgpPcgmhLId+UqF/9xpZ8BFyDW2FSj6ScHyzX52ypymS
         ETdGOQ4vx95WKxQiBv/iHG4yuPyVWXbjmC18km/VJfOoH4SkQgWSyhuAvyn5kprSUQDD
         ugLdFzkni51yj5FvgECC3d//CQruv0RZmJ8UMl63Ie4qpWZeKhKKD62Su0Lug0Fgrga8
         DWWWswA94jSvE+qQHSv8mNRism407z0u1iRR6vyTXUbMz8744PIVACLtMFBLjhaK0koM
         Rv2w==
X-Forwarded-Encrypted: i=1; AJvYcCWLqvnmAD5DDUNJ/NbP66S1VN1pIYbaM7WKeeec6fbBxtuM7+GNstOCgdLI3RQgcSfLHD+oIzEKP5DH@lists.ettus.com
X-Gm-Message-State: AOJu0YzJKYj3973iGP0nsKvvOMuQ/JAc5YI+kS8lj7XPPHmEYkPqHcv4
	mCnM6b52gThn4Ufkf7invy5sI99UTUrqCpsTVpB0zQhhcocTjPiN1cMezKxJ/oK+pX4rioxLSfD
	v1q2zLzshPetZQjFHPC/62k4T2rqzrxl9TON5suenFE+d
X-Gm-Gg: ASbGncs3dLqqPX7Btgw4p6B9G9l2PTOt76nENM+i4fg352y9ddxD8nCjeCxFyn1dIEv
	blpDzX1w2yo821FCxN8WVqT/Cm6WHep60g4FzQnSqX7t+Do1xc3c7W5pbDQYglcYDmvlOxgc03d
	9u+7F6pWeqnbdb1FablVLgqyb2GEYLs5d9UI8QdlqcD1rSLYfjn/MXvcV/u7DbOE5017F98269/
	ejoMgU/fNu5Zk3ZDYhkQUQSKHRvcGQZo2O5lW6M
X-Google-Smtp-Source: AGHT+IFK7Fx52hsln7aCJtlVLAm59TjSd+k82n85wkSi3tpB39y1tkQSl/o7FzFIAeY/r1gjQHwirtW76HEk8biB1pg=
X-Received: by 2002:a05:6902:1747:b0:e90:669c:564 with SMTP id
 3f1490d57ef6-e93323ad385mr821312276.14.1755231939433; Thu, 14 Aug 2025
 21:25:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
 <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com>
 <CAEXYVK4FTzzmwiCNEQzVdSfF66a+NhjbRM6V4_40Uicg_kpfhg@mail.gmail.com>
 <CAAxXO2G60mr+mUap+zjGzEx3a6T8CC3V6NeL7TCUc97Yr318pQ@mail.gmail.com> <CAEXYVK6TgKm5MTFc_EPEMd50Ebhxz4W=jCrDbMx7iDRhMVP_fQ@mail.gmail.com>
In-Reply-To: <CAEXYVK6TgKm5MTFc_EPEMd50Ebhxz4W=jCrDbMx7iDRhMVP_fQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 14 Aug 2025 23:25:23 -0500
X-Gm-Features: Ac12FXwcIrWz5QcY17guQSGqptMnSNUp-ZQZFsTYqnchmC1ptspbo1cy4Mzo5CU
Message-ID: <CAFche=i--MQDHUPcdycfvUmOFf2HOfs9qi3PP=3aiO+HNmzBcQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 5QXVCFEZP7EAL5YSHWBXDNXWEWKU6WWZ
X-Message-ID-Hash: 5QXVCFEZP7EAL5YSHWBXDNXWEWKU6WWZ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5QXVCFEZP7EAL5YSHWBXDNXWEWKU6WWZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2085233143004299612=="

--===============2085233143004299612==
Content-Type: multipart/alternative; boundary="0000000000003facfd063c5fc8a5"

--0000000000003facfd063c5fc8a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Brian,

Are you enabling pause frames? It is required when transmitting to the USRP
at high rates with 100 GbE.

https://files.ettus.com/manual/page_transport.html#transport_udp_linux

Unfortunately, as far as I know, it's not yet enabled by default for some
technical reasons. So be sure to turn it on after each FPGA reload or
reboot.

You should be able to read those registers by doing raw memory read/writes
to the system bus. The register offsets are here:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport=
_sv/eth_regs.vh

The base address for QSFP0 I think is 0x12_0000_8000, so REG_CHDR_DROPPED,
for example, should be at 0x12_0000_9030. The base address for QSFP1 should
be 0x12_0001_8000.

For example, running this should return the bottom part of the MAC address:

devmem2 0x1200009010

Hopefully I've got the details right. I'm traveling at the moment, so I
can't easily verify.

Wade


On Thu, Aug 14, 2025 at 7:04=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Thu, Aug 14, 2025 at 7:38=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Yeah,
>>
>> It makes sense. But just to be on the safe side
>> "I could not ping the interface (Destination unreachable) and packets
>> stopped flowing through the interface from the host machine"
>> wouldn't at least give it a try? Seems you have lost your routing tables
>> to get Destination Unreachable over a static route!
>> When you get the problem what does the arp command show?
>>
>
> Before the issue, arp shows the connection appropriately and pings work
> fine. After flooding, arp shows (incomplete) and the ping responds with a
> Destination Host Unreachable message.
>
> With a static arp entry, the packet keep flowing (better!) but the pings
> still get lost. Internally I see tready fall at the output of the etherne=
t
> transport adapter into the crossbar and never come back. The CHDR dropped
> count continues in the eth_ipv4_interface.
>
> I think going with the static entry just masks the issue that things are
> getting gummed up somewhere. I think I am just surprised that the ICMP
> stuff stops working since I thought the CHDR and CPU paths diverge before
> the crossbar so things like pings should still work even if the CHDR
> pipeline is stalled.
>
> Brian
>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003facfd063c5fc8a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Brian,</div><div><br></div><div>Are you enabling paus=
e frames? It is required when transmitting to the USRP at high rates with 1=
00 GbE.</div><div><br></div><div><a href=3D"https://files.ettus.com/manual/=
page_transport.html#transport_udp_linux">https://files.ettus.com/manual/pag=
e_transport.html#transport_udp_linux</a></div><div><br></div><div>Unfortuna=
tely, as far as I know, it&#39;s not yet enabled by default for some techni=
cal reasons. So be sure to turn it on after each FPGA reload or reboot.</di=
v><div><br></div><div>You should be able to read those registers by doing r=
aw memory read/writes to the system bus. The register offsets are here:</di=
v><div><br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/=
master/fpga/usrp3/lib/rfnoc/xport_sv/eth_regs.vh">https://github.com/EttusR=
esearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/eth_regs.vh</a></div>=
<div><br></div><div>The base address for QSFP0 I think is 0x12_0000_8000, s=
o=C2=A0REG_CHDR_DROPPED, for example, should be at=C2=A00x12_0000_9030. The=
 base address for QSFP1 should be 0x12_0001_8000.</div><div><br></div><div>=
For example, running this should return the bottom part of the MAC address:=
</div><div><br></div><div>devmem2 0x1200009010</div><div><br></div><div>Hop=
efully I&#39;ve got the details=C2=A0right. I&#39;m traveling at the moment=
, so I can&#39;t easily verify.</div><div><br></div><div>Wade</div><div><br=
></div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 14, 2025 at 7:04=E2=80=AFPM Brian=
 Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 14, 2025 at 7:38=E2=80=AFPM Niko=
s Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nba=
lkanas@gmail.com</a>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-=
size:small">Yeah,</div><div style=3D"font-size:small"><br></div><div style=
=3D"font-size:small">It makes sense. But just to be on the safe side=C2=A0<=
/div><div style=3D"font-size:small">&quot;I could not ping the interface (D=
estination unreachable) and packets stopped flowing through the interface f=
rom the host machine&quot;</div><div style=3D"font-size:small">wouldn&#39;t=
 at least give it a try? Seems you have lost your routing tables to get Des=
tination Unreachable over a static route!=C2=A0</div><div style=3D"font-siz=
e:small">When you get the problem what does the arp command show?</div></di=
v></blockquote><div><br></div><div>Before the issue, arp shows the connecti=
on appropriately and pings work fine. After flooding, arp shows (incomplete=
) and the ping responds with a Destination Host Unreachable message.</div><=
div><br></div><div>With a static arp entry, the packet keep flowing (better=
!) but the pings still get lost. Internally=C2=A0I see tready=C2=A0fall at =
the output of the ethernet transport adapter into the crossbar and never co=
me back. The CHDR dropped count continues in the eth_ipv4_interface.</div><=
div><br></div><div>I think going with the static entry just masks the issue=
 that things are getting gummed up somewhere. I think I am just surprised t=
hat the ICMP stuff stops working since I thought the CHDR and CPU paths div=
erge before the crossbar so things like pings should still work even if the=
 CHDR pipeline is stalled.</div><div><br></div><div>Brian</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003facfd063c5fc8a5--

--===============2085233143004299612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2085233143004299612==--
