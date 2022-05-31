Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A0D538D21
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 10:47:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 939FA383D2D
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 04:47:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653986832; bh=18ww3xAsmx6iObcknxESALLsyLWc7yXI6xoqfBd70SI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=njZ640frI5fZPGPACsajcmMheV0M4zucjeBGq3jpcfE4s3rDjcsNFco1i2JPGHkf7
	 egfyhXmUj5MktnfptCDM2qRIQJchADkT2HHUaDSGQlKiUDu/6CpaLi4Gm7pYQRfakR
	 mffghfIO7a07Rn2o0HNS6gWazTwhB36jBkW0pRHxxXUGefhR+hxtkhowwzcQHV5zGk
	 8CjDc7jtE0fkW3PFVpzhy90C4ye/lU13wlDmOEbT3byt20r0dEvDS1oRqTVh+HkEoM
	 /pPl7VDX5SgiFmS1dMY/C6OSOcUPWEFGbfqkXUj/o6D4ORij7TaVIGdW9CkrRZwRDZ
	 i2/UQfUsoOAGw==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 442BE383E00
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 04:46:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HKu202bx";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id q1so8707843ejz.9
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 01:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZgMQvwfXO34lFZ4rpxSkzCazh2vpel2lKBjc39DmFe0=;
        b=HKu202bxl/lCUY+zDKEj5aWEF9IzB7suRFYu8/Fd3D9+DOHi0k3zIkpoOpzcEjWOui
         RxhaIeyG+A/DfnJVSt88QfmrbsbCAtn4bLzeRsejM1M+zd51NgU0IpVuHod6K6b9FurB
         cAHQlKaDpnezz2B1zlv1oEw2eod8f6gwGfUAFaugojmntyl2l6RWPC4wYnA9jIGUYRhE
         CJ1lsA8X0yH6yucqV0mbs81koMhi1syzaNRzFKSXcBTABmkkGWBsVMUOdOjxoRgJMt8y
         MdglBorTarMfPUSrGLbT7DnTDRKspEZLC+XbDGDB6/RVhXoMsEmpzlUraJ7wQrpgPrpi
         2OXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZgMQvwfXO34lFZ4rpxSkzCazh2vpel2lKBjc39DmFe0=;
        b=D/Jx47+KfZ1amzYIeGewsNaR1+p57MU0TGqD8VDyyiJycSDaZWiGZKu01NfmK/RxCb
         pOIfrOumW9B+xBIh/TUSEt8zm8OHOoaWyeBhiU3niKTN8GkZpnQm3/L076OvLobR38OE
         lqIrWTgUq0FgHOpWdpn8MR3diBAh5MPim1nisKg4skbXLYQw/IHniVt7AKtwt8ZOVCBy
         FuRPVs0wKZVrqOMKiNKL2Ixm+95+dv8lLmpNSGXuuw2wH+8TcGcTRnTkieu9ScUIJsAA
         PKT30ebbA4cyZ5n6NaVe5fbfn+11b+BEKSEQdQVHYvuHTB8cWJZA554ZMIS4uzgcNqZA
         fLWg==
X-Gm-Message-State: AOAM530iJMrdp6AiA6ke5WYK6spYK5C8YlcGXLfaLan/9lKt/KsZSxdn
	z6kxyiVf9iDhEwVShVkqk8vQzsaPAO1MZJvPlhP6Ska5MOA=
X-Google-Smtp-Source: ABdhPJzzHVd75bBS5KQ/tcD89f1/GxuIJcDk6p0+61wClXb0Ro43jOOfKipwkNJUr5F9saucuLb2X72h3W3FtUMpEu0=
X-Received: by 2002:a17:906:9b8f:b0:6ff:f3c:814d with SMTP id
 dd15-20020a1709069b8f00b006ff0f3c814dmr27690998ejc.381.1653986764772; Tue, 31
 May 2022 01:46:04 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Tue, 31 May 2022 10:45:52 +0200
Message-ID: <CAG16vQUahtZ8Ca0CSgu_dacdwPMX9grDjs93+jzUjn8ABNJi9g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: WD6CWFJONMBOOK2S4RP36AUEL6SLG3SP
X-Message-ID-Hash: WD6CWFJONMBOOK2S4RP36AUEL6SLG3SP
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Select lower clk in X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WD6CWFJONMBOOK2S4RP36AUEL6SLG3SP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3417468081797675882=="

--===============3417468081797675882==
Content-Type: multipart/alternative; boundary="00000000000093d7cd05e04acd02"

--00000000000093d7cd05e04acd02
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have generated a custom RFNoC block with rfnocmodtool to be implemented
on X310.
I am using UHD 4.0. toolchain to synthesize it, but I cannot meet timing
with the clock selected (in /icores/yml file, I have select "ce" as the clk
source for my block).
I see that "ce" clock for X310 is 214 MHz and I wondered if I could use a
slower clock for my "ce" from the interface. In the clock reports, there is
a "bus_clk" of 187.5 MHz, which I think is suitable for my design, but if I
select "bus_clk" as clk source for my block in the yml file it gives an
error message:
[ERR] 1 unresolved clk domain(s)
[ERR]     block0:ce
[ERR] Please specify the clock(s) to connect

It is possible to use "bus_clk" as the clock source for my block? Which
files should I modify to use this clock?

Kind Regards,
Maria

--00000000000093d7cd05e04acd02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>I have generated a custom R=
FNoC block with rfnocmodtool to be implemented on X310.</div><div>I am usin=
g UHD 4.0. toolchain to synthesize it, but I cannot meet timing with the cl=
ock selected (in /icores/yml file, I have select &quot;ce&quot; as the clk =
source for my block).</div><div>I see that &quot;ce&quot; clock for X310 is=
 214 MHz and I wondered if I could use a slower clock for my &quot;ce&quot;=
 from the interface. In the clock reports, there is a &quot;bus_clk&quot; o=
f 187.5 MHz, which I think is suitable for my design, but if I select &quot=
;bus_clk&quot; as clk source for my block in the yml file it gives an error=
 message:<br>[ERR] 1 unresolved clk domain(s)<br>[ERR] =C2=A0 =C2=A0 block0=
:ce<br>[ERR] Please specify the clock(s) to connect<br></div><div><br></div=
><div>It is possible to use &quot;bus_clk&quot; as the clock source for my =
block? Which files should I modify to use this clock?</div><div><br></div><=
div>Kind Regards,</div><div>Maria</div></div>

--00000000000093d7cd05e04acd02--

--===============3417468081797675882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3417468081797675882==--
