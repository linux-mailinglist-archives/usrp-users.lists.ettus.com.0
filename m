Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808A500FDC
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 16:12:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54A35384DC0
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 10:12:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649945523; bh=c+WuD/xyDfsieIGgeE6e/ly2BgBohWXCjS5M0NinRWk=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PyQDLdRrFvTIpmxjIJGh0Es8loQj7mz3L4cNFwSEGNn4l+qc6uLiu+zUvvuPl1uxG
	 F81msapRPZTJQu5FQaZBy0LM3RiP5U6kNrOtAvsNgb6GTKcw1zt+XMc5DJkLtYRdGa
	 9NaV5xnwDGRgQOx5Baksmp+6smcPd/Vw9qa8fd7AI8u3M/zUSOeMki3GJqKGTId+3T
	 UI7plFvZny2ghR4cUWX68NSKpVFhrpdUqjGF4j39nX0Wc5BwZqoTj6M1uF26ij4j/S
	 SEZJ2Xe8waaVq5V8tZCr/7wb3GhD7Ux/BY8uCfXC2WKtsAVs+94n4ZHpqSrzeCBb3L
	 BDDNgIq+z/Mgg==
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60084.outbound.protection.outlook.com [40.107.6.84])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CFFE384C9B
	for <usrp-users@lists.ettus.com>; Thu, 14 Apr 2022 09:50:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vub.be header.i=@vub.be header.b="gpag6yIF";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HCGkS9SVyprYvrk8PIX+NEbZbEyQ98WxOCc4lYs+fR4nJG6uqzlCTuroubScLpIdJf80qRA5A9Sjmf4B8/+jz2TAWJm2Wl3IwSuRSUqSapZmq5Np8DiS4RckvqlXVLZr5i+sSdO6O7oDf0fZXfqHjJzbS5ReHtBnWH6nbo5kJxos3S+1cTvrGv7ULtXHZqIimPtMtWlTk4Z0uR5lvfR3iDZvsldwNCm/uexQVt6VCxRsIWF9xYjvEGH8H+aYYaEuLGnh+K1rnubG/X4PDwWyGWUk0pekLSIJ/EVrMHqAXzf8q3bUSwVpks8vAiKH1mkZl6MVUc8Ta6rPl2JEBc6WZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VvE/htz+lXvIHv2St16aDhY8ShlTpaTDMUD3ji2q080=;
 b=KUl8xcDHTf3tCY8b8807IvC/iERZkZNjAspxabRyuL7IxzTzK0iZL5/1kM2DW5nLrfk+OMOly6zeedJup2jvOzly8RBmdSzectYM/VR3X6GTwmlVNK9Mfc7pOsIXQQ/DNZNE3ljCHpQG8zyetSttTyn8MGvA8yFfaNohivSCLRDhBmZX0GGggLGjy6QU+lSv+Yo95RbCKhsoyquEOcJl+IfqmcPGgLwuzMILxnM5Nj6CHoO1dTyt48y8rUJCAiDhv9PH0jf7rlbRbyCiUMJsi4/oLoRommCmgQa9YJlYi4cJcgMBUAfYgiZvQAk3XlDYspEKrw0UwkfNfUAbFTDAgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vub.be; dmarc=pass action=none header.from=vub.be; dkim=pass
 header.d=vub.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vub.be; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvE/htz+lXvIHv2St16aDhY8ShlTpaTDMUD3ji2q080=;
 b=gpag6yIFS6u2EcN6Uu7XhPielvrcj2cO48bPV1bmslizXFd3L1ZMNicJ9w+KZqmUM/jOM0z0dt0uPkarOVsujizSMQ92KsOtm1IIH908mfwFQN/0CcHPPzzaaxPDlomwue+zBQcX9whBX/vMariPHl8V2UhS8s+E1G9Mp7vyO3E=
Received: from PR1PR01MB4938.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:1::11) by HE1PR0102MB2697.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:20::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Thu, 14 Apr
 2022 13:50:33 +0000
Received: from PR1PR01MB4938.eurprd01.prod.exchangelabs.com
 ([fe80::4106:5915:8aad:3b26]) by PR1PR01MB4938.eurprd01.prod.exchangelabs.com
 ([fe80::4106:5915:8aad:3b26%5]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 13:50:33 +0000
From: Mehmet Fatih Ayten <Mehmet.Fatih.Ayten@vub.be>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"commit-gnuradio@gnu.org" <commit-gnuradio@gnu.org>,
	"discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>
Thread-Topic: About Reducing Latency When Implementing CSMA/NDA Protocol on
 Wireless Systems Using USRP Devices
Thread-Index: AQHYT/0NXg/UB3osFEGdacsdtidXbw==
Date: Thu, 14 Apr 2022 13:50:33 +0000
Message-ID: 
 <PR1PR01MB49383C0CE8B7BE8F11C6CFF9BBEF9@PR1PR01MB4938.eurprd01.prod.exchangelabs.com>
Accept-Language: tr-TR, en-US
Content-Language: tr-TR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: a3793fec-d276-2eae-87bd-6b738d7c7264
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vub.be;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 537d90f1-486b-4902-541d-08da1e1dbee2
x-ms-traffictypediagnostic: HE1PR0102MB2697:EE_
x-microsoft-antispam-prvs: 
 <HE1PR0102MB26975551AB75AAB52B4D553DBBEF9@HE1PR0102MB2697.eurprd01.prod.exchangelabs.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /zYGjPfq9dVspXm8PINvOJth2Qv2DbTTRgq1f68CegaSqQsJbXv9Xyv858BeXNlqO4C52IQbs/XmTwUMzT+ZSQWmiN3LfSwww8Gxeg+il7Juj1m07Ide2BakQ5rCzu8a3BSQHFX55Y2y2Bp7qPxDYjq2dHrE8APDqZ8NnqP7I5wDeHXbdYh2ZEysskKAAQ8Dt2b4oi/xleyDFuqRmtvcx+iFznpZf/IZJb+m9ACMhObxIFEpfxOLQaB7KK8y/6eC2q6EkuPoZNs+OK+CwaTso8RL9O9AWa2fab5eJFWghQOHxbpWQuR+Nfai7kB9Xy9a/Lk04iOwHro9z2m61L788xzVIHKK/tvLUm313ErjIqe5KlSsrbm45wKtVY8Kl8SDTVcoa7IgOhjYPLlU2Ci2vElPuXckDJTEk0CccUFXqnTeWR21/tdH6decTnJULmHhULjq0DXsFLy0fMZ19ZvfOlcNfIdhhmpA9QEeOKko3Q7pGMqkMDitj4jGymfaGa7tBIszSspy2ZPOr4Y5uehDpD4VOgM14jh0db+HFX+Joj+pXSmE02c81NSJfHh7M1Ln9PtYT1y/kCcwPmwLirC8vokhCwIpC24t5QelK+IwU9PnWfSmBczKX93oSaX7dhNaHxnbHKtRmpHPVDo5+qiwt7Gywvqgvv2mssaqvO7GjHOFQF+lWZXk1BaupcqEDowkJnxVDOfHcZ2KyTV1d95KF4oOASNa7/nzWb4xrRTBt/mopCepEgmBSdHPnYKTEPNCNGRxV662Zesyldvrct5MgOERE0MUQoR4SThxChbyq37Hbqynz+Ih/vKBYhXCLubV
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR1PR01MB4938.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(8936002)(66476007)(76116006)(66946007)(38100700002)(7696005)(2906002)(8676002)(122000001)(508600001)(66556008)(66446008)(83380400001)(110136005)(55016003)(91956017)(64756008)(6506007)(966005)(186003)(86362001)(26005)(71200400001)(33656002)(786003)(52536014)(316002)(66574015)(5660300002)(9686003)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-9?Q?muX0z9KY1Fd/qdbP4S2gAqrSOBVoOvvwX4+kDJP22iwrOCT/Q5vUA4CqCu?=
 =?iso-8859-9?Q?w326YLuCsAi7DX7o8tFQYkk31pSAaI9KPaR217bsVjqD+SXeHSCZsoKxCS?=
 =?iso-8859-9?Q?KCdjhNRVpQPrJEUoLCtgc4IBy0m4N9GjAXRirsza6amB0XRn8RYXqhQLSE?=
 =?iso-8859-9?Q?XkAJFUmURGmLdny3liR2NVlSDN8f1xUj/Sc0b6DrdoQ5aa4vMee8lGYaCB?=
 =?iso-8859-9?Q?nhIQ2xmrPUCCEOTVhRp2v5pDh436dGNFESo6MRurugn52xfhYHut+I5m4A?=
 =?iso-8859-9?Q?NlXlgJexdFnr61WSglKSBf1sqAvU9Zx+j8Q/yq1sivGfc99HPA4nAanxe8?=
 =?iso-8859-9?Q?cZGJ1VlZOepD5rtIgREC/7kqK0otteKggzVW3Q73SFTLkeF1qVd7dIXVJw?=
 =?iso-8859-9?Q?MZPh0XSfzKHi21+jgab4lUZJy1f57vhpy2kbG5nr2PpD4MySeQPSYNijGE?=
 =?iso-8859-9?Q?RstdLsoTFDdFIefEYcob9DHlk/QdMkact7dmy8mAIRdMBbukpQ7ljqUOB1?=
 =?iso-8859-9?Q?ItIqjkNw63pbLtOd5QvXssU1xOPllWWOhQP6i+OTjOt78HZoJhKKxA2dMG?=
 =?iso-8859-9?Q?igTm4kP1atin6lpsdnQ5pMN19Np/67LS5vE1ftWhoosmT00+QNqVlMTLj6?=
 =?iso-8859-9?Q?kHFva+2sOckkuTethdXndS+zrksMdDc8qk0cArGtq+eFV/aKKLSODrJznl?=
 =?iso-8859-9?Q?hfrd2wV0Oc6Jd2QBgptWAKyh9SAdcTKq3QoSPZBWXIQWtMPX8OgalK5SKF?=
 =?iso-8859-9?Q?JGBdYnBQD64QD53RHgIhCMK9ftGxYSXlGmZikgYHDeHhzTWTdhxSVm0Tup?=
 =?iso-8859-9?Q?8/R8NSQ8Byk4ojoL54/9cze/cbH0jNVDv/sV16hp7hnPag25SZpcGolwYH?=
 =?iso-8859-9?Q?N8NACaP6oX+7xaHkp7zdKk6eXxnkC/8S6Jo0RsEtWx1B1sc3TNItGos6at?=
 =?iso-8859-9?Q?u05QuKbAvSAuE3WEaVgyu5b/3r/ZWlQXE9WqEhC0UXCxKRBP47cIlOXX9O?=
 =?iso-8859-9?Q?iBrFU+9BjnxOCJ+LJicnorBEhzFa5dxozBcg21xfX+nuI2uyJL9huyQaL+?=
 =?iso-8859-9?Q?Gsl1nZKZJnNOTqgCFkgK21+WE8CpBIcFHKo0nljGrIPIfm8Q8/WGcHByiP?=
 =?iso-8859-9?Q?hKZ1rPYBHSp8J0b1nFC036F5Pgx2d0ktvWUzaEl0VInq78wzr8fTFI1qGN?=
 =?iso-8859-9?Q?KoRU7kfQTscjWXLKkQPVawdT967xv+2pYE43F/F3QCsbNXN4PhUGGNqEOF?=
 =?iso-8859-9?Q?+fKPqFf25H0tjP5vDgJBItFTUkSIbccn5nmevHJ5NfMssIITeBQ+o/XFct?=
 =?iso-8859-9?Q?qOqdXKJPlZFP5k5LbIxeo4PK+23nxgeld/cwyUNngUAVcdGI+JOBxatlht?=
 =?iso-8859-9?Q?s1LsFAXBsT7afb8n//OzPiqk1r8aY9mcW3ccPRg7csy5Cya/E3YGFQtZGx?=
 =?iso-8859-9?Q?DFoS+CJBscHlpIsiFJIWRxUahzSeQAx48UDX6cqPWIzPzm+4/F66+8bq/a?=
 =?iso-8859-9?Q?qXmYnlrzwv/hC9MgdDLQQiZdVEZSG/prR0ImkZuPnjc0szeNDFA3c4f2sU?=
 =?iso-8859-9?Q?ZQid0U+Ss1kj4yngUhY5QsDq/T1YmLHbtnhsUFfzLzPIdrPC+lPS7Cw+yS?=
 =?iso-8859-9?Q?B5/STaJpv137ID3i8zX5JGX3cTHYynWyjCJEbLq1SSl81cpqYOyOi0we29?=
 =?iso-8859-9?Q?Lvozuhvi3193ujALag7rktUbjPeUfD9z7MHytJsJwQwMI9EG3hRqroKhQR?=
 =?iso-8859-9?Q?VnlORhOv1G9gSA64lPkh4gWIJuw//xaSZPL4yAGlcve4zAdYgHn197apIl?=
 =?iso-8859-9?Q?jrESji47OA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: vub.be
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR1PR01MB4938.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 537d90f1-486b-4902-541d-08da1e1dbee2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2022 13:50:33.0797
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 695b7ca8-2da8-4545-a2da-42d03784e585
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HEW9GUqzadjwd4pYJQRfzjXgiZGL0S6DTAeZcjvJ7X2HIdxat/chqwGmkX4lY+13XSB9DzZNIW96XGZvylQoVlN44/jUYRO+zbGIzUhwHW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0102MB2697
Message-ID-Hash: V77AHWI5PTATSL4RSD2PKJCYICVHYV4T
X-Message-ID-Hash: V77AHWI5PTATSL4RSD2PKJCYICVHYV4T
X-MailFrom: Mehmet.Fatih.Ayten@vub.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] About Reducing Latency When Implementing CSMA/NDA Protocol on Wireless Systems Using USRP Devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YIXVGWKDLKAZOWEKRHFWQNXFJFV6NVGN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Dear Forum Members,

I am Fatih from Vrije Universiteit Brussels, and writing to ask for any suggestion about the Reducing Latency When Implementing CSMA/NDA Protocol on Wireless Systems Using USRP Devices.

Firstly, I would like to briefly mention about CSMA/NDA protocol so, my question means more for you. 

CSMA/NDA (Carrier Sense Multiple Access/Non Destructive Arbitration) protocol is employed mainly in Control Area Network (CAN) buses. If 2 or more transceiver nodes want to broadcast simultaneously, the winner node is determined by arbitration fields of transceivers. The winner node continues transmitting, while other nodes become silent. Arbitration fields are generally composed of 12 bits, and recessive and dominant bits can be chosen by the designer. To give an example, lets assume length of arbitration field is decided as 4 bits and 2 transceivers want to broadcast their message on the bus network. Also, dominant bit is selected as "1":

Node 1: -start of arbitration field- 1 1 1 1 -end of arbitration field-  -start of meaningful message- 1 0 0 1 0 0 1 0 1 -end of meaningful message-

Node 2: -start of arbitration field- 1 0 0 0 -end of arbitration field-  -start of meaningful message- 0 1 0 1 1 1 0 1 0 -end of meaningful message-

Since arbitration field of Node 1 includes more 1's, it is more dominant than Node 2, therefore as time goes on, Node 2 will become silent and message of Node 1 will appear on the bus.

In my project, I am trying to implement this protocol in a wireless fashion. I use two USRP X310
SDRs, one OctoClock CDA-2990 Clock Distribution Device in order to maintain synchronization between
SDRs, one Gigabit ethernet switch in order to make connection between PC and SDRs. Wireless communication between SDRs has been maintained using VERT2450 Vertical Antennas. Also, experiments have been conducted in real-time on the host PC using the GNU Radio framework.

The flowgraph that I use is in this link: https://drive.google.com/file/d/1iBkg8wWBPxVkYtm8LsT2qiPHqlvlZ6mj/view?usp=sharing

As you can see from the flowgraph, two Tx nodes transmit their bits, one receiver reveives bits, then according to resulting received bits, command is sent to transmitters. In order to create this command, I have created an Embedded Python Block and its content is as follows (or you can check screenshot from the link: https://drive.google.com/file/d/1NCLQIKK_qp1Ltdf3fswCUsjxGKay1HKH/view?usp=sharing):

import numpy as np
from gnuradio import gr
import pmt

class blk(gr.basic_block):

    def __init__(self, check=1.0):
        gr.sync_block.__init__(
            self,
            name='Embedded Python Block',
            in_sig=[np.int32,np.int32],
            out_sig=[np.int32]
        )
        self.check = check
        self.message_port_register_out(pmt.intern('Gain Changer Message Port'))
    def work(self, input_items,output_items):
        if self.check ==1:
            if (not (sum(input_items[0][0:4]) == sum(input_items[1][0:4]))): 
                self.message_port_pub(pmt.intern('Gain Changer Message Port') , pmt.dict_add( pmt.make_dict() , pmt.intern("gain") , pmt.from_double(0)))
                self.check =2
        if self.check ==2:
            pass    
        return(len(output_items[0]))

By doing so, I am trying to compare first 4 bits of message (arbitration field of the corresponding node) and the first 4 bits of the received bits. If they are equal, gain is kept same (or high); otherwise gain is set to 0 dB, i.e, transmission stops.

Also, I maintain the synchronization by adding the flollowing commands to generated Python file:

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

1. Delay is not as low as I desired: The data rate is kept in 1 kbps. After this methods, the effect of  CSMA/NDA appears in 74th received bit which means nearly 74 ms delay.

2. For different arbitration fields, the delay changes. For example, when 2 Tx nodes with arbitration field "1111" and "1000" transmit, the delay is 73 ms; where 2 Tx nodes with arbitration field "1111" and "1100" transmit, the delay is 167 ms. Therefore, the delay could not be standardized and it does not offer a fit implementation.

With all this information, I would like to kindly ask for your suggestions to reduce and fix the delay. Any idea about the flowgraph and Embedded Python Block is highly appreciated.

Kind Regards,
Mehmet Fatih Ayten


 
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
