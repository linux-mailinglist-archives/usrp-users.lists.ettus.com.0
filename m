Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A454A76B6
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 18:20:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F10B33856DC
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 12:20:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="Xdp16Tor";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.52])
	by mm2.emwd.com (Postfix) with ESMTPS id DA3C6385523
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 12:19:50 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.121])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 59BC322008A;
	Wed,  2 Feb 2022 17:19:48 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2106.outbound.protection.outlook.com [104.47.70.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 262704C0079;
	Wed,  2 Feb 2022 17:19:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwqPhC+0fOz2cv4s7ll9Aw2ve4lzE5o1iYvrbN0zaBr40rE+Ug3whi+n9e4tZ3WmyfSu6/3HzrHbj62U3J+P/R3za9/+JJkcK1SUrT2SB3A7UyPUDTqfND1uGfZc8VJ2/t+lTX0JFsJE9PBKlFcGZbxK0tn9/N1rcbEHuTLLNZVnWo20/QXH5S4JRSWu1Y+b+AWCedgxxzwkI45ZFZvXe/jOi7i7zEslPRRoGl4V6KryO4ygqHwl5O+9hJSLk15ouieKea/R0yjnRFRnEjEYWdDZq2vyDFOtyQLFb1izsbTERvqGnTqHGSG5vF/vrcQro7Nfla8Z7n3/l91Hmm645g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPtjYlYyygCILxGKpqtLs+krRJIILUqee8d5M6q94a0=;
 b=MnHdJ0geqT7HkMswZbeowVHE5QQEpmJ/6em8Fnf/EVcHKI4ilHFWKLhAKi0tzAD8uhdvD2C+8TDsf8tiDzHfmzuSTNhO3xWjXD1SB5XDOLCWnK24OEQZCvw7kB62DamQNHEv/7qIUhcaGaZSWj90EpDitPDnoEkm5btUE4bnCuw3Jq7+a93rFl68A55J7MRlBug/d8lrEiBS31vr2HTpBtXdtIHocsCY36uTvbCHjCrM0l2SLXuuxsFuYbWAIjVnXo6tHLc7FcjuEPz0bKn8rk6CmLOs84AaxCDmzsQEQsT+lYFmhPTzLsQ4K4c5NY+g8aSR3r35APzzx4qxBqFz+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uPtjYlYyygCILxGKpqtLs+krRJIILUqee8d5M6q94a0=;
 b=Xdp16TorNE9P97BvXFSdK/uo6Fh2i8+di4q5VX21F4fsFxI44eWFfYoL5e+6iRb4va7smyKoT3R4rwSQKy69wNQTgB0yJ+4lsNVh/E6sxs3dD+PJMeaOyzAQBHAJvOWY4fW+PJadxwGh/KTmjcSRRyRTQIHSmnBEKiLulpbOS6E=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BN6PR12MB1684.namprd12.prod.outlook.com (2603:10b6:405:6::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 2 Feb
 2022 17:19:44 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 17:19:44 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: RX Frequency Tuning Questions
Thread-Index: AQHYGEil3QYHPEI5skSEu41rPZVyw6yAdueAgAAKIC8=
Date: Wed, 2 Feb 2022 17:19:44 +0000
Message-ID: 
 <MN2PR12MB331233081CB9FE97B11918ABB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <1586968d-0041-14f2-a708-ce6e6337765f@gmail.com>
In-Reply-To: <1586968d-0041-14f2-a708-ce6e6337765f@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42c63658-13ab-4958-445c-08d9e67034c6
x-ms-traffictypediagnostic: BN6PR12MB1684:EE_
x-microsoft-antispam-prvs: 
 <BN6PR12MB1684462A764236C05B298497B8279@BN6PR12MB1684.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yGoSo5YJjHozxWL9ljw24Cze9TZj36nt121ZQJRMGhV92QkwZ42nxErmqVZQuLIflG3SefheQlHg1unLTlyCEXmQROckVgwsNtr8f8FIaT7Qfy3uPpasFVZyAsgrBaI1d1zHr9frsRlkCVgMoFAgbgtQHE/mTCNb+VGoLRhy7OKlwR4ycx9TnNMQ3cEkB/UlfgNJrpBQNRPkMyDZovxAkbTqJ3fFC4FiwDY1kMEOrObDRa8Xlt296i/bwFIQHU5fkTs8H8A537aW9ONpL34fgwLIiVhcSt+kSMn1a9fflb0NlfVieAy3Bkhly8Lj9hb8MGeKxi997ws4irhLW1+vmjCovCMxS9MrJyaeFBHrV2V5UjOtQMRfYPj/3qib4w0Ka8H+li+ibSAw6ztoHVBZkHSCAjpQKqVKu7Fj5n8R2oec0tZb6v6QvwkP0AZTcd4UV1CMVY6InPDDRvqo55gyE14QDQYyBZeAffLYQpPzCLuffsGimbGXOawZG13HwZzUeQRdU+PEVGe8r7cesf8WWesEhB4xbko0+ISRCR4W56ba5zpWt4Cnt+lgol1DAGdbazhvsjAbcVPSFGsYv8ImGDubTg3tbWBiEwNHJp6vIRQW9c4+Lp0IDLilvloKzigcrjGczCLt80R86CGnSkq0sx9PQciNjFlHoRhAgn8DQ+GUoiQS/NcWHF4iMo9KT1jbuW3+A7FAsZY7a+EVTqbC4dst9lZAxqeLuiTF7B8Lg30Tt5eeRAz4HWTR3BbrgzMDerTagU5wJNJdFG3YyC1L38ZCEKRZ0rsB+imDni+3LLk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(136003)(366004)(39830400003)(346002)(396003)(8676002)(110136005)(71200400001)(38070700005)(508600001)(86362001)(33656002)(55016003)(53546011)(7696005)(966005)(6506007)(9686003)(76116006)(38100700002)(166002)(64756008)(66946007)(66556008)(66476007)(66446008)(316002)(8936002)(83380400001)(52536014)(19627405001)(122000001)(5660300002)(26005)(186003)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?TY+8C318l0ihl27EnxBCpxqLV681zAnPSmTUga7vUNnzgxBB/exa8NjCD3q9?=
 =?us-ascii?Q?5VjhxqCklJnhE3deiSHJjfWjl1ADlsr9A9a+qVq5S7YGfh6CPK4/jCTwVxVR?=
 =?us-ascii?Q?hZXw+NEcspb/FG4d/TFQ1VZST7sooK4zPl1Vuss5P+zy9Nhv0iBsxLkJqfCr?=
 =?us-ascii?Q?MSUG7GrIOmN7g+jETImP9aUqmAph9sxlZWfWgu1XxB+0HUIPeb5F3m3QzEXv?=
 =?us-ascii?Q?TrkRUOH9kyGkR7fECzleQcp0lTZgZ9yK8kiNk3ZQk/10UGg/7xT4tby2ujvW?=
 =?us-ascii?Q?ZWtIV69BG++0F4Ek5L6u+ouq0wAsuQjogziDMyiOgsD37XTUjLCt+ga8EiXY?=
 =?us-ascii?Q?yhfk/Jxa6em9FSNbtBGKNUYiIgWTTveT9dReoVtemBabn31ofyB+GqqiFZGc?=
 =?us-ascii?Q?OiBTwGLZqpG2rlZzC6Pt0IcXFxCJVE5IMmH6tfaRPAoqceB++mnTtKMSil+U?=
 =?us-ascii?Q?JxY+6sPi4GztE13HLJ/Th6EiL4F/nRADKgszgg5PKU3L5rPm3/sqLEv9HOuc?=
 =?us-ascii?Q?RAMma5syd2LjxUzowTdqKc4t53D3TrgM89OCVAmzknKwtm8StLVlXW1MZ2EW?=
 =?us-ascii?Q?iv4PanVM4vf+GxZSuWa3/yoA38MmBdKIJRTRhNmeypDrqLFbUX4xV3l5Hk2/?=
 =?us-ascii?Q?6D1j4gk+Q/zwtbdNrc/7ckVDfku/Wn49q5V2dsubbvmOxf9phHFKQaEmJt9h?=
 =?us-ascii?Q?juqWA++BcNevhlWJ/z2vCff+b/YYORhYjBwINli1YXgKAtiuYjmkrn7DS4WD?=
 =?us-ascii?Q?Hw7cebs2U7GsVFlEkjOqDY9Pp8KM5DuwPqy1ivmp/k6MKmqDcrvtS5kx+jJy?=
 =?us-ascii?Q?PXZdzSPBxlcZyU2y1djZYb/UwmaAa6XR0RIhYFSe+Q7Bbyn/QYCOjfJKcZvg?=
 =?us-ascii?Q?m8M2JnhS8D2Q2sSC/Q+FXxLP/HmxqIsKjvUwbz9Pzj6IEVP83qo8RWnqKzyz?=
 =?us-ascii?Q?dgI69IMb99JvVCHzMC97GI/QF2zQyQKAL+crOwWaezqaczOq52gEDxmn1ICT?=
 =?us-ascii?Q?r8i/IWSsszqi5eBsQMuRCEzcK7HHdaId2FDjh3z66zWP0Hto3hbb0kAbbGXy?=
 =?us-ascii?Q?X/nszaHuDiQL9Xc2nxAO5S2KrFq4QR8wah24cTh5H57h3ulvrBplVHqPLbQU?=
 =?us-ascii?Q?wAX1WSyCAMpjqlcxYDQkXYtxYK+PIsHXeXCmLRX0CBdJGiLiyEFA2ijGoLWn?=
 =?us-ascii?Q?3s2MEb5vGARK78J/yEVdNk8e2DhkKbIs27Bl9PnVAsEMUMuiAWlTsxeojUvm?=
 =?us-ascii?Q?8PDpx2F+894aY6ERbBe7qT1NhjzMi0qayTnHKRLVdVXleLr0xGSG2H2VDUG9?=
 =?us-ascii?Q?o0gJ2Vvs+/du6stWoxhCmXqn1kDjyLz2jnK5MpcCr0NIyNcK6upzeTSdwKW2?=
 =?us-ascii?Q?pi6VCBgTv9QbMWcV5M8qUwCtDHvpeJx3QUjmAoP9743oawkNzsUzBI7PKzlc?=
 =?us-ascii?Q?ouAwdDYX9SnngtaeVduFSRJB5mw428ZCzev4CIS7OrlB1DOLH4qs6JhaKVVl?=
 =?us-ascii?Q?NXvjeLsrDeyPAL1I+BsDQ8M85kN5/JcnzxL5Txqnuk4u7xc5fGnEwkYXYPSc?=
 =?us-ascii?Q?55PHC/Md1if5mH7Y264QS4rzymt5Yq+JvmsUJ4wxFUombStrTzhCd40Jkfg9?=
 =?us-ascii?Q?7iThmWpoFZhf4E/mtf6PzRd53G7g8A84DtMUwetgk90qRe6yPmDTtaRN7x2Q?=
 =?us-ascii?Q?6W7r7A=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c63658-13ab-4958-445c-08d9e67034c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 17:19:44.4364
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u55jgn8xKtq7w/lpkNJhaBubmNiDXrfilhJL3ybxPz7p8jlT+gk1ez4NebNg7TPhsGhnnt4q6ax7aSC752H0KACpxYVmEYAuWMea2d0lXws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1684
X-MDID: 1643822388-AlR0-KKNfd2v
Message-ID-Hash: EJZUAUJCJ2V5USLHBHJEDMP5R6EWIORS
X-Message-ID-Hash: EJZUAUJCJ2V5USLHBHJEDMP5R6EWIORS
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Frequency Tuning Questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VLJTXRAHNAMQA62YFRQUN7V2F7W7LIX6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3251817038705267248=="

--===============3251817038705267248==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331233081CB9FE97B11918ABB8279MN2PR12MB3312namp_"

--_000_MN2PR12MB331233081CB9FE97B11918ABB8279MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Marcus,

Thanks. I just checked and usrp_list_sensors() shows the RX LOs are locked =
on both an N320 and X310 that we have. I think I'll start working with the =
N320 for now instead of the E320 and see if I can make more progress with t=
hat for our scanning application, as it isn't AD9361-based.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, February 2, 2022 11:41 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: RX Frequency Tuning Questions

On 2022-02-02 10:43, Jim Palladino wrote:
Hello,

I'm working on a frequency scanning app where I need to maximize the tuning=
 speed. I've been playing with timed commands -- I'm having issues with tha=
t and have posted about that separately. But I have some questions regardin=
g RX tuning.

I'm currently using an E320 and UHD 4.1 and developing a C++ scanning app. =
My first question is related to the set_rx_freq() command. If I look at the=
 documentation here:
https://files.ettus.com/manual/page_general.html#general_tuning_rfsettling<=
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_manu=
al_page-5Fgeneral.html-23general-5Ftuning-5Frfsettling&d=3DDwMFaQ&c=3DeuGZs=
tcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2N=
ZkfwDnwpYx0&m=3DGEMRcx3mF9NRSEZH3xxoIfUgpEtahRp18Qx1JSEMnvo&s=3D4JGYhQKGg3X=
purqA1pKw7EZzPfv6AUBKA-8NHL3CN9A&e=3D>

It implies that you need to wait and check the lo_locked sensor after tunin=
g if you want to make sure that the LO is really locked. This tells me that=
 the set_rx_freq() command does not block and wait until it locks. I want t=
o make sure that this is the case, as if I send consecutive get_time_now() =
commands, the responses are somewhere around 2ms apart. If I send the follo=
wing series of commands: get_time_now(), set_rx_freq(), get_time_now -- the=
n the time difference between get_time_now() responses is over 100ms. So, i=
t seems that the set_rx_freq() command takes quite a while to return. I jus=
t want to confirm that it is not blocking and waiting for lock before retur=
ning. This leads to my second question.

On the E320, I list the sensors using "usrp->get_rx_sensor_names(ACTIVE_CHA=
N);" This returns the following sensors: ad9361_temperature,  rssi,  lo_loc=
k. Note that it is "lo_lock" and not "lo_locked". I can querry "ad9361_temp=
erature" and get a reasonable value each time. However, the "lo_lock" senso=
r always reports back unlocked. I use the following command to querry it:

usrp->get_rx_sensor("lo_lock", ACTIVE_CHAN).to_pp_string()

It doesn't matter how long I wait after tuning -- I can wait many, many sec=
onds. If I look at the samples I'm streaming and capturing after tuning the=
 RX LO, they look correct. If I insert a tone from a signal generator, I se=
e it where I expect, and it looks good. At least by eyeball, it looks like =
the LO is locked. Similarly, if I run the "usrp_list_sensors" example appli=
cation included with UHD, the results of the RX sensors are:
-------------------------------
|    /
|   |       RX Sensors:
|   |
|   |   Chan 0:
|   |   * ad9361_temperature: 66.783625 C
|   |   * rssi: -50.75 dB
|   |   * ad9361_lock: unlocked
|   |
|   |   Chan 1:
|   |   * ad9361_temperature: 67.368423 C
|   |   * rssi: -55.0 dB
|   |   * ad9361_lock: unlocked
-------------------------------------
So, that is also reporting unlocked. Basically, I haven't been able to ever=
 read that sensor and have it say: "locked".

Any help understanding whether or not the set_rx_freq() command blocks unti=
l it's locked or why I can't seem to read the "lo_lock" state and see that =
it is locked would be appreciated.

Thanks,
Jim

Any device that uses the AD936x family of RFFE chips is going to be "sluggi=
sh" -- at least when tuning further than 100MHz (AFAIR) from the current fr=
equency--because the
  AD9361 needs a lot of "care and feeding" during tuning.

I also recall that the AD9361 doesn't really have an lo_lock indicator, or =
if it does, the driver doesn't implement it.



--_000_MN2PR12MB331233081CB9FE97B11918ABB8279MN2PR12MB3312namp_
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
Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks. I just checked and usrp_list_sensors() shows the RX LOs are locked =
on both an N320 and X310 that we have. I think I'll start working with the =
N320 for now instead of the E320 and see if I can make more progress with t=
hat for our scanning application,
 as it isn't AD9361-based.</div>
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
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 11:41 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: RX Frequency Tuning Questions</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-02-02 10:43, Jim Palladino wrote:<=
br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm working on a frequency scanning app where I need to maximize the tuning=
 speed. I've been playing with timed commands -- I'm having issues with tha=
t and have posted about that separately. But I have some questions regardin=
g RX tuning.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm currently using an E320 and UHD 4.1 and developing a C++ scanning app. =
My first question is related to the set_rx_freq() command. If I look at the=
 documentation here:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ett=
us.com_manual_page-5Fgeneral.html-23general-5Ftuning-5Frfsettling&amp;d=3DD=
wMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfp=
aAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3DGEMRcx3mF9NRSEZH3xxoIfUgpEtahRp1=
8Qx1JSEMnvo&amp;s=3D4JGYhQKGg3XpurqA1pKw7EZzPfv6AUBKA-8NHL3CN9A&amp;e=3D" i=
d=3D"LPNoLPOWALinkPreview" class=3D"x_moz-txt-link-freetext">https://files.=
ettus.com/manual/page_general.html#general_tuning_rfsettling</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
It implies that you need to wait and check the lo_locked sensor after tunin=
g if you want to make sure that the LO is really locked. This tells me that=
 the set_rx_freq() command does not block and wait until it locks. I want t=
o make sure that this is the case,
 as if I send consecutive get_time_now() commands, the responses are somewh=
ere around 2ms apart. If I send the following series of commands: get_time_=
now(), set_rx_freq(), get_time_now -- then the time difference between get_=
time_now() responses is over 100ms.
 So, it seems that the set_rx_freq() command takes quite a while to return.=
 I just want to confirm that it is not blocking and waiting for lock before=
 returning. This leads to my second question.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
On the E320, I list the sensors using &quot;usrp-&gt;get_rx_sensor_names(AC=
TIVE_CHAN);&quot; This returns the following sensors:&nbsp;ad9361_temperatu=
re,&nbsp; rssi,&nbsp; lo_lock. Note that it is &quot;lo_lock&quot; and not =
&quot;lo_locked&quot;. I can querry &quot;ad9361_temperature&quot; and get =
a reasonable value
 each time. However, the &quot;lo_lock&quot; sensor always reports back unl=
ocked. I use the following command to querry it:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
usrp-&gt;get_rx_sensor(&quot;lo_lock&quot;, ACTIVE_CHAN).to_pp_string()</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
It doesn't matter how long I wait after tuning -- I can wait many, many sec=
onds. If I look at the samples I'm streaming and capturing after tuning the=
 RX LO, they look correct. If I insert a tone from a signal generator, I se=
e it where I expect, and it looks
 good. At least by eyeball, it looks like the LO is locked. Similarly, if I=
 run the &quot;usrp_list_sensors&quot; example application included with UH=
D, the results of the RX sensors are:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
-------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
| &nbsp; &nbsp;/
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; RX Sensors: </div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; Chan 0: </div>
<div>| &nbsp; | &nbsp; * ad9361_temperature: 66.783625 C</div>
<div>| &nbsp; | &nbsp; * rssi: -50.75 dB</div>
<div>| &nbsp; | &nbsp; * ad9361_lock: unlocked</div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; Chan 1: </div>
<div>| &nbsp; | &nbsp; * ad9361_temperature: 67.368423 C</div>
<div>| &nbsp; | &nbsp; * rssi: -55.0 dB</div>
<span>| &nbsp; | &nbsp; * ad9361_lock: unlocked</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>-------------------------------------</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>So, that is also reporting unlocked. Basically, I haven't been able t=
o ever read that sensor and have it say: &quot;locked&quot;.&nbsp;</span></=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Any help understanding whether or not the set_rx_freq() command blocks unti=
l it's locked or why I can't seem to read the &quot;lo_lock&quot; state and=
 see that it is locked would be appreciated.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<br>
</blockquote>
Any device that uses the AD936x family of RFFE chips is going to be &quot;s=
luggish&quot; -- at least when tuning further than 100MHz (AFAIR) from the =
current frequency--because the<br>
&nbsp; AD9361 needs a lot of &quot;care and feeding&quot; during tuning.<br=
>
<br>
I also recall that the AD9361 doesn't really have an lo_lock indicator, or =
if it does, the driver doesn't implement it.<br>
<br>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB331233081CB9FE97B11918ABB8279MN2PR12MB3312namp_--

--===============3251817038705267248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3251817038705267248==--
