Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B427248C1F6
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jan 2022 11:08:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CB55384E1B
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jan 2022 05:08:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l3RtGRW8";
	dkim-atps=neutral
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9CB56384BE5
	for <usrp-users@lists.ettus.com>; Wed, 12 Jan 2022 05:07:34 -0500 (EST)
Received: by mail-ed1-f52.google.com with SMTP id u21so7788663edd.5
        for <usrp-users@lists.ettus.com>; Wed, 12 Jan 2022 02:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Z+l7HbG3fzOb90R/DxO7doJfZOvLDSqIecB0kEtSxbs=;
        b=l3RtGRW8HrPfKQsT/FOOI5ENu9/X7Qisj4GiCzNIYbsuF36mYyNoHCpG0u5CUJX1jq
         2Z8kPzyGLeznFGnnYl0oA6ulCkEkr10fzmyJn+YpjSqZsO7eK6FT2aiyxTADUCCZrtVx
         jshS6T/md7tL3LSj6GsMNUdC9s6ZG6Kc4Aktdm049pMa6rhD0OIXpDdX5hSDXHmXrSK/
         YspaXbQEApzEggaLvx6zLSlduGcMTrDK0rtLCZkl8onxL64eYL/iSnPgjuGLDicrqpfr
         sV110A0tRhkr/300uXZUK5sQh9fuunsrwg8H3Es7iKeP7jqOyx96DQuqrClD63FOs1Ak
         MbJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Z+l7HbG3fzOb90R/DxO7doJfZOvLDSqIecB0kEtSxbs=;
        b=xjuzyPYWw7mQwYhq6WZJAUx7y5EIB3LLsjAIiNpzavfExQHImcGxNjKyeKp69oi2I+
         dgSWRFpiAUrtJg4uLyYDfy9ZVnjo4hB1DWXcLvAMeIN0zDsVCCXxGVb1OpbIWLicYoQk
         1Ur4aeyA+RppxwOm8VxfrLMDu/Ht7EU27polycpHo6sRtiITZs2Hibn6geeZw7MeSRKh
         6+Zh14vs35du3wL+WTu7u8CaPsZMa4j6zPzyJtYZWOl0HUFKUZ3qekzvtE6OSpV/fH0n
         s/l/7/6eM82ExkIWzTwGPRz6f3dI4qEuHn5weq8xgwM7eJCercS5wLt0XDEva/2EXYMJ
         IAqQ==
X-Gm-Message-State: AOAM532QbtLaeB5+H3hPnFOacxJibgAeNaW/RwfRiKjLLWiiIoMVYffl
	UlqJWeha6xCJsvh+eyDfaiIiMhy71staLcRMdb1UmDKYJEE=
X-Google-Smtp-Source: ABdhPJy9eGlTacTi3QFtX3bI1/qNapzZENiVbphn08wh+6pSMJOpEZQ4rmP6f6Ywzv7hO0RzWU0TNLars65gTEHYCbE=
X-Received: by 2002:a17:907:9801:: with SMTP id ji1mr602062ejc.381.1641982053235;
 Wed, 12 Jan 2022 02:07:33 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 12 Jan 2022 11:07:22 +0100
Message-ID: <CAG16vQVXoc1UkG0B1LSBxje62MPsbGZqrX167aUPgivpWxBiiw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6BGF2DMTIUG4HIXNRSA7QKLLMIG3LIJG
X-Message-ID-Hash: 6BGF2DMTIUG4HIXNRSA7QKLLMIG3LIJG
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC custom block with 2in/2out
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6BGF2DMTIUG4HIXNRSA7QKLLMIG3LIJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8014723421901030240=="

--===============8014723421901030240==
Content-Type: multipart/alternative; boundary="00000000000002c57c05d55fbd0d"

--00000000000002c57c05d55fbd0d
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using USRP E320 with UHD 4.0, GNURadio 3.8 and gr-ettus master
versions.

I have made a custom RFNoC block using rfnocmodtool. Since the
skeleton that this tool creates only has 1 input and 1 output, I have
modified the yml block generated to have 2 inputs and 2 outputs and then
I've run the rfnoc_create_verilog.py script inside the block folder. This
creates the noc shell and block Verilog files with 2 inputs and 2 outputs.
When I modify the block Verilog file with my code and try to test it with
the interface tb to send and receive packages, I have timeout.
I have simulated my code in Vivado and works as expected, so I think the
problem comes with the interface between my block and rfnoc. I also try to
bypass my code (axis inputs to axis output) and still have a timeout
issue.  I try to open the simulation in GUI mode, but Vivado crashes. I
test the gain block tutorial created with rfnocmodtool (1 input and 1
output) and it works fine.

So I have several questions:

Is it possible to have custom block with 2in/2out (or several
inputs/outputs)? What is the best way to do it?
Is there a way to open simulation with the rfnoc framework in GUI mode
directly? (I have modified the simulation.tcl with -g option created once I
run make tb)

Kind Regards,

Maria

--00000000000002c57c05d55fbd0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>I am using USRP E320 with U=
HD 4.0, GNURadio 3.8 and gr-ettus master versions.</div><div><br></div><div=
>I have made a custom RFNoC block using=C2=A0rfnocmodtool. Since the skelet=
on=C2=A0that this tool creates only has 1 input and 1 output, I have modifi=
ed the yml block generated to have 2 inputs and 2 outputs and then I&#39;ve=
 run the rfnoc_create_verilog.py script inside the block folder. This creat=
es the noc shell and block Verilog files with 2 inputs and 2 outputs.</div>=
<div>When I modify the block Verilog file with my code and try to test it w=
ith the interface tb to send and receive packages, I have timeout.=C2=A0</d=
iv><div>I have simulated my code in Vivado and works as expected, so I thin=
k the problem comes with the interface between my block and rfnoc. I also t=
ry to bypass my code (axis inputs to axis output) and still have a timeout =
issue.=C2=A0=C2=A0I try to open the simulation in GUI mode, but Vivado cras=
hes. I test the gain block tutorial created with rfnocmodtool (1 input and =
1 output) and it works fine.</div><div><br></div><div>So I have several que=
stions:</div><div><br></div><div>Is it possible to have custom block with 2=
in/2out (or several inputs/outputs)? What is the best way to do it?</div><d=
iv>Is there a way to open simulation with the rfnoc framework in GUI mode d=
irectly? (I have modified the simulation.tcl with -g option created once I =
run make tb)</div><div>=C2=A0</div><div>Kind Regards,</div><div><br></div><=
div>Maria</div><div><br></div></div>

--00000000000002c57c05d55fbd0d--

--===============8014723421901030240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8014723421901030240==--
