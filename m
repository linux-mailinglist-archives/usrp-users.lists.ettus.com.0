Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8AF71EB6
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 20:07:29 +0200 (CEST)
Received: from [::1] (port=42386 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpzCB-0001GH-Tt; Tue, 23 Jul 2019 14:07:27 -0400
Received: from otransport-17.outbound.emailsrv.net ([52.1.21.150]:38465)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hpzC7-0000s8-4F
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 14:07:23 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-17.outbound.emailsrv.net (Postfix) with ESMTPS id BC0CE61717;
 Tue, 23 Jul 2019 18:06:42 +0000 (UTC)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2051.outbound.protection.outlook.com [104.47.38.51])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 5E7F5A246C;
 Tue, 23 Jul 2019 18:06:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bMa2osTlwOVmRNIdLedg6Q/RN78TEyFnoWdXLK4vDLVwLwQyooQ4zbeYIuKLWeDC0kGIByyDaIu8XfUkaon0QKX8zDV23OQz3rubI/BXXnycIfvdYHbum4B0+mKcfhTVhepxyslEpPJaqBF/YGxXjpl0e0asOh5lH1mNHh0oz+yltcrr6u1+rJ7rwlwGjn4sd3HtAjI+Y8VG7ziLbm1C4zEmEfpWAIyLpz+AY/IL7pMTBKF3CLoGbYV2lh8m1Bt4ONdAiwCLlpetaLjPT+hc4w7zAMdnkjgi4Udxbib76HZsK4R8eD5xcHl9+R82UzRLcYJ7LjSZcYaYuXyoNNy2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vTiwQTNsD2IHLuNnpRkXikg6c4EoUZv8pKJ7qUjQ1gk=;
 b=UdAxzS4H3vxfW/un76D9GWFoqp2o4K1Wn2ohGU37ss+be34f8RH5A86m+n1xFr8eu3MMfzlFn6cYVIjANMT7ukvlL0vbBXrZWxho+lETLcclQx7ic0PUdKOXWWpVzwfMRX+/W2bVe1tWYWXl/8STwAMWujWWX7i+85yMv5Nuziywc/6/LVzN+u/y1U4CULByerQGxA1ym9NozRYGpWvajSL1rup/2NAhddwLtt1NwPrRqd5oDZmNiokAWNXFui3PP5bRqrfirftzCfKacK3nVIi5k8RNlXmx2FRfOI3Dnb7X9z5umDZVvUWn79Uq80ndKphLw/FyUSwihfRXfL7bpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=gardettoengineering.com;dmarc=pass action=none
 header.from=gardettoengineering.com;dkim=pass
 header.d=gardettoengineering.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vTiwQTNsD2IHLuNnpRkXikg6c4EoUZv8pKJ7qUjQ1gk=;
 b=IcjnpINqJ7QQWXYhZRvT8z5F2hVTapg+TKPpy9HHlH89iu27N2WRYEcklONQ+nexYaaSr7n1fPsCa1OSrcSU8aVMnF1P18GO7G3QrbR/ya1EK6QV4jyhF1fTh9d34i1AJIsw84MmMHZ3483BBMhHTW98BbIRvnRHQLwDpoYp094=
Received: from DM5PR12MB2342.namprd12.prod.outlook.com (52.132.140.165) by
 DM5PR12MB1946.namprd12.prod.outlook.com (10.175.90.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Tue, 23 Jul 2019 18:06:40 +0000
Received: from DM5PR12MB2342.namprd12.prod.outlook.com
 ([fe80::f9fe:7c8b:e93d:d0d]) by DM5PR12MB2342.namprd12.prod.outlook.com
 ([fe80::f9fe:7c8b:e93d:d0d%2]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 18:06:40 +0000
To: Nate Temple <nate.temple@ettus.com>
Thread-Topic: [USRP-users] E320 unable to lock to external reference
Thread-Index: AQHVPZ4a1prFhzOMsUe0PLo1OZSPBabQyLEAgAevk3mAAA3sgIAAARf3
Date: Tue, 23 Jul 2019 18:06:40 +0000
Message-ID: <DM5PR12MB2342BBE23714358C4C5DEE15AFC70@DM5PR12MB2342.namprd12.prod.outlook.com>
References: <BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263izNAB-Zjz2cDHX1EH1qBNS33ZBXGVaMc_vM21eRXn3sYw@mail.gmail.com>
 <DM5PR12MB2342C970260E73902571E6B4AFC70@DM5PR12MB2342.namprd12.prod.outlook.com>,
 <CAL263ixzRvFaBYVvxq4xr1NhcL4PGoMEKoxVR0oAEoH4U7GzJg@mail.gmail.com>
In-Reply-To: <CAL263ixzRvFaBYVvxq4xr1NhcL4PGoMEKoxVR0oAEoH4U7GzJg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02dbf896-47ca-4458-d691-08d70f988344
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR12MB1946; 
x-ms-traffictypediagnostic: DM5PR12MB1946:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM5PR12MB1946A055B0A99919EF4BE555AFC70@DM5PR12MB1946.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39830400003)(396003)(346002)(136003)(376002)(199004)(189003)(66066001)(6436002)(99286004)(3846002)(105004)(4326008)(26005)(186003)(256004)(55016002)(229853002)(6246003)(9686003)(54896002)(81156014)(508600001)(66556008)(53936002)(81166006)(8936002)(66446008)(66476007)(6116002)(33656002)(19627405001)(8676002)(236005)(7736002)(64756008)(6916009)(606006)(446003)(74316002)(11346002)(476003)(966005)(68736007)(66946007)(486006)(25786009)(71200400001)(316002)(86362001)(71190400001)(5660300002)(2906002)(14444005)(7696005)(76176011)(102836004)(6306002)(53546011)(76116006)(5070765005)(52536014)(6506007)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR12MB1946;
 H:DM5PR12MB2342.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6NX9Z77ICppOVbVXRvXVpOW1XZeSHbe/aCfyawGDDnTo8lwUnDVPYXjyDDqSaKvs2S4qaHLWtLJPuNlgjuOaEZA/NugXZ1W0gjahFgxt+gokhn6cNVrakF3Z+SloDbjpYzx5uPriAHnwmqTx0pChaRHARoUhc3MwZyXicuGUxgcuRBuD/eY1tZdYuOo7zACdyP95PYNQjitNpEMubuT4qYwX1kZ5o0m6+XbOcgvKqSgPk06aKaXCgRBWAMhmQ+vB39YahK033GZ0ICp+539zPOsX6w/xx2kGy95LG2w7ZLpnYeXZ7y2u4Dk0uBSo0Gtl4KpNXs7rl436l216dh0opdq9vWvZ8ezz7fG7ypuUcLki5PIVv9YGITc7+8EYtXyVZC0piFOHoA6vi0CVesakSEkcgRfcnMIYyLX/9F8NhC8=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02dbf896-47ca-4458-d691-08d70f988344
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 18:06:40.6197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1946
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bl2nam02lp2051.outbound.protection.outlook.com|104.47.38.51|NAM02-BL2-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: subject_50_chars clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.38.51, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-32767-c
X-Mailprotector-ID: 65499ca7-1324-4882-b77c-e754ced56986
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7202021046098436262=="
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

--===============7202021046098436262==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR12MB2342BBE23714358C4C5DEE15AFC70DM5PR12MB2342namp_"

--_000_DM5PR12MB2342BBE23714358C4C5DEE15AFC70DM5PR12MB2342namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you Nate.  Good to hear that it wasn't a screw up on our part.  Do yo=
u have a gut as to whether or not it is a hardware or software issue?


________________________________
From: Nate Temple <nate.temple@ettus.com>
Sent: Tuesday, July 23, 2019 2:01 PM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 unable to lock to external reference

Hi Jason,

I've been able to recreate this and have filed an issue on our internal bug=
 tracker and escalated as a high priority issue. I'm not able to provide an=
y ETA on when we will have a fix for it, but hope it will be soon.

I will follow up as soon as I have more information.

Regards,
Nate Temple

On Tue, Jul 23, 2019 at 10:12 AM Jason Matusiak <jason@gardettoengineering.=
com<mailto:jason@gardettoengineering.com>> wrote:
Do you need anything from my side of things?

________________________________
From: Nate Temple <nate.temple@ettus.com<mailto:nate.temple@ettus.com>>
Sent: Thursday, July 18, 2019 3:49 PM
To: Jason Matusiak <jason@gardettoengineering.com<mailto:jason@gardettoengi=
neering.com>>
Cc: Ettus Mail List <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ett=
us.com>>
Subject: Re: [USRP-users] E320 unable to lock to external reference

Hi Jason,

This might be a bug with the E320. I will need to try to recreate this issu=
e. I'll follow up as soon as I have more info.

Regards,
Nate Temple

On Thu, Jul 18, 2019 at 12:32 PM Jason Matusiak via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_DM5PR12MB2342BBE23714358C4C5DEE15AFC70DM5PR12MB2342namp_
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
Thank you Nate.&nbsp; Good to hear that it wasn't a screw up on our part.&n=
bsp; Do you have a gut as to whether or not it is a hardware or software is=
sue?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Nate Temple &lt;nate.=
temple@ettus.com&gt;<br>
<b>Sent:</b> Tuesday, July 23, 2019 2:01 PM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] E320 unable to lock to external reference<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif">Hi Jason,<br>
<br>
I've been able to recreate this and have filed an issue on our internal bug=
 tracker and escalated as a high priority issue. I'm not able to provide an=
y ETA on when we will have a fix for it, but hope it will be soon.<br>
<br>
I will follow up as soon as I have more information.<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Jul 23, 2019 at 10:12 AM Ja=
son Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@gar=
dettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Do you need anything from my side of things?</div>
<div id=3D"x_gmail-m_-7976855708153759004Signature">
<div>
<div id=3D"x_gmail-m_-7976855708153759004appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-7976855708153759004divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D=
"_blank">nate.temple@ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, July 18, 2019 3:49 PM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<b>Cc:</b> Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] E320 unable to lock to external reference<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail-m_-7976855708153759004x_gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif">
Hi Jason,<br>
<br>
This might be a bug with the E320. I will need to try to recreate this issu=
e. I'll follow up as soon as I have more info.<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"x_gmail-m_-7976855708153759004x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail-m_-7976855708153759004x_gmail_attr">On Th=
u, Jul 18, 2019 at 12:32 PM Jason Matusiak via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail-m_-7976855708153759004x_gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204); padding-l=
eft:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
OK, we've been fighting this for a while and we think we narrowed it down t=
o being a problem with the E320 (NOTE: we are running the E320 in network m=
ode, not embedded)</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Some background:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>1) external reference input is from an octo clock (so it the 1pps inp=
ut) on many different ports</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-s=
erif; font-size:12pt">&nbsp; &nbsp; &nbsp; &nbsp; a) also tried to use a&nb=
sp; Symmetricom box for external reference and had the same problems</span>=
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><span style=3D"font-family:Calibri,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline">Checking USRP devices for lock.</spa=
n><br style=3D"font-family:Calibri,Helvetica,sans-serif; background-color:r=
gb(255,255,255)">
<span style=3D"font-family:Calibri,Helvetica,sans-serif; background-color:r=
gb(255,255,255); display:inline">&nbsp;* 318B08B: false</span><br style=3D"=
font-family:Calibri,Helvetica,sans-serif; background-color:rgb(255,255,255)=
">
<span style=3D"font-family:Calibri,Helvetica,sans-serif; background-color:r=
gb(255,255,255); display:inline">WARNING: One or more devices not locked.</=
span><br style=3D"font-family:Calibri,Helvetica,sans-serif; background-colo=
r:rgb(255,255,255)">
<div style=3D"margin:0px; font-family:Calibri,Helvetica,sans-serif; backgro=
und-color:rgb(255,255,255)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>7) we ran the same tests at a sister site that has four E320s, and th=
ey all exhibited the same issues</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
8)Finally, a uhd_usrp_probe command returns this:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>We've spent about 2 weeks on this and tried every combo of things we =
could think of and everything works on our other Ettus devices, but the E32=
0 just doesn't seem to play nice at all.&nbsp; Are there any thoughts on wh=
at the issue is (my gut is saying a configuration
 in UHD).</span></div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR12MB2342BBE23714358C4C5DEE15AFC70DM5PR12MB2342namp_--


--===============7202021046098436262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7202021046098436262==--

