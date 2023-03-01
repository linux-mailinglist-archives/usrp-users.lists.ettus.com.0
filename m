Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C60C6A6E79
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 15:31:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D48F384702
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 09:31:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677681085; bh=nK26zyXiO5FNPvJJZnjnNwMeF4WmTuCluIWwXU919HU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=H9tw4CoIeETMW1Vn77wBC8FzgPzNsvlV1AlSsvdh+XitIIHTEoEIp5LkLPHVVw0Eu
	 MP5hWd2ZFcIAvFUTY59MjYt/fMh5Hf74luibyGYz38CN0wdM3+kOcYOGH3llMY+4LG
	 PNm0dIzZDx2evbawW5+v6+WkPUrbC8KtjJ0ThehQIaBabZ8N99OKbsQ0+17XOimPaO
	 0k/izKZ8BhVJRbvT3zSDAq84wJxope+W37uaKCIkYUHo1F7GnjANewXMcZOkhit6Pz
	 g16OHNh52VNGunn1peuoajNI6M19lHdfGoydOznvxDeQkw8YpVFZUaMkrApsEikpXW
	 DAbDIVrdG3i0w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D35AC3844F6
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 09:30:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677681037; bh=BDNpcAjwJ0sRNYQNu2g+49SQm8fNwDooi/cvR10fxL8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YxP7UYcnOpzc8paIoOTiF73VEiRvnH2zZP2kMaXBI6wU55LpWUgI9vLLIg6pnJwA1
	 Bpmq+Fkxdep1NAvIKEDLVTpY8yQbNG4qVh3AravFqXrX1gYhwz4OKJRSaxwkowBTYm
	 WF62h8yrvSVJQ8VLaDi/vKyyT9eJ8R7VTKbxxbzCmHqN+mM+orl7ot2UYAm+8oSfD4
	 UWMV0r5wj20jpvYCb5Yi3JrPZF1hiL1V8XllszQ1tzvIiQrcQ7qClmrYo+13LbCvfn
	 +cJ2z5aDPJ9NvpSuTAIGNLRqj6tnKBs89L87UjUnnn9pMQE8JtahmZ5FpVmzBeKyQe
	 bCEkXHfJj3glg==
Date: Wed, 1 Mar 2023 14:30:37 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0e4c1eed-8838-8e2d-e8f4-db08ebb73aa1@gmail.com
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA"
Content-Transfer-Encoding: 7bit
Message-ID-Hash: VF7LQBSOEQBGIKHSUB2MMUMDUTRXCGN3
X-Message-ID-Hash: VF7LQBSOEQBGIKHSUB2MMUMDUTRXCGN3
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VF7LQBSOEQBGIKHSUB2MMUMDUTRXCGN3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.

--b1_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA
Content-Type: multipart/alternative;
 boundary="b2_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA"

--b2_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t understand how this happen. Everythings are same, I just =
change USRP.

First, I tried with USRP B200 and the difference between 0 and 180 degree=
 is 3dB.

Then I plug Pico VNA, the difference is zero. Then I plug Nano VNA (It=E2=
=80=99s 50 dollar VNA cheap.) the difference is zero.

I plug my other USRP, It=E2=80=99s B210. The difference is 0,7dB.

Anything changed except USRP.

After of all this I plug USRP B200 again and the difference is 3dB.

When I change the frequency, at some frequencies there is no difference b=
etween 0 and 180 degree. I share with you the data. When horn antenna at =
0 degree ant rotate 180 degree.

--b2_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I don=E2=80=99t understand how this happen. Everythings are same, I ju=
st change USRP.</p><p>First, I tried with USRP B200 and the difference be=
tween 0 and 180 degree is 3dB.</p><p>Then I plug Pico VNA, the difference=
 is zero. Then I plug Nano VNA (It=E2=80=99s 50 dollar VNA cheap.) the di=
fference is zero.</p><p>I plug my other USRP, It=E2=80=99s B210. The diff=
erence is 0,7dB.</p><p>Anything changed except USRP.</p><p>After of all t=
his I plug USRP B200 again and the difference is 3dB.</p><p>When I change=
 the frequency, at some frequencies there is no difference between 0 and =
180 degree. I share with you the data. When horn antenna at 0 degree ant =
rotate 180 degree.</p>


--b2_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA--

--b1_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA
Content-Type: text/plain; name=data.txt
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=data.txt

IyAwIGRlZ3JlZToNCk1heC4gVmFsdWUgYXQgNDAwMS4wIE1IeiA6IC0zMi4zOTQNCk1heC4gVmFs
dWUgYXQgNDAwMi4wIE1IeiA6IC0zMi4zNDMNCk1heC4gVmFsdWUgYXQgNDAwMy4wIE1IeiA6IC0z
Mi4zODANCk1heC4gVmFsdWUgYXQgNDAwNC4wIE1IeiA6IC0zMi40MzENCk1heC4gVmFsdWUgYXQg
NDAwNS4wIE1IeiA6IC0zMi41NTYNCk1heC4gVmFsdWUgYXQgNDAwNi4wIE1IeiA6IC0zMi43NDgN
Ck1heC4gVmFsdWUgYXQgNDAwNy4wIE1IeiA6IC0zMi45MTkNCk1heC4gVmFsdWUgYXQgNDAwOC4w
IE1IeiA6IC0zMy4xNDENCk1heC4gVmFsdWUgYXQgNDAwOS4wIE1IeiA6IC0zMy4zNjYNCk1heC4g
VmFsdWUgYXQgNDAxMC4wIE1IeiA6IC0zMy42MTYNCk1heC4gVmFsdWUgYXQgNDAxMS4wIE1IeiA6
IC0zMy44MzMNCk1heC4gVmFsdWUgYXQgNDAxMi4wIE1IeiA6IC0zNC4wNzMNCk1heC4gVmFsdWUg
YXQgNDAxMy4wIE1IeiA6IC0zNC4zOTENCk1heC4gVmFsdWUgYXQgNDAxNC4wIE1IeiA6IC0zNC43
MTANCk1heC4gVmFsdWUgYXQgNDAxNS4wIE1IeiA6IC0zNS4xMzINCk1heC4gVmFsdWUgYXQgNDAx
Ni4wIE1IeiA6IC0zNS41NTMNCk1heC4gVmFsdWUgYXQgNDAxNy4wIE1IeiA6IC0zNS45NzMNCk1h
eC4gVmFsdWUgYXQgNDAxOC4wIE1IeiA6IC0zNi40MTQNCk1heC4gVmFsdWUgYXQgNDAxOS4wIE1I
eiA6IC0zNi43MjUNCk1heC4gVmFsdWUgYXQgNDAyMC4wIE1IeiA6IC0zNi45NjUNCk1heC4gVmFs
dWUgYXQgNDAyMS4wIE1IeiA6IC0zNy4wNjENCk1heC4gVmFsdWUgYXQgNDAyMi4wIE1IeiA6IC0z
Ny4xNjYNCk1heC4gVmFsdWUgYXQgNDAyMy4wIE1IeiA6IC0zNy4xNTUNCk1heC4gVmFsdWUgYXQg
NDAyNC4wIE1IeiA6IC0zNy4wNzkNCk1heC4gVmFsdWUgYXQgNDAyNS4wIE1IeiA6IC0zNi45ODcN
Ck1heC4gVmFsdWUgYXQgNDAyNi4wIE1IeiA6IC0zNi44MjMNCk1heC4gVmFsdWUgYXQgNDAyNy4w
IE1IeiA6IC0zNi41ODgNCk1heC4gVmFsdWUgYXQgNDAyOC4wIE1IeiA6IC0zNi4zMzkNCk1heC4g
VmFsdWUgYXQgNDAyOS4wIE1IeiA6IC0zNi4wMDUNCk1heC4gVmFsdWUgYXQgNDAzMC4wIE1IeiA6
IC0zNS42NDUNCk1heC4gVmFsdWUgYXQgNDAzMS4wIE1IeiA6IC0zNS4xOTYNCk1heC4gVmFsdWUg
YXQgNDAzMi4wIE1IeiA6IC0zNC43NTQNCk1heC4gVmFsdWUgYXQgNDAzMy4wIE1IeiA6IC0zNC4z
MTYNCk1heC4gVmFsdWUgYXQgNDAzNC4wIE1IeiA6IC0zMy45MTUNCk1heC4gVmFsdWUgYXQgNDAz
NS4wIE1IeiA6IC0zMy40NzkNCk1heC4gVmFsdWUgYXQgNDAzNi4wIE1IeiA6IC0zMy4wOTMNCk1h
eC4gVmFsdWUgYXQgNDAzNy4wIE1IeiA6IC0zMi42OTYNCk1heC4gVmFsdWUgYXQgNDAzOC4wIE1I
eiA6IC0zMi40MDkNCk1heC4gVmFsdWUgYXQgNDAzOS4wIE1IeiA6IC0zMi4xNjcNCk1heC4gVmFs
dWUgYXQgNDA0MC4wIE1IeiA6IC0zMS45NzcNCk1heC4gVmFsdWUgYXQgNDA0MS4wIE1IeiA6IC0z
MS44NTQNCk1heC4gVmFsdWUgYXQgNDA0Mi4wIE1IeiA6IC0zMS44MjINCk1heC4gVmFsdWUgYXQg
NDA0My4wIE1IeiA6IC0zMS44MzUNCk1heC4gVmFsdWUgYXQgNDA0NC4wIE1IeiA6IC0zMS45MDQN
Ck1heC4gVmFsdWUgYXQgNDA0NS4wIE1IeiA6IC0zMi4wMTINCk1heC4gVmFsdWUgYXQgNDA0Ni4w
IE1IeiA6IC0zMi4xNTINCk1heC4gVmFsdWUgYXQgNDA0Ny4wIE1IeiA6IC0zMi4yOTENCk1heC4g
VmFsdWUgYXQgNDA0OC4wIE1IeiA6IC0zMi40MzENCk1heC4gVmFsdWUgYXQgNDA0OS4wIE1IeiA6
IC0zMi41ODQNCk1heC4gVmFsdWUgYXQgNDA1MC4wIE1IeiA6IC0zMi44MDINCg0KIyAxODAgZGVn
cmVlOg0KTWF4LiBWYWx1ZSBhdCA0MDAxLjAgTUh6IDogLTM1LjM3MA0KTWF4LiBWYWx1ZSBhdCA0
MDAyLjAgTUh6IDogLTM1LjM3MQ0KTWF4LiBWYWx1ZSBhdCA0MDAzLjAgTUh6IDogLTM1LjMxMw0K
TWF4LiBWYWx1ZSBhdCA0MDA0LjAgTUh6IDogLTM1LjI0MQ0KTWF4LiBWYWx1ZSBhdCA0MDA1LjAg
TUh6IDogLTM1LjE4OA0KTWF4LiBWYWx1ZSBhdCA0MDA2LjAgTUh6IDogLTM1LjA3Nw0KTWF4LiBW
YWx1ZSBhdCA0MDA3LjAgTUh6IDogLTM0Ljk2NA0KTWF4LiBWYWx1ZSBhdCA0MDA4LjAgTUh6IDog
LTM0LjgwMg0KTWF4LiBWYWx1ZSBhdCA0MDA5LjAgTUh6IDogLTM0LjU3Nw0KTWF4LiBWYWx1ZSBh
dCA0MDEwLjAgTUh6IDogLTM0LjM0Nw0KTWF4LiBWYWx1ZSBhdCA0MDExLjAgTUh6IDogLTM0LjEw
Ng0KTWF4LiBWYWx1ZSBhdCA0MDEyLjAgTUh6IDogLTMzLjc3Mw0KTWF4LiBWYWx1ZSBhdCA0MDEz
LjAgTUh6IDogLTMzLjQ5OQ0KTWF4LiBWYWx1ZSBhdCA0MDE0LjAgTUh6IDogLTMzLjI4OQ0KTWF4
LiBWYWx1ZSBhdCA0MDE1LjAgTUh6IDogLTMzLjE2Mw0KTWF4LiBWYWx1ZSBhdCA0MDE2LjAgTUh6
IDogLTMzLjAzOA0KTWF4LiBWYWx1ZSBhdCA0MDE3LjAgTUh6IDogLTMyLjk3NA0KTWF4LiBWYWx1
ZSBhdCA0MDE4LjAgTUh6IDogLTMyLjk0MQ0KTWF4LiBWYWx1ZSBhdCA0MDE5LjAgTUh6IDogLTMy
Ljk3MA0KTWF4LiBWYWx1ZSBhdCA0MDIwLjAgTUh6IDogLTMyLjkxMw0KTWF4LiBWYWx1ZSBhdCA0
MDIxLjAgTUh6IDogLTMyLjgyOQ0KTWF4LiBWYWx1ZSBhdCA0MDIyLjAgTUh6IDogLTMyLjc5NQ0K
TWF4LiBWYWx1ZSBhdCA0MDIzLjAgTUh6IDogLTMyLjgwNQ0KTWF4LiBWYWx1ZSBhdCA0MDI0LjAg
TUh6IDogLTMyLjg4NQ0KTWF4LiBWYWx1ZSBhdCA0MDI1LjAgTUh6IDogLTMyLjkzOQ0KTWF4LiBW
YWx1ZSBhdCA0MDI2LjAgTUh6IDogLTMzLjA2NA0KTWF4LiBWYWx1ZSBhdCA0MDI3LjAgTUh6IDog
LTMzLjE5OQ0KTWF4LiBWYWx1ZSBhdCA0MDI4LjAgTUh6IDogLTMzLjMzNw0KTWF4LiBWYWx1ZSBh
dCA0MDI5LjAgTUh6IDogLTMzLjQ4Mw0KTWF4LiBWYWx1ZSBhdCA0MDMwLjAgTUh6IDogLTMzLjY1
Ng0KTWF4LiBWYWx1ZSBhdCA0MDMxLjAgTUh6IDogLTMzLjgzMA0KTWF4LiBWYWx1ZSBhdCA0MDMy
LjAgTUh6IDogLTMzLjk5Mg0KTWF4LiBWYWx1ZSBhdCA0MDMzLjAgTUh6IDogLTM0LjE3NQ0KTWF4
LiBWYWx1ZSBhdCA0MDM0LjAgTUh6IDogLTM0LjM2Mg0KTWF4LiBWYWx1ZSBhdCA0MDM1LjAgTUh6
IDogLTM0LjU1NQ0KTWF4LiBWYWx1ZSBhdCA0MDM2LjAgTUh6IDogLTM0LjcyNg0KTWF4LiBWYWx1
ZSBhdCA0MDM3LjAgTUh6IDogLTM0Ljg5Mw0KTWF4LiBWYWx1ZSBhdCA0MDM4LjAgTUh6IDogLTM1
LjA4MA0KTWF4LiBWYWx1ZSBhdCA0MDM5LjAgTUh6IDogLTM1LjIxOA0KTWF4LiBWYWx1ZSBhdCA0
MDQwLjAgTUh6IDogLTM1LjQyNA0KTWF4LiBWYWx1ZSBhdCA0MDQxLjAgTUh6IDogLTM1LjU2NA0K
TWF4LiBWYWx1ZSBhdCA0MDQyLjAgTUh6IDogLTM1LjcwMA0KTWF4LiBWYWx1ZSBhdCA0MDQzLjAg
TUh6IDogLTM1Ljc0OQ0KTWF4LiBWYWx1ZSBhdCA0MDQ0LjAgTUh6IDogLTM1LjczNQ0KTWF4LiBW
YWx1ZSBhdCA0MDQ1LjAgTUh6IDogLTM1LjY2NQ0KTWF4LiBWYWx1ZSBhdCA0MDQ2LjAgTUh6IDog
LTM1LjUwNQ0KTWF4LiBWYWx1ZSBhdCA0MDQ3LjAgTUh6IDogLTM1LjI2MQ0KTWF4LiBWYWx1ZSBh
dCA0MDQ4LjAgTUh6IDogLTM0Ljk3NA0KTWF4LiBWYWx1ZSBhdCA0MDQ5LjAgTUh6IDogLTM0LjY1
OA0KTWF4LiBWYWx1ZSBhdCA0MDUwLjAgTUh6IDogLTM0LjMwMg==

--b1_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA--
