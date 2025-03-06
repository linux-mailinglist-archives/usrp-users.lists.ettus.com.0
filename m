Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFD9A54EFF
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 16:27:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84D6F385E0B
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 10:27:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741274873; bh=DXxstr7D1hDpyXi4yLEKeXX7dWU63DjYLyqiZ807NqQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kHCSSjkOTv3UjBh/nJRizonCXUzkHBOFukv5cjBDNVTxeBRYyQCUEwEGx+/Tqe/Wp
	 IVbENa+M+TayfpQ2ECJHAY9glv+1iHiCrwxe2ATk4J6+iDfeRZo934Q3hJlueia8lP
	 ldk7w3zomdiKY6VqKY2NTA7U76Ce9zZK8I4NlE+x4s5Qpl+V57F5BZOovX9A8qEHRj
	 YCRHhPlu0eGNTnxfXbEcjFX+xinIarCYJVpBnejX/w3HeBFOsujAjZV4ry3eQo5zm7
	 hJn0AIocdn2rdrVOkbRx13Vs/iHfCqMtrZCd31vRNrh+k2MsevHse73zfpQn2zN0BM
	 RYuvpFDAzHSHg==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C22E4385DCA
	for <usrp-users@lists.ettus.com>; Thu,  6 Mar 2025 10:27:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="g6eVnbC+";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e535e6739bso1248020a12.1
        for <usrp-users@lists.ettus.com>; Thu, 06 Mar 2025 07:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1741274844; x=1741879644; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=achjYMdLYwFjinrj+S7UGzjPRIQgGBibKLSPsdXSG80=;
        b=g6eVnbC+xpqBh02b9RVHAiZUihkCElHhq+SbGeQR4foR6xmy9VBCBesG7onLTKS82p
         XJA4MQFBU6fQI4bU2y8L2HMpZwnpRofVko6KfDCNO+YI+apnburgi9OGJ6P0q3U6f/8m
         hbuA+3FJ4OrexsLUNNfWJ/f7QVMqGVo6aODPhCShpc1aJ3ol8LivjzeftG09t2GHRjh7
         i3oLhAYwm9gv3tHWhyzB3cThoUTAxW00aAAjvMJbIupjrNl1BNU5iQ6Axc2nHmVgj84D
         sTHDSR14eRfXPIyx+3pxZhMdHZNt+mBvl16Sau1UAbaEP5GnWEuPekdZCXM+34deA0ST
         eu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741274844; x=1741879644;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=achjYMdLYwFjinrj+S7UGzjPRIQgGBibKLSPsdXSG80=;
        b=h528x6DsvgY6tI+3YEWC6ZWuY39kiBe7KposXoDiwonxtNYFyC1Yp9ZlBZZX3/QtZv
         +iUXeehv7vA8MqBh9avQMqSumgQD0oo7/JtdP8KXHx9LlTk/Tqoxtr84bab53NK8oizw
         J6mmzkzxlnUodb/3AvHhDw2GPmB1k/7TEE7r8MNKsO/p6d0+KqIpjZYWMCLBrImEJw4Z
         MOQk/OFtnk17FkbiTBkrPsjSpdl6m+w6zD9X12u6lLkXBjlhc699JGRYqN/ho3QNXOYm
         toMYT69KkSWQ0voNlfQ+4Xnw1Q4L+PFt02K0YcFAotouJ01n4pPC8athQvaHlkYparM5
         Q8Ug==
X-Gm-Message-State: AOJu0YyjlVU5RhiGhDOp/cYgXCao2TwwOja0SaiWXnwXx21mXh7dL7Yl
	l9nluxhfOIzauzgO5IE7lbtPVOI9KmscCMFFf+FveWXaLgev0973ZJVTjzQXGw+G6ZQc8K4UoW+
	RwX/FkgDhdeOyWbg6pUQDL4y2KrZXs75q05QPJ5koSCUJ2sQ=
X-Gm-Gg: ASbGnctCfKdA4/IqXrPwbHYTUdiJxZ+zNu8KhwokUlhISG+levJ06TZOmuCsCSoz0jA
	ZrxWdfolrLs9X7oWGua99A2XhAyReBeNvuob8ju/MzgvXB6pVn+nhVOV3a7iQaBWKjyYA1kVdjl
	pzsaZ6y+V/CEJWxNgfAxL9Epy0pw==
X-Google-Smtp-Source: AGHT+IEMQLqTs/GGrv6l4lczmlxtORP9oOi/6eKSRq1TFiDYwfFVTdZN9345YxaD67Kt/57//TWVvxdE1TlBdVRY3KQ=
X-Received: by 2002:a05:6402:2345:b0:5e5:d9e5:c4d7 with SMTP id
 4fb4d7f45d1cf-5e5d9e5cd46mr1776055a12.28.1741274844133; Thu, 06 Mar 2025
 07:27:24 -0800 (PST)
MIME-Version: 1.0
References: <b02c97f1-c0f2-42ee-9634-6b4db87b6bc2@student.uclouvain.be>
In-Reply-To: <b02c97f1-c0f2-42ee-9634-6b4db87b6bc2@student.uclouvain.be>
Date: Thu, 6 Mar 2025 10:27:12 -0500
X-Gm-Features: AQ5f1Jog5Vq6jSu-TXVWFKkfeSAwpIGVreoJgShX0PNpcq-YVvpzhcMthVg1JtE
Message-ID: <CAB__hTS0DUZLnudzHiRoDuwOTo4iygShH-eAB1ZCJ6HV2_KWRQ@mail.gmail.com>
To: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Message-ID-Hash: LLUSIVUYUTBRGMY4EC4HIOHOJHGYXZX2
X-Message-ID-Hash: LLUSIVUYUTBRGMY4EC4HIOHOJHGYXZX2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM Reciever chain on USRPx310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LLUSIVUYUTBRGMY4EC4HIOHOJHGYXZX2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3625428956316306302=="

--===============3625428956316306302==
Content-Type: multipart/alternative; boundary="0000000000008ad504062fae24c1"

--0000000000008ad504062fae24c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
I don't know what OFDM blocks are available. But, regarding your questions
about getting started with RFNoC, you will want to use the RFNoC
Specification document along with reviewing the XML blocks that Ettus
developed for the various included blocks such as FFT, FIR, SplitStream,
etc. Also, reviewing exactly how the Gain block works is very helpful. You
mentioned that you ran the test bench for the example Gain block but
perhaps you could build this into an FPGA image and go through all of the
steps to make this run on the hardware while controlling it from software.
I would also search Ettus Knowledge base and past conference presentations
such as GRCon for information about creating your own RFNoC OOT block.
Rob

On Thu, Mar 6, 2025 at 9:20=E2=80=AFAM Quentin Prieels <
quentin.prieels@student.uclouvain.be> wrote:

> Hello everyone,
>
> As part of a research project, I'm looking to implement an OFDM receiver
> on the FPGA of a USRPx310 (and more specifically, the synchronisation
> stage). According to my research, some RFNoC blocks with this function
> already perform this function. Where can I find them?
>
> If you are not aware of the existence of these blocks, I imagine the best
> thing to do is to develop a new OOT module implementing this functionalit=
y.
> Where can I find the documentation for creating a new block (in UHD 4.8) =
?
> In the RFNoC specifications? (I've already installed UHD4.8, Vivado,
> ModelSim and run the Gain module's test-bench successfully, created a new
> module with 'rfnoc_modtool', but I am a bit lost about how to design my
> <block>.yml file, and then, wich signal to drive in the SystemVerilog use=
r
> logic code). I'm also wondering where I can find the documentation for th=
e
> available IPs to integrate in a new design ?
>
> Thanks for your help,
> Quentin
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008ad504062fae24c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Quentin,<div>I don&#39;t know what OFD=
M blocks are available. But, regarding your questions about getting started=
 with RFNoC, you will want to use the RFNoC Specification document along wi=
th reviewing the XML blocks that Ettus developed for the various included b=
locks such as FFT, FIR, SplitStream, etc. Also, reviewing exactly how the G=
ain block works is very helpful. You mentioned that you ran the test bench =
for the example Gain block but perhaps you could build this into an FPGA im=
age and go through all of the steps to make this run on the hardware while =
controlling it from software.=C2=A0 I would also search Ettus Knowledge bas=
e and past conference presentations such as GRCon for information about cre=
ating your own RFNoC OOT block.</div><div>Rob</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Mar 6, 2025 at 9:20=E2=80=AFAM Quentin Prieels &lt;<a href=3D"mailto:=
quentin.prieels@student.uclouvain.be">quentin.prieels@student.uclouvain.be<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
u></u>

 =20
  <div>
    <p><font face=3D"Aptos">Hello everyone,<br>
        <br>
        As part of a research project, I&#39;m looking to implement an OFDM
        receiver on the FPGA of a USRPx310 (and more specifically, the
        synchronisation stage). According to my research, some RFNoC
        blocks with this function already perform this function. Where
        can I find them?<br>
        <br>
        If you are not aware of the existence of these blocks, I imagine
        the best thing to do is to develop a new OOT module implementing
        this functionality. Where can I find the documentation for
        creating a new block (in UHD 4.8) ? In the RFNoC specifications?
        (I&#39;ve already installed UHD4.8, Vivado, ModelSim and run the
        Gain module&#39;s test-bench successfully, created a new module wit=
h
        &#39;rfnoc_modtool&#39;, but I am a bit lost about how to design my
        &lt;block&gt;.yml file, and then, wich signal to drive in the
        SystemVerilog user logic code). I&#39;m also wondering where I can
        find the documentation for the available IPs to integrate in a
        new design ?<br>
        <br>
        Thanks for your help,<br>
        Quentin</font><br>
    </p>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000008ad504062fae24c1--

--===============3625428956316306302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3625428956316306302==--
