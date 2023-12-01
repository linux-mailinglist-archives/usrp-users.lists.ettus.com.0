Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1ECB801209
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 18:48:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B51C0385BF1
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 12:48:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701452925; bh=Qw+Diqsezit7qV4W8yFVNCY16lEOxE121EgeMTqCbFk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FG0bxYtzCXMKnCCNH+YJhJCNR7yz9RdIL0cof9zMPOCvFU4JrU4HyYkZ2sOnscwZt
	 FCNTM+pYpx0e75Vpz/05Ywmjh+0I4kJX6hv05Bc90MQmSRDynftblzZW0BoO4RR9TY
	 n0ruZktnMg07hfB8hXSt5zolnS64fVl+hoXndO24GhX+hCDh753xq84Fy4NBKjimaj
	 T3pARaKvl+PbyGOw/QT50d3DyXMY1j9+q+1JcJ1iN2RnmPT95tjjmkYt4k1/GQ130r
	 gyzzNcRVQlzr+/5DgLAMoPMkOmdj7a7Km3wPkDuq1Kwo/sr7rF8EV9GOySwOe7k+SZ
	 EYuM5vGpEaPGQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABEC2385AA8
	for <usrp-users@lists.ettus.com>; Fri,  1 Dec 2023 12:47:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701452872; bh=bsXGFoui0cDNTd7ReFjt0fxypW3MVL9x5B5UkFFr0SQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0fvPStoVejIgIyBaqV2mQ4+i5K+56oyLRuRvHmjc47uBdkyNCEdwefDypuNV9Wp1h
	 dS0OjoKBc6ZmyAPXtXaZdZ7uOfzb0/DhXYnLGpgkcgqsndslzqAb0a0FGgcQImOgSh
	 nLyRZ+adYuotNs3jgEzTUInDxCFIP64SpVSsgKJByA+rGfoz6o1vpbFjYzDpBBuLOd
	 FBq/unTaw+thafkNyNEymWzfcHmI3EMBi8kR9Io3J9R+eyBba0vqENzki1kBsisZKu
	 fEcN9FZkbhFlrq5QbJ8JhZ9dLr6CI0iYfwBLgkW0emJvgG47Q2lTp7bPxvTenfMBwj
	 t406VfEbTZbdw==
Date: Fri, 1 Dec 2023 17:47:52 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <wBxUcGddJUZvXwhdTiRy4ajDIENSKf3c9YnpfAeQE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7eeb0b9f-d753-4271-a90f-9557db59f052@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2XJZ5ZAP3UNPQNOWZ6R3C3UFSRN6JK7O
X-Message-ID-Hash: 2XJZ5ZAP3UNPQNOWZ6R3C3UFSRN6JK7O
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2XJZ5ZAP3UNPQNOWZ6R3C3UFSRN6JK7O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2062856843130604961=="

This is a multi-part message in MIME format.

--===============2062856843130604961==
Content-Type: multipart/alternative;
 boundary="b1_wBxUcGddJUZvXwhdTiRy4ajDIENSKf3c9YnpfAeQE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wBxUcGddJUZvXwhdTiRy4ajDIENSKf3c9YnpfAeQE
Content-Type: text/plain; charset=us-ascii

Many thanks marcus. Here is the result for uhd_usrp_probe --args "addr=<theaddress>,type=n3xx,product=n310"

Error: LookupError: KeyError: No devices found for ----->

Device Address:

    addr: <theaddress>

    type: n3xx

    product: n310

--b1_wBxUcGddJUZvXwhdTiRy4ajDIENSKf3c9YnpfAeQE
Content-Type: text/html; charset=us-ascii

<p>Many thanks marcus. Here is the result for uhd_usrp_probe --args "addr=&lt;theaddress&gt;,type=n3xx,product=n310"</p><p><br></p><p>Error: LookupError: KeyError: No devices found for -----&gt;</p><p>Device Address:</p><p>    addr: &lt;theaddress&gt;</p><p>    type: n3xx</p><p>    product: n310</p>


--b1_wBxUcGddJUZvXwhdTiRy4ajDIENSKf3c9YnpfAeQE--

--===============2062856843130604961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2062856843130604961==--
