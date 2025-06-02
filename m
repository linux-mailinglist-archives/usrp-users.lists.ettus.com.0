Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6673BACBC40
	for <lists+usrp-users@lfdr.de>; Mon,  2 Jun 2025 22:22:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54D05385D58
	for <lists+usrp-users@lfdr.de>; Mon,  2 Jun 2025 16:22:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748895768; bh=DAEOlzCbtWb/iQQ1mthFaRFm/hfgI9PmwRuOIPHgG78=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IActunHyBFi2ZWccY8M9zDWWXvqRNUw5+dT5L/j4s6J3i0oLOsVS0SVZBz115+08A
	 Ocw/tlnUI8dd4yDO+JxNrW4leUJ3TruHd7F4HVHrfs8FcBetGq7tqqgfawrdoJbwB2
	 2KzOnvimlPA5CO+J+f40pxvcAyIp8WjQLeRcapCRc/N//2XSJDi8wuO8Ma6tNHhy0M
	 ng+rKkkWSTk7IV+LcoLydMIffhhX+5+66/UQvANdUMI83Ck6itrxX9scA69/Riq0jR
	 hXHc/UbPcunThvdTC/hE8fLogGitbTPfw5uOv/3ulGw+253RNfwNXfux3/iOLxsJrO
	 YLs77dPYKTwvg==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id B2535385C13
	for <usrp-users@lists.ettus.com>; Mon,  2 Jun 2025 16:21:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZJ3WgRZW";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-604533a2f62so9509027a12.3
        for <usrp-users@lists.ettus.com>; Mon, 02 Jun 2025 13:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748895715; x=1749500515; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DBtVlAan/28cCJxL8v3iq0SwHUvWbXC09TwRdrEIg9s=;
        b=ZJ3WgRZWgUCKv16xRXysYSXgStA4ccFiVMJvdxyAnL2l1HfLIEviBRgKtEOB6F3buw
         Kloxn9cSTolwsr2eGg8rFZdUgexRqjumbXWs9BQmLa5FciUATxCY4nJX0w5uNfitz8jL
         VvH6SnXi+zcaSbaykSpUdPJgsZrw5ZwhtNoDocSyF872NO39BIiT/ZmCOVcyv5wOVVLa
         Iwenn/D85DUD41lxsgEziJzqdkJFRa2N6CPvtNzQIhccu8Fwe3Aqf/P9BoQ5POsSmAcH
         RcWRVRJQgc8s70DXyxZr8IuImeITvWpXS4+CWwmh3zPv/nXzPrTTWZiiQo9oVaa+HZTM
         WslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748895715; x=1749500515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DBtVlAan/28cCJxL8v3iq0SwHUvWbXC09TwRdrEIg9s=;
        b=j/BLtFQPMxjifRbtpVgiUBjmR3pMsDetvSol8EBsDjObkpbS2Bs0NsPGib5CR3DitH
         slIdpE4L5n/dAAMPFWyiBc0nIXnSxuSFKatlJIsGB/asLk+8nxaAIXsEj1CjF1ThxIru
         p4LxYmL7Y1Gz/W87cfs2rQMWuqcg2UHqWVinDzEdzmBuEi6s/zoMEariS02WGOCdxQN5
         oysSPamrboTF16uJIbOJv2O5QYj7FLMJTMellf//13VUb7BotUVnGGhjVNu2POFCc3Cx
         oqYyDfe1Sp6lyVf6kDc7oUFQKHwAuGI62jxpxkH4VC4FjgVQndyhHTDC7AphUOEYXjT+
         P2uA==
X-Gm-Message-State: AOJu0YxshwcrhWb2j8k44hEU3JsLV03ptGkG+9fe+SO6PqI+WkJED9dd
	KFn86PgH5IMFEdBvxczLVAQJhBhj8rN8OdZLcPSf3pmn4IVdyGogWKsxqQ0wvMNyTYQK2xttBr6
	ayG6oHZhjAoiDRskn27J8FbmOkW+bNoNN0Q==
X-Gm-Gg: ASbGncsl+zE8e3H05WW1UV5FrHz1Q0ea6epCkks7sZ2qDS92Zex/es6QiiTxGnZFode
	J85Abs8yimU3rwmDiX5E1VQ/oIFcKehuhjbDD0HNp01GGiZ5+ALpGnqjtYRs33cvvKE23gXuthv
	yzt5yWSZQfVPE+4dnVI0ce1GS7Zq7t2uRGfVLJWHQKj84tBntV3MxTHNE=
X-Google-Smtp-Source: AGHT+IEDkbqFi7bpjL+vZCvVHhlPGbwG9DJvnPOQNjahnaH8zBBwNFM1TQdhG+8VomcxIs5iLhQ6FcAEWyEmvLilxt8=
X-Received: by 2002:a17:907:9711:b0:ad8:9b16:58cc with SMTP id
 a640c23a62f3a-adb494e5aa2mr916631766b.39.1748895714367; Mon, 02 Jun 2025
 13:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <YT3PR01MB8195812AF2D6175EDF9B052CD262A@YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <YT3PR01MB8195812AF2D6175EDF9B052CD262A@YT3PR01MB8195.CANPRD01.PROD.OUTLOOK.COM>
From: Nick Foster <bistromath@gmail.com>
Date: Mon, 2 Jun 2025 13:21:43 -0700
X-Gm-Features: AX0GCFsK8YavhyyS3DRXCrOotVFBPkMJbFh5oOyYRHnPsbwo3eIZhoUpnvy94co
Message-ID: <CA+JMMq-vRnwr_DKq1waoivi=w2SPmjqBxrxy9whZnoyNc8v85g@mail.gmail.com>
To: Rabih Nouraldine <Rabih@humanitas.io>
Message-ID-Hash: 3AUKGQ2UKFO3P2637U4BVMZKOYK55CCU
X-Message-ID-Hash: 3AUKGQ2UKFO3P2637U4BVMZKOYK55CCU
X-MailFrom: bistromath@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Seeking Information on FPGA Bank 18 Connections in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3AUKGQ2UKFO3P2637U4BVMZKOYK55CCU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0165152680541010300=="

--===============0165152680541010300==
Content-Type: multipart/alternative; boundary="000000000000cde95b06369c830d"

--000000000000cde95b06369c830d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Rabih,

It might help if you asked the question more directly: What is it you need
to understand relating to the DB_DAC_* signals? They are the digital pins
connecting the digital-to-analog converters to the FPGA. If you are just
looking for pin assignments, they can be found in the UHD repository here
<https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/x300.=
xdc>
.

Nick

On Mon, Jun 2, 2025 at 1:14=E2=80=AFPM Rabih Nouraldine <Rabih@humanitas.io=
> wrote:

> Dear Community,
> I'm working with the Ettus USRP X3x0 series, specifically the X310, and
> have encountered challenges due to missing schematic pages=E2=80=94partic=
ularly
> page 13, which is not publicly available.
> I'm trying to understand the connections related to the DB_DAC_*** signal=
s.
> From my investigation, it appears these signals are connected to Bank 18 =
of
> the FPGA and are configured as LVCMOS18. Unfortunately, detailed
> information about these connections seems to be on the missing schematic
> pages.
> I understand that these pages are often associated with the PCIe
> interface, but the DB_DAC_*** signals don't seem to be directly related
> to PCIe functionality. Therefore, I'm reaching out to see if anyone in th=
e
> community can provide insights or guidance on accessing or understanding
> the connections to FPGA Bank 18, especially concerning the DB_DAC_***
>  signals.
> Any assistance or pointers to relevant documentation would be greatly
> appreciated.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cde95b06369c830d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Rabih,</div><div><br></div><div>It might help if you =
asked the question more directly: What is it you need to understand relatin=
g to the DB_DAC_* signals? They are the digital pins connecting the digital=
-to-analog converters to the FPGA. If you are just looking for pin assignme=
nts, they can be found in the UHD repository <a href=3D"https://github.com/=
EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/x300.xdc">here</a>.</div>=
<div><br></div><div>Nick</div></div><br><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 2, 2025 at =
1:14=E2=80=AFPM Rabih Nouraldine &lt;<a href=3D"mailto:Rabih@humanitas.io">=
Rabih@humanitas.io</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div class=3D"msg-3531632314657374481">




<div dir=3D"ltr">
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
Dear Community,</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
I&#39;m working with the Ettus USRP X3x0 series, specifically the X310, and=
 have encountered challenges due to missing schematic pages=E2=80=94particu=
larly page 13, which is not publicly available.</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
I&#39;m trying to understand the connections related to the <code>DB_DAC_**=
*</code>=C2=A0signals. From my investigation, it appears these signals are =
connected to Bank 18 of the FPGA and are configured as LVCMOS18. Unfortunat=
ely, detailed information about these connections
 seems to be on the missing schematic pages.</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
I understand that these pages are often associated with the PCIe interface,=
 but the
<code>DB_DAC_***</code>=C2=A0signals don&#39;t seem to be directly related =
to PCIe functionality.=C2=A0Therefore, I&#39;m reaching out to see if anyon=
e in the community can provide insights or guidance on accessing or underst=
anding the connections to FPGA Bank 18, especially
 concerning the <code>DB_DAC_***</code>=C2=A0signals.</div>
<div style=3D"margin-top:1em;margin-bottom:1em;font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">
Any assistance or pointers to relevant documentation would be greatly appre=
ciated.</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000cde95b06369c830d--

--===============0165152680541010300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0165152680541010300==--
