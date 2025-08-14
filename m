Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC44B27053
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 22:46:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A01ED386B9F
	for <lists+usrp-users@lfdr.de>; Thu, 14 Aug 2025 16:46:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755204388; bh=IeoaTVSVBDJRjExWCVSRDM7/NBbbAE8p8p0WKE5M7hc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cX/dYbGV24/7rgN7UU/ybCSaABMH7MtPN3Wj2eUUkIfmMSPJbl2p8NTzV8jkmv33d
	 5SsNYg650ABQN/YTM/als6KNV1Wmp9gszsXSFnV8OPvaCUd0A4Y6P7ee5Q6Jtz8AZp
	 DOgkdN51Vl2fYaG1EGt41TDep1BQYxGq5nnYciNh09uLHR9dIva8SgP3RFYjjrmEMH
	 ber4L3zSpf3nlHKLilQ66z8TolBH0tX6VpsUrFcvzqYUkqlbDC8QqvAYZcPfWdRUCg
	 XyJh6GYoPqZQz5J7rV2NbY7K9VtXUHKB1GRK1YjTql6Y/ZmJ8WFl67DzoZu3qGrxY0
	 NS4Ow4qZ3s63A==
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	by mm2.emwd.com (Postfix) with ESMTPS id DB1783868DD
	for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 16:45:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VVD1l12W";
	dkim-atps=neutral
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3e56ffccadaso10936995ab.1
        for <usrp-users@lists.ettus.com>; Thu, 14 Aug 2025 13:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755204350; x=1755809150; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FbDSWv4QIT5+JgjKJziDgdG6kRD56UXhv0fnWh6vdjA=;
        b=VVD1l12WprpHNAdFlKhjFmsOs39pLKEWUC76eRbnuCkxFtWyfdhk0oimg23cEdf2vD
         HBZ9QMB0AmNqkJtrvbQB7RxJRzCYNuLbM4ikcg7q7/D3JOZxpftFozidUTe0jN+XdD5q
         pmaqzKpvBq6bUXhiB16JcoMy7LpEiEwKd3tJnjbOc92p2RzClJnOt+uVO2zqmy73iD3p
         uxXtbexZV9cRRAUcE/SbfFwj/wSaY2flL7Y6xCmuxYmCK3Lk6VMGYfPHuNP9p9S0IrBu
         pX+loJUvn84W7VHDYhY4WuhkVDXFoC7FUQSmThqAalss6JlAM95DwUp/BU7ndxQhVgnJ
         0+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755204350; x=1755809150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FbDSWv4QIT5+JgjKJziDgdG6kRD56UXhv0fnWh6vdjA=;
        b=wpIwp5etoWQVhtjEwVxpYuK73B2Fiq/r9tpkyVmi2Sj6GjIkKZkNmIb0y+LkJ3v5Ay
         uP4y0ES15rZKOR5fcv/JHK6RgcUrhc7OQRV81sYrhXK5xv8g35d6p8h6ORNiy4xMRBUm
         n6tKWLz7nOfCsAWbmTi6DAfmHxQGuNwPleJyzwbtBDhSYN0ukDmNYPrMaamx/p1mztYB
         wM0LjiAbs9Eb3QPivFgSSlXy7TMBNMV0mM3SMAaXPgW5ljhJWo2w2RHT53k87jRmNpNd
         vUaKUbRLDFtyDpKIFZfHQAFVZDaSumvE5RNDOeTMn7Qh9wRhx7zSFn1L6aHgI/X3y6dX
         dbvQ==
X-Gm-Message-State: AOJu0YxQ2XPtPwdIZHdrvtHYML5aXpK0n6OyE/MMcDGiqJXKA0s9UVwU
	cpOA+x+j+rELmFALbrS+TLAOgtXRD9koaNEGJRWgYr7OnN3lnTyDoQYusiVuhd3/3mKXjvD3w/J
	WSO+R1Tp6umaimhtarK25ddYZvCyWlT0=
X-Gm-Gg: ASbGncsUXGQy5NIF9+fby3jz7ybLkdpmHYoCnlWIs5SKP5UGMLINj3xaGiCpoupEly2
	5RjM54TCM4312HSqcFGO3w9vXp0GvtMVRgwK/wN0X1S9AWDc5otsDbNi/MZquh2np2aCk9Vn6Oa
	2kEOiVYQt07iq5WIYipdd6I3sFcz++fz3QkOde+2LpkQ2PpIBVyN1AmEyLKuF/1viXR9Z5VPEUT
	1HbjQ==
X-Google-Smtp-Source: AGHT+IHJn3t7xM/PYyVzcsVpwcILD4Dd0KXKjKaTI5rhd4hejI4tR6soYAlC2IkKs8CBLi+Mi/WauweeMibwUdnJCfo=
X-Received: by 2002:a05:6e02:1fc9:b0:3e5:4da2:93ad with SMTP id
 e9e14a558f8ab-3e5709144c7mr77595215ab.11.1755204350043; Thu, 14 Aug 2025
 13:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
In-Reply-To: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 14 Aug 2025 23:45:38 +0300
X-Gm-Features: Ac12FXwzlmsXdGPkRJPhDwNTFI5JhLgWR87cszm6D5Cm9uqdm0JoKq_WygoLIQ0
Message-ID: <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: LUB7X3GCPGWDTG6GHQ2ULDPQ4HJXFHLQ
X-Message-ID-Hash: LUB7X3GCPGWDTG6GHQ2ULDPQ4HJXFHLQ
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LUB7X3GCPGWDTG6GHQ2ULDPQ4HJXFHLQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2000490895856869080=="

--===============2000490895856869080==
Content-Type: multipart/alternative; boundary="000000000000caf437063c595b2d"

--000000000000caf437063c595b2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

Can you post a wireshark output with your problem?

TIA
Nikos

On Thu, Aug 14, 2025 at 6:50=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> I recently ran into an issue where too much offered load to the radio
> would cause the entire 100G link to become unresponsive, but dmesg didn't
> show that the link actually went down. I could not ping the interface
> (Destination unreachable) and packets stopped flowing through the interfa=
ce
> from the host machine. Reseating the cable worked, but I need to figure o=
ut
> why the port stopped responding in the first place.
>
> I see in the eth_100g that there is a generic to enable pause frames to b=
e
> generated:
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ip/e=
th_100g_bd/eth_100g.sv#L12
>
> ... and I also see in eth_ipv4_interface that there are some dropped
> counters:
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xpo=
rt_sv/eth_ipv4_interface.sv#L278
>
> But in the host code, I can't find where they might be able to be read ou=
t.
>
> So I assume that dropping packets is well supported in the code, and that
> the interface should never become unresponsive.
>
> Any insights on where to read those counters, or do I need to hook an ILA
> up to it?
>
> Any idea if the interface can run with the PAUSE_EN parameter set to 0? I
> don't want to slow the link down, and I'd rather drop things in the radio
> itself. I just need to be able to know when and how often it's happening.
>
> Thanks in advance.
>
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000caf437063c595b2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
Brian,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">Can you post a wir=
eshark output with your problem?</div><div class=3D"gmail_default" style=3D=
"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size=
:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:small">Nik=
os</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 14, 2025 at 6:50=E2=80=AFPM Brian=
 Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>I recently ran into an issue where too much offered load=
 to the radio would cause the entire 100G link to become unresponsive, but =
dmesg didn&#39;t show that the link actually went down. I could not ping th=
e interface (Destination unreachable) and packets stopped flowing through t=
he interface from the host machine. Reseating the cable worked, but I need =
to figure out why the port stopped=C2=A0responding in the first place.</div=
><div><br></div>I see in the eth_100g that there is a generic to enable pau=
se frames to be generated:<div><br></div><div>=C2=A0=C2=A0<a href=3D"https:=
//github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x400/ip/eth_100g_=
bd/eth_100g.sv#L12" target=3D"_blank">https://github.com/EttusResearch/uhd/=
blob/master/fpga/usrp3/top/x400/ip/eth_100g_bd/eth_100g.sv#L12</a></div><di=
v><br></div><div>... and I also see in eth_ipv4_interface that there are so=
me dropped counters:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https:=
//github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/et=
h_ipv4_interface.sv#L278" target=3D"_blank">https://github.com/EttusResearc=
h/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/eth_ipv4_interface.sv#L278<=
/a></div><div><br></div><div>But in the host code, I can&#39;t find where t=
hey might be able to be read out.</div><div><br></div><div>So I assume that=
 dropping packets is well supported in the code, and that the interface sho=
uld never become unresponsive.</div><div><br></div><div>Any insights on whe=
re to read those counters, or do I need to hook an ILA up to it?</div><div>=
<br></div><div>Any idea if the interface can run with the PAUSE_EN paramete=
r set to 0? I don&#39;t want to slow the link down, and I&#39;d rather drop=
 things in the radio itself. I just need to be able to know when and how of=
ten it&#39;s happening.</div><div><br></div><div>Thanks in advance.</div><d=
iv><br></div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000caf437063c595b2d--

--===============2000490895856869080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2000490895856869080==--
