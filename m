Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3533F574D6F
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 14:26:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A25FD383D52
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 08:26:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657801584; bh=Q6UzO+1OgzOyUENWBIwjTSg8kAKPXjHxNA62Za/tp5w=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Qx93ryRKD7DICee/+7622iodxye1EuosqHIj294Axxe2RauQ6NRIStNEEFDC6/0ox
	 OrDCdCcQBTEMg7/COroxBlZZvRKUfu9OEjThANbevDsXdjYF1pPaNwNg/wnIRvI7Ur
	 JN3z+rS2uDXMOM8INNryG77LurYxOVhiBnO6kExQgHFCyc12WfI7sv9S1kIO/+NdlV
	 cHZt+BIBUWrAkCQnHQDoLNAOACy0aDhnAi3zK8PnlIL5Kwsqjrc8TO1SVkiKiSvrdx
	 tDyXlh9nTX0FjpLeYP2g2NmWeYNkgAByeNYMhnjXowMJPyI23U/XvGkrY2EuimdLUb
	 UgGA+5vd9ObhQ==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C7330383A9A
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 08:25:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="J4mid45V";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.134])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 8B593260084
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 12:25:19 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 5EC62BC0075
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 12:25:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TR7XY3lrqHp3UKBd9f4R9xT0oraQ3Q10f1/yaN1Z0cQSsehvw9ApVK6H2sVtyrFyW3eXT2wlqPoqZt4Vf6062TZhqksORg7fYTd8JIRjLYmI880syQPSQ3SzskbsVHgjaJ96B5syTGLPUC7gwSh9+oPr/fvgQLnbFunHm/wLxjArPiWWuNjxZ/Z/FMPxxJJCbacEYH8b/ozxOUwto9gyUVN3VLbv9TMGVTONZupDWZiDMdaN20yG+acgq3UZF+kpEOVPwfyAbkPVDfvJtRSBg1tsW4ycaGHF/w1b4gxYtr7IyK/KitSljI+STXlLv9/Edqs74byDNcAAWMT+HZZd3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HcbtVcJwaf4Ame4QchAiOp41mzOk5mwEYM8Kt4+Hin0=;
 b=WfTGdpLOaSIfZn08ovQMXwmsmB8LCiXqENo0yUcwc8kXx6oyxeInIm2BoPTj/z7aOLHU8Wjy0PF3cSuheuSwXsDAP2OYixOzz/XqKmny5ieNj5yHlzxk9mcGZ3Fg4FDD3LktNTnm1zYzQ8RdyUI9PGwa05sfHlO/+x8pdscX1UeiUL/UHL/oU+EXPi6RDeEP7H8QYzix/iOhH0y9jUcpDzygDYt8cdemqDikLEfXTzHzSf/g3TL4J+pzKV+ZA8MVyMLA295s0P5Kxy+5PuBvtt9/mMk1Y/AbxPL9ysvsaV8W7sqIoCEcscHkVE4+lnadFxFTo+peH3wiHx4CA+htUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HcbtVcJwaf4Ame4QchAiOp41mzOk5mwEYM8Kt4+Hin0=;
 b=J4mid45VeDOueTBRs4lOYfZU/ShFuLePjTx5vIZLHAPEN+rBer4QIoqMjFjxSYpZRm1ikELrnmN61tO1zK88dqqMwdJAy7sKPBHLa+Z0LkCECe+qcLq0hY+bsy9ZMzBZ/3h6lLy90mwuZavkY5eQ5lT+akJEwI74JkYBdhUG5ps=
Received: from MN2PR12MB3871.namprd12.prod.outlook.com (2603:10b6:208:16a::17)
 by MN2PR12MB3870.namprd12.prod.outlook.com (2603:10b6:208:166::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.23; Thu, 14 Jul
 2022 12:25:17 +0000
Received: from MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::31dc:d0db:cbd:e6]) by MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::31dc:d0db:cbd:e6%6]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 12:25:17 +0000
From: Jason Matusiak <jason@gardettoengineering.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: weird usrp coredump
Thread-Index: AQHYl3w7tR1ekwVgJUeyrR5T0Z/r/g==
Date: Thu, 14 Jul 2022 12:25:17 +0000
Message-ID: 
 <MN2PR12MB387160D39097A5A043F6B443AF889@MN2PR12MB3871.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 016ec557-c211-4b66-6cbd-11d4b9fe53df
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 378b28ba-947e-428a-3dc0-08da6593e902
x-ms-traffictypediagnostic: MN2PR12MB3870:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1nErHVp639hDNxxiRJyFP5GjwQvnzQqXhp+Svv4TvKGh8/EHPtr5BG9IupDzbjQWcEYCOZAjD6ftxWoF+sV0wCz2nH9MtRvaZ+kDKZU7FfUAyw+fMjM9LDEUzkM8sXYpNp5q8jvRukoCL1aZxUUlle+RkGSGuC6vtmpwkWhLUMLHYZfFyLInzy7ZU1b3BLUmMLViWDpXTPhIzM9550SUj1dHPRMF4DYeq0P8dss7Iq8D32p8jqihwSJckyz0P/+HZTnLki+DggZvhPCVepGLDotuo9yCvM+gm2MlIvv4uclkAUFWw01APIcJf/BSU3Y2QpPcgdSTvf7WzLL/f0ajBAkjWo1lsq+GRP18I8bqlIPjGRzF+sgYb63LRH7m+ZV923S42cPkaAnzPvD3qOQRhghWN1F+Q+AambpNT3KcgKyRw65U/HBPoP1pNgqsbvrUxSHM15dGm4P1ft/lFgE2T+qQfNYKhaafKQOwLPYWl2WWvJdofMZTB55+jySJlWqNZOSteXYJ1MzNZPXaj+MxXNDk7Noma8PxSd0ONKY7f1W1DQiy4oPonHHdSbxvXeopjjyO7oomeJucM6Cq8pOGhqZfvqVD8I+71IDYbF4hQ1eyl5u6Lg5LEy26lYKQ6p6op07Fqes7MZludru1OCoUJTiISznY8EBe14tYwC25LbfEH1u3koN572uyNMk5x/finOqE8vFJoUkwNYBdUdb/cg3DI9VD3Xk7Yp4bI6kR39XWOUncCuuKA/H7m91eu2LsYh7tbWnDsUS+J+3EUCKcmkEmZkAib6O+S2cAT1qMf8Enm8PRAlNLCQonQqc7y5K7zua+rUxpal3k3x76gPw7KA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3871.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(39830400003)(396003)(346002)(366004)(136003)(6506007)(7696005)(41300700001)(186003)(9686003)(26005)(478600001)(122000001)(38100700002)(3480700007)(83380400001)(38070700005)(2906002)(66556008)(5660300002)(19627405001)(33656002)(8936002)(52536014)(55016003)(8676002)(71200400001)(316002)(6916009)(66476007)(7116003)(86362001)(66946007)(64756008)(76116006)(66446008)(133083001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?+mx8PE/NSNxJEhd6XlTMLh1pOZmqp0pCdDbHLkOGC0RWfR3kQ7x+MxzxJO?=
 =?iso-8859-1?Q?jwjEGBJH0MIFHU2u236j02i5YxnHVJ8olbcqzJomEnlgvyF0DpzJKLpgd1?=
 =?iso-8859-1?Q?b/LObXj/O76gnmnGLrqgOIxYN2dytqFxZbvsKhCNOIviPTIlqh9K0lJUDG?=
 =?iso-8859-1?Q?b3HtBiNITc9iksXbm53sUureFewjB591P2I7afF0qKGKprZjAVGuwpBN8h?=
 =?iso-8859-1?Q?p+v75nalrFysy0L8E1vMkOD6wrUrRZ4jVtOtckd3lFZGLA8ALNriEPD/xE?=
 =?iso-8859-1?Q?myJ1m6OM1eyTkMRRzLTzrHk9GP1m/aB0xetKkLjyAJZf66WCQI5Wh/PZPS?=
 =?iso-8859-1?Q?AwcsBaUkJP9hMSEBJBrlNLAj2NjJfzJ0NpLluzwGbDnHH/PfIGKa4vjU7V?=
 =?iso-8859-1?Q?KJ0R2V57BzyR3DffiSozeSAIloONAuL9vYvRkJhYe/URbUROPdT7WXuFEw?=
 =?iso-8859-1?Q?INAr+rb2AAIXqzq2sPy00wwwcpeNdXtWPksHn6pbedU/7w2DZrt6YQ4HNk?=
 =?iso-8859-1?Q?f+PeVAulO4oAcj+3V/g/YBmY++iTnQRovCYPvUf9ZqSTxe+ag43mo1nYu0?=
 =?iso-8859-1?Q?aGyMemMnxd2GRZ7z2ygr1cOpeCF4TOWWZdL36yq8LYUleX/j6x+2TdlFNK?=
 =?iso-8859-1?Q?5sAc6r+orC4Y5nO1ECES5RXTv8s6SKixLEAtdUyenJF6F7HKxVchmNtUul?=
 =?iso-8859-1?Q?DIVydeJw1KYyJqFzXsR3kz1kuEV8q4hjjrs0wGANlgIqlGAx3ygZMEdUd1?=
 =?iso-8859-1?Q?h9zhG37drlUcYMmiY8r8IuwMfXr/F0UqrIH8bjcv6RgQviY+RujU3ROZcy?=
 =?iso-8859-1?Q?TEItMrJGkJXy0K1Hq4O+x0EFsTvsqc4mLjBZ87BR0HRbvTVgnBO6w2Kf7r?=
 =?iso-8859-1?Q?CPWIIsnmJg9YN3rCA/OLNhgc7gNd2Ofpn60s55BkrHe5VastH0ElD39jSq?=
 =?iso-8859-1?Q?JdLajXZsl4iDUKzN0QUGRXCF02EijgdS4o+NCNnpXHki84PSwJ/YfLb5hm?=
 =?iso-8859-1?Q?WlWRTIoCB/V/D69uFwEn1oHkPV761UwiwSo5Im066l9XF7ItrOvxDGJeWN?=
 =?iso-8859-1?Q?rSpiABb5K/qNvKv2dHKXRHE8Axjc6s21iCuul/uMsnvsGqBn5NcW4wwt7V?=
 =?iso-8859-1?Q?WR1yeHeifd/PeHZkmI9zFHqbTrlxphFNx9yVupjVO6XM/phZCWg29cDsh0?=
 =?iso-8859-1?Q?09vRvr4oI9v2XSdbm73nZkgh8pyWXPDEMYvtdy2R4pWxOVxbe6Vr+gozUf?=
 =?iso-8859-1?Q?hQr38AAOJOAP6D+JZuKgFy3yrAjzX5NadQNPG6/53QPuPHKgNHOdO99PP9?=
 =?iso-8859-1?Q?wHcC+uK19v2VYeqMqvsU0vudwHkMZ9rOhDQ7irorysAVEXnutRQJw+sU3q?=
 =?iso-8859-1?Q?Bu+H69lCfIF3/B1xh89/GAsMX3IweX6/KaEX/ywy2ayW7/se4I73CWHvCv?=
 =?iso-8859-1?Q?4mz62QzP/qGOhc4NdhauzZaG2/XnhSW/Xk1kM6wEUAba8UPLCxK2RAIcZz?=
 =?iso-8859-1?Q?QWswEfX+mLWDjgGny8tRbS1Z05oN6yY+INn4Hz+PG8p514eRr7/1N7mVGO?=
 =?iso-8859-1?Q?1xotSSWtuz1dLvGSWxHX6kq2ElUl1pIYoCYvoIY9oerM/Z25x3BZ1T4/2D?=
 =?iso-8859-1?Q?1gZG768vBqDM5If3fKkmvm1d9jzU9VAmy7Qyz8QWaK/EoVHogoBQuDzQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3871.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 378b28ba-947e-428a-3dc0-08da6593e902
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2022 12:25:17.0026
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6U7xxQ4zmTQ+0OKbcr7BqT4OB3LZzwWa5SvMs7nEkak3cEiajfYVv3Ondqym+o7NYSBoUSh7dcj073bOzjVj0+ApX3krBsqcAw6H0nz1nPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3870
X-MDID: 1657801520-N-fxGjmIQeh1
Message-ID-Hash: EUQVYI36KPME3IENZZP77BSUI67VIKOI
X-Message-ID-Hash: EUQVYI36KPME3IENZZP77BSUI67VIKOI
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] weird usrp coredump
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TXOXJYKAHLG7IGCPLOPJHSGJRGTG4D2U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7401871221630933559=="

--===============7401871221630933559==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB387160D39097A5A043F6B443AF889MN2PR12MB3871namp_"

--_000_MN2PR12MB387160D39097A5A043F6B443AF889MN2PR12MB3871namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Trying to run a C++ based flowgraph and occasionally getting a segfault/cor=
edump.  Finally, was able to capture the stack trace, and I am not sure wha=
t to make of it.  I //think// that this is all UHD, and not my app, but I f=
ind that hard to believe.  Here is that core dump, any thoughts on what is =
causing this and if there is any way for more to gracefully recover from it=
?  This was using a single N320, gnuradio v3.8, and UHD 4.1.0.5.

#0  __memmove_avx_unaligned_erms () at ../sysdeps/x86_64/multiarch/memmove-=
vec-unaligned-erms.S:257
#1  0x00007fe7f4950bbd in uhd::convert::converter::conv (num=3D<optimized o=
ut>, out=3D..., in=3D..., this=3D<optimized out>)
    at /opt/gnuradio/v3.8/src/uhd/host/include/uhd/convert.hpp:36
#2  uhd::transport::rx_streamer_impl<uhd::rfnoc::chdr_rx_data_xport, false>=
::_convert_to_out_buff (num_samps=3D<optimized out>, chan=3D0, out_buffs=3D=
...,
    this=3D0x7fe7a00027f8) at /opt/gnuradio/v3.8/src/uhd/host/lib/include/u=
hdlib/transport/rx_streamer_impl.hpp:339
#3  uhd::transport::rx_streamer_impl<uhd::rfnoc::chdr_rx_data_xport, false>=
::_recv_one_packet (buffer_offset_bytes=3D0, timeout_ms=3D100,
    eov_positions=3D..., metadata=3D..., nsamps_per_buff=3D5000192, buffs=
=3D..., this=3D0x7fe7a00027f8)
    at /opt/gnuradio/v3.8/src/uhd/host/lib/include/uhdlib/transport/rx_stre=
amer_impl.hpp:311
#4  uhd::transport::rx_streamer_impl<uhd::rfnoc::chdr_rx_data_xport, false>=
::recv (this=3D0x7fe7a00027f8, buffs=3D..., nsamps_per_buff=3D5000192,
    metadata=3D..., timeout=3D<optimized out>, one_packet=3D<optimized out>=
)
    at /opt/gnuradio/v3.8/src/uhd/host/lib/include/uhdlib/transport/rx_stre=
amer_impl.hpp:143
#5  0x00007fe7f8b6bbd5 in gr::uhd::usrp_source_impl::work (this=3D0x7fe7c80=
053d0, noutput_items=3D5000192,
    input_items=3Dstd::vector of length 0, capacity 0, output_items=3Dstd::=
vector of length 2, capacity 2 =3D {...})
    at /opt/gnuradio/v3.8/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:549
#6  0x00007fe7f8690637 in gr::sync_block::general_work (this=3D0x7fe7c80055=
b0, noutput_items=3D<optimized out>, ninput_items=3D..., input_items=3D...,
    output_items=3D...) at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-runtime=
/lib/sync_block.cc:61
#7  0x00007fe7f8644a45 in gr::block_executor::run_one_iteration (this=3Dthi=
s@entry=3D0x7fe7c37fd8c0)
    at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-runtime/lib/block_executor.=
cc:514
#8  0x00007fe7f869cc3c in gr::tpb_thread_body::tpb_thread_body (this=3D0x7f=
e7c37fd8c0, block=3D..., start_sync=3D..., max_noutput_items=3D<optimized o=
ut>)
    at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-runtime/lib/tpb_thread_body=
.cc:122
#9  0x00007fe7f868d844 in gr::tpb_container::operator() (this=3D<optimized =
out>, this=3D<optimized out>, this=3D<optimized out>, this=3D<optimized out=
>,
    this=3D<optimized out>) at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-run=
time/lib/scheduler_tpb.cc:50
#10 gr::thread::thread_body_wrapper<gr::tpb_container>::operator() (this=3D=
0x7fe7c8050810)
    at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-runtime/lib/../include/gnur=
adio/thread/thread_body_wrapper.h:52
#11 boost::detail::function::void_function_obj_invoker0<gr::thread::thread_=
body_wrapper<gr::tpb_container>, void>::invoke (function_obj_ptr=3D...)
    at /usr/include/boost/function/function_template.hpp:159
#12 0x00007fe7f86a9a92 in boost::function0<void>::operator() (this=3D<optim=
ized out>) at /usr/include/boost/function/function_template.hpp:759
#13 boost::detail::thread_data<boost::function0<void> >::run (this=3D<optim=
ized out>) at /usr/include/boost/thread/detail/thread.hpp:116
#14 0x00007fe7f5787bcd in ?? () from /usr/lib/x86_64-linux-gnu/libboost_thr=
ead.so.1.65.1
#15 0x00007fe7f99ae6db in start_thread (arg=3D0x7fe7c37fe700) at pthread_cr=
eate.c:463
#16 0x00007fe7f8ead61f in clone () at ../sysdeps/unix/sysv/linux/x86_64/clo=
ne.S:95


--_000_MN2PR12MB387160D39097A5A043F6B443AF889MN2PR12MB3871namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Trying to run a C++ based flowgraph and occasionally getting a segfault/cor=
edump.&nbsp; Finally, was able to capture the stack trace, and I am not sur=
e what to make of it.&nbsp; I //think// that this is all UHD, and not my ap=
p, but I find that hard to believe.&nbsp; Here
 is that core dump, any thoughts on what is causing this and if there is an=
y way for more to gracefully recover from it?&nbsp; This was using a single=
 N320, gnuradio v3.8, and UHD 4.1.0.5.<br>
<br>
#0 &nbsp;__memmove_avx_unaligned_erms () at ../sysdeps/x86_64/multiarch/mem=
move-vec-unaligned-erms.S:257
<div>#1 &nbsp;0x00007fe7f4950bbd in uhd::convert::converter::conv (num=3D&l=
t;optimized out&gt;, out=3D..., in=3D..., this=3D&lt;optimized out&gt;)</di=
v>
<div>&nbsp; &nbsp; at /opt/gnuradio/v3.8/src/uhd/host/include/uhd/convert.h=
pp:36</div>
<div>#2 &nbsp;uhd::transport::rx_streamer_impl&lt;uhd::rfnoc::chdr_rx_data_=
xport, false&gt;::_convert_to_out_buff (num_samps=3D&lt;optimized out&gt;, =
chan=3D0, out_buffs=3D...,
</div>
<div>&nbsp; &nbsp; this=3D0x7fe7a00027f8) at /opt/gnuradio/v3.8/src/uhd/hos=
t/lib/include/uhdlib/transport/rx_streamer_impl.hpp:339</div>
<div>#3 &nbsp;uhd::transport::rx_streamer_impl&lt;uhd::rfnoc::chdr_rx_data_=
xport, false&gt;::_recv_one_packet (buffer_offset_bytes=3D0, timeout_ms=3D1=
00,
</div>
<div>&nbsp; &nbsp; eov_positions=3D..., metadata=3D..., nsamps_per_buff=3D5=
000192, buffs=3D..., this=3D0x7fe7a00027f8)</div>
<div>&nbsp; &nbsp; at /opt/gnuradio/v3.8/src/uhd/host/lib/include/uhdlib/tr=
ansport/rx_streamer_impl.hpp:311</div>
<div>#4 &nbsp;uhd::transport::rx_streamer_impl&lt;uhd::rfnoc::chdr_rx_data_=
xport, false&gt;::recv (this=3D0x7fe7a00027f8, buffs=3D..., nsamps_per_buff=
=3D5000192,
</div>
<div>&nbsp; &nbsp; metadata=3D..., timeout=3D&lt;optimized out&gt;, one_pac=
ket=3D&lt;optimized out&gt;)</div>
<div>&nbsp; &nbsp; at /opt/gnuradio/v3.8/src/uhd/host/lib/include/uhdlib/tr=
ansport/rx_streamer_impl.hpp:143</div>
<div>#5 &nbsp;0x00007fe7f8b6bbd5 in gr::uhd::usrp_source_impl::work (this=
=3D0x7fe7c80053d0, noutput_items=3D5000192,
</div>
<div>&nbsp; &nbsp; input_items=3Dstd::vector of length 0, capacity 0, outpu=
t_items=3Dstd::vector of length 2, capacity 2 =3D {...})</div>
<div>&nbsp; &nbsp; at /opt/gnuradio/v3.8/src/gnuradio/gr-uhd/lib/usrp_sourc=
e_impl.cc:549</div>
<div>#6 &nbsp;0x00007fe7f8690637 in gr::sync_block::general_work (this=3D0x=
7fe7c80055b0, noutput_items=3D&lt;optimized out&gt;, ninput_items=3D..., in=
put_items=3D...,
</div>
<div>&nbsp; &nbsp; output_items=3D...) at /opt/gnuradio/v3.8/src/gnuradio/g=
nuradio-runtime/lib/sync_block.cc:61</div>
<div>#7 &nbsp;0x00007fe7f8644a45 in gr::block_executor::run_one_iteration (=
this=3Dthis@entry=3D0x7fe7c37fd8c0)</div>
<div>&nbsp; &nbsp; at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-runtime/lib/=
block_executor.cc:514</div>
<div>#8 &nbsp;0x00007fe7f869cc3c in gr::tpb_thread_body::tpb_thread_body (t=
his=3D0x7fe7c37fd8c0, block=3D..., start_sync=3D..., max_noutput_items=3D&l=
t;optimized out&gt;)</div>
<div>&nbsp; &nbsp; at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-runtime/lib/=
tpb_thread_body.cc:122</div>
<div>#9 &nbsp;0x00007fe7f868d844 in gr::tpb_container::operator() (this=3D&=
lt;optimized out&gt;, this=3D&lt;optimized out&gt;, this=3D&lt;optimized ou=
t&gt;, this=3D&lt;optimized out&gt;,
</div>
<div>&nbsp; &nbsp; this=3D&lt;optimized out&gt;) at /opt/gnuradio/v3.8/src/=
gnuradio/gnuradio-runtime/lib/scheduler_tpb.cc:50</div>
<div>#10 gr::thread::thread_body_wrapper&lt;gr::tpb_container&gt;::operator=
() (this=3D0x7fe7c8050810)</div>
<div>&nbsp; &nbsp; at /opt/gnuradio/v3.8/src/gnuradio/gnuradio-runtime/lib/=
../include/gnuradio/thread/thread_body_wrapper.h:52</div>
<div>#11 boost::detail::function::void_function_obj_invoker0&lt;gr::thread:=
:thread_body_wrapper&lt;gr::tpb_container&gt;, void&gt;::invoke (function_o=
bj_ptr=3D...)</div>
<div>&nbsp; &nbsp; at /usr/include/boost/function/function_template.hpp:159=
</div>
<div>#12 0x00007fe7f86a9a92 in boost::function0&lt;void&gt;::operator() (th=
is=3D&lt;optimized out&gt;) at /usr/include/boost/function/function_templat=
e.hpp:759</div>
<div>#13 boost::detail::thread_data&lt;boost::function0&lt;void&gt; &gt;::r=
un (this=3D&lt;optimized out&gt;) at /usr/include/boost/thread/detail/threa=
d.hpp:116</div>
<div>#14 0x00007fe7f5787bcd in ?? () from /usr/lib/x86_64-linux-gnu/libboos=
t_thread.so.1.65.1</div>
<div>#15 0x00007fe7f99ae6db in start_thread (arg=3D0x7fe7c37fe700) at pthre=
ad_create.c:463</div>
<div>#16 0x00007fe7f8ead61f in clone () at ../sysdeps/unix/sysv/linux/x86_6=
4/clone.S:95</div>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB387160D39097A5A043F6B443AF889MN2PR12MB3871namp_--

--===============7401871221630933559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7401871221630933559==--
