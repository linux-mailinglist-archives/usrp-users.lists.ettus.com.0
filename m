Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F436A9A30B
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 09:15:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B619386220
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 03:15:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745478914; bh=qeo9RatxmT2jiX5wrMFVtSO92FAerxUtD875xEoOz/A=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=jh5cGumKzoFyrBTP6t0n80gyn12I+DWIbuOyB1ppwMfGPI7FrkDir7X2Xbjg0k6BL
	 dl4ZKk2tZaHfaWewbd5ZVYOhz3oGe3xyK6iMH2PxPp2PPJeePEce7eaUijrgS99Xk8
	 4iwD2HUMebqXdo7Fx/KodDnutmjIHbIBAKe2jFIut7N9qkUnEthnPTbV2mDPvoVzjL
	 yC4de+RvG0wQdWchezFLhF2rGI64/fEo0MSS24NapRArfrUSDCr17VErWiU4fn8SmP
	 pozmnAnH33pKlROGorJZjFmWXZW3FYD3zC7cyi5K+hPXf6mBj7+QUuTdLahZmUbFLW
	 yzcerx6PQ22qA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F2F4385F97
	for <usrp-users@lists.ettus.com>; Thu, 24 Apr 2025 03:14:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745478891; bh=VdI6fuJZXQ9VNcOLqGyBeHnHLenpV38gN3zYQr+9kAo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fDT5phFW7pRqwp4+JagVcaXBQTduy2sNr1ZAYVA7iVKCMz+PtMP6X9plgQXi2lJts
	 mnNlDxKslkBxXF9kZD8e7R8L0OwH1eZsjZy4grV2wZW0bAfZiSAJIoDWwRcD3PGTJP
	 +2+Qc0dOBepuXL06emKpwkS/V7UHHmNoFwgiu1McnguDs1RwaaHDMZvlYCg+JKnGOP
	 fj52cVl6LpfGQY2Gs9hPLv896pO+0eEHN80cTJYP55F5aHeymIwBZPRgHNxwNUiL6a
	 36sygPIN5toJ5A/7geFGYfCgpTdky8f79I8f/K2iGxwzxhGI34m1TjS2YbXLBtBDJf
	 D6f/EP5fB8LTA==
Date: Thu, 24 Apr 2025 07:14:51 +0000
To: usrp-users@lists.ettus.com
Message-ID: <4yLmIYaABjDzvu3U4yAN7t3J8LEOLtqoKpMgF4CZIQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK6SLdgfg_ir+wntrSgm4y7m9k6B=VfThoGCT=nkTqHBag@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: TVEQL7YSRUFCBFUBILLCVLR6MIELY7RE
X-Message-ID-Hash: TVEQL7YSRUFCBFUBILLCVLR6MIELY7RE
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFNoC Local Configuration, Remote Data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TVEQL7YSRUFCBFUBILLCVLR6MIELY7RE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============4117967248119268292=="

This is a multi-part message in MIME format.

--===============4117967248119268292==
Content-Type: multipart/alternative;
 boundary="b1_4yLmIYaABjDzvu3U4yAN7t3J8LEOLtqoKpMgF4CZIQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4yLmIYaABjDzvu3U4yAN7t3J8LEOLtqoKpMgF4CZIQ
Content-Type: text/plain; charset=us-ascii

Hi Brian,

Remote UDP streaming is currently only supported for the RX streaming direction. TX Remote UDP streaming is currently not supported.

As far as I know, nothing has been announced regarding when TX Remote UDP streaming might be added.

Regarding RFNoC Remote streaming, it should be as you mentioned and be the same as MultiUSRP as far as I am aware.

\
Regards,

Niels.

---

> Answering myself partially, I see there is a concept of Remote Streaming:
>
> <https://uhd.readthedocs.io/en/latest/page_stream.html#stream_remote>
>
> The example goes over how to set it up for RX streams, but not for TX \
> streams. Is it not required for that direction since the USRP is sensitive \
> to all packets destined for its address?
>
> I assume the application on the receiving side just opens the UDP port and \
> uses the uhd::utils::chdr::chdr_packet class to dissect or create \
> the packet that just gets sent over the socket?
>
> Lastly, the example uses MultiUSRP - is it all the same for an RFNoC \
> implementation? Create the graph, commit it, issue the command?
>
> Using the chdr_packet class, is there a way to know the endpoint ID to put \
> into the header for the TX side of things? Is that fixed and something I \
> could see from uhd_usrp_probe --tree?
>
> Sorry for all the questions, I appreciate any insights.
>
> Thanks, \
> Brian

--b1_4yLmIYaABjDzvu3U4yAN7t3J8LEOLtqoKpMgF4CZIQ
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Brian,</p><p>Remote UDP streaming is currently only supported for the=
 RX streaming direction. TX Remote UDP streaming is currently not supported=
.</p><p>As far as I know, nothing has been announced regarding when TX Remo=
te UDP streaming might be added.</p><p>Regarding RFNoC Remote streaming, it=
 should be as you mentioned and be the same as MultiUSRP as far as I am awa=
re.</p><p><br>Regards,</p><p>Niels.</p><div contenteditable=3D"false" class=
=3D""><hr></div><blockquote><p>Answering myself partially, I see there is a=
 concept of Remote Streaming:</p><p><a href=3D"https://uhd.readthedocs.io/e=
n/latest/page_stream.html#stream_remote">https://uhd.readthedocs.io/en/late=
st/page_stream.html#stream_remote</a></p><p>The example goes over how to se=
t it up for RX streams, but not for TX <br>streams. Is it not required for =
that direction since the USRP is sensitive <br>to all packets destined for =
its address?</p><p>I assume the application on the receiving side just open=
s the UDP port and <br>uses the uhd::utils::chdr::chdr_packet class to diss=
ect or create <br>the packet that just gets sent over the socket?</p><p>Las=
tly, the example uses MultiUSRP - is it all the same for an RFNoC <br>imple=
mentation? Create the graph, commit it, issue the command?</p><p>Using the =
chdr_packet class, is there a way to know the endpoint ID to put <br>into t=
he header for the TX side of things? Is that fixed and something I <br>coul=
d see from uhd_usrp_probe --tree?</p><p>Sorry for all the questions, I appr=
eciate any insights.</p><p>Thanks, <br>Brian</p></blockquote>

--b1_4yLmIYaABjDzvu3U4yAN7t3J8LEOLtqoKpMgF4CZIQ--

--===============4117967248119268292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4117967248119268292==--
