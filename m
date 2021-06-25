Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F713B4774
	for <lists+usrp-users@lfdr.de>; Fri, 25 Jun 2021 18:34:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AA9F383B09
	for <lists+usrp-users@lfdr.de>; Fri, 25 Jun 2021 12:34:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="ZQAl6ZlR";
	dkim-atps=neutral
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 7689D3837D6
	for <usrp-users@lists.ettus.com>; Fri, 25 Jun 2021 12:33:52 -0400 (EDT)
Received: by mail-wm1-f50.google.com with SMTP id p10-20020a05600c430ab02901df57d735f7so8834196wme.3
        for <usrp-users@lists.ettus.com>; Fri, 25 Jun 2021 09:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=gv1xLXc4K/19RUBkKS8TBmMIxaoFA8chE7QAYqk779I=;
        b=ZQAl6ZlRMws9tGftgM14Vdqs/NMTVyIXgTXtMGLaFvYDOom7NAXmd1Uxl+r0NyMGXc
         cEvLjC+ssftv/tw31+YyR97aZRydPF5R4/huJ4+EVnrRiAc5rAaoE+QtXB1gidE0MWQM
         UOeXi7qJcRoNGoHJUy1pGhg4NkoVEpO0tfT4VCmADxTcBa2bp8fpUR551Pkz3IAfJGcl
         Zy7Wqzc9mbmy6lxPjZmTn1dOtADEHGbVY5hx9o6IXE3xVJ5U/yfXFl3553o1JmAYAS8+
         yYBPfhIO9rSaDyQpFB8ZJ+wELnpvBA4mlmbkmwIYozJzZEnbRUTqHRsO8ngnE470QSUK
         RZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gv1xLXc4K/19RUBkKS8TBmMIxaoFA8chE7QAYqk779I=;
        b=Q9R+tSLQQfXKEw+sh/j+n9oTlHzjZxlJjEOEHRJHBXGOzQjTohKWR5qz0yA3in7ggU
         yzvRv4pMTZudeSmkfCe4hm6SnP23vj2/JFlXxQsY3MpI8GAPlMc8+52L8Cuw4wvceP9C
         roV8ov7al8G7omYOaFUP8hpf8QZqttNMxri/L70Js3x0JLfl+riMKOnSr9ULab/YyEdW
         7DToxE/eh1wanm1y9IHj5Wf6oY2BzDbrX+/mX1iy2L6jjr3pGNTpgJfSln6IAao0ERsQ
         xmK5yjVcJghsyJWVdqhvtoGkubSmoqb0QGAcCeJ4T78S6t06MuSm3kfANN3/lqalZVZo
         Uj4A==
X-Gm-Message-State: AOAM532kZ+r1CEOylu8I8cP2+/vNWD9g7gcnkcDZZjCZlHwetlmn37Q0
	ZuTMPQINvh6IsgfvzvhdLoRBEE1/IapIzAkQXkAOj+Re4/NMpA==
X-Google-Smtp-Source: ABdhPJwmSH0w6y2n4N7W5J0w6i6lkoIPd0R2KjeYV9y8WDabLnElU9zSB+AJQpKfOSGAJ8MMaBoWLhEgoJbL3Xx5O9E=
X-Received: by 2002:a1c:7f96:: with SMTP id a144mr11750964wmd.22.1624638830886;
 Fri, 25 Jun 2021 09:33:50 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Fri, 25 Jun 2021 18:33:40 +0200
Message-ID: <CAKHaR3k-0=vUDV5Z5JPvvmhQeatXG=C313qz+u7maZpZmr52fQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: N7BGONOCIU57CNB35ZBVIMX3OARDU7EB
X-Message-ID-Hash: N7BGONOCIU57CNB35ZBVIMX3OARDU7EB
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] running a graph on Zynq on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N7BGONOCIU57CNB35ZBVIMX3OARDU7EB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3925126674657711371=="

--===============3925126674657711371==
Content-Type: multipart/alternative; boundary="00000000000067512b05c599b424"

--00000000000067512b05c599b424
Content-Type: text/plain; charset="UTF-8"

hi,
i've developed a custom block in the FPGA and would like to run everything
on the arm processor. my application consists of a web page served by
python http.server module an such page sends commands via websocket to the
gnuradio module associated with the custom FPGA block.
the custom FPGA block is meant to perform some algorithms and output very
low data rate that is then fed to a software only block that in turn should
packetize that data and stream it from N310 to a PC.
running the graph on a PC works perfectly. when running it from arm it runs
while there's no output from the custom block but as soon as i enable its
output i see that the sfp1 interface i'm using to stream data from arm to
PC goes down and in turn web server is not reachable anymore and graph
starts to report overruns, likely because the socket sender is stuck.

i understand that SFP1 interface is mainly for the FPGA and haven't tried
yet the native gbit port but was wondering if there is any reason this is
happening and any recommended best practice to run gnuradio graphs on
zynq/arm.
thanks,

Dario Pennisi

--00000000000067512b05c599b424
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>i&#39;ve developed a custom block in the FPGA and =
would like to run everything on the arm processor. my application consists =
of a web page served by python http.server module an such page sends comman=
ds via websocket to the gnuradio module associated with the custom FPGA blo=
ck.</div><div>the custom FPGA block is meant to perform some algorithms and=
 output very low data rate that is then fed to a software only block that i=
n turn should packetize that data and stream it from N310 to a PC.</div><di=
v>running the graph on a PC works perfectly. when running it from arm it ru=
ns while there&#39;s no output from the custom block but as soon as i enabl=
e its output i see that the sfp1 interface i&#39;m using to stream data fro=
m arm to PC goes down and in turn web server is not reachable anymore and g=
raph starts to report overruns, likely because the socket sender is stuck.<=
/div><div><br></div><div>i understand that SFP1 interface is mainly for the=
 FPGA and haven&#39;t tried yet the native gbit port but was wondering if t=
here is any reason this is happening and any recommended best practice to r=
un gnuradio graphs on zynq/arm.</div><div>thanks,</div><div><br clear=3D"al=
l"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Cal=
ibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"color=
:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><br></div><=
/div></div></div></div>

--00000000000067512b05c599b424--

--===============3925126674657711371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3925126674657711371==--
