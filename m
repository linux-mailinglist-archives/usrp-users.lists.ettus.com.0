Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D22109FED54
	for <lists+usrp-users@lfdr.de>; Tue, 31 Dec 2024 07:47:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78202385BE4
	for <lists+usrp-users@lfdr.de>; Tue, 31 Dec 2024 01:47:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735627658; bh=C4w79j3Hv3qBu+QwnqPH4g9cCa+76CsHnXZ1RqIaMwo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OcJYHPNRrKFvk+a075sYuuUahaAIYI8LjYRm72KHK5nmSca7cdqO6WvueOnyK4HqX
	 YqfPlHITIaZcrWuIWJPFU9b0SqbPW9WN0ux27/kv07PNs1RLkw2i+JtcNpF1OglRUK
	 bFKVvclviuPR1tiMVnQHQ+OO8cZnTLy+57c9/L7hAo9rn8havCA2Ek469u7faqsQsJ
	 b0lDWBbLgLfXXPoFz0t4hbun4JK0rEog/WGpLNJtL1erow+asMGlpLMcoQX7G1TmIC
	 4SqzCkk9EJp+Ehep2G+2Zdn01F5KBu2OWnfGPNITh4JSgglw5kYrQk/jLKiaKysxzs
	 /j3rJt8azSw9w==
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05olkn2107.outbound.protection.outlook.com [40.92.90.107])
	by mm2.emwd.com (Postfix) with ESMTPS id CC82B385B9E
	for <usrp-users@lists.ettus.com>; Tue, 31 Dec 2024 01:46:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="SklAxUZS";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OyW2PbrYNJURTLGS7Qa8UDgcuYAXEtPFOht8/SwcPEYYHx0YoZWtpNVkYTwWbKlfyLmS5EnVVHr7t06UvArUyoqqlggDQ/ag4xHQrstOs94Onc9iV4KOZ6ElK8uGUz+9T+unsfn9q2ZQbhI6Tbm4LRaDAJ1UsIU97xr2E1zvKU5pLet2WmEHZPydVWuJXWbgNnR0HJbDZZcdel2JUAb3GWhLcUtXCqS8lTtMAgmlGpmvjEkuotQmoH01CuuGbONWySL0YNpf6uAQZ+jh71pmzFBVPWUq/pUv67IFaSLVrWbA6nOmEpXg8vp5heXpS5eEVIc8GMFmX0CHAk6wlzC3yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RHESGSclhK3shlwvRicckJzQ2Ii+dm16xndpvRcGCXs=;
 b=q/yJ5m33qszffRV0Lqqt2kDgsXgaIySsNxCwC+IJ39a5p8iqpza0aer3VTZ8S98pgqRRAXyiqV3Kvy5XlbLgXHf0DYjrF89jXzrslsjziDmB6b4XUXMGsC4b2U7mhD24d1WGzZG9n8nF7CuxYCE9OuVKjXwLgCK9AkQxVALK7j4fq3NK5+o2tOtFDH1cqBzxIx5gIfTwKnL1vzt5ktDPqCIfvjhVMShct3460NCe1b0kDZqGXAI7AGLOgwiuYEt2kYx48UQBJD1yD096RA3GmI0Oxb0Kk4L6WZ5ZPRhDbkwylKw6yzgB0MEWA7209zTqf7y5fh6JBAwUDGl+RFdwrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RHESGSclhK3shlwvRicckJzQ2Ii+dm16xndpvRcGCXs=;
 b=SklAxUZSsE4lk/zysMSiaHMjXln4XAqvOX1doECqmPZ4PO9n2fb0y587IMHRBJAzm1LuV6nF1psxDicaMr0j9PfUiI7FNaDV1XUYklqhOAS29TtTKJxqjyidXHmTaPc4VxWCNTPsctrIkBdJS8BsG/fxdrbcI635HTsMjO2D678yH0S+JJbo9IiYdqB8E7uecPxpKx8k/71FEVjDSAIMdwXzBJsvNYEfItEYlC4vQG6py6swxx1fhNOY+Aa1rT+o3D2Jx4KtVsD5JebMYy1x9ieltysVtuLxCspdU9A1gjbeGFxV7jieIlv+xS0opPLlK+g9v8O6sDYM+qUz3fAs3w==
Received: from VE1P189MB1088.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:161::13)
 by AS4P189MB2232.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:583::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.20; Tue, 31 Dec
 2024 06:46:53 +0000
Received: from VE1P189MB1088.EURP189.PROD.OUTLOOK.COM
 ([fe80::cbc0:9e46:d5d:f7a6]) by VE1P189MB1088.EURP189.PROD.OUTLOOK.COM
 ([fe80::cbc0:9e46:d5d:f7a6%5]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 06:46:53 +0000
From: =?Windows-1252?Q?Ceren_Karak=F6se?= <ceren.karakose@outlook.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?Windows-1252?Q?Marcus_M=FCller?= <mueller_usrp_users@baseband.digital>
Thread-Topic: [USRP-users] Re: Thanks for a decade of professional fun! (Or:
 so long, and see you around!)
Thread-Index: AQHbWvwzlKJTzhscMkadTGYpJ3RDX7L/6GFc
Date: Tue, 31 Dec 2024 06:46:53 +0000
Message-ID: 
 <VE1P189MB10883603924F91931A5C7577860A2@VE1P189MB1088.EURP189.PROD.OUTLOOK.COM>
References: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
 <a3bfa27e-f68b-46d2-97b5-b95e7bfad1d9@nwra.com>
In-Reply-To: <a3bfa27e-f68b-46d2-97b5-b95e7bfad1d9@nwra.com>
Accept-Language: en-US, tr-TR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VE1P189MB1088:EE_|AS4P189MB2232:EE_
x-ms-office365-filtering-correlation-id: 6ab0d780-8f78-4d17-90bc-08dd2966e91f
x-ms-exchange-slblob-mailprops: 
 YfhX3sd/0TWYnBBcTvvGLlHdY79wcCjUJsphjxli6aQTgQ8PBicA7O0vRc90PdyepohOAF4+sH4v8aYsJYTx/dHSJ+tIEkaUduQh1SiDw/LO+GIVby1zg/YDYCuVVE8VWMp5oOUy6vbQj9+qfEWRqQnbpkH66aB7bRrnw8hTII1Rw9EF6p7bCU3nU8egTYV7nTqpuoB6rQHKfC5hi4ZRiWU+FhYHyvuWUyWDk8DoTiikHAGPkqvtNn2ONvgGI1fFoYsnh0MXEGQYL8aQU4/zNwSXcHJdJBf7+jxlaGI6MWS5dQ/6wLOu//33qlRKqj3/pxAiYEw/7kgdOtrY6Vp0BOZREbruwic7iC4Uu6XHIr90CzIBpVFGxroNXOyyBxUPaabp3C5+xOGW2EvEJJVCmHi4ynIDQBPDv+FRhl7Eq7WZ6azXYJE075qSZcoLhLRZuvL4fZq2c48CyldDLmaJ6qtirMOCn+NUPDtXKbKHewIrN+NYCCOqeRk/Xh0+VNefGNyHGNMtX4T5DQL78k7BMtz4KKl1YysBokSp0EK5iR51on2feQNwBBGTMX1TjgIc4+guKnZyV+LHF+NwWWcWFI/eDiNinLKvJMeEWvGPqJl8BhB0VDLtSxbBtAkbovFgxmdQeaKcEYPfPG/o7JvwzHA11R8jPEa0GntIBvcB9EtzShWg0+FOGFvBSFF3hx/eJHxfVwwQVkbGM3m6aYEB014ImdSH1M9JBhGBdjc0UqFPj40gIyEg5rdNNKVN9ATwPzghmc1cm+vi8BmqWa2lM+gFmkmSAfksvE75O0BN2qU=
x-microsoft-antispam: 
 BCL:0;ARA:14566002|7092599003|8060799006|15080799006|8062599003|19110799003|461199028|14030799003|440099028|3412199025|102099032|56899033;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?qokokAlFkT6EaMvWt6zG++CC2qKWYRYAqp2HKqnV3N9mUvEXAHB8NY94?=
 =?Windows-1252?Q?OhYBfANgFGRbZdJhTLmBi5l1ZUSc+i7tbJgdk5w8jikIjNqA+dFGNmld?=
 =?Windows-1252?Q?0QbaIxhJr8ackFz54KaGffIEj6KE9QSRZ4sWcgjq8ExzHC5+kVil7T/s?=
 =?Windows-1252?Q?vXSB+IVBQgfd/eelyiy7MQoG13LmUyerVi0ZrlDUzJRrr5LUM0+Z24Qc?=
 =?Windows-1252?Q?mNZwLkcnxo6sY0Fsj/KhpUqpMFCHXDGR1hBPAjBL4AZfRD/TPpbogc+n?=
 =?Windows-1252?Q?4eQKuINDynnydzqNLTPUQRsSJNWCzca5b/3RtB4p4hARI1XUJ3ki3tkS?=
 =?Windows-1252?Q?aJk/Jmh5GiUuufnOX7ZGFsI36h4dJE3uUiKNMj3j5iB9VYa8/kotz4pJ?=
 =?Windows-1252?Q?Oztlhvnrw9rew88TArV0xVO57NGab85k7b+W945BsHEYHTd+0fIvzV0b?=
 =?Windows-1252?Q?iIlidMcIbOgfMdqxQnYE97biVzV69zC+02gCQtaNeN5eoWVLvRFvSwPz?=
 =?Windows-1252?Q?WWO6SouU5jnZxzDxD6Jd3i5oIKrp8G4HM6PkLr6hJ6rGD3UYA0ewiBi+?=
 =?Windows-1252?Q?ThOwRHbNgD3+1KnMZC93qfRrdzyMRBr1C2HhOkHs20I3/lYt20fTdjnQ?=
 =?Windows-1252?Q?O63vA0YDqsa+PgMhYtI0bXYY2vDF9uJ/RWoa7VIA79q0AzTrnpbiVRWJ?=
 =?Windows-1252?Q?M4qsJhfG2abHg9vBCfg5cU5vJRh7pBgzSZwpT5jqGBPeBuGbprXzbCNT?=
 =?Windows-1252?Q?lcWLMPi6yTWvHDOLIdQpZlpveVjmAGy2W6lNoJPWZQ/dTycUZ46JZvUX?=
 =?Windows-1252?Q?S6L3gVg0EPgoevl6uu6wgSjpoTTrE6XNlKEmzFjfqx/ALbqhAM2E5Q0d?=
 =?Windows-1252?Q?MkiI5e66tFwXvrKG5FsNXsRmLKXalIJmGRIma+7BscKnU6JER6hF2JBD?=
 =?Windows-1252?Q?qHim9ERklxL4mkW5XwYqMlm3DuDHHSTssYpQOX8JnkgxAiqwRdKQL5oK?=
 =?Windows-1252?Q?Z7sMkKiLCShgEt89/eOoQxuUvggFBum9a2VsijdGbJxUP+fyeJAzvw+U?=
 =?Windows-1252?Q?0F/BmImdEix4eMycrxqFbfqyw950SknPhkVrL5fdWmfLLGChuFmA4RjD?=
 =?Windows-1252?Q?ftXspb/l8Wz42fGoF4JxUwnoAL4dOMSMH7AUbXzeLE0ADnBsp9Cl3I5E?=
 =?Windows-1252?Q?j6peoTvGZrI=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?tW8b4vT7eawLnqL7ofnbYhzusgKD3oCfKwjZQdzPe9FiJH1AwZr1c80w?=
 =?Windows-1252?Q?d5IwG90nGifjS1LtFvaqhQJmKWQB1StyoB/fqSY0moRs7qa80p5muWR2?=
 =?Windows-1252?Q?BdYUhvrkQRjP1JEHiaa6tfpstLCKWv+NAUpNf5tNnt2dqhzcJLERnlci?=
 =?Windows-1252?Q?EI0SPO1IJVBRzqmn0ZmPk0HGxobyKyecZkXBy66WGXd9DmgcNDwTw4gk?=
 =?Windows-1252?Q?bEgzLtXIabccKSCxYe24XfrSwDEZdN+OUkJpHh0Z1Lf4w/avERWJ4BLD?=
 =?Windows-1252?Q?m5ig+7rsFdCQmrBW4o5u+qAWaF/6YmjKX5xE4aP5QEh/dQMVs6X724Wk?=
 =?Windows-1252?Q?xRDPt6Ip+KBjbhQTXojj7zXjy9r88cJK1Q8A8a1knbx783G4kBhW+wJ5?=
 =?Windows-1252?Q?3g6VqsGFyPAKS2hsaNNkdN2edAMvdbe4SvruKyXR4FkuZXJ/eeCXFS4h?=
 =?Windows-1252?Q?79nKTAICjRymWawddPLj82AeZ5s7tKM+vhcWkAk3lIQ0ceyONc/MGm4O?=
 =?Windows-1252?Q?lgza6udRvvyR2+ibzjv4tBjWOq+6VthjnYJYqlT9D55xeNjr/a9nVsbg?=
 =?Windows-1252?Q?Fxf2rkpOopfZHM5z/ToQ08Ehbxtqet0uxqRSQtvnNUlTA30s0cEgI7l4?=
 =?Windows-1252?Q?D/QVx+OdYoZNm5jEwkfG7syL2QTr6TwjP54tNo3pzZlzvcSUdJJQ5yuf?=
 =?Windows-1252?Q?EaT7GaNEyNfkHYGRt/KONJk9luKIsAwTcNKXZWSbs9Ixf82ZYkAMqwW0?=
 =?Windows-1252?Q?By8+JtOewyuACLYVEPOtFprYYBFDU5JC8TDBjh+NwNC80UoxBwJ2Fkce?=
 =?Windows-1252?Q?AVDJ4oTGmsNo/jXsrPIx+enG/2v5goZZppG+z0ZAoPQph2o6Zandv4BR?=
 =?Windows-1252?Q?vtZ9h6aFJKrv0ZPPjEmj0Yi5ARaGDaRK5JGcIZgcxIhUmCc8oZ4go8X1?=
 =?Windows-1252?Q?mKzgiScfVzdeROca3+hmEmy03LA2nlokvzYR8aSm2oEZngiwz+XCQbZI?=
 =?Windows-1252?Q?cBA94khY4d8Gt+V9yutCqd1NvLIEGtvpGq/2rG1z0fhCTTVtI+xT5y9D?=
 =?Windows-1252?Q?xR45g528wodmBAhXBry6MSVGdBBr9jcICKgxraJAuelSejRAdeeznJ9z?=
 =?Windows-1252?Q?slq3mlnp4txKx50boB8Xzh3WZuLDxQAwZ6EyBFqT0+GEEFJadd2V0ez5?=
 =?Windows-1252?Q?JVTZiCOfYduvCnfd/XMamnj8u66gNLCnyJhOFbevlQeuC7aEXJowhIf3?=
 =?Windows-1252?Q?K2eqTfXtPFPaYI/JkprfAgqUiWjBay+3mSJT0R3qHQGetgpkvH2CD6wO?=
 =?Windows-1252?Q?Ahc0UDB9xQdBDT3s1uKmhpnQVwnUf2/9yVszOS036K3C1plL5PtgY6ll?=
 =?Windows-1252?Q?VbNs+aAW6WXxYw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1P189MB1088.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ab0d780-8f78-4d17-90bc-08dd2966e91f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2024 06:46:53.1001
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P189MB2232
Message-ID-Hash: Y727VQHXJEQZRMQKTTQNZIBRJJWNMMCA
X-Message-ID-Hash: Y727VQHXJEQZRMQKTTQNZIBRJJWNMMCA
X-MailFrom: ceren.karakose@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Thanks for a decade of professional fun! (Or: so long, and see you around!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BNZ6JT5IRVL32DK2JKSI3C5UBF6H7CFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3120471718829197485=="

--===============3120471718829197485==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VE1P189MB10883603924F91931A5C7577860A2VE1P189MB1088EURP_"

--_000_VE1P189MB10883603924F91931A5C7577860A2VE1P189MB1088EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear MM,

I wish the best for you moving forward. Thank you for your kind support for=
 all these years.

See ya around,
Ceren

________________________________
From: Chad Spooner <cmspooner@nwra.com>
Sent: Monday, December 30, 2024 11:48:37 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Thanks for a decade of professional fun! (Or: so =
long, and see you around!)

Marcus:

Thank you very very much for all your generous help, both for myself and
for the many others that have reached out to the list with questions.

You've made us all better!

Best of luck,

Chad

On 12/30/24 10:58 AM, Marcus M=FCller wrote:
> Hello USRP-Users,
>
> when I started hanging around on this mailing list in 2013, I wouldn't
> have thought that I'd still be around eleven years later.
>
> But me asking about sporadic signal issues after retuning, which I
> would later be able to attribute to the impulse response of the DC
> cancellation IIR filter in the N2x0 set me on a course to, mostly out
> of boredom during lengthy commute, would start helping people on this
> mailing list from memory and lecture of the GNU Radio, UHD (and
> gateware) source code. It was that which in the end got me contracted
> as support engineer for Ettus in spring 2014.
>
> Since then I had the indubitable fun to play a small supporting role
> in so many projects of users of USRPs =96 from university students doing
> theses, over engineers getting demos to do what they want, to
> physicists controlling instruments or observing the cosmos, to
> biologists working in the most diverse imaginable fields, and of
> course the many, many communications engineers building fantastic
> systems from (both literal and Shannon) bits and pieces!
>
> Wouldn't want to miss that experience! So thank you all for being,
> subsuming everything, the nicest user community a hardware/software
> vendor could wish for :) The USRP series of devices will remain the
> class of devices I'm most intimately familiar with =96 and I'm sure that
> even as NI/Emerson moved to higher priced segments and paid support
> models, you will continue to do groundbreaking and
> infrastructure-upholding work with them!
>
> But: it's time for me to move on =96 this is going to be my last public
> email from an @ettus.com address.
>
> Which doesn't mean I'll not be around; you'll still find me on the
> mailing list under other addresses (see the Reply-To: of this
> message), and you might know that I already kind of stuck with the GNU
> Radio project. My rent is still paid for by SDR system work, and so
> you'll run into me at GRCon, you'll find me plastering the internet
> with explanations of the strangest things.
>
> Not to get to sentimental:
>
> Keep on hacking the electromagnetic spectrum, never let your signal
> processing slow down, and:
>
> See you around,
>
> Marcus M=FCller
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--
Chad M. Spooner, PhD
NorthWest Research Associates
149 Bonifacio Place, Suite 200
Monterey, CA 93940
cmspooner@nwra.com
831 521 6743
NWRA Scientist/Engineer, VP, BoD
cyclostationary.blog



--_000_VE1P189MB10883603924F91931A5C7577860A2VE1P189MB1088EURP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"auto">Dear MM,</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I wish the best for you moving forward. Thank you for you=
r kind support for all these years.</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">
<div><br>
</div>
<div dir=3D"auto">See ya around,</div>
Ceren</div>
<div dir=3D"auto" id=3D"mail-editor-reference-message-container"><br>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>From:</strong>=
 Chad Spooner &lt;cmspooner@nwra.com&gt;<br>
<strong>Sent:</strong> Monday, December 30, 2024 11:48:37 PM<br>
<strong>To:</strong> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.=
com&gt;<br>
<strong>Subject:</strong> [USRP-users] Re: Thanks for a decade of professio=
nal fun! (Or: so long, and see you around!)<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Marcus:<br>
<br>
Thank you very very much for all your generous help, both for myself and <b=
r>
for the many others that have reached out to the list with questions.<br>
<br>
You've made us all better!<br>
<br>
Best of luck,<br>
<br>
Chad<br>
<br>
On 12/30/24 10:58 AM, Marcus M=FCller wrote:<br>
&gt; Hello USRP-Users,<br>
&gt;<br>
&gt; when I started hanging around on this mailing list in 2013, I wouldn't=
 <br>
&gt; have thought that I'd still be around eleven years later.<br>
&gt;<br>
&gt; But me asking about sporadic signal issues after retuning, which I <br=
>
&gt; would later be able to attribute to the impulse response of the DC <br=
>
&gt; cancellation IIR filter in the N2x0 set me on a course to, mostly out =
<br>
&gt; of boredom during lengthy commute, would start helping people on this =
<br>
&gt; mailing list from memory and lecture of the GNU Radio, UHD (and <br>
&gt; gateware) source code. It was that which in the end got me contracted =
<br>
&gt; as support engineer for Ettus in spring 2014.<br>
&gt;<br>
&gt; Since then I had the indubitable fun to play a small supporting role <=
br>
&gt; in so many projects of users of USRPs =96 from university students doi=
ng <br>
&gt; theses, over engineers getting demos to do what they want, to <br>
&gt; physicists controlling instruments or observing the cosmos, to <br>
&gt; biologists working in the most diverse imaginable fields, and of <br>
&gt; course the many, many communications engineers building fantastic <br>
&gt; systems from (both literal and Shannon) bits and pieces!<br>
&gt;<br>
&gt; Wouldn't want to miss that experience! So thank you all for being, <br=
>
&gt; subsuming everything, the nicest user community a hardware/software <b=
r>
&gt; vendor could wish for :) The USRP series of devices will remain the <b=
r>
&gt; class of devices I'm most intimately familiar with =96 and I'm sure th=
at <br>
&gt; even as NI/Emerson moved to higher priced segments and paid support <b=
r>
&gt; models, you will continue to do groundbreaking and <br>
&gt; infrastructure-upholding work with them!<br>
&gt;<br>
&gt; But: it's time for me to move on =96 this is going to be my last publi=
c <br>
&gt; email from an @ettus.com address.<br>
&gt;<br>
&gt; Which doesn't mean I'll not be around; you'll still find me on the <br=
>
&gt; mailing list under other addresses (see the Reply-To: of this <br>
&gt; message), and you might know that I already kind of stuck with the GNU=
 <br>
&gt; Radio project. My rent is still paid for by SDR system work, and so <b=
r>
&gt; you'll run into me at GRCon, you'll find me plastering the internet <b=
r>
&gt; with explanations of the strangest things.<br>
&gt;<br>
&gt; Not to get to sentimental:<br>
&gt;<br>
&gt; Keep on hacking the electromagnetic spectrum, never let your signal <b=
r>
&gt; processing slow down, and:<br>
&gt;<br>
&gt; See you around,<br>
&gt;<br>
&gt; Marcus M=FCller<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
<br>
-- <br>
Chad M. Spooner, PhD<br>
NorthWest Research Associates<br>
149 Bonifacio Place, Suite 200<br>
Monterey, CA 93940<br>
cmspooner@nwra.com<br>
831 521 6743<br>
NWRA Scientist/Engineer, VP, BoD<br>
cyclostationary.blog<br>
<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_VE1P189MB10883603924F91931A5C7577860A2VE1P189MB1088EURP_--

--===============3120471718829197485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3120471718829197485==--
