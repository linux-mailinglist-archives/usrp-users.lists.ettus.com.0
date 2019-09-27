Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E24C0950
	for <lists+usrp-users@lfdr.de>; Fri, 27 Sep 2019 18:14:41 +0200 (CEST)
Received: from [::1] (port=43634 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDst9-0004Ui-JB; Fri, 27 Sep 2019 12:14:35 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:35398)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iDst5-0004M6-Jg
 for usrp-users@lists.ettus.com; Fri, 27 Sep 2019 12:14:31 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 DD86E66A3D
 for <usrp-users@lists.ettus.com>; Fri, 27 Sep 2019 16:13:50 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2055.outbound.protection.outlook.com [104.47.49.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 56408180068;
 Fri, 27 Sep 2019 16:13:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fblvrwt8ayQHfYRX+35ZNNQ4RZeQw+/wM0vVJ85akIBAVarg1QI4g98T9Qgje7eRBVIl1Zmj3U61310UfYWEXtNDtC4edVEekNMyvuFubQKHGsFGjM/u9CS0b+lGm3ysOKMzfbF244dk6amR6fesEigqa0svVRe3lWOM2Ysvp2GyEdRn16/kIlVlGAuE52/k1IKuNzwwzfHCcNcgG+PjhEMzM/ptSolm91MqqArlFDG7JR/4BTugk5e5vqqm29HgBrB2GCYYEJdgqc5kandBc7dgE+cnhwIjSG1e8FOyKllmwg1y85NBsJMVmsJRB/Jy/T9JA3EvIniucrP1ZGuwxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8P7iTEGWtlY8q6gK/BS/YjgWUrfkhS1Zr4p9t0JQDNM=;
 b=NPPGRB0RukARKmkBqeCPGAVudEHA4lvNPlq/l93585q56h4wzxQfgqjhUoikH/LTSjn2z7I5fadE0VVkWQJX4Qm0Y7JcxFZCoUHyCrSZiVa5cDkKRYlHtczB2QVQ//yvVJ+rh6Bdj7hRilI6mVO/rY/8eliVFevmkXwBiRn8dOaxiHT1X4E7vNcdyDDfRhJQ+wYCfVmA3dP3Ih/yquOibEZvnIexo3mlQDg4Z/oK65ALmYIpKxZlHrVHZE/8PLZcuJEREPwTaCEfYALpdhWSYYlidsrJrTu3bFx/TwKVKbHAUTz7qSf9smj7A49soLcwU1Wq9eBI2aWqsiVy3DOsiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8P7iTEGWtlY8q6gK/BS/YjgWUrfkhS1Zr4p9t0JQDNM=;
 b=plC+BdkDxOX5WpySRBt7P8+TblWBJP0aMHJccQxibrKgpASaX3UYBSW642cZ0C6nfDVbFEA/zZ3bpotv0mFwLzdmxEVsfgdNYuvFWpJbbWIz/yXtzDDib9Zzm+Auxj3K6EeMrCuhvY0U8O8XgBy9wAu9nZQ5SBEKWckLjx6bS4U=
Received: from SN1PR12MB2351.namprd12.prod.outlook.com (52.132.194.32) by
 SN1PR12MB2574.namprd12.prod.outlook.com (52.132.197.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 27 Sep 2019 16:13:34 +0000
Received: from SN1PR12MB2351.namprd12.prod.outlook.com
 ([fe80::f51d:e3b0:ee77:5698]) by SN1PR12MB2351.namprd12.prod.outlook.com
 ([fe80::f51d:e3b0:ee77:5698%7]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 16:13:34 +0000
To: Nate Temple <nate.temple@ettus.com>
Thread-Topic: [USRP-users] E320 unable to lock to external reference
Thread-Index: AQHVPZ4a1prFhzOMsUe0PLo1OZSPBabQyLEAgAevk3mAAA3sgIAAARf3gAAWJwCAFIXSgIABT6YNgEaj5ICACwqm8g==
Date: Fri, 27 Sep 2019 16:13:33 +0000
Message-ID: <SN1PR12MB2351689BB63DA50C1BC4E1D3AF810@SN1PR12MB2351.namprd12.prod.outlook.com>
References: <BL0PR12MB2340A36ACFF70A71CE10D1D9AFC80@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263izNAB-Zjz2cDHX1EH1qBNS33ZBXGVaMc_vM21eRXn3sYw@mail.gmail.com>
 <DM5PR12MB2342C970260E73902571E6B4AFC70@DM5PR12MB2342.namprd12.prod.outlook.com>
 <CAL263ixzRvFaBYVvxq4xr1NhcL4PGoMEKoxVR0oAEoH4U7GzJg@mail.gmail.com>
 <DM5PR12MB2342BBE23714358C4C5DEE15AFC70@DM5PR12MB2342.namprd12.prod.outlook.com>
 <CAL263ixeKQoEKVYc895Tw-HQ57uC79azL-xntv+0nSWC_60Wqg@mail.gmail.com>
 <CAM4xKrpUjzK8_a08JGfd8c-Fh5L+Y0CZohvp2ezMwnf6r7ygNw@mail.gmail.com>
 <BL0PR12MB234068D0CBF5F4F90A65D726AFD50@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAL263izptQwsQ0teB90Cu1pJDt=S=VnE4V5njRihBjiyMGHjRw@mail.gmail.com>
In-Reply-To: <CAL263izptQwsQ0teB90Cu1pJDt=S=VnE4V5njRihBjiyMGHjRw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f82c23d-151f-4a6d-ead8-08d74365a563
x-ms-traffictypediagnostic: SN1PR12MB2574:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <SN1PR12MB25744C6DE022E99871442A6FAF810@SN1PR12MB2574.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(136003)(376002)(366004)(346002)(51914003)(189003)(199004)(55674003)(26005)(14454004)(2906002)(5070765005)(30864003)(6116002)(3846002)(25786009)(6916009)(102836004)(8676002)(6436002)(81166006)(81156014)(186003)(4326008)(71200400001)(71190400001)(105004)(19627405001)(52536014)(76176011)(486006)(6246003)(33656002)(99286004)(5660300002)(14444005)(446003)(11346002)(606006)(316002)(508600001)(966005)(256004)(66066001)(476003)(76116006)(8936002)(66446008)(53546011)(66946007)(55016002)(66556008)(54906003)(64756008)(66476007)(6506007)(229853002)(86362001)(54896002)(9686003)(236005)(6306002)(7696005)(74316002)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN1PR12MB2574;
 H:SN1PR12MB2351.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S17O9pSwRUZRDvjcXdW4BR/DHXg/65A8Zncf/UIcBTtaS54J2Cjc/JOcthnCpwlBFYmR0wn1oBDCHZmz93kgdgm9iVTpa1bdADcDeLpJkZFVF5qY4To+IKhj5Cctb9fXbRhmGySwg1H6d0Bpk2zGSeKClrA8ITqjZ0wfatZf1QHVqftUMYniLmUFUhyKEhq3JGbRoLQZwtNtBDejv7DU7fni8Q4Wx2X7IcXilWJsNIYxSEMhf1HmZe9XCdx+zsEAvWqB3BUKLJbyCX403e4Qt/8ZuI6PStTUZHl+UMiGMShBjVlkr14ruZshKRlXoQWZJDRoQ6su/GrmGiMoWELsJbiztqWrVOwt8S8Asg5Fy0rwAp5wPhjmHLylHQgU2cjSpip3wetNXUrfhsvF49vaAHCuKajvzp59M3xyb1dDcj1Gs9eyNoWMw1drjKgvqKDUYSgoKCGSrx1Mb4yBtWH1nw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f82c23d-151f-4a6d-ead8-08d74365a563
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 16:13:33.9502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NhtwdKnzUyRAW56//sKJSEjKRj+ty9Kdtg2ydw9JuoHAGo9a/sN/oBinlYlWL9VvfPpHqD4LKFakJj4NJdIZ9oKSj7TB9sL1piu+OotaUA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2574
X-MDID: 1569600817-2IG4kixjDMRT
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4025982940695320105=="
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

--===============4025982940695320105==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN1PR12MB2351689BB63DA50C1BC4E1D3AF810SN1PR12MB2351namp_"

--_000_SN1PR12MB2351689BB63DA50C1BC4E1D3AF810SN1PR12MB2351namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Nate,

Thanks, this did the trick.  Edited /usr/lib/python3.5/site-packages/usrp_m=
pm/periph_manager/e320_periphs.py on the E320 with the changes and now it l=
ocks perfectly (tested only in network mode).  Thanks for finding this and =
pushing it out!

________________________________
From: Nate Temple <nate.temple@ettus.com>
Sent: Friday, September 20, 2019 11:35 AM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Michael West <michael.west@ettus.com>; USRP-users@lists.ettus.com <usrp=
-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 unable to lock to external reference

Hi Jason,

Here is the commit that fixes the e320 ext ref issue.

https://github.com/EttusResearch/uhd/commit/6a11a141b8d32d1919e8f9fe95d5c65=
e95ddd03b<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_uhd_commit_6a11a141b8d32d1919e8f9fe95d5c65e95ddd03b&d=3DDwMF=
aQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&m=3DoDWTo8cej6KVST5c3HkT_yu6SjSnRet18xpZplUwqrg&s=
=3DSO-yC3_q1F1ocW5fw-9aqYxfXxQJJca7O-LppAJRY_4&e=3D>

We are aiming to have 3.14.1.1 tagged and released next week which will inc=
lude this commit.

Regards,
Nate Temple


On Tue, Aug 6, 2019, 11:51 AM Jason Matusiak <jason@gardettoengineering.com=
<mailto:jason@gardettoengineering.com>> wrote:
Thanks for the update Michael, I'll pass it along.  Fingers crossed.

________________________________
From: Michael West <michael.west@ettus.com<mailto:michael.west@ettus.com>>
Sent: Monday, August 5, 2019 4:49 PM
To: Nate Temple <nate.temple@ettus.com<mailto:nate.temple@ettus.com>>
Cc: Jason Matusiak <jason@gardettoengineering.com<mailto:jason@gardettoengi=
neering.com>>; Ettus Mail List <usrp-users@lists.ettus.com<mailto:usrp-user=
s@lists.ettus.com>>
Subject: Re: [USRP-users] E320 unable to lock to external reference

We have someone looking into this now.  In the meantime, try adding the dev=
ice arguments "clock_source=3Dexternal,time_source=3Dexternal".

Regards,
Michael

On Tue, Jul 23, 2019 at 12:23 PM Nate Temple via USRP-users <usrp-users@lis=
ts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi Jason,

I'm fairly confident that this is just a software issue.

Regards,
Nate Temple

On Tue, Jul 23, 2019 at 11:06 AM Jason Matusiak <jason@gardettoengineering.=
com<mailto:jason@gardettoengineering.com>> wrote:
Thank you Nate.  Good to hear that it wasn't a screw up on our part.  Do yo=
u have a gut as to whether or not it is a hardware or software issue?


________________________________
From: Nate Temple <nate.temple@ettus.com<mailto:nate.temple@ettus.com>>
Sent: Tuesday, July 23, 2019 2:01 PM
To: Jason Matusiak <jason@gardettoengineering.com<mailto:jason@gardettoengi=
neering.com>>
Cc: Ettus Mail List <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ett=
us.com>>
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
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DoDWT=
o8cej6KVST5c3HkT_yu6SjSnRet18xpZplUwqrg&s=3DO5Dci45GVgkh7JZXssPgybuIrUvmDE2=
JjdWhUQf_7m8&e=3D>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DoDWT=
o8cej6KVST5c3HkT_yu6SjSnRet18xpZplUwqrg&s=3DO5Dci45GVgkh7JZXssPgybuIrUvmDE2=
JjdWhUQf_7m8&e=3D>

--_000_SN1PR12MB2351689BB63DA50C1BC4E1D3AF810SN1PR12MB2351namp_
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
Nate,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks, this did the trick.&nbsp; Edited&nbsp;/usr/lib/python3.5/site-packa=
ges/usrp_mpm/periph_manager/e320_periphs.py on the E320 with the changes an=
d now it locks perfectly (tested only in network mode).&nbsp; Thanks for fi=
nding this and pushing it out!</div>
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
<b>Sent:</b> Friday, September 20, 2019 11:35 AM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> Michael West &lt;michael.west@ettus.com&gt;; USRP-users@lists.et=
tus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] E320 unable to lock to external reference<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Hi Jason,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Here is the commit that fixes the e320 ext ref issue.</di=
v>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dh=
ttps-3A__github.com_EttusResearch_uhd_commit_6a11a141b8d32d1919e8f9fe95d5c6=
5e95ddd03b&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfii=
MM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DoDWTo8cej6KV=
ST5c3HkT_yu6SjSnRet18xpZplUwqrg&amp;s=3DSO-yC3_q1F1ocW5fw-9aqYxfXxQJJca7O-L=
ppAJRY_4&amp;e=3D">https://github.com/EttusResearch/uhd/commit/6a11a141b8d3=
2d1919e8f9fe95d5c65e95ddd03b</a><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">We are aiming to have 3.14.1.1 tagged and released next w=
eek which will include this commit.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Regards,&nbsp;</div>
<div dir=3D"auto">Nate Temple&nbsp;</div>
<div dir=3D"auto"><br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Aug 6, 2019, 11:51 AM Jason=
 Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@gardet=
toengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks for the update Michael, I'll pass it along.&nbsp; Fingers crossed.</=
div>
<div id=3D"x_m_6896534045122148029Signature">
<div>
<div id=3D"x_m_6896534045122148029appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_6896534045122148029divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
> Michael West &lt;<a href=3D"mailto:michael.west@ettus.com" target=3D"_bla=
nk" rel=3D"noreferrer">michael.west@ettus.com</a>&gt;<br>
<b>Sent:</b> Monday, August 5, 2019 4:49 PM<br>
<b>To:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=
=3D"_blank" rel=3D"noreferrer">nate.temple@ettus.com</a>&gt;<br>
<b>Cc:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank" rel=3D"noreferrer">jason@gardettoengineering.com</a>&=
gt;; Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] E320 unable to lock to external reference<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>We have someone looking into this now.&nbsp; In the meantime, try addi=
ng the device arguments &quot;clock_source=3Dexternal,time_source=3Dexterna=
l&quot;.</div>
<div><br>
</div>
<div>Regards,</div>
<div>Michael<br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, Jul 23, 2019 at 12:23 PM Nate Temple via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:arial,helvetica,sans-serif">Hi Jason,<br>
<br>
I'm fairly confident that this is just a software issue. <br>
<br>
Regards,<br>
Nate Temple </div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, Jul 23, 2019 at 11:06 AM Jason Matusiak &lt;<a hre=
f=3D"mailto:jason@gardettoengineering.com" target=3D"_blank" rel=3D"norefer=
rer">jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you Nate.&nbsp; Good to hear that it wasn't a screw up on our part.&n=
bsp; Do you have a gut as to whether or not it is a hardware or software is=
sue?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_m_6896534045122148029x_gmail-m_6384590220792070774gmail-m_2403=
598799263526951Signature">
<div>
<div id=3D"x_m_6896534045122148029x_gmail-m_6384590220792070774gmail-m_2403=
598799263526951appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_6896534045122148029x_gmail-m_6384590220792070774gmail-m_2403=
598799263526951divRplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">nate.temple@ettus.com</a>&gt;<br>
<b>Sent:</b> Tuesday, July 23, 2019 2:01 PM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank" rel=3D"noreferrer">jason@gardettoengineering.com</a>&=
gt;<br>
<b>Cc:</b> Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<b=
r>
<b>Subject:</b> Re: [USRP-users] E320 unable to lock to external reference<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div style=3D"font-family:arial,helvetica,sans-serif">Hi Jason,<br>
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
<div>
<div dir=3D"ltr">On Tue, Jul 23, 2019 at 10:12 AM Jason Matusiak &lt;<a hre=
f=3D"mailto:jason@gardettoengineering.com" target=3D"_blank" rel=3D"norefer=
rer">jason@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Do you need anything from my side of things?</div>
<div id=3D"x_m_6896534045122148029x_gmail-m_6384590220792070774gmail-m_2403=
598799263526951x_gmail-m_-7976855708153759004Signature">
<div>
<div id=3D"x_m_6896534045122148029x_gmail-m_6384590220792070774gmail-m_2403=
598799263526951x_gmail-m_-7976855708153759004appendonsend">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_6896534045122148029x_gmail-m_6384590220792070774gmail-m_2403=
598799263526951x_gmail-m_-7976855708153759004divRplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">nate.temple@ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, July 18, 2019 3:49 PM<br>
<b>To:</b> Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.c=
om" target=3D"_blank" rel=3D"noreferrer">jason@gardettoengineering.com</a>&=
gt;<br>
<b>Cc:</b> Ettus Mail List &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<b=
r>
<b>Subject:</b> Re: [USRP-users] E320 unable to lock to external reference<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div style=3D"font-family:arial,helvetica,sans-serif">Hi Jason,<br>
<br>
This might be a bug with the E320. I will need to try to recreate this issu=
e. I'll follow up as soon as I have more info.<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Jul 18, 2019 at 12:32 PM Jason Matusiak via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" re=
l=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
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
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&amp;m=3DoDWTo8cej6KVST5c3HkT_yu6SjSnRet18xpZplUwqrg=
&amp;s=3DO5Dci45GVgkh7JZXssPgybuIrUvmDE2JjdWhUQf_7m8&amp;e=3D" rel=3D"noref=
errer noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com</a><br>
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
</div>
</blockquote>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&amp;m=3DoDWTo8cej6KVST5c3HkT_yu6SjSnRet18xpZplUwqrg=
&amp;s=3DO5Dci45GVgkh7JZXssPgybuIrUvmDE2JjdWhUQf_7m8&amp;e=3D" rel=3D"noref=
errer noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com</a><br>
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

--_000_SN1PR12MB2351689BB63DA50C1BC4E1D3AF810SN1PR12MB2351namp_--


--===============4025982940695320105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4025982940695320105==--

