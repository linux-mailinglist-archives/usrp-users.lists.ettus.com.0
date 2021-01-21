Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CF62FF5B6
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 21:21:36 +0100 (CET)
Received: from [::1] (port=51090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2gSV-00019M-51; Thu, 21 Jan 2021 15:21:35 -0500
Received: from mx0a-00272701.pphosted.com ([67.231.145.144]:38740)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=86551c2823=rmattingly@ou.edu>)
 id 1l2gSP-00012M-L0
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 15:21:29 -0500
Received: from pps.filterd (m0107985.ppops.net [127.0.0.1])
 by mx0a-00272701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 10LKKmKI010349
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 14:20:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=domainkey;
 bh=e1rN/iZulY8ORp9J2Dp9woWYc0q/cGA52PJ6WGyao5Q=;
 b=aZuJtqeIkayed6biqfemMd5em+V4tAE42cCIwJr4UtrgBZHRfhWH833iEyIIRRa8++/L
 5TRhA/vJ520wfb5JTCdx1CBbVhBxH4//7pjh2khTUR8S1QmlvbbeKaIIV+vRp4y34yDG
 LrJNUoNLPE/5pJlR/arTXSYEi2hngFsjN9OWb/A913IBXiPiE+xKIOVwv5TfrTVn20XK
 Daw+uiDaZbit0ZmdnWAO1srhtB8DVt6UgppW/FOJBYmYDS4kZTrSe3cLzCHPG/Hawhgo
 9G8bq/St6B7CCSBVNMxQevZE3B8nw8HmDOZR6YgEctZrV6wPcQFpJ7ryaqK6o7XRCUQL QQ== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
 by mx0a-00272701.pphosted.com with ESMTP id 3668p1ntra-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 14:20:47 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OIPAG225KbRsYyNhtg0y7xkxUalr/pzmUpP7Ty6dt6QHSgfGLkmy6jUHUQhPKM33b+AvJE2LnVjwSxrH9O64eXwyml/hKb92luuMEehoVzxyDGIO6m7jWsNP7YWWv4KmF7Xa48tQfjkmBNAdje1ugy0TZxxw+sX5qQRyRoBQDDi/ndfhBYQmZg5+E2RVApONr7E11Yzv/YzzRkk88dCrhSXLwwrX7xJGPqnFznuhyfMb0xwEEwsZcXnaKqTvTOipiFVM4a2hhwz239Aih4DeJr4hdPsLMItwXkxA3M3mv6vnuOJ1Sv3zBrw4FQWyJBtNnFM8GPWzR6dJysNtYuDWzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e1rN/iZulY8ORp9J2Dp9woWYc0q/cGA52PJ6WGyao5Q=;
 b=YnkwMXRcWUjjBUdXdZ5ZigeSyj/ABtJgK5e2wU31Oakk4Y25lq4RQfqIqLCWho5ypSz3ijZdjdnt01iauM31DY/+1Va9W3GeNVnPhBI2JA3bcP2S6MNF/zcNPS/gclELKckoPdLz+WjYBNR9v72pCSztONs47GyyCYQAbUHeVdCoRR56Zb5077/tlV8+KdLMrCeHOT4MKnrjzq/FmJDPnLIge8nFcZPXb1KIj2XmSKTepT8tCg5ZLy4+1kqzLikIge2SkEtJF72naVj/VSOTNZIaqF8U06ECHrkgwHYG05XCGWp7trj6NcRxRbSQL5KIM44gxcrBT8p+qG4ko2p4og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SN6PR03MB3504.namprd03.prod.outlook.com (2603:10b6:805:4e::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Thu, 21 Jan
 2021 20:20:39 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd%4]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 20:20:39 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC 4 FFT with GNURadio
Thread-Index: AQHW8AqSK0SAar/A0USi7wUPpRNdpaoycbWAgAAH1ZaAAAsb1A==
Date: Thu, 21 Jan 2021 20:20:39 +0000
Message-ID: <SN6PR03MB41601315EF0F3ADA78E4C294B1A19@SN6PR03MB4160.namprd03.prod.outlook.com>
References: <SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19@SN6PR03MB4160.namprd03.prod.outlook.com>,
 <CAB__hTSVbsoOpiH=J5u03QwB8bXQziZJYGqAXsTvA-GwtLy6tw@mail.gmail.com>,
 <SN6PR03MB4160E28C0ED4A6E41ABE516EB1A19@SN6PR03MB4160.namprd03.prod.outlook.com>
In-Reply-To: <SN6PR03MB4160E28C0ED4A6E41ABE516EB1A19@SN6PR03MB4160.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ou.edu;
x-originating-ip: [129.15.64.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a8a1b8e-d4a7-4ff8-eca7-08d8be4a054c
x-ms-traffictypediagnostic: SN6PR03MB3504:
x-microsoft-antispam-prvs: <SN6PR03MB3504C413F0F291791478125BB1A19@SN6PR03MB3504.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LRLxAOQ1y7kzV6myfHLb9dD1GEZfr6gwikp0Po3A5QrJaEOWNCdZns2yTXssuEt1roLiKfv4VWl+YgsbQnYTd2NSoe0C4CCQzy+KAY/Q9M7P/ohwwy2qGqR0GrlRKyb2nZaVIQJyXdPKfq3MNTweRS4oConJYDEIsU1IQlBAqsE/kRCc3ppnohcjnZybfUZnXKcCmBM7yXrW63bKJXSEtk6bIcBc82etkG8JvyD5PICFdefkz+5lM27ZH+yDNt1yld/Q/sVeNDxpnKc6PIs+VyFiju15fFn8LOB7z14gTH8fBXptwiqwoPFdos9gDmmbHfQfHFxgOSVHn96iP6Ihii/Nu61EIERiLj8f34MwJQTVkco/6psYGA4a5ijO/bsAOCBko84PuhjO4jB5AouHM9JxiRt+j/7nDpBAONnGUvr8gXp6EffFztmHkTl6z9rmRxF3snLGIYlkZscGRIGni9aF1C/cWG8nY4M23oxve72pl4ryRhMSYJxOYekcfOiplmEaTZAg8oIvLn7EZneEzA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR03MB4160.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(53546011)(8676002)(166002)(966005)(6506007)(7696005)(64756008)(66446008)(76116006)(52536014)(66476007)(2906002)(83380400001)(33656002)(66946007)(75432002)(86362001)(66556008)(8936002)(786003)(186003)(316002)(26005)(5660300002)(6916009)(9686003)(55016002)(478600001)(71200400001)(2940100002)(10126625002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?3IkfkPam92uNWSsDERQMkMsEMRPJeXvF/FhX3jknaTZlUghwVEzLuSny1tra?=
 =?us-ascii?Q?IEpaGMdrrcV4ZNtUpaMqfJPgHPydWpQ0eXfVMOKjRgbHMTCnHQKGRPFxwqJR?=
 =?us-ascii?Q?K27H/FVvXLqcadosV+MqkgA0vtBrWmLUSa8tyzevKvi06OOr9sKc2EkEP/0C?=
 =?us-ascii?Q?gay6LGbo++ybn3MZlzUVfuefpd0XM1OwJ+k2EDO4kkpM3G9B+H3giviM0s63?=
 =?us-ascii?Q?h3MzomzSXhm6lxHBSN1sHpNmje4Y8NF26qbW1ke/Bz1HqP+NATtckZU1O9cF?=
 =?us-ascii?Q?9I9EDvY0OMfVq0keiG7drRS+tAKPnOorvAuzQb5RQrNriQo5iTY5Sf+Rakas?=
 =?us-ascii?Q?sB9OqK0iQ8lZ85p2LK+ihowg52myWaQgNW1aOozJiV+eZWvaXKCPbPxXRPf0?=
 =?us-ascii?Q?J21g2TzxlOZMzY7OpYE1OoQAi4BbXyeGU7y1uH2GbIIuJAIHMF1vJBIZmeVY?=
 =?us-ascii?Q?zTChF+8x4XNkEOzG4cx58LFf6KPlgq14lYodUB4ZMGZ8tUPkdpCRemdnNwzW?=
 =?us-ascii?Q?3NoBruFF8+i3c+Cgisr5yzmQ3CzsLKMhIRM2nma5K9kqpSeM+w+4wqDoFoAz?=
 =?us-ascii?Q?07mZvoZrClqrTQxFIY4CQQhYZgm5b/Kkue6Il0qf5TtqlX7/Wp2CydglUbaR?=
 =?us-ascii?Q?Eq97qrZYAlx3rK4y8wEkcuuBURsD7lLeEmhSwFC6klWKVsvQ0qnNM4eGjEWH?=
 =?us-ascii?Q?pfj8rx/sT3DoP6qZp4P0v2a4gLXJ4h1YREzAHnSnKmkkrEjYStRY2Ebza44F?=
 =?us-ascii?Q?tv0Q80xW9C3t/VicNoeqQtsWcj0jyUHaI7vA3JsJ2zu44KnCAf3f+SkvyO2S?=
 =?us-ascii?Q?THEZ9H7j9zt8t1bF/v0JQ8nMeSlb59XxpkE7r1pIb0ABjjE7zwMvLWC6nLlo?=
 =?us-ascii?Q?cFS/N20C7zgWswStaNSxSwQPfnSYScDpoqeGvu1bAehXaYox7p4+G55CKTwk?=
 =?us-ascii?Q?zG/UyykBsKZdJ6HLnT4EIxYLkZ+wR0+6+xpgml49PUMVU+Rn6tyREa99ycrP?=
 =?us-ascii?Q?GbfhfbdWqymDczUOcSqdtkq7Fz5KI9knaXgD9O0xIM2UZLDFeQyZP7vZDFz9?=
 =?us-ascii?Q?Get10AKpZ6aiofGr2aaM7TPAZhco4g=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a8a1b8e-d4a7-4ff8-eca7-08d8be4a054c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 20:20:39.7610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ebx3ufsM1CIvnfHS5OyUIbWqCmWOnLhkWhIYN4FX1mSHCL52g3WbyQS4y4QO/Mz+wgas9uHK7MngOrg7osV+FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR03MB3504
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-21_10:2021-01-21,
 2021-01-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=999 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101210104
Subject: Re: [USRP-users] RFNoC 4 FFT with GNURadio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Mattingly, Rylee via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Mattingly, Rylee" <rmattingly@ou.edu>
Content-Type: multipart/mixed; boundary="===============4700680837137138789=="
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

--===============4700680837137138789==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB41601315EF0F3ADA78E4C294B1A19SN6PR03MB4160namp_"

--_000_SN6PR03MB41601315EF0F3ADA78E4C294B1A19SN6PR03MB4160namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was not setting the spp size for the radio or DDC which was leading the F=
FT failure. Setting the spp block arguments here fixed the issue with the F=
FT.

Being unable to halt the graph came from an unrelated issue on the PC side =
of the graph.

Thanks,
Rylee

From: USRP-users <usrp-users-bounces@lists.ettus.com>
Date: Thursday, January 21, 2021 at 1:43 PM
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4 FFT with GNURadio
Rob,

I did set this explicitly when I tried using the UHD Python library so I mu=
st have a different issue there.

But I did forget to set it in GNURadio which did change the behavior. Now w=
hen streaming, the first FFT length number of samples are valid data but al=
l data samples after that are zero and the graph cannot be halted.


Thanks,

Rylee
From: Rob Kossler <rkossler@nd.edu>
Date: Thursday, January 21, 2021 at 1:09 PM
To: Mattingly, Rylee <rmattingly@ou.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4 FFT with GNURadio
Perhaps try setting the radio SPP =3D FFT length?

On Thu, Jan 21, 2021 at 10:38 AM Mattingly, Rylee via USRP-users <usrp-user=
s@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi all,

I am trying (and failing) to get an RFNoC image with the provided FFT worki=
ng with GNURadio. I am using an X310 connected with a 1Gig ethernet and bui=
lding images in the HG configuration.
I used the knowledge base article: "Getting Started with RFNoC in UHD 4.0" =
(linked here: https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0<ht=
tps://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_Getting-5=
FStarted-5Fwith-5FRFNoC-5Fin-5FUHD-5F4.0&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ=
2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=
=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DWRMR1ToHPgCgrxeKlDxekAf8=
zkWOnmzADEnOeDFFLx4&e=3D>) to add the FFT to the default image.
The resulting image core with FFT can be found here: https://pastebin.com/x=
Lqyx7qS<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__pastebin.com=
_xLqyx7qS&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIR=
w4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHI=
KZPk3Ssa4lGRSA&s=3D0apXU3AXxgv1drH2fIZHdjJ3lbHLbX9K2fImIOo5Uns&e=3D>

The uhd probe shows the fft correctly connected to through its own SEP. How=
ever, when I attempt to run a flowgraph containing the FFT I get a recv() t=
imeout error and then blocks will not flush unitl the USRP is reset. One of=
 the many flow graphs I have tried, and the consistent error are shown in t=
he screenshots here: https://pasteboard.co/JKFUlrH.png<https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__pasteboard.co_JKFUlrH.png&d=3DDwMFaQ&c=
=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70=
YsBQKXCywQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DJlq=
F2Qp2KClHzn0mvHswomA11v3zTzsa6gIGVLxN3FY&e=3D> and here: https://pasteboard=
.co/JKFTHji.png<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__past=
eboard.co_JKFTHji.png&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS=
8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9c=
wnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DXtmxPj8fXQeJhRCuLKoCuFccvXZOvYLKTJl6oSunz00&=
e=3D>

I then tried using the UHD Python API deriving from the example shown in th=
e GRCon20 session "Exploring RFNoC with the UHD Python API" by Aaron Rosset=
to. Here I find that a static loopback example like Aaron presented with th=
e FFT worked with one length of samples but trying to extend that for strea=
ming from the radio creates the same behavior that is exhibited with GNURad=
io. The only way that I can get the FFT to execute correctly is if I stream=
 exactly one FFT length of samples. Any larger number of samples from the r=
adio (even length multiple) will crash the block and requires a power cycle=
 to be able to flush again.

Loopback example code: https://pastebin.com/03dScZvB<https://urldefense.pro=
ofpoint.com/v2/url?u=3Dhttps-3A__pastebin.com_03dScZvB&d=3DDwMFaQ&c=3DqKdtB=
uuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCy=
wQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DsLbsQ4340BL=
t3mlqTSjBY7_4WeI-k3OCtGa0NXtXPT0&e=3D>
Streaming test code: https://pastebin.com/WQRn7UhH<https://urldefense.proof=
point.com/v2/url?u=3Dhttps-3A__pastebin.com_WQRn7UhH&d=3DDwMFaQ&c=3DqKdtBuu=
u6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQ=
EkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DX6qNPBtpTwb5N=
ic40FgQofh-q3hb5bKlU7LKdYTv_zI&e=3D>

I have been able to build and use custom RFNoC blocks sucessfully with GNUR=
adio on this installation of UHD 4.0, GNURadio 3.8 and gr-ettus.

Thank you,

Rylee

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6=
oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=3D1s6o=
j0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DaM0JcEUdk219VkyfzdD1qBVqRMWztDC=
98fCMR6xZu0Y&e=3D>

--_000_SN6PR03MB41601315EF0F3ADA78E4C294B1A19SN6PR03MB4160namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I was not setting the spp size for the radio or DDC =
which was leading the FFT failure. Setting the spp block arguments here fix=
ed the issue with the FFT.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Being unable to halt the graph came from an unrelate=
d issue on the PC side of the graph.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Rylee</span><o:p></o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt;<br>
<b>Date: </b>Thursday, January 21, 2021 at 1:43 PM<br>
<b>To: </b>Rob Kossler &lt;rkossler@nd.edu&gt;<br>
<b>Cc: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>Re: [USRP-users] RFNoC 4 FFT with GNURadio<o:p></o:p></span=
></p>
</div>
<p class=3D"MsoNormal">Rob,</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I did set this explicitly when I tried using the UHD=
 Python library so I must have a different issue there.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">But I did forget to set it in GNURadio which did cha=
nge the behavior. Now when streaming, the first FFT length number of sample=
s are valid data but all data samples after that are zero and the graph can=
not be halted.
</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Thanks,</p>
<p class=3D"MsoNormal">&nbsp;</p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Rylee</span></p>
</div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Rob Kossler &lt;rko=
ssler@nd.edu&gt;<br>
<b>Date: </b>Thursday, January 21, 2021 at 1:09 PM<br>
<b>To: </b>Mattingly, Rylee &lt;rmattingly@ou.edu&gt;<br>
<b>Cc: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>Re: [USRP-users] RFNoC 4 FFT with GNURadio</span></p>
</div>
<div>
<p class=3D"MsoNormal">Perhaps try setting the radio SPP =3D FFT length?</p=
>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Jan 21, 2021 at 10:38 AM Mattingly, Rylee vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:</p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Hi all,
</span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I am trying (and failing) to get an RFNoC image with th=
e provided FFT working with GNURadio. I am using an X310 connected with a 1=
Gig ethernet and building images in the
 HG configuration.</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I used the knowledge base article: &quot;Getting Starte=
d with RFNoC in UHD 4.0&quot; (linked here:
</span><span style=3D"color:black"><a href=3D"https://urldefense.proofpoint=
.com/v2/url?u=3Dhttps-3A__kb.ettus.com_Getting-5FStarted-5Fwith-5FRFNoC-5Fi=
n-5FUHD-5F4.0&amp;d=3DDwMFaQ&amp;c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS=
8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92=
rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=3DWRMR1ToHPgCgrxeKlDxekAf8zkWOnmzA=
DEnOeDFFLx4&amp;e=3D" target=3D"_blank"><span style=3D"font-size:12.0pt">ht=
tps://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</span></a></span><=
span style=3D"font-size:12.0pt;color:black">)
 to add the FFT to the default image.</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">The resulting image core with FFT can be found here:
</span><span style=3D"color:black"><a href=3D"https://urldefense.proofpoint=
.com/v2/url?u=3Dhttps-3A__pastebin.com_xLqyx7qS&amp;d=3DDwMFaQ&amp;c=3DqKdt=
Buuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsB=
QKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=
=3D0apXU3AXxgv1drH2fIZHdjJ3lbHLbX9K2fImIOo5Uns&amp;e=3D" target=3D"_blank">=
<span style=3D"font-size:12.0pt">https://pastebin.com/xLqyx7qS</span></a></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">The uhd probe shows the fft correctly connected to thro=
ugh its own SEP. However, when I attempt to run a flowgraph containing the =
FFT I get a recv() timeout error and then
 blocks will not flush unitl the USRP is reset. One of the many flow graphs=
 I have tried, and the consistent error are shown in the screenshots here:
</span><span style=3D"color:black"><a href=3D"https://urldefense.proofpoint=
.com/v2/url?u=3Dhttps-3A__pasteboard.co_JKFUlrH.png&amp;d=3DDwMFaQ&amp;c=3D=
qKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy7=
0YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&am=
p;s=3DJlqF2Qp2KClHzn0mvHswomA11v3zTzsa6gIGVLxN3FY&amp;e=3D" target=3D"_blan=
k"><span style=3D"font-size:12.0pt">https://pasteboard.co/JKFUlrH.png</span=
></a></span><span style=3D"font-size:12.0pt;color:black">
 and here: </span><span style=3D"color:black"><a href=3D"https://urldefense=
.proofpoint.com/v2/url?u=3Dhttps-3A__pasteboard.co_JKFTHji.png&amp;d=3DDwMF=
aQ&amp;c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVH=
nwRt0l8Smy70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3S=
sa4lGRSA&amp;s=3DXtmxPj8fXQeJhRCuLKoCuFccvXZOvYLKTJl6oSunz00&amp;e=3D" targ=
et=3D"_blank"><span style=3D"font-size:12.0pt">https://pasteboard.co/JKFTHj=
i.png</span></a></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I then tried using the UHD Python API deriving from the=
 example shown in the GRCon20 session &quot;Exploring RFNoC with the UHD Py=
thon API&quot; by Aaron Rossetto. Here I find that
 a static loopback example like Aaron presented with the FFT worked with on=
e length of samples but trying to extend that for streaming from the radio =
creates the same behavior that is exhibited with GNURadio. The only way tha=
t I can get the FFT to execute correctly
 is if I stream exactly one FFT length of samples. Any larger number of sam=
ples from the radio (even length multiple) will crash the block and require=
s a power cycle to be able to flush again.</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Loopback example code:
</span><span style=3D"color:black"><a href=3D"https://urldefense.proofpoint=
.com/v2/url?u=3Dhttps-3A__pastebin.com_03dScZvB&amp;d=3DDwMFaQ&amp;c=3DqKdt=
Buuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsB=
QKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=
=3DsLbsQ4340BLt3mlqTSjBY7_4WeI-k3OCtGa0NXtXPT0&amp;e=3D" target=3D"_blank">=
<span style=3D"font-size:12.0pt">https://pastebin.com/03dScZvB</span></a></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Streaming test code:
</span><span style=3D"color:black"><a href=3D"https://urldefense.proofpoint=
.com/v2/url?u=3Dhttps-3A__pastebin.com_WQRn7UhH&amp;d=3DDwMFaQ&amp;c=3DqKdt=
Buuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsB=
QKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=
=3DX6qNPBtpTwb5Nic40FgQofh-q3hb5bKlU7LKdYTv_zI&amp;e=3D" target=3D"_blank">=
<span style=3D"font-size:12.0pt">https://pastebin.com/WQRn7UhH</span></a></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I have been able to build and use custom RFNoC blocks s=
ucessfully with GNURadio on this installation of UHD 4.0, GNURadio 3.8 and =
gr-ettus.</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Thank you,</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Rylee</span></p>
</div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">&nbsp;</span></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8S=
my70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA=
&amp;s=3DaM0JcEUdk219VkyfzdD1qBVqRMWztDC98fCMR6xZu0Y&amp;e=3D" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
></p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_SN6PR03MB41601315EF0F3ADA78E4C294B1A19SN6PR03MB4160namp_--


--===============4700680837137138789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4700680837137138789==--

