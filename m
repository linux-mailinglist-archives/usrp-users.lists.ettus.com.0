Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C1E90F246
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2024 17:36:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD8503857D8
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2024 11:36:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718811373; bh=7zmRyHCpndjLBtgq+j5ny7+z9FC9AdEsZitHpvATdng=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yumrSk8DKdkrUCQRyReGbuc+2e060/F9NRl70hovwtY5QVUAtcilF23XlXC6VD5sO
	 Rn6Z+UAoEc/IyUUL7T1IZfk2/+Cku9Eiy4W1leyojoxhfDkddTa/0dtw8KVNUoiIS9
	 vQqBVkM2BB87ej+wJ5fSqcFNp8BtArCI+bF9Dw7fo1YZpRaUnzDbXTPLJAsrkXUYxm
	 1HeQXua/e1zlNtVfmZL6ogbF/gBVxLVaI82Bez8IdH+MPWT1jgihhfzWxOQ1+DMPrC
	 EBL11OBXUuMLXF4j97OyjcAl7mq1FzGOSMGmbE8RyV//RiKVfMiRosfR0FYik2vz6E
	 3KdevAWUK4OWg==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 36CEB3810F0
	for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2024 11:35:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="VLLYxrQ2";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dfe41f7852cso6912493276.1
        for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2024 08:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1718811359; x=1719416159; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=60h9icM2Z5+Kl69Vif877Rqv2x7QFrlqh7quIOLK02M=;
        b=VLLYxrQ25IqACsBhU98Gp+Y3T5gXF5i6nwOo8iMnp3pj9AA7C4Tbx+jqzhtw4CjW0k
         ItXZ047WQpa3Oapm38OgBFgIhXTdjDzeXhPOg1xmRAJBa3CDCh+HjUt2HQEU1+tU/ejg
         CpAvlJLAI/1cyMWPaRPMNmhBrHju++2I9cb14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718811359; x=1719416159;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=60h9icM2Z5+Kl69Vif877Rqv2x7QFrlqh7quIOLK02M=;
        b=RN3k0XCrxqr+V8f4dfluWUJXPDNQj9uJiJckbiUR4NemCjk+Uxc3QVTYFiyOEVgbon
         mRe6HL7A8Gpq3ogKzVbeXWYbEoH04pOV+wzizsdjqOMIoqpAfE1pG5XrULpsGuZUPTQF
         bQpEnwvW0bcK/uGaymq+EYXnms6dqgvNZqlR00AtqBWkc7mgtvJOIn26VFhV41lL2f3I
         iFnhbeHLdgpSLeVUD3TRodJvbGKhA24lpZw0gJw8n4iMlWv573xMXEoaD7SHy7VAEvYt
         fTc2hRJKK3zL2KcatnRRLtoXLktHLKKgPWhfbhLvYVSTLOD8AKWkDjoJF+td76bU2p3D
         kpSA==
X-Gm-Message-State: AOJu0YxybJQTEAWlml5vtg842Jky1J37Bet2R3yBABuYCB4ILhkiBihW
	5RjAMiynkZ0/tYjbnDMvxPvV5bFZhH9WIYNUhjDoG4TeKfa3D9OLSiFiNAwxSI1uaMoUxQbisij
	nY7I6sO6RWa+U42Tx+yX7B7sPBK1MJyuhiwWBv9wwzUajJA1UO8o=
X-Google-Smtp-Source: AGHT+IGCv/sWJfYXzlvjyVquVtidWCdoyUqNhYNQ0s2GG2uod8yk12cdeQZcul+YDOd6MIhF4Tt3leG3Rp6br0GuF6I=
X-Received: by 2002:a25:df88:0:b0:dfa:499d:7a6f with SMTP id
 3f1490d57ef6-e02be147568mr3586708276.26.1718811359192; Wed, 19 Jun 2024
 08:35:59 -0700 (PDT)
MIME-Version: 1.0
From: Ekin Su Sacin <esacin@umass.edu>
Date: Wed, 19 Jun 2024 11:35:48 -0400
Message-ID: <CANwDeJb6aJq4mR_qh46X1kBS0qsZr_m0yrQP80W+Gdg7mDJwUw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 4ORIDUH5OLTOLT4RVMP7K6JEPF4WYMBK
X-Message-ID-Hash: 4ORIDUH5OLTOLT4RVMP7K6JEPF4WYMBK
X-MailFrom: esacin@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_rx_to_file on X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ORIDUH5OLTOLT4RVMP7K6JEPF4WYMBK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7970841445073797365=="

--===============7970841445073797365==
Content-Type: multipart/alternative; boundary="000000000000804ab0061b3ff44e"

--000000000000804ab0061b3ff44e
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am working with USRP X310 and BasicRX daughter board, and experiencing
issues while trying to execute uhd/host/examples/rfnoc_rx_to_file.cpp with
UHD 4.2. It shows 'Actual Rx frequency: 0 MHz'. However, I can successfully
sample the incoming signal with uhd/host/examples/rx_samples_to_file.cpp
using the same command. Are there additional settings required to use the
RFNoC examples, or specific updates needed for the UHD version?

Thanks a lot for your support.
Best Regards,

--000000000000804ab0061b3ff44e
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi all,</div><div><br></div><div>I am working with USRP X310 and 
BasicRX daughter board, and experiencing issues while trying to execute 
uhd/host/examples/rfnoc_rx_to_file.cpp with UHD 4.2. It shows &#39;Actual Rx
 frequency: 0 MHz&#39;. However, I can successfully sample the incoming 
signal with uhd/host/examples/rx_samples_to_file.cpp using the same 
command. Are there additional settings required to use the RFNoC 
examples, or specific updates needed for the UHD version?</div><div><br></div><div>Thanks a lot for your support.</div><div><div>Best Regards,</div></div></div>

--000000000000804ab0061b3ff44e--

--===============7970841445073797365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7970841445073797365==--
