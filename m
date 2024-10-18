Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E1A9A4292
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 17:36:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3017A385909
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 11:36:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729265772; bh=I07yE1hfLBVg/tPJWGL1wfHTeVUQJ9sM9IEdb7uJ4bA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KuIa4c2b+ltlMbeS3zWjn9F8/pAi3b2xhYnerd8HJeKWviTps985t8Q5t8GG3xe/V
	 fuCMl3eCFjLy7lnt4pvbj+T/dPrMtDhTCxmELX6gFmTkPmM4iRcJD/hFonRuiq/O+i
	 IbJB6JnUGa6xd83dfRSTt92J1+iBPB/s4xFsPIz46qM4zdOyA0DEE6bnkFPOGuOVLQ
	 T2WIvicNbBvTS8UVATUIna9wdgNeB67v2sKBv7/7BXvpDOR3u7NEGPJ9TN1wbVRNdQ
	 +kGnkWsQgc/cuV090m3jvq9+dNXZVGQ8OpEICgI5QgW6PuHYYKaS8FUf5c/KPHXqsL
	 /q7iXIKOJSAQw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFFB838579D
	for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 11:35:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729265732; bh=KXXDFwV6R+gbwODbm6lCJJj0TKTNPyIOE7ABYlISkpA=;
	h=Date:To:From:Subject:From;
	b=sC4f+CGOXZd9jjZ7h0U8eOf9iNC5T28ASbllRADTd1I/jLM4IdzkzNovflPElXV8T
	 sn/LiVNTCjOihzOQ/YEfn43vU/MpXCspXwW1ugMJJT6O949akjDrLNrGk+NApdaf85
	 u/7zVayjX5XKKDgIIFF+s6D+w5Umt60quKI5zAKQgNCSfy1xM3o+NRBktXQssXWXml
	 sDrWon/p5q8aHsIkP+Bu+rkER0mAueroBnE3w+75dtkcI6n9U0WBZHVscF3XGWbyJr
	 +q7jt3U9J3yBRJVq+YaQAKey8BeBbCnmirwTP7wKLbMzy3OtWSUG+8RAfXAmjX5j2Y
	 AMggQQFnFmcBQ==
Date: Fri, 18 Oct 2024 15:35:32 +0000
To: usrp-users@lists.ettus.com
From: je.amghar@gmail.com
Message-ID: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: JI363QIH3JCLYTQGGRX4WQLFHOG5A6ZU
X-Message-ID-Hash: JI363QIH3JCLYTQGGRX4WQLFHOG5A6ZU
X-MailFrom: je.amghar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] ADC saturation problem in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JI363QIH3JCLYTQGGRX4WQLFHOG5A6ZU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5446219768170358388=="

This is a multi-part message in MIME format.

--===============5446219768170358388==
Content-Type: multipart/alternative;
 boundary="b1_cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello, \
\
I am currently facing an issue with ADC saturation on a USRP X310 equippe=
d with a UBX daughterboard. We are conducting measurements using an LTE s=
ignal and a sinusoidal input signal, but it seems that the ADC is saturat=
ing, leading to a loss of dynamic range in our measurements.

Test context: \
We are transmitting (using a generator) an LTE signal with a power of -50=
 dBm at a center frequency of 1815 MHz. Then, we add a sinusoidal signal =
at 1865 MHz with a power of -30 dBm. This second, more powerful signal se=
ems to be causing the ADC to saturate, even though we don=E2=80=99t see i=
t directly in the IQ samples due to the digital filtering applied downstr=
eam. \
\
Problem: \
We suspect that the ADC saturation occurs before IQ conversion and is the=
refore masked by the digital filters. This results in a loss of dynamic r=
ange in our measurements, and we feel that adjusting the gain based on th=
e IQ samples may not be reliable. \
\
Question: \
How can this ADC saturation be detected upstream of the IQ processing? Ar=
e there tools or methods to directly monitor the sample values at the out=
put of the ADC in the USRP (before digital filtering) to prevent saturati=
on? \
Do you have any advice for implementing an automatic gain controller (AGC=
) based on reliable saturation indicators? \
We would appreciate any suggestions or experiences in resolving this issu=
e. If you have encountered a similar problem or have ideas on how to addr=
ess it, we would be happy to hear your recommendations.

Thank you very much for your help!

--b1_cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello, <br><br>I am currently facing an issue with ADC saturation on a U=
SRP X310 equipped with a UBX daughterboard. We are conducting measurements =
using an LTE signal and a sinusoidal input signal, but it seems that the AD=
C is saturating, leading to a loss of dynamic range in our measurements.</p=
><p>Test context: <br>We are transmitting (using a generator) an LTE signal=
 with a power of -50 dBm at a center frequency of 1815 MHz. Then, we add a =
sinusoidal signal at 1865 MHz with a power of -30 dBm. This second, more po=
werful signal seems to be causing the ADC to saturate, even though we don=
=E2=80=99t see it directly in the IQ samples due to the digital filtering a=
pplied downstream. <br><br>Problem: <br>We suspect that the ADC saturation =
occurs before IQ conversion and is therefore masked by the digital filters.=
 This results in a loss of dynamic range in our measurements, and we feel t=
hat adjusting the gain based on the IQ samples may not be reliable. <br><br=
>Question: <br>How can this ADC saturation be detected upstream of the IQ p=
rocessing? Are there tools or methods to directly monitor the sample values=
 at the output of the ADC in the USRP (before digital filtering) to prevent=
 saturation? <br>Do you have any advice for implementing an automatic gain =
controller (AGC) based on reliable saturation indicators? <br>We would appr=
eciate any suggestions or experiences in resolving this issue. If you have =
encountered a similar problem or have ideas on how to address it, we would =
be happy to hear your recommendations.</p><p>Thank you very much for your h=
elp!<br><br></p>

--b1_cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw--

--===============5446219768170358388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5446219768170358388==--
