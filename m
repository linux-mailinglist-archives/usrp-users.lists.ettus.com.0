Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFA5683938
	for <lists+usrp-users@lfdr.de>; Tue, 31 Jan 2023 23:21:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2253383F99
	for <lists+usrp-users@lfdr.de>; Tue, 31 Jan 2023 17:21:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675203665; bh=ymAcyhwFDhH3vvtptQj7Cow5gfM2ZE9sVwiEGJ7/wHE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HuFrB04q/bcEcrrAUPeMDf5V0+EnZQp1F5RBZ0OimJwkK06V9OISnMlrwLClAXWOE
	 Fpg0v5Yl6Yh3NT/ikj9IZotQlsf1yXYOHCp56sLz2k0kkG+Tbuf+OoD4REIwwzvpAA
	 vjKpHlN2UPxpzYPgEFSJIayS7KmHIYPXcmrg8ngWUYgwUJ/PzkrLxzbR1YJjtrMOo2
	 Qdn8dQ1YvcjWdGCYfeGnPwHHl6QVNRLnfpynFqjOSq/ePImt8st+ruGGlGryi902XR
	 SaYtiXTtpx0UdobEd8NhcXGEYgcdQwpjzcT9SPEZScf0zvusBhNsQa8wDmkNY4AAov
	 PfAWQsqhP7Wdw==
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2057.outbound.protection.outlook.com [40.107.100.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EE72380CE8
	for <usrp-users@lists.ettus.com>; Tue, 31 Jan 2023 17:20:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="MTj78516";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOhzQWoQ3QEDX/2HT4PB4YsEbk0DdQ514ldE1sFqEtoh9L8tOHN7QMQSWHdx/lEPXCz3eRdOmiY1qpYag3bxq4v426U2Adjew7Qbj38J6kNRaT6h3uPKh71tGDIqs++6Mf7PcQ0bnYy8EVxash5ejRc8FGhwY3QoOHQq43lTVTtkTTjh1F8oDS4qOf8l46/RX62WAIJvmBFpa8uDhhF9yAZoDd+L1S15Q5mQ15ZhyA0vnoQDJg6MAoKQuWJHTovvvr0rdct3X8jJpjXWPd3ddc73qLQAWSFWG/VFQmiySSVoLPeHtftzxJz/9V/TMJdg1nWg2sHWztsp8C9GVQxKjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cBvKhJ3YdETsXOH15plrBNShm9l1fNF0OBBxJ8aL3w0=;
 b=WJSQfONVimjXy5tXBZ/wRYTS4rL7sGTK01l8qmRcQFgn98JYk66UqcLPHWXV/4uWHu3bTMUfklNxZHlpgdf/9Ydnmg5J4e8e5mBPDdWeXFapEziPOz3wKvgqMHOXztrH6gbJzh0mHOQd5AJWOcRhhUQ6RGYTjF9hF/IqxSdW3z4hDSHXOgtKnkRCqdPcChr+F7930EUlKyuhl5msL5+jlqLxVEHkRqN5VuepSEVFdwHB8uG9sk/jxisLqxZrmHfnUKpbBgibKgrozKhEH2Vb7O20NREpWLAbzvhVccsTy7zJFtrge1pFC4beH0AuA0xoc8mKVmsxO0+oz/kAVN8Trg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cBvKhJ3YdETsXOH15plrBNShm9l1fNF0OBBxJ8aL3w0=;
 b=MTj78516zpvTs8HBJnMMGHN/su4OqTX75J7YI2tgtVNaPsKtxq/4KRmAFeASAtYwiUqGOKo5hnqt4yCJTsAXxSoIYT1seEQYRy1k9pdGeFVJaE7JK/olvaukzDXwcsQfBeC5RTJDr0f/+zSEN1UMvCXK73vn5mvO5S5bTFD0pqGrPFe2QdWl26yt5trKiWtSi1reYf3QgZObcKLaWWKLp5PY+geOiqaNEyHgMUmtZmq8It1C0YF6BHhLSZAd4+1sMvRiiUrdNSMnUYkiG2M1a+htnUhRzDUmN8uHbKNhDmMu9/igBxaZF2YwZr84rOBMccZb08PAUf03p/7sebNs7Q==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by SJ0PR03MB6926.namprd03.prod.outlook.com (2603:10b6:a03:43c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.22; Tue, 31 Jan
 2023 22:20:56 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5%7]) with mapi id 15.20.6002.033; Tue, 31 Jan 2023
 22:20:56 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "jmaloyan@umass.edu" <jmaloyan@umass.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Error when synthesizing example OOT block : IP
 "cmplx_mul" is locked
Thread-Index: AQHZNcJJ+zOZIyLwc0quNEfWmSQD5g==
Date: Tue, 31 Jan 2023 22:20:55 +0000
Message-ID: 
 <BYAPR03MB467806254313359B175385A6D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
References: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
 <BYAPR03MB467853DF27EFC17161E17D86D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: 
 <BYAPR03MB467853DF27EFC17161E17D86D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|SJ0PR03MB6926:EE_
x-ms-office365-filtering-correlation-id: 6fe08d22-2354-443c-a3c8-08db03d96c24
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 iAfnK2uZaaX1FMDsYPepGBuw5bN6AZ2N9qVsUr6zY31DgbIzYeHvc9TrgnpUHWkdFiXx0JBgRScSb6IhZUFs3FC0EiXXgqP/H5Nw+LsUHzJwvXZ+k2jVdVuQs4uhKIiwDZTbp9lVdult4Vi8DRLX6QWXSRRvWjhGNTc2lOU6MwE06pG3bgPb9NFClXht1iadeonBQEu76jAwukutuYg1L3Fg9aLMyfAlUO9wt+Ej89VDUGwL23HkguDolXZjrcUkmcOMtkR/+IkGpbEOMb9ZgeVKgjz0Q6TS439PFVqb+5qxF5UKhQ5YBDWeJf31jwrAavOURmdvYXBxpyC6gmW6doHak+zEzfTooKp2CO0Gar5wIoaCeObYYiVm/lG5oJC/RRrAjq4At8zXku5yNCihPxN7Drhq99+YfN4TfVh+PLsNPUoYhWmLUgEWHHRGnQWUD66kcGKOQgU4mtn5VwGnxu8HOVATFRX9w/Eb24IlzFO0KWdaxooCHPpJpOhvYB4FxvUDpa1W8U+CfE30l1h99Gc9mY0uUIOO9IdF7BL49ufdBGZN4vlKjIFx1jpC3wpQ7Pf2vYSJbqNfRS+8qxg/yFoQ4gpSww4TLTGTOM902hKWrj0lAnCjc6FXIXwO1K9gc/6d4FLXQpUAO4YPpUYZIbOWyS/ygEuXw4cRULe+QuWW2XKxb0mzOSVlwnqqrKHEbGBvWwr/XO9nEDy4vzO9IVLGThx+eihmlZtES6UiDZg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(376002)(396003)(136003)(39860400002)(346002)(451199018)(19627405001)(76116006)(8936002)(110136005)(91956017)(786003)(316002)(8676002)(66946007)(66476007)(66556008)(64756008)(55016003)(38100700002)(33656002)(86362001)(166002)(38070700005)(122000001)(41300700001)(53546011)(66446008)(2940100002)(52536014)(6506007)(9686003)(26005)(75432002)(7696005)(186003)(71200400001)(2906002)(5660300002)(41320700001)(478600001)(966005)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?W1+FgrLN7+8fVMdlu367bA7k4JUcC00A1/1Em15wAo8eyw0hgtGKAW1l?=
 =?Windows-1252?Q?iqg+hggPJ+8ZtYguvEqwg3oNbKDJMXsGqmYToISXPlsDRYFLng6rOS0y?=
 =?Windows-1252?Q?9d3eBsj5kjwJCvdJ/e1ZX0+pX6dSj3ztf1xS0SVGBiYC9p4VabpS2WkQ?=
 =?Windows-1252?Q?NYsbGA1BL94wdomR9srY3TjOoaZejpx/0V4M4FnyMa4TnUArMOYp4BmR?=
 =?Windows-1252?Q?dXE71izamt8XJIfY87t+VYz/2BtfiBeDyPILUlQqMWwf+0OqBSUZcEKQ?=
 =?Windows-1252?Q?X87NNQvFJx9UPssa9sgP9GfjnXUhas2gNyHdvGcXI2rixKVtOtvUEl/a?=
 =?Windows-1252?Q?vj6rCeZVTNpbxhpYrtj9zxm9VJXp0ZeGaz3V+7PPBHoqEB2ipZOyw+rh?=
 =?Windows-1252?Q?+9FsOzkSwqguNiUby2GpBjRLb/CfrWL/6xcyPZ4peREiMyqK6PQAorll?=
 =?Windows-1252?Q?8Tf/tp9oTHWnR4OUf5g4/YOHZpAKT9ymHvyIOyBuWBvh+SbML09aFSX5?=
 =?Windows-1252?Q?gzoXB0KWtJMz4JOgF1nfUWTPZ3m47SOHT5r/ekmNADaz27/5v9kyoAdu?=
 =?Windows-1252?Q?qe5Fp9YIkT64pIGKUyofbBh2Mw2nz7lhYGDMzof37HVbeqRtswhhbUw/?=
 =?Windows-1252?Q?GK2aRd55crR6ffpEIBT8CTNKAus4LB34X48XJX9xdvHY23amaxeT9OLi?=
 =?Windows-1252?Q?+oAcSLBsYNVqA/FjylSjQdyUewPSKmg+njRnMeUzeplJuW1rBHtKDJpi?=
 =?Windows-1252?Q?2X+U1vTCVUT+mhDeWfkjPn/LSA/MFMvKz+LuG7kCxMHwGtOUmE4oBFgr?=
 =?Windows-1252?Q?bgllSbCGJc2speyK30ZP40Jds5lVX1FxleletOqAvN88syBBUJxE5m6Y?=
 =?Windows-1252?Q?YwhAZJ2ZTuuGYAGh2Od9Ue/7cWPItaeN1tvA0SYOhBzCckNiyHmSHG0I?=
 =?Windows-1252?Q?9aKVcCpPkeEtkBQ2H8HZRQEN63nObAMFLumwx0sNBq5gVKQcGMT6JOeb?=
 =?Windows-1252?Q?H5SMzsXoWiVm2TVs/ch7xpqN9IJ1Lg/htuwXLQYWY6p7+iI6uTtjfedE?=
 =?Windows-1252?Q?aYnPbAPY3Arbqt5HkwFBpggWNx3M/a1zlJ2iZfojH78hwpyPdLpR4P71?=
 =?Windows-1252?Q?hJnVjexyqm+LOp6Yfo41YaovmKqaCBfi3k87d7ad1MxP2fIhDhraRQsr?=
 =?Windows-1252?Q?0ND5mvUZfsftYRjDud338DNGx9uFN52yB+g9ivhkRk9T0ISChr8S8dBH?=
 =?Windows-1252?Q?MwDcfx7MJMztScuNhtWaxiKdyPazjHrXpm220D4qMt7oItMHrKrWaUIs?=
 =?Windows-1252?Q?z+u4jDBrZyMjtIySNmwS3iikjvBdqnhsRfnts7SKfgcTVSgEGnT9u1u4?=
 =?Windows-1252?Q?rqC/jh3Gxsx0mw7AMZ2+7wjJPDlUeyPE5Y3bddnlY+vvTBQ2KyiWxIZv?=
 =?Windows-1252?Q?+vFlsVCu0CA1HF2GMr4UJtv3BpDqw7Z/ljETaFUokOH874jMiSVXtVaW?=
 =?Windows-1252?Q?/7dsG4tZ2Fn2QDbdSnStZWNynz2ldKzcNPW04FZGy2eCf62bgjyGTY51?=
 =?Windows-1252?Q?jfamC+rHt+MnSLy5zYQhwJHX9yHkPTEcZ2/Qv9ZjCjj4CuElDZ0ThA4V?=
 =?Windows-1252?Q?fbSxECeWwbIQZrF/I/s3E7FuCCYHofHDVaLrGCu/L7mhxV5YFpLJQNzp?=
 =?Windows-1252?Q?hQqpacCKgr84JztftYUhjRfC3Zu3B9CY?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe08d22-2354-443c-a3c8-08db03d96c24
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2023 22:20:55.9715
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z3QsW2op2ozMO0rvTbludVZAbryvqB0arn3SO/qHT6WNdA5+/h5/VP45udAe4cpy9rCidY0PZP1Jlt4HBvVMkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB6926
Message-ID-Hash: MCI4XOZEUDF2UH5WRQBZOEY5MQKYOXR6
X-Message-ID-Hash: MCI4XOZEUDF2UH5WRQBZOEY5MQKYOXR6
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3J66XQ7PTO2AAWXOOTUBETX35V2GND3G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7913322150207312818=="

--===============7913322150207312818==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB467806254313359B175385A6D3D09BYAPR03MB4678namp_"

--_000_BYAPR03MB467806254313359B175385A6D3D09BYAPR03MB4678namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I tried installing Vivado 2021.1 and applying the right patch, using UHD-4.=
4 I still get the following error message:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP axi_hb31
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location: /home/lorenzo/uhd/fpga/usrp3/top/x300/build=
-ip/xc7k325tffg900-2/axi_hb31
BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source /home/lorenzo/uhd/=
fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_hb31.log -nojournal
WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
[00:00:04] Current task: Initialization +++ Current Phase: Starting
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7k32=
5tffg900-2/axi_hb31/axi_hb31.xci
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7=
k325tffg900-2/axi_hb31/axi_hb31.xci
[00:00:04] Current task: Initialization +++ Current Phase: Finished
[00:00:04] Executing Tcl: synth_design -top axi_hb31 -part xc7k325tffg900-2=
 -mode out_of_context
[00:00:04] Starting Synthesis Command
[00:00:04] Current task: Synthesis +++ Current Phase: Starting
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.
WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified


Currently looking for a workaround before reverting to 2019.1 and UHD 4.2

Lorenzo

________________________________
From: Minutolo, Lorenzo <minutolo@caltech.edu>
Sent: Tuesday, January 31, 2023 11:48 AM
To: jmaloyan@umass.edu <jmaloyan@umass.edu>; usrp-users@lists.ettus.com <us=
rp-users@lists.ettus.com>
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "c=
mplx_mul" is locked

Same here.
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in [IP_Flow 19-2162] IP 'axi_hb31' is locked.
Apparently, this error is well known https://support.xilinx.com/s/article/5=
8832?language=3Den_US

I'm trying to switch to UHD 4.4 to see if this error goes away. Everything =
was working really well in UHD-4.2 and Vivado 2019.1.

Best,
Lorenzo
________________________________
From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Friday, January 27, 2023 2:17 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Error when synthesizing example OOT block : IP "cmplx=
_mul" is locked


Hello,


I have run into an issue when trying to synthesize the =93gain=94 RFNoC as =
described in the tutorial here https://kb.ettus.com/Getting_Started_with_RF=
NoC_in_UHD_4.0


I get an error that the module cmplx mul is locked. I found that in the ver=
ilog file =93rfnoc_block_gain.v=94, the module is instantiated there, but I=
 am unsure how I should proceed working around this.


Here is the output of the vivado -version

Vivado v2021.1_AR76780 (64-bit)

SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021

IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021

Copyright 1986-2021 Xilinx, Inc. All Rights Reserved

And here is the output of the error

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Building IP cmplx_mul

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Staging IP in build directory...

BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...

BUILDER: Building IP...

[00:00:00] Executing command: vivado -mode batch -source /workarea/uhd/fpga=
/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojournal

[00:00:05] Current task: Initialization +++ Current Phase: Starting

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg=
900-2/cmplx_mul/cmplx_mul.xci

CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100=
ffg900-2/cmplx_mul/cmplx_mul.xci

[00:00:05] Current task: Initialization +++ Current Phase: Finished

[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z100ffg900-2=
 -mode out_of_context

[00:00:05] Starting Synthesis Command

WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

[00:00:06] Current task: Synthesis +++ Current Phase: Starting

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

ERROR: [Vivado 12-398] No designs are open

[00:00:06] Current task: Synthesis +++ Current Phase: Finished

[00:00:06] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Warnings: 3

Critical Warnings: 7

Errors: 8

BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CMPLX_M=
UL_TRGT] Error 1

make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'

make: *** [Makefile:90: N3X0_IP] Error 2

--_000_BYAPR03MB467806254313359B175385A6D3D09BYAPR03MB4678namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I tried installing Vivado 2021.1 and applying the right patch, using UHD-4.=
4 I still get the following error&nbsp;message:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
<div class=3D"ContentPasted0">BUILDER: Building IP axi_hb31</div>
<div class=3D"ContentPasted0">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div class=3D"ContentPasted0">BUILDER: Staging IP in build directory...</di=
v>
<div class=3D"ContentPasted0">BUILDER: Reserving IP location: /home/lorenzo=
/uhd/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31</div>
<div class=3D"ContentPasted0">BUILDER: Retargeting IP to part kintex7/xc7k3=
25t/ffg900/-2...</div>
<div class=3D"ContentPasted0">BUILDER: Building IP...</div>
<div class=3D"ContentPasted0">[00:00:00] Executing command: vivado -mode ba=
tch -source /home/lorenzo/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl =
-log axi_hb31.log -nojournal</div>
<div class=3D"ContentPasted0">WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is l=
ocked:</div>
<div class=3D"ContentPasted0">[00:00:04] Current task: Initialization +++ C=
urrent Phase: Starting</div>
<div class=3D"ContentPasted0">CRITICAL WARNING: [filemgmt 20-1366] Unable t=
o reset target(s) for the following file is locked: /home/lorenzo/uhd/fpga/=
usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div class=3D"ContentPasted0">CRITICAL WARNING: [filemgmt 20-1365] Unable t=
o generate target(s) for the following file is locked: /home/lorenzo/uhd/fp=
ga/usrp3/top/x300/build-ip/xc7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div class=3D"ContentPasted0">[00:00:04] Current task: Initialization +++ C=
urrent Phase: Finished</div>
<div class=3D"ContentPasted0">[00:00:04] Executing Tcl: synth_design -top a=
xi_hb31 -part xc7k325tffg900-2 -mode out_of_context</div>
<div class=3D"ContentPasted0">[00:00:04] Starting Synthesis Command</div>
<div class=3D"ContentPasted0">[00:00:04] Current task: Synthesis +++ Curren=
t Phase: Starting</div>
<div class=3D"ContentPasted0">WARNING: [Vivado_Tcl 4-391] The following IPs=
 are missing output products for Synthesis target. These output products co=
uld be required for synthesis, please generate the output products using th=
e generate_target or synth_ip command
 before running synth_design.</div>
<div class=3D"ContentPasted0">WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is l=
ocked:</div>
<div class=3D"ContentPasted0">ERROR: [Designutils 20-414] HRTInvokeSpec : N=
o Verilog or VHDL sources specified</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Currently looking for a workaround before reverting to 2019.1 and UHD 4.2</=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Lorenzo</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Minutolo, Lorenzo &lt=
;minutolo@caltech.edu&gt;<br>
<b>Sent:</b> Tuesday, January 31, 2023 11:48 AM<br>
<b>To:</b> jmaloyan@umass.edu &lt;jmaloyan@umass.edu&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: Error when synthesizing example OOT block =
: IP &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<span class=3D"x_ContentPasted0" style=3D"font-size:12pt; margin:0px; backg=
round-color:rgb(255,255,255)">Same here.</span>
<div class=3D"x_ContentPasted0" style=3D"font-size:12pt; margin:0px; backgr=
ound-color:rgb(255,255,255)">
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in&nbsp;[IP_Flow 19-2162] IP 'axi_hb31' is locked.</div>
<div class=3D"x_ContentPasted0" style=3D"font-size:12pt; margin:0px; backgr=
ound-color:rgb(255,255,255)">
Apparently, this error is well known&nbsp;<a href=3D"https://support.xilinx=
.com/s/article/58832?language=3Den_US" class=3D"x_ContentPasted0" style=3D"=
margin:0px">https://support.xilinx.com/s/article/58832?language=3Den_US</a>=
<br class=3D"x_ContentPasted0">
<br class=3D"x_ContentPasted0">
</div>
<div class=3D"x__Entity x__EType_OWALinkPreview x__EId_OWALinkPreview x__ER=
eadonly_1" style=3D"font-size:12px; margin:0px">
</div>
<span class=3D"x_ContentPasted0" style=3D"font-size:12pt; margin:0px; backg=
round-color:rgb(255,255,255)">I'm trying to switch to UHD 4.4 to see if thi=
s error goes away. Everything was working really well in UHD-4.2 and Vivado=
 2019.1.</span><br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<span class=3D"x_ContentPasted0" style=3D"font-size:12pt; margin:0px; backg=
round-color:rgb(255,255,255)"><br>
</span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<span class=3D"x_ContentPasted0" style=3D"font-size:12pt; margin:0px; backg=
round-color:rgb(255,255,255)">Best,</span></div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<span style=3D"font-size:12pt">Lorenzo</span></div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> jmaloyan@umass.edu =
&lt;jmaloyan@umass.edu&gt;<br>
<b>Sent:</b> Friday, January 27, 2023 2:17 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Error when synthesizing example OOT block : IP=
 &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hello,</p>
<p><br>
</p>
<p>I have run into an issue when trying to synthesize the =93gain=94 RFNoC =
as described in the tutorial here https://kb.ettus.com/Getting_Started_with=
_RFNoC_in_UHD_4.0
</p>
<p><br>
</p>
<p>I get an error that the module cmplx mul is locked. I found that in the =
verilog file =93rfnoc_block_gain.v=94, the module is instantiated there, bu=
t I am unsure how I should proceed working around this.</p>
<p><br>
</p>
<p>Here is the output of the vivado -version</p>
<p><code>Vivado v2021.1_AR76780 (64-bit)</code></p>
<p><code>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</code></p>
<p><code>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021</code></p>
<p><code>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved</code></p>
<p>And here is the output of the error</p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Building IP cmplx_mul</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Staging IP in build directory...</code></p>
<p><code>BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...</code></=
p>
<p><code>BUILDER: Building IP...</code></p>
<p><code>[00:00:00] Executing command: vivado -mode batch -source /workarea=
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojou=
rnal</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Startin=
g</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for=
 the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/x=
c7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) =
for the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-i=
p/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Finishe=
d</code></p>
<p><code>[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z10=
0ffg900-2 -mode out_of_context</code></p>
<p><code>[00:00:05] Starting Synthesis Command</code></p>
<p><code>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output p=
roducts for Synthesis target. These output products could be required for s=
ynthesis, please generate the output products using the generate_target or =
synth_ip command before running
 synth_design.</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sou=
rces specified</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Starting</co=
de></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>ERROR: [Vivado 12-398] No designs are open</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Finished</co=
de></p>
<p><code>[00:00:06] Process terminated. Status: Failure</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>Warnings: 3</code></p>
<p><code>Critical Warnings: 7</code></p>
<p><code>Errors: 8</code></p>
<p><code>BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_I=
P_CMPLX_MUL_TRGT] Error 1</code></p>
<p><code>make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'</co=
de></p>
<p><code>make: *** [Makefile:90: N3X0_IP] Error 2</code></p>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB467806254313359B175385A6D3D09BYAPR03MB4678namp_--

--===============7913322150207312818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7913322150207312818==--
