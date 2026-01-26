Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +M+YK8Dyd2npmgEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 00:03:28 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D752E8E216
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jan 2026 00:03:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C179338C894
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 18:03:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769468606; bh=NPTs+uSEOaNkZ7vetTMd5jJ9lubsJQwDPCkJ+H59DJE=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=yO+wmAq5pPoz4E28ODR8AnyK2LF6WBU1yWRWIg1VH5Y8YNSMnGvFMatAJ9sDT7+YF
	 GTC1ktxuc09QRTGmRDe02VR+BY2jCZywtj8ZDQDejKCD6k2OfjYnHKpKUsHH0shrTK
	 H41Mli4+IO/aDBHTnmfJptG6JIMmLjEoNIw1LyHyENIuDCZGaZU3W8upe8/97WWO1Z
	 hcXX62hnNm3m5hDWsX+E/Q+hf5JCfFkdtbbIw0dVW8Th397Z5JmFMc0fDeRXBtC07T
	 m6z6gGCggNfxiID2C8UVUc5jipUgF6S3gbCZkpa0ZqQsN2fhC8CevMtXbJLqF38LsH
	 lw2ppHiPDlvdw==
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A6CC638C7F6
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 18:02:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="UiCFe4rJ";
	dkim-atps=neutral
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-648ff033fb2so4689295d50.0
        for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 15:02:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769468533; cv=none;
        d=google.com; s=arc-20240605;
        b=H7KKuQVPAIMkA12ZFNT/PAJ6jWob5vKBkEoQkHC0nn4ZaxlxLHsgD7cA1fZFLNMc+m
         CFVj0zrUYFVaKjMCvXHUn7zXmmXScBfdRFNG065Al0nr2GwC1sRlkdirU6tvBCXyuZkZ
         v9jpceUgvvhmrE/WYAe6c1aGEs39ifZg7nBoQhUyLpX3wlLWI9mJVt43JpIeQNp5vVUz
         iMQi+EaHNI0jpDb3CRZ7vFENym41rNTy3ufB1tA54NipiNImoVNRfEaZeV+EoXugqYp6
         OZFKagWyTjES+ocLx2NPU4/vYurb3aIiG1ZQQswJuVZtr5Q6GU3lV1TXBIDZ4gXlm2NH
         DCiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=quy5HVdVQZxswW5lZXfjU2GngjDJF8npJN+Jkf2AVh8=;
        fh=+D8RAVvVcAWSnkkP01LcmBBa8jUfxz2aHmeJxUsefhE=;
        b=iSUlVT3WQPAEDbBfyy1JPqJWi4IGQqRh7F5JlWk8LBTdte2Ch/ul1N72uvLQLMAq3P
         sAxpzEdlCMWZAjqtr/rNtVSOfTvwRzsIgZg15Ng/Cb+klHMIyU5ZIYGeb6H95g+dq3o7
         3v7HrZ8H2ffitHuZHMAgdr7AU15M1+s+nKgxa0EW9jNVel02Vz09zshR4KXJFQII+JME
         w9xiHEGrtIdj1gUAxwtfbjIVBRvnsrNAqS1tHn/WzzOb2O4bHjVxfAK48AezRYV6MigL
         1HLDEuCScFSuPVwtCaaFtTtnt4bPyGPEzXshwK/nQ7NMoFdfWQdLSfb+jKGUpJgbiT3C
         kXuw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1769468533; x=1770073333; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=quy5HVdVQZxswW5lZXfjU2GngjDJF8npJN+Jkf2AVh8=;
        b=UiCFe4rJQcjGO1+IDs9TAt6rQMmc5eSafEZ9S0QZ3xJQ7Glu3X0pUbmDVQwYjTxcKI
         zEJzZjG/8m3M3UWWlzVJtk/tJpDeZ12tHtBMup2R+ja7JrvDnVvGgOjxoIM2G3jzoW06
         dUMlHdiXZ3RTpQ5q4ZQ7P3TYJOfrOPcOY1l9ygyV5EH9h71c4bnYv2h22bc8wCsPWay9
         HotAs75fPMEJrH9+6GDGvOgMizaJPJMmXLQizopGLpVqVR45vUzvfFkne+wYU5HxNeOr
         IyqdkDNKRDxTCyRmWnidVkslIbRvYDMmafATK6XNVFVIE7GGHcFvxSV0x0xHki2rVvKd
         hlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769468533; x=1770073333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=quy5HVdVQZxswW5lZXfjU2GngjDJF8npJN+Jkf2AVh8=;
        b=drS6JOJSpS6SkHm33/dpqIEiBQr3VM1hToBvFkrEPW7+2TQLqnceRYPXCeIKQWcjx6
         uDLUh/4fJ7FM4LkZ/gR4RNgWDD11MJYsyyVzVOBFLk7+7/7V/aVm5sHfPuW3EifDJIlm
         niYv02ugr/5zjnQVbhuZbF8kbCDbMY5OtImmyrQGhGGcby1Yl7+DdSXok89AzQzsiCfZ
         wNIc08zEW6R0QCaviOgbGsI+ce19wEyDdbaLfYI845UgUEA+yHe2sDxClrDdNW2PjfkU
         Id6SsWYbZU7okESjJQcU7vxoEeq/woQVkqAJQ3MQV2gqu22mGPudGzRvM/RI7lHbWZvg
         EP3w==
X-Gm-Message-State: AOJu0Yz0Wt8z/EMewggGc2VBDufHiwI2GJ7xMM6du6c3kjJpWqGp0IWU
	Nc/eIruyYHeelJtarH4ZZt1DZPoFO3nZf/2vt8rgaJCWjtaJQp2rX+/4mhHk47FkJ6eG+6cWfdp
	Cl8Z6/IMtNbFMZBslN5kDyh8LTv3LHgtpB3vIOkAs
X-Gm-Gg: AZuq6aKOgN/AqDgj68tFe0AFgkcEFxMz6QvRBMUM3pXfAz7dxa0zyCUbi/Ni28xv9bQ
	KVCE21jZUKYvVXU5rhY5Z3hph/4VWFD7JslXJIWpQsdCvZ6E7KrnOZ1F/FaDAiLYMhg2lhbg4yA
	VXFY1Aq+8P+XkQ+9qjye+g9UbfQ6n3fCsF3pBZnL4dXrjrxoVhWVJyZExtVdLs4UxtQX2xoQuLQ
	3DddA0NJAab/ExM4PI+M9Rr1xerOQgdLsAKQVEbPz7xi2ZLf0qcinOXMQc1oFZQJoIMQ38D6UK+
	xX43JC6y3DT72D1YkuGFgig9Vok=
X-Received: by 2002:a05:690e:1209:b0:646:7d1b:614f with SMTP id
 956f58d0204a3-64970c8f793mr4867741d50.56.1769468532814; Mon, 26 Jan 2026
 15:02:12 -0800 (PST)
MIME-Version: 1.0
References: <IA4PR10MB8397396A89682AD790D1F38E8693A@IA4PR10MB8397.namprd10.prod.outlook.com>
In-Reply-To: <IA4PR10MB8397396A89682AD790D1F38E8693A@IA4PR10MB8397.namprd10.prod.outlook.com>
Date: Mon, 26 Jan 2026 18:02:01 -0500
X-Gm-Features: AZwV_QiluI_NOMxITZEaRrJD-YdhU0v_y69zxG53RMnPBOCYYF1J27wqgjWHfQI
Message-ID: <CAB__hTSZ_+jLJhtas5YJCUxbE+=j2zq_7VVkLacDW3PThgPM8g@mail.gmail.com>
To: "Yang, Nan" <nan.yang@emerson.com>
Message-ID-Hash: 6Y3EMT7X3KO4OUQRBSSOC6ZV5QPIWISV
X-Message-ID-Hash: 6Y3EMT7X3KO4OUQRBSSOC6ZV5QPIWISV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to disconnect streamers on RFNoC graph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6Y3EMT7X3KO4OUQRBSSOC6ZV5QPIWISV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7842531754003555523=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mail.gmail.com:mid,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: D752E8E216
X-Rspamd-Action: no action

--===============7842531754003555523==
Content-Type: multipart/alternative; boundary="000000000000571be40649527fbf"

--000000000000571be40649527fbf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not sure but I seem to recall that the streamer ID could not be queried
but that it used a naming convention (something like "tx_streamer_1") that
you could guess and use to successfully disconnect the graph. Perhaps if
you log DEBUG or TRACE level messages (or inspect Ettus code), you can see
what the stream ID is.  I know that this is not the right answer, but it
might get you by if the API is missing the needed functions to query the ID=
.

Rob

On Mon, Jan 26, 2026 at 5:52=E2=80=AFPM Yang, Nan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello UHD folks,
>
>
>
> I=E2=80=99m trying to buffer all 4 channels tx/rx data on DRAM on X410. S=
o my
> application does
>
>    1. Connect tx_streamer to replay block and write samples to DRAM
>    2. Disconnect tx_streamer
>    3. Connect replay block to radio block
>    4. Do tx and rx
>    5. Disconnect radio blocks
>    6. Connect replay block to rx_streamer and read samples
>
>
>
> I don=E2=80=99t find the correct API for step 2. The
> uhd::rfnoc::rfnoc_graph::disconnect() function takes std::string
> &streamer_id, however, I can=E2=80=99t find a public API that returns a
> streamer_id. The connect() function accepts uhd::tx_streamer::sptr and
> uhd::rx_streamer::sptr, I wonder if disconnect() should accept same
> argument types.
>
>
>
> If I skip step 2, I get an error in step 3.
>
>
>
> Regards,
>
> Nan
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000571be40649527fbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m not sure but I seem to recall that the streamer ID=
 could not be queried but that it used a naming convention (something like =
&quot;tx_streamer_1&quot;) that you could guess and use to successfully dis=
connect the graph. Perhaps if you log DEBUG or TRACE level messages (or ins=
pect Ettus code), you can see what the stream ID is.=C2=A0 I know that this=
 is not the right answer, but it might get you by if the API is missing the=
 needed functions to query the ID.<div><br><div>Rob</div></div></div><br><d=
iv class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Jan 26, 2026 at 5:52=E2=80=AFPM Yang, Nan via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div class=3D"msg5684133474275124160">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_5684133474275124160WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hello UHD folks,<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I=E2=80=99m trying to=
 buffer all 4 channels tx/rx data on DRAM on X410. So my application does<u=
></u><u></u></span></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"m_5684133474275124160MsoListParagraph" style=3D"margin-left:0i=
n"><span style=3D"font-size:11pt">Connect tx_streamer to replay block and w=
rite samples to DRAM<u></u><u></u></span></li><li class=3D"m_56841334742751=
24160MsoListParagraph" style=3D"margin-left:0in"><span style=3D"font-size:1=
1pt">Disconnect tx_streamer<u></u><u></u></span></li><li class=3D"m_5684133=
474275124160MsoListParagraph" style=3D"margin-left:0in"><span style=3D"font=
-size:11pt">Connect replay block to radio block<u></u><u></u></span></li><l=
i class=3D"m_5684133474275124160MsoListParagraph" style=3D"margin-left:0in"=
><span style=3D"font-size:11pt">Do tx and rx<u></u><u></u></span></li><li c=
lass=3D"m_5684133474275124160MsoListParagraph" style=3D"margin-left:0in"><s=
pan style=3D"font-size:11pt">Disconnect radio blocks<u></u><u></u></span></=
li><li class=3D"m_5684133474275124160MsoListParagraph" style=3D"margin-left=
:0in"><span style=3D"font-size:11pt">Connect replay block to rx_streamer an=
d read samples<u></u><u></u></span></li></ol>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I don=E2=80=99t find =
the correct API for step 2. The uhd::rfnoc::rfnoc_graph::disconnect() funct=
ion takes std::string &amp;streamer_id, however, I can=E2=80=99t find a pub=
lic API that returns a streamer_id. The connect() function
 accepts uhd::tx_streamer::sptr and uhd::rx_streamer::sptr, I wonder if dis=
connect() should accept same argument types.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">If I skip step 2, I g=
et an error in step 3.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Regards,<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Nan<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000571be40649527fbf--

--===============7842531754003555523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7842531754003555523==--
