Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7F76D6A7
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 23:52:01 +0200 (CEST)
Received: from [::1] (port=56510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoEJj-0007Gx-V1; Thu, 18 Jul 2019 17:51:59 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:41638)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <tayloreisman2012@gmail.com>)
 id 1hoEJf-0007Az-SY
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 17:51:55 -0400
Received: by mail-io1-f46.google.com with SMTP id j5so49996579ioj.8
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 14:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=pShxrb7IhaXiw7xdJALvmna519wZWL/BjIZfbxANrCs=;
 b=eRgwaSGr0WYRl79zY4O7zAiu71DVo9Uj6DgptWjnVgBqtFNqHBJQ6dUo2/Fwk8E7FM
 3/iJNWlRBo66+Ql3Uq7l1xc8fcVxQuVW0yJZvtlxq613mHV6eyfWL4X8MxQ9GJqRWqWl
 5wurZCVsi7HbUjS/DDrVYAimyuj6XY5Mc6EFAKkWaKoud/O1UDnhlleJTt/XhWXqQn/0
 avgq3QD35QU1i8oR82GfmBgJ5nsxocsVvE626Js/Y2BUCLeIyEp5zx1aDy+vBr3ZRSm/
 UaaeFgQsWh+UK+BchuVWdiSJYU3L8pzeqBuWKDFmFD4gDuEDCg3PA1Dca3F1wzZP6ptd
 d58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pShxrb7IhaXiw7xdJALvmna519wZWL/BjIZfbxANrCs=;
 b=ot7NEulW4WlonOJxyLOicLA7oEazbN8k2CHMG4mzsB4/iPuzMGzwURevYtemuDQXDw
 tcYcB0Cx2dUtQGYhdtRR/z9YRrxsDQySyf5T9NSYPgwP5P589LvxGs0XA4y9/aC2qKW9
 zAPCckV1EvxQPspagsMav7/S/ZhGiF4QBJjiLWUK0hYOmt4M1RZySgrhhGkza6um6baE
 4njzt2ODX1IdLDlpAuP27yMyVaaIRePICf2LorIRHbloA1kvFw8GQHgwv5gfGsDEPW/V
 Ndd/u4nMU8BFvhmfVmjnOxs7HKil2AIqIoEoWFnU8VIeoWyoMGK605UTzl7gArWQLulJ
 UTsQ==
X-Gm-Message-State: APjAAAWhppcArcNQVDeDpIhO2hlcfaO7Ip+bd9Zq5hLhYKKR0R4pYppl
 a6h3l5gS76uznyaZVKOYRzPisaHb/0NX5hZRRJHNr1hv
X-Google-Smtp-Source: APXvYqxnbbQzP/56fqb6jHu2250Mh9iKzHxJvQsVWip3g3a49QH6/1SUYk6ILNDGsK5Z6V9eRtUBo4iPhuUH5Xnmb0A=
X-Received: by 2002:a6b:fb0f:: with SMTP id h15mr46166360iog.266.1563486674634; 
 Thu, 18 Jul 2019 14:51:14 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 18 Jul 2019 16:51:03 -0500
Message-ID: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Ettus X300 -- NO TX/RX, RX2 Avaliability
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
From: Taylor Eisman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Taylor Eisman <tayloreisman2012@gmail.com>
Content-Type: multipart/mixed; boundary="===============6096960345718153303=="
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

--===============6096960345718153303==
Content-Type: multipart/alternative; boundary="000000000000da4ed6058dfb9b86"

--000000000000da4ed6058dfb9b86
Content-Type: text/plain; charset="UTF-8"

Hey guys,

I've been trying to resolve this issue with our X300 USRPs. Apparently,
they do not have an RX2 or TX/RX port. I've downloaded the latest version
of UHD-host and the latest X300 fpga=HG images. This is the error I'm
getting...


  File "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",
line 3700, in set_antenna
    return _uhd_swig.usrp_source_sptr_set_antenna(self, ant, chan)
RuntimeError: LookupError: KeyError: key "TX/RX" not found in
dict(NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,
NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)

This is the result of the UHD_USRP_PROBE:


  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X300
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30817
|   |   mac-addr0: 00:80:2f:16:ea:d1
|   |   mac-addr1: 00:80:2f:16:ea:d2
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.3
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3116DC5
|   |   FW Version: 6.0
|   |   FPGA Version: 35.1
|   |   FPGA git hash: e39334f
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |   ID: Basic RX (0x0001)
|   |   |   Serial: 310CF7E
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: AB
|   |   |   |   Name: BasicRX (AB)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: BA
|   |   |   |   Name: BasicRX (BA)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: A
|   |   |   |   Name: BasicRX (A)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: I
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: B
|   |   |   |   Name: BasicRX (B)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: Q
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: B
|   |   |   ID: Basic RX (0x0001)
|   |   |   Serial: 310CF94
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: AB
|   |   |   |   Name: BasicRX (AB)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: BA
|   |   |   |   Name: BasicRX (BA)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: A
|   |   |   |   Name: BasicRX (A)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: I
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: B
|   |   |   |   Name: BasicRX (B)
|   |   |   |   Antennas: AB, BA, A, B
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: Q
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: B
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |   ID: Basic TX (0x0000)
|   |   |   Serial: 3102A3B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: AB
|   |   |   |   Name: BasicTX (AB)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: BA
|   |   |   |   Name: BasicTX (BA)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: A
|   |   |   |   Name: BasicTX (A)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: I
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: B
|   |   |   |   Name: BasicTX (B)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: Q
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: B
|   |   |   ID: Basic TX (0x0000)
|   |   |   Serial: 3102A3A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: AB
|   |   |   |   Name: BasicTX (AB)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: BA
|   |   |   |   Name: BasicTX (BA)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: A
|   |   |   |   Name: BasicTX (A)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: I
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: B
|   |   |   |   Name: BasicTX (B)
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: -250.000 to 250.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   |   Connection Type: Q
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: B
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * DmaFIFO_0
|   |   |   * Radio_0
|   |   |   * Radio_1
|   |   |   * DDC_0
|   |   |   * DDC_1
|   |   |   * DUC_0
|   |   |   * DUC_1



Let me know if there are any similar cases or there is a work around. I
have not found anything online thus far.

Thanks,

TEisman

--000000000000da4ed6058dfb9b86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey guys,<br><br></div>I&#39;ve been trying to resolv=
e this issue with our X300 USRPs. Apparently, they do not have an RX2 or TX=
/RX port. I&#39;ve downloaded the latest version of UHD-host and the latest=
 X300 fpga=3DHG images. This is the error I&#39;m getting...<br><div><br></=
div><div><br>=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/gnura=
dio/uhd/uhd_swig.py&quot;, line 3700, in set_antenna<br>=C2=A0 =C2=A0 retur=
n _uhd_swig.usrp_source_sptr_set_antenna(self, ant, chan)<br>RuntimeError: =
LookupError: KeyError: key &quot;TX/RX&quot; not found in dict(NSt7__cxx111=
2basic_stringIcSt11char_traitsIcESaIcEEE, NSt7__cxx1112basic_stringIcSt11ch=
ar_traitsIcESaIcEEE)<br><br></div><div>This is the result of the UHD_USRP_P=
ROBE:<br><br><br>=C2=A0 ___________________________________________________=
__<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device<br>| =C2=A0=
 =C2=A0 _____________________________________________________<br>| =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X300<br>| =C2=A0 | =C2=
=A0 revision: 11<br>| =C2=A0 | =C2=A0 revision_compat: 7<br>| =C2=A0 | =C2=
=A0 product: 30817<br>| =C2=A0 | =C2=A0 mac-addr0: 00:80:2f:16:ea:d1<br>| =
=C2=A0 | =C2=A0 mac-addr1: 00:80:2f:16:ea:d2<br>| =C2=A0 | =C2=A0 gateway: =
192.168.10.1<br>| =C2=A0 | =C2=A0 ip-addr0: 192.168.10.3<br>| =C2=A0 | =C2=
=A0 subnet0: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr1: 192.168.20.2<br>|=
 =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr2: 192.=
168.30.2<br>| =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>| =C2=A0 | =C2=A0 i=
p-addr3: 192.168.40.2<br>| =C2=A0 | =C2=A0 subnet3: 255.255.255.0<br>| =C2=
=A0 | =C2=A0 serial: 3116DC5<br>| =C2=A0 | =C2=A0 FW Version: 6.0<br>| =C2=
=A0 | =C2=A0 FPGA Version: 35.1<br>| =C2=A0 | =C2=A0 FPGA git hash: e39334f=
<br>| =C2=A0 | =C2=A0 RFNoC capable: Yes<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 =
| =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =C2=A0 | =C2=A0=
 Clock sources: internal, external, gpsdo<br>| =C2=A0 | =C2=A0 Sensors: ref=
_locked<br>| =C2=A0 | =C2=A0 =C2=A0 _______________________________________=
______________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 RX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: Basic RX (0x00=
01)<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 310CF7E<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 RX Frontend: AB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Bas=
icRX (AB)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>=
| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwi=
dth range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________=
__________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: BA<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (BA)<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 t=
o 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500000000.0 to 500000=
000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: Q=
I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 RX Frontend: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Nam=
e: BasicRX (A)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, =
B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: B<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (B)<br>| =C2=A0 | =C2=A0=
 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.00=
0 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 250000000.0 to 250=
000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type=
: Q<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 ___________________________________________________=
__<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 RX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Nam=
e: ads62p48<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range digital: 0.0 =
to 6.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 =C2=A0 ____________________________=
_________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: B<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: Basi=
c RX (0x0001)<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 310CF94<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 RX Frontend: AB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Na=
me: BasicRX (AB)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A=
, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: BA<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (BA)<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.=
000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: No=
ne<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500000000.0 to 5=
00000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Ty=
pe: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________________________________=
_______<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Name: BasicRX (A)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, =
BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: I<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _________=
____________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: B=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (B)<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.=
000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: No=
ne<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Ty=
pe: Q<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0=
 | =C2=A0 | =C2=A0 =C2=A0 _________________________________________________=
____<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 RX Codec: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Nam=
e: ads62p48<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range digital: 0.0 =
to 6.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 =C2=A0 ____________________________=
_________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: Basi=
c TX (0x0000)<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 3102A3B<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 TX Frontend: AB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Na=
me: BasicTX (AB)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth=
 range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Use=
s LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________=
_______________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: BA<br>| =C2=A0=
 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (BA)<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500000000.0 to 500000000.0 step 0.0 =
Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 TX Frontend: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (A)=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range=
: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Eleme=
nts: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 250000000=
.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connec=
tion Type: I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________________________________________=
___________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: B<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Name: BasicTX (B)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas:=
 <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: Q<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: A<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: ad9146<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 ______________=
_______________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: B<br>| =C2=A0 | =C2=A0 | =
=C2=A0 ID: Basic TX (0x0000)<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 3102A3A<=
br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________________________=
_______________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: AB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Name: BasicTX (AB)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Ante=
nnas: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Fronten=
d: BA<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (BA)<br>| =C2=A0=
 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 t=
o 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500000000.0 to 500000=
000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: Q=
I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 TX Frontend: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Nam=
e: BasicTX (A)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth=
 range: 250000000.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses=
 LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _______________________=
______________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: B<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (B)<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: Q<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 T=
X Codec: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: ad9146<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 =
_____________________________________________________<br>| =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this de=
vice:<br>| =C2=A0 | =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 | =C2=A0 * DmaFIF=
O_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0 | =C2=A0 | =C2=A0 *=
 Radio_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=A0 | =C2=A0 | =C2=
=A0 * DDC_1<br>| =C2=A0 | =C2=A0 | =C2=A0 * DUC_0<br>| =C2=A0 | =C2=A0 | =
=C2=A0 * DUC_1<br><br><br><br></div><div>Let me know if there are any simil=
ar cases or there is a work around. I have not found anything online thus f=
ar.<br><br></div><div>Thanks,<br><br></div><div>TEisman<br></div><span id=
=3D"gmail-passwordGeneratorText" class=3D"gmail-value--3vm4m8JXKB" style=3D=
"font-size:19px;opacity:1"><span class=3D"gmail-bold--fxZr3nD7rA"></span><s=
pan class=3D"gmail-bold--fxZr3nD7rA"></span><span class=3D"gmail-bold--fxZr=
3nD7rA"></span><span class=3D"gmail-bold--fxZr3nD7rA"></span><span class=3D=
"gmail-bold--fxZr3nD7rA"></span><span class=3D"gmail-bold--fxZr3nD7rA"></sp=
an><span class=3D"gmail-bold--fxZr3nD7rA"></span><span class=3D"gmail-bold-=
-fxZr3nD7rA"></span><span class=3D"gmail-bold--fxZr3nD7rA"></span><span cla=
ss=3D"gmail-bold--fxZr3nD7rA"></span><span class=3D"gmail-bold--fxZr3nD7rA"=
></span><span class=3D"gmail-bold--fxZr3nD7rA"></span></span></div>

--000000000000da4ed6058dfb9b86--


--===============6096960345718153303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6096960345718153303==--

