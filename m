Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E2F545925
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jun 2022 02:23:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEBC0384A26
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 20:23:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654820620; bh=xGTbnwxZy1znVqcd/x/296DzcGeLjTh2n/iQN2muRw8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DBkUPealjShcurWFetijHNeLHi0GtEptd7w+Tj1bw0oST5ow9MTuRWJQX3P0OxM7N
	 /sW4aYyCJxLTfHgUpcBqhOE5fpD3v9LNKlwZAWgcl7pgcyfwDGj7pwXo+N07qn9jU5
	 4V18BAs5/8HZmU29CdmdVR+xzx0R34v1GkmbYBv1chl+nJTNRd6eWruI5kxDmEq307
	 EiH4P3b2vu2IfL+36/ntMbketFUmaSaQq1ydP2QpgM76u02CocVCoLV6O/jDiogsub
	 G7T94PRdCne1oGZ0ofkPzD9jzzSbtThPZrEliVvjp5tMy13D7RlzhAmibUm2DeXnZa
	 tD2L6Sz6WDqiw==
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2041.outbound.protection.outlook.com [40.107.237.41])
	by mm2.emwd.com (Postfix) with ESMTPS id CCC61384700
	for <usrp-users@lists.ettus.com>; Thu,  9 Jun 2022 20:22:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="D0QhuZXM";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/qpA+PCd6lz0CwXTBH/Mq4wyKi0u7Ak5NITA5jGDUVao/sl+2iSUGD7DUtHEXDqoNCKwdELqIIkdqvRsHKbCyfJEAWUlkwOkQO1B6cuwK4J+y5nFEQNz0Mn5TBqja+s8OV4uKmJKQlL5D48keg5jLgIrEp62A6GUCTrj9YU5yy7mTjm6m+U5ETO0LOZrBN2tCQCaHSzekAgjGd2x/x+ghKX2hpivPSQqJJ/7IN5tctCcuSOOwaPgDNR9qt6hGNx4z3E1pM9eUdvBbmSKvgVq/YG3pmdZhRQKFLi1nerl+DCampnWapvagbBQN74XuGt7KA2fcY8DHFbZ8H8hTnkxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WGBmjZ2vo+eQIlcjAzTEnmhFYhN1xv7nBEocZWI6GcQ=;
 b=aIPyQnUNgsqWm97OC0KGm6tSwTFfFbJugy3L932wDMVN7K3iMWmEXRv1vsqjUsUvPzThr7sHUidlYLU8kk0hLZOc16IhoAC1pe6zNZGtkTVIP89pmbw9yIR3fAdxUgYhMev2PBLgEDmpn7V0pxXO6KvwBkCxuvRZ3cnzrTEXqL6d3fwxuRzmhQ3VdvDjpeoH5Pd5iRCpQEzvof4Wtn6NOSgU2zIoPF9rZ5Qtk12SzVorXOwzg2rEMtxjAi3TwmBSNhXltXeE4JWj+QId4wG0YADgkkT9IWyb3C/YYSu6jmlPBE3Yw9fo4+Uihu/mgXCdgLySJ0/NV8Q5BbuXw5pYTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGBmjZ2vo+eQIlcjAzTEnmhFYhN1xv7nBEocZWI6GcQ=;
 b=D0QhuZXMM6UoPton9yyFagHFNq1jX7ewd2Uyqk+Cz5Ij2rJWrIEcp3nreaKtiV7UKgL04fbZ+3N9lElGLellvp6dzESJkMdShPKJvbKoQE8i45+42TpAFdLMyFyndfqRbU3WL4x3CzfhAXg9QDMMRhyNCkK3Bv2EdKvBW1VipVdjWbcm36yik8pN1s/5kr2JyXklFbdKCBtgOYysG7qjsi/DZiufD5WuegstSdhXlVuWwPBwTfgNVi8PRtweLIxhS2wGms70yuL5XbIguptlRUPYAEqVxzyBdy039QMtXxdqwcQuc67HvB/Q2KcPvbZhNaiTOp1N9MiUtnqtsGL88g==
Received: from MN2PR03MB4685.namprd03.prod.outlook.com (2603:10b6:208:af::15)
 by CO1PR03MB5729.namprd03.prod.outlook.com (2603:10b6:303:96::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Fri, 10 Jun
 2022 00:22:29 +0000
Received: from MN2PR03MB4685.namprd03.prod.outlook.com
 ([fe80::5598:3323:1b28:96c]) by MN2PR03MB4685.namprd03.prod.outlook.com
 ([fe80::5598:3323:1b28:96c%5]) with mapi id 15.20.5314.019; Fri, 10 Jun 2022
 00:22:22 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N321 GPIO
Thread-Index: AQHYfEjDI/svE97tTUmEW4HMUU7KXq1Hws4m
Date: Fri, 10 Jun 2022 00:22:22 +0000
Message-ID: 
 <MN2PR03MB4685CC11694062B7A6499B0CD3A69@MN2PR03MB4685.namprd03.prod.outlook.com>
References: 
 <BYAPR03MB4678FD7625EC090FBDA33CB4D3A79@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: 
 <BYAPR03MB4678FD7625EC090FBDA33CB4D3A79@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf7e06cf-24c0-4714-8b2b-08da4a7749e2
x-ms-traffictypediagnostic: CO1PR03MB5729:EE_
x-microsoft-antispam-prvs: 
 <CO1PR03MB57299C93C67CB6B9FCD41365D3A69@CO1PR03MB5729.namprd03.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hfSAtecTAwqciPsZhdjYYqx8sw83k6NwN41ps550IyLXpa/6JYGB4urkN0OoK9/mEVxvpmPjAJt810S7SgZlbZA9rLK/faJWSL2EBRo2JERicYKpxsePB1QNJCagh4GZLaaoR+zUDCT/RKIHC8TnEYJp7iRAYNPsyXACkZiOMHglyKr45LZEZR4nZB6AZzazZPYA/j8SgScdIpxLzGhFHzEd8bYkG4Oz0izEQYMcRCg1M/ExFa+KWf2D6hiqjZf6FimW09jfcOEvxfv8xQ63Rqay0TohZAdoFuBxARAT7Ml0inoItxSeySg3BlIfpUFgA2Q1AuDEd7B8TxqDRZZDoEcGWsIYyJSqpMF6jnHI/991V7GoRvr5lSSJs0SeRRhq5ukTwFvL3/P3F4vnQlO/fWLT/m+kohYnyTJirB3YKeRRX3LM50OxZMOYTxKnyuc3CXvptUqmLYaTzrYgwRdDYp23/lZ1DwCtZCeG0rLh8QLTSpUYLMo5Emb24Zg6dvKk7oYuToMIykZo3Xu97S67ZCuuilVjlsTLNTEaIf6jFDwa0miGCWijbkpXakMibMgpZ60MnhaVp/7wVfHRLOu9OVmUxDauIvMiru/aEkwE1gdL/UyM90cZhqb1w/JtpSd7qq+nyH07PDXYnRCja08ynIkEk/Blu6www3dyh4qGLKo4ZaQRURFzTPS40cfrQ9F87+cDYhPmGf4eyPK6wTwXfw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR03MB4685.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(71200400001)(9686003)(91956017)(122000001)(8936002)(33656002)(508600001)(86362001)(66446008)(786003)(7116003)(8676002)(52536014)(66476007)(76116006)(38070700005)(64756008)(5660300002)(316002)(55016003)(83380400001)(6916009)(66946007)(186003)(53546011)(19627405001)(7696005)(6506007)(38100700002)(75432002)(26005)(2906002)(66556008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?YJU1goIyQQ+NYeMpZQDcvgoF+kRiu7SHBL1UGWt7C84F2o0F7ISs/iee5vny?=
 =?us-ascii?Q?ivCtK3pJO4vq/ANlcISuV6ctkGOcmP2Qqqd79Ybs5NDgXiuzAqLeFoqsXj5W?=
 =?us-ascii?Q?d2jKPXv4T9eQ3KsPZNIWZyKfwQuvhcMWk1k+Vztl7GB8o0Br0FVGeAzrwcfh?=
 =?us-ascii?Q?kU9FKCDqnTQ70rIhtVea5KkOCzn4hcyon/ODEUfchwyXnhx729pgy8WoiCLl?=
 =?us-ascii?Q?OKXKKCoy3nVxadrD15dXfiGD3zFI2vDIiqGBWY2h1nUaw8RJ/c2OHPy1kPin?=
 =?us-ascii?Q?qDu9PbHqsEd8WfP0kJB0UaAqRo+EqEe051BDz316RB0hlcmZLZrvStgS086H?=
 =?us-ascii?Q?pldGHY4vRcwo/Zzhw0CXj/ub3C9cQFQeOfg2+eMlJT6w31iXjr/0FgL7usqC?=
 =?us-ascii?Q?vEGolM512IFFK4p46gUAYfDUeplX7DG4uJB9rCKPeialt3kuFYypImcrLLjp?=
 =?us-ascii?Q?rJacfOLAnQaMwwEatnJdiXS6obA+nGO8qqSGoAkhq8PtATVVlFwrTAqHJwc1?=
 =?us-ascii?Q?hbOgMrOBU1q/FulBMSTbRRWHYBZZE6l47T/kiaHGROvEbbusikfajr2JvqmC?=
 =?us-ascii?Q?MnMh3gLYEjN9GwKyvu9WjY+Ri+WYKQJ+Wn758y9Q/b+443HWS1FKXfXtLv++?=
 =?us-ascii?Q?jUCTtvpMvrC/uwsInFn5crGBVKj4Vsw81yuJK6yDzu5fG8IAFfucFRaWaQCW?=
 =?us-ascii?Q?FUU4mWtRn99CVLNDMrl4M+D/w2zSnWObiDNpkxxQ54u2PSfi7GGmJ2tyor2x?=
 =?us-ascii?Q?RI5PSc8ebQutW5HDyz0bLWwm7q/iCh2mt0pCMUhC7+sZGSpeO3//3Zkk35Z9?=
 =?us-ascii?Q?2v5kivce8nRBJtkhIAywiNzXTJvHPWFJ0RNRMykbXabLnE5IsFYtrYD/xbqa?=
 =?us-ascii?Q?+qpFfvk8eixRKIPlL29gWCF3a2RT0pN/FxmbYIJI9IhQ+U3ZFhiljSw+BXBt?=
 =?us-ascii?Q?yP262CYQ9yOmsvsCmHr9FlGNMErE/kXjo0YdbjylajZHmXJ64LmhbSAa1HDN?=
 =?us-ascii?Q?ApWEFjmmSV4OrgmL5RObabMZb9/9wEsqMTC7CP1/R6DmdWnRVni2Mgzv4Uoj?=
 =?us-ascii?Q?H2wGjUFBuEHkP9rc46PZNck4xqwDS2inhWXoTArlg0zabKR6nUiLbjadp173?=
 =?us-ascii?Q?8KZE15NeA26LSFAP16s8OXryPcPdwgnbAJs20jFZRv3yKd0wUFVbK0GSPURw?=
 =?us-ascii?Q?lWoQBb8kCgllXZyh0N8iqoTRTpdoVh/LUGQJin2VyGvErEU2kRmtBRbYReO9?=
 =?us-ascii?Q?p/bQkgh/2pOAVcHu1nQoR5CnLhdnEEyZYw57Y1AK13oL4SFTkzTtkE2wXqCb?=
 =?us-ascii?Q?xuybMYEd85RoR31POCq+z3LWtBNfKgjXzJjDwpkFsQsz/yTc10tuZ15NJL02?=
 =?us-ascii?Q?Wo54nE0Qu6DpLUViemyC1AtCfcn8VyLfW4am/UutLrFeJRhDhCQVhjxdW3mG?=
 =?us-ascii?Q?ozLgAZaRrm3DoelkYHUusBcQODf2obMYBqzt8axhiBMU/gp9cFIazbMmXK52?=
 =?us-ascii?Q?D3vZazkvBHGa+4hOj8WRQ59nMU2HtpJuNeRWIy1uTsnkccvOkvsDhBjvV/Zk?=
 =?us-ascii?Q?/hQ7YeuUJ5l1Hnr4y6am4BOZ2/BjarGpOOhNmbarjbLJiBMqR15XcYRJGWQ+?=
 =?us-ascii?Q?rHje56JHfkWumEeKqVUlP3skwoa/Gq0SDo47Tuz2UeoeZ0wY8utPyK9zrf5/?=
 =?us-ascii?Q?x2Vo+CaVGW8q85Sd12jcslBYqC2sQLbLVjvemRkjJNe3vixR8eh7byynuZbe?=
 =?us-ascii?Q?gkz2Z9/wEQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR03MB4685.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf7e06cf-24c0-4714-8b2b-08da4a7749e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2022 00:22:22.7024
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G10mvHTee4OmVsrC4RvUSwYp64qr2k/dvBdlUFxNxEBVLraX6Jh85+jXamSPka2KzGRG7Q0WRJkNPugCIwLbRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR03MB5729
Message-ID-Hash: FP6JTJ3PT3ZWRTZ5ORQ6J5X7NIFEGAZL
X-Message-ID-Hash: FP6JTJ3PT3ZWRTZ5ORQ6J5X7NIFEGAZL
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 GPIO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4GG6SYTTG7Z7QHABIQNK6I2AQQF5AJEI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6830795969125311423=="

--===============6830795969125311423==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR03MB4685CC11694062B7A6499B0CD3A69MN2PR03MB4685namp_"

--_000_MN2PR03MB4685CC11694062B7A6499B0CD3A69MN2PR03MB4685namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Update,
I found an error in my wiring and now shorting a data pin and GPIO GND make=
s the bit flip from 1 to 0.
Still sounds like a weird behavior for a floating pin to be stuck at 1 but =
that's not an issue for me.

Moving from the example to a C++ RFNOC code I'm developing I encountered a =
different problem.
The same code does not see the changes to the pin anymore (I checked back a=
nd forth with the example. The example works, the rfnoc code does not).

Specifically I'm setting the GPIO registers with this function:

void set_GPIO_all_readback_rfnoc(uhd::rfnoc::mb_controller::sptr mb_control=
ler, uhd::rfnoc::radio_control::sptr radio_block)
{
    std::vector<std::string> source =3D mb_controller->get_gpio_src("FP0");=
 //*
    std::cout<<"GPIO source: "<< source[0] <<std::endl;
    std::cout << "Available GPIO banks: " << std::endl;
            auto banks =3D radio_block->get_gpio_banks();
            for (auto& bank : banks) {
                std::cout << "* " << bank << std::endl;
            }
    std::string gpio =3D "FP0";
    std::string port =3D "";
    size_t num_bits =3D 11;
    std::cout<<"Using GPIO bank: "<<gpio<<std::endl;
    uint32_t value =3D 0x0;
    radio_block->set_gpio_attr(gpio, "CTRL", value);
    radio_block->set_gpio_attr(gpio, "DDR", value);
    radio_block->set_gpio_attr(gpio, "OUT", value);
    radio_block->set_gpio_attr(gpio, "ATR_0X", value);
    radio_block->set_gpio_attr(gpio, "ATR_RX", value);
    radio_block->set_gpio_attr(gpio, "ATR_TX", value);
    radio_block->set_gpio_attr(gpio, "ATR_XX", value);
    output_reg_values(gpio, port, radio_block, num_bits);
}

Where mb_controller is derived by graph->get_mb_controller(0); and radio_bl=
ock is the radio control of the radio I'm using.

The output of output_reg_values are identical in the two cases:

Configured GPIO values:
       Bit: 10  9  8  7  6  5  4  3  2  1  0
      CTRL:  0  0  0  0  0  0  0  0  0  0  0
       DDR:  0  0  0  0  0  0  0  0  0  0  0
    ATR_0X:  0  0  0  0  0  0  0  0  0  0  0
    ATR_RX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_TX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_XX:  0  0  0  0  0  0  0  0  0  0  0
       OUT:  0  0  0  0  0  0  0  0  0  0  0
  READBACK:  1  1  1  1  1  1  1  1  1  1  1
       SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 (*I have to que=
ry the motherboard controller in rfnoc to get this line)

The results (shorting the GPIO pin and the GPIO GND) are different. Running=
:

rb =3D radio_block->get_gpio_attr("FP0", "READBACK");
std::cout << "\rREADBACK: " << to_bit_string(rb, 11);

gives me: READBACK:   1  1  1  1  1  1  1  1  1  1

while in the GPIO example from UHD, running:

rb =3D usrp->get_gpio_attr(gpio, "READBACK");
std::cout << "\rREADBACK: " << to_bit_string(rb, num_bits);

gives me: READBACK:   1  1  1  1  0  1  1  1  1  1  1

Am I using the rfnoc GPIO api in a wrong way? Why are these two outputs dif=
ferent?

Thanks,
Lorenzo


________________________________
From: Minutolo, Lorenzo <minutolo@caltech.edu>
Sent: Thursday, June 9, 2022 2:48 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] N321 GPIO

Hi All,
I'm trying to use the internal GPIO connector of an N321 to read an externa=
l digital signal.

Cabling: after looking at the N321 schematic, I found that the GPIO connect=
or on the board mates with a Molex duo-clasp connector, 20 contacts, 2 rows=
. After buying the casing and the pins I patched up a cable exposing all 20=
 pins. Is anyone aware of a better option to connect to the GPIO interface?

UHD api: running the GPIO example from uhd 4.2 (with no nothing connected t=
o the GPIO) I get the attached output. The way I interpret this is that all=
 the registers are reading 1. This seems weird as I would expect the values=
 of unconnected pins to be 0.

Running the test again with all data pin grounded to the GPIO Vss or connec=
ted to the 3.3V produces the same output.

Is the GPIO interface working at all on the N321?

Thanks,
Lorenzo

$ ~/uhd/host/build/examples$ sudo ./gpio --args=3D"master_clock_rate=3D200e=
6" --bitbang --ddr 0x0 --out 0x0 --repeat

Creating the usrp device with: master_clock_rate=3D200e6...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106600; UHD_4.2.0.0-4-g04d=
14cd7
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D<my serial>,name=3Dni-n3xx-=
31CCFB3,fpga=3DXG,claimed=3DFalse,addr=3D192.168.20.2,master_clock_rate=3D2=
00e6
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,master=
_clock_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=
=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,master_clock_rate=
=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn320,clo=
ck_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,master_clock_rate=
=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn320,clo=
ck_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n320
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Rhodium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Rhodium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Rhodium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Rhodium

Using GPIO bank: FP0
  rx_subdev_spec: A:0 B:0
  tx_subdev_spec: A:0 B:0
Initial GPIO values:
       Bit: 10  9  8  7  6  5  4  3  2  1  0
      CTRL:  0  0  0  0  0  0  0  0  0  0  0
       DDR:  1  1  1  1  1  1  1  1  1  1  1
    ATR_0X:  0  0  0  0  0  0  0  0  0  0  0
    ATR_RX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_TX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_XX:  0  0  0  0  0  0  0  0  0  0  0
       OUT:  0  0  0  0  0  0  0  0  0  0  0
  READBACK:  0  0  0  0  0  0  0  0  0  0  0
       SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0

Configured GPIO values:
       Bit: 10  9  8  7  6  5  4  3  2  1  0
      CTRL:  0  0  0  0  0  0  0  0  0  0  0
       DDR:  0  0  0  0  0  0  0  0  0  0  0
    ATR_0X:  0  0  0  0  0  0  0  0  0  0  0
    ATR_RX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_TX:  0  0  0  0  0  0  0  0  0  0  0
    ATR_XX:  0  0  0  0  0  0  0  0  0  0  0
       OUT:  0  0  0  0  0  0  0  0  0  0  0
  READBACK:  1  1  1  1  1  1  1  1  1  1  1
       SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0

Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 1 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 2 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 3 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 4 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 5 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 6 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1

Loop 7 completed
Press Ctrl + C to quit...
READBACK:   1  1  1  1  1  1  1  1  1  1  1 1

Done!



--_000_MN2PR03MB4685CC11694062B7A6499B0CD3A69MN2PR03MB4685namp_
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
Update,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I found an error in my wiring and now shorting a data pin and GPIO GND make=
s the bit flip from 1 to 0.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Still sounds like a weird behavior for a floating pin to be stuck at 1 but =
that's not an issue for me.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Moving from the example to a C++ RFNOC code I'm developing I encountered a =
different problem.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The same code does not see the changes to the pin anymore (I checked back a=
nd forth with the example. The example works, the rfnoc code does not).</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Specifically I'm setting the GPIO registers with this function:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
void set_GPIO_all_readback_rfnoc(uhd::rfnoc::mb_controller::sptr mb_control=
ler, uhd::rfnoc::radio_control::sptr radio_block)
<div>{</div>
<div>&nbsp; &nbsp; std::vector&lt;std::string&gt; source =3D mb_controller-=
&gt;get_gpio_src(&quot;FP0&quot;); //*</div>
<div>&nbsp; &nbsp; std::cout&lt;&lt;&quot;GPIO source: &quot;&lt;&lt; sourc=
e[0] &lt;&lt;std::endl;</div>
<div>&nbsp; &nbsp; std::cout &lt;&lt; &quot;Available GPIO banks: &quot; &l=
t;&lt; std::endl;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; auto banks =3D radio_block-&=
gt;get_gpio_banks();</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for (auto&amp; bank : banks)=
 {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; std::cout &lt;=
&lt; &quot;* &quot; &lt;&lt; bank &lt;&lt; std::endl;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; std::string gpio =3D &quot;FP0&quot;;</div>
<div>&nbsp; &nbsp; std::string port =3D &quot;&quot;;</div>
<div>&nbsp; &nbsp; size_t num_bits =3D 11;</div>
<div>&nbsp; &nbsp; std::cout&lt;&lt;&quot;Using GPIO bank: &quot;&lt;&lt;gp=
io&lt;&lt;std::endl;</div>
<div>&nbsp; &nbsp; uint32_t value =3D 0x0;</div>
<div>&nbsp; &nbsp; radio_block-&gt;set_gpio_attr(gpio, &quot;CTRL&quot;, va=
lue);</div>
<div>&nbsp; &nbsp; radio_block-&gt;set_gpio_attr(gpio, &quot;DDR&quot;, val=
ue);</div>
<div>&nbsp; &nbsp; radio_block-&gt;set_gpio_attr(gpio, &quot;OUT&quot;, val=
ue);</div>
<div>&nbsp; &nbsp; radio_block-&gt;set_gpio_attr(gpio, &quot;ATR_0X&quot;, =
value);</div>
<div>&nbsp; &nbsp; radio_block-&gt;set_gpio_attr(gpio, &quot;ATR_RX&quot;, =
value);</div>
<div>&nbsp; &nbsp; radio_block-&gt;set_gpio_attr(gpio, &quot;ATR_TX&quot;, =
value);</div>
<div>&nbsp; &nbsp; radio_block-&gt;set_gpio_attr(gpio, &quot;ATR_XX&quot;, =
value);</div>
<div>&nbsp; &nbsp; output_reg_values(gpio, port, radio_block, num_bits);</d=
iv>
}<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Where mb_controller is derived by&nbsp;graph-&gt;get_mb_controller(0); and&=
nbsp;<span style=3D"background-color:rgb(255, 255, 255);display:inline !imp=
ortant">radio_block is the radio control of the radio I'm using.</span></di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">The output of&nbsp;<span style=3D"background-color:rgb(255, 255, 255);di=
splay:inline !important">output_reg_values are identical in the two cases:<=
/span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">Config=
ured GPIO values:</span>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 &nbsp; &nbsp;Bit: 10 &nbsp;9 &nbsp;8 &nbsp;7 &nbsp;6 &nbsp;5 &nbsp;4 &nbsp=
;3 &nbsp;2 &nbsp;1 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 &nbsp; CTRL: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp=
;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 &nbsp; &nbsp;DDR: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 ATR_0X: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &n=
bsp;0 &nbsp;0 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 ATR_RX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &n=
bsp;0 &nbsp;0 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 ATR_TX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &n=
bsp;0 &nbsp;0 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 ATR_XX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &n=
bsp;0 &nbsp;0 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp;=
 &nbsp; &nbsp;OUT: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; READBA=
CK: &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1=
 &nbsp;1 &nbsp;1</div>
<span style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp=
; &nbsp; &nbsp;SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 (*I hav=
e to query the motherboard controller in rfnoc to get this line)</span><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">The re=
sults (shorting the GPIO pin and the GPIO
 GND) are different. Running:</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">rb =3D=
 radio_block-&gt;get_gpio_attr(&quot;FP0&quot;, &quot;READBACK&quot;);<br>
std::cout &lt;&lt; &quot;\rREADBACK: &quot; &lt;&lt; to_bit_string(rb, 11);=
<br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">gives =
me:&nbsp;READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1=
 &nbsp;1
 &nbsp;1 &nbsp;1</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">while =
in the GPIO example from UHD, running:</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">rb =3D=
 usrp-&gt;get_gpio_attr(gpio, &quot;READBACK&quot;);<br>
std::cout &lt;&lt; &quot;\rREADBACK: &quot; &lt;&lt; to_bit_string(rb, num_=
bits);<br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">gives =
me: READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;0 &nbsp;1 &nbsp;1 &nbs=
p;1
 &nbsp;1 &nbsp;1 &nbsp;1</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">Am I u=
sing the rfnoc GPIO api in a wrong way?
 Why are these two outputs different?</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)">Thanks=
,</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo<span style=3D"background-color:rgb(255, 255, 255);display:inline !i=
mportant"><span style=3D"background-color:rgb(255, 255, 255);display:inline=
 !important"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"=
><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"><span style=3D"background-color:rgb(255, 255, 255);display:inline !impor=
tant"><span style=3D"margin:0px;background-color:rgb(255, 255, 255)"><br>
</span></span></span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Minutolo, Lorenzo &lt=
;minutolo@caltech.edu&gt;<br>
<b>Sent:</b> Thursday, June 9, 2022 2:48 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] N321 GPIO</font>
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
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi All,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I'm trying to use the internal GPIO connector of an N321 to read an externa=
l digital signal.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Cabling: after looking at the N321 schematic, I found that the GPIO connect=
or on the board mates with a Molex duo-clasp connector, 20 contacts, 2 rows=
. After buying the casing and the pins I patched up a cable exposing all 20=
 pins. Is anyone aware of a better
 option to connect to the GPIO interface?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
UHD api: running the GPIO example from uhd 4.2 (with no nothing connected t=
o the GPIO) I get the attached output. The way I interpret this is that all=
 the registers are reading 1. This seems weird as I would expect the values=
 of unconnected pins to be 0.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Running the test again with all data pin grounded to the GPIO Vss or connec=
ted to the 3.3V produces the same output.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Is the GPIO interface working at all on the N321?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thanks,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Lorenzo</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
$ ~/uhd/host/build/examples$ sudo ./gpio --args=3D&quot;master_clock_rate=
=3D200e6&quot; --bitbang --ddr 0x0 --out 0x0 --repeat
<div><br>
</div>
<div>Creating the usrp device with: master_clock_rate=3D200e6...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106600; UHD_4.2.0.0-4=
-g04d14cd7</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.20.2,type=3Dn3xx,product=3Dn320,serial=3D&lt;my serial&gt;,name=
=3Dni-n3xx-31CCFB3,fpga=3DXG,claimed=3DFalse,addr=3D192.168.20.2,master_clo=
ck_rate=3D200e6</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
aster_clock_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,master_clock=
_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn32=
0,clock_source=3Dinternal,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,master_clock=
_rate=3D200e6,mgmt_addr=3D192.168.20.2,name=3Dni-n3xx-31CCFB3,product=3Dn32=
0,clock_source=3Dinternal,time_source=3Dinternal'</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>Using Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: n320</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div><br>
</div>
<div>Using GPIO bank: FP0</div>
<div>&nbsp; rx_subdev_spec: A:0 B:0</div>
<div>&nbsp; tx_subdev_spec: A:0 B:0</div>
<div>Initial GPIO values:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Bit: 10 &nbsp;9 &nbsp;8 &nbsp;7 &nbsp;6 &nb=
sp;5 &nbsp;4 &nbsp;3 &nbsp;2 &nbsp;1 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; CTRL: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nb=
sp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;DDR: &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;=
1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div>&nbsp; &nbsp; ATR_0X: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_RX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_TX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_XX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;OUT: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; READBACK: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp=
;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF=
0 RF0 RF0</div>
<div><br>
</div>
<div>Configured GPIO values:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Bit: 10 &nbsp;9 &nbsp;8 &nbsp;7 &nbsp;6 &nb=
sp;5 &nbsp;4 &nbsp;3 &nbsp;2 &nbsp;1 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; CTRL: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nb=
sp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;DDR: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_0X: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_RX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_TX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; ATR_XX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;OUT: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0</div>
<div>&nbsp; READBACK: &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp=
;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;SRC: RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF0 RF=
0 RF0 RF0</div>
<div><br>
</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 1 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 2 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 3 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 4 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 5 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 6 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1</div>
<div><br>
</div>
<div>Loop 7 completed</div>
<div>Press Ctrl + C to quit...</div>
<div>READBACK: &nbsp; 1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nb=
sp;1 &nbsp;1 &nbsp;1 &nbsp;1 1</div>
<div><br>
</div>
<div>Done!</div>
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
</div>
</body>
</html>

--_000_MN2PR03MB4685CC11694062B7A6499B0CD3A69MN2PR03MB4685namp_--

--===============6830795969125311423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6830795969125311423==--
