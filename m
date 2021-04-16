Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2D8362196
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 16:00:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F0523845E9
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 10:00:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="JecWjwuV";
	dkim-atps=neutral
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B9FA384063
	for <usrp-users@lists.ettus.com>; Fri, 16 Apr 2021 09:59:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WjPMhZp5BdG2eozXBVMVAiiu620tC0VM8VKlAfxlQYw=; b=JecWjwuV9HAMKP7U9ZD0S8LDt0
	84Yb0Eh97sDLVBT4JNHL9vC2xi9wr37+a1aqOOEyCBxLTBmS63Q4dDtA/mRKUl/iSNbZvwfXGboTk
	TWprgmd46prXiRqOhqLm6/14YUiYkbCwDM8N+wQp7UnQ1TIfRUrFcpjeGjw+2ULgWOCo=;
Received: from [10.10.0.138]
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1lXOzi-0007bU-WC
	for usrp-users@lists.ettus.com; Fri, 16 Apr 2021 13:59:05 +0000
To: usrp-users@lists.ettus.com
References: <b4cb345657e64c14b5fc1bfa84d34922@gtri.gatech.edu>
 <804ea930-44e5-aad0-cf5c-77d13b0afbf7@itsystems.it>
 <52db1ef0491e4088ae2ce829102a50ec@gtri.gatech.edu>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <4082ac19-a564-a65d-3384-54f80c8b96e0@itsystems.it>
Date: Fri, 16 Apr 2021 16:02:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <52db1ef0491e4088ae2ce829102a50ec@gtri.gatech.edu>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Michael, Probably mine problems and your are not exactly
    the same, but I think they are related in some way. Mine, for example, was
    due an error in the logic inside my block that caused a deadlock on the (RFNoC)
    bus.
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
Message-ID-Hash: EGTIJJJVFHFIYDE5YBRQHUB2CWKSWJGC
X-Message-ID-Hash: EGTIJJJVFHFIYDE5YBRQHUB2CWKSWJGC
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI Stream Issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EGTIJJJVFHFIYDE5YBRQHUB2CWKSWJGC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

Probably mine problems and your are not exactly the same, but I think
they are related in some way.

Mine, for example, was due an error in the logic inside my block that
caused a deadlock on the (RFNoC) bus.

As far as I can understand the usrp word I think your problem can be
quite similar.

When you receive an overrun error on the host side, as also Rob said,
that means that your block is producing samples at a rate too high for
the host.

When the data_ready from the axi wrapper, that should be an output from
the axi wrapper itself and the should be an input to your logic, goes
low is something like someone is telling you "please stop streaming for
a while because I'm not ready to receive data". What do you do in your
logic when the data_ready signal goes low?

Hope this can help you a little

Have=A0 good day

Paolo

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
