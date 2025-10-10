Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3886BCBC14
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 08:12:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0296A385BAB
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 02:12:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760076738; bh=AHDOh8vPqklhIwCEV7S0hit7Wjz6CIpMyrBn/O9qWl4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tDgYmV7PeotIaooHHOsW1RISqcJaFUZ+7gGmXZhz4EoJkb01SW0/cZFuC857ttFRL
	 d1PRg7b39+pR2LsYkhDq1IP3cmL2b+t9VpmrTVwJE8rbx8YOKyJGbFoLTgiNzxojGd
	 ZgiHvCpHgz7YSxYGWCNykEnZPJONW/i6VxntZvXdjW3d8j0P2o0SskOQe8W37xGKRH
	 M7OWxqueZR987VHJeEbYiRuMvbx3eqaqH6i++6KIFfXJ625zyC4NYB88131pG3qdIt
	 FbvzLytwCxSWi8I4g56N1p+mTBrD7b2e/8cMBaS9i30XJ8y1ftDnK2mL1kVjbZDxKC
	 wOYle2kntqeJA==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C6A53859E9
	for <usrp-users@lists.ettus.com>; Fri, 10 Oct 2025 02:11:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="WeWTS8QR";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b4f323cf89bso298724666b.2
        for <usrp-users@lists.ettus.com>; Thu, 09 Oct 2025 23:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1760076672; x=1760681472; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rbjbTm2uYsLqVRWk0fg8qdq4bUX9Tr4ankat+Ncmrro=;
        b=WeWTS8QRrZkWGw3fKZ6v2zfd13hOM4C9gJI9c1I1SVbcSC2xNJFAQJY2sUjA3OfDU7
         kBFSbcbiX4ZcMcnD5Dbn7R3AK7P+YShtcxbq3jnCoi/xkI07PP5O9Kpqfs5XR4I53L0l
         FbwwHNpp7fUxdCk2HsXD2hU1xk8ZBppB+4WDeW033Ikg99NHpmS2A4e16orM5HjeO8Mq
         rwkMIDv0R51pZTkGsKisccn/+sByqb/19Mri6MrLBQ0VWuPYtttMXO0bi5OBEDxo97tG
         8bTK3YYHgqTL2xK9rSMIbmgrooSsP2TgQh/h3lQYoELKt2KVsvqgtlMjVfGQsDinqZTs
         9MNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760076672; x=1760681472;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rbjbTm2uYsLqVRWk0fg8qdq4bUX9Tr4ankat+Ncmrro=;
        b=NS4gCAhQ+Mm3a24Di6sK/iQchWM3MZltLoLwQ2PhvVAOkRzwXG1Rd50Lqjghw3tAe4
         gDGgXrnM9yDdgXoMVtqpH3DqKSMaxbVBpqdgzzCI2R3n48/YtwhC7jhq1BDISYz3LYx1
         SOISjdCkPh2iSAMTBhzWfRiL0PuZSfOnUiQWle4Be+bithnhaw40ITC9pygsf7TTMJ0J
         XgZNRnPJVOqXxWDm8htye5X3VXLx8F6Zdz8FqocfcRH5QFkv4ED1FeNtrtzGsk4b9xdE
         5PZ0CkxT7fdJ+GHIoF3kP2SCn4jHe3BVhnh8vSARhCt9720vz1M2OVqdkKDzqmfpVclg
         RBmQ==
X-Gm-Message-State: AOJu0Yw1svKrgACRWNYAQKGbmjdKhMLEiE/Fa6v7YOazrjLAuudfXyo0
	jPyH7dz3KjpUWQZ4l2zQt+p/hDK5nCqRmAcY+3ooE9bQCY+G+H1zgALKDaJASnCGMhHOe58AlnQ
	dVgfwf+zMA3EOdHEaK0FyN/1dR2OfVUEX4ionx96smq4fRra092kjVaKpqnz8
X-Gm-Gg: ASbGnct3GGR/Db58X7u+qFWeWcs6nqJXVhIONY+vpq3WUxzxLoAkbvw8LHu146TpZ1d
	eCxTlURrghecE9aPTPFnYsftuVpoJDotIGMswPpyS8Y77CD4Lrpz15Vxv7w3g+BTQBhomO/ptNM
	V6fcw8SN+l0df0xtONrpiGBdXLchUZCbj0vlxMQpkrJJQ2/Q+B68/Xhz0gZYINwJoCdrD0uXrMf
	tQYq7kJZfqvaoqq6kAO/LRKVt9KTmScbg0HGWtcSmNFkTRS+tblAoZH
X-Google-Smtp-Source: AGHT+IHMmtCdmHCFE43bvTgS0hlwMi/csxFpZdLMN3iOkBMtKMPeGFeRBiPdFy8JGFSWZfI5vBTtkuLij5qAoAFSucY=
X-Received: by 2002:a17:907:db15:b0:b3d:b251:cded with SMTP id
 a640c23a62f3a-b50aa393ba1mr1230421866b.16.1760076671198; Thu, 09 Oct 2025
 23:11:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAPP35V-i5rN5708jiaeBS7Ud2RWYKmVCsYirBiMxB6ROufHhUg@mail.gmail.com>
In-Reply-To: <CAPP35V-i5rN5708jiaeBS7Ud2RWYKmVCsYirBiMxB6ROufHhUg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 10 Oct 2025 08:10:59 +0200
X-Gm-Features: AS18NWDLOUw3sINxoQNK7sFxXXppo7P1_q1BIg7-pUp2vDoGlpotQdKjSZ2nRJI
Message-ID: <CAFOi1A4O_dY+OVjCcHNCj0dmy3y+p+Z6W49nFPUeLDMDQx84dg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ZTC6DNKF2JA7BLDU5P34673VYTZYBFZW
X-Message-ID-Hash: ZTC6DNKF2JA7BLDU5P34673VYTZYBFZW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP Integration with Xilinx/Vivado
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTC6DNKF2JA7BLDU5P34673VYTZYBFZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2362608081897513055=="

--===============2362608081897513055==
Content-Type: multipart/alternative; boundary="000000000000c3b77c0640c7c8fc"

--000000000000c3b77c0640c7c8fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ravi,

our manual is pretty comprehensive:
https://uhd.readthedocs.io/en/latest/md_fpga.html. For regular RFNoC
builds, you don't need to invoke Vivado yourself at all. If you have more
specific questions, this is a reasonable place to ask them.

--M

On Fri, Oct 10, 2025 at 6:48=E2=80=AFAM Ravi Paswan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
> I am reaching out to gather any available technical guidance, reference
> designs or documentation that could assist in enabling smooth connectivit=
y
> and workflow between the USRP platform and AMD/Xilinx Vivado tool
> integration.
>
>
> *Disclaimer: **=C2=A9 2025 VVDN Technologies Pvt. Ltd. This e-mail contai=
ns
> PRIVILEGED AND CONFIDENTIAL INFORMATION intended solely for the use of th=
e
> addressee(s). If you are not the intended recipient, please notify the
> sender by e-mail and delete the original message. Further, you are not to
> copy, disclose, or distribute this e-mail or its contents to any other
> person and any such actions are unlawful.*
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c3b77c0640c7c8fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ravi,</div><div><br></div><div>our manual is prett=
y comprehensive:=C2=A0<a href=3D"https://uhd.readthedocs.io/en/latest/md_fp=
ga.html">https://uhd.readthedocs.io/en/latest/md_fpga.html</a>. For regular=
 RFNoC builds, you don&#39;t need to invoke Vivado yourself at all. If you =
have more specific questions, this is a reasonable place to ask them.</div>=
<div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 10, 2025 at =
6:48=E2=80=AFAM Ravi Paswan via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div>Hi a=
ll,</div><div>I am reaching out to gather any available technical guidance,=
 reference designs or documentation that could assist in enabling smooth co=
nnectivity and workflow between the USRP platform and AMD/Xilinx Vivado too=
l integration.</div><div><br></div></div><div dir=3D"ltr" class=3D"gmail_si=
gnature"><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin-right:0cm;=
margin-left:0cm;color:rgb(34,34,34);font-size:12pt;font-family:&quot;Times =
New Roman&quot;,serif"><span style=3D"color:rgb(31,73,125)"></span></p></di=
v></div></div>

<br>
<div style=3D"text-align:left"><i style=3D"font-family:georgia,serif;font-s=
ize:small;color:rgb(80,0,80)">Disclaimer:=C2=A0</i><i style=3D"font-family:=
georgia,serif;color:rgb(80,0,80);font-size:12px;text-align:justify">=C2=A9 =
2025 VVDN Technologies Pvt. Ltd. This e-mail contains PRIVILEGED AND CONFID=
ENTIAL INFORMATION intended solely for the use of the addressee(s). If you =
are not the intended recipient, please notify the sender by e-mail and dele=
te the original message. Further, you are not to copy, disclose, or distrib=
ute this e-mail or its contents to any other person and any such actions ar=
e unlawful.</i></div><div style=3D"text-align:left"><img src=3D"https://vvd=
nnewdev.vvdncloud.com/images/it/event_signature.png"><i style=3D"font-famil=
y:georgia,serif;color:rgb(80,0,80);font-size:12px;text-align:justify"></i><=
/div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c3b77c0640c7c8fc--

--===============2362608081897513055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2362608081897513055==--
