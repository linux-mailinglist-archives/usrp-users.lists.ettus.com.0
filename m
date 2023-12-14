Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0313C813355
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 15:38:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF57F385BFA
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 09:38:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702564696; bh=lCUfJXffkm6wpe86YitQ5qt3dSCDvUMOw5cvtJO6sjQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=opz+ay5CtD5WVJkvxSHKaUVU5E409HR+taEjF6LJxVmc9K3FltsTVRH3Muk5V5DZA
	 SewYdL0QkHt/29jUij0hu+84CBPrcHdMlo8sMIuP4+O+FOtagUhQaJMI1w7x+zdOWy
	 UwvAMGbqZc+gcKZgcN3tWQs4QoaDk8tmAMEBsQt0p6fpFFFMk6VBqphbosKZfgwCC+
	 9BvdvJ4yQ31HyKHKHjkW2bdltLsiI1ufoR3GSkwWX70loGHNLqum+BVYH60OkEcpwe
	 4NjZTWlUjNeLabuhkqX1cN6XKMG0NbkbjKRWESzCaPfn6W2VF3T0d1/swsP7bQPX1+
	 Zigm8EqD79zig==
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E7C5A385BE2
	for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 09:38:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="MzAecF+f";
	dkim-atps=neutral
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c9f72176cfso104112641fa.2
        for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 06:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702564690; x=1703169490; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JYeyp7yOBWWKQzHJJvO7u/9nikcFhxMgl3P7irs9az8=;
        b=MzAecF+fd/z/TQNivbY0OXAZL5pWqgOcAUxo20jRbdJ2GuUfc+ZuXo64xprvwM7O8U
         LB/2u/bCSOocFwpAP7Yr+vmacOGAh95zRIWTcS2RYym8oZdEL9EECw7uQVUBfinvmVZ6
         9imP8Uav+Q18W/jV56FD93Ympn7+1nvr54N4mjImx4OHwvjISY7xzKiBqzhSG77bebmo
         y+hlHsXygdixgShyZ0MA+W8QcmV95oncQC2YmTlcexFE3nhESeeT0CstGCaGScqff8b/
         AvlYtH+O/DAKsYLk1OsZzZ/fFoM6eiLkbItqXOwtmNu/QwgANURRrAICCG6dE6yfwN1F
         4S3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702564690; x=1703169490;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYeyp7yOBWWKQzHJJvO7u/9nikcFhxMgl3P7irs9az8=;
        b=PbhR7rs0LBQ4yTm9t1b23uZ739/UsSFAbNiF/Rsru0to59MkEKRkXViUXle5YLh5Nw
         KB9bCONSQvk+vNoVC5Qmm64/DY6zmk3P/lVFyeKXlImriv7yUKjEL7mIiW7MpUekRrub
         bX5Ws8ofzXS8hWpE1J7JN23o9L7vwxj3Rrr61KUi/oDqLBx/ctXMxz59sSS+2L20aTQF
         zJjccfJz5I2H1mFHNFHtjnv+CrXPqy0evUA0mOpTdddBTTt0yEr8qAv7qIg2OCoRQBxv
         tgPNV6lwfVyfjvH7hPGOe3xAi/SYkKkbweIefdOz7NWnTKjFB0loPPF8Hpjv8FGTcMZS
         DwCA==
X-Gm-Message-State: AOJu0Yy3bmR/9lQTu5xjZ9gX84hBwwJFRXI1ji+wF+rW1wOTJ0gGPUca
	RgWJKrMJ2P1DgF0cvBbR+fKQyZ/T/cnBbBWKG7nKFzjUnTg2aC5T
X-Google-Smtp-Source: AGHT+IEXGlehNBKNf/cMqCVPiZJ2Yw5asY5J41dZg4eY4DRj0rnKNH+LkwaRH23f/lImPh6TEK1+YMxku/x+eCq0yVI=
X-Received: by 2002:a2e:164a:0:b0:2cc:404f:e656 with SMTP id
 10-20020a2e164a000000b002cc404fe656mr321477ljw.101.1702564690139; Thu, 14 Dec
 2023 06:38:10 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
In-Reply-To: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
Date: Thu, 14 Dec 2023 09:37:59 -0500
Message-ID: <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Message-ID-Hash: 2SC3CEACMRQM4HX4PTKK4T75BHXBRNJU
X-Message-ID-Hash: 2SC3CEACMRQM4HX4PTKK4T75BHXBRNJU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2SC3CEACMRQM4HX4PTKK4T75BHXBRNJU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6497126847901603791=="

--===============6497126847901603791==
Content-Type: multipart/alternative; boundary="000000000000904640060c793b83"

--000000000000904640060c793b83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anabel,
How are you sync-ing the clocks on the two units? Do you have an external
PPS source and are you configuring both devices to use this external source=
?

Finally, do you have the ability to upgrade your OS and your UHD versions?
There aren't many user's that are using UHD 3.12 so if you have issues, it
will be hard to get support.
Rob

On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <anabel.almodovar@=
gmail.com>
wrote:

> Dear all,
>
> I am trying to make an acquisition with two X310 equipped with two TwinRx=
.
> I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM
> and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB =
SSD. I have
> modified the example rx_samples_to_file.cpp code to get 8 channels and I
> get the following error:
>
> *D*
> *[ERROR] [STREAMER] The receive packet handler failed to time-align
> packets. 1002 received packets were processed by the handler. However, a
> timestamp match could not be determined.*
> *Timeout while streaming*
>
> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw communication
> failure #1*
> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
> *[ERROR] [UHD] An unexpected exception was caught in a task loop.The task
> loop will now exit, things may not work.AssertionError: reply.sequence =
=3D=3D
> request.sequence*
> *  in virtual void
> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_t)*
> *  at
> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135*
>
> I don't know how to solve the Timeout problem, I have tried to start the
> acquisition 1.1 sg in time. But it didn't work.
>
>
> *        stream_cmd.stream_now =3D false;        stream_cmd.time_spec =3D
> usrp->get_time_last_pps(0)+1.1;*
>
> What is the problem and how can I fix it?
>
> Regards,
> Anabel
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000904640060c793b83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<div>How are you sync-ing the c=
locks on the two units? Do you have an external PPS source and are you conf=
iguring both devices to use this external source?</div><div><br></div><div>=
Finally, do you have the ability to upgrade your OS and your UHD versions? =
There aren&#39;t many user&#39;s that are using UHD 3.12 so if you have iss=
ues, it will be hard to get support.</div><div>Rob</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 202=
3 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodova=
r@gmail.com">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><div>Dea=
r all,</div><div><br></div><div>I am trying to make an acquisition with two=
 X310 equipped with two TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD =
3.12. My PC contains 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @=
 2.20GHz =C3=97 40 and a 4TB SSD. I have modified the example rx_samples_to=
_file.cpp code to get 8 channels and I get the following error:<br><br></di=
v><div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MS=
FontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">D=
</span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFon=
t,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb=
(0,0,0)">[ERROR]
 [STREAMER] The receive packet handler failed to time-align packets.=20
1002 received packets were processed by the handler. However, a=20
timestamp match could not be determined.</span></i></div><div><i><span styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Timeout while streaming</s=
pan></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)"><br aria-hidden=3D"true"></span></i></div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR] [X300] <a href=3D"http://19=
2.168.60.2" target=3D"_blank">192.168.60.2</a>: x300 fw communication failu=
re #1</span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">EnvironmentError: IOError: x300 fw poke32 - reply timed out</=
span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,=
Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0=
,0,0)">[ERROR]
 [UHD] An unexpected exception was caught in a task loop.The task loop=20
will now exit, things may not work.AssertionError: reply.sequence =3D=3D=20
request.sequence</span></i></div><div><i><span style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">=C2=A0 in virtual void x300_ctrl_iface_enet::__pok=
e32(uhd::wb_iface::wb_addr_type, uint32_t)</span></i></div><div><i><span st=
yle=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">=C2=A0 at /home/rs3_lab/=
workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135</span></i></div><d=
iv><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></=
div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I don&#=
39;t know how to solve the Timeout problem, I have tried to start the acqui=
sition 1.1 sg in time. But it didn&#39;t work. <br><br><i>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
stream_cmd.time_spec =3D usrp-&gt;get_time_last_pps(0)+1.1;</i></span></div=
><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span=
></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">What=
 is the problem and how can I fix it? <br></span></div><div><span style=3D"=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></div><div><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Regards,</span></div><div=
><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Anabel<br></spa=
n></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br=
></span></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000904640060c793b83--

--===============6497126847901603791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6497126847901603791==--
