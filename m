Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BA5AFB298
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jul 2025 13:50:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DA6B385DD7
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jul 2025 07:50:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751889058; bh=15BBvKKErVq1Q2fwb7cub+czwQCIa+zbWnQ8lad4DgI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XXxEDeJyVIB1XEK3ml8yvSoRZTOvfkm2QoW621SOuphYKFScv5PHt8EZ2vP0T5aQ8
	 qLVbSvaZ+hfk4wyIL486MTQqCfOtRTa6gvQj3n12UjEH0KF8hER5Zd9Xp95VAUN46o
	 GIEVMPFWEDzgRQEfNGuBkL0ZZ0wVex0j3Zp60+wKjjY+dbUFKGljUu+WGA0zqXPTmn
	 oT1gKJ1Ds2h2YC0KPKTT+hrvyIYHe1rbvqWdNrCyMSEYC+3k9FApXF0P3RR+PG3h60
	 pGNoidFR3z7LxEIddOWyI3VYdbaWXAl0eXFn6fDeUZCnKPaGl+SGNJusCH067zt7ae
	 rB/KnaYg3fmzA==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A7C5C385CDA
	for <usrp-users@lists.ettus.com>; Mon,  7 Jul 2025 07:49:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="1HQYNfyJ";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ade5b8aab41so627238266b.0
        for <usrp-users@lists.ettus.com>; Mon, 07 Jul 2025 04:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751888991; x=1752493791; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=toHIzRG3oHz3aiNg120fk2erC1cediZ8qCiUTGjWgvU=;
        b=1HQYNfyJKyD8NqKO2odIyNEkvmu2ZxjHE6dN7P1O4LsXoWK+N/IlpzIvcjY1GugrGF
         KLkVVt/WIB+0rjXJX4fxU4mYBKt/BkE727FUu0lmSALd3jZb18JLlWfNAkrgWfq1aRZx
         jtL1eolb/o/XzOtPoPqsfSjfdMUI+jUt2lkFCEVmYh8AzGiMXCUAqGuekCcgoq1776Pg
         1lvwfpLBTAndQ81JIQ0Oz36brT4QGwpnTUSOXKIWj/DdkdwBopirXR/LxRun4xibmQ4v
         BqeVwbn717EunBdpPmJnur6+Sn9A0mHPwUjdAMa88bQvmPJh1nkvW/v6o92VIC+4vwHu
         gpwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751888991; x=1752493791;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=toHIzRG3oHz3aiNg120fk2erC1cediZ8qCiUTGjWgvU=;
        b=tLnlzjz0B2F6+WkyY3JAe5kWLtxcgVH1SYc0dPYZ8sXGenr33f2g9RIfAARp89GU08
         4ughFKQE/6DYu3PhmYscftdldwtVxnAFJQLJu6J5DG6Shd01DqDKhl0GnlrYD02bM968
         5EQXV9ClLhXtciJqSSH6R2oC4ZYeBKnHK+ucwHIdM6FigWZAa7+9uB/ZZZpaqY6+tX/L
         aug353xw8PBZvkVDP/c3V7R+Kayws+LnwQiHfaAuc8VNucr43YUNgSeHE3zdR6vs+OF3
         aL0lkColqXCP/cvRofY8Oi+cRQUYpwibt9pS9I08XouZhnf0PkpCiXCgyRpjPnJxuIqX
         ex9g==
X-Gm-Message-State: AOJu0YysFU4Byex0p7hKn1xHmo8AyoigktbWgV8B3bsruDo8U224k1ik
	dE8CbbSAo6FggSFH55BkDGj/cc9ECCvqB348fgQy18/QU0oh6DtVCnSh6hs7yq/ZouXU3obRCzx
	NHjzAF1GYp0M6HnpqfmmjTCpdS3QSpIzRvPu9Iv+B0FsybHR1glI4D/8WBw==
X-Gm-Gg: ASbGncvgyMFxiZbZZxN0X4HmQcksCeYgiDNGjmMfHAno25U/y/JXxZCdKAROTfY7qWJ
	FQlC+7uaP8RgERgEJirvsZIZ5oeGy3qJVHgloz58vhUQSyUnUbrk6RKX1N8KZLenGPg9dVTne4E
	5CM3tMcpBuXqBzBBdi8eiESJSFEAvkbflBzAxHE+ryUETAsp0g1/FiPm+i2QdI5/j1twmZFlkJn
	eE=
X-Google-Smtp-Source: AGHT+IHIR3EZ94wiiD/Ei55MIOmluGkSJVOpplayKOKfzf8a1Hoj60GdgWYc4Kiuxi0aNtJ3OghSaKygu1B0hk2JoeY=
X-Received: by 2002:a17:906:6a05:b0:ae0:e065:de05 with SMTP id
 a640c23a62f3a-ae3fe5966c4mr1337983966b.3.1751888991052; Mon, 07 Jul 2025
 04:49:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAOj5YL7_6fGk5xX4CYSdZfO3NC43ny7-+KiqUg0E9y8qRyHDNA@mail.gmail.com>
 <CAFOi1A6wO9aravAdb5SMdjfxevDpXWGfWmZUBL6Omu3t=oQtRA@mail.gmail.com>
 <CAOj5YL4dJaf0S+7z+k=w0-ieCjL8SkxQZ0Q2o2UOLC=_aUWR=A@mail.gmail.com> <CAOj5YL4C9_xxE9-cYLEMHQaYuop-dc3Qe7d_AtUMB1MnFypz5Q@mail.gmail.com>
In-Reply-To: <CAOj5YL4C9_xxE9-cYLEMHQaYuop-dc3Qe7d_AtUMB1MnFypz5Q@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 7 Jul 2025 13:49:40 +0200
X-Gm-Features: Ac12FXxe2lqZDcMLTn1z5Vq1mn_d8Ofe5RCduA1OIbkPekHZOftTELWScBKcQNE
Message-ID: <CAFOi1A5QWJdm3Tdn0ymbXmFq4QD4oYp-HO64vQpQ1N0G1DoajQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: DRH5UA5XX62Z7Z3D6A6BZTFC74KAO7UA
X-Message-ID-Hash: DRH5UA5XX62Z7Z3D6A6BZTFC74KAO7UA
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoc Gain Block (UHD 4.8.0)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DRH5UA5XX62Z7Z3D6A6BZTFC74KAO7UA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6957001329427970336=="

--===============6957001329427970336==
Content-Type: multipart/alternative; boundary="000000000000ff7d0f063955704b"

--000000000000ff7d0f063955704b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ahmet,

this is too difficult to remote-diagnose. I suggest comparing your code to
the rfnoc-gain example in UHD and see if you made a mistake in the Verilog
implementation.

--M

On Wed, Jul 2, 2025 at 2:51=E2=80=AFPM Ahmet Hes <nirkicatal1@gmail.com> wr=
ote:

> *Final Update:*
>
> I decided to ignore the warnings in GNU Radio and proceeded with the
> Python script.
>
> When I construct the graph as follows:
>
> radio_noc_block =3D graph.get_block("0/Radio#0")
> radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)
> rx_streamer =3D graph.create_rx_streamer(1, uhd.usrp.StreamArgs("fc32",
> "sc16"))
> graph.connect("0/Radio#0", 0, rx_streamer, 0)
> graph.commit()
>
> I=E2=80=99m able to receive samples successfully.
>
> However, when I insert my custom Gain block into the chain:
>
> radio_noc_block =3D graph.get_block("0/Radio#0")
> radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)
> rx_streamer =3D graph.create_rx_streamer(1, uhd.usrp.StreamArgs("fc32",
> "sc16"))
> graph.connect("0/Radio#0", 0, "0/Gain#0", 0, False)
> graph.connect("0/Gain#0", 0, rx_streamer, 0)
> print(graph)  # Inspect the connections
> graph.commit()
>
> I no longer receive any samples.
>
> I would really appreciate your help in identifying what might be going
> wrong with the custom block connection.
>
>
>
>

--000000000000ff7d0f063955704b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ahmet,</div><div><br></div><div>this is too difficult=
 to remote-diagnose. I suggest comparing your code to the rfnoc-gain exampl=
e in UHD and see if you made a mistake in the Verilog implementation.</div>=
<div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 2, 2025 at 2=
:51=E2=80=AFPM Ahmet Hes &lt;<a href=3D"mailto:nirkicatal1@gmail.com">nirki=
catal1@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><p><strong>Final Update:</strong></p>
<p>I decided to ignore the warnings in GNU Radio and proceeded with the Pyt=
hon script.</p>
<p>When I construct the graph as follows:</p><p>radio_noc_block =3D graph.g=
et_block(&quot;0/Radio#0&quot;)<br>radio_block =3D uhd.rfnoc.RadioControl(r=
adio_noc_block)<br>rx_streamer =3D graph.create_rx_streamer(1, uhd.usrp.Str=
eamArgs(&quot;fc32&quot;, &quot;sc16&quot;))<br>graph.connect(&quot;0/Radio=
#0&quot;, 0, rx_streamer, 0)<br>graph.commit()<br><br></p><p>I=E2=80=99m ab=
le to receive samples successfully.</p>
<p>However, when I insert my custom Gain block into the chain:</p><p>radio_=
noc_block =3D graph.get_block(&quot;0/Radio#0&quot;)<br>radio_block =3D uhd=
.rfnoc.RadioControl(radio_noc_block)<br>rx_streamer =3D graph.create_rx_str=
eamer(1, uhd.usrp.StreamArgs(&quot;fc32&quot;, &quot;sc16&quot;))<br>graph.=
connect(&quot;0/Radio#0&quot;, 0, &quot;0/Gain#0&quot;, 0, False)<br>graph.=
connect(&quot;0/Gain#0&quot;, 0, rx_streamer, 0)<br>print(graph) =C2=A0# In=
spect the connections<br>graph.commit()<br><br></p><p>I no longer receive a=
ny samples.</p>
<p>I would really appreciate your help in identifying what might be going w=
rong with the custom block connection.</p><p><br></p><p><br></p></div>
</blockquote></div>

--000000000000ff7d0f063955704b--

--===============6957001329427970336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6957001329427970336==--
