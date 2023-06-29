Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BECA7429D9
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 17:45:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C42B38453F
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 11:45:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688053524; bh=kwc2V78+ZbjzKYOJCipGiu/R7z+AK/oZwZZi9J48euE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qCZxutFeZwot9heEZHJZec8jiv/pi9XfgISD1+ejnY4HOmITudsqfXrIcOrMVSgJN
	 KIvgmxQIzdLSXea677rlba+6MeENqHVchhjdCYxNs+vdv7uaTGdHdAI30/DbXoL7YV
	 PZO5r7Z1nM/hVlbG+5vBguPIhdq3gfjxximvgPqy+KvEpfSqTFvxBBtYvrsX1VI5O2
	 f7CvjGBTSeNouEwTWNyTOP92hxdDR84d7NoIJmJ72LFEUr9kC5WriC+VOBdqyTqZX7
	 0RNKwoDasUSTs/iarFdgzZCarIWLfWJ8Ttq83KWdgfkOpiowTHnZQsqG9FUL1Srq59
	 gVnln59U8HbyA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D821D38456F
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:44:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688053465; bh=TaCABMDEegweZlObjMhlK6fCP1GSGbeeiPuNnSDjXjA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vAm6wu160aG+3TuiTGxp7mval9kedf8iiBeYKEBCfzEaI1b3hB5EpxvRgTHsM7xFe
	 Yflyj/5fvuZSyXHj6N3bMrR6mCKHXmm8J/QN79gb93HN8w9xKcnAJ88e+NlKfhByYL
	 bMJntfPFozO1IW7ulyYhc2Lg3QOy8qTA9KL+8Wp552up0rmE5i6+TiqLSRssJRQqfx
	 2LABZ36UbEd6UsaFv+kA8w80ggmtKxeEGYWsONU25EyO/zueD5ReCToIgS82aWHwmx
	 JndM7QzD+4SPHsxyBURDpKn0Znh9BzaWpocjaQ5JJ7Zcoce6bux1951ZrBHwNn50Na
	 GikaI/PbBWGrQ==
Date: Thu, 29 Jun 2023 15:44:25 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 300D7C0A-FE66-4575-85F2-F27C937F5D47@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HZGUBM7HTE3YOCRGVYJNPYNI6ZPI22EX
X-Message-ID-Hash: HZGUBM7HTE3YOCRGVYJNPYNI6ZPI22EX
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZGUBM7HTE3YOCRGVYJNPYNI6ZPI22EX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0901551629225772413=="

This is a multi-part message in MIME format.

--===============0901551629225772413==
Content-Type: multipart/alternative;
 boundary="b1_WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI
Content-Type: text/plain; charset=us-ascii

In my experience, getting UHD to run on Ubuntu 22 is a huge hassle. If you can, I recommend downgrading to 20.04(but no lower) and it should install fairly easily.

--b1_WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI
Content-Type: text/html; charset=us-ascii

<p>In my experience, getting UHD to run on Ubuntu 22 is a huge hassle. If you can, I recommend downgrading to 20.04(but no lower) and it should install fairly easily.</p>


--b1_WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI--

--===============0901551629225772413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0901551629225772413==--
