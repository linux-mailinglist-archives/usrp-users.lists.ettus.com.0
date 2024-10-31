Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDB59B7CC8
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2024 15:24:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DB65385FE9
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2024 10:24:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730384697; bh=5wNvr4K3JrEMwxbcLTI/rr/ET1K9rvQktaYccP8Fiys=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OpuTFT2lFUBHloYLuEJ0GpakBYQKxnnav2W/+C1Jt6ogX+2XekQoAnGuXcSbBu4O+
	 gS1BUqtQiauhoKko3WEzvlqGJWAu+rsfkELKmmWvaHCkCQVhf6oh6uEdTSWopmhnkw
	 jvaMqQiIRg6VAzRxgf4jJ4tRmHYMXHGU9Q2b57QJ14BBanagrhRnxZuAOeL67K/IUM
	 TtHLJE9RiAlqMAwklU1tduY9dG9vmJ9h39ysrYrK3HvDpKnBUkGLfnn/nNbqm5T5jk
	 5LkUIi13o/rBvN8Q9x88A/D5Aw/2qSgWzVLJuXIDeyCIUXpVHfkfkVLe8KJHYru6Ud
	 TBcDhPnXdmCQA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3882A385297
	for <usrp-users@lists.ettus.com>; Thu, 31 Oct 2024 10:24:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730384683; bh=8kQ7n/L1AzxWdiogRYxtk8VSAT4PGW4f3fJd5ZU0ag8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HCLy/wU9vfd0Br1ixK1K5XFepbykTBHhtiGnAqZnrDlGUsuKZDQpjgI3QB8sqj/42
	 FSe/CbKi1+xmpQunotru0DbLqrm8iAcUdtH4kw+tGQd2OinhlpHLa1nKX+M8EiiJ02
	 urvGh+PK7QzfjudN2/bCbp4n4LR91gSdwGsI84XNzMkVcUAfi5YpNfXQQw7OgYGH4C
	 DOxH49Km7CC49zU3QlxOAcjoC/jDF/fVP3HXwra5I+Wd+HyrGsz/5SKfdyd3XFMRPU
	 0tmSjXywq2GZbMZxUjNrY5KoDMhB5V47J5PXjIXBUz7QJ+PtsXLrMiRW/BoAaYBCrC
	 +/fHciTm3ECRQ==
Date: Thu, 31 Oct 2024 14:24:43 +0000
To: usrp-users@lists.ettus.com
From: c1337rogers@gmail.com
Message-ID: <Xeb70F6eCoVmjGisgKh38vr1lyaNzk0lWiL5tH70zQ0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7765d721-657c-4387-87a7-03cb49d6fb81@gmail.com
MIME-Version: 1.0
Message-ID-Hash: KJCHCQMSITLMLKPYO3I4PP3OCRO2B44P
X-Message-ID-Hash: KJCHCQMSITLMLKPYO3I4PP3OCRO2B44P
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - RfnocError: OpTimeout: Control operation timed out waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KJCHCQMSITLMLKPYO3I4PP3OCRO2B44P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5667952069542499207=="

This is a multi-part message in MIME format.

--===============5667952069542499207==
Content-Type: multipart/alternative;
 boundary="b1_Xeb70F6eCoVmjGisgKh38vr1lyaNzk0lWiL5tH70zQ0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Xeb70F6eCoVmjGisgKh38vr1lyaNzk0lWiL5tH70zQ0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I didn=E2=80=99t quite resolve this, but I think I narrowed it down to so=
me bug when switching between DPDK and non-DPDK drivers... I also switche=
d back to the default HG image for troubleshooting. After I bind the vfio=
-pci driver, rebinding the i40e driver results in this error and I can=E2=
=80=99t really seem to fix it. However, re-rebinding the vfio-pci driver =
lets me run benchmark_rate with DPDK.

Separate question: does DPDK constrain streaming applications to a single=
 core per interface? I notice I=E2=80=99m now CPU bottlenecked when runni=
ng benchmark_rate and just a single core is running at 100%, which I defi=
nitely don=E2=80=99t remember ever being the case without DPDK. I tried a=
dding additional cores in the uhd.conf file but this resulted in errors.

Thanks,\
Chris

--b1_Xeb70F6eCoVmjGisgKh38vr1lyaNzk0lWiL5tH70zQ0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I didn=E2=80=99t quite resolve this, but I think I narrowed it down to=
 some bug when switching between DPDK and non-DPDK drivers... I also swit=
ched back to the default HG image for troubleshooting. After I bind the v=
fio-pci driver, rebinding the i40e driver results in this error and I can=
=E2=80=99t really seem to fix it. However, re-rebinding the vfio-pci driv=
er lets me run benchmark_rate with DPDK.</p><p>Separate question: does DP=
DK constrain streaming applications to a single core per interface? I not=
ice I=E2=80=99m now CPU bottlenecked when running benchmark_rate and just=
 a single core is running at 100%, which I definitely don=E2=80=99t remem=
ber ever being the case without DPDK. I tried adding additional cores in =
the uhd.conf file but this resulted in errors.</p><p>Thanks,<br>Chris</p>


--b1_Xeb70F6eCoVmjGisgKh38vr1lyaNzk0lWiL5tH70zQ0--

--===============5667952069542499207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5667952069542499207==--
