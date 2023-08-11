Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B104B7787A4
	for <lists+usrp-users@lfdr.de>; Fri, 11 Aug 2023 08:51:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4490F3812D7
	for <lists+usrp-users@lfdr.de>; Fri, 11 Aug 2023 02:51:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691736669; bh=q4CdLoS/HKYhsEEqbGAlYA7Bu7TpmB8Jebr8/w0llNA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gia2kT/FHaOT3S4zZcl9OFq3cW/pZV2cLqX7gyWfxoBwW6ZtQb5ZTDJr5ufEuMVd4
	 ud+oSohBU+k/HKejW4FXWt2HVw7F2IsXUR/DblKLXFqo3UD3h4GHjozf4fktIJpIYu
	 hyBQa6cGrr+jRh9kxPmc7JTES0MnvgaU+BtJj6/f1yVXOA3JL+usFVvUhfh72Lkasu
	 2e2CpFv1hYABk/lkZVxbJsL91CmRwwfODBCvZWTuEAbHaCSNDbtmnLFJXxkUwzt91R
	 XC+Q+OIg1aFx6G3gsVRD6eCxiqwJfBHVPon+6904p9X/z1COuk9pxokkrN0RgvAK9F
	 3xpOa/coIB5eA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5814380C11
	for <usrp-users@lists.ettus.com>; Fri, 11 Aug 2023 02:50:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691736654; bh=5fy30fPrThj2iPm0+v+z7DzM0ajklKT8PNxON/4lYU0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aW3aNLqNH8npqJbC1koZLniqcCBZrVOvlXAyT2Pj/z0tUVOvIACkzJBNhIlhrtbqb
	 d2Dx/srxSASld9gQrh5Mb3jHmm+DtSW/aqlrwtwlnOu2B59aBXUljcZi306BxFfhlz
	 /VYITUsOUEj+XW8TSCFBMlEEDcizdFBX+Tu3ou+QdTYvx8hcpXxLIaELbaHBiNWy5S
	 FaNWsuK025vCdJ0zdl5V6Ki1VX+hoVXO9ALFiXlPYKP+5OW0He6Z35iPirThIqu+P4
	 tKRW+e+HuJzEO9zTmJMO4StAn7T2/gI4Hh2DIfhGyNawdrBVBkIxsPTGeOeXf0xzMu
	 og5511FoMot9g==
Date: Fri, 11 Aug 2023 06:50:54 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <R3KiwW3a8sqx9uF5CJk1fSWN7fcZ8o6mUwAJwLCqe4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 75cd44ba-2792-e576-33e9-31662042f96e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: EYFYAOVRPFOWPYIZHIGM7CXGHFXUWJMT
X-Message-ID-Hash: EYFYAOVRPFOWPYIZHIGM7CXGHFXUWJMT
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EYFYAOVRPFOWPYIZHIGM7CXGHFXUWJMT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5453232867859379763=="

This is a multi-part message in MIME format.

--===============5453232867859379763==
Content-Type: multipart/alternative;
 boundary="b1_R3KiwW3a8sqx9uF5CJk1fSWN7fcZ8o6mUwAJwLCqe4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_R3KiwW3a8sqx9uF5CJk1fSWN7fcZ8o6mUwAJwLCqe4
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

I hope your are doing great! I was wondering if you got a response from the respective groups in Ettus/NI that you mentioned? What have they got to say?

Cheers,

Eden.

--b1_R3KiwW3a8sqx9uF5CJk1fSWN7fcZ8o6mUwAJwLCqe4
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p>I hope your are doing great! I was wondering if you got a response from the respective groups in Ettus/NI that you mentioned? What have they got to say?</p><p><br></p><p>Cheers,</p><p>Eden.</p>


--b1_R3KiwW3a8sqx9uF5CJk1fSWN7fcZ8o6mUwAJwLCqe4--

--===============5453232867859379763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5453232867859379763==--
