Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D42964739
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jul 2019 15:42:51 +0200 (CEST)
Received: from [::1] (port=50064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlCrw-0007gq-9z; Wed, 10 Jul 2019 09:42:48 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:35075)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <samberhanu@gmail.com>)
 id 1hlCrs-0007b7-HD
 for usrp-users@lists.ettus.com; Wed, 10 Jul 2019 09:42:44 -0400
Received: by mail-io1-f52.google.com with SMTP id m24so4818010ioo.2
 for <usrp-users@lists.ettus.com>; Wed, 10 Jul 2019 06:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=7rtMcXRJVGTOZ9nZQT2TXddAWsNJ1e0HJXclV085AnY=;
 b=LUiMNMxUUNkVfZ13sxSwHmjRWTGy5Et+ymBcTlq37EvAN4BXl9Juu9r7unDLAj9LIp
 Te8ZzZv07e2k2ng/v/kgkVaP9Bm/yXC644oeH/jpbAx3ip0OKvbAdjagJqDPBTcpsl3s
 TBJujoBtriLNjx73ghSzOpvo3wrHRp7SYLDl4h51UXva8hCJQ15a1J1dmjxu03zUxbAC
 d/TWwV3keWPdlh1w5UgHmYK9A+pyfkZYQu/0zXJPYuFLiDLQHsskDIfvx5uRqpFIZ2lx
 LxR5AMin4ByB0b2qmoAei8cX/+rIzhnQ4DugGAnfNPO9u/uVrgsy6i6fa+yT1E0JbW9W
 IGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7rtMcXRJVGTOZ9nZQT2TXddAWsNJ1e0HJXclV085AnY=;
 b=c2ez0obwfHDvyNGKxO5oee/ePm/C43U3zv1q0x/fcontSEA7GlT8Nzhe8WV6vHDeXn
 sCSVTp6Y2JSI0t9s2I6j0g3rFFRObtEUTbW1yi2IN/TJWbYJQ1cMVOWbH4XAlc0Y6VcM
 X9AMmwKyxf0jqdnFxXyrVV9oF6fmFUP7+l9ZVZXs3b4uRx+yLvl9xp8HpUXCvCMM6vXM
 ddDqlRukoeU8CN9YG9xBPll5COedo00DMmagD5qQ21iJBs0IlxIUiHZvoQZq2Apnm4rV
 I5528Xp/H/oMVRlVGu/i939j74WkNmTuscCA7csQ1RsnvKz4aCQpWSQ+ddX8ZD6vLG3U
 FrPA==
X-Gm-Message-State: APjAAAV43ypkvwVPmcyEcbgMcKzjoFcViMazCHLv/pupWqwGHIym62JX
 OPhFg6S9d7KV69wVKqdVNoqj6O+g9fgIDTRm7OvRfQ==
X-Google-Smtp-Source: APXvYqwJQ1SYJHxaTBP3aenirsoUhXbP8yrIJudtVISmwQeL0D467RxdVAMEbVsHEAloiMioqAKHHFlhi9UhofIOc3E=
X-Received: by 2002:a6b:6f06:: with SMTP id k6mr8219164ioc.32.1562766123666;
 Wed, 10 Jul 2019 06:42:03 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 10 Jul 2019 09:41:53 -0400
Message-ID: <CAEyq4NcegtOT_t3DSTo+sRfTv1NSG9h0X6ZwH7aNh-hEai2u-g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Discrepancy between N310 MB Schematic and PS Pinout
 and other questions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Samuel Berhanu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Samuel Berhanu <samberhanu@gmail.com>
Content-Type: multipart/mixed; boundary="===============0691714946074831648=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0691714946074831648==
Content-Type: multipart/alternative; boundary="000000000000ab136f058d53d78f"

--000000000000ab136f058d53d78f
Content-Type: text/plain; charset="UTF-8"

The N310 design (i have tried both the HG and XG ) specify the following:
UART0 on MIO pin 14:15,
PJTAG on pin 10:13
UART1 on MIO pin 8:9
I2C0 on MIO pin 50:51

there is also GPIO pins on 46:49.

All the above pins when looking at the MB schematic have different
assignments.
Namely,
MIO 14:15 -> PS-I2C0-SCL, PS-I2C0-SDA
MIO 10:13 -> PS-UART0-RX, PS-UART0-TX,SYS-PS-I2C-SCL, ...SDA
et.al

1) In short, which one is correct? Datasheet or NI design? and whichever is
corect, does that hold true for all the other connections also?

2) I only see one of the two I2C controllers enabled in the PS. Where is
SYS-PS-I2C-SCL coming from the schematic?

3) Where is the microcontroller code for the STM32F072RBT6 code located? I
tried looking under ./firmware but I dont see it?

4) Am i correct in assuming for all FPGA images except White Rabbit, the
phase dac that is used for controlling VCXO is set at just about mid-range
and does not get adjusted? In general, a clearer picture of what the values
are being programmed in the LMK and their sequence or an overview of the
clock output values generated would be appreciated.

Thank you,

Samuel Berhanu

--000000000000ab136f058d53d78f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The N310 design (i have tried both the HG and XG ) sp=
ecify the following:</div><div>UART0 on MIO pin 14:15, <br></div><div>PJTAG=
 on pin 10:13</div><div>UART1 on MIO pin 8:9</div><div>I2C0 on MIO pin 50:5=
1</div><div><br></div><div>there is also GPIO pins on 46:49.</div><div><br>=
</div><div>All the above pins when looking at the MB schematic have differe=
nt assignments.</div><div>Namely, <br></div><div>MIO 14:15 -&gt; PS-I2C0-SC=
L, PS-I2C0-SDA</div><div>MIO 10:13 -&gt; PS-UART0-RX, PS-UART0-TX,SYS-PS-I2=
C-SCL, ...SDA</div><div><a href=3D"http://et.al">et.al</a><br></div><div><b=
r></div><div>1) In short, which one is correct? Datasheet or NI design? and=
 whichever is corect, does that hold true for all the other connections als=
o?<br></div><div><br></div><div>2) I only see one of the two I2C controller=
s enabled in the PS. Where is SYS-PS-I2C-SCL coming from the schematic?</di=
v><div><br></div><div>3) Where is the microcontroller code for the STM32F07=
2RBT6 code located? I tried looking under ./firmware but I dont see it? <br=
></div><div><br></div><div>4) Am i correct in assuming for all FPGA images =
except White Rabbit, the phase dac that is used for controlling VCXO is set=
 at just about mid-range and does not get adjusted? In general, a clearer p=
icture of what the values are being programmed in the LMK and their sequenc=
e or an overview of the clock output values generated would be appreciated.=
 <br></div><div></div><div><br></div><div>Thank you,</div><div><br></div><d=
iv>Samuel Berhanu</div><div><br></div></div>

--000000000000ab136f058d53d78f--


--===============0691714946074831648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0691714946074831648==--

