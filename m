Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 561F9B2734C
	for <lists+usrp-users@lfdr.de>; Fri, 15 Aug 2025 02:04:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1B8C386B01
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 20:04:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755216256; bh=toIMWWXcoCTOW1lfUFq68fjswTY1KAoZxN2wI4NGZ2k=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WzEVrr8p7y0ObBhNBKfbmlbbmRCFKZ3r320vPZnHooOW8AC30lnFoAZ1GxxzYjk5j
	 Ig86Hc8ct6+ciVSRZBaCW78u5wRqQNPCwSkEJ4eA68DnfxzJAt/WtDcmwVLHRXJIXI
	 THrB+PrQBruDX6vftSw6ljSmIXdK3stF1GEuXAF5xsQtSxgTvavMRlSHLUFu53zokv
	 PtdPIEod9o3fy6E6rDToub2tXe48WZ3ks8betrkOMw4lAdClvYTk8fS0RAUJTBCaqO
	 we32rjOxRncYrfuTXiPMSUnzVDGA8lwYNZFnhJxbcWeCiE/DiI9FRKSKKbCb8qdUzH
	 yWQe/oFli6HIQ==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 7011E3869B4
	for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 20:03:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IuJzpPuw";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-61868d83059so4375741a12.0
        for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 17:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755216216; x=1755821016; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0VOhTNyrHSmAgJ0GtjRsik3vxu+CqxGEgodb/OSACIA=;
        b=IuJzpPuwDQU2mpvEy39lJVN3fFXW4Q0R5NkMrEowWlPItRTRg/2I17wJhjyLkBm/a1
         WjNPtznxNBE854AmZn7Uee/XRn1Nq5qBqNlqFksl3qLd827FaF2ja4XScHkaMDcOCkal
         q9H4tIPsqFhK3PSWUZypd0MVue/pnOpv4oojBBw0/B2bWItfRtompKVs6CCvpY7u6J6y
         N+iqH+PVM3gZi31n09KA+cW+tz+aFFBNnTBRupIjLmGbvctvCob5GeNBiwvWiG9t2j0g
         SPXJxySoFhFNmRaEFaX8HD/xyyoY7qTpP6DNdV9Ibh7K2L9OATUzxyTJUAFunEvvvIzu
         +QJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755216216; x=1755821016;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0VOhTNyrHSmAgJ0GtjRsik3vxu+CqxGEgodb/OSACIA=;
        b=YfJKi/QaWnD+P7ZM+YA1LUVgNGDQJpvJ8cb33XFJGkmETz+wHfOnKVizNoB+TF2fv5
         XCDz1nBUmXIgsbyLqVb6rYogwUSzyf6EOblY7MSy4TSnLYLFDcWPTkCtZ8I3HpTVXFk9
         fjdhHtW1S0dFkFPp/J2+GUWKP7JOFuyxamHizVVeNTyKE0qcAn6fxpYZ6LFnfSVrFYCy
         LW+EhOZs2Nal9Ssnb0Tldgd+2kbNJxDAmm1RL6JZhC7QFAaovgbdgVAEE8N7CwjRoNWT
         LfopJ/iC7waKIbpH7UM7q7M9ZB6Z1r3Z0ezzoqen6eSNG8eL4gImIwCZHFEuXdFNbj4e
         MdTA==
X-Gm-Message-State: AOJu0Yyzv2rWLhXIcnkW1neA3pRfuEL5NuSj8tYy8+TLryL5N1CCXgDv
	GSFx1zoRsvI5B8RqxOA9pWVZHRz8XxLzSXeFfr58oQMSZqjIG/lVIbMDLXPurMoFcmvHnd66rYA
	Q0+uS8ViAVRzKlbdzbmge/arlNtNP7K0=
X-Gm-Gg: ASbGncsQe1yzsvZrvapWaeBae/xrpz7xw9FF3Ti/p4+wTdgV9GSs9hHUp6rBys9UWIT
	9/0SnOkK1QoX+I4HyeAFKfvUJUn/9482QAzx0daES8jvQaAAmkBD+Dr/QV3NU+BUfyW4HgLdhDN
	VUudgJEkMT2EQKXvN5rM+WNiF/k8BXgKIP0FThlPuYQqapiq3Bc985NXLc2SGPAF+uRSCNn0Dhh
	38iJZU=
X-Google-Smtp-Source: AGHT+IEWl+izOP9BSihTzhb0HPRVvThG7EZdFTUXEq0K+bg7R9YAsl7D4x4t8iZuB4MuajPJnWYkMvX3jOOzxjcZPLk=
X-Received: by 2002:a17:907:94cc:b0:af1:4c23:c8c8 with SMTP id
 a640c23a62f3a-afcdb15c234mr24219766b.12.1755216215959; Thu, 14 Aug 2025
 17:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
 <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com>
 <CAEXYVK4FTzzmwiCNEQzVdSfF66a+NhjbRM6V4_40Uicg_kpfhg@mail.gmail.com> <CAAxXO2G60mr+mUap+zjGzEx3a6T8CC3V6NeL7TCUc97Yr318pQ@mail.gmail.com>
In-Reply-To: <CAAxXO2G60mr+mUap+zjGzEx3a6T8CC3V6NeL7TCUc97Yr318pQ@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 14 Aug 2025 20:03:24 -0400
X-Gm-Features: Ac12FXz7iej9Q_wTdttAqBgFrCBKDmH0i5CPws6u-zQD9n2d7g8WrlaOLEXCgE4
Message-ID: <CAEXYVK6TgKm5MTFc_EPEMd50Ebhxz4W=jCrDbMx7iDRhMVP_fQ@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: 3K7KLXRXS2DD4V3WD6Z5J3YYJSVPK35Z
X-Message-ID-Hash: 3K7KLXRXS2DD4V3WD6Z5J3YYJSVPK35Z
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3K7KLXRXS2DD4V3WD6Z5J3YYJSVPK35Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5168064488204245481=="

--===============5168064488204245481==
Content-Type: multipart/alternative; boundary="0000000000000e6d59063c5c1f2d"

--0000000000000e6d59063c5c1f2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 14, 2025 at 7:38=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Yeah,
>
> It makes sense. But just to be on the safe side
> "I could not ping the interface (Destination unreachable) and packets
> stopped flowing through the interface from the host machine"
> wouldn't at least give it a try? Seems you have lost your routing tables
> to get Destination Unreachable over a static route!
> When you get the problem what does the arp command show?
>

Before the issue, arp shows the connection appropriately and pings work
fine. After flooding, arp shows (incomplete) and the ping responds with a
Destination Host Unreachable message.

With a static arp entry, the packet keep flowing (better!) but the pings
still get lost. Internally I see tready fall at the output of the ethernet
transport adapter into the crossbar and never come back. The CHDR dropped
count continues in the eth_ipv4_interface.

I think going with the static entry just masks the issue that things are
getting gummed up somewhere. I think I am just surprised that the ICMP
stuff stops working since I thought the CHDR and CPU paths diverge before
the crossbar so things like pings should still work even if the CHDR
pipeline is stalled.

Brian

>

--0000000000000e6d59063c5c1f2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Aug 14, 2025 at 7:38=E2=80=AFPM N=
ikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.co=
m</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=
=3D"font-size:small">Yeah,</div><div style=3D"font-size:small"><br></div><d=
iv style=3D"font-size:small">It makes sense. But just to be on the safe sid=
e=C2=A0</div><div style=3D"font-size:small">&quot;I could not ping the inte=
rface (Destination unreachable) and packets stopped flowing through the int=
erface from the host machine&quot;</div><div style=3D"font-size:small">woul=
dn&#39;t at least give it a try? Seems you have lost your routing tables to=
 get Destination Unreachable over a static route!=C2=A0</div><div style=3D"=
font-size:small">When you get the problem what does the arp command show?</=
div></div></blockquote><div><br></div><div>Before the issue, arp shows the =
connection appropriately and pings work fine. After flooding, arp shows (in=
complete) and the ping responds with a Destination Host Unreachable message=
.</div><div><br></div><div>With a static arp entry, the packet keep flowing=
 (better!) but the pings still get lost. Internally=C2=A0I see tready=C2=A0=
fall at the output of the ethernet transport adapter into the crossbar and =
never come back. The CHDR dropped count continues in the eth_ipv4_interface=
.</div><div><br></div><div>I think going with the static entry just masks t=
he issue that things are getting gummed up somewhere. I think I am just sur=
prised that the ICMP stuff stops working since I thought the CHDR and CPU p=
aths diverge before the crossbar so things like pings should still work eve=
n if the CHDR pipeline is stalled.</div><div><br></div><div>Brian</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--0000000000000e6d59063c5c1f2d--

--===============5168064488204245481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5168064488204245481==--
