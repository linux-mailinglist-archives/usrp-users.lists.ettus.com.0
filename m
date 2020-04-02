Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BD219BCE8
	for <lists+usrp-users@lfdr.de>; Thu,  2 Apr 2020 09:42:56 +0200 (CEST)
Received: from [::1] (port=51674 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jJuV0-0005sx-Dm; Thu, 02 Apr 2020 03:42:50 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:45163)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <fe8769@gmail.com>) id 1jJuUw-0005oM-FR
 for usrp-users@lists.ettus.com; Thu, 02 Apr 2020 03:42:46 -0400
Received: by mail-wr1-f41.google.com with SMTP id t7so2895773wrw.12
 for <usrp-users@lists.ettus.com>; Thu, 02 Apr 2020 00:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=mcjr9cbl89uxD8OMgHuPNeAdn6IBsQi0766QexI1RO8=;
 b=GZB9ruTBCDXo2ZGVZWynfzLrIk8sgYj1UxmmgjVLrZ8OcxTcclwZbK2wU684rifRXy
 lQlG4JVr9+KMZVeP8Sb5/vv6G741Izh9HFwumDNPblGeLcpyqFsgMXlBZ4/HxzaRDHLZ
 I/CGCOJjkrXITm2WQkYqhaswhIB239IsZEDjuLPeMmbvkJastu5YhY8AWe7lfLO4s35S
 /AShkHaZLqhbjwo6FNWlYmeX0EI5zWYI7b8tJul++fUz+s7zC3t82sbvXKE8W9fStEnM
 1j3MvooWHO6Pt9haKWfHUs7OnQtTZg00PH1CO1gw+IpoPz1lHBiRgl6Q6Myn0DV0iEtR
 LQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mcjr9cbl89uxD8OMgHuPNeAdn6IBsQi0766QexI1RO8=;
 b=apyZeYUGIE+M+9nBqLnVRa5MGHCm4L2cMJlaFAHCCvA7d+DfvvxubZwi2RTnmS8Cnh
 Vz/xpVg9SEzV2kUDiKwXePKB04pNwDYbcB71/MPgDC7gn8mjBvLANcLMgiT0q2RGnMHY
 mAyuzxvyYB/eRDf6R/iHHBk/3CWFktUH8AStExiWqa89GXgiI+rtIc/TGPWTnQtyzza3
 vMizeAcrO9zUAE5+mOUfurz2Lz+ccxKjhaUFdv3d5U0gBsq4g85TRaTNVnvN7Fowyem7
 Z9WqEofbtlyAIvnD/zou813VL1/x1JhoJrfOrvOkJ+aUbCjakpkQOj7otDCKS1WOFfAy
 QshA==
X-Gm-Message-State: AGi0PubrmpatHcrsrGxqN6aDG1P0iedcpe0L4whvxy99wSvUcEsO88mH
 lLdtqMPwkpKzuYwToCM/IfgyZCcMApTYghVJY6lran2fsuw=
X-Google-Smtp-Source: APiQypLLgaukKWJh5s7HoOY027FAh9rpvspFW3UMorwsrIOjH8azfaUPd+1R/W+8Ch+Ng2JD4BJVAzQONuo9sRJvmCQ=
X-Received: by 2002:adf:e8c1:: with SMTP id k1mr1966513wrn.381.1585813325112; 
 Thu, 02 Apr 2020 00:42:05 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 2 Apr 2020 09:41:54 +0200
Message-ID: <CA+5Ly01=7x-ryDNRW_TZqrBP9buQpgyG4+vdmbZ2ZbA27oKsww@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] B210 configuration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: fe8769 via USRP-users <usrp-users@lists.ettus.com>
Reply-To: fe8769 <fe8769@gmail.com>
Content-Type: multipart/mixed; boundary="===============7726959843672441007=="
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

--===============7726959843672441007==
Content-Type: multipart/alternative; boundary="000000000000ec695405a249ef3c"

--000000000000ec695405a249ef3c
Content-Type: text/plain; charset="UTF-8"

Hello

I try to configure channel 1 on B210 with osmocom_fft but I can't access to
it

the cmd :

SoapySDRUtil --probe="driver=uhd,type=b200"

shows :

 rx0_antenna=RX2
  rx0_id=Unknown (0xffff)
  rx0_serial=
  rx0_subdev_name=FE-RX2
  rx0_subdev_spec=A:A A:B
  rx1_antenna=RX2
  rx1_id=Unknown (0xffff)
  rx1_serial=
  rx1_subdev_name=FE-RX1
  rx1_subdev_spec=A:A A:B
  tx0_antenna=TX/RX
  tx0_id=Unknown (0xffff)
  tx0_serial=
  tx0_subdev_name=FE-TX2
  tx0_subdev_spec=A:A A:B
  tx1_antenna=TX/RX
  tx1_id=Unknown (0xffff)
  tx1_serial=
  tx1_subdev_name=FE-TX1
  tx1_subdev_spec=A:A A:B

these 2 lines are working fine

SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=0 --direction=RX
SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=1 --direction=RX

Trying all these lines are always addressing channel 0

osmocom_fft -a uhd -s 1000000 -g 40 -f 392M

osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -v

osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M -A TX/RX

osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M -A RX2

osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -A FE-RX2

osmocom_fft -a uhd,subdev=FE-RX2 -s 1000000 -g 40 -f 392M -A RX2

osmocom_fft -a uhd,"nchan=FE-TX1","subdev=A:A A:B" -s 1000000 -g 40 -f 392M
-A TX/RX


What is the exact usage of osmocom_fft to access channel 1 ? or the exact
usage of soapy driver ?

Thanks for answer


--

--000000000000ec695405a249ef3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div><br></div><div>I try to configure cha=
nnel 1 on B210 with osmocom_fft but I can&#39;t access to it</div><div><br>=
</div><div>the cmd :</div><div><br></div><div>SoapySDRUtil --probe=3D&quot;=
driver=3Duhd,type=3Db200&quot; <br></div><div><br></div><div>shows :</div><=
div><br></div><div>=C2=A0rx0_antenna=3DRX2<br>=C2=A0 rx0_id=3DUnknown (0xff=
ff)<br>=C2=A0 rx0_serial=3D<br>=C2=A0 rx0_subdev_name=3DFE-RX2<br>=C2=A0 rx=
0_subdev_spec=3DA:A A:B<br>=C2=A0 rx1_antenna=3DRX2<br>=C2=A0 rx1_id=3DUnkn=
own (0xffff)<br>=C2=A0 rx1_serial=3D<br>=C2=A0 rx1_subdev_name=3DFE-RX1<br>=
=C2=A0 rx1_subdev_spec=3DA:A A:B<br>=C2=A0 tx0_antenna=3DTX/RX<br>=C2=A0 tx=
0_id=3DUnknown (0xffff)<br>=C2=A0 tx0_serial=3D<br>=C2=A0 tx0_subdev_name=
=3DFE-TX2<br>=C2=A0 tx0_subdev_spec=3DA:A A:B<br>=C2=A0 tx1_antenna=3DTX/RX=
<br>=C2=A0 tx1_id=3DUnknown (0xffff)<br>=C2=A0 tx1_serial=3D<br>=C2=A0 tx1_=
subdev_name=3DFE-TX1<br>=C2=A0 tx1_subdev_spec=3DA:A A:B</div><div><br></di=
v><div>these 2 lines are working fine <br></div><div><br></div><div>SoapySD=
RUtil --args=3D&quot;driver=3Duhd&quot; --rate=3D10e6 --channels=3D0 --dire=
ction=3DRX</div><div>SoapySDRUtil --args=3D&quot;driver=3Duhd&quot; --rate=
=3D10e6 --channels=3D1 --direction=3DRX</div><div><br></div><div>Trying all=
 these lines are always addressing channel 0</div><div><br></div><div>osmoc=
om_fft -a uhd -s 1000000 -g 40 -f 392M <br><br>osmocom_fft -a uhd -s 100000=
0 -g 40 -f 392M -v<br><br>osmocom_fft -a uhd,nchan=3D0,subdev=3DA:B -s 1000=
000 -g 40 -f 392M -A TX/RX<br><br>osmocom_fft -a uhd,nchan=3D0,subdev=3DA:B=
 -s 1000000 -g 40 -f 392M -A RX2<br><br>osmocom_fft -a uhd -s 1000000 -g 40=
 -f 392M -A FE-RX2<br><br>osmocom_fft -a uhd,subdev=3DFE-RX2 -s 1000000 -g =
40 -f 392M -A RX2<br><br>osmocom_fft -a uhd,&quot;nchan=3DFE-TX1&quot;,&quo=
t;subdev=3DA:A A:B&quot; -s 1000000 -g 40 -f 392M -A TX/RX</div><div><br></=
div><div><br></div><div>What is the exact usage of osmocom_fft to access ch=
annel 1 ? or the exact usage of soapy driver ?<br></div><div><br></div><div=
>Thanks for answer<br></div><div><br></div><div><br></div><div>-- <br><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><img src=3D"https://docs.google.c=
om/uc?id=3D0B1OSZ13OuYs5YkhObWxySTJ6VmM&amp;export=3Ddownload" width=3D"79"=
 height=3D"96"></div></div></div></div></div></div></div>

--000000000000ec695405a249ef3c--


--===============7726959843672441007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7726959843672441007==--

