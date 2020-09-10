Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBAE2648FB
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 17:44:40 +0200 (CEST)
Received: from [::1] (port=44104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGOkZ-0007Ur-IT; Thu, 10 Sep 2020 11:44:39 -0400
Received: from mail-yb1-f175.google.com ([209.85.219.175]:45426)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGOkV-0007MU-6p
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 11:44:35 -0400
Received: by mail-yb1-f175.google.com with SMTP id p81so4357592ybc.12
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 08:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=SzJ9qohHkeAI9XJ0Vk0dXG8/mqunMrEzyieF9k/ZGFg=;
 b=jv9tdfUPQFCfoZnBSJXSDWKyTGOqioZsJ+t5ktrMO63sEgvNpQDJeHDLl1js/lR57w
 oCiYyTmhH8XWjf6nU3JVuGNjughM5mMEuuOUKWsBSz2na0yrFkK0G/an4K6NA8C9zSfx
 fvNzUo2JQMvgcIzTqiMYv5vWkUhud5MwvvVatz2MbhQb07dTbryT2LRA6qVD0eAKJpVu
 Ukt+0QNfkw3vIG6DuGkqTk+y2+7Jn7kPNo/P45EoISEPUIjC9TIHd0MV4bZmFCbeY0aC
 xvEt1mASfs9GsUXsbSV+I5CoyiXMzbtr/Ee2m4HGbF75aa/r2DZGBymVp+LD07JaLSHo
 YlDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SzJ9qohHkeAI9XJ0Vk0dXG8/mqunMrEzyieF9k/ZGFg=;
 b=T4sMzCa0SOwZpwjGgeksiE4942BRhbtgHh1dvlF6ACB4uyC3nla9rpS+giJs9ZBGL4
 m8/GmziFOMkutbWY1BX0erwz5xjx9VHqENxuafhsOyAsPZjOuz0GE69wZ5r+6jhbKuKf
 cbPbDUwtTYDU2KW+B/h82pZ4tNRLPw1P4NDZey5wTpfxtlDKrUyFf5IbmOtySCmBBuTi
 yKiiqOM6Xtxnbe0yx6KKIhraO+2kMvbBTE9qhyXLCjLMLxeVjRDCNWDa4z/D2HK6yahQ
 BYC2JGPE0lw37qsOqh4VundkHZeinDWVRDvwi4CxqN7JUT6AvVZwzHbNBemssh55IvmS
 t3Sg==
X-Gm-Message-State: AOAM532Ne3TyNKeKQ1or89vEIvH3RZYu6sCSncYwHe3pExgMFcuJn0OD
 wfNe5AB5Z7araYHF3hYRtAfj83pJXgMVButXdaon+tE3xZ07XA==
X-Google-Smtp-Source: ABdhPJy97DtDpIIN+U3DjlPZRxTIfetBFEnD7btnxPTDaqBaGrpvP1xkdmpxAY8Eg/eovCgPK+7k+0mhAyXrMrxqsqA=
X-Received: by 2002:a25:2182:: with SMTP id
 h124mr13997372ybh.336.1599752633857; 
 Thu, 10 Sep 2020 08:43:53 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 10 Sep 2020 09:43:43 -0600
Message-ID: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] RuntimeError: System receive MTU size
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============8371434708949093591=="
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

--===============8371434708949093591==
Content-Type: multipart/alternative; boundary="0000000000007839d105aef76f19"

--0000000000007839d105aef76f19
Content-Type: text/plain; charset="UTF-8"

Hi, I am running a rfid code on USRP, but there occur some errors and
warnings, and I am not sure where do the errors come from and how to
address them. Please help me.

hu@hu:~/rfid/Gen2-UHF-RFID-Reader/gr-rfid/apps$ sudo GR_SCHEDULER=STS nice
-n -20 python ./reader.py
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [X300] X300 initialization sequence...
*[ERROR] [X300] RuntimeError: System receive MTU size is less than the
minimum required by the IP protocol.*






*[WARNING] [X300] You requested a receive frame size of (256) but your
NIC's max frame size is (0).Please verify your NIC's MTU setting using 'ip
link' or set the recv_frame_size argument appropriately.UHD will use the
auto-detected max frame size for this connection.[WARNING] [X300] For the
192.168.10.2 connection, UHD recommends a send frame size of at least 1472
for bestperformance, but your configuration will only allow 0.This may
negatively impact your maximum achievable sample rate.Check the MTU on the
interface and/or the send_frame_size argument.[WARNING] [X300] For the
192.168.10.2 connection, UHD recommends a receive frame size of at least
1472 for bestperformance, but your configuration will only allow 0.This may
negatively impact your maximum achievable sample rate.Check the MTU on the
interface and/or the recv_frame_size argument.*
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_1
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_1
[WARNING] [RFNOC] Assuming max packet size for 0/DUC_0
[WARNING] [RFNOC] Assuming max packet size for 0/DUC_1
[WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0
[WARNING] [RFNOC] Assuming max packet size for 0/DmaFIFO_0
'Q' to quit
[WARNING] [STREAMER] Requested recv_frame_size of 256 exceeds the maximum
possible on this stream. Using 0
Uq

 --------------------------
| Number of queries/queryreps sent : 0
| Current Inventory round : 1
 --------------------------
| Correctly decoded EPC : 0
| Number of unique tags : 0
 --------------------------

-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--0000000000007839d105aef76f19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, I am running a rfid code on USRP, but there occur=
 some errors and warnings, and I am not sure where do the errors come from =
and how to address them. Please help me.<br></div><div><br></div><div>hu@hu=
:~/rfid/Gen2-UHF-RFID-Reader/gr-rfid/apps$ sudo GR_SCHEDULER=3DSTS nice -n =
-20 python ./reader.py<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_=
106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [X300] X300 initialization se=
quence...<br><b>[ERROR] [X300] RuntimeError: System receive MTU size is les=
s than the minimum required by the IP protocol.</b><br><b>[WARNING] [X300] =
You requested a receive frame size of (256) but your NIC&#39;s max frame si=
ze is (0).Please verify your NIC&#39;s MTU setting using &#39;ip link&#39; =
or set the recv_frame_size argument appropriately.UHD will use the auto-det=
ected max frame size for this connection.<br>[WARNING] [X300] For the 192.1=
68.10.2 connection, UHD recommends a send frame size of at least 1472 for b=
est<br>performance, but your configuration will only allow 0.This may negat=
ively impact your maximum achievable sample rate.<br>Check the MTU on the i=
nterface and/or the send_frame_size argument.<br>[WARNING] [X300] For the 1=
92.168.10.2 connection, UHD recommends a receive frame size of at least 147=
2 for best<br>performance, but your configuration will only allow 0.This ma=
y negatively impact your maximum achievable sample rate.<br>Check the MTU o=
n the interface and/or the recv_frame_size argument.</b><br>[INFO] [X300] R=
adio 1x clock: 200 MHz<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firm=
ware Rev 0.929b<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:=
 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 =
MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>[INFO]=
 [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<br>[IN=
FO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<br>=
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<b=
r>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<=
br>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)=
<br>[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0<br>[WARNING] [=
RFNOC] Assuming max packet size for 0/Radio_0<br>[WARNING] [RFNOC] Assuming=
 max packet size for 0/Radio_1<br>[WARNING] [RFNOC] Assuming max packet siz=
e for 0/Radio_1<br>[WARNING] [RFNOC] Assuming max packet size for 0/DUC_0<b=
r>[WARNING] [RFNOC] Assuming max packet size for 0/DUC_1<br>[WARNING] [RFNO=
C] Assuming max packet size for 0/DmaFIFO_0<br>[WARNING] [RFNOC] Assuming m=
ax packet size for 0/DmaFIFO_0<br>&#39;Q&#39; to quit<br>[WARNING] [STREAME=
R] Requested recv_frame_size of 256 exceeds the maximum possible on this st=
ream. Using 0<br>Uq<br><br>=C2=A0--------------------------<br>| Number of =
queries/queryreps sent : 0<br>| Current Inventory round : 1<br>=C2=A0------=
--------------------<br>| Correctly decoded EPC : 0<br>| Number of unique t=
ags : 0<br>=C2=A0--------------------------</div><div><br></div>-- <br><div=
 dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><=
div dir=3D"ltr"><font face=3D"times new roman, serif" size=3D"4" style=3D"c=
olor:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"c=
olor:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(136=
,136,136)"><font color=3D"#444444">College of Engineering</font></div><div>=
<font color=3D"#444444">Utah State University</font></div><div style=3D"col=
or:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:congs=
hanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs=
@gmail.com</a></font></div></div></div></div></div>

--0000000000007839d105aef76f19--


--===============8371434708949093591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8371434708949093591==--

