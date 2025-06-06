Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C49B9AD0749
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jun 2025 19:17:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92BBB3860F8
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jun 2025 13:17:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749230255; bh=jArfzKcpRHjb+9IBSSXQ0rSJhsoTMiysr8Wz+SjYZFA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CJOptj00rDi5qq/ACGxtPwFyALvCos4r7Ly08mc3QA50F86trcIEjzEx5n3UcjQSs
	 JGl7d1W8d38hNdJNgLdnh15WguhJ6cxg145CyylJr0oI3rLH8f51GW0paBFe0+mFPT
	 BUPzIMV0AK+TJrVU5d/SDyRSV7HHymQBwrNdZpkY93vvVHppYeIon9deB0fVK2x7uw
	 +zpr+roQpH3kI76cY5lh0DLnWXMZRYLA5GVg9MewAABZwU95NSoUq/ahBvuh6VcAKw
	 a78m1jz9JI3wH5yB2FgjujMLFt3tMordMMdkQZyg50okBXdtDjmKkZ5CtCQPX58AVE
	 //RkUvny68OXw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEA63385D42
	for <usrp-users@lists.ettus.com>; Fri,  6 Jun 2025 13:16:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749230202; bh=JPzX4LKx7G4QVceA3qZA5+UfOvfajJUYWsp+X279scY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=O/2W8C4OQX+xvf0N8bSGyFP/oAPb6ZaoDgdlmj93EzYW7A/tjgQIb2uxwLmKsqGMV
	 9BVC4QAuhpPc6hCLiass9I4IxulS3sLJZ21899PvRM4m9c3VaLvfTS6BXR2nQEumgG
	 AGxAZ1XfpIkjoq5WvoZ/eY3iiQRAECebV/tSiAOdKoHm3JU+m9Kn5jvQFC+85I5Dac
	 Yo4MVPvuJErifOc++0g/2hZTYqbsApluNq2o68FST0dmyEqwcmLyi31dueQqJOyyT8
	 oE7lbS1noCQS1AvMj5oSJH3mRIyVPTF++QJKO1HTp6ScuqLZ94IuI66cB6kGO+J73C
	 dpvXm/T7Tunrw==
Date: Fri, 6 Jun 2025 17:16:41 +0000
To: usrp-users@lists.ettus.com
From: tommytsui@w5tech.com
Message-ID: <F8NNTcFqChdp6kWbY8HHDsKMzpXRa7IzpoRjnHgTFbI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4mr9s2zjA0R+tYWweaCw-_wp_R_aaKHs9-P8QUUWp84g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: T7BNK7LQKO67AEUOGW7MWZPY4W2DPG6Y
X-Message-ID-Hash: T7BNK7LQKO67AEUOGW7MWZPY4W2DPG6Y
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T7BNK7LQKO67AEUOGW7MWZPY4W2DPG6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7211234464455842170=="

This is a multi-part message in MIME format.

--===============7211234464455842170==
Content-Type: multipart/alternative;
 boundary="b1_F8NNTcFqChdp6kWbY8HHDsKMzpXRa7IzpoRjnHgTFbI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_F8NNTcFqChdp6kWbY8HHDsKMzpXRa7IzpoRjnHgTFbI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Once again thank you so much for your prompt and detail response.  To ans=
wer your =E2=80=9Cdirect frequency conversion=E2=80=9D question, I like t=
o point out the hardware architecture of UBX-40, the daughter card that w=
e recently switched to because the old model WBX-40 is out of production.=
 I have been evaluating UBX40 to see how it performs compared to WBX40. T=
he UBX40 block diagram shown on website: [UBX 10-6000 MHz Rx/Tx (40 MHz, =
N Series and X Series) | Ettus Research, a National Instruments Brand | T=
he leader in Software Defined Radio (SDR)](https://www.ettus.com/all-prod=
ucts/ubx40/)

The UBX-40 card uses direct frequency conversion or heterodyne conversion=
 depending on the target Rx or Tx frequency. I thought when direct freque=
ncy conversion is used, that is, when the Rx or Tx frequency is above 500=
MHz, no LO is involved. When the Rx or Tx frequency is below 500MHz, a he=
terodyne conversion is used (aka with a LO).=20

The UBX-40 block diagram shows that there are two REF input sources, one =
on the RF front end when the Rx or Tx frequency is below 500MHz, another =
on the ADC I&Q output. I could be wrong assuming the REF used for the RF =
front end is the LO. So please bear with me and correct me if I am wrong.

The main reason I scrutinized the cal tool is because UBX40 produces less=
 than ideal performance compared to WBX40. When I ran a test application =
on X310 + UBX40 versus the same X310 + WBX40, UBX40 produced below accept=
able WCDMA constellation at the transmitter output. The test ran on the s=
ame environment except the daughter card being swapped. The cal files for=
 UBX40 were generated similar to that of WBX40 without tx_offset and rx_o=
ffset specified. It is a perplexing issue at this point.

Tom

--b1_F8NNTcFqChdp6kWbY8HHDsKMzpXRa7IzpoRjnHgTFbI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Once again thank you so much for your prompt and detail=
 response.  To answer your =E2=80=9Cdirect frequency conversion=E2=80=9D qu=
estion, I like to point out the hardware architecture of UBX-40, the daught=
er card that we recently switched to because the old model WBX-40 is out of=
 production. I have been evaluating UBX40 to see how it performs compared t=
o WBX40. The UBX40 block diagram shown on website: <a href=3D"https://www.e=
ttus.com/all-products/ubx40/">UBX 10-6000 MHz Rx/Tx (40 MHz, N Series and X=
 Series) | Ettus Research, a National Instruments Brand | The leader in Sof=
tware Defined Radio (SDR)</a></p><p>The UBX-40 card uses direct frequency c=
onversion or heterodyne conversion depending on the target Rx or Tx frequen=
cy. I thought when direct frequency conversion is used, that is, when the R=
x or Tx frequency is above 500MHz, no LO is involved. When the Rx or Tx fre=
quency is below 500MHz, a heterodyne conversion is used (aka with a LO). </=
p><p>The UBX-40 block diagram shows that there are two REF input sources, o=
ne on the RF front end when the Rx or Tx frequency is below 500MHz, another=
 on the ADC I&amp;Q output. I could be wrong assuming the REF used for the =
RF front end is the LO. So please bear with me and correct me if I am wrong=
.</p><p>The main reason I scrutinized the cal tool is because UBX40 produce=
s less than ideal performance compared to WBX40. When I ran a test applicat=
ion on X310 + UBX40 versus the same X310 + WBX40, UBX40 produced below acce=
ptable WCDMA constellation at the transmitter output. The test ran on the s=
ame environment except the daughter card being swapped. The cal files for U=
BX40 were generated similar to that of WBX40 without tx_offset and rx_offse=
t specified. It is a perplexing issue at this point.</p><p><br></p><p>Tom</=
p>

--b1_F8NNTcFqChdp6kWbY8HHDsKMzpXRa7IzpoRjnHgTFbI--

--===============7211234464455842170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7211234464455842170==--
