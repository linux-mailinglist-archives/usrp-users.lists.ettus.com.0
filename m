Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AEBB594BE
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 13:06:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63C9D3859C8
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 07:05:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758020759; bh=wIi5tgMHQpns71lHc6gaJhrj99poVUsHMGR1eseMVo4=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=Ug8C4PA+fjjEgVETn4dVlq6sgNG0ix6yi3P/8sfL+aPVyEh0J6QV6e06cOZoTFICJ
	 Wjnq/HtIY41wiWCWjwvQAEinEYYXEE4PSUz3ouyeA9kFBXrOhZ16aqTHc6AoibIlGc
	 6uixK72TaR1UU6sbwWHXtrRWxojoiQhADNB0iZafGeei2Bn3ynhma+h+DsoIF7X6D6
	 yZ6hyBxrLQ1pyZMV8JEB3CxqBPSI1fSXqIHbFb2RSn+iiA6kMTMyiw5dyZTVB4IOPS
	 xyang+Q8aIqnZdpVlo6FgIt8aMhxCrDMEh5zM8G7rjjUkBKyIlFvMyEHNbyDxixTG3
	 b7A2yFTxHaSPA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0988238514B
	for <usrp-users@lists.ettus.com>; Tue, 16 Sep 2025 07:05:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758020733; bh=rHUmScj4s3lxP1cHZGEBTTVQIcUrM0Af0m4RY/k9rE4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=azeZwLW/HAsyAZdVY/kan6pHLZwhcGtu4JXbfW9hlrsEaJki7uzwbxnjvrRknqwND
	 9e8Rl7Q3+PUWWu0JFC5eA+lA60U0k+ScVVP0CJkpTJBrlN4PgcVMpFH6pEXLfuHca9
	 9IOPFXLp3OUh2YEPD0F2+xQ/7EI3U/H0c2nLkynfNF1BJVwiL0uukMMzRduW9VRwfR
	 Vrn8oW0861INPmzqwbrB/T9qlxgsMiQmdK4x0k5ZC9st9jNAhPN8KkR3DeQdS54FWO
	 SdMFSuo2AdS0RTh10JcuCgncvCdFwyulJVeokm4fyxjmyLoD6ui3CYXBjm2PbMO5ra
	 yh7le3/a0lbPw==
Date: Tue, 16 Sep 2025 11:05:33 +0000
To: usrp-users@lists.ettus.com
Message-ID: <4MuNprC2TcBF9IhoUmLzIiQichT1jQc8m0099sMgQB8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: MZM45K77IVNXS7IDRBOSTBAZIBV66SXH
X-Message-ID-Hash: MZM45K77IVNXS7IDRBOSTBAZIBV66SXH
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to pin a specific UHD version across machines/devcontainers?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MZM45K77IVNXS7IDRBOSTBAZIBV66SXH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============4857878311578185626=="

This is a multi-part message in MIME format.

--===============4857878311578185626==
Content-Type: multipart/alternative;
 boundary="b1_4MuNprC2TcBF9IhoUmLzIiQichT1jQc8m0099sMgQB8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4MuNprC2TcBF9IhoUmLzIiQichT1jQc8m0099sMgQB8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =C3=81lvaro,

I am sorry that the multiple updates for the UHD 4.9 packets in the Ettus=
Research/uhd PPA caused confusion. They were just some small packaging fi=
xes and \~jammy3 will be the last one. So my recommendation is to stay wi=
th the EttusResearch/uhd PPA.

Kind regards,\
J=C3=B6rg

--b1_4MuNprC2TcBF9IhoUmLzIiQichT1jQc8m0099sMgQB8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi =C3=81lvaro,</p><p>I am sorry that the multiple updates for the UHD=
 4.9 packets in the EttusResearch/uhd PPA caused confusion. They were jus=
t some small packaging fixes and ~jammy3 will be the last one. So my reco=
mmendation is to stay with the EttusResearch/uhd PPA.</p><p>Kind regards,=
<br>J=C3=B6rg</p>


--b1_4MuNprC2TcBF9IhoUmLzIiQichT1jQc8m0099sMgQB8--

--===============4857878311578185626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4857878311578185626==--
