Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7640A61A210
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 21:19:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4546D38415B
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 16:19:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667593187; bh=w+7TxGZfd3XOx13eN04chds8bN4VdGlv4E+15foPpg8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WZ2HErhefWn59eEqIkucNntJr9m1btK7B/zsy+XZvIsdLzHxXfy1hpUSvxe9/MODh
	 CO82bLDrJEZb14quVdglI4yiJtnOj78d5YdtJVwP+RuKNLiG1F0wkA/EGb8qQ8+v7s
	 hClHSQSWQRXNgbHlDKeSmi0uqq7trBQkd7j04a2EPPPcDLW8EmDaTSwe5XX5rpxEqB
	 2AZxI3EYY5dyWeFwL/N5H2WUlXcQshANxakfqRI12UG6hu09GDusODEO1l6zdEIQwO
	 kZDdQNhflipKaxk2ltq4RNeews4NQJWQ1/b9lcK3ve5JMDdklfefSv8yLifwdc2hkK
	 4USglst2JKqhg==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BEBC384111
	for <usrp-users@lists.ettus.com>; Fri,  4 Nov 2022 16:18:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="aSeRbxhk";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id i21so9199820edj.10
        for <usrp-users@lists.ettus.com>; Fri, 04 Nov 2022 13:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HG4co7BwIoQ6S/A2hbW86o00T/h0GVVozD7ONahSRK4=;
        b=aSeRbxhkb1hsfH7jWPfd2P/g1lhfvJy7kodnVn5apgKwpK4NhDhjk+XCZdio/JYgOl
         O51SSavbjf5jgqI5IJcYrzTBCKn3F0g0lwKDkWlVryUtfrAK6qLrTCsiB/k47lbR3eIj
         Re89ruKsXiOBEkmqCHSA6aqu/49n6OgyoAardh0+G0LnFlly59VlCJydoqawEM/kJqG2
         WFYA+GsemUmAF+C0daW/YO5edeFmLOFrslCirOT6v5kyn44AjpECNjjbxMECzjYrJzWG
         D1i5HBj77d6j5AvitpEfLsCh96Ufnl2nOATcqMyEq6uYHiYKzsdmThZ5guvd7WvNTN5Q
         8sog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HG4co7BwIoQ6S/A2hbW86o00T/h0GVVozD7ONahSRK4=;
        b=HUVNKyJVEbeHXM0sjToqCRJ1cr9sLQtQIrKKXFOqcWoBO5pidlg2ZSNuI03I3TydyK
         8jYj5/xDS334DdsuY8jXzvkzY3XaHLOz9Hn8NLQWQK+ohUGbhc/ZEJkONtq05/8pCuNT
         jD+9KfqHxuF52VHBvxM/ve13LkDCaJquEUHyZEcGJ+v/N6IVHnAqxMNlprMA9KhWHaM0
         brRdtz+8Sli9f5B6wvYtJJmEcDe6B21jH+gV+elW0bODCfTmVV/HyyleYuE7Naynya7o
         sJBmq0bFJZoev+oJ93MbwRXDkvLvKkdJzqImbExkVek7vGY3GLbSyI+BwaqP3PFU6Eri
         1oig==
X-Gm-Message-State: ACrzQf1svYw4hp/Z8lifLPPn0N04sQ5sAHUFOWk/jcdekYjnDAQBHGIy
	JjlcjWMOCSOD/xDQGEl83err1M7TOs7AhFUEP6pL61NvqLhGbskc
X-Google-Smtp-Source: AMsMyM53RJYcoIzXHA4GiPLiBjfYrM7Rj4PXzXg5xhUzxst302pQiaNgLDyexjXKuTpb2pQ62j/7OFschxgC/4dkN8Q=
X-Received: by 2002:a05:6402:144a:b0:461:8e34:d07b with SMTP id
 d10-20020a056402144a00b004618e34d07bmr38225145edx.426.1667593118049; Fri, 04
 Nov 2022 13:18:38 -0700 (PDT)
MIME-Version: 1.0
References: <GV1P250MB078572B4F56DA70AF7DE1FC1903B9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
In-Reply-To: <GV1P250MB078572B4F56DA70AF7DE1FC1903B9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 4 Nov 2022 15:18:21 -0500
Message-ID: <CAFche=h92Kh-46p+EXKKfge_EUrm2y0uvtHS47LLYhQpDefdrQ@mail.gmail.com>
To: =?UTF-8?Q?Maximilian_Matth=C3=A9?= <maximilian.matthe@barkhauseninstitut.org>
Message-ID-Hash: VMWR6D2MQ4CLUQT2TK4FYYISIGLNDY3Q
X-Message-ID-Hash: VMWR6D2MQ4CLUQT2TK4FYYISIGLNDY3Q
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 - FPGA unresponsive after several RFNoC Graph Creations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VMWR6D2MQ4CLUQT2TK4FYYISIGLNDY3Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7969548650967281879=="

--===============7969548650967281879==
Content-Type: multipart/alternative; boundary="0000000000006e841e05ecaac729"

--0000000000006e841e05ecaac729
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maximilian,

This sounds similar to some issues that are already fixed. I tried what you
did on my X410 running UHD 4.3 and didn't see this issue.

Can you try updating the X410 to UHD 4.3 to see if that resolves the issue?

Thanks,

Wade

On Fri, Nov 4, 2022 at 3:20 AM Maximilian Matth=C3=A9 <
maximilian.matthe@barkhauseninstitut.org> wrote:

> Dear all,
>
> I have a problem with our USRP X410 and RFNoC. During development of an
> RfNoc application, one often restarts the test program, which creates an
> RfNoc graph and performs some connections on the device. However, after
> around 10-15 program starts, the firmware/FPGA/driver yields errors that
> it's not reachable anymore. Below is a MWE yielding the error:
>
> Test skript:
> $ cat graph_error.py
> import uhd
> import time
>
> if __name__ =3D=3D '__main__':
>     time.sleep(1)
>     uhd.rfnoc.RfnocGraph("addr=3Dlocalhost")
>     time.sleep(1)
>     print("Exiting...")
>
> which I run in a loop directly on the USRP X410, wtih the output attached
> below.
>
> $ for i in `seq 20`; do echo $i && python3 graph_error.py ; done
>
> After the error occurs, the only way to get it back to working is to
> reboot the USRP or do `systemctl restart usrp-hwd`, which interrupts the
> dev workflow.
>
> My question is you can reproduce this? Is this a bug? Can I work around
> the crash? If it's a bug, I should file it to the UHD github repository,
> right?
>
> Thank you,
> Maximilian Matthe
>
> $ for i in `seq 20`; do echo $i && python3 graph_error.py ; done
> 1
>
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 2
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
>
> Exiting...
> 3
>
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 4
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 5
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 6
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 7
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 8
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 9
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 10
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> Exiting...
> 11
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: Specified destination address is unreachable
> Traceback (most recent call last):
>   File "graph_error.py", line 6, in <module>
>     uhd.rfnoc.RfnocGraph("addr=3Dlocalhost")
> RuntimeError: RuntimeError: Failure to create rfnoc_graph.
> 12
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
> EnvironmentError: IOError: Timed out getting recv buff for management tra=
n
> saction
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> EnvironmentError: IOError: Timed out getting recv buff for manageme
> nt transaction
> Traceback (most recent call last):
>   File "graph_error.py", line 6, in <module>
>     uhd.rfnoc.RfnocGraph("addr=3Dlocalhost")
> RuntimeError: RuntimeError: Failure to create rfnoc_graph.
> 13
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.2.0.0-0-g46a70d85
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3D=
NE-LAB-X
> 410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_400,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410=
,clock_sou
> rce=3Dinternal,time_source=3Dinternal'.
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
> EnvironmentError: IOError: Timed out getting recv buff for management tra=
n
> saction
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> EnvironmentError: IOError: Timed out getting recv buff for manageme
> nt transaction
>
>
> Maximilian Matthe
>
> Head of Engineering Lab
>
> maximilian.matthe@barkhauseninstitut.org
>
> Tel.: +49 173 4509667
>
>
>
> *Barkhausen Institut*
> www.barkhauseninstitut.org
>
> Barkhausen Institut gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 D=
resden,
> Germany | Registergericht: Amtsgericht Dresden, HRB 37267 |
> Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel =
|
> Vorsitzender der Gesellschafterdelegation: Dr. Andreas Handschuh
>
> Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie
> unter: https://barkhauseninstitut.org/data-privacy
>
> This email and any attachments are intended only for the person to whom
> this email is addressed and may contain confidential and/or privileged
> information. If you received this email in error, please do not disclose
> the contents to anyone, but notify the sender by return email and delete
> this email (and any attachments) from your system. Information on data
> protection and processing of your personal information:
> https://barkhauseninstitut.org/data-privacy
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006e841e05ecaac729
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=20
Maximilian,</div><div><br></div><div>This sounds similar to some issues tha=
t are already fixed. I tried what you did on my X410 running UHD 4.3 and di=
dn&#39;t see this issue.</div><div><br></div><div>Can you try updating the =
X410 to UHD 4.3 to see if that resolves the issue?</div><div><br></div><div=
>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 4, 2022 at 3:20=
 AM Maximilian Matth=C3=A9 &lt;<a href=3D"mailto:maximilian.matthe@barkhaus=
eninstitut.org">maximilian.matthe@barkhauseninstitut.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-3=
117051401584110972">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Dear all,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I have a problem with our USRP X410 and RFNoC. During development of an RfN=
oc application, one often restarts the test program, which creates an RfNoc=
 graph and performs some connections on the device. However, after around 1=
0-15 program starts, the firmware/FPGA/driver
 yields errors that it&#39;s not reachable anymore. Below is a MWE yielding=
 the error:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Test skript: <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
$ cat graph_error.py
<div>import uhd</div>
<div>import time</div>
<div><br>
</div>
<div>if __name__ =3D=3D &#39;__main__&#39;:</div>
<div>=C2=A0 =C2=A0 time.sleep(1)</div>
<div>=C2=A0 =C2=A0 uhd.rfnoc.RfnocGraph(&quot;addr=3Dlocalhost&quot;)</div>
<div>=C2=A0 =C2=A0 time.sleep(1)</div>
<div>=C2=A0 =C2=A0 print(&quot;Exiting...&quot;)</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
which I run in a loop directly on the USRP X410, wtih the output attached b=
elow.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
$ for i in `seq 20`; do echo $i &amp;&amp; python3 graph_error.py ; done</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
After the error occurs, the only way to get it back to working is to reboot=
 the USRP or do `systemctl restart usrp-hwd`, which interrupts the dev work=
flow.
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<div><span>My question is you can reproduce this? Is this a bug? Can I work=
 around the crash? If it&#39;s a bug, I should file it to the UHD github re=
pository, right?<br>
</span></div>
<div><span><br>
</span></div>
<div><span>Thank you,</span></div>
<div><span>Maximilian Matthe<br>
</span></div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
$ for i in `seq 20`; do echo $i &amp;&amp; python3 graph_error.py ; done<br=
>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;. =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 </div>
<div>Exiting... =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
</div>
<div>2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;. =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Exiting... =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>3 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>4</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>5</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>6</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>7</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>8</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>9</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>10</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>Exiting...</div>
<div>11</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Rfno=
cError: Specified destination address is unreachable</div>
<div>Traceback (most recent call last):</div>
<div>=C2=A0 File &quot;graph_error.py&quot;, line 6, in &lt;module&gt;</div=
>
<div>=C2=A0 =C2=A0 uhd.rfnoc.RfnocGraph(&quot;addr=3Dlocalhost&quot;)</div>
<div>RuntimeError: RuntimeError: Failure to create rfnoc_graph.</div>
<div>12</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. Environment=
Error: IOError: Timed out getting recv buff for management tran</div>
<div>saction</div>
<div>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Envi=
ronmentError: IOError: Timed out getting recv buff for manageme</div>
<div>nt transaction</div>
<div>Traceback (most recent call last):</div>
<div>=C2=A0 File &quot;graph_error.py&quot;, line 6, in &lt;module&gt;</div=
>
<div>=C2=A0 =C2=A0 uhd.rfnoc.RfnocGraph(&quot;addr=3Dlocalhost&quot;)</div>
<div>RuntimeError: RuntimeError: Failure to create rfnoc_graph.</div>
<div>13</div>
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X</=
div>
<div>410-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_sou</di=
v>
<div>rce=3Dinternal,time_source=3Dinternal&#39;.</div>
<div>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. Environment=
Error: IOError: Timed out getting recv buff for management tran</div>
<div>saction</div>
<div>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Envi=
ronmentError: IOError: Timed out getting recv buff for manageme</div>
<div>nt transaction</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-2181791347994651193Signature">
<div>
<div id=3D"m_-2181791347994651193divtagdefaultwrapper" dir=3D"ltr" style=3D=
"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0px;margin-bottom:0px">Maximilian Matthe</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Head of Engineering Lab</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><a href=3D"mailto:maximilian.=
matthe@barkhauseninstitut.org" target=3D"_blank">maximilian.matthe@barkhaus=
eninstitut.org</a></p>
<p style=3D"margin-top:0px;margin-bottom:0px">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif,serif,&quot;Emoji=
Font&quot;;margin:0px">
<br>
<br>
<b>Barkhausen Institut</b> <br>
<a href=3D"http://www.barkhauseninstitut.org" target=3D"_blank">www.barkhau=
seninstitut.org</a> <br>
<br>
</p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif,serif,&quot;Emoji=
Font&quot;;margin:0px">
<span style=3D"font-size:9pt" lang=3D"de-DE">Barkhausen Institut gGmbH | Si=
tz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 Dresden, Germany | Registergerich=
t: Amtsgericht Dresden, HRB 37267 | Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Ge=
rhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegati=
on:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 <a href=3D"https://barkhauseninstitut.org/data-privacy" target=3D"_blank">=
https://barkhauseninstitut.org/data-privacy</a>
<br>
<br>
</span><span style=3D"font-size:9pt" lang=3D"en-US">This email and any atta=
chments are intended only for the person to whom this email is addressed an=
d may contain confidential and/or privileged information. If you received t=
his email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: <a href=3D"https://barkh=
auseninstitut.org/data-privacy" target=3D"_blank">https://barkhauseninstitu=
t.org/data-privacy</a>
<br>
<br>
</span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000006e841e05ecaac729--

--===============7969548650967281879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7969548650967281879==--
