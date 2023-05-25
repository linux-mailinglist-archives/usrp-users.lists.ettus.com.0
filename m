Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CDC7107FF
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 10:56:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1915E38136A
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 04:56:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685004963; bh=cv/xRYiFl3kg2Xo5gNxtJBf0+rq5ZIDHkryYta+CVNw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=B0pcF9jusWxI7qQCIiBbiR8AY+lAanGr7Tijl90eYZZK3q35HsH1l5FQgH8O/x7lb
	 eNMt7GS+sWhjPT1asDNHG8eCYXR/i/abOIQYgDKdp5Oi2xCzB8MctgyEMaWwRmYu/a
	 ePLzp8v7SQ1FwSvSQE04UDOSS6JetLjQV5Qk7qfPxiZ8u6kaatlV4Hu8FRyYCbd2Nx
	 TiHJrwC9wxanOkexKljVuKOhXZKWpF5cQ2aNHkOJo8IEnApudwXb1JgtVMrX2xVFnM
	 Dl12PxKdbj9IJ0/CpRDus0PZIpums6ipU2aWyF2Bk8iQkwT48HycfrJaHaJDc7EnEy
	 NPmYxIHGqNbag==
Received: from pta-smg3.csir.co.za (pta-smg3.csir.co.za [146.64.81.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B68F3848FB
	for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 04:54:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.b="KLHC6uug";
	dkim-atps=neutral
Received: from pta-smg3.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id CE9A3250D8D6;
	Thu, 25 May 2023 08:54:55 +0000 (GMT)
Received: from ZAF01-CT2-obe.outbound.protection.outlook.com (mail-ct2zaf01lp2176.outbound.protection.outlook.com [104.47.19.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg3.csir.co.za (Sophos Email Appliance) with ESMTPS id 39C162510E7F;
	Thu, 25 May 2023 08:54:55 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H/lobEYpJfyAGS7JUobj9QTH0Patb7KZywppae4seMEN5QVF8wQkn1A1YzNkkKtNPCMklaYUzOy7YrPVGURSmQaBYjsfkUfRrbq6DTVyhOgCIMjst6QMD+8afP6mvdTjHNNN0bfL2FxFZn359EPLE0YryUL5wBkxIPu4efL31MUXwo0LC3uFkZHyGCGg0McOrdENlhMcAiuptddzjRlZ5DWZyiuH/hjYrXzOX/S73EUO0zVlLenu7ESdL6+wwyaLDP+592CGglTZyjte71tBl0/S8rYBb9HC+M7OPJAF0PeRldXI/fLQnBadQYGjGNZfqe1Fu/SR+QYcGZMhwh4RLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKsAUSk6OO8XX6/lFd29E77IfcuVEoQfu9/BE/ASqxY=;
 b=WPmh3IdN1aUP2RmgRqLas5T3JRkLF37Bvwv9i7XjROZjo+oH2FXuXL0jD/BOwyYXyszaFri2WCMaaRgH/YM7zr3W0frvz/kEIdhqUxGvm9gg91pWYMwzyzWpO2vLN8JE54NOr7LoZKaBrEIlKGZzyYYJoT2CNRpKOW3Yixjj3k+bwlhP3QdNzKuj+8iHl/0OSOcokFmIw8XOBgqLnBucMTU7bXAG2d9fJ9uKvBEy7C3m91KyuJZ9QNmRL92BG0gJxONKJcNMQa6NwATNDHYA1hBbU5yupC5OfQD4C9R5E81iP1jr6xsxwkhJeXE2SmQDxwwSOdGY3j83vcY099tZjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dKsAUSk6OO8XX6/lFd29E77IfcuVEoQfu9/BE/ASqxY=;
 b=KLHC6uugsLe9lP9PdIpPxh3UhhFO18XaOAulSG8rmsKYd/ysRON9oNXF8r51JxFO9aC6rVjAJL4UaBoBXFDAriSDYtlyiyufy7NysGdiCHYCJXeYW3+gFYXgFiHcoo+UKQPZnNRIxkBa8+avbuzmRE2UZTiX0JCEs6yWtIeEkp4=
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:24::13) by
 JN1P275MB2088.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:8a::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.16; Thu, 25 May 2023 08:54:53 +0000
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::d459:f001:e2f5:46c5]) by JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::d459:f001:e2f5:46c5%6]) with mapi id 15.20.6433.017; Thu, 25 May 2023
 08:54:53 +0000
From: Leon Wabeke <LWabeke@csir.co.za>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
Thread-Index: AQHZjn2sGSohDK2oekW7q01SXl7KZq9p6+8AgADCOBY=
Date: Thu, 25 May 2023 08:54:53 +0000
Message-ID: 
 <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com>
In-Reply-To: <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com>
Accept-Language: en-ZA, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JN1P275MB0535:EE_|JN1P275MB2088:EE_
x-ms-office365-filtering-correlation-id: 8ff33bf2-4c6e-46af-76ff-08db5cfdb507
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0jO0nr1vTespzfk8TlQB53BkGPWt1NMZd8Qe3LjQ1e3jBLTdO/yjyV3PlG1EjO4mwoyltdE19vXy5gpU2Sj+w61sNShUkVK0osgT0U/RjBLlRqC3aqO3c+K24/KCAhWi9+swCE/nizhj3FMj5mrKj43nFB5E6M3NW8Qq9HdztyRDHofnMp2LkklVJA3bdfrUI0keyDpdflfBcjipNyj3HmIMhH10l5s0ZASPMPyysQpn7it+t9LQrAtwk3BHA+2LyxMU2naAb6ux37XiOyBgrnWxNFEpyXcu4iC0jynV+I+v4eXkkCfVEwCESwjN55XIwfBJk0BL3KMWTeF+Nyij4iCbMK9RUViRn+xVp2nk/5KJDqfJXxiBvyHex6i2BtHjLMUkNFaCA7JdCgz8NFX1ZakgR5FAIJIIckUK80ME1n9CzdH9GKXblv23vCg5z7Q0Q9c0N+ahBYBGWO45bB74lYrcgoSKNgmzGTj9ltQ5TFCWWXpNxZbZQXLdtTGbaXt+UA2cQUMAdC3kmiTBy/QgKLsnf2aSewRTWisdzXC6IAJ5eOWu0a3UtTnsk99MqtnNTjbwK3jibNlSBDWj/krtuy//Y8FW5A7XTLVQCyQLOadJXou5SVRnrFWncGzR/huc
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(136003)(366004)(396003)(39860400002)(376002)(346002)(451199021)(33656002)(38070700005)(478600001)(110136005)(76116006)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(41300700001)(122000001)(7696005)(38100700002)(86362001)(52536014)(8936002)(9326002)(8676002)(5660300002)(2906002)(26005)(186003)(6506007)(9686003)(55236004)(53546011)(83380400001)(71200400001)(66899021)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?43XxD2qfnXbzWYW9nGxtpcrxf9zKe0DWhzZ0jAaPMZbLxCVEgIKSqsEr?=
 =?Windows-1252?Q?eodPXAD0Toy/Rw0NLUrg8OzA9Im1s2N7/HqclU51EwROFdCo5xwsskXP?=
 =?Windows-1252?Q?G78SQrr0FwSZFpKG50vlFzgkd1Jww+Xy52CTp/63Gdpw3t+q/A+DsqD+?=
 =?Windows-1252?Q?3ULgHa8VThHc8j+W4Zx410b4t54/R7rQ3sUX3I+l4L40wCaZRt+j7gKT?=
 =?Windows-1252?Q?JcY3A7JdY+m0Byt4ow5m0RBsnHjdurRpXT+4FW766hvndDtvwTwTIA3M?=
 =?Windows-1252?Q?DGNbnl02H0Esp4a3qvLKv7P3Zwg9hFW0hRlyQiAnSm0arNaAgN7hFxgr?=
 =?Windows-1252?Q?iwE2jiFIMp9gfN0ZWuHnTF5o+mG2I1A04IBUv8FCsPZxkM/SiFuNjP48?=
 =?Windows-1252?Q?Q6AeHeIhQJcqbnqciT5UAHGkQhLUCSJZEyyfmW08ybaGZ8OA7aI4KLi+?=
 =?Windows-1252?Q?SHvCJaolfEGjua5JflilRDNcn37jUf3thGQwZdX8gbFeWPJMS6Lf2ETt?=
 =?Windows-1252?Q?/pnchGLq3TFTnbcs1JCR33ZrnmjEJPqFNmyrXMDxOU5AoPpwsDoAO1Ms?=
 =?Windows-1252?Q?trSfDIObq4lZyCriDSTeupr1XS+6Ajk9dPi/jib1IJwTmWxsq8Av2o/R?=
 =?Windows-1252?Q?UZXTLQbUmvtjh9K6Xp5VEehgmDDQpxhP1uNFdIwHnUFes0LYiXB2f8XB?=
 =?Windows-1252?Q?Czdy8WLIr1+QIUlidvKQ9BLL685D/IMP31AgXIWKOGl4Yr2LFFGOg/iN?=
 =?Windows-1252?Q?Uf9G/Hjg/5pyma5zAu71bD5aOTyot1oM885jEzFpICyRF+HiO4ZfnUTQ?=
 =?Windows-1252?Q?i6gyBaDAwaESAHTJz6eXlW8GCavfZeQ2u+mWsPZcbOtgWHXQcDiGcTP9?=
 =?Windows-1252?Q?rDGzVP3CsVAW9uaPkN3mshnKFa9DG6VA89kPXPu4Lc7xO41uoBqkIICQ?=
 =?Windows-1252?Q?1OZCoTJa4Dx3fqR7aItkO9xwY1+N8byYMh7Ak3uqE7eIxZDBqw8/nigK?=
 =?Windows-1252?Q?MIXsxNoyrDCV5EFQBFjbQMuXWacr5W6wWIOt1eLzAVI2CG5ClXX/rUAh?=
 =?Windows-1252?Q?EyGXxtUy44gN5cvcykpDICsfrWMrCUnV053J6UO9haxQWBjN680SEEz7?=
 =?Windows-1252?Q?6hhFrZmZmf1/bl1sC6unEJJa7uZa3aVbec+jLA2l9RwKN9kQ/3mqF6lf?=
 =?Windows-1252?Q?/Lm25RH3bSbhbCF9RED+zGFf0GcjSeOnkKfVTEt8b+CH2+8+P8lBcC9V?=
 =?Windows-1252?Q?xPveBwb1BmNAsETei3g9/uj9T+doMqRH4eP6/Ti+A/ZP2TioN88AMgPY?=
 =?Windows-1252?Q?AIDi25GMPm/2lsOzF74YWrQVy0HK2K876r3OPqcCphrr6WIHnEu1dzVI?=
 =?Windows-1252?Q?4nNR1o24DthGILHgG9NZzdEBoWMZBKLQx6k5iI7ifDyrgYwco+CHOmW9?=
 =?Windows-1252?Q?o6iNGTGcppkPPT533kS11FkgW4jmnxGmtsIdeTR+6+xC9hNIAsioyRKd?=
 =?Windows-1252?Q?KhaRDJj97luvDexlpoccoEXAzEmWJ3M/hOt0YwuI7T083FmhOnTZflzY?=
 =?Windows-1252?Q?t6xX5vhIwittxxwNSyu8gIyolcfL5XYKwfZmNuEU3GJzCU0sCoC5zWd0?=
 =?Windows-1252?Q?oQAbhLaeIhjF1t2lKKIT2dWpj7qx0Pn3NjRz+psnlbL8jfiXPHOrTVgY?=
 =?Windows-1252?Q?Zzcnsw+XkSL/wWaCCeUKVBLHDEI9fp6QvUZl15j6TH1jjf9U0X4V9g?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff33bf2-4c6e-46af-76ff-08db5cfdb507
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2023 08:54:53.6591
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CtCGy+mwiiHrrFV9LYCqoF7fof3bvF2eQC5tv6IbzZWFhLIRM/b4hw84Y/S0tbi1gY1eTHb2BeoC/SszQtpzuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB2088
X-SASI-RCODE: 200
Message-ID-Hash: VUTRMYY4QBFRFRFGWD4JEY47XNSYQYRM
X-Message-ID-Hash: VUTRMYY4QBFRFRFGWD4JEY47XNSYQYRM
X-MailFrom: LWabeke@csir.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJXBTXTZMUVRZZGA23Q4G5HQZ2TEQJLF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6280716218185713220=="

--===============6280716218185713220==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_JN1P275MB053556431057E296A551C8C695469JN1P275MB0535ZAFP_"

--_000_JN1P275MB053556431057E296A551C8C695469JN1P275MB0535ZAFP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi

We have also used a =93measure in the lab approach=94, together with zero p=
adding before and after and have at times seen these need to be adjusted af=
ter a UHD upgrade.

We have also in some cases taken the GPIO strobe via another FPGA to adjust=
 the strobe by adding an extra configurable delays on rising and falling ed=
ges. It is just annoying to use an external function to do this and it woul=
d in my opinion be a very useful feature if such configurable delays were p=
art of the basic built-in GPIO functionality at least in terms of the =93au=
tomatic strobe state machine=94, thus not requiring another FPGA or having =
to try to integrate custom logic inside the UHD firmware, which might need =
to be reintegrated on subsequent updates.

Thanks
Leon

From: Marcus D. Leech <patchvonbraun@gmail.com>
Date: Wednesday, 24 May 2023 at 23:14
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay

[The e-mail server of the sender could not be verified (SPF Record)]
On 24/05/2023 16:22, mena@chaosinc.com<mailto:mena@chaosinc.com> wrote:

Thanks. Two follow up questions:

  1.  For a given sample rate, is there a way to deterministically calculat=
e the group delay?
Look at the filter code in the version of the FPGA image that you're using,=
 determine which filter bits and
  pieces are "in circuit" when you select your sample-rate, and calculate t=
he group delay from that.

  Many folks who have run into the same problem have used a "measure it in =
the lab" approach, and done
  that for new releases of the FPGA code--the R&D team does occasionally ma=
ke changes to the filter
  parameters and "doctrine" in order to optimize for certain types of appli=
cations.  This may well
  de-optimize for others.  SDRs are general-purpose devices, which means th=
at there will be cases where they
  aren't "out of the factory" optimized for any *particular* application.

The approach some have take is to pad at one end or the other (or both) to =
account for these delays, which comprise
  a deterministic-but-version-dependent component, and an analog component =
that is less deterministic, but at much
  smaller times scales.




  1.  Why do I not see the same delay at the back end of the transmission (=
i.e. after the GPIO goes low)?
My suspicion is that part of what you're seeing is an analog switching effe=
ct, and things like turn-on/turn-off
  times are not perfectly symmetric.

This issue (lack of tight synchronization between ATR signals and actual wa=
veforms appearing at the antenna) has been
  an issue in digital comms since I got involved in the 1980s, albeit, in t=
he 1980s, the time-scales were much larger.
  You simply had to account for these effects for every new radio your appl=
ication encountered.   In the DSP age, the
  effects are at much smaller time-scales, but so are the data rates.






_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_JN1P275MB053556431057E296A551C8C695469JN1P275MB0535ZAFP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:325472711;
	mso-list-template-ids:-105478742;}
@list l1
	{mso-list-id:701831019;
	mso-list-template-ids:287484688;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style>
</head>
<body lang=3D"EN-ZA" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Hi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">We have also used a =93measure in the lab approach=94, together wit=
h zero padding before and after and have at times seen these need to be adj=
usted after a UHD upgrade.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">We have also in some cases taken the GPIO strobe via another FPGA t=
o adjust the strobe by adding an extra configurable delays on rising and fa=
lling edges. It is just annoying to
 use an external function to do this and it would in my opinion be a very u=
seful feature if such configurable delays were part of the basic built-in G=
PIO functionality at least in terms of the =93automatic strobe state machin=
e=94, thus not requiring another FPGA
 or having to try to integrate custom logic inside the UHD firmware, which =
might need to be reintegrated on subsequent updates.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Leon
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Marcus D. Leech &lt=
;patchvonbraun@gmail.com&gt;<br>
<b>Date: </b>Wednesday, 24 May 2023 at 23:14<br>
<b>To: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>[USRP-users] Re: N320 - GPIO ATR output to TX output delay<=
o:p></o:p></span></p>
</div>
<pre>[The e-mail server of the sender could not be verified (SPF Record)]<o=
:p></o:p></pre>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">On 24/05/2023 16:22=
, <a href=3D"mailto:mena@chaosinc.com">
mena@chaosinc.com</a> wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p>Thanks. Two follow up questions:<o:p></o:p></p>
<ol start=3D"1" type=3D"1">
<li style=3D"mso-list:l1 level1 lfo1">For a given sample rate, is there a w=
ay to deterministically calculate the group delay?<o:p></o:p></li></ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Look at the filter =
code in the version of the FPGA image that you're using, determine which fi=
lter bits and<br>
&nbsp; pieces are &quot;in circuit&quot; when you select your sample-rate, =
and calculate the group delay from that.<br>
<br>
&nbsp; Many folks who have run into the same problem have used a &quot;meas=
ure it in the lab&quot; approach, and done<br>
&nbsp; that for new releases of the FPGA code--the R&amp;D team does occasi=
onally make changes to the filter<br>
&nbsp; parameters and &quot;doctrine&quot; in order to optimize for certain=
 types of applications.&nbsp; This may well<br>
&nbsp; de-optimize for others.&nbsp; SDRs are general-purpose devices, whic=
h means that there will be cases where they<br>
&nbsp; aren't &quot;out of the factory&quot; optimized for any *particular*=
 application.<br>
<br>
The approach some have take is to pad at one end or the other (or both) to =
account for these delays, which comprise<br>
&nbsp; a deterministic-but-version-dependent component, and an analog compo=
nent that is less deterministic, but at much<br>
&nbsp; smaller times scales.<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<ol start=3D"1" type=3D"1">
<li style=3D"mso-list:l0 level1 lfo2">Why do I not see the same delay at th=
e back end of the transmission (i.e. after the GPIO goes low)?<o:p></o:p></=
li></ol>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">My suspicion is tha=
t part of what you're seeing is an analog switching effect, and things like=
 turn-on/turn-off<br>
&nbsp; times are not perfectly symmetric.<br>
<br>
This issue (lack of tight synchronization between ATR signals and actual wa=
veforms appearing at the antenna) has been<br>
&nbsp; an issue in digital comms since I got involved in the 1980s, albeit,=
 in the 1980s, the time-scales were much larger.<br>
&nbsp; You simply had to account for these effects for every new radio your=
 application encountered.&nbsp;&nbsp; In the DSP age, the<br>
&nbsp; effects are at much smaller time-scales, but so are the data rates.<=
br>
<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_JN1P275MB053556431057E296A551C8C695469JN1P275MB0535ZAFP_--

--===============6280716218185713220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6280716218185713220==--
