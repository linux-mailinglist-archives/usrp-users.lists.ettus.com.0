Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E65E5832C32
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jan 2024 16:20:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3E81384D86
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jan 2024 10:20:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705677611; bh=beTlqKs0bY2kecByypg5b6NxpsvZkuM9U45yFyy7mu0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WjSbaUOztLG8PQHiHLeocly3LIIAcJqgiV2sdn5HEQ7OWWLeGyDw0sBJsSSX0ItIY
	 psTx5NTDNoz1donnhjH9CeR6sW+5P2fCUYiLNQSuvrirQfYCAkoN0Gym4gJOwvZRDM
	 MZ7VdqPQwBymcPGJ1Uy93NrMiTir5SPRn7cnQTgjYqBcq5dj4cGJBycVXQpGQOnhtV
	 QJQh+Nn/5hZ41dBoqcTeJZGp9/s1kDiv2HSdvb5kROmO6M/b9IHsqJvZy6RP45pJnS
	 gBVoDoG6IABfZOwF0ZfH0Wpcll2kTOMtZgF7E3454zIEmOhva09UL672euJSeWwSdW
	 GodJ9bPjGGcNA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BF2C380B0B
	for <usrp-users@lists.ettus.com>; Fri, 19 Jan 2024 10:19:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705677557; bh=5FkxlI8A/lq61wRnEeFPJkwwGGg6bKolRJiSBkPZ4hk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=IABHiOznSdxDNYlUseK4nZQerE4wKWP8kxl34UMZY/S3oimy6QL72xgS13gq1zrDk
	 S9IEolha2+6f9zb+z1aF1qYsJNivWkQJeIusvmjbhG25uVOwrrJ/GmgtA31RqZcTir
	 V3dtd2AhjBDufwhB6CSEr5mnUpSvRcWKwcjqjHhxsJ/nfzVQUVGs2aIsBXpNOXzwZq
	 jKhwiah0inU7UGU88dtMx6O+Nlno15xIE7D5SEDa5j0wZq8qsw13MCb9SZqYqNBnk1
	 jRxQVAdPsrJBvg2Ntns4KMeXK95EAXfqlfaVlXd+yKwNrHIREU1WbcT2laq6WUvztm
	 ynF/sFR+V/l/w==
Date: Fri, 19 Jan 2024 15:19:17 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <swWTYYcPZtDHx9LYT4fqpgyzBpAF9lcOEwYgePOhE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSt+eiv9+DQY1rW0qPCdn8_8c+ZfX6nyJ8i1NSsAagG1Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2CI54O2TALXTQHATFRURNMVTHCMXZKRI
X-Message-ID-Hash: 2CI54O2TALXTQHATFRURNMVTHCMXZKRI
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting "S" error when using dpdk and replay block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2CI54O2TALXTQHATFRURNMVTHCMXZKRI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6791955716558481034=="

This is a multi-part message in MIME format.

--===============6791955716558481034==
Content-Type: multipart/alternative;
 boundary="b1_swWTYYcPZtDHx9LYT4fqpgyzBpAF9lcOEwYgePOhE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_swWTYYcPZtDHx9LYT4fqpgyzBpAF9lcOEwYgePOhE
Content-Type: text/plain; charset=us-ascii

I tried removing the RJ_45 port as the mgmt_addr and that seemed to do the trick.

So now, I have 1 QSFP port used for mgmt and data, and the other QSFP port just for data.

--b1_swWTYYcPZtDHx9LYT4fqpgyzBpAF9lcOEwYgePOhE
Content-Type: text/html; charset=us-ascii

<p>I tried removing the RJ_45 port as the mgmt_addr and that seemed to do the trick.</p><p>So now, I have 1 QSFP port used for mgmt and data, and the other QSFP port just for data.</p><p><br></p><p><br></p>


--b1_swWTYYcPZtDHx9LYT4fqpgyzBpAF9lcOEwYgePOhE--

--===============6791955716558481034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6791955716558481034==--
