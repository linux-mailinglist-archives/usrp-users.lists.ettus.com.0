Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6894FC210
	for <lists+usrp-users@lfdr.de>; Mon, 11 Apr 2022 18:16:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 389B1384D53
	for <lists+usrp-users@lfdr.de>; Mon, 11 Apr 2022 12:16:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649693761; bh=iMsF05//RVMFxzenC6zZAR25zKYKG3wbe9nk9FyHr5c=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SOvEEQZdRcB/OG49FNVzCPSr0HzAWXUkCAMDvv63Puo0OF1QLABodDiBVATyTiwNg
	 4VhFnvIP+blwprx1ZR0couaTUHN8PbbU0g9MINGVMSQvP3teJAlng3f538OSAV7lhe
	 u/CX7ezVCcdV+A9PcTgs9q1vDiQ+uoTfFCSDmbvjXhun8hkx3bZO1B2F2ziKnHta3i
	 CKtDrWxWOgNM1J8HgkkXjHUb7SJTUocXBewNlkWf1WGkMVvTP2nSK6qFYNTaTmv20c
	 bL/G8ktJupjHADaxB0jGHCIt4lov6rq5i10AkWb5fbBh1he2X3vOCGNFXKKNeco5Jd
	 kE+EuLR3Fx6DQ==
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by mm2.emwd.com (Postfix) with ESMTPS id A01C238476B
	for <usrp-users@lists.ettus.com>; Mon, 11 Apr 2022 12:14:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gmx.net header.i=@gmx.net header.b="FmzQaR4i";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1649693698;
	bh=dbDUp9AtvZTGjImOw8A7K2fGitlOx2g4YEHJiqxKZQ0=;
	h=X-UI-Sender-Class:Date:From:Subject:To;
	b=FmzQaR4ixznUY/lcuSEQ04885haH2ibhJxpGqLfhZfSkjz9PqWfitO08/cae6mSZM
	 ITt6cRrS68ya9jS0z9VJRzRneoeO0Gpb7NlWE1AO7URsjoZtFsJHbiS4G+dSLAg3qn
	 paY+sCE3OWvtjfTMV699GBAdg0AHx26IOIr585ow=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.29] ([91.47.35.74]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M2f5Z-1nfsVB19vb-0047zM for
 <usrp-users@lists.ettus.com>; Mon, 11 Apr 2022 18:14:58 +0200
Message-ID: <f0df6216-554d-8f17-ceea-0688751b4a88@gmx.de>
Date: Mon, 11 Apr 2022 18:14:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Karsten Ohme <wider.stand@gmx.de>
To: usrp-users@lists.ettus.com
Content-Language: en-US
X-Provags-ID: V03:K1:rUhmi4xOF6za7E8e8n54xW2uW8EXRs0NkzOQpkEbWn3a/tn8l3D
 +ql5MnKwmY4uAgoSvOtQz3x8ahD9v/s2RzL7Shd8SxapoTG0AWZ7y4HFEpep7yF0gt9Np5J
 jU2Ltw5rvc5v/itczy7EHSklvQ8Em0Tjaw+WVrpvY0XZs5F3ELI0tsqw1LLDJgOy9M6qbOg
 KjzcEEbHGwzjkNeeh/RCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wiRediYifNs=:evU+3kLCmtH66L8bQJHjl7
 e9TekCmZbUZucU4LawSVy7am7Diq2DCIYVj1NVccC0TNWGTXJ2p6nKDydWGpDI23WzmXrQaZK
 6sT7ZkFpa7cNEAA6ajXAtDbdf+apf6qOZfgowQE7uUzWH9MJU3gxxMc3XXAEhYP+sgen5K7U9
 D3roXrRhwu2wBxo+oSCwbpXcINl5rjY3z+SC+qXQJrqxnrtcWo0cbfeJG9YrqThd7HuMacf89
 /XrRKBF+rvA16q/wJMbfL77t6YQyUSWRyiMsJAm40fr496kAh4MZP0+/shsigStnUxcA3x1Ch
 l8FwkKt5RbU2CCAtXPOmhgyzhJ33VVIppzpDsmPoak/vRB32/w3DQ/Hq+UqpaPj/RjKdgrcCi
 EJ+bACzMzJI2+Rw8mvAidbv021YoF2P9dL1S36JW06Nlbjq23RPdHHwOT9D3dDyceeVn1gAny
 KyT2EgBpWVmpmR3GBNjZFufbMdb/seWBAQVxhyVYM0CRJlg3CEId7ECE1Tj/PUeJqT0p0AcTE
 iPJfeLj1NnldfEGYRGNUIFFfqwYRgAVYZddNsTnA35ZBPlRKBIGwKXksdxn2v2ZzNgM2GPTbg
 i0joRvbgWmm1oSms3YHYL9XOGSeSbfI6O3yaJ6DlgfSo7NZq4d2PVXimi+nnsgj0Y3T0FukBb
 wL3olaKGpZzkgpoWuTJhslJRL33Bdks202mZvE8N6IkGTs+R0R0RQC5eFpHPxFPRJbFyR7ZI1
 3QoLdlesEhEVO+d1p+6n6Wei6wqx48mboRv24qOiMFuOY/7dPGv4wX5cqdn4LLmiJ0HinNhuV
 dZQJ7mSO7mer3YKF7RcjUeEZXpVlUtkgikEek0JsKO1adWXKK8Tloq5sL5DpOYX2BLm6QSCzx
 YprGig3H7t7jMCRk4AKQdkJDZB2hQyILEXe5mVxeB98e9SbLXKH8QjMllhwdr1rKjn7bEcL3O
 XkX2Wcm57usx5tditQuTR8FBSkR+0DQcZ/CVqOX4fmy10jcP23HRTtPrjDYAdQ8NpZRDmikc6
 fLRQEbto0xEXRmkSTaMB1r2LLEKXLtQtgwjUiptXnMY5Q2uz84jtjLRegR7Z6k0jgavvdfP7D
 l5iq9IbWlITlUg=
Message-ID-Hash: 5OEK2IE53M47NMIHNSIKPPKC7342ENSS
X-Message-ID-Hash: 5OEK2IE53M47NMIHNSIKPPKC7342ENSS
X-MailFrom: wider.stand@gmx.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USP B205mini-i with external clock using Leo Bodnar GPSDO on srsRan eNodeB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5OEK2IE53M47NMIHNSIKPPKC7342ENSS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,


I have purchased a Precision GPS Reference Clock
(http://www.leobodnar.com/shop/index.php?main_page=index&cPath=107
) but have troubles to make it work with an Ettus USRP B205mini-i.

I assume everything is configured correctly, 10 MHz, square wave input,
I have a GPS signal, 3.3 Volt, 13.3 dB attenuation, the USRP is
connected on output 1 on the Leo Bodnar GPSDO, but neither on UHD
version 3.15.0 nor on version 4 the external clock is used. I configured
the USRP to use the external clock with "device_args = clock=external"
in srsRAN eNodeB but I get as error:


Could not lock reference clock source. Sensor: ref_locked=false


I could not find any useful information about a reason for this error.
Could you please provide some ideas about possible reasons for this
behavior?


Regards,

Karsten


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
