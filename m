Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2698CB1B69F
	for <lists+usrp-users@lfdr.de>; Tue,  5 Aug 2025 16:36:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A2AD38617D
	for <lists+usrp-users@lfdr.de>; Tue,  5 Aug 2025 10:36:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754404581; bh=EqlT2U5kf3nf8cTsO809hh8xzbXL1g3YjveL3AHvDvg=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=tOdol/1v2yj43yIjFyBHWx7WmjwusNeCmjCh4zab5lhnnEn0lW7lJZiXOpwThIGJM
	 VGLKCA1opQ73nTtQ5gdmys4zmIH/o0OdOJB/qC1IjaQhfm2L3t85pMLtFWwBtFWh66
	 zBTGOrt09PhiqTdPAu6u5BTGD83MT6xnz1qtCORvaop+fAxnQRhRcn+q1+gcS4M6iw
	 Q/6+aIvoa2SbOYaI2tboTnwAbFz7gnCHLeHi24shv1zw9VwxOXWvCsjE3Y+NNxycLj
	 XR3nZUw2sb9MctJYnf36ER2yxSKnfPzdxO61pqre3KhUzBs5uR1NwaDN26Xku3j1kp
	 rwbPtsvA6QLfQ==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C630385AFB
	for <usrp-users@lists.ettus.com>; Tue,  5 Aug 2025 10:36:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ezZ1fTH7";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-af910372ab3so1055843366b.1
        for <usrp-users@lists.ettus.com>; Tue, 05 Aug 2025 07:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1754404568; x=1755009368; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G9ttX2tYO1ySciJ+01zwoMvn84RNMT1uGBsdfX1qT/8=;
        b=ezZ1fTH7fbs0tSzHYk3iBRwRvD/2uB8sHuvtemDov8slG1VR4ln1ubX5IctKETZMIl
         3/TqbD7HjU6Ucs+Mci7S0e/JBakDhHjj0CYIYJqnzDilCl469Pa+hvtx/tGqSBmYopa4
         tpYaqv0//yoDQxcnfRGitSNSvrFT8P23LY/VQvbvtc6BRK4vNneUM9d5JqM4bocX9k9F
         /Z+Wb5CARL4FeK7C8zQdHmqgZlxq1mkdtk8BVXOsonqCRAYYyRGt/wpkL16TyHMvS1AD
         qsekSrxY7xQqXT8zoe2nhKUeARVOJBNMesMite6NNaC5lHupQeV+Tf7J//gKqbSS6WUf
         G3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754404568; x=1755009368;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G9ttX2tYO1ySciJ+01zwoMvn84RNMT1uGBsdfX1qT/8=;
        b=V7Ebl9A4eEhZ8aSRN00KRwTDP+OG7klPmaNBiWyJ98c68dTXCvyHu2rRegJZ9ujTAn
         LSvG4xJDJuVaqfKmNdE2F+VUUHY8eGFLDglENI9CEWdfS8mrVEnfIMEC6Pt3gxwFydqm
         +z/I2DUiJdO9N9v33eIphYnuggxJKWY7l1s+pEvb2Jbe+GoSuJBQv9bk4OxJXopfNVFD
         iSGL3IhgegjLvgvq8RVs7TOueTwMSDoFxkHW1o4OjX9ALXpZM8d6Qf4rbSl7ju2XNYxO
         KhIfoQkAEDNtLcbDZKakFxaPD02zb7jGAv75UzufrGZR6N1bzOxJco4pWe2sJ5Mwxov0
         tlbQ==
X-Gm-Message-State: AOJu0Yzr5mKETBmWHPsspin3dC+6OQN/GRyfh7Kh8GfYb8aLfieAg/sp
	/vTZemRRiexGBVsB/n7tXD6jq7DkJ4f/8Q6zepfi7w6edBe6lHWgVabA8wLub0lfYABPha5eB7y
	OQlclS+D8G1Cy8IxadjeOgPXyxisRa8fKQEWGWgrk6bJMQmPtyr5gCg==
X-Gm-Gg: ASbGncu6FNn6e9OldQ81b53pDWg0oGUkh1hrCIHUnZZ5KBhwvpCylxtbJ7aSAKVilPC
	5trt+d3zOptaHBJrT+z7PE+91cqMNRK+9yR30N9J0gootGpXr4OLW6Q4YYnbhOIPIZ2+zM002aQ
	8N6waFxpufGwRm57t14QhQGE33d0VfsP4M0Jfob4tKZIFIosMsUTl8a7+Ca0dCK9sdc6ln2x0Bq
	eKnaFrZ5Q/Wn8jP2g==
X-Google-Smtp-Source: AGHT+IFaQE15chxOJ701k/ebrbHKGna9qkahtWwzi7YElqnWPXzImxTCj8p4QP0v1c7YdW6q0ldbJuRKbkKQPSNBfJM=
X-Received: by 2002:a17:907:1c26:b0:af9:116e:e373 with SMTP id
 a640c23a62f3a-af98d056495mr2220766b.21.1754404567993; Tue, 05 Aug 2025
 07:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <esaDuWVk1afW5oTnqarBb2XiZ6m1UCkJFWljZaS40@lists.ettus.com>
In-Reply-To: <esaDuWVk1afW5oTnqarBb2XiZ6m1UCkJFWljZaS40@lists.ettus.com>
Date: Tue, 5 Aug 2025 10:35:55 -0400
X-Gm-Features: Ac12FXzNMhmgWN4gnnjyhIJTXs0abRvMElQ0u6xJno_0n9KYiizE2MuvEGKbZRg
Message-ID: <CAB__hTTW0Pr-N8qOkXomhRF_VqiKMxLn3bKACSZ2BjCaLj89zw@mail.gmail.com>
To: gechb21@gmail.com
Message-ID-Hash: M5VIE36SY4X5P44G2VZMZP6ZY2OC6UJD
X-Message-ID-Hash: M5VIE36SY4X5P44G2VZMZP6ZY2OC6UJD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Subject=3A_Inquiry_Regarding_Maximum_FPGA_Buffer_Capacity_for_Transmission_on_USRP_X310_=C2=A0?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5VIE36SY4X5P44G2VZMZP6ZY2OC6UJD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1721428743526481508=="

--===============1721428743526481508==
Content-Type: multipart/alternative; boundary="0000000000001179b3063b9f2524"

--0000000000001179b3063b9f2524
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are using the "multi_usrp" object, it looks like you can use the
Replay block as a FIFO in your transmit path using the tx_streamer arg
"replay_buffered". This would be a very big FIFO.  But, at the rate you
mentioned, this really shouldn't be needed.  The smaller FIFOs that are
part of the SEPs and DUC RFNoC block should be sufficient. My guess is that
if you are having underflow issues, perhaps something is
configured incorrectly on your host.

I will also mention that if your transmit waveform has fixed length you can
use the Replay block as a playout memory such that you send the Tx samples
from the host to the Replay memory non-realtime and later issue a command
to playout the samples directly from the Replay block at the desired time.
If this is possible in your use case, you will not have any underruns.
Rob

On Mon, Aug 4, 2025 at 1:21=E2=80=AFPM <gechb21@gmail.com> wrote:

> Hi Rob,
>
> Thanks for the detailed explanation. I=E2=80=99m currently using a single=
 channel
> with a sample rate of 20=E2=80=AFMS/s. The UHD version is: Linux; GNU C++=
 version
> 13.3.0; Boost_108300; UHD_4.7.0.HEAD-0-ga5ed1872.
>
> Thanks!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001179b3063b9f2524
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you are using the &quot;multi_usrp&quot; object, i=
t looks like you can use the Replay block as a FIFO in your transmit path u=
sing the tx_streamer arg &quot;replay_buffered&quot;. This would be a very =
big FIFO.=C2=A0 But, at the rate you mentioned, this really shouldn&#39;t b=
e needed.=C2=A0 The smaller FIFOs that are part of the SEPs and DUC RFNoC b=
lock should be sufficient. My guess is that if you are having underflow iss=
ues, perhaps something is configured=C2=A0incorrectly on your host.=C2=A0</=
div><div><br></div><div>I will also mention that if your transmit waveform =
has fixed length you can use the Replay block as a playout memory such that=
 you send the Tx samples from the host to the Replay memory non-realtime=C2=
=A0and later issue a command to playout the samples directly from the Repla=
y block at the desired time.=C2=A0 If this is possible in your use case, yo=
u will not have any underruns.</div><div>Rob</div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Aug 4, 2025 at 1:21=E2=80=AFPM &lt;<a href=3D"mailto:gechb21@gmail.com=
">gechb21@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><p>Hi Rob,</p><p>Thanks for the detailed explanation. I=
=E2=80=99m currently using a single channel with a sample rate of 20=E2=80=
=AFMS/s. The UHD version is: Linux; GNU C++ version 13.3.0; Boost_108300; U=
HD_4.7.0.HEAD-0-ga5ed1872.</p><p>Thanks!</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001179b3063b9f2524--

--===============1721428743526481508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1721428743526481508==--
