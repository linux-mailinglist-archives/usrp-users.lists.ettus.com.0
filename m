Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4798E3B09B0
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 17:58:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B75C384909
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 11:58:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=wisc.edu header.i=@wisc.edu header.b="GW708VIB";
	dkim-atps=neutral
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
	by mm2.emwd.com (Postfix) with ESMTPS id 7DB7D383FA3
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 11:57:49 -0400 (EDT)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0QV40098F1OBGBB0@smtpauth2.wiscmail.wisc.edu> for
 usrp-users@lists.ettus.com; Tue, 22 Jun 2021 10:57:48 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.58.101]
X-Wisc-Env-From-B64: Ym91dnlAd2lzYy5lZHU=
X-Spam-PmxInfo: Server=avs-2, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.6.22.154816,
 AntiVirus-Engine: 5.83.0, AntiVirus-Data: 2021.6.22.5830000,
 SenderIP=[104.47.58.101]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XEAs9DoBKJBhlXo64DvdLWWn4y+R2gQAIA9wQN96ljap5XndgmGa/cpoJcoGR1f11EfouC4w9AwSANylqsdiIxDVHNui79ZlLru0RtMFF5z6XxOi+kOEJE4N0RfppHR8fTU86kfamsko/NlDez8ypky4RmJUD1j8Ao5v0zuT3yWfIVDLnk5CZ7lSs6eo6vVH1Cfa+iSyQXjn9WEYV9p4QmyW4wTPnTxrD1/8c/O/+JxpqfR0xU3YR+tFnMBZI/fJPdNgIRqXIlfsom/nYo9zVSzilqZMxAa6UsyNEZVG8ETBqWZx6hToVYK9Q8ltXOksfpRouqohmH+XLnhnFh+esw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8JmxVYMhOzxPs6YDbj/1zRzS654suFpxyc4lAjEcY+A=;
 b=emv215PbWG2MjoJfmHotQWWTFDSeGhZVLM0PTefZIx9ULD2EVEvPQto1wQ6263chu2Ir8DG5Vrv7vYN/qQA4N6pnWksaZDqhI447MMSmlZ2ODpo+5jwa+/lK/yRUTvOUSfbgSkbSrebn74agUNNf9ThgBEX7lWsuWwYWKCOIS22bKXgJnZ79k1MjnmW0HboyZw0T3/L5gmI7nejsts9z/qf4OndmlyXs4a8lO5wwm0iI+hhnWWs9ouD2AC+Bj2YH1AWqYjhEc7Bk0BMhtAlKzqvn9V+G3WX20EUQiaku5UkSooXockf8sPwHD9cwmMAFmuNwtLJTaQLqV8ZbE8pvyA==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wisc.edu; dmarc=pass action=none header.from=wisc.edu; dkim=pass
 header.d=wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wisc.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8JmxVYMhOzxPs6YDbj/1zRzS654suFpxyc4lAjEcY+A=;
 b=GW708VIBXzYPXXpziFfqBVpNa7tZtFFYthLp3I1/bunSyzWILTqUIVPnblfs1wBTFQWHMcUuEubD93n0+gOMEo56A8QsaFyC4nmwdOQeNXjHxm72YTwkujYM/dWeGYp9IBr17RBG2gJj1LGB3uOrBZ2aVHpd48B0cIWbSrOVxcs=
Received: from BYAPR06MB5352.namprd06.prod.outlook.com (2603:10b6:a03:ab::29)
 by SJ0PR06MB7098.namprd06.prod.outlook.com (2603:10b6:a03:2e2::18)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4264.18; Tue, 22 Jun 2021 15:57:46 +0000
Received: from BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c]) by BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c%6]) with mapi id 15.20.4242.023; Tue,
 22 Jun 2021 15:57:46 +0000
To: "patchvonbraun@gmail.com" <patchvonbraun@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-topic: [USRP-users] Re: Adding Timestamps to B210 RX Samples
Thread-index: Addm7BywcxR/E7cAQ1GhYkAXSz/3egAAPuCAAAIsU0AABLetgAAdMzzw
Date: Tue, 22 Jun 2021 15:57:46 +0000
Message-id: 
 <BYAPR06MB53520CA7860C39BFFF2A8B93D9099@BYAPR06MB5352.namprd06.prod.outlook.com>
References: 
 <BYAPR06MB53523BE92F6B1451D1BD12BDD90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
 <e1133a28-c110-2368-18e0-aa5ac38246b1@ettus.com>
 <BYAPR06MB5352256E7E9DB6E9A4035DF7D90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
 <60D1415B.4090206@gmail.com>
In-reply-to: <60D1415B.4090206@gmail.com>
Accept-Language: en-US
Content-language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-Originating-IP: [2607:f388:1082:fffa:b5e5:9221:d52b:cf11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47ae61cb-f9cf-459a-93d3-08d935967a6c
x-ms-traffictypediagnostic: SJ0PR06MB7098:
x-microsoft-antispam-prvs: 
 <SJ0PR06MB709832208BAD20108DDDA20AD9099@SJ0PR06MB7098.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Ba14CZekL030dGRaAlK+O3nyMReqN6AgGA00cnE8qGIszTs9XJ1MD+Lcx4YbAvym+4sHFbmAys5EVeNVkxjdn/EbhLIpE6ywpkoWb/v/gKFYvoHv3Vu4CciYUYagrIP3L66IkexvH9WOyUK/26kqpXV+iJWkD9ZVBESw9xa4a5P9rbj/WuRvoIcBZsrQRZbgZeU22ChjOX/iPBn57PLuFh4JRIb824Je9XpOyjw26f6cVkr+D8+vb8aEfvspDVCiJmcZ0gihBy8mFNXmhQhngxgGDI+jGj+I1D8BtbG5+exSvVwV5P+ISrebqWAr7SOgRvQV1Kq3b8FfHx3a0jwuuYQYhY7Iiy34xsO8Rm0MFjlfDTXuB74cVvx+QW0qk88k4DWiAKLv/Y2K9mKloSDgAqCvFo8+ksKtYfCk/kzKnNg3e3PIXx2h4XxiI223LSuBlza46H+Pt1i+kilLd7aF93YhT1k0zYW8lqkGSvDPgYtTv7w28ZRUrvwMhfoBNwzjGewFC/7kXnpSebHzgvxv7Jw56a1VYMKaYU2Dz5i2uwGQjQZ+sojqSdDuZnKPoLPM/KoVGW7Eq0tieH7gm5+ESbE+X9iSs22jEav+wRPWU8fw15Qn6qNBznoQUppjdmqcBjSPDFbTsv3IWEjN3J2BkWhNTyhT1fcTzfGY+3KKSDEdc+LRvCxH74JkN8s5FQ4iuqAZhezxR0wgt59Rq4r6Qg==
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR06MB5352.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(366004)(346002)(39860400002)(376002)(53546011)(83380400001)(6506007)(7696005)(33656002)(66574015)(186003)(55016002)(9686003)(478600001)(122000001)(38100700002)(966005)(8676002)(2906002)(8936002)(110136005)(786003)(316002)(64756008)(66446008)(66556008)(66946007)(66476007)(52536014)(86362001)(5660300002)(71200400001)(75432002)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?YuAsWT0HevZrKsyrPxrAgxn3zdW+PZufov/FXsa7YiORxhO6zNhLW2XkVq?=
 =?iso-8859-1?Q?Me9HO9GTTQwmB237yuAlZGZewUvbQtwfgXGbPea887BgKtpZUGTgq5Q8IP?=
 =?iso-8859-1?Q?yj0XIh6kbUYdkKSjrtZYv0f19wdLO0f1DnAyFHUVuGdPi06HVNNLv+oyz/?=
 =?iso-8859-1?Q?Q5zw8px0lVABa6GUdWcUJ69NYZWEkqoNT9Tf0F7TkflXebTtLgJptBUK7F?=
 =?iso-8859-1?Q?WKzDp96TixjuWOox8Yzc0AaIDPViMJpWdq0XdOklIUEvUjXkvfPMSyOBAt?=
 =?iso-8859-1?Q?Rtb8v2QFelrHEYtiKNwD6yWgzm4zrSuuwf5cHCj0rrp8oKSqNDmiekrqbw?=
 =?iso-8859-1?Q?91VOldH7fJNPOBpnA7rj4I4O5XO8CYv7AdN2fDq+uojwMrx1oiTvFFOPr+?=
 =?iso-8859-1?Q?tNhR8NO8DZBkPNKIUPSRQCsLDXdO68iywA0OnrhmBhSD6WnjhU31obHsj3?=
 =?iso-8859-1?Q?jh9y3dwSn/9pIe9KzocJ3QH0btEcU8kY6Ii1eOhQkVFFZ1nwr5UHGHvrYR?=
 =?iso-8859-1?Q?Yvo7AxBfOYQcH6C8NUbslbJYDG0malD3e0fqnfI4PpyjWlFhqfZfcg2/fV?=
 =?iso-8859-1?Q?N7DsbC8LjOGOOVP/+5339U3DBysT87hHAc0ZISUsSydQNcqY7KHe3GsFBO?=
 =?iso-8859-1?Q?rZKytXAmxt7wDPAcq+0ZdKBONycAq2ExEnVO/T3Zae2VfhbvXqejSZHyDo?=
 =?iso-8859-1?Q?G12XFzUG1t2WsLOqAZotX7i5I+VTso3EsRsV0NsEaUZhldY8BdAnp/p3oz?=
 =?iso-8859-1?Q?5BCRsk1XTj+Qri+mYVlrpUIYNLu4VmrAJdZZtKiQhU79JvWY6zzgKmVrur?=
 =?iso-8859-1?Q?FYpVe+2nliw9cOxkFbXj1bTM4yXf4zhmII5MbYGJDPqmKMTh4NMS6nIYuh?=
 =?iso-8859-1?Q?f1fxJKp9cFkJkhH0mFMpS1VfQsnJoQBU07oRd616zansLrukrd1V65h4Q0?=
 =?iso-8859-1?Q?yOw0Iq4/LI36jwkvFKLLv0A7mcNMt15TeR4sQJuKAjzGODqX2s6JDr/xr8?=
 =?iso-8859-1?Q?VbkJmCAjEbP2tdy/E1qNNXareUdT0yaZ+6BB4VkSnKRx78dWPJT7R/WGm8?=
 =?iso-8859-1?Q?SVErRir9Vb/5ZC9fWO5ZXpJaCCVASUXiyoySd5vK5hvc2cWNCg8Glx0j1R?=
 =?iso-8859-1?Q?kp8yLmDu3L5jKtMdg916bxULp6mBxgmCNARdj06dTdZ8mL68v9jz2Mc/44?=
 =?iso-8859-1?Q?USuM/VknG1M5eNSB9Hc8sVmJc7YyorIlK8TaYFqnJTvK5u7VDTFv76r7KH?=
 =?iso-8859-1?Q?g+9FDyibtzG8shIFUU0OtTdFmPI19+a0DIA+ZdwcN0EnXm/b00WdnCQbYe?=
 =?iso-8859-1?Q?x0T6r+vKTB8CyHmSkBldyZNiJ9g+huwO+JXX8ieLKOTn1TJjJDipbElHHC?=
 =?iso-8859-1?Q?Dn0JzWNMQXf9BIeHMG8J7xXoz12yUtQUD5VGxibb5vKJni6e3ZBVP+m4qN?=
 =?iso-8859-1?Q?CISgdYEbiztkudKd?=
x-ms-exchange-transport-forked: True
Content-type: text/plain; charset="iso-8859-1"
MIME-version: 1.0
X-OriginatorOrg: wisc.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR06MB5352.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 47ae61cb-f9cf-459a-93d3-08d935967a6c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2021 15:57:46.3959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 OMKI3erZX8f36zpry9okq0iLsqH7w7h1VhdPrS2ph0Ry7Q+DHkXrgEip16zLLxSZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7098
Message-ID-Hash: PGCUP2MHZUA3VYX2LJTVK4LLK24JH2XI
X-Message-ID-Hash: PGCUP2MHZUA3VYX2LJTVK4LLK24JH2XI
X-MailFrom: bouvy@wisc.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RKQGUSIQTNMQMO2FPHWTP2ICIIZRQLT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Alex Bouvy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Bouvy <bouvy@wisc.edu>
Content-Transfer-Encoding: quoted-printable

Hi, thanks for the reply and elaboration. I also found myself thinking abou=
t these same issues, but the paper I referenced seemed (to my understanding=
) to imply that the device was adding timestamps to each sample. It's clear=
 to me now how this was achieved.

Regards,
Alex

-----Original Message-----
From: patchvonbraun@gmail.com <patchvonbraun@gmail.com>=20
Sent: Monday, June 21, 2021 8:48 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples

On 06/21/2021 07:33 PM, Alex Bouvy via USRP-users wrote:
> Hi Marcus,
>
> Got it, makes sense! Thanks for the info.
>
> Regards,
> Alex
We should perhaps for a moment consider what it would mean for the hardware=
 to adorn every single sample with a time-stamp.
   Over-the-wire samples occupy 4 bytes (16-bit I 16-bit Q). Timestamps are=
 (AFAIR) 64 bits or 8 bytes.  If every single sample
   were adorned with a time-stamp *on the wire*, that would *triple* the oc=
cupied bandwidth of samples flowing over the wire--meaning
   less bandwidth would be available for actual samples.

Similarly, if UHD adorned every sample as it arrived, there'd be considerab=
le ballooning of memory occupancy, and memory-bandwidth
   consumption.  Putting in all this overhead to avoid a simple calculation=
 on the part of the application writer would be bad
   engineering, IMHO.


> -----Original Message-----
> From: Marcus M=FCller <marcus.mueller@ettus.com>
> Sent: Monday, June 21, 2021 5:31 PM
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples
>
> Hi Alex,
>
> that's the right (and only) approach: Metadata contains the time stamp fo=
r the first sample in a packet; the rest is counting!
>
> Best regards,
>
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r validated as a product, for use in a deployed application or system, or f=
or use in hazardous environments. You assume all risks for use of the Code.=
 Use of the Code is subject to terms of the licenses to the UHD or RFNoC co=
de with which the Code is used. Standard licenses to UHD and RFNoC can be f=
ound at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition th=
at the goods or services (i) are not for the use in the production or devel=
opment of any item produced, purchased, or ordered by any entity with a foo=
tnote 1 designation in the license requirement column of Supplement No. 4 t=
o Part 744, U.S. Export Administration Regulations and (ii) such a company =
is not a party to the transaction.  If our understanding is incorrect, plea=
se notify us immediately because a specific authorization may be required f=
rom the U.S. Commerce Department before the transaction may proceed further.
>
> On 22.06.21 00:24, Alex Bouvy via USRP-users wrote:
>> Hello,
>>
>>  =20
>>
>> In the paper below, the authors say that they have set up their USRP=20
>> device to include timestamps for each recorded sample, but do not provid=
e detail on how this was achieved:
>>
>>  =20
>>
>> https://ieeexplore.ieee.org/document/6533293
>> <https://ieeexplore.ieee.org/document/6533293>
>>
>>  =20
>>
>> I have been looking into what is required to achieve something=20
>> similar. Particularly, I have been working with the source code of=20
>> the rx_timed_samples.cpp example provided in the UHD files, along with t=
his page in the Ettus manual:
>>
>>  =20
>>
>> https://files.ettus.com/manual/page_sync.html
>> <https://files.ettus.com/manual/page_sync.html>
>>
>>  =20
>>
>> Looking through the rx_timed_samples code, it appears that the=20
>> metadata associated with the recv(..) function contains a time_spec=20
>> field which is the timestamp for the first sample in the IO stream,=20
>> but it's not immediately clear to me how that might be used to=20
>> timestamp all of the samples, which makes me think this may be the wrong=
 approach. Is there a simpler method to do this that is known?
>>
>>  =20
>>
>> Tangentially, I've also looked into adding the timestamps through=20
>> GNURadio, but there does not appear to be a way to do this as far as I c=
an tell.
>>
>>  =20
>>
>> Any help is much appreciated.
>>
>>  =20
>>
>> Thank you,
>>
>> Alex
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe=20
>> send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe=20
> send an email to usrp-users-leave@lists.ettus.com=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe=20
> send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send a=
n email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
