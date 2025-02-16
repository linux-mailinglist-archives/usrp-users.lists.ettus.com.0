Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBC8A37877
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 00:19:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B36BA385BD8
	for <lists+usrp-users@lfdr.de>; Sun, 16 Feb 2025 18:18:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739747935; bh=8bFRuNiKG0ZgmTMLbKkUtk/NHRs67BqmG0qZUNRcgOE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Z2MZ2Kvn9G/fLjRqnzOftbk0MuqAEbEofAvKH1UR/4QOoSeyu7C7uYl8uWsXUPMHx
	 WKyXGmXCq4ZLTnGrqoGwEwCaCEqujWJCPPMLj1V+juMeiiR3mZzLF1haYje2SmC1Ka
	 xhRmByTW0GhFhx7L6DfKXukuMwDlqEHYe0lv1ToxAHGA/SK5ydu9SynR0J3qdf48xp
	 UyhtdwXHy799mh8n+BJTqvK64axWn1HPWsRr7QsDzrvYbCl/iVZSgq4VCFGsEe1fEQ
	 cVY7LRnsZoa7+H5G4j3AGSYBMPglApCgm0GCktJX/WzOzKAFmXFpjyPpTnGPJ0Yq5P
	 mAlirf2wx33pg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCA653854A8
	for <usrp-users@lists.ettus.com>; Sun, 16 Feb 2025 18:18:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739747885; bh=+7F3rce0ZRk9c4elc5ofhYJqGAFDBdoj0Ph6cAFRffE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fuAUIeYgJfl8N3lZP6kQYKEAuUXYtdAClXS0x2lz/ey0gvD5RSfMQqVkC2tDBfEwv
	 y+zyxXnBTCB+E0NZ/YRPzG/DsTYDW0u1IreoamHlCljiS7/Cr79D3MlBJqqOmpfBWG
	 wq90gv2Pw9tzkCzWZ45huz26+Bx+eoDZi7artH8dUt11pKXHSzTKe+pesfp31XXuS8
	 6lwjUq/ouzVYN1Gueiu9X07UI0YkuP8sqDdHX3U9B1qy0W5F7FbiVvyHlcHV1wa7th
	 qF5nf0C08LsubKFdEk79DaTcYmLlqWQEokhz4lyzp+qA8ed7f9gVmqf6iR00oyaaEj
	 ywm5ZUtTr8tHQ==
Date: Sun, 16 Feb 2025 23:18:05 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <XOhHAf5zvjgaX72I0xNY70LROpVIZKh6SxFkNYczs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A67XZpqsHhNwSpA5B8urQqkc-f_0E4YMqhD3Dk-jcYckA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BWZBER5HITUHMPQKKYW2DTV7OLRWAI6R
X-Message-ID-Hash: BWZBER5HITUHMPQKKYW2DTV7OLRWAI6R
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BWZBER5HITUHMPQKKYW2DTV7OLRWAI6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3833616534944031197=="

This is a multi-part message in MIME format.

--===============3833616534944031197==
Content-Type: multipart/alternative;
 boundary="b1_XOhHAf5zvjgaX72I0xNY70LROpVIZKh6SxFkNYczs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XOhHAf5zvjgaX72I0xNY70LROpVIZKh6SxFkNYczs
Content-Type: text/plain; charset=us-ascii

If I am calling poke32 or peek32 without setting the time and ack arguments (just sending the address and data), where they  default to: 

```
uhd::time_spec_t time = uhd::time_spec_t::ASAP   
```

and 

```
bool ack              = false  
```

Would you expect the timeout exceptions to occur?  In the code comment it says if ACK is requested.

Is there a way to check the fifo status? 

Also, is there an example that shows the use of the timespan and ack with poke32/peek32?

Thank you 

Marino

--b1_XOhHAf5zvjgaX72I0xNY70LROpVIZKh6SxFkNYczs
Content-Type: text/html; charset=us-ascii

<p>If I am calling poke32 or peek32 without setting the time and ack arguments (just sending the address and data), where they  default to: </p><pre><code>uhd::time_spec_t time = uhd::time_spec_t::ASAP   </code></pre><p>and </p><pre><code>bool ack              = false  </code></pre><p>Would you expect the timeout exceptions to occur?  In the code comment it says if ACK is requested.</p><p>Is there a way to check the fifo status? </p><p><br></p><p>Also, is there an example that shows the use of the timespan and ack with poke32/peek32?</p><p><br></p><p>Thank you </p><p>Marino</p><p><br></p><p><br></p>


--b1_XOhHAf5zvjgaX72I0xNY70LROpVIZKh6SxFkNYczs--

--===============3833616534944031197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3833616534944031197==--
