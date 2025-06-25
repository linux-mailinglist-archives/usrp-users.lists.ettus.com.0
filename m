Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EDEAE7E49
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 12:00:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC0C8385956
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 06:00:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750845610; bh=xTSFP+abm9SasoncBwP6Vf3pyEykwpBNHkzBEbBwLOM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cyXcAyDpTVLof9Fpz5NF8BJj9aLsTz2EeT4tFFoLbfNSug+I6yBSGkxN76Qgk+Npc
	 t633fNzjnvSPkk1nRKKM/FEFe7VsOndiG2gerjuybDNvuf7SlHYc3nXZCuWY64TuUM
	 VWpfKZPaAmEu05yAt7tANi56mZ2gYvHyO9wTYgj91PH6YHG4aRKtXpAMc1q+6ZpB9e
	 1pUiU3SAm1XSZaa8pYo82tktYKyFaTO7OfFijUs1mGLaXRB9SUSIrJenWDy4LK3xPS
	 ESPIs14sMNNUErUl5LPDQzW12p4Alz+n2xIxdWf5OAUCJ1/qxVCSeLfz3gbzl918wZ
	 fPzftGQcWIc1A==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 515EA3855D1
	for <usrp-users@lists.ettus.com>; Wed, 25 Jun 2025 05:59:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Cnu7hL6q";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ad56cbc7b07so979880866b.0
        for <usrp-users@lists.ettus.com>; Wed, 25 Jun 2025 02:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1750845554; x=1751450354; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LoLOVqBSXNwsK4ecxBJ346o3ETpq6Xl3LbEE0+XapmA=;
        b=Cnu7hL6qC0pJPpM7CKChGvoWi4jasH0XPiV6N2Wg/GrNkz+HXaTcp/CeQhrznFBZJV
         gwS+xFuXKeDVoSY1p4GVPw8lzrwVjr6C9AvnHhjw8HmrGQla6o/qfZ8f9FLJB+L0g+b6
         SgY20r04uFKrqmneuzWcMdejXSbnm/LFzEB/PvwC4yHz37c8Wy4Q0R8A7fMXhWb5Yfca
         y/tWQ84ub0LqHthEIgsvG8ywqKErvFCDasLre8wVoEFFV/qkmpR+ky0BEMNKJeWlY+sB
         VArkUJBWnAvL0flZEmo1YYA3t5yl8R6dUuKBAE5ihERs5iiYSpqjxmNrYOswTgh4FV5a
         E9Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750845554; x=1751450354;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LoLOVqBSXNwsK4ecxBJ346o3ETpq6Xl3LbEE0+XapmA=;
        b=OxGJDUaaIddGj68BiiuuAg1C/QGX3D+2ZtKsHhuIZCqZNAE0C0rE361z0FWFzew5M/
         //roY6eRhgVC2rCFFVj+pDN7ClhTig9txSMtzC396RLzy3MCLpycZ+AI7u5iJMaAEB5j
         OqgwhrXPGB7C5Bt39Qjh6o459R7njKFrfSgD20396ZSa252GyNs1ZQyN5b2cBex0S4JJ
         125uxdmlNPaXvDECYCyTcZzp2Ycdqbpe0ZjzOTn7slMuf9D9D9KmB9HmOQEMs9ceYZeN
         g45A1uiL/f3eg56x7AyU/j+s5dJeMTRL7sDgkKvfsj0jP5QUF42rRmYE8U4t74Fp6YmV
         8+bQ==
X-Gm-Message-State: AOJu0YzG5GEQpfut/pHgkU8Nu7L/5gycbZP5w07tTqd2dAKmP6X7PTZw
	9RzaGqdUEA1jmfDGHgMQYeYVV6b+QGwz9+iKhQ5zKWmqsxXLpenPe4waWntW8jyrPuwQZPl0jZP
	J2hVs6jRmnCYN67LraFXnNo+iLmGj7Ts7mPqJOpwK3U2XwCGqN4L4v+U=
X-Gm-Gg: ASbGnctyMCWc3y0XBn2Dohuka1K78LN1aM00eK1kCE3IbceNJYXxHctp4b8m2Hg1n/R
	C+sEyaB3QPNhtHnP9VB0nAbgpd5PaMj9DFr47DR9p67fmPzdhFSqKk2Z7iLkIM6QV4VAo0nyMG8
	VIReDfS1mwv+9aVZFgGiuE243r3Iye6QUDvLliV8VejcpmcHGJxYpJVdbiilFqhnff4cTZNbBtf
	oY=
X-Google-Smtp-Source: AGHT+IHGFqXE+jBYQ70FW/FzOcRWeGtjsUEKO1GRZHbRalNuJfNBx0BjkxPikWOR15iRrhlUGcBYunsQn6/gzaBUZh8=
X-Received: by 2002:a17:907:3f0d:b0:adb:9e8:8f17 with SMTP id
 a640c23a62f3a-ae0befbec85mr208563966b.52.1750845553308; Wed, 25 Jun 2025
 02:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK6aKCTCU5e9PwX5ijtUQ2F1sZm4jq3w+z7nbMa7fgytEw@mail.gmail.com>
In-Reply-To: <CAEXYVK6aKCTCU5e9PwX5ijtUQ2F1sZm4jq3w+z7nbMa7fgytEw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 25 Jun 2025 11:59:01 +0200
X-Gm-Features: Ac12FXz9HTGdiO6Wn2M5b4HFNm3lN25V2YRbkgOb_GyYsJNZA0Ig3W4TXTbP1d0
Message-ID: <CAFOi1A42E+2VCrZjYmhMhSiunRpt0rpJ8drUrJmjj-1kVRRi8w@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: BIZMI2CEHNDJDLRJEZEMT5Z7AYWB6NMF
X-Message-ID-Hash: BIZMI2CEHNDJDLRJEZEMT5Z7AYWB6NMF
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC SEP Control Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BIZMI2CEHNDJDLRJEZEMT5Z7AYWB6NMF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0450434263141922073=="

--===============0450434263141922073==
Content-Type: multipart/alternative; boundary="0000000000004312150638627fe1"

--0000000000004312150638627fe1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Brian,

the control portion of the SEP is for control data that needs to connect to
the RFNoC blocks. As you know, RFNoC blocks are never directly connected to
the host by any means. All control traffic to RFNoC blocks goes through the
control crossbar, but to send control traffic into the control crossbar,
you need to go through an SEP, which is also connected to the control
crossbar.

If you have more than one SEP that can send control traffic to the control
crossbar, then theoretically, you have more options to control blocks, but
in practice, this is rarely useful and it will increase the size of the
control crossbar. So we pick one SEP to handle control traffic. If you have
more than one SEP with control port enabled, then UHD will simply pick the
first available one to route all of its control traffic (that's the "first
one" part of your question).

SEPs don't need both in and out. If you have neither, then the SEP is not
useful in the first place, but there are legitimate cases were you only do
in or out (e.g., on the X310, we have SEPs for TwinRX and BasicRX
daughterboards, which allow receiving on all four channels, but you can't
use those SEPs for Tx because we only have daughterboards with 1 Tx channel
for X310).

---> From here on, all info is strictly to educate, and is usually not
necessary knowledge for RFNoC users:

As for controlling the SEPs themselves, there are two mechanisms that we
use. One is inline management traffic (e.g., for setting up flow control).
"Stream Command" and "Stream Status" are such control packets (these have
nothing to do with issuing stream commands to the radio!). There is also
the backend interface, which lets us query and flush the SEPs. We use a
backend interface to solve bootstrapping issues.

--M

On Wed, Jun 25, 2025 at 12:29=E2=80=AFAM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> I am reading the documentation for RFNoC SEP Control Ports and I came
> across this:
>
> "Each SEP can have an AXIS-Ctrl and an AXIS-CHDR port, as indicated by th=
e
> ctrl and data options. At least one AXIS-Ctrl port is required to
> communicate with the RFNoC blocks, so ctrl typically enabled on just the
> first SEP. Every SEP will usually have AXIS-CHDR connections to one or mo=
re
> RFNoC blocks, so data is usually enabled on all SEPs."
>
> ...from: https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>
> I see the axis_ctrl_crossbar_nxn, but I am unsure what the statement abou=
t
> the first SEP is supposed to mean. Don't all the endpoints need some type
> of control to configure the endpoint?
>
> Is this supposed to mean that so long as a CHDR data port is connected to
> the SEP, then configuration can be passed that way? If this is the case,
> does each SEP need at least 1 IN and 1 OUT port? Is the only downside to
> enabling all the SEP's to have control ports is some extra utilization in
> the FPGA?
>
> Can someone clarify what this is supposed to mean?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004312150638627fe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Brian,</div><div><br></div><div>the control porti=
on of the SEP is for control data that needs to connect to the RFNoC blocks=
. As you know, RFNoC blocks are never directly connected to the host by any=
 means. All control traffic to RFNoC blocks goes through the control crossb=
ar, but to send control traffic into the control crossbar, you need to go t=
hrough an SEP, which is also connected to the control crossbar.</div><div><=
br></div><div>If you have more than one SEP that can send control traffic t=
o the control crossbar, then theoretically, you have more options to contro=
l blocks, but in practice, this is rarely useful and it will increase the s=
ize of the control crossbar. So we pick one SEP to handle control traffic. =
If you have more than one SEP with control port enabled, then UHD will simp=
ly pick the first available one to route all of its control traffic (that&#=
39;s the &quot;first one&quot; part of your question).</div><div><br></div>=
<div>SEPs don&#39;t need both in and out. If you have neither, then the SEP=
 is not useful in the first place, but there are legitimate cases were you =
only do in or out (e.g., on the X310, we have SEPs for TwinRX and BasicRX d=
aughterboards, which allow receiving on all four channels, but you can&#39;=
t use those SEPs for Tx because=C2=A0we only have daughterboards with 1 Tx =
channel for X310).</div><div><br></div><div>---&gt; From here on, all info =
is strictly to educate, and is usually not necessary knowledge for RFNoC us=
ers:</div><div><br></div><div>As for controlling the SEPs themselves, there=
 are two mechanisms that we use. One is inline management traffic (e.g., fo=
r setting up flow control). &quot;Stream Command&quot; and &quot;Stream Sta=
tus&quot; are such control packets (these have nothing to do with issuing s=
tream commands to the radio!). There is also the backend interface, which l=
ets us query and flush the SEPs. We use a backend interface to solve bootst=
rapping issues.</div><div><br></div><div>--M</div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Jun 25, 2025 at 12:29=E2=80=AFAM Brian Padalino &lt;<a href=3D"mailto:=
bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I am reading the d=
ocumentation for RFNoC SEP Control Ports and I came across this:<div><br></=
div><div>&quot;Each SEP can have an AXIS-Ctrl and an AXIS-CHDR port, as ind=
icated by the ctrl and data options. At least one AXIS-Ctrl port is require=
d to communicate with the RFNoC blocks, so ctrl typically enabled on just t=
he first SEP. Every SEP will usually have AXIS-CHDR connections to one or m=
ore RFNoC blocks, so data is usually enabled on all SEPs.&quot;</div><div><=
br></div><div>...from:=C2=A0<a href=3D"https://kb.ettus.com/Getting_Started=
_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettus.com/Getting_Star=
ted_with_RFNoC_in_UHD_4.0</a></div><div><br></div><div>I see the axis_ctrl_=
crossbar_nxn, but I am unsure what the statement about the first SEP=C2=A0i=
s supposed to mean. Don&#39;t all the endpoints need some type of control t=
o configure the endpoint?</div><div><br></div><div>Is this supposed to mean=
 that so long as a CHDR data port is connected to the SEP, then configurati=
on can be passed that way? If this is the case, does each SEP need at least=
 1 IN and 1 OUT port? Is the only downside to enabling all the SEP&#39;s to=
 have control ports is some extra utilization in the FPGA?</div><div><br></=
div><div>Can someone clarify what this is supposed to mean?</div><div><br><=
/div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004312150638627fe1--

--===============0450434263141922073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0450434263141922073==--
