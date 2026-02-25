Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kG7REVW4nmnwWwQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 09:52:37 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E7A1946D0
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 09:52:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E175D38665D
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 03:52:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772009554; bh=E85F8TW4YP78emMfJ77xw+eqB/GwTUcdJwGZU5e00Uc=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=oLFw5W4BFlPkgPwXQ4RKRjUx6Hh5S2WnM/K3UbffdExoAgcCjwbZfBAe4Qw6RPwJh
	 Jrz879xArtOTW5iotnGRrXGayK4bbqAH/EQRulcVQ1nCtazEZ5J79LQr7KbKHh1q6I
	 ovwI05kwVCNLmattFGj8TbHL5rMjsQ1oyb24lMjFO33wWKZ8hW7flbh200lbCOrh8Q
	 Umo263GGBDodCqPEO1KWK+aQ9fTYR/F7dcIwtdAYdKCW7g7NBcmJ9dadgayj7uhp8s
	 Ql/XxHHWtgPIxdt00VBvlFIlTn+1R7vSi+19hxge6DW04ihnZPZTCXDMRP/wJNl7ls
	 B/xGK1LIUNIpg==
Received: from mailin.dlr.de (mailin.dlr.de [194.94.201.12])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B1F8386453
	for <usrp-users@lists.ettus.com>; Wed, 25 Feb 2026 03:52:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dlr.de header.i=@dlr.de header.b="utiDw3ck";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=dlr.de; i=@dlr.de; q=dns/txt; s=052022;
  t=1772009547; x=1803545547;
  h=from:to:subject:date:message-id:mime-version;
  bh=AXtI671mwVlUwexQWjqMa6H1MqeHvrapx0OQBQqJQys=;
  b=utiDw3ck4iGqyM8GVC2FBnJ1khvMjSq4c3TUWU5cJeQhovbH+pUosNlA
   gXAjLMH/5GTQB3vmG52ZJNyvfa/01bpS3B9XOcJJ+7FnxloDz98l6d2U1
   Tyo6vAdH/nZ3J5MlQs+NvFZjsCnnAfWoYQkTE6ZRZKMXYk+bWTUtmWjsH
   cnumTj62GY+4I9U9oQqGGEyzIG/ZACYlT84OaEop/SYYBymhS97sfrszQ
   lfAPUeuulEUbuc4i8LlJAE64ajO5gBTm94+MrQ5/o1Uqhhgc6kbyIXs39
   xyvUG/OaUIFRnd2x6lL6jiGTyqkyFwa0FAcgWAR/n5Rrl0nCfgyLcTnZ9
   Q==;
X-CSE-ConnectionGUID: O7befzvRRj6QcqmQR2nA/A==
X-CSE-MsgGUID: gjUhNbKmQj6mBTVerzXWjg==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A2F5AwCot55p/wOKuApaHgENLwwOCwmBUIE9ggswgToEB?=
 =?us-ascii?q?BWICo4lnh0UgUIpCAcBAQEBAQEBAQEEBAE0HQQBAQMBA4VREYxBJzQJDgECB?=
 =?us-ascii?q?AEBAQEDAgMBAQEBAQEBAQEBAQsBAQYBAQEBAQEGBgECgR2GCUYNgluBLIEkA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEdAQEIBzIqU14BBkovJgEEGwaCdYIdQhQUBo1dnEaBN?=
 =?us-ascii?q?IEBgxyBYNsgEgkBgUOBWIZrEQEqgTMCAYMddgGEeoJPh14EgSAoY4V3BIIie?=
 =?us-ascii?q?hSCTJBqLIE6A1ksAQ9GExcLBwWBZgOBBm4yHYEjPhczWBsHBYZcD4pagRyBd?=
 =?us-ascii?q?gMLB2EFDgItNxQbBAIBgTWLOhAhDYE5XD+DAWwBL2FKlER8kBqhegeCOIhEg?=
 =?us-ascii?q?zOCDohhjGEuF4Vbj3aCD5MLmQaFHoYIgXhrmw0CBAIEBQIYgWiCFnGDNgkWM?=
 =?us-ascii?q?xcCD5IhM8NieAIBAQE3AgcBCgEBAwmRazMugR0BAQ?=
IronPort-PHdr: A9a23:IBnBHhJ/OcwfYxSrLNmcuFphWUAX0o4c3iYr45Yqw4hDbr6kt8y7e
 hCEubM11BSTAd+FtbptsKn/jePJYSQ4+5GPsXQPItRndiQuroE7uTJlK+O+TXPBEfjxciYhF
 95DXlI2t1uyMExSBdqsLwaK+i764jEdAAjwOhRoLerpBIHSk9631+ev8JHPfglEnjWwbL19I
 RmssQndqsYajZVtJ6ovyxbEo2ZDdvhLy29vOV+ckBHw69uq8pV+6SpQofUh98BBUaX+Yas1S
 KFTASolPW4o+sDlrAHPQwSX6HQTS2kbjBVGDRXd4B71Qpn+vC36tvFg2CaBJs35Uao0WTW54
 Kh1ThLjlToKOCQ48GHTjcxwkb5brRe8rBFx34LYfIeYP+d4c6jAf90VWHBBU95RWSJfH428c
 4UBAekAPelEoIbwvFQOoQe8BQS0GO/j1iJEi3nr1qM6yeQhFgTG0RQnEtwBtXTbttP1NLoMX
 uCx1qXG0CnDYOlL2Tjg6YjIdB8hru+WXb9rbMXRzVMvGxnYgVqOsIHoOS6e2esRvWaB9eVgS
 f6vhHA9qwF3ujWiyNohh5fNi4wbzl3K+iV0zYg0KNC4SEB3fdCpHZVOui2ENIZ6X94uTWFmt
 ig0yrMLtp61cSYFxZkpxBPSaOKLfo6V6RztU+aRJC13hHNjeL+nmhmy9VKgxvfhWcaq1ltBs
 ylLksHUu3wQyxDf8NWLR/hy80u7xDqC2QPe5vtKLEwsiKbXN4QtzqMzm5ccq0jPAyH7lUbsg
 KOIdkgp9e6l4Pn9bLr8vJ+TLYp0hxn7MqQph8OwH/w1MhMLX2iH4eS806Dj/VHhTLVKkPI2l
 q7ZvYjZK8oFv6K3AxJZ3p855RqmADmp0coVkWUJIV5feRKHiZTpO0vUL/ziEPi/h06snC12y
 P/YJrHhA5PNIWbfkLr5YLpx91RQxBcwwN1Q/Z5YF78MLfHpVkL/rNDYCwU2Mw2ww+bpEtV90
 YYeVHqADK+cKqzSt0KI6fwrI+WWeYEVpCzyK+U46P7vi385lkESfbOy0JQKbHC4BO5qLFiHb
 nb0mNcODX8KvhYiTOztkFCCTCVTZ2yqX64l+zE7E5ypDZ3YRo22hLyB3Ty7HoFNZmxcFF+MD
 Wvod5ifW/sWdC2SJcphniQCVbe6U4Ahzw2htBfmy7p7KerZ4jAUuYr51Ndr+e3dlgs8+CR1D
 8SBym2NQXx4knoQRzMvwq9+rlByxkuN3KRigvxYE8BT5+lTXQsgKJHcy/Z6B8rvVQ3fZtuGV
 VWmQtSjATwpVtw/zNEBbVhhFdi+iB7PxzelA7oPmLyRGJM56rrS0WHpKchy03rGz7Ehj1c+T
 8VXLGOonqFx+xDIB47RnUWWj6aqeroY3C7K7GqN1XOAsllXXl04baKQCW0EfFOTsM/0/FjqS
 761Fa9hPxdd1NXEIaxPPI7Hl1JDEaPOPd3Yfm+13VysDAuEx7WDYZDCd2EHminQXhtX2zsP9
 GqLYFBtThyqpHjTWWQGKA==
IronPort-Data: A9a23:QW6TzaA7J912bRVW/3/kw5YqxClBgxIJ4kV8jC+edVH5lGZ7hGRDl
 z1BRindabyNfyGsLIcnLMj0oHqyi+aWk48+HRwsqmoFoxli8JvMW4rCJxmsZy3NIpOcF09tt
 ZlGNdWdIctuQiaAqEugPOHs8HR2ifDSHeP3BuSbYykrSFE5GHwo0Eo8xeQ33uaE7fCwGxuJu
 Nj7v8zYPhi92DVvbScP6q2FoQ9ypvmaVBYw5zTSMtgV7AaC/5VsMLofOb2pfTy/baR9ONL8Q
 O3Y1Pei82jF/hgqTNiil+63TyU2rsXp0XSzt1JWR7S60F8FrTY2lLsgOeAAc1pMl3OCmNU29
 e5gj6CqVBw1BJbls+kHTxhWEip3IaxB/pbaPXi4q82P3gvNaX+03bZsVEFuas5AcA6/WmFS6
 eRKb3cGdAzFmvm72q6hV/JwwM8kKY7WB64lhmt91i3jNt8PTZz/WbjR+fRxmjwqmpgDXq5Uj
 wJoaSZzdEaHJBpEIU9RFYkzhvuym2LjNTZfrQr9mUZM2ISg8eAL+OOraLLoUtyWWd0H2QGfr
 XneuW/+BxYWM9eWjzGC9yrEugO0ps+HZW5oPOX+rpZXqF2P2nQIWlpRTlawvfi2jQi1XNcYA
 HQvogATxZTej3dHOeQRJTXj5ibsgzYcR8ZICL99rxqAwbbV7AHfDW8BCRV5U4QeiacKqUcRO
 ii0c6nBXno32ICodE9x1ot4jBviaCFIdDQJPHUJHAEL6YC+qY9phBuVQI48Hvbr0NesRxj9k
 muAxMQcaxT/riKpO4GTpw2vb+eE/8CRJuINzlyJGDrjskUhPdDNi7WAsTDz9exHIJuSUm6Pt
 X0Fn9n2xO0VBPlhrgTUKAk2NO/vva/t3AH02wY1QcF7rWn1ohZPQKgJiN1ADBYxWio7UWKxC
 KPjkVs5zINeOnKscZh2b+qZY+w2zbLtHMjSTfvdaNxDePBZLGdrKwk3OCZ8d0i0+KQduflX1
 aWzKK5APl5GYUhT9wdacs9GuVMdKoHS8kuILXzz50zPPbNz/xd5Q59dWLeFRrhRAK9pPGw5W
 juQXieH40w3bQHwXsXY2alMJ10EP2YBP5KoksdOc9e5eAxPX0h0Xpc9wZt5E2Bkt4Vp08mRu
 0n4d39zkAG5hHvbMwzMZnR5Lr/iNXp9hStje3V8YRDxgChlOu5D749GH3czVZQi/ep+wPoyd
 OUMZsmBBPtCUBzL/y5bYZSVQIlKKkzx2FnfZXbNjD4XcJxdRyrD2drdfFXq3hUwAzClhfQ8r
 Oj1vu/cad9ZL+h4N+7Lc+i3ik6qsGIGsOZzRFfTZNRPZFj3toNtLkTMYuQfIt1JJ0yG3n6Xx
 w3OWlEZo/XXqsk59MOPia3sQ5qVLtaS13FyRwHzhYta/wGAloZ/6eesiNq1QA0=
IronPort-HdrOrdr: A9a23:zT7mJaB4CNurPe7lHemf55DYdb4zR+YMi2TDj3oBLCC9Afbo8/
 xG/c5rrSMc5wxhO03I9ertBEDiewKmyXcW2/hyAV7KZmCP0wHEEGgL1/qZ/9SKIUPDH5tmtZ
 uIBJIeNDSfNzdHZI3BkW6F+p4bsb+6GY6T9J7j80s=
X-Talos-CUID: 9a23:r2DIbWOG3ao9hu5Df3Zt+UAGBPofcCPkx27VGnXiD08uYejA
X-Talos-MUID: 9a23:oJ646gRJ68Zp6yd0RXTjhgxiEs1L5p2sVkUnrasLodu0Ci5/bmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.21,310,1763420400";
   d="p7s'346?scan'346,208,217,346";a="60253924"
To: <usrp-users@lists.ettus.com>
Thread-Topic: Suitable PC hardware for X440
Thread-Index: AdymM0I8RsYe48xPRXWoEFHPlFK9nQ==
Date: Wed, 25 Feb 2026 08:52:20 +0000
Message-ID: <467c7e31778a4b5e9012fdf820209e5b@dlr.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Message-ID-Hash: CSQMM54C7WMGXESO7VJQXYGCJZC672LI
X-Message-ID-Hash: CSQMM54C7WMGXESO7VJQXYGCJZC672LI
X-MailFrom: Emanuel.Staudinger@dlr.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Suitable PC hardware for X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CSQMM54C7WMGXESO7VJQXYGCJZC672LI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Emanuel.Staudinger--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: Emanuel.Staudinger@dlr.de
Content-Type: multipart/mixed; boundary="===============0907365796450907498=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.81 / 15.00];
	SIGNED_SMIME(-2.00)[];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,multipart/alternative,text/plain];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,dlr.de:-];
	R_DKIM_REJECT(0.00)[dlr.de:s=052022];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_EQ_FROM(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	RCPT_COUNT_ONE(0.00)[1];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[Emanuel.Staudinger@dlr.de];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	NEURAL_SPAM(0.00)[0.501];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,emwd.com:dkim]
X-Rspamd-Queue-Id: 63E7A1946D0
X-Rspamd-Action: no action

--===============0907365796450907498==
Content-Language: de-DE
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0085_01DCA63C.67E82D30"

------=_NextPart_000_0085_01DCA63C.67E82D30
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0086_01DCA63C.67E82D30"


------=_NextPart_001_0086_01DCA63C.67E82D30
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

=20

we foresee a X440 for our research and are looking for hints on suitable =
PC
hardware/architectures for high-rate streaming and storage of I/Q =
samples,
as well as online-processing.

100Gbit-NICs can be found in the knowledge base, yet I would be more be
interested in suitable CPUs etc.

Given the high bandwidth we have a Ryzen Threadripper based system in =
mind.

=20

Does anyone have experience with Xeon oder Epyc based systems in this
regards?

Do you have recommendations for suitable SSDs for raw data storage (not
necessarily consumer grade, can also be SSDs built for servers)?

=20

Any insight is highly appreciated.

Kind regards,

Emanuel

=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97=
=97

Deutsches Zentrum f=FCr Luft- und Raumfahrt e.V. (DLR)

Institut f=FCr Kommunikation und Navigation | Communication Systems |
Oberpfaffenhofen, M=FCnchener Str. 20 | 82234 We=DFling

=20

Dr.-Ing. Emanuel Staudinger=20

Telefon +49-8153-28-2887 | Telefax +49-8153-28-1871

 <http://www.dlr.de/> DLR.de

=20

DLR is represented by the Executive Board and employees authorised by =
it.
Head of DLR's legal department, Linder Hoehe, 51147 Cologne, can provide
information ( <https://DLR.de/imprint> DLR.de/imprint).

=20


------=_NextPart_001_0086_01DCA63C.67E82D30
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Microsoft Word =
15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#467886" vlink=3D"#96607D" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span lang=3DDE>Hi =
everybody,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DDE><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>we foresee a =
X440 for our research and are looking for hints on suitable PC =
hardware/architectures for high-rate streaming and storage of I/Q =
samples, as well as online-processing.<o:p></o:p></p><p =
class=3DMsoNormal>100Gbit-NICs can be found in the knowledge base, yet I =
would be more be interested in suitable CPUs etc.<o:p></o:p></p><p =
class=3DMsoNormal>Given the high bandwidth we have a Ryzen Threadripper =
based system in mind.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Does anyone =
have experience with Xeon oder Epyc based systems in this =
regards?<o:p></o:p></p><p class=3DMsoNormal>Do you have recommendations =
for suitable SSDs for raw data storage (not necessarily consumer grade, =
can also be SSDs built for servers)?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Any insight =
is highly appreciated.<o:p></o:p></p><p class=3DMsoNormal>Kind =
regards,<o:p></o:p></p><p class=3DMsoNormal>Emanuel<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'punctuation-wrap:simple;text-autospace:none'><span lang=3DDE =
style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:dimgray'>&=
#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#82=
12;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;=
&#8212;&#8212;&#8212;&#8212;&#8212;<span =
style=3D'mso-ligatures:none'><o:p></o:p></span></span></p><p =
class=3DMsoNormal =
style=3D'punctuation-wrap:simple;text-autospace:none'><b><span lang=3DDE =
style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:dimgray'>D=
eutsches Zentrum f=FCr Luft- und Raumfahrt</span></b><span lang=3DDE =
style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:dimgray'> =
e.V. (DLR)<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:16.0pt;punctuation-wrap:simple;text-autospace:none'>=
<a name=3DInstitut></a><span lang=3DDE =
style=3D'font-size:8.5pt;font-family:"Arial",sans-serif;color:dimgray'>In=
stitut f=FCr Kommunikation und Navigation | Communication Systems | =
Oberpfaffenhofen, M=FCnchener Str. 20 | 82234 =
We=DFling<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'punctuation-wrap:simple;text-autospace:none'><span lang=3DDE =
style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#1F497D'><=
o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'punctuation-wrap:simple;text-autospace:none'><a =
name=3DFunktion></a><span lang=3DDE =
style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:dimgray'>D=
r.-Ing. <b>Emanuel Staudinger</b> <o:p></o:p></span></p><p =
class=3DMsoNormal =
style=3D'line-height:16.0pt;punctuation-wrap:simple;text-autospace:none'>=
<a name=3DTelefon></a><span lang=3DDE =
style=3D'font-size:8.5pt;font-family:"Arial",sans-serif;color:dimgray'>Te=
lefon +49-8153-28-2887 | Telefax =
+49-8153-28-1871<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'line-height:16.0pt;punctuation-wrap:simple;text-autospace:none'>=
<span lang=3DDE =
style=3D'font-size:8.5pt;font-family:"Arial",sans-serif;color:dimgray'><a=
 href=3D"http://www.dlr.de/"><span lang=3DEN-US =
style=3D'color:blue'>DLR.de</span></a></span><u><span =
style=3D'font-size:8.5pt;font-family:"Arial",sans-serif;color:blue'><o:p>=
</o:p></span></u></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-size:7.0pt;color:#737373;mso-fareast-language:DE'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'font-size:7.0pt;color:#737373;mso-fareast-language:DE'>DLR is =
represented by the Executive Board and employees authorised by =
it.<br>Head of DLR's legal department, Linder Hoehe, 51147 Cologne, can =
provide information (</span><span style=3D'font-size:12.0pt'><a =
href=3D"https://DLR.de/imprint"><span =
style=3D'font-size:7.0pt;color:blue;mso-fareast-language:DE'>DLR.de/impri=
nt</span></a></span><span =
style=3D'font-size:7.0pt;color:#737373;mso-fareast-language:DE'>).</span>=
<span style=3D'font-size:12.0pt'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0086_01DCA63C.67E82D30--

------=_NextPart_000_0085_01DCA63C.67E82D30
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCFvww
ggQyMIIDGqADAgECAgEBMA0GCSqGSIb3DQEBBQUAMHsxCzAJBgNVBAYTAkdCMRswGQYDVQQIDBJH
cmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcMB1NhbGZvcmQxGjAYBgNVBAoMEUNvbW9kbyBDQSBM
aW1pdGVkMSEwHwYDVQQDDBhBQUEgQ2VydGlmaWNhdGUgU2VydmljZXMwHhcNMDQwMTAxMDAwMDAw
WhcNMjgxMjMxMjM1OTU5WjB7MQswCQYDVQQGEwJHQjEbMBkGA1UECAwSR3JlYXRlciBNYW5jaGVz
dGVyMRAwDgYDVQQHDAdTYWxmb3JkMRowGAYDVQQKDBFDb21vZG8gQ0EgTGltaXRlZDEhMB8GA1UE
AwwYQUFBIENlcnRpZmljYXRlIFNlcnZpY2VzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEAvkCd9G7h6naHHE1FRI6+RsiDBp3BKv4YH47kAvrzq11QihYxC5oG0MVwIs1JLVRjzLZuaEYL
U+rLTCTAvHJO6vEVrvRUmhIKw3qyM2Di2olV8yJY897cz++DhqKMlE+faPKYkEaEJ8d2v+PMNSyL
XgdkZYLASLCokflhn3YgUKiRx2a163hiA1bwihoT6jGjHqCZ/Tj29icyWG8H9Wu4+xQrr7eqzNZj
X3OM2gWZqDioyxd4NlGs6Z70eDqNzw/ZQuKYDKsvnw4B3u+fmUnxLd+sdE0bmLVHxeUp0fmQGMdi
nL6DxyZ7Poolx8DdneY1aBAgnY/Y3tLDhJwNXugvyQIDAQABo4HAMIG9MB0GA1UdDgQWBBSgEQoj
PpbxB+zirynvgqV/0DCktDAOBgNVHQ8BAf8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zB7BgNVHR8E
dDByMDigNqA0hjJodHRwOi8vY3JsLmNvbW9kb2NhLmNvbS9BQUFDZXJ0aWZpY2F0ZVNlcnZpY2Vz
LmNybDA2oDSgMoYwaHR0cDovL2NybC5jb21vZG8ubmV0L0FBQUNlcnRpZmljYXRlU2VydmljZXMu
Y3JsMA0GCSqGSIb3DQEBBQUAA4IBAQAIVvwC8Jvo/6T61nvGRIDOT8TF9gBYzKa2vBRJaAR26Obu
XewCD2DWjVAYTyZOAePmsKXuv7x0VEG//fwSuMdPWvSJYAV/YLcFSvP28cK/xLl0hrYtfWvM0vNG
3S/G4GrDwzQDLH2W3VrCDqcKmcEFi6sML/NcOs9sN1UJh95TQGxY7/y2q2VuBPYb3DzgWhXGntnx
WUgwIWUDbOzpIXPsmwOh4DetoBUYj/q6As6nLKkQEyzU5QgmqyKXYPiQXnTUoppTvfKpaOCibsLX
bLGjD56/62jnVvKu8uMrODoJgbVrhde+Le0/GreyY+L1YiyC1GoAQVDxOYOflek2lphuMIIFgTCC
BGmgAwIBAgIQOXJEOvkit1HX02wQ3TE1lTANBgkqhkiG9w0BAQwFADB7MQswCQYDVQQGEwJHQjEb
MBkGA1UECAwSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHDAdTYWxmb3JkMRowGAYDVQQKDBFD
b21vZG8gQ0EgTGltaXRlZDEhMB8GA1UEAwwYQUFBIENlcnRpZmljYXRlIFNlcnZpY2VzMB4XDTE5
MDMxMjAwMDAwMFoXDTI4MTIzMTIzNTk1OVowgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpOZXcg
SmVyc2V5MRQwEgYDVQQHEwtKZXJzZXkgQ2l0eTEeMBwGA1UEChMVVGhlIFVTRVJUUlVTVCBOZXR3
b3JrMS4wLAYDVQQDEyVVU0VSVHJ1c3QgUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjAN
BgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAgBJlFzYOw9sIs9CsVw127c0n00ytUINh4qogTQkt
ZAnczomfzD2p7PbPwdzx07HWezcoEStH2jnGvDoZtF+mvX2do2NCtnbyqTsrkfjib9DsFiCQCT7i
6HTJGLSR1GJk23+jBvGIGGqQIjy8/hPwhxR79uQfjtTkUcYRZ0YIUcuGFFQ/vDP+fmyc/xadGL1R
jjWmp2bIcmfbIWax1Jt4A8BQOujM8Ny8nkz+rwWWNR9XWrf/zvk9tyy29lTdyOcSOk2uTIq3XJq0
tyA9yn8iNK5+O2hmAUTnAU5GU5szYPeUvlM3kHND8zLDU+/bqv50TmnHa4xgk97Exwzf4TKuzJM7
UXiVZ4vuPVb+DNBpDxsP8yUmazNt925H+nND5X4OpWaxKXwyhGNVicQNwZNUMBkTrNN9N6frXTps
NVzbQdcS2qlJC9/YgIoJk2KOtWbPJYjNhLixP6Q5D9kCnusSTJV882sFqV4Wg8y4Z+LoE53MW4LT
TLPtW//e5XOsIzstAL81VXQJSdhJWBp/kjbmUZIO8yZ9HE0XvMnsQybQv0FfQKlERPSZ51eHnlAf
V1SoPv10Yy+xUGUJ5lhCLkMaTLTwJUdZ+gQek9QmRkpQgbLevni3/GcV4clXhB4PY9bpYrrWX1Uu
6lzGKAgEJTm4Diup8kyXHAc/DVL17e8vgg8CAwEAAaOB8jCB7zAfBgNVHSMEGDAWgBSgEQojPpbx
B+zirynvgqV/0DCktDAdBgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/BAQD
AgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEMGA1UdHwQ8MDowOKA2oDSG
Mmh0dHA6Ly9jcmwuY29tb2RvY2EuY29tL0FBQUNlcnRpZmljYXRlU2VydmljZXMuY3JsMDQGCCsG
AQUFBwEBBCgwJjAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMA0GCSqGSIb3
DQEBDAUAA4IBAQAYh1HcdCE9nIrgJ7cz0C7M7PDmy14R3iJvm3WOnnL+5Nb+qh+cli3vA0p+rvSN
b3I8QzvAP+u431yqqcau8vzY7qN7Q/aGNnwU4M309z/+3ri0ivCRlv79Q2R+/czSAaF9ffgZGclC
KxO/WIu6pKJmBHaIkU4MiRTOok3JMrO66BQavHHxW/BBC5gACiIDEOUMsfnNkjcZ7Tvx5Dq2+UUT
JnWvu6rvP3t3O9LEApE9GQDTF1w52z97GA1FzZOFli9d31kWTz9RvdVFGD/tSo7oBmF0Ixa1DVBz
J0RHfxBdiSprhTEUxOipakyAvGp4z7h/jnZymQyd/teRCBaho1+VMIIGUzCCBDugAwIBAgIQWJ2S
/KZUeADneTsJyKF/gjANBgkqhkiG9w0BAQwFADBGMQswCQYDVQQGEwJOTDEZMBcGA1UEChMQR0VB
TlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQgUGVyc29uYWwgQ0EgNDAeFw0yMzA3MDUwMDAw
MDBaFw0yNjA3MDQyMzU5NTlaMIHaMQ4wDAYDVQQREwU1MTE0NzE/MD0GA1UEChM2RGV1dHNjaGVz
IFplbnRydW0gZnVlciBMdWZ0LSB1bmQgUmF1bWZhaHJ0IGUuIFYuIChETFIpMRUwEwYDVQQJDAxM
aW5kZXIgSMO2aGUxHDAaBgNVBAgTE05vcmRyaGVpbi1XZXN0ZmFsZW4xCzAJBgNVBAYTAkRFMRsw
GQYDVQQDExJFbWFudWVsIFN0YXVkaW5nZXIxKDAmBgkqhkiG9w0BCQEWGWVtYW51ZWwuc3RhdWRp
bmdlckBkbHIuZGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC9wweGMAK1stcqpYgq
eyk08bxPJanz7E7J/Eg95AcC/nxEJKRot/Kx7F/rgTvMPEgEMeYXN+af/laeL6M8QJ448QSyhBVI
IPGdhSeSKqAnzhWTXycfS3VTNktPzSWgleQ0OYLHCQsmcJ85gqiCLKZ8WpIVvL0ZHzpkGyKOVv5N
ySXNwTZMBgxuFzaGWIbkklH3UxC986Dt978bkmW01AVP7l5HakfiKIPGyLWC7fFXv+KivOnVq6Al
616698kkm1N14xj1QKKP5SKhyrvt1M4Eu6ixIgZ7qZhtzu034fMP4nkRGcOB4jA5lM7EmZ1nS7FW
Kbokd6we4Q1AOKj489mbAgMBAAGjggGmMIIBojAfBgNVHSMEGDAWgBRpAKHHIVj44MUbILAK3adR
vxPZ5DAdBgNVHQ4EFgQU2uBLMRcrMQOMDx6VZbidaZe61CowDgYDVR0PAQH/BAQDAgWgMAwGA1Ud
EwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwQGCCsGAQUFBwMCMD8GA1UdIAQ4MDYwNAYLKwYB
BAGyMQECAk8wJTAjBggrBgEFBQcCARYXaHR0cHM6Ly9zZWN0aWdvLmNvbS9DUFMwQgYDVR0fBDsw
OTA3oDWgM4YxaHR0cDovL0dFQU5ULmNybC5zZWN0aWdvLmNvbS9HRUFOVFBlcnNvbmFsQ0E0LmNy
bDB4BggrBgEFBQcBAQRsMGowPQYIKwYBBQUHMAKGMWh0dHA6Ly9HRUFOVC5jcnQuc2VjdGlnby5j
b20vR0VBTlRQZXJzb25hbENBNC5jcnQwKQYIKwYBBQUHMAGGHWh0dHA6Ly9HRUFOVC5vY3NwLnNl
Y3RpZ28uY29tMCQGA1UdEQQdMBuBGWVtYW51ZWwuc3RhdWRpbmdlckBkbHIuZGUwDQYJKoZIhvcN
AQEMBQADggIBAJQ6XKBsngMXzx+q0l6A1//lvtftrgrdUayM9XZ4XSI+VQ1NY4z+3020HjKJ6hJT
Ef9zkOiEbJhm9dDIuPm7/lQu5hE7BtYHgv6HdbYQ4epKWM4qDB89v148jJx1rsJ4AIHO6yDPafah
P6GViL05g5V9go2p+7Inn55wpVl/bJCADGZ9T58zgxul4BrxpoztT2XUijQaRQoI/qWOZy3pPc9O
RoU57F/BRaGD/+cnZjF+zP1Uijm61HS5EGqwK7BkaOedStUWnlzvQjPuN2HMuwV3RsMLyvfh+UcS
Si88NSg3aK8oWn2qwhOyqXhYEpjJVZNVycVGHB2h77QiC+GZF5eNY/JaaQtVDz14QJS0O4OkPagS
0RiEe+s1W1mBOFiYOf16dvLqjo4aJ+TJwwWO02Ka2Eio65SKyh4MOGqq2sqv2BOwC7QB99ZOQEGC
HeRONbF7qgGz+5hta2NH6oIJPLecBYccSGv9EAFaol7jGge0TS+PVAca0gSsni3DEVWq1zVgSkn5
7ZpRAXayd5N+a4UIWuwGg5M9GVVn916DzO8N03+jSMkYrT+K+fYacHInoljejtXDnVXW+jSpOyvg
zs69Lct8q+2vq80q7usP0INmJQOxDXeckjn+HGXa+VcsNwaNoFDwDnhF0wTSDz9wI+h1osh1XJbP
V/pfBsuQt4H5MIIG5jCCBM6gAwIBAgIQMQJw1DW+mySa+FbQ4eKFSTANBgkqhkiG9w0BAQwFADCB
iDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcTC0plcnNleSBDaXR5
MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMTJVVTRVJUcnVzdCBSU0Eg
Q2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMjAwMjE4MDAwMDAwWhcNMzMwNTAxMjM1OTU5WjBG
MQswCQYDVQQGEwJOTDEZMBcGA1UEChMQR0VBTlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQg
UGVyc29uYWwgQ0EgNDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBALNK4iJeJ1vpBFsU
BDUyIBSutNIxQMbNUMAeoUTKr55KYX8tkN5imzNqLaRCypYBPP9wED2AaO6e8njkbjzJwLgPqDBk
W9sG3kmi3GW6cF4Hwr5ysZqve/5EJDhV+9OhfTu/4dMnoR4Q41HcjMk9MzLOADAQ0awBZ/29r0d4
9AUmIKELNeqEqmnTN6fndL7x/2K0TLToZLxqS7sy/Jvi0wEFr0CfdjcAsioh7KaD+Jizyb1aRKQz
J6Q20VEHX7UqWc1SkzTkbz6xj0S5ydBBFQh0fNiy+qM/deVpK4HgmPSJrrpQZ+LlbHfWabmwoDPx
F71QZVYiqrrAoUrGRJ+47iLBiIg8miIYS7Hd2ppvAUt24CugMXUjETjQ+oYh09fNi5n/AvoER8UB
vTHLxt+blL0bvL+2z2YiUWk+2Qtn+dD+JU5Z2y71qV7+cr+4YXjvGzF5bYsi8HiwflTb4Php3y+k
1twKtchdcq2QGc0eDG6Y01nRHUiyr8/PtMAsLHEPNZ2wzsA7fb8mftHiV20ZFmYqknJ8AIOfwdTV
A+E62JayOJ+sxadqcmFDorsz/mrPwGZ8+txr4xSuvVjg0dlv0yuA+1YpBDIYNfL4bkX+IcZ1mTst
L4Xw0f4N2iW3bBmnPnYmoYxMM8gflCiTgss73nBvG2f7v1PD7BDGYNO4iD4vAgMBAAGjggGLMIIB
hzAfBgNVHSMEGDAWgBRTeb9aqitKz1SA4dibwJ3ysgNmyzAdBgNVHQ4EFgQUaQChxyFY+ODFGyCw
Ct2nUb8T2eQwDgYDVR0PAQH/BAQDAgGGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0lBBYwFAYI
KwYBBQUHAwIGCCsGAQUFBwMEMDgGA1UdIAQxMC8wLQYEVR0gADAlMCMGCCsGAQUFBwIBFhdodHRw
czovL3NlY3RpZ28uY29tL0NQUzBQBgNVHR8ESTBHMEWgQ6BBhj9odHRwOi8vY3JsLnVzZXJ0cnVz
dC5jb20vVVNFUlRydXN0UlNBQ2VydGlmaWNhdGlvbkF1dGhvcml0eS5jcmwwdgYIKwYBBQUHAQEE
ajBoMD8GCCsGAQUFBzAChjNodHRwOi8vY3J0LnVzZXJ0cnVzdC5jb20vVVNFUlRydXN0UlNBQWRk
VHJ1c3RDQS5jcnQwJQYIKwYBBQUHMAGGGWh0dHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZI
hvcNAQEMBQADggIBAAoFTnsNjx8TOQD9b+xixsPt7Req4wHMeNw/R5dddEPgQAQAYJZKz5BEv1cj
GbH7nbPH3AxrxhN6OVH40p6OLIo9MXSrrfMzGs7/P+FTCjwgNxFEtLQ1KC9NboA3asJcl7mIs3l8
h9iAgEH1zLUvq2s+5n++NQmbzudDsTFDMapY3kX1TwyUCTRzmItqcbsYIyg2MeIXWfRtqPqC5R4b
ufmpzA5BPINLX340Sp/CNQ9QZqw3VkfyHWwTo+vO9Gm2L6srNamJT6Lb+TeXZvl8UPL5a72O/pH0
GgGHjt6z9QzPARnaRKshVWviNK6ST4WmZHllu3CJg0BXqx1vWyswawgvNeWt1qxITacYe9mSWTbN
R2CftvTUwerruDSY2jMaZPoNqbjUpuG/blYwWzzvVerBUhviAahPXJF/9V48ybWPBq6qKOEokW+s
3B4ad5sY96KlovEijaIQDip1HO0SD+rLNYaiBcr9MV2aK+DfbZ8w9BaNCQyFEYwzxIKOVk3bYvzH
Rk5ihUDascmbk/bkiNl74c/KfuKQmJImaqWoWZR6jBcXcPV0WUIKz/nILTpFhGojZEQW77by3aez
Ai9jrEIUBHRG1LwzPbJc2V3SOzYyaJFQatzuKZbN1Q9s9y/2x1QXtKwREY8jNgvx0iIfOK35gKgY
JJcyDql4XfuEc2nVMYIDYDCCA1wCAQEwWjBGMQswCQYDVQQGEwJOTDEZMBcGA1UEChMQR0VBTlQg
VmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQgUGVyc29uYWwgQ0EgNAIQWJ2S/KZUeADneTsJyKF/
gjANBglghkgBZQMEAgEFAKCCAdcwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjYwMjI1MDg1MjA4WjAvBgkqhkiG9w0BCQQxIgQgIyCfhQiemei6fr/i3gquapPzIeOJ
mUP26wYw5R5nMbUwaQYJKwYBBAGCNxAEMVwwWjBGMQswCQYDVQQGEwJOTDEZMBcGA1UEChMQR0VB
TlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQgUGVyc29uYWwgQ0EgNAIQWJ2S/KZUeADneTsJ
yKF/gjBrBgsqhkiG9w0BCRACCzFcoFowRjELMAkGA1UEBhMCTkwxGTAXBgNVBAoTEEdFQU5UIFZl
cmVuaWdpbmcxHDAaBgNVBAMTE0dFQU5UIFBlcnNvbmFsIENBIDQCEFidkvymVHgA53k7Ccihf4Iw
gZMGCSqGSIb3DQEJDzGBhTCBgjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMH
MAsGCWCGSAFlAwQBAjAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAwCwYJYIZIAWUDBAIB
MAsGCWCGSAFlAwQCAzALBglghkgBZQMEAgIwBwYFKw4DAhowDQYJKoZIhvcNAQEBBQAEggEAQ9nV
2vov0U3mYgmeeF8vYOeZWWzZI6JaSWgeu7mNfgU/iT3bLxIs9p417BPYsucG2bMj6+ikJMnS9pIc
WQ6CTmemwFjXpTQ/MzAU51nfg35UG2+t6Kydw6dqMs1PFnjPkUw47WS8QeH8Fmh4jkbH5WH+mUKB
XdUScSBIgB941Dkn8EYpfmHeiX5QnV7NLr04bmv1WdHAurldQpWxkHzDFaVE9J0Ji3zgJlzmeorz
6tjG1JXcA9MdQwVpDbqZxMYKyglalU7be8pqnyBC0H7ob5MmJ4q7dpZgRgvWKpuLgWiPan12S8ym
dDymzjv05HWkr42M1jP1IGJB4KS18nPAuAAAAAAAAA==

------=_NextPart_000_0085_01DCA63C.67E82D30--

--===============0907365796450907498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0907365796450907498==--
