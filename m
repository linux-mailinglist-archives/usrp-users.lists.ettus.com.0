Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B92F335157A
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 16:03:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 094FE383D5E
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 10:03:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OR+WhcPv";
	dkim-atps=neutral
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 92B32383D5A
	for <usrp-users@lists.ettus.com>; Thu,  1 Apr 2021 10:03:36 -0400 (EDT)
Received: by mail-ot1-f52.google.com with SMTP id 91-20020a9d08640000b0290237d9c40382so2164252oty.12
        for <usrp-users@lists.ettus.com>; Thu, 01 Apr 2021 07:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=tIlDWVKWVoA7bVNqS6jBbAHNvpuwU+dnj+0lVuMCvjk=;
        b=OR+WhcPv188ADQrnT33sPEEPfg05ow33e24Yel1Ind55/HE6EY7pnV/cH0ouFCcAf2
         sGUwo8n9/TTTpS4X5CODfdmDdja9NU88AN7ZUJgWDWhFflPnEcRE4Nlj5fYGiX+rzzkJ
         2leVYE1VvE2vWBkg8BhaR1pW3yKha/vaX7NkTnM4ZbXjKwWjPbRvnIkY98E/REdsv/xk
         9iOPXHa1ovYIa6cGfOZ6MVwU2gv2JHmR+UZ8w9zG08JC3inflX0kPAf0nhphkSSb2TK9
         r02wZSTVYtomPYoBnvtNmIJQcfjIxUX5taS/cU8KJD0dH2xWprnhdZwXLY2F3Dy/M8nw
         VWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tIlDWVKWVoA7bVNqS6jBbAHNvpuwU+dnj+0lVuMCvjk=;
        b=MXlRKX9Td7cFtY222ZegPcD+U3AOhvmNf9o6AFDwCafcl6OpftnOguC4jyX2Ji5GHb
         yrq6muY069ILDqy2UMO6eYre7XAv8Vr1Kdjf6sL7iCrgRHq+d9S4qHGfBJHwveE5CQOr
         bByn4UhITBFm03ejQufwar7WBwgd8bXLU6rboMjaNf+rXG9kAvS4mg5yRS8fmsgcyvwP
         t5Iy1LPmPrH17o804U+S/3iT3TVqo+W2WbkbIkMWbA5GKAmnQHbus+VIlf+2cWkpdYdA
         /pt8obmI/ya3QvgAR/ruVEP8ugjYTXU/OpCPMCWI9n2nTxVPI9DOOBMacC8lZIIEu+zp
         pguA==
X-Gm-Message-State: AOAM530u5AuzEaZiHnWKFCtL3Md0bia59SFQNt/xtzD4v8fyBpCNWTBS
	rz03H+Ob1Zi+FUx8OMlYLpsi5Ws+3mYS1xP5GyhHC1tOh70=
X-Google-Smtp-Source: ABdhPJxIBzSLQQ4Cx7GVebR3sMw6aeYWQpXj3wUxfOglZLGFRiv0xDwxQ9LXDyGV1xjPeon4C6kd6vMEkSJRojtfd34=
X-Received: by 2002:a9d:469:: with SMTP id 96mr7025411otc.302.1617285815250;
 Thu, 01 Apr 2021 07:03:35 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 1 Apr 2021 10:03:24 -0400
Message-ID: <CAB__hTQ938e=-OtR1JBQF2MpaNZwZbBmpYp4ovt1EhxO7ev9Dw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IUBNMULFJZ33HZSEP4PUNBCPRR7HHOZA
X-Message-ID-Hash: IUBNMULFJZ33HZSEP4PUNBCPRR7HHOZA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] I/Q swapping situation with RFNoC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUBNMULFJZ33HZSEP4PUNBCPRR7HHOZA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6485826819896800291=="

--===============6485826819896800291==
Content-Type: multipart/alternative; boundary="000000000000850f3705bee9b223"

--000000000000850f3705bee9b223
Content-Type: text/plain; charset="UTF-8"

Hi,
I developed a custom RFNoC block that implements an FIR filter
having complex taps (using 2 instances of Xilinx FIR IP with 2 inputs
each).  The taps are reloadable via an AXI bus.  After implementing a
successful testbench, I later discovered an issue when running with UHD and
the actual image.  The reloaded taps had I/Q swapped.  So, I changed my
block controller to perform this swap and now things work.

I'm trying to understand if this makes sense or if I have fooled myself.
My implementation uses the legacy "axi_settings_reg" to load coefficients
on the IPs reload axi input.  The register width is 32 and I use the upper
16 bits as the input to the "real" FIR instance and the lower 16 bits as
the input to the "imag" FIR instance.

When I run the testbench, I get the expected results without needing to
swap real/imag.  When I run with UHD and the built FPGA image, I must swap
the real/imag parts in the block controller in order to get the correct
results.  I wondered why I did not have to do something similar when
streaming I/Q data to my block (or other blocks), but then figured that
maybe UHD takes care of such swapping automatically.  Is this true?  If so,
am I going about this the right way by swapping I/Q in the block
controller?  Why does the testbench work without swapping?
Rob

--000000000000850f3705bee9b223
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I developed a custom RFNoC block that implemen=
ts an FIR filter having=C2=A0complex taps (using 2 instances of Xilinx FIR =
IP with 2 inputs each).=C2=A0 The taps are reloadable via=C2=A0an AXI bus.=
=C2=A0 After implementing a successful testbench, I later discovered an iss=
ue when running with UHD and the actual image.=C2=A0 The reloaded taps had =
I/Q swapped.=C2=A0 So, I changed my block controller to perform this swap a=
nd now things work.</div><div><br></div><div>I&#39;m trying to understand i=
f this makes sense or if I have fooled myself.=C2=A0 My implementation uses=
 the legacy &quot;axi_settings_reg&quot; to load coefficients on the IPs re=
load axi input.=C2=A0 The register width is 32 and I use the upper 16 bits =
as the input to the &quot;real&quot; FIR instance and the lower 16 bits as =
the input to the &quot;imag&quot; FIR instance.=C2=A0=C2=A0</div><div><br><=
/div><div>When I run the testbench, I get the expected results without need=
ing to swap real/imag.=C2=A0 When I run with UHD and the built FPGA image, =
I must swap the real/imag parts in the block controller in order to get the=
 correct results.=C2=A0 I wondered why I did not have to do something simil=
ar when streaming I/Q data to my block (or other blocks), but then figured =
that maybe UHD takes care of such swapping automatically.=C2=A0 Is this tru=
e?=C2=A0 If so, am I going about this the right way by swapping I/Q in the =
block controller?=C2=A0 Why does the testbench work without swapping?</div>=
<div>Rob</div></div>

--000000000000850f3705bee9b223--

--===============6485826819896800291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6485826819896800291==--
