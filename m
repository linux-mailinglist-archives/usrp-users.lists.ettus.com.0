Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 243713A180D
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 16:54:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01BFE38465F
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 10:54:50 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADCA3383FFA
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 10:53:57 -0400 (EDT)
Date: Wed, 9 Jun 2021 14:53:57 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <0ZLjcUT6RYnABmiQoaH3SSWoEhB2yeRDmFd7JBPlLBU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAL7q81vQ3eLO5MsWQ8Kyk+5KMrOicBjQXAcw=XRUeZtoTtzqwA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 35E2L2G3G74EG72VYWEHNLMEVI2FXC2B
X-Message-ID-Hash: 35E2L2G3G74EG72VYWEHNLMEVI2FXC2B
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Software Loopback RFNoC TX/RX same flowgraph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/35E2L2G3G74EG72VYWEHNLMEVI2FXC2B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4664289476745016089=="

This is a multi-part message in MIME format.

--===============4664289476745016089==
Content-Type: multipart/alternative;
 boundary="b1_0ZLjcUT6RYnABmiQoaH3SSWoEhB2yeRDmFd7JBPlLBU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0ZLjcUT6RYnABmiQoaH3SSWoEhB2yeRDmFd7JBPlLBU
Content-Type: text/plain; charset=us-ascii

Hi Jonathon,

I have a similar problem here with an E320. I have applied your patch, re-built gr-ettus and tried to test the grc included inside the patch in GNURadio, but it gives me the following error:

```
AttributeError: 'rfnoc_rx_radio_sptr' object has no attribute 'enable_rx_timestamps'  
```

I see this attribute defined in .cc and .h rfnoc_rx_radio files inside gr-ettus and also it is defined in the UHD radio_control class, so I do not understand why it does not work. I have also recompile uhd and gnuradio, just in case.

Is there any additional change that I must done to have this working?

Kind Regards,

Maria

--b1_0ZLjcUT6RYnABmiQoaH3SSWoEhB2yeRDmFd7JBPlLBU
Content-Type: text/html; charset=us-ascii

<p>Hi Jonathon,</p><p>I have a similar problem here with an E320. I have applied your patch, re-built gr-ettus and tried to test the grc included inside the patch in GNURadio, but it gives me the following error:</p><pre><code>AttributeError: 'rfnoc_rx_radio_sptr' object has no attribute 'enable_rx_timestamps'  </code></pre><p>I see this attribute defined in .cc and .h rfnoc_rx_radio files inside gr-ettus and also it is defined in the UHD radio_control class, so I do not understand why it does not work. I have also recompile uhd and gnuradio, just in case.</p><p>Is there any additional change that I must done to have this working?</p><p>Kind Regards,</p><p>Maria</p>


--b1_0ZLjcUT6RYnABmiQoaH3SSWoEhB2yeRDmFd7JBPlLBU--

--===============4664289476745016089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4664289476745016089==--
