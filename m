Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE27B5F112D
	for <lists+usrp-users@lfdr.de>; Fri, 30 Sep 2022 19:53:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E556383D41
	for <lists+usrp-users@lfdr.de>; Fri, 30 Sep 2022 13:53:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664560417; bh=n4dEEPuPZzhy7Mz0YU03EeM9DtjUwak3OaLAWf0vSC4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rizc/jcbBReBv4xtw+OMnwG5I/lH7DehzA8Cl8gmvBxssdILBNp1JdXZOEFAnoB6i
	 owFopapAk0Dmuy+2bEBXE4MwmQKh+InIdFuM31pc38CviWD8ao7x+lbJUXxo2Y2cv8
	 Twaml+6kD6yiHuQlh5nAXHOv48dWrl2AwbPbvKHWANG3zKiQBLwN9GoN8M1j+ldOCM
	 rTbQBAEoE1EIWJ5CvD4sl+zgdJEgGESM/aVJuGR+aPEnV+FFLI6ezY6EjSrOFdFk64
	 1fhMIHaA+ocqUPywLPkdzK0aEsAuJpDq3BWL4eoZZ/McxhaHO8K0/ToIfj5HxbtwvN
	 CotdEJ7G61Qog==
Received: from na01-obe.outbound.protection.outlook.com (mail-westcentralusazon11010008.outbound.protection.outlook.com [40.93.198.8])
	by mm2.emwd.com (Postfix) with ESMTPS id 571FB38370D
	for <usrp-users@lists.ettus.com>; Fri, 30 Sep 2022 13:52:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=minersutep.onmicrosoft.com header.i=@minersutep.onmicrosoft.com header.b="vp+ihTiV";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gVYH6vmHy3vi1kIebNWql3vs97QaXwbsDupl9j+2+5ZX9xt8mRI7+4XneH6z4YXlStdPFG6PzZ2+wRL4X7sj+N5yBTsHTQEF8ATG48UheevFwMJVo420CqwQuLghofgvl2JW3lqdBGPPxv9rQmTJeZNCUeuInXDY+yZ3NvLBvF40aq+4Zm37WQ7D1NSqkgsAhz0QWwuXX90LWIXX4K/B+KSmwPC1TkhwhSNXoEisOdmpXrLgJf8Ne6MAXmD4weE4UGTG3BrUiFAp8cOWedzw2RJI7EdAOq5FWuelTxEuRmHDumJRUp8IXMrmBrxTXGmKQUh1eja0sMMAB0G1+u21gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ekAcSETysERAAlaA/lMFUkzNO8SPK2s5uzYhJoy3twE=;
 b=CflpeGOuRovk4o5Zr0TecX3iI746kOdUtVbMhJU4byMdQFL5pOXpqfugYVu7WD1ThuGAt0n9sIXxBxpIoUj3FvVwVOpmZctakZ3qB224fCoVy8wlBCGpQMm6ElyV8rBI1n0fw99wecXTzuA02l/H9AHska5Ua3PzX3bS6FaiH6wsoLyVuqJem9QC0JFyEADAbHEMjQVBF+Pr+CtCQ0sgzo4u9P1cSowh8mFZTLwCnQqTbOIQZfrF1OTdABIAPztasn09hAYV2XcdU4Wk1uLedmG4L8wZJuNCy8KiuZFO9amAwPEskkkLtkJl7Ze6VrmSPdptPgpa8Qger4rpqov72w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=miners.utep.edu; dmarc=pass action=none
 header.from=miners.utep.edu; dkim=pass header.d=miners.utep.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minersutep.onmicrosoft.com; s=selector2-minersutep-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ekAcSETysERAAlaA/lMFUkzNO8SPK2s5uzYhJoy3twE=;
 b=vp+ihTiVZMUmI1qIc2RyjZ3UFUEl2tW/VVfPefe+6Rt23V79wIsgc9uTjBy0QG+vSakQRjbg57XZtSyn9IpD4BL6QgdgBIHzQBhvwu4LpJS+MsJMpa0wmyGTtW0EbjBhnWEHC6HxxT2zOqTRZ4yjh+/67sqkExe5MJ0bM4cpy/0=
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 (2603:10b6:803:4a::25) by BL3PR05MB9041.namprd05.prod.outlook.com
 (2603:10b6:208:3b0::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.9; Fri, 30 Sep
 2022 17:52:41 +0000
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47]) by SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::9:e275:61a1:9f47%3]) with mapi id 15.20.5676.014; Fri, 30 Sep 2022
 17:52:41 +0000
From: "Avila, Jose A" <jaavila5@miners.utep.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 calibration 
Thread-Index: AQHY1PVvvnT8AoOmaEqhESxG8eHlCg==
Date: Fri, 30 Sep 2022 17:52:41 +0000
Message-ID: 
 <SN4PR0501MB39196A468FE60A25309E729ED9569@SN4PR0501MB3919.namprd05.prod.outlook.com>
References: <166433158290.21418.10559811400103825515@mm2.emwd.com>
In-Reply-To: <166433158290.21418.10559811400103825515@mm2.emwd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=miners.utep.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN4PR0501MB3919:EE_|BL3PR05MB9041:EE_
x-ms-office365-filtering-correlation-id: 4f299d6e-926e-4b5f-f8be-08daa30c9207
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lLFN2XWL5k646xFfjgxYxxFaLILN/AM4Jl0gURJqe6201vRBHF/PJOVHQIkaSq3/X1e7NGcfAZQxSgzUgcZhb4zq0BwDNpsmwvy/NsfUT+C2zL1MNTKj125yuv3qEzk13vU5g53Qd/QmKB3vJOqL1ZQC81iFBWd0py/po2BfYYaPe9P9p6iyCgq/TzKr9W6g+VoO/jvr7LnGKIfep5zIBbrhQR+HXPFoCmATTtXoNxeMJX4bQald+LwIFp6xM41w17ys8iUDJ/fcHGWZI8c1aejZQQ0MCgQNAGm+EOrmAtWARnfRpCWGhXmmPl8sn8rxFWKZytEkpaZwxqkwn5ahjw5WpPOmua39foN6mxxRy852u7yjHdeuY/CkUqdGjaPuYdW2riBz/sFCGYNmSbE5gEBn8sLjeVJTltIyiOFApzetb8wXfOC3ygcmGOqbNAIIxMxHhCDFnTF4UrBaGj9xgQWtDOpmJS2f7a7gxW7OuH80qGstD57jMUwPcRo4dph3AuZgrRNX2w5kCBSWX21eF9IaZCcf5Jhx1XLXLObWsyoRtY350eI7o2A/Vkzr/+4/Rl0ZraCIGEsywXKu2R1YfhWKHUS7a6GLbofB84JQS5ps+pgwBwlYCd3sOTzuM8ofFQpX35Vr70em/ofabhN8V0Jp1+MqoXb6bG5EwH1q9Q17dD+HXQkrdlfwXLCR51NsIHG1ClXhD7RWxCMUvp1cpArMHLpSQeDoBs2jA/3BWvBAaI8667wG9uyQtKJb2A4J1b0pjjR7ArcxpouoF91eMcrLhBjeYM9VG7GtXDxoga0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0501MB3919.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(451199015)(75432002)(83380400001)(8936002)(6916009)(6506007)(786003)(86362001)(53546011)(9686003)(33656002)(66446008)(186003)(38100700002)(7696005)(30864003)(4743002)(166002)(26005)(2906002)(5660300002)(91956017)(8676002)(38070700005)(64756008)(66556008)(7116003)(41300700001)(478600001)(316002)(41320700001)(76116006)(52536014)(122000001)(55016003)(66946007)(66476007)(19627405001)(66899015)(45080400002)(966005)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Q+3Bpfi+lh/fgc4RJD3y7lSfcrRI9sALCCktZ/tFOT5PWLYQYUJL3FVLZe?=
 =?iso-8859-1?Q?alSIBtpVA98zzExSfU7QvkqWw5/4iJw7WcwT0YjhZetlIN4V0XDyt+1hqj?=
 =?iso-8859-1?Q?qBkp9Cc94/TtHXJ1H3/JUq8pAxYANruHyqdT4PKZxAKm4A/6cCt641fAjc?=
 =?iso-8859-1?Q?4SyOm86SDq3spa7zwA8TVS1e9sOsqh/OiL+HvMxJZhrdQqM1kN6ENzp3RO?=
 =?iso-8859-1?Q?RhqMYjkmVE+eJfXLFfUzRC7hpwb/y0vu3JFl5EGnhsLQkWD6QsYbfJq14k?=
 =?iso-8859-1?Q?7JcCsJ3LcA+uu6fOcOa/d1Ck0kC3WEPQn7IGuxLUHo+aHIxDbTqxeC+jlQ?=
 =?iso-8859-1?Q?a8PQJ4JciMIPgxUZ1Qh2xT4wxaGfs3gQjN45naV/5tMiwUDJpV8OWsEYPi?=
 =?iso-8859-1?Q?EwWuiZKItpUqXBBOuojwxwB/8MW3IEN2bTbZbVmD2+mcfjx26Z32CUa5BH?=
 =?iso-8859-1?Q?Iq+Nx2T18UDjpShKxrf8czPjD+Fn/pQrb9S8Sl+8RIR6x1Ru+f4v42K/DU?=
 =?iso-8859-1?Q?n1YdSB/uPwmyL1WlT5h/mjNW+Vb1L7WshMm2Y02TKVdbTCxA1VovHLV3Sj?=
 =?iso-8859-1?Q?OIvW+XJ2STCACxtqiKpabOHQ2fcaIePMlPWF/CB9RpKi5OxgLriYhJlqZG?=
 =?iso-8859-1?Q?J8HjGYFAOigC4xeLwl/M36jNRyepr2CIPSDcAd8aBziVFq76U/I2wv+7d8?=
 =?iso-8859-1?Q?iiT53HwoCxLyiQiAioXiEfJgU74Q56VJI7noUAvXn3TJVsQuFKOdJ80vcd?=
 =?iso-8859-1?Q?2w56gumJHrb4vyzRNLlCnewcOA2q1/ehGBKflZx/Qn0zW68m8ZDjWmgFge?=
 =?iso-8859-1?Q?ZiCYwCTGk4ePIpPOA5+xLZqxwnvijV4ah0g7GBFtBaq9nXOQGpKRUVlM0j?=
 =?iso-8859-1?Q?NYW1+qhQk9Un3PUGY41c6g5Ms4CWSbynwidvSzthy+48ftmGsWy3pnGDAG?=
 =?iso-8859-1?Q?l6ObY8zHkLJSBeUrrIsDJqvkehaj0GVQ1S+7Hk9EavgcFts0chn8WHw/cT?=
 =?iso-8859-1?Q?mOVixKAQumh7TrF9IqweZsXNu0gWStMfOzXDva9wQczXIfHaPXL9tMBHxV?=
 =?iso-8859-1?Q?Vg0Qa0WpqOhrAalnOBm/KND2yPIi+zaUJQZBwpwYpDjcvb+Fkvrp2+g6Yh?=
 =?iso-8859-1?Q?vLrk62jBIJxv5hnDUDUSNr6TK+uuxnBqYnGQ8yRoPxq2xb0Tz90Rj+qtzD?=
 =?iso-8859-1?Q?3JvgfJA4SCNak2HgrrO3TYJ4tfRkKr0k0xf4orQU70iFs3KwzRdBDqKF/8?=
 =?iso-8859-1?Q?7cd63JjB2vHIbjqokUDGeOUIqV1sqEpw5ONsOc3VZlNqtLA4H7Ax8h0PiQ?=
 =?iso-8859-1?Q?V2zGz5QmaGdPKhxqxzbRK5NHLzDd9iowgNymQhSiDsVxWM1mgoDqfgC54E?=
 =?iso-8859-1?Q?3oKycLZjdZJEXyypDgfafX90oncRQE2v8jGegwCvM7rcdaWkBmF+llEclg?=
 =?iso-8859-1?Q?lwWu2/XTQ1Lzi8gKG746l7Oi7igIEp9dmffE9XL5xSYctWXYWc0cDX9G7/?=
 =?iso-8859-1?Q?uLHtRRH6g02j2xD1ZANyXsw9KwZCv07qdv83I1FZJ0XiA/D0j3rPWpEMz/?=
 =?iso-8859-1?Q?ceIPjmCtuWaLhsOp/DBhiIAMTYT657+fkMDf93zhIimxLDQc0HOo5w/iYS?=
 =?iso-8859-1?Q?JhNlqI/vhWxsqontbTo/eGBmuW8OyFZurd?=
MIME-Version: 1.0
X-OriginatorOrg: miners.utep.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR0501MB3919.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f299d6e-926e-4b5f-f8be-08daa30c9207
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2022 17:52:41.1121
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 857c21d2-1a16-43a4-90cf-d57f3fab9d2f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pv6262cI3UAb30hjHUzaMBDwIGsTzzO7zh7kX+W7UPRMZ7CtkFrXohMBDl9HpARXK7Bl+Py0Aftn1FZ/uqAg/lKfjmyEkEcgk6yle0IHe7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR05MB9041
Message-ID-Hash: FKVNBRA756AQUOS43AOU77KWRGQ3454N
X-Message-ID-Hash: FKVNBRA756AQUOS43AOU77KWRGQ3454N
X-MailFrom: jaavila5@miners.utep.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 calibration 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLR2R3D2ZOBN4RMU42ISIGKZSO2XKVJZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0541045106992414611=="

--===============0541045106992414611==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN4PR0501MB39196A468FE60A25309E729ED9569SN4PR0501MB3919_"

--_000_SN4PR0501MB39196A468FE60A25309E729ED9569SN4PR0501MB3919_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey Marcus,

I checked and the cal files are in the correct location. I was using a gain=
 of 10, but even at 0 I can start to see the lo peak out of the noise floor=
. In rfnoc:radio_control I did see a set_tx_dc_offset() but Im not sure how=
 to read the cal file to get the value manually or how to pass it the file.

I am now trying to find a way to offset tune the lo but can't figure out ho=
w to do that with rfnoc.  I tried uhd::rfnoc::radio_control set_tx_freq wit=
h a tune_request_t but that didn't work, my guess is that is for the multiu=
srp and not rfnoc radio control. I saw there was a set_tx_lo_freq but it ex=
pects 3 arguments one being name of lo stage which I haven't been able to d=
ecipher. So far I have only found examples without rfnoc using usrp::multiu=
srp.

________________________________
From: usrp-users-request@lists.ettus.com <usrp-users-request@lists.ettus.co=
m>
Sent: Tuesday, September 27, 2022 8:19 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: USRP-users Digest, Vol 145, Issue 60

Send USRP-users mailing list submissions to
        usrp-users@lists.ettus.com

To subscribe or unsubscribe via email, send a message with subject or
body 'help' to
        usrp-users-request@lists.ettus.com

You can reach the person managing the list at
        usrp-users-owner@lists.ettus.com

When replying, please edit your Subject line so it is more specific
than "Re: Contents of USRP-users digest..."

Today's Topics:

   1. Re: USRP-users Digest, Vol 145, Issue 55 (Marcus D. Leech)
   2. Re: Reset Timing Violation (Brian Padalino)
   3. Re: Reset Timing Violation (Wade Fife)


----------------------------------------------------------------------

Message: 1
Date: Tue, 27 Sep 2022 09:44:08 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: [USRP-users] Re: USRP-users Digest, Vol 145, Issue 55
To: usrp-users@lists.ettus.com
Message-ID: <e32a7073-710a-1279-fbe9-ce50f3a80d78@gmail.com>
Content-Type: multipart/alternative;
        boundary=3D"------------gvkvlFFcHe0JJA1MHesKFzhB"

On 2022-09-27 09:01, Avila, Jose A wrote:
> Using the UBX board on the x310 and the lo leakage is the same
> amplitude if not higher than the signal being played with rfnoc
> samples from file.
>
Can you confirm that it placed .cal files in the appropriate directory:

https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Ffiles.e=
ttus.com%2Fmanual%2Fpage_calibration.html%23calibration_data&amp;data=3D05%=
7C01%7Cjaavila5%40miners.utep.edu%7C831033990cc2406a426608daa0f7ee6f%7C857c=
21d21a1643a490cfd57f3fab9d2f%7C1%7C0%7C637999283960023866%7CUnknown%7CTWFpb=
GZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7=
C3000%7C%7C%7C&amp;sdata=3D2uxlWwt7G3rjdaWH0ZK5fbvneyRBlOyodbnar7rn7Tk%3D&a=
mp;reserved=3D0

What gain setting are you using when transmitting?


>
> ------------------------------------------------------------------------
> *From:* usrp-users-request@lists.ettus.com
> <usrp-users-request@lists.ettus.com>
> *Sent:* Saturday, September 24, 2022 3:31:13 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* USRP-users Digest, Vol 145, Issue 55
> Send USRP-users mailing list submissions to
> usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
> usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
> usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
> Today's Topics:
>
>    1. X310 calibration (Avila, Jose A)
>    2. Re: X310 calibration (Marcus D. Leech)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 23 Sep 2022 17:36:37 +0000
> From: "Avila, Jose A" <jaavila5@miners.utep.edu>
> Subject: [USRP-users] X310 calibration
> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Message-ID: <SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3919
>         .namprd05.prod.outlook.com>
> Content-Type: multipart/alternative; boundary=3D"_000_SN4PR0501MB3919
>         23D92DB5B6B7A2F84EE5D9519SN4PR0501MB3919_"
>
> I have noticeable lo leakage when running the cpp rfnoc replay samples
> from file. So I ran the calibration functions but it doesn't seem to
> be using the created files since I did not notice a difference. Is
> there a function call or setting in cpp I need to add? I thought it
> would be automatic. Using uhd 4.2 with X310.
> -------------- next part --------------
> A message part incompatible with plain text digests has been removed ...
> Name: not available
> Type: text/html
> Size: 477 bytes
> Desc: not available
>
> ------------------------------
>
> Message: 2
> Date: Fri, 23 Sep 2022 14:16:48 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> Subject: [USRP-users] Re: X310 calibration
> To: usrp-users@lists.ettus.com
> Message-ID: <fc5fc6fa-d33f-9958-7e58-2fe637175680@gmail.com>
> Content-Type: text/plain; charset=3DUTF-8; format=3Dflowed
>
> On 2022-09-23 13:36, Avila, Jose A wrote:
> > I have noticeable lo leakage when running the cpp rfnoc replay samples
> > from file. So I ran the calibration functions but it doesn't seem to
> > be using the created files since I did not notice a difference. Is
> > there a function call or setting in cpp I need to add? I thought it
> > would be automatic. Using uhd 4.2 with X310.
> >
> Which daughtercards are you using?
>
> I'll note that most of the DC-offset compensation is done in a
> daughtercard-independent way and doesn't rely on the
>    CAL functions as far as I know--there's a continuous "DC offset
> removal" function in the FPGA.
>
> When you say "noticeable" what is the magnitude we're talking about?
>
>
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 145, Issue 55
> *******************************************
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
-------------- next part --------------
A message part incompatible with plain text digests has been removed ...
Name: not available
Type: text/html
Size: 8740 bytes
Desc: not available

------------------------------

Message: 2
Date: Tue, 27 Sep 2022 10:08:48 -0400
From: Brian Padalino <bpadalino@gmail.com>
Subject: [USRP-users] Re: Reset Timing Violation
To: adri96roll@gmail.com
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID:
        <CAEXYVK7f-nyQXPDo6WkVm3SCYM2EvzNVuDeQ4+k-7wqc7Oa=3DbQ@mail.gmail.c=
om>
Content-Type: multipart/alternative;
        boundary=3D"000000000000881e7405e9a92fba"

On Tue, Sep 27, 2022 at 7:21 AM <adri96roll@gmail.com> wrote:

> Hi every one!
>
>
> I am facing some problems with reset timing violations. This is is one fo=
r
> example, and i have a fews. I tried to instantiate the reset signal but i=
t
> didn work. I don know how to fix it. On the other side, i have seen a res=
et
> generation in a noc shell and i was wondering if i have to generate a new
> one from a previous one.
>
I can't see much other than the names of the signals and the negative
slack, but the hierarchy seems to indicate it's part of a synchronizer
that's been double flopped, so maybe there should be a false path
associated with it in your constraints?

Brian
-------------- next part --------------
A message part incompatible with plain text digests has been removed ...
Name: not available
Type: text/html
Size: 983 bytes
Desc: not available

------------------------------

Message: 3
Date: Tue, 27 Sep 2022 21:19:19 -0500
From: Wade Fife <wade.fife@ettus.com>
Subject: [USRP-users] Re: Reset Timing Violation
To: Brian Padalino <bpadalino@gmail.com>
Cc: adri96roll@gmail.com, "USRP-users@lists.ettus.com"
        <usrp-users@lists.ettus.com>
Message-ID:
        <CAFche=3DhVgtfh8+ThZT23p1DdRM+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.c=
om>
Content-Type: multipart/alternative;
        boundary=3D"000000000000624bcd05e9b36488"

There's not enough information in the screen shot, but I think the output
of the double synchronizer is on a different clock domain than flop flop
(dato_entrada) being reset by it.

The reset signal needs to be driven by the same clock as the flip flop
being reset, otherwise Vivado can't ensure that the requirements of the FF
will be met, resulting in this timing violation.

Make sure you're using the right clock and reset signal for your
dato_entrada register.

Wade

On Tue, Sep 27, 2022 at 9:10 AM Brian Padalino <bpadalino@gmail.com> wrote:

> On Tue, Sep 27, 2022 at 7:21 AM <adri96roll@gmail.com> wrote:
>
>> Hi every one!
>>
>>
>> I am facing some problems with reset timing violations. This is is one
>> for example, and i have a fews. I tried to instantiate the reset signal =
but
>> it didn work. I don know how to fix it. On the other side, i have seen a
>> reset generation in a noc shell and i was wondering if i have to generat=
e a
>> new one from a previous one.
>>
> I can't see much other than the names of the signals and the negative
> slack, but the hierarchy seems to indicate it's part of a synchronizer
> that's been double flopped, so maybe there should be a false path
> associated with it in your constraints?
>
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
-------------- next part --------------
A message part incompatible with plain text digests has been removed ...
Name: not available
Type: text/html
Size: 2247 bytes
Desc: not available

------------------------------

Subject: Digest Footer

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com


------------------------------

End of USRP-users Digest, Vol 145, Issue 60
*******************************************

--_000_SN4PR0501MB39196A468FE60A25309E729ED9569SN4PR0501MB3919_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hey Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I checked and the cal files are in the correct location. I was using a gain=
 of 10, but even at 0 I can start to see the lo peak out of the noise floor=
. In rfnoc:radio_control I did see a set_tx_dc_offset() but Im not sure how=
 to read the cal file to get the
 value manually or how to pass it the file. <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am now trying to find a way to offset tune the lo but can't figure out ho=
w to do that with rfnoc.&nbsp; I tried uhd::rfnoc::radio_control set_tx_fre=
q with a tune_request_t but that didn't work, my guess is that is for the m=
ultiusrp and not rfnoc radio control.
 I saw there was a set_tx_lo_freq but it expects 3 arguments one being name=
 of lo stage which I haven't been able to decipher. So far I have only foun=
d examples without rfnoc using usrp::multiusrp.<br>
</div>
<div id=3D"signature_bookmark"></div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> usrp-users-request@=
lists.ettus.com &lt;usrp-users-request@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, September 27, 2022 8:19 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> USRP-users Digest, Vol 145, Issue 60</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Send USRP-users mailing list submissions to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-users@lists.ettus.com<br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body 'help' to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-users-request@lists.ettus.c=
om<br>
<br>
You can reach the person managing the list at<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-users-owner@lists.ettus.com=
<br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
Today's Topics:<br>
<br>
&nbsp;&nbsp; 1. Re: USRP-users Digest, Vol 145, Issue 55 (Marcus D. Leech)<=
br>
&nbsp;&nbsp; 2. Re: Reset Timing Violation (Brian Padalino)<br>
&nbsp;&nbsp; 3. Re: Reset Timing Violation (Wade Fife)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Tue, 27 Sep 2022 09:44:08 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;patchvonbraun@gmail.com&gt;<br>
Subject: [USRP-users] Re: USRP-users Digest, Vol 145, Issue 55<br>
To: usrp-users@lists.ettus.com<br>
Message-ID: &lt;e32a7073-710a-1279-fbe9-ce50f3a80d78@gmail.com&gt;<br>
Content-Type: multipart/alternative;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; boundary=3D&quot;------------gvk=
vlFFcHe0JJA1MHesKFzhB&quot;<br>
<br>
On 2022-09-27 09:01, Avila, Jose A wrote:<br>
&gt; Using the UBX board on the x310 and the lo leakage is the same <br>
&gt; amplitude if not higher than the signal being played with rfnoc <br>
&gt; samples from file.<br>
&gt;<br>
Can you confirm that it placed .cal files in the appropriate directory:<br>
<br>
<a href=3D"https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Ffiles.ettus.com%2Fmanual%2Fpage_calibration.html%23calibration_data&amp=
;amp;data=3D05%7C01%7Cjaavila5%40miners.utep.edu%7C831033990cc2406a426608da=
a0f7ee6f%7C857c21d21a1643a490cfd57f3fab9d2f%7C1%7C0%7C637999283960023866%7C=
Unknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL=
CJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3D2uxlWwt7G3rjdaWH0ZK5fbvneyRBl=
Oyodbnar7rn7Tk%3D&amp;amp;reserved=3D0" data-auth=3D"NotApplicable">https:/=
/nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Ffiles.ettus.co=
m%2Fmanual%2Fpage_calibration.html%23calibration_data&amp;amp;data=3D05%7C0=
1%7Cjaavila5%40miners.utep.edu%7C831033990cc2406a426608daa0f7ee6f%7C857c21d=
21a1643a490cfd57f3fab9d2f%7C1%7C0%7C637999283960023866%7CUnknown%7CTWFpbGZs=
b3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C30=
00%7C%7C%7C&amp;amp;sdata=3D2uxlWwt7G3rjdaWH0ZK5fbvneyRBlOyodbnar7rn7Tk%3D&=
amp;amp;reserved=3D0</a><br>
<br>
What gain setting are you using when transmitting?<br>
<br>
<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* usrp-users-request@lists.ettus.com <br>
&gt; &lt;usrp-users-request@lists.ettus.com&gt;<br>
&gt; *Sent:* Saturday, September 24, 2022 3:31:13 AM<br>
&gt; *To:* usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
&gt; *Subject:* USRP-users Digest, Vol 145, Issue 55<br>
&gt; Send USRP-users mailing list submissions to<br>
&gt; usrp-users@lists.ettus.com<br>
&gt;<br>
&gt; To subscribe or unsubscribe via email, send a message with subject or<=
br>
&gt; body 'help' to<br>
&gt; usrp-users-request@lists.ettus.com<br>
&gt;<br>
&gt; You can reach the person managing the list at<br>
&gt; usrp-users-owner@lists.ettus.com<br>
&gt;<br>
&gt; When replying, please edit your Subject line so it is more specific<br=
>
&gt; than &quot;Re: Contents of USRP-users digest...&quot;<br>
&gt;<br>
&gt; Today's Topics:<br>
&gt;<br>
&gt; &nbsp;&nbsp; 1. X310 calibration (Avila, Jose A)<br>
&gt; &nbsp;&nbsp; 2. Re: X310 calibration (Marcus D. Leech)<br>
&gt;<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
<br>
&gt;<br>
&gt; Message: 1<br>
&gt; Date: Fri, 23 Sep 2022 17:36:37 +0000<br>
&gt; From: &quot;Avila, Jose A&quot; &lt;jaavila5@miners.utep.edu&gt;<br>
&gt; Subject: [USRP-users] X310 calibration<br>
&gt; To: &quot;usrp-users@lists.ettus.com&quot; &lt;usrp-users@lists.ettus.=
com&gt;<br>
&gt; Message-ID: &lt;SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB39=
19<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .namprd05.prod.outlook.com&=
gt;<br>
&gt; Content-Type: multipart/alternative; boundary=3D&quot;_000_SN4PR0501MB=
3919<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 23D92DB5B6B7A2F84EE5D9519SN=
4PR0501MB3919_&quot;<br>
&gt;<br>
&gt; I have noticeable lo leakage when running the cpp rfnoc replay samples=
 <br>
&gt; from file. So I ran the calibration functions but it doesn't seem to <=
br>
&gt; be using the created files since I did not notice a difference. Is <br=
>
&gt; there a function call or setting in cpp I need to add? I thought it <b=
r>
&gt; would be automatic. Using uhd 4.2 with X310.<br>
&gt; -------------- next part --------------<br>
&gt; A message part incompatible with plain text digests has been removed .=
..<br>
&gt; Name: not available<br>
&gt; Type: text/html<br>
&gt; Size: 477 bytes<br>
&gt; Desc: not available<br>
&gt;<br>
&gt; ------------------------------<br>
&gt;<br>
&gt; Message: 2<br>
&gt; Date: Fri, 23 Sep 2022 14:16:48 -0400<br>
&gt; From: &quot;Marcus D. Leech&quot; &lt;patchvonbraun@gmail.com&gt;<br>
&gt; Subject: [USRP-users] Re: X310 calibration<br>
&gt; To: usrp-users@lists.ettus.com<br>
&gt; Message-ID: &lt;fc5fc6fa-d33f-9958-7e58-2fe637175680@gmail.com&gt;<br>
&gt; Content-Type: text/plain; charset=3DUTF-8; format=3Dflowed<br>
&gt;<br>
&gt; On 2022-09-23 13:36, Avila, Jose A wrote:<br>
&gt; &gt; I have noticeable lo leakage when running the cpp rfnoc replay sa=
mples<br>
&gt; &gt; from file. So I ran the calibration functions but it doesn't seem=
 to<br>
&gt; &gt; be using the created files since I did not notice a difference. I=
s<br>
&gt; &gt; there a function call or setting in cpp I need to add? I thought =
it<br>
&gt; &gt; would be automatic. Using uhd 4.2 with X310.<br>
&gt; &gt;<br>
&gt; Which daughtercards are you using?<br>
&gt;<br>
&gt; I'll note that most of the DC-offset compensation is done in a<br>
&gt; daughtercard-independent way and doesn't rely on the<br>
&gt; &nbsp;&nbsp; CAL functions as far as I know--there's a continuous &quo=
t;DC offset<br>
&gt; removal&quot; function in the FPGA.<br>
&gt;<br>
&gt; When you say &quot;noticeable&quot; what is the magnitude we're talkin=
g about?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ------------------------------<br>
&gt;<br>
&gt; Subject: Digest Footer<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
&gt;<br>
&gt;<br>
&gt; ------------------------------<br>
&gt;<br>
&gt; End of USRP-users Digest, Vol 145, Issue 55<br>
&gt; *******************************************<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list --usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email tousrp-users-leave@lists.ettus.com<br>
-------------- next part --------------<br>
A message part incompatible with plain text digests has been removed ...<br=
>
Name: not available<br>
Type: text/html<br>
Size: 8740 bytes<br>
Desc: not available<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Tue, 27 Sep 2022 10:08:48 -0400<br>
From: Brian Padalino &lt;bpadalino@gmail.com&gt;<br>
Subject: [USRP-users] Re: Reset Timing Violation<br>
To: adri96roll@gmail.com<br>
Cc: &quot;USRP-users@lists.ettus.com&quot; &lt;usrp-users@lists.ettus.com&g=
t;<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;CAEXYVK7f-nyQXPDo6WkVm3SCYM2=
EvzNVuDeQ4+k-7wqc7Oa=3DbQ@mail.gmail.com&gt;<br>
Content-Type: multipart/alternative;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; boundary=3D&quot;000000000000881=
e7405e9a92fba&quot;<br>
<br>
On Tue, Sep 27, 2022 at 7:21 AM &lt;adri96roll@gmail.com&gt; wrote:<br>
<br>
&gt; Hi every one!<br>
&gt;<br>
&gt;<br>
&gt; I am facing some problems with reset timing violations. This is is one=
 for<br>
&gt; example, and i have a fews. I tried to instantiate the reset signal bu=
t it<br>
&gt; didn work. I don know how to fix it. On the other side, i have seen a =
reset<br>
&gt; generation in a noc shell and i was wondering if i have to generate a =
new<br>
&gt; one from a previous one.<br>
&gt;<br>
I can't see much other than the names of the signals and the negative<br>
slack, but the hierarchy seems to indicate it's part of a synchronizer<br>
that's been double flopped, so maybe there should be a false path<br>
associated with it in your constraints?<br>
<br>
Brian<br>
-------------- next part --------------<br>
A message part incompatible with plain text digests has been removed ...<br=
>
Name: not available<br>
Type: text/html<br>
Size: 983 bytes<br>
Desc: not available<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Tue, 27 Sep 2022 21:19:19 -0500<br>
From: Wade Fife &lt;wade.fife@ettus.com&gt;<br>
Subject: [USRP-users] Re: Reset Timing Violation<br>
To: Brian Padalino &lt;bpadalino@gmail.com&gt;<br>
Cc: adri96roll@gmail.com, &quot;USRP-users@lists.ettus.com&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;usrp-users@lists.ettus.com&g=
t;<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;CAFche=3DhVgtfh8+ThZT23p1DdR=
M+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.com&gt;<br>
Content-Type: multipart/alternative;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; boundary=3D&quot;000000000000624=
bcd05e9b36488&quot;<br>
<br>
There's not enough information in the screen shot, but I think the output<b=
r>
of the double synchronizer is on a different clock domain than flop flop<br=
>
(dato_entrada) being reset by it.<br>
<br>
The reset signal needs to be driven by the same clock as the flip flop<br>
being reset, otherwise Vivado can't ensure that the requirements of the FF<=
br>
will be met, resulting in this timing violation.<br>
<br>
Make sure you're using the right clock and reset signal for your<br>
dato_entrada register.<br>
<br>
Wade<br>
<br>
On Tue, Sep 27, 2022 at 9:10 AM Brian Padalino &lt;bpadalino@gmail.com&gt; =
wrote:<br>
<br>
&gt; On Tue, Sep 27, 2022 at 7:21 AM &lt;adri96roll@gmail.com&gt; wrote:<br=
>
&gt;<br>
&gt;&gt; Hi every one!<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I am facing some problems with reset timing violations. This is is=
 one<br>
&gt;&gt; for example, and i have a fews. I tried to instantiate the reset s=
ignal but<br>
&gt;&gt; it didn work. I don know how to fix it. On the other side, i have =
seen a<br>
&gt;&gt; reset generation in a noc shell and i was wondering if i have to g=
enerate a<br>
&gt;&gt; new one from a previous one.<br>
&gt;&gt;<br>
&gt; I can't see much other than the names of the signals and the negative<=
br>
&gt; slack, but the hierarchy seems to indicate it's part of a synchronizer=
<br>
&gt; that's been double flopped, so maybe there should be a false path<br>
&gt; associated with it in your constraints?<br>
&gt;<br>
&gt; Brian<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
&gt;<br>
-------------- next part --------------<br>
A message part incompatible with plain text digests has been removed ...<br=
>
Name: not available<br>
Type: text/html<br>
Size: 2247 bytes<br>
Desc: not available<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 145, Issue 60<br>
*******************************************<br>
</div>
</span></font></div>
</body>
</html>

--_000_SN4PR0501MB39196A468FE60A25309E729ED9569SN4PR0501MB3919_--

--===============0541045106992414611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0541045106992414611==--
