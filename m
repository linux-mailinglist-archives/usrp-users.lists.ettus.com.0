Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 875C676AAC3
	for <lists+usrp-users@lfdr.de>; Tue,  1 Aug 2023 10:20:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35EAF384B19
	for <lists+usrp-users@lfdr.de>; Tue,  1 Aug 2023 04:20:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690878049; bh=Tij64W2GQvTLLT2bXsw2uxIjUz4yG+KMN3W9pgFDL4Y=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Dp4n4EqNIRGwywvfblKFuwemndXJ+nF6XdFNPatagzojDy/HKOVyO9RssaTPLm9Lr
	 Y1ih4k/jzPktnibPSuOyNj+T0PQavJVoI0SX71/tNJu/uDLVCX8C6JlzMpu2pPM6PV
	 Ltopc1FDM3BAbUOK9Xc6gOSKOQQ2yK9/3sEScDApNIixvBan+lm5kYzJpIiZnfh0CU
	 PJo7PEbwabeN6Nrtdvdf9kd9bfm8ZoAPYnpqnDOCvnAiF336QLDbjIIZOa6imPagKj
	 rVhAzB4GIozENozloJvQFEzYbE2f4MqyVzVYB1tdzuKX9KJbrqeKypVUGmkvHvYeXQ
	 KY9ynhihPANXQ==
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 9548C384A77
	for <usrp-users@lists.ettus.com>; Tue,  1 Aug 2023 04:20:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZYvawey+";
	dkim-atps=neutral
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4863f6ffed5so2031574e0c.0
        for <usrp-users@lists.ettus.com>; Tue, 01 Aug 2023 01:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690878013; x=1691482813;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LcSpXCGJblZJwrrbg3Rcz3uwCgTd/EG8O+CzCBygwfc=;
        b=ZYvawey+zT2hjmWgzNGpyP03a11YN4wzb3IUv5P+Ps+lChEaiKWPxK/X6esU8FgUX/
         QE/lt3zykG0NEYMTx9KiVpsMuAXIIsPAWLEdnrQ0JVEY6Tw9EG8/4xmpxxYSz7kjXR1D
         9U7m0MWtZtixjEmTaYC2pux6HxrNLU5cZJSqLYbl0TmngqOy3yEKacOe1e+lMZT24fFj
         LX+BEXVjkb0epeEJk3XdFEjOKqkHFG5cFY1IFv+uj5bAtbi4UvHEnfweCUAUubiYHZym
         XLTde2j7HOFSwunJF1QnZy++iYLYGCTm/gvGr5IL28OMCQXU3ZK8vZoCf4+JQWl0diE9
         3B5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690878013; x=1691482813;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LcSpXCGJblZJwrrbg3Rcz3uwCgTd/EG8O+CzCBygwfc=;
        b=fjc2BG6GRFFRKi5BgdMuW3gEajEdMjM96d5IA7f5YvJw1DMYe/lbDmbsXtgO0MNVVL
         nPBY6DHtQm+0H7Lmw6qUkB7/EP2CRzyg6vCFjnOtscIZI4PCoDWHDqHjj9tbbcNcF2Sr
         ebMpOm7MKv3KjPw7CL0hBRvDNsnlGGU3f5/uvRnh/GKXaBDg2a6lzKk7dohvp67rth4F
         sUVO74T55SnBybpxgptZ5jgCKBGJTBu9y3M5jdXw2+ff0/dJgAx8O416/w/ZcddBCAlt
         ZWKo0PCvZSbwzgG27vF1RUG+AiLWdYW2IaGa1muGkcIeQJkYXBDqZ6ydfdylxmhDZThL
         cL/A==
X-Gm-Message-State: ABy/qLZBt+r6qdskoRH1gr/vbwFKMhn69DrnBpny+xOPY9RrfQi1KyL3
	myYGFsUfuLnCfrLYxKPxY/sZHYmpZNIEBi62OpDQte2qVu2jtWuZjn8=
X-Google-Smtp-Source: APBJJlH2t+AfWMoFlf181DqBEhPT+cIvk+WgrNYsMWjN7oB1FdraknDS3ao4WZkeBXIhaMeHJtclOM/8YqRVj4McLxw=
X-Received: by 2002:a1f:bf4d:0:b0:485:e984:779e with SMTP id
 p74-20020a1fbf4d000000b00485e984779emr1911637vkf.2.1690878012609; Tue, 01 Aug
 2023 01:20:12 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Tue, 1 Aug 2023 12:50:01 +0430
Message-ID: <CAA=S3PukEo+LB8GMF9xM_geYJowDky32pY7FN3+v7qNyjGGXZg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 427I3HVPDQ5MJKPPXJ6EE7YC6CZI6TJG
X-Message-ID-Hash: 427I3HVPDQ5MJKPPXJ6EE7YC6CZI6TJG
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] how to run multiple jobs in rfnoc image build for usrp with xilinx....
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/427I3HVPDQ5MJKPPXJ6EE7YC6CZI6TJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7061732197489963993=="

--===============7061732197489963993==
Content-Type: multipart/alternative; boundary="0000000000004cde6e0601d837ae"

--0000000000004cde6e0601d837ae
Content-Type: text/plain; charset="UTF-8"

in xilinx vivado and ise design suite in gui project when i want to build
project there is a option that we can select number of jobs for builds
how can we set number of job for building rfnoc blocks and image of usrp
????
for building we use rfnoc image builder but i can not see any number of
jobs for xilinx vivado build?
can any one guide me?
thanks in advance

rfnoc_image_builder --help
usage: rfnoc_image_builder [-h] (-y YAML_CONFIG | -r GRC_CONFIG) [-F
FPGA_DIR]
                           [-o IMAGE_CORE_OUTPUT] [-x ROUTER_HEX_OUTPUT]
                           [-I INCLUDE_DIR] [-b GRC_BLOCKS] [-l LOG_LEVEL]
                           [--generate-only] [-d DEVICE] [-n
IMAGE_CORE_NAME]
                           [-t TARGET] [-g] [-c] [-p VIVADO_PATH]

--0000000000004cde6e0601d837ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>in xilinx vivado and ise design suite in gui project =
when i want to build project there is a option that we can select number of=
 jobs for builds=C2=A0</div><div>how can we set number of job for building =
rfnoc blocks and image of usrp ????</div><div>for building we use rfnoc ima=
ge builder but i can not see any number of jobs for xilinx vivado build?</d=
iv><div>can any one guide me?</div><div>thanks in advance</div><div><br></d=
iv><div>rfnoc_image_builder --help<br>usage: rfnoc_image_builder [-h] (-y Y=
AML_CONFIG | -r GRC_CONFIG) [-F FPGA_DIR]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[-o IM=
AGE_CORE_OUTPUT] [-x ROUTER_HEX_OUTPUT]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[-I INCLU=
DE_DIR] [-b GRC_BLOCKS] [-l LOG_LEVEL]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[--genera=
te-only] [-d DEVICE] [-n IMAGE_CORE_NAME]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[-t TA=
RGET] [-g] [-c] [-p VIVADO_PATH]<br><br></div><div><br></div></div>

--0000000000004cde6e0601d837ae--

--===============7061732197489963993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7061732197489963993==--
