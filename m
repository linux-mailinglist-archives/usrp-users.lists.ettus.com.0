Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7031244DBEB
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 20:04:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3141E3843E7
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 14:04:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="R3AktPJB";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id 231773839F8
	for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 14:03:29 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.179])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 229A0280080;
	Thu, 11 Nov 2021 19:03:27 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 0378CAC0091;
	Thu, 11 Nov 2021 19:03:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZkVBdnrO6kXJxVkZApqFHejV472AxKwQp2Qu1sCrfCbARa/0hQDcNEd1Zp/pvc2Lkl8rddl8F+N5aBt0eXy3AuoNF7pG1IyDkeGv2yvyDqwN0sn7VxmoVts2eZctun0bUxlRbQ/TmawxxlXmPeDpkv9QpuRdcwQoIE5bdDzhUIDP7weL1hbM5QLa0RetA5QGGLkKmvqhfGtVX2kUoDry2Qa0xU5PIxyTjMEMWzKBQLuzLDOWxlNTLhDXLU+iHG+yNr3sJv2uh7fnOKLUDbYWAb5zUC3M5NkT8nfWixo1T1apGI2TtzTEEwmis+sl3JvuOjEwByJhFfzdxFiyJNF2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPBwVoUsNpTl8HppKJ82DKUy82co7uE4lXWnTaLswN0=;
 b=W/l7/4xisq71MV1nN1T5rlbelo3elCsZ8MzEVjgUi0RGKhFcAXC00x/1Rr14QM5GvmXSwNubevY9ItEV9XHORCzTFAcW4IaDmVHDu0iNiIuwb+YXk6qmytclCcqvevkFbaslT4t9ejL7xSpv9iTWH5cgsQ2WNpoR3y/BYzSrM7uhxqL1B4ix/MJlPB3u2BYa0pot/NiT50DVY429iREYzoCEXg9TWJ2GTj4+raotbolrz2l76Wv+vQ6YhLJBt8McqVNwlUBI2b0/bTOBObYu6wqGUq2RmcbNEQyTTEUs9WpwlzEXntR6MxbGqZVH3Ltja9QqhslQIV4+2Mb6oqVR+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uPBwVoUsNpTl8HppKJ82DKUy82co7uE4lXWnTaLswN0=;
 b=R3AktPJBfsc18w4HwkHgPacobIENJfSN6rLgWkMfF0KKbnM4+n4QOGI/gk8faT+1vIYRPdFGoxHvidDxLmJd50HayBqBCzuscTktwHqfYZbDNmrdGkMmv0tg80tVt3QT7GD+GWJFnGptA+CcTzWIil+d8NPw9TZsvEWNNXBlUvU=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3616.namprd12.prod.outlook.com (2603:10b6:208:cc::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Thu, 11 Nov
 2021 19:03:25 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::c4d1:7cd4:63b9:a64e]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::c4d1:7cd4:63b9:a64e%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 19:03:25 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: Rob Kossler <rkossler@nd.edu>, Robert Clancy <rclancy@ltsnet.net>
Thread-Topic: [USRP-users] Re: Timing discrepencies with X310 vs N320
Thread-Index: 
 AQHX1moIBLmtdSyoUke7WQAQSP/Glav9RCQAgAAONgCAAAE8gIAA698AgAAthgCAAD+7YA==
Date: Thu, 11 Nov 2021 19:03:25 +0000
Message-ID: 
 <MN2PR12MB3312F5F0F44F5D8A78CA4E9EB8949@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@email.amazonses.com>
 <1e9814af-de46-db07-a05e-6ee9905abba6@gmail.com>
 <CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=rTs2_RtWeK3hT1Kw@mail.gmail.com>
 <9469c957-f338-18cb-c335-677da5e9af6e@gmail.com>
 <0100017d0eeecb2d-7eac68c3-d8ac-4ef0-8eff-21818d8c3ef2-000000@email.amazonses.com>
 <CAB__hTTsJGMUE8o305ywD836Zns-YZjBy+uke-7gtBD8F05nLg@mail.gmail.com>
In-Reply-To: 
 <CAB__hTTsJGMUE8o305ywD836Zns-YZjBy+uke-7gtBD8F05nLg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 2774f757-7a1a-6e2e-8f1f-c40a8251848f
authentication-results: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none
 header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 457b14cb-046b-4199-4dac-08d9a545f079
x-ms-traffictypediagnostic: MN2PR12MB3616:
x-microsoft-antispam-prvs: 
 <MN2PR12MB3616A7B308F046A21D4BC3A4B8949@MN2PR12MB3616.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7gpXig+qJjGBPpjruOFmO0DOWpYEAcEnuhghqU7ThgP6VMU1Br9Zh+Rjqt5kZNN/u2+qlYk6JZ5qjt9RYr3nkcYIatA68oCHt6rXpJAn01nTzV2J9+vAJbzoKhC61tqeZvR/WzjxdW2GM0gCHCjXbiKZCuMwR/C1Jjd1crqULBDU9zuC26BNDxdrcT9DjfnCY0PQu95/XHrd1lPsLWBRk9/QEaEskYpkcQxJnPBM8tP02k4y+Ndkw3tekc15xsDMh6tguZp85cDl8Q2QnPzTR76xq3dZqO8ABNlfzaf7AC6fEzLW1S47mYOrRCBhFUzGba0neKyEBBNuWeuibv+Mjcvy1g5TQmF2TdWiGPHxTXTMaAs4vGbMlt0m8kkFj1Q6NL0R4le1P9D0isruh/WnUAhoMnlxIg1CfLzSt5tNblpEY80RB4V9PFkHj4EY771GcgVsDfXQeDwCcJSe+gBonZtPzcX7OX7juLPnIDC2WrbQxLuLah6kd20JfhvWl1SI7YOJrDvXDZvKZwt7DZySY6V2I8+nLtyaE9cgBk7CZoApcp3PCcvASKXCH5fTOugPdle1mGATL7w5vLUkBW3238lldGSZhwkB1fUPDowh+8qgyQm2E8d3N27zdqT8+V/E88nIGJHwlUKb2CDC3DXJmw9hEKYUg6f5V23WVXpTH1wB+jkdynjQu8/VVJ4LUJcG6jcs5IrYOE05/86EDR4odA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(39830400003)(376002)(366004)(346002)(83380400001)(76116006)(122000001)(8936002)(38070700005)(53546011)(6506007)(4001150100001)(52536014)(110136005)(26005)(5660300002)(8676002)(4326008)(71200400001)(186003)(38100700002)(19627405001)(2906002)(7696005)(64756008)(66446008)(55016002)(66946007)(66476007)(9686003)(508600001)(66556008)(86362001)(33656002)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?xYD3jr6B7Rygfx2ioIdZHKOcBfcWIDniB+9VDM3XwIoiHYT2wTq2dh/2ZPiB?=
 =?us-ascii?Q?6TP1oFtSpSGivjTaScaT4P7AirZISi2SP96M51mBljtWOnJq3pffcgosbF21?=
 =?us-ascii?Q?RetO08YdzJoBD1wJToUeCSkt2DIT/9mbgYGYfHmcyURgPjyrFG3U8Cii14aX?=
 =?us-ascii?Q?PeLvl7H2M/SQbzukQbrOlhBAAZTE4BA5l8N8MlDkyfRVUpfX7FkL5R/jh1yG?=
 =?us-ascii?Q?SrDv0MaKq906Hj0drdTTjJlMOqc+3O5ZPYjKFhKTfr7NTzb4eNLsEsdA92OO?=
 =?us-ascii?Q?DutQTSjxgoLRcL229MBSrlZgRVwixNG4i5/Z2hiqRV0Qv/0cUR4kswuSCIno?=
 =?us-ascii?Q?vVeAjHnZFFbOX2IIF9eSXE8qpRL6LWXbbx4I3T9y+RS+E2B/T12zdl65gpfQ?=
 =?us-ascii?Q?za9hfnATkXQqC4y7lX0FaO+edSkynn4T7N4SQJJZBowrmkcbp4fM0x6fPjKr?=
 =?us-ascii?Q?angHBY/vb9Vq05RH94DaelQ5rzZDDRfF9qlGaa5Yw8Q4Ve30nr54FnJ726LI?=
 =?us-ascii?Q?xdEZtwbskeOHcGdic6ExaqGOL0OatOjTHqK63gjs3IGfkaM3rdE+8oJM5LLx?=
 =?us-ascii?Q?fH7TZfpdfbqwm5FzuPr0xahTSytKHp4iUhEoDRbw9kbpQrvbHXg0PYkwnODe?=
 =?us-ascii?Q?3Q+PtezOvPhi6JyWWzdkVcg0qUkt4KeBNI9rqIqs+2+VS+mwhwJn5diXm8+Z?=
 =?us-ascii?Q?47aaNmZ6/uDwuNW+KAZwEWzJV6NVtoF9Ymid7/dUxNpRQ4uUOQmngfQb0qh6?=
 =?us-ascii?Q?gXxO0VzXobhsRZaKu4wyiWEtPWL4k2G2F9edWKb0UcKBmrwz7srDBDWQL9U+?=
 =?us-ascii?Q?p52Mb8iWgB8mmLzF9OUtr4M3WzOUP0v5zMtEIu3XujU+ZD0a3P7crkQ1MjGN?=
 =?us-ascii?Q?INH1wYpVwBs04WXzyJHQR7Fm5k3E75gMkQKarn/iGh1RtHtQxgG6WXpLzjBA?=
 =?us-ascii?Q?7efq4hkD+MFdVHkdHjDQyo1T4Zw/lpiJ/5M779ZQ0eYAuep6VcnUBu/logl+?=
 =?us-ascii?Q?5CYRAJN92G4wp8CfkpiXO4LVeWHI3PuBeOcYg50qTcdlmomwZXfwWVU4U4d+?=
 =?us-ascii?Q?nmTjHSa9wohz+SU2whFVrECulGfgl5iga2UsW7rRHI5iwOKbR2GTxxoX0hXF?=
 =?us-ascii?Q?4HDq6dqXpnIH0wrlFHoHimko0byp1fHXIrDdpK360zIBHbxZYVt6jT0799aV?=
 =?us-ascii?Q?hOC9qP3ocKl1TVqPP1k3Pz22/Q93qGjGOzn2HbyhPvHuj4gf2PhX6E4ekMpb?=
 =?us-ascii?Q?o2I68kl4nmpjka+zU4kXDj797nae/0wkz6Wkbuz55VBpB9X1MEM81unP+0zb?=
 =?us-ascii?Q?gKFjpNcNoSsMnMHwJmn3mqsOWIxyTWNJjy1rsXGZMu9U8NIyrcTd4Dx49e8j?=
 =?us-ascii?Q?JxPLkFqZf9NTVNtEzS3v1pFACCnSoxcTTZXTXD4aRgErTd4ofoTVgitWWX20?=
 =?us-ascii?Q?Fzg2BGU2ajYmvmVBu1jW6hq7W+d+fpRoASPp4/GMXE8x1CskZWnicSw/kzoK?=
 =?us-ascii?Q?Eqm1acgGUUfCTB+JjWlGbTAXtl0eFX8F00KEFi+lKq4osGEbGewDcEy7IakR?=
 =?us-ascii?Q?1w5UT+xhtA5sZflW4ol4Q2gSVcl/WLb2YwNFzPpcBlqWTvv3hKAA5ByLxY9T?=
 =?us-ascii?Q?SSX6NZx5YTiO996jc6wkSx7wxfO0Uo3By75Cou/kiEy+B07jK7bv8aKq2ge5?=
 =?us-ascii?Q?zxwgzg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 457b14cb-046b-4199-4dac-08d9a545f079
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2021 19:03:25.4224
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9obxvetVzda6OlHHt8zVmHL9hGfuT/41E88MurUJZ7hyG1d1cMl1MLDj+YgvVv23jRZzxsCCfWxShvCbTHLw0LScOR3+3xWhHWGQyggygco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3616
X-MDID: 1636657407-nnpRbbZ1MP14
Message-ID-Hash: TSR6YVE5JGEHGBRLEJZPXJO3N73N5JY2
X-Message-ID-Hash: TSR6YVE5JGEHGBRLEJZPXJO3N73N5JY2
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5265AELEWHMUMZJKJT7MEZWHNXCQMBFC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6927766178121315924=="

--===============6927766178121315924==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312F5F0F44F5D8A78CA4E9EB8949MN2PR12MB3312namp_"

--_000_MN2PR12MB3312F5F0F44F5D8A78CA4E9EB8949MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rob/all,

You are on the same page as us (I work with Robert) regarding your rising/f=
alling edge comments. This morning, I was looking at the schematics and FPG=
A code. Unless I missed something somewhere, it looks like the N320 detects=
 the rising edge of the pulse. If I'm looking at the correct code, The X310=
 seems to detect the falling edge:
--------
  //-----------------------------------------------------------------------=
----
  // Pulse Per Second
  //-----------------------------------------------------------------------=
----

  reg pps_del;
  reg pps_edge;

  always @(posedge tb_clk) begin
    if (tb_rst) begin
      pps_del  <=3D 0;
      pps_edge <=3D 0;
    end else begin
      pps_del <=3D pps;
      pps_edge<=3D pps_del & ~pps;
    end
  end
-------
I may have missed something as I didn't spend a lot of time tracing through=
 the code, but I think this is the case. Today I used a function generator =
to generate the 1 pps input to the two devices (N320 and X310) simultaneous=
ly. I compared their time offsets and found that it is proportional to the =
1pps duty cycle. So, this supports the theory that the X310 is detecting th=
e falling edge of the 1pps input. It would have been nice to just invert th=
e signal going into the X310 for testing, but I don't have a convenient way=
 to do that right now.

We'll have to consider whether the best solution is to rebuild the X310's F=
PGA image with a "rising_edge fix" or something else. It would nice to not =
always have to use our own custom image on the X310s.

I would expect USRPs to behave the same with regards to the 1pps input edge=
. Maybe this is a bug that needs to be fixed?

Thanks,
Jim


________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Thursday, November 11, 2021 10:00 AM
To: Robert Clancy <rclancy@ltsnet.net>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320

Hi Robert,
I'm not sure if you are talking about the delay that Marcus suggested or th=
e delay that I suggested. These 2 are different. My suggestion was to inten=
tionally set a different start time for the X310 relative to the N320 so th=
at it would compensate for this strange PPS delay. With this approach, when=
 you later tell each USRP to stream at a given time, you will see all of th=
e streaming start simultaneously.  Of course, this does not solve the riddl=
e of why the problem exists in the first place - it simply compensates for =
it.

As a possible explanation of the "riddle", could it be that one of the USRP=
s is synchronizing on the PPS leading edge while the other is using the fal=
ling edge (perhaps through an FPGA bug)?  I'm not sure what the pulse width=
 of the PPS signal is, but it may be to the tune of 100-200 ms.
Rob

On Thu, Nov 11, 2021 at 7:27 AM Robert Clancy via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

I can certainly try to insert a delay between the set_time_unknown_pps() an=
d the actual set_time_next_pps() call. However, in my usage of the octocloc=
k--- without verifying this in any documentation-- the underlying uhd call =
to an octoclock to get time blocks until the next top of the second when it=
 returns. I have guessed this is a feature and not a bug effectively giving=
 you the time at the top of a second. Also there is a call to check ref loc=
k and a print inbetween as well. I'll add more delay between the two calls =
and see if that makes a difference though.


Robert

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.c=
om>>
Sent: Wednesday, November 10, 2021 5:13:37 PM
To: Rob Kossler
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320

On 2021-11-10 17:09, Rob Kossler wrote:
I have had a similar issue.  My theory is that there is some delay in the P=
PS input circuitry and that it is different between N320 and X310 such that=
 it is effectively analogous to using different length PPS cables to the X3=
10 devices as compared to the N320 devices. If this is true, then I expect =
that the delay is at least constant.  In your application, is it possible t=
o set the start time in the set_time_next_pps() command with a relative del=
ay with respect to that used for the N320?
We're talking 10s-of-ms here.  That's a HUGE discrepancy, and would be hard=
 to achieve with "slight differences in analog circuitry" unless it was del=
iberate (but wrong!).




On Wed, Nov 10, 2021 at 4:20 PM Marcus D. Leech <patchvonbraun@gmail.com<ma=
ilto:patchvonbraun@gmail.com>> wrote:
On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:

TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn't r=
esult in USRP time being aligned with PPS edge. Works on N320.


I have two X310's and an N320 as well as an Octoclock. The Octoclock does h=
ave GPS lock. All four devices are on different computers, each of which ha=
s its system time set via NTP. We are using UHD version UHD_4.1.0.4-0-g25d6=
17ca. I'll include the find_devices and probe output at the end for referen=
ce. We're running Ubuntu Bionic 18.04.6 LTS on all machines.


The Octoclock is accessed via a custom network shim that runs on the machin=
e to which the Octoclock is attached. Machines with radios ( X's or N's ) c=
an make a request of the custom Octoclock network service to get Octoclock =
time. Octoclock time agrees very well with the NTP top of the second ( typi=
cally withing 25ms ) given the inherent uncertainty running python code on =
different machines. By "agrees very well" I mean the delta between Octocloc=
k time and NTP time has a low variance. All that to say, I do not suspect t=
he Octoclock or software used to access the Octoclock.


The crux of the issue is that when using external clock (10MHz) and timing =
reference (1PPS) ( provided by Octoclock ) and setting an X310 time ( set_t=
ime_next_pps ), I am seeing about a 200ms (or 800ms depending on how you ar=
e measuring ) difference in when the X310 reports it is at the top of a sec=
ond versus either time.time() or the octoclock time. I do not see this disc=
repancy with the N320 radio.


The net effect of this is that if an X and N are set to transmit at the ver=
y same time, we can see that the X transmits 800ish ms early relative to th=
e N using a spectrum analyzer ( real hardware ). The N transmits at the cor=
rect time eyeballing wall clock/computer time.


Here is some of our test code that we've been using to investigate this:

    usrp =3D uhd.usrp_sink( ",".join((options.address, "")), uhd.stream_arg=
s( cpu_format=3D"fc32", args=3D'', channels=3Dlist(range(0,1)), ),'', )
    usrp.set_time_source('external', 0)
    usrp.set_clock_source('external', 0)
    usrp.set_time_unknown_pps(uhd.time_spec())

    reflock =3D str(usrp.get_mboard_sensor("ref_locked", 0)).split(": ")[1]
    if  reflock !=3D 'locked':
        print('reference not locked')
        print('exiting')
        exit()
    else:
        print('referenced locked')

     # the get_octo_time () call is a call to our networked octoclock. Just=
 imagine this line as querying the octoclock for time
    next_pps =3D get_octo_time() + 1

     usrp.set_time_next_pps(uhd.time_spec_t(next_pps))

    # sleep for a few seconds
    time.sleep(2.0)

    oc_time=3Dget_octo_time()
    usrp_time =3D usrp.get_time_now()
    usrp_time_last_pps =3D usrp.get_time_last_pps()
    system_time =3D time.time()

    usrp_time_source =3D usrp.get_time_source(0)
    usrp_time_sources =3D usrp.get_time_sources(0)
    print(f"TRANSMIT:: OC time is {oc_time} \n" \
          f"TRANSMIT:: usrp_time_last_pps is {usrp_time_last_pps.get_full_s=
ecs()} \n" \
          f"TRANSMIT:: usrp_time_last_pps_frac is {usrp_time_last_pps.get_f=
rac_secs()} \n" \
          f"TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n" \
          f"TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n" \
          f"TRANSMIT:: system time is {system_time} \n" \
          f"TRANSMIT:: usrp_time_source is {usrp_time_source} \n" \
          f"TRANSMIT:: usrp_time_sources are {usrp_time_sources}")

And here is some output from an X310:

TRANSMIT:: OC time is 1636568870
TRANSMIT:: usrp_time_last_pps is 1636568869
TRANSMIT:: usrp_time_last_pps_frac is 0.0
TRANSMIT:: usrp_time is 1636568869
TRANSMIT:: usrp_time_frac is 0.82498684
TRANSMIT:: system time is 1636568870.0275745
TRANSMIT:: usrp_time_source is external
TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo')

So the problem here is that the fractional time (usrp_time_frac) is 800ish =
ms when it should be more like 25ish ms (  like time.time() i.e. system tim=
e ).

Here is the result of running the same code on a host with an N320:

TRANSMIT:: OC time is 1636570841
TRANSMIT:: usrp_time_last_pps is 1636570841
TRANSMIT:: usrp_time_last_pps_frac is 0.0
TRANSMIT:: usrp_time is 1636570841
TRANSMIT:: usrp_time_frac is 0.025938016764322915
TRANSMIT:: system time is 1636570841.0290515
TRANSMIT:: usrp_time_source is external
TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sfp0')

    product: n320
    type: n3xx


I have a wild guess.

You:

set_time_unknown_pps()
do a wee bit of stuff
set_time_next_pps(), and it's possibly that those two "set_time.*pps()" cal=
ls are too close together for the X310 hardware, and it's getting the wrong=
 notion of time?

If you insert a, let's say, 50ms sleep just before the set_time_next_pps(),=
 how does this change things?



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_MN2PR12MB3312F5F0F44F5D8A78CA4E9EB8949MN2PR12MB3312namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Rob/all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
You are on the same page as us (I work with Robert) regarding your rising/f=
alling edge comments. This morning, I was looking at the schematics and FPG=
A code. Unless I missed something somewhere, it looks like the N320 detects=
 the rising edge of the pulse. If
 I'm looking at the correct code, The X310 seems to detect the falling edge=
:<br>
--------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; //------------------------------------------------------------------=
---------
<div>&nbsp; // Pulse Per Second</div>
<div>&nbsp; //-------------------------------------------------------------=
--------------</div>
<div><br>
</div>
<div>&nbsp; reg pps_del;</div>
<div>&nbsp; reg pps_edge;</div>
<div><br>
</div>
<div>&nbsp; always @(posedge tb_clk) begin</div>
<div>&nbsp; &nbsp; if (tb_rst) begin</div>
<div>&nbsp; &nbsp; &nbsp; pps_del &nbsp;&lt;=3D 0;</div>
<div>&nbsp; &nbsp; &nbsp; pps_edge &lt;=3D 0;</div>
<div>&nbsp; &nbsp; end else begin</div>
<div>&nbsp; &nbsp; &nbsp; pps_del &lt;=3D pps;</div>
<div>&nbsp; &nbsp; &nbsp; pps_edge&lt;=3D pps_del &amp; ~pps;</div>
<div>&nbsp; &nbsp; end</div>
&nbsp; end<br>
-------<br>
I may have missed something as I didn't spend a lot of time tracing through=
 the code, but I think this is the case. Today I used a function generator =
to generate the 1 pps input to the two devices (N320 and X310) simultaneous=
ly. I compared their time offsets
 and found that it is proportional to the 1pps duty cycle. So, this support=
s the theory that the X310 is detecting the falling edge of the 1pps input.=
 It would have been nice to just invert the signal going into the X310 for =
testing, but I don't have a convenient
 way to do that right now.&nbsp;<br>
<br>
We'll have to consider whether the best solution is to rebuild the X310's F=
PGA image with a &quot;rising_edge fix&quot; or something else. It would ni=
ce to not always have to use our own custom image on the X310s.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I would expect USRPs to behave the same with regards to the 1pps input edge=
. Maybe this is a bug that needs to be fixed?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Thursday, November 11, 2021 10:00 AM<br>
<b>To:</b> Robert Clancy &lt;rclancy@ltsnet.net&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: Timing discrepencies with X310 vs N320</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Robert,
<div>I'm not sure if you are talking about the delay that Marcus suggested =
or the delay that I suggested. These 2 are different. My suggestion was to =
intentionally set a different start time for the X310 relative to the N320 =
so that it would compensate for
 this strange PPS delay. With this approach, when you later tell each USRP =
to stream at a given time, you will see all of the streaming start simultan=
eously.&nbsp; Of course, this does not solve the riddle of why the problem =
exists in the first place - it simply
 compensates for it.</div>
<div><br>
</div>
<div>As a possible explanation of the &quot;riddle&quot;, could it be that =
one of the USRPs is synchronizing on the PPS leading edge while the other i=
s using the falling edge (perhaps through an FPGA bug)?&nbsp; I'm not sure =
what the pulse width of the PPS signal is, but
 it may be to the tune of 100-200 ms.</div>
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, Nov 11, 2021 at 7:27 AM Rob=
ert Clancy via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div id=3D"x_gmail-m_-1885766894897008177divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sa=
ns-serif">
<p>I can certainly try to insert a delay between the set_time_unknown_pps()=
 and the actual set_time_next_pps() call. However, in my usage of the octoc=
lock--- without verifying this in any documentation-- the underlying uhd ca=
ll to an octoclock to get time blocks
 until the next top of the second when it returns. I have guessed this is a=
 feature and not a bug effectively giving you the time at the top of a seco=
nd. Also there is a call to check ref lock and a print inbetween as well. I=
'll add more delay between the two
 calls and see if that makes a difference though.</p>
<p><br>
</p>
<p>Robert</p>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-1885766894897008177divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>F=
rom:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 10, 2021 5:13:37 PM<br>
<b>To:</b> Rob Kossler<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: Timing discrepencies with X310 vs N320</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div>On 2021-11-10 17:09, Rob Kossler wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">I have had a similar issue.&nbsp; My theory is that there =
is some delay in the PPS input circuitry and that it is different between N=
320 and X310 such that it is effectively analogous to using different lengt=
h PPS cables to the X310 devices as compared
 to the N320 devices. If this is true, then I expect that the delay is at l=
east constant.&nbsp; In your application, is it possible to set the start t=
ime in the set_time_next_pps() command with a relative delay with respect t=
o that used for the N320?</div>
</blockquote>
We're talking 10s-of-ms here.&nbsp; That's a HUGE discrepancy, and would be=
 hard to achieve with &quot;slight differences in analog circuitry&quot; un=
less it was deliberate (but wrong!).<br>
<br>
<br>
<br>
<blockquote type=3D"cite"><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Nov 10, 2021 at 4:20 PM Mar=
cus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k">patchvonbraun@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div>On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"x_gmail-m_-1885766894897008177gmail-m_5596797367432940650divtagd=
efaultwrapper" dir=3D"ltr">
<p>TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn'=
t result in USRP time being aligned with PPS edge. Works on N320.</p>
<p><br>
</p>
<p>I have two X310's and an N320 as well as an Octoclock. The Octoclock doe=
s have GPS lock. All four devices are on different computers, each of which=
 has its system time set via NTP. We are using UHD version&nbsp;<span>UHD_4=
.1.0.4-0-g25d617ca. I'll include the
 find_devices and probe output at the end for reference. We're running Ubun=
tu Bionic&nbsp;18.04.6 LTS on all machines.</span></p>
<p><span><br>
</span></p>
<p>The Octoclock is accessed via a custom network shim that runs on the mac=
hine to which the Octoclock is attached. Machines with radios ( X's or N's =
) can make a request of the custom Octoclock network service to get Octoclo=
ck time. Octoclock time agrees very
 well with the NTP top of the second ( typically withing 25ms ) given the i=
nherent uncertainty running python code on different machines. By &quot;agr=
ees very well&quot; I mean the delta between Octoclock time and NTP time ha=
s a low variance. All that to say, I do not
 suspect the Octoclock or software used to access the Octoclock.</p>
<p><br>
</p>
<p>The crux of the issue is that when using external clock (10MHz)&nbsp;and=
 timing reference (1PPS) ( provided by Octoclock ) and setting an X310 time=
 ( set_time_next_pps ), I am seeing about a 200ms (or 800ms depending on ho=
w you are measuring ) difference in when
 the X310 reports it is at the top of a second versus either time.time() or=
 the octoclock time. I do not see this discrepancy with the N320 radio.</p>
<p><br>
</p>
<p>The net effect of this is that if an X and N are set to transmit at the =
very same time, we can see that the X transmits 800ish ms early relative to=
 the N using a spectrum analyzer ( real hardware ). The N transmits at the =
correct time eyeballing wall clock/computer
 time.</p>
<p><br>
</p>
<p>Here is some of our test code that we've been using to investigate this:=
</p>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp =3D uhd.usrp_s=
ink( &quot;,&quot;.join((options.address, &quot;&quot;)), uhd.stream_args( =
cpu_format=3D&quot;fc32&quot;, args=3D'', channels=3Dlist(range(0,1)), ),''=
, )</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_time_sourc=
e('external', 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_clock_sour=
ce('external', 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_time_unkno=
wn_pps(uhd.time_spec())</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; reflock =3D str(usr=
p.get_mboard_sensor(&quot;ref_locked&quot;, 0)).split(&quot;: &quot;)[1]</s=
pan></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; if&nbsp; reflock !=
=3D 'locked':</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('reference not locked')</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('exiting')</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; exit(=
)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; else:</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('referenced locked')</span></div>
<div><span style=3D"color:rgb(0,111,201)"><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span>&nbsp; &nbsp; &nbsp;# the g=
et_octo_time () call is a call to our networked octoclock. Just imagine thi=
s line as querying the octoclock for time</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><span style=3D"font-family:=
Calibri,Helvetica,sans-serif">&nbsp; &nbsp;&nbsp;</span>next_pps =3D get_oc=
to_time() + 1&nbsp; &nbsp; &nbsp;</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><br>
</span></span></div>
<div><span style=3D"color:rgb(0,111,201)"><span>&nbsp; &nbsp; &nbsp;usrp.se=
t_time_next_pps(uhd.time_spec_t(next_pps))</span><br>
</span></div>
<div><br>
</div>
<div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; # sleep for a few s=
econds</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; time.sleep(2.0)</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201); font-size:12pt">&nbsp; &nbsp;&nbs=
p;</span><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; oc_time=3Dget_octo_=
time()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time =3D usrp.=
get_time_now()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_last_pps =
=3D usrp.get_time_last_pps()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; system_time =3D tim=
e.time()</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_source =
=3D usrp.get_time_source(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_sources =
=3D usrp.get_time_sources(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; print(f&quot;TRANSM=
IT:: OC time is {oc_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_last_pps is {usrp_time_last_pps.get_full_secs=
()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_last_pps_frac is {usrp_time_last_pps.get_frac=
_secs()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n&quot; \</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n&quot; =
\</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: system time is {system_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_source is {usrp_time_source} \n&quot; \</span=
></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_sources are {usrp_time_sources}&quot;)</span>=
</div>
<div><br>
</div>
And here is some output from an X310:</div>
<div><br>
</div>
<div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: OC t=
ime is 1636568870&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps is 1636568869&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps_frac is 0.0&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time is 1636568869&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_frac is<span style=3D"background-color:rgb(255,0,0)"> 0.82498684&nbsp=
;</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: syst=
em time is 1636568870.<span style=3D"background-color:rgb(0,255,0)">0275745=
&nbsp;</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_source is external&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_sources are ('internal', 'external', 'gpsdo')</span></div>
<div><br>
</div>
<span style=3D"font-family:Arial,Helvetica,sans-serif">So the problem here =
is that the fractional time (usrp_time_frac) is 800ish ms when it should be=
 more like 25ish ms (&nbsp; like&nbsp;time.time() i.e. system time ).</span=
></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">Here is the res=
ult of running the same code on a host with an N320:</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">
<div>TRANSMIT:: OC time is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_last_pps is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_last_pps_frac is 0.0&nbsp;</div>
<div>TRANSMIT:: usrp_time is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_frac is <span style=3D"background-color:rgb(0,255=
,255)">0.025938016764322915</span><span style=3D"background-color:rgb(0,255=
,255)">&nbsp;</span></div>
<div>TRANSMIT:: system time is 1636570841.<span style=3D"background-color:r=
gb(0,255,0)">0290515&nbsp;</span></div>
<div>TRANSMIT:: usrp_time_source is external&nbsp;</div>
<div>TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sf=
p0')</div>
<div><br>
</div>
</span><span style=3D"font-family:Arial,Helvetica,sans-serif">
<div>
<div><i>&nbsp; &nbsp; product: n320</i></div>
<div><i>&nbsp; &nbsp; type: n3xx</i></div>
<div><i><br>
</i></div>
<br>
</div>
</span></div>
</div>
</blockquote>
I have a wild guess.<br>
<br>
You:<br>
<br>
set_time_unknown_pps()<br>
do a wee bit of stuff<br>
set_time_next_pps(), and it's possibly that those two &quot;set_time.*pps()=
&quot; calls are too close together for the X310 hardware, and it's getting=
 the wrong notion of time?<br>
<br>
If you insert a, let's say, 50ms sleep just before the set_time_next_pps(),=
 how does this change things?<br>
<br>
<br>
<br>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</blockquote>
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312F5F0F44F5D8A78CA4E9EB8949MN2PR12MB3312namp_--

--===============6927766178121315924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6927766178121315924==--
