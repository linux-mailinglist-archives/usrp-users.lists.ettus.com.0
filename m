Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFCC5FBC01
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 22:25:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 377373812B7
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 16:25:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665519911; bh=4GbUzQfCRfebyyW4TGDpTh0vCMHUK+IwvavV5aytX9k=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=nDkjxlMqEborQJxFDd4j8ss+29vIvfm+eih0kRVT1daeY31buBmk7Sj5Rjhop6URn
	 6fJKfMf8BgGRueHOHm0WVFX+KFDifCI+elvJKVTO75chsAGBNuD8QlfsVm2ZjcFxIH
	 E/sF7oF1+AATBUAVMA7DrE0SOv8rphul4CAngTc3YpbuLFVcMCCJXwePvb7Gvpu8Uk
	 CTZ5NElUtguQxoZw3fgLNpKdhU1dzgjSxUmoo+x1lBMn6PbqmDn/1t08yE51+7kwzb
	 jEq3GVgP/rwQpuG9OvdP7PXXRZuJ5l8FT7eBiEpXxGsbHS92u3NO+kuLoT52MUziu5
	 b+AXwFVkJDYCw==
Received: from sonic306-2.consmr.mail.bf2.yahoo.com (sonic306-2.consmr.mail.bf2.yahoo.com [74.6.132.41])
	by mm2.emwd.com (Postfix) with ESMTPS id DE0E3380B27
	for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 16:23:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="NjPVaO9t";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665519835; bh=uTmHlXpEeiX/PuoOzHDbjgnO+2BUg6AADnRQVz64p4I=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=NjPVaO9tHueOd3AH4HJ2ke7ezRQRP5//Hmu4FAUtbtpIVBUPTOlQXIpnIRZXfvtibXOWaGdm28+qSfwKzVfKsEkfkt+T2pHC8lrVk0MrK5cBWztEfCxtp/btE7O7RdASN3akMDjS4XyrxG1NwngiH/jtdLOYLtN0JdzYi1aZEFdHfFv2mTuLT6RF81COnBjgtdh4IYC/wG8bh9ywE79pL7Sq5WO4pjLLnhFjNm5iwb97O3+M+cpNInmlD3KqoravUtmt3Hu/Ez7934iXLoOWEHWmMm7/sxrkJH460P3CSvQlhmqSCkohZIbEMOGLxofk7XvhJisfJWRjfXhkxpjRhA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665519835; bh=K8C2aDZI6FWd6mDm5nbFwsRWE6rRVsxHRDRozn8smka=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=EHVK0b5GhHQirBFsxMf1cl//nAuqn7u4WYu03JWHYSlViHSeXqQxwab/KseScs1M7Din//GJNdzqB6dTBAZtpErTBQqvmKD9HyaDp0cT6xBr1h13Qv+Y5t+dvqi0+TQKP9vgu3MZjH3DWftLrj5wTCpbqSZpZQIyZl9s03TO7OJZBJxSJaNd8BJmZv6bcVhWJhjxa9lv1ldaJn2SPV+mahEjdPvWMVIR4QzP8g97FVjdCMzjNWKtSjPxJfSP3qzyHo9hPOo3+6fs/7snoN+QFCxizrMNQVfqTZkGaciunyvoHfnwrDdsCHvkGLWPApgmAE3oB6zYeDX8SOGPUKaXvw==
X-YMail-OSG: .JV2fnwVM1mQjhBJy1.klyKzjpjkQhtVGzecAd0Ns57e68zZqNG6cYFqh322RGU
 CqcFe0CxuysCJRTMC7C3Y0Y5n8cJUuMjKHcx19k18U39hem.AOX5LQ_Xa4NzUCrsOSTsxQ3IaZVf
 peemlazzfemAajo3QhAK5KI_TIkRSl36syYaeyaEUNiO1rEwzKo0YtqpzTAEqVn5TnmJJNxW5nd8
 IUoIxt75oiG40lVJJB6xGuoDOv.qQDGpoHmH4dGDwhv2nmhrtx9nEimCV2oXW1ZqPsnJCUtZQ0QJ
 47rFhOjLQK5qt79CN9NPrO5Jd5oe5PEZXs65EIAefE0Td2tx2_ei69GO9D50igUO8N1dVFH_c6Qn
 NfMlRqRll3HUj1YSdIwA_J2RHtl95lmAZ172hJMf_O4qBgrmn3djyleEmb8FCk1fDWI_RZ3zWtz4
 EgJr4DhLGusZgcXywD38xIwaGinAkzsTdaypHmCTfJl9MVf2EJIYLhTcmpHkSQslqvzXWf0WnvTM
 G8xRjJ29BO7mk.4P3XApMbdcx8BYitYC8Vd8Szx8_zsdlimSqHzv1nVCkMq7kNIhWFGeTSZ8m8Oe
 gB18Iz8qdnrliM5LtdQKu3q1CHkEWlWSg7LNbIzb5Gho6FMAywfm99NbH51kevLyvH7Bg4lyr.GP
 3Gi6cqa3tcUcUtEr.1hUfE9vLRO_nwWhFLlogK0NlUQDOc7HFLQaz.b.8aaskzzl0aP27RstAaqg
 TPBA.SZoKefrqx_5cKSshznwgLQ3wURbFtm2kPCicSp71aZmSQcPXkhwvkZ0Dy_kMwgwonU7G2Kw
 fV8wGDa6UTaqVLk0xaP.3BHZva3oD4RrkdwkRmAJGgzDS8DF088yHXXdqdjjzb1SHT_NgBdzj1kF
 jqkIzg3UQpwLpF6ZwZg18UGf.p5whBKytfm9Dqw2gUFc7QpxiyH0w5YOVbfvaNGjVUC4xu8AzmTt
 3urZ_T.6Zl2GsWcVbXUApoIz9A_hrvzIdhElE3JJLqwVHoZYGSut4_gwYKgTbsFiRuxQ3VBNH.vp
 pjbAw2dSqUriIy4eXVEGC0bJTFgJudMRZTzceVIwyOupfBYOZ9I0SFzxjI.nESMvAyF1PgWoUooB
 Tpy_SrlSOOF8IVcXlOcYLLriNUUmdAGg66mNvFCQgkGNK4S8Zung9_myOlFugIkqVWXJqg7CaQ.y
 zaT6i2HRAti1dZm1ePvyW4q3ljaJ8wJ53HS6_lZxMC9dhDj.glYejh6wTj7RaeRXab5LyyRR3Daq
 95hVIJigGtSCQ9jaEABmCtZFMMAcWf6KV8F.673lPsZfWRvvEAyJVDeAKbHO3skvVyGawtWyvTvJ
 Mqt9JamcFDChyH6Av_4E6RYIPR1hU.vR7HZHr2urO4oif3HbGMjWkrRfCuzuZZ659FGbeWvR4ziC
 MUvxDnlVJxvtv4pXBcpoI1GqkkMkycbg3pruhPmoinqDoTfYrHfIOrvnVIJb.oI80QvK53oFznui
 _oBTMiVS2ipiEhZUu8Jd8CH8p_SbW.rAETrKob6IPyebuqvHnv.Z3tTEoHJIX_k4oHopdN3A7RB9
 uBqq4uuunZcJ7p5QAqeJEJpOQfkWbDHskj8PxyWxrH8XfUhycGwaw1MkDSUgyRaFZAPU2FLKFQBH
 evYlkeLLfONxKmonMylLOqOWFl9gFLgpHKaJI4kc73vPKS.VGiH4CkP8iftDmvYRWdh2q.WbGl9h
 dk_D020v6V9rsOHRUFGg8nzc606VW4Nnu_la0YIB_rTgxz94vwujnPHRQABiNolHcgXHm_VFpZjF
 h9Z.G5Mb2CbX51Y39eODOEjsRg9cJw3gKoogmlpRWAKOKOwy3bGAiN1sLlFFV14IZRLse9uurfrL
 01iZUsrQU5PXkaF_M78cFF_lALpeDiUwWFV58Wp9udWOAiZAjk71QAZGP.9ZTu2dbNbE59uMCIll
 773CCcVfmvw0Ro.v6cyByAVr.LmKzJYRMYJJkRlfZsYXlGLwyqStENOKFyYYQTOZlcKJ4AvHwU3R
 .D4yXmTCmXsp1aA_qnsfrhWAqHrgx5DRZBoEFx2m1WbUNlJ3h6FV7etbLnEXoBB3HneSsX_4cJQ0
 DM5XVRilgp4KChJZkNFfQoI6zgJ7x1kPcfzsEc8_AFXye_o4Oimx3r86THB.PtTya4QchqYehwxp
 nf87k5n44rmZiDXmqhbTnXET4APq63S2yuhVrdCu2mGkrpjL32cSyYTrMraQPvf3svfij9e2uLwM
 rjAEke9qwjnNM7bg2ghnCuoBkXUKtpgSPPLSLU03I
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Tue, 11 Oct 2022 20:23:55 +0000
Date: Tue, 11 Oct 2022 20:23:38 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <776005769.270285.1665519818410@mail.yahoo.com>
In-Reply-To: <83a99c67-3c6a-869b-bcdd-b0ef258cf240@gmail.com>
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com> <1567317201.188112.1665504920071@mail.yahoo.com> <83a99c67-3c6a-869b-bcdd-b0ef258cf240@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20740 YMailNorrin
Message-ID-Hash: 7FQGY5XRR47IJDXSK52CHHLB6SMAQQ7I
X-Message-ID-Hash: 7FQGY5XRR47IJDXSK52CHHLB6SMAQQ7I
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7FQGY5XRR47IJDXSK52CHHLB6SMAQQ7I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3846458132583358421=="

--===============3846458132583358421==
Content-Type: multipart/alternative;
	boundary="----=_Part_270284_163924209.1665519818407"

------=_Part_270284_163924209.1665519818407
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks Marcus. Yes, I use the get_time_now function to read time inside US=
RPs.
I also think the newer UHD versions should be better, but the measurements =
tell differently. The queries to USRPs are sequential.There are 16 USRPs us=
ing UHD 4.1.0. I query them sequentially and the time intervals one example=
 is as follows (unit: ms):
| 1.683691 |
| 1.606288 |
| 1.629145 |
| 1.790804 |
| 1.685894 |
| 1.736507 |
| 1.471674 |
| 1.424962 |
| 1.460004 |
| 1.403206 |
| 1.435221 |
| 1.394569 |
| 2.043707 |
| 1.509543 |
| 1.853792 |


In old system, 24 USRPs use UHD 3.10. The time intervals in one example is =
(unit: ms):
| 0.385173 |
| 0.296745 |
| 0.284212 |
| 0.273682 |
| 0.278543 |
| 0.274327 |
| 0.279519 |
| 0.274441 |
| 0.276693 |
| 0.296875 |
| 0.275212 |
| 0.307623 |
| 0.309554 |
| 0.28233 |
| 0.28234 |
| 0.275119 |
| 0.283057 |
| 0.277138 |
| 0.279357 |
| 0.276074 |
| 0.277696 |
| 0.276335 |
| 0.280675 |



Though there is some variance in intervals in both systems, the difference =
between old and new systems are significant and reliable.Could you please p=
ass my case to the R&D team to confirm?
Thanks,Hongwei=C2=A0

    On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech <patchvonb=
raun@gmail.com> wrote: =20
=20
  On 2022-10-11 12:15, zhou via USRP-users wrote:
 =20
=20
 Hi,=20
  Some of our USRPs are using UHD 3.10 because they are in old systems. and=
 I am also using UHD 4.1.0 in some other USRPs in new system. The USRP prod=
ucts are all NI USRP 2944 (X310). In my applications, I need to use PPS sig=
nal to synchronize multiple USRPs. After applying PPS signals, I read back =
the time in USRPs one by one. Because of network delay, there is some diffe=
rence between the readings. However, the difference is much bigger in UHD 4=
.1.0.=C2=A0=20
  The interval between two USRPs using UHD 3.10 is about 0.2ms while it is =
about 1.4ms in UHD 4.1.0=20
  Does this mean that UHD 4.1.0 is slower than UHD 3.10?=20
  Thanks for any suggestion,=20
  =C2=A0Hongwei
 =20
 =20
  =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 When you say "read back the time", you're presumably using "get_time_now()=
", which is nearly-guaranteed to return different
 =C2=A0 results from different USRPs queried serially, since it's returning=
 a *snapshot* of the time-of-day-clock in each USRP, and if
 =C2=A0 you're querying them serially, there'll be some unpredictable-but-b=
ounded time for each of those transactions to complete.
=20
 It's unlikely that UHD 4.1 has significant performance regressions compare=
d to UHD 3.10, but UHD 3.10 is old, and things
 =C2=A0 like command-packet handling may be quite different between those t=
wo versions.
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_270284_163924209.1665519818407
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpef891c61yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Thanks Marcus. Yes, I use the get_time_now function to read time inside USRPs.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I also think the newer UHD versions should be better, but the measurements tell differently. The queries to USRPs are sequential.</div><div dir="ltr" data-setdir="false">There are 16 USRPs using UHD 4.1.0. I query them sequentially and the time intervals one example is as follows (unit: ms):</div><div dir="ltr" data-setdir="false"><div><table border="0" cellpadding="0" cellspacing="0" width="64" style="border-collapse: collapse;width:48pt">
 <colgroup><col width="64" style="width:48pt">
 </colgroup><tbody><tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" width="64" style="width: 48pt; min-height: 15pt;">1.683691</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.606288</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.629145</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.790804</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.685894</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.736507</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.471674</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.424962</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.460004</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.403206</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.435221</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.394569</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">2.043707</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.509543</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">1.853792</td>
 </tr></tbody></table></div><br></div><div dir="ltr" data-setdir="false">In old system, 24 USRPs use UHD 3.10. The time intervals in one example is (unit: ms):</div><div dir="ltr" data-setdir="false"><div><table border="0" cellpadding="0" cellspacing="0" width="64" style="border-collapse: collapse;width:48pt">
 <colgroup><col width="64" style="width:48pt">
 </colgroup><tbody><tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" width="64" style="width: 48pt; min-height: 15pt;">0.385173</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.296745</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.284212</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.273682</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.278543</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.274327</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.279519</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.274441</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.276693</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.296875</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.275212</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.307623</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.309554</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.28233</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.28234</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.275119</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.283057</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.277138</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.279357</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.276074</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.277696</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.276335</td>
 </tr>
 <tr height="20" style="min-height: 15pt;">
  <td height="20" align="right" style="min-height: 15pt;">0.280675</td>
 </tr></tbody></table></div><br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Though there is some variance in intervals in both systems, the difference between old and new systems are significant and reliable.</div><div dir="ltr" data-setdir="false">Could you please pass my case to the R&amp;D team to confirm?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false">&nbsp;</div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydp2ff4a00eyahoo_quoted_6295737119" class="ydp2ff4a00eyahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydp2ff4a00eyiv9416287177"><div id="ydp2ff4a00eyiv9416287177yqt68152" class="ydp2ff4a00eyiv9416287177yqt5082330473"><div>
    <div class="ydp2ff4a00eyiv9416287177moz-cite-prefix">On 2022-10-11 12:15, zhou via
      USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydp2ff4a00eyiv9416287177ydpf0592c6fyahoo-style-wrap">
        <div dir="ltr">Hi,</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Some of our USRPs are using
          UHD 3.10 because they are in old systems. and I am also using
          UHD 4.1.0 in some other USRPs in new system. The USRP products
          are all NI USRP 2944 (X310).</div>
        <div dir="ltr">In my applications, I need to
          use PPS signal to synchronize multiple USRPs. After applying
          PPS signals, I read back the time in USRPs one by one. Because
          of network delay, there is some difference between the
          readings. However, the difference is much bigger in UHD
          4.1.0.&nbsp;</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">The interval between two
          USRPs using UHD 3.10 is about 0.2ms while it is about 1.4ms in
          UHD 4.1.0</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Does this mean that UHD 4.1.0
          is slower than UHD 3.10?</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Thanks for any suggestion,</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">&nbsp;Hongwei<br clear="none">
        </div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr"><br clear="none">
        </div>
      </div>
      <br clear="none">
      <fieldset class="ydp2ff4a00eyiv9416287177moz-mime-attachment-header"></fieldset>
      <pre class="ydp2ff4a00eyiv9416287177moz-quote-pre">_______________________________________________
USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" class="ydp2ff4a00eyiv9416287177moz-txt-link-abbreviated" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" class="ydp2ff4a00eyiv9416287177moz-txt-link-abbreviated" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    
    When you say "read back the time", you're presumably using
    "get_time_now()", which is nearly-guaranteed to return different<br clear="none">
    &nbsp; results from different USRPs queried serially, since it's
    returning a *snapshot* of the time-of-day-clock in each USRP, and if<br clear="none">
    &nbsp; you're querying them serially, there'll be some
    unpredictable-but-bounded time for each of those transactions to
    complete.<br clear="none">
    <br clear="none">
    It's unlikely that UHD 4.1 has significant performance regressions
    compared to UHD 3.10, but UHD 3.10 is old, and things<br clear="none">
    &nbsp; like command-packet handling may be quite different between those
    two versions.<br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div><div class="ydp2ff4a00eyqt5082330473" id="ydp2ff4a00eyqt54568">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_270284_163924209.1665519818407--

--===============3846458132583358421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3846458132583358421==--
