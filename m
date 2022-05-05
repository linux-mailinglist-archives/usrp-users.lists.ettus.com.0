Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BF251CACB
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 22:49:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 050B1385191
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 16:49:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651783749; bh=RtPI2HTBRFTdA11LhSh66aKBAM0v7c+lsy+jOJhdlUc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0dVJqcrH8eMu+4vf8dlVhUWT83Ej0nPyvOuCTxU9LacaZdFc3EW3JtDhOSMg3KyhY
	 Ku4kMoFJwbvNEbhS1P8TijHbASi012VjZDhrhKs0J7cQCG4JleNJu1+xglNMj7Gna3
	 OECRUiDXR0GfHGFZ9wU3nlXwQhw5czFFKRv7lqiI+gL1tXfATVfEBuNXAlG5W51WMz
	 tL6CihxOu8co7wOLCCmkrstRKqJCpQVHZk4wS7MNT+0cBvMylou5LKoP6+8aiyA+f1
	 Zs/DfeCSV1/eexhzb2tyz4nQdttpfJhvnh3qVtVubPRSrm4KzbjRgkl0rAj34VTxv5
	 eKEQWjIZ/kHRg==
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30087.outbound.protection.outlook.com [40.107.3.87])
	by mm2.emwd.com (Postfix) with ESMTPS id D1188385159
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 16:48:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vub.be header.i=@vub.be header.b="zw1BofI7";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dnC4zkasBAd07S624OnhiECcwvEIucxpUfEOEkJ9SInB4wZCpNO6wG9PJPjlLbcJxeFLL7Saq1X+32PpH7++mcu0iF2KG4UpMZAZyAWKBGzpga2WkaQmyKsMRKyi1B19mUFl2uhzEqdkcZ1zQGdFtgoL0Rd2PGZMC+eUjkR3DdYGGJUtvLOkgKjvm+HWh3xqWnjyRuIqFsxZCra4T4FRKgpDaofvtW6y9VWbgqaB0kMG08rAplf/iMMtEE59DfHvIJ6EdczDbbzQ4ECF8IYngb2hS8/VNZNLIQUuNUtYajyCOm9hAurAGwatWZCrkAx2/OAGrk4MxWxsnp+UuupsfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N5OEGj/iUVHf+v2yRwE0UH+2GHGN6FPykZqi7wkc6h0=;
 b=lDklwNOaoskfIhxGC5VYTVf+TXkwrgJov9CRK5X+pFJjv3ZC0rfLSEOk/YYamIPy60tpYzV9KToD2vCQr5VIau/3ubEEu7I+/FValAN/qkwfw4ZZkf3lLbqXGSi+6gvB1UcTxeNfdu3DmbvF12kPwrttNe2zMf00EkMn5bNgZ7h8qRTcNx8D8mTQrOwim/LlIaU6eH23YRe7doe1oAvohb9ppp4QBmMdrjji1xSTxzNdemRi6aGvTF04nBpjU2TKuuw6vE8bF+XyxorYbLBt47nEezU0QtRWIhq8JK9Kaezo9ZqCxQ7oez9AfhMPp0CGgNN3i+I4bA3xrw3fPghiUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vub.be; dmarc=pass action=none header.from=vub.be; dkim=pass
 header.d=vub.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vub.be; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5OEGj/iUVHf+v2yRwE0UH+2GHGN6FPykZqi7wkc6h0=;
 b=zw1BofI7yqZgSs8Iwm8jYWxiEnpOyNojWhWOwhI9CnJgSgNUSGGowFHzrUozuEm0MKCtKPZEem54cZhHVUiUb2xYZ5NbWr02HBiWHZoBuA2hheynh5yzVv1Ac1IA9u4L3ARZ8g/5FJL8URg7Mh4SroDTEaJxaYKJCr1EjycOYjY=
Received: from AM6PR01MB4929.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:33::32) by VI1PR0102MB3486.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:17::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13; Thu, 5 May
 2022 20:48:02 +0000
Received: from AM6PR01MB4929.eurprd01.prod.exchangelabs.com
 ([fe80::951f:4939:c7fd:7480]) by AM6PR01MB4929.eurprd01.prod.exchangelabs.com
 ([fe80::951f:4939:c7fd:7480%7]) with mapi id 15.20.5186.028; Thu, 5 May 2022
 20:48:02 +0000
From: Mehmet Fatih Ayten <Mehmet.Fatih.Ayten@vub.be>
To: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
	"commit-gnuradio@gnu.org" <commit-gnuradio@gnu.org>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: About Reducing Latency When Implementing CSMA/NDA Protocol on
 Wireless Systems Using USRP Devices
Thread-Index: AQHYYMEPBuzqXfefMUaX4jUuo5bDIQ==
Date: Thu, 5 May 2022 20:48:02 +0000
Message-ID: 
 <AM6PR01MB4929B7524107F448A680BF19BBC29@AM6PR01MB4929.eurprd01.prod.exchangelabs.com>
Accept-Language: tr-TR, en-US
Content-Language: aa
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vub.be;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33de862b-2407-4af5-0de5-08da2ed88c1f
x-ms-traffictypediagnostic: VI1PR0102MB3486:EE_
x-microsoft-antispam-prvs: 
 <VI1PR0102MB34867349EC8C2EE99642DBD7BBC29@VI1PR0102MB3486.eurprd01.prod.exchangelabs.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 X0O7AQROAd6LA0fRSsn/8R6Eol+p9frV3HrvnWkFFlLivKYBnBKs3p1hmRGxUpQSTlhpEqYOVtFmpgXr0G3Q/EgabUtLzkVfNTum4LzldGsppedb1GiIilbaVNqwNWQlCnhNhtQlEOlp4CmdyWK5QXNQl6oRGBBS/522eY7cmR8wHyElovM+fkkPuKXL7xxqODQu1zggeKdCG9k5JuaATNNcgHZMMOAi0oT3/lHlJQeLkarttQXFvTj+T4MokLYUjiPaOOeXnK7Mvp7bKPu6rxSTY7cYxjj+sGBAfh4FPP/muZ7HKFooeOn/PaY3vHyVzH941MsEkEhqqR8ENO/RSeyaQRBOIXJFpTzTy/dCZ7aM0T5OtxVzvwFTNam9kJRgzo+NLE4FjK1towr/GMnUKJ+QvoZnGF2jDOhqrzQRUs+6pmicDFrz5E3YgSUQHpoX9Yg3FKbp81+tQxc6bJrecUbyhFvym2mdCC16cPbelpSi3xvDKteqcOTuby580jf+vq0ATJpJPWE32Q7Y401hm9N3Mtsqk4ir0O1GXPwIVjoyx7adymfvmFuiLUWgG+MB5IDnpd4xCeiJm2qQS4LAwtE15RIQB7I2qdjyholLeQWihzs0txxbgzjd1PIf9xlc5XR278Tl4BiEBmsXEgFW67lxRPQ6tCv/pKPfdfRyOgikimBqVMYCLUIzge4/aEY/RTL7i2ZefX7CDzCd91waJZG6LUGGymTobbhhWLvu7mwXQmhctIVKRX+nmw+Lqmwbbp6DqZnyzCoXyGd4laZ3dZPGcfasr3FKOhiAq3GaKlljDyai3UWz/ZihPjjSyuTB
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR01MB4929.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(71200400001)(966005)(33656002)(508600001)(122000001)(110136005)(66556008)(166002)(66446008)(86362001)(66476007)(66946007)(76116006)(64756008)(91956017)(8676002)(316002)(786003)(55016003)(8936002)(38100700002)(38070700005)(6506007)(5660300002)(2906002)(66574015)(7696005)(83380400001)(9686003)(52536014)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?GArGFLc6yofnUNMd+/q+szhkHteD7XnlwIQiMlJFMSxVPLJzrG2uuAHb/By0?=
 =?us-ascii?Q?kFr8lNLLvaqFkBhcp/ybiXAAL8aaXzLoWFtY7+6G3IUhN0EpAdSGm60Z4zgG?=
 =?us-ascii?Q?g1EIKxZowmc40IqCkGO1X6wQnxfYg0QjfLcZf/crvObmRY/l2koT/eDkMnN5?=
 =?us-ascii?Q?jXtBYpwMkteTM43P2q2XOmVl9Q8aBFSNnTERXN4Z1FdTHLw+1gT+NDsscKju?=
 =?us-ascii?Q?WaepsvBb7WUZz744PBkI5gwJ4JicQOJGd4P+qhJIBzqLDGmL919qhpSeiZy0?=
 =?us-ascii?Q?l3ub1e5gpO0a0Brb8jeKKLvCXDgXDG8znBQVaHXsikxlwO38wF4cbkX1jNvv?=
 =?us-ascii?Q?vPBklAvzWPy+TlSX59P88v6BAYvkdVWM67UjiCdAvoKW1dM85Pa5K5n5iWpH?=
 =?us-ascii?Q?8awZwZNHkULP/c5yr0kWWLrhJ6mxlJa15MQevHtwoo/OP4KTporFjmND8bs5?=
 =?us-ascii?Q?OXWIqtQvq0gtps6A8srtQcGBqQwwPJXyNWMFE7/SKn/EScHmXWrZSmgoIxbs?=
 =?us-ascii?Q?Lx5XxM3A4yUfxUKwRl2l7ovPm53x9p44GQASUz4ndxSLA+vN6xqnOK/ujB05?=
 =?us-ascii?Q?V5IDqBf0u5x2wd7wWjgIncM2dWDNRSekbVdh/Ly+ztGwwy31XVZi2S7V/oyt?=
 =?us-ascii?Q?8iG25/+l9kvYSCGuDSqMsjoxYh2p+o5p02HaB1e5xOjVYbxwnn1RBjiuiQiZ?=
 =?us-ascii?Q?zSVZSH2cTmdw+rFDh8ZgapFHOly2lfx5drbLc3iLXL9azXtJqlHr/arLqWuz?=
 =?us-ascii?Q?Om/8XoGTtLfM58IrBmEU2bHe1YO23k/JdDads/Zze7WX7wg1sJv9mf7Mdpvw?=
 =?us-ascii?Q?PxlgqmzL1SZkU4jPgcNAnCQs8rSrRk9cKxCXnTS229bVsOYxQ48amUttENNp?=
 =?us-ascii?Q?3bid8VBMGktoyNVn2Dv6gEaqaKCH6eKaxQRHfRBV+5g8w+EBSXa7+i35ym8e?=
 =?us-ascii?Q?5kot1D37QWQIyny6pkgizzLjSWe+EG+17I+8eXKwYaQW4aVhIkRl/PfYKYpb?=
 =?us-ascii?Q?o8F6ybulUZg+BUy9jfcko0rIGv6yrMrbYlLP/L0quL1tCaAykdO+YRlZajIM?=
 =?us-ascii?Q?zTF7VSjgzfqJi9LgiRjkiGuPKL7b/aJCV0CyUslLF3RUDtT6a+ePBvd1FWW+?=
 =?us-ascii?Q?gjd6vA65Wf/QZfLr4QUlVVTNRjYAwYMPj7PHC1pQOxy8u+pL2IqBoV1HaiQG?=
 =?us-ascii?Q?YGp80ioXl2RvursRtHFhn2C1aHdl93xUfimJdj0VCTBPEGHLocKSQzsE1qz6?=
 =?us-ascii?Q?OlQRiWBeGAKj2J10nDcdUN++90IKT0CSVL/qn3c0587TICcETwu+mnYFedQ8?=
 =?us-ascii?Q?MaZUqnjxBvnwhMPMo5TF8/GR8reqwkReTgWxeVeTwO/EQwj+q31E7c3Eg1Bp?=
 =?us-ascii?Q?RaHBX7OZpVK4iSgV5ytM6ZPDvMiNoX0GYKlNgUD1h4+f7nS9j+XSL77LUSXt?=
 =?us-ascii?Q?Y9gc1Be9H0gkWsuPCjP9KXAfdVQmUEb38f2fCnOJOshbb+YbvNzup67gc4aH?=
 =?us-ascii?Q?5/s1lNUQkmBtUkowy7y1Sn7LQNvFvGMJXk4bnL/MoLc8+QyBZ349mnSjyzQm?=
 =?us-ascii?Q?RlCyn17KNirgYH8FOtty9MnvdC2inUbSMNfKnbivwpN+OgVDe4bz3QQ5M8dd?=
 =?us-ascii?Q?rOup4gkzRetRF7nXy6zGmOWdlchce9YdIExPg8V1o45DrYhqAYkm+gETNm+W?=
 =?us-ascii?Q?vgGHU5UNSFgo97OvQggV/jajfVjclQoZE9DXJDhL+4PNYGtDZfcTMHQ6OeNM?=
 =?us-ascii?Q?H23IuCVV7OGBTHhkwmzHLl87XnenP2Im2t7dK9QCz1Nh73HjEO1tZ23y1i5x?=
x-ms-exchange-antispam-messagedata-1: 
 V0x3Fz0EL5B4ul30vjPX5R0tc/xhBc4FrqaxUNJi4CcXOR/HXowVc6Ix
MIME-Version: 1.0
X-OriginatorOrg: vub.be
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR01MB4929.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33de862b-2407-4af5-0de5-08da2ed88c1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 20:48:02.4849
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 695b7ca8-2da8-4545-a2da-42d03784e585
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qV26e0mPJ+rme/F8J1ILDBXhvikEW9YKQC8kkvL+qtO7FXLGqsVEAMbOVEr+KlELG7WkeQlaLYzPVv0RFap0u+2X3IwuhtCwv3VKE3oybtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0102MB3486
Message-ID-Hash: W2GWFPEF6MA6REFWWTMB7JGYSXDBBG2K
X-Message-ID-Hash: W2GWFPEF6MA6REFWWTMB7JGYSXDBBG2K
X-MailFrom: Mehmet.Fatih.Ayten@vub.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] About Reducing Latency When Implementing CSMA/NDA Protocol on Wireless Systems Using USRP Devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EGFPJTKNSE3AY2BFQ2ESITX673KYMYY6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2209493345103589446=="

--===============2209493345103589446==
Content-Language: aa
Content-Type: multipart/alternative;
	boundary="_000_AM6PR01MB4929B7524107F448A680BF19BBC29AM6PR01MB4929eurp_"

--_000_AM6PR01MB4929B7524107F448A680BF19BBC29AM6PR01MB4929eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Dear Forum Members,

I have already posted at 14th April with the same issue, but since I could =
not receive any reply, I decided to post again, sorry for inconvenience.  I=
 am Fatih from Vrije Universiteit Brussels, and writing to ask for any sugg=
estion about the Reducing Latency When Implementing CSMA/NDA Protocol on Wi=
reless Systems Using USRP Devices.

Firstly, I would like to briefly mention about CSMA/NDA protocol so, my que=
stion means more for you.

CSMA/NDA (Carrier Sense Multiple Access/Non Destructive Arbitration) protoc=
ol is employed mainly in Control Area Network (CAN) buses. If 2 or more tra=
nsceiver nodes want to broadcast simultaneously, the winner node is determi=
ned by arbitration fields of transceivers. The winner node continues transm=
itting, while other nodes become silent. Arbitration fields are generally c=
omposed of 12 bits, and recessive and dominant bits can be chosen by the de=
signer. To give an example, lets assume length of arbitration field is deci=
ded as 4 bits and 2 transceivers want to broadcast their message on the bus=
 network. Also, dominant bit is selected as "1":

Node 1: -start of arbitration field- 1 1 1 1 -end of arbitration field-  -s=
tart of meaningful message- 1 0 0 1 0 0 1 0 1 -end of meaningful message-

Node 2: -start of arbitration field- 1 0 0 0 -end of arbitration field-  -s=
tart of meaningful message- 0 1 0 1 1 1 0 1 0 -end of meaningful message-

Since arbitration field of Node 1 includes more 1's, it is more dominant th=
an Node 2, therefore as time goes on, Node 2 will become silent and message=
 of Node 1 will appear on the bus.

In my project, I am trying to implement this protocol in a wireless fashion=
. I use two USRP X310
SDRs, one OctoClock CDA-2990 Clock Distribution Device in order to maintain=
 synchronization between
SDRs, one Gigabit ethernet switch in order to make connection between PC an=
d SDRs. Wireless communication between SDRs has been maintained using VERT2=
450 Vertical Antennas. Also, experiments have been conducted in real-time o=
n the host PC using the GNU Radio framework.

The flowgraph that I use is in this link: https://drive.google.com/file/d/1=
iBkg8wWBPxVkYtm8LsT2qiPHqlvlZ6mj/view?usp=3Dsharing

As you can see from the flowgraph, two Tx nodes transmit their bits, one re=
ceiver reveives bits, then according to resulting received bits, command is=
 sent to transmitters. In order to create this command, I have created an E=
mbedded Python Block and its content is as follows (or you can check screen=
shot from the link: https://drive.google.com/file/d/1NCLQIKK_qp1Ltdf3fswCUs=
jxGKay1HKH/view?usp=3Dsharing):

import numpy as np
from gnuradio import gr
import pmt

class blk(gr.basic_block):

    def __init__(self, check=3D1.0):
        gr.sync_block.__init__(
            self,
            name=3D'Embedded Python Block',
            in_sig=3D[np.int32,np.int32],
            out_sig=3D[np.int32]
        )
        self.check =3D check
        self.message_port_register_out(pmt.intern('Gain Changer Message Por=
t'))
    def work(self, input_items,output_items):
        if self.check =3D=3D1:
            if (not (sum(input_items[0][0:4]) =3D=3D sum(input_items[1][0:4=
]))):
                self.message_port_pub(pmt.intern('Gain Changer Message Port=
') , pmt.dict_add( pmt.make_dict() , pmt.intern("gain") , pmt.from_double(0=
)))
                self.check =3D2
        if self.check =3D=3D2:
            pass
        return(len(output_items[0]))

By doing so, I am trying to compare first 4 bits of message (arbitration fi=
eld of the corresponding node) and the first 4 bits of the received bits. I=
f they are equal, gain is kept same (or high); otherwise gain is set to 0 d=
B, i.e, transmission stops.

Also, I maintain the synchronization by adding the flollowing commands to g=
enerated Python file:

self.uhd_usrp_source_0.set_time_next_pps(uhd.time_spec_t(0.0));
self.uhd_usrp_sink_0.set_time_next_pps(uhd.time_spec_t(0.0));
self.uhd_usrp_sink_0_0.set_time_next_pps(uhd.time_spec_t(0.0));
time.sleep(1)

self.uhd_usrp_sink_0.set_start_time(uhd.time_spec_t(2))
self.uhd_usrp_sink_0.clear_command_time()
self.uhd_usrp_sink_0_0.set_start_time(uhd.time_spec_t(2))
self.uhd_usrp_sink_0_0.clear_command_time()
self.uhd_usrp_source_0.set_start_time(uhd.time_spec_t(2))
self.uhd_usrp_source_0.clear_command_time()

By doing so, I aim to make the SDRs start transmission at the same time.


In this configuration, I have faced 2 problems:

1. Delay is not as low as I desired: The data rate is kept in 1 kbps. After=
 this methods, the effect of  CSMA/NDA appears in 74th received bit which m=
eans nearly 74 ms delay.

2. For different arbitration fields, the delay changes. For example, when 2=
 Tx nodes with arbitration field "1111" and "1000" transmit, the delay is 7=
3 ms; where 2 Tx nodes with arbitration field "1111" and "1100" transmit, t=
he delay is 167 ms. Therefore, the delay could not be standardized and it d=
oes not offer a fit implementation.

With all this information, I would like to kindly ask for your suggestions =
to reduce and fix the delay. Any idea about the flowgraph and Embedded Pyth=
on Block is highly appreciated.

Kind Regards,
Mehmet Fatih Ayten

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s


--_000_AM6PR01MB4929B7524107F448A680BF19BBC29AM6PR01MB4929eurp_
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"TR" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:break-=
word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Hello Dear Forum Members,<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">I have already posted at 14th A=
pril with the same issue, but since I could not receive any reply, I decide=
d to post again, sorry for inconvenience. &nbsp;I am Fatih from Vrije Unive=
rsiteit Brussels, and writing to ask for
 any suggestion about the Reducing Latency When Implementing CSMA/NDA Proto=
col on Wireless Systems Using USRP Devices.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Firstly, I would like to briefl=
y mention about CSMA/NDA protocol so, my question means more for you.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">CSMA/NDA (Carrier Sense Multipl=
e Access/Non Destructive Arbitration) protocol is employed mainly in Contro=
l Area Network (CAN) buses. If 2 or more transceiver nodes want to broadcas=
t simultaneously, the winner node is
 determined by arbitration fields of transceivers. The winner node continue=
s transmitting, while other nodes become silent. Arbitration fields are gen=
erally composed of 12 bits, and recessive and dominant bits can be chosen b=
y the designer. To give an example,
 lets assume length of arbitration field is decided as 4 bits and 2 transce=
ivers want to broadcast their message on the bus network. Also, dominant bi=
t is selected as &quot;1&quot;:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Node 1: -start of arbitration f=
ield- 1 1 1 1 -end of arbitration field-&nbsp; -start of meaningful message=
- 1 0 0 1 0 0 1 0 1 -end of meaningful message-<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Node 2: -start of arbitration f=
ield- 1 0 0 0 -end of arbitration field-&nbsp; -start of meaningful message=
- 0 1 0 1 1 1 0 1 0 -end of meaningful message-<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Since arbitration field of Node=
 1 includes more 1's, it is more dominant than Node 2, therefore as time go=
es on, Node 2 will become silent and message of Node 1 will appear on the b=
us.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">In my project, I am trying to i=
mplement this protocol in a wireless fashion. I use two USRP X310<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">SDRs, one OctoClock CDA-2990 Cl=
ock Distribution Device in order to maintain synchronization between<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">SDRs, one Gigabit ethernet swit=
ch in order to make connection between PC and SDRs. Wireless communication =
between SDRs has been maintained using VERT2450 Vertical Antennas. Also, ex=
periments have been conducted in real-time
 on the host PC using the GNU Radio framework.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">The flowgraph that I use is in =
this link: https://drive.google.com/file/d/1iBkg8wWBPxVkYtm8LsT2qiPHqlvlZ6m=
j/view?usp=3Dsharing<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">As you can see from the flowgra=
ph, two Tx nodes transmit their bits, one receiver reveives bits, then acco=
rding to resulting received bits, command is sent to transmitters. In order=
 to create this command, I have created
 an Embedded Python Block and its content is as follows (or you can check s=
creenshot from the link: https://drive.google.com/file/d/1NCLQIKK_qp1Ltdf3f=
swCUsjxGKay1HKH/view?usp=3Dsharing):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">import numpy as np<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">from gnuradio import gr<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">import pmt<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">class blk(gr.basic_block):<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp; def __init__=
(self, check=3D1.0):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; gr.sync_block.__init__(<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; name=3D'Embedded Python Block',<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in_sig=3D[np.int32,np.int32],<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; out_sig=3D[np.int32]<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; )<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; self.check =3D check<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; self.message_port_register_out(pmt.intern('Gain Changer Message=
 Port'))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp; def work(sel=
f, input_items,output_items):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if self.check =3D=3D1:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (not (sum(input_items[0][0:4]) =3D=
=3D sum(input_items[1][0:4]))):
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.messa=
ge_port_pub(pmt.intern('Gain Changer Message Port') , pmt.dict_add( pmt.mak=
e_dict() , pmt.intern(&quot;gain&quot;) , pmt.from_double(0)))<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.check =3D2=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if self.check =3D=3D2:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pass&nbsp;&nbsp;&nbsp; <o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;return(len(output_items[0]))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">By doing so, I am trying to com=
pare first 4 bits of message (arbitration field of the corresponding node) =
and the first 4 bits of the received bits. If they are equal, gain is kept =
same (or high); otherwise gain is set
 to 0 dB, i.e, transmission stops.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Also, I maintain the synchroniz=
ation by adding the flollowing commands to generated Python file:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_source_0.set_time=
_next_pps(uhd.time_spec_t(0.0));<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0.set_time_n=
ext_pps(uhd.time_spec_t(0.0));<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0_0.set_time=
_next_pps(uhd.time_spec_t(0.0));<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">time.sleep(1)<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0.set_start_=
time(uhd.time_spec_t(2))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0.clear_comm=
and_time()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0_0.set_star=
t_time(uhd.time_spec_t(2))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0_0.clear_co=
mmand_time()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_source_0.set_star=
t_time(uhd.time_spec_t(2))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_source_0.clear_co=
mmand_time()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">By doing so, I aim to make the =
SDRs start transmission at the same time.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">In this configuration, I have f=
aced 2 problems:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">1. Delay is not as low as I des=
ired: The data rate is kept in 1 kbps. After this methods, the effect of&nb=
sp; CSMA/NDA appears in 74th received bit which means nearly 74 ms delay.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">2. For different arbitration fi=
elds, the delay changes. For example, when 2 Tx nodes with arbitration fiel=
d &quot;1111&quot; and &quot;1000&quot; transmit, the delay is 73 ms; where=
 2 Tx nodes with arbitration field &quot;1111&quot; and &quot;1100&quot; tr=
ansmit,
 the delay is 167 ms. Therefore, the delay could not be standardized and it=
 does not offer a fit implementation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">With all this information, I wo=
uld like to kindly ask for your suggestions to reduce and fix the delay. An=
y idea about the flowgraph and Embedded Python Block is highly appreciated.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Kind Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Mehmet Fatih Ayten</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM6PR01MB4929B7524107F448A680BF19BBC29AM6PR01MB4929eurp_--

--===============2209493345103589446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2209493345103589446==--
