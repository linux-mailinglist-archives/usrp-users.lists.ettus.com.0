Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3566D6BC
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 00:08:54 +0200 (CEST)
Received: from [::1] (port=36626 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoEa4-0000ur-6o; Thu, 18 Jul 2019 18:08:52 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:44177)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1hoEa0-0000i6-6D
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 18:08:48 -0400
Received: by mail-io1-f44.google.com with SMTP id s7so54163500iob.11
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 15:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=iF5SrNs0WSuuQAh2862rZCXtJJ+Gd9kj9pY3PkyNOgk=;
 b=JzgZbuMjrHVQXyTNVMrifaYETrYd8aZs8RrkIkpnTdQvCyXs37hWwFxr/2XUKpoc/b
 geoY8QWtiJtR+np5zh1iF20pHTLYJNs8ZYiBfPUztgak9v6Bxp58PfSYSuZTj98oL4aW
 Gu9F0aY4m9rds9OUbJdQmTUS93/klWVWbGhKbrwyAuApoyEegdv9R0GjHre8iT8Po1g9
 R7iE4mEx4hqeoFiI1PAX4lFRxfKWJZuSKI4hLNN0TgH1gzRL9pMLVrAvvv69j08d8YPg
 9oOjA+3RmRQ1AEPr6KQuivWC//v35QQ1CUbLoowXT9us7UMC7awfzwf6QD65+pEu2Lkv
 x+qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=iF5SrNs0WSuuQAh2862rZCXtJJ+Gd9kj9pY3PkyNOgk=;
 b=bbXDlqJsk3CdLmUCufddHIH6uxpvQUBLWAuSEVGWWFXIDjrkfxfdkBhluZpnc8pqig
 qfmpA5uqX4FXebxywUqT/KqPfuwU0v2ibUaknWeCfqM8Lhwo/VUOBy5d0tF9B3DjRqLX
 Mio5m8I5IS1jw1x0G/4FdZ7kVAJPPk/GQkKaxhPEEcsb+bPYB6pbuRCLXt7t6y8X2HVF
 DQRyA4Tawe7Sf0FigYDAsGtElW8T5i13nSevXWXEdEhXoc6feWZNq1/lsabFOtOvjpaL
 0HNnqiVuduCK3AqIeHFcNRlp68mTM0SsyZ4WTCNrfk5n60mPFqfEuTVdBOqsw84z4of2
 MhsQ==
X-Gm-Message-State: APjAAAWLKLmuXRe/nuWQmSWbspL43/dMpGX4NJYzcQKDn3vyu94Nzn6n
 08+eOnUF7IdnnQ5Z/T9SB8KwQVPLrwL6eEKP5cjzJoOb
X-Google-Smtp-Source: APXvYqwxvjH+kqF2P+F0ih27FW3+P8zTqNrzI5vsFgngTM5YS8+ozTa9klPY/XXM/nlqjNvJQ+OSb34MOo5s+ar8GXA=
X-Received: by 2002:a5d:9448:: with SMTP id x8mr40931227ior.102.1563487687049; 
 Thu, 18 Jul 2019 15:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
 <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
In-Reply-To: <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
Date: Thu, 18 Jul 2019 15:07:56 -0700
Message-ID: <CAKJyDkLmZY-yw7QWMzg8oWRNzU4scuqkJC0Z9ErfxRKjKf+UCw@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] Fwd:  Ettus X300 -- NO TX/RX, RX2 Avaliability
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============8384653849320277765=="
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

--===============8384653849320277765==
Content-Type: multipart/alternative; boundary="000000000000329b50058dfbd84e"

--000000000000329b50058dfbd84e
Content-Type: text/plain; charset="UTF-8"

The RF capabilities of USRPs are determined by the daughterboards that are
installed in the X300.  From your uhd_usrp_probe output, you have a BasicTX
and BasicRX installed in your device, which only support 1 bare bones
transmit channel and one receive channel.

Check out the daughtercard section of ettus.com and
https://kb.ettus.com/Selecting_a_RF_Daughterboard or contact Ettus Sales (
sales@ettus.com) for more info.
The UBX-160 is the most popular daughtercard for the X300/X310 these days.

-Robin



On Thu, Jul 18, 2019 at 2:51 PM Taylor Eisman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey guys,
>
> I've been trying to resolve this issue with our X300 USRPs. Apparently,
> they do not have an RX2 or TX/RX port. I've downloaded the latest version
> of UHD-host and the latest X300 fpga=HG images. This is the error I'm
> getting...
>
>
>   File "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",
> line 3700, in set_antenna
>     return _uhd_swig.usrp_source_sptr_set_antenna(self, ant, chan)
> RuntimeError: LookupError: KeyError: key "TX/RX" not found in
> dict(NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,
> NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
>
> This is the result of the UHD_USRP_PROBE:
>
>
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X300
> |   |   revision: 11
> |   |   revision_compat: 7
> |   |   product: 30817
> |   |   mac-addr0: 00:80:2f:16:ea:d1
> |   |   mac-addr1: 00:80:2f:16:ea:d2
> |   |   gateway: 192.168.10.1
> |   |   ip-addr0: 192.168.10.3
> |   |   subnet0: 255.255.255.0
> |   |   ip-addr1: 192.168.20.2
> |   |   subnet1: 255.255.255.0
> |   |   ip-addr2: 192.168.30.2
> |   |   subnet2: 255.255.255.0
> |   |   ip-addr3: 192.168.40.2
> |   |   subnet3: 255.255.255.0
> |   |   serial: 3116DC5
> |   |   FW Version: 6.0
> |   |   FPGA Version: 35.1
> |   |   FPGA git hash: e39334f
> |   |   RFNoC capable: Yes
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: internal, external, gpsdo
> |   |   Sensors: ref_locked
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |   ID: Basic RX (0x0001)
> |   |   |   Serial: 310CF7E
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: AB
> |   |   |   |   Name: BasicRX (AB)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: BA
> |   |   |   |   Name: BasicRX (BA)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: A
> |   |   |   |   Name: BasicRX (A)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: I
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: B
> |   |   |   |   Name: BasicRX (B)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: Q
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: A
> |   |   |   |   Name: ads62p48
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: B
> |   |   |   ID: Basic RX (0x0001)
> |   |   |   Serial: 310CF94
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: AB
> |   |   |   |   Name: BasicRX (AB)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: BA
> |   |   |   |   Name: BasicRX (BA)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: A
> |   |   |   |   Name: BasicRX (A)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: I
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: B
> |   |   |   |   Name: BasicRX (B)
> |   |   |   |   Antennas: AB, BA, A, B
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: Q
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: B
> |   |   |   |   Name: ads62p48
> |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: A
> |   |   |   ID: Basic TX (0x0000)
> |   |   |   Serial: 3102A3B
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: AB
> |   |   |   |   Name: BasicTX (AB)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: BA
> |   |   |   |   Name: BasicTX (BA)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: A
> |   |   |   |   Name: BasicTX (A)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: I
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: B
> |   |   |   |   Name: BasicTX (B)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: Q
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: A
> |   |   |   |   Name: ad9146
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: B
> |   |   |   ID: Basic TX (0x0000)
> |   |   |   Serial: 3102A3A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: AB
> |   |   |   |   Name: BasicTX (AB)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: BA
> |   |   |   |   Name: BasicTX (BA)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: QI
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: A
> |   |   |   |   Name: BasicTX (A)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: I
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: B
> |   |   |   |   Name: BasicTX (B)
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: -250.000 to 250.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: Q
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: B
> |   |   |   |   Name: ad9146
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RFNoC blocks on this device:
> |   |   |
> |   |   |   * DmaFIFO_0
> |   |   |   * Radio_0
> |   |   |   * Radio_1
> |   |   |   * DDC_0
> |   |   |   * DDC_1
> |   |   |   * DUC_0
> |   |   |   * DUC_1
>
>
>
> Let me know if there are any similar cases or there is a work around. I
> have not found anything online thus far.
>
> Thanks,
>
> TEisman
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000329b50058dfbd84e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr">The RF cap=
abilities of USRPs are determined by the daughterboards that are installed =
in the X300.=C2=A0 From your uhd_usrp_probe output, you have a BasicTX and =
BasicRX installed in your device, which only support 1 bare bones transmit =
channel and one receive channel.<div><br></div><div>Check out the daughterc=
ard section of <a href=3D"http://ettus.com" target=3D"_blank">ettus.com</a>=
 and=C2=A0<a href=3D"https://kb.ettus.com/Selecting_a_RF_Daughterboard" tar=
get=3D"_blank">https://kb.ettus.com/Selecting_a_RF_Daughterboard</a>=C2=A0o=
r contact Ettus Sales (<a href=3D"mailto:sales@ettus.com" target=3D"_blank"=
>sales@ettus.com</a>) for more info.</div><div>The UBX-160 is the most popu=
lar daughtercard for the X300/X310 these days.</div><div><br></div><div>-Ro=
bin</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019 at 2:51 PM Tayl=
or Eisman via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey guys,=
<br><br></div>I&#39;ve been trying to resolve this issue with our X300 USRP=
s. Apparently, they do not have an RX2 or TX/RX port. I&#39;ve downloaded t=
he latest version of UHD-host and the latest X300 fpga=3DHG images. This is=
 the error I&#39;m getting...<br><div><br></div><div><br>=C2=A0 File &quot;=
/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py&quot;, line=
 3700, in set_antenna<br>=C2=A0 =C2=A0 return _uhd_swig.usrp_source_sptr_se=
t_antenna(self, ant, chan)<br>RuntimeError: LookupError: KeyError: key &quo=
t;TX/RX&quot; not found in dict(NSt7__cxx1112basic_stringIcSt11char_traitsI=
cESaIcEEE, NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)<br><br></d=
iv><div>This is the result of the UHD_USRP_PROBE:<br><br><br>=C2=A0 _______=
______________________________________________<br>=C2=A0/<br>| =C2=A0 =C2=
=A0 =C2=A0 Device: X-Series Device<br>| =C2=A0 =C2=A0 _____________________=
________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 Mboard: X300<br>| =C2=A0 | =C2=A0 revision: 11<br>| =C2=A0 | =
=C2=A0 revision_compat: 7<br>| =C2=A0 | =C2=A0 product: 30817<br>| =C2=A0 |=
 =C2=A0 mac-addr0: 00:80:2f:16:ea:d1<br>| =C2=A0 | =C2=A0 mac-addr1: 00:80:=
2f:16:ea:d2<br>| =C2=A0 | =C2=A0 gateway: 192.168.10.1<br>| =C2=A0 | =C2=A0=
 ip-addr0: 192.168.10.3<br>| =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>| =
=C2=A0 | =C2=A0 ip-addr1: 192.168.20.2<br>| =C2=A0 | =C2=A0 subnet1: 255.25=
5.255.0<br>| =C2=A0 | =C2=A0 ip-addr2: 192.168.30.2<br>| =C2=A0 | =C2=A0 su=
bnet2: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr3: 192.168.40.2<br>| =C2=
=A0 | =C2=A0 subnet3: 255.255.255.0<br>| =C2=A0 | =C2=A0 serial: 3116DC5<br=
>| =C2=A0 | =C2=A0 FW Version: 6.0<br>| =C2=A0 | =C2=A0 FPGA Version: 35.1<=
br>| =C2=A0 | =C2=A0 FPGA git hash: e39334f<br>| =C2=A0 | =C2=A0 RFNoC capa=
ble: Yes<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources: =C2=A0int=
ernal, external, gpsdo<br>| =C2=A0 | =C2=A0 Clock sources: internal, extern=
al, gpsdo<br>| =C2=A0 | =C2=A0 Sensors: ref_locked<br>| =C2=A0 | =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 | =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: A<br>| =
=C2=A0 | =C2=A0 | =C2=A0 ID: Basic RX (0x0001)<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Serial: 310CF7E<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________________=
___________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: AB<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (AB)<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 t=
o 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500000000.0 to 500000=
000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: I=
Q<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 RX Frontend: BA<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Na=
me: BasicRX (BA)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A=
, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: A<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (A)<br>| =C2=A0 | =C2=A0=
 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.00=
0 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 250000000.0 to 250=
000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type=
: I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 ___________________________________________________=
__<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 RX Frontend: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Name: BasicRX (B)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, =
A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Connection Type: Q<br>| =C2=A0 | =C2=A0 | =C2=A0 |=
 =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________=
__________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: A<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: ads62p48<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Gain range digital: 0.0 to 6.0 step 0.5 dB<br>| =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboa=
rd: B<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: Basic RX (0x0001)<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Serial: 310CF94<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _________=
____________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: A=
B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (AB)<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -=
250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements=
: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500000000.0 =
to 500000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connectio=
n Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: BA<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Name: BasicRX (BA)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: =
AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 |=
 =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___=
__________________________________________________<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Fron=
tend: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicRX (A)<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: AB, BA, A, B<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq ran=
ge: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Ele=
ments: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 2500000=
00.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Conn=
ection Type: I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br=
>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ________________________________________=
_____________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: B<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Name: BasicRX (B)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas:=
 AB, BA, A, B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 =
| =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: Q<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __=
___________________________________________________<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Code=
c: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: ads62p48<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Gain range digital: 0.0 to 6.0 step 0.5 dB<br>| =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
TX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: Basic TX (0x0000)<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Serial: 3102A3B<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =
_____________________________________________________<br>| =C2=A0 | =C2=A0 =
| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Fr=
ontend: AB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (AB)<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.=
000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: No=
ne<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500000000.0 to 5=
00000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Ty=
pe: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________________________________=
_______<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: BA<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Name: BasicTX (BA)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Ban=
dwidth range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________________=
___________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: A<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (A)<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Bandwidth range: 250000000.0 to 250000000.0 step 0.0 =
Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: I<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 TX Frontend: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (B)=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range=
: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Eleme=
nts: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 250000000=
.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connec=
tion Type: Q<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________________________________________=
___________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Name: ad9146<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: N=
one<br>| =C2=A0 | =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Dboard: B<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: Basic TX (0x0000)=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Serial: 3102A3A<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0=
 =C2=A0 TX Frontend: AB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicT=
X (AB)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq=
 range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain=
 Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 500=
000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: =
No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________________________=
__________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: BA<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Name: BasicTX (BA)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 A=
ntennas: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Bandwidth range: 500000000.0 to 500000000.0 step 0.0 Hz<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___=
__________________________________________________<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Fron=
tend: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: BasicTX (A)<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: -250.00=
0 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 250000000.0 to 250=
000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type=
: I<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 ___________________________________________________=
__<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 TX Frontend: B<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Name: BasicTX (B)<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: <br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: <br>| =C2=A0 | =C2=A0 | =C2=A0 |=
 =C2=A0 Freq range: -250.000 to 250.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 |=
 =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidt=
h range: 250000000.0 to 250000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: Q<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses=
 LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _______________________=
______________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: B<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Name: ad9146<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 _______________________=
______________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<br>| =C2=A0 | =
=C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 | =C2=A0 * DmaFIFO_0<br>| =C2=A0 | =
=C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * Radio_1<br>| =C2=
=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_1<br>| =
=C2=A0 | =C2=A0 | =C2=A0 * DUC_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DUC_1<br><=
br><br><br></div><div>Let me know if there are any similar cases or there i=
s a work around. I have not found anything online thus far.<br><br></div><d=
iv>Thanks,<br><br></div><div>TEisman<br></div><span id=3D"m_-17007434023979=
0977gmail-m_7312657660742114187gmail-passwordGeneratorText" class=3D"m_-170=
074340239790977gmail-m_7312657660742114187gmail-value--3vm4m8JXKB" style=3D=
"font-size:19px;opacity:1"><span class=3D"m_-170074340239790977gmail-m_7312=
657660742114187gmail-bold--fxZr3nD7rA"></span><span class=3D"m_-17007434023=
9790977gmail-m_7312657660742114187gmail-bold--fxZr3nD7rA"></span><span clas=
s=3D"m_-170074340239790977gmail-m_7312657660742114187gmail-bold--fxZr3nD7rA=
"></span><span class=3D"m_-170074340239790977gmail-m_7312657660742114187gma=
il-bold--fxZr3nD7rA"></span><span class=3D"m_-170074340239790977gmail-m_731=
2657660742114187gmail-bold--fxZr3nD7rA"></span><span class=3D"m_-1700743402=
39790977gmail-m_7312657660742114187gmail-bold--fxZr3nD7rA"></span><span cla=
ss=3D"m_-170074340239790977gmail-m_7312657660742114187gmail-bold--fxZr3nD7r=
A"></span><span class=3D"m_-170074340239790977gmail-m_7312657660742114187gm=
ail-bold--fxZr3nD7rA"></span><span class=3D"m_-170074340239790977gmail-m_73=
12657660742114187gmail-bold--fxZr3nD7rA"></span><span class=3D"m_-170074340=
239790977gmail-m_7312657660742114187gmail-bold--fxZr3nD7rA"></span><span cl=
ass=3D"m_-170074340239790977gmail-m_7312657660742114187gmail-bold--fxZr3nD7=
rA"></span><span class=3D"m_-170074340239790977gmail-m_7312657660742114187g=
mail-bold--fxZr3nD7rA"></span></span></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></div>

--000000000000329b50058dfbd84e--


--===============8384653849320277765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8384653849320277765==--

