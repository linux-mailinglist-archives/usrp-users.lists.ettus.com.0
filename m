Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FAD93B161
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 15:13:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78712385892
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 09:13:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721826823; bh=kvWqcwEk0/A/+nR+B1Xtty4AgZBxMKUDEsU3c1kbCfs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mAAS7YYK995H+QUJRqoJi+l9EVjZZkh9zciIX9koici3K6mybSdV8HWY9pLMgVUJh
	 t9OCM+XtnECNCROZqialNNonZELG74adUA2yu2+NIvRZo3uRPucGA49Z/MCTQgH0q/
	 zHGNd+TGodsPc6e4XNOZAg6VAPdNiV2r+lpmcaO7ht27CRQ9HmUiPZiP1ECez2PdHm
	 oTGFQSgU7a14XimG7VHIaqPQ6Hdx83855EfC16EhbmsQ/F4jr45V77bA728fzpkt/d
	 D7kDopm8fZw4o/2qcjM0G61Q6Qg5lybomk9NkgKUVjuncbZ+QN+YibyOH3mTaaMNfp
	 9s8icNqWQinuQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D4C03855DC
	for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 09:13:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721826809; bh=KyJywYA9N6Qr7xL7QHwsbryt+ytGFHvm3vux/5uFqSo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mXHwZ6jWaadei40b1MN7SFS04Nu2aK08R1NXtwPvvJv0hO0wevnPKq6vnbcp6piu5
	 Di/Y/411ExtSDiZ1qDy4NlWaZeWk7ib7u6Kk0AQkQOz5zkUufg7PgubX9hzMZz+etB
	 6n33Z8wEAcbs8cHPNPBuGu7QrtBeFkT/OlyPsynmzvoQXtZ3P5i/FGHCn/mw4e7l8w
	 ENpodi8oreiXztTEj3MJh3ub7RqcLmoeQdDCb7EhmgeL6o5TA4gZEwO69N1egYCxpO
	 yPWPLzS6OQVXdLHIQWiGSF7BfvmMGEC1d0lGlszP/j6VGgZyqXyj1S0DXR6UyPTZBT
	 ZLEfd7ptXGJXg==
Date: Wed, 24 Jul 2024 13:13:29 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <88yCvi8zEtUz4x0Grx6oyzShu2mb1lumSD5bbSiTA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: pVG3GS3qlKoNONgdwfbYFJsCVX3yFgViPvNFRp60@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: O5RPH4ML4FIAWPUC46BLDKVVGQXZJ4K6
X-Message-ID-Hash: O5RPH4ML4FIAWPUC46BLDKVVGQXZJ4K6
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building Dissector
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O5RPH4ML4FIAWPUC46BLDKVVGQXZJ4K6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4989567012131608094=="

This is a multi-part message in MIME format.

--===============4989567012131608094==
Content-Type: multipart/alternative;
 boundary="b1_88yCvi8zEtUz4x0Grx6oyzShu2mb1lumSD5bbSiTA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_88yCvi8zEtUz4x0Grx6oyzShu2mb1lumSD5bbSiTA
Content-Type: text/plain; charset=us-ascii

Just needed to do this:

```
sudo apt install libgnutls28-dev
```

```
sudo apt install libgcrypt-dev
```

--b1_88yCvi8zEtUz4x0Grx6oyzShu2mb1lumSD5bbSiTA
Content-Type: text/html; charset=us-ascii

<p>Just needed to do this:</p><pre><code>sudo apt install libgnutls28-dev</code></pre><pre><code>sudo apt install libgcrypt-dev</code></pre>


--b1_88yCvi8zEtUz4x0Grx6oyzShu2mb1lumSD5bbSiTA--

--===============4989567012131608094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4989567012131608094==--
