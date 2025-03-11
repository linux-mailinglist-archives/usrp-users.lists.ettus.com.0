Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5818A5D2FB
	for <lists+usrp-users@lfdr.de>; Wed, 12 Mar 2025 00:10:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 987D1383FCC
	for <lists+usrp-users@lfdr.de>; Tue, 11 Mar 2025 19:10:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741734635; bh=YTyuGAfPW/2L6nn3wKJACio4vgewfTnDpJiWetMRTzc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Erk02QO52SZXEQ3glaXKF4r6b8Ppp7g+/vYMN+PXAalaPpJo/ip3zAP26uFfheiKC
	 u5tarcYPkblFKwD5Ous9oNVU7VMUKAYMkLau8NMKdto/fJnL9uYeMrahJBtwO7/Nk1
	 5j3gvJeZ0bzNH5hoLIbjnVWukuwl/AyH7IJAA/iTbddUWRGvyFwnyPbJpo/uSLQ6b7
	 6wC5aUpEVl8Y1IjemalC2TjsRgkoQPeQwh1lpuAVGzpZoQZeeVEsg4sj4R4ekkR0WX
	 6rkmSdlTyLGyzMOE1GwsdBFhF1Mey3r3rkKql0kxbIVuBlfJPLP3CMBvznrnGLGPFy
	 1v74FTpOiOTRg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 99F85386075
	for <usrp-users@lists.ettus.com>; Tue, 11 Mar 2025 19:10:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MhUKf4Nb";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2a81e41e3so496108866b.1
        for <usrp-users@lists.ettus.com>; Tue, 11 Mar 2025 16:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741734626; x=1742339426; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3lDramFcpf+SWmad1SWiamIHmvaavl6Rk60x6zI4SdE=;
        b=MhUKf4NbfERckAM69gSZEXPN2nJ3SG8PVPtGiFR7ll6aHGriRpCIuRUHByaFQD4GbU
         +N+MGrqEL8A15Q3iDWDkjBXfsSZ9/Srd233kgSfU2v83DST8vZD1UdJvG0gVENCiBHyY
         ttLe2DtYxWZ5Vptc69m7CyZqyk/yuhO34gLDTdmn8DByxvdoRgqdtdRe+crXKnynxjPF
         ArEN8hRHysoIf4p6kKAiu/DlYSbpKP1vkabdk4eZYK38HrceVK5cJ0ioSE/J0bAj8QEL
         LLq8DbhrzqHTFEt5bW9KONtNU2vQ6o9sU/42GsRlyWDf4RPL5F9uH9JBSaGBVoa9pt3B
         tWxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741734626; x=1742339426;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3lDramFcpf+SWmad1SWiamIHmvaavl6Rk60x6zI4SdE=;
        b=jUl4K1YCKOA1nrx1WMTUB8gY1i/wtRjwbH2xMOKdVn3bvtGpFqar7xGjD0Q430UzeV
         SbDfVoqXBZsXGc2MEm9d2zx9tQpddIEqm0UUpwq4joUWULWmIJQ9U2DHqGzMEp8+/buF
         MGqpcdPPHQuOMjV0K4DIBn4yNXxk39i4Foh02bZOb+tNv6xQ2p22LqnfETr5e9CTvQQ1
         Zv24ZjWwiL6NB/erwGLOjMbN8jDo40d8JBjdy/Q+p3TVmLZQzitPbM4k995DvofrhK8B
         lxfMINSZD+ydo8krV4VcjwUpPnrVohkKXInrBTtl+LJObNuM8ZcEhmY/OTL9W5d+DKy1
         beMA==
X-Gm-Message-State: AOJu0YwctXBFZrKv8g9vZj6521JjpWdt8nV7CaJ1ME2ZScZ45aDVm0hu
	3QCMV5aGP2SaZq6ODzyaFhPo6PEF28+vVceDfLyIU6/h4JqTSZmcZbd823m04jznjKUtww+uue/
	1QaVTh+NEJY0JkDKfd3Nda/iayhMRpogB
X-Gm-Gg: ASbGncst0/ENBx5I8yx5bGGTKplMtcJ8UnNgLBpmydkb1yNx49WmAmy6dNgzmzOiH6G
	tgAS5RvqgY1wh6mx2BHBb8yqO65nDpFHViUim7sI9otpV317SfsWxXdoUJFrkoy4QzO49lGe311
	fkXgOgFRbNXm1YjeA0S2//j8jFAUiQTwaPWJ6J
X-Google-Smtp-Source: AGHT+IEiv/s8VvCGU6K+6bLDqjmTAQfAWach5MZdxwqjgT+Bsq3QXtXfU22vFvignqt/B4qqFtdgrpAEEsOjMfS9pac=
X-Received: by 2002:a17:907:1c9f:b0:ac2:b9b5:f13f with SMTP id
 a640c23a62f3a-ac2b9b5f402mr830813466b.9.1741734625471; Tue, 11 Mar 2025
 16:10:25 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 11 Mar 2025 19:10:14 -0400
X-Gm-Features: AQ5f1JrzoA3HPSIL8IWiioV2jBmIC6PurVl2eaP7oxLLjzanbROPkqGif0ufu5Y
Message-ID: <CAEXYVK72NmdLr7oyguv2P7hx29OgdwW3Et7DgMUrr_6r9FxQsg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ
X-Message-ID-Hash: 6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] axi_mm io_signature issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5175936112775165658=="

--===============5175936112775165658==
Content-Type: multipart/alternative; boundary="000000000000a520e506301931e1"

--000000000000a520e506301931e1
Content-Type: text/plain; charset="UTF-8"

I am checking the IO signatures, and I am seeing that the axi_mm interface
generated in rfnoc_image_core.sv is a bit wonky. I traced it back to the
io_signature.yaml definition here:


https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b162c83dc01d59d3bfa0/host/include/uhd/rfnoc/core/io_signatures.yml#L63

It states that it's up to 512-bit, 8 channels, and 48-bit address - but the
m_axi_wdata  and m_axi_rdata is 4192 bits. I think it should be 4096 bits
(512*8) but really I think this should follow some parameters that are
passed into it? Similar to how the radio interface is defined?

Alternatively, the x4xx_core.v file seems to utilise the localparam
DRAM_PORTS_PER_BANK - could the IO signature just use a generic like that?


https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b162c83dc01d59d3bfa0/fpga/usrp3/top/x400/x4xx_core.v#L576

Was this just an oversight or is there a plan to "right-size" this
interface based on the parameters passed into it?

Thanks,
Brian

--000000000000a520e506301931e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am checking the IO signatures, and I am seeing that the =
axi_mm interface generated in <a href=3D"http://rfnoc_image_core.sv">rfnoc_=
image_core.sv</a> is a bit wonky. I traced it back to the io_signature.yaml=
 definition here:<div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.=
com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b162c83dc01d59d3bfa0/host/in=
clude/uhd/rfnoc/core/io_signatures.yml#L63">https://github.com/EttusResearc=
h/uhd/blob/0dede88c6535ae6ffb30b162c83dc01d59d3bfa0/host/include/uhd/rfnoc/=
core/io_signatures.yml#L63</a></div><div><br></div><div>It states that it&#=
39;s up to 512-bit, 8 channels, and 48-bit address - but the m_axi_wdata=C2=
=A0 and m_axi_rdata is 4192 bits. I think it should be 4096 bits (512*8) bu=
t really I think this should follow some parameters that are passed into it=
? Similar to how the radio interface is defined?</div><div><br></div><div>A=
lternatively, the x4xx_core.v file seems to utilise the localparam DRAM_POR=
TS_PER_BANK - could the IO signature just use a generic like that?</div><di=
v><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uh=
d/blob/0dede88c6535ae6ffb30b162c83dc01d59d3bfa0/fpga/usrp3/top/x400/x4xx_co=
re.v#L576">https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b1=
62c83dc01d59d3bfa0/fpga/usrp3/top/x400/x4xx_core.v#L576</a></div><div><br><=
/div><div>Was this just an oversight or is there a plan to &quot;right-size=
&quot; this interface based on the parameters passed into it?</div><div><br=
></div><div>Thanks,</div><div>Brian</div></div>

--000000000000a520e506301931e1--

--===============5175936112775165658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5175936112775165658==--
