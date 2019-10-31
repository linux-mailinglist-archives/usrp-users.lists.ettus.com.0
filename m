Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD3FEB7FE
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2019 20:33:40 +0100 (CET)
Received: from [::1] (port=37020 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQGCO-0000iJ-EO; Thu, 31 Oct 2019 15:33:36 -0400
Received: from mail-lf1-f53.google.com ([209.85.167.53]:40753)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iQGCK-0000cp-NQ
 for usrp-users@lists.ettus.com; Thu, 31 Oct 2019 15:33:32 -0400
Received: by mail-lf1-f53.google.com with SMTP id f4so5591137lfk.7
 for <usrp-users@lists.ettus.com>; Thu, 31 Oct 2019 12:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=30Au5WMRm6+3pfF90aYeb0zMuKoCCg6sl2dLPw6DfT8=;
 b=FsiV/xxDHVlcQgVDhbiPWZIcS8BN8sJbyCkHAW4RV47spjRAN9QrrRZ/YndyfwaI60
 sJPdUXQ/4PZUXFeRi10OTObnYeEkGdZPoAPzYDVDuF/kPeqYOpU6lKZoQD1LHQf2KYMw
 IQ6Ezl1ko7qHYMxxfv2AIMkWs5Bl4TlBdtsWWvKjOYx3aLTZjL0NJRS8CapeqkyMfGbK
 x+44UoJvYRghQiBbjbPDmg2fuIcub4nhxUEiGPZLfw3CosfT1o2dx8UzGbSdkLyp52fK
 6zIgMAPfoikajzfka0oDAiijulx6unVbf6QGGTuOtl4362lITm0w35YQEi/LSqFKicu1
 H7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=30Au5WMRm6+3pfF90aYeb0zMuKoCCg6sl2dLPw6DfT8=;
 b=b6Bznfv0TVcCW2vykwbJ1ocS7OEhHVu8cjZn0N7BPd4LinzodNXWo5D1LUtHSXa4tJ
 cm6nAalu8tPd0+AR9TAiNvYXmu9ja2CzctwzubVSZXODD/IjjM9umvNXA5GoggWs+p9d
 ZaBCdb3yFrnFSERDtA6n7RypR08EM9QoUhlFuVrmew1OamS3XcO75SWOdjdVjzu0b9u5
 2cAZ5poIEXoMR3VsxTJMhvEG+WY4ShrEpCd+AK3fc6VGZtxNYee4+PgwDDiTgnwzYyC+
 1w/1TfL5ufFdlVdG1ueDmq10tz98G+ufCLvNqe9K2Yd9wwsagT/q519P1gYqXTqYOB5W
 uY2g==
X-Gm-Message-State: APjAAAWwooePz51ApiAcG7MHwe17984HweHOoDwr1o0DLIVr5OiL7jLi
 r4n4yQC80lfkWkAbadcJVO+7hujRa7NYjjB4uYki69Ty
X-Google-Smtp-Source: APXvYqxf2/gCzOrWkhPL8btrYjxkwGIWW/tHn5J4tt0nY/rSzKsJQiBlcXeQI1M5aIzpeOVsAnyfnMBZWEcLDIwxktY=
X-Received: by 2002:ac2:5deb:: with SMTP id z11mr4930380lfq.35.1572550371175; 
 Thu, 31 Oct 2019 12:32:51 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 31 Oct 2019 15:30:15 -0400
Message-ID: <CALY+5sK8VYxWGiOsX7XSw7ScxLkKKhWtNm66U=OdfxEFCyqKYw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 support@ettus.com
Subject: [USRP-users] RFNoC Radio Issue
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
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Content-Type: multipart/mixed; boundary="===============2553576297384554361=="
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

--===============2553576297384554361==
Content-Type: multipart/alternative; boundary="00000000000043f2e3059639ea5c"

--00000000000043f2e3059639ea5c
Content-Type: text/plain; charset="UTF-8"

Greetings,

I was wondering if anyone else has had this issue with the RFNoC radio
block.

So I was using the copy block with the rfnoc_fosphor_network_usrp.grc file
as I wanted to split off the signal before it went off to the RFNoC Window.
So I put in a copy block (since the RFNoC Split block appears to be broken)
and passed the data off to a ZMQ Push and back to the window to continue to
be processed by the FPGA. GNURadio says this is all well and good since all
vectors are 512 and builds the file. However, when I run the .py file on my
E312 it throws an error stating that the radio is providing data of size 8
when the copy block expects to get data of size 512 (the vector size).

[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
UHD_3.14.1.HEAD-0-gbfb9c1c7
[INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...
[INFO] [E300] FPGA image loaded
[INFO] [E300] Detecting internal GPS
.... [INFO] [E300] GPSDO found
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test...
[INFO] [E300] Register loopback test passed
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)
[WARNING] [RFNOC] Can't find a block controller for key FFT, using default
block controller!
[INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)
[INFO] [0/Window_0] Initializing block control (NOC ID: 0xD053000000000000)
[WARNING] [RFNOC] Can't find a block controller for key fosphor, using
default block controller!
[INFO] [0/fosphor_0] Initializing block control (NOC ID: 0x666F000000000000)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
Traceback (most recent call last):
  File "rfnoc_fosphor_network_usrp.py", line 282, in <module>
    main()
  File "rfnoc_fosphor_network_usrp.py", line 271, in main
    tb = top_block_cls(fft_size=options.fft_size,
fpga_path=options.fpga_path, freq=options.freq, gain=options.gain,
host_ip_addr=options.host_ip_addr, samp_rate=options.samp_rate,
tdecay=options.tdecay, trise=options.trise)
  File "rfnoc_fosphor_network_usrp.py", line 166, in __init__
    self.connect((self.uhd_rfnoc_streamer_radio_0, 0), (self.blocks_copy_0,
0))
  File
"/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py",
line 47, in wrapped
    func(self, src, src_port, dst, dst_port)
  File
"/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py",
line 110, in connect
    self.primitive_connect(*args)
  File
"/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/runtime_swig.py",
line 3482, in primitive_connect
    return _runtime_swig.top_block_sptr_primitive_connect(self, *args)
ValueError: itemsize mismatch: rfnoc_radio0:0 using 8, copy0:0 using 4096

I have attached my modified examples for anyone who is interested. I have
tried to modify the python and that just gets me into more trouble.

Through my tracing of the files it appears that the RFNoC Radio block in
the .py file never actually uses the vector size, and that the force vector
length block is an additive to allow compliance when working in GNURadio,
as it will not generate python with mismatched types and sizes. Trying to
force the radio to take the 512 as an argument in the python throws a new
error that the Radio is only allowed to have 5 arguments and I have
supplied 6, and validated in the Ettus .py file that there is no arg for
vector size.

I was wondering if anyone found away around this or got the RFNoC Split
block working?

Regards,
Jon Lockhart

--00000000000043f2e3059639ea5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I was wondering i=
f anyone else has had this issue with the RFNoC radio block.</div><div><br>=
</div><div>So I was using the copy block with the rfnoc_fosphor_network_usr=
p.grc file as I wanted to split off the signal before it went off to the RF=
NoC Window. So I put in a copy block (since the RFNoC Split block appears t=
o be broken) and passed the data off to a ZMQ Push and back to the window t=
o continue to be processed by the FPGA. GNURadio says this is all well and =
good since all vectors are 512 and builds the file. However, when I run the=
 .py file on my E312 it throws an error stating that the radio is providing=
 data of size 8 when the copy block expects to get data of size 512 (the ve=
ctor size).</div><div><br></div><div>[INFO] [UHD] linux; GNU C++ version 4.=
9.2; Boost_105700; UHD_3.14.1.HEAD-0-gbfb9c1c7<br>[INFO] [E300] Loading FPG=
A image: /home/root/localinstall/e300.bit...<br>[INFO] [E300] FPGA image lo=
aded<br>[INFO] [E300] Detecting internal GPS <br>.... [INFO] [E300] GPSDO f=
ound<br>[INFO] [E300] Initializing core control (global registers)...<br><b=
r>[INFO] [E300] Performing register loopback test... <br>[INFO] [E300] Regi=
ster loopback test passed<br>[INFO] [0/Radio_0] Initializing block control =
(NOC ID: 0x12AD100000000000)<br>[WARNING] [RFNOC] Can&#39;t find a block co=
ntroller for key FFT, using default block controller!<br>[INFO] [0/FFT_0] I=
nitializing block control (NOC ID: 0xFF70000000000000)<br>[INFO] [0/Window_=
0] Initializing block control (NOC ID: 0xD053000000000000)<br>[WARNING] [RF=
NOC] Can&#39;t find a block controller for key fosphor, using default block=
 controller!<br>[INFO] [0/fosphor_0] Initializing block control (NOC ID: 0x=
666F000000000000)<br>[INFO] [0/FIFO_0] Initializing block control (NOC ID: =
0xF1F0000000000000)<br>[INFO] [0/FIFO_1] Initializing block control (NOC ID=
: 0xF1F0000000000000)<br>Traceback (most recent call last):<br>=C2=A0 File =
&quot;rfnoc_fosphor_network_usrp.py&quot;, line 282, in &lt;module&gt;<br>=
=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quo=
t;, line 271, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls(fft_size=3Dopti=
ons.fft_size, fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Dop=
tions.gain, host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_r=
ate, tdecay=3Doptions.tdecay, trise=3Doptions.trise)<br>=C2=A0 File &quot;r=
fnoc_fosphor_network_usrp.py&quot;, line 166, in __init__<br>=C2=A0 =C2=A0 =
self.connect((self.uhd_rfnoc_streamer_radio_0, 0), (self.blocks_copy_0, 0))=
<br>=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-packag=
es/gnuradio/gr/hier_block2.py&quot;, line 47, in wrapped<br>=C2=A0 =C2=A0 f=
unc(self, src, src_port, dst, dst_port)<br>=C2=A0 File &quot;/home/root/loc=
alinstall/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py&quot;,=
 line 110, in connect<br>=C2=A0 =C2=A0 self.primitive_connect(*args)<br>=C2=
=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/gnur=
adio/gr/runtime_swig.py&quot;, line 3482, in primitive_connect<br>=C2=A0 =
=C2=A0 return _runtime_swig.top_block_sptr_primitive_connect(self, *args)<b=
r>ValueError: itemsize mismatch: rfnoc_radio0:0 using 8, copy0:0 using 4096=
</div><div><br></div><div>I have attached my modified examples for anyone w=
ho is interested. I have tried to modify the python and that just gets me i=
nto more trouble. <br></div><div><br></div><div>Through my tracing of the f=
iles it appears that the RFNoC Radio block in the .py file never actually u=
ses the vector size, and that the force vector length block is an additive =
to allow compliance when working in GNURadio, as it will not generate pytho=
n with mismatched types and sizes. Trying to force the radio to take the 51=
2 as an argument in the python throws a new error that the Radio is only al=
lowed to have 5 arguments and I have supplied 6, and validated in the Ettus=
 .py file that there is no arg for vector size. <br></div><div><br></div><d=
iv>I was wondering if anyone found away around this or got the RFNoC Split =
block working?</div><div><br></div><div>Regards,</div><div>Jon Lockhart<br>=
</div></div>

--00000000000043f2e3059639ea5c--


--===============2553576297384554361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2553576297384554361==--

