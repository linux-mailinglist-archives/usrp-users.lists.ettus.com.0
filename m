Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9496A18012
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 20:52:11 +0200 (CEST)
Received: from [::1] (port=51960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hORfk-0004yc-Oe; Wed, 08 May 2019 14:52:08 -0400
Received: from mail-ed1-f42.google.com ([209.85.208.42]:33624)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <markus.unger@ettus.com>)
 id 1hORfB-0004iQ-JJ
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 14:52:03 -0400
Received: by mail-ed1-f42.google.com with SMTP id n17so23055938edb.0
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 11:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=PoiCfSkYoKBE/9qZ+7pxjvZWtadJJqoBZVkVMg7B6rI=;
 b=fpSU0RKCtcrpEt73ZHwoJcZKhHM4ocABDfFPJPm4B6EQFCnWQFCugab4UxfBiD3wfE
 sessDxSdQdOE7GYwaRZLyTSGJkApBltBOtU78+hUCp6dLRC1igzlOh6sNuSe2YYty1Pb
 cGVOpa9hSrJF6MKfIvbVvntnst62qOv78wb2aBjrljuclDgJHXr9OH1J7VWZ832QDm92
 4xh9enCO261I+I3kQB0r/SSxJitWADG5l5gCUrc8j/ueU1OpasCAeuhYpMBWCc8aa/k5
 TDTk7PJJi7sNALUkW68fiUS3wmB0IF1gqQ6VlfK7/siDe3PegF88m7rJi4yLwpI9RzVq
 BtxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PoiCfSkYoKBE/9qZ+7pxjvZWtadJJqoBZVkVMg7B6rI=;
 b=MTlpm8U/aNI95cPyOMc73fGZTmePUWcFhn8sEHcZVDFWaDj7KCOyN05il04smw0JRm
 2koukeNJmqpFJVZP35Ni+Uzs3bH78maA8LoenE/x8f1z20nN+DJ/tjo+gV9KH6MU0gbp
 hGpMjRCW960M1gOMvMQ9aIhwohpCU0+d9SwPNNe6t1DCXtL4NEZ9aXvQqirxxgDSrGys
 bifSA3qtJXeyfWXDWRBGyJreJgBGRLDS/z6r9sPKoNWFNXzV11cpl2S/K+XW9rn8TzVw
 Ugdmejq7poFJFqW7o4hObX+Diy2Rahamtp8REGC8ENpcfNnu8EcYBh6hzMUh4SZ0Z8F6
 chNg==
X-Gm-Message-State: APjAAAWxWmMUiPIF2QV/ripaP2E2WzQsTv4x5OlEOaIzaaK4JztUqJDT
 0g2LErgtKA30ArRhADmkFd7BaudUMopHzrnz/PRPgkRzcT93uJ6t
X-Google-Smtp-Source: APXvYqwR8vwmTmU0G6+AJlm/XIWBycwmd5oA4/WQUVf4SYa7EkXXh6xbtXZ95DmwDUPi4CkyZVDRkYNWv7Lp/d1GwxQ=
X-Received: by 2002:a17:906:d18e:: with SMTP id
 c14mr30638097ejz.13.1557341452209; 
 Wed, 08 May 2019 11:50:52 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 8 May 2019 20:50:42 +0200
Message-ID: <CAHfPtW8XA1q6yRZBYBnTuz3RHpCHXnmDzLsrrV_4nTQ96nj-0g@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Announcing USRP N320 and N321
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
From: Markus Unger via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Markus Unger <markus.unger@ettus.com>
Content-Type: multipart/mixed; boundary="===============3151134760671016871=="
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

--===============3151134760671016871==
Content-Type: multipart/alternative; boundary="0000000000000da8d3058864d0ca"

--0000000000000da8d3058864d0ca
Content-Type: text/plain; charset="UTF-8"

Hi USRP Users!



Ettus Research is proud to announce the USRP N320 and USRP N321 software
defined radios (SDRs). These high-performing, stand-alone SDRs deliver
frequency coverage from 3 MHz to 6 GHz with 200 MHz of instantaneous
bandwidth per channel. With reliability and fault tolerance and the ability
to share local oscillators (LO) and multiple synchronization methods, the
USRP N320 and N321 are ideal for deploying phase-coherent wireless systems.



The N320 and N321 feature a Xilinx Zynq-7100 SoC, providing a large user
programmable FPGA for real-time and low-latency processing and a dual-core
ARM CPU for stand-alone operation. Users can deploy applications directly
onto the preinstalled embedded Linux OS or stream samples to a host
computer using high-speed interfaces such as 1 Gigabit Ethernet, 10 Gigabit
Ethernet, and Aurora over two SFP+ ports and a QSFP+ port.



The N320 and N321 will be fully supported in UHD and RFNoC, but LabVIEW
support is not planned at this time. Please check ettus.com or reach out to
Ettus Research/National Instruments directly for more information about
these products!



Thanks!



*Markus Unger* | Principal Product Planner | National Instruments Dresden
GmbH | markus.unger@ni.com

--0000000000000da8d3058864d0ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Hi USRP
Users!</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">Ettus
Research is proud to announce the USRP N320 and USRP N321 software defined
radios (SDRs). These high-performing, stand-alone SDRs deliver frequency
coverage from 3 MHz to 6 GHz with 200 MHz of instantaneous bandwidth per
channel. With reliability and fault tolerance and the ability to share loca=
l
oscillators (LO) and multiple synchronization methods, the USRP N320 and N3=
21
are ideal for deploying phase-coherent wireless systems.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">The N320
and N321 feature a Xilinx Zynq-7100 SoC, providing a large user programmabl=
e
FPGA for real-time and low-latency processing and a dual-core ARM CPU for
stand-alone operation. Users can deploy applications directly onto the
preinstalled embedded Linux OS or stream samples to a host computer using
high-speed interfaces such as 1 Gigabit Ethernet, 10 Gigabit Ethernet, and
Aurora over two SFP+ ports and a QSFP+ port.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">The N320
and N321 will be fully supported in UHD and RFNoC, but LabVIEW support is n=
ot
planned at this time. Please check <a href=3D"http://ettus.com/" style=3D"c=
olor:rgb(5,99,193)">ettus.com</a> or
reach out to Ettus Research/National Instruments directly for more informat=
ion
about these products!</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">Thanks!</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span lang=3D"EN-US">Markus Unger</span></b>=
<span lang=3D"EN-US"> | Principal Product
Planner | National Instruments Dresden GmbH | </span><a href=3D"mailto:mark=
us.unger@ni.com" style=3D"color:rgb(5,99,193)"><span lang=3D"EN-US">markus.=
unger@ni.com</span></a><span lang=3D"EN-US"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p></div>

--0000000000000da8d3058864d0ca--


--===============3151134760671016871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3151134760671016871==--

