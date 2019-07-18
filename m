Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 399546D4C7
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 21:32:53 +0200 (CEST)
Received: from [::1] (port=50242 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoC95-00066p-Nr; Thu, 18 Jul 2019 15:32:51 -0400
Received: from otransport-18.outbound.emailsrv.net ([52.5.166.138]:51139)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hoC91-00060K-KS
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 15:32:47 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-18.outbound.emailsrv.net (Postfix) with ESMTPS id 51C0D617C0
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 19:32:07 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2054.outbound.protection.outlook.com [104.47.38.54])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 13F52A3C25
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 19:32:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWpsodnl3tzNJhdHdfQsiYHhzyBlnjiLj3Jt60jwK0SrDw9TJfIBM3Isn3P2NjmiM+BDsxL8DKshVBOwPlTRRaWnuK34XIIEzkhTu1y9aa0nuxsx/mE4gDN3vwRJg33/diWMvCGM1esWaQAvPVNEKpx0dKCFbKzplgU67BjuBx0WzXY6CWNrvxr/ePKyUdV2qX4XVru91vkmtTvHU5W6LhvIGKpfYRB+LSn2R1dIYhRjRZ+i7Ingle6F/WhAlgXw1YgSSzji8+YQAcy7GJnuuAFuo/qUVzQcRYr7VeqJAhKhNn9oez5sKi8UHOb4jJILt/EJ7cHQD28T3o+QeIbHmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kn1GWmPoNGRUIqO/eXXIsmEwxx0LdPMGBfQG2eqWiv0=;
 b=T67fDJSJ7aupPyiUPpkqLkwlloOSGWm3undgW0kp6jXLxOz7kb6X62LvzxQdOI0ppXzTFjSs+dVhPQyGWALudS1d3dOGiWGVo3TUyo0zGygSywda6F7pjbLGiFi2aCfi+Fp4gkZ0PrlhRS5vT6byus54i/0vgVm0NSW5dZnj035QA+PS+RScLBn/KQRPJ66Glkqooj3Kb4uU4ZZAj8cCLWCcOwjj0yCAF1/w0vm9/q6/XxlJjMqtCXpsvEdlNPFZellOvlySzcAyK/3qvQF8oOKUBuPU3Ky7pOq2s/E7kPuMrnECQSsGFR2EDda7VssAAe6+2J+i2jTEGv7sb6mvlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kn1GWmPoNGRUIqO/eXXIsmEwxx0LdPMGBfQG2eqWiv0=;
 b=RibAJW5FLq1fXGRUxx6CikPGTPU/Tk+6dCiM5kvdWPJlqBKOLLhroPq7ZLhFejP/SKYurE/SmrhUoUNqq+Q7m5JrGTopc1s1KNBtGlXI38iA99Cj9x0Upy2VOwGu/WIOZjMFJe8AoajWHO/kEM+Dz8OhfmIw3TnYt6ouiy37iGI=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2579.namprd12.prod.outlook.com (52.132.27.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 19:32:03 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::1c8e:a892:16c:fc07%6]) with mapi id 15.20.2094.013; Thu, 18 Jul 2019
 19:32:03 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: E320 unable to lock to external reference
Thread-Index: AQHVPZ4a1prFhzOMsUe0PLo1OZSPBQ==
Date: Thu, 18 Jul 2019 19:32:03 +0000
Message-ID: <BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76df576a-7c78-49f5-1446-08d70bb69ccf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2579; 
x-ms-traffictypediagnostic: BL0PR12MB2579:
x-microsoft-antispam-prvs: <BL0PR12MB2579A7C0D9879B446C408060AFC80@BL0PR12MB2579.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(366004)(346002)(376002)(136003)(199004)(189003)(71200400001)(71190400001)(8936002)(68736007)(6116002)(3846002)(8676002)(6436002)(52536014)(2906002)(25786009)(81166006)(86362001)(486006)(81156014)(186003)(19627405001)(105004)(14454004)(66066001)(26005)(74316002)(6916009)(5660300002)(55016002)(99286004)(256004)(54896002)(6506007)(476003)(102836004)(14444005)(9686003)(316002)(7696005)(53936002)(33656002)(7736002)(508600001)(66946007)(76116006)(66556008)(64756008)(66446008)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2579;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W1C4YHEM9SCmcB6V5NihBv759Vvr5WkeK3ddZXKJwZUIjFr7o+/NL9MeOSuUp6hsbD72cGtQsHdvv028DExAExsNcQS8jywwGA5BKYQNqsZcE8StxyWXvmgDUpoM8toj/mdGIJ5jOwKjtlusyUBVA/HORIFAMtQDQxtBe47V/ttnAyjhHhVsX0j2cCzaU1FjYzTiagCd+TRHp7yGGvQHCCbti5GE1nuiaOFqdI6ostVAW9JegNB/B6IkxgZfauJM/DWdDq5P5/SnR8yZhTaP+I6tSqcDTI3PSVvAdVzW31mCJq1BUa+FoSmCASEVe6ZrOGHHoJDj+9k9tcJOSDjL1WEI1V+GcQtJeZN9p1sGn15NRZXc3TQO7PLgcECsLDNfrMbCBiIqqbVtmMNLSYjBnZ/cYLiNgI5dUeLlJkDveiY=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76df576a-7c78-49f5-1446-08d70bb69ccf
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 19:32:03.8075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2579
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bl2nam02lp2054.outbound.protection.outlook.com|104.47.38.54|NAM02-BL2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.38.54, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: 7fa248c5-2339-41e6-9de2-91d07468d7b1
Subject: [USRP-users] E320 unable to lock to external reference
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============6538974168655741824=="
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

--===============6538974168655741824==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80BL0PR12MB2340namp_"

--_000_BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, we've been fighting this for a while and we think we narrowed it down t=
o being a problem with the E320 (NOTE: we are running the E320 in network m=
ode, not embedded)

Some background:
1) external reference input is from an octo clock (so it the 1pps input) on=
 many different ports
        a) also tried to use a  Symmetricom box for external reference and =
had the same problems

3) the same code we are testing with works when using an x310 instead of an=
 e320, with inputs from the same octoclock

4) the code basically does this:
        a) sets the reference source to external
        b) checks to see if the reference is locked (and it keeps doing thi=
s until we get a "locked" response, using the uhd commands to do this)

5) for the e320, the locked status never returns (when running the x310 wit=
h this code, it sometimes responds with unlocked, but after a few checks it=
 comes back ok)

6) I tried some of the Ettus (UHD) test code
        a) running the "sync_to_gps" program did work - the reference was a=
ble to lock to the internal (gps) reference
        b) "test_clock_synch"  returns similiar errors to what we get with =
our program (see below):
Checking USRP devices for lock.
 * 318B08B: false
WARNING: One or more devices not locked.
Querying Clock for time and setting USRP times...
[WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked. MB_CLOCK_=
CTRL reg: 0x00000002
Running 10 comparisons at random intervals.
Comparison #1
 * Clock time: 1563463644
 * 318B08B time: 1563463644
Comparison #2
 * Clock time: 1563463652
 * 318B08B time: 1563463652
Comparison #3
 * Clock time: 1563463657
 * 318B08B time: 1563463657
Comparison #4
 * Clock time: 1563463664
 * 318B08B time: 1563463664
Comparison #5
 * Clock time: 1563463666
 * 318B08B time: 1563463666
Comparison #6
 * Clock time: 1563463671
 * 318B08B time: 1563463671
Comparison #7
 * Clock time: 1563463676
 * 318B08B time: 1563463676
Comparison #8
 * Clock time: 1563463686
 * 318B08B time: 1563463686
Comparison #9
 * Clock time: 1563463689
 * 318B08B time: 1563463689
Comparison #10
 * Clock time: 1563463691
 * 318B08B time: 1563463691

Number of matches: 10/10


7) we ran the same tests at a sister site that has four E320s, and they all=
 exhibited the same issues

8)Finally, a uhd_usrp_probe command returns this:

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); Boos=
t_105300; UHD_3.14.1.0-9-g2aa5289d
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.3,type=3De3xx,product=3De320,serial=3D318B08B,claimed=3DFalse,add=
r=3D192.168.10.3
[WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked. MB_CLOCK_=
CTRL reg: 0x00000002
... many of these warnings repeating ...
[WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked. MB_CLOCK_=
CTRL reg: 0x00000002
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1324 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1322 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003320)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [MPM.PeriphManager] init() called with device args `product=3De320,m=
gmt_addr=3D192.168.10.3'.
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/Radio_0] Performing CODEC loopback test...
[INFO] [0/Radio_0] CODEC loopback test passed
[INFO] [0/Radio_0] Performing CODEC loopback test...
[INFO] [0/Radio_0] CODEC loopback test passed
  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e320-318B08B
|   |   eeprom_version: 2
|   |   mpm_version: 3.14.0.0-g6875d061
|   |   pid: 58144
|   |   product: e320
|   |   rev: 2
|   |   rpc_connection: remote
|   |   serial: 318B08B
|   |   type: e3xx
|   |   MPM Version: 1.2
|   |   FPGA Version: 3.1
|   |   FPGA git hash: e39334f.clean
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: gps_sky, gps_locked, temp_rf_channelA, temp_rf_channelB, t=
emp_internal, fan, temp_main_power, ref_locked, gps_gpgga, temp_fpga, gps_t=
pv, gps_time
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: Neon
|   |   |   |   Antennas: RX2, TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
|   |   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: Neon
|   |   |   |   Antennas: RX2, TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
|   |   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: AD9361 Dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Neon
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature
|   |   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 1
|   |   |   |   Name: Neon
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, ad9361_temperature
|   |   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: AD9361 Dual DAC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * DmaFIFO_0
|   |   |   * Radio_0
|   |   |   * DDC_0
|   |   |   * DUC_0


We've spent about 2 weeks on this and tried every combo of things we could =
think of and everything works on our other Ettus devices, but the E320 just=
 doesn't seem to play nice at all.  Are there any thoughts on what the issu=
e is (my gut is saying a configuration in UHD).

--_000_BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
OK, we've been fighting this for a while and we think we narrowed it down t=
o being a problem with the E320 (NOTE: we are running the E320 in network m=
ode, not embedded)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Some background:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>1) external reference input is from an octo clock (so it the 1pps inp=
ut) on many different ports</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">&nbsp; &nbsp; &nbsp; &nbsp; a) also tried to=
 use a&nbsp; Symmetricom box for external reference and had the same proble=
ms</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div><br>
</div>
<div>3) the same code we are testing with works when using an x310 instead =
of an e320, with inputs from the same octoclock</div>
<div><br>
</div>
<div>4) the code basically does this:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; a) sets the reference source to external</=
div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; b) checks to see if the reference is locke=
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
<div>&nbsp; &nbsp; &nbsp; &nbsp; a) running the &quot;sync_to_gps&quot; pro=
gram did work - the reference was able to lock to the internal (gps) refere=
nce</div>
<span>&nbsp; &nbsp; &nbsp; &nbsp; b) &quot;test_clock_synch&quot; &nbsp;ret=
urns similiar errors to what we get with our program (see below):</span><br=
>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span style=3D"font-family: Calibri, Helvetica, sans-serif; backgroun=
d-color: rgb(255, 255, 255); display: inline !important">Checking USRP devi=
ces for lock.</span><br style=3D"font-family: Calibri, Helvetica, sans-seri=
f; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important">&nbsp;* 318B08B: false</=
span><br style=3D"font-family: Calibri, Helvetica, sans-serif; background-c=
olor: rgb(255, 255, 255)">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important">WARNING: One or more dev=
ices not locked.</span><br style=3D"font-family: Calibri, Helvetica, sans-s=
erif; background-color: rgb(255, 255, 255)">
<div style=3D"margin: 0px; font-family: Calibri, Helvetica, sans-serif; bac=
kground-color: rgb(255, 255, 255)">
Querying Clock for time and setting USRP times...<br>
[WARNING] [MPM.PeriphManager] Reference Clock reporting unlocked. MB_CLOCK_=
CTRL reg: 0x00000002<br>
Running 10 comparisons at random intervals.<br>
Comparison #1<br>
&nbsp;* Clock time: 1563463644<br>
&nbsp;* 318B08B time: 1563463644<br>
Comparison #2<br>
&nbsp;* Clock time: 1563463652<br>
&nbsp;* 318B08B time: 1563463652<br>
Comparison #3<br>
&nbsp;* Clock time: 1563463657<br>
&nbsp;* 318B08B time: 1563463657<br>
Comparison #4<br>
&nbsp;* Clock time: 1563463664<br>
&nbsp;* 318B08B time: 1563463664<br>
Comparison #5<br>
&nbsp;* Clock time: 1563463666<br>
&nbsp;* 318B08B time: 1563463666<br>
Comparison #6<br>
&nbsp;* Clock time: 1563463671<br>
&nbsp;* 318B08B time: 1563463671<br>
Comparison #7<br>
&nbsp;* Clock time: 1563463676<br>
&nbsp;* 318B08B time: 1563463676<br>
Comparison #8<br>
&nbsp;* Clock time: 1563463686<br>
&nbsp;* 318B08B time: 1563463686<br>
Comparison #9<br>
&nbsp;* Clock time: 1563463689<br>
&nbsp;* 318B08B time: 1563463689<br>
Comparison #10<br>
&nbsp;* Clock time: 1563463691<br>
&nbsp;* 318B08B time: 1563463691<br>
<br>
Number of matches: 10/10</div>
<br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>7) we ran the same tests at a sister site that has four E320s, and th=
ey all exhibited the same issues</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
8)Finally, a uhd_usrp_probe command returns this:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20150623 (Red Hat 4.=
8.5-36); Boost_105300; UHD_3.14.1.0-9-g2aa5289d<br>
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
320,mgmt_addr=3D192.168.10.3'.<br>
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
<div>&nbsp; _____________________________________________________<br>
</div>
<div>&nbsp;/<br>
</div>
<div>| &nbsp; &nbsp; &nbsp; Device: E300-Series Device<br>
</div>
<div>| &nbsp; &nbsp; _____________________________________________________<=
br>
</div>
<div>| &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; Mboard: ni-e320-318B08B<br>
</div>
<div>| &nbsp; | &nbsp; eeprom_version: 2<br>
</div>
<div>| &nbsp; | &nbsp; mpm_version: 3.14.0.0-g6875d061<br>
</div>
<div>| &nbsp; | &nbsp; pid: 58144<br>
</div>
<div>| &nbsp; | &nbsp; product: e320<br>
</div>
<div>| &nbsp; | &nbsp; rev: 2<br>
</div>
<div>| &nbsp; | &nbsp; rpc_connection: remote<br>
</div>
<div>| &nbsp; | &nbsp; serial: 318B08B<br>
</div>
<div>| &nbsp; | &nbsp; type: e3xx<br>
</div>
<div>| &nbsp; | &nbsp; MPM Version: 1.2<br>
</div>
<div>| &nbsp; | &nbsp; FPGA Version: 3.1<br>
</div>
<div>| &nbsp; | &nbsp; FPGA git hash: e39334f.clean<br>
</div>
<div>| &nbsp; | &nbsp; RFNoC capable: Yes<br>
</div>
<div>| &nbsp; | &nbsp; <br>
</div>
<div>| &nbsp; | &nbsp; Time sources: &nbsp;internal, external, gpsdo<br>
</div>
<div>| &nbsp; | &nbsp; Clock sources: external, internal, gpsdo<br>
</div>
<div>| &nbsp; | &nbsp; Sensors: gps_sky, gps_locked, temp_rf_channelA, temp=
_rf_channelB, temp_internal, fan, temp_main_power, ref_locked, gps_gpgga, t=
emp_fpga, gps_tpv, gps_time<br>
</div>
<div>| &nbsp; | &nbsp; &nbsp; _____________________________________________=
________<br>
</div>
<div>| &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: A<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Name: Neon<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Antennas: RX2, TX/RX<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, ad9361_tempera=
ture, rssi, lo_lock<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Freq range: 70.000 to 6000.000 MHz=
<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 1<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Name: Neon<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Antennas: RX2, TX/RX<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, ad9361_tempera=
ture, rssi, lo_lock<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Freq range: 70.000 to 6000.000 MHz=
<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 76.0 step 1=
.0 dB<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Codec: A<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Name: AD9361 Dual ADC<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Gain Elements: None<br>
</div>
<div>| &nbsp; | &nbsp; &nbsp; _____________________________________________=
________<br>
</div>
<div>| &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: A<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Name: Neon<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, ad9361_tempera=
ture<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Freq range: 47.000 to 6000.000 MHz=
<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 1<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Name: Neon<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, ad9361_tempera=
ture<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Freq range: 47.000 to 6000.000 MHz=
<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 89.8 step 0=
.2 dB<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 400=
00000.0 step 0.0 Hz<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; ____________________________________=
_________________<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Codec: A<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Name: AD9361 Dual DAC<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; | &nbsp; Gain Elements: None<br>
</div>
<div>| &nbsp; | &nbsp; &nbsp; _____________________________________________=
________<br>
</div>
<div>| &nbsp; | &nbsp; &nbsp;/<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this device:<=
br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; <br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; * DmaFIFO_0<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; * Radio_0<br>
</div>
<div>| &nbsp; | &nbsp; | &nbsp; * DDC_0<br>
</div>
<span>| &nbsp; | &nbsp; | &nbsp; * DUC_0</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>We've spent about 2 weeks on this and tried every combo of things we =
could think of and everything works on our other Ettus devices, but the E32=
0 just doesn't seem to play nice at all.&nbsp; Are there any thoughts on wh=
at the issue is (my gut is saying a configuration
 in UHD).</span></div>
</body>
</html>

--_000_BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80BL0PR12MB2340namp_--


--===============6538974168655741824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6538974168655741824==--

