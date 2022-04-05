Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FDC4F433B
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 23:57:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5F69384E43
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 17:57:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649195871; bh=Yk0hFq3N53cyo0O/cuaoOVgAsNbzCNvpU6wN9TvMkNs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uy3H50eQ0dNZdkXFB6zDY9zsHfGv6SxUT1z18C5t8c0/CNizr+Z/nkLhY+ga+oMoZ
	 uWYFTVJGn8CUqU/5OE57guSrQKqUQwTSru9aNk4HTwYs7pzqmiBjcX6q8jIhocN9AV
	 jAIOCo2+aW/zM3iJYiMv1CsefcKYP440blHovBLtqvPbZAt+OBdkNmZQYJThr9VFEv
	 +oJZOFa9h9vXRQWZ/OPU8BiDyQIsnc2ZNwv8A1d5+aZymWQPJI5aS86CESho5MgUNo
	 AyILuD6n0THorb76CE12xZgNFYGHmG/VAqa7s27erLaKl8mYDS65bzHyqR1scW8cIR
	 cPnl2glrTnq9A==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2043.outbound.protection.outlook.com [40.107.94.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 3484338472D
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 17:56:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="Mx8YlyjI";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYuPxPs6lqwpnExI0tjWAGdbeZxZ3qbUnXhAgTH60V2QB+FionX3WszScsx+erAtqtJWPfRbwsVbdlBw0X1xUGFCQZ67ktJtX0XbmF7hlRfJclzGMCZZ8r5FNs2ZSlLkDZTSdO7d1n+/n+z8PPfqv8JyN01GeZubU/YaNmsAgMFM1x9VYxJF4R/qmp+ZTKNCaCkV+xJoT1pVvf1bvo9bJ7ZcMwFvGsSxqSz8WbwJOk053Xg8iEeTnL7/86JBPsPpqSza7Hn4qRQ2axFkZsvrp4GNKNFAKPh+EGX8FZmUZ3hFn+wBLUcIzt45qucekT/wxQtlQ/dEOLHphWr3ehfwxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lmy2GoboWJuy8cncELhU+9Uitfwm6KAT6C8qYfofhcQ=;
 b=Mdb51hwepo9Rl1MaIZAlvmn2uQFcxcQiqal6lbm3JXFIORNm6BgWv/x+Pw425vUHxsb9aG398sPBBqdWe1piAlYu4WQEDAPlS7u06Hlrx2qIn4IaJMhVvmHQyBfoFbWj47Y771EIOqTq6xOvtZKJugYrH9NPzCi2UKYg2YND8p2P3moSuzqlAiwxpfB8tSbI3LIqoQqTQLkZcc2gQFF+hcM9Szjxa2X4bqaUpDIQn1GcXwFJ5CNuxCkZV1jQqL+pGodJHzKmAWXMXsCwSTECFdvBCiTs1wCy1QAHkt+dMI3Iu2k5RK6AhKbCvOLKh0DAolGIOa22KHeG7k1IeM3DGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lmy2GoboWJuy8cncELhU+9Uitfwm6KAT6C8qYfofhcQ=;
 b=Mx8YlyjIh//HHSFYxrHrmwc6YbmnVPtfFN3uEV6xK+yPCn2zv4Dd0Zoltwd0oS2C/qop/5kejLYELp9NNB7thjV/I2x4sBfxs3ElrqxY9p9ni7WtHtjUeYtZ6JAcGvTz/HG5L4MqtOvBxJeiIkjSx2lMKa3aJwf9YWr/3LbGySU=
Received: from BN6PR16MB1700.namprd16.prod.outlook.com (2603:10b6:405:20::21)
 by SA1PR16MB4777.namprd16.prod.outlook.com (2603:10b6:806:239::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 21:56:49 +0000
Received: from BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::10e7:deb4:4c45:55a8]) by BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::10e7:deb4:4c45:55a8%11]) with mapi id 15.20.5123.031; Tue, 5 Apr 2022
 21:56:48 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Question : Ettus FPGA programming using openCL or
 similar
Thread-Index: AQHYSMUtfxPNEjR6sEibmaBLSmat0qzhw1TA
Date: Tue, 5 Apr 2022 21:56:48 +0000
Message-ID: 
 <BN6PR16MB1700434DF02F423510EE05B3B9E49@BN6PR16MB1700.namprd16.prod.outlook.com>
References: <7c226640-d507-8758-164c-f4a745382678@bath.edu>
In-Reply-To: <7c226640-d507-8758-164c-f4a745382678@bath.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5f802115-8ed6-4662-9393-08da174f2f51
x-ms-traffictypediagnostic: SA1PR16MB4777:EE_
x-microsoft-antispam-prvs: 
 <SA1PR16MB4777098E8072DFA405ED8DEFB9E49@SA1PR16MB4777.namprd16.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jHWVfT6vFjiQ0mspEAPB9QL16cHc93dJ/P9xQ15xz8OUZK5fIXd0Im7KxSjE2iK8VFnblLxb71qsRggGuiNAPor901NdwnM8uq+rXBl2wKzEsfbr5cgvt7N8cvlFukkQc2BliMY5mTJevGRAsVENKf1ig8YO6LOU8B+imL9GisGPtQgO+wzLqzzz4xpQSprZAeDMSs4LA6dp3BWDwd5sqakxF2sbDaTdQxBfsIfSL7T1HP81OjioFpsLNWRvLIYhNwZn/gH40h4QRwQNGq55eIdGGDyjJS6qGc3OeXxyqVXS1M6jU0njR+YrqQcwf7BSpJnPw0MMQOjHiNEernGC5vgyQB0e6bWjTmX7zv5Kt2E8NNwCj1HhWbp5rlj03KaXWVYV/aNTE85o+qo4u3wDUUp7UXUJMif/U+ycvXWPXFD+2Q8OZUfAB5gk/7jejKMaIU+WfN/NPHJZ0QrtYeeT0lDQBUiRSJ2aNF33Jm2nJA4hje/hNtIQBjCepTMcjK6aaUo5fMZOz09GLbkVVtVmA8R+UNJxILOwzgQGqLBDgC9+8/Lhjrrs8y3ZZccaxpBDH712P69ST4COkqSSGWhjGgSWqc2jJDTHHvDI0PKSP/JMYQq7KwS76DUKelv7uMoM6g+TRpijuPt09DMxwp2KDL8SJY4OigsOChN60ZZUXtPNFOfhw7MlI0ZSfvmMJ8VJUABDERkOEfchBblaj5zbZg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR16MB1700.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(396003)(39830400003)(366004)(346002)(376002)(136003)(316002)(6916009)(33656002)(38070700005)(26005)(38100700002)(186003)(86362001)(5660300002)(7696005)(55016003)(83380400001)(6506007)(52536014)(2906002)(53546011)(76116006)(66556008)(64756008)(66446008)(66476007)(66946007)(8676002)(9686003)(508600001)(122000001)(8936002)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?X9Xu2T6FYG7gM42LI48KC4ckvnp9P6SpRfzkppKVAnnw/bOJSVboOnF4bQWl?=
 =?us-ascii?Q?OXWAoIQC8XSoFADUJROkFvptrBpG+sZmuOq5zSMD++p/O11J6SJgVPC09RWa?=
 =?us-ascii?Q?ggCnGIYyvGPldEonCcP9haJCddwsHm9jGQVsfVLn/B5v8snW2FnH2ReVbNUY?=
 =?us-ascii?Q?w8MnWMvR6/ThdDs1waW0tQcpkwIBtVnw4fnuX0pYGoMqmkXbfZ97Nkjv1ZyS?=
 =?us-ascii?Q?S9JbKScvd34au3NbdPv3TMAq1/Mf6vI1YcCptCCEi+tlzq9r4UUhEbOB1tEA?=
 =?us-ascii?Q?f00N/ufGzk7lawj3iG6uukvqEUaQQXZGk6t8ZGgr/D9c+LJj5big3S2TTiEh?=
 =?us-ascii?Q?OoMxVY64K5bZjMAg0lb15rLYHmDxX2ZKyuOiHMrqqTrOh2dse5jZh3cnIl0V?=
 =?us-ascii?Q?wsUi3EDZwgpkq2klbAOB2hxfzsQZBDuCU2jrSkZZuhjiQVqDbG9TpoCCRcKL?=
 =?us-ascii?Q?4OxljZLoRGHlEvIL4SX/hvehrKGcXs/9IVfw8If4n8putmgNZIGW2LMDkINs?=
 =?us-ascii?Q?quhrSW4l1KVKSYdjWzIg8/nk3AP7dq48/Fc9KGdpF5BT67a3x0amphhqty2D?=
 =?us-ascii?Q?aGPLGqsw5PPM5+wVfsgWKn6yyGdf1jOi964/T3S7sbV+loxPHaHJP0YD19fI?=
 =?us-ascii?Q?oxLGUGLDb0IMEsRN6Rq0dj7Pa+uwSed+VO7A1xLvF2ldCTaQl/15p5r8ETks?=
 =?us-ascii?Q?UQTf5amkTKMTjwWe/Rm4+LHhPxPBuKHchWajbCfb7B9PqLcDsOnpd9bIPnz5?=
 =?us-ascii?Q?71U0S9Vt74H+eS4/JgrWNEx0gfqDTQgvwXfoXvyB4W8Fv5ZLxNjSTbBP7EpJ?=
 =?us-ascii?Q?xt0DoYdWnne2DOydm9RW+45CvlJpaR1cs5djkTkA41l0LKbdeKx3Az7dTG3C?=
 =?us-ascii?Q?2PPURpSCV11OcM6h9UKKSHLTzA1SXzbVNDNbpUHUisdKb4KwRP6PXO5tzB9Z?=
 =?us-ascii?Q?P+Tbc8/sNmSnDDj5tEn8pcCHmWH+ASZxv3J6X4MFcUMcnbbT4B9WyDnSpDG4?=
 =?us-ascii?Q?Z3qJLrt2QeS0v2h3kbIkj0w9u4Um1vz6PAal0FhG55raFFE5GxamNCQTRw2C?=
 =?us-ascii?Q?XK/npLtTfIR0uXa39oDHEhOZGy6WaeLs4c6eirrO6MjlZVsmb/TZzrCiv0ul?=
 =?us-ascii?Q?+0Ix6JD79uMSvyjpbNR5ub/vgiXwXQWCbHKmzFuIgWYD6qohNtCW//Eokjvs?=
 =?us-ascii?Q?DLFRN+EMA5bmD/b+DTagYqkJ21L4KEbdFt6lTEf0m05WRf1bEGatdy+h2Wf0?=
 =?us-ascii?Q?LdtfNrV2hfxYioJbZkSVI4c81CDgk5NnYiFy4gbfu1tyMqxAkskAoYu74m0f?=
 =?us-ascii?Q?IPn4eIMDBnpgAGHvBbxXXSZywXpD6hMZa2F+BtMlQTGkblYLdbOlxcV8+0Yk?=
 =?us-ascii?Q?52yzksZUgPiY4+jlCq2WpPne7P/1+fDs03EleTAWQ2rmOB3kWF6A/6oyhZZc?=
 =?us-ascii?Q?KzrhcZ2VdxUFAPIZUIZFOwwaDTdZR6G+5FWcSqMyh+3E2qNUsUhcIeKJj5W2?=
 =?us-ascii?Q?DGA52DBOIyylh+JAjAuOOSmrrlFHDDLPKc2/Q7beP3GBiL5nojnYdhne6sr6?=
 =?us-ascii?Q?EH2nnfKB2naU3PdC2Xja1RmF068e8O4CX6DI3uVmjGw8OVI1NAeXo2xtb44+?=
 =?us-ascii?Q?/mUjPPkfvkBQJRZv/NMVy+mOPyjExSK+sCExixgy8DHOqY2JqlUFRKEqFh/o?=
 =?us-ascii?Q?zXMJKv5zuJTNZ0I2HmGfMA8Fc1AoeC+X1pjWQ8cTm66A7dFv?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR16MB1700.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f802115-8ed6-4662-9393-08da174f2f51
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2022 21:56:48.8358
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /gu+ZCcdwTYtwhxmXS/KeF98qHVeiPhsEhDSBZoNoEp4v5s1LpqAJcpNkNj3tMPlt8PgutfrEi5Iis5shBWvHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR16MB4777
Message-ID-Hash: F6FUMXR2KHYMRPMV57DO724UUGP5JKVE
X-Message-ID-Hash: F6FUMXR2KHYMRPMV57DO724UUGP5JKVE
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question : Ettus FPGA programming using openCL or similar
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PFFQTHM3TFXHKGIA275GOEIPD27CKVJN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

OpenCL is not really a programming language, it is certainly not a hardware synthesis language.

OpenCL is a set of extensions/libraries to a programming language (C, C++, Python) that allow the programmer to distribute their calculations among compute units in the system, where a compute unit is some component capable of mathematical calculations. It gives the programmer a standard way to access non-traditional compute units such as GPUs and FPGAs. To be able to do this the vendor of the GPU/FPGA hardware needs to provide the OpenCL libraries to operate with their hardware - no small feat.

So OpenCL would be a way to make use of the FPGA in SDRs as a compute element if it already had been programmed with some synthesis file that provides generic compute functions (that are useful to the programmer) but requires a library to get the data to the FPGA (via USB or Ethernet) for the selected mathematical operations and get the solution back. If you are doing this on sample data why would you bother (getting the data from the radio then sending it back again) when you might as well just place the logic (FPGA functions) to operate on the data stream and get/send data already processed. If you want to use the FPGA to accelerate calculations in your system then sure, you can do that but it's a lot of work. You may be able to find some open source project which already uses FPGA development boards with OpenCL and you could modify that for use with the FPGA you have access to. But the FPGA in the hardware you have alluded to is not particularly powerful and the overhead of moving
  the data on and off the FPGA probably would mitigate against any acceleration you would achieve.

But the bottom line is that you have not changed the FPGA functionality in any way through OpenCL, you are just making use of the function that the FPGA is already programmed with in a different way and you still need to use verilog, vhd, hls, or other synthesis languages to achieve the altered functionality.

jp 

-----Original Message-----
From: Peter Featherstone <peter.f.j.featherstone@bath.edu> 
Sent: Tuesday, 5 April 2022 18:14
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Question : Ettus FPGA programming using openCL or similar

WARNING: This message has originated from an untrusted source. Be mindful of attachments and embedded links.

Can you program the FPGA of either a E3X0 or B2X0 series using OpenCL, SYCL or similar tooling?
It would be cool if you could program the onboard FPGA using C/C++ - like tools and get real-time performance at high rates.
This might be wishful thinking but it looks like this is more and more possible these days without having to touch VHDL or Verilog (at least with Intel FPGAs) Thanks

Pete
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
