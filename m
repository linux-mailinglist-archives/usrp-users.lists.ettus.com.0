Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BEB6D571
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 21:50:21 +0200 (CEST)
Received: from [::1] (port=55380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoCPz-0007Oy-NN; Thu, 18 Jul 2019 15:50:19 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:33127)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hoCPv-0007CA-GI
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 15:50:15 -0400
Received: by mail-ot1-f46.google.com with SMTP id q20so30309233otl.0
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 12:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V+ZwsW0TJkrmRXeZx0r6gUhz8JTOjYnpM89U+3esdHM=;
 b=OBVch2ZbrQBT4ysGFE+FgEuI7GOsTZGSHBBr47Q6VeVKISx6xrfmKd3d8U6GKOLCvW
 zI/p/7z0FbPd+rLcofl5DHXErPmQWLOFBrbgZcAgUILhhguBxm5OYScH1IW63epS29od
 pg1VHOul2/490B8Y5V+WgzdB3Gv56W1jzIuhXrvbysXC5FBTaCFKhIglkCUCxl0Bimr9
 rFQ5PuNSJy8bMjKu90xjKfqtyrRdZk/FLNUlsntch3yIJVzAYIoD2amx916evoXQ5s2u
 Yez8Chit6AwYZ07V8/o76ZLU7aUp0zbEVK4075xt9ScOftdVvBH3eoamNN922o+HzWKG
 E+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V+ZwsW0TJkrmRXeZx0r6gUhz8JTOjYnpM89U+3esdHM=;
 b=uIrc3Xvx0QAKoby2jkaVNPtdzJ/NVqJ+V1l6I5/UZdfacomHnIbsiq9eZknCZp1wmj
 IsywFRvWKz90oMDwrh3jRBwOrRqpsCfQdWLekt0aEDTkFZq/8FmwvJpilpTgT5/Ozum/
 6EgeSY9ETsaYfDKc63PWELWBCqIKVtGSp60EUCOiz9C7XAOk2MqEN3j6o32B7O2ZQTaZ
 DRmCNUpeZSZDokeZBmrasW4YrzJl71TZqgoScV4WKQ4H7MYnOtzVwQMpqNVejlqvWgt6
 doWjbZtBHukdhGzoQ9k80bILN/go727t5kAJRyG0n864jFm0FqqzzyZXxzrSlzh/Q9wa
 3NUg==
X-Gm-Message-State: APjAAAXg0lYghiDuj5bjdr22N2nnzCZHGyoCadJT3d/TtUpqB7b976ig
 cchyYSYuMh1ojplEbNXv7RBAfgqT3++kXDAu9VRjboA6
X-Google-Smtp-Source: APXvYqxnOhJgP/eizfAG3dB9U1Ycfu8VTUACa08bqqHK+2rtF+ZFDd/Eu9Ftgfp8T3jh3dUwYciXPUFatAoBIDLmXPw=
X-Received: by 2002:a9d:7a4e:: with SMTP id z14mr8535538otm.258.1563479374733; 
 Thu, 18 Jul 2019 12:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Thu, 18 Jul 2019 12:49:52 -0700
Message-ID: <CAL263izNAB-Zjz2cDHX1EH1qBNS33ZBXGVaMc_vM21eRXn3sYw@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] E320 unable to lock to external reference
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3392388463227110624=="
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

--===============3392388463227110624==
Content-Type: multipart/alternative; boundary="000000000000beb4c3058df9e81c"

--000000000000beb4c3058df9e81c
Content-Type: text/plain; charset="UTF-8"

Hi Jason,

This might be a bug with the E320. I will need to try to recreate this
issue. I'll follow up as soon as I have more info.

Regards,
Nate Temple

On Thu, Jul 18, 2019 at 12:32 PM Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> OK, we've been fighting this for a while and we think we narrowed it down
> to being a problem with the E320 (NOTE: we are running the E320 in network
> mode, not embedded)
>
> Some background:
> 1) external reference input is from an octo clock (so it the 1pps input)
> on many different ports
>         a) also tried to use a  Symmetricom box for external reference and
> had the same problems
>
> 3) the same code we are testing with works when using an x310 instead of
> an e320, with inputs from the same octoclock
>
> 4) the code basically does this:
>         a) sets the reference source to external
>         b) checks to see if the reference is locked (and it keeps doing
> this until we get a "locked" response, using the uhd commands to do this)
>
> 5) for the e320, the locked status never returns (when running the x310
> with this code, it sometimes responds with unlocked, but after a few checks
> it comes back ok)
>
> 6) I tried some of the Ettus (UHD) test code
>         a) running the "sync_to_gps" program did work - the reference was
> able to lock to the internal (gps) reference
>         b) "test_clock_synch"  returns similiar errors to what we get with
> our program (see below):
> Checking USRP devices for lock.
>  * 318B08B: false
> WARNING: One or more devices not locked.
> Querying Clock for time and setting USRP times...
> [WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked.
> MB_CLOCK_CTRL reg: 0x00000002
> Running 10 comparisons at random intervals.
> Comparison #1
>  * Clock time: 1563463644
>  * 318B08B time: 1563463644
> Comparison #2
>  * Clock time: 1563463652
>  * 318B08B time: 1563463652
> Comparison #3
>  * Clock time: 1563463657
>  * 318B08B time: 1563463657
> Comparison #4
>  * Clock time: 1563463664
>  * 318B08B time: 1563463664
> Comparison #5
>  * Clock time: 1563463666
>  * 318B08B time: 1563463666
> Comparison #6
>  * Clock time: 1563463671
>  * 318B08B time: 1563463671
> Comparison #7
>  * Clock time: 1563463676
>  * 318B08B time: 1563463676
> Comparison #8
>  * Clock time: 1563463686
>  * 318B08B time: 1563463686
> Comparison #9
>  * Clock time: 1563463689
>  * 318B08B time: 1563463689
> Comparison #10
>  * Clock time: 1563463691
>  * 318B08B time: 1563463691
>
> Number of matches: 10/10
>
>
> 7) we ran the same tests at a sister site that has four E320s, and they
> all exhibited the same issues
>
> 8)Finally, a uhd_usrp_probe command returns this:
>
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
> Boost_105300; UHD_3.14.1.0-9-g2aa5289d
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.10.3,type=e3xx,product=e320,serial=318B08B,claimed=False,addr=192.168.10.3
> [WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked.
> MB_CLOCK_CTRL reg: 0x00000002
> ... many of these warnings repeating ...
> [WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked.
> MB_CLOCK_CTRL reg: 0x00000002
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1324 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1322 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003320)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [MPM.PeriphManager] init() called with device args
> `product=e320,mgmt_addr=192.168.10.3'.
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
>   _____________________________________________________
>  /
> |       Device: E300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-e320-318B08B
> |   |   eeprom_version: 2
> |   |   mpm_version: 3.14.0.0-g6875d061
> |   |   pid: 58144
> |   |   product: e320
> |   |   rev: 2
> |   |   rpc_connection: remote
> |   |   serial: 318B08B
> |   |   type: e3xx
> |   |   MPM Version: 1.2
> |   |   FPGA Version: 3.1
> |   |   FPGA git hash: e39334f.clean
> |   |   RFNoC capable: Yes
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: gps_sky, gps_locked, temp_rf_channelA, temp_rf_channelB,
> temp_internal, fan, temp_main_power, ref_locked, gps_gpgga, temp_fpga,
> gps_tpv, gps_time
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: Neon
> |   |   |   |   Antennas: RX2, TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 1
> |   |   |   |   Name: Neon
> |   |   |   |   Antennas: RX2, TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: A
> |   |   |   |   Name: AD9361 Dual ADC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: A
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 0
> |   |   |   |   Name: Neon
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 1
> |   |   |   |   Name: Neon
> |   |   |   |   Antennas: TX/RX
> |   |   |   |   Sensors: lo_locked, ad9361_temperature
> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   |     _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: A
> |   |   |   |   Name: AD9361 Dual DAC
> |   |   |   |   Gain Elements: None
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RFNoC blocks on this device:
> |   |   |
> |   |   |   * DmaFIFO_0
> |   |   |   * Radio_0
> |   |   |   * DDC_0
> |   |   |   * DUC_0
>
>
> We've spent about 2 weeks on this and tried every combo of things we could
> think of and everything works on our other Ettus devices, but the E320 just
> doesn't seem to play nice at all.  Are there any thoughts on what the issue
> is (my gut is saying a configuration in UHD).
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000beb4c3058df9e81c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jason,<br><br>This might be a bug with the E320. I w=
ill need to try to recreate this issue. I&#39;ll follow up as soon as I hav=
e more info.<br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019 at 12=
:32 PM Jason Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
OK, we&#39;ve been fighting this for a while and we think we narrowed it do=
wn to being a problem with the E320 (NOTE: we are running the E320 in netwo=
rk mode, not embedded)</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Some background:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>1) external reference input is from an octo clock (so it the 1pps inp=
ut) on many different ports</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt">=C2=A0 =C2=A0 =C2=A0 =C2=A0 a) also tried to use a=C2=
=A0 Symmetricom box for external reference and had the same problems</span>=
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div><br>
</div>
<div>3) the same code we are testing with works when using an x310 instead =
of an e320, with inputs from the same octoclock</div>
<div><br>
</div>
<div>4) the code basically does this:</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 a) sets the reference source to external</=
div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 b) checks to see if the reference is locke=
d (and it keeps doing this until we get a &quot;locked&quot; response, usin=
g the uhd commands to do this)</div>
<div><br>
</div>
<div>5) for the e320, the locked status never returns (when running the x31=
0 with this code, it sometimes responds with unlocked, but after a few chec=
ks it comes back ok)</div>
<div><br>
</div>
<div>6) I tried some of the Ettus (UHD) test code</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 a) running the &quot;sync_to_gps&quot; pro=
gram did work - the reference was able to lock to the internal (gps) refere=
nce</div>
<span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 b) &quot;test_clock_synch&quot; =C2=A0ret=
urns similiar errors to what we get with our program (see below):</span><br=
>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><span style=3D"font-family:Calibri,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">Checking USRP devices for lock.</span>=
<br style=3D"font-family:Calibri,Helvetica,sans-serif;background-color:rgb(=
255,255,255)">
<span style=3D"font-family:Calibri,Helvetica,sans-serif;background-color:rg=
b(255,255,255);display:inline">=C2=A0* 318B08B: false</span><br style=3D"fo=
nt-family:Calibri,Helvetica,sans-serif;background-color:rgb(255,255,255)">
<span style=3D"font-family:Calibri,Helvetica,sans-serif;background-color:rg=
b(255,255,255);display:inline">WARNING: One or more devices not locked.</sp=
an><br style=3D"font-family:Calibri,Helvetica,sans-serif;background-color:r=
gb(255,255,255)">
<div style=3D"margin:0px;font-family:Calibri,Helvetica,sans-serif;backgroun=
d-color:rgb(255,255,255)">
Querying Clock for time and setting USRP times...<br>
[WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked. MB_CLOCK_=
CTRL reg: 0x00000002<br>
Running 10 comparisons at random intervals.<br>
Comparison #1<br>
=C2=A0* Clock time: 1563463644<br>
=C2=A0* 318B08B time: 1563463644<br>
Comparison #2<br>
=C2=A0* Clock time: 1563463652<br>
=C2=A0* 318B08B time: 1563463652<br>
Comparison #3<br>
=C2=A0* Clock time: 1563463657<br>
=C2=A0* 318B08B time: 1563463657<br>
Comparison #4<br>
=C2=A0* Clock time: 1563463664<br>
=C2=A0* 318B08B time: 1563463664<br>
Comparison #5<br>
=C2=A0* Clock time: 1563463666<br>
=C2=A0* 318B08B time: 1563463666<br>
Comparison #6<br>
=C2=A0* Clock time: 1563463671<br>
=C2=A0* 318B08B time: 1563463671<br>
Comparison #7<br>
=C2=A0* Clock time: 1563463676<br>
=C2=A0* 318B08B time: 1563463676<br>
Comparison #8<br>
=C2=A0* Clock time: 1563463686<br>
=C2=A0* 318B08B time: 1563463686<br>
Comparison #9<br>
=C2=A0* Clock time: 1563463689<br>
=C2=A0* 318B08B time: 1563463689<br>
Comparison #10<br>
=C2=A0* Clock time: 1563463691<br>
=C2=A0* 318B08B time: 1563463691<br>
<br>
Number of matches: 10/10</div>
<br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>7) we ran the same tests at a sister site that has four E320s, and th=
ey all exhibited the same issues</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
8)Finally, a uhd_usrp_probe command returns this:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><br>
</span>
<div>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);=
 Boost_105300; UHD_3.14.1.0-9-g2aa5289d<br>
</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.3,type=3De3xx,product=3De320,serial=3D318B08B,claimed=3DFals=
e,addr=3D192.168.10.3<br>
</div>
<div>[WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked. MB_C=
LOCK_CTRL reg: 0x00000002<br>
</div>
<div>... many of these warnings repeating ...<br>
</div>
<div>[WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked. MB_C=
LOCK_CTRL reg: 0x00000002<br>
</div>
<div>[WARNING] [MPM.RPCServer] A timeout event occured!<br>
</div>
<div>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1324 MB/s)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1322 MB/s)<br>
</div>
<div>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003=
320)<br>
</div>
<div>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
0)<br>
</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `product=3De=
320,mgmt_addr=3D192.168.10.3&#39;.<br>
</div>
<div>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C000000000000=
2)<br>
</div>
<div>[INFO] [0/Radio_0] Performing CODEC loopback test... <br>
</div>
<div>[INFO] [0/Radio_0] CODEC loopback test passed<br>
</div>
<div>[INFO] [0/Radio_0] Performing CODEC loopback test... <br>
</div>
<div>[INFO] [0/Radio_0] CODEC loopback test passed<br>
</div>
<div>=C2=A0 _____________________________________________________<br>
</div>
<div>=C2=A0/<br>
</div>
<div>| =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>
</div>
<div>| =C2=A0 =C2=A0 _____________________________________________________<=
br>
</div>
<div>| =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e320-318B08B<br>
</div>
<div>| =C2=A0 | =C2=A0 eeprom_version: 2<br>
</div>
<div>| =C2=A0 | =C2=A0 mpm_version: 3.14.0.0-g6875d061<br>
</div>
<div>| =C2=A0 | =C2=A0 pid: 58144<br>
</div>
<div>| =C2=A0 | =C2=A0 product: e320<br>
</div>
<div>| =C2=A0 | =C2=A0 rev: 2<br>
</div>
<div>| =C2=A0 | =C2=A0 rpc_connection: remote<br>
</div>
<div>| =C2=A0 | =C2=A0 serial: 318B08B<br>
</div>
<div>| =C2=A0 | =C2=A0 type: e3xx<br>
</div>
<div>| =C2=A0 | =C2=A0 MPM Version: 1.2<br>
</div>
<div>| =C2=A0 | =C2=A0 FPGA Version: 3.1<br>
</div>
<div>| =C2=A0 | =C2=A0 FPGA git hash: e39334f.clean<br>
</div>
<div>| =C2=A0 | =C2=A0 RFNoC capable: Yes<br>
</div>
<div>| =C2=A0 | =C2=A0 <br>
</div>
<div>| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>
</div>
<div>| =C2=A0 | =C2=A0 Clock sources: external, internal, gpsdo<br>
</div>
<div>| =C2=A0 | =C2=A0 Sensors: gps_sky, gps_locked, temp_rf_channelA, temp=
_rf_channelB, temp_internal, fan, temp_main_power, ref_locked, gps_gpgga, t=
emp_fpga, gps_tpv, gps_time<br>
</div>
<div>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>
</div>
<div>| =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: A<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________________________________=
_________________<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Neon<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_tempera=
ture, rssi, lo_lock<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz=
<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________________________________=
_________________<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Neon<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_tempera=
ture, rssi, lo_lock<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz=
<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________________________________=
_________________<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: A<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9361 Dual ADC<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
</div>
<div>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>
</div>
<div>| =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: A<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________________________________=
_________________<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Neon<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_tempera=
ture<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz=
<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________________________________=
_________________<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: Neon<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_tempera=
ture<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz=
<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________________________________=
_________________<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: A<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9361 Dual DAC<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>
</div>
<div>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>
</div>
<div>| =C2=A0 | =C2=A0 =C2=A0/<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:<=
br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 <br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 * DmaFIFO_0<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 * Radio_0<br>
</div>
<div>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>
</div>
<span>| =C2=A0 | =C2=A0 | =C2=A0 * DUC_0</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span>We&#39;ve spent about 2 weeks on this and tried every combo of things=
 we could think of and everything works on our other Ettus devices, but the=
 E320 just doesn&#39;t seem to play nice at all.=C2=A0 Are there any though=
ts on what the issue is (my gut is saying a configuration
 in UHD).</span></div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000beb4c3058df9e81c--


--===============3392388463227110624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3392388463227110624==--

