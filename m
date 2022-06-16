Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DCF54E977
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 20:36:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA9FE384698
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 14:36:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655404560; bh=eLggeoy3wrh4YosM9NEt/Lb7aSQ+b006yYejArAHji0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OAzSzZCBWjfejIddlxrxF4qRue6bVN6sSmUHi83MUmChYcjy8OI7cE8rDSm3JfSpe
	 wUYHE3e9pc5XdY3mWweYnzbMVewuNSjD18T9SIjeYk67trDjx/IxHQFzVohpYKj3wU
	 3xrzxuD2D1tmrPgOe2J5AzVdmhv95cO+H9uicu34zqjhyF/VebLKIvGlUAiKrfo3qe
	 In2vw2HP1f090aDDVxvbjh41nGW+cOGQNcE6y9Dh+oJ8PDMEKlN63vkh6OCGL3ubpC
	 +tArHSPYbLj1D75mN3nL89kGgcb9rlOetSVhkIcEFBRH6ZBc9dOVDTJFnhvQ40IFPI
	 jjncP2erf918Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB7D6384680
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 14:34:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655404492; bh=I8h1nRfxhTw6npJYxM39DYc0y8s0K2p68bs5ocVd8pk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=qgmRcdKKT6FSX0Fr60JRPuEPbUl/Oxh3EpCSTVk0u9DNyFenntyBV1CrRjB73pPNx
	 6rmxFoK58QWgUnMu6hs2ISlNih7kIDNfrmgNRaF3580gXeu2f7GvwnYVkuBhpcgXXQ
	 J/kQccf7CLL/a9jc4bL6VYKukQnmkw0zgRBCLaZ/9+dR1qKne44DKhDPOiV+2GoSiU
	 7y0JjbLJ2XRnMMz9L6ON4KNHJTSLoW02tyzPJvhhpZUsbOcrHaF3Qrp3FAKLM2PkPv
	 uqeC2yTZLYW6FavijgMYNcE21ZQ2DY6turWb7AsoVVOO7s/NkbYM9UGIrGamMmMPhg
	 Ps8HCJjjasoBA==
Date: Thu, 16 Jun 2022 18:34:52 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <jhz9iwzJ7r4wnEdg7oNKEwexqhEchSACSfx0ybLPS0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=hejgkO4eD+yos67WY1Upa1EY8bghAcPrm2_aF5utoWUQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: NV37ODM6YYNSBNJ4TSVDYKR6IO2B6FGK
X-Message-ID-Hash: NV37ODM6YYNSBNJ4TSVDYKR6IO2B6FGK
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NV37ODM6YYNSBNJ4TSVDYKR6IO2B6FGK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0000407968436553438=="

This is a multi-part message in MIME format.

--===============0000407968436553438==
Content-Type: multipart/alternative;
 boundary="b1_jhz9iwzJ7r4wnEdg7oNKEwexqhEchSACSfx0ybLPS0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jhz9iwzJ7r4wnEdg7oNKEwexqhEchSACSfx0ybLPS0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you everyone for your help! I=E2=80=99m still not sure exactly the =
ratio between the above parameters and timed command queue depth, but I e=
mpirically determined that I now have a queue depth of 64. The other key =
observation was to set rf_freq_policy to NONE, which increased the effect=
ive depth of my command queue from 5 to 64. I suspect that I was still is=
suing commands to the analog components even though I ensured they never =
needed to retune, and changing the policy to NONE fixed that.

If any other users stumble across this thread in the future, I have been =
able to achieve sub 200 us hopping consistently as long as I pipeline \~1=
 ms in advance. I use separate threads for transmit, receive, and issuing=
 timed retune commands. My application is half-duplex, so I only hop tx o=
r rx at time.

--b1_jhz9iwzJ7r4wnEdg7oNKEwexqhEchSACSfx0ybLPS0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you everyone for your help! I=E2=80=99m still not sure exactly t=
he ratio between the above parameters and timed command queue depth, but =
I empirically determined that I now have a queue depth of 64. The other k=
ey observation was to set rf_freq_policy to NONE, which increased the eff=
ective depth of my command queue from 5 to 64. I suspect that I was still=
 issuing commands to the analog components even though I ensured they nev=
er needed to retune, and changing the policy to NONE fixed that.</p><p>If=
 any other users stumble across this thread in the future, I have been ab=
le to achieve sub 200 us hopping consistently as long as I pipeline ~1 ms=
 in advance. I use separate threads for transmit, receive, and issuing ti=
med retune commands. My application is half-duplex, so I only hop tx or r=
x at time. </p>


--b1_jhz9iwzJ7r4wnEdg7oNKEwexqhEchSACSfx0ybLPS0--

--===============0000407968436553438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0000407968436553438==--
