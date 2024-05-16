Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B20808C7DA2
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2024 22:15:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BCD1385213
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2024 16:15:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715890536; bh=0UY7TG90USYcZESbnlIMn3gbDCLbwsMi2NadJrmEAJA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=uQjn3+BrEwHVuv8y8vxtg/EHk8j6rlEBGvJflymReRFGlgS74xbSKyAH2fPECIzmx
	 49sLrwjPqFqVZxASSsWkUFjOyxCXIvjw1kyyTDdgYpaug34en4a1B/aNg1hwyDd+cL
	 eoFq3R+bn1SWi5kxHytxZXyQBYkCspckr9tmAGRKW6m8xMRe0x92Fg/iqGtPKqZQER
	 gdinexqLof0TuYAJ38DLy4qOmMgHkzXQkQI+6Hedr+IAfN4o97iJEkfDLQmTto2joX
	 T4ErDSQcecefUDT+S5Rh2ajTm/nao3edUMkkWztpor9xih3Es8M8dyd2V6Lp/Z1Sso
	 zvWkvbCC4I8IA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C57F53851A2
	for <usrp-users@lists.ettus.com>; Thu, 16 May 2024 16:15:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715890513; bh=5TUkXCwudz8BokbOycg/dU5fxKuY0OUw3B402rhG00o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gE0cheZFiMkxNZ9OGAgjwtDehTus6GHRF1rZradsfPDGG465FxfyWaH0O8KTwsLDy
	 2FraUXPApgcKS8xn68CTgxWOuNmFZju6FhpTOhFCylxk+77LUA+bjZ0qwL+QNdQovx
	 i7QK7FiuxuXmKGny+GSvWaIjqQnXBQE/nbDaQlZ6nHBVUVzaD1rnesRNpEsdIPDl3x
	 qIU5EIYE8neXaw+IFyQk4oZNSHzxSXxRcH7bWJ2AbNeRjS0ODED/XxVcWf6X4u7V2n
	 beryZqRpM4nsQGHjbANttAjCnyRJN42hL1K2thwZCtf0BJacNkxo3bH1HvFAATpdkm
	 gSK5Oa/RRjKHw==
Date: Thu, 16 May 2024 20:15:13 +0000
To: usrp-users@lists.ettus.com
Message-ID: <lUk5YvoHbKoxFtFgXYTA4SgboRU5Y38obNs9zgHSFg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=i_u3hUA8gj4wYsDysBVXKHDFzxz2UstzKieU4QS+urGw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: DJ4JDNGQ62BW3QI73QVBPDRRKDZ7TO5U
X-Message-ID-Hash: DJ4JDNGQ62BW3QI73QVBPDRRKDZ7TO5U
X-MailFrom: smm223@ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC socket error on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJ4JDNGQ62BW3QI73QVBPDRRKDZ7TO5U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: smm223--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: smm223@ucsd.edu
Content-Type: multipart/mixed; boundary="===============3107515467085512358=="

This is a multi-part message in MIME format.

--===============3107515467085512358==
Content-Type: multipart/alternative;
 boundary="b1_lUk5YvoHbKoxFtFgXYTA4SgboRU5Y38obNs9zgHSFg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lUk5YvoHbKoxFtFgXYTA4SgboRU5Y38obNs9zgHSFg
Content-Type: text/plain; charset=us-ascii

It works fine after resetting the orientation. Since the interfaces showed up and ping worked, we did not suspect the SFP cables connection. Thanks for your help.

--b1_lUk5YvoHbKoxFtFgXYTA4SgboRU5Y38obNs9zgHSFg
Content-Type: text/html; charset=us-ascii

<p>It works fine after resetting the orientation. Since the interfaces showed up and ping worked, we did not suspect the SFP cables connection. Thanks for your help.</p>


--b1_lUk5YvoHbKoxFtFgXYTA4SgboRU5Y38obNs9zgHSFg--

--===============3107515467085512358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3107515467085512358==--
