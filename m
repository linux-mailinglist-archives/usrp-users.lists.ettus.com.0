Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F00FC938220
	for <lists+usrp-users@lfdr.de>; Sat, 20 Jul 2024 18:33:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7EBC3856D7
	for <lists+usrp-users@lfdr.de>; Sat, 20 Jul 2024 12:33:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721493195; bh=dgza8d8hibPnbvAes2jI1f1aToSgZsbUejNwMZy3nVE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=I3MmuXuu5Ns3LaTL9C9u/oUy+XLlrYSiYNhAKinnpEzDXcjkHl45u6s4IU30pc67r
	 TSXDvZWaCZUWqUwXB+PBakO8TzkyZ3NCoh6ffZJ1fcqmduFM15/V7OTx+Db7E3+/xV
	 Ss12nfN5JXXDluVmyFxw2ZvU2a0gduddse6KIiT1VGgU046MRFHxK7q4Mk9hyXCbEy
	 CiBd+lqKFWNCbJLytX0yKzfcZL6sMLM3BpatxtPvwpYsSLkKNQfwBeda6gyk6udvf7
	 dpWAETTZqlMiHM1CBEJotmpaDZ9htLkMKFxyVfsJDJ0pMT8KN2RXId63iltIs3F0rk
	 RUqd6JQQ0wWVQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49188383FDA
	for <usrp-users@lists.ettus.com>; Sat, 20 Jul 2024 12:33:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721493187; bh=255n/emZ9wqDJAIf8HzFBouxf7QWY7iOG1teZcZUhUs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vWc3JPL3LjMC59Tai7T/mykcFMdhUg+knF3mHqu6BYPkP60vBw/ZbvXjRRZhlrEB0
	 0T5ibfmpk9O3msYKtRQkHmzjJvG24ghJSaY7mszgtgL9CbP6jTXkabtyQVqG+zJUyH
	 2x+Phl2MuIjuuxy1P4Pus3l7baTjwAmn4Z0e3KzIUQoMQGkalHQK7/UxJYCITXwQ5F
	 DTqoVxyPdzEAFk1NR1y7uNk3Zb6pxGTnRoKq9cckLghq7PoHoFWxlyoKjRXMoXVqel
	 4/Zz24lcPfOioS55d9AxsAWXPyKvpL2Iff/NEjzowPfGjGY6n5SzKk0w2SZXFIkS6r
	 VdlEq1BhEe3/Q==
Date: Sat, 20 Jul 2024 16:33:07 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <AZFJzDX54p71qfjQkw9GBiSL9XOcm5vVRVp7uGvANc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0568ca63-1fbf-4815-9efd-e065a610ff72@gmail.com
MIME-Version: 1.0
Message-ID-Hash: T5Y4KX2DCSMDLPHINOYWNZTRKPEGSWWI
X-Message-ID-Hash: T5Y4KX2DCSMDLPHINOYWNZTRKPEGSWWI
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5Y4KX2DCSMDLPHINOYWNZTRKPEGSWWI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7532447206262201076=="

This is a multi-part message in MIME format.

--===============7532447206262201076==
Content-Type: multipart/alternative;
 boundary="b1_AZFJzDX54p71qfjQkw9GBiSL9XOcm5vVRVp7uGvANc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AZFJzDX54p71qfjQkw9GBiSL9XOcm5vVRVp7uGvANc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for the support on this.  We purchased a second unit.  The problem=
 on the 2nd unit is no longer present after installing the same SFP + cab=
le, and connecting to the same server running the same program.

Thanks=E2=80=A6

--b1_AZFJzDX54p71qfjQkw9GBiSL9XOcm5vVRVp7uGvANc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>Thanks for the support on this.  We purchased a second unit.=
  The problem on the 2nd unit is no longer present after installing the s=
ame SFP + cable, and connecting to the same server running the same progr=
am.</p><p>Thanks=E2=80=A6</p>


--b1_AZFJzDX54p71qfjQkw9GBiSL9XOcm5vVRVp7uGvANc--

--===============7532447206262201076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7532447206262201076==--
