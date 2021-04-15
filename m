Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F37360549
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 11:09:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98B61383E3B
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 05:09:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aWkrOu1z";
	dkim-atps=neutral
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 112BB383FF5
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 05:08:11 -0400 (EDT)
Received: by mail-pj1-f52.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso12330677pjh.2
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 02:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XvGGQpjuMTNDFfsvO7Zk/lE06QL8y7FoT74ajgYpinU=;
        b=aWkrOu1zHdI/eiy6A9h0Av0idQAMKtKjroXAEXuGbJdz4H/bpAqubASjpWQrp6Fkjb
         qjR2V4e4DTUykDVODsTwOK7LPDhcr4tomr1ZfNhPmpFPsdrPtCSNkbuDKqBI6YEI9hB3
         3X9T9cw9WtVISaNazUJFvgE+tJbgVgpmdUIYFV2cmzvLTYjSlwJadectXIJCUuLB81b7
         OctIz+Ea/Te/UvUA61h7HeOm1+US95tfpD4t5EsAQ0IfkxJWLROzDa/ZdQDlWVZnX4Zh
         dWGXqs2PxL2kbuUN5bx3xLK4wV7yQ9JC5ytwwtdJLxZ4OBVGsMsUneXPoGtgAqqQTQK6
         gTgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XvGGQpjuMTNDFfsvO7Zk/lE06QL8y7FoT74ajgYpinU=;
        b=bFHalXPJUgr79mQsnr744FXAoFOp6ffFLXm0dZC7CodTpWn/0f41rbe4EIohbKXFkG
         MDBLg5wd7ktYbm5lFWPKFReD1eWRZSduXRqhiEI3vQqFj1lYt/+66nXWr+MEnwLOqBIN
         S4IgqqJ9gCc3Q1tfsARVvO6BU9jUg5x/Bp79Boq0cLiHs7FwFl85yVuqyF7tAHImOHU9
         zQy+qtfpt7Y2BL2Q8bz71iR5ekzl59QSPldliphZtkKB/n7a6HzRZBZAvvl5we8NGK0y
         b14KmqWP/Co7G2m7QdjSFXLd9Ln5xgVLT1f7j4WtoYmBMp4+0vDBph6IvJtF3X/sUXs0
         WnXA==
X-Gm-Message-State: AOAM533yeiNG6qjmiQRWYLRFv3Qd0wQxx63J5vPEDm4BrXWyIBNmLofw
	KL70YE0ANpqm7QWHrDXBr3grBhhVbnTJF0To+RQbq4truBo0Dg==
X-Google-Smtp-Source: ABdhPJycabZO+00jYsPqaEcvKQKQyZj5AFDxIkmjj1qGqgFTgP+JL+zzWuF4TWf2tiTMGI8ZWSG4ONQ88/zz6IKrqSA=
X-Received: by 2002:a17:90a:13c3:: with SMTP id s3mr2797459pjf.59.1618477690615;
 Thu, 15 Apr 2021 02:08:10 -0700 (PDT)
MIME-Version: 1.0
From: "Anthony B." <anthonyld508@gmail.com>
Date: Thu, 15 Apr 2021 11:08:02 +0200
Message-ID: <CAP+KAYCaFKLxpMQ9vZWcss7M50ug5+W_YdKjpoaeWk=qQqdG0w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YSGIZVIHUIIWURY7H6LP7NJE227SVRAF
X-Message-ID-Hash: YSGIZVIHUIIWURY7H6LP7NJE227SVRAF
X-MailFrom: anthonyld508@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Setting network configuration (MTU) on the N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YSGIZVIHUIIWURY7H6LP7NJE227SVRAF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1095350355650616867=="

--===============1095350355650616867==
Content-Type: multipart/alternative; boundary="000000000000d3798605bfff33bb"

--000000000000d3798605bfff33bb
Content-Type: text/plain; charset="UTF-8"

Hello all,

I meet some streaming issues with a USRP N310 I'd like to further
investigate.

Currently I am only using a 1Gb link with the SFP0 port. I set up the
network config following this :
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting_Up_a_Streaming_Connection

It is recommended to set a MTU of 1500 on the SFP0 interface, so I
configured the Ethernet interface on the host PC accordingly.
When I check the MTU on the N310, it is set by default to 9000 on the SFP0
interface.
If I try to change it using ifconfig, it tells that the resource is busy
and in any case it's not permanent in the command line.

So I edited the network configuration files as described here :
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_Network_Configurations
On the N310, I created a file sfp0.network in /etc/systemd/network with
this content :

[Match]
Name=sfp0

[Network]
Address=192.168.10.2/24

[Link]
MTUBytes=1500

deleted the ~residual files from vi, and ran : systemctl restart
systemd-networkd

But it doesn't seem to change the default settings afterwards or whenever
the USRP N310 is restarted.
How can I set the MTU for a 1Gb link on the N310 sfp0 interface ?

Thanks for any suggestion!

Anthony

--000000000000d3798605bfff33bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<br><br>I meet some streaming issues with a USRP=
 N310 I&#39;d like to further investigate.<br><br>Currently I am only using=
 a 1Gb link with the SFP0 port. I set up the network config following this =
: <br><a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Star=
ted_Guide#Setting_Up_a_Streaming_Connection">https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Setting_Up_a_Streaming_Connection</a>=
<br><br>It is recommended to set a MTU of 1500 on the SFP0 interface, so I =
configured the Ethernet interface on the host PC accordingly. <br>When I ch=
eck the MTU on the N310, it is set by default to 9000 on the SFP0 interface=
. <br>If I try to change it using ifconfig, it tells that the resource is b=
usy and in any case it&#39;s not permanent in the command line.<br><br>So I=
 edited the network configuration files as described here : <br><a href=3D"=
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updatin=
g_the_Network_Configurations">https://kb.ettus.com/USRP_N300/N310/N320/N321=
_Getting_Started_Guide#Updating_the_Network_Configurations</a><br>On the N3=
10, I created a file sfp0.network in /etc/systemd/network with this content=
 : <br><br>[Match]<br>Name=3Dsfp0<br><br>[Network]<br>Address=3D<a href=3D"=
http://192.168.10.2/24">192.168.10.2/24</a><br><br>[Link]<br>MTUBytes=3D150=
0<br><br>deleted the ~residual files from vi, and ran : systemctl restart s=
ystemd-networkd<br><br>But it doesn&#39;t seem to change the default settin=
gs afterwards or whenever the USRP N310 is restarted.<br>How can I set the =
MTU for a 1Gb link on the N310 sfp0 interface ?<br><br>Thanks for any sugge=
stion!<br><br>Anthony<br></div>

--000000000000d3798605bfff33bb--

--===============1095350355650616867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1095350355650616867==--
