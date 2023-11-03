Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9198B7E0259
	for <lists+usrp-users@lfdr.de>; Fri,  3 Nov 2023 12:49:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C836385635
	for <lists+usrp-users@lfdr.de>; Fri,  3 Nov 2023 07:49:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699012160; bh=nKxQTV2ikwFHQes0cigEhvNO2nmEQ7VAyayOkDF1dZ0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t4wXU3NO+433sDg30N/lYyrDzmhrHEfw2ITlMqarWyh8jIiz3D/iSs+bTyheDVkq2
	 etDFhEEmXK05RPPkcf/XZHibkChw370001touIvaelZDDOYVrZEAht/9Y0EQglTjMm
	 IeW696zhGqiuh+WpkJ0c0mBeQ4gRzSrkIsN/OC/YsuO4oIRCYq3mqE2olG8uG1ksn3
	 wZF8NybU7upRBX5L4WJTEvsOxNlMS/drXjT2xe7mlI4uxkqjzxaStxVWmsvhH9F4hq
	 MAjeknCVcFZMUEPKCStB8Xdpd7sFXhawCPLZEBDEQe5t2iJAtNY5U9JHR97YPYP9Y9
	 W0FBr4dH1uU2A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1873384ECD
	for <usrp-users@lists.ettus.com>; Fri,  3 Nov 2023 07:48:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699012129; bh=2USANVv5Mfrlf2XMMT+LXRahYhMFZwZ1CdTalNzST2M=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ysYNHW9DDxhv0JyK07S3E89A1fSxwC7gXuoIUwfgYG5Tk82D0dNdv6gFwH7ObKZVo
	 pZu9qC1gr7yU2J6dhjhVTj7opXn+PqeflM0ViM0g+4vo2iR1WCQJOgL9wMyyGSwQyk
	 Gqjcj8t+Ft9xrqh0n2Lf1+afK8+4RPWijuC+u5Kq0w63tERvFePGC173upQbqexf3l
	 gJj7F1dRIuKKLHTmLmmZ2NixEsX49FYoyG1OyzTPOnRyP4D+m0aRjhjC51XWS5reMT
	 GI5HJDP1AkEQdtEzUAE8/vyG46u+1D2Zew9dwskNnA9XWuTPY/JTz2I07fRJbvsqHR
	 JCvxJ5U9sEjfQ==
Date: Fri, 3 Nov 2023 11:48:48 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <Ra7kmbt3ZcrBDAoof4tuLIEabHFb9YBBBHD7RDqFE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=iJD3cKcj4=CT+M9m+GJYrQRLm_8ZQLkoYb8z9L0mj59Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: LXV7ZY6XKD3V3CVBKAHQSGQFNBA2IL5K
X-Message-ID-Hash: LXV7ZY6XKD3V3CVBKAHQSGQFNBA2IL5K
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC TB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LXV7ZY6XKD3V3CVBKAHQSGQFNBA2IL5K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7501954471242092069=="

This is a multi-part message in MIME format.

--===============7501954471242092069==
Content-Type: multipart/alternative;
 boundary="b1_Ra7kmbt3ZcrBDAoof4tuLIEabHFb9YBBBHD7RDqFE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Ra7kmbt3ZcrBDAoof4tuLIEabHFb9YBBBHD7RDqFE
Content-Type: text/plain; charset=us-ascii

How can i do that? i have tried to read a file in the process but the simulation failed. Can you give me some advice?

Thanks in advance

--b1_Ra7kmbt3ZcrBDAoof4tuLIEabHFb9YBBBHD7RDqFE
Content-Type: text/html; charset=us-ascii

<p>How can i do that? i have tried to read a file in the process but the simulation failed. Can you give me some advice?</p><p><br></p><p><br></p><p>Thanks in advance</p>


--b1_Ra7kmbt3ZcrBDAoof4tuLIEabHFb9YBBBHD7RDqFE--

--===============7501954471242092069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7501954471242092069==--
